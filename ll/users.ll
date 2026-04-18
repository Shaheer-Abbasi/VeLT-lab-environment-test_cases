; ModuleID = 'src/users.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.infomap = type { i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.gl_utmp = type { i8*, i8*, i8*, i8*, %struct.timespec, i32, i32, i16, %struct.anon }
%struct.timespec = type { i64, i64 }
%struct.anon = type { i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.sysinfo = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, i64, i64, i32, [0 x i8] }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.utmp_alloc = type { %struct.gl_utmp*, i64, i64, i64 }
%struct.utmpx = type { i16, i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], %struct.__exit_status, i64, %struct.timespec, [4 x i32], [20 x i8] }
%struct.__exit_status = type { i16, i16 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [112 x i8] c"Output who is currently logged in according to FILE.\0AIf FILE is not specified, use %s.  %s as FILE is common.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"/var/log/wtmp\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"users\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Joseph Arceneaux\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.43 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), align 8, !dbg !141
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !146
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !151
@.str.23 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.24 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.25 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.26 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !153
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.27 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !189
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !159
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !185
@.str.1.33 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.35 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.34 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !187
@.str.4.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.29 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.30 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@opterr = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.52, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.53, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !194
@optind = external local_unnamed_addr global i32, align 4
@.str.1.56 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !211
@.str.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !217
@.str.65 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.66 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.67 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.68 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.69 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.70 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.71 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.72 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.73 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.74 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.68, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.69, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.70, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.74, i32 0, i32 0), i8* null], align 8, !dbg !253
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !265
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !283
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !313
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !320
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !285
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !271
@.str.10.77 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.75 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.78 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.76 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !290
@.str.89 = private unnamed_addr constant [14 x i8] c"/var/run/utmp\00", align 1
@.str.1.90 = private unnamed_addr constant [9 x i8] c"runlevel\00", align 1
@.str.2.91 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.3.95 = private unnamed_addr constant [7 x i8] c"reboot\00", align 1
@.str.4.96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5.92 = private unnamed_addr constant [29 x i8] c"/var/lib/systemd/random-seed\00", align 1
@.str.6.93 = private unnamed_addr constant [29 x i8] c"/var/lib/urandom/random-seed\00", align 1
@.str.7.94 = private unnamed_addr constant [21 x i8] c"/var/lib/random-seed\00", align 1
@.str.8.97 = private unnamed_addr constant [13 x i8] c"/proc/uptime\00", align 1
@.str.9.98 = private unnamed_addr constant [3 x i8] c"re\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.100 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.101 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.102 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.103 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.104 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.105 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.106 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.107 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.108 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.109 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.110 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.111 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.112 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.113 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.114 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.115 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.120 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.121 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.122 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.123 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.124 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !328
@exit_failure = dso_local global i32 1, align 4, !dbg !336
@.str.141 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.139 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.140 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !342
@.str.159 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.160 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !474 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !478, metadata !DIExpression()), !dbg !479
  %3 = icmp eq i32 %0, 0, !dbg !480
  br i1 %3, label %9, label %4, !dbg !482

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !483, !tbaa !485
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !483
  %7 = load i8*, i8** @program_name, align 8, !dbg !483, !tbaa !485
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !483
  br label %51, !dbg !483

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !489
  %11 = load i8*, i8** @program_name, align 8, !dbg !489, !tbaa !485
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !489
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([112 x i8], [112 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !491
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %13, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)) #34, !dbg !491
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !492
  tail call fastcc void @oputs_(i8* noundef %15), !dbg !492
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !493
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !493
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !494, metadata !DIExpression()) #34, !dbg !513
  %17 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !515
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %17) #34, !dbg !515
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !499, metadata !DIExpression()) #34, !dbg !516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %17, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !516
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !508, metadata !DIExpression()) #34, !dbg !513
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !509, metadata !DIExpression()) #34, !dbg !513
  %18 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !517
  call void @llvm.dbg.value(metadata %struct.infomap* %18, metadata !509, metadata !DIExpression()) #34, !dbg !513
  br label %19, !dbg !518

19:                                               ; preds = %24, %9
  %20 = phi i8* [ %27, %24 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %9 ]
  %21 = phi %struct.infomap* [ %25, %24 ], [ %18, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %21, metadata !509, metadata !DIExpression()) #34, !dbg !513
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !526
  call void @llvm.dbg.value(metadata i8* %20, metadata !525, metadata !DIExpression()) #34, !dbg !526
  %22 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %20) #35, !dbg !528
  %23 = icmp eq i32 %22, 0, !dbg !529
  br i1 %23, label %29, label %24, !dbg !518

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.infomap, %struct.infomap* %21, i64 1, !dbg !530
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !509, metadata !DIExpression()) #34, !dbg !513
  %26 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 0, i32 0, !dbg !531
  %27 = load i8*, i8** %26, align 8, !dbg !531, !tbaa !532
  %28 = icmp eq i8* %27, null, !dbg !534
  br i1 %28, label %29, label %19, !dbg !535, !llvm.loop !536

29:                                               ; preds = %24, %19
  %30 = phi %struct.infomap* [ %21, %19 ], [ %25, %24 ]
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 1, !dbg !538
  %32 = load i8*, i8** %31, align 8, !dbg !538, !tbaa !540
  %33 = icmp eq i8* %32, null, !dbg !541
  %34 = select i1 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %32, !dbg !542
  call void @llvm.dbg.value(metadata i8* %34, metadata !508, metadata !DIExpression()) #34, !dbg !513
  tail call void @emit_bug_reporting_address() #34, !dbg !543
  %35 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !544
  call void @llvm.dbg.value(metadata i8* %35, metadata !511, metadata !DIExpression()) #34, !dbg !513
  %36 = icmp eq i8* %35, null, !dbg !545
  br i1 %36, label %44, label %37, !dbg !547

37:                                               ; preds = %29
  %38 = tail call i32 @strncmp(i8* noundef nonnull %35, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i64 noundef 3) #35, !dbg !548
  %39 = icmp eq i32 %38, 0, !dbg !548
  br i1 %39, label %44, label %40, !dbg !549

40:                                               ; preds = %37
  %41 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.46, i64 0, i64 0), i32 noundef 5) #34, !dbg !550
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !550, !tbaa !485
  %43 = tail call i32 @fputs_unlocked(i8* noundef %41, %struct._IO_FILE* noundef %42) #34, !dbg !550
  br label %44, !dbg !552

44:                                               ; preds = %29, %37, %40
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !553
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !525, metadata !DIExpression()) #34, !dbg !553
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !512, metadata !DIExpression()) #34, !dbg !513
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.47, i64 0, i64 0), i32 noundef 5) #34, !dbg !555
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %45, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #34, !dbg !555
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #34, !dbg !556
  %48 = icmp eq i8* %34, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), !dbg !556
  %49 = select i1 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !556
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %47, i8* noundef %34, i8* noundef %49) #34, !dbg !556
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %17) #34, !dbg !557
  br label %51

51:                                               ; preds = %44, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !558
  unreachable, !dbg !558
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !559 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #4 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !61, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %0, metadata !62, metadata !DIExpression()), !dbg !564
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !565, !tbaa !566
  %3 = icmp eq i32 %2, -1, !dbg !568
  br i1 %3, label %4, label %16, !dbg !569

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0)) #34, !dbg !570
  call void @llvm.dbg.value(metadata i8* %5, metadata !63, metadata !DIExpression()), !dbg !571
  %6 = icmp eq i8* %5, null, !dbg !572
  br i1 %6, label %14, label %7, !dbg !573

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !574, !tbaa !575
  %9 = icmp eq i8 %8, 0, !dbg !574
  br i1 %9, label %14, label %10, !dbg !576

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !519, metadata !DIExpression()) #34, !dbg !577
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), metadata !525, metadata !DIExpression()) #34, !dbg !577
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0)) #35, !dbg !579
  %12 = icmp eq i32 %11, 0, !dbg !580
  %13 = zext i1 %12 to i32, !dbg !576
  br label %14, !dbg !576

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !581, !tbaa !566
  br label %16, !dbg !582

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !583
  %18 = icmp eq i32 %17, 0, !dbg !583
  br i1 %18, label %22, label %19, !dbg !585

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !586, !tbaa !485
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !586
  br label %121, !dbg !588

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !564
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0)) #35, !dbg !589
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !590
  call void @llvm.dbg.value(metadata i8* %24, metadata !68, metadata !DIExpression()), !dbg !564
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !591
  call void @llvm.dbg.value(metadata i8* %25, metadata !69, metadata !DIExpression()), !dbg !564
  %26 = icmp eq i8* %25, null, !dbg !592
  br i1 %26, label %53, label %27, !dbg !593

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !594
  br i1 %28, label %53, label %29, !dbg !595

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !70, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 0, metadata !74, metadata !DIExpression()), !dbg !596
  %30 = icmp ult i8* %24, %25, !dbg !597
  br i1 %30, label %31, label %53, !dbg !598

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !564
  %33 = load i16*, i16** %32, align 8, !tbaa !485
  br label %34, !dbg !598

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !70, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.value(metadata i64 %36, metadata !74, metadata !DIExpression()), !dbg !596
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !599
  call void @llvm.dbg.value(metadata i8* %37, metadata !70, metadata !DIExpression()), !dbg !596
  %38 = load i8, i8* %35, align 1, !dbg !599, !tbaa !575
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !599
  %41 = load i16, i16* %40, align 2, !dbg !599, !tbaa !600
  %42 = lshr i16 %41, 13, !dbg !602
  %43 = and i16 %42, 1, !dbg !602
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !603
  call void @llvm.dbg.value(metadata i64 %45, metadata !74, metadata !DIExpression()), !dbg !596
  %46 = icmp ult i8* %37, %25, !dbg !597
  %47 = icmp ult i64 %45, 2, !dbg !604
  %48 = select i1 %46, i1 %47, i1 false, !dbg !604
  br i1 %48, label %34, label %49, !dbg !598, !llvm.loop !605

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !606
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !608
  %52 = xor i1 %50, true, !dbg !608
  br label %53, !dbg !608

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !564
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %54, metadata !69, metadata !DIExpression()), !dbg !564
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !609
  call void @llvm.dbg.value(metadata i64 %56, metadata !75, metadata !DIExpression()), !dbg !564
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !610
  call void @llvm.dbg.value(metadata i8* %57, metadata !76, metadata !DIExpression()), !dbg !564
  br label %58, !dbg !611

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !564
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !564
  call void @llvm.dbg.value(metadata i8* %59, metadata !76, metadata !DIExpression()), !dbg !564
  %61 = load i8, i8* %59, align 1, !dbg !612, !tbaa !575
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !613

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !614
  %64 = load i8, i8* %63, align 1, !dbg !617, !tbaa !575
  %65 = icmp ne i8 %64, 45, !dbg !618
  %66 = select i1 %65, i1 %60, i1 false, !dbg !619
  br label %67, !dbg !619

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !564
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !620
  %70 = load i16*, i16** %69, align 8, !dbg !620, !tbaa !485
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !620
  %73 = load i16, i16* %72, align 2, !dbg !620, !tbaa !600
  %74 = and i16 %73, 8192, !dbg !620
  %75 = icmp eq i16 %74, 0, !dbg !620
  br i1 %75, label %89, label %76, !dbg !622

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !623
  br i1 %77, label %91, label %78, !dbg !626

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !627
  %80 = load i8, i8* %79, align 1, !dbg !627, !tbaa !575
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !627
  %83 = load i16, i16* %82, align 2, !dbg !627, !tbaa !600
  %84 = and i16 %83, 8192, !dbg !627
  %85 = icmp eq i16 %84, 0, !dbg !627
  br i1 %85, label %86, label %91, !dbg !628

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !629
  br i1 %88, label %89, label %91, !dbg !629

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !631
  call void @llvm.dbg.value(metadata i8* %90, metadata !76, metadata !DIExpression()), !dbg !564
  br label %58, !dbg !611, !llvm.loop !632

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !634
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !485
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !634
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !525, metadata !DIExpression()) #34, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !519, metadata !DIExpression()) #34, !dbg !653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), metadata !136, metadata !DIExpression()), !dbg !564
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i64 noundef 6) #35, !dbg !655
  %96 = icmp eq i32 %95, 0, !dbg !655
  br i1 %96, label %100, label %97, !dbg !657

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i64 noundef 9) #35, !dbg !658
  %99 = icmp eq i32 %98, 0, !dbg !658
  br i1 %99, label %100, label %103, !dbg !659

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !660
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !660
  br label %106, !dbg !662

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !663
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !663
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !665, !tbaa !485
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !665
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !485
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !666
  %111 = ptrtoint i8* %59 to i64, !dbg !667
  %112 = sub i64 %111, %92, !dbg !667
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !485
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !667
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !485
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !668
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !485
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !669
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !485
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !670
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !671
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strcmp(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !672 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !676 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !681 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !685 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !695, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8** %1, metadata !696, metadata !DIExpression()), !dbg !697
  %3 = load i8*, i8** %1, align 8, !dbg !698, !tbaa !485
  tail call void @set_program_name(i8* noundef %3) #34, !dbg !699
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !700
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !701
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #34, !dbg !702
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !703
  %8 = load i8*, i8** @Version, align 8, !dbg !704, !tbaa !485
  %9 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0)) #34, !dbg !705
  %10 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !705
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* noundef %8, i1 noundef true, void (i32)* noundef nonnull @usage, i8* noundef %9, i8* noundef %10, i8* noundef null) #34, !dbg !706
  %11 = load i32, i32* @optind, align 4, !dbg !707, !tbaa !566
  %12 = sub nsw i32 %0, %11, !dbg !708
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 1, label %14
  ], !dbg !709

13:                                               ; preds = %2
  tail call fastcc void @users(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 noundef 1), !dbg !710
  br label %26, !dbg !712

14:                                               ; preds = %2
  %15 = sext i32 %11 to i64, !dbg !713
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !713
  %17 = load i8*, i8** %16, align 8, !dbg !713, !tbaa !485
  tail call fastcc void @users(i8* noundef %17, i32 noundef 0), !dbg !714
  br label %26, !dbg !715

18:                                               ; preds = %2
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #34, !dbg !716
  %20 = load i32, i32* @optind, align 4, !dbg !716, !tbaa !566
  %21 = add nsw i32 %20, 1, !dbg !716
  %22 = sext i32 %21 to i64, !dbg !716
  %23 = getelementptr inbounds i8*, i8** %1, i64 %22, !dbg !716
  %24 = load i8*, i8** %23, align 8, !dbg !716, !tbaa !485
  %25 = tail call i8* @quote(i8* noundef %24) #34, !dbg !716
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %19, i8* noundef %25) #34, !dbg !716
  tail call void @usage(i32 noundef 1) #38, !dbg !717
  unreachable, !dbg !717

26:                                               ; preds = %14, %13
  ret i32 0, !dbg !718
}

; Function Attrs: nounwind
declare !dbg !719 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !722 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !723 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @users(i8* noundef %0, i32 noundef %1) unnamed_addr #12 !dbg !726 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.gl_utmp*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !730, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i32 %1, metadata !731, metadata !DIExpression()), !dbg !759
  %5 = bitcast i64* %3 to i8*, !dbg !760
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #34, !dbg !760
  %6 = bitcast %struct.gl_utmp** %4 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #34, !dbg !761
  %7 = or i32 %1, 2, !dbg !762
  call void @llvm.dbg.value(metadata i32 %7, metadata !731, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i64* %3, metadata !732, metadata !DIExpression(DW_OP_deref)), !dbg !759
  call void @llvm.dbg.value(metadata %struct.gl_utmp** %4, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !759
  %8 = call i32 @read_utmp(i8* noundef %0, i64* noundef nonnull %3, %struct.gl_utmp** noundef nonnull %4, i32 noundef %7) #34, !dbg !763
  %9 = icmp eq i32 %8, 0, !dbg !765
  br i1 %9, label %14, label %10, !dbg !766

10:                                               ; preds = %2
  %11 = tail call i32* @__errno_location() #37, !dbg !767
  %12 = load i32, i32* %11, align 4, !dbg !767, !tbaa !566
  %13 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %0) #34, !dbg !767
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %12, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), i8* noundef %13) #34, !dbg !767
  unreachable, !dbg !767

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8, !dbg !768, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %15, metadata !732, metadata !DIExpression()), !dbg !759
  %16 = load %struct.gl_utmp*, %struct.gl_utmp** %4, align 8, !dbg !771, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %16, metadata !733, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata i64 %15, metadata !772, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %16, metadata !779, metadata !DIExpression()) #34, !dbg !793
  %17 = call noalias nonnull i8* @xinmalloc(i64 noundef %15, i64 noundef 8) #39, !dbg !795
  %18 = bitcast i8* %17 to i8**, !dbg !795
  call void @llvm.dbg.value(metadata i8** %18, metadata !780, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata i64 0, metadata !781, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata i64 %15, metadata !772, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %16, metadata !779, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata i64 %15, metadata !772, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !793
  %19 = icmp eq i64 %15, 0, !dbg !796
  br i1 %19, label %20, label %21, !dbg !796

20:                                               ; preds = %14
  call void @qsort(i8* noundef nonnull %17, i64 noundef 0, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @userid_compare) #34, !dbg !797
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #34, !dbg !798
  br label %74, !dbg !799

21:                                               ; preds = %14, %38
  %22 = phi i64 [ %25, %38 ], [ %15, %14 ]
  %23 = phi %struct.gl_utmp* [ %40, %38 ], [ %16, %14 ]
  %24 = phi i64 [ %39, %38 ], [ 0, %14 ]
  %25 = add nsw i64 %22, -1, !dbg !800
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %23, metadata !779, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata i64 %24, metadata !781, metadata !DIExpression()) #34, !dbg !793
  %26 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %23, i64 0, i32 0, !dbg !801
  %27 = load i8*, i8** %26, align 8, !dbg !801, !tbaa !802
  %28 = load i8, i8* %27, align 1, !dbg !801, !tbaa !575
  %29 = icmp eq i8 %28, 0, !dbg !801
  br i1 %29, label %38, label %30, !dbg !801

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %23, i64 0, i32 7, !dbg !801
  %32 = load i16, i16* %31, align 8, !dbg !801, !tbaa !806
  %33 = icmp eq i16 %32, 7, !dbg !801
  br i1 %33, label %34, label %38, !dbg !807

34:                                               ; preds = %30
  %35 = call noalias nonnull i8* @extract_trimmed_name(%struct.gl_utmp* noundef nonnull %23) #34, !dbg !808
  call void @llvm.dbg.value(metadata i8* %35, metadata !782, metadata !DIExpression()) #34, !dbg !809
  %36 = getelementptr inbounds i8*, i8** %18, i64 %24, !dbg !810
  store i8* %35, i8** %36, align 8, !dbg !811, !tbaa !485
  %37 = add nsw i64 %24, 1, !dbg !812
  call void @llvm.dbg.value(metadata i64 %37, metadata !781, metadata !DIExpression()) #34, !dbg !793
  br label %38, !dbg !813

38:                                               ; preds = %34, %30, %21
  %39 = phi i64 [ %37, %34 ], [ %24, %30 ], [ %24, %21 ], !dbg !793
  call void @llvm.dbg.value(metadata i64 %39, metadata !781, metadata !DIExpression()) #34, !dbg !793
  %40 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %23, i64 1, !dbg !814
  call void @llvm.dbg.value(metadata i64 %25, metadata !772, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %40, metadata !779, metadata !DIExpression()) #34, !dbg !793
  call void @llvm.dbg.value(metadata i64 %25, metadata !772, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #34, !dbg !793
  %41 = icmp eq i64 %25, 0, !dbg !796
  br i1 %41, label %42, label %21, !dbg !796, !llvm.loop !815

42:                                               ; preds = %38
  call void @qsort(i8* noundef nonnull %17, i64 noundef %39, i64 noundef 8, i32 (i8*, i8*)* noundef nonnull @userid_compare) #34, !dbg !797
  call void @llvm.dbg.value(metadata i64 0, metadata !786, metadata !DIExpression()) #34, !dbg !798
  %43 = icmp sgt i64 %39, 0, !dbg !817
  br i1 %43, label %44, label %74, !dbg !799

44:                                               ; preds = %42
  %45 = add nsw i64 %39, -1
  br label %46, !dbg !799

46:                                               ; preds = %65, %44
  %47 = phi i64 [ 0, %44 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !786, metadata !DIExpression()) #34, !dbg !798
  %48 = icmp slt i64 %47, %45, !dbg !818
  call void @llvm.dbg.value(metadata i8 undef, metadata !788, metadata !DIExpression()) #34, !dbg !819
  %49 = getelementptr inbounds i8*, i8** %18, i64 %47, !dbg !820
  %50 = load i8*, i8** %49, align 8, !dbg !820, !tbaa !485
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !820, !tbaa !485
  %52 = call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51) #34, !dbg !820
  %53 = select i1 %48, i32 32, i32 10, !dbg !821
  call void @llvm.dbg.value(metadata i32 %53, metadata !822, metadata !DIExpression()) #34, !dbg !828
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830, !tbaa !485
  %55 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %54, i64 0, i32 5, !dbg !830
  %56 = load i8*, i8** %55, align 8, !dbg !830, !tbaa !831
  %57 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %54, i64 0, i32 6, !dbg !830
  %58 = load i8*, i8** %57, align 8, !dbg !830, !tbaa !833
  %59 = icmp ult i8* %56, %58, !dbg !830
  br i1 %59, label %62, label %60, !dbg !830, !prof !834

60:                                               ; preds = %46
  %61 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %54, i32 noundef %53) #34, !dbg !830
  br label %65, !dbg !830

62:                                               ; preds = %46
  %63 = trunc i32 %53 to i8, !dbg !830
  %64 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !830
  store i8* %64, i8** %55, align 8, !dbg !830, !tbaa !831
  store i8 %63, i8* %56, align 1, !dbg !830, !tbaa !575
  br label %65, !dbg !830

65:                                               ; preds = %62, %60
  %66 = add nuw nsw i64 %47, 1, !dbg !835
  call void @llvm.dbg.value(metadata i64 %66, metadata !786, metadata !DIExpression()) #34, !dbg !798
  %67 = icmp eq i64 %66, %39, !dbg !817
  br i1 %67, label %68, label %46, !dbg !799, !llvm.loop !836

68:                                               ; preds = %65, %68
  %69 = phi i64 [ %72, %68 ], [ 0, %65 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !791, metadata !DIExpression()) #34, !dbg !838
  %70 = getelementptr inbounds i8*, i8** %18, i64 %69, !dbg !839
  %71 = load i8*, i8** %70, align 8, !dbg !839, !tbaa !485
  call void @free(i8* noundef %71) #34, !dbg !841
  %72 = add nuw nsw i64 %69, 1, !dbg !842
  call void @llvm.dbg.value(metadata i64 %72, metadata !791, metadata !DIExpression()) #34, !dbg !838
  %73 = icmp eq i64 %72, %39, !dbg !843
  br i1 %73, label %74, label %68, !dbg !844, !llvm.loop !845

74:                                               ; preds = %68, %20, %42
  call void @free(i8* noundef nonnull %17) #34, !dbg !847
  %75 = bitcast %struct.gl_utmp** %4 to i8**, !dbg !848
  %76 = load i8*, i8** %75, align 8, !dbg !848, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.gl_utmp* undef, metadata !733, metadata !DIExpression()), !dbg !759
  call void @free(i8* noundef %76) #34, !dbg !849
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #34, !dbg !850
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #34, !dbg !850
  ret void, !dbg !850
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define internal i32 @userid_compare(i8* nocapture noundef readonly %0, i8* nocapture noundef readonly %1) #13 !dbg !851 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !855, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.value(metadata i8* %1, metadata !856, metadata !DIExpression()), !dbg !859
  %3 = bitcast i8* %0 to i8**, !dbg !860
  call void @llvm.dbg.value(metadata i8** %3, metadata !857, metadata !DIExpression()), !dbg !859
  %4 = bitcast i8* %1 to i8**, !dbg !861
  call void @llvm.dbg.value(metadata i8** %4, metadata !858, metadata !DIExpression()), !dbg !859
  %5 = load i8*, i8** %3, align 8, !dbg !862, !tbaa !485
  %6 = load i8*, i8** %4, align 8, !dbg !863, !tbaa !485
  %7 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(1) %6) #35, !dbg !864
  ret i32 %7, !dbg !865
}

; Function Attrs: nofree
declare !dbg !866 void @qsort(i8* noundef, i64 noundef, i64 noundef, i32 (i8*, i8*)* nocapture noundef) local_unnamed_addr #14

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !871 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !873, metadata !DIExpression()), !dbg !874
  store i8* %0, i8** @file_name, align 8, !dbg !875, !tbaa !485
  ret void, !dbg !876
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !877 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !881, metadata !DIExpression()), !dbg !882
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !883, !tbaa !884
  ret void, !dbg !886
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !887 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !892, !tbaa !485
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !893
  %3 = icmp eq i32 %2, 0, !dbg !894
  br i1 %3, label %22, label %4, !dbg !895

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !896, !tbaa !884, !range !897
  %6 = icmp eq i8 %5, 0, !dbg !896
  br i1 %6, label %11, label %7, !dbg !898

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !899
  %9 = load i32, i32* %8, align 4, !dbg !899, !tbaa !566
  %10 = icmp eq i32 %9, 32, !dbg !900
  br i1 %10, label %22, label %11, !dbg !901

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.24, i64 0, i64 0), i32 noundef 5) #34, !dbg !902
  call void @llvm.dbg.value(metadata i8* %12, metadata !889, metadata !DIExpression()), !dbg !903
  %13 = load i8*, i8** @file_name, align 8, !dbg !904, !tbaa !485
  %14 = icmp eq i8* %13, null, !dbg !904
  %15 = tail call i32* @__errno_location() #37, !dbg !906
  %16 = load i32, i32* %15, align 4, !dbg !906, !tbaa !566
  br i1 %14, label %19, label %17, !dbg !907

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !908
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.25, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !908
  br label %20, !dbg !908

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.26, i64 0, i64 0), i8* noundef %12) #34, !dbg !909
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !910, !tbaa !566
  tail call void @_exit(i32 noundef %21) #36, !dbg !911
  unreachable, !dbg !911

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !912, !tbaa !485
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !914
  %25 = icmp eq i32 %24, 0, !dbg !915
  br i1 %25, label %28, label %26, !dbg !916

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !917, !tbaa !566
  tail call void @_exit(i32 noundef %27) #36, !dbg !918
  unreachable, !dbg !918

28:                                               ; preds = %22
  ret void, !dbg !919
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !920 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !924, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i32 %1, metadata !925, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.value(metadata i8* %2, metadata !926, metadata !DIExpression()), !dbg !928
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !927, metadata !DIExpression()), !dbg !929
  tail call fastcc void @flush_stdout(), !dbg !930
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !931, !tbaa !485
  %7 = icmp eq void ()* %6, null, !dbg !931
  br i1 %7, label %9, label %8, !dbg !933

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !934
  br label %13, !dbg !934

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !935, !tbaa !485
  %11 = tail call i8* @getprogname() #35, !dbg !935
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8* noundef %11) #34, !dbg !935
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !937
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !937
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !937
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !937, !tbaa.struct !938
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !937
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !937
  ret void, !dbg !939
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !940 {
  call void @llvm.dbg.value(metadata i32 1, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 1, metadata !944, metadata !DIExpression()) #34, !dbg !947
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !950
  %2 = icmp slt i32 %1, 0, !dbg !951
  br i1 %2, label %6, label %3, !dbg !952

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !953, !tbaa !485
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !953
  br label %6, !dbg !953

6:                                                ; preds = %3, %0
  ret void, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !955 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !957, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i32 %1, metadata !958, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i8* %2, metadata !959, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !960, metadata !DIExpression()), !dbg !962
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !963, !tbaa !485
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !964
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !965, metadata !DIExpression()) #34, !dbg !1008
  call void @llvm.dbg.value(metadata i8* %2, metadata !1006, metadata !DIExpression()) #34, !dbg !1008
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1010
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1010, !noalias !1011
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1010
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1010
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1010, !noalias !1011
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1015, !tbaa !566
  %12 = add i32 %11, 1, !dbg !1015
  store i32 %12, i32* @error_message_count, align 4, !dbg !1015, !tbaa !566
  %13 = icmp eq i32 %1, 0, !dbg !1016
  br i1 %13, label %24, label %14, !dbg !1018

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1019, metadata !DIExpression()) #34, !dbg !1027
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1029
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1029
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1023, metadata !DIExpression()) #34, !dbg !1030
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %16, metadata !1022, metadata !DIExpression()) #34, !dbg !1027
  %17 = icmp eq i8* %16, null, !dbg !1032
  br i1 %17, label %18, label %20, !dbg !1034

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.29, i64 0, i64 0), i32 noundef 5) #34, !dbg !1035
  call void @llvm.dbg.value(metadata i8* %19, metadata !1022, metadata !DIExpression()) #34, !dbg !1027
  br label %20, !dbg !1036

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1027
  call void @llvm.dbg.value(metadata i8* %21, metadata !1022, metadata !DIExpression()) #34, !dbg !1027
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1037, !tbaa !485
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.30, i64 0, i64 0), i8* noundef %21) #34, !dbg !1037
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1038
  br label %24, !dbg !1039

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1040, !tbaa !485
  call void @llvm.dbg.value(metadata i32 10, metadata !1041, metadata !DIExpression()) #34, !dbg !1047
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1046, metadata !DIExpression()) #34, !dbg !1047
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1049
  %27 = load i8*, i8** %26, align 8, !dbg !1049, !tbaa !831
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1049
  %29 = load i8*, i8** %28, align 8, !dbg !1049, !tbaa !833
  %30 = icmp ult i8* %27, %29, !dbg !1049
  br i1 %30, label %33, label %31, !dbg !1049, !prof !834

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1049
  br label %35, !dbg !1049

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1049
  store i8* %34, i8** %26, align 8, !dbg !1049, !tbaa !831
  store i8 10, i8* %27, align 1, !dbg !1049, !tbaa !575
  br label %35, !dbg !1049

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1050, !tbaa !485
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #34, !dbg !1050
  %38 = icmp eq i32 %0, 0, !dbg !1051
  br i1 %38, label %40, label %39, !dbg !1053

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #36, !dbg !1054
  unreachable, !dbg !1054

40:                                               ; preds = %35
  ret void, !dbg !1055
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1056 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1060 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1063 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1067 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1071, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i32 %1, metadata !1072, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata i8* %2, metadata !1073, metadata !DIExpression()), !dbg !1075
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1076
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1076
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1074, metadata !DIExpression()), !dbg !1077
  call void @llvm.va_start(i8* nonnull %6), !dbg !1078
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1079
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1079, !tbaa.struct !938
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1079
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1079
  call void @llvm.va_end(i8* nonnull %6), !dbg !1080
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1081
  ret void, !dbg !1081
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #19

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #19

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !161 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !179, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %1, metadata !180, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %2, metadata !181, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %3, metadata !182, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %4, metadata !183, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !184, metadata !DIExpression()), !dbg !1083
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1084, !tbaa !566
  %9 = icmp eq i32 %8, 0, !dbg !1084
  br i1 %9, label %24, label %10, !dbg !1086

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1087, !tbaa !566
  %12 = icmp eq i32 %11, %3, !dbg !1090
  br i1 %12, label %13, label %23, !dbg !1091

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1092, !tbaa !485
  %15 = icmp eq i8* %14, %2, !dbg !1093
  br i1 %15, label %39, label %16, !dbg !1094

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1095
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1096
  br i1 %19, label %20, label %23, !dbg !1096

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #35, !dbg !1097
  %22 = icmp eq i32 %21, 0, !dbg !1098
  br i1 %22, label %39, label %23, !dbg !1099

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1100, !tbaa !485
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1101, !tbaa !566
  br label %24, !dbg !1102

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1103
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1104, !tbaa !485
  %26 = icmp eq void ()* %25, null, !dbg !1104
  br i1 %26, label %28, label %27, !dbg !1106

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1107
  br label %32, !dbg !1107

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1108, !tbaa !485
  %30 = tail call i8* @getprogname() #35, !dbg !1108
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.33, i64 0, i64 0), i8* noundef %30) #34, !dbg !1108
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1110, !tbaa !485
  %34 = icmp eq i8* %2, null, !dbg !1110
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.34, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.35, i64 0, i64 0), !dbg !1110
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1110
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1111
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1111, !tbaa.struct !938
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1111
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1111
  br label %39, !dbg !1112

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1113 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1117, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i32 %1, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %2, metadata !1119, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i32 %3, metadata !1120, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata i8* %4, metadata !1121, metadata !DIExpression()), !dbg !1123
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1124
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1124
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1122, metadata !DIExpression()), !dbg !1125
  call void @llvm.va_start(i8* nonnull %8), !dbg !1126
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1127
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1127
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1127, !tbaa.struct !938
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1127
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1127
  call void @llvm.va_end(i8* nonnull %8), !dbg !1128
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1129
  ret void, !dbg !1129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #20 !dbg !1130 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1133, !tbaa !485
  ret i8* %1, !dbg !1134
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !1135 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1140, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8** %1, metadata !1141, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %2, metadata !1142, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %3, metadata !1143, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata i8* %4, metadata !1144, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1145, metadata !DIExpression()), !dbg !1166
  %9 = load i32, i32* @opterr, align 4, !dbg !1167, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %9, metadata !1146, metadata !DIExpression()), !dbg !1166
  store i32 0, i32* @opterr, align 4, !dbg !1168, !tbaa !566
  %10 = icmp eq i32 %0, 2, !dbg !1169
  br i1 %10, label %11, label %18, !dbg !1170

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %12, metadata !1147, metadata !DIExpression()), !dbg !1172
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1173

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #34, !dbg !1174
  br label %18, !dbg !1175

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1176
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #34, !dbg !1176
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1150, metadata !DIExpression()), !dbg !1177
  call void @llvm.va_start(i8* nonnull %15), !dbg !1178
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1179, !tbaa !485
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1180
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1180
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1180, !tbaa.struct !938
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #34, !dbg !1180
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #34, !dbg !1180
  call void @exit(i32 noundef 0) #36, !dbg !1181
  unreachable, !dbg !1181

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1182, !tbaa !566
  store i32 0, i32* @optind, align 4, !dbg !1183, !tbaa !566
  ret void, !dbg !1184
}

; Function Attrs: nounwind
declare !dbg !1185 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1191 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1195, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8** %1, metadata !1196, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %2, metadata !1197, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %3, metadata !1198, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i8* %4, metadata !1199, metadata !DIExpression()), !dbg !1210
  call void @llvm.dbg.value(metadata i1 %5, metadata !1200, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1210
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1201, metadata !DIExpression()), !dbg !1210
  %10 = load i32, i32* @opterr, align 4, !dbg !1211, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %10, metadata !1202, metadata !DIExpression()), !dbg !1210
  store i32 1, i32* @opterr, align 4, !dbg !1212, !tbaa !566
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.56, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i64 0, i64 0), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %11, metadata !1203, metadata !DIExpression()), !dbg !1210
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #34, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %12, metadata !1204, metadata !DIExpression()), !dbg !1210
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1215

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1216
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !1216
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1205, metadata !DIExpression()), !dbg !1217
  call void @llvm.va_start(i8* nonnull %14), !dbg !1218
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1219, !tbaa !485
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1220
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1220
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1220, !tbaa.struct !938
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #34, !dbg !1220
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #34, !dbg !1220
  call void @exit(i32 noundef 0) #36, !dbg !1221
  unreachable, !dbg !1221

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1222, !tbaa !566
  br label %19, !dbg !1223

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #34, !dbg !1224
  br label %21, !dbg !1225

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1225, !tbaa !566
  ret void, !dbg !1226
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #21 !dbg !1227 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1229, metadata !DIExpression()), !dbg !1232
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1233
  call void @llvm.dbg.value(metadata i8* %2, metadata !1230, metadata !DIExpression()), !dbg !1232
  %3 = icmp eq i8* %2, null, !dbg !1234
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1234
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1234
  call void @llvm.dbg.value(metadata i8* %5, metadata !1231, metadata !DIExpression()), !dbg !1232
  %6 = ptrtoint i8* %5 to i64, !dbg !1235
  %7 = ptrtoint i8* %0 to i64, !dbg !1235
  %8 = sub i64 %6, %7, !dbg !1235
  %9 = icmp sgt i64 %8, 6, !dbg !1237
  br i1 %9, label %10, label %19, !dbg !1238

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1239
  call void @llvm.dbg.value(metadata i8* %11, metadata !1240, metadata !DIExpression()) #34, !dbg !1247
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), metadata !1245, metadata !DIExpression()) #34, !dbg !1247
  call void @llvm.dbg.value(metadata i64 7, metadata !1246, metadata !DIExpression()) #34, !dbg !1247
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), i64 7) #34, !dbg !1249
  %13 = icmp eq i32 %12, 0, !dbg !1250
  br i1 %13, label %14, label %19, !dbg !1251

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1229, metadata !DIExpression()), !dbg !1232
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.62, i64 0, i64 0), i64 noundef 3) #35, !dbg !1252
  %16 = icmp eq i32 %15, 0, !dbg !1255
  %17 = select i1 %16, i64 3, i64 0, !dbg !1256
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1256
  br label %19, !dbg !1256

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1232
  call void @llvm.dbg.value(metadata i8* %21, metadata !1231, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %20, metadata !1229, metadata !DIExpression()), !dbg !1232
  store i8* %20, i8** @program_name, align 8, !dbg !1257, !tbaa !485
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1258, !tbaa !485
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1259, !tbaa !485
  ret void, !dbg !1260
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !219 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !226, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata i8* %1, metadata !227, metadata !DIExpression()), !dbg !1261
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1262
  call void @llvm.dbg.value(metadata i8* %5, metadata !228, metadata !DIExpression()), !dbg !1261
  %6 = icmp eq i8* %5, %0, !dbg !1263
  br i1 %6, label %7, label %17, !dbg !1265

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1266
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1266
  %10 = bitcast i64* %4 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1267
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !234, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1269, metadata !DIExpression()) #34, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %10, metadata !1278, metadata !DIExpression()) #34, !dbg !1286
  call void @llvm.dbg.value(metadata i32 0, metadata !1284, metadata !DIExpression()) #34, !dbg !1286
  call void @llvm.dbg.value(metadata i64 8, metadata !1285, metadata !DIExpression()) #34, !dbg !1286
  store i64 0, i64* %4, align 8, !dbg !1288
  call void @llvm.dbg.value(metadata i32* %3, metadata !229, metadata !DIExpression(DW_OP_deref)), !dbg !1261
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1289
  %12 = icmp eq i64 %11, 2, !dbg !1291
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !229, metadata !DIExpression()), !dbg !1261
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1292
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1293
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1293
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1261
  ret i8* %18, !dbg !1293
}

; Function Attrs: nounwind
declare !dbg !1294 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1300 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1305, metadata !DIExpression()), !dbg !1308
  %2 = tail call i32* @__errno_location() #37, !dbg !1309
  %3 = load i32, i32* %2, align 4, !dbg !1309, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %3, metadata !1306, metadata !DIExpression()), !dbg !1308
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1310
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1310
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1310
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1311
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1307, metadata !DIExpression()), !dbg !1308
  store i32 %3, i32* %2, align 4, !dbg !1312, !tbaa !566
  ret %struct.quoting_options* %8, !dbg !1313
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #20 !dbg !1314 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1320, metadata !DIExpression()), !dbg !1321
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1322
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1322
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1323
  %5 = load i32, i32* %4, align 8, !dbg !1323, !tbaa !1324
  ret i32 %5, !dbg !1326
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !1327 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1331, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %1, metadata !1332, metadata !DIExpression()), !dbg !1333
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1334
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1334
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1335
  store i32 %1, i32* %5, align 8, !dbg !1336, !tbaa !1324
  ret void, !dbg !1337
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #23 !dbg !1338 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1342, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %1, metadata !1343, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %2, metadata !1344, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i8 %1, metadata !1345, metadata !DIExpression()), !dbg !1350
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1351
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1351
  %6 = lshr i8 %1, 5, !dbg !1352
  %7 = zext i8 %6 to i64, !dbg !1352
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1353
  call void @llvm.dbg.value(metadata i32* %8, metadata !1346, metadata !DIExpression()), !dbg !1350
  %9 = and i8 %1, 31, !dbg !1354
  %10 = zext i8 %9 to i32, !dbg !1354
  call void @llvm.dbg.value(metadata i32 %10, metadata !1348, metadata !DIExpression()), !dbg !1350
  %11 = load i32, i32* %8, align 4, !dbg !1355, !tbaa !566
  %12 = lshr i32 %11, %10, !dbg !1356
  %13 = and i32 %12, 1, !dbg !1357
  call void @llvm.dbg.value(metadata i32 %13, metadata !1349, metadata !DIExpression()), !dbg !1350
  %14 = and i32 %2, 1, !dbg !1358
  %15 = xor i32 %13, %14, !dbg !1359
  %16 = shl i32 %15, %10, !dbg !1360
  %17 = xor i32 %16, %11, !dbg !1361
  store i32 %17, i32* %8, align 4, !dbg !1361, !tbaa !566
  ret i32 %13, !dbg !1362
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #23 !dbg !1363 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1367, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.value(metadata i32 %1, metadata !1368, metadata !DIExpression()), !dbg !1370
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1371
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1367, metadata !DIExpression()), !dbg !1370
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1374
  %6 = load i32, i32* %5, align 4, !dbg !1374, !tbaa !1375
  call void @llvm.dbg.value(metadata i32 %6, metadata !1369, metadata !DIExpression()), !dbg !1370
  store i32 %1, i32* %5, align 4, !dbg !1376, !tbaa !1375
  ret i32 %6, !dbg !1377
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1378 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1382, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %1, metadata !1383, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.value(metadata i8* %2, metadata !1384, metadata !DIExpression()), !dbg !1385
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1386
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1388
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1382, metadata !DIExpression()), !dbg !1385
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1389
  store i32 10, i32* %6, align 8, !dbg !1390, !tbaa !1324
  %7 = icmp ne i8* %1, null, !dbg !1391
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1393
  br i1 %9, label %11, label %10, !dbg !1393

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1394
  unreachable, !dbg !1394

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1395
  store i8* %1, i8** %12, align 8, !dbg !1396, !tbaa !1397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1398
  store i8* %2, i8** %13, align 8, !dbg !1399, !tbaa !1400
  ret void, !dbg !1401
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1402 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1406, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %1, metadata !1407, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %2, metadata !1408, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i64 %3, metadata !1409, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1410, metadata !DIExpression()), !dbg !1414
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1415
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1411, metadata !DIExpression()), !dbg !1414
  %8 = tail call i32* @__errno_location() #37, !dbg !1416
  %9 = load i32, i32* %8, align 4, !dbg !1416, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %9, metadata !1412, metadata !DIExpression()), !dbg !1414
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1417
  %11 = load i32, i32* %10, align 8, !dbg !1417, !tbaa !1324
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1418
  %13 = load i32, i32* %12, align 4, !dbg !1418, !tbaa !1375
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1419
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1420
  %16 = load i8*, i8** %15, align 8, !dbg !1420, !tbaa !1397
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1421
  %18 = load i8*, i8** %17, align 8, !dbg !1421, !tbaa !1400
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1422
  call void @llvm.dbg.value(metadata i64 %19, metadata !1413, metadata !DIExpression()), !dbg !1414
  store i32 %9, i32* %8, align 4, !dbg !1423, !tbaa !566
  ret i64 %19, !dbg !1424
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1425 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1431, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %1, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %2, metadata !1433, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %3, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %4, metadata !1435, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %5, metadata !1436, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32* %6, metadata !1437, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %7, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %8, metadata !1439, metadata !DIExpression()), !dbg !1493
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1494
  %18 = icmp eq i64 %17, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i1 %18, metadata !1440, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* null, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %5, metadata !1446, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1448, metadata !DIExpression()), !dbg !1493
  %19 = and i32 %5, 2, !dbg !1496
  %20 = icmp ne i32 %19, 0, !dbg !1496
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
  br label %36, !dbg !1496

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1497
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1498
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1499
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %43, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %42, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %41, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %40, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %39, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %38, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %37, metadata !1435, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1486), !dbg !1500
  call void @llvm.dbg.value(metadata i8 0, metadata !1449, metadata !DIExpression()), !dbg !1493
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
  ], !dbg !1501

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 5, metadata !1435, metadata !DIExpression()), !dbg !1493
  br label %111, !dbg !1502

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 5, metadata !1435, metadata !DIExpression()), !dbg !1493
  br i1 %45, label %111, label %51, !dbg !1502

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1503
  br i1 %52, label %111, label %53, !dbg !1507

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1503, !tbaa !575
  br label %111, !dbg !1503

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.75, i64 0, i64 0), metadata !296, metadata !DIExpression()) #34, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %37, metadata !297, metadata !DIExpression()) #34, !dbg !1508
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.75, i64 0, i64 0), i32 noundef 5) #34, !dbg !1512
  call void @llvm.dbg.value(metadata i8* %55, metadata !298, metadata !DIExpression()) #34, !dbg !1508
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.75, i64 0, i64 0), !dbg !1513
  br i1 %56, label %57, label %66, !dbg !1515

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1517
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !300, metadata !DIExpression()) #34, !dbg !1518
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1519, metadata !DIExpression()) #34, !dbg !1525
  call void @llvm.dbg.value(metadata i8* %23, metadata !1527, metadata !DIExpression()) #34, !dbg !1532
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()) #34, !dbg !1532
  call void @llvm.dbg.value(metadata i64 8, metadata !1531, metadata !DIExpression()) #34, !dbg !1532
  store i64 0, i64* %13, align 8, !dbg !1534
  call void @llvm.dbg.value(metadata i32* %12, metadata !299, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1508
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1535
  %59 = icmp eq i64 %58, 3, !dbg !1537
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !299, metadata !DIExpression()) #34, !dbg !1508
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1538
  %63 = icmp eq i32 %37, 9, !dbg !1538
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !1538
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1538
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1539
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1539
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1508
  call void @llvm.dbg.value(metadata i8* %67, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), metadata !296, metadata !DIExpression()) #34, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %37, metadata !297, metadata !DIExpression()) #34, !dbg !1540
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.76, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), i32 noundef 5) #34, !dbg !1542
  call void @llvm.dbg.value(metadata i8* %68, metadata !298, metadata !DIExpression()) #34, !dbg !1540
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !1543
  br i1 %69, label %70, label %79, !dbg !1544

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1545
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1546
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !300, metadata !DIExpression()) #34, !dbg !1547
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1519, metadata !DIExpression()) #34, !dbg !1548
  call void @llvm.dbg.value(metadata i8* %26, metadata !1527, metadata !DIExpression()) #34, !dbg !1550
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()) #34, !dbg !1550
  call void @llvm.dbg.value(metadata i64 8, metadata !1531, metadata !DIExpression()) #34, !dbg !1550
  store i64 0, i64* %11, align 8, !dbg !1552
  call void @llvm.dbg.value(metadata i32* %10, metadata !299, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1540
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1553
  %72 = icmp eq i64 %71, 3, !dbg !1554
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !299, metadata !DIExpression()) #34, !dbg !1540
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1555
  %76 = icmp eq i32 %37, 9, !dbg !1555
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), !dbg !1555
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1555
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1556
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1556
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %80, metadata !1438, metadata !DIExpression()), !dbg !1493
  br i1 %45, label %97, label %82, !dbg !1557

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1450, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 0, metadata !1441, metadata !DIExpression()), !dbg !1493
  %83 = load i8, i8* %80, align 1, !dbg !1559, !tbaa !575
  %84 = icmp eq i8 %83, 0, !dbg !1561
  br i1 %84, label %97, label %85, !dbg !1561

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1450, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i64 %88, metadata !1441, metadata !DIExpression()), !dbg !1493
  %89 = icmp ult i64 %88, %48, !dbg !1562
  br i1 %89, label %90, label %92, !dbg !1565

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1562
  store i8 %86, i8* %91, align 1, !dbg !1562, !tbaa !575
  br label %92, !dbg !1562

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %93, metadata !1441, metadata !DIExpression()), !dbg !1493
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1566
  call void @llvm.dbg.value(metadata i8* %94, metadata !1450, metadata !DIExpression()), !dbg !1558
  %95 = load i8, i8* %94, align 1, !dbg !1559, !tbaa !575
  %96 = icmp eq i8 %95, 0, !dbg !1561
  br i1 %96, label %97, label %85, !dbg !1561, !llvm.loop !1567

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1569
  call void @llvm.dbg.value(metadata i64 %98, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %81, metadata !1443, metadata !DIExpression()), !dbg !1493
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %99, metadata !1444, metadata !DIExpression()), !dbg !1493
  br label %111, !dbg !1571

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1445, metadata !DIExpression()), !dbg !1493
  br label %102, !dbg !1572

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1445, metadata !DIExpression()), !dbg !1493
  br i1 %45, label %102, label %105, !dbg !1573

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1435, metadata !DIExpression()), !dbg !1493
  br label %111, !dbg !1574

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 2, metadata !1435, metadata !DIExpression()), !dbg !1493
  br i1 %45, label %111, label %105, !dbg !1574

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1575
  br i1 %107, label %111, label %108, !dbg !1579

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1575, !tbaa !575
  br label %111, !dbg !1575

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1446, metadata !DIExpression()), !dbg !1493
  br label %111, !dbg !1580

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1581
  unreachable, !dbg !1581

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1569
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.77, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.78, i64 0, i64 0), %102 ], !dbg !1493
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1493
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1446, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1445, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %117, metadata !1444, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %116, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %115, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %114, metadata !1439, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8* %113, metadata !1438, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i32 %112, metadata !1435, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 0, metadata !1455, metadata !DIExpression()), !dbg !1582
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
  br label %132, !dbg !1583

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1569
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1497
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1582
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %139, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %135, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %134, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %133, metadata !1434, metadata !DIExpression()), !dbg !1493
  %141 = icmp eq i64 %133, -1, !dbg !1584
  br i1 %141, label %142, label %146, !dbg !1585

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1586
  %144 = load i8, i8* %143, align 1, !dbg !1586, !tbaa !575
  %145 = icmp eq i8 %144, 0, !dbg !1587
  br i1 %145, label %596, label %148, !dbg !1588

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1589
  br i1 %147, label %596, label %148, !dbg !1588

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 0, metadata !1461, metadata !DIExpression()), !dbg !1590
  br i1 %123, label %149, label %163, !dbg !1591

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1593
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1594
  br i1 %151, label %152, label %154, !dbg !1594

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1595
  call void @llvm.dbg.value(metadata i64 %153, metadata !1434, metadata !DIExpression()), !dbg !1493
  br label %154, !dbg !1596

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1596
  call void @llvm.dbg.value(metadata i64 %155, metadata !1434, metadata !DIExpression()), !dbg !1493
  %156 = icmp ugt i64 %150, %155, !dbg !1597
  br i1 %156, label %163, label %157, !dbg !1598

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1599
  call void @llvm.dbg.value(metadata i8* %158, metadata !1600, metadata !DIExpression()) #34, !dbg !1605
  call void @llvm.dbg.value(metadata i8* %116, metadata !1603, metadata !DIExpression()) #34, !dbg !1605
  call void @llvm.dbg.value(metadata i64 %117, metadata !1604, metadata !DIExpression()) #34, !dbg !1605
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1607
  %160 = icmp ne i32 %159, 0, !dbg !1608
  %161 = or i1 %160, %125, !dbg !1609
  %162 = xor i1 %160, true, !dbg !1609
  br i1 %161, label %163, label %647, !dbg !1609

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %164, metadata !1434, metadata !DIExpression()), !dbg !1493
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1610
  %167 = load i8, i8* %166, align 1, !dbg !1610, !tbaa !575
  call void @llvm.dbg.value(metadata i8 %167, metadata !1462, metadata !DIExpression()), !dbg !1590
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
  ], !dbg !1611

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1612

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1613

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1460, metadata !DIExpression()), !dbg !1590
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1617
  br i1 %171, label %188, label %172, !dbg !1617

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1619
  br i1 %173, label %174, label %176, !dbg !1623

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1619
  store i8 39, i8* %175, align 1, !dbg !1619, !tbaa !575
  br label %176, !dbg !1619

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %177, metadata !1441, metadata !DIExpression()), !dbg !1493
  %178 = icmp ult i64 %177, %140, !dbg !1624
  br i1 %178, label %179, label %181, !dbg !1627

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1624
  store i8 36, i8* %180, align 1, !dbg !1624, !tbaa !575
  br label %181, !dbg !1624

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %182, metadata !1441, metadata !DIExpression()), !dbg !1493
  %183 = icmp ult i64 %182, %140, !dbg !1628
  br i1 %183, label %184, label %186, !dbg !1631

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1628
  store i8 39, i8* %185, align 1, !dbg !1628, !tbaa !575
  br label %186, !dbg !1628

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %187, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %188, !dbg !1632

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1493
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %189, metadata !1441, metadata !DIExpression()), !dbg !1493
  %191 = icmp ult i64 %189, %140, !dbg !1633
  br i1 %191, label %192, label %194, !dbg !1636

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1633
  store i8 92, i8* %193, align 1, !dbg !1633, !tbaa !575
  br label %194, !dbg !1633

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %195, metadata !1441, metadata !DIExpression()), !dbg !1493
  br i1 %120, label %196, label %499, !dbg !1637

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1639
  %198 = icmp ult i64 %197, %164, !dbg !1640
  br i1 %198, label %199, label %456, !dbg !1641

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1642
  %201 = load i8, i8* %200, align 1, !dbg !1642, !tbaa !575
  %202 = add i8 %201, -48, !dbg !1643
  %203 = icmp ult i8 %202, 10, !dbg !1643
  br i1 %203, label %204, label %456, !dbg !1643

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1644
  br i1 %205, label %206, label %208, !dbg !1648

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1644
  store i8 48, i8* %207, align 1, !dbg !1644, !tbaa !575
  br label %208, !dbg !1644

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %209, metadata !1441, metadata !DIExpression()), !dbg !1493
  %210 = icmp ult i64 %209, %140, !dbg !1649
  br i1 %210, label %211, label %213, !dbg !1652

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1649
  store i8 48, i8* %212, align 1, !dbg !1649, !tbaa !575
  br label %213, !dbg !1649

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1652
  call void @llvm.dbg.value(metadata i64 %214, metadata !1441, metadata !DIExpression()), !dbg !1493
  br label %456, !dbg !1653

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1654

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1655

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1656

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1658

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1660
  %221 = icmp ult i64 %220, %164, !dbg !1661
  br i1 %221, label %222, label %456, !dbg !1662

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1663
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1664
  %225 = load i8, i8* %224, align 1, !dbg !1664, !tbaa !575
  %226 = icmp eq i8 %225, 63, !dbg !1665
  br i1 %226, label %227, label %456, !dbg !1666

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1667
  %229 = load i8, i8* %228, align 1, !dbg !1667, !tbaa !575
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
  ], !dbg !1668

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1669

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %220, metadata !1455, metadata !DIExpression()), !dbg !1582
  %232 = icmp ult i64 %134, %140, !dbg !1671
  br i1 %232, label %233, label %235, !dbg !1674

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1671
  store i8 63, i8* %234, align 1, !dbg !1671, !tbaa !575
  br label %235, !dbg !1671

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1674
  call void @llvm.dbg.value(metadata i64 %236, metadata !1441, metadata !DIExpression()), !dbg !1493
  %237 = icmp ult i64 %236, %140, !dbg !1675
  br i1 %237, label %238, label %240, !dbg !1678

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1675
  store i8 34, i8* %239, align 1, !dbg !1675, !tbaa !575
  br label %240, !dbg !1675

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %241, metadata !1441, metadata !DIExpression()), !dbg !1493
  %242 = icmp ult i64 %241, %140, !dbg !1679
  br i1 %242, label %243, label %245, !dbg !1682

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1679
  store i8 34, i8* %244, align 1, !dbg !1679, !tbaa !575
  br label %245, !dbg !1679

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1682
  call void @llvm.dbg.value(metadata i64 %246, metadata !1441, metadata !DIExpression()), !dbg !1493
  %247 = icmp ult i64 %246, %140, !dbg !1683
  br i1 %247, label %248, label %250, !dbg !1686

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1683
  store i8 63, i8* %249, align 1, !dbg !1683, !tbaa !575
  br label %250, !dbg !1683

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1686
  call void @llvm.dbg.value(metadata i64 %251, metadata !1441, metadata !DIExpression()), !dbg !1493
  br label %456, !dbg !1687

252:                                              ; preds = %163
  br label %263, !dbg !1688

253:                                              ; preds = %163
  br label %263, !dbg !1689

254:                                              ; preds = %163
  br label %261, !dbg !1690

255:                                              ; preds = %163
  br label %261, !dbg !1691

256:                                              ; preds = %163
  br label %263, !dbg !1692

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1693

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1694

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1697

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1699

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1700
  call void @llvm.dbg.label(metadata !1487), !dbg !1701
  br i1 %128, label %263, label %638, !dbg !1702

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1700
  call void @llvm.dbg.label(metadata !1489), !dbg !1704
  br i1 %118, label %510, label %467, !dbg !1705

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1706

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1707, !tbaa !575
  %268 = icmp eq i8 %267, 0, !dbg !1709
  br i1 %268, label %269, label %456, !dbg !1710

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1711
  br i1 %270, label %271, label %456, !dbg !1713

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1590
  br label %272, !dbg !1714

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1461, metadata !DIExpression()), !dbg !1590
  br i1 %126, label %274, label %456, !dbg !1715

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1717

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1461, metadata !DIExpression()), !dbg !1590
  br i1 %126, label %276, label %456, !dbg !1718

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1719

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1722
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1724
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1724
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %282, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %281, metadata !1442, metadata !DIExpression()), !dbg !1493
  %283 = icmp ult i64 %134, %282, !dbg !1725
  br i1 %283, label %284, label %286, !dbg !1728

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1725
  store i8 39, i8* %285, align 1, !dbg !1725, !tbaa !575
  br label %286, !dbg !1725

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1728
  call void @llvm.dbg.value(metadata i64 %287, metadata !1441, metadata !DIExpression()), !dbg !1493
  %288 = icmp ult i64 %287, %282, !dbg !1729
  br i1 %288, label %289, label %291, !dbg !1732

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1729
  store i8 92, i8* %290, align 1, !dbg !1729, !tbaa !575
  br label %291, !dbg !1729

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1732
  call void @llvm.dbg.value(metadata i64 %292, metadata !1441, metadata !DIExpression()), !dbg !1493
  %293 = icmp ult i64 %292, %282, !dbg !1733
  br i1 %293, label %294, label %296, !dbg !1736

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1733
  store i8 39, i8* %295, align 1, !dbg !1733, !tbaa !575
  br label %296, !dbg !1733

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1736
  call void @llvm.dbg.value(metadata i64 %297, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %456, !dbg !1737

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1738

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1463, metadata !DIExpression()), !dbg !1739
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !1740
  %301 = load i16*, i16** %300, align 8, !dbg !1740, !tbaa !485
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1740
  %304 = load i16, i16* %303, align 2, !dbg !1740, !tbaa !600
  %305 = and i16 %304, 16384, !dbg !1740
  %306 = icmp ne i16 %305, 0, !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %349, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %312, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i1 %350, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  br label %352, !dbg !1743

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1744
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1467, metadata !DIExpression()), !dbg !1745
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1519, metadata !DIExpression()) #34, !dbg !1746
  call void @llvm.dbg.value(metadata i8* %32, metadata !1527, metadata !DIExpression()) #34, !dbg !1748
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()) #34, !dbg !1748
  call void @llvm.dbg.value(metadata i64 8, metadata !1531, metadata !DIExpression()) #34, !dbg !1748
  store i64 0, i64* %14, align 8, !dbg !1750
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i8 1, metadata !1466, metadata !DIExpression()), !dbg !1739
  %308 = icmp eq i64 %164, -1, !dbg !1751
  br i1 %308, label %309, label %311, !dbg !1753

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %310, metadata !1434, metadata !DIExpression()), !dbg !1493
  br label %311, !dbg !1755

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1590
  call void @llvm.dbg.value(metadata i64 %312, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1756
  %313 = sub i64 %312, %139, !dbg !1757
  call void @llvm.dbg.value(metadata i32* %16, metadata !1470, metadata !DIExpression(DW_OP_deref)), !dbg !1758
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %314, metadata !1474, metadata !DIExpression()), !dbg !1758
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1760

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  %316 = icmp ugt i64 %312, %139, !dbg !1761
  br i1 %316, label %319, label %317, !dbg !1763

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1764
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %349, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %312, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i1 %350, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  br label %352, !dbg !1743

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1466, metadata !DIExpression()), !dbg !1739
  br label %346, !dbg !1766

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1463, metadata !DIExpression()), !dbg !1739
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1768
  %323 = load i8, i8* %322, align 1, !dbg !1768, !tbaa !575
  %324 = icmp eq i8 %323, 0, !dbg !1763
  br i1 %324, label %348, label %325, !dbg !1769

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %326, metadata !1463, metadata !DIExpression()), !dbg !1739
  %327 = add i64 %326, %139, !dbg !1771
  %328 = icmp eq i64 %326, %313, !dbg !1761
  br i1 %328, label %348, label %319, !dbg !1763, !llvm.loop !1772

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1773
  call void @llvm.dbg.value(metadata i64 1, metadata !1475, metadata !DIExpression()), !dbg !1774
  br i1 %331, label %332, label %340, !dbg !1773

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1475, metadata !DIExpression()), !dbg !1774
  %334 = add i64 %333, %139, !dbg !1775
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1777
  %336 = load i8, i8* %335, align 1, !dbg !1777, !tbaa !575
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1778

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1779
  call void @llvm.dbg.value(metadata i64 %338, metadata !1475, metadata !DIExpression()), !dbg !1774
  %339 = icmp eq i64 %338, %314, !dbg !1780
  br i1 %339, label %340, label %332, !dbg !1781, !llvm.loop !1782

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1784, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %341, metadata !1470, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i32 %341, metadata !1786, metadata !DIExpression()) #34, !dbg !1794
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !1796
  %343 = icmp ne i32 %342, 0, !dbg !1797
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %314, metadata !1463, metadata !DIExpression()), !dbg !1739
  br label %348, !dbg !1798

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1764
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1765
  call void @llvm.dbg.label(metadata !1492), !dbg !1799
  %345 = select i1 %118, i32 4, i32 2, !dbg !1800
  br label %643, !dbg !1800

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1764
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %349, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %312, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i1 %350, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  br label %352, !dbg !1743

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1466, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 0, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1764
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1765
  call void @llvm.dbg.value(metadata i64 %349, metadata !1463, metadata !DIExpression()), !dbg !1739
  call void @llvm.dbg.value(metadata i64 %312, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i1 %350, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  %351 = icmp ugt i64 %349, 1, !dbg !1802
  br i1 %351, label %357, label %352, !dbg !1743

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1803
  br i1 %356, label %456, label %357, !dbg !1803

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %361, metadata !1483, metadata !DIExpression()), !dbg !1805
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1806

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1493
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1582
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1807
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %369, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %368, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %366, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %364, metadata !1441, metadata !DIExpression()), !dbg !1493
  br i1 %362, label %414, label %370, !dbg !1808

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1813

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1460, metadata !DIExpression()), !dbg !1590
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1816
  br i1 %372, label %389, label %373, !dbg !1816

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1818
  br i1 %374, label %375, label %377, !dbg !1822

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1818
  store i8 39, i8* %376, align 1, !dbg !1818, !tbaa !575
  br label %377, !dbg !1818

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %378, metadata !1441, metadata !DIExpression()), !dbg !1493
  %379 = icmp ult i64 %378, %140, !dbg !1823
  br i1 %379, label %380, label %382, !dbg !1826

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1823
  store i8 36, i8* %381, align 1, !dbg !1823, !tbaa !575
  br label %382, !dbg !1823

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %383, metadata !1441, metadata !DIExpression()), !dbg !1493
  %384 = icmp ult i64 %383, %140, !dbg !1827
  br i1 %384, label %385, label %387, !dbg !1830

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1827
  store i8 39, i8* %386, align 1, !dbg !1827, !tbaa !575
  br label %387, !dbg !1827

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %388, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %389, !dbg !1831

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1493
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %390, metadata !1441, metadata !DIExpression()), !dbg !1493
  %392 = icmp ult i64 %390, %140, !dbg !1832
  br i1 %392, label %393, label %395, !dbg !1835

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1832
  store i8 92, i8* %394, align 1, !dbg !1832, !tbaa !575
  br label %395, !dbg !1832

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1835
  call void @llvm.dbg.value(metadata i64 %396, metadata !1441, metadata !DIExpression()), !dbg !1493
  %397 = icmp ult i64 %396, %140, !dbg !1836
  br i1 %397, label %398, label %402, !dbg !1839

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1836
  %400 = or i8 %399, 48, !dbg !1836
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1836
  store i8 %400, i8* %401, align 1, !dbg !1836, !tbaa !575
  br label %402, !dbg !1836

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1839
  call void @llvm.dbg.value(metadata i64 %403, metadata !1441, metadata !DIExpression()), !dbg !1493
  %404 = icmp ult i64 %403, %140, !dbg !1840
  br i1 %404, label %405, label %410, !dbg !1843

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1840
  %407 = and i8 %406, 7, !dbg !1840
  %408 = or i8 %407, 48, !dbg !1840
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1840
  store i8 %408, i8* %409, align 1, !dbg !1840, !tbaa !575
  br label %410, !dbg !1840

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %411, metadata !1441, metadata !DIExpression()), !dbg !1493
  %412 = and i8 %369, 7, !dbg !1844
  %413 = or i8 %412, 48, !dbg !1845
  call void @llvm.dbg.value(metadata i8 %413, metadata !1462, metadata !DIExpression()), !dbg !1590
  br label %421, !dbg !1846

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1847

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1848
  br i1 %416, label %417, label %419, !dbg !1853

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1848
  store i8 92, i8* %418, align 1, !dbg !1848, !tbaa !575
  br label %419, !dbg !1848

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %420, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1457, metadata !DIExpression()), !dbg !1590
  br label %421, !dbg !1854

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1493
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1590
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1590
  call void @llvm.dbg.value(metadata i8 %426, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %425, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %422, metadata !1441, metadata !DIExpression()), !dbg !1493
  %427 = add i64 %366, 1, !dbg !1855
  %428 = icmp ugt i64 %361, %427, !dbg !1857
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1858

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1859
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1859
  br i1 %432, label %433, label %444, !dbg !1859

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1862
  br i1 %434, label %435, label %437, !dbg !1866

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1862
  store i8 39, i8* %436, align 1, !dbg !1862, !tbaa !575
  br label %437, !dbg !1862

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1866
  call void @llvm.dbg.value(metadata i64 %438, metadata !1441, metadata !DIExpression()), !dbg !1493
  %439 = icmp ult i64 %438, %140, !dbg !1867
  br i1 %439, label %440, label %442, !dbg !1870

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1867
  store i8 39, i8* %441, align 1, !dbg !1867, !tbaa !575
  br label %442, !dbg !1867

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1870
  call void @llvm.dbg.value(metadata i64 %443, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %444, !dbg !1871

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1872
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %445, metadata !1441, metadata !DIExpression()), !dbg !1493
  %447 = icmp ult i64 %445, %140, !dbg !1873
  br i1 %447, label %448, label %450, !dbg !1876

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1873
  store i8 %426, i8* %449, align 1, !dbg !1873, !tbaa !575
  br label %450, !dbg !1873

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1876
  call void @llvm.dbg.value(metadata i64 %451, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %427, metadata !1455, metadata !DIExpression()), !dbg !1582
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1877
  %453 = load i8, i8* %452, align 1, !dbg !1877, !tbaa !575
  call void @llvm.dbg.value(metadata i8 %453, metadata !1462, metadata !DIExpression()), !dbg !1590
  br label %363, !dbg !1878, !llvm.loop !1879

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i1 %358, metadata !1461, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  call void @llvm.dbg.value(metadata i8 %425, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %366, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %422, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %360, metadata !1434, metadata !DIExpression()), !dbg !1493
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1882
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1493
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1497
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1582
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1590
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %465, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1457, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %462, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %459, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %458, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %457, metadata !1434, metadata !DIExpression()), !dbg !1493
  br i1 %121, label %478, label %467, !dbg !1883

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
  br i1 %131, label %479, label %499, !dbg !1885

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1886

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
  %490 = lshr i8 %481, 5, !dbg !1887
  %491 = zext i8 %490 to i64, !dbg !1887
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1888
  %493 = load i32, i32* %492, align 4, !dbg !1888, !tbaa !566
  %494 = and i8 %481, 31, !dbg !1889
  %495 = zext i8 %494 to i32, !dbg !1889
  %496 = shl nuw i32 1, %495, !dbg !1890
  %497 = and i32 %493, %496, !dbg !1890
  %498 = icmp eq i32 %497, 0, !dbg !1890
  br i1 %498, label %499, label %510, !dbg !1891

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
  br i1 %165, label %510, label %546, !dbg !1892

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1882
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1493
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1497
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1893
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1590
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %518, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %516, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %513, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %512, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %511, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1490), !dbg !1894
  br i1 %119, label %638, label %520, !dbg !1895

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1460, metadata !DIExpression()), !dbg !1590
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1897
  br i1 %521, label %538, label %522, !dbg !1897

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1899
  br i1 %523, label %524, label %526, !dbg !1903

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1899
  store i8 39, i8* %525, align 1, !dbg !1899, !tbaa !575
  br label %526, !dbg !1899

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1903
  call void @llvm.dbg.value(metadata i64 %527, metadata !1441, metadata !DIExpression()), !dbg !1493
  %528 = icmp ult i64 %527, %519, !dbg !1904
  br i1 %528, label %529, label %531, !dbg !1907

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1904
  store i8 36, i8* %530, align 1, !dbg !1904, !tbaa !575
  br label %531, !dbg !1904

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %532, metadata !1441, metadata !DIExpression()), !dbg !1493
  %533 = icmp ult i64 %532, %519, !dbg !1908
  br i1 %533, label %534, label %536, !dbg !1911

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1908
  store i8 39, i8* %535, align 1, !dbg !1908, !tbaa !575
  br label %536, !dbg !1908

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1911
  call void @llvm.dbg.value(metadata i64 %537, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 1, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %538, !dbg !1912

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1590
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %539, metadata !1441, metadata !DIExpression()), !dbg !1493
  %541 = icmp ult i64 %539, %519, !dbg !1913
  br i1 %541, label %542, label %544, !dbg !1916

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1913
  store i8 92, i8* %543, align 1, !dbg !1913, !tbaa !575
  br label %544, !dbg !1913

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %556, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %555, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %552, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %549, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %548, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %547, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1491), !dbg !1917
  br label %570, !dbg !1918

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1882
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1493
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1497
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1893
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1921
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 %555, metadata !1462, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1461, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8 poison, metadata !1460, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i64 %552, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %549, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %548, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %547, metadata !1434, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.label(metadata !1491), !dbg !1917
  %557 = xor i1 %551, true, !dbg !1918
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1918
  br i1 %558, label %570, label %559, !dbg !1918

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1922
  br i1 %560, label %561, label %563, !dbg !1926

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1922
  store i8 39, i8* %562, align 1, !dbg !1922, !tbaa !575
  br label %563, !dbg !1922

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1926
  call void @llvm.dbg.value(metadata i64 %564, metadata !1441, metadata !DIExpression()), !dbg !1493
  %565 = icmp ult i64 %564, %556, !dbg !1927
  br i1 %565, label %566, label %568, !dbg !1930

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1927
  store i8 39, i8* %567, align 1, !dbg !1927, !tbaa !575
  br label %568, !dbg !1927

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %569, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 0, metadata !1449, metadata !DIExpression()), !dbg !1493
  br label %570, !dbg !1931

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1590
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %578, metadata !1441, metadata !DIExpression()), !dbg !1493
  %580 = icmp ult i64 %578, %571, !dbg !1932
  br i1 %580, label %581, label %583, !dbg !1935

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1932
  store i8 %572, i8* %582, align 1, !dbg !1932, !tbaa !575
  br label %583, !dbg !1932

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %584, metadata !1441, metadata !DIExpression()), !dbg !1493
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1936
  call void @llvm.dbg.value(metadata i8 poison, metadata !1448, metadata !DIExpression()), !dbg !1493
  br label %586, !dbg !1937

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1882
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1493
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1497
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1893
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %593, metadata !1455, metadata !DIExpression()), !dbg !1582
  call void @llvm.dbg.value(metadata i8 poison, metadata !1449, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %589, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %588, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %587, metadata !1434, metadata !DIExpression()), !dbg !1493
  %595 = add i64 %593, 1, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %595, metadata !1455, metadata !DIExpression()), !dbg !1582
  br label %132, !dbg !1939, !llvm.loop !1940

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1432, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1448, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i8 poison, metadata !1447, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 undef, metadata !1442, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 undef, metadata !1441, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 undef, metadata !1434, metadata !DIExpression()), !dbg !1493
  %597 = icmp eq i64 %134, 0, !dbg !1942
  %598 = and i1 %126, %597, !dbg !1944
  %599 = and i1 %598, %119, !dbg !1944
  br i1 %599, label %638, label %600, !dbg !1944

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1945
  %602 = or i1 %119, %601, !dbg !1945
  %603 = xor i1 %136, true, !dbg !1945
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1945
  br i1 %604, label %612, label %605, !dbg !1945

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1947

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1949
  br label %653, !dbg !1951

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1952
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1954
  br i1 %611, label %36, label %612, !dbg !1954

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1955
  %615 = or i1 %614, %613, !dbg !1957
  br i1 %615, label %631, label %616, !dbg !1957

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %134, metadata !1441, metadata !DIExpression()), !dbg !1493
  %617 = load i8, i8* %116, align 1, !dbg !1958, !tbaa !575
  %618 = icmp eq i8 %617, 0, !dbg !1961
  br i1 %618, label %631, label %619, !dbg !1961

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1443, metadata !DIExpression()), !dbg !1493
  call void @llvm.dbg.value(metadata i64 %622, metadata !1441, metadata !DIExpression()), !dbg !1493
  %623 = icmp ult i64 %622, %140, !dbg !1962
  br i1 %623, label %624, label %626, !dbg !1965

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1962
  store i8 %620, i8* %625, align 1, !dbg !1962, !tbaa !575
  br label %626, !dbg !1962

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1965
  call void @llvm.dbg.value(metadata i64 %627, metadata !1441, metadata !DIExpression()), !dbg !1493
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1966
  call void @llvm.dbg.value(metadata i8* %628, metadata !1443, metadata !DIExpression()), !dbg !1493
  %629 = load i8, i8* %628, align 1, !dbg !1958, !tbaa !575
  %630 = icmp eq i8 %629, 0, !dbg !1961
  br i1 %630, label %631, label %619, !dbg !1961, !llvm.loop !1967

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1569
  call void @llvm.dbg.value(metadata i64 %632, metadata !1441, metadata !DIExpression()), !dbg !1493
  %633 = icmp ult i64 %632, %140, !dbg !1969
  br i1 %633, label %634, label %653, !dbg !1971

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1972
  store i8 0, i8* %635, align 1, !dbg !1973, !tbaa !575
  br label %653, !dbg !1972

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1492), !dbg !1799
  %637 = icmp eq i32 %112, 2, !dbg !1974
  br i1 %637, label %643, label %647, !dbg !1800

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1492), !dbg !1799
  %641 = icmp eq i32 %112, 2, !dbg !1974
  %642 = select i1 %118, i32 4, i32 2, !dbg !1800
  br i1 %641, label %643, label %647, !dbg !1800

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1800

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1435, metadata !DIExpression()), !dbg !1493
  %651 = and i32 %5, -3, !dbg !1975
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1976
  br label %653, !dbg !1977

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1978
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare !dbg !1979 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1981 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i64 %1, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %0, metadata !1989, metadata !DIExpression()) #34, !dbg !2002
  call void @llvm.dbg.value(metadata i64 %1, metadata !1994, metadata !DIExpression()) #34, !dbg !2002
  call void @llvm.dbg.value(metadata i64* null, metadata !1995, metadata !DIExpression()) #34, !dbg !2002
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1996, metadata !DIExpression()) #34, !dbg !2002
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2004
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2004
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1997, metadata !DIExpression()) #34, !dbg !2002
  %6 = tail call i32* @__errno_location() #37, !dbg !2005
  %7 = load i32, i32* %6, align 4, !dbg !2005, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %7, metadata !1998, metadata !DIExpression()) #34, !dbg !2002
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2006
  %9 = load i32, i32* %8, align 4, !dbg !2006, !tbaa !1375
  %10 = or i32 %9, 1, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %10, metadata !1999, metadata !DIExpression()) #34, !dbg !2002
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2008
  %12 = load i32, i32* %11, align 8, !dbg !2008, !tbaa !1324
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2009
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2010
  %15 = load i8*, i8** %14, align 8, !dbg !2010, !tbaa !1397
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2011
  %17 = load i8*, i8** %16, align 8, !dbg !2011, !tbaa !1400
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !2012
  %19 = add i64 %18, 1, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %19, metadata !2000, metadata !DIExpression()) #34, !dbg !2002
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2014
  call void @llvm.dbg.value(metadata i8* %20, metadata !2001, metadata !DIExpression()) #34, !dbg !2002
  %21 = load i32, i32* %11, align 8, !dbg !2015, !tbaa !1324
  %22 = load i8*, i8** %14, align 8, !dbg !2016, !tbaa !1397
  %23 = load i8*, i8** %16, align 8, !dbg !2017, !tbaa !1400
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !2018
  store i32 %7, i32* %6, align 4, !dbg !2019, !tbaa !566
  ret i8* %20, !dbg !2020
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1990 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1989, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64 %1, metadata !1994, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata i64* %2, metadata !1995, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1996, metadata !DIExpression()), !dbg !2021
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2022
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2022
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1997, metadata !DIExpression()), !dbg !2021
  %7 = tail call i32* @__errno_location() #37, !dbg !2023
  %8 = load i32, i32* %7, align 4, !dbg !2023, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %8, metadata !1998, metadata !DIExpression()), !dbg !2021
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2024
  %10 = load i32, i32* %9, align 4, !dbg !2024, !tbaa !1375
  %11 = icmp eq i64* %2, null, !dbg !2025
  %12 = zext i1 %11 to i32, !dbg !2025
  %13 = or i32 %10, %12, !dbg !2026
  call void @llvm.dbg.value(metadata i32 %13, metadata !1999, metadata !DIExpression()), !dbg !2021
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2027
  %15 = load i32, i32* %14, align 8, !dbg !2027, !tbaa !1324
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2028
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2029
  %18 = load i8*, i8** %17, align 8, !dbg !2029, !tbaa !1397
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2030
  %20 = load i8*, i8** %19, align 8, !dbg !2030, !tbaa !1400
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2031
  %22 = add i64 %21, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %22, metadata !2000, metadata !DIExpression()), !dbg !2021
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %23, metadata !2001, metadata !DIExpression()), !dbg !2021
  %24 = load i32, i32* %14, align 8, !dbg !2034, !tbaa !1324
  %25 = load i8*, i8** %17, align 8, !dbg !2035, !tbaa !1397
  %26 = load i8*, i8** %19, align 8, !dbg !2036, !tbaa !1400
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2037
  store i32 %8, i32* %7, align 4, !dbg !2038, !tbaa !566
  br i1 %11, label %29, label %28, !dbg !2039

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2040, !tbaa !769
  br label %29, !dbg !2042

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2043
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2044 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2049, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !2051
  %2 = load i32, i32* @nslots, align 4, !tbaa !566
  call void @llvm.dbg.value(metadata i32 1, metadata !2047, metadata !DIExpression()), !dbg !2051
  %3 = icmp sgt i32 %2, 1, !dbg !2052
  br i1 %3, label %4, label %6, !dbg !2054

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2052
  br label %10, !dbg !2054

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2055
  %8 = load i8*, i8** %7, align 8, !dbg !2055, !tbaa !2057
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2059
  br i1 %9, label %17, label %16, !dbg !2060

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2047, metadata !DIExpression()), !dbg !2051
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2061
  %13 = load i8*, i8** %12, align 8, !dbg !2061, !tbaa !2057
  tail call void @free(i8* noundef %13) #34, !dbg !2062
  %14 = add nuw nsw i64 %11, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %14, metadata !2047, metadata !DIExpression()), !dbg !2051
  %15 = icmp eq i64 %14, %5, !dbg !2052
  br i1 %15, label %6, label %10, !dbg !2054, !llvm.loop !2064

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !2066
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2068, !tbaa !2069
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2070, !tbaa !2057
  br label %17, !dbg !2071

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2072
  br i1 %18, label %21, label %19, !dbg !2074

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2075
  tail call void @free(i8* noundef %20) #34, !dbg !2077
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2078, !tbaa !485
  br label %21, !dbg !2079

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2080, !tbaa !566
  ret void, !dbg !2081
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2082 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2084, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8* %1, metadata !2085, metadata !DIExpression()), !dbg !2086
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2087
  ret i8* %3, !dbg !2088
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2089 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2093, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i8* %1, metadata !2094, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %2, metadata !2095, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2096, metadata !DIExpression()), !dbg !2109
  %6 = tail call i32* @__errno_location() #37, !dbg !2110
  %7 = load i32, i32* %6, align 4, !dbg !2110, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %7, metadata !2097, metadata !DIExpression()), !dbg !2109
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2111, !tbaa !485
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2098, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2099, metadata !DIExpression()), !dbg !2109
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2112
  br i1 %9, label %10, label %11, !dbg !2112

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2114
  unreachable, !dbg !2114

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2115, !tbaa !566
  %13 = icmp sgt i32 %12, %0, !dbg !2116
  br i1 %13, label %36, label %14, !dbg !2117

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2118
  call void @llvm.dbg.value(metadata i1 %15, metadata !2100, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2119
  %16 = bitcast i64* %5 to i8*, !dbg !2120
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2120
  %17 = sext i32 %12 to i64, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %17, metadata !2103, metadata !DIExpression()), !dbg !2119
  store i64 %17, i64* %5, align 8, !dbg !2122, !tbaa !769
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2123
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2123
  %20 = add nuw nsw i32 %0, 1, !dbg !2124
  %21 = sub i32 %20, %12, !dbg !2125
  %22 = sext i32 %21 to i64, !dbg !2126
  call void @llvm.dbg.value(metadata i64* %5, metadata !2103, metadata !DIExpression(DW_OP_deref)), !dbg !2119
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2127
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2127
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2098, metadata !DIExpression()), !dbg !2109
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2128, !tbaa !485
  br i1 %15, label %25, label %26, !dbg !2129

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2130, !tbaa.struct !2132
  br label %26, !dbg !2133

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2134, !tbaa !566
  %28 = sext i32 %27 to i64, !dbg !2135
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2135
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2136
  %31 = load i64, i64* %5, align 8, !dbg !2137, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %31, metadata !2103, metadata !DIExpression()), !dbg !2119
  %32 = sub nsw i64 %31, %28, !dbg !2138
  %33 = shl i64 %32, 4, !dbg !2139
  call void @llvm.dbg.value(metadata i8* %30, metadata !1527, metadata !DIExpression()) #34, !dbg !2140
  call void @llvm.dbg.value(metadata i32 0, metadata !1530, metadata !DIExpression()) #34, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %33, metadata !1531, metadata !DIExpression()) #34, !dbg !2140
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2142
  %34 = load i64, i64* %5, align 8, !dbg !2143, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %34, metadata !2103, metadata !DIExpression()), !dbg !2119
  %35 = trunc i64 %34 to i32, !dbg !2143
  store i32 %35, i32* @nslots, align 4, !dbg !2144, !tbaa !566
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2145
  br label %36, !dbg !2146

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2109
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2098, metadata !DIExpression()), !dbg !2109
  %38 = zext i32 %0 to i64, !dbg !2147
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2148
  %40 = load i64, i64* %39, align 8, !dbg !2148, !tbaa !2069
  call void @llvm.dbg.value(metadata i64 %40, metadata !2104, metadata !DIExpression()), !dbg !2149
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2150
  %42 = load i8*, i8** %41, align 8, !dbg !2150, !tbaa !2057
  call void @llvm.dbg.value(metadata i8* %42, metadata !2106, metadata !DIExpression()), !dbg !2149
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2151
  %44 = load i32, i32* %43, align 4, !dbg !2151, !tbaa !1375
  %45 = or i32 %44, 1, !dbg !2152
  call void @llvm.dbg.value(metadata i32 %45, metadata !2107, metadata !DIExpression()), !dbg !2149
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2153
  %47 = load i32, i32* %46, align 8, !dbg !2153, !tbaa !1324
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2154
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2155
  %50 = load i8*, i8** %49, align 8, !dbg !2155, !tbaa !1397
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2156
  %52 = load i8*, i8** %51, align 8, !dbg !2156, !tbaa !1400
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2157
  call void @llvm.dbg.value(metadata i64 %53, metadata !2108, metadata !DIExpression()), !dbg !2149
  %54 = icmp ugt i64 %40, %53, !dbg !2158
  br i1 %54, label %65, label %55, !dbg !2160

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2161
  call void @llvm.dbg.value(metadata i64 %56, metadata !2104, metadata !DIExpression()), !dbg !2149
  store i64 %56, i64* %39, align 8, !dbg !2163, !tbaa !2069
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2164
  br i1 %57, label %59, label %58, !dbg !2166

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2167
  br label %59, !dbg !2167

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !2168
  call void @llvm.dbg.value(metadata i8* %60, metadata !2106, metadata !DIExpression()), !dbg !2149
  store i8* %60, i8** %41, align 8, !dbg !2169, !tbaa !2057
  %61 = load i32, i32* %46, align 8, !dbg !2170, !tbaa !1324
  %62 = load i8*, i8** %49, align 8, !dbg !2171, !tbaa !1397
  %63 = load i8*, i8** %51, align 8, !dbg !2172, !tbaa !1400
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2173
  br label %65, !dbg !2174

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2149
  call void @llvm.dbg.value(metadata i8* %66, metadata !2106, metadata !DIExpression()), !dbg !2149
  store i32 %7, i32* %6, align 4, !dbg !2175, !tbaa !566
  ret i8* %66, !dbg !2176
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2177 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i8* %1, metadata !2182, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata i64 %2, metadata !2183, metadata !DIExpression()), !dbg !2184
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2185
  ret i8* %4, !dbg !2186
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2187 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 0, metadata !2084, metadata !DIExpression()) #34, !dbg !2191
  call void @llvm.dbg.value(metadata i8* %0, metadata !2085, metadata !DIExpression()) #34, !dbg !2191
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2193
  ret i8* %2, !dbg !2194
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2199, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i64 %1, metadata !2200, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()) #34, !dbg !2202
  call void @llvm.dbg.value(metadata i8* %0, metadata !2182, metadata !DIExpression()) #34, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %1, metadata !2183, metadata !DIExpression()) #34, !dbg !2202
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2204
  ret i8* %3, !dbg !2205
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2206 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i32 %1, metadata !2211, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8* %2, metadata !2212, metadata !DIExpression()), !dbg !2214
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2215
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2213, metadata !DIExpression()), !dbg !2216
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2217), !dbg !2220
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()) #34, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()) #34, !dbg !2229
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2229, !alias.scope !2217
  %6 = icmp eq i32 %1, 10, !dbg !2230
  br i1 %6, label %7, label %8, !dbg !2232

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2233, !noalias !2217
  unreachable, !dbg !2233

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2234
  store i32 %1, i32* %9, align 8, !dbg !2235, !tbaa !1324, !alias.scope !2217
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2236
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2237
  ret i8* %10, !dbg !2238
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2239 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2243, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i32 %1, metadata !2244, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8* %2, metadata !2245, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i64 %3, metadata !2246, metadata !DIExpression()), !dbg !2248
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2249
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2247, metadata !DIExpression()), !dbg !2250
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()) #34, !dbg !2255
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2226, metadata !DIExpression()) #34, !dbg !2257
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2257, !alias.scope !2251
  %7 = icmp eq i32 %1, 10, !dbg !2258
  br i1 %7, label %8, label %9, !dbg !2259

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2260, !noalias !2251
  unreachable, !dbg !2260

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2261
  store i32 %1, i32* %10, align 8, !dbg !2262, !tbaa !1324, !alias.scope !2251
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2263
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2264
  ret i8* %11, !dbg !2265
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2266 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2270, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i8* %1, metadata !2271, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 0, metadata !2210, metadata !DIExpression()) #34, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %0, metadata !2211, metadata !DIExpression()) #34, !dbg !2273
  call void @llvm.dbg.value(metadata i8* %1, metadata !2212, metadata !DIExpression()) #34, !dbg !2273
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2275
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2213, metadata !DIExpression()) #34, !dbg !2276
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277) #34, !dbg !2280
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()) #34, !dbg !2281
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2226, metadata !DIExpression()) #34, !dbg !2283
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2283, !alias.scope !2277
  %5 = icmp eq i32 %0, 10, !dbg !2284
  br i1 %5, label %6, label %7, !dbg !2285

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2286, !noalias !2277
  unreachable, !dbg !2286

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2287
  store i32 %0, i32* %8, align 8, !dbg !2288, !tbaa !1324, !alias.scope !2277
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2290
  ret i8* %9, !dbg !2291
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2292 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2296, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i8* %1, metadata !2297, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i64 %2, metadata !2298, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata i32 0, metadata !2243, metadata !DIExpression()) #34, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %0, metadata !2244, metadata !DIExpression()) #34, !dbg !2300
  call void @llvm.dbg.value(metadata i8* %1, metadata !2245, metadata !DIExpression()) #34, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %2, metadata !2246, metadata !DIExpression()) #34, !dbg !2300
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2302
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2247, metadata !DIExpression()) #34, !dbg !2303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2304) #34, !dbg !2307
  call void @llvm.dbg.value(metadata i32 %0, metadata !2221, metadata !DIExpression()) #34, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2226, metadata !DIExpression()) #34, !dbg !2310
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2310, !alias.scope !2304
  %6 = icmp eq i32 %0, 10, !dbg !2311
  br i1 %6, label %7, label %8, !dbg !2312

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2313, !noalias !2304
  unreachable, !dbg !2313

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2314
  store i32 %0, i32* %9, align 8, !dbg !2315, !tbaa !1324, !alias.scope !2304
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2316
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2317
  ret i8* %10, !dbg !2318
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2319 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata i8 %2, metadata !2325, metadata !DIExpression()), !dbg !2327
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2328
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2328
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2326, metadata !DIExpression()), !dbg !2329
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2330, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1342, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %2, metadata !1343, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i32 1, metadata !1344, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %2, metadata !1345, metadata !DIExpression()), !dbg !2332
  %6 = lshr i8 %2, 5, !dbg !2334
  %7 = zext i8 %6 to i64, !dbg !2334
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2335
  call void @llvm.dbg.value(metadata i32* %8, metadata !1346, metadata !DIExpression()), !dbg !2332
  %9 = and i8 %2, 31, !dbg !2336
  %10 = zext i8 %9 to i32, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %10, metadata !1348, metadata !DIExpression()), !dbg !2332
  %11 = load i32, i32* %8, align 4, !dbg !2337, !tbaa !566
  %12 = lshr i32 %11, %10, !dbg !2338
  %13 = and i32 %12, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i32 %13, metadata !1349, metadata !DIExpression()), !dbg !2332
  %14 = xor i32 %13, 1, !dbg !2340
  %15 = shl i32 %14, %10, !dbg !2341
  %16 = xor i32 %15, %11, !dbg !2342
  store i32 %16, i32* %8, align 4, !dbg !2342, !tbaa !566
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2343
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2344
  ret i8* %17, !dbg !2345
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2346 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8 %1, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #34, !dbg !2353
  call void @llvm.dbg.value(metadata i64 -1, metadata !2324, metadata !DIExpression()) #34, !dbg !2353
  call void @llvm.dbg.value(metadata i8 %1, metadata !2325, metadata !DIExpression()) #34, !dbg !2353
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2355
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2326, metadata !DIExpression()) #34, !dbg !2356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2357, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1342, metadata !DIExpression()) #34, !dbg !2358
  call void @llvm.dbg.value(metadata i8 %1, metadata !1343, metadata !DIExpression()) #34, !dbg !2358
  call void @llvm.dbg.value(metadata i32 1, metadata !1344, metadata !DIExpression()) #34, !dbg !2358
  call void @llvm.dbg.value(metadata i8 %1, metadata !1345, metadata !DIExpression()) #34, !dbg !2358
  %5 = lshr i8 %1, 5, !dbg !2360
  %6 = zext i8 %5 to i64, !dbg !2360
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2361
  call void @llvm.dbg.value(metadata i32* %7, metadata !1346, metadata !DIExpression()) #34, !dbg !2358
  %8 = and i8 %1, 31, !dbg !2362
  %9 = zext i8 %8 to i32, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %9, metadata !1348, metadata !DIExpression()) #34, !dbg !2358
  %10 = load i32, i32* %7, align 4, !dbg !2363, !tbaa !566
  %11 = lshr i32 %10, %9, !dbg !2364
  %12 = and i32 %11, 1, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %12, metadata !1349, metadata !DIExpression()) #34, !dbg !2358
  %13 = xor i32 %12, 1, !dbg !2366
  %14 = shl i32 %13, %9, !dbg !2367
  %15 = xor i32 %14, %10, !dbg !2368
  store i32 %15, i32* %7, align 4, !dbg !2368, !tbaa !566
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2369
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2370
  ret i8* %16, !dbg !2371
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2372 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i8* %0, metadata !2350, metadata !DIExpression()) #34, !dbg !2376
  call void @llvm.dbg.value(metadata i8 58, metadata !2351, metadata !DIExpression()) #34, !dbg !2376
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #34, !dbg !2378
  call void @llvm.dbg.value(metadata i64 -1, metadata !2324, metadata !DIExpression()) #34, !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !2325, metadata !DIExpression()) #34, !dbg !2378
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2380
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2380
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2326, metadata !DIExpression()) #34, !dbg !2381
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2382, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1342, metadata !DIExpression()) #34, !dbg !2383
  call void @llvm.dbg.value(metadata i8 58, metadata !1343, metadata !DIExpression()) #34, !dbg !2383
  call void @llvm.dbg.value(metadata i32 1, metadata !1344, metadata !DIExpression()) #34, !dbg !2383
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()) #34, !dbg !2383
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2385
  call void @llvm.dbg.value(metadata i32* %4, metadata !1346, metadata !DIExpression()) #34, !dbg !2383
  call void @llvm.dbg.value(metadata i32 26, metadata !1348, metadata !DIExpression()) #34, !dbg !2383
  %5 = load i32, i32* %4, align 4, !dbg !2386, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %5, metadata !1349, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2383
  %6 = or i32 %5, 67108864, !dbg !2387
  store i32 %6, i32* %4, align 4, !dbg !2387, !tbaa !566
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2389
  ret i8* %7, !dbg !2390
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2391 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2393, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i64 %1, metadata !2394, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8* %0, metadata !2323, metadata !DIExpression()) #34, !dbg !2396
  call void @llvm.dbg.value(metadata i64 %1, metadata !2324, metadata !DIExpression()) #34, !dbg !2396
  call void @llvm.dbg.value(metadata i8 58, metadata !2325, metadata !DIExpression()) #34, !dbg !2396
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2326, metadata !DIExpression()) #34, !dbg !2399
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2400, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1342, metadata !DIExpression()) #34, !dbg !2401
  call void @llvm.dbg.value(metadata i8 58, metadata !1343, metadata !DIExpression()) #34, !dbg !2401
  call void @llvm.dbg.value(metadata i32 1, metadata !1344, metadata !DIExpression()) #34, !dbg !2401
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()) #34, !dbg !2401
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2403
  call void @llvm.dbg.value(metadata i32* %5, metadata !1346, metadata !DIExpression()) #34, !dbg !2401
  call void @llvm.dbg.value(metadata i32 26, metadata !1348, metadata !DIExpression()) #34, !dbg !2401
  %6 = load i32, i32* %5, align 4, !dbg !2404, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %6, metadata !1349, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2401
  %7 = or i32 %6, 67108864, !dbg !2405
  store i32 %7, i32* %5, align 4, !dbg !2405, !tbaa !566
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2406
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2407
  ret i8* %8, !dbg !2408
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2409 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 %1, metadata !2412, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i8* %2, metadata !2413, metadata !DIExpression()), !dbg !2415
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2416
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2416
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2414, metadata !DIExpression()), !dbg !2417
  call void @llvm.dbg.value(metadata i32 %1, metadata !2221, metadata !DIExpression()) #34, !dbg !2418
  call void @llvm.dbg.value(metadata i32 0, metadata !2226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2418
  %6 = icmp eq i32 %1, 10, !dbg !2420
  br i1 %6, label %7, label %8, !dbg !2421

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2422, !noalias !2423
  unreachable, !dbg !2422

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2226, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2418
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2426
  store i32 %1, i32* %9, align 8, !dbg !2426, !tbaa.struct !2331
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2426
  %11 = bitcast i32* %10 to i8*, !dbg !2426
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2426
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1342, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 58, metadata !1343, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 1, metadata !1344, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 58, metadata !1345, metadata !DIExpression()), !dbg !2427
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2429
  call void @llvm.dbg.value(metadata i32* %12, metadata !1346, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 26, metadata !1348, metadata !DIExpression()), !dbg !2427
  %13 = load i32, i32* %12, align 4, !dbg !2430, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %13, metadata !1349, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2427
  %14 = or i32 %13, 67108864, !dbg !2431
  store i32 %14, i32* %12, align 4, !dbg !2431, !tbaa !566
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2432
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2433
  ret i8* %15, !dbg !2434
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2435 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2439, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %1, metadata !2440, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i8* %3, metadata !2442, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()) #34, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()) #34, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %2, metadata !2450, metadata !DIExpression()) #34, !dbg !2454
  call void @llvm.dbg.value(metadata i8* %3, metadata !2451, metadata !DIExpression()) #34, !dbg !2454
  call void @llvm.dbg.value(metadata i64 -1, metadata !2452, metadata !DIExpression()) #34, !dbg !2454
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2456
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2456
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #34, !dbg !2457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2458, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1382, metadata !DIExpression()) #34, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %1, metadata !1383, metadata !DIExpression()) #34, !dbg !2459
  call void @llvm.dbg.value(metadata i8* %2, metadata !1384, metadata !DIExpression()) #34, !dbg !2459
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1382, metadata !DIExpression()) #34, !dbg !2459
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2461
  store i32 10, i32* %7, align 8, !dbg !2462, !tbaa !1324
  %8 = icmp ne i8* %1, null, !dbg !2463
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2464
  br i1 %10, label %12, label %11, !dbg !2464

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2465
  unreachable, !dbg !2465

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2466
  store i8* %1, i8** %13, align 8, !dbg !2467, !tbaa !1397
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2468
  store i8* %2, i8** %14, align 8, !dbg !2469, !tbaa !1400
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2470
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2471
  ret i8* %15, !dbg !2472
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2445 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2444, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %2, metadata !2450, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i8* %3, metadata !2451, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %4, metadata !2452, metadata !DIExpression()), !dbg !2473
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2474
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2474
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2453, metadata !DIExpression()), !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2476, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1382, metadata !DIExpression()) #34, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %1, metadata !1383, metadata !DIExpression()) #34, !dbg !2477
  call void @llvm.dbg.value(metadata i8* %2, metadata !1384, metadata !DIExpression()) #34, !dbg !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1382, metadata !DIExpression()) #34, !dbg !2477
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2479
  store i32 10, i32* %8, align 8, !dbg !2480, !tbaa !1324
  %9 = icmp ne i8* %1, null, !dbg !2481
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2482
  br i1 %11, label %13, label %12, !dbg !2482

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2483
  unreachable, !dbg !2483

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2484
  store i8* %1, i8** %14, align 8, !dbg !2485, !tbaa !1397
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2486
  store i8* %2, i8** %15, align 8, !dbg !2487, !tbaa !1400
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2488
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2489
  ret i8* %16, !dbg !2490
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2491 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2495, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !2496, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i8* %2, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.value(metadata i32 0, metadata !2439, metadata !DIExpression()) #34, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %0, metadata !2440, metadata !DIExpression()) #34, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()) #34, !dbg !2499
  call void @llvm.dbg.value(metadata i8* %2, metadata !2442, metadata !DIExpression()) #34, !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #34, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %0, metadata !2449, metadata !DIExpression()) #34, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %1, metadata !2450, metadata !DIExpression()) #34, !dbg !2501
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()) #34, !dbg !2501
  call void @llvm.dbg.value(metadata i64 -1, metadata !2452, metadata !DIExpression()) #34, !dbg !2501
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2503
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2503
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2453, metadata !DIExpression()) #34, !dbg !2504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2505, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1382, metadata !DIExpression()) #34, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %0, metadata !1383, metadata !DIExpression()) #34, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %1, metadata !1384, metadata !DIExpression()) #34, !dbg !2506
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1382, metadata !DIExpression()) #34, !dbg !2506
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2508
  store i32 10, i32* %6, align 8, !dbg !2509, !tbaa !1324
  %7 = icmp ne i8* %0, null, !dbg !2510
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2511
  br i1 %9, label %11, label %10, !dbg !2511

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2512
  unreachable, !dbg !2512

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2513
  store i8* %0, i8** %12, align 8, !dbg !2514, !tbaa !1397
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2515
  store i8* %1, i8** %13, align 8, !dbg !2516, !tbaa !1400
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2517
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2518
  ret i8* %14, !dbg !2519
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2520 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2524, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %1, metadata !2525, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %2, metadata !2526, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i64 %3, metadata !2527, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i32 0, metadata !2444, metadata !DIExpression()) #34, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %0, metadata !2449, metadata !DIExpression()) #34, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %1, metadata !2450, metadata !DIExpression()) #34, !dbg !2529
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()) #34, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %3, metadata !2452, metadata !DIExpression()) #34, !dbg !2529
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2531
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()) #34, !dbg !2532
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2533, !tbaa.struct !2331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1382, metadata !DIExpression()) #34, !dbg !2534
  call void @llvm.dbg.value(metadata i8* %0, metadata !1383, metadata !DIExpression()) #34, !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !1384, metadata !DIExpression()) #34, !dbg !2534
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1382, metadata !DIExpression()) #34, !dbg !2534
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2536
  store i32 10, i32* %7, align 8, !dbg !2537, !tbaa !1324
  %8 = icmp ne i8* %0, null, !dbg !2538
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2539
  br i1 %10, label %12, label %11, !dbg !2539

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2540
  unreachable, !dbg !2540

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2541
  store i8* %0, i8** %13, align 8, !dbg !2542, !tbaa !1397
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2543
  store i8* %1, i8** %14, align 8, !dbg !2544, !tbaa !1400
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2545
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2546
  ret i8* %15, !dbg !2547
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i8* %1, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i64 %2, metadata !2554, metadata !DIExpression()), !dbg !2555
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2556
  ret i8* %4, !dbg !2557
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2558 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2562, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i64 %1, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()) #34, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()) #34, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %1, metadata !2554, metadata !DIExpression()) #34, !dbg !2565
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2567
  ret i8* %3, !dbg !2568
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2569 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i8* %1, metadata !2574, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.value(metadata i32 %0, metadata !2552, metadata !DIExpression()) #34, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %1, metadata !2553, metadata !DIExpression()) #34, !dbg !2576
  call void @llvm.dbg.value(metadata i64 -1, metadata !2554, metadata !DIExpression()) #34, !dbg !2576
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2578
  ret i8* %3, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2580 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2584, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 0, metadata !2573, metadata !DIExpression()) #34, !dbg !2586
  call void @llvm.dbg.value(metadata i8* %0, metadata !2574, metadata !DIExpression()) #34, !dbg !2586
  call void @llvm.dbg.value(metadata i32 0, metadata !2552, metadata !DIExpression()) #34, !dbg !2588
  call void @llvm.dbg.value(metadata i8* %0, metadata !2553, metadata !DIExpression()) #34, !dbg !2588
  call void @llvm.dbg.value(metadata i64 -1, metadata !2554, metadata !DIExpression()) #34, !dbg !2588
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2590
  ret i8* %2, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @extract_trimmed_name(%struct.gl_utmp* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !2592 {
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %0, metadata !2618, metadata !DIExpression()), !dbg !2622
  %2 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %0, i64 0, i32 0, !dbg !2623
  %3 = load i8*, i8** %2, align 8, !dbg !2623, !tbaa !802
  call void @llvm.dbg.value(metadata i8* %3, metadata !2619, metadata !DIExpression()), !dbg !2622
  %4 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %3) #35, !dbg !2624
  call void @llvm.dbg.value(metadata i64 %4, metadata !2620, metadata !DIExpression()), !dbg !2622
  %5 = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !2625
  call void @llvm.dbg.value(metadata i8* %5, metadata !2621, metadata !DIExpression()), !dbg !2622
  br label %6, !dbg !2627

6:                                                ; preds = %9, %1
  %7 = phi i8* [ %5, %1 ], [ %10, %9 ], !dbg !2628
  call void @llvm.dbg.value(metadata i8* %7, metadata !2621, metadata !DIExpression()), !dbg !2622
  %8 = icmp ult i8* %3, %7, !dbg !2629
  br i1 %8, label %9, label %13, !dbg !2631

9:                                                ; preds = %6
  %10 = getelementptr inbounds i8, i8* %7, i64 -1, !dbg !2632
  %11 = load i8, i8* %10, align 1, !dbg !2632, !tbaa !575
  %12 = icmp eq i8 %11, 32, !dbg !2633
  br i1 %12, label %6, label %13, !dbg !2634, !llvm.loop !2635

13:                                               ; preds = %6, %9
  %14 = ptrtoint i8* %7 to i64, !dbg !2637
  %15 = ptrtoint i8* %3 to i64, !dbg !2637
  %16 = sub i64 %14, %15, !dbg !2637
  %17 = tail call noalias nonnull i8* @ximemdup0(i8* noundef %3, i64 noundef %16) #34, !dbg !2638
  ret i8* %17, !dbg !2639
}

; Function Attrs: nounwind uwtable
define dso_local i32 @read_utmp(i8* noundef %0, i64* nocapture noundef writeonly %1, %struct.gl_utmp** nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #12 !dbg !2640 {
  %5 = alloca [33 x i8], align 4
  %6 = alloca %struct.sysinfo, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca %struct.timespec, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.utmp_alloc, align 8
  %11 = alloca %struct.utmp_alloc, align 8
  %12 = alloca %struct.utmp_alloc, align 8
  %13 = alloca %struct.utmp_alloc, align 8
  %14 = alloca %struct.utmp_alloc, align 8
  %15 = alloca %struct.utmp_alloc, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2646, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i64* %1, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata %struct.gl_utmp** %2, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 %3, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %0, metadata !2651, metadata !DIExpression()) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64* %1, metadata !2654, metadata !DIExpression()) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp** %2, metadata !2655, metadata !DIExpression()) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %3, metadata !2656, metadata !DIExpression()) #34, !dbg !2684
  %16 = and i32 %3, 4, !dbg !2686
  %17 = icmp eq i32 %16, 0, !dbg !2688
  %18 = and i32 %3, 10
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19, !dbg !2689
  br i1 %20, label %21, label %416, !dbg !2689

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata %struct.gl_utmp* null, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  %22 = tail call i32 @utmpxname(i8* noundef %0) #34, !dbg !2690
  tail call void @setutxent() #34, !dbg !2691
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()) #34, !dbg !2696
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0), metadata !2695, metadata !DIExpression()) #34, !dbg !2696
  %23 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0)) #35, !dbg !2698
  %24 = icmp eq i32 %23, 0, !dbg !2699
  call void @llvm.dbg.value(metadata i1 %24, metadata !2665, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* null, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  %25 = tail call %struct.utmpx* @getutxent() #34, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.utmpx* %25, metadata !2667, metadata !DIExpression()) #34, !dbg !2684
  %26 = icmp eq %struct.utmpx* %25, null, !dbg !2701
  br i1 %26, label %92, label %27, !dbg !2702

27:                                               ; preds = %21
  %28 = bitcast %struct.utmp_alloc* %10 to i8*
  %29 = bitcast %struct.utmp_alloc* %11 to i8*
  %30 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %11, i64 0, i32 0
  %31 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %11, i64 0, i32 1
  %32 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %11, i64 0, i32 2
  %33 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %11, i64 0, i32 3
  %34 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i64 0, i32 0
  %35 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i64 0, i32 1
  %36 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i64 0, i32 2
  %37 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %10, i64 0, i32 3
  br label %38, !dbg !2702

38:                                               ; preds = %85, %27
  %39 = phi %struct.utmpx* [ %25, %27 ], [ %88, %85 ]
  %40 = phi %struct.gl_utmp* [ null, %27 ], [ %73, %85 ]
  %41 = phi i64 [ 0, %27 ], [ %74, %85 ]
  %42 = phi i64 [ 0, %27 ], [ %87, %85 ]
  %43 = phi i64 [ 0, %27 ], [ %86, %85 ]
  %44 = phi i64 [ 0, %27 ], [ %75, %85 ]
  %45 = phi i64 [ 0, %27 ], [ %76, %85 ]
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %40, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %41, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %42, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %43, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %44, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %45, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.utmpx* %39, metadata !2668, metadata !DIExpression()) #34, !dbg !2703
  %46 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 8, i32 0, !dbg !2704
  %47 = load i64, i64* %46, align 8, !dbg !2704, !tbaa !2705
  call void @llvm.dbg.value(metadata i64 %47, metadata !2670, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2703
  %48 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 8, i32 1, !dbg !2709
  %49 = load i64, i64* %48, align 8, !dbg !2709, !tbaa !2710
  %50 = mul nsw i64 %49, 1000, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %50, metadata !2670, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2703
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %28) #34, !dbg !2712
  %51 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 4, i64 0, !dbg !2713
  %52 = call i64 @strnlen(i8* noundef nonnull %51, i64 noundef 32) #35, !dbg !2714
  %53 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 3, i64 0, !dbg !2715
  %54 = call i64 @strnlen(i8* noundef nonnull %53, i64 noundef 4) #35, !dbg !2716
  %55 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 2, i64 0, !dbg !2717
  %56 = call i64 @strnlen(i8* noundef nonnull %55, i64 noundef 32) #35, !dbg !2718
  %57 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 5, i64 0, !dbg !2719
  %58 = call i64 @strnlen(i8* noundef nonnull %57, i64 noundef 256) #35, !dbg !2720
  %59 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 1, !dbg !2721
  %60 = load i32, i32* %59, align 4, !dbg !2721, !tbaa !2722
  %61 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 0, !dbg !2723
  %62 = load i16, i16* %61, align 8, !dbg !2723, !tbaa !2724
  %63 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 7, !dbg !2725
  %64 = load i64, i64* %63, align 8, !dbg !2725, !tbaa !2726
  %65 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 6, i32 0, !dbg !2727
  %66 = load i16, i16* %65, align 4, !dbg !2727, !tbaa !2728
  %67 = sext i16 %66 to i32, !dbg !2727
  %68 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %39, i64 0, i32 6, i32 1, !dbg !2729
  %69 = load i16, i16* %68, align 2, !dbg !2729, !tbaa !2730
  %70 = sext i16 %69 to i32, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #34, !dbg !2712
  store %struct.gl_utmp* %40, %struct.gl_utmp** %30, align 8, !dbg !2712, !tbaa.struct !2731
  store i64 %41, i64* %31, align 8, !dbg !2712, !tbaa.struct !2732
  store i64 %44, i64* %32, align 8, !dbg !2712, !tbaa.struct !2733
  store i64 %45, i64* %33, align 8, !dbg !2712, !tbaa.struct !2734
  %71 = insertvalue [2 x i64] poison, i64 %47, 0, !dbg !2712
  %72 = insertvalue [2 x i64] %71, i64 %50, 1, !dbg !2712
  call fastcc void @add_utmp(%struct.utmp_alloc* nonnull sret(%struct.utmp_alloc) align 8 %10, %struct.utmp_alloc* noundef nonnull %11, i32 noundef %3, i8* noundef nonnull %51, i64 noundef %52, i8* noundef nonnull %53, i64 noundef %54, i8* noundef nonnull %55, i64 noundef %56, i8* noundef nonnull %57, i64 noundef %58, i32 noundef %60, i16 noundef %62, [2 x i64] %72, i64 noundef %64, i32 noundef %67, i32 noundef %70) #34, !dbg !2712
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #34, !dbg !2712
  %73 = load %struct.gl_utmp*, %struct.gl_utmp** %34, align 8, !dbg !2712, !tbaa.struct !2731
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %73, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  %74 = load i64, i64* %35, align 8, !dbg !2712, !tbaa.struct !2732
  call void @llvm.dbg.value(metadata i64 %74, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  %75 = load i64, i64* %36, align 8, !dbg !2712, !tbaa.struct !2733
  call void @llvm.dbg.value(metadata i64 %75, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  %76 = load i64, i64* %37, align 8, !dbg !2712, !tbaa.struct !2734
  call void @llvm.dbg.value(metadata i64 %76, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %28) #34, !dbg !2712
  br i1 %24, label %77, label %85, !dbg !2735

77:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i8* %51, metadata !2737, metadata !DIExpression()) #34, !dbg !2742
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.90, i64 0, i64 0), metadata !2740, metadata !DIExpression()) #34, !dbg !2742
  call void @llvm.dbg.value(metadata i64 9, metadata !2741, metadata !DIExpression()) #34, !dbg !2742
  %78 = call i32 @bcmp(i8* noundef nonnull dereferenceable(9) %51, i8* noundef nonnull dereferenceable(9) getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1.90, i64 0, i64 0), i64 9) #34, !dbg !2744
  %79 = icmp eq i32 %78, 0, !dbg !2745
  br i1 %79, label %80, label %85, !dbg !2746

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i8* %55, metadata !2737, metadata !DIExpression()) #34, !dbg !2747
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.91, i64 0, i64 0), metadata !2740, metadata !DIExpression()) #34, !dbg !2747
  call void @llvm.dbg.value(metadata i64 2, metadata !2741, metadata !DIExpression()) #34, !dbg !2747
  %81 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %55, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.91, i64 0, i64 0), i64 2) #34, !dbg !2749
  %82 = icmp eq i32 %81, 0, !dbg !2750
  %83 = select i1 %82, i64 %50, i64 %43, !dbg !2751
  %84 = select i1 %82, i64 %47, i64 %42, !dbg !2751
  br label %85, !dbg !2751

85:                                               ; preds = %80, %77, %38
  %86 = phi i64 [ %43, %77 ], [ %43, %38 ], [ %83, %80 ], !dbg !2684
  %87 = phi i64 [ %42, %77 ], [ %42, %38 ], [ %84, %80 ], !dbg !2684
  call void @llvm.dbg.value(metadata i64 %75, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %76, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %73, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %74, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %87, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %86, metadata !2666, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  %88 = call %struct.utmpx* @getutxent() #34, !dbg !2700
  call void @llvm.dbg.value(metadata %struct.utmpx* %88, metadata !2667, metadata !DIExpression()) #34, !dbg !2684
  %89 = icmp eq %struct.utmpx* %88, null, !dbg !2701
  br i1 %89, label %90, label %38, !dbg !2702, !llvm.loop !2752

90:                                               ; preds = %85
  call void @endutxent() #34, !dbg !2754
  %91 = select i1 %19, i1 %24, i1 false, !dbg !2755
  br i1 %91, label %94, label %177, !dbg !2755

92:                                               ; preds = %21
  tail call void @endutxent() #34, !dbg !2754
  %93 = select i1 %19, i1 %24, i1 false, !dbg !2755
  br i1 %93, label %126, label %177, !dbg !2755

94:                                               ; preds = %90
  call void @llvm.dbg.value(metadata i64 0, metadata !2671, metadata !DIExpression()) #34, !dbg !2756
  %95 = icmp sgt i64 %74, 0, !dbg !2757
  br i1 %95, label %96, label %126, !dbg !2758

96:                                               ; preds = %94, %109
  %97 = phi i64 [ %110, %109 ], [ 0, %94 ]
  call void @llvm.dbg.value(metadata i64 %97, metadata !2671, metadata !DIExpression()) #34, !dbg !2756
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %73, i64 %97), metadata !2675, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !2759
  %98 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %73, i64 %97, i32 7, !dbg !2760
  %99 = load i16, i16* %98, align 8, !dbg !2760, !tbaa !806
  %100 = icmp eq i16 %99, 2, !dbg !2760
  br i1 %100, label %101, label %109, !dbg !2762

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %73, i64 %97, i32 4, i32 0, !dbg !2763
  %103 = load i64, i64* %102, align 8, !dbg !2763, !tbaa !2766
  %104 = icmp slt i64 %103, 61, !dbg !2767
  %105 = icmp ne i64 %87, 0
  %106 = select i1 %104, i1 %105, i1 false, !dbg !2768
  br i1 %106, label %107, label %112, !dbg !2768

107:                                              ; preds = %101
  store i64 %87, i64* %102, align 8, !dbg !2769, !tbaa.struct !2733
  %108 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %73, i64 %97, i32 4, i32 1, !dbg !2769
  store i64 %86, i64* %108, align 8, !dbg !2769, !tbaa.struct !2734
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %73, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %74, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %75, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %76, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2780
  call void @llvm.dbg.value(metadata i64 0, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  br label %112, !dbg !2783

109:                                              ; preds = %96
  %110 = add nuw nsw i64 %97, 1, !dbg !2784
  call void @llvm.dbg.value(metadata i64 %110, metadata !2671, metadata !DIExpression()) #34, !dbg !2756
  %111 = icmp eq i64 %110, %74, !dbg !2757
  br i1 %111, label %112, label %96, !dbg !2758, !llvm.loop !2785

112:                                              ; preds = %109, %101, %107
  call void @llvm.dbg.value(metadata i64 0, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %73, i64 0), metadata !2777, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !2787
  %113 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %73, i64 0, i32 7, !dbg !2788
  %114 = load i16, i16* %113, align 8, !dbg !2788, !tbaa !806
  %115 = icmp eq i16 %114, 2, !dbg !2788
  call void @llvm.dbg.value(metadata i64 1, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  br i1 %115, label %177, label %116

116:                                              ; preds = %112, %119
  %117 = phi i64 [ %123, %119 ], [ 1, %112 ]
  call void @llvm.dbg.value(metadata i64 %117, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  %118 = icmp eq i64 %117, %74, !dbg !2790
  br i1 %118, label %126, label %119, !dbg !2783, !llvm.loop !2791

119:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 %117, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %73, i64 %117), metadata !2777, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !2787
  %120 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %73, i64 %117, i32 7, !dbg !2788
  %121 = load i16, i16* %120, align 8, !dbg !2788, !tbaa !806
  %122 = icmp eq i16 %121, 2, !dbg !2788
  %123 = add nuw nsw i64 %117, 1, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %123, metadata !2775, metadata !DIExpression()) #34, !dbg !2782
  br i1 %122, label %124, label %116, !llvm.loop !2794

124:                                              ; preds = %119
  %125 = icmp slt i64 %117, %74, !dbg !2790
  br i1 %125, label %177, label %126, !dbg !2795

126:                                              ; preds = %116, %124, %94, %92
  %127 = phi i64 [ %75, %124 ], [ %75, %94 ], [ 0, %92 ], [ %75, %116 ]
  %128 = phi i64 [ %76, %124 ], [ %76, %94 ], [ 0, %92 ], [ %76, %116 ]
  %129 = phi %struct.gl_utmp* [ %73, %124 ], [ %73, %94 ], [ null, %92 ], [ %73, %116 ]
  %130 = phi i64 [ %74, %124 ], [ %74, %94 ], [ 0, %92 ], [ %74, %116 ]
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2796, metadata !DIExpression()) #34, !dbg !2842
  call void @llvm.dbg.value(metadata i64 0, metadata !2805, metadata !DIExpression()) #34, !dbg !2845
  %131 = bitcast %struct.stat* %9 to i8*
  %132 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 13, i32 0
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2810, metadata !DIExpression()) #34, !dbg !2847
  %133 = call i32 @stat(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5.92, i64 0, i64 0), %struct.stat* noundef nonnull %9) #34, !dbg !2848
  %134 = icmp sgt i32 %133, -1, !dbg !2849
  %135 = load i64, i64* %132, align 8
  %136 = icmp sgt i64 %135, 1122334454
  %137 = select i1 %134, i1 %136, i1 false, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.stat* %9, metadata !2851, metadata !DIExpression()) #34, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %135, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2861
  call void @llvm.dbg.value(metadata i64 undef, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2861
  br i1 %137, label %157, label %138, !dbg !2850

138:                                              ; preds = %126
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2862
  call void @llvm.dbg.value(metadata i64 1, metadata !2805, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2810, metadata !DIExpression()) #34, !dbg !2847
  %139 = call i32 @stat(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6.93, i64 0, i64 0), %struct.stat* noundef nonnull %9) #34, !dbg !2848
  %140 = icmp sgt i32 %139, -1, !dbg !2849
  %141 = load i64, i64* %132, align 8
  %142 = icmp sgt i64 %141, 1122334454
  %143 = select i1 %140, i1 %142, i1 false, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.stat* %9, metadata !2851, metadata !DIExpression()) #34, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %141, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2861
  call void @llvm.dbg.value(metadata i64 undef, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2861
  br i1 %143, label %157, label %144, !dbg !2850

144:                                              ; preds = %138
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2862
  call void @llvm.dbg.value(metadata i64 2, metadata !2805, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2810, metadata !DIExpression()) #34, !dbg !2847
  %145 = call i32 @stat(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7.94, i64 0, i64 0), %struct.stat* noundef nonnull %9) #34, !dbg !2848
  %146 = icmp sgt i32 %145, -1, !dbg !2849
  %147 = load i64, i64* %132, align 8
  %148 = icmp sgt i64 %147, 1122334454
  %149 = select i1 %146, i1 %148, i1 false, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.stat* %9, metadata !2851, metadata !DIExpression()) #34, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %147, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2861
  call void @llvm.dbg.value(metadata i64 undef, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2861
  br i1 %149, label %157, label %150, !dbg !2850

150:                                              ; preds = %144
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2862
  call void @llvm.dbg.value(metadata i64 3, metadata !2805, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2846
  call void @llvm.dbg.declare(metadata %struct.stat* %9, metadata !2810, metadata !DIExpression()) #34, !dbg !2847
  %151 = call i32 @stat(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0), %struct.stat* noundef nonnull %9) #34, !dbg !2848
  %152 = icmp sgt i32 %151, -1, !dbg !2849
  %153 = load i64, i64* %132, align 8
  %154 = icmp sgt i64 %153, 1122334454
  %155 = select i1 %152, i1 %154, i1 false, !dbg !2850
  call void @llvm.dbg.value(metadata %struct.stat* %9, metadata !2851, metadata !DIExpression()) #34, !dbg !2859
  call void @llvm.dbg.value(metadata i64 %153, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2861
  call void @llvm.dbg.value(metadata i64 undef, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2861
  br i1 %155, label %157, label %156, !dbg !2850

156:                                              ; preds = %150
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2862
  call void @llvm.dbg.value(metadata i64 4, metadata !2805, metadata !DIExpression()) #34, !dbg !2845
  call void @llvm.dbg.value(metadata i64 undef, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2863
  call void @llvm.dbg.value(metadata i64 undef, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2863
  br label %177, !dbg !2864

157:                                              ; preds = %150, %144, %138, %126
  %158 = phi i64 [ %135, %126 ], [ %141, %138 ], [ %147, %144 ], [ %153, %150 ]
  %159 = getelementptr inbounds %struct.stat, %struct.stat* %9, i64 0, i32 13, i32 1, !dbg !2865
  %160 = load i64, i64* %159, align 8, !dbg !2865, !tbaa.struct !2734
  call void @llvm.dbg.value(metadata i64 %160, metadata !2839, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %158, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2863
  call void @llvm.dbg.value(metadata i64 %160, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2863
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %131) #34, !dbg !2862
  call void @llvm.dbg.value(metadata i64 undef, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2863
  call void @llvm.dbg.value(metadata i64 undef, metadata !2678, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2863
  %161 = bitcast %struct.utmp_alloc* %12 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %161) #34, !dbg !2866
  %162 = bitcast %struct.utmp_alloc* %13 to i8*, !dbg !2866
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %162) #34, !dbg !2866
  %163 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %13, i64 0, i32 0, !dbg !2866
  store %struct.gl_utmp* %129, %struct.gl_utmp** %163, align 8, !dbg !2866, !tbaa.struct !2731
  %164 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %13, i64 0, i32 1, !dbg !2866
  store i64 %130, i64* %164, align 8, !dbg !2866, !tbaa.struct !2732
  %165 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %13, i64 0, i32 2, !dbg !2866
  store i64 %127, i64* %165, align 8, !dbg !2866, !tbaa.struct !2733
  %166 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %13, i64 0, i32 3, !dbg !2866
  store i64 %128, i64* %166, align 8, !dbg !2866, !tbaa.struct !2734
  %167 = insertvalue [2 x i64] poison, i64 %158, 0, !dbg !2866
  %168 = insertvalue [2 x i64] %167, i64 %160, 1, !dbg !2866
  call fastcc void @add_utmp(%struct.utmp_alloc* nonnull sret(%struct.utmp_alloc) align 8 %12, %struct.utmp_alloc* noundef nonnull %13, i32 noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.95, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.96, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.91, i64 0, i64 0), i64 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.96, i64 0, i64 0), i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %168, i64 noundef 0, i32 noundef 0, i32 noundef 0) #34, !dbg !2866
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %162) #34, !dbg !2866
  %169 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %12, i64 0, i32 0, !dbg !2866
  %170 = load %struct.gl_utmp*, %struct.gl_utmp** %169, align 8, !dbg !2866, !tbaa.struct !2731
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %170, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  %171 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %12, i64 0, i32 1, !dbg !2866
  %172 = load i64, i64* %171, align 8, !dbg !2866, !tbaa.struct !2732
  call void @llvm.dbg.value(metadata i64 %172, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  %173 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %12, i64 0, i32 2, !dbg !2866
  %174 = load i64, i64* %173, align 8, !dbg !2866, !tbaa.struct !2733
  call void @llvm.dbg.value(metadata i64 %174, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  %175 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %12, i64 0, i32 3, !dbg !2866
  %176 = load i64, i64* %175, align 8, !dbg !2866, !tbaa.struct !2734
  call void @llvm.dbg.value(metadata i64 %176, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %161) #34, !dbg !2866
  br label %177, !dbg !2867

177:                                              ; preds = %157, %156, %124, %112, %92, %90
  %178 = phi i64 [ %76, %90 ], [ %76, %124 ], [ %176, %157 ], [ %128, %156 ], [ %76, %112 ], [ 0, %92 ], !dbg !2684
  %179 = phi i64 [ %75, %90 ], [ %75, %124 ], [ %174, %157 ], [ %127, %156 ], [ %75, %112 ], [ 0, %92 ], !dbg !2684
  %180 = phi i64 [ %74, %90 ], [ %74, %124 ], [ %172, %157 ], [ %130, %156 ], [ %74, %112 ], [ 0, %92 ], !dbg !2684
  %181 = phi %struct.gl_utmp* [ %73, %90 ], [ %73, %124 ], [ %170, %157 ], [ %129, %156 ], [ %73, %112 ], [ null, %92 ], !dbg !2684
  call void @llvm.dbg.value(metadata i64 %179, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %178, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %181, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %180, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  br i1 %19, label %182, label %385, !dbg !2868

182:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8* %0, metadata !2692, metadata !DIExpression()) #34, !dbg !2869
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0), metadata !2695, metadata !DIExpression()) #34, !dbg !2869
  %183 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %0, i8* noundef nonnull dereferenceable(14) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i64 0, i64 0)) #35, !dbg !2871
  %184 = icmp eq i32 %183, 0, !dbg !2872
  br i1 %184, label %185, label %385, !dbg !2873

185:                                              ; preds = %182
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %181, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %180, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %179, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2874
  call void @llvm.dbg.value(metadata i64 %178, metadata !2770, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2874
  call void @llvm.dbg.value(metadata i64 0, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  %186 = icmp sgt i64 %180, 0, !dbg !2877
  br i1 %186, label %187, label %204, !dbg !2878

187:                                              ; preds = %185
  call void @llvm.dbg.value(metadata i64 0, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %181, i64 0), metadata !2777, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !2879
  %188 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %181, i64 0, i32 7, !dbg !2880
  %189 = load i16, i16* %188, align 8, !dbg !2880, !tbaa !806
  %190 = icmp eq i16 %189, 2, !dbg !2880
  call void @llvm.dbg.value(metadata i64 1, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  br i1 %190, label %191, label %194

191:                                              ; preds = %187
  call void @llvm.dbg.value(metadata i64 undef, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %386, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %388, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %387, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %388, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %387, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 undef, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %386, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2889
  %192 = bitcast %struct.gl_utmp* %181 to i8*, !dbg !2891
  %193 = getelementptr inbounds i8, i8* %192, i64 %178, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %390, metadata !2886, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()) #34, !dbg !2893
  br label %392, !dbg !2894

194:                                              ; preds = %187, %197
  %195 = phi i64 [ %201, %197 ], [ 1, %187 ]
  call void @llvm.dbg.value(metadata i64 %195, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  %196 = icmp eq i64 %195, %180, !dbg !2877
  br i1 %196, label %204, label %197, !dbg !2878, !llvm.loop !2895

197:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i64 %195, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %181, i64 %195), metadata !2777, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !2879
  %198 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %181, i64 %195, i32 7, !dbg !2880
  %199 = load i16, i16* %198, align 8, !dbg !2880, !tbaa !806
  %200 = icmp eq i16 %199, 2, !dbg !2880
  %201 = add nuw nsw i64 %195, 1, !dbg !2897
  call void @llvm.dbg.value(metadata i64 %201, metadata !2775, metadata !DIExpression()) #34, !dbg !2876
  br i1 %200, label %202, label %194, !llvm.loop !2898

202:                                              ; preds = %197
  %203 = icmp slt i64 %195, %180, !dbg !2877
  br i1 %203, label %385, label %204, !dbg !2899

204:                                              ; preds = %194, %202, %185
  call void @llvm.dbg.value(metadata %struct.timespec* undef, metadata !2900, metadata !DIExpression()) #34, !dbg !2907
  %205 = bitcast %struct.timespec* %7 to i8*, !dbg !2910
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %205) #34, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct.timespec* %7, metadata !2903, metadata !DIExpression()) #34, !dbg !2911
  call void @llvm.dbg.value(metadata %struct.timespec* %7, metadata !2912, metadata !DIExpression()) #34, !dbg !2997
  %206 = call i32 @clock_gettime(i32 noundef 7, %struct.timespec* noundef nonnull %7) #34, !dbg !2999
  %207 = icmp sgt i32 %206, -1, !dbg !3001
  br i1 %207, label %350, label %208, !dbg !3002

208:                                              ; preds = %204
  %209 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.98, i64 0, i64 0)) #34, !dbg !3003
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %209, metadata !2915, metadata !DIExpression()) #34, !dbg !2997
  %210 = icmp eq %struct._IO_FILE* %209, null, !dbg !3004
  br i1 %210, label %336, label %211, !dbg !3005

211:                                              ; preds = %208
  %212 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 0, !dbg !3006
  call void @llvm.lifetime.start.p0i8(i64 33, i8* nonnull %212) #34, !dbg !3006
  call void @llvm.dbg.declare(metadata [33 x i8]* %5, metadata !2950, metadata !DIExpression()) #34, !dbg !3007
  %213 = call i64 @fread_unlocked(i8* noundef nonnull %212, i64 noundef 1, i64 noundef 32, %struct._IO_FILE* noundef nonnull %209) #34, !dbg !3008
  call void @llvm.dbg.value(metadata i64 %213, metadata !2956, metadata !DIExpression()) #34, !dbg !3009
  %214 = call i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %209) #34, !dbg !3010
  %215 = icmp eq i64 %213, 0, !dbg !3011
  br i1 %215, label %335, label %216, !dbg !3012

216:                                              ; preds = %211
  %217 = getelementptr inbounds [33 x i8], [33 x i8]* %5, i64 0, i64 %213, !dbg !3013
  store i8 0, i8* %217, align 1, !dbg !3014, !tbaa !575
  call void @llvm.dbg.value(metadata i64 0, metadata !2957, metadata !DIExpression()) #34, !dbg !3015
  call void @llvm.dbg.value(metadata i8* %212, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %218 = load i8, i8* %212, align 4, !dbg !3016, !tbaa !575
  %219 = add i8 %218, -48, !dbg !3019
  %220 = icmp ult i8 %219, 10, !dbg !3019
  br i1 %220, label %221, label %335, !dbg !3019

221:                                              ; preds = %216, %221
  %222 = phi i8 [ %231, %221 ], [ %218, %216 ]
  %223 = phi i8* [ %230, %221 ], [ %212, %216 ]
  %224 = phi i64 [ %229, %221 ], [ 0, %216 ]
  call void @llvm.dbg.value(metadata i8* %223, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  call void @llvm.dbg.value(metadata i64 %224, metadata !2957, metadata !DIExpression()) #34, !dbg !3015
  %225 = zext i8 %222 to i64, !dbg !3016
  %226 = mul nsw i64 %224, 10, !dbg !3020
  %227 = add nuw nsw i64 %225, 4294967248, !dbg !3021
  %228 = and i64 %227, 4294967295
  %229 = add nsw i64 %228, %226, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %229, metadata !2957, metadata !DIExpression()) #34, !dbg !3015
  %230 = getelementptr inbounds i8, i8* %223, i64 1, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %230, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %231 = load i8, i8* %230, align 1, !dbg !3016, !tbaa !575
  %232 = add i8 %231, -48, !dbg !3019
  %233 = icmp ult i8 %232, 10, !dbg !3019
  br i1 %233, label %221, label %234, !dbg !3019, !llvm.loop !3024

234:                                              ; preds = %221
  %235 = icmp ult i8* %212, %230, !dbg !3027
  br i1 %235, label %236, label %335, !dbg !3028

236:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i64 0, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %230, metadata !2962, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #34, !dbg !3015
  %237 = icmp eq i8 %231, 46, !dbg !3030
  br i1 %237, label %238, label %345, !dbg !3031

238:                                              ; preds = %236
  %239 = getelementptr inbounds i8, i8* %223, i64 2, !dbg !3032
  call void @llvm.dbg.value(metadata i32 0, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 0, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %239, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %240 = load i8, i8* %239, align 1, !dbg !3034, !tbaa !575
  %241 = zext i8 %240 to i64, !dbg !3034
  %242 = add i8 %240, -48, !dbg !3036
  %243 = icmp ult i8 %242, 10, !dbg !3036
  %244 = add nuw nsw i64 %241, 4294967248, !dbg !3036
  %245 = zext i1 %243 to i64, !dbg !3036
  %246 = getelementptr i8, i8* %239, i64 %245, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %246, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %247 = and i64 %244, 4294967295
  call void @llvm.dbg.value(metadata i32 1, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 undef, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %248 = mul nuw nsw i64 %247, 10, !dbg !3037
  %249 = select i1 %243, i64 %248, i64 0, !dbg !3037
  %250 = load i8, i8* %246, align 1, !dbg !3034, !tbaa !575
  %251 = zext i8 %250 to i64, !dbg !3034
  %252 = add i8 %250, -48, !dbg !3036
  %253 = icmp ult i8 %252, 10, !dbg !3036
  %254 = add nuw nsw i64 %251, 4294967248, !dbg !3036
  %255 = zext i1 %253 to i64, !dbg !3036
  %256 = getelementptr i8, i8* %246, i64 %255, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %256, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %257 = and i64 %254, 4294967295
  %258 = select i1 %253, i64 %257, i64 0, !dbg !3036
  %259 = add nuw nsw i64 %258, %249, !dbg !3038
  call void @llvm.dbg.value(metadata i32 2, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %259, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %260 = mul nuw nsw i64 %259, 10, !dbg !3037
  %261 = load i8, i8* %256, align 1, !dbg !3034, !tbaa !575
  %262 = zext i8 %261 to i64, !dbg !3034
  %263 = add i8 %261, -48, !dbg !3036
  %264 = icmp ult i8 %263, 10, !dbg !3036
  %265 = add nuw nsw i64 %262, 4294967248, !dbg !3036
  %266 = zext i1 %264 to i64, !dbg !3036
  %267 = getelementptr i8, i8* %256, i64 %266, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %267, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %268 = and i64 %265, 4294967295
  %269 = select i1 %264, i64 %268, i64 0, !dbg !3036
  %270 = add nuw nsw i64 %260, %269, !dbg !3038
  call void @llvm.dbg.value(metadata i32 3, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %270, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %271 = mul nuw nsw i64 %270, 10, !dbg !3037
  %272 = load i8, i8* %267, align 1, !dbg !3034, !tbaa !575
  %273 = zext i8 %272 to i64, !dbg !3034
  %274 = add i8 %272, -48, !dbg !3036
  %275 = icmp ult i8 %274, 10, !dbg !3036
  %276 = add nuw nsw i64 %273, 4294967248, !dbg !3036
  %277 = zext i1 %275 to i64, !dbg !3036
  %278 = getelementptr i8, i8* %267, i64 %277, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %278, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %279 = and i64 %276, 4294967295
  %280 = select i1 %275, i64 %279, i64 0, !dbg !3036
  %281 = add nuw nsw i64 %271, %280, !dbg !3038
  call void @llvm.dbg.value(metadata i32 4, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %281, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %282 = mul nuw nsw i64 %281, 10, !dbg !3037
  %283 = load i8, i8* %278, align 1, !dbg !3034, !tbaa !575
  %284 = zext i8 %283 to i64, !dbg !3034
  %285 = add i8 %283, -48, !dbg !3036
  %286 = icmp ult i8 %285, 10, !dbg !3036
  %287 = add nuw nsw i64 %284, 4294967248, !dbg !3036
  %288 = zext i1 %286 to i64, !dbg !3036
  %289 = getelementptr i8, i8* %278, i64 %288, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %289, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %290 = and i64 %287, 4294967295
  %291 = select i1 %286, i64 %290, i64 0, !dbg !3036
  %292 = add nuw nsw i64 %282, %291, !dbg !3038
  call void @llvm.dbg.value(metadata i32 5, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %292, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %293 = mul nuw nsw i64 %292, 10, !dbg !3037
  %294 = load i8, i8* %289, align 1, !dbg !3034, !tbaa !575
  %295 = zext i8 %294 to i64, !dbg !3034
  %296 = add i8 %294, -48, !dbg !3036
  %297 = icmp ult i8 %296, 10, !dbg !3036
  %298 = add nuw nsw i64 %295, 4294967248, !dbg !3036
  %299 = zext i1 %297 to i64, !dbg !3036
  %300 = getelementptr i8, i8* %289, i64 %299, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %300, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %301 = and i64 %298, 4294967295
  %302 = select i1 %297, i64 %301, i64 0, !dbg !3036
  %303 = add nuw nsw i64 %293, %302, !dbg !3038
  call void @llvm.dbg.value(metadata i32 6, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %303, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %304 = mul nuw nsw i64 %303, 10, !dbg !3037
  %305 = load i8, i8* %300, align 1, !dbg !3034, !tbaa !575
  %306 = zext i8 %305 to i64, !dbg !3034
  %307 = add i8 %305, -48, !dbg !3036
  %308 = icmp ult i8 %307, 10, !dbg !3036
  %309 = add nuw nsw i64 %306, 4294967248, !dbg !3036
  %310 = zext i1 %308 to i64, !dbg !3036
  %311 = getelementptr i8, i8* %300, i64 %310, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %311, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %312 = and i64 %309, 4294967295
  %313 = select i1 %308, i64 %312, i64 0, !dbg !3036
  %314 = add nuw nsw i64 %304, %313, !dbg !3038
  call void @llvm.dbg.value(metadata i32 7, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %314, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %315 = mul nuw nsw i64 %314, 10, !dbg !3037
  %316 = load i8, i8* %311, align 1, !dbg !3034, !tbaa !575
  %317 = zext i8 %316 to i64, !dbg !3034
  %318 = add i8 %316, -48, !dbg !3036
  %319 = icmp ult i8 %318, 10, !dbg !3036
  %320 = add nuw nsw i64 %317, 4294967248, !dbg !3036
  %321 = zext i1 %319 to i64, !dbg !3036
  %322 = getelementptr i8, i8* %311, i64 %321, !dbg !3036
  call void @llvm.dbg.value(metadata i8* %322, metadata !2962, metadata !DIExpression()) #34, !dbg !3015
  %323 = and i64 %320, 4294967295
  %324 = select i1 %319, i64 %323, i64 0, !dbg !3036
  %325 = add nuw nsw i64 %315, %324, !dbg !3038
  call void @llvm.dbg.value(metadata i32 8, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  call void @llvm.dbg.value(metadata i64 %325, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %326 = mul nuw nsw i64 %325, 10, !dbg !3037
  %327 = load i8, i8* %322, align 1, !dbg !3034, !tbaa !575
  %328 = zext i8 %327 to i64, !dbg !3034
  %329 = add i8 %327, -48, !dbg !3036
  %330 = icmp ult i8 %329, 10, !dbg !3036
  %331 = add nuw nsw i64 %328, 4294967248, !dbg !3036
  call void @llvm.dbg.value(metadata !DIArgList(i8* %322, i1 %330), metadata !2962, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !3015
  %332 = and i64 %331, 4294967295
  %333 = select i1 %330, i64 %332, i64 0, !dbg !3036
  %334 = add nuw nsw i64 %326, %333, !dbg !3038
  call void @llvm.dbg.value(metadata i64 %334, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  call void @llvm.dbg.value(metadata i32 9, metadata !2966, metadata !DIExpression()) #34, !dbg !3033
  br label %345, !dbg !3039

335:                                              ; preds = %234, %216, %211
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %212) #34, !dbg !3040
  br label %336

336:                                              ; preds = %335, %208
  %337 = bitcast %struct.sysinfo* %6 to i8*, !dbg !3041
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %337) #34, !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.sysinfo* %6, metadata !2969, metadata !DIExpression()) #34, !dbg !3042
  %338 = call i32 @sysinfo(%struct.sysinfo* noundef nonnull %6) #34, !dbg !3043
  %339 = icmp sgt i32 %338, -1, !dbg !3045
  br i1 %339, label %340, label %349, !dbg !3046

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %6, i64 0, i32 0, !dbg !3047
  %342 = load i64, i64* %341, align 8, !dbg !3047, !tbaa !3049
  %343 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 0, !dbg !3051
  store i64 %342, i64* %343, align 8, !dbg !3052, !tbaa !3053
  %344 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1, !dbg !3054
  store i64 0, i64* %344, align 8, !dbg !3055, !tbaa !3056
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %337) #34, !dbg !3057
  br label %350, !dbg !3058

345:                                              ; preds = %238, %236
  %346 = phi i64 [ 0, %236 ], [ %334, %238 ], !dbg !3059
  call void @llvm.dbg.value(metadata i64 %346, metadata !2963, metadata !DIExpression()) #34, !dbg !3029
  %347 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 0, !dbg !3039
  store i64 %229, i64* %347, align 8, !dbg !3060, !tbaa !3053
  %348 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1, !dbg !3061
  store i64 %346, i64* %348, align 8, !dbg !3062, !tbaa !3056
  call void @llvm.lifetime.end.p0i8(i64 33, i8* nonnull %212) #34, !dbg !3040
  br label %350

349:                                              ; preds = %336
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %337) #34, !dbg !3057
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !3063
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %205) #34, !dbg !3064
  br label %385, !dbg !3065

350:                                              ; preds = %345, %340, %204
  %351 = bitcast %struct.timespec* %8 to i8*, !dbg !3066
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %351) #34, !dbg !3066
  call void @llvm.dbg.declare(metadata %struct.timespec* %8, metadata !2904, metadata !DIExpression()) #34, !dbg !3067
  %352 = call i32 @timespec_get(%struct.timespec* noundef nonnull %8, i32 noundef 1) #34, !dbg !3068
  %353 = icmp eq i32 %352, 0, !dbg !3068
  br i1 %353, label %354, label %355, !dbg !3070

354:                                              ; preds = %350
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !3063
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %351) #34, !dbg !3071
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !3063
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %205) #34, !dbg !3064
  br label %385, !dbg !3065

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 1, !dbg !3072
  %357 = load i64, i64* %356, align 8, !dbg !3072, !tbaa !3056
  %358 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 1, !dbg !3074
  %359 = load i64, i64* %358, align 8, !dbg !3074, !tbaa !3056
  %360 = icmp slt i64 %357, %359, !dbg !3075
  %361 = getelementptr inbounds %struct.timespec, %struct.timespec* %8, i64 0, i32 0, !dbg !3076
  %362 = load i64, i64* %361, align 8, !dbg !3076
  %363 = add nsw i64 %357, 1000000000, !dbg !3076
  %364 = select i1 %360, i64 %363, i64 %357, !dbg !3076
  %365 = sext i1 %360 to i64, !dbg !3076
  %366 = add nsw i64 %362, %365, !dbg !3076
  %367 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i64 0, i32 0, !dbg !3077
  %368 = load i64, i64* %367, align 8, !dbg !3077, !tbaa !3053
  %369 = sub i64 %366, %368, !dbg !3078
  %370 = sub nsw i64 %364, %359, !dbg !3079
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !3063
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %351) #34, !dbg !3071
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !3063
  call void @llvm.dbg.value(metadata i64 undef, metadata !2681, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !3063
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %205) #34, !dbg !3064
  %371 = bitcast %struct.utmp_alloc* %14 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %371) #34, !dbg !3080
  %372 = bitcast %struct.utmp_alloc* %15 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %372) #34, !dbg !3080
  %373 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %15, i64 0, i32 0, !dbg !3080
  store %struct.gl_utmp* %181, %struct.gl_utmp** %373, align 8, !dbg !3080, !tbaa.struct !2731
  %374 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %15, i64 0, i32 1, !dbg !3080
  store i64 %180, i64* %374, align 8, !dbg !3080, !tbaa.struct !2732
  %375 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %15, i64 0, i32 2, !dbg !3080
  store i64 %179, i64* %375, align 8, !dbg !3080, !tbaa.struct !2733
  %376 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %15, i64 0, i32 3, !dbg !3080
  store i64 %178, i64* %376, align 8, !dbg !3080, !tbaa.struct !2734
  %377 = insertvalue [2 x i64] poison, i64 %369, 0, !dbg !3080
  %378 = insertvalue [2 x i64] %377, i64 %370, 1, !dbg !3080
  call fastcc void @add_utmp(%struct.utmp_alloc* nonnull sret(%struct.utmp_alloc) align 8 %14, %struct.utmp_alloc* noundef nonnull %15, i32 noundef %3, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3.95, i64 0, i64 0), i64 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.96, i64 0, i64 0), i64 noundef 0, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.91, i64 0, i64 0), i64 noundef 1, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4.96, i64 0, i64 0), i64 noundef 0, i32 noundef 0, i16 noundef 2, [2 x i64] %378, i64 noundef 0, i32 noundef 0, i32 noundef 0) #34, !dbg !3080
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %372) #34, !dbg !3080
  %379 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %14, i64 0, i32 0, !dbg !3080
  %380 = load %struct.gl_utmp*, %struct.gl_utmp** %379, align 8, !dbg !3080, !tbaa.struct !2731
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %380, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  %381 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %14, i64 0, i32 1, !dbg !3080
  %382 = load i64, i64* %381, align 8, !dbg !3080, !tbaa.struct !2732
  call void @llvm.dbg.value(metadata i64 %382, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 undef, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  %383 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %14, i64 0, i32 3, !dbg !3080
  %384 = load i64, i64* %383, align 8, !dbg !3080, !tbaa.struct !2734
  call void @llvm.dbg.value(metadata i64 %384, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %371) #34, !dbg !3080
  br label %385, !dbg !3081

385:                                              ; preds = %355, %354, %349, %202, %182, %177
  %386 = phi i64 [ %178, %202 ], [ %178, %182 ], [ %178, %177 ], [ %384, %355 ], [ %178, %354 ], [ %178, %349 ], !dbg !2684
  %387 = phi i64 [ %180, %202 ], [ %180, %182 ], [ %180, %177 ], [ %382, %355 ], [ %180, %354 ], [ %180, %349 ], !dbg !2684
  %388 = phi %struct.gl_utmp* [ %181, %202 ], [ %181, %182 ], [ %181, %177 ], [ %380, %355 ], [ %181, %354 ], [ %181, %349 ], !dbg !2684
  call void @llvm.dbg.value(metadata i64 undef, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %386, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %388, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata i64 %387, metadata !2657, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2684
  call void @llvm.dbg.value(metadata %struct.gl_utmp* %388, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %387, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 undef, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 %386, metadata !2881, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)) #34, !dbg !2889
  %389 = bitcast %struct.gl_utmp* %388 to i8*, !dbg !2891
  %390 = getelementptr inbounds i8, i8* %389, i64 %386, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %390, metadata !2886, metadata !DIExpression()) #34, !dbg !2889
  call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()) #34, !dbg !2893
  %391 = icmp sgt i64 %387, 0, !dbg !3082
  br i1 %391, label %392, label %416, !dbg !2894

392:                                              ; preds = %385, %191
  %393 = phi i8* [ %193, %191 ], [ %390, %385 ]
  %394 = phi %struct.gl_utmp* [ %181, %191 ], [ %388, %385 ]
  %395 = phi i64 [ %180, %191 ], [ %387, %385 ]
  br label %396, !dbg !2894

396:                                              ; preds = %396, %392
  %397 = phi i64 [ %414, %396 ], [ 0, %392 ]
  call void @llvm.dbg.value(metadata i64 %397, metadata !2887, metadata !DIExpression()) #34, !dbg !2893
  %398 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %394, i64 %397, i32 0, !dbg !3084
  %399 = load i8*, i8** %398, align 8, !dbg !3084, !tbaa !802, !noalias !3086
  %400 = ptrtoint i8* %399 to i64, !dbg !3089
  %401 = getelementptr inbounds i8, i8* %393, i64 %400, !dbg !3090
  store i8* %401, i8** %398, align 8, !dbg !3091, !tbaa !802, !noalias !3086
  %402 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %394, i64 %397, i32 1, !dbg !3092
  %403 = load i8*, i8** %402, align 8, !dbg !3092, !tbaa !3093, !noalias !3086
  %404 = ptrtoint i8* %403 to i64, !dbg !3094
  %405 = getelementptr inbounds i8, i8* %393, i64 %404, !dbg !3095
  store i8* %405, i8** %402, align 8, !dbg !3096, !tbaa !3093, !noalias !3086
  %406 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %394, i64 %397, i32 2, !dbg !3097
  %407 = load i8*, i8** %406, align 8, !dbg !3097, !tbaa !3098, !noalias !3086
  %408 = ptrtoint i8* %407 to i64, !dbg !3099
  %409 = getelementptr inbounds i8, i8* %393, i64 %408, !dbg !3100
  store i8* %409, i8** %406, align 8, !dbg !3101, !tbaa !3098, !noalias !3086
  %410 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %394, i64 %397, i32 3, !dbg !3102
  %411 = load i8*, i8** %410, align 8, !dbg !3102, !tbaa !3103, !noalias !3086
  %412 = ptrtoint i8* %411 to i64, !dbg !3104
  %413 = getelementptr inbounds i8, i8* %393, i64 %412, !dbg !3105
  store i8* %413, i8** %410, align 8, !dbg !3106, !tbaa !3103, !noalias !3086
  %414 = add nuw nsw i64 %397, 1, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %414, metadata !2887, metadata !DIExpression()) #34, !dbg !2893
  %415 = icmp eq i64 %414, %395, !dbg !3082
  br i1 %415, label %416, label %396, !dbg !2894, !llvm.loop !3108

416:                                              ; preds = %396, %4, %385
  %417 = phi i64 [ 0, %4 ], [ %387, %385 ], [ %395, %396 ], !dbg !2684
  %418 = phi %struct.gl_utmp* [ null, %4 ], [ %388, %385 ], [ %394, %396 ], !dbg !2684
  store i64 %417, i64* %1, align 8, !dbg !2684, !tbaa !769
  store %struct.gl_utmp* %418, %struct.gl_utmp** %2, align 8, !dbg !2684, !tbaa !485
  ret i32 0, !dbg !3110
}

declare !dbg !3111 i32 @utmpxname(i8* noundef) local_unnamed_addr #3

declare !dbg !3115 void @setutxent() local_unnamed_addr #3

declare !dbg !3116 %struct.utmpx* @getutxent() local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare !dbg !3120 i64 @strnlen(i8* nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @add_utmp(%struct.utmp_alloc* noalias nocapture writeonly sret(%struct.utmp_alloc) align 8 %0, %struct.utmp_alloc* noundef %1, i32 noundef %2, i8* nocapture noundef readonly %3, i64 noundef %4, i8* nocapture noundef readonly %5, i64 noundef %6, i8* nocapture noundef readonly %7, i64 noundef %8, i8* nocapture noundef readonly %9, i64 noundef %10, i32 noundef %11, i16 noundef %12, [2 x i64] %13, i64 noundef %14, i32 noundef %15, i32 noundef %16) unnamed_addr #12 !dbg !3123 {
  %18 = extractvalue [2 x i64] %13, 0
  call void @llvm.dbg.value(metadata i64 %18, metadata !3139, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !3156
  %19 = extractvalue [2 x i64] %13, 1
  call void @llvm.dbg.value(metadata i64 %19, metadata !3139, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !3156
  call void @llvm.dbg.declare(metadata %struct.utmp_alloc* %1, metadata !3127, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i32 %2, metadata !3128, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %3, metadata !3129, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %4, metadata !3130, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %5, metadata !3131, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %6, metadata !3132, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %7, metadata !3133, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %8, metadata !3134, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i8* %9, metadata !3135, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %10, metadata !3136, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %11, metadata !3137, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i16 %12, metadata !3138, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i64 %14, metadata !3140, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %15, metadata !3141, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 %16, metadata !3142, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.value(metadata i32 72, metadata !3143, metadata !DIExpression()), !dbg !3156
  %20 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i64 0, i32 3, !dbg !3158
  %21 = load i64, i64* %20, align 8, !dbg !3158, !tbaa !3159
  %22 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i64 0, i32 1, !dbg !3161
  %23 = load i64, i64* %22, align 8, !dbg !3161, !tbaa !3162
  %24 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i64 0, i32 2, !dbg !3163
  %25 = load i64, i64* %24, align 8, !dbg !3163, !tbaa !3164
  %26 = mul i64 %23, -72
  %27 = sub i64 %21, %25, !dbg !3165
  %28 = add i64 %27, %26, !dbg !3166
  call void @llvm.dbg.value(metadata i64 %28, metadata !3144, metadata !DIExpression()), !dbg !3156
  %29 = add i64 %6, %4, !dbg !3167
  %30 = add i64 %29, %8, !dbg !3168
  %31 = add i64 %30, %10, !dbg !3169
  %32 = add i64 %31, 4, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %32, metadata !3145, metadata !DIExpression()), !dbg !3156
  %33 = add i64 %31, 76, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %33, metadata !3146, metadata !DIExpression()), !dbg !3156
  %34 = icmp sgt i64 %33, %28, !dbg !3171
  br i1 %34, label %35, label %48, !dbg !3172

35:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i64 %27, metadata !3147, metadata !DIExpression()), !dbg !3173
  %36 = bitcast %struct.utmp_alloc* %1 to i8**, !dbg !3174
  %37 = load i8*, i8** %36, align 8, !dbg !3174, !tbaa !3175
  %38 = sub nsw i64 %33, %28, !dbg !3176
  %39 = tail call nonnull i8* @xpalloc(i8* noundef %37, i64* noundef nonnull %20, i64 noundef %38, i64 noundef -1, i64 noundef 1) #34, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %39, metadata !3150, metadata !DIExpression()), !dbg !3173
  %40 = load i64, i64* %20, align 8, !dbg !3178, !tbaa !3159
  %41 = load i64, i64* %24, align 8, !dbg !3179, !tbaa !3164
  %42 = sub nsw i64 %40, %41, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %42, metadata !3151, metadata !DIExpression()), !dbg !3173
  store i8* %39, i8** %36, align 8, !dbg !3181, !tbaa !3175
  call void @llvm.dbg.value(metadata i8* %39, metadata !3152, metadata !DIExpression()), !dbg !3173
  %43 = getelementptr inbounds i8, i8* %39, i64 %42, !dbg !3182
  %44 = getelementptr inbounds i8, i8* %39, i64 %27, !dbg !3183
  call void @llvm.dbg.value(metadata i8* %43, metadata !3184, metadata !DIExpression()) #34, !dbg !3191
  call void @llvm.dbg.value(metadata i8* %44, metadata !3189, metadata !DIExpression()) #34, !dbg !3191
  call void @llvm.dbg.value(metadata i64 %41, metadata !3190, metadata !DIExpression()) #34, !dbg !3191
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %43, i8* noundef nonnull align 1 %44, i64 noundef %41, i1 noundef false) #34, !dbg !3193
  %45 = load i64, i64* %22, align 8, !dbg !3194, !tbaa !3162
  %46 = load i64, i64* %20, align 8, !dbg !3195, !tbaa !3159
  %47 = load i64, i64* %24, align 8, !dbg !3196, !tbaa !3164
  br label %48, !dbg !3197

48:                                               ; preds = %35, %17
  %49 = phi i64 [ %47, %35 ], [ %25, %17 ], !dbg !3196
  %50 = phi i64 [ %46, %35 ], [ %21, %17 ], !dbg !3195
  %51 = phi i64 [ %45, %35 ], [ %23, %17 ], !dbg !3194
  %52 = getelementptr inbounds %struct.utmp_alloc, %struct.utmp_alloc* %1, i64 0, i32 0, !dbg !3198
  %53 = load %struct.gl_utmp*, %struct.gl_utmp** %52, align 8, !dbg !3198, !tbaa !3175
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %53, i64 %51), metadata !3153, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !3156
  %54 = bitcast %struct.gl_utmp* %53 to i8*, !dbg !3199
  %55 = getelementptr inbounds i8, i8* %54, i64 %50, !dbg !3200
  call void @llvm.dbg.value(metadata i8* %55, metadata !3154, metadata !DIExpression()), !dbg !3156
  %56 = sub i64 0, %49, !dbg !3201
  %57 = getelementptr inbounds i8, i8* %55, i64 %56, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %57, metadata !3155, metadata !DIExpression()), !dbg !3156
  %58 = getelementptr inbounds i8, i8* %57, i64 -1, !dbg !3202
  call void @llvm.dbg.value(metadata i8* %58, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8 0, i8* %58, align 1, !dbg !3203, !tbaa !575
  %59 = sub i64 0, %4, !dbg !3204
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %60, metadata !3205, metadata !DIExpression()) #34, !dbg !3213
  call void @llvm.dbg.value(metadata i8* %3, metadata !3211, metadata !DIExpression()) #34, !dbg !3213
  call void @llvm.dbg.value(metadata i64 %4, metadata !3212, metadata !DIExpression()) #34, !dbg !3213
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %60, i8* noundef nonnull align 1 %3, i64 noundef %4, i1 noundef false) #34, !dbg !3215
  call void @llvm.dbg.value(metadata i8* %60, metadata !3155, metadata !DIExpression()), !dbg !3156
  %61 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 0, !dbg !3216
  store i8* %60, i8** %61, align 8, !dbg !3217, !tbaa !802
  %62 = getelementptr inbounds i8, i8* %60, i64 -1, !dbg !3218
  call void @llvm.dbg.value(metadata i8* %62, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8 0, i8* %62, align 1, !dbg !3219, !tbaa !575
  %63 = sub i64 0, %6, !dbg !3220
  %64 = getelementptr inbounds i8, i8* %62, i64 %63, !dbg !3220
  call void @llvm.dbg.value(metadata i8* %64, metadata !3205, metadata !DIExpression()) #34, !dbg !3221
  call void @llvm.dbg.value(metadata i8* %5, metadata !3211, metadata !DIExpression()) #34, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %6, metadata !3212, metadata !DIExpression()) #34, !dbg !3221
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %64, i8* noundef nonnull align 1 %5, i64 noundef %6, i1 noundef false) #34, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %64, metadata !3155, metadata !DIExpression()), !dbg !3156
  %65 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 1, !dbg !3224
  store i8* %64, i8** %65, align 8, !dbg !3225, !tbaa !3093
  %66 = getelementptr inbounds i8, i8* %64, i64 -1, !dbg !3226
  call void @llvm.dbg.value(metadata i8* %66, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8 0, i8* %66, align 1, !dbg !3227, !tbaa !575
  %67 = sub i64 0, %8, !dbg !3228
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !3228
  call void @llvm.dbg.value(metadata i8* %68, metadata !3205, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %7, metadata !3211, metadata !DIExpression()) #34, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %8, metadata !3212, metadata !DIExpression()) #34, !dbg !3229
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %68, i8* noundef nonnull align 1 %7, i64 noundef %8, i1 noundef false) #34, !dbg !3231
  call void @llvm.dbg.value(metadata i8* %68, metadata !3155, metadata !DIExpression()), !dbg !3156
  %69 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 2, !dbg !3232
  store i8* %68, i8** %69, align 8, !dbg !3233, !tbaa !3098
  %70 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %70, metadata !3155, metadata !DIExpression()), !dbg !3156
  store i8 0, i8* %70, align 1, !dbg !3235, !tbaa !575
  %71 = sub i64 0, %10, !dbg !3236
  %72 = getelementptr inbounds i8, i8* %70, i64 %71, !dbg !3236
  call void @llvm.dbg.value(metadata i8* %72, metadata !3205, metadata !DIExpression()) #34, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %9, metadata !3211, metadata !DIExpression()) #34, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %10, metadata !3212, metadata !DIExpression()) #34, !dbg !3237
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %72, i8* noundef nonnull align 1 %9, i64 noundef %10, i1 noundef false) #34, !dbg !3239
  %73 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 3, !dbg !3240
  store i8* %72, i8** %73, align 8, !dbg !3241, !tbaa !3103
  %74 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 4, i32 0, !dbg !3242
  store i64 %18, i64* %74, align 8, !dbg !3242, !tbaa.struct !2733
  %75 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 4, i32 1, !dbg !3242
  store i64 %19, i64* %75, align 8, !dbg !3242, !tbaa.struct !2734
  %76 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 5, !dbg !3243
  store i32 %11, i32* %76, align 8, !dbg !3244, !tbaa !3245
  %77 = trunc i64 %14 to i32, !dbg !3246
  %78 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 6, !dbg !3247
  store i32 %77, i32* %78, align 4, !dbg !3248, !tbaa !3249
  %79 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 7, !dbg !3250
  store i16 %12, i16* %79, align 8, !dbg !3251, !tbaa !806
  %80 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 8, i32 0, !dbg !3252
  store i32 %15, i32* %80, align 4, !dbg !3253, !tbaa !3254
  %81 = getelementptr inbounds %struct.gl_utmp, %struct.gl_utmp* %53, i64 %51, i32 8, i32 1, !dbg !3255
  store i32 %16, i32* %81, align 4, !dbg !3256, !tbaa !3257
  call void @llvm.dbg.value(metadata !DIArgList(%struct.gl_utmp* %53, i64 %51), metadata !3258, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 72, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)) #34, !dbg !3266
  call void @llvm.dbg.value(metadata i32 %2, metadata !3263, metadata !DIExpression()) #34, !dbg !3266
  %82 = icmp eq i16 %12, 2, !dbg !3269
  call void @llvm.dbg.value(metadata i1 %82, metadata !3264, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !3266
  %83 = and i32 %2, 4, !dbg !3270
  %84 = icmp eq i32 %83, 0, !dbg !3270
  %85 = or i1 %84, %82, !dbg !3272
  br i1 %85, label %86, label %135, !dbg !3272

86:                                               ; preds = %48
  %87 = and i32 %2, 8, !dbg !3273
  %88 = icmp ne i32 %87, 0, !dbg !3273
  %89 = and i1 %88, %82, !dbg !3275
  br i1 %89, label %135, label %90, !dbg !3275

90:                                               ; preds = %86
  %91 = load i8*, i8** %61, align 8, !dbg !3276, !tbaa !802
  %92 = load i8, i8* %91, align 1, !dbg !3276, !tbaa !575
  %93 = icmp ne i8 %92, 0, !dbg !3276
  %94 = icmp eq i16 %12, 7
  %95 = and i1 %94, %93, !dbg !3276
  call void @llvm.dbg.value(metadata i1 %95, metadata !3265, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #34, !dbg !3266
  %96 = and i32 %2, 2, !dbg !3277
  %97 = icmp eq i32 %96, 0, !dbg !3277
  %98 = select i1 %97, i1 true, i1 %95, !dbg !3279
  br i1 %98, label %99, label %135, !dbg !3279

99:                                               ; preds = %90
  %100 = and i32 %2, 1, !dbg !3280
  %101 = icmp ne i32 %100, 0, !dbg !3280
  %102 = and i1 %94, %93, !dbg !3282
  %103 = select i1 %101, i1 %102, i1 false, !dbg !3282
  %104 = icmp sgt i32 %11, 0
  %105 = and i1 %103, %104, !dbg !3282
  br i1 %105, label %106, label %113, !dbg !3282

106:                                              ; preds = %99
  %107 = tail call i32 @kill(i32 noundef %11, i32 noundef 0) #34, !dbg !3283
  %108 = icmp slt i32 %107, 0, !dbg !3284
  br i1 %108, label %109, label %113, !dbg !3285

109:                                              ; preds = %106
  %110 = tail call i32* @__errno_location() #37, !dbg !3286
  %111 = load i32, i32* %110, align 4, !dbg !3286, !tbaa !566
  %112 = icmp eq i32 %111, 3, !dbg !3287
  br i1 %112, label %135, label %113, !dbg !3288

113:                                              ; preds = %109, %106, %99
  %114 = load i8*, i8** %61, align 8, !dbg !3289, !tbaa !802
  %115 = ptrtoint i8* %114 to i64, !dbg !3291
  %116 = ptrtoint i8* %55 to i64, !dbg !3291
  %117 = sub i64 %115, %116, !dbg !3291
  %118 = inttoptr i64 %117 to i8*, !dbg !3292
  store i8* %118, i8** %61, align 8, !dbg !3293, !tbaa !802
  %119 = load i8*, i8** %65, align 8, !dbg !3294, !tbaa !3093
  %120 = ptrtoint i8* %119 to i64, !dbg !3295
  %121 = sub i64 %120, %116, !dbg !3295
  %122 = inttoptr i64 %121 to i8*, !dbg !3296
  store i8* %122, i8** %65, align 8, !dbg !3297, !tbaa !3093
  %123 = load i8*, i8** %69, align 8, !dbg !3298, !tbaa !3098
  %124 = ptrtoint i8* %123 to i64, !dbg !3299
  %125 = sub i64 %124, %116, !dbg !3299
  %126 = inttoptr i64 %125 to i8*, !dbg !3300
  store i8* %126, i8** %69, align 8, !dbg !3301, !tbaa !3098
  %127 = load i8*, i8** %73, align 8, !dbg !3302, !tbaa !3103
  %128 = ptrtoint i8* %127 to i64, !dbg !3303
  %129 = sub i64 %128, %116, !dbg !3303
  %130 = inttoptr i64 %129 to i8*, !dbg !3304
  store i8* %130, i8** %73, align 8, !dbg !3305, !tbaa !3103
  %131 = load i64, i64* %22, align 8, !dbg !3306, !tbaa !3162
  %132 = add nsw i64 %131, 1, !dbg !3306
  store i64 %132, i64* %22, align 8, !dbg !3306, !tbaa !3162
  %133 = load i64, i64* %24, align 8, !dbg !3307, !tbaa !3164
  %134 = add nsw i64 %32, %133, !dbg !3307
  store i64 %134, i64* %24, align 8, !dbg !3307, !tbaa !3164
  br label %135, !dbg !3308

135:                                              ; preds = %109, %90, %86, %48, %113
  %136 = bitcast %struct.utmp_alloc* %0 to i8*, !dbg !3309
  %137 = bitcast %struct.utmp_alloc* %1 to i8*, !dbg !3309
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %136, i8* noundef nonnull align 8 dereferenceable(32) %137, i64 32, i1 false), !dbg !3309, !tbaa.struct !2731
  ret void, !dbg !3310
}

declare !dbg !3311 void @endutxent() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !3312 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3318 i32 @clock_gettime(i32 noundef, %struct.timespec* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3325 i32 @sysinfo(%struct.sysinfo* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3330 i32 @timespec_get(%struct.timespec* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare !dbg !3333 i32 @kill(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3337 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3376, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %1, metadata !3377, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %2, metadata !3378, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8* %3, metadata !3379, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i8** %4, metadata !3380, metadata !DIExpression()), !dbg !3382
  call void @llvm.dbg.value(metadata i64 %5, metadata !3381, metadata !DIExpression()), !dbg !3382
  %7 = icmp eq i8* %1, null, !dbg !3383
  br i1 %7, label %10, label %8, !dbg !3385

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !3386
  br label %12, !dbg !3386

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.100, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !3387
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.102, i64 0, i64 0), i32 noundef 5) #34, !dbg !3388
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !3388
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3389
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.104, i64 0, i64 0), i32 noundef 5) #34, !dbg !3390
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.105, i64 0, i64 0)) #34, !dbg !3390
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3391
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
  ], !dbg !3392

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.106, i64 0, i64 0), i32 noundef 5) #34, !dbg !3393
  %21 = load i8*, i8** %4, align 8, !dbg !3393, !tbaa !485
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !3393
  br label %147, !dbg !3395

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.107, i64 0, i64 0), i32 noundef 5) #34, !dbg !3396
  %25 = load i8*, i8** %4, align 8, !dbg !3396, !tbaa !485
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3396
  %27 = load i8*, i8** %26, align 8, !dbg !3396, !tbaa !485
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !3396
  br label %147, !dbg !3397

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !3398
  %31 = load i8*, i8** %4, align 8, !dbg !3398, !tbaa !485
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3398
  %33 = load i8*, i8** %32, align 8, !dbg !3398, !tbaa !485
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3398
  %35 = load i8*, i8** %34, align 8, !dbg !3398, !tbaa !485
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !3398
  br label %147, !dbg !3399

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.109, i64 0, i64 0), i32 noundef 5) #34, !dbg !3400
  %39 = load i8*, i8** %4, align 8, !dbg !3400, !tbaa !485
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3400
  %41 = load i8*, i8** %40, align 8, !dbg !3400, !tbaa !485
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3400
  %43 = load i8*, i8** %42, align 8, !dbg !3400, !tbaa !485
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3400
  %45 = load i8*, i8** %44, align 8, !dbg !3400, !tbaa !485
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !3400
  br label %147, !dbg !3401

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.110, i64 0, i64 0), i32 noundef 5) #34, !dbg !3402
  %49 = load i8*, i8** %4, align 8, !dbg !3402, !tbaa !485
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3402
  %51 = load i8*, i8** %50, align 8, !dbg !3402, !tbaa !485
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3402
  %53 = load i8*, i8** %52, align 8, !dbg !3402, !tbaa !485
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3402
  %55 = load i8*, i8** %54, align 8, !dbg !3402, !tbaa !485
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3402
  %57 = load i8*, i8** %56, align 8, !dbg !3402, !tbaa !485
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !3402
  br label %147, !dbg !3403

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.111, i64 0, i64 0), i32 noundef 5) #34, !dbg !3404
  %61 = load i8*, i8** %4, align 8, !dbg !3404, !tbaa !485
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3404
  %63 = load i8*, i8** %62, align 8, !dbg !3404, !tbaa !485
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3404
  %65 = load i8*, i8** %64, align 8, !dbg !3404, !tbaa !485
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3404
  %67 = load i8*, i8** %66, align 8, !dbg !3404, !tbaa !485
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3404
  %69 = load i8*, i8** %68, align 8, !dbg !3404, !tbaa !485
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3404
  %71 = load i8*, i8** %70, align 8, !dbg !3404, !tbaa !485
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !3404
  br label %147, !dbg !3405

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.112, i64 0, i64 0), i32 noundef 5) #34, !dbg !3406
  %75 = load i8*, i8** %4, align 8, !dbg !3406, !tbaa !485
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3406
  %77 = load i8*, i8** %76, align 8, !dbg !3406, !tbaa !485
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3406
  %79 = load i8*, i8** %78, align 8, !dbg !3406, !tbaa !485
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3406
  %81 = load i8*, i8** %80, align 8, !dbg !3406, !tbaa !485
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3406
  %83 = load i8*, i8** %82, align 8, !dbg !3406, !tbaa !485
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3406
  %85 = load i8*, i8** %84, align 8, !dbg !3406, !tbaa !485
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3406
  %87 = load i8*, i8** %86, align 8, !dbg !3406, !tbaa !485
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !3406
  br label %147, !dbg !3407

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.113, i64 0, i64 0), i32 noundef 5) #34, !dbg !3408
  %91 = load i8*, i8** %4, align 8, !dbg !3408, !tbaa !485
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3408
  %93 = load i8*, i8** %92, align 8, !dbg !3408, !tbaa !485
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3408
  %95 = load i8*, i8** %94, align 8, !dbg !3408, !tbaa !485
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3408
  %97 = load i8*, i8** %96, align 8, !dbg !3408, !tbaa !485
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3408
  %99 = load i8*, i8** %98, align 8, !dbg !3408, !tbaa !485
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3408
  %101 = load i8*, i8** %100, align 8, !dbg !3408, !tbaa !485
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3408
  %103 = load i8*, i8** %102, align 8, !dbg !3408, !tbaa !485
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3408
  %105 = load i8*, i8** %104, align 8, !dbg !3408, !tbaa !485
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !3408
  br label %147, !dbg !3409

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.114, i64 0, i64 0), i32 noundef 5) #34, !dbg !3410
  %109 = load i8*, i8** %4, align 8, !dbg !3410, !tbaa !485
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3410
  %111 = load i8*, i8** %110, align 8, !dbg !3410, !tbaa !485
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3410
  %113 = load i8*, i8** %112, align 8, !dbg !3410, !tbaa !485
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3410
  %115 = load i8*, i8** %114, align 8, !dbg !3410, !tbaa !485
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3410
  %117 = load i8*, i8** %116, align 8, !dbg !3410, !tbaa !485
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3410
  %119 = load i8*, i8** %118, align 8, !dbg !3410, !tbaa !485
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3410
  %121 = load i8*, i8** %120, align 8, !dbg !3410, !tbaa !485
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3410
  %123 = load i8*, i8** %122, align 8, !dbg !3410, !tbaa !485
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3410
  %125 = load i8*, i8** %124, align 8, !dbg !3410, !tbaa !485
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !3410
  br label %147, !dbg !3411

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.115, i64 0, i64 0), i32 noundef 5) #34, !dbg !3412
  %129 = load i8*, i8** %4, align 8, !dbg !3412, !tbaa !485
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3412
  %131 = load i8*, i8** %130, align 8, !dbg !3412, !tbaa !485
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3412
  %133 = load i8*, i8** %132, align 8, !dbg !3412, !tbaa !485
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3412
  %135 = load i8*, i8** %134, align 8, !dbg !3412, !tbaa !485
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3412
  %137 = load i8*, i8** %136, align 8, !dbg !3412, !tbaa !485
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3412
  %139 = load i8*, i8** %138, align 8, !dbg !3412, !tbaa !485
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3412
  %141 = load i8*, i8** %140, align 8, !dbg !3412, !tbaa !485
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3412
  %143 = load i8*, i8** %142, align 8, !dbg !3412, !tbaa !485
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3412
  %145 = load i8*, i8** %144, align 8, !dbg !3412, !tbaa !485
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !3412
  br label %147, !dbg !3413

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3414
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3415 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3419, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %1, metadata !3420, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %2, metadata !3421, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8* %3, metadata !3422, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i8** %4, metadata !3423, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.value(metadata i64 0, metadata !3424, metadata !DIExpression()), !dbg !3425
  br label %6, !dbg !3426

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3428
  call void @llvm.dbg.value(metadata i64 %7, metadata !3424, metadata !DIExpression()), !dbg !3425
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3429
  %9 = load i8*, i8** %8, align 8, !dbg !3429, !tbaa !485
  %10 = icmp eq i8* %9, null, !dbg !3431
  %11 = add i64 %7, 1, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %11, metadata !3424, metadata !DIExpression()), !dbg !3425
  br i1 %10, label %12, label %6, !dbg !3431, !llvm.loop !3433

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3435
  ret void, !dbg !3436
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3437 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3452, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %1, metadata !3453, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %2, metadata !3454, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i8* %3, metadata !3455, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3456, metadata !DIExpression()), !dbg !3461
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3462
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3462
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3458, metadata !DIExpression()), !dbg !3463
  call void @llvm.dbg.value(metadata i64 0, metadata !3457, metadata !DIExpression()), !dbg !3460
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3457, metadata !DIExpression()), !dbg !3460
  %11 = load i32, i32* %8, align 8, !dbg !3464
  %12 = icmp sgt i32 %11, -1, !dbg !3464
  br i1 %12, label %20, label %13, !dbg !3464

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3464
  store i32 %14, i32* %8, align 8, !dbg !3464
  %15 = icmp ult i32 %11, -7, !dbg !3464
  br i1 %15, label %16, label %20, !dbg !3464

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3464
  %18 = sext i32 %11 to i64, !dbg !3464
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3464
  br label %24, !dbg !3464

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3464
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3464
  store i8* %23, i8** %10, align 8, !dbg !3464
  br label %24, !dbg !3464

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3464
  %28 = load i8*, i8** %27, align 8, !dbg !3464
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3467
  store i8* %28, i8** %29, align 8, !dbg !3468, !tbaa !485
  %30 = icmp eq i8* %28, null, !dbg !3469
  br i1 %30, label %210, label %31, !dbg !3470

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 1, metadata !3457, metadata !DIExpression()), !dbg !3460
  %32 = icmp sgt i32 %25, -1, !dbg !3464
  br i1 %32, label %40, label %33, !dbg !3464

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3464
  store i32 %34, i32* %8, align 8, !dbg !3464
  %35 = icmp ult i32 %25, -7, !dbg !3464
  br i1 %35, label %36, label %40, !dbg !3464

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3464
  %38 = sext i32 %25 to i64, !dbg !3464
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3464
  br label %44, !dbg !3464

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3464
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3464
  store i8* %43, i8** %10, align 8, !dbg !3464
  br label %44, !dbg !3464

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3464
  %48 = load i8*, i8** %47, align 8, !dbg !3464
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3467
  store i8* %48, i8** %49, align 8, !dbg !3468, !tbaa !485
  %50 = icmp eq i8* %48, null, !dbg !3469
  br i1 %50, label %210, label %51, !dbg !3470

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 2, metadata !3457, metadata !DIExpression()), !dbg !3460
  %52 = icmp sgt i32 %45, -1, !dbg !3464
  br i1 %52, label %60, label %53, !dbg !3464

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3464
  store i32 %54, i32* %8, align 8, !dbg !3464
  %55 = icmp ult i32 %45, -7, !dbg !3464
  br i1 %55, label %56, label %60, !dbg !3464

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3464
  %58 = sext i32 %45 to i64, !dbg !3464
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3464
  br label %64, !dbg !3464

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3464
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3464
  store i8* %63, i8** %10, align 8, !dbg !3464
  br label %64, !dbg !3464

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3464
  %68 = load i8*, i8** %67, align 8, !dbg !3464
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3467
  store i8* %68, i8** %69, align 8, !dbg !3468, !tbaa !485
  %70 = icmp eq i8* %68, null, !dbg !3469
  br i1 %70, label %210, label %71, !dbg !3470

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 3, metadata !3457, metadata !DIExpression()), !dbg !3460
  %72 = icmp sgt i32 %65, -1, !dbg !3464
  br i1 %72, label %80, label %73, !dbg !3464

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3464
  store i32 %74, i32* %8, align 8, !dbg !3464
  %75 = icmp ult i32 %65, -7, !dbg !3464
  br i1 %75, label %76, label %80, !dbg !3464

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3464
  %78 = sext i32 %65 to i64, !dbg !3464
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3464
  br label %84, !dbg !3464

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3464
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3464
  store i8* %83, i8** %10, align 8, !dbg !3464
  br label %84, !dbg !3464

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3464
  %88 = load i8*, i8** %87, align 8, !dbg !3464
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3467
  store i8* %88, i8** %89, align 8, !dbg !3468, !tbaa !485
  %90 = icmp eq i8* %88, null, !dbg !3469
  br i1 %90, label %210, label %91, !dbg !3470

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 4, metadata !3457, metadata !DIExpression()), !dbg !3460
  %92 = icmp sgt i32 %85, -1, !dbg !3464
  br i1 %92, label %100, label %93, !dbg !3464

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3464
  store i32 %94, i32* %8, align 8, !dbg !3464
  %95 = icmp ult i32 %85, -7, !dbg !3464
  br i1 %95, label %96, label %100, !dbg !3464

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3464
  %98 = sext i32 %85 to i64, !dbg !3464
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3464
  br label %104, !dbg !3464

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3464
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3464
  store i8* %103, i8** %10, align 8, !dbg !3464
  br label %104, !dbg !3464

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3464
  %108 = load i8*, i8** %107, align 8, !dbg !3464
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3467
  store i8* %108, i8** %109, align 8, !dbg !3468, !tbaa !485
  %110 = icmp eq i8* %108, null, !dbg !3469
  br i1 %110, label %210, label %111, !dbg !3470

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 5, metadata !3457, metadata !DIExpression()), !dbg !3460
  %112 = icmp sgt i32 %105, -1, !dbg !3464
  br i1 %112, label %120, label %113, !dbg !3464

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3464
  store i32 %114, i32* %8, align 8, !dbg !3464
  %115 = icmp ult i32 %105, -7, !dbg !3464
  br i1 %115, label %116, label %120, !dbg !3464

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3464
  %118 = sext i32 %105 to i64, !dbg !3464
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3464
  br label %124, !dbg !3464

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3464
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3464
  store i8* %123, i8** %10, align 8, !dbg !3464
  br label %124, !dbg !3464

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3464
  %128 = load i8*, i8** %127, align 8, !dbg !3464
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3467
  store i8* %128, i8** %129, align 8, !dbg !3468, !tbaa !485
  %130 = icmp eq i8* %128, null, !dbg !3469
  br i1 %130, label %210, label %131, !dbg !3470

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 6, metadata !3457, metadata !DIExpression()), !dbg !3460
  %132 = icmp sgt i32 %125, -1, !dbg !3464
  br i1 %132, label %140, label %133, !dbg !3464

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3464
  store i32 %134, i32* %8, align 8, !dbg !3464
  %135 = icmp ult i32 %125, -7, !dbg !3464
  br i1 %135, label %136, label %140, !dbg !3464

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3464
  %138 = sext i32 %125 to i64, !dbg !3464
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3464
  br label %144, !dbg !3464

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3464
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3464
  store i8* %143, i8** %10, align 8, !dbg !3464
  br label %144, !dbg !3464

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3464
  %148 = load i8*, i8** %147, align 8, !dbg !3464
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3467
  store i8* %148, i8** %149, align 8, !dbg !3468, !tbaa !485
  %150 = icmp eq i8* %148, null, !dbg !3469
  br i1 %150, label %210, label %151, !dbg !3470

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 7, metadata !3457, metadata !DIExpression()), !dbg !3460
  %152 = icmp sgt i32 %145, -1, !dbg !3464
  br i1 %152, label %160, label %153, !dbg !3464

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3464
  store i32 %154, i32* %8, align 8, !dbg !3464
  %155 = icmp ult i32 %145, -7, !dbg !3464
  br i1 %155, label %156, label %160, !dbg !3464

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3464
  %158 = sext i32 %145 to i64, !dbg !3464
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3464
  br label %164, !dbg !3464

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3464
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3464
  store i8* %163, i8** %10, align 8, !dbg !3464
  br label %164, !dbg !3464

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3464
  %168 = load i8*, i8** %167, align 8, !dbg !3464
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3467
  store i8* %168, i8** %169, align 8, !dbg !3468, !tbaa !485
  %170 = icmp eq i8* %168, null, !dbg !3469
  br i1 %170, label %210, label %171, !dbg !3470

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 8, metadata !3457, metadata !DIExpression()), !dbg !3460
  %172 = icmp sgt i32 %165, -1, !dbg !3464
  br i1 %172, label %180, label %173, !dbg !3464

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3464
  store i32 %174, i32* %8, align 8, !dbg !3464
  %175 = icmp ult i32 %165, -7, !dbg !3464
  br i1 %175, label %176, label %180, !dbg !3464

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3464
  %178 = sext i32 %165 to i64, !dbg !3464
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3464
  br label %184, !dbg !3464

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3464
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3464
  store i8* %183, i8** %10, align 8, !dbg !3464
  br label %184, !dbg !3464

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3464
  %188 = load i8*, i8** %187, align 8, !dbg !3464
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3467
  store i8* %188, i8** %189, align 8, !dbg !3468, !tbaa !485
  %190 = icmp eq i8* %188, null, !dbg !3469
  br i1 %190, label %210, label %191, !dbg !3470

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3457, metadata !DIExpression()), !dbg !3460
  call void @llvm.dbg.value(metadata i64 9, metadata !3457, metadata !DIExpression()), !dbg !3460
  %192 = icmp sgt i32 %185, -1, !dbg !3464
  br i1 %192, label %200, label %193, !dbg !3464

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3464
  store i32 %194, i32* %8, align 8, !dbg !3464
  %195 = icmp ult i32 %185, -7, !dbg !3464
  br i1 %195, label %196, label %200, !dbg !3464

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3464
  %198 = sext i32 %185 to i64, !dbg !3464
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3464
  br label %203, !dbg !3464

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3464
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3464
  store i8* %202, i8** %10, align 8, !dbg !3464
  br label %203, !dbg !3464

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3464
  %206 = load i8*, i8** %205, align 8, !dbg !3464
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3467
  store i8* %206, i8** %207, align 8, !dbg !3468, !tbaa !485
  %208 = icmp eq i8* %206, null, !dbg !3469
  %209 = select i1 %208, i64 9, i64 10, !dbg !3470
  br label %210, !dbg !3470

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3471
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3472
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !3473
  ret void, !dbg !3473
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3474 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3478, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %1, metadata !3479, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %2, metadata !3480, metadata !DIExpression()), !dbg !3483
  call void @llvm.dbg.value(metadata i8* %3, metadata !3481, metadata !DIExpression()), !dbg !3483
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3484
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3484
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3482, metadata !DIExpression()), !dbg !3485
  call void @llvm.va_start(i8* nonnull %7), !dbg !3486
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3487
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3487
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3487, !tbaa.struct !938
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !3487
  call void @llvm.va_end(i8* nonnull %7), !dbg !3488
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !3489
  ret void, !dbg !3489
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3490 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3491, !tbaa !485
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.103, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3491
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.120, i64 0, i64 0), i32 noundef 5) #34, !dbg !3492
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.121, i64 0, i64 0)) #34, !dbg !3492
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.122, i64 0, i64 0), i32 noundef 5) #34, !dbg !3493
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !3493
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.101, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #34, !dbg !3494
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.124, i64 0, i64 0)) #34, !dbg !3494
  ret void, !dbg !3495
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3496 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3501, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %1, metadata !3502, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i64 %2, metadata !3503, metadata !DIExpression()), !dbg !3504
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()) #34, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %1, metadata !3508, metadata !DIExpression()) #34, !dbg !3510
  call void @llvm.dbg.value(metadata i64 %2, metadata !3509, metadata !DIExpression()) #34, !dbg !3510
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3512
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #34, !dbg !3518
  %5 = icmp eq i8* %4, null, !dbg !3520
  br i1 %5, label %6, label %7, !dbg !3522

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3523
  unreachable, !dbg !3523

7:                                                ; preds = %3
  ret i8* %4, !dbg !3524
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3506 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %1, metadata !3508, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata i64 %2, metadata !3509, metadata !DIExpression()), !dbg !3525
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3526
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #34, !dbg !3527
  %5 = icmp eq i8* %4, null, !dbg !3529
  br i1 %5, label %6, label %7, !dbg !3530

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3531
  unreachable, !dbg !3531

7:                                                ; preds = %3
  ret i8* %4, !dbg !3532
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3533 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3537, metadata !DIExpression()), !dbg !3538
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3539
  call void @llvm.dbg.value(metadata i8* %2, metadata !3513, metadata !DIExpression()) #34, !dbg !3540
  %3 = icmp eq i8* %2, null, !dbg !3542
  br i1 %3, label %4, label %5, !dbg !3543

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3544
  unreachable, !dbg !3544

5:                                                ; preds = %1
  ret i8* %2, !dbg !3545
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3546 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3550, metadata !DIExpression()), !dbg !3551
  call void @llvm.dbg.value(metadata i64 %0, metadata !3552, metadata !DIExpression()) #34, !dbg !3556
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3558
  call void @llvm.dbg.value(metadata i8* %2, metadata !3513, metadata !DIExpression()) #34, !dbg !3559
  %3 = icmp eq i8* %2, null, !dbg !3561
  br i1 %3, label %4, label %5, !dbg !3562

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3563
  unreachable, !dbg !3563

5:                                                ; preds = %1
  ret i8* %2, !dbg !3564
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3565 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %0, metadata !3537, metadata !DIExpression()) #34, !dbg !3571
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %2, metadata !3513, metadata !DIExpression()) #34, !dbg !3574
  %3 = icmp eq i8* %2, null, !dbg !3576
  br i1 %3, label %4, label %5, !dbg !3577

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3578
  unreachable, !dbg !3578

5:                                                ; preds = %1
  ret i8* %2, !dbg !3579
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3580 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i64 %1, metadata !3585, metadata !DIExpression()), !dbg !3586
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #34, !dbg !3592
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()) #34, !dbg !3592
  %3 = icmp eq i64 %1, 0, !dbg !3594
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3594
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3595
  call void @llvm.dbg.value(metadata i8* %5, metadata !3513, metadata !DIExpression()) #34, !dbg !3596
  %6 = icmp eq i8* %5, null, !dbg !3598
  br i1 %6, label %7, label %8, !dbg !3599

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3600
  unreachable, !dbg !3600

8:                                                ; preds = %2
  ret i8* %5, !dbg !3601
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3602 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3606, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i64 %1, metadata !3607, metadata !DIExpression()), !dbg !3608
  call void @llvm.dbg.value(metadata i8* %0, metadata !3609, metadata !DIExpression()) #34, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %1, metadata !3612, metadata !DIExpression()) #34, !dbg !3613
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #34, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %1, metadata !3591, metadata !DIExpression()) #34, !dbg !3615
  %3 = icmp eq i64 %1, 0, !dbg !3617
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3617
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %5, metadata !3513, metadata !DIExpression()) #34, !dbg !3619
  %6 = icmp eq i8* %5, null, !dbg !3621
  br i1 %6, label %7, label %8, !dbg !3622

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3623
  unreachable, !dbg !3623

8:                                                ; preds = %2
  ret i8* %5, !dbg !3624
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3625 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3629, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i64 %2, metadata !3631, metadata !DIExpression()), !dbg !3632
  call void @llvm.dbg.value(metadata i8* %0, metadata !3633, metadata !DIExpression()) #34, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %1, metadata !3636, metadata !DIExpression()) #34, !dbg !3638
  call void @llvm.dbg.value(metadata i64 %2, metadata !3637, metadata !DIExpression()) #34, !dbg !3638
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !3640
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #34, !dbg !3641
  %5 = icmp eq i8* %4, null, !dbg !3643
  br i1 %5, label %6, label %7, !dbg !3644

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !3645
  unreachable, !dbg !3645

7:                                                ; preds = %3
  ret i8* %4, !dbg !3646
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3647 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3651, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i64 %1, metadata !3652, metadata !DIExpression()), !dbg !3653
  call void @llvm.dbg.value(metadata i8* null, metadata !3505, metadata !DIExpression()) #34, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %0, metadata !3508, metadata !DIExpression()) #34, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %1, metadata !3509, metadata !DIExpression()) #34, !dbg !3654
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3656
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3657
  %4 = icmp eq i8* %3, null, !dbg !3659
  br i1 %4, label %5, label %6, !dbg !3660

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3661
  unreachable, !dbg !3661

6:                                                ; preds = %2
  ret i8* %3, !dbg !3662
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3663 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3667, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %1, metadata !3668, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* null, metadata !3629, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %0, metadata !3630, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()) #34, !dbg !3670
  call void @llvm.dbg.value(metadata i8* null, metadata !3633, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %0, metadata !3636, metadata !DIExpression()) #34, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %1, metadata !3637, metadata !DIExpression()) #34, !dbg !3672
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !3674
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3675
  %4 = icmp eq i8* %3, null, !dbg !3677
  br i1 %4, label %5, label %6, !dbg !3678

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3679
  unreachable, !dbg !3679

6:                                                ; preds = %2
  ret i8* %3, !dbg !3680
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3681 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3685, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64* %1, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i8* %0, metadata !416, metadata !DIExpression()) #34, !dbg !3688
  call void @llvm.dbg.value(metadata i64* %1, metadata !417, metadata !DIExpression()) #34, !dbg !3688
  call void @llvm.dbg.value(metadata i64 1, metadata !418, metadata !DIExpression()) #34, !dbg !3688
  %3 = load i64, i64* %1, align 8, !dbg !3690, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %3, metadata !419, metadata !DIExpression()) #34, !dbg !3688
  %4 = icmp eq i8* %0, null, !dbg !3691
  br i1 %4, label %5, label %8, !dbg !3693

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3694
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3697
  br label %15, !dbg !3697

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3698
  %10 = add nuw i64 %9, 1, !dbg !3698
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !3698
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3698
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3698
  call void @llvm.dbg.value(metadata i64 %13, metadata !419, metadata !DIExpression()) #34, !dbg !3688
  br i1 %12, label %14, label %15, !dbg !3701

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !3702
  unreachable, !dbg !3702

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3688
  call void @llvm.dbg.value(metadata i64 %16, metadata !419, metadata !DIExpression()) #34, !dbg !3688
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()) #34, !dbg !3703
  call void @llvm.dbg.value(metadata i64 %16, metadata !3508, metadata !DIExpression()) #34, !dbg !3703
  call void @llvm.dbg.value(metadata i64 1, metadata !3509, metadata !DIExpression()) #34, !dbg !3703
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !3705
  call void @llvm.dbg.value(metadata i8* %17, metadata !3513, metadata !DIExpression()) #34, !dbg !3706
  %18 = icmp eq i8* %17, null, !dbg !3708
  br i1 %18, label %19, label %20, !dbg !3709

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !3710
  unreachable, !dbg !3710

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !416, metadata !DIExpression()) #34, !dbg !3688
  store i64 %16, i64* %1, align 8, !dbg !3711, !tbaa !769
  ret i8* %17, !dbg !3712
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !411 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !416, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64* %1, metadata !417, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i64 %2, metadata !418, metadata !DIExpression()), !dbg !3713
  %4 = load i64, i64* %1, align 8, !dbg !3714, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %4, metadata !419, metadata !DIExpression()), !dbg !3713
  %5 = icmp eq i8* %0, null, !dbg !3715
  br i1 %5, label %6, label %13, !dbg !3716

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3717
  br i1 %7, label %8, label %20, !dbg !3718

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3719
  call void @llvm.dbg.value(metadata i64 %9, metadata !419, metadata !DIExpression()), !dbg !3713
  %10 = icmp ugt i64 %2, 128, !dbg !3721
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %12, metadata !419, metadata !DIExpression()), !dbg !3713
  br label %20, !dbg !3723

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3724
  %15 = add nuw i64 %14, 1, !dbg !3724
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3724
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3724
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3724
  call void @llvm.dbg.value(metadata i64 %18, metadata !419, metadata !DIExpression()), !dbg !3713
  br i1 %17, label %19, label %20, !dbg !3725

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !3726
  unreachable, !dbg !3726

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3713
  call void @llvm.dbg.value(metadata i64 %21, metadata !419, metadata !DIExpression()), !dbg !3713
  call void @llvm.dbg.value(metadata i8* %0, metadata !3505, metadata !DIExpression()) #34, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %21, metadata !3508, metadata !DIExpression()) #34, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %2, metadata !3509, metadata !DIExpression()) #34, !dbg !3727
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !3729
  call void @llvm.dbg.value(metadata i8* %22, metadata !3513, metadata !DIExpression()) #34, !dbg !3730
  %23 = icmp eq i8* %22, null, !dbg !3732
  br i1 %23, label %24, label %25, !dbg !3733

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !3734
  unreachable, !dbg !3734

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !416, metadata !DIExpression()), !dbg !3713
  store i64 %21, i64* %1, align 8, !dbg !3735, !tbaa !769
  ret i8* %22, !dbg !3736
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !423 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !431, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64* %1, metadata !432, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %2, metadata !433, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %3, metadata !434, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %4, metadata !435, metadata !DIExpression()), !dbg !3737
  %6 = load i64, i64* %1, align 8, !dbg !3738, !tbaa !769
  call void @llvm.dbg.value(metadata i64 %6, metadata !436, metadata !DIExpression()), !dbg !3737
  %7 = ashr i64 %6, 1, !dbg !3739
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3739
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3739
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %10, metadata !437, metadata !DIExpression()), !dbg !3737
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %11, metadata !437, metadata !DIExpression()), !dbg !3737
  %12 = icmp sgt i64 %3, -1, !dbg !3742
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3744
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3744
  call void @llvm.dbg.value(metadata i64 %15, metadata !437, metadata !DIExpression()), !dbg !3737
  %16 = icmp slt i64 %4, 0, !dbg !3745
  br i1 %16, label %17, label %30, !dbg !3745

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3745
  br i1 %18, label %19, label %24, !dbg !3745

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3745
  %21 = udiv i64 9223372036854775807, %20, !dbg !3745
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3745
  br i1 %23, label %46, label %43, !dbg !3745

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3745
  br i1 %25, label %43, label %26, !dbg !3745

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3745
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3745
  %29 = icmp ult i64 %28, %15, !dbg !3745
  br i1 %29, label %46, label %43, !dbg !3745

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3745
  br i1 %31, label %43, label %32, !dbg !3745

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3745
  br i1 %33, label %34, label %40, !dbg !3745

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3745
  br i1 %35, label %43, label %36, !dbg !3745

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3745
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3745
  %39 = icmp ult i64 %38, %4, !dbg !3745
  br i1 %39, label %46, label %43, !dbg !3745

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3745
  %42 = icmp ult i64 %41, %15, !dbg !3745
  br i1 %42, label %46, label %43, !dbg !3745

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3737
  %44 = mul i64 %15, %4, !dbg !3745
  call void @llvm.dbg.value(metadata i64 %44, metadata !438, metadata !DIExpression()), !dbg !3737
  %45 = icmp slt i64 %44, 128, !dbg !3745
  br i1 %45, label %46, label %52, !dbg !3745

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !439, metadata !DIExpression()), !dbg !3737
  %48 = sdiv i64 %47, %4, !dbg !3746
  call void @llvm.dbg.value(metadata i64 %48, metadata !437, metadata !DIExpression()), !dbg !3737
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %51, metadata !438, metadata !DIExpression()), !dbg !3737
  br label %52, !dbg !3750

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3737
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3737
  call void @llvm.dbg.value(metadata i64 %54, metadata !438, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %53, metadata !437, metadata !DIExpression()), !dbg !3737
  %55 = icmp eq i8* %0, null, !dbg !3751
  br i1 %55, label %56, label %57, !dbg !3753

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3754, !tbaa !769
  br label %57, !dbg !3755

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3756
  %59 = icmp slt i64 %58, %2, !dbg !3758
  br i1 %59, label %60, label %97, !dbg !3759

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3760
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3760
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3760
  call void @llvm.dbg.value(metadata i64 %63, metadata !437, metadata !DIExpression()), !dbg !3737
  br i1 %62, label %96, label %64, !dbg !3761

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3762
  br i1 %66, label %96, label %67, !dbg !3762

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3763

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3763
  br i1 %69, label %70, label %75, !dbg !3763

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3763
  %72 = udiv i64 9223372036854775807, %71, !dbg !3763
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3763
  br i1 %74, label %96, label %94, !dbg !3763

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3763
  br i1 %76, label %94, label %77, !dbg !3763

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3763
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3763
  %80 = icmp ult i64 %79, %63, !dbg !3763
  br i1 %80, label %96, label %94, !dbg !3763

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3763
  br i1 %82, label %94, label %83, !dbg !3763

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3763
  br i1 %84, label %85, label %91, !dbg !3763

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3763
  br i1 %86, label %94, label %87, !dbg !3763

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3763
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3763
  %90 = icmp ult i64 %89, %4, !dbg !3763
  br i1 %90, label %96, label %94, !dbg !3763

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3763
  %93 = icmp ult i64 %92, %63, !dbg !3763
  br i1 %93, label %96, label %94, !dbg !3763

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3737
  %95 = mul i64 %63, %4, !dbg !3763
  call void @llvm.dbg.value(metadata i64 %95, metadata !438, metadata !DIExpression()), !dbg !3737
  br label %97, !dbg !3764

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !3765
  unreachable, !dbg !3765

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3737
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3737
  call void @llvm.dbg.value(metadata i64 %99, metadata !438, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i64 %98, metadata !437, metadata !DIExpression()), !dbg !3737
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()) #34, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %99, metadata !3585, metadata !DIExpression()) #34, !dbg !3766
  call void @llvm.dbg.value(metadata i8* %0, metadata !3587, metadata !DIExpression()) #34, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %99, metadata !3591, metadata !DIExpression()) #34, !dbg !3768
  %100 = icmp eq i64 %99, 0, !dbg !3770
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3770
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !3771
  call void @llvm.dbg.value(metadata i8* %102, metadata !3513, metadata !DIExpression()) #34, !dbg !3772
  %103 = icmp eq i8* %102, null, !dbg !3774
  br i1 %103, label %104, label %105, !dbg !3775

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !3776
  unreachable, !dbg !3776

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !431, metadata !DIExpression()), !dbg !3737
  store i64 %98, i64* %1, align 8, !dbg !3777, !tbaa !769
  ret i8* %102, !dbg !3778
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3779 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3781, metadata !DIExpression()), !dbg !3782
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()) #34, !dbg !3787
  call void @llvm.dbg.value(metadata i64 1, metadata !3786, metadata !DIExpression()) #34, !dbg !3787
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3789
  call void @llvm.dbg.value(metadata i8* %2, metadata !3513, metadata !DIExpression()) #34, !dbg !3790
  %3 = icmp eq i8* %2, null, !dbg !3792
  br i1 %3, label %4, label %5, !dbg !3793

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3794
  unreachable, !dbg !3794

5:                                                ; preds = %1
  ret i8* %2, !dbg !3795
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3784 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3783, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %1, metadata !3786, metadata !DIExpression()), !dbg !3796
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3797
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3798
  %4 = icmp eq i8* %3, null, !dbg !3800
  br i1 %4, label %5, label %6, !dbg !3801

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3802
  unreachable, !dbg !3802

6:                                                ; preds = %2
  ret i8* %3, !dbg !3803
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3804 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3806, metadata !DIExpression()), !dbg !3807
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()) #34, !dbg !3812
  call void @llvm.dbg.value(metadata i64 1, metadata !3811, metadata !DIExpression()) #34, !dbg !3812
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()) #34, !dbg !3818
  call void @llvm.dbg.value(metadata i64 1, metadata !3817, metadata !DIExpression()) #34, !dbg !3818
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()) #34, !dbg !3818
  call void @llvm.dbg.value(metadata i64 1, metadata !3817, metadata !DIExpression()) #34, !dbg !3818
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !3820
  call void @llvm.dbg.value(metadata i8* %2, metadata !3513, metadata !DIExpression()) #34, !dbg !3821
  %3 = icmp eq i8* %2, null, !dbg !3823
  br i1 %3, label %4, label %5, !dbg !3824

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3825
  unreachable, !dbg !3825

5:                                                ; preds = %1
  ret i8* %2, !dbg !3826
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3809 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3808, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3827
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()) #34, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()) #34, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %0, metadata !3814, metadata !DIExpression()) #34, !dbg !3828
  call void @llvm.dbg.value(metadata i64 %1, metadata !3817, metadata !DIExpression()) #34, !dbg !3828
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !3830
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3831
  %4 = icmp eq i8* %3, null, !dbg !3833
  br i1 %4, label %5, label %6, !dbg !3834

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3835
  unreachable, !dbg !3835

6:                                                ; preds = %2
  ret i8* %3, !dbg !3836
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3841, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 %1, metadata !3842, metadata !DIExpression()), !dbg !3843
  call void @llvm.dbg.value(metadata i64 %1, metadata !3537, metadata !DIExpression()) #34, !dbg !3844
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3846
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3847
  %4 = icmp eq i8* %3, null, !dbg !3849
  br i1 %4, label %5, label %6, !dbg !3850

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3851
  unreachable, !dbg !3851

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3852, metadata !DIExpression()) #34, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()) #34, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %1, metadata !3856, metadata !DIExpression()) #34, !dbg !3857
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3859
  ret i8* %3, !dbg !3860
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3861 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3865, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %1, metadata !3550, metadata !DIExpression()) #34, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %1, metadata !3552, metadata !DIExpression()) #34, !dbg !3870
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3872
  call void @llvm.dbg.value(metadata i8* %3, metadata !3513, metadata !DIExpression()) #34, !dbg !3873
  %4 = icmp eq i8* %3, null, !dbg !3875
  br i1 %4, label %5, label %6, !dbg !3876

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3877
  unreachable, !dbg !3877

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3852, metadata !DIExpression()) #34, !dbg !3878
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()) #34, !dbg !3878
  call void @llvm.dbg.value(metadata i64 %1, metadata !3856, metadata !DIExpression()) #34, !dbg !3878
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3880
  ret i8* %3, !dbg !3881
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3886, metadata !DIExpression()), !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3887, metadata !DIExpression()), !dbg !3889
  %3 = add nsw i64 %1, 1, !dbg !3890
  call void @llvm.dbg.value(metadata i64 %3, metadata !3550, metadata !DIExpression()) #34, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %3, metadata !3552, metadata !DIExpression()) #34, !dbg !3893
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3895
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #34, !dbg !3896
  %5 = icmp eq i8* %4, null, !dbg !3898
  br i1 %5, label %6, label %7, !dbg !3899

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3900
  unreachable, !dbg !3900

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3888, metadata !DIExpression()), !dbg !3889
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3901
  store i8 0, i8* %8, align 1, !dbg !3902, !tbaa !575
  call void @llvm.dbg.value(metadata i8* %4, metadata !3852, metadata !DIExpression()) #34, !dbg !3903
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()) #34, !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3856, metadata !DIExpression()) #34, !dbg !3903
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3905
  ret i8* %4, !dbg !3906
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3907 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3909, metadata !DIExpression()), !dbg !3910
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3911
  %3 = add i64 %2, 1, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %0, metadata !3841, metadata !DIExpression()) #34, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %3, metadata !3842, metadata !DIExpression()) #34, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %3, metadata !3537, metadata !DIExpression()) #34, !dbg !3915
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3917
  call void @llvm.dbg.value(metadata i8* %4, metadata !3513, metadata !DIExpression()) #34, !dbg !3918
  %5 = icmp eq i8* %4, null, !dbg !3920
  br i1 %5, label %6, label %7, !dbg !3921

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3922
  unreachable, !dbg !3922

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3852, metadata !DIExpression()) #34, !dbg !3923
  call void @llvm.dbg.value(metadata i8* %0, metadata !3855, metadata !DIExpression()) #34, !dbg !3923
  call void @llvm.dbg.value(metadata i64 %3, metadata !3856, metadata !DIExpression()) #34, !dbg !3923
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3925
  ret i8* %4, !dbg !3926
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3927 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3932, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %1, metadata !3929, metadata !DIExpression()), !dbg !3933
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.139, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.140, i64 0, i64 0), i32 noundef 5) #34, !dbg !3932
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.141, i64 0, i64 0), i8* noundef %2) #34, !dbg !3932
  %3 = icmp eq i32 %1, 0, !dbg !3932
  tail call void @llvm.assume(i1 %3), !dbg !3932
  tail call void @abort() #36, !dbg !3934
  unreachable, !dbg !3934
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #12 !dbg !3935 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !3973, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %1, metadata !3974, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 0, metadata !3975, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 0, metadata !3976, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8 0, metadata !3977, metadata !DIExpression()), !dbg !3997
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !3998
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #34, !dbg !3998
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !3978, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i8* %1, metadata !3982, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8* %4, metadata !3984, metadata !DIExpression()), !dbg !4000
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4001

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4000
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4002
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !3997
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4003
  call void @llvm.dbg.value(metadata i32 %11, metadata !3975, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %10, metadata !3976, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %9, metadata !3984, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8* %8, metadata !3982, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8 poison, metadata !3977, metadata !DIExpression()), !dbg !3997
  %12 = load i8, i8* %8, align 1, !dbg !4004, !tbaa !575
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4005

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !3975, metadata !DIExpression()), !dbg !3997
  %14 = icmp ult i8* %9, %5, !dbg !4006
  br i1 %14, label %15, label %47, !dbg !4009

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4010
  call void @llvm.dbg.value(metadata i8* %16, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 114, i8* %9, align 1, !dbg !4011, !tbaa !575
  br label %47, !dbg !4012

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !3975, metadata !DIExpression()), !dbg !3997
  %18 = or i32 %10, 576, !dbg !4013
  call void @llvm.dbg.value(metadata i32 %18, metadata !3976, metadata !DIExpression()), !dbg !3997
  %19 = icmp ult i8* %9, %5, !dbg !4014
  br i1 %19, label %20, label %47, !dbg !4016

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4017
  call void @llvm.dbg.value(metadata i8* %21, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 119, i8* %9, align 1, !dbg !4018, !tbaa !575
  br label %47, !dbg !4019

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !3975, metadata !DIExpression()), !dbg !3997
  %23 = or i32 %10, 1088, !dbg !4020
  call void @llvm.dbg.value(metadata i32 %23, metadata !3976, metadata !DIExpression()), !dbg !3997
  %24 = icmp ult i8* %9, %5, !dbg !4021
  br i1 %24, label %25, label %47, !dbg !4023

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4024
  call void @llvm.dbg.value(metadata i8* %26, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 97, i8* %9, align 1, !dbg !4025, !tbaa !575
  br label %47, !dbg !4026

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !3976, metadata !DIExpression()), !dbg !3997
  %28 = icmp ult i8* %9, %5, !dbg !4027
  br i1 %28, label %29, label %47, !dbg !4029

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4030
  call void @llvm.dbg.value(metadata i8* %30, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 98, i8* %9, align 1, !dbg !4031, !tbaa !575
  br label %47, !dbg !4032

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !3975, metadata !DIExpression()), !dbg !3997
  %32 = icmp ult i8* %9, %5, !dbg !4033
  br i1 %32, label %33, label %47, !dbg !4035

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %34, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 43, i8* %9, align 1, !dbg !4037, !tbaa !575
  br label %47, !dbg !4038

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4039
  call void @llvm.dbg.value(metadata i32 %36, metadata !3976, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8 1, metadata !3977, metadata !DIExpression()), !dbg !3997
  br label %47, !dbg !4040

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4041
  call void @llvm.dbg.value(metadata i32 %38, metadata !3976, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8 1, metadata !3977, metadata !DIExpression()), !dbg !3997
  br label %47, !dbg !4042

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #35, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %40, metadata !3985, metadata !DIExpression()), !dbg !4044
  %41 = ptrtoint i8* %5 to i64, !dbg !4045
  %42 = ptrtoint i8* %9 to i64, !dbg !4045
  %43 = sub i64 %41, %42, !dbg !4045
  %44 = icmp ugt i64 %40, %43, !dbg !4047
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4048
  call void @llvm.dbg.value(metadata i64 %45, metadata !3985, metadata !DIExpression()), !dbg !4044
  call void @llvm.dbg.value(metadata i8* %9, metadata !4049, metadata !DIExpression()) #34, !dbg !4054
  call void @llvm.dbg.value(metadata i8* %8, metadata !4052, metadata !DIExpression()) #34, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %45, metadata !4053, metadata !DIExpression()) #34, !dbg !4054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #34, !dbg !4056
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4057
  call void @llvm.dbg.value(metadata i8* %46, metadata !3984, metadata !DIExpression()), !dbg !4000
  br label %53, !dbg !4058

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4000
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !3997
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !3997
  call void @llvm.dbg.value(metadata i32 %51, metadata !3975, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i32 %50, metadata !3976, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.value(metadata i8* %49, metadata !3984, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.value(metadata i8 poison, metadata !3977, metadata !DIExpression()), !dbg !3997
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4059
  call void @llvm.dbg.value(metadata i8* %52, metadata !3982, metadata !DIExpression()), !dbg !4000
  br label %6, !dbg !4060, !llvm.loop !4061

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4000
  call void @llvm.dbg.value(metadata i8* %54, metadata !3984, metadata !DIExpression()), !dbg !4000
  store i8 0, i8* %54, align 1, !dbg !4063, !tbaa !575
  br i1 %7, label %55, label %66, !dbg !4064

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4065
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #34, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %57, metadata !3990, metadata !DIExpression()), !dbg !4067
  %58 = icmp slt i32 %57, 0, !dbg !4068
  br i1 %58, label %68, label %59, !dbg !4070

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #34, !dbg !4071
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !3993, metadata !DIExpression()), !dbg !4067
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4072
  br i1 %61, label %62, label %68, !dbg !4073

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #37, !dbg !4074
  %64 = load i32, i32* %63, align 4, !dbg !4074, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %64, metadata !3994, metadata !DIExpression()), !dbg !4075
  %65 = call i32 @close(i32 noundef %57) #34, !dbg !4076
  store i32 %64, i32* %63, align 4, !dbg !4077, !tbaa !566
  br label %68, !dbg !4078

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4079, metadata !DIExpression()) #34, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %1, metadata !4082, metadata !DIExpression()) #34, !dbg !4083
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #34, !dbg !4085
  br label %68, !dbg !4086

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !3997
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #34, !dbg !4087
  ret %struct._IO_FILE* %69, !dbg !4087
}

; Function Attrs: nofree
declare !dbg !4088 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare !dbg !4091 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #8

declare !dbg !4094 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4096 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4134, metadata !DIExpression()), !dbg !4139
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !4140
  call void @llvm.dbg.value(metadata i1 undef, metadata !4135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4139
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4141, metadata !DIExpression()), !dbg !4144
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4146
  %4 = load i32, i32* %3, align 8, !dbg !4146, !tbaa !4147
  %5 = and i32 %4, 32, !dbg !4148
  %6 = icmp eq i32 %5, 0, !dbg !4148
  call void @llvm.dbg.value(metadata i1 %6, metadata !4137, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4139
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !4149
  %8 = icmp eq i32 %7, 0, !dbg !4150
  call void @llvm.dbg.value(metadata i1 %8, metadata !4138, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4139
  br i1 %6, label %9, label %19, !dbg !4151

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4153
  call void @llvm.dbg.value(metadata i1 %10, metadata !4135, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4139
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4154
  %12 = xor i1 %8, true, !dbg !4154
  %13 = sext i1 %12 to i32, !dbg !4154
  br i1 %11, label %22, label %14, !dbg !4154

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !4155
  %16 = load i32, i32* %15, align 4, !dbg !4155, !tbaa !566
  %17 = icmp ne i32 %16, 9, !dbg !4156
  %18 = sext i1 %17 to i32, !dbg !4157
  br label %22, !dbg !4157

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4158

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !4160
  store i32 0, i32* %21, align 4, !dbg !4162, !tbaa !566
  br label %22, !dbg !4160

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4139
  ret i32 %23, !dbg !4163
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4164 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4203, metadata !DIExpression()), !dbg !4206
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4207
  call void @llvm.dbg.value(metadata i32 %2, metadata !4204, metadata !DIExpression()), !dbg !4206
  %3 = icmp slt i32 %2, 0, !dbg !4208
  br i1 %3, label %4, label %6, !dbg !4210

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4211
  br label %24, !dbg !4212

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4213
  %8 = icmp eq i32 %7, 0, !dbg !4213
  br i1 %8, label %13, label %9, !dbg !4215

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4216
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !4217
  %12 = icmp eq i64 %11, -1, !dbg !4218
  br i1 %12, label %16, label %13, !dbg !4219

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4220
  %15 = icmp eq i32 %14, 0, !dbg !4220
  br i1 %15, label %16, label %18, !dbg !4221

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4203, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4205, metadata !DIExpression()), !dbg !4206
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4222
  call void @llvm.dbg.value(metadata i32 %21, metadata !4205, metadata !DIExpression()), !dbg !4206
  br label %24, !dbg !4223

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !4224
  %20 = load i32, i32* %19, align 4, !dbg !4224, !tbaa !566
  call void @llvm.dbg.value(metadata i32 %20, metadata !4203, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4205, metadata !DIExpression()), !dbg !4206
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4222
  call void @llvm.dbg.value(metadata i32 %21, metadata !4205, metadata !DIExpression()), !dbg !4206
  %22 = icmp eq i32 %20, 0, !dbg !4225
  br i1 %22, label %24, label %23, !dbg !4223

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4227, !tbaa !566
  call void @llvm.dbg.value(metadata i32 -1, metadata !4205, metadata !DIExpression()), !dbg !4206
  br label %24, !dbg !4229

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4206
  ret i32 %25, !dbg !4230
}

; Function Attrs: nofree nounwind
declare !dbg !4231 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !4232 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4233 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4236 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4274, metadata !DIExpression()), !dbg !4275
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4276
  br i1 %2, label %6, label %3, !dbg !4278

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4279
  %5 = icmp eq i32 %4, 0, !dbg !4279
  br i1 %5, label %6, label %8, !dbg !4280

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4281
  br label %17, !dbg !4282

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4283, metadata !DIExpression()) #34, !dbg !4288
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4290
  %10 = load i32, i32* %9, align 8, !dbg !4290, !tbaa !4147
  %11 = and i32 %10, 256, !dbg !4292
  %12 = icmp eq i32 %11, 0, !dbg !4292
  br i1 %12, label %15, label %13, !dbg !4293

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !4294
  br label %15, !dbg !4294

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4295
  br label %17, !dbg !4296

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4275
  ret i32 %18, !dbg !4297
}

; Function Attrs: nofree nounwind
declare !dbg !4298 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4299 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4338, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i64 %1, metadata !4339, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.value(metadata i32 %2, metadata !4340, metadata !DIExpression()), !dbg !4344
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4345
  %5 = load i8*, i8** %4, align 8, !dbg !4345, !tbaa !4346
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4347
  %7 = load i8*, i8** %6, align 8, !dbg !4347, !tbaa !4348
  %8 = icmp eq i8* %5, %7, !dbg !4349
  br i1 %8, label %9, label %28, !dbg !4350

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4351
  %11 = load i8*, i8** %10, align 8, !dbg !4351, !tbaa !831
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4352
  %13 = load i8*, i8** %12, align 8, !dbg !4352, !tbaa !4353
  %14 = icmp eq i8* %11, %13, !dbg !4354
  br i1 %14, label %15, label %28, !dbg !4355

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4356
  %17 = load i8*, i8** %16, align 8, !dbg !4356, !tbaa !4357
  %18 = icmp eq i8* %17, null, !dbg !4358
  br i1 %18, label %19, label %28, !dbg !4359

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !4360
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !4361
  call void @llvm.dbg.value(metadata i64 %21, metadata !4341, metadata !DIExpression()), !dbg !4362
  %22 = icmp eq i64 %21, -1, !dbg !4363
  br i1 %22, label %30, label %23, !dbg !4365

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4366
  %25 = load i32, i32* %24, align 8, !dbg !4367, !tbaa !4147
  %26 = and i32 %25, -17, !dbg !4367
  store i32 %26, i32* %24, align 8, !dbg !4367, !tbaa !4147
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4368
  store i64 %21, i64* %27, align 8, !dbg !4369, !tbaa !4370
  br label %30, !dbg !4371

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4372
  br label %30, !dbg !4373

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4344
  ret i32 %31, !dbg !4374
}

; Function Attrs: nofree nounwind
declare !dbg !4375 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !4378 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4383, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i8* %1, metadata !4384, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i64 %2, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4386, metadata !DIExpression()), !dbg !4388
  %5 = icmp eq i8* %1, null, !dbg !4389
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4391
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.154, i64 0, i64 0), i8* %1, !dbg !4391
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4391
  call void @llvm.dbg.value(metadata i64 %8, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i8* %7, metadata !4384, metadata !DIExpression()), !dbg !4388
  call void @llvm.dbg.value(metadata i32* %6, metadata !4383, metadata !DIExpression()), !dbg !4388
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4392
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4394
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4386, metadata !DIExpression()), !dbg !4388
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !4395
  call void @llvm.dbg.value(metadata i64 %11, metadata !4387, metadata !DIExpression()), !dbg !4388
  %12 = icmp ult i64 %11, -3, !dbg !4396
  br i1 %12, label %13, label %18, !dbg !4398

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !4399
  %15 = icmp eq i32 %14, 0, !dbg !4399
  br i1 %15, label %16, label %30, !dbg !4400

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4401, metadata !DIExpression()) #34, !dbg !4406
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4408, metadata !DIExpression()) #34, !dbg !4413
  call void @llvm.dbg.value(metadata i32 0, metadata !4411, metadata !DIExpression()) #34, !dbg !4413
  call void @llvm.dbg.value(metadata i64 8, metadata !4412, metadata !DIExpression()) #34, !dbg !4413
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4415
  store i64 0, i64* %17, align 1, !dbg !4415
  br label %30, !dbg !4416

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4417
  br i1 %19, label %20, label %21, !dbg !4419

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !4420
  unreachable, !dbg !4420

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4421

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !4423
  br i1 %24, label %30, label %25, !dbg !4424

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4425
  br i1 %26, label %30, label %27, !dbg !4428

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4429, !tbaa !575
  %29 = zext i8 %28 to i32, !dbg !4430
  store i32 %29, i32* %6, align 4, !dbg !4431, !tbaa !566
  br label %30, !dbg !4432

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4388
  ret i64 %31, !dbg !4433
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4434 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !4440 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4442, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i64 %1, metadata !4443, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i64 %2, metadata !4444, metadata !DIExpression()), !dbg !4446
  %4 = icmp eq i64 %2, 0, !dbg !4447
  br i1 %4, label %8, label %5, !dbg !4447

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4447
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4447
  br i1 %7, label %13, label %8, !dbg !4447

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4446
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4446
  %9 = mul i64 %2, %1, !dbg !4447
  call void @llvm.dbg.value(metadata i64 %9, metadata !4445, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.value(metadata i8* %0, metadata !4449, metadata !DIExpression()) #34, !dbg !4453
  call void @llvm.dbg.value(metadata i64 %9, metadata !4452, metadata !DIExpression()) #34, !dbg !4453
  %10 = icmp eq i64 %9, 0, !dbg !4455
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4455
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !4456
  br label %15, !dbg !4457

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4445, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4446
  %14 = tail call i32* @__errno_location() #37, !dbg !4458
  store i32 12, i32* %14, align 4, !dbg !4460, !tbaa !566
  br label %15, !dbg !4461

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4446
  ret i8* %16, !dbg !4462
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4463 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4467, metadata !DIExpression()), !dbg !4472
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4473
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4473
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4468, metadata !DIExpression()), !dbg !4474
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !4475
  %5 = icmp eq i32 %4, 0, !dbg !4475
  br i1 %5, label %6, label %13, !dbg !4477

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4478, metadata !DIExpression()) #34, !dbg !4482
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0), metadata !4481, metadata !DIExpression()) #34, !dbg !4482
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.159, i64 0, i64 0), i64 2), !dbg !4485
  %8 = icmp eq i32 %7, 0, !dbg !4486
  br i1 %8, label %12, label %9, !dbg !4487

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4478, metadata !DIExpression()) #34, !dbg !4488
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), metadata !4481, metadata !DIExpression()) #34, !dbg !4488
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.160, i64 0, i64 0), i64 6), !dbg !4490
  %11 = icmp eq i32 %10, 0, !dbg !4491
  br i1 %11, label %12, label %13, !dbg !4492

12:                                               ; preds = %9, %6
  br label %13, !dbg !4493

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4472
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !4494
  ret i1 %14, !dbg !4494
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4495 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4499, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i8* %1, metadata !4500, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %2, metadata !4501, metadata !DIExpression()), !dbg !4502
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !4503
  ret i32 %4, !dbg !4504
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4505 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4509, metadata !DIExpression()), !dbg !4510
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !4511
  ret i8* %2, !dbg !4512
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4513 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()), !dbg !4517
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4518
  call void @llvm.dbg.value(metadata i8* %2, metadata !4516, metadata !DIExpression()), !dbg !4517
  ret i8* %2, !dbg !4519
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4520 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4522, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i8* %1, metadata !4523, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i64 %2, metadata !4524, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.value(metadata i32 %0, metadata !4515, metadata !DIExpression()) #34, !dbg !4530
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !4532
  call void @llvm.dbg.value(metadata i8* %4, metadata !4516, metadata !DIExpression()) #34, !dbg !4530
  call void @llvm.dbg.value(metadata i8* %4, metadata !4525, metadata !DIExpression()), !dbg !4529
  %5 = icmp eq i8* %4, null, !dbg !4533
  br i1 %5, label %6, label %9, !dbg !4534

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4535
  br i1 %7, label %19, label %8, !dbg !4538

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4539, !tbaa !575
  br label %19, !dbg !4540

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %10, metadata !4526, metadata !DIExpression()), !dbg !4542
  %11 = icmp ult i64 %10, %2, !dbg !4543
  br i1 %11, label %12, label %14, !dbg !4545

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4546
  call void @llvm.dbg.value(metadata i8* %1, metadata !4548, metadata !DIExpression()) #34, !dbg !4553
  call void @llvm.dbg.value(metadata i8* %4, metadata !4551, metadata !DIExpression()) #34, !dbg !4553
  call void @llvm.dbg.value(metadata i64 %13, metadata !4552, metadata !DIExpression()) #34, !dbg !4553
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !4555
  br label %19, !dbg !4556

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4557
  br i1 %15, label %19, label %16, !dbg !4560

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4561
  call void @llvm.dbg.value(metadata i8* %1, metadata !4548, metadata !DIExpression()) #34, !dbg !4563
  call void @llvm.dbg.value(metadata i8* %4, metadata !4551, metadata !DIExpression()) #34, !dbg !4563
  call void @llvm.dbg.value(metadata i64 %17, metadata !4552, metadata !DIExpression()) #34, !dbg !4563
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !4565
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4566
  store i8 0, i8* %18, align 1, !dbg !4567, !tbaa !575
  br label %19, !dbg !4568

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4569
  ret i32 %20, !dbg !4570
}

attributes #0 = { noreturn nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #3 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #4 = { inlinehint nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #8 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #9 = { noreturn nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #10 = { nofree nounwind readonly "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #11 = { mustprogress nofree nosync nounwind readnone willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #12 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind readonly willreturn }
attributes #23 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { argmemonly nofree nounwind willreturn writeonly }
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }
attributes #42 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9, !143, !148, !155, !338, !358, !196, !213, !223, !255, !360, !400, !330, !407, !441, !443, !445, !447, !449, !451, !344, !453, !456, !458, !460}
!llvm.ident = !{!462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462, !462}
!llvm.module.flags = !{!463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !51, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !60)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !49, globals: !59, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/users.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2e4916078fe75a2e005e9df4bd6e108b")
!11 = !{!12, !20, !35}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 305, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "./lib/readutmp.h", directory: "/src", checksumkind: CSK_MD5, checksum: "dbf57f6f8baa17fafca98ee518780aad")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "READ_UTMP_CHECK_PIDS", value: 1)
!17 = !DIEnumerator(name: "READ_UTMP_USER_PROCESS", value: 2)
!18 = !DIEnumerator(name: "READ_UTMP_BOOT_TIME", value: 4)
!19 = !DIEnumerator(name: "READ_UTMP_NO_BOOT_TIME", value: 8)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !14, size: 32, elements: !22)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!23 = !DIEnumerator(name: "_ISupper", value: 256)
!24 = !DIEnumerator(name: "_ISlower", value: 512)
!25 = !DIEnumerator(name: "_ISalpha", value: 1024)
!26 = !DIEnumerator(name: "_ISdigit", value: 2048)
!27 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!28 = !DIEnumerator(name: "_ISspace", value: 8192)
!29 = !DIEnumerator(name: "_ISprint", value: 16384)
!30 = !DIEnumerator(name: "_ISgraph", value: 32768)
!31 = !DIEnumerator(name: "_ISblank", value: 1)
!32 = !DIEnumerator(name: "_IScntrl", value: 2)
!33 = !DIEnumerator(name: "_ISpunct", value: 4)
!34 = !DIEnumerator(name: "_ISalnum", value: 8)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !36, line: 42, baseType: !14, size: 32, elements: !37)
!36 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!38 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!39 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!40 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!41 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!42 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!43 = !DIEnumerator(name: "c_quoting_style", value: 5)
!44 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!45 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!46 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!47 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!48 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!49 = !{!6, !50, !51, !52, !53, !56, !57}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!55 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!59 = !{!0}
!60 = !{!61, !62, !63, !66, !68, !69, !70, !74, !75, !76, !77, !79, !135, !136, !137, !139, !140}
!61 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!62 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!63 = !DILocalVariable(name: "term", scope: !64, file: !3, line: 585, type: !6)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 582, column: 5)
!65 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!66 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !67)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!69 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!70 = !DILocalVariable(name: "s", scope: !71, file: !3, line: 608, type: !6)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 605, column: 5)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 604, column: 12)
!73 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!74 = !DILocalVariable(name: "spaces", scope: !71, file: !3, line: 609, type: !53)
!75 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !53)
!76 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!77 = !DILocalVariable(name: "__ptr", scope: !78, file: !3, line: 644, type: !6)
!78 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!79 = !DILocalVariable(name: "__stream", scope: !78, file: !3, line: 644, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !51, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!108 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !83, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !84, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !83, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !84, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !83, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !84, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !83, file: !84, line: 93, baseType: !102, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DILocalVariable(name: "__cnt", scope: !78, file: !3, line: 644, type: !53)
!136 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!137 = !DILocalVariable(name: "__ptr", scope: !138, file: !3, line: 686, type: !6)
!138 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!139 = !DILocalVariable(name: "__stream", scope: !138, file: !3, line: 686, type: !80)
!140 = !DILocalVariable(name: "__cnt", scope: !138, file: !3, line: 686, type: !53)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "Version", scope: !143, file: !144, line: 3, type: !6, isLocal: false, isDefinition: true)
!143 = distinct !DICompileUnit(language: DW_LANG_C99, file: !144, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !145, splitDebugInlining: false, nameTableKind: None)
!144 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!145 = !{!141}
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "file_name", scope: !148, file: !149, line: 45, type: !6, isLocal: true, isDefinition: true)
!148 = distinct !DICompileUnit(language: DW_LANG_C99, file: !149, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !150, splitDebugInlining: false, nameTableKind: None)
!149 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!150 = !{!146, !151}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !148, file: !149, line: 55, type: !67, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !155, file: !156, line: 66, type: !191, isLocal: false, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !157, globals: !158, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!157 = !{!50, !56}
!158 = !{!159, !185, !153, !187, !189}
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "old_file_name", scope: !161, file: !156, line: 304, type: !6, isLocal: true, isDefinition: true)
!161 = distinct !DISubprogram(name: "verror_at_line", scope: !156, file: !156, line: 298, type: !162, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !178)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !51, !51, !6, !14, !6, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !165, line: 52, baseType: !166)
!165 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !167, line: 32, baseType: !168)
!167 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !169, baseType: !170)
!169 = !DIFile(filename: "lib/error.c", directory: "/src")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !171, size: 256, elements: !172)
!171 = !DINamespace(name: "std", scope: null)
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !170, file: !169, baseType: !50, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !170, file: !169, baseType: !50, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !170, file: !169, baseType: !50, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !170, file: !169, baseType: !51, size: 32, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !170, file: !169, baseType: !51, size: 32, offset: 224)
!178 = !{!179, !180, !181, !182, !183, !184}
!179 = !DILocalVariable(name: "status", arg: 1, scope: !161, file: !156, line: 298, type: !51)
!180 = !DILocalVariable(name: "errnum", arg: 2, scope: !161, file: !156, line: 298, type: !51)
!181 = !DILocalVariable(name: "file_name", arg: 3, scope: !161, file: !156, line: 298, type: !6)
!182 = !DILocalVariable(name: "line_number", arg: 4, scope: !161, file: !156, line: 298, type: !14)
!183 = !DILocalVariable(name: "message", arg: 5, scope: !161, file: !156, line: 298, type: !6)
!184 = !DILocalVariable(name: "args", arg: 6, scope: !161, file: !156, line: 298, type: !164)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "old_line_number", scope: !161, file: !156, line: 305, type: !14, isLocal: true, isDefinition: true)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "error_message_count", scope: !155, file: !156, line: 69, type: !14, isLocal: false, isDefinition: true)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !155, file: !156, line: 295, type: !51, isLocal: false, isDefinition: true)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null}
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "long_options", scope: !196, file: !197, line: 34, type: !199, isLocal: true, isDefinition: true)
!196 = distinct !DICompileUnit(language: DW_LANG_C99, file: !197, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !198, splitDebugInlining: false, nameTableKind: None)
!197 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!198 = !{!194}
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 768, elements: !209)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !202, line: 50, size: 256, elements: !203)
!202 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!203 = !{!204, !205, !206, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !202, line: 52, baseType: !6, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !201, file: !202, line: 55, baseType: !51, size: 32, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !201, file: !202, line: 56, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !201, file: !202, line: 57, baseType: !51, size: 32, offset: 192)
!209 = !{!210}
!210 = !DISubrange(count: 3)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "program_name", scope: !213, file: !214, line: 31, type: !6, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !215, globals: !216, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!215 = !{!58}
!216 = !{!211}
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "utf07FF", scope: !219, file: !220, line: 46, type: !250, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "proper_name_lite", scope: !220, file: !220, line: 38, type: !221, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !225)
!220 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!221 = !DISubroutineType(types: !222)
!222 = !{!6, !6, !6}
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !224, splitDebugInlining: false, nameTableKind: None)
!224 = !{!217}
!225 = !{!226, !227, !228, !229, !234}
!226 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !219, file: !220, line: 38, type: !6)
!227 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !219, file: !220, line: 38, type: !6)
!228 = !DILocalVariable(name: "translation", scope: !219, file: !220, line: 40, type: !6)
!229 = !DILocalVariable(name: "w", scope: !219, file: !220, line: 47, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !231, line: 37, baseType: !232)
!231 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !107, line: 57, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !14)
!234 = !DILocalVariable(name: "mbs", scope: !219, file: !220, line: 48, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !239)
!238 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !239, file: !238, line: 15, baseType: !51, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !239, file: !238, line: 20, baseType: !243, size: 32, offset: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !238, line: 16, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !243, file: !238, line: 18, baseType: !14, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !243, file: !238, line: 19, baseType: !247, size: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 4)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 2)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !255, file: !256, line: 76, type: !324, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !263, globals: !264, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!257 = !{!35, !258, !20}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !36, line: 254, baseType: !14, size: 32, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!261 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!262 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!263 = !{!51, !52, !53}
!264 = !{!253, !265, !271, !283, !285, !290, !313, !320, !322}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !255, file: !256, line: 92, type: !267, isLocal: false, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 320, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!269 = !{!270}
!270 = !DISubrange(count: 10)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !255, file: !256, line: 1040, type: !273, isLocal: false, isDefinition: true)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !256, line: 56, size: 448, elements: !274)
!274 = !{!275, !276, !277, !281, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !273, file: !256, line: 59, baseType: !35, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !256, line: 62, baseType: !51, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !273, file: !256, line: 66, baseType: !278, size: 256, offset: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 256, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !273, file: !256, line: 69, baseType: !6, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !273, file: !256, line: 72, baseType: !6, size: 64, offset: 384)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !255, file: !256, line: 107, type: !273, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "slot0", scope: !255, file: !256, line: 831, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 256)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "quote", scope: !292, file: !256, line: 228, type: !311, isLocal: true, isDefinition: true)
!292 = distinct !DISubprogram(name: "gettext_quote", scope: !256, file: !256, line: 197, type: !293, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!6, !6, !35}
!295 = !{!296, !297, !298, !299, !300}
!296 = !DILocalVariable(name: "msgid", arg: 1, scope: !292, file: !256, line: 197, type: !6)
!297 = !DILocalVariable(name: "s", arg: 2, scope: !292, file: !256, line: 197, type: !35)
!298 = !DILocalVariable(name: "translation", scope: !292, file: !256, line: 199, type: !6)
!299 = !DILocalVariable(name: "w", scope: !292, file: !256, line: 229, type: !230)
!300 = !DILocalVariable(name: "mbs", scope: !292, file: !256, line: 230, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !303, file: !238, line: 15, baseType: !51, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !303, file: !238, line: 20, baseType: !307, size: 32, offset: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !238, line: 16, size: 32, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !307, file: !238, line: 18, baseType: !14, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !307, file: !238, line: 19, baseType: !247, size: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !312)
!312 = !{!252, !249}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "slotvec", scope: !255, file: !256, line: 834, type: !315, isLocal: true, isDefinition: true)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !256, line: 823, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !256, line: 825, baseType: !53, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !316, file: !256, line: 826, baseType: !58, size: 64, offset: 64)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "nslots", scope: !255, file: !256, line: 832, type: !51, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "slotvec0", scope: !255, file: !256, line: 833, type: !316, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 704, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!326 = !{!327}
!327 = !DISubrange(count: 11)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !330, file: !331, line: 26, type: !333, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !332, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!332 = !{!328}
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 47)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "exit_failure", scope: !338, file: !339, line: 24, type: !341, isLocal: false, isDefinition: true)
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !340, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!340 = !{!336}
!341 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !51)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "internal_state", scope: !344, file: !345, line: 97, type: !348, isLocal: true, isDefinition: true)
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !346, globals: !347, splitDebugInlining: false, nameTableKind: None)
!345 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!346 = !{!50, !53, !56}
!347 = !{!342}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !350, file: !238, line: 15, baseType: !51, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !350, file: !238, line: 20, baseType: !354, size: 32, offset: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !238, line: 16, size: 32, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !354, file: !238, line: 18, baseType: !14, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !354, file: !238, line: 19, baseType: !247, size: 32)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/readutmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "da68be8ee1104a39b5ac94d0be1eef81")
!362 = !{!12}
!363 = !{!58, !50, !364, !398, !53}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmpx", file: !367, line: 55, size: 3200, elements: !368)
!367 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "d076be7f45ef793a8c3c4dd5282b1b1a")
!368 = !{!369, !371, !373, !377, !378, !379, !380, !385, !386, !394, !397}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !366, file: !367, line: 57, baseType: !370, size: 16)
!370 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !366, file: !367, line: 58, baseType: !372, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !107, line: 154, baseType: !51)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !366, file: !367, line: 59, baseType: !374, size: 256, offset: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !366, file: !367, line: 61, baseType: !247, size: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !366, file: !367, line: 63, baseType: !374, size: 256, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !366, file: !367, line: 65, baseType: !287, size: 2048, offset: 608)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !366, file: !367, line: 67, baseType: !381, size: 32, offset: 2656)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__exit_status", file: !367, line: 42, size: 32, elements: !382)
!382 = !{!383, !384}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !381, file: !367, line: 45, baseType: !370, size: 16)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !381, file: !367, line: 46, baseType: !370, size: 16, offset: 16)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !366, file: !367, line: 81, baseType: !108, size: 64, offset: 2688)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ut_tv", scope: !366, file: !367, line: 82, baseType: !387, size: 128, offset: 2752)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !388, line: 8, size: 128, elements: !389)
!388 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!389 = !{!390, !392}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !387, file: !388, line: 14, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !107, line: 160, baseType: !108)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !387, file: !388, line: 15, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !107, line: 162, baseType: !108)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ut_addr_v6", scope: !366, file: !367, line: 84, baseType: !395, size: 128, offset: 2880)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !248)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !107, line: 41, baseType: !51)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !366, file: !367, line: 85, baseType: !132, size: 160, offset: 3008)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !399, line: 87, baseType: !108)
!399 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !402, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!402 = !{!403}
!403 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !401, line: 40, baseType: !14, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!406 = !{!50}
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !409, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!409 = !{!410, !422}
!410 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !411, file: !408, line: 188, baseType: !14, size: 32, elements: !420)
!411 = distinct !DISubprogram(name: "x2nrealloc", scope: !408, file: !408, line: 176, type: !412, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !415)
!412 = !DISubroutineType(types: !413)
!413 = !{!50, !50, !414, !53}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!415 = !{!416, !417, !418, !419}
!416 = !DILocalVariable(name: "p", arg: 1, scope: !411, file: !408, line: 176, type: !50)
!417 = !DILocalVariable(name: "pn", arg: 2, scope: !411, file: !408, line: 176, type: !414)
!418 = !DILocalVariable(name: "s", arg: 3, scope: !411, file: !408, line: 176, type: !53)
!419 = !DILocalVariable(name: "n", scope: !411, file: !408, line: 178, type: !53)
!420 = !{!421}
!421 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !423, file: !408, line: 228, baseType: !14, size: 32, elements: !420)
!423 = distinct !DISubprogram(name: "xpalloc", scope: !408, file: !408, line: 223, type: !424, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !430)
!424 = !DISubroutineType(types: !425)
!425 = !{!50, !50, !426, !427, !429, !427}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !428, line: 130, baseType: !429)
!428 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !54, line: 35, baseType: !108)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439}
!431 = !DILocalVariable(name: "pa", arg: 1, scope: !423, file: !408, line: 223, type: !50)
!432 = !DILocalVariable(name: "pn", arg: 2, scope: !423, file: !408, line: 223, type: !426)
!433 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !423, file: !408, line: 223, type: !427)
!434 = !DILocalVariable(name: "n_max", arg: 4, scope: !423, file: !408, line: 223, type: !429)
!435 = !DILocalVariable(name: "s", arg: 5, scope: !423, file: !408, line: 223, type: !427)
!436 = !DILocalVariable(name: "n0", scope: !423, file: !408, line: 230, type: !427)
!437 = !DILocalVariable(name: "n", scope: !423, file: !408, line: 237, type: !427)
!438 = !DILocalVariable(name: "nbytes", scope: !423, file: !408, line: 248, type: !427)
!439 = !DILocalVariable(name: "adjusted_nbytes", scope: !423, file: !408, line: 252, type: !427)
!440 = !{!58, !50, !67, !108, !55}
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!445 = distinct !DICompileUnit(language: DW_LANG_C99, file: !446, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!446 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!453 = distinct !DICompileUnit(language: DW_LANG_C99, file: !454, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !455, splitDebugInlining: false, nameTableKind: None)
!454 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!455 = !{!67, !55, !50}
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!458 = distinct !DICompileUnit(language: DW_LANG_C99, file: !459, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!459 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!460 = distinct !DICompileUnit(language: DW_LANG_C99, file: !461, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !406, splitDebugInlining: false, nameTableKind: None)
!461 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!462 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!463 = !{i32 7, !"Dwarf Version", i32 5}
!464 = !{i32 2, !"Debug Info Version", i32 3}
!465 = !{i32 1, !"wchar_size", i32 4}
!466 = !{i32 1, !"branch-target-enforcement", i32 0}
!467 = !{i32 1, !"sign-return-address", i32 0}
!468 = !{i32 1, !"sign-return-address-all", i32 0}
!469 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!470 = !{i32 7, !"PIC Level", i32 2}
!471 = !{i32 7, !"PIE Level", i32 2}
!472 = !{i32 7, !"uwtable", i32 1}
!473 = !{i32 7, !"frame-pointer", i32 1}
!474 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 96, type: !475, scopeLine: 97, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !477)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !51}
!477 = !{!478}
!478 = !DILocalVariable(name: "status", arg: 1, scope: !474, file: !10, line: 96, type: !51)
!479 = !DILocation(line: 0, scope: !474)
!480 = !DILocation(line: 98, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !474, file: !10, line: 98, column: 7)
!482 = !DILocation(line: 98, column: 7, scope: !474)
!483 = !DILocation(line: 99, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !481, file: !10, line: 99, column: 5)
!485 = !{!486, !486, i64 0}
!486 = !{!"any pointer", !487, i64 0}
!487 = !{!"omnipotent char", !488, i64 0}
!488 = !{!"Simple C/C++ TBAA"}
!489 = !DILocation(line: 102, column: 7, scope: !490)
!490 = distinct !DILexicalBlock(scope: !481, file: !10, line: 101, column: 5)
!491 = !DILocation(line: 103, column: 7, scope: !490)
!492 = !DILocation(line: 109, column: 7, scope: !490)
!493 = !DILocation(line: 110, column: 7, scope: !490)
!494 = !DILocalVariable(name: "program", arg: 1, scope: !495, file: !3, line: 836, type: !6)
!495 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !496, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !6}
!498 = !{!494, !499, !508, !509, !511, !512}
!499 = !DILocalVariable(name: "infomap", scope: !495, file: !3, line: 838, type: !500)
!500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !501, size: 896, elements: !506)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !495, file: !3, line: 838, size: 128, elements: !503)
!503 = !{!504, !505}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !502, file: !3, line: 838, baseType: !6, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !502, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!506 = !{!507}
!507 = !DISubrange(count: 7)
!508 = !DILocalVariable(name: "node", scope: !495, file: !3, line: 848, type: !6)
!509 = !DILocalVariable(name: "map_prog", scope: !495, file: !3, line: 849, type: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!511 = !DILocalVariable(name: "lc_messages", scope: !495, file: !3, line: 861, type: !6)
!512 = !DILocalVariable(name: "url_program", scope: !495, file: !3, line: 874, type: !6)
!513 = !DILocation(line: 0, scope: !495, inlinedAt: !514)
!514 = distinct !DILocation(line: 111, column: 7, scope: !490)
!515 = !DILocation(line: 838, column: 3, scope: !495, inlinedAt: !514)
!516 = !DILocation(line: 838, column: 67, scope: !495, inlinedAt: !514)
!517 = !DILocation(line: 849, column: 36, scope: !495, inlinedAt: !514)
!518 = !DILocation(line: 851, column: 3, scope: !495, inlinedAt: !514)
!519 = !DILocalVariable(name: "__s1", arg: 1, scope: !520, file: !521, line: 1359, type: !6)
!520 = distinct !DISubprogram(name: "streq", scope: !521, file: !521, line: 1359, type: !522, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !524)
!521 = !DIFile(filename: "./lib/string.h", directory: "/src")
!522 = !DISubroutineType(types: !523)
!523 = !{!67, !6, !6}
!524 = !{!519, !525}
!525 = !DILocalVariable(name: "__s2", arg: 2, scope: !520, file: !521, line: 1359, type: !6)
!526 = !DILocation(line: 0, scope: !520, inlinedAt: !527)
!527 = distinct !DILocation(line: 851, column: 33, scope: !495, inlinedAt: !514)
!528 = !DILocation(line: 1361, column: 11, scope: !520, inlinedAt: !527)
!529 = !DILocation(line: 1361, column: 10, scope: !520, inlinedAt: !527)
!530 = !DILocation(line: 852, column: 13, scope: !495, inlinedAt: !514)
!531 = !DILocation(line: 851, column: 20, scope: !495, inlinedAt: !514)
!532 = !{!533, !486, i64 0}
!533 = !{!"infomap", !486, i64 0, !486, i64 8}
!534 = !DILocation(line: 851, column: 10, scope: !495, inlinedAt: !514)
!535 = !DILocation(line: 851, column: 28, scope: !495, inlinedAt: !514)
!536 = distinct !{!536, !518, !530, !537}
!537 = !{!"llvm.loop.mustprogress"}
!538 = !DILocation(line: 854, column: 17, scope: !539, inlinedAt: !514)
!539 = distinct !DILexicalBlock(scope: !495, file: !3, line: 854, column: 7)
!540 = !{!533, !486, i64 8}
!541 = !DILocation(line: 854, column: 7, scope: !539, inlinedAt: !514)
!542 = !DILocation(line: 854, column: 7, scope: !495, inlinedAt: !514)
!543 = !DILocation(line: 857, column: 3, scope: !495, inlinedAt: !514)
!544 = !DILocation(line: 861, column: 29, scope: !495, inlinedAt: !514)
!545 = !DILocation(line: 862, column: 7, scope: !546, inlinedAt: !514)
!546 = distinct !DILexicalBlock(scope: !495, file: !3, line: 862, column: 7)
!547 = !DILocation(line: 862, column: 19, scope: !546, inlinedAt: !514)
!548 = !DILocation(line: 862, column: 22, scope: !546, inlinedAt: !514)
!549 = !DILocation(line: 862, column: 7, scope: !495, inlinedAt: !514)
!550 = !DILocation(line: 868, column: 7, scope: !551, inlinedAt: !514)
!551 = distinct !DILexicalBlock(scope: !546, file: !3, line: 863, column: 5)
!552 = !DILocation(line: 870, column: 5, scope: !551, inlinedAt: !514)
!553 = !DILocation(line: 0, scope: !520, inlinedAt: !554)
!554 = distinct !DILocation(line: 874, column: 29, scope: !495, inlinedAt: !514)
!555 = !DILocation(line: 875, column: 3, scope: !495, inlinedAt: !514)
!556 = !DILocation(line: 877, column: 3, scope: !495, inlinedAt: !514)
!557 = !DILocation(line: 879, column: 1, scope: !495, inlinedAt: !514)
!558 = !DILocation(line: 113, column: 3, scope: !474)
!559 = !DISubprogram(name: "dcgettext", scope: !560, file: !560, line: 51, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!560 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!561 = !DISubroutineType(types: !562)
!562 = !{!58, !6, !6, !51}
!563 = !{}
!564 = !DILocation(line: 0, scope: !2)
!565 = !DILocation(line: 581, column: 7, scope: !65)
!566 = !{!567, !567, i64 0}
!567 = !{!"int", !487, i64 0}
!568 = !DILocation(line: 581, column: 19, scope: !65)
!569 = !DILocation(line: 581, column: 7, scope: !2)
!570 = !DILocation(line: 585, column: 26, scope: !64)
!571 = !DILocation(line: 0, scope: !64)
!572 = !DILocation(line: 586, column: 23, scope: !64)
!573 = !DILocation(line: 586, column: 28, scope: !64)
!574 = !DILocation(line: 586, column: 32, scope: !64)
!575 = !{!487, !487, i64 0}
!576 = !DILocation(line: 586, column: 38, scope: !64)
!577 = !DILocation(line: 0, scope: !520, inlinedAt: !578)
!578 = distinct !DILocation(line: 586, column: 41, scope: !64)
!579 = !DILocation(line: 1361, column: 11, scope: !520, inlinedAt: !578)
!580 = !DILocation(line: 1361, column: 10, scope: !520, inlinedAt: !578)
!581 = !DILocation(line: 586, column: 19, scope: !64)
!582 = !DILocation(line: 587, column: 5, scope: !64)
!583 = !DILocation(line: 588, column: 7, scope: !584)
!584 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!585 = !DILocation(line: 588, column: 7, scope: !2)
!586 = !DILocation(line: 590, column: 7, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !3, line: 589, column: 5)
!588 = !DILocation(line: 591, column: 7, scope: !587)
!589 = !DILocation(line: 595, column: 37, scope: !2)
!590 = !DILocation(line: 595, column: 35, scope: !2)
!591 = !DILocation(line: 596, column: 29, scope: !2)
!592 = !DILocation(line: 597, column: 8, scope: !73)
!593 = !DILocation(line: 597, column: 7, scope: !2)
!594 = !DILocation(line: 604, column: 24, scope: !72)
!595 = !DILocation(line: 604, column: 12, scope: !73)
!596 = !DILocation(line: 0, scope: !71)
!597 = !DILocation(line: 610, column: 16, scope: !71)
!598 = !DILocation(line: 610, column: 7, scope: !71)
!599 = !DILocation(line: 611, column: 21, scope: !71)
!600 = !{!601, !601, i64 0}
!601 = !{!"short", !487, i64 0}
!602 = !DILocation(line: 611, column: 19, scope: !71)
!603 = !DILocation(line: 611, column: 16, scope: !71)
!604 = !DILocation(line: 610, column: 30, scope: !71)
!605 = distinct !{!605, !598, !599, !537}
!606 = !DILocation(line: 612, column: 18, scope: !607)
!607 = distinct !DILexicalBlock(scope: !71, file: !3, line: 612, column: 11)
!608 = !DILocation(line: 612, column: 11, scope: !71)
!609 = !DILocation(line: 620, column: 23, scope: !2)
!610 = !DILocation(line: 625, column: 39, scope: !2)
!611 = !DILocation(line: 626, column: 3, scope: !2)
!612 = !DILocation(line: 626, column: 10, scope: !2)
!613 = !DILocation(line: 626, column: 21, scope: !2)
!614 = !DILocation(line: 628, column: 44, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 628, column: 11)
!616 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!617 = !DILocation(line: 628, column: 32, scope: !615)
!618 = !DILocation(line: 628, column: 49, scope: !615)
!619 = !DILocation(line: 628, column: 11, scope: !616)
!620 = !DILocation(line: 630, column: 11, scope: !621)
!621 = distinct !DILexicalBlock(scope: !616, file: !3, line: 630, column: 11)
!622 = !DILocation(line: 630, column: 11, scope: !616)
!623 = !DILocation(line: 632, column: 26, scope: !624)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 632, column: 15)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 631, column: 9)
!626 = !DILocation(line: 632, column: 34, scope: !624)
!627 = !DILocation(line: 632, column: 37, scope: !624)
!628 = !DILocation(line: 632, column: 15, scope: !625)
!629 = !DILocation(line: 636, column: 29, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !3, line: 636, column: 15)
!631 = !DILocation(line: 640, column: 16, scope: !616)
!632 = distinct !{!632, !611, !633, !537}
!633 = !DILocation(line: 641, column: 5, scope: !2)
!634 = !DILocation(line: 644, column: 3, scope: !2)
!635 = !DILocation(line: 0, scope: !520, inlinedAt: !636)
!636 = distinct !DILocation(line: 648, column: 31, scope: !2)
!637 = !DILocation(line: 0, scope: !520, inlinedAt: !638)
!638 = distinct !DILocation(line: 649, column: 31, scope: !2)
!639 = !DILocation(line: 0, scope: !520, inlinedAt: !640)
!640 = distinct !DILocation(line: 650, column: 31, scope: !2)
!641 = !DILocation(line: 0, scope: !520, inlinedAt: !642)
!642 = distinct !DILocation(line: 651, column: 31, scope: !2)
!643 = !DILocation(line: 0, scope: !520, inlinedAt: !644)
!644 = distinct !DILocation(line: 652, column: 31, scope: !2)
!645 = !DILocation(line: 0, scope: !520, inlinedAt: !646)
!646 = distinct !DILocation(line: 653, column: 31, scope: !2)
!647 = !DILocation(line: 0, scope: !520, inlinedAt: !648)
!648 = distinct !DILocation(line: 654, column: 31, scope: !2)
!649 = !DILocation(line: 0, scope: !520, inlinedAt: !650)
!650 = distinct !DILocation(line: 655, column: 31, scope: !2)
!651 = !DILocation(line: 0, scope: !520, inlinedAt: !652)
!652 = distinct !DILocation(line: 656, column: 31, scope: !2)
!653 = !DILocation(line: 0, scope: !520, inlinedAt: !654)
!654 = distinct !DILocation(line: 657, column: 31, scope: !2)
!655 = !DILocation(line: 663, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!657 = !DILocation(line: 664, column: 7, scope: !656)
!658 = !DILocation(line: 664, column: 10, scope: !656)
!659 = !DILocation(line: 663, column: 7, scope: !2)
!660 = !DILocation(line: 669, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !656, file: !3, line: 665, column: 5)
!662 = !DILocation(line: 671, column: 5, scope: !661)
!663 = !DILocation(line: 676, column: 7, scope: !664)
!664 = distinct !DILexicalBlock(scope: !656, file: !3, line: 673, column: 5)
!665 = !DILocation(line: 679, column: 3, scope: !2)
!666 = !DILocation(line: 683, column: 3, scope: !2)
!667 = !DILocation(line: 686, column: 3, scope: !2)
!668 = !DILocation(line: 688, column: 3, scope: !2)
!669 = !DILocation(line: 691, column: 3, scope: !2)
!670 = !DILocation(line: 695, column: 3, scope: !2)
!671 = !DILocation(line: 696, column: 1, scope: !2)
!672 = !DISubprogram(name: "setlocale", scope: !673, file: !673, line: 122, type: !674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!673 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!674 = !DISubroutineType(types: !675)
!675 = !{!58, !51, !6}
!676 = !DISubprogram(name: "fputs_unlocked", scope: !165, file: !165, line: 691, type: !677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!677 = !DISubroutineType(types: !678)
!678 = !{!51, !679, !680}
!679 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!680 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!681 = !DISubprogram(name: "getenv", scope: !682, file: !682, line: 641, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!682 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!683 = !DISubroutineType(types: !684)
!684 = !{!58, !6}
!685 = !DISubprogram(name: "fwrite_unlocked", scope: !165, file: !165, line: 704, type: !686, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!686 = !DISubroutineType(types: !687)
!687 = !{!53, !688, !53, !53, !680}
!688 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!691 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 117, type: !692, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !694)
!692 = !DISubroutineType(types: !693)
!693 = !{!51, !51, !57}
!694 = !{!695, !696}
!695 = !DILocalVariable(name: "argc", arg: 1, scope: !691, file: !10, line: 117, type: !51)
!696 = !DILocalVariable(name: "argv", arg: 2, scope: !691, file: !10, line: 117, type: !57)
!697 = !DILocation(line: 0, scope: !691)
!698 = !DILocation(line: 120, column: 21, scope: !691)
!699 = !DILocation(line: 120, column: 3, scope: !691)
!700 = !DILocation(line: 121, column: 3, scope: !691)
!701 = !DILocation(line: 122, column: 3, scope: !691)
!702 = !DILocation(line: 123, column: 3, scope: !691)
!703 = !DILocation(line: 125, column: 3, scope: !691)
!704 = !DILocation(line: 128, column: 36, scope: !691)
!705 = !DILocation(line: 128, column: 58, scope: !691)
!706 = !DILocation(line: 127, column: 3, scope: !691)
!707 = !DILocation(line: 131, column: 18, scope: !691)
!708 = !DILocation(line: 131, column: 16, scope: !691)
!709 = !DILocation(line: 131, column: 3, scope: !691)
!710 = !DILocation(line: 134, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !691, file: !10, line: 132, column: 5)
!712 = !DILocation(line: 135, column: 7, scope: !711)
!713 = !DILocation(line: 138, column: 14, scope: !711)
!714 = !DILocation(line: 138, column: 7, scope: !711)
!715 = !DILocation(line: 139, column: 7, scope: !711)
!716 = !DILocation(line: 142, column: 7, scope: !711)
!717 = !DILocation(line: 143, column: 7, scope: !711)
!718 = !DILocation(line: 146, column: 3, scope: !691)
!719 = !DISubprogram(name: "bindtextdomain", scope: !560, file: !560, line: 86, type: !720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!720 = !DISubroutineType(types: !721)
!721 = !{!58, !6, !6}
!722 = !DISubprogram(name: "textdomain", scope: !560, file: !560, line: 82, type: !683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!723 = !DISubprogram(name: "atexit", scope: !682, file: !682, line: 602, type: !724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!724 = !DISubroutineType(types: !725)
!725 = !{!51, !191}
!726 = distinct !DISubprogram(name: "users", scope: !10, file: !10, line: 82, type: !727, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !729)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !6, !51}
!729 = !{!730, !731, !732, !733}
!730 = !DILocalVariable(name: "filename", arg: 1, scope: !726, file: !10, line: 82, type: !6)
!731 = !DILocalVariable(name: "options", arg: 2, scope: !726, file: !10, line: 82, type: !51)
!732 = !DILocalVariable(name: "n_users", scope: !726, file: !10, line: 84, type: !427)
!733 = !DILocalVariable(name: "utmp_buf", scope: !726, file: !10, line: 85, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !13, line: 92, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !13, line: 65, size: 576, elements: !737)
!737 = !{!738, !739, !740, !741, !742, !749, !752, !753, !754}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !736, file: !13, line: 69, baseType: !58, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !736, file: !13, line: 70, baseType: !58, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !736, file: !13, line: 71, baseType: !58, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !736, file: !13, line: 72, baseType: !58, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !736, file: !13, line: 74, baseType: !743, size: 128, offset: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !744, line: 11, size: 128, elements: !745)
!744 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !743, file: !744, line: 16, baseType: !391, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !743, file: !744, line: 21, baseType: !748, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !107, line: 197, baseType: !108)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !736, file: !13, line: 75, baseType: !750, size: 32, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !751, line: 97, baseType: !372)
!751 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !736, file: !13, line: 76, baseType: !750, size: 32, offset: 416)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !736, file: !13, line: 77, baseType: !370, size: 16, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !736, file: !13, line: 79, baseType: !755, size: 64, offset: 480)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !736, file: !13, line: 79, size: 64, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !755, file: !13, line: 79, baseType: !51, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !755, file: !13, line: 79, baseType: !51, size: 32, offset: 32)
!759 = !DILocation(line: 0, scope: !726)
!760 = !DILocation(line: 84, column: 3, scope: !726)
!761 = !DILocation(line: 85, column: 3, scope: !726)
!762 = !DILocation(line: 86, column: 11, scope: !726)
!763 = !DILocation(line: 87, column: 7, scope: !764)
!764 = distinct !DILexicalBlock(scope: !726, file: !10, line: 87, column: 7)
!765 = !DILocation(line: 87, column: 58, scope: !764)
!766 = !DILocation(line: 87, column: 7, scope: !726)
!767 = !DILocation(line: 88, column: 5, scope: !764)
!768 = !DILocation(line: 90, column: 23, scope: !726)
!769 = !{!770, !770, i64 0}
!770 = !{!"long", !487, i64 0}
!771 = !DILocation(line: 90, column: 32, scope: !726)
!772 = !DILocalVariable(name: "n", arg: 1, scope: !773, file: !10, line: 45, type: !427)
!773 = distinct !DISubprogram(name: "list_entries_users", scope: !10, file: !10, line: 45, type: !774, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !778)
!774 = !DISubroutineType(types: !775)
!775 = !{null, !427, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!778 = !{!772, !779, !780, !781, !782, !786, !788, !791}
!779 = !DILocalVariable(name: "this", arg: 2, scope: !773, file: !10, line: 45, type: !776)
!780 = !DILocalVariable(name: "u", scope: !773, file: !10, line: 47, type: !57)
!781 = !DILocalVariable(name: "n_entries", scope: !773, file: !10, line: 48, type: !427)
!782 = !DILocalVariable(name: "trimmed_name", scope: !783, file: !10, line: 54, type: !58)
!783 = distinct !DILexicalBlock(scope: !784, file: !10, line: 53, column: 9)
!784 = distinct !DILexicalBlock(scope: !785, file: !10, line: 52, column: 11)
!785 = distinct !DILexicalBlock(scope: !773, file: !10, line: 51, column: 5)
!786 = !DILocalVariable(name: "i", scope: !787, file: !10, line: 66, type: !427)
!787 = distinct !DILexicalBlock(scope: !773, file: !10, line: 66, column: 3)
!788 = !DILocalVariable(name: "c", scope: !789, file: !10, line: 68, type: !8)
!789 = distinct !DILexicalBlock(scope: !790, file: !10, line: 67, column: 5)
!790 = distinct !DILexicalBlock(scope: !787, file: !10, line: 66, column: 3)
!791 = !DILocalVariable(name: "i", scope: !792, file: !10, line: 73, type: !427)
!792 = distinct !DILexicalBlock(scope: !773, file: !10, line: 73, column: 3)
!793 = !DILocation(line: 0, scope: !773, inlinedAt: !794)
!794 = distinct !DILocation(line: 90, column: 3, scope: !726)
!795 = !DILocation(line: 47, column: 14, scope: !773, inlinedAt: !794)
!796 = !DILocation(line: 50, column: 3, scope: !773, inlinedAt: !794)
!797 = !DILocation(line: 64, column: 3, scope: !773, inlinedAt: !794)
!798 = !DILocation(line: 0, scope: !787, inlinedAt: !794)
!799 = !DILocation(line: 66, column: 3, scope: !787, inlinedAt: !794)
!800 = !DILocation(line: 50, column: 11, scope: !773, inlinedAt: !794)
!801 = !DILocation(line: 52, column: 11, scope: !784, inlinedAt: !794)
!802 = !{!803, !486, i64 0}
!803 = !{!"gl_utmp", !486, i64 0, !486, i64 8, !486, i64 16, !486, i64 24, !804, i64 32, !567, i64 48, !567, i64 52, !601, i64 56, !805, i64 60}
!804 = !{!"timespec", !770, i64 0, !770, i64 8}
!805 = !{!"", !567, i64 0, !567, i64 4}
!806 = !{!803, !601, i64 56}
!807 = !DILocation(line: 52, column: 11, scope: !785, inlinedAt: !794)
!808 = !DILocation(line: 56, column: 26, scope: !783, inlinedAt: !794)
!809 = !DILocation(line: 0, scope: !783, inlinedAt: !794)
!810 = !DILocation(line: 58, column: 11, scope: !783, inlinedAt: !794)
!811 = !DILocation(line: 58, column: 24, scope: !783, inlinedAt: !794)
!812 = !DILocation(line: 59, column: 11, scope: !783, inlinedAt: !794)
!813 = !DILocation(line: 60, column: 9, scope: !783, inlinedAt: !794)
!814 = !DILocation(line: 61, column: 11, scope: !785, inlinedAt: !794)
!815 = distinct !{!815, !796, !816, !537}
!816 = !DILocation(line: 62, column: 5, scope: !773, inlinedAt: !794)
!817 = !DILocation(line: 66, column: 23, scope: !790, inlinedAt: !794)
!818 = !DILocation(line: 68, column: 19, scope: !789, inlinedAt: !794)
!819 = !DILocation(line: 0, scope: !789, inlinedAt: !794)
!820 = !DILocation(line: 69, column: 7, scope: !789, inlinedAt: !794)
!821 = !DILocation(line: 70, column: 7, scope: !789, inlinedAt: !794)
!822 = !DILocalVariable(name: "__c", arg: 1, scope: !823, file: !824, line: 108, type: !51)
!823 = distinct !DISubprogram(name: "putchar_unlocked", scope: !824, file: !824, line: 108, type: !825, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !827)
!824 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!825 = !DISubroutineType(types: !826)
!826 = !{!51, !51}
!827 = !{!822}
!828 = !DILocation(line: 0, scope: !823, inlinedAt: !829)
!829 = distinct !DILocation(line: 70, column: 7, scope: !789, inlinedAt: !794)
!830 = !DILocation(line: 110, column: 10, scope: !823, inlinedAt: !829)
!831 = !{!832, !486, i64 40}
!832 = !{!"_IO_FILE", !567, i64 0, !486, i64 8, !486, i64 16, !486, i64 24, !486, i64 32, !486, i64 40, !486, i64 48, !486, i64 56, !486, i64 64, !486, i64 72, !486, i64 80, !486, i64 88, !486, i64 96, !486, i64 104, !567, i64 112, !567, i64 116, !770, i64 120, !601, i64 128, !487, i64 130, !487, i64 131, !486, i64 136, !770, i64 144, !486, i64 152, !486, i64 160, !486, i64 168, !486, i64 176, !770, i64 184, !567, i64 192, !487, i64 196}
!833 = !{!832, !486, i64 48}
!834 = !{!"branch_weights", i32 2000, i32 1}
!835 = !DILocation(line: 66, column: 37, scope: !790, inlinedAt: !794)
!836 = distinct !{!836, !799, !837, !537}
!837 = !DILocation(line: 71, column: 5, scope: !787, inlinedAt: !794)
!838 = !DILocation(line: 0, scope: !792, inlinedAt: !794)
!839 = !DILocation(line: 74, column: 11, scope: !840, inlinedAt: !794)
!840 = distinct !DILexicalBlock(scope: !792, file: !10, line: 73, column: 3)
!841 = !DILocation(line: 74, column: 5, scope: !840, inlinedAt: !794)
!842 = !DILocation(line: 73, column: 37, scope: !840, inlinedAt: !794)
!843 = !DILocation(line: 73, column: 23, scope: !840, inlinedAt: !794)
!844 = !DILocation(line: 73, column: 3, scope: !792, inlinedAt: !794)
!845 = distinct !{!845, !844, !846, !537}
!846 = !DILocation(line: 74, column: 15, scope: !792, inlinedAt: !794)
!847 = !DILocation(line: 75, column: 3, scope: !773, inlinedAt: !794)
!848 = !DILocation(line: 92, column: 9, scope: !726)
!849 = !DILocation(line: 92, column: 3, scope: !726)
!850 = !DILocation(line: 93, column: 1, scope: !726)
!851 = distinct !DISubprogram(name: "userid_compare", scope: !10, file: !10, line: 37, type: !852, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{!51, !689, !689}
!854 = !{!855, !856, !857, !858}
!855 = !DILocalVariable(name: "v_a", arg: 1, scope: !851, file: !10, line: 37, type: !689)
!856 = !DILocalVariable(name: "v_b", arg: 2, scope: !851, file: !10, line: 37, type: !689)
!857 = !DILocalVariable(name: "a", scope: !851, file: !10, line: 39, type: !57)
!858 = !DILocalVariable(name: "b", scope: !851, file: !10, line: 40, type: !57)
!859 = !DILocation(line: 0, scope: !851)
!860 = !DILocation(line: 39, column: 14, scope: !851)
!861 = !DILocation(line: 40, column: 14, scope: !851)
!862 = !DILocation(line: 41, column: 18, scope: !851)
!863 = !DILocation(line: 41, column: 22, scope: !851)
!864 = !DILocation(line: 41, column: 10, scope: !851)
!865 = !DILocation(line: 41, column: 3, scope: !851)
!866 = !DISubprogram(name: "qsort", scope: !682, file: !682, line: 838, type: !867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !50, !53, !53, !869}
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !682, line: 816, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!871 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !149, file: !149, line: 50, type: !496, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !872)
!872 = !{!873}
!873 = !DILocalVariable(name: "file", arg: 1, scope: !871, file: !149, line: 50, type: !6)
!874 = !DILocation(line: 0, scope: !871)
!875 = !DILocation(line: 52, column: 13, scope: !871)
!876 = !DILocation(line: 53, column: 1, scope: !871)
!877 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !149, file: !149, line: 87, type: !878, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !880)
!878 = !DISubroutineType(types: !879)
!879 = !{null, !67}
!880 = !{!881}
!881 = !DILocalVariable(name: "ignore", arg: 1, scope: !877, file: !149, line: 87, type: !67)
!882 = !DILocation(line: 0, scope: !877)
!883 = !DILocation(line: 89, column: 16, scope: !877)
!884 = !{!885, !885, i64 0}
!885 = !{!"_Bool", !487, i64 0}
!886 = !DILocation(line: 90, column: 1, scope: !877)
!887 = distinct !DISubprogram(name: "close_stdout", scope: !149, file: !149, line: 116, type: !192, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !148, retainedNodes: !888)
!888 = !{!889}
!889 = !DILocalVariable(name: "write_error", scope: !890, file: !149, line: 121, type: !6)
!890 = distinct !DILexicalBlock(scope: !891, file: !149, line: 120, column: 5)
!891 = distinct !DILexicalBlock(scope: !887, file: !149, line: 118, column: 7)
!892 = !DILocation(line: 118, column: 21, scope: !891)
!893 = !DILocation(line: 118, column: 7, scope: !891)
!894 = !DILocation(line: 118, column: 29, scope: !891)
!895 = !DILocation(line: 119, column: 7, scope: !891)
!896 = !DILocation(line: 119, column: 12, scope: !891)
!897 = !{i8 0, i8 2}
!898 = !DILocation(line: 119, column: 25, scope: !891)
!899 = !DILocation(line: 119, column: 28, scope: !891)
!900 = !DILocation(line: 119, column: 34, scope: !891)
!901 = !DILocation(line: 118, column: 7, scope: !887)
!902 = !DILocation(line: 121, column: 33, scope: !890)
!903 = !DILocation(line: 0, scope: !890)
!904 = !DILocation(line: 122, column: 11, scope: !905)
!905 = distinct !DILexicalBlock(scope: !890, file: !149, line: 122, column: 11)
!906 = !DILocation(line: 0, scope: !905)
!907 = !DILocation(line: 122, column: 11, scope: !890)
!908 = !DILocation(line: 123, column: 9, scope: !905)
!909 = !DILocation(line: 126, column: 9, scope: !905)
!910 = !DILocation(line: 128, column: 14, scope: !890)
!911 = !DILocation(line: 128, column: 7, scope: !890)
!912 = !DILocation(line: 133, column: 42, scope: !913)
!913 = distinct !DILexicalBlock(scope: !887, file: !149, line: 133, column: 7)
!914 = !DILocation(line: 133, column: 28, scope: !913)
!915 = !DILocation(line: 133, column: 50, scope: !913)
!916 = !DILocation(line: 133, column: 7, scope: !887)
!917 = !DILocation(line: 134, column: 12, scope: !913)
!918 = !DILocation(line: 134, column: 5, scope: !913)
!919 = !DILocation(line: 135, column: 1, scope: !887)
!920 = distinct !DISubprogram(name: "verror", scope: !156, file: !156, line: 251, type: !921, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !51, !51, !6, !164}
!923 = !{!924, !925, !926, !927}
!924 = !DILocalVariable(name: "status", arg: 1, scope: !920, file: !156, line: 251, type: !51)
!925 = !DILocalVariable(name: "errnum", arg: 2, scope: !920, file: !156, line: 251, type: !51)
!926 = !DILocalVariable(name: "message", arg: 3, scope: !920, file: !156, line: 251, type: !6)
!927 = !DILocalVariable(name: "args", arg: 4, scope: !920, file: !156, line: 251, type: !164)
!928 = !DILocation(line: 0, scope: !920)
!929 = !DILocation(line: 251, column: 1, scope: !920)
!930 = !DILocation(line: 261, column: 3, scope: !920)
!931 = !DILocation(line: 265, column: 7, scope: !932)
!932 = distinct !DILexicalBlock(scope: !920, file: !156, line: 265, column: 7)
!933 = !DILocation(line: 265, column: 7, scope: !920)
!934 = !DILocation(line: 266, column: 5, scope: !932)
!935 = !DILocation(line: 272, column: 7, scope: !936)
!936 = distinct !DILexicalBlock(scope: !932, file: !156, line: 268, column: 5)
!937 = !DILocation(line: 276, column: 3, scope: !920)
!938 = !{i64 0, i64 8, !485, i64 8, i64 8, !485, i64 16, i64 8, !485, i64 24, i64 4, !566, i64 28, i64 4, !566}
!939 = !DILocation(line: 282, column: 1, scope: !920)
!940 = distinct !DISubprogram(name: "flush_stdout", scope: !156, file: !156, line: 163, type: !192, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !941)
!941 = !{!942}
!942 = !DILocalVariable(name: "stdout_fd", scope: !940, file: !156, line: 166, type: !51)
!943 = !DILocation(line: 0, scope: !940)
!944 = !DILocalVariable(name: "fd", arg: 1, scope: !945, file: !156, line: 145, type: !51)
!945 = distinct !DISubprogram(name: "is_open", scope: !156, file: !156, line: 145, type: !825, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !946)
!946 = !{!944}
!947 = !DILocation(line: 0, scope: !945, inlinedAt: !948)
!948 = distinct !DILocation(line: 182, column: 25, scope: !949)
!949 = distinct !DILexicalBlock(scope: !940, file: !156, line: 182, column: 7)
!950 = !DILocation(line: 157, column: 15, scope: !945, inlinedAt: !948)
!951 = !DILocation(line: 182, column: 25, scope: !949)
!952 = !DILocation(line: 182, column: 7, scope: !940)
!953 = !DILocation(line: 184, column: 5, scope: !949)
!954 = !DILocation(line: 185, column: 1, scope: !940)
!955 = distinct !DISubprogram(name: "error_tail", scope: !156, file: !156, line: 219, type: !921, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !956)
!956 = !{!957, !958, !959, !960}
!957 = !DILocalVariable(name: "status", arg: 1, scope: !955, file: !156, line: 219, type: !51)
!958 = !DILocalVariable(name: "errnum", arg: 2, scope: !955, file: !156, line: 219, type: !51)
!959 = !DILocalVariable(name: "message", arg: 3, scope: !955, file: !156, line: 219, type: !6)
!960 = !DILocalVariable(name: "args", arg: 4, scope: !955, file: !156, line: 219, type: !164)
!961 = !DILocation(line: 0, scope: !955)
!962 = !DILocation(line: 219, column: 1, scope: !955)
!963 = !DILocation(line: 229, column: 13, scope: !955)
!964 = !DILocation(line: 229, column: 3, scope: !955)
!965 = !DILocalVariable(name: "__stream", arg: 1, scope: !966, file: !967, line: 132, type: !970)
!966 = distinct !DISubprogram(name: "vfprintf", scope: !967, file: !967, line: 132, type: !968, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !1005)
!967 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!968 = !DISubroutineType(types: !969)
!969 = !{!51, !970, !679, !166}
!970 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !973)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !974)
!974 = !{!975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !973, file: !84, line: 51, baseType: !51, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !973, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !973, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !973, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !973, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !973, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !973, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !973, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !973, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !973, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !973, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !973, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !973, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !973, file: !84, line: 70, baseType: !989, size: 64, offset: 832)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !973, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !973, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !973, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !973, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !973, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !973, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !973, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !973, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !973, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !973, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !973, file: !84, line: 93, baseType: !989, size: 64, offset: 1344)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !973, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !973, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !973, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !973, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!1005 = !{!965, !1006, !1007}
!1006 = !DILocalVariable(name: "__fmt", arg: 2, scope: !966, file: !967, line: 133, type: !679)
!1007 = !DILocalVariable(name: "__ap", arg: 3, scope: !966, file: !967, line: 133, type: !166)
!1008 = !DILocation(line: 0, scope: !966, inlinedAt: !1009)
!1009 = distinct !DILocation(line: 229, column: 3, scope: !955)
!1010 = !DILocation(line: 135, column: 10, scope: !966, inlinedAt: !1009)
!1011 = !{!1012, !1014}
!1012 = distinct !{!1012, !1013, !"vfprintf.inline: argument 0"}
!1013 = distinct !{!1013, !"vfprintf.inline"}
!1014 = distinct !{!1014, !1013, !"vfprintf.inline: argument 1"}
!1015 = !DILocation(line: 232, column: 3, scope: !955)
!1016 = !DILocation(line: 233, column: 7, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !955, file: !156, line: 233, column: 7)
!1018 = !DILocation(line: 233, column: 7, scope: !955)
!1019 = !DILocalVariable(name: "errnum", arg: 1, scope: !1020, file: !156, line: 188, type: !51)
!1020 = distinct !DISubprogram(name: "print_errno_message", scope: !156, file: !156, line: 188, type: !475, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !1021)
!1021 = !{!1019, !1022, !1023}
!1022 = !DILocalVariable(name: "s", scope: !1020, file: !156, line: 190, type: !6)
!1023 = !DILocalVariable(name: "errbuf", scope: !1020, file: !156, line: 193, type: !1024)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 1024)
!1027 = !DILocation(line: 0, scope: !1020, inlinedAt: !1028)
!1028 = distinct !DILocation(line: 234, column: 5, scope: !1017)
!1029 = !DILocation(line: 193, column: 3, scope: !1020, inlinedAt: !1028)
!1030 = !DILocation(line: 193, column: 8, scope: !1020, inlinedAt: !1028)
!1031 = !DILocation(line: 195, column: 7, scope: !1020, inlinedAt: !1028)
!1032 = !DILocation(line: 207, column: 9, scope: !1033, inlinedAt: !1028)
!1033 = distinct !DILexicalBlock(scope: !1020, file: !156, line: 207, column: 7)
!1034 = !DILocation(line: 207, column: 7, scope: !1020, inlinedAt: !1028)
!1035 = !DILocation(line: 208, column: 9, scope: !1033, inlinedAt: !1028)
!1036 = !DILocation(line: 208, column: 5, scope: !1033, inlinedAt: !1028)
!1037 = !DILocation(line: 214, column: 3, scope: !1020, inlinedAt: !1028)
!1038 = !DILocation(line: 216, column: 1, scope: !1020, inlinedAt: !1028)
!1039 = !DILocation(line: 234, column: 5, scope: !1017)
!1040 = !DILocation(line: 238, column: 3, scope: !955)
!1041 = !DILocalVariable(name: "__c", arg: 1, scope: !1042, file: !824, line: 101, type: !51)
!1042 = distinct !DISubprogram(name: "putc_unlocked", scope: !824, file: !824, line: 101, type: !1043, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!51, !51, !971}
!1045 = !{!1041, !1046}
!1046 = !DILocalVariable(name: "__stream", arg: 2, scope: !1042, file: !824, line: 101, type: !971)
!1047 = !DILocation(line: 0, scope: !1042, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 238, column: 3, scope: !955)
!1049 = !DILocation(line: 103, column: 10, scope: !1042, inlinedAt: !1048)
!1050 = !DILocation(line: 240, column: 3, scope: !955)
!1051 = !DILocation(line: 241, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !955, file: !156, line: 241, column: 7)
!1053 = !DILocation(line: 241, column: 7, scope: !955)
!1054 = !DILocation(line: 242, column: 5, scope: !1052)
!1055 = !DILocation(line: 243, column: 1, scope: !955)
!1056 = !DISubprogram(name: "strerror_r", scope: !1057, file: !1057, line: 444, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1057 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!58, !51, !58, !53}
!1060 = !DISubprogram(name: "fflush_unlocked", scope: !165, file: !165, line: 239, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!51, !971}
!1063 = !DISubprogram(name: "fcntl", scope: !1064, file: !1064, line: 149, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1064 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!51, !51, !51, null}
!1067 = distinct !DISubprogram(name: "error", scope: !156, file: !156, line: 285, type: !1068, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !51, !51, !6, null}
!1070 = !{!1071, !1072, !1073, !1074}
!1071 = !DILocalVariable(name: "status", arg: 1, scope: !1067, file: !156, line: 285, type: !51)
!1072 = !DILocalVariable(name: "errnum", arg: 2, scope: !1067, file: !156, line: 285, type: !51)
!1073 = !DILocalVariable(name: "message", arg: 3, scope: !1067, file: !156, line: 285, type: !6)
!1074 = !DILocalVariable(name: "ap", scope: !1067, file: !156, line: 287, type: !164)
!1075 = !DILocation(line: 0, scope: !1067)
!1076 = !DILocation(line: 287, column: 3, scope: !1067)
!1077 = !DILocation(line: 287, column: 11, scope: !1067)
!1078 = !DILocation(line: 288, column: 3, scope: !1067)
!1079 = !DILocation(line: 289, column: 3, scope: !1067)
!1080 = !DILocation(line: 290, column: 3, scope: !1067)
!1081 = !DILocation(line: 291, column: 1, scope: !1067)
!1082 = !DILocation(line: 0, scope: !161)
!1083 = !DILocation(line: 298, column: 1, scope: !161)
!1084 = !DILocation(line: 302, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !161, file: !156, line: 302, column: 7)
!1086 = !DILocation(line: 302, column: 7, scope: !161)
!1087 = !DILocation(line: 307, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !156, line: 307, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !156, line: 303, column: 5)
!1090 = !DILocation(line: 307, column: 27, scope: !1088)
!1091 = !DILocation(line: 308, column: 11, scope: !1088)
!1092 = !DILocation(line: 308, column: 28, scope: !1088)
!1093 = !DILocation(line: 308, column: 25, scope: !1088)
!1094 = !DILocation(line: 309, column: 15, scope: !1088)
!1095 = !DILocation(line: 309, column: 33, scope: !1088)
!1096 = !DILocation(line: 310, column: 19, scope: !1088)
!1097 = !DILocation(line: 311, column: 22, scope: !1088)
!1098 = !DILocation(line: 311, column: 56, scope: !1088)
!1099 = !DILocation(line: 307, column: 11, scope: !1089)
!1100 = !DILocation(line: 316, column: 21, scope: !1089)
!1101 = !DILocation(line: 317, column: 23, scope: !1089)
!1102 = !DILocation(line: 318, column: 5, scope: !1089)
!1103 = !DILocation(line: 327, column: 3, scope: !161)
!1104 = !DILocation(line: 331, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !161, file: !156, line: 331, column: 7)
!1106 = !DILocation(line: 331, column: 7, scope: !161)
!1107 = !DILocation(line: 332, column: 5, scope: !1105)
!1108 = !DILocation(line: 338, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !156, line: 334, column: 5)
!1110 = !DILocation(line: 346, column: 3, scope: !161)
!1111 = !DILocation(line: 350, column: 3, scope: !161)
!1112 = !DILocation(line: 356, column: 1, scope: !161)
!1113 = distinct !DISubprogram(name: "error_at_line", scope: !156, file: !156, line: 359, type: !1114, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !155, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !51, !51, !6, !14, !6, null}
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122}
!1117 = !DILocalVariable(name: "status", arg: 1, scope: !1113, file: !156, line: 359, type: !51)
!1118 = !DILocalVariable(name: "errnum", arg: 2, scope: !1113, file: !156, line: 359, type: !51)
!1119 = !DILocalVariable(name: "file_name", arg: 3, scope: !1113, file: !156, line: 359, type: !6)
!1120 = !DILocalVariable(name: "line_number", arg: 4, scope: !1113, file: !156, line: 360, type: !14)
!1121 = !DILocalVariable(name: "message", arg: 5, scope: !1113, file: !156, line: 360, type: !6)
!1122 = !DILocalVariable(name: "ap", scope: !1113, file: !156, line: 362, type: !164)
!1123 = !DILocation(line: 0, scope: !1113)
!1124 = !DILocation(line: 362, column: 3, scope: !1113)
!1125 = !DILocation(line: 362, column: 11, scope: !1113)
!1126 = !DILocation(line: 363, column: 3, scope: !1113)
!1127 = !DILocation(line: 364, column: 3, scope: !1113)
!1128 = !DILocation(line: 366, column: 3, scope: !1113)
!1129 = !DILocation(line: 367, column: 1, scope: !1113)
!1130 = distinct !DISubprogram(name: "getprogname", scope: !359, file: !359, line: 54, type: !1131, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !563)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!6}
!1133 = !DILocation(line: 58, column: 10, scope: !1130)
!1134 = !DILocation(line: 58, column: 3, scope: !1130)
!1135 = distinct !DISubprogram(name: "parse_long_options", scope: !197, file: !197, line: 45, type: !1136, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !1139)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{null, !51, !57, !6, !6, !6, !1138, null}
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1139 = !{!1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1150}
!1140 = !DILocalVariable(name: "argc", arg: 1, scope: !1135, file: !197, line: 45, type: !51)
!1141 = !DILocalVariable(name: "argv", arg: 2, scope: !1135, file: !197, line: 46, type: !57)
!1142 = !DILocalVariable(name: "command_name", arg: 3, scope: !1135, file: !197, line: 47, type: !6)
!1143 = !DILocalVariable(name: "package", arg: 4, scope: !1135, file: !197, line: 48, type: !6)
!1144 = !DILocalVariable(name: "version", arg: 5, scope: !1135, file: !197, line: 49, type: !6)
!1145 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1135, file: !197, line: 50, type: !1138)
!1146 = !DILocalVariable(name: "saved_opterr", scope: !1135, file: !197, line: 53, type: !51)
!1147 = !DILocalVariable(name: "c", scope: !1148, file: !197, line: 60, type: !51)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !197, line: 59, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !197, line: 58, column: 7)
!1150 = !DILocalVariable(name: "authors", scope: !1151, file: !197, line: 71, type: !1155)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !197, line: 70, column: 15)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !197, line: 64, column: 13)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !197, line: 62, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !197, line: 61, column: 11)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !165, line: 52, baseType: !1156)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !167, line: 32, baseType: !1157)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1158, baseType: !1159)
!1158 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !171, size: 256, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1159, file: !1158, line: 71, baseType: !50, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1159, file: !1158, line: 71, baseType: !50, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1159, file: !1158, line: 71, baseType: !50, size: 64, offset: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1159, file: !1158, line: 71, baseType: !51, size: 32, offset: 192)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1159, file: !1158, line: 71, baseType: !51, size: 32, offset: 224)
!1166 = !DILocation(line: 0, scope: !1135)
!1167 = !DILocation(line: 53, column: 22, scope: !1135)
!1168 = !DILocation(line: 56, column: 10, scope: !1135)
!1169 = !DILocation(line: 58, column: 12, scope: !1149)
!1170 = !DILocation(line: 58, column: 7, scope: !1135)
!1171 = !DILocation(line: 60, column: 15, scope: !1148)
!1172 = !DILocation(line: 0, scope: !1148)
!1173 = !DILocation(line: 61, column: 11, scope: !1148)
!1174 = !DILocation(line: 66, column: 15, scope: !1152)
!1175 = !DILocation(line: 67, column: 15, scope: !1152)
!1176 = !DILocation(line: 71, column: 17, scope: !1151)
!1177 = !DILocation(line: 71, column: 25, scope: !1151)
!1178 = !DILocation(line: 72, column: 17, scope: !1151)
!1179 = !DILocation(line: 73, column: 33, scope: !1151)
!1180 = !DILocation(line: 73, column: 17, scope: !1151)
!1181 = !DILocation(line: 74, column: 17, scope: !1151)
!1182 = !DILocation(line: 85, column: 10, scope: !1135)
!1183 = !DILocation(line: 89, column: 10, scope: !1135)
!1184 = !DILocation(line: 90, column: 1, scope: !1135)
!1185 = !DISubprogram(name: "getopt_long", scope: !202, file: !202, line: 66, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!51, !51, !1188, !6, !1190, !207}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1191 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !197, file: !197, line: 98, type: !1192, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !196, retainedNodes: !1194)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{null, !51, !57, !6, !6, !6, !67, !1138, null}
!1194 = !{!1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205}
!1195 = !DILocalVariable(name: "argc", arg: 1, scope: !1191, file: !197, line: 98, type: !51)
!1196 = !DILocalVariable(name: "argv", arg: 2, scope: !1191, file: !197, line: 99, type: !57)
!1197 = !DILocalVariable(name: "command_name", arg: 3, scope: !1191, file: !197, line: 100, type: !6)
!1198 = !DILocalVariable(name: "package", arg: 4, scope: !1191, file: !197, line: 101, type: !6)
!1199 = !DILocalVariable(name: "version", arg: 5, scope: !1191, file: !197, line: 102, type: !6)
!1200 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1191, file: !197, line: 103, type: !67)
!1201 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1191, file: !197, line: 104, type: !1138)
!1202 = !DILocalVariable(name: "saved_opterr", scope: !1191, file: !197, line: 107, type: !51)
!1203 = !DILocalVariable(name: "optstring", scope: !1191, file: !197, line: 112, type: !6)
!1204 = !DILocalVariable(name: "c", scope: !1191, file: !197, line: 114, type: !51)
!1205 = !DILocalVariable(name: "authors", scope: !1206, file: !197, line: 125, type: !1155)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !197, line: 124, column: 11)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !197, line: 118, column: 9)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !197, line: 116, column: 5)
!1209 = distinct !DILexicalBlock(scope: !1191, file: !197, line: 115, column: 7)
!1210 = !DILocation(line: 0, scope: !1191)
!1211 = !DILocation(line: 107, column: 22, scope: !1191)
!1212 = !DILocation(line: 110, column: 10, scope: !1191)
!1213 = !DILocation(line: 112, column: 27, scope: !1191)
!1214 = !DILocation(line: 114, column: 11, scope: !1191)
!1215 = !DILocation(line: 115, column: 7, scope: !1191)
!1216 = !DILocation(line: 125, column: 13, scope: !1206)
!1217 = !DILocation(line: 125, column: 21, scope: !1206)
!1218 = !DILocation(line: 126, column: 13, scope: !1206)
!1219 = !DILocation(line: 127, column: 29, scope: !1206)
!1220 = !DILocation(line: 127, column: 13, scope: !1206)
!1221 = !DILocation(line: 128, column: 13, scope: !1206)
!1222 = !DILocation(line: 132, column: 26, scope: !1207)
!1223 = !DILocation(line: 133, column: 11, scope: !1207)
!1224 = !DILocation(line: 0, scope: !1207)
!1225 = !DILocation(line: 138, column: 10, scope: !1191)
!1226 = !DILocation(line: 139, column: 1, scope: !1191)
!1227 = distinct !DISubprogram(name: "set_program_name", scope: !214, file: !214, line: 37, type: !496, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1228)
!1228 = !{!1229, !1230, !1231}
!1229 = !DILocalVariable(name: "argv0", arg: 1, scope: !1227, file: !214, line: 37, type: !6)
!1230 = !DILocalVariable(name: "slash", scope: !1227, file: !214, line: 44, type: !6)
!1231 = !DILocalVariable(name: "base", scope: !1227, file: !214, line: 45, type: !6)
!1232 = !DILocation(line: 0, scope: !1227)
!1233 = !DILocation(line: 44, column: 23, scope: !1227)
!1234 = !DILocation(line: 45, column: 22, scope: !1227)
!1235 = !DILocation(line: 46, column: 17, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1227, file: !214, line: 46, column: 7)
!1237 = !DILocation(line: 46, column: 9, scope: !1236)
!1238 = !DILocation(line: 46, column: 25, scope: !1236)
!1239 = !DILocation(line: 46, column: 40, scope: !1236)
!1240 = !DILocalVariable(name: "__s1", arg: 1, scope: !1241, file: !521, line: 974, type: !689)
!1241 = distinct !DISubprogram(name: "memeq", scope: !521, file: !521, line: 974, type: !1242, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!67, !689, !689, !53}
!1244 = !{!1240, !1245, !1246}
!1245 = !DILocalVariable(name: "__s2", arg: 2, scope: !1241, file: !521, line: 974, type: !689)
!1246 = !DILocalVariable(name: "__n", arg: 3, scope: !1241, file: !521, line: 974, type: !53)
!1247 = !DILocation(line: 0, scope: !1241, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 46, column: 28, scope: !1236)
!1249 = !DILocation(line: 976, column: 11, scope: !1241, inlinedAt: !1248)
!1250 = !DILocation(line: 976, column: 10, scope: !1241, inlinedAt: !1248)
!1251 = !DILocation(line: 46, column: 7, scope: !1227)
!1252 = !DILocation(line: 49, column: 11, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !214, line: 49, column: 11)
!1254 = distinct !DILexicalBlock(scope: !1236, file: !214, line: 47, column: 5)
!1255 = !DILocation(line: 49, column: 36, scope: !1253)
!1256 = !DILocation(line: 49, column: 11, scope: !1254)
!1257 = !DILocation(line: 65, column: 16, scope: !1227)
!1258 = !DILocation(line: 71, column: 27, scope: !1227)
!1259 = !DILocation(line: 74, column: 33, scope: !1227)
!1260 = !DILocation(line: 76, column: 1, scope: !1227)
!1261 = !DILocation(line: 0, scope: !219)
!1262 = !DILocation(line: 40, column: 29, scope: !219)
!1263 = !DILocation(line: 41, column: 19, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !219, file: !220, line: 41, column: 7)
!1265 = !DILocation(line: 41, column: 7, scope: !219)
!1266 = !DILocation(line: 47, column: 3, scope: !219)
!1267 = !DILocation(line: 48, column: 3, scope: !219)
!1268 = !DILocation(line: 48, column: 13, scope: !219)
!1269 = !DILocalVariable(name: "ps", arg: 1, scope: !1270, file: !1271, line: 1135, type: !1274)
!1270 = distinct !DISubprogram(name: "mbszero", scope: !1271, file: !1271, line: 1135, type: !1272, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !1275)
!1271 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1274}
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1275 = !{!1269}
!1276 = !DILocation(line: 0, scope: !1270, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 48, column: 18, scope: !219)
!1278 = !DILocalVariable(name: "__dest", arg: 1, scope: !1279, file: !1280, line: 57, type: !50)
!1279 = distinct !DISubprogram(name: "memset", scope: !1280, file: !1280, line: 57, type: !1281, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !1283)
!1280 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!50, !50, !51, !53}
!1283 = !{!1278, !1284, !1285}
!1284 = !DILocalVariable(name: "__ch", arg: 2, scope: !1279, file: !1280, line: 57, type: !51)
!1285 = !DILocalVariable(name: "__len", arg: 3, scope: !1279, file: !1280, line: 57, type: !53)
!1286 = !DILocation(line: 0, scope: !1279, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 1137, column: 3, scope: !1270, inlinedAt: !1277)
!1288 = !DILocation(line: 59, column: 10, scope: !1279, inlinedAt: !1287)
!1289 = !DILocation(line: 49, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !219, file: !220, line: 49, column: 7)
!1291 = !DILocation(line: 49, column: 39, scope: !1290)
!1292 = !DILocation(line: 49, column: 44, scope: !1290)
!1293 = !DILocation(line: 54, column: 1, scope: !219)
!1294 = !DISubprogram(name: "mbrtoc32", scope: !231, file: !231, line: 57, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!53, !1297, !679, !53, !1299}
!1297 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1298)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1274)
!1300 = distinct !DISubprogram(name: "clone_quoting_options", scope: !256, file: !256, line: 113, type: !1301, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1304)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303, !1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1304 = !{!1305, !1306, !1307}
!1305 = !DILocalVariable(name: "o", arg: 1, scope: !1300, file: !256, line: 113, type: !1303)
!1306 = !DILocalVariable(name: "saved_errno", scope: !1300, file: !256, line: 115, type: !51)
!1307 = !DILocalVariable(name: "p", scope: !1300, file: !256, line: 116, type: !1303)
!1308 = !DILocation(line: 0, scope: !1300)
!1309 = !DILocation(line: 115, column: 21, scope: !1300)
!1310 = !DILocation(line: 116, column: 40, scope: !1300)
!1311 = !DILocation(line: 116, column: 31, scope: !1300)
!1312 = !DILocation(line: 118, column: 9, scope: !1300)
!1313 = !DILocation(line: 119, column: 3, scope: !1300)
!1314 = distinct !DISubprogram(name: "get_quoting_style", scope: !256, file: !256, line: 124, type: !1315, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1319)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!35, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "o", arg: 1, scope: !1314, file: !256, line: 124, type: !1317)
!1321 = !DILocation(line: 0, scope: !1314)
!1322 = !DILocation(line: 126, column: 11, scope: !1314)
!1323 = !DILocation(line: 126, column: 46, scope: !1314)
!1324 = !{!1325, !487, i64 0}
!1325 = !{!"quoting_options", !487, i64 0, !567, i64 4, !487, i64 8, !486, i64 40, !486, i64 48}
!1326 = !DILocation(line: 126, column: 3, scope: !1314)
!1327 = distinct !DISubprogram(name: "set_quoting_style", scope: !256, file: !256, line: 132, type: !1328, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{null, !1303, !35}
!1330 = !{!1331, !1332}
!1331 = !DILocalVariable(name: "o", arg: 1, scope: !1327, file: !256, line: 132, type: !1303)
!1332 = !DILocalVariable(name: "s", arg: 2, scope: !1327, file: !256, line: 132, type: !35)
!1333 = !DILocation(line: 0, scope: !1327)
!1334 = !DILocation(line: 134, column: 4, scope: !1327)
!1335 = !DILocation(line: 134, column: 39, scope: !1327)
!1336 = !DILocation(line: 134, column: 45, scope: !1327)
!1337 = !DILocation(line: 135, column: 1, scope: !1327)
!1338 = distinct !DISubprogram(name: "set_char_quoting", scope: !256, file: !256, line: 143, type: !1339, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!51, !1303, !8, !51}
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1348, !1349}
!1342 = !DILocalVariable(name: "o", arg: 1, scope: !1338, file: !256, line: 143, type: !1303)
!1343 = !DILocalVariable(name: "c", arg: 2, scope: !1338, file: !256, line: 143, type: !8)
!1344 = !DILocalVariable(name: "i", arg: 3, scope: !1338, file: !256, line: 143, type: !51)
!1345 = !DILocalVariable(name: "uc", scope: !1338, file: !256, line: 145, type: !56)
!1346 = !DILocalVariable(name: "p", scope: !1338, file: !256, line: 146, type: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1348 = !DILocalVariable(name: "shift", scope: !1338, file: !256, line: 148, type: !51)
!1349 = !DILocalVariable(name: "r", scope: !1338, file: !256, line: 149, type: !14)
!1350 = !DILocation(line: 0, scope: !1338)
!1351 = !DILocation(line: 147, column: 6, scope: !1338)
!1352 = !DILocation(line: 147, column: 62, scope: !1338)
!1353 = !DILocation(line: 147, column: 57, scope: !1338)
!1354 = !DILocation(line: 148, column: 15, scope: !1338)
!1355 = !DILocation(line: 149, column: 21, scope: !1338)
!1356 = !DILocation(line: 149, column: 24, scope: !1338)
!1357 = !DILocation(line: 149, column: 34, scope: !1338)
!1358 = !DILocation(line: 150, column: 13, scope: !1338)
!1359 = !DILocation(line: 150, column: 19, scope: !1338)
!1360 = !DILocation(line: 150, column: 24, scope: !1338)
!1361 = !DILocation(line: 150, column: 6, scope: !1338)
!1362 = !DILocation(line: 151, column: 3, scope: !1338)
!1363 = distinct !DISubprogram(name: "set_quoting_flags", scope: !256, file: !256, line: 159, type: !1364, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!51, !1303, !51}
!1366 = !{!1367, !1368, !1369}
!1367 = !DILocalVariable(name: "o", arg: 1, scope: !1363, file: !256, line: 159, type: !1303)
!1368 = !DILocalVariable(name: "i", arg: 2, scope: !1363, file: !256, line: 159, type: !51)
!1369 = !DILocalVariable(name: "r", scope: !1363, file: !256, line: 163, type: !51)
!1370 = !DILocation(line: 0, scope: !1363)
!1371 = !DILocation(line: 161, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1363, file: !256, line: 161, column: 7)
!1373 = !DILocation(line: 161, column: 7, scope: !1363)
!1374 = !DILocation(line: 163, column: 14, scope: !1363)
!1375 = !{!1325, !567, i64 4}
!1376 = !DILocation(line: 164, column: 12, scope: !1363)
!1377 = !DILocation(line: 165, column: 3, scope: !1363)
!1378 = distinct !DISubprogram(name: "set_custom_quoting", scope: !256, file: !256, line: 169, type: !1379, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1381)
!1379 = !DISubroutineType(types: !1380)
!1380 = !{null, !1303, !6, !6}
!1381 = !{!1382, !1383, !1384}
!1382 = !DILocalVariable(name: "o", arg: 1, scope: !1378, file: !256, line: 169, type: !1303)
!1383 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1378, file: !256, line: 170, type: !6)
!1384 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1378, file: !256, line: 170, type: !6)
!1385 = !DILocation(line: 0, scope: !1378)
!1386 = !DILocation(line: 172, column: 8, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1378, file: !256, line: 172, column: 7)
!1388 = !DILocation(line: 172, column: 7, scope: !1378)
!1389 = !DILocation(line: 174, column: 6, scope: !1378)
!1390 = !DILocation(line: 174, column: 12, scope: !1378)
!1391 = !DILocation(line: 175, column: 8, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1378, file: !256, line: 175, column: 7)
!1393 = !DILocation(line: 175, column: 19, scope: !1392)
!1394 = !DILocation(line: 176, column: 5, scope: !1392)
!1395 = !DILocation(line: 177, column: 6, scope: !1378)
!1396 = !DILocation(line: 177, column: 17, scope: !1378)
!1397 = !{!1325, !486, i64 40}
!1398 = !DILocation(line: 178, column: 6, scope: !1378)
!1399 = !DILocation(line: 178, column: 18, scope: !1378)
!1400 = !{!1325, !486, i64 48}
!1401 = !DILocation(line: 179, column: 1, scope: !1378)
!1402 = distinct !DISubprogram(name: "quotearg_buffer", scope: !256, file: !256, line: 774, type: !1403, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1405)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!53, !58, !53, !6, !53, !1317}
!1405 = !{!1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1406 = !DILocalVariable(name: "buffer", arg: 1, scope: !1402, file: !256, line: 774, type: !58)
!1407 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1402, file: !256, line: 774, type: !53)
!1408 = !DILocalVariable(name: "arg", arg: 3, scope: !1402, file: !256, line: 775, type: !6)
!1409 = !DILocalVariable(name: "argsize", arg: 4, scope: !1402, file: !256, line: 775, type: !53)
!1410 = !DILocalVariable(name: "o", arg: 5, scope: !1402, file: !256, line: 776, type: !1317)
!1411 = !DILocalVariable(name: "p", scope: !1402, file: !256, line: 778, type: !1317)
!1412 = !DILocalVariable(name: "saved_errno", scope: !1402, file: !256, line: 779, type: !51)
!1413 = !DILocalVariable(name: "r", scope: !1402, file: !256, line: 780, type: !53)
!1414 = !DILocation(line: 0, scope: !1402)
!1415 = !DILocation(line: 778, column: 37, scope: !1402)
!1416 = !DILocation(line: 779, column: 21, scope: !1402)
!1417 = !DILocation(line: 781, column: 43, scope: !1402)
!1418 = !DILocation(line: 781, column: 53, scope: !1402)
!1419 = !DILocation(line: 781, column: 60, scope: !1402)
!1420 = !DILocation(line: 782, column: 43, scope: !1402)
!1421 = !DILocation(line: 782, column: 58, scope: !1402)
!1422 = !DILocation(line: 780, column: 14, scope: !1402)
!1423 = !DILocation(line: 783, column: 9, scope: !1402)
!1424 = !DILocation(line: 784, column: 3, scope: !1402)
!1425 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !256, file: !256, line: 251, type: !1426, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1430)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!53, !58, !53, !6, !53, !35, !51, !1428, !6, !6}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1430 = !{!1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1455, !1457, !1460, !1461, !1462, !1463, !1466, !1467, !1470, !1474, !1475, !1483, !1486, !1487, !1489, !1490, !1491, !1492}
!1431 = !DILocalVariable(name: "buffer", arg: 1, scope: !1425, file: !256, line: 251, type: !58)
!1432 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1425, file: !256, line: 251, type: !53)
!1433 = !DILocalVariable(name: "arg", arg: 3, scope: !1425, file: !256, line: 252, type: !6)
!1434 = !DILocalVariable(name: "argsize", arg: 4, scope: !1425, file: !256, line: 252, type: !53)
!1435 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1425, file: !256, line: 253, type: !35)
!1436 = !DILocalVariable(name: "flags", arg: 6, scope: !1425, file: !256, line: 253, type: !51)
!1437 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1425, file: !256, line: 254, type: !1428)
!1438 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1425, file: !256, line: 255, type: !6)
!1439 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1425, file: !256, line: 256, type: !6)
!1440 = !DILocalVariable(name: "unibyte_locale", scope: !1425, file: !256, line: 258, type: !67)
!1441 = !DILocalVariable(name: "len", scope: !1425, file: !256, line: 260, type: !53)
!1442 = !DILocalVariable(name: "orig_buffersize", scope: !1425, file: !256, line: 261, type: !53)
!1443 = !DILocalVariable(name: "quote_string", scope: !1425, file: !256, line: 262, type: !6)
!1444 = !DILocalVariable(name: "quote_string_len", scope: !1425, file: !256, line: 263, type: !53)
!1445 = !DILocalVariable(name: "backslash_escapes", scope: !1425, file: !256, line: 264, type: !67)
!1446 = !DILocalVariable(name: "elide_outer_quotes", scope: !1425, file: !256, line: 265, type: !67)
!1447 = !DILocalVariable(name: "encountered_single_quote", scope: !1425, file: !256, line: 266, type: !67)
!1448 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1425, file: !256, line: 267, type: !67)
!1449 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1425, file: !256, line: 309, type: !67)
!1450 = !DILocalVariable(name: "lq", scope: !1451, file: !256, line: 361, type: !6)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !256, line: 361, column: 11)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !256, line: 360, column: 13)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !256, line: 333, column: 7)
!1454 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 312, column: 5)
!1455 = !DILocalVariable(name: "i", scope: !1456, file: !256, line: 395, type: !53)
!1456 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 395, column: 3)
!1457 = !DILocalVariable(name: "is_right_quote", scope: !1458, file: !256, line: 397, type: !67)
!1458 = distinct !DILexicalBlock(scope: !1459, file: !256, line: 396, column: 5)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !256, line: 395, column: 3)
!1460 = !DILocalVariable(name: "escaping", scope: !1458, file: !256, line: 398, type: !67)
!1461 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1458, file: !256, line: 399, type: !67)
!1462 = !DILocalVariable(name: "c", scope: !1458, file: !256, line: 417, type: !56)
!1463 = !DILocalVariable(name: "m", scope: !1464, file: !256, line: 598, type: !53)
!1464 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 596, column: 11)
!1465 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 419, column: 9)
!1466 = !DILocalVariable(name: "printable", scope: !1464, file: !256, line: 600, type: !67)
!1467 = !DILocalVariable(name: "mbs", scope: !1468, file: !256, line: 609, type: !301)
!1468 = distinct !DILexicalBlock(scope: !1469, file: !256, line: 608, column: 15)
!1469 = distinct !DILexicalBlock(scope: !1464, file: !256, line: 602, column: 17)
!1470 = !DILocalVariable(name: "w", scope: !1471, file: !256, line: 618, type: !230)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !256, line: 617, column: 19)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !256, line: 616, column: 17)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !256, line: 616, column: 17)
!1474 = !DILocalVariable(name: "bytes", scope: !1471, file: !256, line: 619, type: !53)
!1475 = !DILocalVariable(name: "j", scope: !1476, file: !256, line: 648, type: !53)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !256, line: 648, column: 29)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !256, line: 647, column: 27)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !256, line: 645, column: 29)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !256, line: 636, column: 23)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !256, line: 628, column: 30)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !256, line: 623, column: 30)
!1482 = distinct !DILexicalBlock(scope: !1471, file: !256, line: 621, column: 25)
!1483 = !DILocalVariable(name: "ilim", scope: !1484, file: !256, line: 674, type: !53)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !256, line: 671, column: 15)
!1485 = distinct !DILexicalBlock(scope: !1464, file: !256, line: 670, column: 17)
!1486 = !DILabel(scope: !1425, name: "process_input", file: !256, line: 308)
!1487 = !DILabel(scope: !1488, name: "c_and_shell_escape", file: !256, line: 502)
!1488 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 478, column: 9)
!1489 = !DILabel(scope: !1488, name: "c_escape", file: !256, line: 507)
!1490 = !DILabel(scope: !1458, name: "store_escape", file: !256, line: 709)
!1491 = !DILabel(scope: !1458, name: "store_c", file: !256, line: 712)
!1492 = !DILabel(scope: !1425, name: "force_outer_quoting_style", file: !256, line: 753)
!1493 = !DILocation(line: 0, scope: !1425)
!1494 = !DILocation(line: 258, column: 25, scope: !1425)
!1495 = !DILocation(line: 258, column: 36, scope: !1425)
!1496 = !DILocation(line: 267, column: 3, scope: !1425)
!1497 = !DILocation(line: 261, column: 10, scope: !1425)
!1498 = !DILocation(line: 262, column: 15, scope: !1425)
!1499 = !DILocation(line: 263, column: 10, scope: !1425)
!1500 = !DILocation(line: 308, column: 2, scope: !1425)
!1501 = !DILocation(line: 311, column: 3, scope: !1425)
!1502 = !DILocation(line: 318, column: 11, scope: !1454)
!1503 = !DILocation(line: 319, column: 9, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !256, line: 319, column: 9)
!1505 = distinct !DILexicalBlock(scope: !1506, file: !256, line: 319, column: 9)
!1506 = distinct !DILexicalBlock(scope: !1454, file: !256, line: 318, column: 11)
!1507 = !DILocation(line: 319, column: 9, scope: !1505)
!1508 = !DILocation(line: 0, scope: !292, inlinedAt: !1509)
!1509 = distinct !DILocation(line: 357, column: 26, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !256, line: 335, column: 11)
!1511 = distinct !DILexicalBlock(scope: !1453, file: !256, line: 334, column: 13)
!1512 = !DILocation(line: 199, column: 29, scope: !292, inlinedAt: !1509)
!1513 = !DILocation(line: 201, column: 19, scope: !1514, inlinedAt: !1509)
!1514 = distinct !DILexicalBlock(scope: !292, file: !256, line: 201, column: 7)
!1515 = !DILocation(line: 201, column: 7, scope: !292, inlinedAt: !1509)
!1516 = !DILocation(line: 229, column: 3, scope: !292, inlinedAt: !1509)
!1517 = !DILocation(line: 230, column: 3, scope: !292, inlinedAt: !1509)
!1518 = !DILocation(line: 230, column: 13, scope: !292, inlinedAt: !1509)
!1519 = !DILocalVariable(name: "ps", arg: 1, scope: !1520, file: !1271, line: 1135, type: !1523)
!1520 = distinct !DISubprogram(name: "mbszero", scope: !1271, file: !1271, line: 1135, type: !1521, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1524)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{null, !1523}
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1524 = !{!1519}
!1525 = !DILocation(line: 0, scope: !1520, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 230, column: 18, scope: !292, inlinedAt: !1509)
!1527 = !DILocalVariable(name: "__dest", arg: 1, scope: !1528, file: !1280, line: 57, type: !50)
!1528 = distinct !DISubprogram(name: "memset", scope: !1280, file: !1280, line: 57, type: !1281, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1529)
!1529 = !{!1527, !1530, !1531}
!1530 = !DILocalVariable(name: "__ch", arg: 2, scope: !1528, file: !1280, line: 57, type: !51)
!1531 = !DILocalVariable(name: "__len", arg: 3, scope: !1528, file: !1280, line: 57, type: !53)
!1532 = !DILocation(line: 0, scope: !1528, inlinedAt: !1533)
!1533 = distinct !DILocation(line: 1137, column: 3, scope: !1520, inlinedAt: !1526)
!1534 = !DILocation(line: 59, column: 10, scope: !1528, inlinedAt: !1533)
!1535 = !DILocation(line: 231, column: 7, scope: !1536, inlinedAt: !1509)
!1536 = distinct !DILexicalBlock(scope: !292, file: !256, line: 231, column: 7)
!1537 = !DILocation(line: 231, column: 40, scope: !1536, inlinedAt: !1509)
!1538 = !DILocation(line: 231, column: 45, scope: !1536, inlinedAt: !1509)
!1539 = !DILocation(line: 235, column: 1, scope: !292, inlinedAt: !1509)
!1540 = !DILocation(line: 0, scope: !292, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 358, column: 27, scope: !1510)
!1542 = !DILocation(line: 199, column: 29, scope: !292, inlinedAt: !1541)
!1543 = !DILocation(line: 201, column: 19, scope: !1514, inlinedAt: !1541)
!1544 = !DILocation(line: 201, column: 7, scope: !292, inlinedAt: !1541)
!1545 = !DILocation(line: 229, column: 3, scope: !292, inlinedAt: !1541)
!1546 = !DILocation(line: 230, column: 3, scope: !292, inlinedAt: !1541)
!1547 = !DILocation(line: 230, column: 13, scope: !292, inlinedAt: !1541)
!1548 = !DILocation(line: 0, scope: !1520, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 230, column: 18, scope: !292, inlinedAt: !1541)
!1550 = !DILocation(line: 0, scope: !1528, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 1137, column: 3, scope: !1520, inlinedAt: !1549)
!1552 = !DILocation(line: 59, column: 10, scope: !1528, inlinedAt: !1551)
!1553 = !DILocation(line: 231, column: 7, scope: !1536, inlinedAt: !1541)
!1554 = !DILocation(line: 231, column: 40, scope: !1536, inlinedAt: !1541)
!1555 = !DILocation(line: 231, column: 45, scope: !1536, inlinedAt: !1541)
!1556 = !DILocation(line: 235, column: 1, scope: !292, inlinedAt: !1541)
!1557 = !DILocation(line: 360, column: 13, scope: !1453)
!1558 = !DILocation(line: 0, scope: !1451)
!1559 = !DILocation(line: 361, column: 45, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1451, file: !256, line: 361, column: 11)
!1561 = !DILocation(line: 361, column: 11, scope: !1451)
!1562 = !DILocation(line: 362, column: 13, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !256, line: 362, column: 13)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !256, line: 362, column: 13)
!1565 = !DILocation(line: 362, column: 13, scope: !1564)
!1566 = !DILocation(line: 361, column: 52, scope: !1560)
!1567 = distinct !{!1567, !1561, !1568, !537}
!1568 = !DILocation(line: 362, column: 13, scope: !1451)
!1569 = !DILocation(line: 260, column: 10, scope: !1425)
!1570 = !DILocation(line: 365, column: 28, scope: !1453)
!1571 = !DILocation(line: 367, column: 7, scope: !1454)
!1572 = !DILocation(line: 370, column: 7, scope: !1454)
!1573 = !DILocation(line: 376, column: 11, scope: !1454)
!1574 = !DILocation(line: 381, column: 11, scope: !1454)
!1575 = !DILocation(line: 382, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !256, line: 382, column: 9)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !256, line: 382, column: 9)
!1578 = distinct !DILexicalBlock(scope: !1454, file: !256, line: 381, column: 11)
!1579 = !DILocation(line: 382, column: 9, scope: !1577)
!1580 = !DILocation(line: 389, column: 7, scope: !1454)
!1581 = !DILocation(line: 392, column: 7, scope: !1454)
!1582 = !DILocation(line: 0, scope: !1456)
!1583 = !DILocation(line: 395, column: 8, scope: !1456)
!1584 = !DILocation(line: 395, column: 34, scope: !1459)
!1585 = !DILocation(line: 395, column: 26, scope: !1459)
!1586 = !DILocation(line: 395, column: 48, scope: !1459)
!1587 = !DILocation(line: 395, column: 55, scope: !1459)
!1588 = !DILocation(line: 395, column: 3, scope: !1456)
!1589 = !DILocation(line: 395, column: 67, scope: !1459)
!1590 = !DILocation(line: 0, scope: !1458)
!1591 = !DILocation(line: 402, column: 11, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 401, column: 11)
!1593 = !DILocation(line: 404, column: 17, scope: !1592)
!1594 = !DILocation(line: 405, column: 39, scope: !1592)
!1595 = !DILocation(line: 409, column: 32, scope: !1592)
!1596 = !DILocation(line: 405, column: 19, scope: !1592)
!1597 = !DILocation(line: 405, column: 15, scope: !1592)
!1598 = !DILocation(line: 410, column: 11, scope: !1592)
!1599 = !DILocation(line: 410, column: 25, scope: !1592)
!1600 = !DILocalVariable(name: "__s1", arg: 1, scope: !1601, file: !521, line: 974, type: !689)
!1601 = distinct !DISubprogram(name: "memeq", scope: !521, file: !521, line: 974, type: !1242, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1602)
!1602 = !{!1600, !1603, !1604}
!1603 = !DILocalVariable(name: "__s2", arg: 2, scope: !1601, file: !521, line: 974, type: !689)
!1604 = !DILocalVariable(name: "__n", arg: 3, scope: !1601, file: !521, line: 974, type: !53)
!1605 = !DILocation(line: 0, scope: !1601, inlinedAt: !1606)
!1606 = distinct !DILocation(line: 410, column: 14, scope: !1592)
!1607 = !DILocation(line: 976, column: 11, scope: !1601, inlinedAt: !1606)
!1608 = !DILocation(line: 976, column: 10, scope: !1601, inlinedAt: !1606)
!1609 = !DILocation(line: 401, column: 11, scope: !1458)
!1610 = !DILocation(line: 417, column: 25, scope: !1458)
!1611 = !DILocation(line: 418, column: 7, scope: !1458)
!1612 = !DILocation(line: 421, column: 15, scope: !1465)
!1613 = !DILocation(line: 423, column: 15, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !256, line: 423, column: 15)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !256, line: 422, column: 13)
!1616 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 421, column: 15)
!1617 = !DILocation(line: 423, column: 15, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !256, line: 423, column: 15)
!1619 = !DILocation(line: 423, column: 15, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !256, line: 423, column: 15)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !256, line: 423, column: 15)
!1622 = distinct !DILexicalBlock(scope: !1618, file: !256, line: 423, column: 15)
!1623 = !DILocation(line: 423, column: 15, scope: !1621)
!1624 = !DILocation(line: 423, column: 15, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !256, line: 423, column: 15)
!1626 = distinct !DILexicalBlock(scope: !1622, file: !256, line: 423, column: 15)
!1627 = !DILocation(line: 423, column: 15, scope: !1626)
!1628 = !DILocation(line: 423, column: 15, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !256, line: 423, column: 15)
!1630 = distinct !DILexicalBlock(scope: !1622, file: !256, line: 423, column: 15)
!1631 = !DILocation(line: 423, column: 15, scope: !1630)
!1632 = !DILocation(line: 423, column: 15, scope: !1622)
!1633 = !DILocation(line: 423, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !256, line: 423, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1614, file: !256, line: 423, column: 15)
!1636 = !DILocation(line: 423, column: 15, scope: !1635)
!1637 = !DILocation(line: 431, column: 19, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1615, file: !256, line: 430, column: 19)
!1639 = !DILocation(line: 431, column: 24, scope: !1638)
!1640 = !DILocation(line: 431, column: 28, scope: !1638)
!1641 = !DILocation(line: 431, column: 38, scope: !1638)
!1642 = !DILocation(line: 431, column: 48, scope: !1638)
!1643 = !DILocation(line: 431, column: 59, scope: !1638)
!1644 = !DILocation(line: 433, column: 19, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !256, line: 433, column: 19)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !256, line: 433, column: 19)
!1647 = distinct !DILexicalBlock(scope: !1638, file: !256, line: 432, column: 17)
!1648 = !DILocation(line: 433, column: 19, scope: !1646)
!1649 = !DILocation(line: 434, column: 19, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !256, line: 434, column: 19)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !256, line: 434, column: 19)
!1652 = !DILocation(line: 434, column: 19, scope: !1651)
!1653 = !DILocation(line: 435, column: 17, scope: !1647)
!1654 = !DILocation(line: 442, column: 20, scope: !1616)
!1655 = !DILocation(line: 447, column: 11, scope: !1465)
!1656 = !DILocation(line: 450, column: 19, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 448, column: 13)
!1658 = !DILocation(line: 456, column: 19, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1657, file: !256, line: 455, column: 19)
!1660 = !DILocation(line: 456, column: 24, scope: !1659)
!1661 = !DILocation(line: 456, column: 28, scope: !1659)
!1662 = !DILocation(line: 456, column: 38, scope: !1659)
!1663 = !DILocation(line: 456, column: 47, scope: !1659)
!1664 = !DILocation(line: 456, column: 41, scope: !1659)
!1665 = !DILocation(line: 456, column: 52, scope: !1659)
!1666 = !DILocation(line: 455, column: 19, scope: !1657)
!1667 = !DILocation(line: 457, column: 25, scope: !1659)
!1668 = !DILocation(line: 457, column: 17, scope: !1659)
!1669 = !DILocation(line: 464, column: 25, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1659, file: !256, line: 458, column: 19)
!1671 = !DILocation(line: 468, column: 21, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !256, line: 468, column: 21)
!1673 = distinct !DILexicalBlock(scope: !1670, file: !256, line: 468, column: 21)
!1674 = !DILocation(line: 468, column: 21, scope: !1673)
!1675 = !DILocation(line: 469, column: 21, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !256, line: 469, column: 21)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !256, line: 469, column: 21)
!1678 = !DILocation(line: 469, column: 21, scope: !1677)
!1679 = !DILocation(line: 470, column: 21, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !256, line: 470, column: 21)
!1681 = distinct !DILexicalBlock(scope: !1670, file: !256, line: 470, column: 21)
!1682 = !DILocation(line: 470, column: 21, scope: !1681)
!1683 = !DILocation(line: 471, column: 21, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !256, line: 471, column: 21)
!1685 = distinct !DILexicalBlock(scope: !1670, file: !256, line: 471, column: 21)
!1686 = !DILocation(line: 471, column: 21, scope: !1685)
!1687 = !DILocation(line: 472, column: 21, scope: !1670)
!1688 = !DILocation(line: 482, column: 33, scope: !1488)
!1689 = !DILocation(line: 483, column: 33, scope: !1488)
!1690 = !DILocation(line: 485, column: 33, scope: !1488)
!1691 = !DILocation(line: 486, column: 33, scope: !1488)
!1692 = !DILocation(line: 487, column: 33, scope: !1488)
!1693 = !DILocation(line: 490, column: 17, scope: !1488)
!1694 = !DILocation(line: 492, column: 21, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !256, line: 491, column: 15)
!1696 = distinct !DILexicalBlock(scope: !1488, file: !256, line: 490, column: 17)
!1697 = !DILocation(line: 499, column: 35, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1488, file: !256, line: 499, column: 17)
!1699 = !DILocation(line: 499, column: 57, scope: !1698)
!1700 = !DILocation(line: 0, scope: !1488)
!1701 = !DILocation(line: 502, column: 11, scope: !1488)
!1702 = !DILocation(line: 504, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1488, file: !256, line: 503, column: 17)
!1704 = !DILocation(line: 507, column: 11, scope: !1488)
!1705 = !DILocation(line: 508, column: 17, scope: !1488)
!1706 = !DILocation(line: 517, column: 15, scope: !1465)
!1707 = !DILocation(line: 517, column: 40, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 517, column: 15)
!1709 = !DILocation(line: 517, column: 47, scope: !1708)
!1710 = !DILocation(line: 517, column: 18, scope: !1708)
!1711 = !DILocation(line: 521, column: 17, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 521, column: 15)
!1713 = !DILocation(line: 521, column: 15, scope: !1465)
!1714 = !DILocation(line: 525, column: 11, scope: !1465)
!1715 = !DILocation(line: 537, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 536, column: 15)
!1717 = !DILocation(line: 536, column: 15, scope: !1465)
!1718 = !DILocation(line: 544, column: 15, scope: !1465)
!1719 = !DILocation(line: 546, column: 19, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !256, line: 545, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1465, file: !256, line: 544, column: 15)
!1722 = !DILocation(line: 549, column: 19, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !256, line: 549, column: 19)
!1724 = !DILocation(line: 549, column: 30, scope: !1723)
!1725 = !DILocation(line: 558, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !256, line: 558, column: 15)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !256, line: 558, column: 15)
!1728 = !DILocation(line: 558, column: 15, scope: !1727)
!1729 = !DILocation(line: 559, column: 15, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !256, line: 559, column: 15)
!1731 = distinct !DILexicalBlock(scope: !1720, file: !256, line: 559, column: 15)
!1732 = !DILocation(line: 559, column: 15, scope: !1731)
!1733 = !DILocation(line: 560, column: 15, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1735, file: !256, line: 560, column: 15)
!1735 = distinct !DILexicalBlock(scope: !1720, file: !256, line: 560, column: 15)
!1736 = !DILocation(line: 560, column: 15, scope: !1735)
!1737 = !DILocation(line: 562, column: 13, scope: !1720)
!1738 = !DILocation(line: 602, column: 17, scope: !1464)
!1739 = !DILocation(line: 0, scope: !1464)
!1740 = !DILocation(line: 605, column: 29, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1469, file: !256, line: 603, column: 15)
!1742 = !DILocation(line: 605, column: 41, scope: !1741)
!1743 = !DILocation(line: 670, column: 23, scope: !1485)
!1744 = !DILocation(line: 609, column: 17, scope: !1468)
!1745 = !DILocation(line: 609, column: 27, scope: !1468)
!1746 = !DILocation(line: 0, scope: !1520, inlinedAt: !1747)
!1747 = distinct !DILocation(line: 609, column: 32, scope: !1468)
!1748 = !DILocation(line: 0, scope: !1528, inlinedAt: !1749)
!1749 = distinct !DILocation(line: 1137, column: 3, scope: !1520, inlinedAt: !1747)
!1750 = !DILocation(line: 59, column: 10, scope: !1528, inlinedAt: !1749)
!1751 = !DILocation(line: 613, column: 29, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1468, file: !256, line: 613, column: 21)
!1753 = !DILocation(line: 613, column: 21, scope: !1468)
!1754 = !DILocation(line: 614, column: 29, scope: !1752)
!1755 = !DILocation(line: 614, column: 19, scope: !1752)
!1756 = !DILocation(line: 618, column: 21, scope: !1471)
!1757 = !DILocation(line: 620, column: 54, scope: !1471)
!1758 = !DILocation(line: 0, scope: !1471)
!1759 = !DILocation(line: 619, column: 36, scope: !1471)
!1760 = !DILocation(line: 621, column: 25, scope: !1471)
!1761 = !DILocation(line: 631, column: 38, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1480, file: !256, line: 629, column: 23)
!1763 = !DILocation(line: 631, column: 48, scope: !1762)
!1764 = !DILocation(line: 665, column: 19, scope: !1472)
!1765 = !DILocation(line: 666, column: 15, scope: !1469)
!1766 = !DILocation(line: 626, column: 25, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1481, file: !256, line: 624, column: 23)
!1768 = !DILocation(line: 631, column: 51, scope: !1762)
!1769 = !DILocation(line: 631, column: 25, scope: !1762)
!1770 = !DILocation(line: 632, column: 28, scope: !1762)
!1771 = !DILocation(line: 631, column: 34, scope: !1762)
!1772 = distinct !{!1772, !1769, !1770, !537}
!1773 = !DILocation(line: 646, column: 29, scope: !1478)
!1774 = !DILocation(line: 0, scope: !1476)
!1775 = !DILocation(line: 649, column: 49, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1476, file: !256, line: 648, column: 29)
!1777 = !DILocation(line: 649, column: 39, scope: !1776)
!1778 = !DILocation(line: 649, column: 31, scope: !1776)
!1779 = !DILocation(line: 648, column: 60, scope: !1776)
!1780 = !DILocation(line: 648, column: 50, scope: !1776)
!1781 = !DILocation(line: 648, column: 29, scope: !1476)
!1782 = distinct !{!1782, !1781, !1783, !537}
!1783 = !DILocation(line: 654, column: 33, scope: !1476)
!1784 = !DILocation(line: 657, column: 43, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1479, file: !256, line: 657, column: 29)
!1786 = !DILocalVariable(name: "wc", arg: 1, scope: !1787, file: !1788, line: 865, type: !1791)
!1787 = distinct !DISubprogram(name: "c32isprint", scope: !1788, file: !1788, line: 865, type: !1789, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1793)
!1788 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!51, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1792, line: 20, baseType: !14)
!1792 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1793 = !{!1786}
!1794 = !DILocation(line: 0, scope: !1787, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 657, column: 31, scope: !1785)
!1796 = !DILocation(line: 871, column: 10, scope: !1787, inlinedAt: !1795)
!1797 = !DILocation(line: 657, column: 31, scope: !1785)
!1798 = !DILocation(line: 664, column: 23, scope: !1471)
!1799 = !DILocation(line: 753, column: 2, scope: !1425)
!1800 = !DILocation(line: 756, column: 51, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 756, column: 7)
!1802 = !DILocation(line: 670, column: 19, scope: !1485)
!1803 = !DILocation(line: 670, column: 45, scope: !1485)
!1804 = !DILocation(line: 674, column: 33, scope: !1484)
!1805 = !DILocation(line: 0, scope: !1484)
!1806 = !DILocation(line: 676, column: 17, scope: !1484)
!1807 = !DILocation(line: 398, column: 12, scope: !1458)
!1808 = !DILocation(line: 678, column: 43, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !256, line: 678, column: 25)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !256, line: 677, column: 19)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !256, line: 676, column: 17)
!1812 = distinct !DILexicalBlock(scope: !1484, file: !256, line: 676, column: 17)
!1813 = !DILocation(line: 680, column: 25, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !256, line: 680, column: 25)
!1815 = distinct !DILexicalBlock(scope: !1809, file: !256, line: 679, column: 23)
!1816 = !DILocation(line: 680, column: 25, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !256, line: 680, column: 25)
!1818 = !DILocation(line: 680, column: 25, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !256, line: 680, column: 25)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !256, line: 680, column: 25)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !256, line: 680, column: 25)
!1822 = !DILocation(line: 680, column: 25, scope: !1820)
!1823 = !DILocation(line: 680, column: 25, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !256, line: 680, column: 25)
!1825 = distinct !DILexicalBlock(scope: !1821, file: !256, line: 680, column: 25)
!1826 = !DILocation(line: 680, column: 25, scope: !1825)
!1827 = !DILocation(line: 680, column: 25, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !256, line: 680, column: 25)
!1829 = distinct !DILexicalBlock(scope: !1821, file: !256, line: 680, column: 25)
!1830 = !DILocation(line: 680, column: 25, scope: !1829)
!1831 = !DILocation(line: 680, column: 25, scope: !1821)
!1832 = !DILocation(line: 680, column: 25, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !256, line: 680, column: 25)
!1834 = distinct !DILexicalBlock(scope: !1814, file: !256, line: 680, column: 25)
!1835 = !DILocation(line: 680, column: 25, scope: !1834)
!1836 = !DILocation(line: 681, column: 25, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !256, line: 681, column: 25)
!1838 = distinct !DILexicalBlock(scope: !1815, file: !256, line: 681, column: 25)
!1839 = !DILocation(line: 681, column: 25, scope: !1838)
!1840 = !DILocation(line: 682, column: 25, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !256, line: 682, column: 25)
!1842 = distinct !DILexicalBlock(scope: !1815, file: !256, line: 682, column: 25)
!1843 = !DILocation(line: 682, column: 25, scope: !1842)
!1844 = !DILocation(line: 683, column: 38, scope: !1815)
!1845 = !DILocation(line: 683, column: 33, scope: !1815)
!1846 = !DILocation(line: 684, column: 23, scope: !1815)
!1847 = !DILocation(line: 685, column: 30, scope: !1809)
!1848 = !DILocation(line: 687, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !256, line: 687, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !256, line: 687, column: 25)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !256, line: 686, column: 23)
!1852 = distinct !DILexicalBlock(scope: !1809, file: !256, line: 685, column: 30)
!1853 = !DILocation(line: 687, column: 25, scope: !1850)
!1854 = !DILocation(line: 689, column: 23, scope: !1851)
!1855 = !DILocation(line: 690, column: 35, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1810, file: !256, line: 690, column: 25)
!1857 = !DILocation(line: 690, column: 30, scope: !1856)
!1858 = !DILocation(line: 690, column: 25, scope: !1810)
!1859 = !DILocation(line: 692, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !256, line: 692, column: 21)
!1861 = distinct !DILexicalBlock(scope: !1810, file: !256, line: 692, column: 21)
!1862 = !DILocation(line: 692, column: 21, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !256, line: 692, column: 21)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !256, line: 692, column: 21)
!1865 = distinct !DILexicalBlock(scope: !1860, file: !256, line: 692, column: 21)
!1866 = !DILocation(line: 692, column: 21, scope: !1864)
!1867 = !DILocation(line: 692, column: 21, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !256, line: 692, column: 21)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !256, line: 692, column: 21)
!1870 = !DILocation(line: 692, column: 21, scope: !1869)
!1871 = !DILocation(line: 692, column: 21, scope: !1865)
!1872 = !DILocation(line: 0, scope: !1810)
!1873 = !DILocation(line: 693, column: 21, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !256, line: 693, column: 21)
!1875 = distinct !DILexicalBlock(scope: !1810, file: !256, line: 693, column: 21)
!1876 = !DILocation(line: 693, column: 21, scope: !1875)
!1877 = !DILocation(line: 694, column: 25, scope: !1810)
!1878 = !DILocation(line: 676, column: 17, scope: !1811)
!1879 = distinct !{!1879, !1880, !1881}
!1880 = !DILocation(line: 676, column: 17, scope: !1812)
!1881 = !DILocation(line: 695, column: 19, scope: !1812)
!1882 = !DILocation(line: 409, column: 30, scope: !1592)
!1883 = !DILocation(line: 702, column: 34, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 702, column: 11)
!1885 = !DILocation(line: 704, column: 14, scope: !1884)
!1886 = !DILocation(line: 705, column: 14, scope: !1884)
!1887 = !DILocation(line: 705, column: 35, scope: !1884)
!1888 = !DILocation(line: 705, column: 17, scope: !1884)
!1889 = !DILocation(line: 705, column: 47, scope: !1884)
!1890 = !DILocation(line: 705, column: 65, scope: !1884)
!1891 = !DILocation(line: 706, column: 11, scope: !1884)
!1892 = !DILocation(line: 702, column: 11, scope: !1458)
!1893 = !DILocation(line: 395, column: 15, scope: !1456)
!1894 = !DILocation(line: 709, column: 5, scope: !1458)
!1895 = !DILocation(line: 710, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 710, column: 7)
!1897 = !DILocation(line: 710, column: 7, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1896, file: !256, line: 710, column: 7)
!1899 = !DILocation(line: 710, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !256, line: 710, column: 7)
!1901 = distinct !DILexicalBlock(scope: !1902, file: !256, line: 710, column: 7)
!1902 = distinct !DILexicalBlock(scope: !1898, file: !256, line: 710, column: 7)
!1903 = !DILocation(line: 710, column: 7, scope: !1901)
!1904 = !DILocation(line: 710, column: 7, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !256, line: 710, column: 7)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !256, line: 710, column: 7)
!1907 = !DILocation(line: 710, column: 7, scope: !1906)
!1908 = !DILocation(line: 710, column: 7, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !256, line: 710, column: 7)
!1910 = distinct !DILexicalBlock(scope: !1902, file: !256, line: 710, column: 7)
!1911 = !DILocation(line: 710, column: 7, scope: !1910)
!1912 = !DILocation(line: 710, column: 7, scope: !1902)
!1913 = !DILocation(line: 710, column: 7, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !256, line: 710, column: 7)
!1915 = distinct !DILexicalBlock(scope: !1896, file: !256, line: 710, column: 7)
!1916 = !DILocation(line: 710, column: 7, scope: !1915)
!1917 = !DILocation(line: 712, column: 5, scope: !1458)
!1918 = !DILocation(line: 713, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !256, line: 713, column: 7)
!1920 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 713, column: 7)
!1921 = !DILocation(line: 417, column: 21, scope: !1458)
!1922 = !DILocation(line: 713, column: 7, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !256, line: 713, column: 7)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !256, line: 713, column: 7)
!1925 = distinct !DILexicalBlock(scope: !1919, file: !256, line: 713, column: 7)
!1926 = !DILocation(line: 713, column: 7, scope: !1924)
!1927 = !DILocation(line: 713, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !256, line: 713, column: 7)
!1929 = distinct !DILexicalBlock(scope: !1925, file: !256, line: 713, column: 7)
!1930 = !DILocation(line: 713, column: 7, scope: !1929)
!1931 = !DILocation(line: 713, column: 7, scope: !1925)
!1932 = !DILocation(line: 714, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !256, line: 714, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1458, file: !256, line: 714, column: 7)
!1935 = !DILocation(line: 714, column: 7, scope: !1934)
!1936 = !DILocation(line: 716, column: 11, scope: !1458)
!1937 = !DILocation(line: 718, column: 5, scope: !1459)
!1938 = !DILocation(line: 395, column: 82, scope: !1459)
!1939 = !DILocation(line: 395, column: 3, scope: !1459)
!1940 = distinct !{!1940, !1588, !1941, !537}
!1941 = !DILocation(line: 718, column: 5, scope: !1456)
!1942 = !DILocation(line: 720, column: 11, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 720, column: 7)
!1944 = !DILocation(line: 720, column: 16, scope: !1943)
!1945 = !DILocation(line: 728, column: 51, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 728, column: 7)
!1947 = !DILocation(line: 731, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1946, file: !256, line: 730, column: 5)
!1949 = !DILocation(line: 732, column: 16, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1948, file: !256, line: 731, column: 11)
!1951 = !DILocation(line: 732, column: 9, scope: !1950)
!1952 = !DILocation(line: 736, column: 18, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1950, file: !256, line: 736, column: 16)
!1954 = !DILocation(line: 736, column: 29, scope: !1953)
!1955 = !DILocation(line: 745, column: 7, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 745, column: 7)
!1957 = !DILocation(line: 745, column: 20, scope: !1956)
!1958 = !DILocation(line: 746, column: 12, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !256, line: 746, column: 5)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !256, line: 746, column: 5)
!1961 = !DILocation(line: 746, column: 5, scope: !1960)
!1962 = !DILocation(line: 747, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1964, file: !256, line: 747, column: 7)
!1964 = distinct !DILexicalBlock(scope: !1959, file: !256, line: 747, column: 7)
!1965 = !DILocation(line: 747, column: 7, scope: !1964)
!1966 = !DILocation(line: 746, column: 39, scope: !1959)
!1967 = distinct !{!1967, !1961, !1968, !537}
!1968 = !DILocation(line: 747, column: 7, scope: !1960)
!1969 = !DILocation(line: 749, column: 11, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1425, file: !256, line: 749, column: 7)
!1971 = !DILocation(line: 749, column: 7, scope: !1425)
!1972 = !DILocation(line: 750, column: 5, scope: !1970)
!1973 = !DILocation(line: 750, column: 17, scope: !1970)
!1974 = !DILocation(line: 756, column: 21, scope: !1801)
!1975 = !DILocation(line: 760, column: 42, scope: !1425)
!1976 = !DILocation(line: 758, column: 10, scope: !1425)
!1977 = !DILocation(line: 758, column: 3, scope: !1425)
!1978 = !DILocation(line: 762, column: 1, scope: !1425)
!1979 = !DISubprogram(name: "iswprint", scope: !1980, file: !1980, line: 120, type: !1789, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!1980 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1981 = distinct !DISubprogram(name: "quotearg_alloc", scope: !256, file: !256, line: 788, type: !1982, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1984)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!58, !6, !53, !1317}
!1984 = !{!1985, !1986, !1987}
!1985 = !DILocalVariable(name: "arg", arg: 1, scope: !1981, file: !256, line: 788, type: !6)
!1986 = !DILocalVariable(name: "argsize", arg: 2, scope: !1981, file: !256, line: 788, type: !53)
!1987 = !DILocalVariable(name: "o", arg: 3, scope: !1981, file: !256, line: 789, type: !1317)
!1988 = !DILocation(line: 0, scope: !1981)
!1989 = !DILocalVariable(name: "arg", arg: 1, scope: !1990, file: !256, line: 801, type: !6)
!1990 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !256, file: !256, line: 801, type: !1991, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!58, !6, !53, !414, !1317}
!1993 = !{!1989, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001}
!1994 = !DILocalVariable(name: "argsize", arg: 2, scope: !1990, file: !256, line: 801, type: !53)
!1995 = !DILocalVariable(name: "size", arg: 3, scope: !1990, file: !256, line: 801, type: !414)
!1996 = !DILocalVariable(name: "o", arg: 4, scope: !1990, file: !256, line: 802, type: !1317)
!1997 = !DILocalVariable(name: "p", scope: !1990, file: !256, line: 804, type: !1317)
!1998 = !DILocalVariable(name: "saved_errno", scope: !1990, file: !256, line: 805, type: !51)
!1999 = !DILocalVariable(name: "flags", scope: !1990, file: !256, line: 807, type: !51)
!2000 = !DILocalVariable(name: "bufsize", scope: !1990, file: !256, line: 808, type: !53)
!2001 = !DILocalVariable(name: "buf", scope: !1990, file: !256, line: 812, type: !58)
!2002 = !DILocation(line: 0, scope: !1990, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 791, column: 10, scope: !1981)
!2004 = !DILocation(line: 804, column: 37, scope: !1990, inlinedAt: !2003)
!2005 = !DILocation(line: 805, column: 21, scope: !1990, inlinedAt: !2003)
!2006 = !DILocation(line: 807, column: 18, scope: !1990, inlinedAt: !2003)
!2007 = !DILocation(line: 807, column: 24, scope: !1990, inlinedAt: !2003)
!2008 = !DILocation(line: 808, column: 72, scope: !1990, inlinedAt: !2003)
!2009 = !DILocation(line: 809, column: 53, scope: !1990, inlinedAt: !2003)
!2010 = !DILocation(line: 810, column: 49, scope: !1990, inlinedAt: !2003)
!2011 = !DILocation(line: 811, column: 49, scope: !1990, inlinedAt: !2003)
!2012 = !DILocation(line: 808, column: 20, scope: !1990, inlinedAt: !2003)
!2013 = !DILocation(line: 811, column: 62, scope: !1990, inlinedAt: !2003)
!2014 = !DILocation(line: 812, column: 15, scope: !1990, inlinedAt: !2003)
!2015 = !DILocation(line: 813, column: 60, scope: !1990, inlinedAt: !2003)
!2016 = !DILocation(line: 815, column: 32, scope: !1990, inlinedAt: !2003)
!2017 = !DILocation(line: 815, column: 47, scope: !1990, inlinedAt: !2003)
!2018 = !DILocation(line: 813, column: 3, scope: !1990, inlinedAt: !2003)
!2019 = !DILocation(line: 816, column: 9, scope: !1990, inlinedAt: !2003)
!2020 = !DILocation(line: 791, column: 3, scope: !1981)
!2021 = !DILocation(line: 0, scope: !1990)
!2022 = !DILocation(line: 804, column: 37, scope: !1990)
!2023 = !DILocation(line: 805, column: 21, scope: !1990)
!2024 = !DILocation(line: 807, column: 18, scope: !1990)
!2025 = !DILocation(line: 807, column: 27, scope: !1990)
!2026 = !DILocation(line: 807, column: 24, scope: !1990)
!2027 = !DILocation(line: 808, column: 72, scope: !1990)
!2028 = !DILocation(line: 809, column: 53, scope: !1990)
!2029 = !DILocation(line: 810, column: 49, scope: !1990)
!2030 = !DILocation(line: 811, column: 49, scope: !1990)
!2031 = !DILocation(line: 808, column: 20, scope: !1990)
!2032 = !DILocation(line: 811, column: 62, scope: !1990)
!2033 = !DILocation(line: 812, column: 15, scope: !1990)
!2034 = !DILocation(line: 813, column: 60, scope: !1990)
!2035 = !DILocation(line: 815, column: 32, scope: !1990)
!2036 = !DILocation(line: 815, column: 47, scope: !1990)
!2037 = !DILocation(line: 813, column: 3, scope: !1990)
!2038 = !DILocation(line: 816, column: 9, scope: !1990)
!2039 = !DILocation(line: 817, column: 7, scope: !1990)
!2040 = !DILocation(line: 818, column: 11, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !1990, file: !256, line: 817, column: 7)
!2042 = !DILocation(line: 818, column: 5, scope: !2041)
!2043 = !DILocation(line: 819, column: 3, scope: !1990)
!2044 = distinct !DISubprogram(name: "quotearg_free", scope: !256, file: !256, line: 837, type: !192, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2045)
!2045 = !{!2046, !2047}
!2046 = !DILocalVariable(name: "sv", scope: !2044, file: !256, line: 839, type: !315)
!2047 = !DILocalVariable(name: "i", scope: !2048, file: !256, line: 840, type: !51)
!2048 = distinct !DILexicalBlock(scope: !2044, file: !256, line: 840, column: 3)
!2049 = !DILocation(line: 839, column: 24, scope: !2044)
!2050 = !DILocation(line: 0, scope: !2044)
!2051 = !DILocation(line: 0, scope: !2048)
!2052 = !DILocation(line: 840, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !256, line: 840, column: 3)
!2054 = !DILocation(line: 840, column: 3, scope: !2048)
!2055 = !DILocation(line: 842, column: 13, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2044, file: !256, line: 842, column: 7)
!2057 = !{!2058, !486, i64 8}
!2058 = !{!"slotvec", !770, i64 0, !486, i64 8}
!2059 = !DILocation(line: 842, column: 17, scope: !2056)
!2060 = !DILocation(line: 842, column: 7, scope: !2044)
!2061 = !DILocation(line: 841, column: 17, scope: !2053)
!2062 = !DILocation(line: 841, column: 5, scope: !2053)
!2063 = !DILocation(line: 840, column: 32, scope: !2053)
!2064 = distinct !{!2064, !2054, !2065, !537}
!2065 = !DILocation(line: 841, column: 20, scope: !2048)
!2066 = !DILocation(line: 844, column: 7, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2056, file: !256, line: 843, column: 5)
!2068 = !DILocation(line: 845, column: 21, scope: !2067)
!2069 = !{!2058, !770, i64 0}
!2070 = !DILocation(line: 846, column: 20, scope: !2067)
!2071 = !DILocation(line: 847, column: 5, scope: !2067)
!2072 = !DILocation(line: 848, column: 10, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2044, file: !256, line: 848, column: 7)
!2074 = !DILocation(line: 848, column: 7, scope: !2044)
!2075 = !DILocation(line: 850, column: 13, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !256, line: 849, column: 5)
!2077 = !DILocation(line: 850, column: 7, scope: !2076)
!2078 = !DILocation(line: 851, column: 15, scope: !2076)
!2079 = !DILocation(line: 852, column: 5, scope: !2076)
!2080 = !DILocation(line: 853, column: 10, scope: !2044)
!2081 = !DILocation(line: 854, column: 1, scope: !2044)
!2082 = distinct !DISubprogram(name: "quotearg_n", scope: !256, file: !256, line: 919, type: !674, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2083)
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "n", arg: 1, scope: !2082, file: !256, line: 919, type: !51)
!2085 = !DILocalVariable(name: "arg", arg: 2, scope: !2082, file: !256, line: 919, type: !6)
!2086 = !DILocation(line: 0, scope: !2082)
!2087 = !DILocation(line: 921, column: 10, scope: !2082)
!2088 = !DILocation(line: 921, column: 3, scope: !2082)
!2089 = distinct !DISubprogram(name: "quotearg_n_options", scope: !256, file: !256, line: 866, type: !2090, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2092)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!58, !51, !6, !53, !1317}
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2103, !2104, !2106, !2107, !2108}
!2093 = !DILocalVariable(name: "n", arg: 1, scope: !2089, file: !256, line: 866, type: !51)
!2094 = !DILocalVariable(name: "arg", arg: 2, scope: !2089, file: !256, line: 866, type: !6)
!2095 = !DILocalVariable(name: "argsize", arg: 3, scope: !2089, file: !256, line: 866, type: !53)
!2096 = !DILocalVariable(name: "options", arg: 4, scope: !2089, file: !256, line: 867, type: !1317)
!2097 = !DILocalVariable(name: "saved_errno", scope: !2089, file: !256, line: 869, type: !51)
!2098 = !DILocalVariable(name: "sv", scope: !2089, file: !256, line: 871, type: !315)
!2099 = !DILocalVariable(name: "nslots_max", scope: !2089, file: !256, line: 873, type: !51)
!2100 = !DILocalVariable(name: "preallocated", scope: !2101, file: !256, line: 879, type: !67)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !256, line: 878, column: 5)
!2102 = distinct !DILexicalBlock(scope: !2089, file: !256, line: 877, column: 7)
!2103 = !DILocalVariable(name: "new_nslots", scope: !2101, file: !256, line: 880, type: !427)
!2104 = !DILocalVariable(name: "size", scope: !2105, file: !256, line: 891, type: !53)
!2105 = distinct !DILexicalBlock(scope: !2089, file: !256, line: 890, column: 3)
!2106 = !DILocalVariable(name: "val", scope: !2105, file: !256, line: 892, type: !58)
!2107 = !DILocalVariable(name: "flags", scope: !2105, file: !256, line: 894, type: !51)
!2108 = !DILocalVariable(name: "qsize", scope: !2105, file: !256, line: 895, type: !53)
!2109 = !DILocation(line: 0, scope: !2089)
!2110 = !DILocation(line: 869, column: 21, scope: !2089)
!2111 = !DILocation(line: 871, column: 24, scope: !2089)
!2112 = !DILocation(line: 874, column: 17, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2089, file: !256, line: 874, column: 7)
!2114 = !DILocation(line: 875, column: 5, scope: !2113)
!2115 = !DILocation(line: 877, column: 7, scope: !2102)
!2116 = !DILocation(line: 877, column: 14, scope: !2102)
!2117 = !DILocation(line: 877, column: 7, scope: !2089)
!2118 = !DILocation(line: 879, column: 31, scope: !2101)
!2119 = !DILocation(line: 0, scope: !2101)
!2120 = !DILocation(line: 880, column: 7, scope: !2101)
!2121 = !DILocation(line: 880, column: 26, scope: !2101)
!2122 = !DILocation(line: 880, column: 13, scope: !2101)
!2123 = !DILocation(line: 882, column: 31, scope: !2101)
!2124 = !DILocation(line: 883, column: 33, scope: !2101)
!2125 = !DILocation(line: 883, column: 42, scope: !2101)
!2126 = !DILocation(line: 883, column: 31, scope: !2101)
!2127 = !DILocation(line: 882, column: 22, scope: !2101)
!2128 = !DILocation(line: 882, column: 15, scope: !2101)
!2129 = !DILocation(line: 884, column: 11, scope: !2101)
!2130 = !DILocation(line: 885, column: 15, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2101, file: !256, line: 884, column: 11)
!2132 = !{i64 0, i64 8, !769, i64 8, i64 8, !485}
!2133 = !DILocation(line: 885, column: 9, scope: !2131)
!2134 = !DILocation(line: 886, column: 20, scope: !2101)
!2135 = !DILocation(line: 886, column: 18, scope: !2101)
!2136 = !DILocation(line: 886, column: 15, scope: !2101)
!2137 = !DILocation(line: 886, column: 32, scope: !2101)
!2138 = !DILocation(line: 886, column: 43, scope: !2101)
!2139 = !DILocation(line: 886, column: 53, scope: !2101)
!2140 = !DILocation(line: 0, scope: !1528, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 886, column: 7, scope: !2101)
!2142 = !DILocation(line: 59, column: 10, scope: !1528, inlinedAt: !2141)
!2143 = !DILocation(line: 887, column: 16, scope: !2101)
!2144 = !DILocation(line: 887, column: 14, scope: !2101)
!2145 = !DILocation(line: 888, column: 5, scope: !2102)
!2146 = !DILocation(line: 888, column: 5, scope: !2101)
!2147 = !DILocation(line: 891, column: 19, scope: !2105)
!2148 = !DILocation(line: 891, column: 25, scope: !2105)
!2149 = !DILocation(line: 0, scope: !2105)
!2150 = !DILocation(line: 892, column: 23, scope: !2105)
!2151 = !DILocation(line: 894, column: 26, scope: !2105)
!2152 = !DILocation(line: 894, column: 32, scope: !2105)
!2153 = !DILocation(line: 896, column: 55, scope: !2105)
!2154 = !DILocation(line: 897, column: 46, scope: !2105)
!2155 = !DILocation(line: 898, column: 55, scope: !2105)
!2156 = !DILocation(line: 899, column: 55, scope: !2105)
!2157 = !DILocation(line: 895, column: 20, scope: !2105)
!2158 = !DILocation(line: 901, column: 14, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2105, file: !256, line: 901, column: 9)
!2160 = !DILocation(line: 901, column: 9, scope: !2105)
!2161 = !DILocation(line: 903, column: 35, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !256, line: 902, column: 7)
!2163 = !DILocation(line: 903, column: 20, scope: !2162)
!2164 = !DILocation(line: 904, column: 17, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !256, line: 904, column: 13)
!2166 = !DILocation(line: 904, column: 13, scope: !2162)
!2167 = !DILocation(line: 905, column: 11, scope: !2165)
!2168 = !DILocation(line: 906, column: 27, scope: !2162)
!2169 = !DILocation(line: 906, column: 19, scope: !2162)
!2170 = !DILocation(line: 907, column: 69, scope: !2162)
!2171 = !DILocation(line: 909, column: 44, scope: !2162)
!2172 = !DILocation(line: 910, column: 44, scope: !2162)
!2173 = !DILocation(line: 907, column: 9, scope: !2162)
!2174 = !DILocation(line: 911, column: 7, scope: !2162)
!2175 = !DILocation(line: 913, column: 11, scope: !2105)
!2176 = !DILocation(line: 914, column: 5, scope: !2105)
!2177 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !256, file: !256, line: 925, type: !2178, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!58, !51, !6, !53}
!2180 = !{!2181, !2182, !2183}
!2181 = !DILocalVariable(name: "n", arg: 1, scope: !2177, file: !256, line: 925, type: !51)
!2182 = !DILocalVariable(name: "arg", arg: 2, scope: !2177, file: !256, line: 925, type: !6)
!2183 = !DILocalVariable(name: "argsize", arg: 3, scope: !2177, file: !256, line: 925, type: !53)
!2184 = !DILocation(line: 0, scope: !2177)
!2185 = !DILocation(line: 927, column: 10, scope: !2177)
!2186 = !DILocation(line: 927, column: 3, scope: !2177)
!2187 = distinct !DISubprogram(name: "quotearg", scope: !256, file: !256, line: 931, type: !683, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2188)
!2188 = !{!2189}
!2189 = !DILocalVariable(name: "arg", arg: 1, scope: !2187, file: !256, line: 931, type: !6)
!2190 = !DILocation(line: 0, scope: !2187)
!2191 = !DILocation(line: 0, scope: !2082, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 933, column: 10, scope: !2187)
!2193 = !DILocation(line: 921, column: 10, scope: !2082, inlinedAt: !2192)
!2194 = !DILocation(line: 933, column: 3, scope: !2187)
!2195 = distinct !DISubprogram(name: "quotearg_mem", scope: !256, file: !256, line: 937, type: !2196, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!58, !6, !53}
!2198 = !{!2199, !2200}
!2199 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !256, line: 937, type: !6)
!2200 = !DILocalVariable(name: "argsize", arg: 2, scope: !2195, file: !256, line: 937, type: !53)
!2201 = !DILocation(line: 0, scope: !2195)
!2202 = !DILocation(line: 0, scope: !2177, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 939, column: 10, scope: !2195)
!2204 = !DILocation(line: 927, column: 10, scope: !2177, inlinedAt: !2203)
!2205 = !DILocation(line: 939, column: 3, scope: !2195)
!2206 = distinct !DISubprogram(name: "quotearg_n_style", scope: !256, file: !256, line: 943, type: !2207, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!58, !51, !35, !6}
!2209 = !{!2210, !2211, !2212, !2213}
!2210 = !DILocalVariable(name: "n", arg: 1, scope: !2206, file: !256, line: 943, type: !51)
!2211 = !DILocalVariable(name: "s", arg: 2, scope: !2206, file: !256, line: 943, type: !35)
!2212 = !DILocalVariable(name: "arg", arg: 3, scope: !2206, file: !256, line: 943, type: !6)
!2213 = !DILocalVariable(name: "o", scope: !2206, file: !256, line: 945, type: !1318)
!2214 = !DILocation(line: 0, scope: !2206)
!2215 = !DILocation(line: 945, column: 3, scope: !2206)
!2216 = !DILocation(line: 945, column: 32, scope: !2206)
!2217 = !{!2218}
!2218 = distinct !{!2218, !2219, !"quoting_options_from_style: argument 0"}
!2219 = distinct !{!2219, !"quoting_options_from_style"}
!2220 = !DILocation(line: 945, column: 36, scope: !2206)
!2221 = !DILocalVariable(name: "style", arg: 1, scope: !2222, file: !256, line: 183, type: !35)
!2222 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !256, file: !256, line: 183, type: !2223, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!273, !35}
!2225 = !{!2221, !2226}
!2226 = !DILocalVariable(name: "o", scope: !2222, file: !256, line: 185, type: !273)
!2227 = !DILocation(line: 0, scope: !2222, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 945, column: 36, scope: !2206)
!2229 = !DILocation(line: 185, column: 26, scope: !2222, inlinedAt: !2228)
!2230 = !DILocation(line: 186, column: 13, scope: !2231, inlinedAt: !2228)
!2231 = distinct !DILexicalBlock(scope: !2222, file: !256, line: 186, column: 7)
!2232 = !DILocation(line: 186, column: 7, scope: !2222, inlinedAt: !2228)
!2233 = !DILocation(line: 187, column: 5, scope: !2231, inlinedAt: !2228)
!2234 = !DILocation(line: 188, column: 5, scope: !2222, inlinedAt: !2228)
!2235 = !DILocation(line: 188, column: 11, scope: !2222, inlinedAt: !2228)
!2236 = !DILocation(line: 946, column: 10, scope: !2206)
!2237 = !DILocation(line: 947, column: 1, scope: !2206)
!2238 = !DILocation(line: 946, column: 3, scope: !2206)
!2239 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !256, file: !256, line: 950, type: !2240, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!58, !51, !35, !6, !53}
!2242 = !{!2243, !2244, !2245, !2246, !2247}
!2243 = !DILocalVariable(name: "n", arg: 1, scope: !2239, file: !256, line: 950, type: !51)
!2244 = !DILocalVariable(name: "s", arg: 2, scope: !2239, file: !256, line: 950, type: !35)
!2245 = !DILocalVariable(name: "arg", arg: 3, scope: !2239, file: !256, line: 951, type: !6)
!2246 = !DILocalVariable(name: "argsize", arg: 4, scope: !2239, file: !256, line: 951, type: !53)
!2247 = !DILocalVariable(name: "o", scope: !2239, file: !256, line: 953, type: !1318)
!2248 = !DILocation(line: 0, scope: !2239)
!2249 = !DILocation(line: 953, column: 3, scope: !2239)
!2250 = !DILocation(line: 953, column: 32, scope: !2239)
!2251 = !{!2252}
!2252 = distinct !{!2252, !2253, !"quoting_options_from_style: argument 0"}
!2253 = distinct !{!2253, !"quoting_options_from_style"}
!2254 = !DILocation(line: 953, column: 36, scope: !2239)
!2255 = !DILocation(line: 0, scope: !2222, inlinedAt: !2256)
!2256 = distinct !DILocation(line: 953, column: 36, scope: !2239)
!2257 = !DILocation(line: 185, column: 26, scope: !2222, inlinedAt: !2256)
!2258 = !DILocation(line: 186, column: 13, scope: !2231, inlinedAt: !2256)
!2259 = !DILocation(line: 186, column: 7, scope: !2222, inlinedAt: !2256)
!2260 = !DILocation(line: 187, column: 5, scope: !2231, inlinedAt: !2256)
!2261 = !DILocation(line: 188, column: 5, scope: !2222, inlinedAt: !2256)
!2262 = !DILocation(line: 188, column: 11, scope: !2222, inlinedAt: !2256)
!2263 = !DILocation(line: 954, column: 10, scope: !2239)
!2264 = !DILocation(line: 955, column: 1, scope: !2239)
!2265 = !DILocation(line: 954, column: 3, scope: !2239)
!2266 = distinct !DISubprogram(name: "quotearg_style", scope: !256, file: !256, line: 958, type: !2267, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2269)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!58, !35, !6}
!2269 = !{!2270, !2271}
!2270 = !DILocalVariable(name: "s", arg: 1, scope: !2266, file: !256, line: 958, type: !35)
!2271 = !DILocalVariable(name: "arg", arg: 2, scope: !2266, file: !256, line: 958, type: !6)
!2272 = !DILocation(line: 0, scope: !2266)
!2273 = !DILocation(line: 0, scope: !2206, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 960, column: 10, scope: !2266)
!2275 = !DILocation(line: 945, column: 3, scope: !2206, inlinedAt: !2274)
!2276 = !DILocation(line: 945, column: 32, scope: !2206, inlinedAt: !2274)
!2277 = !{!2278}
!2278 = distinct !{!2278, !2279, !"quoting_options_from_style: argument 0"}
!2279 = distinct !{!2279, !"quoting_options_from_style"}
!2280 = !DILocation(line: 945, column: 36, scope: !2206, inlinedAt: !2274)
!2281 = !DILocation(line: 0, scope: !2222, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 945, column: 36, scope: !2206, inlinedAt: !2274)
!2283 = !DILocation(line: 185, column: 26, scope: !2222, inlinedAt: !2282)
!2284 = !DILocation(line: 186, column: 13, scope: !2231, inlinedAt: !2282)
!2285 = !DILocation(line: 186, column: 7, scope: !2222, inlinedAt: !2282)
!2286 = !DILocation(line: 187, column: 5, scope: !2231, inlinedAt: !2282)
!2287 = !DILocation(line: 188, column: 5, scope: !2222, inlinedAt: !2282)
!2288 = !DILocation(line: 188, column: 11, scope: !2222, inlinedAt: !2282)
!2289 = !DILocation(line: 946, column: 10, scope: !2206, inlinedAt: !2274)
!2290 = !DILocation(line: 947, column: 1, scope: !2206, inlinedAt: !2274)
!2291 = !DILocation(line: 960, column: 3, scope: !2266)
!2292 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !256, file: !256, line: 964, type: !2293, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!58, !35, !6, !53}
!2295 = !{!2296, !2297, !2298}
!2296 = !DILocalVariable(name: "s", arg: 1, scope: !2292, file: !256, line: 964, type: !35)
!2297 = !DILocalVariable(name: "arg", arg: 2, scope: !2292, file: !256, line: 964, type: !6)
!2298 = !DILocalVariable(name: "argsize", arg: 3, scope: !2292, file: !256, line: 964, type: !53)
!2299 = !DILocation(line: 0, scope: !2292)
!2300 = !DILocation(line: 0, scope: !2239, inlinedAt: !2301)
!2301 = distinct !DILocation(line: 966, column: 10, scope: !2292)
!2302 = !DILocation(line: 953, column: 3, scope: !2239, inlinedAt: !2301)
!2303 = !DILocation(line: 953, column: 32, scope: !2239, inlinedAt: !2301)
!2304 = !{!2305}
!2305 = distinct !{!2305, !2306, !"quoting_options_from_style: argument 0"}
!2306 = distinct !{!2306, !"quoting_options_from_style"}
!2307 = !DILocation(line: 953, column: 36, scope: !2239, inlinedAt: !2301)
!2308 = !DILocation(line: 0, scope: !2222, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 953, column: 36, scope: !2239, inlinedAt: !2301)
!2310 = !DILocation(line: 185, column: 26, scope: !2222, inlinedAt: !2309)
!2311 = !DILocation(line: 186, column: 13, scope: !2231, inlinedAt: !2309)
!2312 = !DILocation(line: 186, column: 7, scope: !2222, inlinedAt: !2309)
!2313 = !DILocation(line: 187, column: 5, scope: !2231, inlinedAt: !2309)
!2314 = !DILocation(line: 188, column: 5, scope: !2222, inlinedAt: !2309)
!2315 = !DILocation(line: 188, column: 11, scope: !2222, inlinedAt: !2309)
!2316 = !DILocation(line: 954, column: 10, scope: !2239, inlinedAt: !2301)
!2317 = !DILocation(line: 955, column: 1, scope: !2239, inlinedAt: !2301)
!2318 = !DILocation(line: 966, column: 3, scope: !2292)
!2319 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !256, file: !256, line: 970, type: !2320, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2322)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!58, !6, !53, !8}
!2322 = !{!2323, !2324, !2325, !2326}
!2323 = !DILocalVariable(name: "arg", arg: 1, scope: !2319, file: !256, line: 970, type: !6)
!2324 = !DILocalVariable(name: "argsize", arg: 2, scope: !2319, file: !256, line: 970, type: !53)
!2325 = !DILocalVariable(name: "ch", arg: 3, scope: !2319, file: !256, line: 970, type: !8)
!2326 = !DILocalVariable(name: "options", scope: !2319, file: !256, line: 972, type: !273)
!2327 = !DILocation(line: 0, scope: !2319)
!2328 = !DILocation(line: 972, column: 3, scope: !2319)
!2329 = !DILocation(line: 972, column: 26, scope: !2319)
!2330 = !DILocation(line: 973, column: 13, scope: !2319)
!2331 = !{i64 0, i64 4, !575, i64 4, i64 4, !566, i64 8, i64 32, !575, i64 40, i64 8, !485, i64 48, i64 8, !485}
!2332 = !DILocation(line: 0, scope: !1338, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 974, column: 3, scope: !2319)
!2334 = !DILocation(line: 147, column: 62, scope: !1338, inlinedAt: !2333)
!2335 = !DILocation(line: 147, column: 57, scope: !1338, inlinedAt: !2333)
!2336 = !DILocation(line: 148, column: 15, scope: !1338, inlinedAt: !2333)
!2337 = !DILocation(line: 149, column: 21, scope: !1338, inlinedAt: !2333)
!2338 = !DILocation(line: 149, column: 24, scope: !1338, inlinedAt: !2333)
!2339 = !DILocation(line: 149, column: 34, scope: !1338, inlinedAt: !2333)
!2340 = !DILocation(line: 150, column: 19, scope: !1338, inlinedAt: !2333)
!2341 = !DILocation(line: 150, column: 24, scope: !1338, inlinedAt: !2333)
!2342 = !DILocation(line: 150, column: 6, scope: !1338, inlinedAt: !2333)
!2343 = !DILocation(line: 975, column: 10, scope: !2319)
!2344 = !DILocation(line: 976, column: 1, scope: !2319)
!2345 = !DILocation(line: 975, column: 3, scope: !2319)
!2346 = distinct !DISubprogram(name: "quotearg_char", scope: !256, file: !256, line: 979, type: !2347, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2349)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!58, !6, !8}
!2349 = !{!2350, !2351}
!2350 = !DILocalVariable(name: "arg", arg: 1, scope: !2346, file: !256, line: 979, type: !6)
!2351 = !DILocalVariable(name: "ch", arg: 2, scope: !2346, file: !256, line: 979, type: !8)
!2352 = !DILocation(line: 0, scope: !2346)
!2353 = !DILocation(line: 0, scope: !2319, inlinedAt: !2354)
!2354 = distinct !DILocation(line: 981, column: 10, scope: !2346)
!2355 = !DILocation(line: 972, column: 3, scope: !2319, inlinedAt: !2354)
!2356 = !DILocation(line: 972, column: 26, scope: !2319, inlinedAt: !2354)
!2357 = !DILocation(line: 973, column: 13, scope: !2319, inlinedAt: !2354)
!2358 = !DILocation(line: 0, scope: !1338, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 974, column: 3, scope: !2319, inlinedAt: !2354)
!2360 = !DILocation(line: 147, column: 62, scope: !1338, inlinedAt: !2359)
!2361 = !DILocation(line: 147, column: 57, scope: !1338, inlinedAt: !2359)
!2362 = !DILocation(line: 148, column: 15, scope: !1338, inlinedAt: !2359)
!2363 = !DILocation(line: 149, column: 21, scope: !1338, inlinedAt: !2359)
!2364 = !DILocation(line: 149, column: 24, scope: !1338, inlinedAt: !2359)
!2365 = !DILocation(line: 149, column: 34, scope: !1338, inlinedAt: !2359)
!2366 = !DILocation(line: 150, column: 19, scope: !1338, inlinedAt: !2359)
!2367 = !DILocation(line: 150, column: 24, scope: !1338, inlinedAt: !2359)
!2368 = !DILocation(line: 150, column: 6, scope: !1338, inlinedAt: !2359)
!2369 = !DILocation(line: 975, column: 10, scope: !2319, inlinedAt: !2354)
!2370 = !DILocation(line: 976, column: 1, scope: !2319, inlinedAt: !2354)
!2371 = !DILocation(line: 981, column: 3, scope: !2346)
!2372 = distinct !DISubprogram(name: "quotearg_colon", scope: !256, file: !256, line: 985, type: !683, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2373)
!2373 = !{!2374}
!2374 = !DILocalVariable(name: "arg", arg: 1, scope: !2372, file: !256, line: 985, type: !6)
!2375 = !DILocation(line: 0, scope: !2372)
!2376 = !DILocation(line: 0, scope: !2346, inlinedAt: !2377)
!2377 = distinct !DILocation(line: 987, column: 10, scope: !2372)
!2378 = !DILocation(line: 0, scope: !2319, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 981, column: 10, scope: !2346, inlinedAt: !2377)
!2380 = !DILocation(line: 972, column: 3, scope: !2319, inlinedAt: !2379)
!2381 = !DILocation(line: 972, column: 26, scope: !2319, inlinedAt: !2379)
!2382 = !DILocation(line: 973, column: 13, scope: !2319, inlinedAt: !2379)
!2383 = !DILocation(line: 0, scope: !1338, inlinedAt: !2384)
!2384 = distinct !DILocation(line: 974, column: 3, scope: !2319, inlinedAt: !2379)
!2385 = !DILocation(line: 147, column: 57, scope: !1338, inlinedAt: !2384)
!2386 = !DILocation(line: 149, column: 21, scope: !1338, inlinedAt: !2384)
!2387 = !DILocation(line: 150, column: 6, scope: !1338, inlinedAt: !2384)
!2388 = !DILocation(line: 975, column: 10, scope: !2319, inlinedAt: !2379)
!2389 = !DILocation(line: 976, column: 1, scope: !2319, inlinedAt: !2379)
!2390 = !DILocation(line: 987, column: 3, scope: !2372)
!2391 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !256, file: !256, line: 991, type: !2196, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2392)
!2392 = !{!2393, !2394}
!2393 = !DILocalVariable(name: "arg", arg: 1, scope: !2391, file: !256, line: 991, type: !6)
!2394 = !DILocalVariable(name: "argsize", arg: 2, scope: !2391, file: !256, line: 991, type: !53)
!2395 = !DILocation(line: 0, scope: !2391)
!2396 = !DILocation(line: 0, scope: !2319, inlinedAt: !2397)
!2397 = distinct !DILocation(line: 993, column: 10, scope: !2391)
!2398 = !DILocation(line: 972, column: 3, scope: !2319, inlinedAt: !2397)
!2399 = !DILocation(line: 972, column: 26, scope: !2319, inlinedAt: !2397)
!2400 = !DILocation(line: 973, column: 13, scope: !2319, inlinedAt: !2397)
!2401 = !DILocation(line: 0, scope: !1338, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 974, column: 3, scope: !2319, inlinedAt: !2397)
!2403 = !DILocation(line: 147, column: 57, scope: !1338, inlinedAt: !2402)
!2404 = !DILocation(line: 149, column: 21, scope: !1338, inlinedAt: !2402)
!2405 = !DILocation(line: 150, column: 6, scope: !1338, inlinedAt: !2402)
!2406 = !DILocation(line: 975, column: 10, scope: !2319, inlinedAt: !2397)
!2407 = !DILocation(line: 976, column: 1, scope: !2319, inlinedAt: !2397)
!2408 = !DILocation(line: 993, column: 3, scope: !2391)
!2409 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !256, file: !256, line: 997, type: !2207, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2410)
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2409, file: !256, line: 997, type: !51)
!2412 = !DILocalVariable(name: "s", arg: 2, scope: !2409, file: !256, line: 997, type: !35)
!2413 = !DILocalVariable(name: "arg", arg: 3, scope: !2409, file: !256, line: 997, type: !6)
!2414 = !DILocalVariable(name: "options", scope: !2409, file: !256, line: 999, type: !273)
!2415 = !DILocation(line: 0, scope: !2409)
!2416 = !DILocation(line: 999, column: 3, scope: !2409)
!2417 = !DILocation(line: 999, column: 26, scope: !2409)
!2418 = !DILocation(line: 0, scope: !2222, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1000, column: 13, scope: !2409)
!2420 = !DILocation(line: 186, column: 13, scope: !2231, inlinedAt: !2419)
!2421 = !DILocation(line: 186, column: 7, scope: !2222, inlinedAt: !2419)
!2422 = !DILocation(line: 187, column: 5, scope: !2231, inlinedAt: !2419)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 1000, column: 13, scope: !2409)
!2427 = !DILocation(line: 0, scope: !1338, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 1001, column: 3, scope: !2409)
!2429 = !DILocation(line: 147, column: 57, scope: !1338, inlinedAt: !2428)
!2430 = !DILocation(line: 149, column: 21, scope: !1338, inlinedAt: !2428)
!2431 = !DILocation(line: 150, column: 6, scope: !1338, inlinedAt: !2428)
!2432 = !DILocation(line: 1002, column: 10, scope: !2409)
!2433 = !DILocation(line: 1003, column: 1, scope: !2409)
!2434 = !DILocation(line: 1002, column: 3, scope: !2409)
!2435 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !256, file: !256, line: 1006, type: !2436, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!58, !51, !6, !6, !6}
!2438 = !{!2439, !2440, !2441, !2442}
!2439 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !256, line: 1006, type: !51)
!2440 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2435, file: !256, line: 1006, type: !6)
!2441 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2435, file: !256, line: 1007, type: !6)
!2442 = !DILocalVariable(name: "arg", arg: 4, scope: !2435, file: !256, line: 1007, type: !6)
!2443 = !DILocation(line: 0, scope: !2435)
!2444 = !DILocalVariable(name: "n", arg: 1, scope: !2445, file: !256, line: 1014, type: !51)
!2445 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !256, file: !256, line: 1014, type: !2446, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!58, !51, !6, !6, !6, !53}
!2448 = !{!2444, !2449, !2450, !2451, !2452, !2453}
!2449 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2445, file: !256, line: 1014, type: !6)
!2450 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2445, file: !256, line: 1015, type: !6)
!2451 = !DILocalVariable(name: "arg", arg: 4, scope: !2445, file: !256, line: 1016, type: !6)
!2452 = !DILocalVariable(name: "argsize", arg: 5, scope: !2445, file: !256, line: 1016, type: !53)
!2453 = !DILocalVariable(name: "o", scope: !2445, file: !256, line: 1018, type: !273)
!2454 = !DILocation(line: 0, scope: !2445, inlinedAt: !2455)
!2455 = distinct !DILocation(line: 1009, column: 10, scope: !2435)
!2456 = !DILocation(line: 1018, column: 3, scope: !2445, inlinedAt: !2455)
!2457 = !DILocation(line: 1018, column: 26, scope: !2445, inlinedAt: !2455)
!2458 = !DILocation(line: 1018, column: 30, scope: !2445, inlinedAt: !2455)
!2459 = !DILocation(line: 0, scope: !1378, inlinedAt: !2460)
!2460 = distinct !DILocation(line: 1019, column: 3, scope: !2445, inlinedAt: !2455)
!2461 = !DILocation(line: 174, column: 6, scope: !1378, inlinedAt: !2460)
!2462 = !DILocation(line: 174, column: 12, scope: !1378, inlinedAt: !2460)
!2463 = !DILocation(line: 175, column: 8, scope: !1392, inlinedAt: !2460)
!2464 = !DILocation(line: 175, column: 19, scope: !1392, inlinedAt: !2460)
!2465 = !DILocation(line: 176, column: 5, scope: !1392, inlinedAt: !2460)
!2466 = !DILocation(line: 177, column: 6, scope: !1378, inlinedAt: !2460)
!2467 = !DILocation(line: 177, column: 17, scope: !1378, inlinedAt: !2460)
!2468 = !DILocation(line: 178, column: 6, scope: !1378, inlinedAt: !2460)
!2469 = !DILocation(line: 178, column: 18, scope: !1378, inlinedAt: !2460)
!2470 = !DILocation(line: 1020, column: 10, scope: !2445, inlinedAt: !2455)
!2471 = !DILocation(line: 1021, column: 1, scope: !2445, inlinedAt: !2455)
!2472 = !DILocation(line: 1009, column: 3, scope: !2435)
!2473 = !DILocation(line: 0, scope: !2445)
!2474 = !DILocation(line: 1018, column: 3, scope: !2445)
!2475 = !DILocation(line: 1018, column: 26, scope: !2445)
!2476 = !DILocation(line: 1018, column: 30, scope: !2445)
!2477 = !DILocation(line: 0, scope: !1378, inlinedAt: !2478)
!2478 = distinct !DILocation(line: 1019, column: 3, scope: !2445)
!2479 = !DILocation(line: 174, column: 6, scope: !1378, inlinedAt: !2478)
!2480 = !DILocation(line: 174, column: 12, scope: !1378, inlinedAt: !2478)
!2481 = !DILocation(line: 175, column: 8, scope: !1392, inlinedAt: !2478)
!2482 = !DILocation(line: 175, column: 19, scope: !1392, inlinedAt: !2478)
!2483 = !DILocation(line: 176, column: 5, scope: !1392, inlinedAt: !2478)
!2484 = !DILocation(line: 177, column: 6, scope: !1378, inlinedAt: !2478)
!2485 = !DILocation(line: 177, column: 17, scope: !1378, inlinedAt: !2478)
!2486 = !DILocation(line: 178, column: 6, scope: !1378, inlinedAt: !2478)
!2487 = !DILocation(line: 178, column: 18, scope: !1378, inlinedAt: !2478)
!2488 = !DILocation(line: 1020, column: 10, scope: !2445)
!2489 = !DILocation(line: 1021, column: 1, scope: !2445)
!2490 = !DILocation(line: 1020, column: 3, scope: !2445)
!2491 = distinct !DISubprogram(name: "quotearg_custom", scope: !256, file: !256, line: 1024, type: !2492, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2494)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!58, !6, !6, !6}
!2494 = !{!2495, !2496, !2497}
!2495 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2491, file: !256, line: 1024, type: !6)
!2496 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2491, file: !256, line: 1024, type: !6)
!2497 = !DILocalVariable(name: "arg", arg: 3, scope: !2491, file: !256, line: 1025, type: !6)
!2498 = !DILocation(line: 0, scope: !2491)
!2499 = !DILocation(line: 0, scope: !2435, inlinedAt: !2500)
!2500 = distinct !DILocation(line: 1027, column: 10, scope: !2491)
!2501 = !DILocation(line: 0, scope: !2445, inlinedAt: !2502)
!2502 = distinct !DILocation(line: 1009, column: 10, scope: !2435, inlinedAt: !2500)
!2503 = !DILocation(line: 1018, column: 3, scope: !2445, inlinedAt: !2502)
!2504 = !DILocation(line: 1018, column: 26, scope: !2445, inlinedAt: !2502)
!2505 = !DILocation(line: 1018, column: 30, scope: !2445, inlinedAt: !2502)
!2506 = !DILocation(line: 0, scope: !1378, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 1019, column: 3, scope: !2445, inlinedAt: !2502)
!2508 = !DILocation(line: 174, column: 6, scope: !1378, inlinedAt: !2507)
!2509 = !DILocation(line: 174, column: 12, scope: !1378, inlinedAt: !2507)
!2510 = !DILocation(line: 175, column: 8, scope: !1392, inlinedAt: !2507)
!2511 = !DILocation(line: 175, column: 19, scope: !1392, inlinedAt: !2507)
!2512 = !DILocation(line: 176, column: 5, scope: !1392, inlinedAt: !2507)
!2513 = !DILocation(line: 177, column: 6, scope: !1378, inlinedAt: !2507)
!2514 = !DILocation(line: 177, column: 17, scope: !1378, inlinedAt: !2507)
!2515 = !DILocation(line: 178, column: 6, scope: !1378, inlinedAt: !2507)
!2516 = !DILocation(line: 178, column: 18, scope: !1378, inlinedAt: !2507)
!2517 = !DILocation(line: 1020, column: 10, scope: !2445, inlinedAt: !2502)
!2518 = !DILocation(line: 1021, column: 1, scope: !2445, inlinedAt: !2502)
!2519 = !DILocation(line: 1027, column: 3, scope: !2491)
!2520 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !256, file: !256, line: 1031, type: !2521, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2523)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!58, !6, !6, !6, !53}
!2523 = !{!2524, !2525, !2526, !2527}
!2524 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2520, file: !256, line: 1031, type: !6)
!2525 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2520, file: !256, line: 1031, type: !6)
!2526 = !DILocalVariable(name: "arg", arg: 3, scope: !2520, file: !256, line: 1032, type: !6)
!2527 = !DILocalVariable(name: "argsize", arg: 4, scope: !2520, file: !256, line: 1032, type: !53)
!2528 = !DILocation(line: 0, scope: !2520)
!2529 = !DILocation(line: 0, scope: !2445, inlinedAt: !2530)
!2530 = distinct !DILocation(line: 1034, column: 10, scope: !2520)
!2531 = !DILocation(line: 1018, column: 3, scope: !2445, inlinedAt: !2530)
!2532 = !DILocation(line: 1018, column: 26, scope: !2445, inlinedAt: !2530)
!2533 = !DILocation(line: 1018, column: 30, scope: !2445, inlinedAt: !2530)
!2534 = !DILocation(line: 0, scope: !1378, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 1019, column: 3, scope: !2445, inlinedAt: !2530)
!2536 = !DILocation(line: 174, column: 6, scope: !1378, inlinedAt: !2535)
!2537 = !DILocation(line: 174, column: 12, scope: !1378, inlinedAt: !2535)
!2538 = !DILocation(line: 175, column: 8, scope: !1392, inlinedAt: !2535)
!2539 = !DILocation(line: 175, column: 19, scope: !1392, inlinedAt: !2535)
!2540 = !DILocation(line: 176, column: 5, scope: !1392, inlinedAt: !2535)
!2541 = !DILocation(line: 177, column: 6, scope: !1378, inlinedAt: !2535)
!2542 = !DILocation(line: 177, column: 17, scope: !1378, inlinedAt: !2535)
!2543 = !DILocation(line: 178, column: 6, scope: !1378, inlinedAt: !2535)
!2544 = !DILocation(line: 178, column: 18, scope: !1378, inlinedAt: !2535)
!2545 = !DILocation(line: 1020, column: 10, scope: !2445, inlinedAt: !2530)
!2546 = !DILocation(line: 1021, column: 1, scope: !2445, inlinedAt: !2530)
!2547 = !DILocation(line: 1034, column: 3, scope: !2520)
!2548 = distinct !DISubprogram(name: "quote_n_mem", scope: !256, file: !256, line: 1049, type: !2549, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!6, !51, !6, !53}
!2551 = !{!2552, !2553, !2554}
!2552 = !DILocalVariable(name: "n", arg: 1, scope: !2548, file: !256, line: 1049, type: !51)
!2553 = !DILocalVariable(name: "arg", arg: 2, scope: !2548, file: !256, line: 1049, type: !6)
!2554 = !DILocalVariable(name: "argsize", arg: 3, scope: !2548, file: !256, line: 1049, type: !53)
!2555 = !DILocation(line: 0, scope: !2548)
!2556 = !DILocation(line: 1051, column: 10, scope: !2548)
!2557 = !DILocation(line: 1051, column: 3, scope: !2548)
!2558 = distinct !DISubprogram(name: "quote_mem", scope: !256, file: !256, line: 1055, type: !2559, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2561)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!6, !6, !53}
!2561 = !{!2562, !2563}
!2562 = !DILocalVariable(name: "arg", arg: 1, scope: !2558, file: !256, line: 1055, type: !6)
!2563 = !DILocalVariable(name: "argsize", arg: 2, scope: !2558, file: !256, line: 1055, type: !53)
!2564 = !DILocation(line: 0, scope: !2558)
!2565 = !DILocation(line: 0, scope: !2548, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1057, column: 10, scope: !2558)
!2567 = !DILocation(line: 1051, column: 10, scope: !2548, inlinedAt: !2566)
!2568 = !DILocation(line: 1057, column: 3, scope: !2558)
!2569 = distinct !DISubprogram(name: "quote_n", scope: !256, file: !256, line: 1061, type: !2570, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!6, !51, !6}
!2572 = !{!2573, !2574}
!2573 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !256, line: 1061, type: !51)
!2574 = !DILocalVariable(name: "arg", arg: 2, scope: !2569, file: !256, line: 1061, type: !6)
!2575 = !DILocation(line: 0, scope: !2569)
!2576 = !DILocation(line: 0, scope: !2548, inlinedAt: !2577)
!2577 = distinct !DILocation(line: 1063, column: 10, scope: !2569)
!2578 = !DILocation(line: 1051, column: 10, scope: !2548, inlinedAt: !2577)
!2579 = !DILocation(line: 1063, column: 3, scope: !2569)
!2580 = distinct !DISubprogram(name: "quote", scope: !256, file: !256, line: 1067, type: !2581, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2583)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!6, !6}
!2583 = !{!2584}
!2584 = !DILocalVariable(name: "arg", arg: 1, scope: !2580, file: !256, line: 1067, type: !6)
!2585 = !DILocation(line: 0, scope: !2580)
!2586 = !DILocation(line: 0, scope: !2569, inlinedAt: !2587)
!2587 = distinct !DILocation(line: 1069, column: 10, scope: !2580)
!2588 = !DILocation(line: 0, scope: !2548, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 1063, column: 10, scope: !2569, inlinedAt: !2587)
!2590 = !DILocation(line: 1051, column: 10, scope: !2548, inlinedAt: !2589)
!2591 = !DILocation(line: 1069, column: 3, scope: !2580)
!2592 = distinct !DISubprogram(name: "extract_trimmed_name", scope: !361, file: !361, line: 156, type: !2593, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2617)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{!58, !2595}
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "STRUCT_UTMP", file: !13, line: 92, baseType: !2598)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gl_utmp", file: !13, line: 65, size: 576, elements: !2599)
!2599 = !{!2600, !2601, !2602, !2603, !2604, !2609, !2610, !2611, !2612}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "ut_user", scope: !2598, file: !13, line: 69, baseType: !58, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "ut_id", scope: !2598, file: !13, line: 70, baseType: !58, size: 64, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "ut_line", scope: !2598, file: !13, line: 71, baseType: !58, size: 64, offset: 128)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "ut_host", scope: !2598, file: !13, line: 72, baseType: !58, size: 64, offset: 192)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "ut_ts", scope: !2598, file: !13, line: 74, baseType: !2605, size: 128, offset: 256)
!2605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !744, line: 11, size: 128, elements: !2606)
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2605, file: !744, line: 16, baseType: !391, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2605, file: !744, line: 21, baseType: !748, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "ut_pid", scope: !2598, file: !13, line: 75, baseType: !750, size: 32, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ut_session", scope: !2598, file: !13, line: 76, baseType: !750, size: 32, offset: 416)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ut_type", scope: !2598, file: !13, line: 77, baseType: !370, size: 16, offset: 448)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ut_exit", scope: !2598, file: !13, line: 79, baseType: !2613, size: 64, offset: 480)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2598, file: !13, line: 79, size: 64, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "e_termination", scope: !2613, file: !13, line: 79, baseType: !51, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "e_exit", scope: !2613, file: !13, line: 79, baseType: !51, size: 32, offset: 32)
!2617 = !{!2618, !2619, !2620, !2621}
!2618 = !DILocalVariable(name: "ut", arg: 1, scope: !2592, file: !361, line: 156, type: !2595)
!2619 = !DILocalVariable(name: "name", scope: !2592, file: !361, line: 158, type: !6)
!2620 = !DILocalVariable(name: "len", scope: !2592, file: !361, line: 159, type: !427)
!2621 = !DILocalVariable(name: "p", scope: !2592, file: !361, line: 160, type: !6)
!2622 = !DILocation(line: 0, scope: !2592)
!2623 = !DILocation(line: 158, column: 26, scope: !2592)
!2624 = !DILocation(line: 159, column: 15, scope: !2592)
!2625 = !DILocation(line: 161, column: 17, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2592, file: !361, line: 161, column: 3)
!2627 = !DILocation(line: 161, column: 8, scope: !2626)
!2628 = !DILocation(line: 0, scope: !2626)
!2629 = !DILocation(line: 161, column: 29, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2626, file: !361, line: 161, column: 3)
!2631 = !DILocation(line: 161, column: 33, scope: !2630)
!2632 = !DILocation(line: 161, column: 36, scope: !2630)
!2633 = !DILocation(line: 161, column: 42, scope: !2630)
!2634 = !DILocation(line: 161, column: 3, scope: !2626)
!2635 = distinct !{!2635, !2634, !2636, !537}
!2636 = !DILocation(line: 162, column: 5, scope: !2626)
!2637 = !DILocation(line: 163, column: 29, scope: !2592)
!2638 = !DILocation(line: 163, column: 10, scope: !2592)
!2639 = !DILocation(line: 163, column: 3, scope: !2592)
!2640 = distinct !DISubprogram(name: "read_utmp", scope: !361, file: !361, line: 977, type: !2641, scopeLine: 979, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2645)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!51, !6, !426, !2643, !51}
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2597, size: 64)
!2645 = !{!2646, !2647, !2648, !2649}
!2646 = !DILocalVariable(name: "file", arg: 1, scope: !2640, file: !361, line: 977, type: !6)
!2647 = !DILocalVariable(name: "n_entries", arg: 2, scope: !2640, file: !361, line: 977, type: !426)
!2648 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !2640, file: !361, line: 977, type: !2643)
!2649 = !DILocalVariable(name: "options", arg: 4, scope: !2640, file: !361, line: 978, type: !51)
!2650 = !DILocation(line: 0, scope: !2640)
!2651 = !DILocalVariable(name: "file", arg: 1, scope: !2652, file: !361, line: 320, type: !6)
!2652 = distinct !DISubprogram(name: "read_utmp_from_file", scope: !361, file: !361, line: 320, type: !2641, scopeLine: 322, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2653)
!2653 = !{!2651, !2654, !2655, !2656, !2657, !2665, !2666, !2667, !2668, !2670, !2671, !2675, !2678, !2681}
!2654 = !DILocalVariable(name: "n_entries", arg: 2, scope: !2652, file: !361, line: 320, type: !426)
!2655 = !DILocalVariable(name: "utmp_buf", arg: 3, scope: !2652, file: !361, line: 320, type: !2643)
!2656 = !DILocalVariable(name: "options", arg: 4, scope: !2652, file: !361, line: 321, type: !51)
!2657 = !DILocalVariable(name: "a", scope: !2652, file: !361, line: 332, type: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utmp_alloc", file: !361, line: 202, size: 256, elements: !2659)
!2659 = !{!2660, !2662, !2663, !2664}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "utmp", scope: !2658, file: !361, line: 208, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "filled", scope: !2658, file: !361, line: 211, baseType: !427, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "string_bytes", scope: !2658, file: !361, line: 214, baseType: !427, size: 64, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_bytes", scope: !2658, file: !361, line: 218, baseType: !427, size: 64, offset: 192)
!2665 = !DILocalVariable(name: "file_is_utmp", scope: !2652, file: !361, line: 347, type: !67)
!2666 = !DILocalVariable(name: "runlevel_ts", scope: !2652, file: !361, line: 349, type: !2605)
!2667 = !DILocalVariable(name: "entry", scope: !2652, file: !361, line: 352, type: !689)
!2668 = !DILocalVariable(name: "ut", scope: !2669, file: !361, line: 356, type: !364)
!2669 = distinct !DILexicalBlock(scope: !2652, file: !361, line: 355, column: 5)
!2670 = !DILocalVariable(name: "ts", scope: !2669, file: !361, line: 358, type: !2605)
!2671 = !DILocalVariable(name: "i", scope: !2672, file: !361, line: 429, type: !427)
!2672 = distinct !DILexicalBlock(scope: !2673, file: !361, line: 429, column: 7)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !361, line: 428, column: 5)
!2674 = distinct !DILexicalBlock(scope: !2652, file: !361, line: 426, column: 7)
!2675 = !DILocalVariable(name: "ut", scope: !2676, file: !361, line: 431, type: !2661)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !361, line: 430, column: 9)
!2677 = distinct !DILexicalBlock(scope: !2672, file: !361, line: 429, column: 7)
!2678 = !DILocalVariable(name: "boot_time", scope: !2679, file: !361, line: 443, type: !2605)
!2679 = distinct !DILexicalBlock(scope: !2680, file: !361, line: 441, column: 9)
!2680 = distinct !DILexicalBlock(scope: !2673, file: !361, line: 440, column: 11)
!2681 = !DILocalVariable(name: "boot_time", scope: !2682, file: !361, line: 592, type: !2605)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !361, line: 591, column: 5)
!2683 = distinct !DILexicalBlock(scope: !2652, file: !361, line: 588, column: 7)
!2684 = !DILocation(line: 0, scope: !2652, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 986, column: 10, scope: !2640)
!2686 = !DILocation(line: 323, column: 16, scope: !2687, inlinedAt: !2685)
!2687 = distinct !DILexicalBlock(scope: !2652, file: !361, line: 323, column: 7)
!2688 = !DILocation(line: 323, column: 39, scope: !2687, inlinedAt: !2685)
!2689 = !DILocation(line: 324, column: 7, scope: !2687, inlinedAt: !2685)
!2690 = !DILocation(line: 342, column: 3, scope: !2652, inlinedAt: !2685)
!2691 = !DILocation(line: 344, column: 3, scope: !2652, inlinedAt: !2685)
!2692 = !DILocalVariable(name: "__s1", arg: 1, scope: !2693, file: !521, line: 1359, type: !6)
!2693 = distinct !DISubprogram(name: "streq", scope: !521, file: !521, line: 1359, type: !522, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2694)
!2694 = !{!2692, !2695}
!2695 = !DILocalVariable(name: "__s2", arg: 2, scope: !2693, file: !521, line: 1359, type: !6)
!2696 = !DILocation(line: 0, scope: !2693, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 347, column: 23, scope: !2652, inlinedAt: !2685)
!2698 = !DILocation(line: 1361, column: 11, scope: !2693, inlinedAt: !2697)
!2699 = !DILocation(line: 1361, column: 10, scope: !2693, inlinedAt: !2697)
!2700 = !DILocation(line: 354, column: 19, scope: !2652, inlinedAt: !2685)
!2701 = !DILocation(line: 354, column: 36, scope: !2652, inlinedAt: !2685)
!2702 = !DILocation(line: 354, column: 3, scope: !2652, inlinedAt: !2685)
!2703 = !DILocation(line: 0, scope: !2669, inlinedAt: !2685)
!2704 = !DILocation(line: 360, column: 31, scope: !2669, inlinedAt: !2685)
!2705 = !{!2706, !770, i64 344}
!2706 = !{!"utmpx", !601, i64 0, !567, i64 4, !487, i64 8, !487, i64 40, !487, i64 44, !487, i64 76, !2707, i64 332, !770, i64 336, !2708, i64 344, !487, i64 360, !487, i64 376}
!2707 = !{!"__exit_status", !601, i64 0, !601, i64 2}
!2708 = !{!"timeval", !770, i64 0, !770, i64 8}
!2709 = !DILocation(line: 360, column: 60, scope: !2669, inlinedAt: !2685)
!2710 = !{!2706, !770, i64 352}
!2711 = !DILocation(line: 360, column: 68, scope: !2669, inlinedAt: !2685)
!2712 = !DILocation(line: 365, column: 11, scope: !2669, inlinedAt: !2685)
!2713 = !DILocation(line: 366, column: 21, scope: !2669, inlinedAt: !2685)
!2714 = !DILocation(line: 366, column: 35, scope: !2669, inlinedAt: !2685)
!2715 = !DILocation(line: 368, column: 21, scope: !2669, inlinedAt: !2685)
!2716 = !DILocation(line: 368, column: 32, scope: !2669, inlinedAt: !2685)
!2717 = !DILocation(line: 372, column: 21, scope: !2669, inlinedAt: !2685)
!2718 = !DILocation(line: 372, column: 34, scope: !2669, inlinedAt: !2685)
!2719 = !DILocation(line: 374, column: 21, scope: !2669, inlinedAt: !2685)
!2720 = !DILocation(line: 374, column: 34, scope: !2669, inlinedAt: !2685)
!2721 = !DILocation(line: 379, column: 25, scope: !2669, inlinedAt: !2685)
!2722 = !{!2706, !567, i64 4}
!2723 = !DILocation(line: 384, column: 25, scope: !2669, inlinedAt: !2685)
!2724 = !{!2706, !601, i64 0}
!2725 = !DILocation(line: 390, column: 25, scope: !2669, inlinedAt: !2685)
!2726 = !{!2706, !770, i64 336}
!2727 = !DILocation(line: 394, column: 21, scope: !2669, inlinedAt: !2685)
!2728 = !{!2706, !601, i64 332}
!2729 = !DILocation(line: 394, column: 49, scope: !2669, inlinedAt: !2685)
!2730 = !{!2706, !601, i64 334}
!2731 = !{i64 0, i64 8, !485, i64 8, i64 8, !769, i64 16, i64 8, !769, i64 24, i64 8, !769}
!2732 = !{i64 0, i64 8, !769, i64 8, i64 8, !769, i64 16, i64 8, !769}
!2733 = !{i64 0, i64 8, !769, i64 8, i64 8, !769}
!2734 = !{i64 0, i64 8, !769}
!2735 = !DILocation(line: 398, column: 11, scope: !2736, inlinedAt: !2685)
!2736 = distinct !DILexicalBlock(scope: !2669, file: !361, line: 397, column: 11)
!2737 = !DILocalVariable(name: "__s1", arg: 1, scope: !2738, file: !521, line: 974, type: !689)
!2738 = distinct !DISubprogram(name: "memeq", scope: !521, file: !521, line: 974, type: !1242, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2739)
!2739 = !{!2737, !2740, !2741}
!2740 = !DILocalVariable(name: "__s2", arg: 2, scope: !2738, file: !521, line: 974, type: !689)
!2741 = !DILocalVariable(name: "__n", arg: 3, scope: !2738, file: !521, line: 974, type: !53)
!2742 = !DILocation(line: 0, scope: !2738, inlinedAt: !2743)
!2743 = distinct !DILocation(line: 398, column: 14, scope: !2736, inlinedAt: !2685)
!2744 = !DILocation(line: 976, column: 11, scope: !2738, inlinedAt: !2743)
!2745 = !DILocation(line: 976, column: 10, scope: !2738, inlinedAt: !2743)
!2746 = !DILocation(line: 399, column: 11, scope: !2736, inlinedAt: !2685)
!2747 = !DILocation(line: 0, scope: !2738, inlinedAt: !2748)
!2748 = distinct !DILocation(line: 399, column: 14, scope: !2736, inlinedAt: !2685)
!2749 = !DILocation(line: 976, column: 11, scope: !2738, inlinedAt: !2748)
!2750 = !DILocation(line: 976, column: 10, scope: !2738, inlinedAt: !2748)
!2751 = !DILocation(line: 397, column: 11, scope: !2669, inlinedAt: !2685)
!2752 = distinct !{!2752, !2702, !2753, !537}
!2753 = !DILocation(line: 408, column: 5, scope: !2652, inlinedAt: !2685)
!2754 = !DILocation(line: 410, column: 3, scope: !2652, inlinedAt: !2685)
!2755 = !DILocation(line: 427, column: 7, scope: !2674, inlinedAt: !2685)
!2756 = !DILocation(line: 0, scope: !2672, inlinedAt: !2685)
!2757 = !DILocation(line: 429, column: 27, scope: !2677, inlinedAt: !2685)
!2758 = !DILocation(line: 429, column: 7, scope: !2672, inlinedAt: !2685)
!2759 = !DILocation(line: 0, scope: !2676, inlinedAt: !2685)
!2760 = !DILocation(line: 432, column: 15, scope: !2761, inlinedAt: !2685)
!2761 = distinct !DILexicalBlock(scope: !2676, file: !361, line: 432, column: 15)
!2762 = !DILocation(line: 432, column: 15, scope: !2676, inlinedAt: !2685)
!2763 = !DILocation(line: 435, column: 29, scope: !2764, inlinedAt: !2685)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !361, line: 435, column: 19)
!2765 = distinct !DILexicalBlock(scope: !2761, file: !361, line: 433, column: 13)
!2766 = !{!803, !770, i64 32}
!2767 = !DILocation(line: 435, column: 36, scope: !2764, inlinedAt: !2685)
!2768 = !DILocation(line: 435, column: 42, scope: !2764, inlinedAt: !2685)
!2769 = !DILocation(line: 436, column: 29, scope: !2764, inlinedAt: !2685)
!2770 = !DILocalVariable(name: "a", arg: 1, scope: !2771, file: !361, line: 302, type: !2658)
!2771 = distinct !DISubprogram(name: "have_boot_time", scope: !361, file: !361, line: 302, type: !2772, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!67, !2658}
!2774 = !{!2770, !2775, !2777}
!2775 = !DILocalVariable(name: "i", scope: !2776, file: !361, line: 304, type: !427)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !361, line: 304, column: 3)
!2777 = !DILocalVariable(name: "ut", scope: !2778, file: !361, line: 306, type: !2661)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !361, line: 305, column: 5)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !361, line: 304, column: 3)
!2780 = !DILocation(line: 0, scope: !2771, inlinedAt: !2781)
!2781 = distinct !DILocation(line: 440, column: 12, scope: !2680, inlinedAt: !2685)
!2782 = !DILocation(line: 0, scope: !2776, inlinedAt: !2781)
!2783 = !DILocation(line: 304, column: 3, scope: !2776, inlinedAt: !2781)
!2784 = !DILocation(line: 429, column: 40, scope: !2677, inlinedAt: !2685)
!2785 = distinct !{!2785, !2758, !2786, !537}
!2786 = !DILocation(line: 439, column: 9, scope: !2672, inlinedAt: !2685)
!2787 = !DILocation(line: 0, scope: !2778, inlinedAt: !2781)
!2788 = !DILocation(line: 307, column: 11, scope: !2789, inlinedAt: !2781)
!2789 = distinct !DILexicalBlock(scope: !2778, file: !361, line: 307, column: 11)
!2790 = !DILocation(line: 304, column: 23, scope: !2779, inlinedAt: !2781)
!2791 = distinct !{!2791, !2783, !2792, !537}
!2792 = !DILocation(line: 309, column: 5, scope: !2776, inlinedAt: !2781)
!2793 = !DILocation(line: 304, column: 36, scope: !2779, inlinedAt: !2781)
!2794 = distinct !{!2794, !2783, !2792, !537}
!2795 = !DILocation(line: 440, column: 11, scope: !2673, inlinedAt: !2685)
!2796 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !2797, file: !2798, line: 87, type: !2801)
!2797 = distinct !DISubprogram(name: "get_linux_boot_time_fallback", scope: !2798, file: !2798, line: 87, type: !2799, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2802)
!2798 = !DIFile(filename: "./lib/boot-time-aux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "56a7f792a9c98183f316974c092e6a70")
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!51, !2801}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2802 = !{!2796, !2803, !2805, !2807, !2810, !2839}
!2803 = !DILocalVariable(name: "boot_touched_files", scope: !2797, file: !2798, line: 96, type: !2804)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 256, elements: !248)
!2805 = !DILocalVariable(name: "i", scope: !2806, file: !2798, line: 105, type: !427)
!2806 = distinct !DILexicalBlock(scope: !2797, file: !2798, line: 105, column: 3)
!2807 = !DILocalVariable(name: "filename", scope: !2808, file: !2798, line: 107, type: !6)
!2808 = distinct !DILexicalBlock(scope: !2809, file: !2798, line: 106, column: 5)
!2809 = distinct !DILexicalBlock(scope: !2806, file: !2798, line: 105, column: 3)
!2810 = !DILocalVariable(name: "statbuf", scope: !2808, file: !2798, line: 108, type: !2811)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2812, line: 44, size: 1024, elements: !2813)
!2812 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!2813 = !{!2814, !2816, !2818, !2820, !2822, !2824, !2826, !2827, !2828, !2829, !2831, !2832, !2834, !2835, !2836, !2837}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2811, file: !2812, line: 46, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !107, line: 145, baseType: !55)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2811, file: !2812, line: 47, baseType: !2817, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !107, line: 148, baseType: !55)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2811, file: !2812, line: 48, baseType: !2819, size: 32, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !107, line: 150, baseType: !14)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2811, file: !2812, line: 49, baseType: !2821, size: 32, offset: 160)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !107, line: 151, baseType: !14)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2811, file: !2812, line: 50, baseType: !2823, size: 32, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !107, line: 146, baseType: !14)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2811, file: !2812, line: 51, baseType: !2825, size: 32, offset: 224)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !107, line: 147, baseType: !14)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2811, file: !2812, line: 52, baseType: !2815, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2811, file: !2812, line: 53, baseType: !2815, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2811, file: !2812, line: 54, baseType: !106, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2811, file: !2812, line: 55, baseType: !2830, size: 32, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !107, line: 175, baseType: !51)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2811, file: !2812, line: 56, baseType: !51, size: 32, offset: 480)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2811, file: !2812, line: 57, baseType: !2833, size: 64, offset: 512)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !107, line: 180, baseType: !108)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2811, file: !2812, line: 65, baseType: !2605, size: 128, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2811, file: !2812, line: 66, baseType: !2605, size: 128, offset: 704)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2811, file: !2812, line: 67, baseType: !2605, size: 128, offset: 832)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2811, file: !2812, line: 79, baseType: !2838, size: 64, offset: 960)
!2838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !251)
!2839 = !DILocalVariable(name: "boot_time", scope: !2840, file: !2798, line: 111, type: !2605)
!2840 = distinct !DILexicalBlock(scope: !2841, file: !2798, line: 110, column: 9)
!2841 = distinct !DILexicalBlock(scope: !2808, file: !2798, line: 109, column: 11)
!2842 = !DILocation(line: 0, scope: !2797, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 444, column: 15, scope: !2844, inlinedAt: !2685)
!2844 = distinct !DILexicalBlock(scope: !2679, file: !361, line: 444, column: 15)
!2845 = !DILocation(line: 0, scope: !2806, inlinedAt: !2843)
!2846 = !DILocation(line: 108, column: 7, scope: !2808, inlinedAt: !2843)
!2847 = !DILocation(line: 108, column: 19, scope: !2808, inlinedAt: !2843)
!2848 = !DILocation(line: 109, column: 11, scope: !2841, inlinedAt: !2843)
!2849 = !DILocation(line: 109, column: 37, scope: !2841, inlinedAt: !2843)
!2850 = !DILocation(line: 109, column: 11, scope: !2808, inlinedAt: !2843)
!2851 = !DILocalVariable(name: "st", arg: 1, scope: !2852, file: !2853, line: 169, type: !2856)
!2852 = distinct !DISubprogram(name: "get_stat_mtime", scope: !2853, file: !2853, line: 169, type: !2854, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2858)
!2853 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!2605, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2811)
!2858 = !{!2851}
!2859 = !DILocation(line: 0, scope: !2852, inlinedAt: !2860)
!2860 = distinct !DILocation(line: 111, column: 39, scope: !2840, inlinedAt: !2843)
!2861 = !DILocation(line: 0, scope: !2840, inlinedAt: !2843)
!2862 = !DILocation(line: 122, column: 5, scope: !2809, inlinedAt: !2843)
!2863 = !DILocation(line: 0, scope: !2679, inlinedAt: !2685)
!2864 = !DILocation(line: 444, column: 15, scope: !2679, inlinedAt: !2685)
!2865 = !DILocation(line: 172, column: 10, scope: !2852, inlinedAt: !2860)
!2866 = !DILocation(line: 445, column: 17, scope: !2844, inlinedAt: !2685)
!2867 = !DILocation(line: 445, column: 13, scope: !2844, inlinedAt: !2685)
!2868 = !DILocation(line: 589, column: 7, scope: !2683, inlinedAt: !2685)
!2869 = !DILocation(line: 0, scope: !2693, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 589, column: 10, scope: !2683, inlinedAt: !2685)
!2871 = !DILocation(line: 1361, column: 11, scope: !2693, inlinedAt: !2870)
!2872 = !DILocation(line: 1361, column: 10, scope: !2693, inlinedAt: !2870)
!2873 = !DILocation(line: 590, column: 7, scope: !2683, inlinedAt: !2685)
!2874 = !DILocation(line: 0, scope: !2771, inlinedAt: !2875)
!2875 = distinct !DILocation(line: 590, column: 11, scope: !2683, inlinedAt: !2685)
!2876 = !DILocation(line: 0, scope: !2776, inlinedAt: !2875)
!2877 = !DILocation(line: 304, column: 23, scope: !2779, inlinedAt: !2875)
!2878 = !DILocation(line: 304, column: 3, scope: !2776, inlinedAt: !2875)
!2879 = !DILocation(line: 0, scope: !2778, inlinedAt: !2875)
!2880 = !DILocation(line: 307, column: 11, scope: !2789, inlinedAt: !2875)
!2881 = !DILocalVariable(name: "a", arg: 1, scope: !2882, file: !361, line: 284, type: !2658)
!2882 = distinct !DISubprogram(name: "finish_utmp", scope: !361, file: !361, line: 284, type: !2883, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!2658, !2658}
!2885 = !{!2881, !2886, !2887}
!2886 = !DILocalVariable(name: "stringlim", scope: !2882, file: !361, line: 286, type: !58)
!2887 = !DILocalVariable(name: "i", scope: !2888, file: !361, line: 288, type: !427)
!2888 = distinct !DILexicalBlock(scope: !2882, file: !361, line: 288, column: 3)
!2889 = !DILocation(line: 0, scope: !2882, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 688, column: 7, scope: !2652, inlinedAt: !2685)
!2891 = !DILocation(line: 286, column: 32, scope: !2882, inlinedAt: !2890)
!2892 = !DILocation(line: 286, column: 37, scope: !2882, inlinedAt: !2890)
!2893 = !DILocation(line: 0, scope: !2888, inlinedAt: !2890)
!2894 = !DILocation(line: 288, column: 3, scope: !2888, inlinedAt: !2890)
!2895 = distinct !{!2895, !2878, !2896, !537}
!2896 = !DILocation(line: 309, column: 5, scope: !2776, inlinedAt: !2875)
!2897 = !DILocation(line: 304, column: 36, scope: !2779, inlinedAt: !2875)
!2898 = distinct !{!2898, !2878, !2896, !537}
!2899 = !DILocation(line: 588, column: 7, scope: !2652, inlinedAt: !2685)
!2900 = !DILocalVariable(name: "p_boot_time", arg: 1, scope: !2901, file: !2798, line: 134, type: !2801)
!2901 = distinct !DISubprogram(name: "get_linux_boot_time_final_fallback", scope: !2798, file: !2798, line: 134, type: !2799, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2902)
!2902 = !{!2900, !2903, !2904}
!2903 = !DILocalVariable(name: "uptime", scope: !2901, file: !2798, line: 136, type: !2605)
!2904 = !DILocalVariable(name: "result", scope: !2905, file: !2798, line: 139, type: !2605)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !2798, line: 138, column: 5)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !2798, line: 137, column: 7)
!2907 = !DILocation(line: 0, scope: !2901, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 593, column: 11, scope: !2909, inlinedAt: !2685)
!2909 = distinct !DILexicalBlock(scope: !2682, file: !361, line: 593, column: 11)
!2910 = !DILocation(line: 136, column: 3, scope: !2901, inlinedAt: !2908)
!2911 = !DILocation(line: 136, column: 19, scope: !2901, inlinedAt: !2908)
!2912 = !DILocalVariable(name: "p_uptime", arg: 1, scope: !2913, file: !2798, line: 27, type: !2801)
!2913 = distinct !DISubprogram(name: "get_linux_uptime", scope: !2798, file: !2798, line: 27, type: !2799, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2914)
!2914 = !{!2912, !2915, !2950, !2956, !2957, !2962, !2963, !2966, !2969}
!2915 = !DILocalVariable(name: "fp", scope: !2913, file: !2798, line: 40, type: !2916)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !2918)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !2919)
!2919 = !{!2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2918, file: !84, line: 51, baseType: !51, size: 32)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2918, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2918, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2918, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2918, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2918, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2918, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2918, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2918, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2918, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2918, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2918, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2918, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2918, file: !84, line: 70, baseType: !2934, size: 64, offset: 832)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2918, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2918, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2918, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2918, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2918, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2918, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2918, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2918, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2918, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2918, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2918, file: !84, line: 93, baseType: !2934, size: 64, offset: 1344)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2918, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2918, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2918, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2918, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!2950 = !DILocalVariable(name: "buf", scope: !2951, file: !2798, line: 43, type: !2953)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !2798, line: 42, column: 5)
!2952 = distinct !DILexicalBlock(scope: !2913, file: !2798, line: 41, column: 7)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 264, elements: !2954)
!2954 = !{!2955}
!2955 = !DISubrange(count: 33)
!2956 = !DILocalVariable(name: "n", scope: !2951, file: !2798, line: 44, type: !53)
!2957 = !DILocalVariable(name: "s", scope: !2958, file: !2798, line: 50, type: !2960)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !2798, line: 47, column: 9)
!2959 = distinct !DILexicalBlock(scope: !2951, file: !2798, line: 46, column: 11)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !2961, line: 10, baseType: !391)
!2961 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!2962 = !DILocalVariable(name: "p", scope: !2958, file: !2798, line: 51, type: !58)
!2963 = !DILocalVariable(name: "ns", scope: !2964, file: !2798, line: 56, type: !108)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !2798, line: 55, column: 13)
!2965 = distinct !DILexicalBlock(scope: !2958, file: !2798, line: 54, column: 15)
!2966 = !DILocalVariable(name: "i", scope: !2967, file: !2798, line: 58, type: !51)
!2967 = distinct !DILexicalBlock(scope: !2968, file: !2798, line: 58, column: 17)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !2798, line: 57, column: 19)
!2969 = !DILocalVariable(name: "info", scope: !2913, file: !2798, line: 70, type: !2970)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysinfo", file: !2971, line: 8, size: 896, elements: !2972)
!2971 = !DIFile(filename: "/usr/include/linux/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "6f8882c542ddb6603b06a4eafcc17015")
!2972 = !{!2973, !2976, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2988, !2989, !2990, !2991, !2993}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "uptime", scope: !2970, file: !2971, line: 9, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !2975, line: 15, baseType: !108)
!2975 = !DIFile(filename: "/usr/include/asm-generic/posix_types.h", directory: "", checksumkind: CSK_MD5, checksum: "dfd772b670921419860c9b47bcd28ff0")
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "loads", scope: !2970, file: !2971, line: 10, baseType: !2977, size: 192, offset: 64)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2978, size: 192, elements: !209)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !2975, line: 16, baseType: !55)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "totalram", scope: !2970, file: !2971, line: 11, baseType: !2978, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "freeram", scope: !2970, file: !2971, line: 12, baseType: !2978, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sharedram", scope: !2970, file: !2971, line: 13, baseType: !2978, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "bufferram", scope: !2970, file: !2971, line: 14, baseType: !2978, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "totalswap", scope: !2970, file: !2971, line: 15, baseType: !2978, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "freeswap", scope: !2970, file: !2971, line: 16, baseType: !2978, size: 64, offset: 576)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "procs", scope: !2970, file: !2971, line: 17, baseType: !2986, size: 16, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !2987, line: 24, baseType: !52)
!2987 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "", checksumkind: CSK_MD5, checksum: "b810f270733e106319b67ef512c6246e")
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !2970, file: !2971, line: 18, baseType: !2986, size: 16, offset: 656)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "totalhigh", scope: !2970, file: !2971, line: 19, baseType: !2978, size: 64, offset: 704)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "freehigh", scope: !2970, file: !2971, line: 20, baseType: !2978, size: 64, offset: 768)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "mem_unit", scope: !2970, file: !2971, line: 21, baseType: !2992, size: 32, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !2987, line: 27, baseType: !14)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_f", scope: !2970, file: !2971, line: 22, baseType: !2994, offset: 864)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, elements: !2995)
!2995 = !{!2996}
!2996 = !DISubrange(count: 0)
!2997 = !DILocation(line: 0, scope: !2913, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 137, column: 7, scope: !2906, inlinedAt: !2908)
!2999 = !DILocation(line: 33, column: 7, scope: !3000, inlinedAt: !2998)
!3000 = distinct !DILexicalBlock(scope: !2913, file: !2798, line: 33, column: 7)
!3001 = !DILocation(line: 33, column: 48, scope: !3000, inlinedAt: !2998)
!3002 = !DILocation(line: 33, column: 7, scope: !2913, inlinedAt: !2998)
!3003 = !DILocation(line: 40, column: 14, scope: !2913, inlinedAt: !2998)
!3004 = !DILocation(line: 41, column: 10, scope: !2952, inlinedAt: !2998)
!3005 = !DILocation(line: 41, column: 7, scope: !2913, inlinedAt: !2998)
!3006 = !DILocation(line: 43, column: 7, scope: !2951, inlinedAt: !2998)
!3007 = !DILocation(line: 43, column: 12, scope: !2951, inlinedAt: !2998)
!3008 = !DILocation(line: 44, column: 18, scope: !2951, inlinedAt: !2998)
!3009 = !DILocation(line: 0, scope: !2951, inlinedAt: !2998)
!3010 = !DILocation(line: 45, column: 7, scope: !2951, inlinedAt: !2998)
!3011 = !DILocation(line: 46, column: 13, scope: !2959, inlinedAt: !2998)
!3012 = !DILocation(line: 46, column: 11, scope: !2951, inlinedAt: !2998)
!3013 = !DILocation(line: 48, column: 11, scope: !2958, inlinedAt: !2998)
!3014 = !DILocation(line: 48, column: 18, scope: !2958, inlinedAt: !2998)
!3015 = !DILocation(line: 0, scope: !2958, inlinedAt: !2998)
!3016 = !DILocation(line: 52, column: 32, scope: !3017, inlinedAt: !2998)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !2798, line: 52, column: 11)
!3018 = distinct !DILexicalBlock(scope: !2958, file: !2798, line: 52, column: 11)
!3019 = !DILocation(line: 52, column: 35, scope: !3017, inlinedAt: !2998)
!3020 = !DILocation(line: 53, column: 20, scope: !3017, inlinedAt: !2998)
!3021 = !DILocation(line: 53, column: 30, scope: !3017, inlinedAt: !2998)
!3022 = !DILocation(line: 53, column: 24, scope: !3017, inlinedAt: !2998)
!3023 = !DILocation(line: 52, column: 50, scope: !3017, inlinedAt: !2998)
!3024 = distinct !{!3024, !3025, !3026, !537}
!3025 = !DILocation(line: 52, column: 11, scope: !3018, inlinedAt: !2998)
!3026 = !DILocation(line: 53, column: 35, scope: !3018, inlinedAt: !2998)
!3027 = !DILocation(line: 54, column: 19, scope: !2965, inlinedAt: !2998)
!3028 = !DILocation(line: 54, column: 15, scope: !2958, inlinedAt: !2998)
!3029 = !DILocation(line: 0, scope: !2964, inlinedAt: !2998)
!3030 = !DILocation(line: 57, column: 24, scope: !2968, inlinedAt: !2998)
!3031 = !DILocation(line: 57, column: 19, scope: !2964, inlinedAt: !2998)
!3032 = !DILocation(line: 57, column: 21, scope: !2968, inlinedAt: !2998)
!3033 = !DILocation(line: 0, scope: !2967, inlinedAt: !2998)
!3034 = !DILocation(line: 59, column: 42, scope: !3035, inlinedAt: !2998)
!3035 = distinct !DILexicalBlock(scope: !2967, file: !2798, line: 58, column: 17)
!3036 = !DILocation(line: 59, column: 45, scope: !3035, inlinedAt: !2998)
!3037 = !DILocation(line: 59, column: 27, scope: !3035, inlinedAt: !2998)
!3038 = !DILocation(line: 59, column: 32, scope: !3035, inlinedAt: !2998)
!3039 = !DILocation(line: 60, column: 25, scope: !2964, inlinedAt: !2998)
!3040 = !DILocation(line: 65, column: 5, scope: !2952, inlinedAt: !2998)
!3041 = !DILocation(line: 70, column: 3, scope: !2913, inlinedAt: !2998)
!3042 = !DILocation(line: 70, column: 18, scope: !2913, inlinedAt: !2998)
!3043 = !DILocation(line: 71, column: 7, scope: !3044, inlinedAt: !2998)
!3044 = distinct !DILexicalBlock(scope: !2913, file: !2798, line: 71, column: 7)
!3045 = !DILocation(line: 71, column: 23, scope: !3044, inlinedAt: !2998)
!3046 = !DILocation(line: 71, column: 7, scope: !2913, inlinedAt: !2998)
!3047 = !DILocation(line: 73, column: 31, scope: !3048, inlinedAt: !2998)
!3048 = distinct !DILexicalBlock(scope: !3044, file: !2798, line: 72, column: 5)
!3049 = !{!3050, !770, i64 0}
!3050 = !{!"sysinfo", !770, i64 0, !487, i64 8, !770, i64 32, !770, i64 40, !770, i64 48, !770, i64 56, !770, i64 64, !770, i64 72, !601, i64 80, !601, i64 82, !770, i64 88, !770, i64 96, !567, i64 104, !487, i64 108}
!3051 = !DILocation(line: 73, column: 17, scope: !3048, inlinedAt: !2998)
!3052 = !DILocation(line: 73, column: 24, scope: !3048, inlinedAt: !2998)
!3053 = !{!804, !770, i64 0}
!3054 = !DILocation(line: 74, column: 17, scope: !3048, inlinedAt: !2998)
!3055 = !DILocation(line: 74, column: 25, scope: !3048, inlinedAt: !2998)
!3056 = !{!804, !770, i64 8}
!3057 = !DILocation(line: 80, column: 1, scope: !2913, inlinedAt: !2998)
!3058 = !DILocation(line: 137, column: 7, scope: !2901, inlinedAt: !2908)
!3059 = !DILocation(line: 56, column: 20, scope: !2964, inlinedAt: !2998)
!3060 = !DILocation(line: 60, column: 32, scope: !2964, inlinedAt: !2998)
!3061 = !DILocation(line: 61, column: 25, scope: !2964, inlinedAt: !2998)
!3062 = !DILocation(line: 61, column: 33, scope: !2964, inlinedAt: !2998)
!3063 = !DILocation(line: 0, scope: !2682, inlinedAt: !2685)
!3064 = !DILocation(line: 169, column: 1, scope: !2901, inlinedAt: !2908)
!3065 = !DILocation(line: 593, column: 11, scope: !2682, inlinedAt: !2685)
!3066 = !DILocation(line: 139, column: 7, scope: !2905, inlinedAt: !2908)
!3067 = !DILocation(line: 139, column: 23, scope: !2905, inlinedAt: !2908)
!3068 = !DILocation(line: 145, column: 13, scope: !3069, inlinedAt: !2908)
!3069 = distinct !DILexicalBlock(scope: !2905, file: !2798, line: 145, column: 11)
!3070 = !DILocation(line: 145, column: 11, scope: !2905, inlinedAt: !2908)
!3071 = !DILocation(line: 167, column: 5, scope: !2906, inlinedAt: !2908)
!3072 = !DILocation(line: 158, column: 18, scope: !3073, inlinedAt: !2908)
!3073 = distinct !DILexicalBlock(scope: !2905, file: !2798, line: 158, column: 11)
!3074 = !DILocation(line: 158, column: 35, scope: !3073, inlinedAt: !2908)
!3075 = !DILocation(line: 158, column: 26, scope: !3073, inlinedAt: !2908)
!3076 = !DILocation(line: 158, column: 11, scope: !2905, inlinedAt: !2908)
!3077 = !DILocation(line: 163, column: 31, scope: !2905, inlinedAt: !2908)
!3078 = !DILocation(line: 163, column: 21, scope: !2905, inlinedAt: !2908)
!3079 = !DILocation(line: 164, column: 22, scope: !2905, inlinedAt: !2908)
!3080 = !DILocation(line: 594, column: 13, scope: !2909, inlinedAt: !2685)
!3081 = !DILocation(line: 594, column: 9, scope: !2909, inlinedAt: !2685)
!3082 = !DILocation(line: 288, column: 23, scope: !3083, inlinedAt: !2890)
!3083 = distinct !DILexicalBlock(scope: !2888, file: !361, line: 288, column: 3)
!3084 = !DILocation(line: 290, column: 48, scope: !3085, inlinedAt: !2890)
!3085 = distinct !DILexicalBlock(scope: !3083, file: !361, line: 289, column: 5)
!3086 = !{!3087}
!3087 = distinct !{!3087, !3088, !"finish_utmp: argument 0"}
!3088 = distinct !{!3088, !"finish_utmp"}
!3089 = !DILocation(line: 290, column: 27, scope: !3085, inlinedAt: !2890)
!3090 = !DILocation(line: 290, column: 56, scope: !3085, inlinedAt: !2890)
!3091 = !DILocation(line: 290, column: 25, scope: !3085, inlinedAt: !2890)
!3092 = !DILocation(line: 291, column: 48, scope: !3085, inlinedAt: !2890)
!3093 = !{!803, !486, i64 8}
!3094 = !DILocation(line: 291, column: 27, scope: !3085, inlinedAt: !2890)
!3095 = !DILocation(line: 291, column: 56, scope: !3085, inlinedAt: !2890)
!3096 = !DILocation(line: 291, column: 25, scope: !3085, inlinedAt: !2890)
!3097 = !DILocation(line: 292, column: 48, scope: !3085, inlinedAt: !2890)
!3098 = !{!803, !486, i64 16}
!3099 = !DILocation(line: 292, column: 27, scope: !3085, inlinedAt: !2890)
!3100 = !DILocation(line: 292, column: 56, scope: !3085, inlinedAt: !2890)
!3101 = !DILocation(line: 292, column: 25, scope: !3085, inlinedAt: !2890)
!3102 = !DILocation(line: 293, column: 48, scope: !3085, inlinedAt: !2890)
!3103 = !{!803, !486, i64 24}
!3104 = !DILocation(line: 293, column: 27, scope: !3085, inlinedAt: !2890)
!3105 = !DILocation(line: 293, column: 56, scope: !3085, inlinedAt: !2890)
!3106 = !DILocation(line: 293, column: 25, scope: !3085, inlinedAt: !2890)
!3107 = !DILocation(line: 288, column: 36, scope: !3083, inlinedAt: !2890)
!3108 = distinct !{!3108, !2894, !3109, !537}
!3109 = !DILocation(line: 294, column: 5, scope: !2888, inlinedAt: !2890)
!3110 = !DILocation(line: 986, column: 3, scope: !2640)
!3111 = !DISubprogram(name: "utmpxname", scope: !3112, file: !3112, line: 93, type: !3113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3112 = !DIFile(filename: "/usr/include/utmpx.h", directory: "", checksumkind: CSK_MD5, checksum: "59d83f2bbda77647297a040029d18d89")
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!51, !6}
!3115 = !DISubprogram(name: "setutxent", scope: !3112, file: !3112, line: 53, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3116 = !DISubprogram(name: "getutxent", scope: !3112, file: !3112, line: 65, type: !3117, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3117 = !DISubroutineType(types: !3118)
!3118 = !{!3119}
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3120 = !DISubprogram(name: "strnlen", scope: !1057, file: !1057, line: 413, type: !3121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3121 = !DISubroutineType(types: !3122)
!3122 = !{!53, !6, !53}
!3123 = distinct !DISubprogram(name: "add_utmp", scope: !361, file: !361, line: 227, type: !3124, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3126)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!2658, !2658, !51, !6, !427, !6, !427, !6, !427, !6, !427, !750, !370, !2605, !108, !51, !51}
!3126 = !{!3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3150, !3151, !3152, !3153, !3154, !3155}
!3127 = !DILocalVariable(name: "a", arg: 1, scope: !3123, file: !361, line: 227, type: !2658)
!3128 = !DILocalVariable(name: "options", arg: 2, scope: !3123, file: !361, line: 227, type: !51)
!3129 = !DILocalVariable(name: "user", arg: 3, scope: !3123, file: !361, line: 228, type: !6)
!3130 = !DILocalVariable(name: "user_len", arg: 4, scope: !3123, file: !361, line: 228, type: !427)
!3131 = !DILocalVariable(name: "id", arg: 5, scope: !3123, file: !361, line: 229, type: !6)
!3132 = !DILocalVariable(name: "id_len", arg: 6, scope: !3123, file: !361, line: 229, type: !427)
!3133 = !DILocalVariable(name: "line", arg: 7, scope: !3123, file: !361, line: 230, type: !6)
!3134 = !DILocalVariable(name: "line_len", arg: 8, scope: !3123, file: !361, line: 230, type: !427)
!3135 = !DILocalVariable(name: "host", arg: 9, scope: !3123, file: !361, line: 231, type: !6)
!3136 = !DILocalVariable(name: "host_len", arg: 10, scope: !3123, file: !361, line: 231, type: !427)
!3137 = !DILocalVariable(name: "pid", arg: 11, scope: !3123, file: !361, line: 232, type: !750)
!3138 = !DILocalVariable(name: "type", arg: 12, scope: !3123, file: !361, line: 232, type: !370)
!3139 = !DILocalVariable(name: "ts", arg: 13, scope: !3123, file: !361, line: 232, type: !2605)
!3140 = !DILocalVariable(name: "session", arg: 14, scope: !3123, file: !361, line: 232, type: !108)
!3141 = !DILocalVariable(name: "termination", arg: 15, scope: !3123, file: !361, line: 233, type: !51)
!3142 = !DILocalVariable(name: "exit", arg: 16, scope: !3123, file: !361, line: 233, type: !51)
!3143 = !DILocalVariable(name: "entry_bytes", scope: !3123, file: !361, line: 235, type: !51)
!3144 = !DILocalVariable(name: "avail", scope: !3123, file: !361, line: 236, type: !427)
!3145 = !DILocalVariable(name: "needed_string_bytes", scope: !3123, file: !361, line: 237, type: !427)
!3146 = !DILocalVariable(name: "needed", scope: !3123, file: !361, line: 239, type: !427)
!3147 = !DILocalVariable(name: "old_string_offset", scope: !3148, file: !361, line: 242, type: !427)
!3148 = distinct !DILexicalBlock(scope: !3149, file: !361, line: 241, column: 5)
!3149 = distinct !DILexicalBlock(scope: !3123, file: !361, line: 240, column: 7)
!3150 = !DILocalVariable(name: "new", scope: !3148, file: !361, line: 243, type: !50)
!3151 = !DILocalVariable(name: "new_string_offset", scope: !3148, file: !361, line: 244, type: !427)
!3152 = !DILocalVariable(name: "q", scope: !3148, file: !361, line: 246, type: !58)
!3153 = !DILocalVariable(name: "ut", scope: !3123, file: !361, line: 249, type: !2661)
!3154 = !DILocalVariable(name: "stringlim", scope: !3123, file: !361, line: 250, type: !58)
!3155 = !DILocalVariable(name: "p", scope: !3123, file: !361, line: 251, type: !58)
!3156 = !DILocation(line: 0, scope: !3123)
!3157 = !DILocation(line: 227, column: 29, scope: !3123)
!3158 = !DILocation(line: 236, column: 19, scope: !3123)
!3159 = !{!3160, !770, i64 24}
!3160 = !{!"utmp_alloc", !486, i64 0, !770, i64 8, !770, i64 16, !770, i64 24}
!3161 = !DILocation(line: 236, column: 50, scope: !3123)
!3162 = !{!3160, !770, i64 8}
!3163 = !DILocation(line: 236, column: 61, scope: !3123)
!3164 = !{!3160, !770, i64 16}
!3165 = !DILocation(line: 236, column: 57, scope: !3123)
!3166 = !DILocation(line: 236, column: 31, scope: !3123)
!3167 = !DILocation(line: 238, column: 20, scope: !3123)
!3168 = !DILocation(line: 238, column: 35, scope: !3123)
!3169 = !DILocation(line: 238, column: 52, scope: !3123)
!3170 = !DILocation(line: 239, column: 30, scope: !3123)
!3171 = !DILocation(line: 240, column: 13, scope: !3149)
!3172 = !DILocation(line: 240, column: 7, scope: !3123)
!3173 = !DILocation(line: 0, scope: !3148)
!3174 = !DILocation(line: 243, column: 30, scope: !3148)
!3175 = !{!3160, !486, i64 0}
!3176 = !DILocation(line: 243, column: 59, scope: !3148)
!3177 = !DILocation(line: 243, column: 19, scope: !3148)
!3178 = !DILocation(line: 244, column: 35, scope: !3148)
!3179 = !DILocation(line: 244, column: 51, scope: !3148)
!3180 = !DILocation(line: 244, column: 47, scope: !3148)
!3181 = !DILocation(line: 245, column: 14, scope: !3148)
!3182 = !DILocation(line: 247, column: 18, scope: !3148)
!3183 = !DILocation(line: 247, column: 41, scope: !3148)
!3184 = !DILocalVariable(name: "__dest", arg: 1, scope: !3185, file: !1280, line: 34, type: !50)
!3185 = distinct !DISubprogram(name: "memmove", scope: !1280, file: !1280, line: 34, type: !3186, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3188)
!3186 = !DISubroutineType(types: !3187)
!3187 = !{!50, !50, !689, !53}
!3188 = !{!3184, !3189, !3190}
!3189 = !DILocalVariable(name: "__src", arg: 2, scope: !3185, file: !1280, line: 34, type: !689)
!3190 = !DILocalVariable(name: "__len", arg: 3, scope: !3185, file: !1280, line: 34, type: !53)
!3191 = !DILocation(line: 0, scope: !3185, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 247, column: 7, scope: !3148)
!3193 = !DILocation(line: 36, column: 10, scope: !3185, inlinedAt: !3192)
!3194 = !DILocation(line: 249, column: 34, scope: !3123)
!3195 = !DILocation(line: 250, column: 41, scope: !3123)
!3196 = !DILocation(line: 251, column: 27, scope: !3123)
!3197 = !DILocation(line: 248, column: 5, scope: !3148)
!3198 = !DILocation(line: 249, column: 27, scope: !3123)
!3199 = !DILocation(line: 250, column: 21, scope: !3123)
!3200 = !DILocation(line: 250, column: 37, scope: !3123)
!3201 = !DILocation(line: 251, column: 23, scope: !3123)
!3202 = !DILocation(line: 252, column: 4, scope: !3123)
!3203 = !DILocation(line: 252, column: 8, scope: !3123)
!3204 = !DILocation(line: 253, column: 31, scope: !3123)
!3205 = !DILocalVariable(name: "__dest", arg: 1, scope: !3206, file: !1280, line: 26, type: !3209)
!3206 = distinct !DISubprogram(name: "memcpy", scope: !1280, file: !1280, line: 26, type: !3207, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3210)
!3207 = !DISubroutineType(types: !3208)
!3208 = !{!50, !3209, !688, !53}
!3209 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!3210 = !{!3205, !3211, !3212}
!3211 = !DILocalVariable(name: "__src", arg: 2, scope: !3206, file: !1280, line: 26, type: !688)
!3212 = !DILocalVariable(name: "__len", arg: 3, scope: !3206, file: !1280, line: 26, type: !53)
!3213 = !DILocation(line: 0, scope: !3206, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 253, column: 21, scope: !3123)
!3215 = !DILocation(line: 29, column: 10, scope: !3206, inlinedAt: !3214)
!3216 = !DILocation(line: 253, column: 7, scope: !3123)
!3217 = !DILocation(line: 253, column: 15, scope: !3123)
!3218 = !DILocation(line: 254, column: 4, scope: !3123)
!3219 = !DILocation(line: 254, column: 8, scope: !3123)
!3220 = !DILocation(line: 255, column: 31, scope: !3123)
!3221 = !DILocation(line: 0, scope: !3206, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 255, column: 21, scope: !3123)
!3223 = !DILocation(line: 29, column: 10, scope: !3206, inlinedAt: !3222)
!3224 = !DILocation(line: 255, column: 7, scope: !3123)
!3225 = !DILocation(line: 255, column: 15, scope: !3123)
!3226 = !DILocation(line: 256, column: 4, scope: !3123)
!3227 = !DILocation(line: 256, column: 8, scope: !3123)
!3228 = !DILocation(line: 257, column: 31, scope: !3123)
!3229 = !DILocation(line: 0, scope: !3206, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 257, column: 21, scope: !3123)
!3231 = !DILocation(line: 29, column: 10, scope: !3206, inlinedAt: !3230)
!3232 = !DILocation(line: 257, column: 7, scope: !3123)
!3233 = !DILocation(line: 257, column: 15, scope: !3123)
!3234 = !DILocation(line: 258, column: 4, scope: !3123)
!3235 = !DILocation(line: 258, column: 8, scope: !3123)
!3236 = !DILocation(line: 259, column: 31, scope: !3123)
!3237 = !DILocation(line: 0, scope: !3206, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 259, column: 21, scope: !3123)
!3239 = !DILocation(line: 29, column: 10, scope: !3206, inlinedAt: !3238)
!3240 = !DILocation(line: 259, column: 7, scope: !3123)
!3241 = !DILocation(line: 259, column: 15, scope: !3123)
!3242 = !DILocation(line: 260, column: 15, scope: !3123)
!3243 = !DILocation(line: 261, column: 7, scope: !3123)
!3244 = !DILocation(line: 261, column: 14, scope: !3123)
!3245 = !{!803, !567, i64 48}
!3246 = !DILocation(line: 262, column: 20, scope: !3123)
!3247 = !DILocation(line: 262, column: 7, scope: !3123)
!3248 = !DILocation(line: 262, column: 18, scope: !3123)
!3249 = !{!803, !567, i64 52}
!3250 = !DILocation(line: 263, column: 7, scope: !3123)
!3251 = !DILocation(line: 263, column: 15, scope: !3123)
!3252 = !DILocation(line: 264, column: 15, scope: !3123)
!3253 = !DILocation(line: 264, column: 29, scope: !3123)
!3254 = !{!803, !567, i64 60}
!3255 = !DILocation(line: 265, column: 15, scope: !3123)
!3256 = !DILocation(line: 265, column: 22, scope: !3123)
!3257 = !{!803, !567, i64 64}
!3258 = !DILocalVariable(name: "ut", arg: 1, scope: !3259, file: !361, line: 171, type: !2595)
!3259 = distinct !DISubprogram(name: "desirable_utmp_entry", scope: !361, file: !361, line: 171, type: !3260, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !3262)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!67, !2595, !51}
!3262 = !{!3258, !3263, !3264, !3265}
!3263 = !DILocalVariable(name: "options", arg: 2, scope: !3259, file: !361, line: 171, type: !51)
!3264 = !DILocalVariable(name: "boot_time", scope: !3259, file: !361, line: 180, type: !67)
!3265 = !DILocalVariable(name: "user_proc", scope: !3259, file: !361, line: 186, type: !67)
!3266 = !DILocation(line: 0, scope: !3259, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 266, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3123, file: !361, line: 266, column: 7)
!3269 = !DILocation(line: 180, column: 20, scope: !3259, inlinedAt: !3267)
!3270 = !DILocation(line: 181, column: 16, scope: !3271, inlinedAt: !3267)
!3271 = distinct !DILexicalBlock(scope: !3259, file: !361, line: 181, column: 7)
!3272 = !DILocation(line: 181, column: 39, scope: !3271, inlinedAt: !3267)
!3273 = !DILocation(line: 183, column: 16, scope: !3274, inlinedAt: !3267)
!3274 = distinct !DILexicalBlock(scope: !3259, file: !361, line: 183, column: 7)
!3275 = !DILocation(line: 183, column: 42, scope: !3274, inlinedAt: !3267)
!3276 = !DILocation(line: 186, column: 20, scope: !3259, inlinedAt: !3267)
!3277 = !DILocation(line: 187, column: 16, scope: !3278, inlinedAt: !3267)
!3278 = distinct !DILexicalBlock(scope: !3259, file: !361, line: 187, column: 7)
!3279 = !DILocation(line: 187, column: 42, scope: !3278, inlinedAt: !3267)
!3280 = !DILocation(line: 190, column: 16, scope: !3281, inlinedAt: !3267)
!3281 = distinct !DILexicalBlock(scope: !3259, file: !361, line: 190, column: 7)
!3282 = !DILocation(line: 191, column: 7, scope: !3281, inlinedAt: !3267)
!3283 = !DILocation(line: 193, column: 11, scope: !3281, inlinedAt: !3267)
!3284 = !DILocation(line: 193, column: 33, scope: !3281, inlinedAt: !3267)
!3285 = !DILocation(line: 193, column: 37, scope: !3281, inlinedAt: !3267)
!3286 = !DILocation(line: 193, column: 40, scope: !3281, inlinedAt: !3267)
!3287 = !DILocation(line: 193, column: 46, scope: !3281, inlinedAt: !3267)
!3288 = !DILocation(line: 190, column: 7, scope: !3259, inlinedAt: !3267)
!3289 = !DILocation(line: 272, column: 46, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3268, file: !361, line: 267, column: 5)
!3291 = !DILocation(line: 272, column: 54, scope: !3290)
!3292 = !DILocation(line: 272, column: 21, scope: !3290)
!3293 = !DILocation(line: 272, column: 19, scope: !3290)
!3294 = !DILocation(line: 273, column: 46, scope: !3290)
!3295 = !DILocation(line: 273, column: 54, scope: !3290)
!3296 = !DILocation(line: 273, column: 21, scope: !3290)
!3297 = !DILocation(line: 273, column: 19, scope: !3290)
!3298 = !DILocation(line: 274, column: 46, scope: !3290)
!3299 = !DILocation(line: 274, column: 54, scope: !3290)
!3300 = !DILocation(line: 274, column: 21, scope: !3290)
!3301 = !DILocation(line: 274, column: 19, scope: !3290)
!3302 = !DILocation(line: 275, column: 46, scope: !3290)
!3303 = !DILocation(line: 275, column: 54, scope: !3290)
!3304 = !DILocation(line: 275, column: 21, scope: !3290)
!3305 = !DILocation(line: 275, column: 19, scope: !3290)
!3306 = !DILocation(line: 276, column: 15, scope: !3290)
!3307 = !DILocation(line: 277, column: 22, scope: !3290)
!3308 = !DILocation(line: 278, column: 5, scope: !3290)
!3309 = !DILocation(line: 279, column: 10, scope: !3123)
!3310 = !DILocation(line: 280, column: 1, scope: !3123)
!3311 = !DISubprogram(name: "endutxent", scope: !3112, file: !3112, line: 59, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3312 = !DISubprogram(name: "stat", scope: !3313, file: !3313, line: 205, type: !3314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3313 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!51, !679, !3316}
!3316 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !3317)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!3318 = !DISubprogram(name: "clock_gettime", scope: !3319, file: !3319, line: 279, type: !3320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3319 = !DIFile(filename: "/usr/include/time.h", directory: "", checksumkind: CSK_MD5, checksum: "db37158473a25e1d89b19f8bc6892801")
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!51, !3322, !2801}
!3322 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !3323, line: 7, baseType: !3324)
!3323 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/clockid_t.h", directory: "", checksumkind: CSK_MD5, checksum: "099a80153c2ad48bc7f5f4a188cb6d24")
!3324 = !DIDerivedType(tag: DW_TAG_typedef, name: "__clockid_t", file: !107, line: 169, baseType: !51)
!3325 = !DISubprogram(name: "sysinfo", scope: !3326, file: !3326, line: 29, type: !3327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3326 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysinfo.h", directory: "", checksumkind: CSK_MD5, checksum: "833dbd3acd3e0392e300e781deccc082")
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!51, !3329}
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!3330 = !DISubprogram(name: "timespec_get", scope: !3319, file: !3319, line: 371, type: !3331, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!51, !2801, !51}
!3333 = !DISubprogram(name: "kill", scope: !3334, file: !3334, line: 112, type: !3335, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!3334 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!51, !372, !51}
!3337 = distinct !DISubprogram(name: "version_etc_arn", scope: !401, file: !401, line: 61, type: !3338, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3375)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{null, !3340, !6, !6, !6, !3374, !53}
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3342)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3343)
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3342, file: !84, line: 51, baseType: !51, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3342, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3342, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3342, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3342, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3342, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3342, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3342, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3342, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3342, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3342, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3342, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3342, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3342, file: !84, line: 70, baseType: !3358, size: 64, offset: 832)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3342, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3342, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3342, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3342, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3342, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3342, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3342, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3342, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3342, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3342, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3342, file: !84, line: 93, baseType: !3358, size: 64, offset: 1344)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3342, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3342, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3342, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3342, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381}
!3376 = !DILocalVariable(name: "stream", arg: 1, scope: !3337, file: !401, line: 61, type: !3340)
!3377 = !DILocalVariable(name: "command_name", arg: 2, scope: !3337, file: !401, line: 62, type: !6)
!3378 = !DILocalVariable(name: "package", arg: 3, scope: !3337, file: !401, line: 62, type: !6)
!3379 = !DILocalVariable(name: "version", arg: 4, scope: !3337, file: !401, line: 63, type: !6)
!3380 = !DILocalVariable(name: "authors", arg: 5, scope: !3337, file: !401, line: 64, type: !3374)
!3381 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3337, file: !401, line: 64, type: !53)
!3382 = !DILocation(line: 0, scope: !3337)
!3383 = !DILocation(line: 66, column: 7, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3337, file: !401, line: 66, column: 7)
!3385 = !DILocation(line: 66, column: 7, scope: !3337)
!3386 = !DILocation(line: 67, column: 5, scope: !3384)
!3387 = !DILocation(line: 69, column: 5, scope: !3384)
!3388 = !DILocation(line: 83, column: 3, scope: !3337)
!3389 = !DILocation(line: 85, column: 3, scope: !3337)
!3390 = !DILocation(line: 88, column: 3, scope: !3337)
!3391 = !DILocation(line: 95, column: 3, scope: !3337)
!3392 = !DILocation(line: 97, column: 3, scope: !3337)
!3393 = !DILocation(line: 105, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3337, file: !401, line: 98, column: 5)
!3395 = !DILocation(line: 106, column: 7, scope: !3394)
!3396 = !DILocation(line: 109, column: 7, scope: !3394)
!3397 = !DILocation(line: 110, column: 7, scope: !3394)
!3398 = !DILocation(line: 113, column: 7, scope: !3394)
!3399 = !DILocation(line: 115, column: 7, scope: !3394)
!3400 = !DILocation(line: 120, column: 7, scope: !3394)
!3401 = !DILocation(line: 122, column: 7, scope: !3394)
!3402 = !DILocation(line: 127, column: 7, scope: !3394)
!3403 = !DILocation(line: 129, column: 7, scope: !3394)
!3404 = !DILocation(line: 134, column: 7, scope: !3394)
!3405 = !DILocation(line: 137, column: 7, scope: !3394)
!3406 = !DILocation(line: 142, column: 7, scope: !3394)
!3407 = !DILocation(line: 145, column: 7, scope: !3394)
!3408 = !DILocation(line: 150, column: 7, scope: !3394)
!3409 = !DILocation(line: 154, column: 7, scope: !3394)
!3410 = !DILocation(line: 159, column: 7, scope: !3394)
!3411 = !DILocation(line: 163, column: 7, scope: !3394)
!3412 = !DILocation(line: 170, column: 7, scope: !3394)
!3413 = !DILocation(line: 174, column: 7, scope: !3394)
!3414 = !DILocation(line: 176, column: 1, scope: !3337)
!3415 = distinct !DISubprogram(name: "version_etc_ar", scope: !401, file: !401, line: 183, type: !3416, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3418)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{null, !3340, !6, !6, !6, !3374}
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424}
!3419 = !DILocalVariable(name: "stream", arg: 1, scope: !3415, file: !401, line: 183, type: !3340)
!3420 = !DILocalVariable(name: "command_name", arg: 2, scope: !3415, file: !401, line: 184, type: !6)
!3421 = !DILocalVariable(name: "package", arg: 3, scope: !3415, file: !401, line: 184, type: !6)
!3422 = !DILocalVariable(name: "version", arg: 4, scope: !3415, file: !401, line: 185, type: !6)
!3423 = !DILocalVariable(name: "authors", arg: 5, scope: !3415, file: !401, line: 185, type: !3374)
!3424 = !DILocalVariable(name: "n_authors", scope: !3415, file: !401, line: 187, type: !53)
!3425 = !DILocation(line: 0, scope: !3415)
!3426 = !DILocation(line: 189, column: 8, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3415, file: !401, line: 189, column: 3)
!3428 = !DILocation(line: 0, scope: !3427)
!3429 = !DILocation(line: 189, column: 23, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3427, file: !401, line: 189, column: 3)
!3431 = !DILocation(line: 189, column: 3, scope: !3427)
!3432 = !DILocation(line: 189, column: 52, scope: !3430)
!3433 = distinct !{!3433, !3431, !3434, !537}
!3434 = !DILocation(line: 190, column: 5, scope: !3427)
!3435 = !DILocation(line: 191, column: 3, scope: !3415)
!3436 = !DILocation(line: 192, column: 1, scope: !3415)
!3437 = distinct !DISubprogram(name: "version_etc_va", scope: !401, file: !401, line: 199, type: !3438, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3451)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{null, !3340, !6, !6, !6, !3440}
!3440 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !165, line: 52, baseType: !3441)
!3441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !167, line: 32, baseType: !3442)
!3442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3443, baseType: !3444)
!3443 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !171, size: 256, elements: !3445)
!3445 = !{!3446, !3447, !3448, !3449, !3450}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3444, file: !3443, line: 192, baseType: !50, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3444, file: !3443, line: 192, baseType: !50, size: 64, offset: 64)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3444, file: !3443, line: 192, baseType: !50, size: 64, offset: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3444, file: !3443, line: 192, baseType: !51, size: 32, offset: 192)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3444, file: !3443, line: 192, baseType: !51, size: 32, offset: 224)
!3451 = !{!3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3452 = !DILocalVariable(name: "stream", arg: 1, scope: !3437, file: !401, line: 199, type: !3340)
!3453 = !DILocalVariable(name: "command_name", arg: 2, scope: !3437, file: !401, line: 200, type: !6)
!3454 = !DILocalVariable(name: "package", arg: 3, scope: !3437, file: !401, line: 200, type: !6)
!3455 = !DILocalVariable(name: "version", arg: 4, scope: !3437, file: !401, line: 201, type: !6)
!3456 = !DILocalVariable(name: "authors", arg: 5, scope: !3437, file: !401, line: 201, type: !3440)
!3457 = !DILocalVariable(name: "n_authors", scope: !3437, file: !401, line: 203, type: !53)
!3458 = !DILocalVariable(name: "authtab", scope: !3437, file: !401, line: 204, type: !3459)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !269)
!3460 = !DILocation(line: 0, scope: !3437)
!3461 = !DILocation(line: 201, column: 46, scope: !3437)
!3462 = !DILocation(line: 204, column: 3, scope: !3437)
!3463 = !DILocation(line: 204, column: 15, scope: !3437)
!3464 = !DILocation(line: 208, column: 35, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !401, line: 206, column: 3)
!3466 = distinct !DILexicalBlock(scope: !3437, file: !401, line: 206, column: 3)
!3467 = !DILocation(line: 208, column: 14, scope: !3465)
!3468 = !DILocation(line: 208, column: 33, scope: !3465)
!3469 = !DILocation(line: 208, column: 67, scope: !3465)
!3470 = !DILocation(line: 206, column: 3, scope: !3466)
!3471 = !DILocation(line: 0, scope: !3466)
!3472 = !DILocation(line: 211, column: 3, scope: !3437)
!3473 = !DILocation(line: 213, column: 1, scope: !3437)
!3474 = distinct !DISubprogram(name: "version_etc", scope: !401, file: !401, line: 230, type: !3475, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !3477)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !3340, !6, !6, !6, null}
!3477 = !{!3478, !3479, !3480, !3481, !3482}
!3478 = !DILocalVariable(name: "stream", arg: 1, scope: !3474, file: !401, line: 230, type: !3340)
!3479 = !DILocalVariable(name: "command_name", arg: 2, scope: !3474, file: !401, line: 231, type: !6)
!3480 = !DILocalVariable(name: "package", arg: 3, scope: !3474, file: !401, line: 231, type: !6)
!3481 = !DILocalVariable(name: "version", arg: 4, scope: !3474, file: !401, line: 232, type: !6)
!3482 = !DILocalVariable(name: "authors", scope: !3474, file: !401, line: 234, type: !3440)
!3483 = !DILocation(line: 0, scope: !3474)
!3484 = !DILocation(line: 234, column: 3, scope: !3474)
!3485 = !DILocation(line: 234, column: 11, scope: !3474)
!3486 = !DILocation(line: 235, column: 3, scope: !3474)
!3487 = !DILocation(line: 236, column: 3, scope: !3474)
!3488 = !DILocation(line: 237, column: 3, scope: !3474)
!3489 = !DILocation(line: 238, column: 1, scope: !3474)
!3490 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !401, file: !401, line: 241, type: !192, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !563)
!3491 = !DILocation(line: 243, column: 3, scope: !3490)
!3492 = !DILocation(line: 248, column: 3, scope: !3490)
!3493 = !DILocation(line: 254, column: 3, scope: !3490)
!3494 = !DILocation(line: 259, column: 3, scope: !3490)
!3495 = !DILocation(line: 261, column: 1, scope: !3490)
!3496 = distinct !DISubprogram(name: "xnrealloc", scope: !3497, file: !3497, line: 147, type: !3498, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3500)
!3497 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3498 = !DISubroutineType(types: !3499)
!3499 = !{!50, !50, !53, !53}
!3500 = !{!3501, !3502, !3503}
!3501 = !DILocalVariable(name: "p", arg: 1, scope: !3496, file: !3497, line: 147, type: !50)
!3502 = !DILocalVariable(name: "n", arg: 2, scope: !3496, file: !3497, line: 147, type: !53)
!3503 = !DILocalVariable(name: "s", arg: 3, scope: !3496, file: !3497, line: 147, type: !53)
!3504 = !DILocation(line: 0, scope: !3496)
!3505 = !DILocalVariable(name: "p", arg: 1, scope: !3506, file: !408, line: 83, type: !50)
!3506 = distinct !DISubprogram(name: "xreallocarray", scope: !408, file: !408, line: 83, type: !3498, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3507)
!3507 = !{!3505, !3508, !3509}
!3508 = !DILocalVariable(name: "n", arg: 2, scope: !3506, file: !408, line: 83, type: !53)
!3509 = !DILocalVariable(name: "s", arg: 3, scope: !3506, file: !408, line: 83, type: !53)
!3510 = !DILocation(line: 0, scope: !3506, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 149, column: 10, scope: !3496)
!3512 = !DILocation(line: 85, column: 25, scope: !3506, inlinedAt: !3511)
!3513 = !DILocalVariable(name: "p", arg: 1, scope: !3514, file: !408, line: 37, type: !50)
!3514 = distinct !DISubprogram(name: "check_nonnull", scope: !408, file: !408, line: 37, type: !3515, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3517)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!50, !50}
!3517 = !{!3513}
!3518 = !DILocation(line: 0, scope: !3514, inlinedAt: !3519)
!3519 = distinct !DILocation(line: 85, column: 10, scope: !3506, inlinedAt: !3511)
!3520 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3519)
!3521 = distinct !DILexicalBlock(scope: !3514, file: !408, line: 39, column: 7)
!3522 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3519)
!3523 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3519)
!3524 = !DILocation(line: 149, column: 3, scope: !3496)
!3525 = !DILocation(line: 0, scope: !3506)
!3526 = !DILocation(line: 85, column: 25, scope: !3506)
!3527 = !DILocation(line: 0, scope: !3514, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 85, column: 10, scope: !3506)
!3529 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3528)
!3530 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3528)
!3531 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3528)
!3532 = !DILocation(line: 85, column: 3, scope: !3506)
!3533 = distinct !DISubprogram(name: "xmalloc", scope: !408, file: !408, line: 47, type: !3534, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!50, !53}
!3536 = !{!3537}
!3537 = !DILocalVariable(name: "s", arg: 1, scope: !3533, file: !408, line: 47, type: !53)
!3538 = !DILocation(line: 0, scope: !3533)
!3539 = !DILocation(line: 49, column: 25, scope: !3533)
!3540 = !DILocation(line: 0, scope: !3514, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 49, column: 10, scope: !3533)
!3542 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3541)
!3543 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3541)
!3544 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3541)
!3545 = !DILocation(line: 49, column: 3, scope: !3533)
!3546 = distinct !DISubprogram(name: "ximalloc", scope: !408, file: !408, line: 53, type: !3547, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3549)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!50, !427}
!3549 = !{!3550}
!3550 = !DILocalVariable(name: "s", arg: 1, scope: !3546, file: !408, line: 53, type: !427)
!3551 = !DILocation(line: 0, scope: !3546)
!3552 = !DILocalVariable(name: "s", arg: 1, scope: !3553, file: !3554, line: 55, type: !427)
!3553 = distinct !DISubprogram(name: "imalloc", scope: !3554, file: !3554, line: 55, type: !3547, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3555)
!3554 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3555 = !{!3552}
!3556 = !DILocation(line: 0, scope: !3553, inlinedAt: !3557)
!3557 = distinct !DILocation(line: 55, column: 25, scope: !3546)
!3558 = !DILocation(line: 57, column: 26, scope: !3553, inlinedAt: !3557)
!3559 = !DILocation(line: 0, scope: !3514, inlinedAt: !3560)
!3560 = distinct !DILocation(line: 55, column: 10, scope: !3546)
!3561 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3560)
!3562 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3560)
!3563 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3560)
!3564 = !DILocation(line: 55, column: 3, scope: !3546)
!3565 = distinct !DISubprogram(name: "xcharalloc", scope: !408, file: !408, line: 59, type: !3566, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!58, !53}
!3568 = !{!3569}
!3569 = !DILocalVariable(name: "n", arg: 1, scope: !3565, file: !408, line: 59, type: !53)
!3570 = !DILocation(line: 0, scope: !3565)
!3571 = !DILocation(line: 0, scope: !3533, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 61, column: 10, scope: !3565)
!3573 = !DILocation(line: 49, column: 25, scope: !3533, inlinedAt: !3572)
!3574 = !DILocation(line: 0, scope: !3514, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 49, column: 10, scope: !3533, inlinedAt: !3572)
!3576 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3575)
!3577 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3575)
!3578 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3575)
!3579 = !DILocation(line: 61, column: 3, scope: !3565)
!3580 = distinct !DISubprogram(name: "xrealloc", scope: !408, file: !408, line: 68, type: !3581, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!50, !50, !53}
!3583 = !{!3584, !3585}
!3584 = !DILocalVariable(name: "p", arg: 1, scope: !3580, file: !408, line: 68, type: !50)
!3585 = !DILocalVariable(name: "s", arg: 2, scope: !3580, file: !408, line: 68, type: !53)
!3586 = !DILocation(line: 0, scope: !3580)
!3587 = !DILocalVariable(name: "ptr", arg: 1, scope: !3588, file: !3589, line: 2057, type: !50)
!3588 = distinct !DISubprogram(name: "rpl_realloc", scope: !3589, file: !3589, line: 2057, type: !3581, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3590)
!3589 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3590 = !{!3587, !3591}
!3591 = !DILocalVariable(name: "size", arg: 2, scope: !3588, file: !3589, line: 2057, type: !53)
!3592 = !DILocation(line: 0, scope: !3588, inlinedAt: !3593)
!3593 = distinct !DILocation(line: 70, column: 25, scope: !3580)
!3594 = !DILocation(line: 2059, column: 24, scope: !3588, inlinedAt: !3593)
!3595 = !DILocation(line: 2059, column: 10, scope: !3588, inlinedAt: !3593)
!3596 = !DILocation(line: 0, scope: !3514, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 70, column: 10, scope: !3580)
!3598 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3597)
!3599 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3597)
!3600 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3597)
!3601 = !DILocation(line: 70, column: 3, scope: !3580)
!3602 = distinct !DISubprogram(name: "xirealloc", scope: !408, file: !408, line: 74, type: !3603, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3605)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!50, !50, !427}
!3605 = !{!3606, !3607}
!3606 = !DILocalVariable(name: "p", arg: 1, scope: !3602, file: !408, line: 74, type: !50)
!3607 = !DILocalVariable(name: "s", arg: 2, scope: !3602, file: !408, line: 74, type: !427)
!3608 = !DILocation(line: 0, scope: !3602)
!3609 = !DILocalVariable(name: "p", arg: 1, scope: !3610, file: !3554, line: 66, type: !50)
!3610 = distinct !DISubprogram(name: "irealloc", scope: !3554, file: !3554, line: 66, type: !3603, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3611)
!3611 = !{!3609, !3612}
!3612 = !DILocalVariable(name: "s", arg: 2, scope: !3610, file: !3554, line: 66, type: !427)
!3613 = !DILocation(line: 0, scope: !3610, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 76, column: 25, scope: !3602)
!3615 = !DILocation(line: 0, scope: !3588, inlinedAt: !3616)
!3616 = distinct !DILocation(line: 68, column: 26, scope: !3610, inlinedAt: !3614)
!3617 = !DILocation(line: 2059, column: 24, scope: !3588, inlinedAt: !3616)
!3618 = !DILocation(line: 2059, column: 10, scope: !3588, inlinedAt: !3616)
!3619 = !DILocation(line: 0, scope: !3514, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 76, column: 10, scope: !3602)
!3621 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3620)
!3622 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3620)
!3623 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3620)
!3624 = !DILocation(line: 76, column: 3, scope: !3602)
!3625 = distinct !DISubprogram(name: "xireallocarray", scope: !408, file: !408, line: 89, type: !3626, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3628)
!3626 = !DISubroutineType(types: !3627)
!3627 = !{!50, !50, !427, !427}
!3628 = !{!3629, !3630, !3631}
!3629 = !DILocalVariable(name: "p", arg: 1, scope: !3625, file: !408, line: 89, type: !50)
!3630 = !DILocalVariable(name: "n", arg: 2, scope: !3625, file: !408, line: 89, type: !427)
!3631 = !DILocalVariable(name: "s", arg: 3, scope: !3625, file: !408, line: 89, type: !427)
!3632 = !DILocation(line: 0, scope: !3625)
!3633 = !DILocalVariable(name: "p", arg: 1, scope: !3634, file: !3554, line: 98, type: !50)
!3634 = distinct !DISubprogram(name: "ireallocarray", scope: !3554, file: !3554, line: 98, type: !3626, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3635)
!3635 = !{!3633, !3636, !3637}
!3636 = !DILocalVariable(name: "n", arg: 2, scope: !3634, file: !3554, line: 98, type: !427)
!3637 = !DILocalVariable(name: "s", arg: 3, scope: !3634, file: !3554, line: 98, type: !427)
!3638 = !DILocation(line: 0, scope: !3634, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 91, column: 25, scope: !3625)
!3640 = !DILocation(line: 101, column: 13, scope: !3634, inlinedAt: !3639)
!3641 = !DILocation(line: 0, scope: !3514, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 91, column: 10, scope: !3625)
!3643 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3642)
!3644 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3642)
!3645 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3642)
!3646 = !DILocation(line: 91, column: 3, scope: !3625)
!3647 = distinct !DISubprogram(name: "xnmalloc", scope: !408, file: !408, line: 98, type: !3648, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3650)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!50, !53, !53}
!3650 = !{!3651, !3652}
!3651 = !DILocalVariable(name: "n", arg: 1, scope: !3647, file: !408, line: 98, type: !53)
!3652 = !DILocalVariable(name: "s", arg: 2, scope: !3647, file: !408, line: 98, type: !53)
!3653 = !DILocation(line: 0, scope: !3647)
!3654 = !DILocation(line: 0, scope: !3506, inlinedAt: !3655)
!3655 = distinct !DILocation(line: 100, column: 10, scope: !3647)
!3656 = !DILocation(line: 85, column: 25, scope: !3506, inlinedAt: !3655)
!3657 = !DILocation(line: 0, scope: !3514, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 85, column: 10, scope: !3506, inlinedAt: !3655)
!3659 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3658)
!3660 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3658)
!3661 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3658)
!3662 = !DILocation(line: 100, column: 3, scope: !3647)
!3663 = distinct !DISubprogram(name: "xinmalloc", scope: !408, file: !408, line: 104, type: !3664, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3666)
!3664 = !DISubroutineType(types: !3665)
!3665 = !{!50, !427, !427}
!3666 = !{!3667, !3668}
!3667 = !DILocalVariable(name: "n", arg: 1, scope: !3663, file: !408, line: 104, type: !427)
!3668 = !DILocalVariable(name: "s", arg: 2, scope: !3663, file: !408, line: 104, type: !427)
!3669 = !DILocation(line: 0, scope: !3663)
!3670 = !DILocation(line: 0, scope: !3625, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 106, column: 10, scope: !3663)
!3672 = !DILocation(line: 0, scope: !3634, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 91, column: 25, scope: !3625, inlinedAt: !3671)
!3674 = !DILocation(line: 101, column: 13, scope: !3634, inlinedAt: !3673)
!3675 = !DILocation(line: 0, scope: !3514, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 91, column: 10, scope: !3625, inlinedAt: !3671)
!3677 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3676)
!3678 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3676)
!3679 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3676)
!3680 = !DILocation(line: 106, column: 3, scope: !3663)
!3681 = distinct !DISubprogram(name: "x2realloc", scope: !408, file: !408, line: 116, type: !3682, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!50, !50, !414}
!3684 = !{!3685, !3686}
!3685 = !DILocalVariable(name: "p", arg: 1, scope: !3681, file: !408, line: 116, type: !50)
!3686 = !DILocalVariable(name: "ps", arg: 2, scope: !3681, file: !408, line: 116, type: !414)
!3687 = !DILocation(line: 0, scope: !3681)
!3688 = !DILocation(line: 0, scope: !411, inlinedAt: !3689)
!3689 = distinct !DILocation(line: 118, column: 10, scope: !3681)
!3690 = !DILocation(line: 178, column: 14, scope: !411, inlinedAt: !3689)
!3691 = !DILocation(line: 180, column: 9, scope: !3692, inlinedAt: !3689)
!3692 = distinct !DILexicalBlock(scope: !411, file: !408, line: 180, column: 7)
!3693 = !DILocation(line: 180, column: 7, scope: !411, inlinedAt: !3689)
!3694 = !DILocation(line: 182, column: 13, scope: !3695, inlinedAt: !3689)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !408, line: 182, column: 11)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !408, line: 181, column: 5)
!3697 = !DILocation(line: 182, column: 11, scope: !3696, inlinedAt: !3689)
!3698 = !DILocation(line: 197, column: 11, scope: !3699, inlinedAt: !3689)
!3699 = distinct !DILexicalBlock(scope: !3700, file: !408, line: 197, column: 11)
!3700 = distinct !DILexicalBlock(scope: !3692, file: !408, line: 195, column: 5)
!3701 = !DILocation(line: 197, column: 11, scope: !3700, inlinedAt: !3689)
!3702 = !DILocation(line: 198, column: 9, scope: !3699, inlinedAt: !3689)
!3703 = !DILocation(line: 0, scope: !3506, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 201, column: 7, scope: !411, inlinedAt: !3689)
!3705 = !DILocation(line: 85, column: 25, scope: !3506, inlinedAt: !3704)
!3706 = !DILocation(line: 0, scope: !3514, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 85, column: 10, scope: !3506, inlinedAt: !3704)
!3708 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3707)
!3709 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3707)
!3710 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3707)
!3711 = !DILocation(line: 202, column: 7, scope: !411, inlinedAt: !3689)
!3712 = !DILocation(line: 118, column: 3, scope: !3681)
!3713 = !DILocation(line: 0, scope: !411)
!3714 = !DILocation(line: 178, column: 14, scope: !411)
!3715 = !DILocation(line: 180, column: 9, scope: !3692)
!3716 = !DILocation(line: 180, column: 7, scope: !411)
!3717 = !DILocation(line: 182, column: 13, scope: !3695)
!3718 = !DILocation(line: 182, column: 11, scope: !3696)
!3719 = !DILocation(line: 190, column: 30, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3695, file: !408, line: 183, column: 9)
!3721 = !DILocation(line: 191, column: 16, scope: !3720)
!3722 = !DILocation(line: 191, column: 13, scope: !3720)
!3723 = !DILocation(line: 192, column: 9, scope: !3720)
!3724 = !DILocation(line: 197, column: 11, scope: !3699)
!3725 = !DILocation(line: 197, column: 11, scope: !3700)
!3726 = !DILocation(line: 198, column: 9, scope: !3699)
!3727 = !DILocation(line: 0, scope: !3506, inlinedAt: !3728)
!3728 = distinct !DILocation(line: 201, column: 7, scope: !411)
!3729 = !DILocation(line: 85, column: 25, scope: !3506, inlinedAt: !3728)
!3730 = !DILocation(line: 0, scope: !3514, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 85, column: 10, scope: !3506, inlinedAt: !3728)
!3732 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3731)
!3733 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3731)
!3734 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3731)
!3735 = !DILocation(line: 202, column: 7, scope: !411)
!3736 = !DILocation(line: 203, column: 3, scope: !411)
!3737 = !DILocation(line: 0, scope: !423)
!3738 = !DILocation(line: 230, column: 14, scope: !423)
!3739 = !DILocation(line: 238, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !423, file: !408, line: 238, column: 7)
!3741 = !DILocation(line: 238, column: 7, scope: !423)
!3742 = !DILocation(line: 240, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !423, file: !408, line: 240, column: 7)
!3744 = !DILocation(line: 240, column: 18, scope: !3743)
!3745 = !DILocation(line: 253, column: 8, scope: !423)
!3746 = !DILocation(line: 258, column: 27, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !408, line: 257, column: 5)
!3748 = distinct !DILexicalBlock(scope: !423, file: !408, line: 256, column: 7)
!3749 = !DILocation(line: 259, column: 32, scope: !3747)
!3750 = !DILocation(line: 260, column: 5, scope: !3747)
!3751 = !DILocation(line: 262, column: 9, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !423, file: !408, line: 262, column: 7)
!3753 = !DILocation(line: 262, column: 7, scope: !423)
!3754 = !DILocation(line: 263, column: 9, scope: !3752)
!3755 = !DILocation(line: 263, column: 5, scope: !3752)
!3756 = !DILocation(line: 264, column: 9, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !423, file: !408, line: 264, column: 7)
!3758 = !DILocation(line: 264, column: 14, scope: !3757)
!3759 = !DILocation(line: 265, column: 7, scope: !3757)
!3760 = !DILocation(line: 265, column: 11, scope: !3757)
!3761 = !DILocation(line: 266, column: 11, scope: !3757)
!3762 = !DILocation(line: 266, column: 26, scope: !3757)
!3763 = !DILocation(line: 267, column: 14, scope: !3757)
!3764 = !DILocation(line: 264, column: 7, scope: !423)
!3765 = !DILocation(line: 268, column: 5, scope: !3757)
!3766 = !DILocation(line: 0, scope: !3580, inlinedAt: !3767)
!3767 = distinct !DILocation(line: 269, column: 8, scope: !423)
!3768 = !DILocation(line: 0, scope: !3588, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 70, column: 25, scope: !3580, inlinedAt: !3767)
!3770 = !DILocation(line: 2059, column: 24, scope: !3588, inlinedAt: !3769)
!3771 = !DILocation(line: 2059, column: 10, scope: !3588, inlinedAt: !3769)
!3772 = !DILocation(line: 0, scope: !3514, inlinedAt: !3773)
!3773 = distinct !DILocation(line: 70, column: 10, scope: !3580, inlinedAt: !3767)
!3774 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3773)
!3775 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3773)
!3776 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3773)
!3777 = !DILocation(line: 270, column: 7, scope: !423)
!3778 = !DILocation(line: 271, column: 3, scope: !423)
!3779 = distinct !DISubprogram(name: "xzalloc", scope: !408, file: !408, line: 279, type: !3534, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3780)
!3780 = !{!3781}
!3781 = !DILocalVariable(name: "s", arg: 1, scope: !3779, file: !408, line: 279, type: !53)
!3782 = !DILocation(line: 0, scope: !3779)
!3783 = !DILocalVariable(name: "n", arg: 1, scope: !3784, file: !408, line: 294, type: !53)
!3784 = distinct !DISubprogram(name: "xcalloc", scope: !408, file: !408, line: 294, type: !3648, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3785)
!3785 = !{!3783, !3786}
!3786 = !DILocalVariable(name: "s", arg: 2, scope: !3784, file: !408, line: 294, type: !53)
!3787 = !DILocation(line: 0, scope: !3784, inlinedAt: !3788)
!3788 = distinct !DILocation(line: 281, column: 10, scope: !3779)
!3789 = !DILocation(line: 296, column: 25, scope: !3784, inlinedAt: !3788)
!3790 = !DILocation(line: 0, scope: !3514, inlinedAt: !3791)
!3791 = distinct !DILocation(line: 296, column: 10, scope: !3784, inlinedAt: !3788)
!3792 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3791)
!3793 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3791)
!3794 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3791)
!3795 = !DILocation(line: 281, column: 3, scope: !3779)
!3796 = !DILocation(line: 0, scope: !3784)
!3797 = !DILocation(line: 296, column: 25, scope: !3784)
!3798 = !DILocation(line: 0, scope: !3514, inlinedAt: !3799)
!3799 = distinct !DILocation(line: 296, column: 10, scope: !3784)
!3800 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3799)
!3801 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3799)
!3802 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3799)
!3803 = !DILocation(line: 296, column: 3, scope: !3784)
!3804 = distinct !DISubprogram(name: "xizalloc", scope: !408, file: !408, line: 285, type: !3547, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3805)
!3805 = !{!3806}
!3806 = !DILocalVariable(name: "s", arg: 1, scope: !3804, file: !408, line: 285, type: !427)
!3807 = !DILocation(line: 0, scope: !3804)
!3808 = !DILocalVariable(name: "n", arg: 1, scope: !3809, file: !408, line: 300, type: !427)
!3809 = distinct !DISubprogram(name: "xicalloc", scope: !408, file: !408, line: 300, type: !3664, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3810)
!3810 = !{!3808, !3811}
!3811 = !DILocalVariable(name: "s", arg: 2, scope: !3809, file: !408, line: 300, type: !427)
!3812 = !DILocation(line: 0, scope: !3809, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 287, column: 10, scope: !3804)
!3814 = !DILocalVariable(name: "n", arg: 1, scope: !3815, file: !3554, line: 77, type: !427)
!3815 = distinct !DISubprogram(name: "icalloc", scope: !3554, file: !3554, line: 77, type: !3664, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3816)
!3816 = !{!3814, !3817}
!3817 = !DILocalVariable(name: "s", arg: 2, scope: !3815, file: !3554, line: 77, type: !427)
!3818 = !DILocation(line: 0, scope: !3815, inlinedAt: !3819)
!3819 = distinct !DILocation(line: 302, column: 25, scope: !3809, inlinedAt: !3813)
!3820 = !DILocation(line: 91, column: 10, scope: !3815, inlinedAt: !3819)
!3821 = !DILocation(line: 0, scope: !3514, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 302, column: 10, scope: !3809, inlinedAt: !3813)
!3823 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3822)
!3824 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3822)
!3825 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3822)
!3826 = !DILocation(line: 287, column: 3, scope: !3804)
!3827 = !DILocation(line: 0, scope: !3809)
!3828 = !DILocation(line: 0, scope: !3815, inlinedAt: !3829)
!3829 = distinct !DILocation(line: 302, column: 25, scope: !3809)
!3830 = !DILocation(line: 91, column: 10, scope: !3815, inlinedAt: !3829)
!3831 = !DILocation(line: 0, scope: !3514, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 302, column: 10, scope: !3809)
!3833 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3832)
!3834 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3832)
!3835 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3832)
!3836 = !DILocation(line: 302, column: 3, scope: !3809)
!3837 = distinct !DISubprogram(name: "xmemdup", scope: !408, file: !408, line: 310, type: !3838, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3840)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!50, !689, !53}
!3840 = !{!3841, !3842}
!3841 = !DILocalVariable(name: "p", arg: 1, scope: !3837, file: !408, line: 310, type: !689)
!3842 = !DILocalVariable(name: "s", arg: 2, scope: !3837, file: !408, line: 310, type: !53)
!3843 = !DILocation(line: 0, scope: !3837)
!3844 = !DILocation(line: 0, scope: !3533, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 312, column: 18, scope: !3837)
!3846 = !DILocation(line: 49, column: 25, scope: !3533, inlinedAt: !3845)
!3847 = !DILocation(line: 0, scope: !3514, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 49, column: 10, scope: !3533, inlinedAt: !3845)
!3849 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3848)
!3850 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3848)
!3851 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3848)
!3852 = !DILocalVariable(name: "__dest", arg: 1, scope: !3853, file: !1280, line: 26, type: !3209)
!3853 = distinct !DISubprogram(name: "memcpy", scope: !1280, file: !1280, line: 26, type: !3207, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3854)
!3854 = !{!3852, !3855, !3856}
!3855 = !DILocalVariable(name: "__src", arg: 2, scope: !3853, file: !1280, line: 26, type: !688)
!3856 = !DILocalVariable(name: "__len", arg: 3, scope: !3853, file: !1280, line: 26, type: !53)
!3857 = !DILocation(line: 0, scope: !3853, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 312, column: 10, scope: !3837)
!3859 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3858)
!3860 = !DILocation(line: 312, column: 3, scope: !3837)
!3861 = distinct !DISubprogram(name: "ximemdup", scope: !408, file: !408, line: 316, type: !3862, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3864)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!50, !689, !427}
!3864 = !{!3865, !3866}
!3865 = !DILocalVariable(name: "p", arg: 1, scope: !3861, file: !408, line: 316, type: !689)
!3866 = !DILocalVariable(name: "s", arg: 2, scope: !3861, file: !408, line: 316, type: !427)
!3867 = !DILocation(line: 0, scope: !3861)
!3868 = !DILocation(line: 0, scope: !3546, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 318, column: 18, scope: !3861)
!3870 = !DILocation(line: 0, scope: !3553, inlinedAt: !3871)
!3871 = distinct !DILocation(line: 55, column: 25, scope: !3546, inlinedAt: !3869)
!3872 = !DILocation(line: 57, column: 26, scope: !3553, inlinedAt: !3871)
!3873 = !DILocation(line: 0, scope: !3514, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 55, column: 10, scope: !3546, inlinedAt: !3869)
!3875 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3874)
!3876 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3874)
!3877 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3874)
!3878 = !DILocation(line: 0, scope: !3853, inlinedAt: !3879)
!3879 = distinct !DILocation(line: 318, column: 10, scope: !3861)
!3880 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3879)
!3881 = !DILocation(line: 318, column: 3, scope: !3861)
!3882 = distinct !DISubprogram(name: "ximemdup0", scope: !408, file: !408, line: 325, type: !3883, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3885)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!58, !689, !427}
!3885 = !{!3886, !3887, !3888}
!3886 = !DILocalVariable(name: "p", arg: 1, scope: !3882, file: !408, line: 325, type: !689)
!3887 = !DILocalVariable(name: "s", arg: 2, scope: !3882, file: !408, line: 325, type: !427)
!3888 = !DILocalVariable(name: "result", scope: !3882, file: !408, line: 327, type: !58)
!3889 = !DILocation(line: 0, scope: !3882)
!3890 = !DILocation(line: 327, column: 30, scope: !3882)
!3891 = !DILocation(line: 0, scope: !3546, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 327, column: 18, scope: !3882)
!3893 = !DILocation(line: 0, scope: !3553, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 55, column: 25, scope: !3546, inlinedAt: !3892)
!3895 = !DILocation(line: 57, column: 26, scope: !3553, inlinedAt: !3894)
!3896 = !DILocation(line: 0, scope: !3514, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 55, column: 10, scope: !3546, inlinedAt: !3892)
!3898 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3897)
!3899 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3897)
!3900 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3897)
!3901 = !DILocation(line: 328, column: 3, scope: !3882)
!3902 = !DILocation(line: 328, column: 13, scope: !3882)
!3903 = !DILocation(line: 0, scope: !3853, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 329, column: 10, scope: !3882)
!3905 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3904)
!3906 = !DILocation(line: 329, column: 3, scope: !3882)
!3907 = distinct !DISubprogram(name: "xstrdup", scope: !408, file: !408, line: 335, type: !683, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3908)
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "string", arg: 1, scope: !3907, file: !408, line: 335, type: !6)
!3910 = !DILocation(line: 0, scope: !3907)
!3911 = !DILocation(line: 337, column: 27, scope: !3907)
!3912 = !DILocation(line: 337, column: 43, scope: !3907)
!3913 = !DILocation(line: 0, scope: !3837, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 337, column: 10, scope: !3907)
!3915 = !DILocation(line: 0, scope: !3533, inlinedAt: !3916)
!3916 = distinct !DILocation(line: 312, column: 18, scope: !3837, inlinedAt: !3914)
!3917 = !DILocation(line: 49, column: 25, scope: !3533, inlinedAt: !3916)
!3918 = !DILocation(line: 0, scope: !3514, inlinedAt: !3919)
!3919 = distinct !DILocation(line: 49, column: 10, scope: !3533, inlinedAt: !3916)
!3920 = !DILocation(line: 39, column: 8, scope: !3521, inlinedAt: !3919)
!3921 = !DILocation(line: 39, column: 7, scope: !3514, inlinedAt: !3919)
!3922 = !DILocation(line: 40, column: 5, scope: !3521, inlinedAt: !3919)
!3923 = !DILocation(line: 0, scope: !3853, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 312, column: 10, scope: !3837, inlinedAt: !3914)
!3925 = !DILocation(line: 29, column: 10, scope: !3853, inlinedAt: !3924)
!3926 = !DILocation(line: 337, column: 3, scope: !3907)
!3927 = distinct !DISubprogram(name: "xalloc_die", scope: !442, file: !442, line: 32, type: !192, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3928)
!3928 = !{!3929}
!3929 = !DILocalVariable(name: "__errstatus", scope: !3930, file: !442, line: 34, type: !3931)
!3930 = distinct !DILexicalBlock(scope: !3927, file: !442, line: 34, column: 3)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!3932 = !DILocation(line: 34, column: 3, scope: !3930)
!3933 = !DILocation(line: 0, scope: !3930)
!3934 = !DILocation(line: 40, column: 3, scope: !3927)
!3935 = distinct !DISubprogram(name: "rpl_fopen", scope: !444, file: !444, line: 46, type: !3936, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3972)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!3938, !6, !6}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3940)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3940, file: !84, line: 51, baseType: !51, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3940, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3940, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3940, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3940, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3940, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3940, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3940, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3940, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3940, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3940, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3940, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3940, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3940, file: !84, line: 70, baseType: !3956, size: 64, offset: 832)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3940, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3940, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3940, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3940, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3940, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3940, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3940, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3940, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3940, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3940, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3940, file: !84, line: 93, baseType: !3956, size: 64, offset: 1344)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3940, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3940, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3940, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3940, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3972 = !{!3973, !3974, !3975, !3976, !3977, !3978, !3982, !3984, !3985, !3990, !3993, !3994}
!3973 = !DILocalVariable(name: "filename", arg: 1, scope: !3935, file: !444, line: 46, type: !6)
!3974 = !DILocalVariable(name: "mode", arg: 2, scope: !3935, file: !444, line: 46, type: !6)
!3975 = !DILocalVariable(name: "open_direction", scope: !3935, file: !444, line: 54, type: !51)
!3976 = !DILocalVariable(name: "open_flags", scope: !3935, file: !444, line: 55, type: !51)
!3977 = !DILocalVariable(name: "open_flags_gnu", scope: !3935, file: !444, line: 57, type: !67)
!3978 = !DILocalVariable(name: "fdopen_mode_buf", scope: !3935, file: !444, line: 59, type: !3979)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 648, elements: !3980)
!3980 = !{!3981}
!3981 = !DISubrange(count: 81)
!3982 = !DILocalVariable(name: "p", scope: !3983, file: !444, line: 62, type: !6)
!3983 = distinct !DILexicalBlock(scope: !3935, file: !444, line: 61, column: 3)
!3984 = !DILocalVariable(name: "q", scope: !3983, file: !444, line: 64, type: !58)
!3985 = !DILocalVariable(name: "len", scope: !3986, file: !444, line: 128, type: !53)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !444, line: 127, column: 9)
!3987 = distinct !DILexicalBlock(scope: !3988, file: !444, line: 68, column: 7)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !444, line: 67, column: 5)
!3989 = distinct !DILexicalBlock(scope: !3983, file: !444, line: 67, column: 5)
!3990 = !DILocalVariable(name: "fd", scope: !3991, file: !444, line: 199, type: !51)
!3991 = distinct !DILexicalBlock(scope: !3992, file: !444, line: 198, column: 5)
!3992 = distinct !DILexicalBlock(scope: !3935, file: !444, line: 197, column: 7)
!3993 = !DILocalVariable(name: "fp", scope: !3991, file: !444, line: 204, type: !3938)
!3994 = !DILocalVariable(name: "saved_errno", scope: !3995, file: !444, line: 207, type: !51)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !444, line: 206, column: 9)
!3996 = distinct !DILexicalBlock(scope: !3991, file: !444, line: 205, column: 11)
!3997 = !DILocation(line: 0, scope: !3935)
!3998 = !DILocation(line: 59, column: 3, scope: !3935)
!3999 = !DILocation(line: 59, column: 8, scope: !3935)
!4000 = !DILocation(line: 0, scope: !3983)
!4001 = !DILocation(line: 67, column: 5, scope: !3983)
!4002 = !DILocation(line: 64, column: 11, scope: !3983)
!4003 = !DILocation(line: 54, column: 7, scope: !3935)
!4004 = !DILocation(line: 67, column: 12, scope: !3988)
!4005 = !DILocation(line: 67, column: 5, scope: !3989)
!4006 = !DILocation(line: 74, column: 19, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4008, file: !444, line: 74, column: 17)
!4008 = distinct !DILexicalBlock(scope: !3987, file: !444, line: 70, column: 11)
!4009 = !DILocation(line: 74, column: 17, scope: !4008)
!4010 = !DILocation(line: 75, column: 17, scope: !4007)
!4011 = !DILocation(line: 75, column: 20, scope: !4007)
!4012 = !DILocation(line: 75, column: 15, scope: !4007)
!4013 = !DILocation(line: 80, column: 24, scope: !4008)
!4014 = !DILocation(line: 82, column: 19, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4008, file: !444, line: 82, column: 17)
!4016 = !DILocation(line: 82, column: 17, scope: !4008)
!4017 = !DILocation(line: 83, column: 17, scope: !4015)
!4018 = !DILocation(line: 83, column: 20, scope: !4015)
!4019 = !DILocation(line: 83, column: 15, scope: !4015)
!4020 = !DILocation(line: 88, column: 24, scope: !4008)
!4021 = !DILocation(line: 90, column: 19, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4008, file: !444, line: 90, column: 17)
!4023 = !DILocation(line: 90, column: 17, scope: !4008)
!4024 = !DILocation(line: 91, column: 17, scope: !4022)
!4025 = !DILocation(line: 91, column: 20, scope: !4022)
!4026 = !DILocation(line: 91, column: 15, scope: !4022)
!4027 = !DILocation(line: 100, column: 19, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4008, file: !444, line: 100, column: 17)
!4029 = !DILocation(line: 100, column: 17, scope: !4008)
!4030 = !DILocation(line: 101, column: 17, scope: !4028)
!4031 = !DILocation(line: 101, column: 20, scope: !4028)
!4032 = !DILocation(line: 101, column: 15, scope: !4028)
!4033 = !DILocation(line: 107, column: 19, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4008, file: !444, line: 107, column: 17)
!4035 = !DILocation(line: 107, column: 17, scope: !4008)
!4036 = !DILocation(line: 108, column: 17, scope: !4034)
!4037 = !DILocation(line: 108, column: 20, scope: !4034)
!4038 = !DILocation(line: 108, column: 15, scope: !4034)
!4039 = !DILocation(line: 113, column: 24, scope: !4008)
!4040 = !DILocation(line: 115, column: 13, scope: !4008)
!4041 = !DILocation(line: 117, column: 24, scope: !4008)
!4042 = !DILocation(line: 119, column: 13, scope: !4008)
!4043 = !DILocation(line: 128, column: 24, scope: !3986)
!4044 = !DILocation(line: 0, scope: !3986)
!4045 = !DILocation(line: 129, column: 48, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !3986, file: !444, line: 129, column: 15)
!4047 = !DILocation(line: 129, column: 19, scope: !4046)
!4048 = !DILocation(line: 129, column: 15, scope: !3986)
!4049 = !DILocalVariable(name: "__dest", arg: 1, scope: !4050, file: !1280, line: 26, type: !3209)
!4050 = distinct !DISubprogram(name: "memcpy", scope: !1280, file: !1280, line: 26, type: !3207, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4051)
!4051 = !{!4049, !4052, !4053}
!4052 = !DILocalVariable(name: "__src", arg: 2, scope: !4050, file: !1280, line: 26, type: !688)
!4053 = !DILocalVariable(name: "__len", arg: 3, scope: !4050, file: !1280, line: 26, type: !53)
!4054 = !DILocation(line: 0, scope: !4050, inlinedAt: !4055)
!4055 = distinct !DILocation(line: 131, column: 11, scope: !3986)
!4056 = !DILocation(line: 29, column: 10, scope: !4050, inlinedAt: !4055)
!4057 = !DILocation(line: 132, column: 13, scope: !3986)
!4058 = !DILocation(line: 135, column: 9, scope: !3987)
!4059 = !DILocation(line: 67, column: 25, scope: !3988)
!4060 = !DILocation(line: 67, column: 5, scope: !3988)
!4061 = distinct !{!4061, !4005, !4062, !537}
!4062 = !DILocation(line: 136, column: 7, scope: !3989)
!4063 = !DILocation(line: 138, column: 8, scope: !3983)
!4064 = !DILocation(line: 197, column: 7, scope: !3935)
!4065 = !DILocation(line: 199, column: 47, scope: !3991)
!4066 = !DILocation(line: 199, column: 16, scope: !3991)
!4067 = !DILocation(line: 0, scope: !3991)
!4068 = !DILocation(line: 201, column: 14, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !3991, file: !444, line: 201, column: 11)
!4070 = !DILocation(line: 201, column: 11, scope: !3991)
!4071 = !DILocation(line: 204, column: 18, scope: !3991)
!4072 = !DILocation(line: 205, column: 14, scope: !3996)
!4073 = !DILocation(line: 205, column: 11, scope: !3991)
!4074 = !DILocation(line: 207, column: 29, scope: !3995)
!4075 = !DILocation(line: 0, scope: !3995)
!4076 = !DILocation(line: 208, column: 11, scope: !3995)
!4077 = !DILocation(line: 209, column: 17, scope: !3995)
!4078 = !DILocation(line: 210, column: 9, scope: !3995)
!4079 = !DILocalVariable(name: "filename", arg: 1, scope: !4080, file: !444, line: 30, type: !6)
!4080 = distinct !DISubprogram(name: "orig_fopen", scope: !444, file: !444, line: 30, type: !3936, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4081)
!4081 = !{!4079, !4082}
!4082 = !DILocalVariable(name: "mode", arg: 2, scope: !4080, file: !444, line: 30, type: !6)
!4083 = !DILocation(line: 0, scope: !4080, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 219, column: 10, scope: !3935)
!4085 = !DILocation(line: 32, column: 10, scope: !4080, inlinedAt: !4084)
!4086 = !DILocation(line: 219, column: 3, scope: !3935)
!4087 = !DILocation(line: 220, column: 1, scope: !3935)
!4088 = !DISubprogram(name: "open", scope: !1064, file: !1064, line: 181, type: !4089, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!51, !6, !51, null}
!4091 = !DISubprogram(name: "fdopen", scope: !165, file: !165, line: 293, type: !4092, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4092 = !DISubroutineType(types: !4093)
!4093 = !{!3938, !51, !6}
!4094 = !DISubprogram(name: "close", scope: !4095, file: !4095, line: 358, type: !825, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4095 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!4096 = distinct !DISubprogram(name: "close_stream", scope: !446, file: !446, line: 55, type: !4097, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4133)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{!51, !4099}
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !4101)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4118, !4119, !4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4101, file: !84, line: 51, baseType: !51, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4101, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4101, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4101, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4101, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4101, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4101, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4101, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4101, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4101, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4101, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4101, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4101, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4101, file: !84, line: 70, baseType: !4117, size: 64, offset: 832)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4101, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4101, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4101, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4101, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4101, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4101, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4101, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4101, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4101, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4101, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4101, file: !84, line: 93, baseType: !4117, size: 64, offset: 1344)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4101, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4101, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4101, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4101, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!4133 = !{!4134, !4135, !4137, !4138}
!4134 = !DILocalVariable(name: "stream", arg: 1, scope: !4096, file: !446, line: 55, type: !4099)
!4135 = !DILocalVariable(name: "some_pending", scope: !4096, file: !446, line: 57, type: !4136)
!4136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!4137 = !DILocalVariable(name: "prev_fail", scope: !4096, file: !446, line: 58, type: !4136)
!4138 = !DILocalVariable(name: "fclose_fail", scope: !4096, file: !446, line: 59, type: !4136)
!4139 = !DILocation(line: 0, scope: !4096)
!4140 = !DILocation(line: 57, column: 30, scope: !4096)
!4141 = !DILocalVariable(name: "__stream", arg: 1, scope: !4142, file: !824, line: 135, type: !4099)
!4142 = distinct !DISubprogram(name: "ferror_unlocked", scope: !824, file: !824, line: 135, type: !4097, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !445, retainedNodes: !4143)
!4143 = !{!4141}
!4144 = !DILocation(line: 0, scope: !4142, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 58, column: 27, scope: !4096)
!4146 = !DILocation(line: 137, column: 10, scope: !4142, inlinedAt: !4145)
!4147 = !{!832, !567, i64 0}
!4148 = !DILocation(line: 58, column: 43, scope: !4096)
!4149 = !DILocation(line: 59, column: 29, scope: !4096)
!4150 = !DILocation(line: 59, column: 45, scope: !4096)
!4151 = !DILocation(line: 69, column: 17, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4096, file: !446, line: 69, column: 7)
!4153 = !DILocation(line: 57, column: 50, scope: !4096)
!4154 = !DILocation(line: 69, column: 33, scope: !4152)
!4155 = !DILocation(line: 69, column: 53, scope: !4152)
!4156 = !DILocation(line: 69, column: 59, scope: !4152)
!4157 = !DILocation(line: 69, column: 7, scope: !4096)
!4158 = !DILocation(line: 71, column: 11, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4152, file: !446, line: 70, column: 5)
!4160 = !DILocation(line: 72, column: 9, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4159, file: !446, line: 71, column: 11)
!4162 = !DILocation(line: 72, column: 15, scope: !4161)
!4163 = !DILocation(line: 77, column: 1, scope: !4096)
!4164 = distinct !DISubprogram(name: "rpl_fclose", scope: !448, file: !448, line: 58, type: !4165, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !4201)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!51, !4167}
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !4169)
!4169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !4170)
!4170 = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200}
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4169, file: !84, line: 51, baseType: !51, size: 32)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4169, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4169, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4169, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4169, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4169, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4169, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4169, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4169, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4169, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4169, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4169, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4169, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4169, file: !84, line: 70, baseType: !4185, size: 64, offset: 832)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4169, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4169, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4169, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4169, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4169, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4169, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4169, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4169, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4169, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4169, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4169, file: !84, line: 93, baseType: !4185, size: 64, offset: 1344)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4169, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4169, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4169, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4169, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!4201 = !{!4202, !4203, !4204, !4205}
!4202 = !DILocalVariable(name: "fp", arg: 1, scope: !4164, file: !448, line: 58, type: !4167)
!4203 = !DILocalVariable(name: "saved_errno", scope: !4164, file: !448, line: 60, type: !51)
!4204 = !DILocalVariable(name: "fd", scope: !4164, file: !448, line: 63, type: !51)
!4205 = !DILocalVariable(name: "result", scope: !4164, file: !448, line: 74, type: !51)
!4206 = !DILocation(line: 0, scope: !4164)
!4207 = !DILocation(line: 63, column: 12, scope: !4164)
!4208 = !DILocation(line: 64, column: 10, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4164, file: !448, line: 64, column: 7)
!4210 = !DILocation(line: 64, column: 7, scope: !4164)
!4211 = !DILocation(line: 65, column: 12, scope: !4209)
!4212 = !DILocation(line: 65, column: 5, scope: !4209)
!4213 = !DILocation(line: 70, column: 9, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4164, file: !448, line: 70, column: 7)
!4215 = !DILocation(line: 70, column: 23, scope: !4214)
!4216 = !DILocation(line: 70, column: 33, scope: !4214)
!4217 = !DILocation(line: 70, column: 26, scope: !4214)
!4218 = !DILocation(line: 70, column: 59, scope: !4214)
!4219 = !DILocation(line: 71, column: 7, scope: !4214)
!4220 = !DILocation(line: 71, column: 10, scope: !4214)
!4221 = !DILocation(line: 70, column: 7, scope: !4164)
!4222 = !DILocation(line: 100, column: 12, scope: !4164)
!4223 = !DILocation(line: 105, column: 7, scope: !4164)
!4224 = !DILocation(line: 72, column: 19, scope: !4214)
!4225 = !DILocation(line: 105, column: 19, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4164, file: !448, line: 105, column: 7)
!4227 = !DILocation(line: 107, column: 13, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4226, file: !448, line: 106, column: 5)
!4229 = !DILocation(line: 109, column: 5, scope: !4228)
!4230 = !DILocation(line: 112, column: 1, scope: !4164)
!4231 = !DISubprogram(name: "fileno", scope: !165, file: !165, line: 809, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4232 = !DISubprogram(name: "fclose", scope: !165, file: !165, line: 178, type: !4165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4233 = !DISubprogram(name: "lseek", scope: !4095, file: !4095, line: 339, type: !4234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!106, !51, !106, !51}
!4236 = distinct !DISubprogram(name: "rpl_fflush", scope: !450, file: !450, line: 130, type: !4237, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4273)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!51, !4239}
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !4241)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !4242)
!4242 = !{!4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4241, file: !84, line: 51, baseType: !51, size: 32)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4241, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4241, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4241, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4241, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4241, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4241, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4241, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4241, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4241, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4241, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4241, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4241, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4241, file: !84, line: 70, baseType: !4257, size: 64, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4241, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4241, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4241, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4241, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4241, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4241, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4241, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4241, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4241, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4241, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4241, file: !84, line: 93, baseType: !4257, size: 64, offset: 1344)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4241, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4241, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4241, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4241, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!4273 = !{!4274}
!4274 = !DILocalVariable(name: "stream", arg: 1, scope: !4236, file: !450, line: 130, type: !4239)
!4275 = !DILocation(line: 0, scope: !4236)
!4276 = !DILocation(line: 151, column: 14, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4236, file: !450, line: 151, column: 7)
!4278 = !DILocation(line: 151, column: 22, scope: !4277)
!4279 = !DILocation(line: 151, column: 27, scope: !4277)
!4280 = !DILocation(line: 151, column: 7, scope: !4236)
!4281 = !DILocation(line: 152, column: 12, scope: !4277)
!4282 = !DILocation(line: 152, column: 5, scope: !4277)
!4283 = !DILocalVariable(name: "fp", arg: 1, scope: !4284, file: !450, line: 42, type: !4239)
!4284 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !450, file: !450, line: 42, type: !4285, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4287)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{null, !4239}
!4287 = !{!4283}
!4288 = !DILocation(line: 0, scope: !4284, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 157, column: 3, scope: !4236)
!4290 = !DILocation(line: 44, column: 12, scope: !4291, inlinedAt: !4289)
!4291 = distinct !DILexicalBlock(scope: !4284, file: !450, line: 44, column: 7)
!4292 = !DILocation(line: 44, column: 19, scope: !4291, inlinedAt: !4289)
!4293 = !DILocation(line: 44, column: 7, scope: !4284, inlinedAt: !4289)
!4294 = !DILocation(line: 46, column: 5, scope: !4291, inlinedAt: !4289)
!4295 = !DILocation(line: 159, column: 10, scope: !4236)
!4296 = !DILocation(line: 159, column: 3, scope: !4236)
!4297 = !DILocation(line: 236, column: 1, scope: !4236)
!4298 = !DISubprogram(name: "fflush", scope: !165, file: !165, line: 230, type: !4237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4299 = distinct !DISubprogram(name: "rpl_fseeko", scope: !452, file: !452, line: 28, type: !4300, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !4337)
!4300 = !DISubroutineType(types: !4301)
!4301 = !{!51, !4302, !4336, !51}
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !4304)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !4305)
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4304, file: !84, line: 51, baseType: !51, size: 32)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4304, file: !84, line: 54, baseType: !58, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4304, file: !84, line: 55, baseType: !58, size: 64, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4304, file: !84, line: 56, baseType: !58, size: 64, offset: 192)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4304, file: !84, line: 57, baseType: !58, size: 64, offset: 256)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4304, file: !84, line: 58, baseType: !58, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4304, file: !84, line: 59, baseType: !58, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4304, file: !84, line: 60, baseType: !58, size: 64, offset: 448)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4304, file: !84, line: 61, baseType: !58, size: 64, offset: 512)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4304, file: !84, line: 64, baseType: !58, size: 64, offset: 576)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4304, file: !84, line: 65, baseType: !58, size: 64, offset: 640)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4304, file: !84, line: 66, baseType: !58, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4304, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4304, file: !84, line: 70, baseType: !4320, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4304, file: !84, line: 72, baseType: !51, size: 32, offset: 896)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4304, file: !84, line: 73, baseType: !51, size: 32, offset: 928)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4304, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4304, file: !84, line: 77, baseType: !52, size: 16, offset: 1024)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4304, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4304, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4304, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4304, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4304, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4304, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4304, file: !84, line: 93, baseType: !4320, size: 64, offset: 1344)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4304, file: !84, line: 94, baseType: !50, size: 64, offset: 1408)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4304, file: !84, line: 95, baseType: !53, size: 64, offset: 1472)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4304, file: !84, line: 96, baseType: !51, size: 32, offset: 1536)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4304, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!4336 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !165, line: 63, baseType: !106)
!4337 = !{!4338, !4339, !4340, !4341}
!4338 = !DILocalVariable(name: "fp", arg: 1, scope: !4299, file: !452, line: 28, type: !4302)
!4339 = !DILocalVariable(name: "offset", arg: 2, scope: !4299, file: !452, line: 28, type: !4336)
!4340 = !DILocalVariable(name: "whence", arg: 3, scope: !4299, file: !452, line: 28, type: !51)
!4341 = !DILocalVariable(name: "pos", scope: !4342, file: !452, line: 123, type: !4336)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !452, line: 119, column: 5)
!4343 = distinct !DILexicalBlock(scope: !4299, file: !452, line: 55, column: 7)
!4344 = !DILocation(line: 0, scope: !4299)
!4345 = !DILocation(line: 55, column: 12, scope: !4343)
!4346 = !{!832, !486, i64 16}
!4347 = !DILocation(line: 55, column: 33, scope: !4343)
!4348 = !{!832, !486, i64 8}
!4349 = !DILocation(line: 55, column: 25, scope: !4343)
!4350 = !DILocation(line: 56, column: 7, scope: !4343)
!4351 = !DILocation(line: 56, column: 15, scope: !4343)
!4352 = !DILocation(line: 56, column: 37, scope: !4343)
!4353 = !{!832, !486, i64 32}
!4354 = !DILocation(line: 56, column: 29, scope: !4343)
!4355 = !DILocation(line: 57, column: 7, scope: !4343)
!4356 = !DILocation(line: 57, column: 15, scope: !4343)
!4357 = !{!832, !486, i64 72}
!4358 = !DILocation(line: 57, column: 29, scope: !4343)
!4359 = !DILocation(line: 55, column: 7, scope: !4299)
!4360 = !DILocation(line: 123, column: 26, scope: !4342)
!4361 = !DILocation(line: 123, column: 19, scope: !4342)
!4362 = !DILocation(line: 0, scope: !4342)
!4363 = !DILocation(line: 124, column: 15, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4342, file: !452, line: 124, column: 11)
!4365 = !DILocation(line: 124, column: 11, scope: !4342)
!4366 = !DILocation(line: 135, column: 12, scope: !4342)
!4367 = !DILocation(line: 135, column: 19, scope: !4342)
!4368 = !DILocation(line: 136, column: 12, scope: !4342)
!4369 = !DILocation(line: 136, column: 20, scope: !4342)
!4370 = !{!832, !770, i64 144}
!4371 = !DILocation(line: 167, column: 7, scope: !4342)
!4372 = !DILocation(line: 169, column: 10, scope: !4299)
!4373 = !DILocation(line: 169, column: 3, scope: !4299)
!4374 = !DILocation(line: 170, column: 1, scope: !4299)
!4375 = !DISubprogram(name: "fseeko", scope: !165, file: !165, line: 736, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!51, !4302, !106, !51}
!4378 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !345, file: !345, line: 100, type: !4379, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !4382)
!4379 = !DISubroutineType(types: !4380)
!4380 = !{!53, !1298, !6, !53, !4381}
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!4382 = !{!4383, !4384, !4385, !4386, !4387}
!4383 = !DILocalVariable(name: "pwc", arg: 1, scope: !4378, file: !345, line: 100, type: !1298)
!4384 = !DILocalVariable(name: "s", arg: 2, scope: !4378, file: !345, line: 100, type: !6)
!4385 = !DILocalVariable(name: "n", arg: 3, scope: !4378, file: !345, line: 100, type: !53)
!4386 = !DILocalVariable(name: "ps", arg: 4, scope: !4378, file: !345, line: 100, type: !4381)
!4387 = !DILocalVariable(name: "ret", scope: !4378, file: !345, line: 130, type: !53)
!4388 = !DILocation(line: 0, scope: !4378)
!4389 = !DILocation(line: 105, column: 9, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4378, file: !345, line: 105, column: 7)
!4391 = !DILocation(line: 105, column: 7, scope: !4378)
!4392 = !DILocation(line: 117, column: 10, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4378, file: !345, line: 117, column: 7)
!4394 = !DILocation(line: 117, column: 7, scope: !4378)
!4395 = !DILocation(line: 130, column: 16, scope: !4378)
!4396 = !DILocation(line: 135, column: 11, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4378, file: !345, line: 135, column: 7)
!4398 = !DILocation(line: 135, column: 25, scope: !4397)
!4399 = !DILocation(line: 135, column: 30, scope: !4397)
!4400 = !DILocation(line: 135, column: 7, scope: !4378)
!4401 = !DILocalVariable(name: "ps", arg: 1, scope: !4402, file: !1271, line: 1135, type: !4381)
!4402 = distinct !DISubprogram(name: "mbszero", scope: !1271, file: !1271, line: 1135, type: !4403, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !4405)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !4381}
!4405 = !{!4401}
!4406 = !DILocation(line: 0, scope: !4402, inlinedAt: !4407)
!4407 = distinct !DILocation(line: 137, column: 5, scope: !4397)
!4408 = !DILocalVariable(name: "__dest", arg: 1, scope: !4409, file: !1280, line: 57, type: !50)
!4409 = distinct !DISubprogram(name: "memset", scope: !1280, file: !1280, line: 57, type: !1281, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !4410)
!4410 = !{!4408, !4411, !4412}
!4411 = !DILocalVariable(name: "__ch", arg: 2, scope: !4409, file: !1280, line: 57, type: !51)
!4412 = !DILocalVariable(name: "__len", arg: 3, scope: !4409, file: !1280, line: 57, type: !53)
!4413 = !DILocation(line: 0, scope: !4409, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 1137, column: 3, scope: !4402, inlinedAt: !4407)
!4415 = !DILocation(line: 59, column: 10, scope: !4409, inlinedAt: !4414)
!4416 = !DILocation(line: 137, column: 5, scope: !4397)
!4417 = !DILocation(line: 138, column: 11, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4378, file: !345, line: 138, column: 7)
!4419 = !DILocation(line: 138, column: 7, scope: !4378)
!4420 = !DILocation(line: 139, column: 5, scope: !4418)
!4421 = !DILocation(line: 143, column: 26, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4378, file: !345, line: 143, column: 7)
!4423 = !DILocation(line: 143, column: 41, scope: !4422)
!4424 = !DILocation(line: 143, column: 7, scope: !4378)
!4425 = !DILocation(line: 145, column: 15, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4427, file: !345, line: 145, column: 11)
!4427 = distinct !DILexicalBlock(scope: !4422, file: !345, line: 144, column: 5)
!4428 = !DILocation(line: 145, column: 11, scope: !4427)
!4429 = !DILocation(line: 146, column: 32, scope: !4426)
!4430 = !DILocation(line: 146, column: 16, scope: !4426)
!4431 = !DILocation(line: 146, column: 14, scope: !4426)
!4432 = !DILocation(line: 146, column: 9, scope: !4426)
!4433 = !DILocation(line: 286, column: 1, scope: !4378)
!4434 = !DISubprogram(name: "mbsinit", scope: !4435, file: !4435, line: 293, type: !4436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !563)
!4435 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!51, !4438}
!4438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4439, size: 64)
!4439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!4440 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !454, file: !454, line: 27, type: !3498, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4441)
!4441 = !{!4442, !4443, !4444, !4445}
!4442 = !DILocalVariable(name: "ptr", arg: 1, scope: !4440, file: !454, line: 27, type: !50)
!4443 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4440, file: !454, line: 27, type: !53)
!4444 = !DILocalVariable(name: "size", arg: 3, scope: !4440, file: !454, line: 27, type: !53)
!4445 = !DILocalVariable(name: "nbytes", scope: !4440, file: !454, line: 29, type: !53)
!4446 = !DILocation(line: 0, scope: !4440)
!4447 = !DILocation(line: 30, column: 7, scope: !4448)
!4448 = distinct !DILexicalBlock(scope: !4440, file: !454, line: 30, column: 7)
!4449 = !DILocalVariable(name: "ptr", arg: 1, scope: !4450, file: !3589, line: 2057, type: !50)
!4450 = distinct !DISubprogram(name: "rpl_realloc", scope: !3589, file: !3589, line: 2057, type: !3581, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !453, retainedNodes: !4451)
!4451 = !{!4449, !4452}
!4452 = !DILocalVariable(name: "size", arg: 2, scope: !4450, file: !3589, line: 2057, type: !53)
!4453 = !DILocation(line: 0, scope: !4450, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 37, column: 10, scope: !4440)
!4455 = !DILocation(line: 2059, column: 24, scope: !4450, inlinedAt: !4454)
!4456 = !DILocation(line: 2059, column: 10, scope: !4450, inlinedAt: !4454)
!4457 = !DILocation(line: 37, column: 3, scope: !4440)
!4458 = !DILocation(line: 32, column: 7, scope: !4459)
!4459 = distinct !DILexicalBlock(scope: !4448, file: !454, line: 31, column: 5)
!4460 = !DILocation(line: 32, column: 13, scope: !4459)
!4461 = !DILocation(line: 33, column: 7, scope: !4459)
!4462 = !DILocation(line: 38, column: 1, scope: !4440)
!4463 = distinct !DISubprogram(name: "hard_locale", scope: !457, file: !457, line: 28, type: !4464, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !4466)
!4464 = !DISubroutineType(types: !4465)
!4465 = !{!67, !51}
!4466 = !{!4467, !4468}
!4467 = !DILocalVariable(name: "category", arg: 1, scope: !4463, file: !457, line: 28, type: !51)
!4468 = !DILocalVariable(name: "locale", scope: !4463, file: !457, line: 30, type: !4469)
!4469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !4470)
!4470 = !{!4471}
!4471 = !DISubrange(count: 257)
!4472 = !DILocation(line: 0, scope: !4463)
!4473 = !DILocation(line: 30, column: 3, scope: !4463)
!4474 = !DILocation(line: 30, column: 8, scope: !4463)
!4475 = !DILocation(line: 32, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4463, file: !457, line: 32, column: 7)
!4477 = !DILocation(line: 32, column: 7, scope: !4463)
!4478 = !DILocalVariable(name: "__s1", arg: 1, scope: !4479, file: !521, line: 1359, type: !6)
!4479 = distinct !DISubprogram(name: "streq", scope: !521, file: !521, line: 1359, type: !522, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !4480)
!4480 = !{!4478, !4481}
!4481 = !DILocalVariable(name: "__s2", arg: 2, scope: !4479, file: !521, line: 1359, type: !6)
!4482 = !DILocation(line: 0, scope: !4479, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 35, column: 9, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4463, file: !457, line: 35, column: 7)
!4485 = !DILocation(line: 1361, column: 11, scope: !4479, inlinedAt: !4483)
!4486 = !DILocation(line: 1361, column: 10, scope: !4479, inlinedAt: !4483)
!4487 = !DILocation(line: 35, column: 29, scope: !4484)
!4488 = !DILocation(line: 0, scope: !4479, inlinedAt: !4489)
!4489 = distinct !DILocation(line: 35, column: 32, scope: !4484)
!4490 = !DILocation(line: 1361, column: 11, scope: !4479, inlinedAt: !4489)
!4491 = !DILocation(line: 1361, column: 10, scope: !4479, inlinedAt: !4489)
!4492 = !DILocation(line: 35, column: 7, scope: !4463)
!4493 = !DILocation(line: 46, column: 3, scope: !4463)
!4494 = !DILocation(line: 47, column: 1, scope: !4463)
!4495 = distinct !DISubprogram(name: "setlocale_null_r", scope: !459, file: !459, line: 154, type: !4496, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !4498)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!51, !51, !58, !53}
!4498 = !{!4499, !4500, !4501}
!4499 = !DILocalVariable(name: "category", arg: 1, scope: !4495, file: !459, line: 154, type: !51)
!4500 = !DILocalVariable(name: "buf", arg: 2, scope: !4495, file: !459, line: 154, type: !58)
!4501 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4495, file: !459, line: 154, type: !53)
!4502 = !DILocation(line: 0, scope: !4495)
!4503 = !DILocation(line: 159, column: 10, scope: !4495)
!4504 = !DILocation(line: 159, column: 3, scope: !4495)
!4505 = distinct !DISubprogram(name: "setlocale_null", scope: !459, file: !459, line: 186, type: !4506, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !458, retainedNodes: !4508)
!4506 = !DISubroutineType(types: !4507)
!4507 = !{!6, !51}
!4508 = !{!4509}
!4509 = !DILocalVariable(name: "category", arg: 1, scope: !4505, file: !459, line: 186, type: !51)
!4510 = !DILocation(line: 0, scope: !4505)
!4511 = !DILocation(line: 189, column: 10, scope: !4505)
!4512 = !DILocation(line: 189, column: 3, scope: !4505)
!4513 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !461, file: !461, line: 35, type: !4506, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4514)
!4514 = !{!4515, !4516}
!4515 = !DILocalVariable(name: "category", arg: 1, scope: !4513, file: !461, line: 35, type: !51)
!4516 = !DILocalVariable(name: "result", scope: !4513, file: !461, line: 37, type: !6)
!4517 = !DILocation(line: 0, scope: !4513)
!4518 = !DILocation(line: 37, column: 24, scope: !4513)
!4519 = !DILocation(line: 62, column: 3, scope: !4513)
!4520 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !461, file: !461, line: 66, type: !4496, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526}
!4522 = !DILocalVariable(name: "category", arg: 1, scope: !4520, file: !461, line: 66, type: !51)
!4523 = !DILocalVariable(name: "buf", arg: 2, scope: !4520, file: !461, line: 66, type: !58)
!4524 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4520, file: !461, line: 66, type: !53)
!4525 = !DILocalVariable(name: "result", scope: !4520, file: !461, line: 111, type: !6)
!4526 = !DILocalVariable(name: "length", scope: !4527, file: !461, line: 125, type: !53)
!4527 = distinct !DILexicalBlock(scope: !4528, file: !461, line: 124, column: 5)
!4528 = distinct !DILexicalBlock(scope: !4520, file: !461, line: 113, column: 7)
!4529 = !DILocation(line: 0, scope: !4520)
!4530 = !DILocation(line: 0, scope: !4513, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 111, column: 24, scope: !4520)
!4532 = !DILocation(line: 37, column: 24, scope: !4513, inlinedAt: !4531)
!4533 = !DILocation(line: 113, column: 14, scope: !4528)
!4534 = !DILocation(line: 113, column: 7, scope: !4520)
!4535 = !DILocation(line: 116, column: 19, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4537, file: !461, line: 116, column: 11)
!4537 = distinct !DILexicalBlock(scope: !4528, file: !461, line: 114, column: 5)
!4538 = !DILocation(line: 116, column: 11, scope: !4537)
!4539 = !DILocation(line: 120, column: 16, scope: !4536)
!4540 = !DILocation(line: 120, column: 9, scope: !4536)
!4541 = !DILocation(line: 125, column: 23, scope: !4527)
!4542 = !DILocation(line: 0, scope: !4527)
!4543 = !DILocation(line: 126, column: 18, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4527, file: !461, line: 126, column: 11)
!4545 = !DILocation(line: 126, column: 11, scope: !4527)
!4546 = !DILocation(line: 128, column: 39, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !461, line: 127, column: 9)
!4548 = !DILocalVariable(name: "__dest", arg: 1, scope: !4549, file: !1280, line: 26, type: !3209)
!4549 = distinct !DISubprogram(name: "memcpy", scope: !1280, file: !1280, line: 26, type: !3207, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !460, retainedNodes: !4550)
!4550 = !{!4548, !4551, !4552}
!4551 = !DILocalVariable(name: "__src", arg: 2, scope: !4549, file: !1280, line: 26, type: !688)
!4552 = !DILocalVariable(name: "__len", arg: 3, scope: !4549, file: !1280, line: 26, type: !53)
!4553 = !DILocation(line: 0, scope: !4549, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 128, column: 11, scope: !4547)
!4555 = !DILocation(line: 29, column: 10, scope: !4549, inlinedAt: !4554)
!4556 = !DILocation(line: 129, column: 11, scope: !4547)
!4557 = !DILocation(line: 133, column: 23, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !461, line: 133, column: 15)
!4559 = distinct !DILexicalBlock(scope: !4544, file: !461, line: 132, column: 9)
!4560 = !DILocation(line: 133, column: 15, scope: !4559)
!4561 = !DILocation(line: 138, column: 44, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4558, file: !461, line: 134, column: 13)
!4563 = !DILocation(line: 0, scope: !4549, inlinedAt: !4564)
!4564 = distinct !DILocation(line: 138, column: 15, scope: !4562)
!4565 = !DILocation(line: 29, column: 10, scope: !4549, inlinedAt: !4564)
!4566 = !DILocation(line: 139, column: 15, scope: !4562)
!4567 = !DILocation(line: 139, column: 32, scope: !4562)
!4568 = !DILocation(line: 140, column: 13, scope: !4562)
!4569 = !DILocation(line: 0, scope: !4528)
!4570 = !DILocation(line: 145, column: 1, scope: !4520)
