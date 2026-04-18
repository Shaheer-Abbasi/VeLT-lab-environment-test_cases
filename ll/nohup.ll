; ModuleID = 'src/nohup.bc'
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
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Usage: %s COMMAND [ARG]...\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Run COMMAND, ignoring hangup signals.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"nohup\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [291 x i8] c"\0AIf standard input is a terminal, redirect it from an unreadable file.\0AIf standard output is a terminal, append output to 'nohup.out' if possible,\0A'$HOME/nohup.out' otherwise.\0AIf standard error is a terminal, redirect it to standard output.\0ATo save output to FILE, use '%s COMMAND > FILE'.\0A\00", align 1
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"failed to render standard input unusable\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ignoring input\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"nohup.out\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"failed to open %s\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"ignoring input and appending output to %s\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"appending output to %s\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"ignoring input and redirecting standard error to standard output\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"redirecting standard error to standard output\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"failed to redirect standard error\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"failed to run command %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !0
@.str.27 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.49 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.54 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.56 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.55, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.56, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.58 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.60 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.61 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i64 0, i64 0), align 8, !dbg !147
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !152
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !157
@.str.35 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.36 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.37 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.38 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !159
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.39 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !195
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !165
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !191
@.str.1.45 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.47 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.46 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !193
@.str.4.40 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.41 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.42 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !200
@opterr = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2.64, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3.65, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 8, !dbg !218
@optind = external local_unnamed_addr global i32, align 4
@.str.1.68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.64 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3.65 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !235
@.str.73 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.74 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !241
@.str.77 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.78 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.79 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.80 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.81 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.82 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.83 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.84 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.85 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.86 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.78, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.80, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.81, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.82, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.83, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.85, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.86, i32 0, i32 0), i8* null], align 8, !dbg !277
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !289
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !307
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !337
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !344
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !309
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !346
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !295
@.str.10.89 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.87 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.90 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.88 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !314
@.str.95 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.96 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.97 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.98 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.99 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.100 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.101 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.102 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.103 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.104 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.105 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.106 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.107 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.108 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.109 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.110 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.111 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.116 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.117 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.118 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.119 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.120 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.121 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.122 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !352
@exit_failure = dso_local global i32 1, align 4, !dbg !360
@.str.135 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.133 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.134 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.150 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !366
@.str.155 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.156 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) #0 !dbg !464 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !466, metadata !DIExpression()), !dbg !467
  %3 = icmp eq i32 %0, 0, !dbg !468
  br i1 %3, label %9, label %4, !dbg !470

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !471, !tbaa !473
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !471
  %7 = load i8*, i8** @program_name, align 8, !dbg !471, !tbaa !473
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !471
  br label %59, !dbg !471

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !477
  %11 = load i8*, i8** @program_name, align 8, !dbg !477, !tbaa !473
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11, i8* noundef %11) #35, !dbg !477
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !479
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !479, !tbaa !473
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !479
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !480
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !480
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !481
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !481
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([291 x i8], [291 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !482
  %19 = load i8*, i8** @program_name, align 8, !dbg !482, !tbaa !473
  %20 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %18, i8* noundef %19) #35, !dbg !482
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !483
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %21, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !483
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #35, !dbg !489
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #35, !dbg !491
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %23, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !491
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #35, !dbg !509
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !511
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #35, !dbg !511
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !495, metadata !DIExpression()) #35, !dbg !512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !512
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !504, metadata !DIExpression()) #35, !dbg !509
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !505, metadata !DIExpression()) #35, !dbg !509
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !513
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !505, metadata !DIExpression()) #35, !dbg !509
  br label %27, !dbg !514

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !505, metadata !DIExpression()) #35, !dbg !509
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !522
  call void @llvm.dbg.value(metadata i8* %28, metadata !521, metadata !DIExpression()) #35, !dbg !522
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #36, !dbg !524
  %31 = icmp eq i32 %30, 0, !dbg !525
  br i1 %31, label %37, label %32, !dbg !514

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !526
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !505, metadata !DIExpression()) #35, !dbg !509
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !527
  %35 = load i8*, i8** %34, align 8, !dbg !527, !tbaa !528
  %36 = icmp eq i8* %35, null, !dbg !530
  br i1 %36, label %37, label %27, !dbg !531, !llvm.loop !532

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !534
  %40 = load i8*, i8** %39, align 8, !dbg !534, !tbaa !536
  %41 = icmp eq i8* %40, null, !dbg !537
  %42 = select i1 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !538
  call void @llvm.dbg.value(metadata i8* %42, metadata !504, metadata !DIExpression()) #35, !dbg !509
  tail call void @emit_bug_reporting_address() #35, !dbg !539
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !540
  call void @llvm.dbg.value(metadata i8* %43, metadata !507, metadata !DIExpression()) #35, !dbg !509
  %44 = icmp eq i8* %43, null, !dbg !541
  br i1 %44, label %52, label %45, !dbg !543

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i64 0, i64 0), i64 noundef 3) #36, !dbg !544
  %47 = icmp eq i32 %46, 0, !dbg !544
  br i1 %47, label %52, label %48, !dbg !545

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.59, i64 0, i64 0), i32 noundef 5) #35, !dbg !546
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !546, !tbaa !473
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #35, !dbg !546
  br label %52, !dbg !548

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !549
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !521, metadata !DIExpression()) #35, !dbg !549
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !508, metadata !DIExpression()) #35, !dbg !509
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #35, !dbg !551
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !551
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.61, i64 0, i64 0), i32 noundef 5) #35, !dbg !552
  %56 = icmp eq i8* %42, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !552
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !552
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #35, !dbg !552
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #35, !dbg !553
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !554
  unreachable, !dbg !554
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !555 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !560 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !2 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !66, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* %0, metadata !67, metadata !DIExpression()), !dbg !565
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !566, !tbaa !567
  %3 = icmp eq i32 %2, -1, !dbg !569
  br i1 %3, label %4, label %16, !dbg !570

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0)) #35, !dbg !571
  call void @llvm.dbg.value(metadata i8* %5, metadata !68, metadata !DIExpression()), !dbg !572
  %6 = icmp eq i8* %5, null, !dbg !573
  br i1 %6, label %14, label %7, !dbg !574

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !575, !tbaa !576
  %9 = icmp eq i8 %8, 0, !dbg !575
  br i1 %9, label %14, label %10, !dbg !577

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !515, metadata !DIExpression()) #35, !dbg !578
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), metadata !521, metadata !DIExpression()) #35, !dbg !578
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)) #36, !dbg !580
  %12 = icmp eq i32 %11, 0, !dbg !581
  %13 = zext i1 %12 to i32, !dbg !577
  br label %14, !dbg !577

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !582, !tbaa !567
  br label %16, !dbg !583

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !584
  %18 = icmp eq i32 %17, 0, !dbg !584
  br i1 %18, label %22, label %19, !dbg !586

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !587, !tbaa !473
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !587
  br label %121, !dbg !589

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !71, metadata !DIExpression()), !dbg !565
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0)) #36, !dbg !590
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !591
  call void @llvm.dbg.value(metadata i8* %24, metadata !73, metadata !DIExpression()), !dbg !565
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !592
  call void @llvm.dbg.value(metadata i8* %25, metadata !74, metadata !DIExpression()), !dbg !565
  %26 = icmp eq i8* %25, null, !dbg !593
  br i1 %26, label %53, label %27, !dbg !594

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !595
  br i1 %28, label %53, label %29, !dbg !596

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !75, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i64 0, metadata !79, metadata !DIExpression()), !dbg !597
  %30 = icmp ult i8* %24, %25, !dbg !598
  br i1 %30, label %31, label %53, !dbg !599

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !565
  %33 = load i16*, i16** %32, align 8, !tbaa !473
  br label %34, !dbg !599

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !75, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.value(metadata i64 %36, metadata !79, metadata !DIExpression()), !dbg !597
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %37, metadata !75, metadata !DIExpression()), !dbg !597
  %38 = load i8, i8* %35, align 1, !dbg !600, !tbaa !576
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !600
  %41 = load i16, i16* %40, align 2, !dbg !600, !tbaa !601
  %42 = lshr i16 %41, 13, !dbg !603
  %43 = and i16 %42, 1, !dbg !603
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !604
  call void @llvm.dbg.value(metadata i64 %45, metadata !79, metadata !DIExpression()), !dbg !597
  %46 = icmp ult i8* %37, %25, !dbg !598
  %47 = icmp ult i64 %45, 2, !dbg !605
  %48 = select i1 %46, i1 %47, i1 false, !dbg !605
  br i1 %48, label %34, label %49, !dbg !599, !llvm.loop !606

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !607
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !609
  %52 = xor i1 %50, true, !dbg !609
  br label %53, !dbg !609

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !565
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !71, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* %54, metadata !74, metadata !DIExpression()), !dbg !565
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0)) #36, !dbg !610
  call void @llvm.dbg.value(metadata i64 %56, metadata !80, metadata !DIExpression()), !dbg !565
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !611
  call void @llvm.dbg.value(metadata i8* %57, metadata !81, metadata !DIExpression()), !dbg !565
  br label %58, !dbg !612

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !565
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !71, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i8* %59, metadata !81, metadata !DIExpression()), !dbg !565
  %61 = load i8, i8* %59, align 1, !dbg !613, !tbaa !576
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !614

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !615
  %64 = load i8, i8* %63, align 1, !dbg !618, !tbaa !576
  %65 = icmp ne i8 %64, 45, !dbg !619
  %66 = select i1 %65, i1 %60, i1 false, !dbg !620
  br label %67, !dbg !620

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !71, metadata !DIExpression()), !dbg !565
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !621
  %70 = load i16*, i16** %69, align 8, !dbg !621, !tbaa !473
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !621
  %73 = load i16, i16* %72, align 2, !dbg !621, !tbaa !601
  %74 = and i16 %73, 8192, !dbg !621
  %75 = icmp eq i16 %74, 0, !dbg !621
  br i1 %75, label %89, label %76, !dbg !623

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !624
  br i1 %77, label %91, label %78, !dbg !627

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !628
  %80 = load i8, i8* %79, align 1, !dbg !628, !tbaa !576
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !628
  %83 = load i16, i16* %82, align 2, !dbg !628, !tbaa !601
  %84 = and i16 %83, 8192, !dbg !628
  %85 = icmp eq i16 %84, 0, !dbg !628
  br i1 %85, label %86, label %91, !dbg !629

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !630
  br i1 %88, label %89, label %91, !dbg !630

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !632
  call void @llvm.dbg.value(metadata i8* %90, metadata !81, metadata !DIExpression()), !dbg !565
  br label %58, !dbg !612, !llvm.loop !633

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !635
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !473
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i64 0, i64 0), metadata !521, metadata !DIExpression()) #35, !dbg !636
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !638
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !642
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !646
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !648
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !515, metadata !DIExpression()) #35, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !142, metadata !DIExpression()), !dbg !565
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 noundef 6) #36, !dbg !656
  %96 = icmp eq i32 %95, 0, !dbg !656
  br i1 %96, label %100, label %97, !dbg !658

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i64 0, i64 0), i64 noundef 9) #36, !dbg !659
  %99 = icmp eq i32 %98, 0, !dbg !659
  br i1 %99, label %100, label %103, !dbg !660

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !661
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !661
  br label %106, !dbg !663

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !664
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.49, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !664
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !666, !tbaa !473
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !666
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !667, !tbaa !473
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !667
  %111 = ptrtoint i8* %59 to i64, !dbg !668
  %112 = sub i64 %111, %92, !dbg !668
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !668, !tbaa !473
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !668
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !669, !tbaa !473
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !669
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !670, !tbaa !473
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !670
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !473
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !671
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !672
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
declare !dbg !673 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !677 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !681 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !687 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !692, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8** %1, metadata !693, metadata !DIExpression()), !dbg !732
  %3 = load i8*, i8** %1, align 8, !dbg !733, !tbaa !473
  tail call void @set_program_name(i8* noundef %3) #35, !dbg !734
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #35, !dbg !735
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #35, !dbg !736
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #35, !dbg !737
  %7 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0)) #35, !dbg !738
  %8 = icmp eq i8* %7, null, !dbg !738
  %9 = select i1 %8, i32 125, i32 127, !dbg !738
  call void @llvm.dbg.value(metadata i32 %9, metadata !694, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %9, metadata !739, metadata !DIExpression()), !dbg !742
  store volatile i32 %9, i32* @exit_failure, align 4, !dbg !744, !tbaa !567
  %10 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !746
  %11 = load i8*, i8** @Version, align 8, !dbg !747, !tbaa !473
  %12 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #35, !dbg !748
  tail call void (i32, i8**, i8*, i8*, i8*, i1, void (i32)*, ...) @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %11, i1 noundef false, void (i32)* noundef nonnull @usage, i8* noundef %12, i8* noundef null) #35, !dbg !749
  %13 = load i32, i32* @optind, align 4, !dbg !750, !tbaa !567
  %14 = icmp slt i32 %13, %0, !dbg !752
  br i1 %14, label %17, label %15, !dbg !753

15:                                               ; preds = %2
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #35, !dbg !754
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %16) #35, !dbg !754
  tail call void @usage(i32 noundef %9) #39, !dbg !756
  unreachable, !dbg !756

17:                                               ; preds = %2
  %18 = tail call i32 @isatty(i32 noundef 0) #35, !dbg !757
  %19 = icmp eq i32 %18, 0, !dbg !757
  call void @llvm.dbg.value(metadata i1 %19, metadata !695, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !732
  %20 = tail call i32 @isatty(i32 noundef 1) #35, !dbg !758
  %21 = icmp eq i32 %20, 0, !dbg !758
  call void @llvm.dbg.value(metadata i1 %21, metadata !696, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !732
  br i1 %21, label %22, label %26, !dbg !759

22:                                               ; preds = %17
  %23 = tail call i32* @__errno_location() #38, !dbg !760
  %24 = load i32, i32* %23, align 4, !dbg !760, !tbaa !567
  %25 = icmp eq i32 %24, 9, !dbg !761
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ], !dbg !732
  call void @llvm.dbg.value(metadata i1 %27, metadata !697, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !732
  %28 = tail call i32 @isatty(i32 noundef 2) #35, !dbg !762
  %29 = icmp eq i32 %28, 0, !dbg !762
  call void @llvm.dbg.value(metadata i1 %29, metadata !698, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !732
  br i1 %19, label %41, label %30, !dbg !763

30:                                               ; preds = %26
  %31 = tail call i32 @fd_reopen(i32 noundef 0, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32 noundef 1, i32 noundef 0) #35, !dbg !764
  %32 = icmp slt i32 %31, 0, !dbg !765
  br i1 %32, label %33, label %37, !dbg !766

33:                                               ; preds = %30
  %34 = tail call i32* @__errno_location() #38, !dbg !767
  %35 = load i32, i32* %34, align 4, !dbg !767, !tbaa !567
  %36 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !767
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %9, i32 noundef %35, i8* noundef %36) #35, !dbg !767
  unreachable, !dbg !767

37:                                               ; preds = %30
  %38 = select i1 %21, i1 %29, i1 false, !dbg !768
  br i1 %38, label %39, label %41, !dbg !768

39:                                               ; preds = %37
  %40 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #35, !dbg !770
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %40) #35, !dbg !770
  br label %41, !dbg !770

41:                                               ; preds = %37, %39, %26
  call void @llvm.dbg.value(metadata i32 1, metadata !705, metadata !DIExpression()), !dbg !732
  br i1 %21, label %42, label %45, !dbg !771

42:                                               ; preds = %41
  %43 = xor i1 %27, true, !dbg !772
  %44 = select i1 %29, i1 true, i1 %43, !dbg !772
  br i1 %44, label %88, label %48, !dbg !772

45:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i8* null, metadata !706, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !709, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 1089, metadata !710, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 384, metadata !711, metadata !DIExpression()), !dbg !773
  %46 = tail call i32 @umask(i32 noundef 0) #35, !dbg !774
  call void @llvm.dbg.value(metadata i32 %46, metadata !715, metadata !DIExpression()), !dbg !773
  %47 = tail call i32 @fd_reopen(i32 noundef 1, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1089, i32 noundef 384) #35, !dbg !775
  br label %51, !dbg !776

48:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* null, metadata !706, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !709, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 1089, metadata !710, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i32 384, metadata !711, metadata !DIExpression()), !dbg !773
  %49 = tail call i32 @umask(i32 noundef 0) #35, !dbg !774
  call void @llvm.dbg.value(metadata i32 %46, metadata !715, metadata !DIExpression()), !dbg !773
  %50 = tail call i32 (i8*, i32, ...) @open(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 noundef 1089, i32 noundef 384) #35, !dbg !777
  br label %51, !dbg !776

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %46, %45 ], [ %49, %48 ]
  %53 = phi i32 [ %47, %45 ], [ %50, %48 ], !dbg !776
  call void @llvm.dbg.value(metadata i32 %53, metadata !705, metadata !DIExpression()), !dbg !732
  %54 = icmp slt i32 %53, 0, !dbg !778
  br i1 %54, label %55, label %80, !dbg !779

55:                                               ; preds = %51
  %56 = tail call i32* @__errno_location() #38, !dbg !780
  %57 = load i32, i32* %56, align 4, !dbg !780, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %57, metadata !716, metadata !DIExpression()), !dbg !781
  %58 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #35, !dbg !782
  call void @llvm.dbg.value(metadata i8* %58, metadata !719, metadata !DIExpression()), !dbg !781
  %59 = icmp eq i8* %58, null, !dbg !783
  br i1 %59, label %71, label %60, !dbg !785

60:                                               ; preds = %55
  %61 = tail call noalias nonnull i8* @file_name_concat(i8* noundef nonnull %58, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** noundef null) #35, !dbg !786
  call void @llvm.dbg.value(metadata i8* %61, metadata !706, metadata !DIExpression()), !dbg !773
  br i1 %21, label %64, label %62, !dbg !788

62:                                               ; preds = %60
  %63 = tail call i32 @fd_reopen(i32 noundef 1, i8* noundef nonnull %61, i32 noundef 1089, i32 noundef 384) #35, !dbg !789
  br label %66, !dbg !788

64:                                               ; preds = %60
  %65 = tail call i32 (i8*, i32, ...) @open(i8* noundef nonnull %61, i32 noundef 1089, i32 noundef 384) #35, !dbg !790
  br label %66, !dbg !788

66:                                               ; preds = %62, %64
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ], !dbg !773
  call void @llvm.dbg.value(metadata i32 %67, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8* %61, metadata !706, metadata !DIExpression()), !dbg !773
  %68 = icmp slt i32 %67, 0, !dbg !791
  br i1 %68, label %69, label %80, !dbg !792

69:                                               ; preds = %66
  %70 = load i32, i32* %56, align 4, !dbg !793, !tbaa !567
  br label %71, !dbg !792

71:                                               ; preds = %69, %55
  %72 = phi i32 [ %70, %69 ], [ %57, %55 ], !dbg !793
  %73 = phi i8* [ %61, %69 ], [ null, %55 ]
  call void @llvm.dbg.value(metadata i32 %72, metadata !720, metadata !DIExpression()), !dbg !794
  %74 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #35, !dbg !795
  %75 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !795
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %57, i8* noundef %74, i8* noundef %75) #35, !dbg !795
  %76 = icmp eq i8* %73, null, !dbg !796
  br i1 %76, label %134, label %77, !dbg !798

77:                                               ; preds = %71
  %78 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #35, !dbg !799
  %79 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %73) #35, !dbg !799
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %72, i8* noundef %78, i8* noundef %79) #35, !dbg !799
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), metadata !709, metadata !DIExpression()), !dbg !773
  br label %134

80:                                               ; preds = %51, %66
  %81 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), %51 ], [ %61, %66 ], !dbg !800
  %82 = phi i8* [ null, %51 ], [ %61, %66 ], !dbg !773
  %83 = phi i32 [ %53, %51 ], [ %67, %66 ], !dbg !773
  call void @llvm.dbg.value(metadata i32 %83, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i8* %82, metadata !706, metadata !DIExpression()), !dbg !773
  call void @llvm.dbg.value(metadata i8* %81, metadata !709, metadata !DIExpression()), !dbg !773
  %84 = tail call i32 @umask(i32 noundef %52) #35, !dbg !801
  %85 = select i1 %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0), !dbg !802
  %86 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %85, i32 noundef 5) #35, !dbg !802
  %87 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %81) #35, !dbg !802
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %86, i8* noundef %87) #35, !dbg !802
  tail call void @free(i8* noundef %82) #35, !dbg !803
  call void @llvm.dbg.value(metadata i32 2, metadata !723, metadata !DIExpression()), !dbg !732
  br i1 %29, label %110, label %91, !dbg !804

88:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %83, metadata !705, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 2, metadata !723, metadata !DIExpression()), !dbg !732
  br i1 %29, label %110, label %89, !dbg !804

89:                                               ; preds = %88
  %90 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #35, !dbg !805
  call void @llvm.dbg.value(metadata i32 %92, metadata !723, metadata !DIExpression()), !dbg !732
  br label %93, !dbg !806

91:                                               ; preds = %80
  %92 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef 2, i32 noundef 1030, i32 noundef 3) #35, !dbg !805
  call void @llvm.dbg.value(metadata i32 %92, metadata !723, metadata !DIExpression()), !dbg !732
  br i1 %21, label %93, label %98, !dbg !806

93:                                               ; preds = %89, %91
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ]
  %95 = phi i32 [ 1, %89 ], [ %83, %91 ]
  %96 = select i1 %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.23, i64 0, i64 0), !dbg !807
  %97 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %96, i32 noundef 5) #35, !dbg !807
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %97) #35, !dbg !807
  br label %98, !dbg !807

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %94, %93 ], [ %92, %91 ]
  %100 = phi i32 [ %95, %93 ], [ %83, %91 ]
  %101 = tail call i32 @dup2(i32 noundef %100, i32 noundef 2) #35, !dbg !809
  %102 = icmp slt i32 %101, 0, !dbg !810
  br i1 %102, label %103, label %107, !dbg !811

103:                                              ; preds = %98
  %104 = tail call i32* @__errno_location() #38, !dbg !812
  %105 = load i32, i32* %104, align 4, !dbg !812, !tbaa !567
  %106 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #35, !dbg !812
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %9, i32 noundef %105, i8* noundef %106) #35, !dbg !812
  unreachable, !dbg !812

107:                                              ; preds = %98
  br i1 %27, label %108, label %110, !dbg !813

108:                                              ; preds = %107
  %109 = tail call i32 @close(i32 noundef %100) #35, !dbg !814
  br label %110, !dbg !814

110:                                              ; preds = %88, %107, %108, %80
  %111 = phi i32 [ %99, %108 ], [ %99, %107 ], [ 2, %80 ], [ 2, %88 ], !dbg !732
  call void @llvm.dbg.value(metadata i32 %111, metadata !723, metadata !DIExpression()), !dbg !732
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !816, !tbaa !473
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, metadata !818, metadata !DIExpression()), !dbg !824
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 0, !dbg !826
  %114 = load i32, i32* %113, align 8, !dbg !826, !tbaa !827
  %115 = and i32 %114, 32, !dbg !816
  %116 = icmp eq i32 %115, 0, !dbg !816
  br i1 %116, label %117, label %134, !dbg !830

117:                                              ; preds = %110
  %118 = tail call void (i32)* @signal(i32 noundef 1, void (i32)* noundef nonnull inttoptr (i64 1 to void (i32)*)) #35, !dbg !831
  %119 = load i32, i32* @optind, align 4, !dbg !832, !tbaa !567
  %120 = sext i32 %119 to i64, !dbg !833
  %121 = getelementptr inbounds i8*, i8** %1, i64 %120, !dbg !833
  call void @llvm.dbg.value(metadata i8** %121, metadata !729, metadata !DIExpression()), !dbg !732
  %122 = load i8*, i8** %121, align 8, !dbg !834, !tbaa !473
  %123 = tail call i32 @execvp(i8* noundef %122, i8** noundef nonnull %121) #35, !dbg !835
  %124 = tail call i32* @__errno_location() #38, !dbg !836
  %125 = load i32, i32* %124, align 4, !dbg !836, !tbaa !567
  %126 = icmp eq i32 %125, 2, !dbg !837
  %127 = select i1 %126, i32 127, i32 126, !dbg !836
  call void @llvm.dbg.value(metadata i32 %127, metadata !730, metadata !DIExpression()), !dbg !732
  call void @llvm.dbg.value(metadata i32 %125, metadata !731, metadata !DIExpression()), !dbg !732
  %128 = tail call i32 @dup2(i32 noundef %111, i32 noundef 2) #35, !dbg !838
  %129 = icmp eq i32 %128, 2, !dbg !840
  br i1 %129, label %130, label %134, !dbg !841

130:                                              ; preds = %117
  %131 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #35, !dbg !842
  %132 = load i8*, i8** %121, align 8, !dbg !842, !tbaa !473
  %133 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %132) #35, !dbg !842
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %125, i8* noundef %131, i8* noundef %133) #35, !dbg !842
  br label %134, !dbg !842

134:                                              ; preds = %71, %77, %110, %130, %117
  %135 = phi i32 [ %9, %110 ], [ %127, %130 ], [ %127, %117 ], [ %9, %77 ], [ %9, %71 ], !dbg !732
  ret i32 %135, !dbg !843
}

; Function Attrs: nounwind
declare !dbg !844 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !847 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !848 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !851 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !855 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !859 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !863 i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !864 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !865 void (i32)* @signal(i32 noundef, void (i32)* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !868 i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !873 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !875, metadata !DIExpression()), !dbg !876
  store i8* %0, i8** @file_name, align 8, !dbg !877, !tbaa !473
  ret void, !dbg !878
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !879 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !883, metadata !DIExpression()), !dbg !884
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !885, !tbaa !886
  ret void, !dbg !888
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !889 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !894, !tbaa !473
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !895
  %3 = icmp eq i32 %2, 0, !dbg !896
  br i1 %3, label %22, label %4, !dbg !897

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !898, !tbaa !886, !range !899
  %6 = icmp eq i8 %5, 0, !dbg !898
  br i1 %6, label %11, label %7, !dbg !900

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !901
  %9 = load i32, i32* %8, align 4, !dbg !901, !tbaa !567
  %10 = icmp eq i32 %9, 32, !dbg !902
  br i1 %10, label %22, label %11, !dbg !903

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.36, i64 0, i64 0), i32 noundef 5) #35, !dbg !904
  call void @llvm.dbg.value(metadata i8* %12, metadata !891, metadata !DIExpression()), !dbg !905
  %13 = load i8*, i8** @file_name, align 8, !dbg !906, !tbaa !473
  %14 = icmp eq i8* %13, null, !dbg !906
  %15 = tail call i32* @__errno_location() #38, !dbg !908
  %16 = load i32, i32* %15, align 4, !dbg !908, !tbaa !567
  br i1 %14, label %19, label %17, !dbg !909

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !910
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.37, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !910
  br label %20, !dbg !910

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.38, i64 0, i64 0), i8* noundef %12) #35, !dbg !911
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !912, !tbaa !567
  tail call void @_exit(i32 noundef %21) #37, !dbg !913
  unreachable, !dbg !913

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !914, !tbaa !473
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !916
  %25 = icmp eq i32 %24, 0, !dbg !917
  br i1 %25, label %28, label %26, !dbg !918

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !919, !tbaa !567
  tail call void @_exit(i32 noundef %27) #37, !dbg !920
  unreachable, !dbg !920

28:                                               ; preds = %22
  ret void, !dbg !921
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !922 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !926, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i32 %1, metadata !927, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i8* %2, metadata !928, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !929, metadata !DIExpression()), !dbg !931
  tail call fastcc void @flush_stdout(), !dbg !932
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !933, !tbaa !473
  %7 = icmp eq void ()* %6, null, !dbg !933
  br i1 %7, label %9, label %8, !dbg !935

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !936
  br label %13, !dbg !936

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !937, !tbaa !473
  %11 = tail call i8* @getprogname() #36, !dbg !937
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8* noundef %11) #35, !dbg !937
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !939
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !939
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !939, !tbaa.struct !940
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !939
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !939
  ret void, !dbg !941
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !942 {
  call void @llvm.dbg.value(metadata i32 1, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.dbg.value(metadata i32 1, metadata !946, metadata !DIExpression()) #35, !dbg !949
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !952
  %2 = icmp slt i32 %1, 0, !dbg !953
  br i1 %2, label %6, label %3, !dbg !954

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !955, !tbaa !473
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !955
  br label %6, !dbg !955

6:                                                ; preds = %3, %0
  ret void, !dbg !956
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !957 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !959, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i32 %1, metadata !960, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* %2, metadata !961, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !962, metadata !DIExpression()), !dbg !964
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !473
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !966
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !967, metadata !DIExpression()) #35, !dbg !1010
  call void @llvm.dbg.value(metadata i8* %2, metadata !1008, metadata !DIExpression()) #35, !dbg !1010
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1012
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1012, !noalias !1013
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1012
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1012
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1012, !noalias !1013
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1017, !tbaa !567
  %12 = add i32 %11, 1, !dbg !1017
  store i32 %12, i32* @error_message_count, align 4, !dbg !1017, !tbaa !567
  %13 = icmp eq i32 %1, 0, !dbg !1018
  br i1 %13, label %24, label %14, !dbg !1020

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1021, metadata !DIExpression()) #35, !dbg !1029
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1031
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1025, metadata !DIExpression()) #35, !dbg !1032
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1033
  call void @llvm.dbg.value(metadata i8* %16, metadata !1024, metadata !DIExpression()) #35, !dbg !1029
  %17 = icmp eq i8* %16, null, !dbg !1034
  br i1 %17, label %18, label %20, !dbg !1036

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.41, i64 0, i64 0), i32 noundef 5) #35, !dbg !1037
  call void @llvm.dbg.value(metadata i8* %19, metadata !1024, metadata !DIExpression()) #35, !dbg !1029
  br label %20, !dbg !1038

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1029
  call void @llvm.dbg.value(metadata i8* %21, metadata !1024, metadata !DIExpression()) #35, !dbg !1029
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1039, !tbaa !473
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.42, i64 0, i64 0), i8* noundef %21) #35, !dbg !1039
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1040
  br label %24, !dbg !1041

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1042, !tbaa !473
  call void @llvm.dbg.value(metadata i32 10, metadata !1043, metadata !DIExpression()) #35, !dbg !1049
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1048, metadata !DIExpression()) #35, !dbg !1049
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1051
  %27 = load i8*, i8** %26, align 8, !dbg !1051, !tbaa !1052
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1051
  %29 = load i8*, i8** %28, align 8, !dbg !1051, !tbaa !1053
  %30 = icmp ult i8* %27, %29, !dbg !1051
  br i1 %30, label %33, label %31, !dbg !1051, !prof !1054

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1051
  br label %35, !dbg !1051

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1051
  store i8* %34, i8** %26, align 8, !dbg !1051, !tbaa !1052
  store i8 10, i8* %27, align 1, !dbg !1051, !tbaa !576
  br label %35, !dbg !1051

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1055, !tbaa !473
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1055
  %38 = icmp eq i32 %0, 0, !dbg !1056
  br i1 %38, label %40, label %39, !dbg !1058

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1059
  unreachable, !dbg !1059

40:                                               ; preds = %35
  ret void, !dbg !1060
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1061 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1065 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1068 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1071 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1075, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i32 %1, metadata !1076, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.value(metadata i8* %2, metadata !1077, metadata !DIExpression()), !dbg !1079
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1080
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1080
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1078, metadata !DIExpression()), !dbg !1081
  call void @llvm.va_start(i8* nonnull %6), !dbg !1082
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1083
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1083, !tbaa.struct !940
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1083
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1083
  call void @llvm.va_end(i8* nonnull %6), !dbg !1084
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1085
  ret void, !dbg !1085
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #18

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !167 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !185, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %1, metadata !186, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %2, metadata !187, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %3, metadata !188, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %4, metadata !189, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !190, metadata !DIExpression()), !dbg !1087
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1088, !tbaa !567
  %9 = icmp eq i32 %8, 0, !dbg !1088
  br i1 %9, label %24, label %10, !dbg !1090

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1091, !tbaa !567
  %12 = icmp eq i32 %11, %3, !dbg !1094
  br i1 %12, label %13, label %23, !dbg !1095

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1096, !tbaa !473
  %15 = icmp eq i8* %14, %2, !dbg !1097
  br i1 %15, label %39, label %16, !dbg !1098

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1099
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1100
  br i1 %19, label %20, label %23, !dbg !1100

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1101
  %22 = icmp eq i32 %21, 0, !dbg !1102
  br i1 %22, label %39, label %23, !dbg !1103

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1104, !tbaa !473
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1105, !tbaa !567
  br label %24, !dbg !1106

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1107
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1108, !tbaa !473
  %26 = icmp eq void ()* %25, null, !dbg !1108
  br i1 %26, label %28, label %27, !dbg !1110

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1111
  br label %32, !dbg !1111

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1112, !tbaa !473
  %30 = tail call i8* @getprogname() #36, !dbg !1112
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.45, i64 0, i64 0), i8* noundef %30) #35, !dbg !1112
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1114, !tbaa !473
  %34 = icmp eq i8* %2, null, !dbg !1114
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.46, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.47, i64 0, i64 0), !dbg !1114
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1114
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1115
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1115
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1115
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1115, !tbaa.struct !940
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1115
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1115
  br label %39, !dbg !1116

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1116
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1117 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1121, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %1, metadata !1122, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %2, metadata !1123, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i32 %3, metadata !1124, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata i8* %4, metadata !1125, metadata !DIExpression()), !dbg !1127
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1128
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1128
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1126, metadata !DIExpression()), !dbg !1129
  call void @llvm.va_start(i8* nonnull %8), !dbg !1130
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1131
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1131
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1131, !tbaa.struct !940
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1131
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1131
  call void @llvm.va_end(i8* nonnull %8), !dbg !1132
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1133
  ret void, !dbg !1133
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1134 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1136, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i32 %1, metadata !1137, metadata !DIExpression()), !dbg !1161
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1162
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !1162
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1138, metadata !DIExpression()), !dbg !1163
  call void @llvm.va_start(i8* nonnull %4), !dbg !1164
  call void @llvm.dbg.value(metadata i32 -1, metadata !1149, metadata !DIExpression()), !dbg !1161
  switch i32 %1, label %103 [
    i32 0, label %5
    i32 1030, label %26
    i32 1, label %80
    i32 3, label %80
    i32 1025, label %80
    i32 9, label %80
    i32 1032, label %80
    i32 1034, label %80
    i32 11, label %80
    i32 1033, label %82
    i32 1031, label %82
    i32 10, label %82
    i32 1026, label %82
    i32 2, label %82
    i32 4, label %82
    i32 1024, label %82
    i32 8, label %82
  ], !dbg !1165

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1166
  %7 = load i32, i32* %6, align 8, !dbg !1166
  %8 = icmp sgt i32 %7, -1, !dbg !1166
  br i1 %8, label %17, label %9, !dbg !1166

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !1166
  store i32 %10, i32* %6, align 8, !dbg !1166
  %11 = icmp ult i32 %7, -7, !dbg !1166
  br i1 %11, label %12, label %17, !dbg !1166

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1166
  %14 = load i8*, i8** %13, align 8, !dbg !1166
  %15 = sext i32 %7 to i64, !dbg !1166
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1166
  br label %21, !dbg !1166

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1166
  %19 = load i8*, i8** %18, align 8, !dbg !1166
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1166
  store i8* %20, i8** %18, align 8, !dbg !1166
  br label %21, !dbg !1166

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !1166
  %24 = load i32, i32* %23, align 8, !dbg !1166
  call void @llvm.dbg.value(metadata i32 %24, metadata !1150, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %0, metadata !1168, metadata !DIExpression()) #35, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %24, metadata !1171, metadata !DIExpression()) #35, !dbg !1173
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !1175
  call void @llvm.dbg.value(metadata i32 %25, metadata !1172, metadata !DIExpression()) #35, !dbg !1173
  call void @llvm.dbg.value(metadata i32 %25, metadata !1149, metadata !DIExpression()), !dbg !1161
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1176
  %28 = load i32, i32* %27, align 8, !dbg !1176
  %29 = icmp sgt i32 %28, -1, !dbg !1176
  br i1 %29, label %38, label %30, !dbg !1176

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !1176
  store i32 %31, i32* %27, align 8, !dbg !1176
  %32 = icmp ult i32 %28, -7, !dbg !1176
  br i1 %32, label %33, label %38, !dbg !1176

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1176
  %35 = load i8*, i8** %34, align 8, !dbg !1176
  %36 = sext i32 %28 to i64, !dbg !1176
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1176
  br label %42, !dbg !1176

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1176
  %40 = load i8*, i8** %39, align 8, !dbg !1176
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !1176
  store i8* %41, i8** %39, align 8, !dbg !1176
  br label %42, !dbg !1176

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !1176
  %45 = load i32, i32* %44, align 8, !dbg !1176
  call void @llvm.dbg.value(metadata i32 %45, metadata !1153, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i32 %0, metadata !209, metadata !DIExpression()) #35, !dbg !1178
  call void @llvm.dbg.value(metadata i32 %45, metadata !210, metadata !DIExpression()) #35, !dbg !1178
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1180, !tbaa !567
  %47 = icmp sgt i32 %46, -1, !dbg !1182
  br i1 %47, label %48, label %60, !dbg !1183

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !1184
  call void @llvm.dbg.value(metadata i32 %49, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  %50 = icmp sgt i32 %49, -1, !dbg !1186
  br i1 %50, label %55, label %51, !dbg !1188

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !1189
  %53 = load i32, i32* %52, align 4, !dbg !1189, !tbaa !567
  %54 = icmp eq i32 %53, 22, !dbg !1190
  br i1 %54, label %56, label %55, !dbg !1191

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1192, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %66, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  br label %124, !dbg !1194

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !1168, metadata !DIExpression()) #35, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %45, metadata !1171, metadata !DIExpression()) #35, !dbg !1195
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !1198
  call void @llvm.dbg.value(metadata i32 %57, metadata !1172, metadata !DIExpression()) #35, !dbg !1195
  call void @llvm.dbg.value(metadata i32 %57, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  %58 = icmp sgt i32 %57, -1, !dbg !1199
  br i1 %58, label %59, label %124, !dbg !1201

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1202, !tbaa !567
  br label %64, !dbg !1203

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1168, metadata !DIExpression()) #35, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %45, metadata !1171, metadata !DIExpression()) #35, !dbg !1204
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !1206
  call void @llvm.dbg.value(metadata i32 %61, metadata !1172, metadata !DIExpression()) #35, !dbg !1204
  call void @llvm.dbg.value(metadata i32 %61, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !1207
  call void @llvm.dbg.value(metadata i32 %66, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  %67 = icmp sgt i32 %66, -1, !dbg !1208
  %68 = select i1 %67, i1 %65, i1 false, !dbg !1194
  br i1 %68, label %69, label %124, !dbg !1194

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %70, metadata !212, metadata !DIExpression()) #35, !dbg !1210
  %71 = icmp slt i32 %70, 0, !dbg !1211
  br i1 %71, label %76, label %72, !dbg !1212

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !1213
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !1214
  %75 = icmp eq i32 %74, -1, !dbg !1215
  br i1 %75, label %76, label %124, !dbg !1216

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !1217
  %78 = load i32, i32* %77, align 4, !dbg !1217, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %78, metadata !215, metadata !DIExpression()) #35, !dbg !1218
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !1219
  store i32 %78, i32* %77, align 4, !dbg !1220, !tbaa !567
  call void @llvm.dbg.value(metadata i32 -1, metadata !211, metadata !DIExpression()) #35, !dbg !1178
  br label %124, !dbg !1221

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !1222
  call void @llvm.dbg.value(metadata i32 %81, metadata !1149, metadata !DIExpression()), !dbg !1161
  br label %124, !dbg !1223

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1224
  %84 = load i32, i32* %83, align 8, !dbg !1224
  %85 = icmp sgt i32 %84, -1, !dbg !1224
  br i1 %85, label %94, label %86, !dbg !1224

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !1224
  store i32 %87, i32* %83, align 8, !dbg !1224
  %88 = icmp ult i32 %84, -7, !dbg !1224
  br i1 %88, label %89, label %94, !dbg !1224

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1224
  %91 = load i8*, i8** %90, align 8, !dbg !1224
  %92 = sext i32 %84 to i64, !dbg !1224
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !1224
  br label %98, !dbg !1224

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1224
  %96 = load i8*, i8** %95, align 8, !dbg !1224
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !1224
  store i8* %97, i8** %95, align 8, !dbg !1224
  br label %98, !dbg !1224

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !1224
  %101 = load i32, i32* %100, align 8, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %101, metadata !1155, metadata !DIExpression()), !dbg !1225
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !1226
  call void @llvm.dbg.value(metadata i32 %102, metadata !1149, metadata !DIExpression()), !dbg !1161
  br label %124, !dbg !1227

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1228
  %105 = load i32, i32* %104, align 8, !dbg !1228
  %106 = icmp sgt i32 %105, -1, !dbg !1228
  br i1 %106, label %115, label %107, !dbg !1228

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !1228
  store i32 %108, i32* %104, align 8, !dbg !1228
  %109 = icmp ult i32 %105, -7, !dbg !1228
  br i1 %109, label %110, label %115, !dbg !1228

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1228
  %112 = load i8*, i8** %111, align 8, !dbg !1228
  %113 = sext i32 %105 to i64, !dbg !1228
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1228
  br label %119, !dbg !1228

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1228
  %117 = load i8*, i8** %116, align 8, !dbg !1228
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !1228
  store i8* %118, i8** %116, align 8, !dbg !1228
  br label %119, !dbg !1228

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !1228
  %122 = load i8*, i8** %121, align 8, !dbg !1228
  call void @llvm.dbg.value(metadata i8* %122, metadata !1159, metadata !DIExpression()), !dbg !1229
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !1230
  call void @llvm.dbg.value(metadata i32 %123, metadata !1149, metadata !DIExpression()), !dbg !1161
  br label %124, !dbg !1231

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !1232
  call void @llvm.dbg.value(metadata i32 %125, metadata !1149, metadata !DIExpression()), !dbg !1161
  call void @llvm.va_end(i8* nonnull %4), !dbg !1233
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !1234
  ret i32 %125, !dbg !1235
}

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_reopen(i32 noundef %0, i8* nocapture noundef nonnull readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 !dbg !1236 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1240, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i8* %1, metadata !1241, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %2, metadata !1242, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata i32 %3, metadata !1243, metadata !DIExpression()), !dbg !1249
  %5 = tail call i32 (i8*, i32, ...) @open(i8* noundef nonnull %1, i32 noundef %2, i32 noundef %3) #35, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %5, metadata !1244, metadata !DIExpression()), !dbg !1249
  %6 = icmp eq i32 %5, %0, !dbg !1251
  %7 = icmp slt i32 %5, 0
  %8 = or i1 %6, %7, !dbg !1252
  br i1 %8, label %14, label %9, !dbg !1252

9:                                                ; preds = %4
  %10 = tail call i32 @dup2(i32 noundef %5, i32 noundef %0) #35, !dbg !1253
  call void @llvm.dbg.value(metadata i32 %10, metadata !1245, metadata !DIExpression()), !dbg !1254
  %11 = tail call i32* @__errno_location() #38, !dbg !1255
  %12 = load i32, i32* %11, align 4, !dbg !1255, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %12, metadata !1248, metadata !DIExpression()), !dbg !1254
  %13 = tail call i32 @close(i32 noundef %5) #35, !dbg !1256
  store i32 %12, i32* %11, align 4, !dbg !1257, !tbaa !567
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ %10, %9 ], [ %5, %4 ], !dbg !1258
  ret i32 %15, !dbg !1259
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @file_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) local_unnamed_addr #12 !dbg !1260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1264, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8* %1, metadata !1265, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.value(metadata i8** %2, metadata !1266, metadata !DIExpression()), !dbg !1268
  %4 = tail call noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef %2) #35, !dbg !1269
  call void @llvm.dbg.value(metadata i8* %4, metadata !1267, metadata !DIExpression()), !dbg !1268
  %5 = icmp eq i8* %4, null, !dbg !1270
  br i1 %5, label %6, label %7, !dbg !1272

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !1273
  unreachable, !dbg !1273

7:                                                ; preds = %3
  ret i8* %4, !dbg !1274
}

; Function Attrs: nofree nounwind uwtable
define dso_local noalias i8* @mfile_name_concat(i8* noundef %0, i8* noundef %1, i8** noundef writeonly %2) local_unnamed_addr #19 !dbg !1275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1277, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8* %1, metadata !1278, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8** %2, metadata !1279, metadata !DIExpression()), !dbg !1288
  %4 = tail call i8* @last_component(i8* noundef %0) #36, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %4, metadata !1280, metadata !DIExpression()), !dbg !1288
  %5 = tail call i64 @base_len(i8* noundef %4) #36, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %5, metadata !1281, metadata !DIExpression()), !dbg !1288
  %6 = ptrtoint i8* %4 to i64, !dbg !1291
  %7 = ptrtoint i8* %0 to i64, !dbg !1291
  %8 = sub i64 %6, %7, !dbg !1291
  %9 = add i64 %8, %5, !dbg !1292
  call void @llvm.dbg.value(metadata i64 %9, metadata !1282, metadata !DIExpression()), !dbg !1288
  %10 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %1) #36, !dbg !1293
  call void @llvm.dbg.value(metadata i64 %10, metadata !1283, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.value(metadata i8 0, metadata !1284, metadata !DIExpression()), !dbg !1288
  %11 = icmp eq i64 %5, 0, !dbg !1294
  br i1 %11, label %22, label %12, !dbg !1296

12:                                               ; preds = %3
  %13 = add i64 %9, -1, !dbg !1297
  %14 = getelementptr inbounds i8, i8* %0, i64 %13, !dbg !1297
  %15 = load i8, i8* %14, align 1, !dbg !1297, !tbaa !576
  %16 = icmp eq i8 %15, 47, !dbg !1297
  br i1 %16, label %26, label %17, !dbg !1300

17:                                               ; preds = %12
  %18 = load i8, i8* %1, align 1, !dbg !1301, !tbaa !576
  %19 = icmp eq i8 %18, 47, !dbg !1301
  %20 = xor i1 %19, true, !dbg !1302
  %21 = select i1 %19, i8 0, i8 47, !dbg !1302
  br label %26, !dbg !1302

22:                                               ; preds = %3
  %23 = load i8, i8* %1, align 1, !dbg !1303, !tbaa !576
  %24 = icmp eq i8 %23, 47, !dbg !1303
  %25 = select i1 %24, i8 46, i8 0, !dbg !1305
  br label %26, !dbg !1305

26:                                               ; preds = %22, %17, %12
  %27 = phi i1 [ false, %12 ], [ %20, %17 ], [ %24, %22 ]
  %28 = phi i8 [ 0, %12 ], [ %21, %17 ], [ %25, %22 ], !dbg !1288
  %29 = zext i1 %27 to i64
  call void @llvm.dbg.value(metadata i8 %28, metadata !1284, metadata !DIExpression()), !dbg !1288
  %30 = add i64 %10, 1, !dbg !1306
  %31 = add i64 %30, %9, !dbg !1307
  %32 = add i64 %31, %29, !dbg !1308
  %33 = tail call noalias i8* @malloc(i64 noundef %32) #35, !dbg !1309
  call void @llvm.dbg.value(metadata i8* %33, metadata !1285, metadata !DIExpression()), !dbg !1288
  %34 = icmp eq i8* %33, null, !dbg !1310
  br i1 %34, label %42, label %35, !dbg !1312

35:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i8* %33, metadata !1313, metadata !DIExpression()) #35, !dbg !1322
  call void @llvm.dbg.value(metadata i8* %0, metadata !1320, metadata !DIExpression()) #35, !dbg !1322
  call void @llvm.dbg.value(metadata i64 %9, metadata !1321, metadata !DIExpression()) #35, !dbg !1322
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %33, i8* noundef nonnull align 1 %0, i64 noundef %9, i1 noundef false) #35, !dbg !1324
  %36 = getelementptr inbounds i8, i8* %33, i64 %9, !dbg !1324
  call void @llvm.dbg.value(metadata i8* %36, metadata !1286, metadata !DIExpression()), !dbg !1325
  store i8 %28, i8* %36, align 1, !dbg !1326, !tbaa !576
  %37 = getelementptr inbounds i8, i8* %36, i64 %29, !dbg !1327
  call void @llvm.dbg.value(metadata i8* %37, metadata !1286, metadata !DIExpression()), !dbg !1325
  %38 = icmp eq i8** %2, null, !dbg !1328
  br i1 %38, label %40, label %39, !dbg !1330

39:                                               ; preds = %35
  store i8* %37, i8** %2, align 8, !dbg !1331, !tbaa !473
  br label %40, !dbg !1332

40:                                               ; preds = %39, %35
  call void @llvm.dbg.value(metadata i8* %37, metadata !1313, metadata !DIExpression()) #35, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %1, metadata !1320, metadata !DIExpression()) #35, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %10, metadata !1321, metadata !DIExpression()) #35, !dbg !1333
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %37, i8* noundef nonnull align 1 %1, i64 noundef %10, i1 noundef false) #35, !dbg !1335
  %41 = getelementptr inbounds i8, i8* %37, i64 %10, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %41, metadata !1286, metadata !DIExpression()), !dbg !1325
  store i8 0, i8* %41, align 1, !dbg !1336, !tbaa !576
  br label %42, !dbg !1337

42:                                               ; preds = %26, %40
  ret i8* %33, !dbg !1338
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #21 !dbg !1339 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1342, !tbaa !473
  ret i8* %1, !dbg !1343
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_long_options(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, void (i32)* nocapture noundef readonly %5, ...) local_unnamed_addr #12 !dbg !1344 {
  %7 = alloca %"struct.std::__va_list", align 8
  %8 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1348, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i8** %1, metadata !1349, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %2, metadata !1350, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %3, metadata !1351, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i8* %4, metadata !1352, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !1353, metadata !DIExpression()), !dbg !1374
  %9 = load i32, i32* @opterr, align 4, !dbg !1375, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %9, metadata !1354, metadata !DIExpression()), !dbg !1374
  store i32 0, i32* @opterr, align 4, !dbg !1376, !tbaa !567
  %10 = icmp eq i32 %0, 2, !dbg !1377
  br i1 %10, label %11, label %18, !dbg !1378

11:                                               ; preds = %6
  %12 = tail call i32 @getopt_long(i32 noundef 2, i8** noundef %1, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %12, metadata !1355, metadata !DIExpression()), !dbg !1380
  switch i32 %12, label %18 [
    i32 118, label %14
    i32 104, label %13
  ], !dbg !1381

13:                                               ; preds = %11
  tail call void %5(i32 noundef 0) #35, !dbg !1382
  br label %18, !dbg !1383

14:                                               ; preds = %11
  %15 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1384
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #35, !dbg !1384
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %7, metadata !1358, metadata !DIExpression()), !dbg !1385
  call void @llvm.va_start(i8* nonnull %15), !dbg !1386
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1387, !tbaa !473
  %17 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1388
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #35, !dbg !1388
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %17, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1388, !tbaa.struct !940
  call void @version_etc_va(%struct._IO_FILE* noundef %16, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %8) #35, !dbg !1388
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #35, !dbg !1388
  call void @exit(i32 noundef 0) #37, !dbg !1389
  unreachable, !dbg !1389

18:                                               ; preds = %13, %11, %6
  store i32 %9, i32* @opterr, align 4, !dbg !1390, !tbaa !567
  store i32 0, i32* @optind, align 4, !dbg !1391, !tbaa !567
  ret void, !dbg !1392
}

; Function Attrs: nounwind
declare !dbg !1393 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @parse_gnu_standard_options_only(i32 noundef %0, i8** noundef %1, i8* noundef %2, i8* noundef %3, i8* noundef %4, i1 noundef %5, void (i32)* nocapture noundef readonly %6, ...) local_unnamed_addr #12 !dbg !1397 {
  %8 = alloca %"struct.std::__va_list", align 8
  %9 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1401, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8** %1, metadata !1402, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %2, metadata !1403, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %3, metadata !1404, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %4, metadata !1405, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i1 %5, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1416
  call void @llvm.dbg.value(metadata void (i32)* %6, metadata !1407, metadata !DIExpression()), !dbg !1416
  %10 = load i32, i32* @opterr, align 4, !dbg !1417, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %10, metadata !1408, metadata !DIExpression()), !dbg !1416
  store i32 1, i32* @opterr, align 4, !dbg !1418, !tbaa !567
  %11 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1.68, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i64 0, i64 0), !dbg !1419
  call void @llvm.dbg.value(metadata i8* %11, metadata !1409, metadata !DIExpression()), !dbg !1416
  %12 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef %1, i8* noundef %11, %struct.option* noundef getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #35, !dbg !1420
  call void @llvm.dbg.value(metadata i32 %12, metadata !1410, metadata !DIExpression()), !dbg !1416
  switch i32 %12, label %17 [
    i32 -1, label %21
    i32 104, label %19
    i32 118, label %13
  ], !dbg !1421

13:                                               ; preds = %7
  %14 = bitcast %"struct.std::__va_list"* %8 to i8*, !dbg !1422
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1422
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %8, metadata !1411, metadata !DIExpression()), !dbg !1423
  call void @llvm.va_start(i8* nonnull %14), !dbg !1424
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1425, !tbaa !473
  %16 = bitcast %"struct.std::__va_list"* %9 to i8*, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #35, !dbg !1426
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %16, i8* noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !dbg !1426, !tbaa.struct !940
  call void @version_etc_va(%struct._IO_FILE* noundef %15, i8* noundef %2, i8* noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %9) #35, !dbg !1426
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #35, !dbg !1426
  call void @exit(i32 noundef 0) #37, !dbg !1427
  unreachable, !dbg !1427

17:                                               ; preds = %7
  %18 = load volatile i32, i32* @exit_failure, align 4, !dbg !1428, !tbaa !567
  br label %19, !dbg !1429

19:                                               ; preds = %7, %17
  %20 = phi i32 [ %18, %17 ], [ 0, %7 ]
  tail call void %6(i32 noundef %20) #35, !dbg !1430
  br label %21, !dbg !1431

21:                                               ; preds = %19, %7
  store i32 %10, i32* @opterr, align 4, !dbg !1431, !tbaa !567
  ret void, !dbg !1432
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #22 !dbg !1433 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1435, metadata !DIExpression()), !dbg !1438
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1439
  call void @llvm.dbg.value(metadata i8* %2, metadata !1436, metadata !DIExpression()), !dbg !1438
  %3 = icmp eq i8* %2, null, !dbg !1440
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1440
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1440
  call void @llvm.dbg.value(metadata i8* %5, metadata !1437, metadata !DIExpression()), !dbg !1438
  %6 = ptrtoint i8* %5 to i64, !dbg !1441
  %7 = ptrtoint i8* %0 to i64, !dbg !1441
  %8 = sub i64 %6, %7, !dbg !1441
  %9 = icmp sgt i64 %8, 6, !dbg !1443
  br i1 %9, label %10, label %19, !dbg !1444

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1445
  call void @llvm.dbg.value(metadata i8* %11, metadata !1446, metadata !DIExpression()) #35, !dbg !1453
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), metadata !1451, metadata !DIExpression()) #35, !dbg !1453
  call void @llvm.dbg.value(metadata i64 7, metadata !1452, metadata !DIExpression()) #35, !dbg !1453
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7) #35, !dbg !1455
  %13 = icmp eq i32 %12, 0, !dbg !1456
  br i1 %13, label %14, label %19, !dbg !1457

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1435, metadata !DIExpression()), !dbg !1438
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.74, i64 0, i64 0), i64 noundef 3) #36, !dbg !1458
  %16 = icmp eq i32 %15, 0, !dbg !1461
  %17 = select i1 %16, i64 3, i64 0, !dbg !1462
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1462
  br label %19, !dbg !1462

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1438
  call void @llvm.dbg.value(metadata i8* %21, metadata !1437, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %20, metadata !1435, metadata !DIExpression()), !dbg !1438
  store i8* %20, i8** @program_name, align 8, !dbg !1463, !tbaa !473
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1464, !tbaa !473
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1465, !tbaa !473
  ret void, !dbg !1466
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !243 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !250, metadata !DIExpression()), !dbg !1467
  call void @llvm.dbg.value(metadata i8* %1, metadata !251, metadata !DIExpression()), !dbg !1467
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1468
  call void @llvm.dbg.value(metadata i8* %5, metadata !252, metadata !DIExpression()), !dbg !1467
  %6 = icmp eq i8* %5, %0, !dbg !1469
  br i1 %6, label %7, label %17, !dbg !1471

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1472
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1472
  %10 = bitcast i64* %4 to i8*, !dbg !1473
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1473
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !258, metadata !DIExpression()), !dbg !1474
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1475, metadata !DIExpression()) #35, !dbg !1482
  call void @llvm.dbg.value(metadata i8* %10, metadata !1484, metadata !DIExpression()) #35, !dbg !1491
  call void @llvm.dbg.value(metadata i32 0, metadata !1489, metadata !DIExpression()) #35, !dbg !1491
  call void @llvm.dbg.value(metadata i64 8, metadata !1490, metadata !DIExpression()) #35, !dbg !1491
  store i64 0, i64* %4, align 8, !dbg !1493
  call void @llvm.dbg.value(metadata i32* %3, metadata !253, metadata !DIExpression(DW_OP_deref)), !dbg !1467
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #35, !dbg !1494
  %12 = icmp eq i64 %11, 2, !dbg !1496
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !253, metadata !DIExpression()), !dbg !1467
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1497
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1498
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1498
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1467
  ret i8* %18, !dbg !1498
}

; Function Attrs: nounwind
declare !dbg !1499 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1505 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1510, metadata !DIExpression()), !dbg !1513
  %2 = tail call i32* @__errno_location() #38, !dbg !1514
  %3 = load i32, i32* %2, align 4, !dbg !1514, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %3, metadata !1511, metadata !DIExpression()), !dbg !1513
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1515
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1515
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1515
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1516
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1516
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1512, metadata !DIExpression()), !dbg !1513
  store i32 %3, i32* %2, align 4, !dbg !1517, !tbaa !567
  ret %struct.quoting_options* %8, !dbg !1518
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #21 !dbg !1519 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1525, metadata !DIExpression()), !dbg !1526
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1527
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1527
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1528
  %5 = load i32, i32* %4, align 8, !dbg !1528, !tbaa !1529
  ret i32 %5, !dbg !1531
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !1532 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1536, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %1, metadata !1537, metadata !DIExpression()), !dbg !1538
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1539
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1539
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1540
  store i32 %1, i32* %5, align 8, !dbg !1541, !tbaa !1529
  ret void, !dbg !1542
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !1543 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1547, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1548, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %2, metadata !1549, metadata !DIExpression()), !dbg !1555
  call void @llvm.dbg.value(metadata i8 %1, metadata !1550, metadata !DIExpression()), !dbg !1555
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1556
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1556
  %6 = lshr i8 %1, 5, !dbg !1557
  %7 = zext i8 %6 to i64, !dbg !1557
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1558
  call void @llvm.dbg.value(metadata i32* %8, metadata !1551, metadata !DIExpression()), !dbg !1555
  %9 = and i8 %1, 31, !dbg !1559
  %10 = zext i8 %9 to i32, !dbg !1559
  call void @llvm.dbg.value(metadata i32 %10, metadata !1553, metadata !DIExpression()), !dbg !1555
  %11 = load i32, i32* %8, align 4, !dbg !1560, !tbaa !567
  %12 = lshr i32 %11, %10, !dbg !1561
  %13 = and i32 %12, 1, !dbg !1562
  call void @llvm.dbg.value(metadata i32 %13, metadata !1554, metadata !DIExpression()), !dbg !1555
  %14 = and i32 %2, 1, !dbg !1563
  %15 = xor i32 %13, %14, !dbg !1564
  %16 = shl i32 %15, %10, !dbg !1565
  %17 = xor i32 %16, %11, !dbg !1566
  store i32 %17, i32* %8, align 4, !dbg !1566, !tbaa !567
  ret i32 %13, !dbg !1567
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !1568 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1572, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.value(metadata i32 %1, metadata !1573, metadata !DIExpression()), !dbg !1575
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1576
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1572, metadata !DIExpression()), !dbg !1575
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1579
  %6 = load i32, i32* %5, align 4, !dbg !1579, !tbaa !1580
  call void @llvm.dbg.value(metadata i32 %6, metadata !1574, metadata !DIExpression()), !dbg !1575
  store i32 %1, i32* %5, align 4, !dbg !1581, !tbaa !1580
  ret i32 %6, !dbg !1582
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1583 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1587, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()), !dbg !1590
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()), !dbg !1590
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1591
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1593
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()), !dbg !1590
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1594
  store i32 10, i32* %6, align 8, !dbg !1595, !tbaa !1529
  %7 = icmp ne i8* %1, null, !dbg !1596
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1598
  br i1 %9, label %11, label %10, !dbg !1598

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !1599
  unreachable, !dbg !1599

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1600
  store i8* %1, i8** %12, align 8, !dbg !1601, !tbaa !1602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1603
  store i8* %2, i8** %13, align 8, !dbg !1604, !tbaa !1605
  ret void, !dbg !1606
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1607 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1611, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %1, metadata !1612, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8* %2, metadata !1613, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i64 %3, metadata !1614, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1615, metadata !DIExpression()), !dbg !1619
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1620
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1620
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1616, metadata !DIExpression()), !dbg !1619
  %8 = tail call i32* @__errno_location() #38, !dbg !1621
  %9 = load i32, i32* %8, align 4, !dbg !1621, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %9, metadata !1617, metadata !DIExpression()), !dbg !1619
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1622
  %11 = load i32, i32* %10, align 8, !dbg !1622, !tbaa !1529
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1623
  %13 = load i32, i32* %12, align 4, !dbg !1623, !tbaa !1580
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1624
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1625
  %16 = load i8*, i8** %15, align 8, !dbg !1625, !tbaa !1602
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1626
  %18 = load i8*, i8** %17, align 8, !dbg !1626, !tbaa !1605
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1627
  call void @llvm.dbg.value(metadata i64 %19, metadata !1618, metadata !DIExpression()), !dbg !1619
  store i32 %9, i32* %8, align 4, !dbg !1628, !tbaa !567
  ret i64 %19, !dbg !1629
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1630 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1636, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %1, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %2, metadata !1638, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %3, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %4, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %5, metadata !1641, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32* %6, metadata !1642, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %7, metadata !1643, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %8, metadata !1644, metadata !DIExpression()), !dbg !1698
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !1699
  %18 = icmp eq i64 %17, 1, !dbg !1700
  call void @llvm.dbg.value(metadata i1 %18, metadata !1645, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* null, metadata !1648, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1649, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %5, metadata !1651, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1653, metadata !DIExpression()), !dbg !1698
  %19 = and i32 %5, 2, !dbg !1701
  %20 = icmp ne i32 %19, 0, !dbg !1701
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
  br label %36, !dbg !1701

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1702
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1703
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1704
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1653, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %43, metadata !1649, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %42, metadata !1648, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %41, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %40, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %39, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %38, metadata !1643, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %37, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1691), !dbg !1705
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1698
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
  ], !dbg !1706

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1640, metadata !DIExpression()), !dbg !1698
  br label %111, !dbg !1707

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 5, metadata !1640, metadata !DIExpression()), !dbg !1698
  br i1 %45, label %111, label %51, !dbg !1707

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1708
  br i1 %52, label %111, label %53, !dbg !1712

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1708, !tbaa !576
  br label %111, !dbg !1708

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.87, i64 0, i64 0), metadata !320, metadata !DIExpression()) #35, !dbg !1713
  call void @llvm.dbg.value(metadata i32 %37, metadata !321, metadata !DIExpression()) #35, !dbg !1713
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.87, i64 0, i64 0), i32 noundef 5) #35, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %55, metadata !322, metadata !DIExpression()) #35, !dbg !1713
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.87, i64 0, i64 0), !dbg !1718
  br i1 %56, label %57, label %66, !dbg !1720

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1721
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1722
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !324, metadata !DIExpression()) #35, !dbg !1723
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1724, metadata !DIExpression()) #35, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %23, metadata !1732, metadata !DIExpression()) #35, !dbg !1737
  call void @llvm.dbg.value(metadata i32 0, metadata !1735, metadata !DIExpression()) #35, !dbg !1737
  call void @llvm.dbg.value(metadata i64 8, metadata !1736, metadata !DIExpression()) #35, !dbg !1737
  store i64 0, i64* %13, align 8, !dbg !1739
  call void @llvm.dbg.value(metadata i32* %12, metadata !323, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1713
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #35, !dbg !1740
  %59 = icmp eq i64 %58, 3, !dbg !1742
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !323, metadata !DIExpression()) #35, !dbg !1713
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1743
  %63 = icmp eq i32 %37, 9, !dbg !1743
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), !dbg !1743
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1743
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !1744
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1713
  call void @llvm.dbg.value(metadata i8* %67, metadata !1643, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), metadata !320, metadata !DIExpression()) #35, !dbg !1745
  call void @llvm.dbg.value(metadata i32 %37, metadata !321, metadata !DIExpression()) #35, !dbg !1745
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.88, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), i32 noundef 5) #35, !dbg !1747
  call void @llvm.dbg.value(metadata i8* %68, metadata !322, metadata !DIExpression()) #35, !dbg !1745
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), !dbg !1748
  br i1 %69, label %70, label %79, !dbg !1749

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1750
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1751
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !324, metadata !DIExpression()) #35, !dbg !1752
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1724, metadata !DIExpression()) #35, !dbg !1753
  call void @llvm.dbg.value(metadata i8* %26, metadata !1732, metadata !DIExpression()) #35, !dbg !1755
  call void @llvm.dbg.value(metadata i32 0, metadata !1735, metadata !DIExpression()) #35, !dbg !1755
  call void @llvm.dbg.value(metadata i64 8, metadata !1736, metadata !DIExpression()) #35, !dbg !1755
  store i64 0, i64* %11, align 8, !dbg !1757
  call void @llvm.dbg.value(metadata i32* %10, metadata !323, metadata !DIExpression(DW_OP_deref)) #35, !dbg !1745
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #35, !dbg !1758
  %72 = icmp eq i64 %71, 3, !dbg !1759
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !323, metadata !DIExpression()) #35, !dbg !1745
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1760
  %76 = icmp eq i32 %37, 9, !dbg !1760
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), !dbg !1760
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1760
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !1761
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !1761
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %80, metadata !1643, metadata !DIExpression()), !dbg !1698
  br i1 %45, label %97, label %82, !dbg !1762

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1655, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 0, metadata !1646, metadata !DIExpression()), !dbg !1698
  %83 = load i8, i8* %80, align 1, !dbg !1764, !tbaa !576
  %84 = icmp eq i8 %83, 0, !dbg !1766
  br i1 %84, label %97, label %85, !dbg !1766

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1655, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i64 %88, metadata !1646, metadata !DIExpression()), !dbg !1698
  %89 = icmp ult i64 %88, %48, !dbg !1767
  br i1 %89, label %90, label %92, !dbg !1770

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1767
  store i8 %86, i8* %91, align 1, !dbg !1767, !tbaa !576
  br label %92, !dbg !1767

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1770
  call void @llvm.dbg.value(metadata i64 %93, metadata !1646, metadata !DIExpression()), !dbg !1698
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1771
  call void @llvm.dbg.value(metadata i8* %94, metadata !1655, metadata !DIExpression()), !dbg !1763
  %95 = load i8, i8* %94, align 1, !dbg !1764, !tbaa !576
  %96 = icmp eq i8 %95, 0, !dbg !1766
  br i1 %96, label %97, label %85, !dbg !1766, !llvm.loop !1772

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1774
  call void @llvm.dbg.value(metadata i64 %98, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %81, metadata !1648, metadata !DIExpression()), !dbg !1698
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %99, metadata !1649, metadata !DIExpression()), !dbg !1698
  br label %111, !dbg !1776

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1698
  br label %102, !dbg !1777

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1698
  br i1 %45, label %102, label %105, !dbg !1778

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1640, metadata !DIExpression()), !dbg !1698
  br label %111, !dbg !1779

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 2, metadata !1640, metadata !DIExpression()), !dbg !1698
  br i1 %45, label %111, label %105, !dbg !1779

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1780
  br i1 %107, label %111, label %108, !dbg !1784

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1780, !tbaa !576
  br label %111, !dbg !1780

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1651, metadata !DIExpression()), !dbg !1698
  br label %111, !dbg !1785

110:                                              ; preds = %36
  call void @abort() #37, !dbg !1786
  unreachable, !dbg !1786

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1774
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.89, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.90, i64 0, i64 0), %102 ], !dbg !1698
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1698
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1651, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %117, metadata !1649, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %116, metadata !1648, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %115, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %114, metadata !1644, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8* %113, metadata !1643, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i32 %112, metadata !1640, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 0, metadata !1660, metadata !DIExpression()), !dbg !1787
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
  br label %132, !dbg !1788

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1774
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1702
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1787
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %139, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1653, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %135, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %134, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %133, metadata !1639, metadata !DIExpression()), !dbg !1698
  %141 = icmp eq i64 %133, -1, !dbg !1789
  br i1 %141, label %142, label %146, !dbg !1790

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1791
  %144 = load i8, i8* %143, align 1, !dbg !1791, !tbaa !576
  %145 = icmp eq i8 %144, 0, !dbg !1792
  br i1 %145, label %596, label %148, !dbg !1793

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1794
  br i1 %147, label %596, label %148, !dbg !1793

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1795
  br i1 %123, label %149, label %163, !dbg !1796

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1798
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1799
  br i1 %151, label %152, label %154, !dbg !1799

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !1800
  call void @llvm.dbg.value(metadata i64 %153, metadata !1639, metadata !DIExpression()), !dbg !1698
  br label %154, !dbg !1801

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1801
  call void @llvm.dbg.value(metadata i64 %155, metadata !1639, metadata !DIExpression()), !dbg !1698
  %156 = icmp ugt i64 %150, %155, !dbg !1802
  br i1 %156, label %163, label %157, !dbg !1803

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1804
  call void @llvm.dbg.value(metadata i8* %158, metadata !1805, metadata !DIExpression()) #35, !dbg !1810
  call void @llvm.dbg.value(metadata i8* %116, metadata !1808, metadata !DIExpression()) #35, !dbg !1810
  call void @llvm.dbg.value(metadata i64 %117, metadata !1809, metadata !DIExpression()) #35, !dbg !1810
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !1812
  %160 = icmp ne i32 %159, 0, !dbg !1813
  %161 = or i1 %160, %125, !dbg !1814
  %162 = xor i1 %160, true, !dbg !1814
  br i1 %161, label %163, label %647, !dbg !1814

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %164, metadata !1639, metadata !DIExpression()), !dbg !1698
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1815
  %167 = load i8, i8* %166, align 1, !dbg !1815, !tbaa !576
  call void @llvm.dbg.value(metadata i8 %167, metadata !1667, metadata !DIExpression()), !dbg !1795
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
  ], !dbg !1816

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1817

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1818

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1665, metadata !DIExpression()), !dbg !1795
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1822
  br i1 %171, label %188, label %172, !dbg !1822

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1824
  br i1 %173, label %174, label %176, !dbg !1828

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1824
  store i8 39, i8* %175, align 1, !dbg !1824, !tbaa !576
  br label %176, !dbg !1824

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1828
  call void @llvm.dbg.value(metadata i64 %177, metadata !1646, metadata !DIExpression()), !dbg !1698
  %178 = icmp ult i64 %177, %140, !dbg !1829
  br i1 %178, label %179, label %181, !dbg !1832

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1829
  store i8 36, i8* %180, align 1, !dbg !1829, !tbaa !576
  br label %181, !dbg !1829

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1832
  call void @llvm.dbg.value(metadata i64 %182, metadata !1646, metadata !DIExpression()), !dbg !1698
  %183 = icmp ult i64 %182, %140, !dbg !1833
  br i1 %183, label %184, label %186, !dbg !1836

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1833
  store i8 39, i8* %185, align 1, !dbg !1833, !tbaa !576
  br label %186, !dbg !1833

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1836
  call void @llvm.dbg.value(metadata i64 %187, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %188, !dbg !1837

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1698
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %189, metadata !1646, metadata !DIExpression()), !dbg !1698
  %191 = icmp ult i64 %189, %140, !dbg !1838
  br i1 %191, label %192, label %194, !dbg !1841

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1838
  store i8 92, i8* %193, align 1, !dbg !1838, !tbaa !576
  br label %194, !dbg !1838

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %195, metadata !1646, metadata !DIExpression()), !dbg !1698
  br i1 %120, label %196, label %499, !dbg !1842

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1844
  %198 = icmp ult i64 %197, %164, !dbg !1845
  br i1 %198, label %199, label %456, !dbg !1846

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1847
  %201 = load i8, i8* %200, align 1, !dbg !1847, !tbaa !576
  %202 = add i8 %201, -48, !dbg !1848
  %203 = icmp ult i8 %202, 10, !dbg !1848
  br i1 %203, label %204, label %456, !dbg !1848

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1849
  br i1 %205, label %206, label %208, !dbg !1853

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1849
  store i8 48, i8* %207, align 1, !dbg !1849, !tbaa !576
  br label %208, !dbg !1849

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1853
  call void @llvm.dbg.value(metadata i64 %209, metadata !1646, metadata !DIExpression()), !dbg !1698
  %210 = icmp ult i64 %209, %140, !dbg !1854
  br i1 %210, label %211, label %213, !dbg !1857

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1854
  store i8 48, i8* %212, align 1, !dbg !1854, !tbaa !576
  br label %213, !dbg !1854

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1857
  call void @llvm.dbg.value(metadata i64 %214, metadata !1646, metadata !DIExpression()), !dbg !1698
  br label %456, !dbg !1858

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1859

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1860

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1861

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1863

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1865
  %221 = icmp ult i64 %220, %164, !dbg !1866
  br i1 %221, label %222, label %456, !dbg !1867

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1868
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1869
  %225 = load i8, i8* %224, align 1, !dbg !1869, !tbaa !576
  %226 = icmp eq i8 %225, 63, !dbg !1870
  br i1 %226, label %227, label %456, !dbg !1871

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1872
  %229 = load i8, i8* %228, align 1, !dbg !1872, !tbaa !576
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
  ], !dbg !1873

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1874

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %220, metadata !1660, metadata !DIExpression()), !dbg !1787
  %232 = icmp ult i64 %134, %140, !dbg !1876
  br i1 %232, label %233, label %235, !dbg !1879

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1876
  store i8 63, i8* %234, align 1, !dbg !1876, !tbaa !576
  br label %235, !dbg !1876

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %236, metadata !1646, metadata !DIExpression()), !dbg !1698
  %237 = icmp ult i64 %236, %140, !dbg !1880
  br i1 %237, label %238, label %240, !dbg !1883

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1880
  store i8 34, i8* %239, align 1, !dbg !1880, !tbaa !576
  br label %240, !dbg !1880

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %241, metadata !1646, metadata !DIExpression()), !dbg !1698
  %242 = icmp ult i64 %241, %140, !dbg !1884
  br i1 %242, label %243, label %245, !dbg !1887

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1884
  store i8 34, i8* %244, align 1, !dbg !1884, !tbaa !576
  br label %245, !dbg !1884

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %246, metadata !1646, metadata !DIExpression()), !dbg !1698
  %247 = icmp ult i64 %246, %140, !dbg !1888
  br i1 %247, label %248, label %250, !dbg !1891

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1888
  store i8 63, i8* %249, align 1, !dbg !1888, !tbaa !576
  br label %250, !dbg !1888

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1891
  call void @llvm.dbg.value(metadata i64 %251, metadata !1646, metadata !DIExpression()), !dbg !1698
  br label %456, !dbg !1892

252:                                              ; preds = %163
  br label %263, !dbg !1893

253:                                              ; preds = %163
  br label %263, !dbg !1894

254:                                              ; preds = %163
  br label %261, !dbg !1895

255:                                              ; preds = %163
  br label %261, !dbg !1896

256:                                              ; preds = %163
  br label %263, !dbg !1897

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1898

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1899

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1902

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1904

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1905
  call void @llvm.dbg.label(metadata !1692), !dbg !1906
  br i1 %128, label %263, label %638, !dbg !1907

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1905
  call void @llvm.dbg.label(metadata !1694), !dbg !1909
  br i1 %118, label %510, label %467, !dbg !1910

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1911

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1912, !tbaa !576
  %268 = icmp eq i8 %267, 0, !dbg !1914
  br i1 %268, label %269, label %456, !dbg !1915

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1916
  br i1 %270, label %271, label %456, !dbg !1918

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1666, metadata !DIExpression()), !dbg !1795
  br label %272, !dbg !1919

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1666, metadata !DIExpression()), !dbg !1795
  br i1 %126, label %274, label %456, !dbg !1920

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1922

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1666, metadata !DIExpression()), !dbg !1795
  br i1 %126, label %276, label %456, !dbg !1923

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1924

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1927
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1929
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1929
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1929
  call void @llvm.dbg.value(metadata i64 %282, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %281, metadata !1647, metadata !DIExpression()), !dbg !1698
  %283 = icmp ult i64 %134, %282, !dbg !1930
  br i1 %283, label %284, label %286, !dbg !1933

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1930
  store i8 39, i8* %285, align 1, !dbg !1930, !tbaa !576
  br label %286, !dbg !1930

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %287, metadata !1646, metadata !DIExpression()), !dbg !1698
  %288 = icmp ult i64 %287, %282, !dbg !1934
  br i1 %288, label %289, label %291, !dbg !1937

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1934
  store i8 92, i8* %290, align 1, !dbg !1934, !tbaa !576
  br label %291, !dbg !1934

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1937
  call void @llvm.dbg.value(metadata i64 %292, metadata !1646, metadata !DIExpression()), !dbg !1698
  %293 = icmp ult i64 %292, %282, !dbg !1938
  br i1 %293, label %294, label %296, !dbg !1941

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1938
  store i8 39, i8* %295, align 1, !dbg !1938, !tbaa !576
  br label %296, !dbg !1938

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %297, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %456, !dbg !1942

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1943

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1668, metadata !DIExpression()), !dbg !1944
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !1945
  %301 = load i16*, i16** %300, align 8, !dbg !1945, !tbaa !473
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1945
  %304 = load i16, i16* %303, align 2, !dbg !1945, !tbaa !601
  %305 = and i16 %304, 16384, !dbg !1945
  %306 = icmp ne i16 %305, 0, !dbg !1947
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %349, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %312, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i1 %350, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  br label %352, !dbg !1948

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !1949
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1672, metadata !DIExpression()), !dbg !1950
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1724, metadata !DIExpression()) #35, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %32, metadata !1732, metadata !DIExpression()) #35, !dbg !1953
  call void @llvm.dbg.value(metadata i32 0, metadata !1735, metadata !DIExpression()) #35, !dbg !1953
  call void @llvm.dbg.value(metadata i64 8, metadata !1736, metadata !DIExpression()) #35, !dbg !1953
  store i64 0, i64* %14, align 8, !dbg !1955
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i8 1, metadata !1671, metadata !DIExpression()), !dbg !1944
  %308 = icmp eq i64 %164, -1, !dbg !1956
  br i1 %308, label %309, label %311, !dbg !1958

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %310, metadata !1639, metadata !DIExpression()), !dbg !1698
  br label %311, !dbg !1960

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1795
  call void @llvm.dbg.value(metadata i64 %312, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !1961
  %313 = sub i64 %312, %139, !dbg !1962
  call void @llvm.dbg.value(metadata i32* %16, metadata !1675, metadata !DIExpression(DW_OP_deref)), !dbg !1963
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #35, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %314, metadata !1679, metadata !DIExpression()), !dbg !1963
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1965

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  %316 = icmp ugt i64 %312, %139, !dbg !1966
  br i1 %316, label %319, label %317, !dbg !1968

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %349, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %312, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i1 %350, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  br label %352, !dbg !1948

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1671, metadata !DIExpression()), !dbg !1944
  br label %346, !dbg !1971

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1668, metadata !DIExpression()), !dbg !1944
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1973
  %323 = load i8, i8* %322, align 1, !dbg !1973, !tbaa !576
  %324 = icmp eq i8 %323, 0, !dbg !1968
  br i1 %324, label %348, label %325, !dbg !1974

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1975
  call void @llvm.dbg.value(metadata i64 %326, metadata !1668, metadata !DIExpression()), !dbg !1944
  %327 = add i64 %326, %139, !dbg !1976
  %328 = icmp eq i64 %326, %313, !dbg !1966
  br i1 %328, label %348, label %319, !dbg !1968, !llvm.loop !1977

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1978
  call void @llvm.dbg.value(metadata i64 1, metadata !1680, metadata !DIExpression()), !dbg !1979
  br i1 %331, label %332, label %340, !dbg !1978

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1680, metadata !DIExpression()), !dbg !1979
  %334 = add i64 %333, %139, !dbg !1980
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1982
  %336 = load i8, i8* %335, align 1, !dbg !1982, !tbaa !576
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1983

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i64 %338, metadata !1680, metadata !DIExpression()), !dbg !1979
  %339 = icmp eq i64 %338, %314, !dbg !1985
  br i1 %339, label %340, label %332, !dbg !1986, !llvm.loop !1987

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1989, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %341, metadata !1675, metadata !DIExpression()), !dbg !1963
  call void @llvm.dbg.value(metadata i32 %341, metadata !1991, metadata !DIExpression()) #35, !dbg !1999
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2001
  %343 = icmp ne i32 %342, 0, !dbg !2002
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %314, metadata !1668, metadata !DIExpression()), !dbg !1944
  br label %348, !dbg !2003

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !1970
  call void @llvm.dbg.label(metadata !1697), !dbg !2004
  %345 = select i1 %118, i32 4, i32 2, !dbg !2005
  br label %643, !dbg !2005

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %349, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %312, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i1 %350, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  br label %352, !dbg !1948

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1671, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 0, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !1969
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !1970
  call void @llvm.dbg.value(metadata i64 %349, metadata !1668, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %312, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i1 %350, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  %351 = icmp ugt i64 %349, 1, !dbg !2007
  br i1 %351, label %357, label %352, !dbg !1948

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2008
  br i1 %356, label %456, label %357, !dbg !2008

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %361, metadata !1688, metadata !DIExpression()), !dbg !2010
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2011

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1698
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1787
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2012
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8 %369, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 %368, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %366, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %364, metadata !1646, metadata !DIExpression()), !dbg !1698
  br i1 %362, label %414, label %370, !dbg !2013

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2018

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1665, metadata !DIExpression()), !dbg !1795
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2021
  br i1 %372, label %389, label %373, !dbg !2021

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2023
  br i1 %374, label %375, label %377, !dbg !2027

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2023
  store i8 39, i8* %376, align 1, !dbg !2023, !tbaa !576
  br label %377, !dbg !2023

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %378, metadata !1646, metadata !DIExpression()), !dbg !1698
  %379 = icmp ult i64 %378, %140, !dbg !2028
  br i1 %379, label %380, label %382, !dbg !2031

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2028
  store i8 36, i8* %381, align 1, !dbg !2028, !tbaa !576
  br label %382, !dbg !2028

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2031
  call void @llvm.dbg.value(metadata i64 %383, metadata !1646, metadata !DIExpression()), !dbg !1698
  %384 = icmp ult i64 %383, %140, !dbg !2032
  br i1 %384, label %385, label %387, !dbg !2035

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2032
  store i8 39, i8* %386, align 1, !dbg !2032, !tbaa !576
  br label %387, !dbg !2032

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %388, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %389, !dbg !2036

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1698
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %390, metadata !1646, metadata !DIExpression()), !dbg !1698
  %392 = icmp ult i64 %390, %140, !dbg !2037
  br i1 %392, label %393, label %395, !dbg !2040

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2037
  store i8 92, i8* %394, align 1, !dbg !2037, !tbaa !576
  br label %395, !dbg !2037

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %396, metadata !1646, metadata !DIExpression()), !dbg !1698
  %397 = icmp ult i64 %396, %140, !dbg !2041
  br i1 %397, label %398, label %402, !dbg !2044

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2041
  %400 = or i8 %399, 48, !dbg !2041
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2041
  store i8 %400, i8* %401, align 1, !dbg !2041, !tbaa !576
  br label %402, !dbg !2041

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %403, metadata !1646, metadata !DIExpression()), !dbg !1698
  %404 = icmp ult i64 %403, %140, !dbg !2045
  br i1 %404, label %405, label %410, !dbg !2048

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2045
  %407 = and i8 %406, 7, !dbg !2045
  %408 = or i8 %407, 48, !dbg !2045
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2045
  store i8 %408, i8* %409, align 1, !dbg !2045, !tbaa !576
  br label %410, !dbg !2045

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %411, metadata !1646, metadata !DIExpression()), !dbg !1698
  %412 = and i8 %369, 7, !dbg !2049
  %413 = or i8 %412, 48, !dbg !2050
  call void @llvm.dbg.value(metadata i8 %413, metadata !1667, metadata !DIExpression()), !dbg !1795
  br label %421, !dbg !2051

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2052

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2053
  br i1 %416, label %417, label %419, !dbg !2058

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2053
  store i8 92, i8* %418, align 1, !dbg !2053, !tbaa !576
  br label %419, !dbg !2053

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %420, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1662, metadata !DIExpression()), !dbg !1795
  br label %421, !dbg !2059

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1698
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1795
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1795
  call void @llvm.dbg.value(metadata i8 %426, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 %425, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %422, metadata !1646, metadata !DIExpression()), !dbg !1698
  %427 = add i64 %366, 1, !dbg !2060
  %428 = icmp ugt i64 %361, %427, !dbg !2062
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2063

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2064
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2064
  br i1 %432, label %433, label %444, !dbg !2064

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2067
  br i1 %434, label %435, label %437, !dbg !2071

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2067
  store i8 39, i8* %436, align 1, !dbg !2067, !tbaa !576
  br label %437, !dbg !2067

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %438, metadata !1646, metadata !DIExpression()), !dbg !1698
  %439 = icmp ult i64 %438, %140, !dbg !2072
  br i1 %439, label %440, label %442, !dbg !2075

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2072
  store i8 39, i8* %441, align 1, !dbg !2072, !tbaa !576
  br label %442, !dbg !2072

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %443, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %444, !dbg !2076

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2077
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %445, metadata !1646, metadata !DIExpression()), !dbg !1698
  %447 = icmp ult i64 %445, %140, !dbg !2078
  br i1 %447, label %448, label %450, !dbg !2081

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2078
  store i8 %426, i8* %449, align 1, !dbg !2078, !tbaa !576
  br label %450, !dbg !2078

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %451, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %427, metadata !1660, metadata !DIExpression()), !dbg !1787
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2082
  %453 = load i8, i8* %452, align 1, !dbg !2082, !tbaa !576
  call void @llvm.dbg.value(metadata i8 %453, metadata !1667, metadata !DIExpression()), !dbg !1795
  br label %363, !dbg !2083, !llvm.loop !2084

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i1 %358, metadata !1666, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1795
  call void @llvm.dbg.value(metadata i8 %425, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %366, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %422, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %360, metadata !1639, metadata !DIExpression()), !dbg !1698
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2087
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1698
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1702
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1787
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1795
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %465, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1666, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1662, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %462, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %459, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %458, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %457, metadata !1639, metadata !DIExpression()), !dbg !1698
  br i1 %121, label %478, label %467, !dbg !2088

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
  br i1 %131, label %479, label %499, !dbg !2090

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2091

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
  %490 = lshr i8 %481, 5, !dbg !2092
  %491 = zext i8 %490 to i64, !dbg !2092
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2093
  %493 = load i32, i32* %492, align 4, !dbg !2093, !tbaa !567
  %494 = and i8 %481, 31, !dbg !2094
  %495 = zext i8 %494 to i32, !dbg !2094
  %496 = shl nuw i32 1, %495, !dbg !2095
  %497 = and i32 %493, %496, !dbg !2095
  %498 = icmp eq i32 %497, 0, !dbg !2095
  br i1 %498, label %499, label %510, !dbg !2096

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
  br i1 %165, label %510, label %546, !dbg !2097

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2087
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1698
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1702
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2098
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1795
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %518, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1666, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %516, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %513, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %512, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %511, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1695), !dbg !2099
  br i1 %119, label %638, label %520, !dbg !2100

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1665, metadata !DIExpression()), !dbg !1795
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2102
  br i1 %521, label %538, label %522, !dbg !2102

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2104
  br i1 %523, label %524, label %526, !dbg !2108

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2104
  store i8 39, i8* %525, align 1, !dbg !2104, !tbaa !576
  br label %526, !dbg !2104

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %527, metadata !1646, metadata !DIExpression()), !dbg !1698
  %528 = icmp ult i64 %527, %519, !dbg !2109
  br i1 %528, label %529, label %531, !dbg !2112

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2109
  store i8 36, i8* %530, align 1, !dbg !2109, !tbaa !576
  br label %531, !dbg !2109

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %532, metadata !1646, metadata !DIExpression()), !dbg !1698
  %533 = icmp ult i64 %532, %519, !dbg !2113
  br i1 %533, label %534, label %536, !dbg !2116

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2113
  store i8 39, i8* %535, align 1, !dbg !2113, !tbaa !576
  br label %536, !dbg !2113

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %537, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 1, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %538, !dbg !2117

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1795
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %539, metadata !1646, metadata !DIExpression()), !dbg !1698
  %541 = icmp ult i64 %539, %519, !dbg !2118
  br i1 %541, label %542, label %544, !dbg !2121

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2118
  store i8 92, i8* %543, align 1, !dbg !2118, !tbaa !576
  br label %544, !dbg !2118

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2121
  call void @llvm.dbg.value(metadata i64 %556, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %555, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1666, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %552, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %549, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %548, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %547, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1696), !dbg !2122
  br label %570, !dbg !2123

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2087
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1698
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1702
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2098
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2126
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 %555, metadata !1667, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1666, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 poison, metadata !1665, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i64 %552, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %549, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %548, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %547, metadata !1639, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.label(metadata !1696), !dbg !2122
  %557 = xor i1 %551, true, !dbg !2123
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2123
  br i1 %558, label %570, label %559, !dbg !2123

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2127
  br i1 %560, label %561, label %563, !dbg !2131

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2127
  store i8 39, i8* %562, align 1, !dbg !2127, !tbaa !576
  br label %563, !dbg !2127

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i64 %564, metadata !1646, metadata !DIExpression()), !dbg !1698
  %565 = icmp ult i64 %564, %556, !dbg !2132
  br i1 %565, label %566, label %568, !dbg !2135

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2132
  store i8 39, i8* %567, align 1, !dbg !2132, !tbaa !576
  br label %568, !dbg !2132

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2135
  call void @llvm.dbg.value(metadata i64 %569, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1698
  br label %570, !dbg !2136

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1795
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %578, metadata !1646, metadata !DIExpression()), !dbg !1698
  %580 = icmp ult i64 %578, %571, !dbg !2137
  br i1 %580, label %581, label %583, !dbg !2140

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2137
  store i8 %572, i8* %582, align 1, !dbg !2137, !tbaa !576
  br label %583, !dbg !2137

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2140
  call void @llvm.dbg.value(metadata i64 %584, metadata !1646, metadata !DIExpression()), !dbg !1698
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2141
  call void @llvm.dbg.value(metadata i8 poison, metadata !1653, metadata !DIExpression()), !dbg !1698
  br label %586, !dbg !2142

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2087
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1698
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1702
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2098
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %593, metadata !1660, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 poison, metadata !1654, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1653, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %589, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %588, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %587, metadata !1639, metadata !DIExpression()), !dbg !1698
  %595 = add i64 %593, 1, !dbg !2143
  call void @llvm.dbg.value(metadata i64 %595, metadata !1660, metadata !DIExpression()), !dbg !1787
  br label %132, !dbg !2144, !llvm.loop !2145

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1637, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1653, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 poison, metadata !1652, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 undef, metadata !1647, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 undef, metadata !1646, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 undef, metadata !1639, metadata !DIExpression()), !dbg !1698
  %597 = icmp eq i64 %134, 0, !dbg !2147
  %598 = and i1 %126, %597, !dbg !2149
  %599 = and i1 %598, %119, !dbg !2149
  br i1 %599, label %638, label %600, !dbg !2149

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2150
  %602 = or i1 %119, %601, !dbg !2150
  %603 = xor i1 %136, true, !dbg !2150
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2150
  br i1 %604, label %612, label %605, !dbg !2150

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2152

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2154
  br label %653, !dbg !2156

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2157
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2159
  br i1 %611, label %36, label %612, !dbg !2159

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2160
  %615 = or i1 %614, %613, !dbg !2162
  br i1 %615, label %631, label %616, !dbg !2162

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1648, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %134, metadata !1646, metadata !DIExpression()), !dbg !1698
  %617 = load i8, i8* %116, align 1, !dbg !2163, !tbaa !576
  %618 = icmp eq i8 %617, 0, !dbg !2166
  br i1 %618, label %631, label %619, !dbg !2166

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1648, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %622, metadata !1646, metadata !DIExpression()), !dbg !1698
  %623 = icmp ult i64 %622, %140, !dbg !2167
  br i1 %623, label %624, label %626, !dbg !2170

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2167
  store i8 %620, i8* %625, align 1, !dbg !2167, !tbaa !576
  br label %626, !dbg !2167

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2170
  call void @llvm.dbg.value(metadata i64 %627, metadata !1646, metadata !DIExpression()), !dbg !1698
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2171
  call void @llvm.dbg.value(metadata i8* %628, metadata !1648, metadata !DIExpression()), !dbg !1698
  %629 = load i8, i8* %628, align 1, !dbg !2163, !tbaa !576
  %630 = icmp eq i8 %629, 0, !dbg !2166
  br i1 %630, label %631, label %619, !dbg !2166, !llvm.loop !2172

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1774
  call void @llvm.dbg.value(metadata i64 %632, metadata !1646, metadata !DIExpression()), !dbg !1698
  %633 = icmp ult i64 %632, %140, !dbg !2174
  br i1 %633, label %634, label %653, !dbg !2176

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2177
  store i8 0, i8* %635, align 1, !dbg !2178, !tbaa !576
  br label %653, !dbg !2177

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1697), !dbg !2004
  %637 = icmp eq i32 %112, 2, !dbg !2179
  br i1 %637, label %643, label %647, !dbg !2005

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1697), !dbg !2004
  %641 = icmp eq i32 %112, 2, !dbg !2179
  %642 = select i1 %118, i32 4, i32 2, !dbg !2005
  br i1 %641, label %643, label %647, !dbg !2005

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2005

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1640, metadata !DIExpression()), !dbg !1698
  %651 = and i32 %5, -3, !dbg !2180
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2181
  br label %653, !dbg !2182

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2183
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2184 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2186 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2190, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i64 %1, metadata !2191, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2192, metadata !DIExpression()), !dbg !2193
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()) #35, !dbg !2207
  call void @llvm.dbg.value(metadata i64 %1, metadata !2199, metadata !DIExpression()) #35, !dbg !2207
  call void @llvm.dbg.value(metadata i64* null, metadata !2200, metadata !DIExpression()) #35, !dbg !2207
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2201, metadata !DIExpression()) #35, !dbg !2207
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2209
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2202, metadata !DIExpression()) #35, !dbg !2207
  %6 = tail call i32* @__errno_location() #38, !dbg !2210
  %7 = load i32, i32* %6, align 4, !dbg !2210, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %7, metadata !2203, metadata !DIExpression()) #35, !dbg !2207
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2211
  %9 = load i32, i32* %8, align 4, !dbg !2211, !tbaa !1580
  %10 = or i32 %9, 1, !dbg !2212
  call void @llvm.dbg.value(metadata i32 %10, metadata !2204, metadata !DIExpression()) #35, !dbg !2207
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2213
  %12 = load i32, i32* %11, align 8, !dbg !2213, !tbaa !1529
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2214
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2215
  %15 = load i8*, i8** %14, align 8, !dbg !2215, !tbaa !1602
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2216
  %17 = load i8*, i8** %16, align 8, !dbg !2216, !tbaa !1605
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2217
  %19 = add i64 %18, 1, !dbg !2218
  call void @llvm.dbg.value(metadata i64 %19, metadata !2205, metadata !DIExpression()) #35, !dbg !2207
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %20, metadata !2206, metadata !DIExpression()) #35, !dbg !2207
  %21 = load i32, i32* %11, align 8, !dbg !2220, !tbaa !1529
  %22 = load i8*, i8** %14, align 8, !dbg !2221, !tbaa !1602
  %23 = load i8*, i8** %16, align 8, !dbg !2222, !tbaa !1605
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2223
  store i32 %7, i32* %6, align 4, !dbg !2224, !tbaa !567
  ret i8* %20, !dbg !2225
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2195 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2194, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64 %1, metadata !2199, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i64* %2, metadata !2200, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2201, metadata !DIExpression()), !dbg !2226
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2227
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2202, metadata !DIExpression()), !dbg !2226
  %7 = tail call i32* @__errno_location() #38, !dbg !2228
  %8 = load i32, i32* %7, align 4, !dbg !2228, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %8, metadata !2203, metadata !DIExpression()), !dbg !2226
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2229
  %10 = load i32, i32* %9, align 4, !dbg !2229, !tbaa !1580
  %11 = icmp eq i64* %2, null, !dbg !2230
  %12 = zext i1 %11 to i32, !dbg !2230
  %13 = or i32 %10, %12, !dbg !2231
  call void @llvm.dbg.value(metadata i32 %13, metadata !2204, metadata !DIExpression()), !dbg !2226
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2232
  %15 = load i32, i32* %14, align 8, !dbg !2232, !tbaa !1529
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2233
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2234
  %18 = load i8*, i8** %17, align 8, !dbg !2234, !tbaa !1602
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2235
  %20 = load i8*, i8** %19, align 8, !dbg !2235, !tbaa !1605
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2236
  %22 = add i64 %21, 1, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %22, metadata !2205, metadata !DIExpression()), !dbg !2226
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !2238
  call void @llvm.dbg.value(metadata i8* %23, metadata !2206, metadata !DIExpression()), !dbg !2226
  %24 = load i32, i32* %14, align 8, !dbg !2239, !tbaa !1529
  %25 = load i8*, i8** %17, align 8, !dbg !2240, !tbaa !1602
  %26 = load i8*, i8** %19, align 8, !dbg !2241, !tbaa !1605
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2242
  store i32 %8, i32* %7, align 4, !dbg !2243, !tbaa !567
  br i1 %11, label %29, label %28, !dbg !2244

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2245, !tbaa !2247
  br label %29, !dbg !2248

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2249
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2250 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2255, !tbaa !473
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2252, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 1, metadata !2253, metadata !DIExpression()), !dbg !2257
  %2 = load i32, i32* @nslots, align 4, !tbaa !567
  call void @llvm.dbg.value(metadata i32 1, metadata !2253, metadata !DIExpression()), !dbg !2257
  %3 = icmp sgt i32 %2, 1, !dbg !2258
  br i1 %3, label %4, label %6, !dbg !2260

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2258
  br label %10, !dbg !2260

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2261
  %8 = load i8*, i8** %7, align 8, !dbg !2261, !tbaa !2263
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2265
  br i1 %9, label %17, label %16, !dbg !2266

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2253, metadata !DIExpression()), !dbg !2257
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2267
  %13 = load i8*, i8** %12, align 8, !dbg !2267, !tbaa !2263
  tail call void @free(i8* noundef %13) #35, !dbg !2268
  %14 = add nuw nsw i64 %11, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %14, metadata !2253, metadata !DIExpression()), !dbg !2257
  %15 = icmp eq i64 %14, %5, !dbg !2258
  br i1 %15, label %6, label %10, !dbg !2260, !llvm.loop !2270

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2272
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2274, !tbaa !2275
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2276, !tbaa !2263
  br label %17, !dbg !2277

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2278
  br i1 %18, label %21, label %19, !dbg !2280

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2281
  tail call void @free(i8* noundef %20) #35, !dbg !2283
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2284, !tbaa !473
  br label %21, !dbg !2285

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2286, !tbaa !567
  ret void, !dbg !2287
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2288 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2290, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !2291, metadata !DIExpression()), !dbg !2292
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2293
  ret i8* %3, !dbg !2294
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2295 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2299, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %1, metadata !2300, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i64 %2, metadata !2301, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2302, metadata !DIExpression()), !dbg !2315
  %6 = tail call i32* @__errno_location() #38, !dbg !2316
  %7 = load i32, i32* %6, align 4, !dbg !2316, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %7, metadata !2303, metadata !DIExpression()), !dbg !2315
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2317, !tbaa !473
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2304, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2305, metadata !DIExpression()), !dbg !2315
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2318
  br i1 %9, label %10, label %11, !dbg !2318

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2320
  unreachable, !dbg !2320

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2321, !tbaa !567
  %13 = icmp sgt i32 %12, %0, !dbg !2322
  br i1 %13, label %36, label %14, !dbg !2323

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2324
  call void @llvm.dbg.value(metadata i1 %15, metadata !2306, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2325
  %16 = bitcast i64* %5 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2326
  %17 = sext i32 %12 to i64, !dbg !2327
  call void @llvm.dbg.value(metadata i64 %17, metadata !2309, metadata !DIExpression()), !dbg !2325
  store i64 %17, i64* %5, align 8, !dbg !2328, !tbaa !2247
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2329
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2329
  %20 = add nuw nsw i32 %0, 1, !dbg !2330
  %21 = sub i32 %20, %12, !dbg !2331
  %22 = sext i32 %21 to i64, !dbg !2332
  call void @llvm.dbg.value(metadata i64* %5, metadata !2309, metadata !DIExpression(DW_OP_deref)), !dbg !2325
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2333
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2333
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2304, metadata !DIExpression()), !dbg !2315
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2334, !tbaa !473
  br i1 %15, label %25, label %26, !dbg !2335

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2336, !tbaa.struct !2338
  br label %26, !dbg !2339

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2340, !tbaa !567
  %28 = sext i32 %27 to i64, !dbg !2341
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2341
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2342
  %31 = load i64, i64* %5, align 8, !dbg !2343, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %31, metadata !2309, metadata !DIExpression()), !dbg !2325
  %32 = sub nsw i64 %31, %28, !dbg !2344
  %33 = shl i64 %32, 4, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %30, metadata !1732, metadata !DIExpression()) #35, !dbg !2346
  call void @llvm.dbg.value(metadata i32 0, metadata !1735, metadata !DIExpression()) #35, !dbg !2346
  call void @llvm.dbg.value(metadata i64 %33, metadata !1736, metadata !DIExpression()) #35, !dbg !2346
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2348
  %34 = load i64, i64* %5, align 8, !dbg !2349, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %34, metadata !2309, metadata !DIExpression()), !dbg !2325
  %35 = trunc i64 %34 to i32, !dbg !2349
  store i32 %35, i32* @nslots, align 4, !dbg !2350, !tbaa !567
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2351
  br label %36, !dbg !2352

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2315
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2304, metadata !DIExpression()), !dbg !2315
  %38 = zext i32 %0 to i64, !dbg !2353
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2354
  %40 = load i64, i64* %39, align 8, !dbg !2354, !tbaa !2275
  call void @llvm.dbg.value(metadata i64 %40, metadata !2310, metadata !DIExpression()), !dbg !2355
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2356
  %42 = load i8*, i8** %41, align 8, !dbg !2356, !tbaa !2263
  call void @llvm.dbg.value(metadata i8* %42, metadata !2312, metadata !DIExpression()), !dbg !2355
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2357
  %44 = load i32, i32* %43, align 4, !dbg !2357, !tbaa !1580
  %45 = or i32 %44, 1, !dbg !2358
  call void @llvm.dbg.value(metadata i32 %45, metadata !2313, metadata !DIExpression()), !dbg !2355
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2359
  %47 = load i32, i32* %46, align 8, !dbg !2359, !tbaa !1529
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2360
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2361
  %50 = load i8*, i8** %49, align 8, !dbg !2361, !tbaa !1602
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2362
  %52 = load i8*, i8** %51, align 8, !dbg !2362, !tbaa !1605
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %53, metadata !2314, metadata !DIExpression()), !dbg !2355
  %54 = icmp ugt i64 %40, %53, !dbg !2364
  br i1 %54, label %65, label %55, !dbg !2366

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2367
  call void @llvm.dbg.value(metadata i64 %56, metadata !2310, metadata !DIExpression()), !dbg !2355
  store i64 %56, i64* %39, align 8, !dbg !2369, !tbaa !2275
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2370
  br i1 %57, label %59, label %58, !dbg !2372

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2373
  br label %59, !dbg !2373

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %60, metadata !2312, metadata !DIExpression()), !dbg !2355
  store i8* %60, i8** %41, align 8, !dbg !2375, !tbaa !2263
  %61 = load i32, i32* %46, align 8, !dbg !2376, !tbaa !1529
  %62 = load i8*, i8** %49, align 8, !dbg !2377, !tbaa !1602
  %63 = load i8*, i8** %51, align 8, !dbg !2378, !tbaa !1605
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2379
  br label %65, !dbg !2380

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2355
  call void @llvm.dbg.value(metadata i8* %66, metadata !2312, metadata !DIExpression()), !dbg !2355
  store i32 %7, i32* %6, align 4, !dbg !2381, !tbaa !567
  ret i8* %66, !dbg !2382
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2383 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2387, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i8* %1, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %2, metadata !2389, metadata !DIExpression()), !dbg !2390
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2391
  ret i8* %4, !dbg !2392
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2393 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2395, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 0, metadata !2290, metadata !DIExpression()) #35, !dbg !2397
  call void @llvm.dbg.value(metadata i8* %0, metadata !2291, metadata !DIExpression()) #35, !dbg !2397
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2399
  ret i8* %2, !dbg !2400
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i64 %1, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2387, metadata !DIExpression()) #35, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()) #35, !dbg !2408
  call void @llvm.dbg.value(metadata i64 %1, metadata !2389, metadata !DIExpression()) #35, !dbg !2408
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2410
  ret i8* %3, !dbg !2411
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2412 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32 %1, metadata !2417, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()), !dbg !2420
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2421
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2421
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2419, metadata !DIExpression()), !dbg !2422
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2423), !dbg !2426
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()) #35, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression()) #35, !dbg !2435
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2435, !alias.scope !2423
  %6 = icmp eq i32 %1, 10, !dbg !2436
  br i1 %6, label %7, label %8, !dbg !2438

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2439, !noalias !2423
  unreachable, !dbg !2439

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2440
  store i32 %1, i32* %9, align 8, !dbg !2441, !tbaa !1529, !alias.scope !2423
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2442
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2443
  ret i8* %10, !dbg !2444
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2445 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i8* %2, metadata !2451, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i64 %3, metadata !2452, metadata !DIExpression()), !dbg !2454
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2455
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2455
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2453, metadata !DIExpression()), !dbg !2456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457), !dbg !2460
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()) #35, !dbg !2461
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2432, metadata !DIExpression()) #35, !dbg !2463
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2463, !alias.scope !2457
  %7 = icmp eq i32 %1, 10, !dbg !2464
  br i1 %7, label %8, label %9, !dbg !2465

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2466, !noalias !2457
  unreachable, !dbg !2466

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2467
  store i32 %1, i32* %10, align 8, !dbg !2468, !tbaa !1529, !alias.scope !2457
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2470
  ret i8* %11, !dbg !2471
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2472 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i8* %1, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 0, metadata !2416, metadata !DIExpression()) #35, !dbg !2479
  call void @llvm.dbg.value(metadata i32 %0, metadata !2417, metadata !DIExpression()) #35, !dbg !2479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()) #35, !dbg !2479
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2481
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2481
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2419, metadata !DIExpression()) #35, !dbg !2482
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483) #35, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()) #35, !dbg !2487
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2432, metadata !DIExpression()) #35, !dbg !2489
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2489, !alias.scope !2483
  %5 = icmp eq i32 %0, 10, !dbg !2490
  br i1 %5, label %6, label %7, !dbg !2491

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2492, !noalias !2483
  unreachable, !dbg !2492

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2493
  store i32 %0, i32* %8, align 8, !dbg !2494, !tbaa !1529, !alias.scope !2483
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2496
  ret i8* %9, !dbg !2497
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2498 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2502, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i8* %1, metadata !2503, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i64 %2, metadata !2504, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()) #35, !dbg !2506
  call void @llvm.dbg.value(metadata i32 %0, metadata !2450, metadata !DIExpression()) #35, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %1, metadata !2451, metadata !DIExpression()) #35, !dbg !2506
  call void @llvm.dbg.value(metadata i64 %2, metadata !2452, metadata !DIExpression()) #35, !dbg !2506
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2508
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2453, metadata !DIExpression()) #35, !dbg !2509
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2510) #35, !dbg !2513
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()) #35, !dbg !2514
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2432, metadata !DIExpression()) #35, !dbg !2516
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2516, !alias.scope !2510
  %6 = icmp eq i32 %0, 10, !dbg !2517
  br i1 %6, label %7, label %8, !dbg !2518

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2519, !noalias !2510
  unreachable, !dbg !2519

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2520
  store i32 %0, i32* %9, align 8, !dbg !2521, !tbaa !1529, !alias.scope !2510
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2522
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2523
  ret i8* %10, !dbg !2524
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2525 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 %2, metadata !2531, metadata !DIExpression()), !dbg !2533
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2534
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2534
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2532, metadata !DIExpression()), !dbg !2535
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2536, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1547, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %2, metadata !1548, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !2538
  call void @llvm.dbg.value(metadata i8 %2, metadata !1550, metadata !DIExpression()), !dbg !2538
  %6 = lshr i8 %2, 5, !dbg !2540
  %7 = zext i8 %6 to i64, !dbg !2540
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2541
  call void @llvm.dbg.value(metadata i32* %8, metadata !1551, metadata !DIExpression()), !dbg !2538
  %9 = and i8 %2, 31, !dbg !2542
  %10 = zext i8 %9 to i32, !dbg !2542
  call void @llvm.dbg.value(metadata i32 %10, metadata !1553, metadata !DIExpression()), !dbg !2538
  %11 = load i32, i32* %8, align 4, !dbg !2543, !tbaa !567
  %12 = lshr i32 %11, %10, !dbg !2544
  %13 = and i32 %12, 1, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %13, metadata !1554, metadata !DIExpression()), !dbg !2538
  %14 = xor i32 %13, 1, !dbg !2546
  %15 = shl i32 %14, %10, !dbg !2547
  %16 = xor i32 %15, %11, !dbg !2548
  store i32 %16, i32* %8, align 4, !dbg !2548, !tbaa !567
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2549
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2550
  ret i8* %17, !dbg !2551
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2552 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8 %1, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()) #35, !dbg !2559
  call void @llvm.dbg.value(metadata i64 -1, metadata !2530, metadata !DIExpression()) #35, !dbg !2559
  call void @llvm.dbg.value(metadata i8 %1, metadata !2531, metadata !DIExpression()) #35, !dbg !2559
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2561
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2532, metadata !DIExpression()) #35, !dbg !2562
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2563, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1547, metadata !DIExpression()) #35, !dbg !2564
  call void @llvm.dbg.value(metadata i8 %1, metadata !1548, metadata !DIExpression()) #35, !dbg !2564
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #35, !dbg !2564
  call void @llvm.dbg.value(metadata i8 %1, metadata !1550, metadata !DIExpression()) #35, !dbg !2564
  %5 = lshr i8 %1, 5, !dbg !2566
  %6 = zext i8 %5 to i64, !dbg !2566
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2567
  call void @llvm.dbg.value(metadata i32* %7, metadata !1551, metadata !DIExpression()) #35, !dbg !2564
  %8 = and i8 %1, 31, !dbg !2568
  %9 = zext i8 %8 to i32, !dbg !2568
  call void @llvm.dbg.value(metadata i32 %9, metadata !1553, metadata !DIExpression()) #35, !dbg !2564
  %10 = load i32, i32* %7, align 4, !dbg !2569, !tbaa !567
  %11 = lshr i32 %10, %9, !dbg !2570
  %12 = and i32 %11, 1, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %12, metadata !1554, metadata !DIExpression()) #35, !dbg !2564
  %13 = xor i32 %12, 1, !dbg !2572
  %14 = shl i32 %13, %9, !dbg !2573
  %15 = xor i32 %14, %10, !dbg !2574
  store i32 %15, i32* %7, align 4, !dbg !2574, !tbaa !567
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2576
  ret i8* %16, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2578 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()) #35, !dbg !2582
  call void @llvm.dbg.value(metadata i8 58, metadata !2557, metadata !DIExpression()) #35, !dbg !2582
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()) #35, !dbg !2584
  call void @llvm.dbg.value(metadata i64 -1, metadata !2530, metadata !DIExpression()) #35, !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !2531, metadata !DIExpression()) #35, !dbg !2584
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2586
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2586
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2532, metadata !DIExpression()) #35, !dbg !2587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2588, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1547, metadata !DIExpression()) #35, !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()) #35, !dbg !2589
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #35, !dbg !2589
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()) #35, !dbg !2589
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2591
  call void @llvm.dbg.value(metadata i32* %4, metadata !1551, metadata !DIExpression()) #35, !dbg !2589
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()) #35, !dbg !2589
  %5 = load i32, i32* %4, align 4, !dbg !2592, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %5, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2589
  %6 = or i32 %5, 67108864, !dbg !2593
  store i32 %6, i32* %4, align 4, !dbg !2593, !tbaa !567
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !2594
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !2595
  ret i8* %7, !dbg !2596
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2597 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2599, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i64 %1, metadata !2600, metadata !DIExpression()), !dbg !2601
  call void @llvm.dbg.value(metadata i8* %0, metadata !2529, metadata !DIExpression()) #35, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %1, metadata !2530, metadata !DIExpression()) #35, !dbg !2602
  call void @llvm.dbg.value(metadata i8 58, metadata !2531, metadata !DIExpression()) #35, !dbg !2602
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2604
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2604
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2532, metadata !DIExpression()) #35, !dbg !2605
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !2606, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1547, metadata !DIExpression()) #35, !dbg !2607
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()) #35, !dbg !2607
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()) #35, !dbg !2607
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()) #35, !dbg !2607
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2609
  call void @llvm.dbg.value(metadata i32* %5, metadata !1551, metadata !DIExpression()) #35, !dbg !2607
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()) #35, !dbg !2607
  %6 = load i32, i32* %5, align 4, !dbg !2610, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %6, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !2607
  %7 = or i32 %6, 67108864, !dbg !2611
  store i32 %7, i32* %5, align 4, !dbg !2611, !tbaa !567
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2613
  ret i8* %8, !dbg !2614
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2615 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2617, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i32 %1, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2619, metadata !DIExpression()), !dbg !2621
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2622
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()) #35, !dbg !2624
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  %6 = icmp eq i32 %1, 10, !dbg !2626
  br i1 %6, label %7, label %8, !dbg !2627

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2628, !noalias !2629
  unreachable, !dbg !2628

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2432, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2624
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2632
  store i32 %1, i32* %9, align 8, !dbg !2632, !tbaa.struct !2537
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2632
  %11 = bitcast i32* %10 to i8*, !dbg !2632
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2632
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1547, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1548, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !1549, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i8 58, metadata !1550, metadata !DIExpression()), !dbg !2633
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2635
  call void @llvm.dbg.value(metadata i32* %12, metadata !1551, metadata !DIExpression()), !dbg !2633
  call void @llvm.dbg.value(metadata i32 26, metadata !1553, metadata !DIExpression()), !dbg !2633
  %13 = load i32, i32* %12, align 4, !dbg !2636, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %13, metadata !1554, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2633
  %14 = or i32 %13, 67108864, !dbg !2637
  store i32 %14, i32* %12, align 4, !dbg !2637, !tbaa !567
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2638
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2639
  ret i8* %15, !dbg !2640
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2641 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %1, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i8* %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %3, metadata !2657, metadata !DIExpression()) #35, !dbg !2660
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()) #35, !dbg !2660
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2662
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2662
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2659, metadata !DIExpression()) #35, !dbg !2663
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2664, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #35, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()) #35, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()) #35, !dbg !2665
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #35, !dbg !2665
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2667
  store i32 10, i32* %7, align 8, !dbg !2668, !tbaa !1529
  %8 = icmp ne i8* %1, null, !dbg !2669
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2670
  br i1 %10, label %12, label %11, !dbg !2670

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2671
  unreachable, !dbg !2671

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2672
  store i8* %1, i8** %13, align 8, !dbg !2673, !tbaa !1602
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2674
  store i8* %2, i8** %14, align 8, !dbg !2675, !tbaa !1605
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2677
  ret i8* %15, !dbg !2678
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2651 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2650, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %1, metadata !2655, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %2, metadata !2656, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i8* %3, metadata !2657, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 %4, metadata !2658, metadata !DIExpression()), !dbg !2679
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2680
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2680
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2659, metadata !DIExpression()), !dbg !2681
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2682, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1587, metadata !DIExpression()) #35, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %1, metadata !1588, metadata !DIExpression()) #35, !dbg !2683
  call void @llvm.dbg.value(metadata i8* %2, metadata !1589, metadata !DIExpression()) #35, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1587, metadata !DIExpression()) #35, !dbg !2683
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2685
  store i32 10, i32* %8, align 8, !dbg !2686, !tbaa !1529
  %9 = icmp ne i8* %1, null, !dbg !2687
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2688
  br i1 %11, label %13, label %12, !dbg !2688

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !2689
  unreachable, !dbg !2689

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2690
  store i8* %1, i8** %14, align 8, !dbg !2691, !tbaa !1602
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2692
  store i8* %2, i8** %15, align 8, !dbg !2693, !tbaa !1605
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2694
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !2695
  ret i8* %16, !dbg !2696
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2697 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2701, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %1, metadata !2702, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i8* %2, metadata !2703, metadata !DIExpression()), !dbg !2704
  call void @llvm.dbg.value(metadata i32 0, metadata !2645, metadata !DIExpression()) #35, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %0, metadata !2646, metadata !DIExpression()) #35, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %1, metadata !2647, metadata !DIExpression()) #35, !dbg !2705
  call void @llvm.dbg.value(metadata i8* %2, metadata !2648, metadata !DIExpression()) #35, !dbg !2705
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #35, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #35, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()) #35, !dbg !2707
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()) #35, !dbg !2707
  call void @llvm.dbg.value(metadata i64 -1, metadata !2658, metadata !DIExpression()) #35, !dbg !2707
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2709
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2709
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2659, metadata !DIExpression()) #35, !dbg !2710
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2711, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1587, metadata !DIExpression()) #35, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()) #35, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()) #35, !dbg !2712
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1587, metadata !DIExpression()) #35, !dbg !2712
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2714
  store i32 10, i32* %6, align 8, !dbg !2715, !tbaa !1529
  %7 = icmp ne i8* %0, null, !dbg !2716
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2717
  br i1 %9, label %11, label %10, !dbg !2717

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2718
  unreachable, !dbg !2718

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2719
  store i8* %0, i8** %12, align 8, !dbg !2720, !tbaa !1602
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2721
  store i8* %1, i8** %13, align 8, !dbg !2722, !tbaa !1605
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2724
  ret i8* %14, !dbg !2725
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2726 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %1, metadata !2731, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8* %2, metadata !2732, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %3, metadata !2733, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i32 0, metadata !2650, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %0, metadata !2655, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %1, metadata !2656, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i8* %2, metadata !2657, metadata !DIExpression()) #35, !dbg !2735
  call void @llvm.dbg.value(metadata i64 %3, metadata !2658, metadata !DIExpression()) #35, !dbg !2735
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2737
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2737
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2659, metadata !DIExpression()) #35, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !2739, !tbaa.struct !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #35, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()) #35, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !1589, metadata !DIExpression()) #35, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1587, metadata !DIExpression()) #35, !dbg !2740
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2742
  store i32 10, i32* %7, align 8, !dbg !2743, !tbaa !1529
  %8 = icmp ne i8* %0, null, !dbg !2744
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2745
  br i1 %10, label %12, label %11, !dbg !2745

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2746
  unreachable, !dbg !2746

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2747
  store i8* %0, i8** %13, align 8, !dbg !2748, !tbaa !1602
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2749
  store i8* %1, i8** %14, align 8, !dbg !2750, !tbaa !1605
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !2751
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2752
  ret i8* %15, !dbg !2753
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2754 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.value(metadata i64 %2, metadata !2760, metadata !DIExpression()), !dbg !2761
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2762
  ret i8* %4, !dbg !2763
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2764 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i64 %1, metadata !2769, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()) #35, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #35, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2760, metadata !DIExpression()) #35, !dbg !2771
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !2773
  ret i8* %3, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2775 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2779, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8* %1, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i32 %0, metadata !2758, metadata !DIExpression()) #35, !dbg !2782
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()) #35, !dbg !2782
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()) #35, !dbg !2782
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !2784
  ret i8* %3, !dbg !2785
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2786 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.value(metadata i32 0, metadata !2779, metadata !DIExpression()) #35, !dbg !2792
  call void @llvm.dbg.value(metadata i8* %0, metadata !2780, metadata !DIExpression()) #35, !dbg !2792
  call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()) #35, !dbg !2794
  call void @llvm.dbg.value(metadata i8* %0, metadata !2759, metadata !DIExpression()) #35, !dbg !2794
  call void @llvm.dbg.value(metadata i64 -1, metadata !2760, metadata !DIExpression()) #35, !dbg !2794
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !2796
  ret i8* %2, !dbg !2797
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2798 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2837, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %1, metadata !2838, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %2, metadata !2839, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %3, metadata !2840, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8** %4, metadata !2841, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i64 %5, metadata !2842, metadata !DIExpression()), !dbg !2843
  %7 = icmp eq i8* %1, null, !dbg !2844
  br i1 %7, label %10, label %8, !dbg !2846

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !2847
  br label %12, !dbg !2847

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.96, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !2848
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.98, i64 0, i64 0), i32 noundef 5) #35, !dbg !2849
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !2849
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.99, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2850
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.100, i64 0, i64 0), i32 noundef 5) #35, !dbg !2851
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.101, i64 0, i64 0)) #35, !dbg !2851
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.99, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2852
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
  ], !dbg !2853

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.102, i64 0, i64 0), i32 noundef 5) #35, !dbg !2854
  %21 = load i8*, i8** %4, align 8, !dbg !2854, !tbaa !473
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !2854
  br label %147, !dbg !2856

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.103, i64 0, i64 0), i32 noundef 5) #35, !dbg !2857
  %25 = load i8*, i8** %4, align 8, !dbg !2857, !tbaa !473
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2857
  %27 = load i8*, i8** %26, align 8, !dbg !2857, !tbaa !473
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !2857
  br label %147, !dbg !2858

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.104, i64 0, i64 0), i32 noundef 5) #35, !dbg !2859
  %31 = load i8*, i8** %4, align 8, !dbg !2859, !tbaa !473
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2859
  %33 = load i8*, i8** %32, align 8, !dbg !2859, !tbaa !473
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2859
  %35 = load i8*, i8** %34, align 8, !dbg !2859, !tbaa !473
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !2859
  br label %147, !dbg !2860

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.105, i64 0, i64 0), i32 noundef 5) #35, !dbg !2861
  %39 = load i8*, i8** %4, align 8, !dbg !2861, !tbaa !473
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2861
  %41 = load i8*, i8** %40, align 8, !dbg !2861, !tbaa !473
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2861
  %43 = load i8*, i8** %42, align 8, !dbg !2861, !tbaa !473
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2861
  %45 = load i8*, i8** %44, align 8, !dbg !2861, !tbaa !473
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !2861
  br label %147, !dbg !2862

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.106, i64 0, i64 0), i32 noundef 5) #35, !dbg !2863
  %49 = load i8*, i8** %4, align 8, !dbg !2863, !tbaa !473
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2863
  %51 = load i8*, i8** %50, align 8, !dbg !2863, !tbaa !473
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2863
  %53 = load i8*, i8** %52, align 8, !dbg !2863, !tbaa !473
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2863
  %55 = load i8*, i8** %54, align 8, !dbg !2863, !tbaa !473
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2863
  %57 = load i8*, i8** %56, align 8, !dbg !2863, !tbaa !473
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !2863
  br label %147, !dbg !2864

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.107, i64 0, i64 0), i32 noundef 5) #35, !dbg !2865
  %61 = load i8*, i8** %4, align 8, !dbg !2865, !tbaa !473
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2865
  %63 = load i8*, i8** %62, align 8, !dbg !2865, !tbaa !473
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2865
  %65 = load i8*, i8** %64, align 8, !dbg !2865, !tbaa !473
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2865
  %67 = load i8*, i8** %66, align 8, !dbg !2865, !tbaa !473
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2865
  %69 = load i8*, i8** %68, align 8, !dbg !2865, !tbaa !473
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2865
  %71 = load i8*, i8** %70, align 8, !dbg !2865, !tbaa !473
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !2865
  br label %147, !dbg !2866

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.108, i64 0, i64 0), i32 noundef 5) #35, !dbg !2867
  %75 = load i8*, i8** %4, align 8, !dbg !2867, !tbaa !473
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2867
  %77 = load i8*, i8** %76, align 8, !dbg !2867, !tbaa !473
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2867
  %79 = load i8*, i8** %78, align 8, !dbg !2867, !tbaa !473
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2867
  %81 = load i8*, i8** %80, align 8, !dbg !2867, !tbaa !473
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2867
  %83 = load i8*, i8** %82, align 8, !dbg !2867, !tbaa !473
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2867
  %85 = load i8*, i8** %84, align 8, !dbg !2867, !tbaa !473
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2867
  %87 = load i8*, i8** %86, align 8, !dbg !2867, !tbaa !473
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !2867
  br label %147, !dbg !2868

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.109, i64 0, i64 0), i32 noundef 5) #35, !dbg !2869
  %91 = load i8*, i8** %4, align 8, !dbg !2869, !tbaa !473
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2869
  %93 = load i8*, i8** %92, align 8, !dbg !2869, !tbaa !473
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2869
  %95 = load i8*, i8** %94, align 8, !dbg !2869, !tbaa !473
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2869
  %97 = load i8*, i8** %96, align 8, !dbg !2869, !tbaa !473
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2869
  %99 = load i8*, i8** %98, align 8, !dbg !2869, !tbaa !473
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2869
  %101 = load i8*, i8** %100, align 8, !dbg !2869, !tbaa !473
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2869
  %103 = load i8*, i8** %102, align 8, !dbg !2869, !tbaa !473
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2869
  %105 = load i8*, i8** %104, align 8, !dbg !2869, !tbaa !473
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !2869
  br label %147, !dbg !2870

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.110, i64 0, i64 0), i32 noundef 5) #35, !dbg !2871
  %109 = load i8*, i8** %4, align 8, !dbg !2871, !tbaa !473
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2871
  %111 = load i8*, i8** %110, align 8, !dbg !2871, !tbaa !473
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2871
  %113 = load i8*, i8** %112, align 8, !dbg !2871, !tbaa !473
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2871
  %115 = load i8*, i8** %114, align 8, !dbg !2871, !tbaa !473
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2871
  %117 = load i8*, i8** %116, align 8, !dbg !2871, !tbaa !473
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2871
  %119 = load i8*, i8** %118, align 8, !dbg !2871, !tbaa !473
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2871
  %121 = load i8*, i8** %120, align 8, !dbg !2871, !tbaa !473
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2871
  %123 = load i8*, i8** %122, align 8, !dbg !2871, !tbaa !473
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2871
  %125 = load i8*, i8** %124, align 8, !dbg !2871, !tbaa !473
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !2871
  br label %147, !dbg !2872

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.111, i64 0, i64 0), i32 noundef 5) #35, !dbg !2873
  %129 = load i8*, i8** %4, align 8, !dbg !2873, !tbaa !473
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2873
  %131 = load i8*, i8** %130, align 8, !dbg !2873, !tbaa !473
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2873
  %133 = load i8*, i8** %132, align 8, !dbg !2873, !tbaa !473
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2873
  %135 = load i8*, i8** %134, align 8, !dbg !2873, !tbaa !473
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2873
  %137 = load i8*, i8** %136, align 8, !dbg !2873, !tbaa !473
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2873
  %139 = load i8*, i8** %138, align 8, !dbg !2873, !tbaa !473
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2873
  %141 = load i8*, i8** %140, align 8, !dbg !2873, !tbaa !473
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2873
  %143 = load i8*, i8** %142, align 8, !dbg !2873, !tbaa !473
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2873
  %145 = load i8*, i8** %144, align 8, !dbg !2873, !tbaa !473
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !2873
  br label %147, !dbg !2874

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2875
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2876 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2880, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %1, metadata !2881, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %2, metadata !2882, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8* %3, metadata !2883, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i8** %4, metadata !2884, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.value(metadata i64 0, metadata !2885, metadata !DIExpression()), !dbg !2886
  br label %6, !dbg !2887

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2889
  call void @llvm.dbg.value(metadata i64 %7, metadata !2885, metadata !DIExpression()), !dbg !2886
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2890
  %9 = load i8*, i8** %8, align 8, !dbg !2890, !tbaa !473
  %10 = icmp eq i8* %9, null, !dbg !2892
  %11 = add i64 %7, 1, !dbg !2893
  call void @llvm.dbg.value(metadata i64 %11, metadata !2885, metadata !DIExpression()), !dbg !2886
  br i1 %10, label %12, label %6, !dbg !2892, !llvm.loop !2894

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2896
  ret void, !dbg !2897
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2898 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2913, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2914, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2915, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %3, metadata !2916, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2917, metadata !DIExpression()), !dbg !2922
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2923
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !2923
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2919, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i64 0, metadata !2918, metadata !DIExpression()), !dbg !2921
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2918, metadata !DIExpression()), !dbg !2921
  %11 = load i32, i32* %8, align 8, !dbg !2925
  %12 = icmp sgt i32 %11, -1, !dbg !2925
  br i1 %12, label %20, label %13, !dbg !2925

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2925
  store i32 %14, i32* %8, align 8, !dbg !2925
  %15 = icmp ult i32 %11, -7, !dbg !2925
  br i1 %15, label %16, label %20, !dbg !2925

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2925
  %18 = sext i32 %11 to i64, !dbg !2925
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2925
  br label %24, !dbg !2925

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2925
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2925
  store i8* %23, i8** %10, align 8, !dbg !2925
  br label %24, !dbg !2925

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2925
  %28 = load i8*, i8** %27, align 8, !dbg !2925
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2928
  store i8* %28, i8** %29, align 8, !dbg !2929, !tbaa !473
  %30 = icmp eq i8* %28, null, !dbg !2930
  br i1 %30, label %210, label %31, !dbg !2931

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 1, metadata !2918, metadata !DIExpression()), !dbg !2921
  %32 = icmp sgt i32 %25, -1, !dbg !2925
  br i1 %32, label %40, label %33, !dbg !2925

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2925
  store i32 %34, i32* %8, align 8, !dbg !2925
  %35 = icmp ult i32 %25, -7, !dbg !2925
  br i1 %35, label %36, label %40, !dbg !2925

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2925
  %38 = sext i32 %25 to i64, !dbg !2925
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2925
  br label %44, !dbg !2925

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2925
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2925
  store i8* %43, i8** %10, align 8, !dbg !2925
  br label %44, !dbg !2925

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2925
  %48 = load i8*, i8** %47, align 8, !dbg !2925
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2928
  store i8* %48, i8** %49, align 8, !dbg !2929, !tbaa !473
  %50 = icmp eq i8* %48, null, !dbg !2930
  br i1 %50, label %210, label %51, !dbg !2931

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 2, metadata !2918, metadata !DIExpression()), !dbg !2921
  %52 = icmp sgt i32 %45, -1, !dbg !2925
  br i1 %52, label %60, label %53, !dbg !2925

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2925
  store i32 %54, i32* %8, align 8, !dbg !2925
  %55 = icmp ult i32 %45, -7, !dbg !2925
  br i1 %55, label %56, label %60, !dbg !2925

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2925
  %58 = sext i32 %45 to i64, !dbg !2925
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2925
  br label %64, !dbg !2925

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2925
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2925
  store i8* %63, i8** %10, align 8, !dbg !2925
  br label %64, !dbg !2925

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2925
  %68 = load i8*, i8** %67, align 8, !dbg !2925
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2928
  store i8* %68, i8** %69, align 8, !dbg !2929, !tbaa !473
  %70 = icmp eq i8* %68, null, !dbg !2930
  br i1 %70, label %210, label %71, !dbg !2931

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 3, metadata !2918, metadata !DIExpression()), !dbg !2921
  %72 = icmp sgt i32 %65, -1, !dbg !2925
  br i1 %72, label %80, label %73, !dbg !2925

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2925
  store i32 %74, i32* %8, align 8, !dbg !2925
  %75 = icmp ult i32 %65, -7, !dbg !2925
  br i1 %75, label %76, label %80, !dbg !2925

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2925
  %78 = sext i32 %65 to i64, !dbg !2925
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2925
  br label %84, !dbg !2925

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2925
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2925
  store i8* %83, i8** %10, align 8, !dbg !2925
  br label %84, !dbg !2925

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2925
  %88 = load i8*, i8** %87, align 8, !dbg !2925
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2928
  store i8* %88, i8** %89, align 8, !dbg !2929, !tbaa !473
  %90 = icmp eq i8* %88, null, !dbg !2930
  br i1 %90, label %210, label %91, !dbg !2931

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 4, metadata !2918, metadata !DIExpression()), !dbg !2921
  %92 = icmp sgt i32 %85, -1, !dbg !2925
  br i1 %92, label %100, label %93, !dbg !2925

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2925
  store i32 %94, i32* %8, align 8, !dbg !2925
  %95 = icmp ult i32 %85, -7, !dbg !2925
  br i1 %95, label %96, label %100, !dbg !2925

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2925
  %98 = sext i32 %85 to i64, !dbg !2925
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2925
  br label %104, !dbg !2925

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2925
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2925
  store i8* %103, i8** %10, align 8, !dbg !2925
  br label %104, !dbg !2925

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2925
  %108 = load i8*, i8** %107, align 8, !dbg !2925
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2928
  store i8* %108, i8** %109, align 8, !dbg !2929, !tbaa !473
  %110 = icmp eq i8* %108, null, !dbg !2930
  br i1 %110, label %210, label %111, !dbg !2931

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 5, metadata !2918, metadata !DIExpression()), !dbg !2921
  %112 = icmp sgt i32 %105, -1, !dbg !2925
  br i1 %112, label %120, label %113, !dbg !2925

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2925
  store i32 %114, i32* %8, align 8, !dbg !2925
  %115 = icmp ult i32 %105, -7, !dbg !2925
  br i1 %115, label %116, label %120, !dbg !2925

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2925
  %118 = sext i32 %105 to i64, !dbg !2925
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2925
  br label %124, !dbg !2925

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2925
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2925
  store i8* %123, i8** %10, align 8, !dbg !2925
  br label %124, !dbg !2925

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2925
  %128 = load i8*, i8** %127, align 8, !dbg !2925
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2928
  store i8* %128, i8** %129, align 8, !dbg !2929, !tbaa !473
  %130 = icmp eq i8* %128, null, !dbg !2930
  br i1 %130, label %210, label %131, !dbg !2931

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 6, metadata !2918, metadata !DIExpression()), !dbg !2921
  %132 = icmp sgt i32 %125, -1, !dbg !2925
  br i1 %132, label %140, label %133, !dbg !2925

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2925
  store i32 %134, i32* %8, align 8, !dbg !2925
  %135 = icmp ult i32 %125, -7, !dbg !2925
  br i1 %135, label %136, label %140, !dbg !2925

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2925
  %138 = sext i32 %125 to i64, !dbg !2925
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2925
  br label %144, !dbg !2925

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2925
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2925
  store i8* %143, i8** %10, align 8, !dbg !2925
  br label %144, !dbg !2925

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2925
  %148 = load i8*, i8** %147, align 8, !dbg !2925
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2928
  store i8* %148, i8** %149, align 8, !dbg !2929, !tbaa !473
  %150 = icmp eq i8* %148, null, !dbg !2930
  br i1 %150, label %210, label %151, !dbg !2931

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 7, metadata !2918, metadata !DIExpression()), !dbg !2921
  %152 = icmp sgt i32 %145, -1, !dbg !2925
  br i1 %152, label %160, label %153, !dbg !2925

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2925
  store i32 %154, i32* %8, align 8, !dbg !2925
  %155 = icmp ult i32 %145, -7, !dbg !2925
  br i1 %155, label %156, label %160, !dbg !2925

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2925
  %158 = sext i32 %145 to i64, !dbg !2925
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2925
  br label %164, !dbg !2925

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2925
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2925
  store i8* %163, i8** %10, align 8, !dbg !2925
  br label %164, !dbg !2925

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2925
  %168 = load i8*, i8** %167, align 8, !dbg !2925
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2928
  store i8* %168, i8** %169, align 8, !dbg !2929, !tbaa !473
  %170 = icmp eq i8* %168, null, !dbg !2930
  br i1 %170, label %210, label %171, !dbg !2931

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 8, metadata !2918, metadata !DIExpression()), !dbg !2921
  %172 = icmp sgt i32 %165, -1, !dbg !2925
  br i1 %172, label %180, label %173, !dbg !2925

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2925
  store i32 %174, i32* %8, align 8, !dbg !2925
  %175 = icmp ult i32 %165, -7, !dbg !2925
  br i1 %175, label %176, label %180, !dbg !2925

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2925
  %178 = sext i32 %165 to i64, !dbg !2925
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2925
  br label %184, !dbg !2925

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2925
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2925
  store i8* %183, i8** %10, align 8, !dbg !2925
  br label %184, !dbg !2925

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2925
  %188 = load i8*, i8** %187, align 8, !dbg !2925
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2928
  store i8* %188, i8** %189, align 8, !dbg !2929, !tbaa !473
  %190 = icmp eq i8* %188, null, !dbg !2930
  br i1 %190, label %210, label %191, !dbg !2931

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i64 9, metadata !2918, metadata !DIExpression()), !dbg !2921
  %192 = icmp sgt i32 %185, -1, !dbg !2925
  br i1 %192, label %200, label %193, !dbg !2925

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2925
  store i32 %194, i32* %8, align 8, !dbg !2925
  %195 = icmp ult i32 %185, -7, !dbg !2925
  br i1 %195, label %196, label %200, !dbg !2925

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2925
  %198 = sext i32 %185 to i64, !dbg !2925
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2925
  br label %203, !dbg !2925

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2925
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2925
  store i8* %202, i8** %10, align 8, !dbg !2925
  br label %203, !dbg !2925

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2925
  %206 = load i8*, i8** %205, align 8, !dbg !2925
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2928
  store i8* %206, i8** %207, align 8, !dbg !2929, !tbaa !473
  %208 = icmp eq i8* %206, null, !dbg !2930
  %209 = select i1 %208, i64 9, i64 10, !dbg !2931
  br label %210, !dbg !2931

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2932
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2933
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !2934
  ret void, !dbg !2934
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2935 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata i8* %3, metadata !2942, metadata !DIExpression()), !dbg !2944
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2945
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2945
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2943, metadata !DIExpression()), !dbg !2946
  call void @llvm.va_start(i8* nonnull %7), !dbg !2947
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2948
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2948
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2948, !tbaa.struct !940
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2948
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !2948
  call void @llvm.va_end(i8* nonnull %7), !dbg !2949
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !2950
  ret void, !dbg !2950
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2951 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2952, !tbaa !473
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.99, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2952
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.116, i64 0, i64 0), i32 noundef 5) #35, !dbg !2953
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.117, i64 0, i64 0)) #35, !dbg !2953
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.118, i64 0, i64 0), i32 noundef 5) #35, !dbg !2954
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.120, i64 0, i64 0)) #35, !dbg !2954
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.97, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.121, i64 0, i64 0), i32 noundef 5) #35, !dbg !2955
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.122, i64 0, i64 0)) #35, !dbg !2955
  ret void, !dbg !2956
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !2957 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2962, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %1, metadata !2963, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i64 %2, metadata !2964, metadata !DIExpression()), !dbg !2965
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #35, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()) #35, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()) #35, !dbg !2971
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #35, !dbg !2979
  %5 = icmp eq i8* %4, null, !dbg !2981
  br i1 %5, label %6, label %7, !dbg !2983

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2984
  unreachable, !dbg !2984

7:                                                ; preds = %3
  ret i8* %4, !dbg !2985
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !2967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()), !dbg !2986
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !2987
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #35, !dbg !2988
  %5 = icmp eq i8* %4, null, !dbg !2990
  br i1 %5, label %6, label %7, !dbg !2991

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !2992
  unreachable, !dbg !2992

7:                                                ; preds = %3
  ret i8* %4, !dbg !2993
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !2994 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()), !dbg !2999
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #35, !dbg !3001
  %3 = icmp eq i8* %2, null, !dbg !3003
  br i1 %3, label %4, label %5, !dbg !3004

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3005
  unreachable, !dbg !3005

5:                                                ; preds = %1
  ret i8* %2, !dbg !3006
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3007 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3011, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %0, metadata !3013, metadata !DIExpression()) #35, !dbg !3017
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3019
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #35, !dbg !3020
  %3 = icmp eq i8* %2, null, !dbg !3022
  br i1 %3, label %4, label %5, !dbg !3023

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3024
  unreachable, !dbg !3024

5:                                                ; preds = %1
  ret i8* %2, !dbg !3025
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3026 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3030, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %0, metadata !2998, metadata !DIExpression()) #35, !dbg !3032
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #35, !dbg !3035
  %3 = icmp eq i8* %2, null, !dbg !3037
  br i1 %3, label %4, label %5, !dbg !3038

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3039
  unreachable, !dbg !3039

5:                                                ; preds = %1
  ret i8* %2, !dbg !3040
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3041 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %1, metadata !3046, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3048, metadata !DIExpression()) #35, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()) #35, !dbg !3053
  %3 = icmp eq i64 %1, 0, !dbg !3055
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3055
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %5, metadata !2974, metadata !DIExpression()) #35, !dbg !3057
  %6 = icmp eq i8* %5, null, !dbg !3059
  br i1 %6, label %7, label %8, !dbg !3060

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3061
  unreachable, !dbg !3061

8:                                                ; preds = %2
  ret i8* %5, !dbg !3062
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3063 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3070, metadata !DIExpression()) #35, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %1, metadata !3073, metadata !DIExpression()) #35, !dbg !3074
  call void @llvm.dbg.value(metadata i8* %0, metadata !3048, metadata !DIExpression()) #35, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()) #35, !dbg !3076
  %3 = icmp eq i64 %1, 0, !dbg !3078
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3078
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %5, metadata !2974, metadata !DIExpression()) #35, !dbg !3080
  %6 = icmp eq i8* %5, null, !dbg !3082
  br i1 %6, label %7, label %8, !dbg !3083

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3084
  unreachable, !dbg !3084

8:                                                ; preds = %2
  ret i8* %5, !dbg !3085
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !3086 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %2, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()) #35, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()) #35, !dbg !3099
  call void @llvm.dbg.value(metadata i64 %2, metadata !3098, metadata !DIExpression()) #35, !dbg !3099
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3101
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #35, !dbg !3102
  %5 = icmp eq i8* %4, null, !dbg !3104
  br i1 %5, label %6, label %7, !dbg !3105

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3106
  unreachable, !dbg !3106

7:                                                ; preds = %3
  ret i8* %4, !dbg !3107
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3108 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3112, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i64 %1, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.value(metadata i8* null, metadata !2966, metadata !DIExpression()) #35, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()) #35, !dbg !3115
  call void @llvm.dbg.value(metadata i64 %1, metadata !2970, metadata !DIExpression()) #35, !dbg !3115
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3117
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3118
  %4 = icmp eq i8* %3, null, !dbg !3120
  br i1 %4, label %5, label %6, !dbg !3121

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3122
  unreachable, !dbg !3122

6:                                                ; preds = %2
  ret i8* %3, !dbg !3123
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3124 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3128, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %1, metadata !3129, metadata !DIExpression()), !dbg !3130
  call void @llvm.dbg.value(metadata i8* null, metadata !3090, metadata !DIExpression()) #35, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %0, metadata !3091, metadata !DIExpression()) #35, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()) #35, !dbg !3131
  call void @llvm.dbg.value(metadata i8* null, metadata !3094, metadata !DIExpression()) #35, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %0, metadata !3097, metadata !DIExpression()) #35, !dbg !3133
  call void @llvm.dbg.value(metadata i64 %1, metadata !3098, metadata !DIExpression()) #35, !dbg !3133
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3135
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3136
  %4 = icmp eq i8* %3, null, !dbg !3138
  br i1 %4, label %5, label %6, !dbg !3139

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3140
  unreachable, !dbg !3140

6:                                                ; preds = %2
  ret i8* %3, !dbg !3141
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3142 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3146, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64* %1, metadata !3147, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()) #35, !dbg !3149
  call void @llvm.dbg.value(metadata i64* %1, metadata !407, metadata !DIExpression()) #35, !dbg !3149
  call void @llvm.dbg.value(metadata i64 1, metadata !408, metadata !DIExpression()) #35, !dbg !3149
  %3 = load i64, i64* %1, align 8, !dbg !3151, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %3, metadata !409, metadata !DIExpression()) #35, !dbg !3149
  %4 = icmp eq i8* %0, null, !dbg !3152
  br i1 %4, label %5, label %8, !dbg !3154

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3155
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3158
  br label %15, !dbg !3158

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3159
  %10 = add nuw i64 %9, 1, !dbg !3159
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3159
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3159
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %13, metadata !409, metadata !DIExpression()) #35, !dbg !3149
  br i1 %12, label %14, label %15, !dbg !3162

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3163
  unreachable, !dbg !3163

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3149
  call void @llvm.dbg.value(metadata i64 %16, metadata !409, metadata !DIExpression()) #35, !dbg !3149
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i64 %16, metadata !2969, metadata !DIExpression()) #35, !dbg !3164
  call void @llvm.dbg.value(metadata i64 1, metadata !2970, metadata !DIExpression()) #35, !dbg !3164
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !3166
  call void @llvm.dbg.value(metadata i8* %17, metadata !2974, metadata !DIExpression()) #35, !dbg !3167
  %18 = icmp eq i8* %17, null, !dbg !3169
  br i1 %18, label %19, label %20, !dbg !3170

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !3171
  unreachable, !dbg !3171

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !406, metadata !DIExpression()) #35, !dbg !3149
  store i64 %16, i64* %1, align 8, !dbg !3172, !tbaa !2247
  ret i8* %17, !dbg !3173
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64* %1, metadata !407, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i64 %2, metadata !408, metadata !DIExpression()), !dbg !3174
  %4 = load i64, i64* %1, align 8, !dbg !3175, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %4, metadata !409, metadata !DIExpression()), !dbg !3174
  %5 = icmp eq i8* %0, null, !dbg !3176
  br i1 %5, label %6, label %13, !dbg !3177

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3178
  br i1 %7, label %8, label %20, !dbg !3179

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %9, metadata !409, metadata !DIExpression()), !dbg !3174
  %10 = icmp ugt i64 %2, 128, !dbg !3182
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %12, metadata !409, metadata !DIExpression()), !dbg !3174
  br label %20, !dbg !3184

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3185
  %15 = add nuw i64 %14, 1, !dbg !3185
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3185
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3185
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3185
  call void @llvm.dbg.value(metadata i64 %18, metadata !409, metadata !DIExpression()), !dbg !3174
  br i1 %17, label %19, label %20, !dbg !3186

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !3187
  unreachable, !dbg !3187

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3174
  call void @llvm.dbg.value(metadata i64 %21, metadata !409, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()) #35, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %21, metadata !2969, metadata !DIExpression()) #35, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()) #35, !dbg !3188
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %22, metadata !2974, metadata !DIExpression()) #35, !dbg !3191
  %23 = icmp eq i8* %22, null, !dbg !3193
  br i1 %23, label %24, label %25, !dbg !3194

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !3195
  unreachable, !dbg !3195

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !406, metadata !DIExpression()), !dbg !3174
  store i64 %21, i64* %1, align 8, !dbg !3196, !tbaa !2247
  ret i8* %22, !dbg !3197
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !421, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64* %1, metadata !422, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !423, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %3, metadata !424, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %4, metadata !425, metadata !DIExpression()), !dbg !3198
  %6 = load i64, i64* %1, align 8, !dbg !3199, !tbaa !2247
  call void @llvm.dbg.value(metadata i64 %6, metadata !426, metadata !DIExpression()), !dbg !3198
  %7 = ashr i64 %6, 1, !dbg !3200
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3200
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3200
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %10, metadata !427, metadata !DIExpression()), !dbg !3198
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3202
  call void @llvm.dbg.value(metadata i64 %11, metadata !427, metadata !DIExpression()), !dbg !3198
  %12 = icmp sgt i64 %3, -1, !dbg !3203
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3205
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %15, metadata !427, metadata !DIExpression()), !dbg !3198
  %16 = icmp slt i64 %4, 0, !dbg !3206
  br i1 %16, label %17, label %30, !dbg !3206

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3206
  br i1 %18, label %19, label %24, !dbg !3206

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3206
  %21 = udiv i64 9223372036854775807, %20, !dbg !3206
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3206
  br i1 %23, label %46, label %43, !dbg !3206

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3206
  br i1 %25, label %43, label %26, !dbg !3206

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3206
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3206
  %29 = icmp ult i64 %28, %15, !dbg !3206
  br i1 %29, label %46, label %43, !dbg !3206

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3206
  br i1 %31, label %43, label %32, !dbg !3206

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3206
  br i1 %33, label %34, label %40, !dbg !3206

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3206
  br i1 %35, label %43, label %36, !dbg !3206

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3206
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3206
  %39 = icmp ult i64 %38, %4, !dbg !3206
  br i1 %39, label %46, label %43, !dbg !3206

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3206
  %42 = icmp ult i64 %41, %15, !dbg !3206
  br i1 %42, label %46, label %43, !dbg !3206

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !428, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  %44 = mul i64 %15, %4, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %44, metadata !428, metadata !DIExpression()), !dbg !3198
  %45 = icmp slt i64 %44, 128, !dbg !3206
  br i1 %45, label %46, label %52, !dbg !3206

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !429, metadata !DIExpression()), !dbg !3198
  %48 = sdiv i64 %47, %4, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %48, metadata !427, metadata !DIExpression()), !dbg !3198
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3210
  call void @llvm.dbg.value(metadata i64 %51, metadata !428, metadata !DIExpression()), !dbg !3198
  br label %52, !dbg !3211

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3198
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3198
  call void @llvm.dbg.value(metadata i64 %54, metadata !428, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %53, metadata !427, metadata !DIExpression()), !dbg !3198
  %55 = icmp eq i8* %0, null, !dbg !3212
  br i1 %55, label %56, label %57, !dbg !3214

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3215, !tbaa !2247
  br label %57, !dbg !3216

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3217
  %59 = icmp slt i64 %58, %2, !dbg !3219
  br i1 %59, label %60, label %97, !dbg !3220

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3221
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3221
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %63, metadata !427, metadata !DIExpression()), !dbg !3198
  br i1 %62, label %96, label %64, !dbg !3222

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3223
  br i1 %66, label %96, label %67, !dbg !3223

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3224

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3224
  br i1 %69, label %70, label %75, !dbg !3224

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3224
  %72 = udiv i64 9223372036854775807, %71, !dbg !3224
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3224
  br i1 %74, label %96, label %94, !dbg !3224

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3224
  br i1 %76, label %94, label %77, !dbg !3224

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3224
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3224
  %80 = icmp ult i64 %79, %63, !dbg !3224
  br i1 %80, label %96, label %94, !dbg !3224

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3224
  br i1 %82, label %94, label %83, !dbg !3224

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3224
  br i1 %84, label %85, label %91, !dbg !3224

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3224
  br i1 %86, label %94, label %87, !dbg !3224

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3224
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3224
  %90 = icmp ult i64 %89, %4, !dbg !3224
  br i1 %90, label %96, label %94, !dbg !3224

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3224
  %93 = icmp ult i64 %92, %63, !dbg !3224
  br i1 %93, label %96, label %94, !dbg !3224

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !428, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  %95 = mul i64 %63, %4, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %95, metadata !428, metadata !DIExpression()), !dbg !3198
  br label %97, !dbg !3225

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !3226
  unreachable, !dbg !3226

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3198
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3198
  call void @llvm.dbg.value(metadata i64 %99, metadata !428, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %98, metadata !427, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !3045, metadata !DIExpression()) #35, !dbg !3227
  call void @llvm.dbg.value(metadata i64 %99, metadata !3046, metadata !DIExpression()) #35, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %0, metadata !3048, metadata !DIExpression()) #35, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %99, metadata !3052, metadata !DIExpression()) #35, !dbg !3229
  %100 = icmp eq i64 %99, 0, !dbg !3231
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3231
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !3232
  call void @llvm.dbg.value(metadata i8* %102, metadata !2974, metadata !DIExpression()) #35, !dbg !3233
  %103 = icmp eq i8* %102, null, !dbg !3235
  br i1 %103, label %104, label %105, !dbg !3236

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !3237
  unreachable, !dbg !3237

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !421, metadata !DIExpression()), !dbg !3198
  store i64 %98, i64* %1, align 8, !dbg !3238, !tbaa !2247
  ret i8* %102, !dbg !3239
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3240 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()) #35, !dbg !3248
  call void @llvm.dbg.value(metadata i64 1, metadata !3247, metadata !DIExpression()) #35, !dbg !3248
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3250
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #35, !dbg !3251
  %3 = icmp eq i8* %2, null, !dbg !3253
  br i1 %3, label %4, label %5, !dbg !3254

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3255
  unreachable, !dbg !3255

5:                                                ; preds = %1
  ret i8* %2, !dbg !3256
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3245 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i64 %1, metadata !3247, metadata !DIExpression()), !dbg !3257
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3259
  %4 = icmp eq i8* %3, null, !dbg !3261
  br i1 %4, label %5, label %6, !dbg !3262

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3263
  unreachable, !dbg !3263

6:                                                ; preds = %2
  ret i8* %3, !dbg !3264
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !3265 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3267, metadata !DIExpression()), !dbg !3268
  call void @llvm.dbg.value(metadata i64 %0, metadata !3269, metadata !DIExpression()) #35, !dbg !3273
  call void @llvm.dbg.value(metadata i64 1, metadata !3272, metadata !DIExpression()) #35, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %0, metadata !3275, metadata !DIExpression()) #35, !dbg !3279
  call void @llvm.dbg.value(metadata i64 1, metadata !3278, metadata !DIExpression()) #35, !dbg !3279
  call void @llvm.dbg.value(metadata i64 %0, metadata !3275, metadata !DIExpression()) #35, !dbg !3279
  call void @llvm.dbg.value(metadata i64 1, metadata !3278, metadata !DIExpression()) #35, !dbg !3279
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !3281
  call void @llvm.dbg.value(metadata i8* %2, metadata !2974, metadata !DIExpression()) #35, !dbg !3282
  %3 = icmp eq i8* %2, null, !dbg !3284
  br i1 %3, label %4, label %5, !dbg !3285

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3286
  unreachable, !dbg !3286

5:                                                ; preds = %1
  ret i8* %2, !dbg !3287
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3270 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3269, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3272, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i64 %0, metadata !3275, metadata !DIExpression()) #35, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()) #35, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %0, metadata !3275, metadata !DIExpression()) #35, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %1, metadata !3278, metadata !DIExpression()) #35, !dbg !3289
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !3291
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3292
  %4 = icmp eq i8* %3, null, !dbg !3294
  br i1 %4, label %5, label %6, !dbg !3295

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3296
  unreachable, !dbg !3296

6:                                                ; preds = %2
  ret i8* %3, !dbg !3297
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3298 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3302, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !3303, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #35, !dbg !3305
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3307
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3308
  %4 = icmp eq i8* %3, null, !dbg !3310
  br i1 %4, label %5, label %6, !dbg !3311

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3312
  unreachable, !dbg !3312

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3313, metadata !DIExpression()) #35, !dbg !3318
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()) #35, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()) #35, !dbg !3318
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3320
  ret i8* %3, !dbg !3321
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3011, metadata !DIExpression()) #35, !dbg !3329
  call void @llvm.dbg.value(metadata i64 %1, metadata !3013, metadata !DIExpression()) #35, !dbg !3331
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %3, metadata !2974, metadata !DIExpression()) #35, !dbg !3334
  %4 = icmp eq i8* %3, null, !dbg !3336
  br i1 %4, label %5, label %6, !dbg !3337

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3338
  unreachable, !dbg !3338

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3313, metadata !DIExpression()) #35, !dbg !3339
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()) #35, !dbg !3339
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()) #35, !dbg !3339
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3341
  ret i8* %3, !dbg !3342
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3343 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3347, metadata !DIExpression()), !dbg !3350
  call void @llvm.dbg.value(metadata i64 %1, metadata !3348, metadata !DIExpression()), !dbg !3350
  %3 = add nsw i64 %1, 1, !dbg !3351
  call void @llvm.dbg.value(metadata i64 %3, metadata !3011, metadata !DIExpression()) #35, !dbg !3352
  call void @llvm.dbg.value(metadata i64 %3, metadata !3013, metadata !DIExpression()) #35, !dbg !3354
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #35, !dbg !3357
  %5 = icmp eq i8* %4, null, !dbg !3359
  br i1 %5, label %6, label %7, !dbg !3360

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3361
  unreachable, !dbg !3361

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3349, metadata !DIExpression()), !dbg !3350
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3362
  store i8 0, i8* %8, align 1, !dbg !3363, !tbaa !576
  call void @llvm.dbg.value(metadata i8* %4, metadata !3313, metadata !DIExpression()) #35, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()) #35, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %1, metadata !3317, metadata !DIExpression()) #35, !dbg !3364
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !3366
  ret i8* %4, !dbg !3367
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3368 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3372
  %3 = add i64 %2, 1, !dbg !3373
  call void @llvm.dbg.value(metadata i8* %0, metadata !3302, metadata !DIExpression()) #35, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !3303, metadata !DIExpression()) #35, !dbg !3374
  call void @llvm.dbg.value(metadata i64 %3, metadata !2998, metadata !DIExpression()) #35, !dbg !3376
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !3378
  call void @llvm.dbg.value(metadata i8* %4, metadata !2974, metadata !DIExpression()) #35, !dbg !3379
  %5 = icmp eq i8* %4, null, !dbg !3381
  br i1 %5, label %6, label %7, !dbg !3382

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3383
  unreachable, !dbg !3383

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3313, metadata !DIExpression()) #35, !dbg !3384
  call void @llvm.dbg.value(metadata i8* %0, metadata !3316, metadata !DIExpression()) #35, !dbg !3384
  call void @llvm.dbg.value(metadata i64 %3, metadata !3317, metadata !DIExpression()) #35, !dbg !3384
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !3386
  ret i8* %4, !dbg !3387
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3388 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3392, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %1, metadata !3390, metadata !DIExpression()), !dbg !3393
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.133, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.134, i64 0, i64 0), i32 noundef 5) #35, !dbg !3392
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.135, i64 0, i64 0), i8* noundef %2) #35, !dbg !3392
  %3 = icmp eq i32 %1, 0, !dbg !3392
  tail call void @llvm.assume(i1 %3), !dbg !3392
  tail call void @abort() #37, !dbg !3394
  unreachable, !dbg !3394
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #21 !dbg !3395 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3397, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %0, metadata !3398, metadata !DIExpression()), !dbg !3402
  br label %2, !dbg !3403

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3402
  call void @llvm.dbg.value(metadata i8* %3, metadata !3398, metadata !DIExpression()), !dbg !3402
  %4 = load i8, i8* %3, align 1, !dbg !3404, !tbaa !576
  %5 = icmp eq i8 %4, 47, !dbg !3404
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3405
  call void @llvm.dbg.value(metadata i8* %6, metadata !3398, metadata !DIExpression()), !dbg !3402
  br i1 %5, label %2, label %7, !dbg !3403, !llvm.loop !3406

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3407
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !3409
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !3410
  call void @llvm.dbg.value(metadata i8* %11, metadata !3400, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i8 poison, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %9, metadata !3398, metadata !DIExpression()), !dbg !3402
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3411

12:                                               ; preds = %7
  ret i8* %9, !dbg !3412

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !3413
  br label %15, !dbg !3413

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !3402
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3399, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.value(metadata i8* %16, metadata !3398, metadata !DIExpression()), !dbg !3402
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3416
  call void @llvm.dbg.value(metadata i8* %18, metadata !3400, metadata !DIExpression()), !dbg !3410
  %19 = load i8, i8* %18, align 1, !dbg !3407, !tbaa !576
  br label %7, !dbg !3417, !llvm.loop !3418
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #32 !dbg !3420 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3424, metadata !DIExpression()), !dbg !3427
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %2, metadata !3425, metadata !DIExpression()), !dbg !3427
  %3 = icmp ne i64 %2, 0, !dbg !3430
  %4 = zext i1 %3 to i64, !dbg !3430
  br label %5, !dbg !3430

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3431
  call void @llvm.dbg.value(metadata i64 %6, metadata !3425, metadata !DIExpression()), !dbg !3427
  %7 = icmp ugt i64 %6, 1, !dbg !3432
  br i1 %7, label %8, label %13, !dbg !3434

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3435
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3435
  %11 = load i8, i8* %10, align 1, !dbg !3435, !tbaa !576
  %12 = icmp eq i8 %11, 47, !dbg !3435
  br i1 %12, label %5, label %13, !dbg !3436, !llvm.loop !3437

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3431
  call void @llvm.dbg.value(metadata i64 0, metadata !3426, metadata !DIExpression()), !dbg !3427
  ret i64 %14, !dbg !3439
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3440 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3478, metadata !DIExpression()), !dbg !3483
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !3484
  call void @llvm.dbg.value(metadata i1 undef, metadata !3479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3483
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3485, metadata !DIExpression()), !dbg !3488
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3490
  %4 = load i32, i32* %3, align 8, !dbg !3490, !tbaa !827
  %5 = and i32 %4, 32, !dbg !3491
  %6 = icmp eq i32 %5, 0, !dbg !3491
  call void @llvm.dbg.value(metadata i1 %6, metadata !3481, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3483
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !3492
  %8 = icmp eq i32 %7, 0, !dbg !3493
  call void @llvm.dbg.value(metadata i1 %8, metadata !3482, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3483
  br i1 %6, label %9, label %19, !dbg !3494

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3496
  call void @llvm.dbg.value(metadata i1 %10, metadata !3479, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3483
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3497
  %12 = xor i1 %8, true, !dbg !3497
  %13 = sext i1 %12 to i32, !dbg !3497
  br i1 %11, label %22, label %14, !dbg !3497

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !3498
  %16 = load i32, i32* %15, align 4, !dbg !3498, !tbaa !567
  %17 = icmp ne i32 %16, 9, !dbg !3499
  %18 = sext i1 %17 to i32, !dbg !3500
  br label %22, !dbg !3500

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3501

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !3503
  store i32 0, i32* %21, align 4, !dbg !3505, !tbaa !567
  br label %22, !dbg !3503

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3483
  ret i32 %23, !dbg !3506
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3507 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3545, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 0, metadata !3546, metadata !DIExpression()), !dbg !3549
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3550
  call void @llvm.dbg.value(metadata i32 %2, metadata !3547, metadata !DIExpression()), !dbg !3549
  %3 = icmp slt i32 %2, 0, !dbg !3551
  br i1 %3, label %4, label %6, !dbg !3553

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3554
  br label %24, !dbg !3555

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3556
  %8 = icmp eq i32 %7, 0, !dbg !3556
  br i1 %8, label %13, label %9, !dbg !3558

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3559
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !3560
  %12 = icmp eq i64 %11, -1, !dbg !3561
  br i1 %12, label %16, label %13, !dbg !3562

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3563
  %15 = icmp eq i32 %14, 0, !dbg !3563
  br i1 %15, label %16, label %18, !dbg !3564

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3546, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3549
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3565
  call void @llvm.dbg.value(metadata i32 %21, metadata !3548, metadata !DIExpression()), !dbg !3549
  br label %24, !dbg !3566

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !3567
  %20 = load i32, i32* %19, align 4, !dbg !3567, !tbaa !567
  call void @llvm.dbg.value(metadata i32 %20, metadata !3546, metadata !DIExpression()), !dbg !3549
  call void @llvm.dbg.value(metadata i32 0, metadata !3548, metadata !DIExpression()), !dbg !3549
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3565
  call void @llvm.dbg.value(metadata i32 %21, metadata !3548, metadata !DIExpression()), !dbg !3549
  %22 = icmp eq i32 %20, 0, !dbg !3568
  br i1 %22, label %24, label %23, !dbg !3566

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3570, !tbaa !567
  call void @llvm.dbg.value(metadata i32 -1, metadata !3548, metadata !DIExpression()), !dbg !3549
  br label %24, !dbg !3572

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3549
  ret i32 %25, !dbg !3573
}

; Function Attrs: nofree nounwind
declare !dbg !3574 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3575 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3576 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3579 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3617, metadata !DIExpression()), !dbg !3618
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3619
  br i1 %2, label %6, label %3, !dbg !3621

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3622
  %5 = icmp eq i32 %4, 0, !dbg !3622
  br i1 %5, label %6, label %8, !dbg !3623

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3624
  br label %17, !dbg !3625

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3626, metadata !DIExpression()) #35, !dbg !3631
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3633
  %10 = load i32, i32* %9, align 8, !dbg !3633, !tbaa !827
  %11 = and i32 %10, 256, !dbg !3635
  %12 = icmp eq i32 %11, 0, !dbg !3635
  br i1 %12, label %15, label %13, !dbg !3636

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !3637
  br label %15, !dbg !3637

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3638
  br label %17, !dbg !3639

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3618
  ret i32 %18, !dbg !3640
}

; Function Attrs: nofree nounwind
declare !dbg !3641 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3642 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3681, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i64 %1, metadata !3682, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.value(metadata i32 %2, metadata !3683, metadata !DIExpression()), !dbg !3687
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3688
  %5 = load i8*, i8** %4, align 8, !dbg !3688, !tbaa !3689
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3690
  %7 = load i8*, i8** %6, align 8, !dbg !3690, !tbaa !3691
  %8 = icmp eq i8* %5, %7, !dbg !3692
  br i1 %8, label %9, label %28, !dbg !3693

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3694
  %11 = load i8*, i8** %10, align 8, !dbg !3694, !tbaa !1052
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3695
  %13 = load i8*, i8** %12, align 8, !dbg !3695, !tbaa !3696
  %14 = icmp eq i8* %11, %13, !dbg !3697
  br i1 %14, label %15, label %28, !dbg !3698

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3699
  %17 = load i8*, i8** %16, align 8, !dbg !3699, !tbaa !3700
  %18 = icmp eq i8* %17, null, !dbg !3701
  br i1 %18, label %19, label %28, !dbg !3702

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !3703
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !3704
  call void @llvm.dbg.value(metadata i64 %21, metadata !3684, metadata !DIExpression()), !dbg !3705
  %22 = icmp eq i64 %21, -1, !dbg !3706
  br i1 %22, label %30, label %23, !dbg !3708

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3709
  %25 = load i32, i32* %24, align 8, !dbg !3710, !tbaa !827
  %26 = and i32 %25, -17, !dbg !3710
  store i32 %26, i32* %24, align 8, !dbg !3710, !tbaa !827
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3711
  store i64 %21, i64* %27, align 8, !dbg !3712, !tbaa !3713
  br label %30, !dbg !3714

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3715
  br label %30, !dbg !3716

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3687
  ret i32 %31, !dbg !3717
}

; Function Attrs: nofree nounwind
declare !dbg !3718 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3721 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3726, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8* %1, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i64 %2, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3729, metadata !DIExpression()), !dbg !3731
  %5 = icmp eq i8* %1, null, !dbg !3732
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3734
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.150, i64 0, i64 0), i8* %1, !dbg !3734
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %8, metadata !3728, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i8* %7, metadata !3727, metadata !DIExpression()), !dbg !3731
  call void @llvm.dbg.value(metadata i32* %6, metadata !3726, metadata !DIExpression()), !dbg !3731
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3735
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3737
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3729, metadata !DIExpression()), !dbg !3731
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #35, !dbg !3738
  call void @llvm.dbg.value(metadata i64 %11, metadata !3730, metadata !DIExpression()), !dbg !3731
  %12 = icmp ult i64 %11, -3, !dbg !3739
  br i1 %12, label %13, label %18, !dbg !3741

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #36, !dbg !3742
  %15 = icmp eq i32 %14, 0, !dbg !3742
  br i1 %15, label %16, label %30, !dbg !3743

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3744, metadata !DIExpression()) #35, !dbg !3749
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3751, metadata !DIExpression()) #35, !dbg !3756
  call void @llvm.dbg.value(metadata i32 0, metadata !3754, metadata !DIExpression()) #35, !dbg !3756
  call void @llvm.dbg.value(metadata i64 8, metadata !3755, metadata !DIExpression()) #35, !dbg !3756
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3758
  store i64 0, i64* %17, align 1, !dbg !3758
  br label %30, !dbg !3759

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3760
  br i1 %19, label %20, label %21, !dbg !3762

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !3763
  unreachable, !dbg !3763

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3764

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !3766
  br i1 %24, label %30, label %25, !dbg !3767

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3768
  br i1 %26, label %30, label %27, !dbg !3771

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3772, !tbaa !576
  %29 = zext i8 %28 to i32, !dbg !3773
  store i32 %29, i32* %6, align 4, !dbg !3774, !tbaa !567
  br label %30, !dbg !3775

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3731
  ret i64 %31, !dbg !3776
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3777 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #33

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !3783 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3785, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %1, metadata !3786, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i64 %2, metadata !3787, metadata !DIExpression()), !dbg !3789
  %4 = icmp eq i64 %2, 0, !dbg !3790
  br i1 %4, label %8, label %5, !dbg !3790

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3790
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3790
  br i1 %7, label %13, label %8, !dbg !3790

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3789
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3789
  %9 = mul i64 %2, %1, !dbg !3790
  call void @llvm.dbg.value(metadata i64 %9, metadata !3788, metadata !DIExpression()), !dbg !3789
  call void @llvm.dbg.value(metadata i8* %0, metadata !3792, metadata !DIExpression()) #35, !dbg !3796
  call void @llvm.dbg.value(metadata i64 %9, metadata !3795, metadata !DIExpression()) #35, !dbg !3796
  %10 = icmp eq i64 %9, 0, !dbg !3798
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3798
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !3799
  br label %15, !dbg !3800

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3788, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3789
  %14 = tail call i32* @__errno_location() #38, !dbg !3801
  store i32 12, i32* %14, align 4, !dbg !3803, !tbaa !567
  br label %15, !dbg !3804

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3789
  ret i8* %16, !dbg !3805
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3806 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3810, metadata !DIExpression()), !dbg !3815
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3816
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !3816
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3811, metadata !DIExpression()), !dbg !3817
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !3818
  %5 = icmp eq i32 %4, 0, !dbg !3818
  br i1 %5, label %6, label %13, !dbg !3820

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3821, metadata !DIExpression()) #35, !dbg !3825
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), metadata !3824, metadata !DIExpression()) #35, !dbg !3825
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.155, i64 0, i64 0), i64 2), !dbg !3828
  %8 = icmp eq i32 %7, 0, !dbg !3829
  br i1 %8, label %12, label %9, !dbg !3830

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3821, metadata !DIExpression()) #35, !dbg !3831
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), metadata !3824, metadata !DIExpression()) #35, !dbg !3831
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.156, i64 0, i64 0), i64 6), !dbg !3833
  %11 = icmp eq i32 %10, 0, !dbg !3834
  br i1 %11, label %12, label %13, !dbg !3835

12:                                               ; preds = %9, %6
  br label %13, !dbg !3836

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3815
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !3837
  ret i1 %14, !dbg !3837
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3838 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3842, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i8* %1, metadata !3843, metadata !DIExpression()), !dbg !3845
  call void @llvm.dbg.value(metadata i64 %2, metadata !3844, metadata !DIExpression()), !dbg !3845
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !3846
  ret i32 %4, !dbg !3847
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3852, metadata !DIExpression()), !dbg !3853
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !3854
  ret i8* %2, !dbg !3855
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3856 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3858, metadata !DIExpression()), !dbg !3860
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !3861
  call void @llvm.dbg.value(metadata i8* %2, metadata !3859, metadata !DIExpression()), !dbg !3860
  ret i8* %2, !dbg !3862
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3863 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3865, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i8* %1, metadata !3866, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i64 %2, metadata !3867, metadata !DIExpression()), !dbg !3872
  call void @llvm.dbg.value(metadata i32 %0, metadata !3858, metadata !DIExpression()) #35, !dbg !3873
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !3875
  call void @llvm.dbg.value(metadata i8* %4, metadata !3859, metadata !DIExpression()) #35, !dbg !3873
  call void @llvm.dbg.value(metadata i8* %4, metadata !3868, metadata !DIExpression()), !dbg !3872
  %5 = icmp eq i8* %4, null, !dbg !3876
  br i1 %5, label %6, label %9, !dbg !3877

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3878
  br i1 %7, label %19, label %8, !dbg !3881

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3882, !tbaa !576
  br label %19, !dbg !3883

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !3884
  call void @llvm.dbg.value(metadata i64 %10, metadata !3869, metadata !DIExpression()), !dbg !3885
  %11 = icmp ult i64 %10, %2, !dbg !3886
  br i1 %11, label %12, label %14, !dbg !3888

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %1, metadata !3891, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i8* %4, metadata !3894, metadata !DIExpression()) #35, !dbg !3896
  call void @llvm.dbg.value(metadata i64 %13, metadata !3895, metadata !DIExpression()) #35, !dbg !3896
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !3898
  br label %19, !dbg !3899

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3900
  br i1 %15, label %19, label %16, !dbg !3903

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3904
  call void @llvm.dbg.value(metadata i8* %1, metadata !3891, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i8* %4, metadata !3894, metadata !DIExpression()) #35, !dbg !3906
  call void @llvm.dbg.value(metadata i64 %17, metadata !3895, metadata !DIExpression()) #35, !dbg !3906
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !3908
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3909
  store i8 0, i8* %18, align 1, !dbg !3910, !tbaa !576
  br label %19, !dbg !3911

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3912
  ret i32 %20, !dbg !3913
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
attributes #13 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nofree nosync nounwind willreturn }
attributes #19 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { argmemonly nofree nounwind willreturn writeonly }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
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

!llvm.dbg.cu = !{!9, !149, !154, !161, !362, !206, !382, !384, !387, !389, !220, !237, !247, !279, !391, !354, !397, !431, !433, !435, !437, !439, !441, !368, !443, !446, !448, !450}
!llvm.ident = !{!452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452, !452}
!llvm.module.flags = !{!453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !2, file: !3, line: 575, type: !58, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "oputs_", scope: !3, file: !3, line: 573, type: !4, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !65)
!3 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !51, globals: !64, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "src/nohup.c", directory: "/src", checksumkind: CSK_MD5, checksum: "62665220fb9257e4a1baafbd9a0ef09b")
!11 = !{!12, !16, !22, !36}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 36, baseType: !13, size: 32, elements: !14)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DIEnumerator(name: "POSIX_NOHUP_FAILURE", value: 127)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 90, baseType: !13, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!19 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!20 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!21 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !23, line: 42, baseType: !13, size: 32, elements: !24)
!23 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!25 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!26 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!27 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!28 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!29 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!30 = !DIEnumerator(name: "c_quoting_style", value: 5)
!31 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!32 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!33 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!34 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!35 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 46, baseType: !13, size: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!39 = !DIEnumerator(name: "_ISupper", value: 256)
!40 = !DIEnumerator(name: "_ISlower", value: 512)
!41 = !DIEnumerator(name: "_ISalpha", value: 1024)
!42 = !DIEnumerator(name: "_ISdigit", value: 2048)
!43 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!44 = !DIEnumerator(name: "_ISspace", value: 8192)
!45 = !DIEnumerator(name: "_ISprint", value: 16384)
!46 = !DIEnumerator(name: "_ISgraph", value: 32768)
!47 = !DIEnumerator(name: "_ISblank", value: 1)
!48 = !DIEnumerator(name: "_IScntrl", value: 2)
!49 = !DIEnumerator(name: "_ISpunct", value: 4)
!50 = !DIEnumerator(name: "_ISalnum", value: 8)
!51 = !{!6, !52, !53, !58, !59, !60, !63}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !58}
!58 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!0}
!65 = !{!66, !67, !68, !71, !73, !74, !75, !79, !80, !81, !82, !84, !141, !142, !143, !145, !146}
!66 = !DILocalVariable(name: "program", arg: 1, scope: !2, file: !3, line: 573, type: !6)
!67 = !DILocalVariable(name: "option", arg: 2, scope: !2, file: !3, line: 573, type: !6)
!68 = !DILocalVariable(name: "term", scope: !69, file: !3, line: 585, type: !6)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 582, column: 5)
!70 = distinct !DILexicalBlock(scope: !2, file: !3, line: 581, column: 7)
!71 = !DILocalVariable(name: "double_space", scope: !2, file: !3, line: 594, type: !72)
!72 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!73 = !DILocalVariable(name: "first_word", scope: !2, file: !3, line: 595, type: !6)
!74 = !DILocalVariable(name: "option_text", scope: !2, file: !3, line: 596, type: !6)
!75 = !DILocalVariable(name: "s", scope: !76, file: !3, line: 608, type: !6)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 605, column: 5)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 604, column: 12)
!78 = distinct !DILexicalBlock(scope: !2, file: !3, line: 597, column: 7)
!79 = !DILocalVariable(name: "spaces", scope: !76, file: !3, line: 609, type: !60)
!80 = !DILocalVariable(name: "anchor_len", scope: !2, file: !3, line: 620, type: !60)
!81 = !DILocalVariable(name: "desc_text", scope: !2, file: !3, line: 625, type: !6)
!82 = !DILocalVariable(name: "__ptr", scope: !83, file: !3, line: 644, type: !6)
!83 = distinct !DILexicalBlock(scope: !2, file: !3, line: 644, column: 3)
!84 = !DILocalVariable(name: "__stream", scope: !83, file: !3, line: 644, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !88)
!87 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!90 = !{!91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !107, !109, !110, !111, !115, !116, !118, !122, !125, !127, !130, !133, !134, !135, !136, !137}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 51, baseType: !58, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 36, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 70, baseType: !108, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !113, line: 152, baseType: !114)
!113 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!114 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!117 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 1)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 43, baseType: null)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !113, line: 153, baseType: !114)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !88, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !89, line: 37, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !88, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !89, line: 38, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !88, file: !89, line: 93, baseType: !108, size: 64, offset: 1344)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !88, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 20)
!141 = !DILocalVariable(name: "__cnt", scope: !83, file: !3, line: 644, type: !60)
!142 = !DILocalVariable(name: "url_program", scope: !2, file: !3, line: 648, type: !6)
!143 = !DILocalVariable(name: "__ptr", scope: !144, file: !3, line: 686, type: !6)
!144 = distinct !DILexicalBlock(scope: !2, file: !3, line: 686, column: 3)
!145 = !DILocalVariable(name: "__stream", scope: !144, file: !3, line: 686, type: !85)
!146 = !DILocalVariable(name: "__cnt", scope: !144, file: !3, line: 686, type: !60)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "Version", scope: !149, file: !150, line: 3, type: !6, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!151 = !{!147}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "file_name", scope: !154, file: !155, line: 45, type: !6, isLocal: true, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !156, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!156 = !{!152, !157}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !154, file: !155, line: 55, type: !72, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !161, file: !162, line: 66, type: !197, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !163, globals: !164, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!163 = !{!52, !63}
!164 = !{!165, !191, !159, !193, !195}
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "old_file_name", scope: !167, file: !162, line: 304, type: !6, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "verror_at_line", scope: !162, file: !162, line: 298, type: !168, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !184)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !58, !58, !6, !13, !6, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !175, baseType: !176)
!175 = !DIFile(filename: "lib/error.c", directory: "/src")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !178)
!177 = !DINamespace(name: "std", scope: null)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !176, file: !175, baseType: !52, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !176, file: !175, baseType: !52, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !176, file: !175, baseType: !52, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !176, file: !175, baseType: !58, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !176, file: !175, baseType: !58, size: 32, offset: 224)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DILocalVariable(name: "status", arg: 1, scope: !167, file: !162, line: 298, type: !58)
!186 = !DILocalVariable(name: "errnum", arg: 2, scope: !167, file: !162, line: 298, type: !58)
!187 = !DILocalVariable(name: "file_name", arg: 3, scope: !167, file: !162, line: 298, type: !6)
!188 = !DILocalVariable(name: "line_number", arg: 4, scope: !167, file: !162, line: 298, type: !13)
!189 = !DILocalVariable(name: "message", arg: 5, scope: !167, file: !162, line: 298, type: !6)
!190 = !DILocalVariable(name: "args", arg: 6, scope: !167, file: !162, line: 298, type: !170)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "old_line_number", scope: !167, file: !162, line: 305, type: !13, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "error_message_count", scope: !161, file: !162, line: 69, type: !13, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !161, file: !162, line: 295, type: !58, isLocal: false, isDefinition: true)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !202, file: !203, line: 506, type: !58, isLocal: true, isDefinition: true)
!202 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !203, file: !203, line: 485, type: !204, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !208)
!203 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!204 = !DISubroutineType(types: !205)
!205 = !{!58, !58, !58}
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !207, splitDebugInlining: false, nameTableKind: None)
!207 = !{!200}
!208 = !{!209, !210, !211, !212, !215}
!209 = !DILocalVariable(name: "fd", arg: 1, scope: !202, file: !203, line: 485, type: !58)
!210 = !DILocalVariable(name: "target", arg: 2, scope: !202, file: !203, line: 485, type: !58)
!211 = !DILocalVariable(name: "result", scope: !202, file: !203, line: 487, type: !58)
!212 = !DILocalVariable(name: "flags", scope: !213, file: !203, line: 530, type: !58)
!213 = distinct !DILexicalBlock(scope: !214, file: !203, line: 529, column: 5)
!214 = distinct !DILexicalBlock(scope: !202, file: !203, line: 528, column: 7)
!215 = !DILocalVariable(name: "saved_errno", scope: !216, file: !203, line: 533, type: !58)
!216 = distinct !DILexicalBlock(scope: !217, file: !203, line: 532, column: 9)
!217 = distinct !DILexicalBlock(scope: !213, file: !203, line: 531, column: 11)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "long_options", scope: !220, file: !221, line: 34, type: !223, isLocal: true, isDefinition: true)
!220 = distinct !DICompileUnit(language: DW_LANG_C99, file: !221, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !222, splitDebugInlining: false, nameTableKind: None)
!221 = !DIFile(filename: "lib/long-options.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f9207327ba8a7df3cab41412dd2273a8")
!222 = !{!218}
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 768, elements: !233)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !226, line: 50, size: 256, elements: !227)
!226 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!227 = !{!228, !229, !230, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !226, line: 52, baseType: !6, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !225, file: !226, line: 55, baseType: !58, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !225, file: !226, line: 56, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !225, file: !226, line: 57, baseType: !58, size: 32, offset: 192)
!233 = !{!234}
!234 = !DISubrange(count: 3)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "program_name", scope: !237, file: !238, line: 31, type: !6, isLocal: false, isDefinition: true)
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !238, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !239, globals: !240, splitDebugInlining: false, nameTableKind: None)
!238 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!239 = !{!93}
!240 = !{!235}
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(name: "utf07FF", scope: !243, file: !244, line: 46, type: !274, isLocal: true, isDefinition: true)
!243 = distinct !DISubprogram(name: "proper_name_lite", scope: !244, file: !244, line: 38, type: !245, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !249)
!244 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!245 = !DISubroutineType(types: !246)
!246 = !{!6, !6, !6}
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !244, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !248, splitDebugInlining: false, nameTableKind: None)
!248 = !{!241}
!249 = !{!250, !251, !252, !253, !258}
!250 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !243, file: !244, line: 38, type: !6)
!251 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !243, file: !244, line: 38, type: !6)
!252 = !DILocalVariable(name: "translation", scope: !243, file: !244, line: 40, type: !6)
!253 = !DILocalVariable(name: "w", scope: !243, file: !244, line: 47, type: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !255, line: 37, baseType: !256)
!255 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !113, line: 57, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !113, line: 42, baseType: !13)
!258 = !DILocalVariable(name: "mbs", scope: !243, file: !244, line: 48, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !261)
!260 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !263)
!262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !263, file: !262, line: 15, baseType: !58, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !263, file: !262, line: 20, baseType: !267, size: 32, offset: 32)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 16, size: 32, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !267, file: !262, line: 18, baseType: !13, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !267, file: !262, line: 19, baseType: !271, size: 32)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 4)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 2)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !279, file: !280, line: 76, type: !348, isLocal: false, isDefinition: true)
!279 = distinct !DICompileUnit(language: DW_LANG_C99, file: !280, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !281, retainedTypes: !287, globals: !288, splitDebugInlining: false, nameTableKind: None)
!280 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!281 = !{!22, !282, !36}
!282 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !23, line: 254, baseType: !13, size: 32, elements: !283)
!283 = !{!284, !285, !286}
!284 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!285 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!286 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!287 = !{!58, !59, !60}
!288 = !{!277, !289, !295, !307, !309, !314, !337, !344, !346}
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !279, file: !280, line: 92, type: !291, isLocal: false, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 320, elements: !293)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!293 = !{!294}
!294 = !DISubrange(count: 10)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !279, file: !280, line: 1040, type: !297, isLocal: false, isDefinition: true)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !280, line: 56, size: 448, elements: !298)
!298 = !{!299, !300, !301, !305, !306}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !297, file: !280, line: 59, baseType: !22, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !297, file: !280, line: 62, baseType: !58, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !297, file: !280, line: 66, baseType: !302, size: 256, offset: 64)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 256, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 8)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !297, file: !280, line: 69, baseType: !6, size: 64, offset: 320)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !297, file: !280, line: 72, baseType: !6, size: 64, offset: 384)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !279, file: !280, line: 107, type: !297, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "slot0", scope: !279, file: !280, line: 831, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 256)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "quote", scope: !316, file: !280, line: 228, type: !335, isLocal: true, isDefinition: true)
!316 = distinct !DISubprogram(name: "gettext_quote", scope: !280, file: !280, line: 197, type: !317, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!6, !6, !22}
!319 = !{!320, !321, !322, !323, !324}
!320 = !DILocalVariable(name: "msgid", arg: 1, scope: !316, file: !280, line: 197, type: !6)
!321 = !DILocalVariable(name: "s", arg: 2, scope: !316, file: !280, line: 197, type: !22)
!322 = !DILocalVariable(name: "translation", scope: !316, file: !280, line: 199, type: !6)
!323 = !DILocalVariable(name: "w", scope: !316, file: !280, line: 229, type: !254)
!324 = !DILocalVariable(name: "mbs", scope: !316, file: !280, line: 230, type: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !327)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !327, file: !262, line: 15, baseType: !58, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !327, file: !262, line: 20, baseType: !331, size: 32, offset: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !262, line: 16, size: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !331, file: !262, line: 18, baseType: !13, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !331, file: !262, line: 19, baseType: !271, size: 32)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !336)
!336 = !{!276, !273}
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "slotvec", scope: !279, file: !280, line: 834, type: !339, isLocal: true, isDefinition: true)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !280, line: 823, size: 128, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !340, file: !280, line: 825, baseType: !60, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !280, line: 826, baseType: !93, size: 64, offset: 64)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "nslots", scope: !279, file: !280, line: 832, type: !58, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(name: "slotvec0", scope: !279, file: !280, line: 833, type: !340, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 704, elements: !350)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!350 = !{!351}
!351 = !DISubrange(count: 11)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !354, file: !355, line: 26, type: !357, isLocal: false, isDefinition: true)
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !356, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!356 = !{!352}
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 47)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "exit_failure", scope: !362, file: !363, line: 24, type: !365, isLocal: false, isDefinition: true)
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !364, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!364 = !{!360}
!365 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !58)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(name: "internal_state", scope: !368, file: !369, line: 97, type: !372, isLocal: true, isDefinition: true)
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !370, globals: !371, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!370 = !{!52, !60, !63}
!371 = !{!366}
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !260, line: 6, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !262, line: 21, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !262, line: 13, size: 64, elements: !375)
!375 = !{!376, !377}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !374, file: !262, line: 15, baseType: !58, size: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !374, file: !262, line: 20, baseType: !378, size: 32, offset: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !262, line: 16, size: 32, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !378, file: !262, line: 18, baseType: !13, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !378, file: !262, line: 19, baseType: !271, size: 32)
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/fd-reopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "062fe9c324b2740011a864ab02c109e2")
!384 = distinct !DICompileUnit(language: DW_LANG_C99, file: !385, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!385 = !DIFile(filename: "lib/filenamecat.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a58f68c719d6eade07443f6349d1f193")
!386 = !{!52}
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/filenamecat-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "19114c82e79ffcf16d6cc09933141d08")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !393, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!393 = !{!394}
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 40, baseType: !13, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !399, retainedTypes: !430, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!399 = !{!400, !412}
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !401, file: !398, line: 188, baseType: !13, size: 32, elements: !410)
!401 = distinct !DISubprogram(name: "x2nrealloc", scope: !398, file: !398, line: 176, type: !402, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !405)
!402 = !DISubroutineType(types: !403)
!403 = !{!52, !52, !404, !60}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!405 = !{!406, !407, !408, !409}
!406 = !DILocalVariable(name: "p", arg: 1, scope: !401, file: !398, line: 176, type: !52)
!407 = !DILocalVariable(name: "pn", arg: 2, scope: !401, file: !398, line: 176, type: !404)
!408 = !DILocalVariable(name: "s", arg: 3, scope: !401, file: !398, line: 176, type: !60)
!409 = !DILocalVariable(name: "n", scope: !401, file: !398, line: 178, type: !60)
!410 = !{!411}
!411 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !413, file: !398, line: 228, baseType: !13, size: 32, elements: !410)
!413 = distinct !DISubprogram(name: "xpalloc", scope: !398, file: !398, line: 223, type: !414, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !420)
!414 = !DISubroutineType(types: !415)
!415 = !{!52, !52, !416, !417, !419, !417}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !418, line: 130, baseType: !419)
!418 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !61, line: 35, baseType: !114)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429}
!421 = !DILocalVariable(name: "pa", arg: 1, scope: !413, file: !398, line: 223, type: !52)
!422 = !DILocalVariable(name: "pn", arg: 2, scope: !413, file: !398, line: 223, type: !416)
!423 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !413, file: !398, line: 223, type: !417)
!424 = !DILocalVariable(name: "n_max", arg: 4, scope: !413, file: !398, line: 223, type: !419)
!425 = !DILocalVariable(name: "s", arg: 5, scope: !413, file: !398, line: 223, type: !417)
!426 = !DILocalVariable(name: "n0", scope: !413, file: !398, line: 230, type: !417)
!427 = !DILocalVariable(name: "n", scope: !413, file: !398, line: 237, type: !417)
!428 = !DILocalVariable(name: "nbytes", scope: !413, file: !398, line: 248, type: !417)
!429 = !DILocalVariable(name: "adjusted_nbytes", scope: !413, file: !398, line: 252, type: !417)
!430 = !{!93, !52, !72, !114, !62}
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !239, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!435 = distinct !DICompileUnit(language: DW_LANG_C99, file: !436, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!436 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!439 = distinct !DICompileUnit(language: DW_LANG_C99, file: !440, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!440 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !445, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!445 = !{!72, !62, !52}
!446 = distinct !DICompileUnit(language: DW_LANG_C99, file: !447, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!447 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !386, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!452 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!453 = !{i32 7, !"Dwarf Version", i32 5}
!454 = !{i32 2, !"Debug Info Version", i32 3}
!455 = !{i32 1, !"wchar_size", i32 4}
!456 = !{i32 1, !"branch-target-enforcement", i32 0}
!457 = !{i32 1, !"sign-return-address", i32 0}
!458 = !{i32 1, !"sign-return-address-all", i32 0}
!459 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!460 = !{i32 7, !"PIC Level", i32 2}
!461 = !{i32 7, !"PIE Level", i32 2}
!462 = !{i32 7, !"uwtable", i32 1}
!463 = !{i32 7, !"frame-pointer", i32 1}
!464 = distinct !DISubprogram(name: "usage", scope: !10, file: !10, line: 43, type: !56, scopeLine: 44, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !465)
!465 = !{!466}
!466 = !DILocalVariable(name: "status", arg: 1, scope: !464, file: !10, line: 43, type: !58)
!467 = !DILocation(line: 0, scope: !464)
!468 = !DILocation(line: 45, column: 14, scope: !469)
!469 = distinct !DILexicalBlock(scope: !464, file: !10, line: 45, column: 7)
!470 = !DILocation(line: 45, column: 7, scope: !464)
!471 = !DILocation(line: 46, column: 5, scope: !472)
!472 = distinct !DILexicalBlock(scope: !469, file: !10, line: 46, column: 5)
!473 = !{!474, !474, i64 0}
!474 = !{!"any pointer", !475, i64 0}
!475 = !{!"omnipotent char", !476, i64 0}
!476 = !{!"Simple C/C++ TBAA"}
!477 = !DILocation(line: 49, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !10, line: 48, column: 5)
!479 = !DILocation(line: 55, column: 7, scope: !478)
!480 = !DILocation(line: 59, column: 7, scope: !478)
!481 = !DILocation(line: 60, column: 7, scope: !478)
!482 = !DILocation(line: 61, column: 7, scope: !478)
!483 = !DILocation(line: 68, column: 7, scope: !478)
!484 = !DILocalVariable(name: "program", arg: 1, scope: !485, file: !3, line: 824, type: !6)
!485 = distinct !DISubprogram(name: "emit_exec_status", scope: !3, file: !3, line: 824, type: !486, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !488)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !6}
!488 = !{!484}
!489 = !DILocation(line: 0, scope: !485, inlinedAt: !490)
!490 = distinct !DILocation(line: 69, column: 7, scope: !478)
!491 = !DILocation(line: 826, column: 7, scope: !485, inlinedAt: !490)
!492 = !DILocalVariable(name: "program", arg: 1, scope: !493, file: !3, line: 836, type: !6)
!493 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !3, file: !3, line: 836, type: !486, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !494)
!494 = !{!492, !495, !504, !505, !507, !508}
!495 = !DILocalVariable(name: "infomap", scope: !493, file: !3, line: 838, type: !496)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 896, elements: !502)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !493, file: !3, line: 838, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !498, file: !3, line: 838, baseType: !6, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !498, file: !3, line: 838, baseType: !6, size: 64, offset: 64)
!502 = !{!503}
!503 = !DISubrange(count: 7)
!504 = !DILocalVariable(name: "node", scope: !493, file: !3, line: 848, type: !6)
!505 = !DILocalVariable(name: "map_prog", scope: !493, file: !3, line: 849, type: !506)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!507 = !DILocalVariable(name: "lc_messages", scope: !493, file: !3, line: 861, type: !6)
!508 = !DILocalVariable(name: "url_program", scope: !493, file: !3, line: 874, type: !6)
!509 = !DILocation(line: 0, scope: !493, inlinedAt: !510)
!510 = distinct !DILocation(line: 70, column: 7, scope: !478)
!511 = !DILocation(line: 838, column: 3, scope: !493, inlinedAt: !510)
!512 = !DILocation(line: 838, column: 67, scope: !493, inlinedAt: !510)
!513 = !DILocation(line: 849, column: 36, scope: !493, inlinedAt: !510)
!514 = !DILocation(line: 851, column: 3, scope: !493, inlinedAt: !510)
!515 = !DILocalVariable(name: "__s1", arg: 1, scope: !516, file: !517, line: 1359, type: !6)
!516 = distinct !DISubprogram(name: "streq", scope: !517, file: !517, line: 1359, type: !518, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !520)
!517 = !DIFile(filename: "./lib/string.h", directory: "/src")
!518 = !DISubroutineType(types: !519)
!519 = !{!72, !6, !6}
!520 = !{!515, !521}
!521 = !DILocalVariable(name: "__s2", arg: 2, scope: !516, file: !517, line: 1359, type: !6)
!522 = !DILocation(line: 0, scope: !516, inlinedAt: !523)
!523 = distinct !DILocation(line: 851, column: 33, scope: !493, inlinedAt: !510)
!524 = !DILocation(line: 1361, column: 11, scope: !516, inlinedAt: !523)
!525 = !DILocation(line: 1361, column: 10, scope: !516, inlinedAt: !523)
!526 = !DILocation(line: 852, column: 13, scope: !493, inlinedAt: !510)
!527 = !DILocation(line: 851, column: 20, scope: !493, inlinedAt: !510)
!528 = !{!529, !474, i64 0}
!529 = !{!"infomap", !474, i64 0, !474, i64 8}
!530 = !DILocation(line: 851, column: 10, scope: !493, inlinedAt: !510)
!531 = !DILocation(line: 851, column: 28, scope: !493, inlinedAt: !510)
!532 = distinct !{!532, !514, !526, !533}
!533 = !{!"llvm.loop.mustprogress"}
!534 = !DILocation(line: 854, column: 17, scope: !535, inlinedAt: !510)
!535 = distinct !DILexicalBlock(scope: !493, file: !3, line: 854, column: 7)
!536 = !{!529, !474, i64 8}
!537 = !DILocation(line: 854, column: 7, scope: !535, inlinedAt: !510)
!538 = !DILocation(line: 854, column: 7, scope: !493, inlinedAt: !510)
!539 = !DILocation(line: 857, column: 3, scope: !493, inlinedAt: !510)
!540 = !DILocation(line: 861, column: 29, scope: !493, inlinedAt: !510)
!541 = !DILocation(line: 862, column: 7, scope: !542, inlinedAt: !510)
!542 = distinct !DILexicalBlock(scope: !493, file: !3, line: 862, column: 7)
!543 = !DILocation(line: 862, column: 19, scope: !542, inlinedAt: !510)
!544 = !DILocation(line: 862, column: 22, scope: !542, inlinedAt: !510)
!545 = !DILocation(line: 862, column: 7, scope: !493, inlinedAt: !510)
!546 = !DILocation(line: 868, column: 7, scope: !547, inlinedAt: !510)
!547 = distinct !DILexicalBlock(scope: !542, file: !3, line: 863, column: 5)
!548 = !DILocation(line: 870, column: 5, scope: !547, inlinedAt: !510)
!549 = !DILocation(line: 0, scope: !516, inlinedAt: !550)
!550 = distinct !DILocation(line: 874, column: 29, scope: !493, inlinedAt: !510)
!551 = !DILocation(line: 875, column: 3, scope: !493, inlinedAt: !510)
!552 = !DILocation(line: 877, column: 3, scope: !493, inlinedAt: !510)
!553 = !DILocation(line: 879, column: 1, scope: !493, inlinedAt: !510)
!554 = !DILocation(line: 72, column: 3, scope: !464)
!555 = !DISubprogram(name: "dcgettext", scope: !556, file: !556, line: 51, type: !557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!556 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!557 = !DISubroutineType(types: !558)
!558 = !{!93, !6, !6, !58}
!559 = !{}
!560 = !DISubprogram(name: "fputs_unlocked", scope: !171, file: !171, line: 691, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!561 = !DISubroutineType(types: !562)
!562 = !{!58, !563, !564}
!563 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !6)
!564 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!565 = !DILocation(line: 0, scope: !2)
!566 = !DILocation(line: 581, column: 7, scope: !70)
!567 = !{!568, !568, i64 0}
!568 = !{!"int", !475, i64 0}
!569 = !DILocation(line: 581, column: 19, scope: !70)
!570 = !DILocation(line: 581, column: 7, scope: !2)
!571 = !DILocation(line: 585, column: 26, scope: !69)
!572 = !DILocation(line: 0, scope: !69)
!573 = !DILocation(line: 586, column: 23, scope: !69)
!574 = !DILocation(line: 586, column: 28, scope: !69)
!575 = !DILocation(line: 586, column: 32, scope: !69)
!576 = !{!475, !475, i64 0}
!577 = !DILocation(line: 586, column: 38, scope: !69)
!578 = !DILocation(line: 0, scope: !516, inlinedAt: !579)
!579 = distinct !DILocation(line: 586, column: 41, scope: !69)
!580 = !DILocation(line: 1361, column: 11, scope: !516, inlinedAt: !579)
!581 = !DILocation(line: 1361, column: 10, scope: !516, inlinedAt: !579)
!582 = !DILocation(line: 586, column: 19, scope: !69)
!583 = !DILocation(line: 587, column: 5, scope: !69)
!584 = !DILocation(line: 588, column: 7, scope: !585)
!585 = distinct !DILexicalBlock(scope: !2, file: !3, line: 588, column: 7)
!586 = !DILocation(line: 588, column: 7, scope: !2)
!587 = !DILocation(line: 590, column: 7, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !3, line: 589, column: 5)
!589 = !DILocation(line: 591, column: 7, scope: !588)
!590 = !DILocation(line: 595, column: 37, scope: !2)
!591 = !DILocation(line: 595, column: 35, scope: !2)
!592 = !DILocation(line: 596, column: 29, scope: !2)
!593 = !DILocation(line: 597, column: 8, scope: !78)
!594 = !DILocation(line: 597, column: 7, scope: !2)
!595 = !DILocation(line: 604, column: 24, scope: !77)
!596 = !DILocation(line: 604, column: 12, scope: !78)
!597 = !DILocation(line: 0, scope: !76)
!598 = !DILocation(line: 610, column: 16, scope: !76)
!599 = !DILocation(line: 610, column: 7, scope: !76)
!600 = !DILocation(line: 611, column: 21, scope: !76)
!601 = !{!602, !602, i64 0}
!602 = !{!"short", !475, i64 0}
!603 = !DILocation(line: 611, column: 19, scope: !76)
!604 = !DILocation(line: 611, column: 16, scope: !76)
!605 = !DILocation(line: 610, column: 30, scope: !76)
!606 = distinct !{!606, !599, !600, !533}
!607 = !DILocation(line: 612, column: 18, scope: !608)
!608 = distinct !DILexicalBlock(scope: !76, file: !3, line: 612, column: 11)
!609 = !DILocation(line: 612, column: 11, scope: !76)
!610 = !DILocation(line: 620, column: 23, scope: !2)
!611 = !DILocation(line: 625, column: 39, scope: !2)
!612 = !DILocation(line: 626, column: 3, scope: !2)
!613 = !DILocation(line: 626, column: 10, scope: !2)
!614 = !DILocation(line: 626, column: 21, scope: !2)
!615 = !DILocation(line: 628, column: 44, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !3, line: 628, column: 11)
!617 = distinct !DILexicalBlock(scope: !2, file: !3, line: 627, column: 5)
!618 = !DILocation(line: 628, column: 32, scope: !616)
!619 = !DILocation(line: 628, column: 49, scope: !616)
!620 = !DILocation(line: 628, column: 11, scope: !617)
!621 = !DILocation(line: 630, column: 11, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !3, line: 630, column: 11)
!623 = !DILocation(line: 630, column: 11, scope: !617)
!624 = !DILocation(line: 632, column: 26, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 632, column: 15)
!626 = distinct !DILexicalBlock(scope: !622, file: !3, line: 631, column: 9)
!627 = !DILocation(line: 632, column: 34, scope: !625)
!628 = !DILocation(line: 632, column: 37, scope: !625)
!629 = !DILocation(line: 632, column: 15, scope: !626)
!630 = !DILocation(line: 636, column: 29, scope: !631)
!631 = distinct !DILexicalBlock(scope: !626, file: !3, line: 636, column: 15)
!632 = !DILocation(line: 640, column: 16, scope: !617)
!633 = distinct !{!633, !612, !634, !533}
!634 = !DILocation(line: 641, column: 5, scope: !2)
!635 = !DILocation(line: 644, column: 3, scope: !2)
!636 = !DILocation(line: 0, scope: !516, inlinedAt: !637)
!637 = distinct !DILocation(line: 648, column: 31, scope: !2)
!638 = !DILocation(line: 0, scope: !516, inlinedAt: !639)
!639 = distinct !DILocation(line: 649, column: 31, scope: !2)
!640 = !DILocation(line: 0, scope: !516, inlinedAt: !641)
!641 = distinct !DILocation(line: 650, column: 31, scope: !2)
!642 = !DILocation(line: 0, scope: !516, inlinedAt: !643)
!643 = distinct !DILocation(line: 651, column: 31, scope: !2)
!644 = !DILocation(line: 0, scope: !516, inlinedAt: !645)
!645 = distinct !DILocation(line: 652, column: 31, scope: !2)
!646 = !DILocation(line: 0, scope: !516, inlinedAt: !647)
!647 = distinct !DILocation(line: 653, column: 31, scope: !2)
!648 = !DILocation(line: 0, scope: !516, inlinedAt: !649)
!649 = distinct !DILocation(line: 654, column: 31, scope: !2)
!650 = !DILocation(line: 0, scope: !516, inlinedAt: !651)
!651 = distinct !DILocation(line: 655, column: 31, scope: !2)
!652 = !DILocation(line: 0, scope: !516, inlinedAt: !653)
!653 = distinct !DILocation(line: 656, column: 31, scope: !2)
!654 = !DILocation(line: 0, scope: !516, inlinedAt: !655)
!655 = distinct !DILocation(line: 657, column: 31, scope: !2)
!656 = !DILocation(line: 663, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !2, file: !3, line: 663, column: 7)
!658 = !DILocation(line: 664, column: 7, scope: !657)
!659 = !DILocation(line: 664, column: 10, scope: !657)
!660 = !DILocation(line: 663, column: 7, scope: !2)
!661 = !DILocation(line: 669, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !657, file: !3, line: 665, column: 5)
!663 = !DILocation(line: 671, column: 5, scope: !662)
!664 = !DILocation(line: 676, column: 7, scope: !665)
!665 = distinct !DILexicalBlock(scope: !657, file: !3, line: 673, column: 5)
!666 = !DILocation(line: 679, column: 3, scope: !2)
!667 = !DILocation(line: 683, column: 3, scope: !2)
!668 = !DILocation(line: 686, column: 3, scope: !2)
!669 = !DILocation(line: 688, column: 3, scope: !2)
!670 = !DILocation(line: 691, column: 3, scope: !2)
!671 = !DILocation(line: 695, column: 3, scope: !2)
!672 = !DILocation(line: 696, column: 1, scope: !2)
!673 = !DISubprogram(name: "setlocale", scope: !674, file: !674, line: 122, type: !675, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!674 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!675 = !DISubroutineType(types: !676)
!676 = !{!93, !58, !6}
!677 = !DISubprogram(name: "getenv", scope: !678, file: !678, line: 641, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!678 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!679 = !DISubroutineType(types: !680)
!680 = !{!93, !6}
!681 = !DISubprogram(name: "fwrite_unlocked", scope: !171, file: !171, line: 704, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!682 = !DISubroutineType(types: !683)
!683 = !{!60, !684, !60, !60, !564}
!684 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!687 = distinct !DISubprogram(name: "main", scope: !10, file: !10, line: 82, type: !688, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !691)
!688 = !DISubroutineType(types: !689)
!689 = !{!58, !58, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !705, !706, !709, !710, !711, !715, !716, !719, !720, !723, !724, !729, !730, !731}
!692 = !DILocalVariable(name: "argc", arg: 1, scope: !687, file: !10, line: 82, type: !58)
!693 = !DILocalVariable(name: "argv", arg: 2, scope: !687, file: !10, line: 82, type: !690)
!694 = !DILocalVariable(name: "exit_internal_failure", scope: !687, file: !10, line: 94, type: !58)
!695 = !DILocalVariable(name: "ignoring_input", scope: !687, file: !10, line: 109, type: !72)
!696 = !DILocalVariable(name: "redirecting_stdout", scope: !687, file: !10, line: 110, type: !72)
!697 = !DILocalVariable(name: "stdout_is_closed", scope: !687, file: !10, line: 111, type: !72)
!698 = !DILocalVariable(name: "redirecting_stderr", scope: !687, file: !10, line: 112, type: !72)
!699 = !DILocalVariable(name: "__errstatus", scope: !700, file: !10, line: 120, type: !704)
!700 = distinct !DILexicalBlock(scope: !701, file: !10, line: 120, column: 9)
!701 = distinct !DILexicalBlock(scope: !702, file: !10, line: 119, column: 11)
!702 = distinct !DILexicalBlock(scope: !703, file: !10, line: 118, column: 5)
!703 = distinct !DILexicalBlock(scope: !687, file: !10, line: 117, column: 7)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!705 = !DILocalVariable(name: "out_fd", scope: !687, file: !10, line: 130, type: !58)
!706 = !DILocalVariable(name: "in_home", scope: !707, file: !10, line: 133, type: !93)
!707 = distinct !DILexicalBlock(scope: !708, file: !10, line: 132, column: 5)
!708 = distinct !DILexicalBlock(scope: !687, file: !10, line: 131, column: 7)
!709 = !DILocalVariable(name: "file", scope: !707, file: !10, line: 134, type: !6)
!710 = !DILocalVariable(name: "flags", scope: !707, file: !10, line: 135, type: !58)
!711 = !DILocalVariable(name: "mode", scope: !707, file: !10, line: 136, type: !712)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !713, line: 69, baseType: !714)
!713 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !113, line: 150, baseType: !13)
!715 = !DILocalVariable(name: "umask_value", scope: !707, file: !10, line: 137, type: !712)
!716 = !DILocalVariable(name: "saved_errno", scope: !717, file: !10, line: 144, type: !58)
!717 = distinct !DILexicalBlock(scope: !718, file: !10, line: 143, column: 9)
!718 = distinct !DILexicalBlock(scope: !707, file: !10, line: 142, column: 11)
!719 = !DILocalVariable(name: "home", scope: !717, file: !10, line: 145, type: !6)
!720 = !DILocalVariable(name: "saved_errno2", scope: !721, file: !10, line: 155, type: !58)
!721 = distinct !DILexicalBlock(scope: !722, file: !10, line: 154, column: 13)
!722 = distinct !DILexicalBlock(scope: !717, file: !10, line: 153, column: 15)
!723 = !DILocalVariable(name: "saved_stderr_fd", scope: !687, file: !10, line: 175, type: !58)
!724 = !DILocalVariable(name: "__errstatus", scope: !725, file: !10, line: 193, type: !704)
!725 = distinct !DILexicalBlock(scope: !726, file: !10, line: 193, column: 9)
!726 = distinct !DILexicalBlock(scope: !727, file: !10, line: 192, column: 11)
!727 = distinct !DILexicalBlock(scope: !728, file: !10, line: 177, column: 5)
!728 = distinct !DILexicalBlock(scope: !687, file: !10, line: 176, column: 7)
!729 = !DILocalVariable(name: "cmd", scope: !687, file: !10, line: 211, type: !690)
!730 = !DILocalVariable(name: "exit_status", scope: !687, file: !10, line: 213, type: !58)
!731 = !DILocalVariable(name: "saved_errno", scope: !687, file: !10, line: 214, type: !58)
!732 = !DILocation(line: 0, scope: !687)
!733 = !DILocation(line: 85, column: 21, scope: !687)
!734 = !DILocation(line: 85, column: 3, scope: !687)
!735 = !DILocation(line: 86, column: 3, scope: !687)
!736 = !DILocation(line: 87, column: 3, scope: !687)
!737 = !DILocation(line: 88, column: 3, scope: !687)
!738 = !DILocation(line: 94, column: 32, scope: !687)
!739 = !DILocalVariable(name: "status", arg: 1, scope: !740, file: !3, line: 102, type: !58)
!740 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !3, file: !3, line: 102, type: !56, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !741)
!741 = !{!739}
!742 = !DILocation(line: 0, scope: !740, inlinedAt: !743)
!743 = distinct !DILocation(line: 96, column: 3, scope: !687)
!744 = !DILocation(line: 105, column: 18, scope: !745, inlinedAt: !743)
!745 = distinct !DILexicalBlock(scope: !740, file: !3, line: 104, column: 7)
!746 = !DILocation(line: 97, column: 3, scope: !687)
!747 = !DILocation(line: 100, column: 36, scope: !687)
!748 = !DILocation(line: 100, column: 59, scope: !687)
!749 = !DILocation(line: 99, column: 3, scope: !687)
!750 = !DILocation(line: 103, column: 15, scope: !751)
!751 = distinct !DILexicalBlock(scope: !687, file: !10, line: 103, column: 7)
!752 = !DILocation(line: 103, column: 12, scope: !751)
!753 = !DILocation(line: 103, column: 7, scope: !687)
!754 = !DILocation(line: 105, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !10, line: 104, column: 5)
!756 = !DILocation(line: 106, column: 7, scope: !755)
!757 = !DILocation(line: 109, column: 25, scope: !687)
!758 = !DILocation(line: 110, column: 29, scope: !687)
!759 = !DILocation(line: 111, column: 48, scope: !687)
!760 = !DILocation(line: 111, column: 51, scope: !687)
!761 = !DILocation(line: 111, column: 57, scope: !687)
!762 = !DILocation(line: 112, column: 29, scope: !687)
!763 = !DILocation(line: 117, column: 7, scope: !687)
!764 = !DILocation(line: 119, column: 11, scope: !701)
!765 = !DILocation(line: 119, column: 62, scope: !701)
!766 = !DILocation(line: 119, column: 11, scope: !702)
!767 = !DILocation(line: 0, scope: !701)
!768 = !DILocation(line: 122, column: 31, scope: !769)
!769 = distinct !DILexicalBlock(scope: !702, file: !10, line: 122, column: 11)
!770 = !DILocation(line: 123, column: 9, scope: !769)
!771 = !DILocation(line: 131, column: 26, scope: !708)
!772 = !DILocation(line: 131, column: 49, scope: !708)
!773 = !DILocation(line: 0, scope: !707)
!774 = !DILocation(line: 137, column: 28, scope: !707)
!775 = !DILocation(line: 139, column: 19, scope: !707)
!776 = !DILocation(line: 138, column: 17, scope: !707)
!777 = !DILocation(line: 140, column: 19, scope: !707)
!778 = !DILocation(line: 142, column: 18, scope: !718)
!779 = !DILocation(line: 142, column: 11, scope: !707)
!780 = !DILocation(line: 144, column: 29, scope: !717)
!781 = !DILocation(line: 0, scope: !717)
!782 = !DILocation(line: 145, column: 30, scope: !717)
!783 = !DILocation(line: 146, column: 15, scope: !784)
!784 = distinct !DILexicalBlock(scope: !717, file: !10, line: 146, column: 15)
!785 = !DILocation(line: 146, column: 15, scope: !717)
!786 = !DILocation(line: 148, column: 25, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !10, line: 147, column: 13)
!788 = !DILocation(line: 149, column: 25, scope: !787)
!789 = !DILocation(line: 150, column: 27, scope: !787)
!790 = !DILocation(line: 151, column: 27, scope: !787)
!791 = !DILocation(line: 153, column: 22, scope: !722)
!792 = !DILocation(line: 153, column: 15, scope: !717)
!793 = !DILocation(line: 155, column: 34, scope: !721)
!794 = !DILocation(line: 0, scope: !721)
!795 = !DILocation(line: 156, column: 15, scope: !721)
!796 = !DILocation(line: 157, column: 19, scope: !797)
!797 = distinct !DILexicalBlock(scope: !721, file: !10, line: 157, column: 19)
!798 = !DILocation(line: 157, column: 19, scope: !721)
!799 = !DILocation(line: 158, column: 17, scope: !797)
!800 = !DILocation(line: 134, column: 19, scope: !707)
!801 = !DILocation(line: 165, column: 7, scope: !707)
!802 = !DILocation(line: 166, column: 7, scope: !707)
!803 = !DILocation(line: 171, column: 7, scope: !707)
!804 = !DILocation(line: 176, column: 7, scope: !687)
!805 = !DILocation(line: 182, column: 25, scope: !727)
!806 = !DILocation(line: 185, column: 11, scope: !727)
!807 = !DILocation(line: 186, column: 9, scope: !808)
!808 = distinct !DILexicalBlock(scope: !727, file: !10, line: 185, column: 11)
!809 = !DILocation(line: 192, column: 11, scope: !726)
!810 = !DILocation(line: 192, column: 40, scope: !726)
!811 = !DILocation(line: 192, column: 11, scope: !727)
!812 = !DILocation(line: 0, scope: !726)
!813 = !DILocation(line: 196, column: 11, scope: !727)
!814 = !DILocation(line: 197, column: 9, scope: !815)
!815 = distinct !DILexicalBlock(scope: !727, file: !10, line: 196, column: 11)
!816 = !DILocation(line: 206, column: 7, scope: !817)
!817 = distinct !DILexicalBlock(scope: !687, file: !10, line: 206, column: 7)
!818 = !DILocalVariable(name: "__stream", arg: 1, scope: !819, file: !820, line: 135, type: !85)
!819 = distinct !DISubprogram(name: "ferror_unlocked", scope: !820, file: !820, line: 135, type: !821, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !823)
!820 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!821 = !DISubroutineType(types: !822)
!822 = !{!58, !85}
!823 = !{!818}
!824 = !DILocation(line: 0, scope: !819, inlinedAt: !825)
!825 = distinct !DILocation(line: 206, column: 7, scope: !817)
!826 = !DILocation(line: 137, column: 10, scope: !819, inlinedAt: !825)
!827 = !{!828, !568, i64 0}
!828 = !{!"_IO_FILE", !568, i64 0, !474, i64 8, !474, i64 16, !474, i64 24, !474, i64 32, !474, i64 40, !474, i64 48, !474, i64 56, !474, i64 64, !474, i64 72, !474, i64 80, !474, i64 88, !474, i64 96, !474, i64 104, !568, i64 112, !568, i64 116, !829, i64 120, !602, i64 128, !475, i64 130, !475, i64 131, !474, i64 136, !829, i64 144, !474, i64 152, !474, i64 160, !474, i64 168, !474, i64 176, !829, i64 184, !568, i64 192, !475, i64 196}
!829 = !{!"long", !475, i64 0}
!830 = !DILocation(line: 206, column: 7, scope: !687)
!831 = !DILocation(line: 209, column: 3, scope: !687)
!832 = !DILocation(line: 211, column: 23, scope: !687)
!833 = !DILocation(line: 211, column: 21, scope: !687)
!834 = !DILocation(line: 212, column: 11, scope: !687)
!835 = !DILocation(line: 212, column: 3, scope: !687)
!836 = !DILocation(line: 213, column: 21, scope: !687)
!837 = !DILocation(line: 213, column: 27, scope: !687)
!838 = !DILocation(line: 222, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !687, file: !10, line: 222, column: 7)
!840 = !DILocation(line: 222, column: 45, scope: !839)
!841 = !DILocation(line: 222, column: 7, scope: !687)
!842 = !DILocation(line: 223, column: 5, scope: !839)
!843 = !DILocation(line: 226, column: 1, scope: !687)
!844 = !DISubprogram(name: "bindtextdomain", scope: !556, file: !556, line: 86, type: !845, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!845 = !DISubroutineType(types: !846)
!846 = !{!93, !6, !6}
!847 = !DISubprogram(name: "textdomain", scope: !556, file: !556, line: 82, type: !679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!848 = !DISubprogram(name: "atexit", scope: !678, file: !678, line: 602, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!849 = !DISubroutineType(types: !850)
!850 = !{!58, !197}
!851 = !DISubprogram(name: "isatty", scope: !852, file: !852, line: 809, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!852 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!853 = !DISubroutineType(types: !854)
!854 = !{!58, !58}
!855 = !DISubprogram(name: "umask", scope: !856, file: !856, line: 380, type: !857, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!856 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!857 = !DISubroutineType(types: !858)
!858 = !{!714, !714}
!859 = !DISubprogram(name: "open", scope: !860, file: !860, line: 181, type: !861, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!860 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!861 = !DISubroutineType(types: !862)
!862 = !{!58, !6, !58, null}
!863 = !DISubprogram(name: "dup2", scope: !852, file: !852, line: 555, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!864 = !DISubprogram(name: "close", scope: !852, file: !852, line: 358, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!865 = !DISubprogram(name: "signal", scope: !54, file: !54, line: 88, type: !866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!866 = !DISubroutineType(types: !867)
!867 = !{!53, !58, !53}
!868 = !DISubprogram(name: "execvp", scope: !852, file: !852, line: 599, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!869 = !DISubroutineType(types: !870)
!870 = !{!58, !6, !871}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!873 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !155, file: !155, line: 50, type: !486, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !874)
!874 = !{!875}
!875 = !DILocalVariable(name: "file", arg: 1, scope: !873, file: !155, line: 50, type: !6)
!876 = !DILocation(line: 0, scope: !873)
!877 = !DILocation(line: 52, column: 13, scope: !873)
!878 = !DILocation(line: 53, column: 1, scope: !873)
!879 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !155, file: !155, line: 87, type: !880, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !882)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !72}
!882 = !{!883}
!883 = !DILocalVariable(name: "ignore", arg: 1, scope: !879, file: !155, line: 87, type: !72)
!884 = !DILocation(line: 0, scope: !879)
!885 = !DILocation(line: 89, column: 16, scope: !879)
!886 = !{!887, !887, i64 0}
!887 = !{!"_Bool", !475, i64 0}
!888 = !DILocation(line: 90, column: 1, scope: !879)
!889 = distinct !DISubprogram(name: "close_stdout", scope: !155, file: !155, line: 116, type: !198, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !890)
!890 = !{!891}
!891 = !DILocalVariable(name: "write_error", scope: !892, file: !155, line: 121, type: !6)
!892 = distinct !DILexicalBlock(scope: !893, file: !155, line: 120, column: 5)
!893 = distinct !DILexicalBlock(scope: !889, file: !155, line: 118, column: 7)
!894 = !DILocation(line: 118, column: 21, scope: !893)
!895 = !DILocation(line: 118, column: 7, scope: !893)
!896 = !DILocation(line: 118, column: 29, scope: !893)
!897 = !DILocation(line: 119, column: 7, scope: !893)
!898 = !DILocation(line: 119, column: 12, scope: !893)
!899 = !{i8 0, i8 2}
!900 = !DILocation(line: 119, column: 25, scope: !893)
!901 = !DILocation(line: 119, column: 28, scope: !893)
!902 = !DILocation(line: 119, column: 34, scope: !893)
!903 = !DILocation(line: 118, column: 7, scope: !889)
!904 = !DILocation(line: 121, column: 33, scope: !892)
!905 = !DILocation(line: 0, scope: !892)
!906 = !DILocation(line: 122, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !892, file: !155, line: 122, column: 11)
!908 = !DILocation(line: 0, scope: !907)
!909 = !DILocation(line: 122, column: 11, scope: !892)
!910 = !DILocation(line: 123, column: 9, scope: !907)
!911 = !DILocation(line: 126, column: 9, scope: !907)
!912 = !DILocation(line: 128, column: 14, scope: !892)
!913 = !DILocation(line: 128, column: 7, scope: !892)
!914 = !DILocation(line: 133, column: 42, scope: !915)
!915 = distinct !DILexicalBlock(scope: !889, file: !155, line: 133, column: 7)
!916 = !DILocation(line: 133, column: 28, scope: !915)
!917 = !DILocation(line: 133, column: 50, scope: !915)
!918 = !DILocation(line: 133, column: 7, scope: !889)
!919 = !DILocation(line: 134, column: 12, scope: !915)
!920 = !DILocation(line: 134, column: 5, scope: !915)
!921 = !DILocation(line: 135, column: 1, scope: !889)
!922 = distinct !DISubprogram(name: "verror", scope: !162, file: !162, line: 251, type: !923, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !925)
!923 = !DISubroutineType(types: !924)
!924 = !{null, !58, !58, !6, !170}
!925 = !{!926, !927, !928, !929}
!926 = !DILocalVariable(name: "status", arg: 1, scope: !922, file: !162, line: 251, type: !58)
!927 = !DILocalVariable(name: "errnum", arg: 2, scope: !922, file: !162, line: 251, type: !58)
!928 = !DILocalVariable(name: "message", arg: 3, scope: !922, file: !162, line: 251, type: !6)
!929 = !DILocalVariable(name: "args", arg: 4, scope: !922, file: !162, line: 251, type: !170)
!930 = !DILocation(line: 0, scope: !922)
!931 = !DILocation(line: 251, column: 1, scope: !922)
!932 = !DILocation(line: 261, column: 3, scope: !922)
!933 = !DILocation(line: 265, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !922, file: !162, line: 265, column: 7)
!935 = !DILocation(line: 265, column: 7, scope: !922)
!936 = !DILocation(line: 266, column: 5, scope: !934)
!937 = !DILocation(line: 272, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !162, line: 268, column: 5)
!939 = !DILocation(line: 276, column: 3, scope: !922)
!940 = !{i64 0, i64 8, !473, i64 8, i64 8, !473, i64 16, i64 8, !473, i64 24, i64 4, !567, i64 28, i64 4, !567}
!941 = !DILocation(line: 282, column: 1, scope: !922)
!942 = distinct !DISubprogram(name: "flush_stdout", scope: !162, file: !162, line: 163, type: !198, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !943)
!943 = !{!944}
!944 = !DILocalVariable(name: "stdout_fd", scope: !942, file: !162, line: 166, type: !58)
!945 = !DILocation(line: 0, scope: !942)
!946 = !DILocalVariable(name: "fd", arg: 1, scope: !947, file: !162, line: 145, type: !58)
!947 = distinct !DISubprogram(name: "is_open", scope: !162, file: !162, line: 145, type: !853, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !948)
!948 = !{!946}
!949 = !DILocation(line: 0, scope: !947, inlinedAt: !950)
!950 = distinct !DILocation(line: 182, column: 25, scope: !951)
!951 = distinct !DILexicalBlock(scope: !942, file: !162, line: 182, column: 7)
!952 = !DILocation(line: 157, column: 15, scope: !947, inlinedAt: !950)
!953 = !DILocation(line: 182, column: 25, scope: !951)
!954 = !DILocation(line: 182, column: 7, scope: !942)
!955 = !DILocation(line: 184, column: 5, scope: !951)
!956 = !DILocation(line: 185, column: 1, scope: !942)
!957 = distinct !DISubprogram(name: "error_tail", scope: !162, file: !162, line: 219, type: !923, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !958)
!958 = !{!959, !960, !961, !962}
!959 = !DILocalVariable(name: "status", arg: 1, scope: !957, file: !162, line: 219, type: !58)
!960 = !DILocalVariable(name: "errnum", arg: 2, scope: !957, file: !162, line: 219, type: !58)
!961 = !DILocalVariable(name: "message", arg: 3, scope: !957, file: !162, line: 219, type: !6)
!962 = !DILocalVariable(name: "args", arg: 4, scope: !957, file: !162, line: 219, type: !170)
!963 = !DILocation(line: 0, scope: !957)
!964 = !DILocation(line: 219, column: 1, scope: !957)
!965 = !DILocation(line: 229, column: 13, scope: !957)
!966 = !DILocation(line: 229, column: 3, scope: !957)
!967 = !DILocalVariable(name: "__stream", arg: 1, scope: !968, file: !969, line: 132, type: !972)
!968 = distinct !DISubprogram(name: "vfprintf", scope: !969, file: !969, line: 132, type: !970, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1007)
!969 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!970 = !DISubroutineType(types: !971)
!971 = !{!58, !972, !563, !172}
!972 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !976)
!976 = !{!977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !975, file: !89, line: 51, baseType: !58, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !975, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !975, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !975, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !975, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !975, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !975, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !975, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !975, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !975, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !975, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !975, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !975, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !975, file: !89, line: 70, baseType: !991, size: 64, offset: 832)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !975, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !975, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !975, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !975, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !975, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !975, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !975, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !975, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !975, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !975, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !975, file: !89, line: 93, baseType: !991, size: 64, offset: 1344)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !975, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !975, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !975, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !975, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!1007 = !{!967, !1008, !1009}
!1008 = !DILocalVariable(name: "__fmt", arg: 2, scope: !968, file: !969, line: 133, type: !563)
!1009 = !DILocalVariable(name: "__ap", arg: 3, scope: !968, file: !969, line: 133, type: !172)
!1010 = !DILocation(line: 0, scope: !968, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 229, column: 3, scope: !957)
!1012 = !DILocation(line: 135, column: 10, scope: !968, inlinedAt: !1011)
!1013 = !{!1014, !1016}
!1014 = distinct !{!1014, !1015, !"vfprintf.inline: argument 0"}
!1015 = distinct !{!1015, !"vfprintf.inline"}
!1016 = distinct !{!1016, !1015, !"vfprintf.inline: argument 1"}
!1017 = !DILocation(line: 232, column: 3, scope: !957)
!1018 = !DILocation(line: 233, column: 7, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !957, file: !162, line: 233, column: 7)
!1020 = !DILocation(line: 233, column: 7, scope: !957)
!1021 = !DILocalVariable(name: "errnum", arg: 1, scope: !1022, file: !162, line: 188, type: !58)
!1022 = distinct !DISubprogram(name: "print_errno_message", scope: !162, file: !162, line: 188, type: !56, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1023)
!1023 = !{!1021, !1024, !1025}
!1024 = !DILocalVariable(name: "s", scope: !1022, file: !162, line: 190, type: !6)
!1025 = !DILocalVariable(name: "errbuf", scope: !1022, file: !162, line: 193, type: !1026)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8192, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 1024)
!1029 = !DILocation(line: 0, scope: !1022, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 234, column: 5, scope: !1019)
!1031 = !DILocation(line: 193, column: 3, scope: !1022, inlinedAt: !1030)
!1032 = !DILocation(line: 193, column: 8, scope: !1022, inlinedAt: !1030)
!1033 = !DILocation(line: 195, column: 7, scope: !1022, inlinedAt: !1030)
!1034 = !DILocation(line: 207, column: 9, scope: !1035, inlinedAt: !1030)
!1035 = distinct !DILexicalBlock(scope: !1022, file: !162, line: 207, column: 7)
!1036 = !DILocation(line: 207, column: 7, scope: !1022, inlinedAt: !1030)
!1037 = !DILocation(line: 208, column: 9, scope: !1035, inlinedAt: !1030)
!1038 = !DILocation(line: 208, column: 5, scope: !1035, inlinedAt: !1030)
!1039 = !DILocation(line: 214, column: 3, scope: !1022, inlinedAt: !1030)
!1040 = !DILocation(line: 216, column: 1, scope: !1022, inlinedAt: !1030)
!1041 = !DILocation(line: 234, column: 5, scope: !1019)
!1042 = !DILocation(line: 238, column: 3, scope: !957)
!1043 = !DILocalVariable(name: "__c", arg: 1, scope: !1044, file: !820, line: 101, type: !58)
!1044 = distinct !DISubprogram(name: "putc_unlocked", scope: !820, file: !820, line: 101, type: !1045, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1047)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!58, !58, !973}
!1047 = !{!1043, !1048}
!1048 = !DILocalVariable(name: "__stream", arg: 2, scope: !1044, file: !820, line: 101, type: !973)
!1049 = !DILocation(line: 0, scope: !1044, inlinedAt: !1050)
!1050 = distinct !DILocation(line: 238, column: 3, scope: !957)
!1051 = !DILocation(line: 103, column: 10, scope: !1044, inlinedAt: !1050)
!1052 = !{!828, !474, i64 40}
!1053 = !{!828, !474, i64 48}
!1054 = !{!"branch_weights", i32 2000, i32 1}
!1055 = !DILocation(line: 240, column: 3, scope: !957)
!1056 = !DILocation(line: 241, column: 7, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !957, file: !162, line: 241, column: 7)
!1058 = !DILocation(line: 241, column: 7, scope: !957)
!1059 = !DILocation(line: 242, column: 5, scope: !1057)
!1060 = !DILocation(line: 243, column: 1, scope: !957)
!1061 = !DISubprogram(name: "strerror_r", scope: !1062, file: !1062, line: 444, type: !1063, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!1062 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1063 = !DISubroutineType(types: !1064)
!1064 = !{!93, !58, !93, !60}
!1065 = !DISubprogram(name: "fflush_unlocked", scope: !171, file: !171, line: 239, type: !1066, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!58, !973}
!1068 = !DISubprogram(name: "fcntl", scope: !860, file: !860, line: 149, type: !1069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!58, !58, !58, null}
!1071 = distinct !DISubprogram(name: "error", scope: !162, file: !162, line: 285, type: !1072, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !58, !58, !6, null}
!1074 = !{!1075, !1076, !1077, !1078}
!1075 = !DILocalVariable(name: "status", arg: 1, scope: !1071, file: !162, line: 285, type: !58)
!1076 = !DILocalVariable(name: "errnum", arg: 2, scope: !1071, file: !162, line: 285, type: !58)
!1077 = !DILocalVariable(name: "message", arg: 3, scope: !1071, file: !162, line: 285, type: !6)
!1078 = !DILocalVariable(name: "ap", scope: !1071, file: !162, line: 287, type: !170)
!1079 = !DILocation(line: 0, scope: !1071)
!1080 = !DILocation(line: 287, column: 3, scope: !1071)
!1081 = !DILocation(line: 287, column: 11, scope: !1071)
!1082 = !DILocation(line: 288, column: 3, scope: !1071)
!1083 = !DILocation(line: 289, column: 3, scope: !1071)
!1084 = !DILocation(line: 290, column: 3, scope: !1071)
!1085 = !DILocation(line: 291, column: 1, scope: !1071)
!1086 = !DILocation(line: 0, scope: !167)
!1087 = !DILocation(line: 298, column: 1, scope: !167)
!1088 = !DILocation(line: 302, column: 7, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !167, file: !162, line: 302, column: 7)
!1090 = !DILocation(line: 302, column: 7, scope: !167)
!1091 = !DILocation(line: 307, column: 11, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !162, line: 307, column: 11)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !162, line: 303, column: 5)
!1094 = !DILocation(line: 307, column: 27, scope: !1092)
!1095 = !DILocation(line: 308, column: 11, scope: !1092)
!1096 = !DILocation(line: 308, column: 28, scope: !1092)
!1097 = !DILocation(line: 308, column: 25, scope: !1092)
!1098 = !DILocation(line: 309, column: 15, scope: !1092)
!1099 = !DILocation(line: 309, column: 33, scope: !1092)
!1100 = !DILocation(line: 310, column: 19, scope: !1092)
!1101 = !DILocation(line: 311, column: 22, scope: !1092)
!1102 = !DILocation(line: 311, column: 56, scope: !1092)
!1103 = !DILocation(line: 307, column: 11, scope: !1093)
!1104 = !DILocation(line: 316, column: 21, scope: !1093)
!1105 = !DILocation(line: 317, column: 23, scope: !1093)
!1106 = !DILocation(line: 318, column: 5, scope: !1093)
!1107 = !DILocation(line: 327, column: 3, scope: !167)
!1108 = !DILocation(line: 331, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !167, file: !162, line: 331, column: 7)
!1110 = !DILocation(line: 331, column: 7, scope: !167)
!1111 = !DILocation(line: 332, column: 5, scope: !1109)
!1112 = !DILocation(line: 338, column: 7, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1109, file: !162, line: 334, column: 5)
!1114 = !DILocation(line: 346, column: 3, scope: !167)
!1115 = !DILocation(line: 350, column: 3, scope: !167)
!1116 = !DILocation(line: 356, column: 1, scope: !167)
!1117 = distinct !DISubprogram(name: "error_at_line", scope: !162, file: !162, line: 359, type: !1118, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{null, !58, !58, !6, !13, !6, null}
!1120 = !{!1121, !1122, !1123, !1124, !1125, !1126}
!1121 = !DILocalVariable(name: "status", arg: 1, scope: !1117, file: !162, line: 359, type: !58)
!1122 = !DILocalVariable(name: "errnum", arg: 2, scope: !1117, file: !162, line: 359, type: !58)
!1123 = !DILocalVariable(name: "file_name", arg: 3, scope: !1117, file: !162, line: 359, type: !6)
!1124 = !DILocalVariable(name: "line_number", arg: 4, scope: !1117, file: !162, line: 360, type: !13)
!1125 = !DILocalVariable(name: "message", arg: 5, scope: !1117, file: !162, line: 360, type: !6)
!1126 = !DILocalVariable(name: "ap", scope: !1117, file: !162, line: 362, type: !170)
!1127 = !DILocation(line: 0, scope: !1117)
!1128 = !DILocation(line: 362, column: 3, scope: !1117)
!1129 = !DILocation(line: 362, column: 11, scope: !1117)
!1130 = !DILocation(line: 363, column: 3, scope: !1117)
!1131 = !DILocation(line: 364, column: 3, scope: !1117)
!1132 = !DILocation(line: 366, column: 3, scope: !1117)
!1133 = !DILocation(line: 367, column: 1, scope: !1117)
!1134 = distinct !DISubprogram(name: "rpl_fcntl", scope: !203, file: !203, line: 202, type: !1069, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1135)
!1135 = !{!1136, !1137, !1138, !1149, !1150, !1153, !1155, !1159}
!1136 = !DILocalVariable(name: "fd", arg: 1, scope: !1134, file: !203, line: 202, type: !58)
!1137 = !DILocalVariable(name: "action", arg: 2, scope: !1134, file: !203, line: 202, type: !58)
!1138 = !DILocalVariable(name: "arg", scope: !1134, file: !203, line: 208, type: !1139)
!1139 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !173, line: 14, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1141, baseType: !1142)
!1141 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1142, file: !1141, line: 208, baseType: !52, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1142, file: !1141, line: 208, baseType: !52, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1142, file: !1141, line: 208, baseType: !52, size: 64, offset: 128)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1142, file: !1141, line: 208, baseType: !58, size: 32, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1142, file: !1141, line: 208, baseType: !58, size: 32, offset: 224)
!1149 = !DILocalVariable(name: "result", scope: !1134, file: !203, line: 211, type: !58)
!1150 = !DILocalVariable(name: "target", scope: !1151, file: !203, line: 216, type: !58)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !203, line: 215, column: 7)
!1152 = distinct !DILexicalBlock(scope: !1134, file: !203, line: 213, column: 5)
!1153 = !DILocalVariable(name: "target", scope: !1154, file: !203, line: 223, type: !58)
!1154 = distinct !DILexicalBlock(scope: !1152, file: !203, line: 222, column: 7)
!1155 = !DILocalVariable(name: "x", scope: !1156, file: !203, line: 418, type: !58)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !203, line: 417, column: 13)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !203, line: 261, column: 11)
!1158 = distinct !DILexicalBlock(scope: !1152, file: !203, line: 258, column: 7)
!1159 = !DILocalVariable(name: "p", scope: !1160, file: !203, line: 426, type: !52)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !203, line: 425, column: 13)
!1161 = !DILocation(line: 0, scope: !1134)
!1162 = !DILocation(line: 208, column: 3, scope: !1134)
!1163 = !DILocation(line: 208, column: 11, scope: !1134)
!1164 = !DILocation(line: 209, column: 3, scope: !1134)
!1165 = !DILocation(line: 212, column: 3, scope: !1134)
!1166 = !DILocation(line: 216, column: 22, scope: !1151)
!1167 = !DILocation(line: 0, scope: !1151)
!1168 = !DILocalVariable(name: "fd", arg: 1, scope: !1169, file: !203, line: 444, type: !58)
!1169 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !203, file: !203, line: 444, type: !204, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1170)
!1170 = !{!1168, !1171, !1172}
!1171 = !DILocalVariable(name: "target", arg: 2, scope: !1169, file: !203, line: 444, type: !58)
!1172 = !DILocalVariable(name: "result", scope: !1169, file: !203, line: 446, type: !58)
!1173 = !DILocation(line: 0, scope: !1169, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 217, column: 18, scope: !1151)
!1175 = !DILocation(line: 479, column: 12, scope: !1169, inlinedAt: !1174)
!1176 = !DILocation(line: 223, column: 22, scope: !1154)
!1177 = !DILocation(line: 0, scope: !1154)
!1178 = !DILocation(line: 0, scope: !202, inlinedAt: !1179)
!1179 = distinct !DILocation(line: 224, column: 18, scope: !1154)
!1180 = !DILocation(line: 507, column: 12, scope: !1181, inlinedAt: !1179)
!1181 = distinct !DILexicalBlock(scope: !202, file: !203, line: 507, column: 7)
!1182 = !DILocation(line: 507, column: 9, scope: !1181, inlinedAt: !1179)
!1183 = !DILocation(line: 507, column: 7, scope: !202, inlinedAt: !1179)
!1184 = !DILocation(line: 509, column: 16, scope: !1185, inlinedAt: !1179)
!1185 = distinct !DILexicalBlock(scope: !1181, file: !203, line: 508, column: 5)
!1186 = !DILocation(line: 510, column: 13, scope: !1187, inlinedAt: !1179)
!1187 = distinct !DILexicalBlock(scope: !1185, file: !203, line: 510, column: 11)
!1188 = !DILocation(line: 510, column: 23, scope: !1187, inlinedAt: !1179)
!1189 = !DILocation(line: 510, column: 26, scope: !1187, inlinedAt: !1179)
!1190 = !DILocation(line: 510, column: 32, scope: !1187, inlinedAt: !1179)
!1191 = !DILocation(line: 510, column: 11, scope: !1185, inlinedAt: !1179)
!1192 = !DILocation(line: 512, column: 30, scope: !1193, inlinedAt: !1179)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !203, line: 511, column: 9)
!1194 = !DILocation(line: 528, column: 19, scope: !214, inlinedAt: !1179)
!1195 = !DILocation(line: 0, scope: !1169, inlinedAt: !1196)
!1196 = distinct !DILocation(line: 520, column: 20, scope: !1197, inlinedAt: !1179)
!1197 = distinct !DILexicalBlock(scope: !1187, file: !203, line: 519, column: 9)
!1198 = !DILocation(line: 479, column: 12, scope: !1169, inlinedAt: !1196)
!1199 = !DILocation(line: 521, column: 22, scope: !1200, inlinedAt: !1179)
!1200 = distinct !DILexicalBlock(scope: !1197, file: !203, line: 521, column: 15)
!1201 = !DILocation(line: 521, column: 15, scope: !1197, inlinedAt: !1179)
!1202 = !DILocation(line: 522, column: 32, scope: !1200, inlinedAt: !1179)
!1203 = !DILocation(line: 522, column: 13, scope: !1200, inlinedAt: !1179)
!1204 = !DILocation(line: 0, scope: !1169, inlinedAt: !1205)
!1205 = distinct !DILocation(line: 527, column: 14, scope: !1181, inlinedAt: !1179)
!1206 = !DILocation(line: 479, column: 12, scope: !1169, inlinedAt: !1205)
!1207 = !DILocation(line: 0, scope: !1181, inlinedAt: !1179)
!1208 = !DILocation(line: 528, column: 9, scope: !214, inlinedAt: !1179)
!1209 = !DILocation(line: 530, column: 19, scope: !213, inlinedAt: !1179)
!1210 = !DILocation(line: 0, scope: !213, inlinedAt: !1179)
!1211 = !DILocation(line: 531, column: 17, scope: !217, inlinedAt: !1179)
!1212 = !DILocation(line: 531, column: 21, scope: !217, inlinedAt: !1179)
!1213 = !DILocation(line: 531, column: 54, scope: !217, inlinedAt: !1179)
!1214 = !DILocation(line: 531, column: 24, scope: !217, inlinedAt: !1179)
!1215 = !DILocation(line: 531, column: 68, scope: !217, inlinedAt: !1179)
!1216 = !DILocation(line: 531, column: 11, scope: !213, inlinedAt: !1179)
!1217 = !DILocation(line: 533, column: 29, scope: !216, inlinedAt: !1179)
!1218 = !DILocation(line: 0, scope: !216, inlinedAt: !1179)
!1219 = !DILocation(line: 534, column: 11, scope: !216, inlinedAt: !1179)
!1220 = !DILocation(line: 535, column: 17, scope: !216, inlinedAt: !1179)
!1221 = !DILocation(line: 537, column: 9, scope: !216, inlinedAt: !1179)
!1222 = !DILocation(line: 329, column: 22, scope: !1157)
!1223 = !DILocation(line: 330, column: 13, scope: !1157)
!1224 = !DILocation(line: 418, column: 23, scope: !1156)
!1225 = !DILocation(line: 0, scope: !1156)
!1226 = !DILocation(line: 419, column: 24, scope: !1156)
!1227 = !DILocation(line: 421, column: 13, scope: !1157)
!1228 = !DILocation(line: 426, column: 25, scope: !1160)
!1229 = !DILocation(line: 0, scope: !1160)
!1230 = !DILocation(line: 427, column: 24, scope: !1160)
!1231 = !DILocation(line: 429, column: 13, scope: !1157)
!1232 = !DILocation(line: 0, scope: !1152)
!1233 = !DILocation(line: 438, column: 3, scope: !1134)
!1234 = !DILocation(line: 441, column: 1, scope: !1134)
!1235 = !DILocation(line: 440, column: 3, scope: !1134)
!1236 = distinct !DISubprogram(name: "fd_reopen", scope: !383, file: !383, line: 32, type: !1237, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !1239)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!58, !58, !6, !58, !712}
!1239 = !{!1240, !1241, !1242, !1243, !1244, !1245, !1248}
!1240 = !DILocalVariable(name: "desired_fd", arg: 1, scope: !1236, file: !383, line: 32, type: !58)
!1241 = !DILocalVariable(name: "file", arg: 2, scope: !1236, file: !383, line: 32, type: !6)
!1242 = !DILocalVariable(name: "flags", arg: 3, scope: !1236, file: !383, line: 32, type: !58)
!1243 = !DILocalVariable(name: "mode", arg: 4, scope: !1236, file: !383, line: 32, type: !712)
!1244 = !DILocalVariable(name: "fd", scope: !1236, file: !383, line: 34, type: !58)
!1245 = !DILocalVariable(name: "fd2", scope: !1246, file: !383, line: 40, type: !58)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !383, line: 39, column: 5)
!1247 = distinct !DILexicalBlock(scope: !1236, file: !383, line: 36, column: 7)
!1248 = !DILocalVariable(name: "saved_errno", scope: !1246, file: !383, line: 41, type: !58)
!1249 = !DILocation(line: 0, scope: !1236)
!1250 = !DILocation(line: 34, column: 12, scope: !1236)
!1251 = !DILocation(line: 36, column: 10, scope: !1247)
!1252 = !DILocation(line: 36, column: 24, scope: !1247)
!1253 = !DILocation(line: 40, column: 17, scope: !1246)
!1254 = !DILocation(line: 0, scope: !1246)
!1255 = !DILocation(line: 41, column: 25, scope: !1246)
!1256 = !DILocation(line: 42, column: 7, scope: !1246)
!1257 = !DILocation(line: 43, column: 13, scope: !1246)
!1258 = !DILocation(line: 0, scope: !1247)
!1259 = !DILocation(line: 46, column: 1, scope: !1236)
!1260 = distinct !DISubprogram(name: "file_name_concat", scope: !385, file: !385, line: 35, type: !1261, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !384, retainedNodes: !1263)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!93, !6, !6, !690}
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DILocalVariable(name: "dir", arg: 1, scope: !1260, file: !385, line: 35, type: !6)
!1265 = !DILocalVariable(name: "base", arg: 2, scope: !1260, file: !385, line: 35, type: !6)
!1266 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1260, file: !385, line: 35, type: !690)
!1267 = !DILocalVariable(name: "p", scope: !1260, file: !385, line: 37, type: !93)
!1268 = !DILocation(line: 0, scope: !1260)
!1269 = !DILocation(line: 37, column: 13, scope: !1260)
!1270 = !DILocation(line: 38, column: 9, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1260, file: !385, line: 38, column: 7)
!1272 = !DILocation(line: 38, column: 7, scope: !1260)
!1273 = !DILocation(line: 39, column: 5, scope: !1271)
!1274 = !DILocation(line: 40, column: 3, scope: !1260)
!1275 = distinct !DISubprogram(name: "mfile_name_concat", scope: !388, file: !388, line: 48, type: !1261, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286}
!1277 = !DILocalVariable(name: "dir", arg: 1, scope: !1275, file: !388, line: 48, type: !6)
!1278 = !DILocalVariable(name: "base", arg: 2, scope: !1275, file: !388, line: 48, type: !6)
!1279 = !DILocalVariable(name: "base_in_result", arg: 3, scope: !1275, file: !388, line: 48, type: !690)
!1280 = !DILocalVariable(name: "dirbase", scope: !1275, file: !388, line: 50, type: !6)
!1281 = !DILocalVariable(name: "dirbaselen", scope: !1275, file: !388, line: 51, type: !60)
!1282 = !DILocalVariable(name: "dirlen", scope: !1275, file: !388, line: 52, type: !60)
!1283 = !DILocalVariable(name: "baselen", scope: !1275, file: !388, line: 53, type: !60)
!1284 = !DILocalVariable(name: "sep", scope: !1275, file: !388, line: 54, type: !8)
!1285 = !DILocalVariable(name: "p_concat", scope: !1275, file: !388, line: 71, type: !93)
!1286 = !DILocalVariable(name: "p", scope: !1287, file: !388, line: 76, type: !93)
!1287 = distinct !DILexicalBlock(scope: !1275, file: !388, line: 75, column: 3)
!1288 = !DILocation(line: 0, scope: !1275)
!1289 = !DILocation(line: 50, column: 25, scope: !1275)
!1290 = !DILocation(line: 51, column: 23, scope: !1275)
!1291 = !DILocation(line: 52, column: 27, scope: !1275)
!1292 = !DILocation(line: 52, column: 33, scope: !1275)
!1293 = !DILocation(line: 53, column: 20, scope: !1275)
!1294 = !DILocation(line: 55, column: 7, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1275, file: !388, line: 55, column: 7)
!1296 = !DILocation(line: 55, column: 7, scope: !1275)
!1297 = !DILocation(line: 58, column: 13, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !388, line: 58, column: 11)
!1299 = distinct !DILexicalBlock(scope: !1295, file: !388, line: 56, column: 5)
!1300 = !DILocation(line: 58, column: 39, scope: !1298)
!1301 = !DILocation(line: 58, column: 44, scope: !1298)
!1302 = !DILocation(line: 58, column: 11, scope: !1299)
!1303 = !DILocation(line: 61, column: 12, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !388, line: 61, column: 12)
!1305 = !DILocation(line: 61, column: 12, scope: !1295)
!1306 = !DILocation(line: 71, column: 35, scope: !1275)
!1307 = !DILocation(line: 71, column: 52, scope: !1275)
!1308 = !DILocation(line: 71, column: 62, scope: !1275)
!1309 = !DILocation(line: 71, column: 20, scope: !1275)
!1310 = !DILocation(line: 72, column: 16, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1275, file: !388, line: 72, column: 7)
!1312 = !DILocation(line: 72, column: 7, scope: !1275)
!1313 = !DILocalVariable(name: "__dest", arg: 1, scope: !1314, file: !1315, line: 42, type: !1318)
!1314 = distinct !DISubprogram(name: "mempcpy", scope: !1315, file: !1315, line: 42, type: !1316, scopeLine: 44, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !1319)
!1315 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!52, !1318, !684, !60}
!1318 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!1319 = !{!1313, !1320, !1321}
!1320 = !DILocalVariable(name: "__src", arg: 2, scope: !1314, file: !1315, line: 42, type: !684)
!1321 = !DILocalVariable(name: "__len", arg: 3, scope: !1314, file: !1315, line: 42, type: !60)
!1322 = !DILocation(line: 0, scope: !1314, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 78, column: 9, scope: !1287)
!1324 = !DILocation(line: 45, column: 10, scope: !1314, inlinedAt: !1323)
!1325 = !DILocation(line: 0, scope: !1287)
!1326 = !DILocation(line: 79, column: 8, scope: !1287)
!1327 = !DILocation(line: 80, column: 7, scope: !1287)
!1328 = !DILocation(line: 82, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1287, file: !388, line: 82, column: 9)
!1330 = !DILocation(line: 82, column: 9, scope: !1287)
!1331 = !DILocation(line: 83, column: 23, scope: !1329)
!1332 = !DILocation(line: 83, column: 7, scope: !1329)
!1333 = !DILocation(line: 0, scope: !1314, inlinedAt: !1334)
!1334 = distinct !DILocation(line: 85, column: 9, scope: !1287)
!1335 = !DILocation(line: 45, column: 10, scope: !1314, inlinedAt: !1334)
!1336 = !DILocation(line: 86, column: 8, scope: !1287)
!1337 = !DILocation(line: 89, column: 3, scope: !1275)
!1338 = !DILocation(line: 90, column: 1, scope: !1275)
!1339 = distinct !DISubprogram(name: "getprogname", scope: !390, file: !390, line: 54, type: !1340, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !559)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{!6}
!1342 = !DILocation(line: 58, column: 10, scope: !1339)
!1343 = !DILocation(line: 58, column: 3, scope: !1339)
!1344 = distinct !DISubprogram(name: "parse_long_options", scope: !221, file: !221, line: 45, type: !1345, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1347)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{null, !58, !690, !6, !6, !6, !55, null}
!1347 = !{!1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1358}
!1348 = !DILocalVariable(name: "argc", arg: 1, scope: !1344, file: !221, line: 45, type: !58)
!1349 = !DILocalVariable(name: "argv", arg: 2, scope: !1344, file: !221, line: 46, type: !690)
!1350 = !DILocalVariable(name: "command_name", arg: 3, scope: !1344, file: !221, line: 47, type: !6)
!1351 = !DILocalVariable(name: "package", arg: 4, scope: !1344, file: !221, line: 48, type: !6)
!1352 = !DILocalVariable(name: "version", arg: 5, scope: !1344, file: !221, line: 49, type: !6)
!1353 = !DILocalVariable(name: "usage_func", arg: 6, scope: !1344, file: !221, line: 50, type: !55)
!1354 = !DILocalVariable(name: "saved_opterr", scope: !1344, file: !221, line: 53, type: !58)
!1355 = !DILocalVariable(name: "c", scope: !1356, file: !221, line: 60, type: !58)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !221, line: 59, column: 5)
!1357 = distinct !DILexicalBlock(scope: !1344, file: !221, line: 58, column: 7)
!1358 = !DILocalVariable(name: "authors", scope: !1359, file: !221, line: 71, type: !1363)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !221, line: 70, column: 15)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !221, line: 64, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !221, line: 62, column: 9)
!1362 = distinct !DILexicalBlock(scope: !1356, file: !221, line: 61, column: 11)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !1364)
!1364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !1365)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1366, baseType: !1367)
!1366 = !DIFile(filename: "lib/long-options.c", directory: "/src")
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372, !1373}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1367, file: !1366, line: 71, baseType: !52, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1367, file: !1366, line: 71, baseType: !52, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1367, file: !1366, line: 71, baseType: !52, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1367, file: !1366, line: 71, baseType: !58, size: 32, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1367, file: !1366, line: 71, baseType: !58, size: 32, offset: 224)
!1374 = !DILocation(line: 0, scope: !1344)
!1375 = !DILocation(line: 53, column: 22, scope: !1344)
!1376 = !DILocation(line: 56, column: 10, scope: !1344)
!1377 = !DILocation(line: 58, column: 12, scope: !1357)
!1378 = !DILocation(line: 58, column: 7, scope: !1344)
!1379 = !DILocation(line: 60, column: 15, scope: !1356)
!1380 = !DILocation(line: 0, scope: !1356)
!1381 = !DILocation(line: 61, column: 11, scope: !1356)
!1382 = !DILocation(line: 66, column: 15, scope: !1360)
!1383 = !DILocation(line: 67, column: 15, scope: !1360)
!1384 = !DILocation(line: 71, column: 17, scope: !1359)
!1385 = !DILocation(line: 71, column: 25, scope: !1359)
!1386 = !DILocation(line: 72, column: 17, scope: !1359)
!1387 = !DILocation(line: 73, column: 33, scope: !1359)
!1388 = !DILocation(line: 73, column: 17, scope: !1359)
!1389 = !DILocation(line: 74, column: 17, scope: !1359)
!1390 = !DILocation(line: 85, column: 10, scope: !1344)
!1391 = !DILocation(line: 89, column: 10, scope: !1344)
!1392 = !DILocation(line: 90, column: 1, scope: !1344)
!1393 = !DISubprogram(name: "getopt_long", scope: !226, file: !226, line: 66, type: !1394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!58, !58, !871, !6, !1396, !231}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1397 = distinct !DISubprogram(name: "parse_gnu_standard_options_only", scope: !221, file: !221, line: 98, type: !1398, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !220, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !58, !690, !6, !6, !6, !72, !55, null}
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1401 = !DILocalVariable(name: "argc", arg: 1, scope: !1397, file: !221, line: 98, type: !58)
!1402 = !DILocalVariable(name: "argv", arg: 2, scope: !1397, file: !221, line: 99, type: !690)
!1403 = !DILocalVariable(name: "command_name", arg: 3, scope: !1397, file: !221, line: 100, type: !6)
!1404 = !DILocalVariable(name: "package", arg: 4, scope: !1397, file: !221, line: 101, type: !6)
!1405 = !DILocalVariable(name: "version", arg: 5, scope: !1397, file: !221, line: 102, type: !6)
!1406 = !DILocalVariable(name: "scan_all", arg: 6, scope: !1397, file: !221, line: 103, type: !72)
!1407 = !DILocalVariable(name: "usage_func", arg: 7, scope: !1397, file: !221, line: 104, type: !55)
!1408 = !DILocalVariable(name: "saved_opterr", scope: !1397, file: !221, line: 107, type: !58)
!1409 = !DILocalVariable(name: "optstring", scope: !1397, file: !221, line: 112, type: !6)
!1410 = !DILocalVariable(name: "c", scope: !1397, file: !221, line: 114, type: !58)
!1411 = !DILocalVariable(name: "authors", scope: !1412, file: !221, line: 125, type: !1363)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !221, line: 124, column: 11)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !221, line: 118, column: 9)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !221, line: 116, column: 5)
!1415 = distinct !DILexicalBlock(scope: !1397, file: !221, line: 115, column: 7)
!1416 = !DILocation(line: 0, scope: !1397)
!1417 = !DILocation(line: 107, column: 22, scope: !1397)
!1418 = !DILocation(line: 110, column: 10, scope: !1397)
!1419 = !DILocation(line: 112, column: 27, scope: !1397)
!1420 = !DILocation(line: 114, column: 11, scope: !1397)
!1421 = !DILocation(line: 115, column: 7, scope: !1397)
!1422 = !DILocation(line: 125, column: 13, scope: !1412)
!1423 = !DILocation(line: 125, column: 21, scope: !1412)
!1424 = !DILocation(line: 126, column: 13, scope: !1412)
!1425 = !DILocation(line: 127, column: 29, scope: !1412)
!1426 = !DILocation(line: 127, column: 13, scope: !1412)
!1427 = !DILocation(line: 128, column: 13, scope: !1412)
!1428 = !DILocation(line: 132, column: 26, scope: !1413)
!1429 = !DILocation(line: 133, column: 11, scope: !1413)
!1430 = !DILocation(line: 0, scope: !1413)
!1431 = !DILocation(line: 138, column: 10, scope: !1397)
!1432 = !DILocation(line: 139, column: 1, scope: !1397)
!1433 = distinct !DISubprogram(name: "set_program_name", scope: !238, file: !238, line: 37, type: !486, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !1434)
!1434 = !{!1435, !1436, !1437}
!1435 = !DILocalVariable(name: "argv0", arg: 1, scope: !1433, file: !238, line: 37, type: !6)
!1436 = !DILocalVariable(name: "slash", scope: !1433, file: !238, line: 44, type: !6)
!1437 = !DILocalVariable(name: "base", scope: !1433, file: !238, line: 45, type: !6)
!1438 = !DILocation(line: 0, scope: !1433)
!1439 = !DILocation(line: 44, column: 23, scope: !1433)
!1440 = !DILocation(line: 45, column: 22, scope: !1433)
!1441 = !DILocation(line: 46, column: 17, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !238, line: 46, column: 7)
!1443 = !DILocation(line: 46, column: 9, scope: !1442)
!1444 = !DILocation(line: 46, column: 25, scope: !1442)
!1445 = !DILocation(line: 46, column: 40, scope: !1442)
!1446 = !DILocalVariable(name: "__s1", arg: 1, scope: !1447, file: !517, line: 974, type: !685)
!1447 = distinct !DISubprogram(name: "memeq", scope: !517, file: !517, line: 974, type: !1448, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!72, !685, !685, !60}
!1450 = !{!1446, !1451, !1452}
!1451 = !DILocalVariable(name: "__s2", arg: 2, scope: !1447, file: !517, line: 974, type: !685)
!1452 = !DILocalVariable(name: "__n", arg: 3, scope: !1447, file: !517, line: 974, type: !60)
!1453 = !DILocation(line: 0, scope: !1447, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 46, column: 28, scope: !1442)
!1455 = !DILocation(line: 976, column: 11, scope: !1447, inlinedAt: !1454)
!1456 = !DILocation(line: 976, column: 10, scope: !1447, inlinedAt: !1454)
!1457 = !DILocation(line: 46, column: 7, scope: !1433)
!1458 = !DILocation(line: 49, column: 11, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !238, line: 49, column: 11)
!1460 = distinct !DILexicalBlock(scope: !1442, file: !238, line: 47, column: 5)
!1461 = !DILocation(line: 49, column: 36, scope: !1459)
!1462 = !DILocation(line: 49, column: 11, scope: !1460)
!1463 = !DILocation(line: 65, column: 16, scope: !1433)
!1464 = !DILocation(line: 71, column: 27, scope: !1433)
!1465 = !DILocation(line: 74, column: 33, scope: !1433)
!1466 = !DILocation(line: 76, column: 1, scope: !1433)
!1467 = !DILocation(line: 0, scope: !243)
!1468 = !DILocation(line: 40, column: 29, scope: !243)
!1469 = !DILocation(line: 41, column: 19, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !243, file: !244, line: 41, column: 7)
!1471 = !DILocation(line: 41, column: 7, scope: !243)
!1472 = !DILocation(line: 47, column: 3, scope: !243)
!1473 = !DILocation(line: 48, column: 3, scope: !243)
!1474 = !DILocation(line: 48, column: 13, scope: !243)
!1475 = !DILocalVariable(name: "ps", arg: 1, scope: !1476, file: !1477, line: 1135, type: !1480)
!1476 = distinct !DISubprogram(name: "mbszero", scope: !1477, file: !1477, line: 1135, type: !1478, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1481)
!1477 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1481 = !{!1475}
!1482 = !DILocation(line: 0, scope: !1476, inlinedAt: !1483)
!1483 = distinct !DILocation(line: 48, column: 18, scope: !243)
!1484 = !DILocalVariable(name: "__dest", arg: 1, scope: !1485, file: !1315, line: 57, type: !52)
!1485 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1486, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1488)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!52, !52, !58, !60}
!1488 = !{!1484, !1489, !1490}
!1489 = !DILocalVariable(name: "__ch", arg: 2, scope: !1485, file: !1315, line: 57, type: !58)
!1490 = !DILocalVariable(name: "__len", arg: 3, scope: !1485, file: !1315, line: 57, type: !60)
!1491 = !DILocation(line: 0, scope: !1485, inlinedAt: !1492)
!1492 = distinct !DILocation(line: 1137, column: 3, scope: !1476, inlinedAt: !1483)
!1493 = !DILocation(line: 59, column: 10, scope: !1485, inlinedAt: !1492)
!1494 = !DILocation(line: 49, column: 7, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !243, file: !244, line: 49, column: 7)
!1496 = !DILocation(line: 49, column: 39, scope: !1495)
!1497 = !DILocation(line: 49, column: 44, scope: !1495)
!1498 = !DILocation(line: 54, column: 1, scope: !243)
!1499 = !DISubprogram(name: "mbrtoc32", scope: !255, file: !255, line: 57, type: !1500, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!60, !1502, !563, !60, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1480)
!1505 = distinct !DISubprogram(name: "clone_quoting_options", scope: !280, file: !280, line: 113, type: !1506, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1509)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!1508, !1508}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1509 = !{!1510, !1511, !1512}
!1510 = !DILocalVariable(name: "o", arg: 1, scope: !1505, file: !280, line: 113, type: !1508)
!1511 = !DILocalVariable(name: "saved_errno", scope: !1505, file: !280, line: 115, type: !58)
!1512 = !DILocalVariable(name: "p", scope: !1505, file: !280, line: 116, type: !1508)
!1513 = !DILocation(line: 0, scope: !1505)
!1514 = !DILocation(line: 115, column: 21, scope: !1505)
!1515 = !DILocation(line: 116, column: 40, scope: !1505)
!1516 = !DILocation(line: 116, column: 31, scope: !1505)
!1517 = !DILocation(line: 118, column: 9, scope: !1505)
!1518 = !DILocation(line: 119, column: 3, scope: !1505)
!1519 = distinct !DISubprogram(name: "get_quoting_style", scope: !280, file: !280, line: 124, type: !1520, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1524)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!22, !1522}
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!1524 = !{!1525}
!1525 = !DILocalVariable(name: "o", arg: 1, scope: !1519, file: !280, line: 124, type: !1522)
!1526 = !DILocation(line: 0, scope: !1519)
!1527 = !DILocation(line: 126, column: 11, scope: !1519)
!1528 = !DILocation(line: 126, column: 46, scope: !1519)
!1529 = !{!1530, !475, i64 0}
!1530 = !{!"quoting_options", !475, i64 0, !568, i64 4, !475, i64 8, !474, i64 40, !474, i64 48}
!1531 = !DILocation(line: 126, column: 3, scope: !1519)
!1532 = distinct !DISubprogram(name: "set_quoting_style", scope: !280, file: !280, line: 132, type: !1533, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1535)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{null, !1508, !22}
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "o", arg: 1, scope: !1532, file: !280, line: 132, type: !1508)
!1537 = !DILocalVariable(name: "s", arg: 2, scope: !1532, file: !280, line: 132, type: !22)
!1538 = !DILocation(line: 0, scope: !1532)
!1539 = !DILocation(line: 134, column: 4, scope: !1532)
!1540 = !DILocation(line: 134, column: 39, scope: !1532)
!1541 = !DILocation(line: 134, column: 45, scope: !1532)
!1542 = !DILocation(line: 135, column: 1, scope: !1532)
!1543 = distinct !DISubprogram(name: "set_char_quoting", scope: !280, file: !280, line: 143, type: !1544, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1546)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!58, !1508, !8, !58}
!1546 = !{!1547, !1548, !1549, !1550, !1551, !1553, !1554}
!1547 = !DILocalVariable(name: "o", arg: 1, scope: !1543, file: !280, line: 143, type: !1508)
!1548 = !DILocalVariable(name: "c", arg: 2, scope: !1543, file: !280, line: 143, type: !8)
!1549 = !DILocalVariable(name: "i", arg: 3, scope: !1543, file: !280, line: 143, type: !58)
!1550 = !DILocalVariable(name: "uc", scope: !1543, file: !280, line: 145, type: !63)
!1551 = !DILocalVariable(name: "p", scope: !1543, file: !280, line: 146, type: !1552)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1553 = !DILocalVariable(name: "shift", scope: !1543, file: !280, line: 148, type: !58)
!1554 = !DILocalVariable(name: "r", scope: !1543, file: !280, line: 149, type: !13)
!1555 = !DILocation(line: 0, scope: !1543)
!1556 = !DILocation(line: 147, column: 6, scope: !1543)
!1557 = !DILocation(line: 147, column: 62, scope: !1543)
!1558 = !DILocation(line: 147, column: 57, scope: !1543)
!1559 = !DILocation(line: 148, column: 15, scope: !1543)
!1560 = !DILocation(line: 149, column: 21, scope: !1543)
!1561 = !DILocation(line: 149, column: 24, scope: !1543)
!1562 = !DILocation(line: 149, column: 34, scope: !1543)
!1563 = !DILocation(line: 150, column: 13, scope: !1543)
!1564 = !DILocation(line: 150, column: 19, scope: !1543)
!1565 = !DILocation(line: 150, column: 24, scope: !1543)
!1566 = !DILocation(line: 150, column: 6, scope: !1543)
!1567 = !DILocation(line: 151, column: 3, scope: !1543)
!1568 = distinct !DISubprogram(name: "set_quoting_flags", scope: !280, file: !280, line: 159, type: !1569, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1571)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!58, !1508, !58}
!1571 = !{!1572, !1573, !1574}
!1572 = !DILocalVariable(name: "o", arg: 1, scope: !1568, file: !280, line: 159, type: !1508)
!1573 = !DILocalVariable(name: "i", arg: 2, scope: !1568, file: !280, line: 159, type: !58)
!1574 = !DILocalVariable(name: "r", scope: !1568, file: !280, line: 163, type: !58)
!1575 = !DILocation(line: 0, scope: !1568)
!1576 = !DILocation(line: 161, column: 8, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1568, file: !280, line: 161, column: 7)
!1578 = !DILocation(line: 161, column: 7, scope: !1568)
!1579 = !DILocation(line: 163, column: 14, scope: !1568)
!1580 = !{!1530, !568, i64 4}
!1581 = !DILocation(line: 164, column: 12, scope: !1568)
!1582 = !DILocation(line: 165, column: 3, scope: !1568)
!1583 = distinct !DISubprogram(name: "set_custom_quoting", scope: !280, file: !280, line: 169, type: !1584, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1586)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1508, !6, !6}
!1586 = !{!1587, !1588, !1589}
!1587 = !DILocalVariable(name: "o", arg: 1, scope: !1583, file: !280, line: 169, type: !1508)
!1588 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1583, file: !280, line: 170, type: !6)
!1589 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1583, file: !280, line: 170, type: !6)
!1590 = !DILocation(line: 0, scope: !1583)
!1591 = !DILocation(line: 172, column: 8, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1583, file: !280, line: 172, column: 7)
!1593 = !DILocation(line: 172, column: 7, scope: !1583)
!1594 = !DILocation(line: 174, column: 6, scope: !1583)
!1595 = !DILocation(line: 174, column: 12, scope: !1583)
!1596 = !DILocation(line: 175, column: 8, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1583, file: !280, line: 175, column: 7)
!1598 = !DILocation(line: 175, column: 19, scope: !1597)
!1599 = !DILocation(line: 176, column: 5, scope: !1597)
!1600 = !DILocation(line: 177, column: 6, scope: !1583)
!1601 = !DILocation(line: 177, column: 17, scope: !1583)
!1602 = !{!1530, !474, i64 40}
!1603 = !DILocation(line: 178, column: 6, scope: !1583)
!1604 = !DILocation(line: 178, column: 18, scope: !1583)
!1605 = !{!1530, !474, i64 48}
!1606 = !DILocation(line: 179, column: 1, scope: !1583)
!1607 = distinct !DISubprogram(name: "quotearg_buffer", scope: !280, file: !280, line: 774, type: !1608, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1610)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!60, !93, !60, !6, !60, !1522}
!1610 = !{!1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1611 = !DILocalVariable(name: "buffer", arg: 1, scope: !1607, file: !280, line: 774, type: !93)
!1612 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1607, file: !280, line: 774, type: !60)
!1613 = !DILocalVariable(name: "arg", arg: 3, scope: !1607, file: !280, line: 775, type: !6)
!1614 = !DILocalVariable(name: "argsize", arg: 4, scope: !1607, file: !280, line: 775, type: !60)
!1615 = !DILocalVariable(name: "o", arg: 5, scope: !1607, file: !280, line: 776, type: !1522)
!1616 = !DILocalVariable(name: "p", scope: !1607, file: !280, line: 778, type: !1522)
!1617 = !DILocalVariable(name: "saved_errno", scope: !1607, file: !280, line: 779, type: !58)
!1618 = !DILocalVariable(name: "r", scope: !1607, file: !280, line: 780, type: !60)
!1619 = !DILocation(line: 0, scope: !1607)
!1620 = !DILocation(line: 778, column: 37, scope: !1607)
!1621 = !DILocation(line: 779, column: 21, scope: !1607)
!1622 = !DILocation(line: 781, column: 43, scope: !1607)
!1623 = !DILocation(line: 781, column: 53, scope: !1607)
!1624 = !DILocation(line: 781, column: 60, scope: !1607)
!1625 = !DILocation(line: 782, column: 43, scope: !1607)
!1626 = !DILocation(line: 782, column: 58, scope: !1607)
!1627 = !DILocation(line: 780, column: 14, scope: !1607)
!1628 = !DILocation(line: 783, column: 9, scope: !1607)
!1629 = !DILocation(line: 784, column: 3, scope: !1607)
!1630 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !280, file: !280, line: 251, type: !1631, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1635)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!60, !93, !60, !6, !60, !22, !58, !1633, !6, !6}
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!1635 = !{!1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1660, !1662, !1665, !1666, !1667, !1668, !1671, !1672, !1675, !1679, !1680, !1688, !1691, !1692, !1694, !1695, !1696, !1697}
!1636 = !DILocalVariable(name: "buffer", arg: 1, scope: !1630, file: !280, line: 251, type: !93)
!1637 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1630, file: !280, line: 251, type: !60)
!1638 = !DILocalVariable(name: "arg", arg: 3, scope: !1630, file: !280, line: 252, type: !6)
!1639 = !DILocalVariable(name: "argsize", arg: 4, scope: !1630, file: !280, line: 252, type: !60)
!1640 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1630, file: !280, line: 253, type: !22)
!1641 = !DILocalVariable(name: "flags", arg: 6, scope: !1630, file: !280, line: 253, type: !58)
!1642 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1630, file: !280, line: 254, type: !1633)
!1643 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1630, file: !280, line: 255, type: !6)
!1644 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1630, file: !280, line: 256, type: !6)
!1645 = !DILocalVariable(name: "unibyte_locale", scope: !1630, file: !280, line: 258, type: !72)
!1646 = !DILocalVariable(name: "len", scope: !1630, file: !280, line: 260, type: !60)
!1647 = !DILocalVariable(name: "orig_buffersize", scope: !1630, file: !280, line: 261, type: !60)
!1648 = !DILocalVariable(name: "quote_string", scope: !1630, file: !280, line: 262, type: !6)
!1649 = !DILocalVariable(name: "quote_string_len", scope: !1630, file: !280, line: 263, type: !60)
!1650 = !DILocalVariable(name: "backslash_escapes", scope: !1630, file: !280, line: 264, type: !72)
!1651 = !DILocalVariable(name: "elide_outer_quotes", scope: !1630, file: !280, line: 265, type: !72)
!1652 = !DILocalVariable(name: "encountered_single_quote", scope: !1630, file: !280, line: 266, type: !72)
!1653 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1630, file: !280, line: 267, type: !72)
!1654 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1630, file: !280, line: 309, type: !72)
!1655 = !DILocalVariable(name: "lq", scope: !1656, file: !280, line: 361, type: !6)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !280, line: 361, column: 11)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !280, line: 360, column: 13)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !280, line: 333, column: 7)
!1659 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 312, column: 5)
!1660 = !DILocalVariable(name: "i", scope: !1661, file: !280, line: 395, type: !60)
!1661 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 395, column: 3)
!1662 = !DILocalVariable(name: "is_right_quote", scope: !1663, file: !280, line: 397, type: !72)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !280, line: 396, column: 5)
!1664 = distinct !DILexicalBlock(scope: !1661, file: !280, line: 395, column: 3)
!1665 = !DILocalVariable(name: "escaping", scope: !1663, file: !280, line: 398, type: !72)
!1666 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1663, file: !280, line: 399, type: !72)
!1667 = !DILocalVariable(name: "c", scope: !1663, file: !280, line: 417, type: !63)
!1668 = !DILocalVariable(name: "m", scope: !1669, file: !280, line: 598, type: !60)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 596, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 419, column: 9)
!1671 = !DILocalVariable(name: "printable", scope: !1669, file: !280, line: 600, type: !72)
!1672 = !DILocalVariable(name: "mbs", scope: !1673, file: !280, line: 609, type: !325)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !280, line: 608, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !280, line: 602, column: 17)
!1675 = !DILocalVariable(name: "w", scope: !1676, file: !280, line: 618, type: !254)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !280, line: 617, column: 19)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !280, line: 616, column: 17)
!1678 = distinct !DILexicalBlock(scope: !1673, file: !280, line: 616, column: 17)
!1679 = !DILocalVariable(name: "bytes", scope: !1676, file: !280, line: 619, type: !60)
!1680 = !DILocalVariable(name: "j", scope: !1681, file: !280, line: 648, type: !60)
!1681 = distinct !DILexicalBlock(scope: !1682, file: !280, line: 648, column: 29)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !280, line: 647, column: 27)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !280, line: 645, column: 29)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !280, line: 636, column: 23)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !280, line: 628, column: 30)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !280, line: 623, column: 30)
!1687 = distinct !DILexicalBlock(scope: !1676, file: !280, line: 621, column: 25)
!1688 = !DILocalVariable(name: "ilim", scope: !1689, file: !280, line: 674, type: !60)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !280, line: 671, column: 15)
!1690 = distinct !DILexicalBlock(scope: !1669, file: !280, line: 670, column: 17)
!1691 = !DILabel(scope: !1630, name: "process_input", file: !280, line: 308)
!1692 = !DILabel(scope: !1693, name: "c_and_shell_escape", file: !280, line: 502)
!1693 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 478, column: 9)
!1694 = !DILabel(scope: !1693, name: "c_escape", file: !280, line: 507)
!1695 = !DILabel(scope: !1663, name: "store_escape", file: !280, line: 709)
!1696 = !DILabel(scope: !1663, name: "store_c", file: !280, line: 712)
!1697 = !DILabel(scope: !1630, name: "force_outer_quoting_style", file: !280, line: 753)
!1698 = !DILocation(line: 0, scope: !1630)
!1699 = !DILocation(line: 258, column: 25, scope: !1630)
!1700 = !DILocation(line: 258, column: 36, scope: !1630)
!1701 = !DILocation(line: 267, column: 3, scope: !1630)
!1702 = !DILocation(line: 261, column: 10, scope: !1630)
!1703 = !DILocation(line: 262, column: 15, scope: !1630)
!1704 = !DILocation(line: 263, column: 10, scope: !1630)
!1705 = !DILocation(line: 308, column: 2, scope: !1630)
!1706 = !DILocation(line: 311, column: 3, scope: !1630)
!1707 = !DILocation(line: 318, column: 11, scope: !1659)
!1708 = !DILocation(line: 319, column: 9, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1710, file: !280, line: 319, column: 9)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !280, line: 319, column: 9)
!1711 = distinct !DILexicalBlock(scope: !1659, file: !280, line: 318, column: 11)
!1712 = !DILocation(line: 319, column: 9, scope: !1710)
!1713 = !DILocation(line: 0, scope: !316, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 357, column: 26, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !280, line: 335, column: 11)
!1716 = distinct !DILexicalBlock(scope: !1658, file: !280, line: 334, column: 13)
!1717 = !DILocation(line: 199, column: 29, scope: !316, inlinedAt: !1714)
!1718 = !DILocation(line: 201, column: 19, scope: !1719, inlinedAt: !1714)
!1719 = distinct !DILexicalBlock(scope: !316, file: !280, line: 201, column: 7)
!1720 = !DILocation(line: 201, column: 7, scope: !316, inlinedAt: !1714)
!1721 = !DILocation(line: 229, column: 3, scope: !316, inlinedAt: !1714)
!1722 = !DILocation(line: 230, column: 3, scope: !316, inlinedAt: !1714)
!1723 = !DILocation(line: 230, column: 13, scope: !316, inlinedAt: !1714)
!1724 = !DILocalVariable(name: "ps", arg: 1, scope: !1725, file: !1477, line: 1135, type: !1728)
!1725 = distinct !DISubprogram(name: "mbszero", scope: !1477, file: !1477, line: 1135, type: !1726, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1729)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !1728}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1729 = !{!1724}
!1730 = !DILocation(line: 0, scope: !1725, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 230, column: 18, scope: !316, inlinedAt: !1714)
!1732 = !DILocalVariable(name: "__dest", arg: 1, scope: !1733, file: !1315, line: 57, type: !52)
!1733 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1486, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1734)
!1734 = !{!1732, !1735, !1736}
!1735 = !DILocalVariable(name: "__ch", arg: 2, scope: !1733, file: !1315, line: 57, type: !58)
!1736 = !DILocalVariable(name: "__len", arg: 3, scope: !1733, file: !1315, line: 57, type: !60)
!1737 = !DILocation(line: 0, scope: !1733, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 1137, column: 3, scope: !1725, inlinedAt: !1731)
!1739 = !DILocation(line: 59, column: 10, scope: !1733, inlinedAt: !1738)
!1740 = !DILocation(line: 231, column: 7, scope: !1741, inlinedAt: !1714)
!1741 = distinct !DILexicalBlock(scope: !316, file: !280, line: 231, column: 7)
!1742 = !DILocation(line: 231, column: 40, scope: !1741, inlinedAt: !1714)
!1743 = !DILocation(line: 231, column: 45, scope: !1741, inlinedAt: !1714)
!1744 = !DILocation(line: 235, column: 1, scope: !316, inlinedAt: !1714)
!1745 = !DILocation(line: 0, scope: !316, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 358, column: 27, scope: !1715)
!1747 = !DILocation(line: 199, column: 29, scope: !316, inlinedAt: !1746)
!1748 = !DILocation(line: 201, column: 19, scope: !1719, inlinedAt: !1746)
!1749 = !DILocation(line: 201, column: 7, scope: !316, inlinedAt: !1746)
!1750 = !DILocation(line: 229, column: 3, scope: !316, inlinedAt: !1746)
!1751 = !DILocation(line: 230, column: 3, scope: !316, inlinedAt: !1746)
!1752 = !DILocation(line: 230, column: 13, scope: !316, inlinedAt: !1746)
!1753 = !DILocation(line: 0, scope: !1725, inlinedAt: !1754)
!1754 = distinct !DILocation(line: 230, column: 18, scope: !316, inlinedAt: !1746)
!1755 = !DILocation(line: 0, scope: !1733, inlinedAt: !1756)
!1756 = distinct !DILocation(line: 1137, column: 3, scope: !1725, inlinedAt: !1754)
!1757 = !DILocation(line: 59, column: 10, scope: !1733, inlinedAt: !1756)
!1758 = !DILocation(line: 231, column: 7, scope: !1741, inlinedAt: !1746)
!1759 = !DILocation(line: 231, column: 40, scope: !1741, inlinedAt: !1746)
!1760 = !DILocation(line: 231, column: 45, scope: !1741, inlinedAt: !1746)
!1761 = !DILocation(line: 235, column: 1, scope: !316, inlinedAt: !1746)
!1762 = !DILocation(line: 360, column: 13, scope: !1658)
!1763 = !DILocation(line: 0, scope: !1656)
!1764 = !DILocation(line: 361, column: 45, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1656, file: !280, line: 361, column: 11)
!1766 = !DILocation(line: 361, column: 11, scope: !1656)
!1767 = !DILocation(line: 362, column: 13, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !280, line: 362, column: 13)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !280, line: 362, column: 13)
!1770 = !DILocation(line: 362, column: 13, scope: !1769)
!1771 = !DILocation(line: 361, column: 52, scope: !1765)
!1772 = distinct !{!1772, !1766, !1773, !533}
!1773 = !DILocation(line: 362, column: 13, scope: !1656)
!1774 = !DILocation(line: 260, column: 10, scope: !1630)
!1775 = !DILocation(line: 365, column: 28, scope: !1658)
!1776 = !DILocation(line: 367, column: 7, scope: !1659)
!1777 = !DILocation(line: 370, column: 7, scope: !1659)
!1778 = !DILocation(line: 376, column: 11, scope: !1659)
!1779 = !DILocation(line: 381, column: 11, scope: !1659)
!1780 = !DILocation(line: 382, column: 9, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !280, line: 382, column: 9)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !280, line: 382, column: 9)
!1783 = distinct !DILexicalBlock(scope: !1659, file: !280, line: 381, column: 11)
!1784 = !DILocation(line: 382, column: 9, scope: !1782)
!1785 = !DILocation(line: 389, column: 7, scope: !1659)
!1786 = !DILocation(line: 392, column: 7, scope: !1659)
!1787 = !DILocation(line: 0, scope: !1661)
!1788 = !DILocation(line: 395, column: 8, scope: !1661)
!1789 = !DILocation(line: 395, column: 34, scope: !1664)
!1790 = !DILocation(line: 395, column: 26, scope: !1664)
!1791 = !DILocation(line: 395, column: 48, scope: !1664)
!1792 = !DILocation(line: 395, column: 55, scope: !1664)
!1793 = !DILocation(line: 395, column: 3, scope: !1661)
!1794 = !DILocation(line: 395, column: 67, scope: !1664)
!1795 = !DILocation(line: 0, scope: !1663)
!1796 = !DILocation(line: 402, column: 11, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 401, column: 11)
!1798 = !DILocation(line: 404, column: 17, scope: !1797)
!1799 = !DILocation(line: 405, column: 39, scope: !1797)
!1800 = !DILocation(line: 409, column: 32, scope: !1797)
!1801 = !DILocation(line: 405, column: 19, scope: !1797)
!1802 = !DILocation(line: 405, column: 15, scope: !1797)
!1803 = !DILocation(line: 410, column: 11, scope: !1797)
!1804 = !DILocation(line: 410, column: 25, scope: !1797)
!1805 = !DILocalVariable(name: "__s1", arg: 1, scope: !1806, file: !517, line: 974, type: !685)
!1806 = distinct !DISubprogram(name: "memeq", scope: !517, file: !517, line: 974, type: !1448, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1807)
!1807 = !{!1805, !1808, !1809}
!1808 = !DILocalVariable(name: "__s2", arg: 2, scope: !1806, file: !517, line: 974, type: !685)
!1809 = !DILocalVariable(name: "__n", arg: 3, scope: !1806, file: !517, line: 974, type: !60)
!1810 = !DILocation(line: 0, scope: !1806, inlinedAt: !1811)
!1811 = distinct !DILocation(line: 410, column: 14, scope: !1797)
!1812 = !DILocation(line: 976, column: 11, scope: !1806, inlinedAt: !1811)
!1813 = !DILocation(line: 976, column: 10, scope: !1806, inlinedAt: !1811)
!1814 = !DILocation(line: 401, column: 11, scope: !1663)
!1815 = !DILocation(line: 417, column: 25, scope: !1663)
!1816 = !DILocation(line: 418, column: 7, scope: !1663)
!1817 = !DILocation(line: 421, column: 15, scope: !1670)
!1818 = !DILocation(line: 423, column: 15, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !280, line: 423, column: 15)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !280, line: 422, column: 13)
!1821 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 421, column: 15)
!1822 = !DILocation(line: 423, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !280, line: 423, column: 15)
!1824 = !DILocation(line: 423, column: 15, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !280, line: 423, column: 15)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !280, line: 423, column: 15)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !280, line: 423, column: 15)
!1828 = !DILocation(line: 423, column: 15, scope: !1826)
!1829 = !DILocation(line: 423, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !280, line: 423, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1827, file: !280, line: 423, column: 15)
!1832 = !DILocation(line: 423, column: 15, scope: !1831)
!1833 = !DILocation(line: 423, column: 15, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !280, line: 423, column: 15)
!1835 = distinct !DILexicalBlock(scope: !1827, file: !280, line: 423, column: 15)
!1836 = !DILocation(line: 423, column: 15, scope: !1835)
!1837 = !DILocation(line: 423, column: 15, scope: !1827)
!1838 = !DILocation(line: 423, column: 15, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !280, line: 423, column: 15)
!1840 = distinct !DILexicalBlock(scope: !1819, file: !280, line: 423, column: 15)
!1841 = !DILocation(line: 423, column: 15, scope: !1840)
!1842 = !DILocation(line: 431, column: 19, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1820, file: !280, line: 430, column: 19)
!1844 = !DILocation(line: 431, column: 24, scope: !1843)
!1845 = !DILocation(line: 431, column: 28, scope: !1843)
!1846 = !DILocation(line: 431, column: 38, scope: !1843)
!1847 = !DILocation(line: 431, column: 48, scope: !1843)
!1848 = !DILocation(line: 431, column: 59, scope: !1843)
!1849 = !DILocation(line: 433, column: 19, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !280, line: 433, column: 19)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !280, line: 433, column: 19)
!1852 = distinct !DILexicalBlock(scope: !1843, file: !280, line: 432, column: 17)
!1853 = !DILocation(line: 433, column: 19, scope: !1851)
!1854 = !DILocation(line: 434, column: 19, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1856, file: !280, line: 434, column: 19)
!1856 = distinct !DILexicalBlock(scope: !1852, file: !280, line: 434, column: 19)
!1857 = !DILocation(line: 434, column: 19, scope: !1856)
!1858 = !DILocation(line: 435, column: 17, scope: !1852)
!1859 = !DILocation(line: 442, column: 20, scope: !1821)
!1860 = !DILocation(line: 447, column: 11, scope: !1670)
!1861 = !DILocation(line: 450, column: 19, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 448, column: 13)
!1863 = !DILocation(line: 456, column: 19, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1862, file: !280, line: 455, column: 19)
!1865 = !DILocation(line: 456, column: 24, scope: !1864)
!1866 = !DILocation(line: 456, column: 28, scope: !1864)
!1867 = !DILocation(line: 456, column: 38, scope: !1864)
!1868 = !DILocation(line: 456, column: 47, scope: !1864)
!1869 = !DILocation(line: 456, column: 41, scope: !1864)
!1870 = !DILocation(line: 456, column: 52, scope: !1864)
!1871 = !DILocation(line: 455, column: 19, scope: !1862)
!1872 = !DILocation(line: 457, column: 25, scope: !1864)
!1873 = !DILocation(line: 457, column: 17, scope: !1864)
!1874 = !DILocation(line: 464, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1864, file: !280, line: 458, column: 19)
!1876 = !DILocation(line: 468, column: 21, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !280, line: 468, column: 21)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !280, line: 468, column: 21)
!1879 = !DILocation(line: 468, column: 21, scope: !1878)
!1880 = !DILocation(line: 469, column: 21, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !280, line: 469, column: 21)
!1882 = distinct !DILexicalBlock(scope: !1875, file: !280, line: 469, column: 21)
!1883 = !DILocation(line: 469, column: 21, scope: !1882)
!1884 = !DILocation(line: 470, column: 21, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !280, line: 470, column: 21)
!1886 = distinct !DILexicalBlock(scope: !1875, file: !280, line: 470, column: 21)
!1887 = !DILocation(line: 470, column: 21, scope: !1886)
!1888 = !DILocation(line: 471, column: 21, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !280, line: 471, column: 21)
!1890 = distinct !DILexicalBlock(scope: !1875, file: !280, line: 471, column: 21)
!1891 = !DILocation(line: 471, column: 21, scope: !1890)
!1892 = !DILocation(line: 472, column: 21, scope: !1875)
!1893 = !DILocation(line: 482, column: 33, scope: !1693)
!1894 = !DILocation(line: 483, column: 33, scope: !1693)
!1895 = !DILocation(line: 485, column: 33, scope: !1693)
!1896 = !DILocation(line: 486, column: 33, scope: !1693)
!1897 = !DILocation(line: 487, column: 33, scope: !1693)
!1898 = !DILocation(line: 490, column: 17, scope: !1693)
!1899 = !DILocation(line: 492, column: 21, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1901, file: !280, line: 491, column: 15)
!1901 = distinct !DILexicalBlock(scope: !1693, file: !280, line: 490, column: 17)
!1902 = !DILocation(line: 499, column: 35, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1693, file: !280, line: 499, column: 17)
!1904 = !DILocation(line: 499, column: 57, scope: !1903)
!1905 = !DILocation(line: 0, scope: !1693)
!1906 = !DILocation(line: 502, column: 11, scope: !1693)
!1907 = !DILocation(line: 504, column: 17, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1693, file: !280, line: 503, column: 17)
!1909 = !DILocation(line: 507, column: 11, scope: !1693)
!1910 = !DILocation(line: 508, column: 17, scope: !1693)
!1911 = !DILocation(line: 517, column: 15, scope: !1670)
!1912 = !DILocation(line: 517, column: 40, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 517, column: 15)
!1914 = !DILocation(line: 517, column: 47, scope: !1913)
!1915 = !DILocation(line: 517, column: 18, scope: !1913)
!1916 = !DILocation(line: 521, column: 17, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 521, column: 15)
!1918 = !DILocation(line: 521, column: 15, scope: !1670)
!1919 = !DILocation(line: 525, column: 11, scope: !1670)
!1920 = !DILocation(line: 537, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 536, column: 15)
!1922 = !DILocation(line: 536, column: 15, scope: !1670)
!1923 = !DILocation(line: 544, column: 15, scope: !1670)
!1924 = !DILocation(line: 546, column: 19, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !280, line: 545, column: 13)
!1926 = distinct !DILexicalBlock(scope: !1670, file: !280, line: 544, column: 15)
!1927 = !DILocation(line: 549, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !280, line: 549, column: 19)
!1929 = !DILocation(line: 549, column: 30, scope: !1928)
!1930 = !DILocation(line: 558, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !280, line: 558, column: 15)
!1932 = distinct !DILexicalBlock(scope: !1925, file: !280, line: 558, column: 15)
!1933 = !DILocation(line: 558, column: 15, scope: !1932)
!1934 = !DILocation(line: 559, column: 15, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1936, file: !280, line: 559, column: 15)
!1936 = distinct !DILexicalBlock(scope: !1925, file: !280, line: 559, column: 15)
!1937 = !DILocation(line: 559, column: 15, scope: !1936)
!1938 = !DILocation(line: 560, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !280, line: 560, column: 15)
!1940 = distinct !DILexicalBlock(scope: !1925, file: !280, line: 560, column: 15)
!1941 = !DILocation(line: 560, column: 15, scope: !1940)
!1942 = !DILocation(line: 562, column: 13, scope: !1925)
!1943 = !DILocation(line: 602, column: 17, scope: !1669)
!1944 = !DILocation(line: 0, scope: !1669)
!1945 = !DILocation(line: 605, column: 29, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1674, file: !280, line: 603, column: 15)
!1947 = !DILocation(line: 605, column: 41, scope: !1946)
!1948 = !DILocation(line: 670, column: 23, scope: !1690)
!1949 = !DILocation(line: 609, column: 17, scope: !1673)
!1950 = !DILocation(line: 609, column: 27, scope: !1673)
!1951 = !DILocation(line: 0, scope: !1725, inlinedAt: !1952)
!1952 = distinct !DILocation(line: 609, column: 32, scope: !1673)
!1953 = !DILocation(line: 0, scope: !1733, inlinedAt: !1954)
!1954 = distinct !DILocation(line: 1137, column: 3, scope: !1725, inlinedAt: !1952)
!1955 = !DILocation(line: 59, column: 10, scope: !1733, inlinedAt: !1954)
!1956 = !DILocation(line: 613, column: 29, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1673, file: !280, line: 613, column: 21)
!1958 = !DILocation(line: 613, column: 21, scope: !1673)
!1959 = !DILocation(line: 614, column: 29, scope: !1957)
!1960 = !DILocation(line: 614, column: 19, scope: !1957)
!1961 = !DILocation(line: 618, column: 21, scope: !1676)
!1962 = !DILocation(line: 620, column: 54, scope: !1676)
!1963 = !DILocation(line: 0, scope: !1676)
!1964 = !DILocation(line: 619, column: 36, scope: !1676)
!1965 = !DILocation(line: 621, column: 25, scope: !1676)
!1966 = !DILocation(line: 631, column: 38, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1685, file: !280, line: 629, column: 23)
!1968 = !DILocation(line: 631, column: 48, scope: !1967)
!1969 = !DILocation(line: 665, column: 19, scope: !1677)
!1970 = !DILocation(line: 666, column: 15, scope: !1674)
!1971 = !DILocation(line: 626, column: 25, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1686, file: !280, line: 624, column: 23)
!1973 = !DILocation(line: 631, column: 51, scope: !1967)
!1974 = !DILocation(line: 631, column: 25, scope: !1967)
!1975 = !DILocation(line: 632, column: 28, scope: !1967)
!1976 = !DILocation(line: 631, column: 34, scope: !1967)
!1977 = distinct !{!1977, !1974, !1975, !533}
!1978 = !DILocation(line: 646, column: 29, scope: !1683)
!1979 = !DILocation(line: 0, scope: !1681)
!1980 = !DILocation(line: 649, column: 49, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1681, file: !280, line: 648, column: 29)
!1982 = !DILocation(line: 649, column: 39, scope: !1981)
!1983 = !DILocation(line: 649, column: 31, scope: !1981)
!1984 = !DILocation(line: 648, column: 60, scope: !1981)
!1985 = !DILocation(line: 648, column: 50, scope: !1981)
!1986 = !DILocation(line: 648, column: 29, scope: !1681)
!1987 = distinct !{!1987, !1986, !1988, !533}
!1988 = !DILocation(line: 654, column: 33, scope: !1681)
!1989 = !DILocation(line: 657, column: 43, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1684, file: !280, line: 657, column: 29)
!1991 = !DILocalVariable(name: "wc", arg: 1, scope: !1992, file: !1993, line: 865, type: !1996)
!1992 = distinct !DISubprogram(name: "c32isprint", scope: !1993, file: !1993, line: 865, type: !1994, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !1998)
!1993 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!58, !1996}
!1996 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1997, line: 20, baseType: !13)
!1997 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1998 = !{!1991}
!1999 = !DILocation(line: 0, scope: !1992, inlinedAt: !2000)
!2000 = distinct !DILocation(line: 657, column: 31, scope: !1990)
!2001 = !DILocation(line: 871, column: 10, scope: !1992, inlinedAt: !2000)
!2002 = !DILocation(line: 657, column: 31, scope: !1990)
!2003 = !DILocation(line: 664, column: 23, scope: !1676)
!2004 = !DILocation(line: 753, column: 2, scope: !1630)
!2005 = !DILocation(line: 756, column: 51, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 756, column: 7)
!2007 = !DILocation(line: 670, column: 19, scope: !1690)
!2008 = !DILocation(line: 670, column: 45, scope: !1690)
!2009 = !DILocation(line: 674, column: 33, scope: !1689)
!2010 = !DILocation(line: 0, scope: !1689)
!2011 = !DILocation(line: 676, column: 17, scope: !1689)
!2012 = !DILocation(line: 398, column: 12, scope: !1663)
!2013 = !DILocation(line: 678, column: 43, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !280, line: 678, column: 25)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !280, line: 677, column: 19)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !280, line: 676, column: 17)
!2017 = distinct !DILexicalBlock(scope: !1689, file: !280, line: 676, column: 17)
!2018 = !DILocation(line: 680, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !280, line: 680, column: 25)
!2020 = distinct !DILexicalBlock(scope: !2014, file: !280, line: 679, column: 23)
!2021 = !DILocation(line: 680, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !280, line: 680, column: 25)
!2023 = !DILocation(line: 680, column: 25, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !280, line: 680, column: 25)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !280, line: 680, column: 25)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !280, line: 680, column: 25)
!2027 = !DILocation(line: 680, column: 25, scope: !2025)
!2028 = !DILocation(line: 680, column: 25, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !280, line: 680, column: 25)
!2030 = distinct !DILexicalBlock(scope: !2026, file: !280, line: 680, column: 25)
!2031 = !DILocation(line: 680, column: 25, scope: !2030)
!2032 = !DILocation(line: 680, column: 25, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !280, line: 680, column: 25)
!2034 = distinct !DILexicalBlock(scope: !2026, file: !280, line: 680, column: 25)
!2035 = !DILocation(line: 680, column: 25, scope: !2034)
!2036 = !DILocation(line: 680, column: 25, scope: !2026)
!2037 = !DILocation(line: 680, column: 25, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !280, line: 680, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2019, file: !280, line: 680, column: 25)
!2040 = !DILocation(line: 680, column: 25, scope: !2039)
!2041 = !DILocation(line: 681, column: 25, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !280, line: 681, column: 25)
!2043 = distinct !DILexicalBlock(scope: !2020, file: !280, line: 681, column: 25)
!2044 = !DILocation(line: 681, column: 25, scope: !2043)
!2045 = !DILocation(line: 682, column: 25, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !280, line: 682, column: 25)
!2047 = distinct !DILexicalBlock(scope: !2020, file: !280, line: 682, column: 25)
!2048 = !DILocation(line: 682, column: 25, scope: !2047)
!2049 = !DILocation(line: 683, column: 38, scope: !2020)
!2050 = !DILocation(line: 683, column: 33, scope: !2020)
!2051 = !DILocation(line: 684, column: 23, scope: !2020)
!2052 = !DILocation(line: 685, column: 30, scope: !2014)
!2053 = !DILocation(line: 687, column: 25, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2055, file: !280, line: 687, column: 25)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !280, line: 687, column: 25)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !280, line: 686, column: 23)
!2057 = distinct !DILexicalBlock(scope: !2014, file: !280, line: 685, column: 30)
!2058 = !DILocation(line: 687, column: 25, scope: !2055)
!2059 = !DILocation(line: 689, column: 23, scope: !2056)
!2060 = !DILocation(line: 690, column: 35, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2015, file: !280, line: 690, column: 25)
!2062 = !DILocation(line: 690, column: 30, scope: !2061)
!2063 = !DILocation(line: 690, column: 25, scope: !2015)
!2064 = !DILocation(line: 692, column: 21, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !280, line: 692, column: 21)
!2066 = distinct !DILexicalBlock(scope: !2015, file: !280, line: 692, column: 21)
!2067 = !DILocation(line: 692, column: 21, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2069, file: !280, line: 692, column: 21)
!2069 = distinct !DILexicalBlock(scope: !2070, file: !280, line: 692, column: 21)
!2070 = distinct !DILexicalBlock(scope: !2065, file: !280, line: 692, column: 21)
!2071 = !DILocation(line: 692, column: 21, scope: !2069)
!2072 = !DILocation(line: 692, column: 21, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !280, line: 692, column: 21)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !280, line: 692, column: 21)
!2075 = !DILocation(line: 692, column: 21, scope: !2074)
!2076 = !DILocation(line: 692, column: 21, scope: !2070)
!2077 = !DILocation(line: 0, scope: !2015)
!2078 = !DILocation(line: 693, column: 21, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !280, line: 693, column: 21)
!2080 = distinct !DILexicalBlock(scope: !2015, file: !280, line: 693, column: 21)
!2081 = !DILocation(line: 693, column: 21, scope: !2080)
!2082 = !DILocation(line: 694, column: 25, scope: !2015)
!2083 = !DILocation(line: 676, column: 17, scope: !2016)
!2084 = distinct !{!2084, !2085, !2086}
!2085 = !DILocation(line: 676, column: 17, scope: !2017)
!2086 = !DILocation(line: 695, column: 19, scope: !2017)
!2087 = !DILocation(line: 409, column: 30, scope: !1797)
!2088 = !DILocation(line: 702, column: 34, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 702, column: 11)
!2090 = !DILocation(line: 704, column: 14, scope: !2089)
!2091 = !DILocation(line: 705, column: 14, scope: !2089)
!2092 = !DILocation(line: 705, column: 35, scope: !2089)
!2093 = !DILocation(line: 705, column: 17, scope: !2089)
!2094 = !DILocation(line: 705, column: 47, scope: !2089)
!2095 = !DILocation(line: 705, column: 65, scope: !2089)
!2096 = !DILocation(line: 706, column: 11, scope: !2089)
!2097 = !DILocation(line: 702, column: 11, scope: !1663)
!2098 = !DILocation(line: 395, column: 15, scope: !1661)
!2099 = !DILocation(line: 709, column: 5, scope: !1663)
!2100 = !DILocation(line: 710, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 710, column: 7)
!2102 = !DILocation(line: 710, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2101, file: !280, line: 710, column: 7)
!2104 = !DILocation(line: 710, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !280, line: 710, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !280, line: 710, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2103, file: !280, line: 710, column: 7)
!2108 = !DILocation(line: 710, column: 7, scope: !2106)
!2109 = !DILocation(line: 710, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !280, line: 710, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !280, line: 710, column: 7)
!2112 = !DILocation(line: 710, column: 7, scope: !2111)
!2113 = !DILocation(line: 710, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !280, line: 710, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2107, file: !280, line: 710, column: 7)
!2116 = !DILocation(line: 710, column: 7, scope: !2115)
!2117 = !DILocation(line: 710, column: 7, scope: !2107)
!2118 = !DILocation(line: 710, column: 7, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2120, file: !280, line: 710, column: 7)
!2120 = distinct !DILexicalBlock(scope: !2101, file: !280, line: 710, column: 7)
!2121 = !DILocation(line: 710, column: 7, scope: !2120)
!2122 = !DILocation(line: 712, column: 5, scope: !1663)
!2123 = !DILocation(line: 713, column: 7, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !280, line: 713, column: 7)
!2125 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 713, column: 7)
!2126 = !DILocation(line: 417, column: 21, scope: !1663)
!2127 = !DILocation(line: 713, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !280, line: 713, column: 7)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !280, line: 713, column: 7)
!2130 = distinct !DILexicalBlock(scope: !2124, file: !280, line: 713, column: 7)
!2131 = !DILocation(line: 713, column: 7, scope: !2129)
!2132 = !DILocation(line: 713, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !280, line: 713, column: 7)
!2134 = distinct !DILexicalBlock(scope: !2130, file: !280, line: 713, column: 7)
!2135 = !DILocation(line: 713, column: 7, scope: !2134)
!2136 = !DILocation(line: 713, column: 7, scope: !2130)
!2137 = !DILocation(line: 714, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !280, line: 714, column: 7)
!2139 = distinct !DILexicalBlock(scope: !1663, file: !280, line: 714, column: 7)
!2140 = !DILocation(line: 714, column: 7, scope: !2139)
!2141 = !DILocation(line: 716, column: 11, scope: !1663)
!2142 = !DILocation(line: 718, column: 5, scope: !1664)
!2143 = !DILocation(line: 395, column: 82, scope: !1664)
!2144 = !DILocation(line: 395, column: 3, scope: !1664)
!2145 = distinct !{!2145, !1793, !2146, !533}
!2146 = !DILocation(line: 718, column: 5, scope: !1661)
!2147 = !DILocation(line: 720, column: 11, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 720, column: 7)
!2149 = !DILocation(line: 720, column: 16, scope: !2148)
!2150 = !DILocation(line: 728, column: 51, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 728, column: 7)
!2152 = !DILocation(line: 731, column: 11, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !280, line: 730, column: 5)
!2154 = !DILocation(line: 732, column: 16, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2153, file: !280, line: 731, column: 11)
!2156 = !DILocation(line: 732, column: 9, scope: !2155)
!2157 = !DILocation(line: 736, column: 18, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !280, line: 736, column: 16)
!2159 = !DILocation(line: 736, column: 29, scope: !2158)
!2160 = !DILocation(line: 745, column: 7, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 745, column: 7)
!2162 = !DILocation(line: 745, column: 20, scope: !2161)
!2163 = !DILocation(line: 746, column: 12, scope: !2164)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !280, line: 746, column: 5)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !280, line: 746, column: 5)
!2166 = !DILocation(line: 746, column: 5, scope: !2165)
!2167 = !DILocation(line: 747, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2169, file: !280, line: 747, column: 7)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !280, line: 747, column: 7)
!2170 = !DILocation(line: 747, column: 7, scope: !2169)
!2171 = !DILocation(line: 746, column: 39, scope: !2164)
!2172 = distinct !{!2172, !2166, !2173, !533}
!2173 = !DILocation(line: 747, column: 7, scope: !2165)
!2174 = !DILocation(line: 749, column: 11, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !1630, file: !280, line: 749, column: 7)
!2176 = !DILocation(line: 749, column: 7, scope: !1630)
!2177 = !DILocation(line: 750, column: 5, scope: !2175)
!2178 = !DILocation(line: 750, column: 17, scope: !2175)
!2179 = !DILocation(line: 756, column: 21, scope: !2006)
!2180 = !DILocation(line: 760, column: 42, scope: !1630)
!2181 = !DILocation(line: 758, column: 10, scope: !1630)
!2182 = !DILocation(line: 758, column: 3, scope: !1630)
!2183 = !DILocation(line: 762, column: 1, scope: !1630)
!2184 = !DISubprogram(name: "iswprint", scope: !2185, file: !2185, line: 120, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!2185 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2186 = distinct !DISubprogram(name: "quotearg_alloc", scope: !280, file: !280, line: 788, type: !2187, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2189)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!93, !6, !60, !1522}
!2189 = !{!2190, !2191, !2192}
!2190 = !DILocalVariable(name: "arg", arg: 1, scope: !2186, file: !280, line: 788, type: !6)
!2191 = !DILocalVariable(name: "argsize", arg: 2, scope: !2186, file: !280, line: 788, type: !60)
!2192 = !DILocalVariable(name: "o", arg: 3, scope: !2186, file: !280, line: 789, type: !1522)
!2193 = !DILocation(line: 0, scope: !2186)
!2194 = !DILocalVariable(name: "arg", arg: 1, scope: !2195, file: !280, line: 801, type: !6)
!2195 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !280, file: !280, line: 801, type: !2196, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2198)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!93, !6, !60, !404, !1522}
!2198 = !{!2194, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2199 = !DILocalVariable(name: "argsize", arg: 2, scope: !2195, file: !280, line: 801, type: !60)
!2200 = !DILocalVariable(name: "size", arg: 3, scope: !2195, file: !280, line: 801, type: !404)
!2201 = !DILocalVariable(name: "o", arg: 4, scope: !2195, file: !280, line: 802, type: !1522)
!2202 = !DILocalVariable(name: "p", scope: !2195, file: !280, line: 804, type: !1522)
!2203 = !DILocalVariable(name: "saved_errno", scope: !2195, file: !280, line: 805, type: !58)
!2204 = !DILocalVariable(name: "flags", scope: !2195, file: !280, line: 807, type: !58)
!2205 = !DILocalVariable(name: "bufsize", scope: !2195, file: !280, line: 808, type: !60)
!2206 = !DILocalVariable(name: "buf", scope: !2195, file: !280, line: 812, type: !93)
!2207 = !DILocation(line: 0, scope: !2195, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 791, column: 10, scope: !2186)
!2209 = !DILocation(line: 804, column: 37, scope: !2195, inlinedAt: !2208)
!2210 = !DILocation(line: 805, column: 21, scope: !2195, inlinedAt: !2208)
!2211 = !DILocation(line: 807, column: 18, scope: !2195, inlinedAt: !2208)
!2212 = !DILocation(line: 807, column: 24, scope: !2195, inlinedAt: !2208)
!2213 = !DILocation(line: 808, column: 72, scope: !2195, inlinedAt: !2208)
!2214 = !DILocation(line: 809, column: 53, scope: !2195, inlinedAt: !2208)
!2215 = !DILocation(line: 810, column: 49, scope: !2195, inlinedAt: !2208)
!2216 = !DILocation(line: 811, column: 49, scope: !2195, inlinedAt: !2208)
!2217 = !DILocation(line: 808, column: 20, scope: !2195, inlinedAt: !2208)
!2218 = !DILocation(line: 811, column: 62, scope: !2195, inlinedAt: !2208)
!2219 = !DILocation(line: 812, column: 15, scope: !2195, inlinedAt: !2208)
!2220 = !DILocation(line: 813, column: 60, scope: !2195, inlinedAt: !2208)
!2221 = !DILocation(line: 815, column: 32, scope: !2195, inlinedAt: !2208)
!2222 = !DILocation(line: 815, column: 47, scope: !2195, inlinedAt: !2208)
!2223 = !DILocation(line: 813, column: 3, scope: !2195, inlinedAt: !2208)
!2224 = !DILocation(line: 816, column: 9, scope: !2195, inlinedAt: !2208)
!2225 = !DILocation(line: 791, column: 3, scope: !2186)
!2226 = !DILocation(line: 0, scope: !2195)
!2227 = !DILocation(line: 804, column: 37, scope: !2195)
!2228 = !DILocation(line: 805, column: 21, scope: !2195)
!2229 = !DILocation(line: 807, column: 18, scope: !2195)
!2230 = !DILocation(line: 807, column: 27, scope: !2195)
!2231 = !DILocation(line: 807, column: 24, scope: !2195)
!2232 = !DILocation(line: 808, column: 72, scope: !2195)
!2233 = !DILocation(line: 809, column: 53, scope: !2195)
!2234 = !DILocation(line: 810, column: 49, scope: !2195)
!2235 = !DILocation(line: 811, column: 49, scope: !2195)
!2236 = !DILocation(line: 808, column: 20, scope: !2195)
!2237 = !DILocation(line: 811, column: 62, scope: !2195)
!2238 = !DILocation(line: 812, column: 15, scope: !2195)
!2239 = !DILocation(line: 813, column: 60, scope: !2195)
!2240 = !DILocation(line: 815, column: 32, scope: !2195)
!2241 = !DILocation(line: 815, column: 47, scope: !2195)
!2242 = !DILocation(line: 813, column: 3, scope: !2195)
!2243 = !DILocation(line: 816, column: 9, scope: !2195)
!2244 = !DILocation(line: 817, column: 7, scope: !2195)
!2245 = !DILocation(line: 818, column: 11, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2195, file: !280, line: 817, column: 7)
!2247 = !{!829, !829, i64 0}
!2248 = !DILocation(line: 818, column: 5, scope: !2246)
!2249 = !DILocation(line: 819, column: 3, scope: !2195)
!2250 = distinct !DISubprogram(name: "quotearg_free", scope: !280, file: !280, line: 837, type: !198, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2251)
!2251 = !{!2252, !2253}
!2252 = !DILocalVariable(name: "sv", scope: !2250, file: !280, line: 839, type: !339)
!2253 = !DILocalVariable(name: "i", scope: !2254, file: !280, line: 840, type: !58)
!2254 = distinct !DILexicalBlock(scope: !2250, file: !280, line: 840, column: 3)
!2255 = !DILocation(line: 839, column: 24, scope: !2250)
!2256 = !DILocation(line: 0, scope: !2250)
!2257 = !DILocation(line: 0, scope: !2254)
!2258 = !DILocation(line: 840, column: 21, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2254, file: !280, line: 840, column: 3)
!2260 = !DILocation(line: 840, column: 3, scope: !2254)
!2261 = !DILocation(line: 842, column: 13, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2250, file: !280, line: 842, column: 7)
!2263 = !{!2264, !474, i64 8}
!2264 = !{!"slotvec", !829, i64 0, !474, i64 8}
!2265 = !DILocation(line: 842, column: 17, scope: !2262)
!2266 = !DILocation(line: 842, column: 7, scope: !2250)
!2267 = !DILocation(line: 841, column: 17, scope: !2259)
!2268 = !DILocation(line: 841, column: 5, scope: !2259)
!2269 = !DILocation(line: 840, column: 32, scope: !2259)
!2270 = distinct !{!2270, !2260, !2271, !533}
!2271 = !DILocation(line: 841, column: 20, scope: !2254)
!2272 = !DILocation(line: 844, column: 7, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2262, file: !280, line: 843, column: 5)
!2274 = !DILocation(line: 845, column: 21, scope: !2273)
!2275 = !{!2264, !829, i64 0}
!2276 = !DILocation(line: 846, column: 20, scope: !2273)
!2277 = !DILocation(line: 847, column: 5, scope: !2273)
!2278 = !DILocation(line: 848, column: 10, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2250, file: !280, line: 848, column: 7)
!2280 = !DILocation(line: 848, column: 7, scope: !2250)
!2281 = !DILocation(line: 850, column: 13, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2279, file: !280, line: 849, column: 5)
!2283 = !DILocation(line: 850, column: 7, scope: !2282)
!2284 = !DILocation(line: 851, column: 15, scope: !2282)
!2285 = !DILocation(line: 852, column: 5, scope: !2282)
!2286 = !DILocation(line: 853, column: 10, scope: !2250)
!2287 = !DILocation(line: 854, column: 1, scope: !2250)
!2288 = distinct !DISubprogram(name: "quotearg_n", scope: !280, file: !280, line: 919, type: !675, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2289)
!2289 = !{!2290, !2291}
!2290 = !DILocalVariable(name: "n", arg: 1, scope: !2288, file: !280, line: 919, type: !58)
!2291 = !DILocalVariable(name: "arg", arg: 2, scope: !2288, file: !280, line: 919, type: !6)
!2292 = !DILocation(line: 0, scope: !2288)
!2293 = !DILocation(line: 921, column: 10, scope: !2288)
!2294 = !DILocation(line: 921, column: 3, scope: !2288)
!2295 = distinct !DISubprogram(name: "quotearg_n_options", scope: !280, file: !280, line: 866, type: !2296, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2298)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!93, !58, !6, !60, !1522}
!2298 = !{!2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2309, !2310, !2312, !2313, !2314}
!2299 = !DILocalVariable(name: "n", arg: 1, scope: !2295, file: !280, line: 866, type: !58)
!2300 = !DILocalVariable(name: "arg", arg: 2, scope: !2295, file: !280, line: 866, type: !6)
!2301 = !DILocalVariable(name: "argsize", arg: 3, scope: !2295, file: !280, line: 866, type: !60)
!2302 = !DILocalVariable(name: "options", arg: 4, scope: !2295, file: !280, line: 867, type: !1522)
!2303 = !DILocalVariable(name: "saved_errno", scope: !2295, file: !280, line: 869, type: !58)
!2304 = !DILocalVariable(name: "sv", scope: !2295, file: !280, line: 871, type: !339)
!2305 = !DILocalVariable(name: "nslots_max", scope: !2295, file: !280, line: 873, type: !58)
!2306 = !DILocalVariable(name: "preallocated", scope: !2307, file: !280, line: 879, type: !72)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !280, line: 878, column: 5)
!2308 = distinct !DILexicalBlock(scope: !2295, file: !280, line: 877, column: 7)
!2309 = !DILocalVariable(name: "new_nslots", scope: !2307, file: !280, line: 880, type: !417)
!2310 = !DILocalVariable(name: "size", scope: !2311, file: !280, line: 891, type: !60)
!2311 = distinct !DILexicalBlock(scope: !2295, file: !280, line: 890, column: 3)
!2312 = !DILocalVariable(name: "val", scope: !2311, file: !280, line: 892, type: !93)
!2313 = !DILocalVariable(name: "flags", scope: !2311, file: !280, line: 894, type: !58)
!2314 = !DILocalVariable(name: "qsize", scope: !2311, file: !280, line: 895, type: !60)
!2315 = !DILocation(line: 0, scope: !2295)
!2316 = !DILocation(line: 869, column: 21, scope: !2295)
!2317 = !DILocation(line: 871, column: 24, scope: !2295)
!2318 = !DILocation(line: 874, column: 17, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2295, file: !280, line: 874, column: 7)
!2320 = !DILocation(line: 875, column: 5, scope: !2319)
!2321 = !DILocation(line: 877, column: 7, scope: !2308)
!2322 = !DILocation(line: 877, column: 14, scope: !2308)
!2323 = !DILocation(line: 877, column: 7, scope: !2295)
!2324 = !DILocation(line: 879, column: 31, scope: !2307)
!2325 = !DILocation(line: 0, scope: !2307)
!2326 = !DILocation(line: 880, column: 7, scope: !2307)
!2327 = !DILocation(line: 880, column: 26, scope: !2307)
!2328 = !DILocation(line: 880, column: 13, scope: !2307)
!2329 = !DILocation(line: 882, column: 31, scope: !2307)
!2330 = !DILocation(line: 883, column: 33, scope: !2307)
!2331 = !DILocation(line: 883, column: 42, scope: !2307)
!2332 = !DILocation(line: 883, column: 31, scope: !2307)
!2333 = !DILocation(line: 882, column: 22, scope: !2307)
!2334 = !DILocation(line: 882, column: 15, scope: !2307)
!2335 = !DILocation(line: 884, column: 11, scope: !2307)
!2336 = !DILocation(line: 885, column: 15, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2307, file: !280, line: 884, column: 11)
!2338 = !{i64 0, i64 8, !2247, i64 8, i64 8, !473}
!2339 = !DILocation(line: 885, column: 9, scope: !2337)
!2340 = !DILocation(line: 886, column: 20, scope: !2307)
!2341 = !DILocation(line: 886, column: 18, scope: !2307)
!2342 = !DILocation(line: 886, column: 15, scope: !2307)
!2343 = !DILocation(line: 886, column: 32, scope: !2307)
!2344 = !DILocation(line: 886, column: 43, scope: !2307)
!2345 = !DILocation(line: 886, column: 53, scope: !2307)
!2346 = !DILocation(line: 0, scope: !1733, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 886, column: 7, scope: !2307)
!2348 = !DILocation(line: 59, column: 10, scope: !1733, inlinedAt: !2347)
!2349 = !DILocation(line: 887, column: 16, scope: !2307)
!2350 = !DILocation(line: 887, column: 14, scope: !2307)
!2351 = !DILocation(line: 888, column: 5, scope: !2308)
!2352 = !DILocation(line: 888, column: 5, scope: !2307)
!2353 = !DILocation(line: 891, column: 19, scope: !2311)
!2354 = !DILocation(line: 891, column: 25, scope: !2311)
!2355 = !DILocation(line: 0, scope: !2311)
!2356 = !DILocation(line: 892, column: 23, scope: !2311)
!2357 = !DILocation(line: 894, column: 26, scope: !2311)
!2358 = !DILocation(line: 894, column: 32, scope: !2311)
!2359 = !DILocation(line: 896, column: 55, scope: !2311)
!2360 = !DILocation(line: 897, column: 46, scope: !2311)
!2361 = !DILocation(line: 898, column: 55, scope: !2311)
!2362 = !DILocation(line: 899, column: 55, scope: !2311)
!2363 = !DILocation(line: 895, column: 20, scope: !2311)
!2364 = !DILocation(line: 901, column: 14, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2311, file: !280, line: 901, column: 9)
!2366 = !DILocation(line: 901, column: 9, scope: !2311)
!2367 = !DILocation(line: 903, column: 35, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2365, file: !280, line: 902, column: 7)
!2369 = !DILocation(line: 903, column: 20, scope: !2368)
!2370 = !DILocation(line: 904, column: 17, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2368, file: !280, line: 904, column: 13)
!2372 = !DILocation(line: 904, column: 13, scope: !2368)
!2373 = !DILocation(line: 905, column: 11, scope: !2371)
!2374 = !DILocation(line: 906, column: 27, scope: !2368)
!2375 = !DILocation(line: 906, column: 19, scope: !2368)
!2376 = !DILocation(line: 907, column: 69, scope: !2368)
!2377 = !DILocation(line: 909, column: 44, scope: !2368)
!2378 = !DILocation(line: 910, column: 44, scope: !2368)
!2379 = !DILocation(line: 907, column: 9, scope: !2368)
!2380 = !DILocation(line: 911, column: 7, scope: !2368)
!2381 = !DILocation(line: 913, column: 11, scope: !2311)
!2382 = !DILocation(line: 914, column: 5, scope: !2311)
!2383 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !280, file: !280, line: 925, type: !2384, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2386)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!93, !58, !6, !60}
!2386 = !{!2387, !2388, !2389}
!2387 = !DILocalVariable(name: "n", arg: 1, scope: !2383, file: !280, line: 925, type: !58)
!2388 = !DILocalVariable(name: "arg", arg: 2, scope: !2383, file: !280, line: 925, type: !6)
!2389 = !DILocalVariable(name: "argsize", arg: 3, scope: !2383, file: !280, line: 925, type: !60)
!2390 = !DILocation(line: 0, scope: !2383)
!2391 = !DILocation(line: 927, column: 10, scope: !2383)
!2392 = !DILocation(line: 927, column: 3, scope: !2383)
!2393 = distinct !DISubprogram(name: "quotearg", scope: !280, file: !280, line: 931, type: !679, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2394)
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "arg", arg: 1, scope: !2393, file: !280, line: 931, type: !6)
!2396 = !DILocation(line: 0, scope: !2393)
!2397 = !DILocation(line: 0, scope: !2288, inlinedAt: !2398)
!2398 = distinct !DILocation(line: 933, column: 10, scope: !2393)
!2399 = !DILocation(line: 921, column: 10, scope: !2288, inlinedAt: !2398)
!2400 = !DILocation(line: 933, column: 3, scope: !2393)
!2401 = distinct !DISubprogram(name: "quotearg_mem", scope: !280, file: !280, line: 937, type: !2402, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!93, !6, !60}
!2404 = !{!2405, !2406}
!2405 = !DILocalVariable(name: "arg", arg: 1, scope: !2401, file: !280, line: 937, type: !6)
!2406 = !DILocalVariable(name: "argsize", arg: 2, scope: !2401, file: !280, line: 937, type: !60)
!2407 = !DILocation(line: 0, scope: !2401)
!2408 = !DILocation(line: 0, scope: !2383, inlinedAt: !2409)
!2409 = distinct !DILocation(line: 939, column: 10, scope: !2401)
!2410 = !DILocation(line: 927, column: 10, scope: !2383, inlinedAt: !2409)
!2411 = !DILocation(line: 939, column: 3, scope: !2401)
!2412 = distinct !DISubprogram(name: "quotearg_n_style", scope: !280, file: !280, line: 943, type: !2413, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!93, !58, !22, !6}
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DILocalVariable(name: "n", arg: 1, scope: !2412, file: !280, line: 943, type: !58)
!2417 = !DILocalVariable(name: "s", arg: 2, scope: !2412, file: !280, line: 943, type: !22)
!2418 = !DILocalVariable(name: "arg", arg: 3, scope: !2412, file: !280, line: 943, type: !6)
!2419 = !DILocalVariable(name: "o", scope: !2412, file: !280, line: 945, type: !1523)
!2420 = !DILocation(line: 0, scope: !2412)
!2421 = !DILocation(line: 945, column: 3, scope: !2412)
!2422 = !DILocation(line: 945, column: 32, scope: !2412)
!2423 = !{!2424}
!2424 = distinct !{!2424, !2425, !"quoting_options_from_style: argument 0"}
!2425 = distinct !{!2425, !"quoting_options_from_style"}
!2426 = !DILocation(line: 945, column: 36, scope: !2412)
!2427 = !DILocalVariable(name: "style", arg: 1, scope: !2428, file: !280, line: 183, type: !22)
!2428 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !280, file: !280, line: 183, type: !2429, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!297, !22}
!2431 = !{!2427, !2432}
!2432 = !DILocalVariable(name: "o", scope: !2428, file: !280, line: 185, type: !297)
!2433 = !DILocation(line: 0, scope: !2428, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 945, column: 36, scope: !2412)
!2435 = !DILocation(line: 185, column: 26, scope: !2428, inlinedAt: !2434)
!2436 = !DILocation(line: 186, column: 13, scope: !2437, inlinedAt: !2434)
!2437 = distinct !DILexicalBlock(scope: !2428, file: !280, line: 186, column: 7)
!2438 = !DILocation(line: 186, column: 7, scope: !2428, inlinedAt: !2434)
!2439 = !DILocation(line: 187, column: 5, scope: !2437, inlinedAt: !2434)
!2440 = !DILocation(line: 188, column: 5, scope: !2428, inlinedAt: !2434)
!2441 = !DILocation(line: 188, column: 11, scope: !2428, inlinedAt: !2434)
!2442 = !DILocation(line: 946, column: 10, scope: !2412)
!2443 = !DILocation(line: 947, column: 1, scope: !2412)
!2444 = !DILocation(line: 946, column: 3, scope: !2412)
!2445 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !280, file: !280, line: 950, type: !2446, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2448)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!93, !58, !22, !6, !60}
!2448 = !{!2449, !2450, !2451, !2452, !2453}
!2449 = !DILocalVariable(name: "n", arg: 1, scope: !2445, file: !280, line: 950, type: !58)
!2450 = !DILocalVariable(name: "s", arg: 2, scope: !2445, file: !280, line: 950, type: !22)
!2451 = !DILocalVariable(name: "arg", arg: 3, scope: !2445, file: !280, line: 951, type: !6)
!2452 = !DILocalVariable(name: "argsize", arg: 4, scope: !2445, file: !280, line: 951, type: !60)
!2453 = !DILocalVariable(name: "o", scope: !2445, file: !280, line: 953, type: !1523)
!2454 = !DILocation(line: 0, scope: !2445)
!2455 = !DILocation(line: 953, column: 3, scope: !2445)
!2456 = !DILocation(line: 953, column: 32, scope: !2445)
!2457 = !{!2458}
!2458 = distinct !{!2458, !2459, !"quoting_options_from_style: argument 0"}
!2459 = distinct !{!2459, !"quoting_options_from_style"}
!2460 = !DILocation(line: 953, column: 36, scope: !2445)
!2461 = !DILocation(line: 0, scope: !2428, inlinedAt: !2462)
!2462 = distinct !DILocation(line: 953, column: 36, scope: !2445)
!2463 = !DILocation(line: 185, column: 26, scope: !2428, inlinedAt: !2462)
!2464 = !DILocation(line: 186, column: 13, scope: !2437, inlinedAt: !2462)
!2465 = !DILocation(line: 186, column: 7, scope: !2428, inlinedAt: !2462)
!2466 = !DILocation(line: 187, column: 5, scope: !2437, inlinedAt: !2462)
!2467 = !DILocation(line: 188, column: 5, scope: !2428, inlinedAt: !2462)
!2468 = !DILocation(line: 188, column: 11, scope: !2428, inlinedAt: !2462)
!2469 = !DILocation(line: 954, column: 10, scope: !2445)
!2470 = !DILocation(line: 955, column: 1, scope: !2445)
!2471 = !DILocation(line: 954, column: 3, scope: !2445)
!2472 = distinct !DISubprogram(name: "quotearg_style", scope: !280, file: !280, line: 958, type: !2473, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!93, !22, !6}
!2475 = !{!2476, !2477}
!2476 = !DILocalVariable(name: "s", arg: 1, scope: !2472, file: !280, line: 958, type: !22)
!2477 = !DILocalVariable(name: "arg", arg: 2, scope: !2472, file: !280, line: 958, type: !6)
!2478 = !DILocation(line: 0, scope: !2472)
!2479 = !DILocation(line: 0, scope: !2412, inlinedAt: !2480)
!2480 = distinct !DILocation(line: 960, column: 10, scope: !2472)
!2481 = !DILocation(line: 945, column: 3, scope: !2412, inlinedAt: !2480)
!2482 = !DILocation(line: 945, column: 32, scope: !2412, inlinedAt: !2480)
!2483 = !{!2484}
!2484 = distinct !{!2484, !2485, !"quoting_options_from_style: argument 0"}
!2485 = distinct !{!2485, !"quoting_options_from_style"}
!2486 = !DILocation(line: 945, column: 36, scope: !2412, inlinedAt: !2480)
!2487 = !DILocation(line: 0, scope: !2428, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 945, column: 36, scope: !2412, inlinedAt: !2480)
!2489 = !DILocation(line: 185, column: 26, scope: !2428, inlinedAt: !2488)
!2490 = !DILocation(line: 186, column: 13, scope: !2437, inlinedAt: !2488)
!2491 = !DILocation(line: 186, column: 7, scope: !2428, inlinedAt: !2488)
!2492 = !DILocation(line: 187, column: 5, scope: !2437, inlinedAt: !2488)
!2493 = !DILocation(line: 188, column: 5, scope: !2428, inlinedAt: !2488)
!2494 = !DILocation(line: 188, column: 11, scope: !2428, inlinedAt: !2488)
!2495 = !DILocation(line: 946, column: 10, scope: !2412, inlinedAt: !2480)
!2496 = !DILocation(line: 947, column: 1, scope: !2412, inlinedAt: !2480)
!2497 = !DILocation(line: 960, column: 3, scope: !2472)
!2498 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !280, file: !280, line: 964, type: !2499, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!93, !22, !6, !60}
!2501 = !{!2502, !2503, !2504}
!2502 = !DILocalVariable(name: "s", arg: 1, scope: !2498, file: !280, line: 964, type: !22)
!2503 = !DILocalVariable(name: "arg", arg: 2, scope: !2498, file: !280, line: 964, type: !6)
!2504 = !DILocalVariable(name: "argsize", arg: 3, scope: !2498, file: !280, line: 964, type: !60)
!2505 = !DILocation(line: 0, scope: !2498)
!2506 = !DILocation(line: 0, scope: !2445, inlinedAt: !2507)
!2507 = distinct !DILocation(line: 966, column: 10, scope: !2498)
!2508 = !DILocation(line: 953, column: 3, scope: !2445, inlinedAt: !2507)
!2509 = !DILocation(line: 953, column: 32, scope: !2445, inlinedAt: !2507)
!2510 = !{!2511}
!2511 = distinct !{!2511, !2512, !"quoting_options_from_style: argument 0"}
!2512 = distinct !{!2512, !"quoting_options_from_style"}
!2513 = !DILocation(line: 953, column: 36, scope: !2445, inlinedAt: !2507)
!2514 = !DILocation(line: 0, scope: !2428, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 953, column: 36, scope: !2445, inlinedAt: !2507)
!2516 = !DILocation(line: 185, column: 26, scope: !2428, inlinedAt: !2515)
!2517 = !DILocation(line: 186, column: 13, scope: !2437, inlinedAt: !2515)
!2518 = !DILocation(line: 186, column: 7, scope: !2428, inlinedAt: !2515)
!2519 = !DILocation(line: 187, column: 5, scope: !2437, inlinedAt: !2515)
!2520 = !DILocation(line: 188, column: 5, scope: !2428, inlinedAt: !2515)
!2521 = !DILocation(line: 188, column: 11, scope: !2428, inlinedAt: !2515)
!2522 = !DILocation(line: 954, column: 10, scope: !2445, inlinedAt: !2507)
!2523 = !DILocation(line: 955, column: 1, scope: !2445, inlinedAt: !2507)
!2524 = !DILocation(line: 966, column: 3, scope: !2498)
!2525 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !280, file: !280, line: 970, type: !2526, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!93, !6, !60, !8}
!2528 = !{!2529, !2530, !2531, !2532}
!2529 = !DILocalVariable(name: "arg", arg: 1, scope: !2525, file: !280, line: 970, type: !6)
!2530 = !DILocalVariable(name: "argsize", arg: 2, scope: !2525, file: !280, line: 970, type: !60)
!2531 = !DILocalVariable(name: "ch", arg: 3, scope: !2525, file: !280, line: 970, type: !8)
!2532 = !DILocalVariable(name: "options", scope: !2525, file: !280, line: 972, type: !297)
!2533 = !DILocation(line: 0, scope: !2525)
!2534 = !DILocation(line: 972, column: 3, scope: !2525)
!2535 = !DILocation(line: 972, column: 26, scope: !2525)
!2536 = !DILocation(line: 973, column: 13, scope: !2525)
!2537 = !{i64 0, i64 4, !576, i64 4, i64 4, !567, i64 8, i64 32, !576, i64 40, i64 8, !473, i64 48, i64 8, !473}
!2538 = !DILocation(line: 0, scope: !1543, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 974, column: 3, scope: !2525)
!2540 = !DILocation(line: 147, column: 62, scope: !1543, inlinedAt: !2539)
!2541 = !DILocation(line: 147, column: 57, scope: !1543, inlinedAt: !2539)
!2542 = !DILocation(line: 148, column: 15, scope: !1543, inlinedAt: !2539)
!2543 = !DILocation(line: 149, column: 21, scope: !1543, inlinedAt: !2539)
!2544 = !DILocation(line: 149, column: 24, scope: !1543, inlinedAt: !2539)
!2545 = !DILocation(line: 149, column: 34, scope: !1543, inlinedAt: !2539)
!2546 = !DILocation(line: 150, column: 19, scope: !1543, inlinedAt: !2539)
!2547 = !DILocation(line: 150, column: 24, scope: !1543, inlinedAt: !2539)
!2548 = !DILocation(line: 150, column: 6, scope: !1543, inlinedAt: !2539)
!2549 = !DILocation(line: 975, column: 10, scope: !2525)
!2550 = !DILocation(line: 976, column: 1, scope: !2525)
!2551 = !DILocation(line: 975, column: 3, scope: !2525)
!2552 = distinct !DISubprogram(name: "quotearg_char", scope: !280, file: !280, line: 979, type: !2553, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2555)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!93, !6, !8}
!2555 = !{!2556, !2557}
!2556 = !DILocalVariable(name: "arg", arg: 1, scope: !2552, file: !280, line: 979, type: !6)
!2557 = !DILocalVariable(name: "ch", arg: 2, scope: !2552, file: !280, line: 979, type: !8)
!2558 = !DILocation(line: 0, scope: !2552)
!2559 = !DILocation(line: 0, scope: !2525, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 981, column: 10, scope: !2552)
!2561 = !DILocation(line: 972, column: 3, scope: !2525, inlinedAt: !2560)
!2562 = !DILocation(line: 972, column: 26, scope: !2525, inlinedAt: !2560)
!2563 = !DILocation(line: 973, column: 13, scope: !2525, inlinedAt: !2560)
!2564 = !DILocation(line: 0, scope: !1543, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 974, column: 3, scope: !2525, inlinedAt: !2560)
!2566 = !DILocation(line: 147, column: 62, scope: !1543, inlinedAt: !2565)
!2567 = !DILocation(line: 147, column: 57, scope: !1543, inlinedAt: !2565)
!2568 = !DILocation(line: 148, column: 15, scope: !1543, inlinedAt: !2565)
!2569 = !DILocation(line: 149, column: 21, scope: !1543, inlinedAt: !2565)
!2570 = !DILocation(line: 149, column: 24, scope: !1543, inlinedAt: !2565)
!2571 = !DILocation(line: 149, column: 34, scope: !1543, inlinedAt: !2565)
!2572 = !DILocation(line: 150, column: 19, scope: !1543, inlinedAt: !2565)
!2573 = !DILocation(line: 150, column: 24, scope: !1543, inlinedAt: !2565)
!2574 = !DILocation(line: 150, column: 6, scope: !1543, inlinedAt: !2565)
!2575 = !DILocation(line: 975, column: 10, scope: !2525, inlinedAt: !2560)
!2576 = !DILocation(line: 976, column: 1, scope: !2525, inlinedAt: !2560)
!2577 = !DILocation(line: 981, column: 3, scope: !2552)
!2578 = distinct !DISubprogram(name: "quotearg_colon", scope: !280, file: !280, line: 985, type: !679, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2579)
!2579 = !{!2580}
!2580 = !DILocalVariable(name: "arg", arg: 1, scope: !2578, file: !280, line: 985, type: !6)
!2581 = !DILocation(line: 0, scope: !2578)
!2582 = !DILocation(line: 0, scope: !2552, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 987, column: 10, scope: !2578)
!2584 = !DILocation(line: 0, scope: !2525, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 981, column: 10, scope: !2552, inlinedAt: !2583)
!2586 = !DILocation(line: 972, column: 3, scope: !2525, inlinedAt: !2585)
!2587 = !DILocation(line: 972, column: 26, scope: !2525, inlinedAt: !2585)
!2588 = !DILocation(line: 973, column: 13, scope: !2525, inlinedAt: !2585)
!2589 = !DILocation(line: 0, scope: !1543, inlinedAt: !2590)
!2590 = distinct !DILocation(line: 974, column: 3, scope: !2525, inlinedAt: !2585)
!2591 = !DILocation(line: 147, column: 57, scope: !1543, inlinedAt: !2590)
!2592 = !DILocation(line: 149, column: 21, scope: !1543, inlinedAt: !2590)
!2593 = !DILocation(line: 150, column: 6, scope: !1543, inlinedAt: !2590)
!2594 = !DILocation(line: 975, column: 10, scope: !2525, inlinedAt: !2585)
!2595 = !DILocation(line: 976, column: 1, scope: !2525, inlinedAt: !2585)
!2596 = !DILocation(line: 987, column: 3, scope: !2578)
!2597 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !280, file: !280, line: 991, type: !2402, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2598)
!2598 = !{!2599, !2600}
!2599 = !DILocalVariable(name: "arg", arg: 1, scope: !2597, file: !280, line: 991, type: !6)
!2600 = !DILocalVariable(name: "argsize", arg: 2, scope: !2597, file: !280, line: 991, type: !60)
!2601 = !DILocation(line: 0, scope: !2597)
!2602 = !DILocation(line: 0, scope: !2525, inlinedAt: !2603)
!2603 = distinct !DILocation(line: 993, column: 10, scope: !2597)
!2604 = !DILocation(line: 972, column: 3, scope: !2525, inlinedAt: !2603)
!2605 = !DILocation(line: 972, column: 26, scope: !2525, inlinedAt: !2603)
!2606 = !DILocation(line: 973, column: 13, scope: !2525, inlinedAt: !2603)
!2607 = !DILocation(line: 0, scope: !1543, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 974, column: 3, scope: !2525, inlinedAt: !2603)
!2609 = !DILocation(line: 147, column: 57, scope: !1543, inlinedAt: !2608)
!2610 = !DILocation(line: 149, column: 21, scope: !1543, inlinedAt: !2608)
!2611 = !DILocation(line: 150, column: 6, scope: !1543, inlinedAt: !2608)
!2612 = !DILocation(line: 975, column: 10, scope: !2525, inlinedAt: !2603)
!2613 = !DILocation(line: 976, column: 1, scope: !2525, inlinedAt: !2603)
!2614 = !DILocation(line: 993, column: 3, scope: !2597)
!2615 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !280, file: !280, line: 997, type: !2413, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2616)
!2616 = !{!2617, !2618, !2619, !2620}
!2617 = !DILocalVariable(name: "n", arg: 1, scope: !2615, file: !280, line: 997, type: !58)
!2618 = !DILocalVariable(name: "s", arg: 2, scope: !2615, file: !280, line: 997, type: !22)
!2619 = !DILocalVariable(name: "arg", arg: 3, scope: !2615, file: !280, line: 997, type: !6)
!2620 = !DILocalVariable(name: "options", scope: !2615, file: !280, line: 999, type: !297)
!2621 = !DILocation(line: 0, scope: !2615)
!2622 = !DILocation(line: 999, column: 3, scope: !2615)
!2623 = !DILocation(line: 999, column: 26, scope: !2615)
!2624 = !DILocation(line: 0, scope: !2428, inlinedAt: !2625)
!2625 = distinct !DILocation(line: 1000, column: 13, scope: !2615)
!2626 = !DILocation(line: 186, column: 13, scope: !2437, inlinedAt: !2625)
!2627 = !DILocation(line: 186, column: 7, scope: !2428, inlinedAt: !2625)
!2628 = !DILocation(line: 187, column: 5, scope: !2437, inlinedAt: !2625)
!2629 = !{!2630}
!2630 = distinct !{!2630, !2631, !"quoting_options_from_style: argument 0"}
!2631 = distinct !{!2631, !"quoting_options_from_style"}
!2632 = !DILocation(line: 1000, column: 13, scope: !2615)
!2633 = !DILocation(line: 0, scope: !1543, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 1001, column: 3, scope: !2615)
!2635 = !DILocation(line: 147, column: 57, scope: !1543, inlinedAt: !2634)
!2636 = !DILocation(line: 149, column: 21, scope: !1543, inlinedAt: !2634)
!2637 = !DILocation(line: 150, column: 6, scope: !1543, inlinedAt: !2634)
!2638 = !DILocation(line: 1002, column: 10, scope: !2615)
!2639 = !DILocation(line: 1003, column: 1, scope: !2615)
!2640 = !DILocation(line: 1002, column: 3, scope: !2615)
!2641 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !280, file: !280, line: 1006, type: !2642, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2644)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!93, !58, !6, !6, !6}
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "n", arg: 1, scope: !2641, file: !280, line: 1006, type: !58)
!2646 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2641, file: !280, line: 1006, type: !6)
!2647 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2641, file: !280, line: 1007, type: !6)
!2648 = !DILocalVariable(name: "arg", arg: 4, scope: !2641, file: !280, line: 1007, type: !6)
!2649 = !DILocation(line: 0, scope: !2641)
!2650 = !DILocalVariable(name: "n", arg: 1, scope: !2651, file: !280, line: 1014, type: !58)
!2651 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !280, file: !280, line: 1014, type: !2652, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2654)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{!93, !58, !6, !6, !6, !60}
!2654 = !{!2650, !2655, !2656, !2657, !2658, !2659}
!2655 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2651, file: !280, line: 1014, type: !6)
!2656 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2651, file: !280, line: 1015, type: !6)
!2657 = !DILocalVariable(name: "arg", arg: 4, scope: !2651, file: !280, line: 1016, type: !6)
!2658 = !DILocalVariable(name: "argsize", arg: 5, scope: !2651, file: !280, line: 1016, type: !60)
!2659 = !DILocalVariable(name: "o", scope: !2651, file: !280, line: 1018, type: !297)
!2660 = !DILocation(line: 0, scope: !2651, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1009, column: 10, scope: !2641)
!2662 = !DILocation(line: 1018, column: 3, scope: !2651, inlinedAt: !2661)
!2663 = !DILocation(line: 1018, column: 26, scope: !2651, inlinedAt: !2661)
!2664 = !DILocation(line: 1018, column: 30, scope: !2651, inlinedAt: !2661)
!2665 = !DILocation(line: 0, scope: !1583, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 1019, column: 3, scope: !2651, inlinedAt: !2661)
!2667 = !DILocation(line: 174, column: 6, scope: !1583, inlinedAt: !2666)
!2668 = !DILocation(line: 174, column: 12, scope: !1583, inlinedAt: !2666)
!2669 = !DILocation(line: 175, column: 8, scope: !1597, inlinedAt: !2666)
!2670 = !DILocation(line: 175, column: 19, scope: !1597, inlinedAt: !2666)
!2671 = !DILocation(line: 176, column: 5, scope: !1597, inlinedAt: !2666)
!2672 = !DILocation(line: 177, column: 6, scope: !1583, inlinedAt: !2666)
!2673 = !DILocation(line: 177, column: 17, scope: !1583, inlinedAt: !2666)
!2674 = !DILocation(line: 178, column: 6, scope: !1583, inlinedAt: !2666)
!2675 = !DILocation(line: 178, column: 18, scope: !1583, inlinedAt: !2666)
!2676 = !DILocation(line: 1020, column: 10, scope: !2651, inlinedAt: !2661)
!2677 = !DILocation(line: 1021, column: 1, scope: !2651, inlinedAt: !2661)
!2678 = !DILocation(line: 1009, column: 3, scope: !2641)
!2679 = !DILocation(line: 0, scope: !2651)
!2680 = !DILocation(line: 1018, column: 3, scope: !2651)
!2681 = !DILocation(line: 1018, column: 26, scope: !2651)
!2682 = !DILocation(line: 1018, column: 30, scope: !2651)
!2683 = !DILocation(line: 0, scope: !1583, inlinedAt: !2684)
!2684 = distinct !DILocation(line: 1019, column: 3, scope: !2651)
!2685 = !DILocation(line: 174, column: 6, scope: !1583, inlinedAt: !2684)
!2686 = !DILocation(line: 174, column: 12, scope: !1583, inlinedAt: !2684)
!2687 = !DILocation(line: 175, column: 8, scope: !1597, inlinedAt: !2684)
!2688 = !DILocation(line: 175, column: 19, scope: !1597, inlinedAt: !2684)
!2689 = !DILocation(line: 176, column: 5, scope: !1597, inlinedAt: !2684)
!2690 = !DILocation(line: 177, column: 6, scope: !1583, inlinedAt: !2684)
!2691 = !DILocation(line: 177, column: 17, scope: !1583, inlinedAt: !2684)
!2692 = !DILocation(line: 178, column: 6, scope: !1583, inlinedAt: !2684)
!2693 = !DILocation(line: 178, column: 18, scope: !1583, inlinedAt: !2684)
!2694 = !DILocation(line: 1020, column: 10, scope: !2651)
!2695 = !DILocation(line: 1021, column: 1, scope: !2651)
!2696 = !DILocation(line: 1020, column: 3, scope: !2651)
!2697 = distinct !DISubprogram(name: "quotearg_custom", scope: !280, file: !280, line: 1024, type: !2698, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2700)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!93, !6, !6, !6}
!2700 = !{!2701, !2702, !2703}
!2701 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2697, file: !280, line: 1024, type: !6)
!2702 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2697, file: !280, line: 1024, type: !6)
!2703 = !DILocalVariable(name: "arg", arg: 3, scope: !2697, file: !280, line: 1025, type: !6)
!2704 = !DILocation(line: 0, scope: !2697)
!2705 = !DILocation(line: 0, scope: !2641, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 1027, column: 10, scope: !2697)
!2707 = !DILocation(line: 0, scope: !2651, inlinedAt: !2708)
!2708 = distinct !DILocation(line: 1009, column: 10, scope: !2641, inlinedAt: !2706)
!2709 = !DILocation(line: 1018, column: 3, scope: !2651, inlinedAt: !2708)
!2710 = !DILocation(line: 1018, column: 26, scope: !2651, inlinedAt: !2708)
!2711 = !DILocation(line: 1018, column: 30, scope: !2651, inlinedAt: !2708)
!2712 = !DILocation(line: 0, scope: !1583, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1019, column: 3, scope: !2651, inlinedAt: !2708)
!2714 = !DILocation(line: 174, column: 6, scope: !1583, inlinedAt: !2713)
!2715 = !DILocation(line: 174, column: 12, scope: !1583, inlinedAt: !2713)
!2716 = !DILocation(line: 175, column: 8, scope: !1597, inlinedAt: !2713)
!2717 = !DILocation(line: 175, column: 19, scope: !1597, inlinedAt: !2713)
!2718 = !DILocation(line: 176, column: 5, scope: !1597, inlinedAt: !2713)
!2719 = !DILocation(line: 177, column: 6, scope: !1583, inlinedAt: !2713)
!2720 = !DILocation(line: 177, column: 17, scope: !1583, inlinedAt: !2713)
!2721 = !DILocation(line: 178, column: 6, scope: !1583, inlinedAt: !2713)
!2722 = !DILocation(line: 178, column: 18, scope: !1583, inlinedAt: !2713)
!2723 = !DILocation(line: 1020, column: 10, scope: !2651, inlinedAt: !2708)
!2724 = !DILocation(line: 1021, column: 1, scope: !2651, inlinedAt: !2708)
!2725 = !DILocation(line: 1027, column: 3, scope: !2697)
!2726 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !280, file: !280, line: 1031, type: !2727, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!93, !6, !6, !6, !60}
!2729 = !{!2730, !2731, !2732, !2733}
!2730 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2726, file: !280, line: 1031, type: !6)
!2731 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2726, file: !280, line: 1031, type: !6)
!2732 = !DILocalVariable(name: "arg", arg: 3, scope: !2726, file: !280, line: 1032, type: !6)
!2733 = !DILocalVariable(name: "argsize", arg: 4, scope: !2726, file: !280, line: 1032, type: !60)
!2734 = !DILocation(line: 0, scope: !2726)
!2735 = !DILocation(line: 0, scope: !2651, inlinedAt: !2736)
!2736 = distinct !DILocation(line: 1034, column: 10, scope: !2726)
!2737 = !DILocation(line: 1018, column: 3, scope: !2651, inlinedAt: !2736)
!2738 = !DILocation(line: 1018, column: 26, scope: !2651, inlinedAt: !2736)
!2739 = !DILocation(line: 1018, column: 30, scope: !2651, inlinedAt: !2736)
!2740 = !DILocation(line: 0, scope: !1583, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1019, column: 3, scope: !2651, inlinedAt: !2736)
!2742 = !DILocation(line: 174, column: 6, scope: !1583, inlinedAt: !2741)
!2743 = !DILocation(line: 174, column: 12, scope: !1583, inlinedAt: !2741)
!2744 = !DILocation(line: 175, column: 8, scope: !1597, inlinedAt: !2741)
!2745 = !DILocation(line: 175, column: 19, scope: !1597, inlinedAt: !2741)
!2746 = !DILocation(line: 176, column: 5, scope: !1597, inlinedAt: !2741)
!2747 = !DILocation(line: 177, column: 6, scope: !1583, inlinedAt: !2741)
!2748 = !DILocation(line: 177, column: 17, scope: !1583, inlinedAt: !2741)
!2749 = !DILocation(line: 178, column: 6, scope: !1583, inlinedAt: !2741)
!2750 = !DILocation(line: 178, column: 18, scope: !1583, inlinedAt: !2741)
!2751 = !DILocation(line: 1020, column: 10, scope: !2651, inlinedAt: !2736)
!2752 = !DILocation(line: 1021, column: 1, scope: !2651, inlinedAt: !2736)
!2753 = !DILocation(line: 1034, column: 3, scope: !2726)
!2754 = distinct !DISubprogram(name: "quote_n_mem", scope: !280, file: !280, line: 1049, type: !2755, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2757)
!2755 = !DISubroutineType(types: !2756)
!2756 = !{!6, !58, !6, !60}
!2757 = !{!2758, !2759, !2760}
!2758 = !DILocalVariable(name: "n", arg: 1, scope: !2754, file: !280, line: 1049, type: !58)
!2759 = !DILocalVariable(name: "arg", arg: 2, scope: !2754, file: !280, line: 1049, type: !6)
!2760 = !DILocalVariable(name: "argsize", arg: 3, scope: !2754, file: !280, line: 1049, type: !60)
!2761 = !DILocation(line: 0, scope: !2754)
!2762 = !DILocation(line: 1051, column: 10, scope: !2754)
!2763 = !DILocation(line: 1051, column: 3, scope: !2754)
!2764 = distinct !DISubprogram(name: "quote_mem", scope: !280, file: !280, line: 1055, type: !2765, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!6, !6, !60}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "arg", arg: 1, scope: !2764, file: !280, line: 1055, type: !6)
!2769 = !DILocalVariable(name: "argsize", arg: 2, scope: !2764, file: !280, line: 1055, type: !60)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 0, scope: !2754, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1057, column: 10, scope: !2764)
!2773 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2772)
!2774 = !DILocation(line: 1057, column: 3, scope: !2764)
!2775 = distinct !DISubprogram(name: "quote_n", scope: !280, file: !280, line: 1061, type: !2776, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!6, !58, !6}
!2778 = !{!2779, !2780}
!2779 = !DILocalVariable(name: "n", arg: 1, scope: !2775, file: !280, line: 1061, type: !58)
!2780 = !DILocalVariable(name: "arg", arg: 2, scope: !2775, file: !280, line: 1061, type: !6)
!2781 = !DILocation(line: 0, scope: !2775)
!2782 = !DILocation(line: 0, scope: !2754, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 1063, column: 10, scope: !2775)
!2784 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2783)
!2785 = !DILocation(line: 1063, column: 3, scope: !2775)
!2786 = distinct !DISubprogram(name: "quote", scope: !280, file: !280, line: 1067, type: !2787, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !279, retainedNodes: !2789)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!6, !6}
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "arg", arg: 1, scope: !2786, file: !280, line: 1067, type: !6)
!2791 = !DILocation(line: 0, scope: !2786)
!2792 = !DILocation(line: 0, scope: !2775, inlinedAt: !2793)
!2793 = distinct !DILocation(line: 1069, column: 10, scope: !2786)
!2794 = !DILocation(line: 0, scope: !2754, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1063, column: 10, scope: !2775, inlinedAt: !2793)
!2796 = !DILocation(line: 1051, column: 10, scope: !2754, inlinedAt: !2795)
!2797 = !DILocation(line: 1069, column: 3, scope: !2786)
!2798 = distinct !DISubprogram(name: "version_etc_arn", scope: !392, file: !392, line: 61, type: !2799, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !2836)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{null, !2801, !6, !6, !6, !2835, !60}
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !2803)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !2804)
!2804 = !{!2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2803, file: !89, line: 51, baseType: !58, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2803, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2803, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2803, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2803, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2803, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2803, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2803, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2803, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2803, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2803, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2803, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2803, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2803, file: !89, line: 70, baseType: !2819, size: 64, offset: 832)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2803, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2803, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2803, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2803, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2803, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2803, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2803, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2803, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2803, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2803, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2803, file: !89, line: 93, baseType: !2819, size: 64, offset: 1344)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2803, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2803, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2803, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2803, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!2836 = !{!2837, !2838, !2839, !2840, !2841, !2842}
!2837 = !DILocalVariable(name: "stream", arg: 1, scope: !2798, file: !392, line: 61, type: !2801)
!2838 = !DILocalVariable(name: "command_name", arg: 2, scope: !2798, file: !392, line: 62, type: !6)
!2839 = !DILocalVariable(name: "package", arg: 3, scope: !2798, file: !392, line: 62, type: !6)
!2840 = !DILocalVariable(name: "version", arg: 4, scope: !2798, file: !392, line: 63, type: !6)
!2841 = !DILocalVariable(name: "authors", arg: 5, scope: !2798, file: !392, line: 64, type: !2835)
!2842 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2798, file: !392, line: 64, type: !60)
!2843 = !DILocation(line: 0, scope: !2798)
!2844 = !DILocation(line: 66, column: 7, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2798, file: !392, line: 66, column: 7)
!2846 = !DILocation(line: 66, column: 7, scope: !2798)
!2847 = !DILocation(line: 67, column: 5, scope: !2845)
!2848 = !DILocation(line: 69, column: 5, scope: !2845)
!2849 = !DILocation(line: 83, column: 3, scope: !2798)
!2850 = !DILocation(line: 85, column: 3, scope: !2798)
!2851 = !DILocation(line: 88, column: 3, scope: !2798)
!2852 = !DILocation(line: 95, column: 3, scope: !2798)
!2853 = !DILocation(line: 97, column: 3, scope: !2798)
!2854 = !DILocation(line: 105, column: 7, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2798, file: !392, line: 98, column: 5)
!2856 = !DILocation(line: 106, column: 7, scope: !2855)
!2857 = !DILocation(line: 109, column: 7, scope: !2855)
!2858 = !DILocation(line: 110, column: 7, scope: !2855)
!2859 = !DILocation(line: 113, column: 7, scope: !2855)
!2860 = !DILocation(line: 115, column: 7, scope: !2855)
!2861 = !DILocation(line: 120, column: 7, scope: !2855)
!2862 = !DILocation(line: 122, column: 7, scope: !2855)
!2863 = !DILocation(line: 127, column: 7, scope: !2855)
!2864 = !DILocation(line: 129, column: 7, scope: !2855)
!2865 = !DILocation(line: 134, column: 7, scope: !2855)
!2866 = !DILocation(line: 137, column: 7, scope: !2855)
!2867 = !DILocation(line: 142, column: 7, scope: !2855)
!2868 = !DILocation(line: 145, column: 7, scope: !2855)
!2869 = !DILocation(line: 150, column: 7, scope: !2855)
!2870 = !DILocation(line: 154, column: 7, scope: !2855)
!2871 = !DILocation(line: 159, column: 7, scope: !2855)
!2872 = !DILocation(line: 163, column: 7, scope: !2855)
!2873 = !DILocation(line: 170, column: 7, scope: !2855)
!2874 = !DILocation(line: 174, column: 7, scope: !2855)
!2875 = !DILocation(line: 176, column: 1, scope: !2798)
!2876 = distinct !DISubprogram(name: "version_etc_ar", scope: !392, file: !392, line: 183, type: !2877, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{null, !2801, !6, !6, !6, !2835}
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885}
!2880 = !DILocalVariable(name: "stream", arg: 1, scope: !2876, file: !392, line: 183, type: !2801)
!2881 = !DILocalVariable(name: "command_name", arg: 2, scope: !2876, file: !392, line: 184, type: !6)
!2882 = !DILocalVariable(name: "package", arg: 3, scope: !2876, file: !392, line: 184, type: !6)
!2883 = !DILocalVariable(name: "version", arg: 4, scope: !2876, file: !392, line: 185, type: !6)
!2884 = !DILocalVariable(name: "authors", arg: 5, scope: !2876, file: !392, line: 185, type: !2835)
!2885 = !DILocalVariable(name: "n_authors", scope: !2876, file: !392, line: 187, type: !60)
!2886 = !DILocation(line: 0, scope: !2876)
!2887 = !DILocation(line: 189, column: 8, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2876, file: !392, line: 189, column: 3)
!2889 = !DILocation(line: 0, scope: !2888)
!2890 = !DILocation(line: 189, column: 23, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2888, file: !392, line: 189, column: 3)
!2892 = !DILocation(line: 189, column: 3, scope: !2888)
!2893 = !DILocation(line: 189, column: 52, scope: !2891)
!2894 = distinct !{!2894, !2892, !2895, !533}
!2895 = !DILocation(line: 190, column: 5, scope: !2888)
!2896 = !DILocation(line: 191, column: 3, scope: !2876)
!2897 = !DILocation(line: 192, column: 1, scope: !2876)
!2898 = distinct !DISubprogram(name: "version_etc_va", scope: !392, file: !392, line: 199, type: !2899, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !2912)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{null, !2801, !6, !6, !6, !2901}
!2901 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !2902)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2904, baseType: !2905)
!2904 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2910, !2911}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2905, file: !2904, line: 192, baseType: !52, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2905, file: !2904, line: 192, baseType: !52, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2905, file: !2904, line: 192, baseType: !52, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2905, file: !2904, line: 192, baseType: !58, size: 32, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2905, file: !2904, line: 192, baseType: !58, size: 32, offset: 224)
!2912 = !{!2913, !2914, !2915, !2916, !2917, !2918, !2919}
!2913 = !DILocalVariable(name: "stream", arg: 1, scope: !2898, file: !392, line: 199, type: !2801)
!2914 = !DILocalVariable(name: "command_name", arg: 2, scope: !2898, file: !392, line: 200, type: !6)
!2915 = !DILocalVariable(name: "package", arg: 3, scope: !2898, file: !392, line: 200, type: !6)
!2916 = !DILocalVariable(name: "version", arg: 4, scope: !2898, file: !392, line: 201, type: !6)
!2917 = !DILocalVariable(name: "authors", arg: 5, scope: !2898, file: !392, line: 201, type: !2901)
!2918 = !DILocalVariable(name: "n_authors", scope: !2898, file: !392, line: 203, type: !60)
!2919 = !DILocalVariable(name: "authtab", scope: !2898, file: !392, line: 204, type: !2920)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !293)
!2921 = !DILocation(line: 0, scope: !2898)
!2922 = !DILocation(line: 201, column: 46, scope: !2898)
!2923 = !DILocation(line: 204, column: 3, scope: !2898)
!2924 = !DILocation(line: 204, column: 15, scope: !2898)
!2925 = !DILocation(line: 208, column: 35, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !392, line: 206, column: 3)
!2927 = distinct !DILexicalBlock(scope: !2898, file: !392, line: 206, column: 3)
!2928 = !DILocation(line: 208, column: 14, scope: !2926)
!2929 = !DILocation(line: 208, column: 33, scope: !2926)
!2930 = !DILocation(line: 208, column: 67, scope: !2926)
!2931 = !DILocation(line: 206, column: 3, scope: !2927)
!2932 = !DILocation(line: 0, scope: !2927)
!2933 = !DILocation(line: 211, column: 3, scope: !2898)
!2934 = !DILocation(line: 213, column: 1, scope: !2898)
!2935 = distinct !DISubprogram(name: "version_etc", scope: !392, file: !392, line: 230, type: !2936, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !2938)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{null, !2801, !6, !6, !6, null}
!2938 = !{!2939, !2940, !2941, !2942, !2943}
!2939 = !DILocalVariable(name: "stream", arg: 1, scope: !2935, file: !392, line: 230, type: !2801)
!2940 = !DILocalVariable(name: "command_name", arg: 2, scope: !2935, file: !392, line: 231, type: !6)
!2941 = !DILocalVariable(name: "package", arg: 3, scope: !2935, file: !392, line: 231, type: !6)
!2942 = !DILocalVariable(name: "version", arg: 4, scope: !2935, file: !392, line: 232, type: !6)
!2943 = !DILocalVariable(name: "authors", scope: !2935, file: !392, line: 234, type: !2901)
!2944 = !DILocation(line: 0, scope: !2935)
!2945 = !DILocation(line: 234, column: 3, scope: !2935)
!2946 = !DILocation(line: 234, column: 11, scope: !2935)
!2947 = !DILocation(line: 235, column: 3, scope: !2935)
!2948 = !DILocation(line: 236, column: 3, scope: !2935)
!2949 = !DILocation(line: 237, column: 3, scope: !2935)
!2950 = !DILocation(line: 238, column: 1, scope: !2935)
!2951 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !392, file: !392, line: 241, type: !198, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !559)
!2952 = !DILocation(line: 243, column: 3, scope: !2951)
!2953 = !DILocation(line: 248, column: 3, scope: !2951)
!2954 = !DILocation(line: 254, column: 3, scope: !2951)
!2955 = !DILocation(line: 259, column: 3, scope: !2951)
!2956 = !DILocation(line: 261, column: 1, scope: !2951)
!2957 = distinct !DISubprogram(name: "xnrealloc", scope: !2958, file: !2958, line: 147, type: !2959, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !2961)
!2958 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!52, !52, !60, !60}
!2961 = !{!2962, !2963, !2964}
!2962 = !DILocalVariable(name: "p", arg: 1, scope: !2957, file: !2958, line: 147, type: !52)
!2963 = !DILocalVariable(name: "n", arg: 2, scope: !2957, file: !2958, line: 147, type: !60)
!2964 = !DILocalVariable(name: "s", arg: 3, scope: !2957, file: !2958, line: 147, type: !60)
!2965 = !DILocation(line: 0, scope: !2957)
!2966 = !DILocalVariable(name: "p", arg: 1, scope: !2967, file: !398, line: 83, type: !52)
!2967 = distinct !DISubprogram(name: "xreallocarray", scope: !398, file: !398, line: 83, type: !2959, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !2968)
!2968 = !{!2966, !2969, !2970}
!2969 = !DILocalVariable(name: "n", arg: 2, scope: !2967, file: !398, line: 83, type: !60)
!2970 = !DILocalVariable(name: "s", arg: 3, scope: !2967, file: !398, line: 83, type: !60)
!2971 = !DILocation(line: 0, scope: !2967, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 149, column: 10, scope: !2957)
!2973 = !DILocation(line: 85, column: 25, scope: !2967, inlinedAt: !2972)
!2974 = !DILocalVariable(name: "p", arg: 1, scope: !2975, file: !398, line: 37, type: !52)
!2975 = distinct !DISubprogram(name: "check_nonnull", scope: !398, file: !398, line: 37, type: !2976, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!52, !52}
!2978 = !{!2974}
!2979 = !DILocation(line: 0, scope: !2975, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 85, column: 10, scope: !2967, inlinedAt: !2972)
!2981 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !2980)
!2982 = distinct !DILexicalBlock(scope: !2975, file: !398, line: 39, column: 7)
!2983 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !2980)
!2984 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !2980)
!2985 = !DILocation(line: 149, column: 3, scope: !2957)
!2986 = !DILocation(line: 0, scope: !2967)
!2987 = !DILocation(line: 85, column: 25, scope: !2967)
!2988 = !DILocation(line: 0, scope: !2975, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 85, column: 10, scope: !2967)
!2990 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !2989)
!2991 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !2989)
!2992 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !2989)
!2993 = !DILocation(line: 85, column: 3, scope: !2967)
!2994 = distinct !DISubprogram(name: "xmalloc", scope: !398, file: !398, line: 47, type: !2995, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !2997)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!52, !60}
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "s", arg: 1, scope: !2994, file: !398, line: 47, type: !60)
!2999 = !DILocation(line: 0, scope: !2994)
!3000 = !DILocation(line: 49, column: 25, scope: !2994)
!3001 = !DILocation(line: 0, scope: !2975, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 49, column: 10, scope: !2994)
!3003 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3002)
!3004 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3002)
!3005 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3002)
!3006 = !DILocation(line: 49, column: 3, scope: !2994)
!3007 = distinct !DISubprogram(name: "ximalloc", scope: !398, file: !398, line: 53, type: !3008, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3010)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!52, !417}
!3010 = !{!3011}
!3011 = !DILocalVariable(name: "s", arg: 1, scope: !3007, file: !398, line: 53, type: !417)
!3012 = !DILocation(line: 0, scope: !3007)
!3013 = !DILocalVariable(name: "s", arg: 1, scope: !3014, file: !3015, line: 55, type: !417)
!3014 = distinct !DISubprogram(name: "imalloc", scope: !3015, file: !3015, line: 55, type: !3008, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3016)
!3015 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3016 = !{!3013}
!3017 = !DILocation(line: 0, scope: !3014, inlinedAt: !3018)
!3018 = distinct !DILocation(line: 55, column: 25, scope: !3007)
!3019 = !DILocation(line: 57, column: 26, scope: !3014, inlinedAt: !3018)
!3020 = !DILocation(line: 0, scope: !2975, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 55, column: 10, scope: !3007)
!3022 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3021)
!3023 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3021)
!3024 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3021)
!3025 = !DILocation(line: 55, column: 3, scope: !3007)
!3026 = distinct !DISubprogram(name: "xcharalloc", scope: !398, file: !398, line: 59, type: !3027, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!93, !60}
!3029 = !{!3030}
!3030 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !398, line: 59, type: !60)
!3031 = !DILocation(line: 0, scope: !3026)
!3032 = !DILocation(line: 0, scope: !2994, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 61, column: 10, scope: !3026)
!3034 = !DILocation(line: 49, column: 25, scope: !2994, inlinedAt: !3033)
!3035 = !DILocation(line: 0, scope: !2975, inlinedAt: !3036)
!3036 = distinct !DILocation(line: 49, column: 10, scope: !2994, inlinedAt: !3033)
!3037 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3036)
!3038 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3036)
!3039 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3036)
!3040 = !DILocation(line: 61, column: 3, scope: !3026)
!3041 = distinct !DISubprogram(name: "xrealloc", scope: !398, file: !398, line: 68, type: !3042, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!52, !52, !60}
!3044 = !{!3045, !3046}
!3045 = !DILocalVariable(name: "p", arg: 1, scope: !3041, file: !398, line: 68, type: !52)
!3046 = !DILocalVariable(name: "s", arg: 2, scope: !3041, file: !398, line: 68, type: !60)
!3047 = !DILocation(line: 0, scope: !3041)
!3048 = !DILocalVariable(name: "ptr", arg: 1, scope: !3049, file: !3050, line: 2057, type: !52)
!3049 = distinct !DISubprogram(name: "rpl_realloc", scope: !3050, file: !3050, line: 2057, type: !3042, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3051)
!3050 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3051 = !{!3048, !3052}
!3052 = !DILocalVariable(name: "size", arg: 2, scope: !3049, file: !3050, line: 2057, type: !60)
!3053 = !DILocation(line: 0, scope: !3049, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 70, column: 25, scope: !3041)
!3055 = !DILocation(line: 2059, column: 24, scope: !3049, inlinedAt: !3054)
!3056 = !DILocation(line: 2059, column: 10, scope: !3049, inlinedAt: !3054)
!3057 = !DILocation(line: 0, scope: !2975, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 70, column: 10, scope: !3041)
!3059 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3058)
!3060 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3058)
!3061 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3058)
!3062 = !DILocation(line: 70, column: 3, scope: !3041)
!3063 = distinct !DISubprogram(name: "xirealloc", scope: !398, file: !398, line: 74, type: !3064, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!52, !52, !417}
!3066 = !{!3067, !3068}
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !398, line: 74, type: !52)
!3068 = !DILocalVariable(name: "s", arg: 2, scope: !3063, file: !398, line: 74, type: !417)
!3069 = !DILocation(line: 0, scope: !3063)
!3070 = !DILocalVariable(name: "p", arg: 1, scope: !3071, file: !3015, line: 66, type: !52)
!3071 = distinct !DISubprogram(name: "irealloc", scope: !3015, file: !3015, line: 66, type: !3064, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3072)
!3072 = !{!3070, !3073}
!3073 = !DILocalVariable(name: "s", arg: 2, scope: !3071, file: !3015, line: 66, type: !417)
!3074 = !DILocation(line: 0, scope: !3071, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 76, column: 25, scope: !3063)
!3076 = !DILocation(line: 0, scope: !3049, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 68, column: 26, scope: !3071, inlinedAt: !3075)
!3078 = !DILocation(line: 2059, column: 24, scope: !3049, inlinedAt: !3077)
!3079 = !DILocation(line: 2059, column: 10, scope: !3049, inlinedAt: !3077)
!3080 = !DILocation(line: 0, scope: !2975, inlinedAt: !3081)
!3081 = distinct !DILocation(line: 76, column: 10, scope: !3063)
!3082 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3081)
!3083 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3081)
!3084 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3081)
!3085 = !DILocation(line: 76, column: 3, scope: !3063)
!3086 = distinct !DISubprogram(name: "xireallocarray", scope: !398, file: !398, line: 89, type: !3087, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!52, !52, !417, !417}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !398, line: 89, type: !52)
!3091 = !DILocalVariable(name: "n", arg: 2, scope: !3086, file: !398, line: 89, type: !417)
!3092 = !DILocalVariable(name: "s", arg: 3, scope: !3086, file: !398, line: 89, type: !417)
!3093 = !DILocation(line: 0, scope: !3086)
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3095, file: !3015, line: 98, type: !52)
!3095 = distinct !DISubprogram(name: "ireallocarray", scope: !3015, file: !3015, line: 98, type: !3087, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3096)
!3096 = !{!3094, !3097, !3098}
!3097 = !DILocalVariable(name: "n", arg: 2, scope: !3095, file: !3015, line: 98, type: !417)
!3098 = !DILocalVariable(name: "s", arg: 3, scope: !3095, file: !3015, line: 98, type: !417)
!3099 = !DILocation(line: 0, scope: !3095, inlinedAt: !3100)
!3100 = distinct !DILocation(line: 91, column: 25, scope: !3086)
!3101 = !DILocation(line: 101, column: 13, scope: !3095, inlinedAt: !3100)
!3102 = !DILocation(line: 0, scope: !2975, inlinedAt: !3103)
!3103 = distinct !DILocation(line: 91, column: 10, scope: !3086)
!3104 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3103)
!3105 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3103)
!3106 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3103)
!3107 = !DILocation(line: 91, column: 3, scope: !3086)
!3108 = distinct !DISubprogram(name: "xnmalloc", scope: !398, file: !398, line: 98, type: !3109, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3111)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{!52, !60, !60}
!3111 = !{!3112, !3113}
!3112 = !DILocalVariable(name: "n", arg: 1, scope: !3108, file: !398, line: 98, type: !60)
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !398, line: 98, type: !60)
!3114 = !DILocation(line: 0, scope: !3108)
!3115 = !DILocation(line: 0, scope: !2967, inlinedAt: !3116)
!3116 = distinct !DILocation(line: 100, column: 10, scope: !3108)
!3117 = !DILocation(line: 85, column: 25, scope: !2967, inlinedAt: !3116)
!3118 = !DILocation(line: 0, scope: !2975, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 85, column: 10, scope: !2967, inlinedAt: !3116)
!3120 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3119)
!3121 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3119)
!3122 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3119)
!3123 = !DILocation(line: 100, column: 3, scope: !3108)
!3124 = distinct !DISubprogram(name: "xinmalloc", scope: !398, file: !398, line: 104, type: !3125, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3127)
!3125 = !DISubroutineType(types: !3126)
!3126 = !{!52, !417, !417}
!3127 = !{!3128, !3129}
!3128 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !398, line: 104, type: !417)
!3129 = !DILocalVariable(name: "s", arg: 2, scope: !3124, file: !398, line: 104, type: !417)
!3130 = !DILocation(line: 0, scope: !3124)
!3131 = !DILocation(line: 0, scope: !3086, inlinedAt: !3132)
!3132 = distinct !DILocation(line: 106, column: 10, scope: !3124)
!3133 = !DILocation(line: 0, scope: !3095, inlinedAt: !3134)
!3134 = distinct !DILocation(line: 91, column: 25, scope: !3086, inlinedAt: !3132)
!3135 = !DILocation(line: 101, column: 13, scope: !3095, inlinedAt: !3134)
!3136 = !DILocation(line: 0, scope: !2975, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 91, column: 10, scope: !3086, inlinedAt: !3132)
!3138 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3137)
!3139 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3137)
!3140 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3137)
!3141 = !DILocation(line: 106, column: 3, scope: !3124)
!3142 = distinct !DISubprogram(name: "x2realloc", scope: !398, file: !398, line: 116, type: !3143, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3145)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!52, !52, !404}
!3145 = !{!3146, !3147}
!3146 = !DILocalVariable(name: "p", arg: 1, scope: !3142, file: !398, line: 116, type: !52)
!3147 = !DILocalVariable(name: "ps", arg: 2, scope: !3142, file: !398, line: 116, type: !404)
!3148 = !DILocation(line: 0, scope: !3142)
!3149 = !DILocation(line: 0, scope: !401, inlinedAt: !3150)
!3150 = distinct !DILocation(line: 118, column: 10, scope: !3142)
!3151 = !DILocation(line: 178, column: 14, scope: !401, inlinedAt: !3150)
!3152 = !DILocation(line: 180, column: 9, scope: !3153, inlinedAt: !3150)
!3153 = distinct !DILexicalBlock(scope: !401, file: !398, line: 180, column: 7)
!3154 = !DILocation(line: 180, column: 7, scope: !401, inlinedAt: !3150)
!3155 = !DILocation(line: 182, column: 13, scope: !3156, inlinedAt: !3150)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !398, line: 182, column: 11)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !398, line: 181, column: 5)
!3158 = !DILocation(line: 182, column: 11, scope: !3157, inlinedAt: !3150)
!3159 = !DILocation(line: 197, column: 11, scope: !3160, inlinedAt: !3150)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !398, line: 197, column: 11)
!3161 = distinct !DILexicalBlock(scope: !3153, file: !398, line: 195, column: 5)
!3162 = !DILocation(line: 197, column: 11, scope: !3161, inlinedAt: !3150)
!3163 = !DILocation(line: 198, column: 9, scope: !3160, inlinedAt: !3150)
!3164 = !DILocation(line: 0, scope: !2967, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 201, column: 7, scope: !401, inlinedAt: !3150)
!3166 = !DILocation(line: 85, column: 25, scope: !2967, inlinedAt: !3165)
!3167 = !DILocation(line: 0, scope: !2975, inlinedAt: !3168)
!3168 = distinct !DILocation(line: 85, column: 10, scope: !2967, inlinedAt: !3165)
!3169 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3168)
!3170 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3168)
!3171 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3168)
!3172 = !DILocation(line: 202, column: 7, scope: !401, inlinedAt: !3150)
!3173 = !DILocation(line: 118, column: 3, scope: !3142)
!3174 = !DILocation(line: 0, scope: !401)
!3175 = !DILocation(line: 178, column: 14, scope: !401)
!3176 = !DILocation(line: 180, column: 9, scope: !3153)
!3177 = !DILocation(line: 180, column: 7, scope: !401)
!3178 = !DILocation(line: 182, column: 13, scope: !3156)
!3179 = !DILocation(line: 182, column: 11, scope: !3157)
!3180 = !DILocation(line: 190, column: 30, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3156, file: !398, line: 183, column: 9)
!3182 = !DILocation(line: 191, column: 16, scope: !3181)
!3183 = !DILocation(line: 191, column: 13, scope: !3181)
!3184 = !DILocation(line: 192, column: 9, scope: !3181)
!3185 = !DILocation(line: 197, column: 11, scope: !3160)
!3186 = !DILocation(line: 197, column: 11, scope: !3161)
!3187 = !DILocation(line: 198, column: 9, scope: !3160)
!3188 = !DILocation(line: 0, scope: !2967, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 201, column: 7, scope: !401)
!3190 = !DILocation(line: 85, column: 25, scope: !2967, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !2975, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 85, column: 10, scope: !2967, inlinedAt: !3189)
!3193 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3192)
!3196 = !DILocation(line: 202, column: 7, scope: !401)
!3197 = !DILocation(line: 203, column: 3, scope: !401)
!3198 = !DILocation(line: 0, scope: !413)
!3199 = !DILocation(line: 230, column: 14, scope: !413)
!3200 = !DILocation(line: 238, column: 7, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !413, file: !398, line: 238, column: 7)
!3202 = !DILocation(line: 238, column: 7, scope: !413)
!3203 = !DILocation(line: 240, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !413, file: !398, line: 240, column: 7)
!3205 = !DILocation(line: 240, column: 18, scope: !3204)
!3206 = !DILocation(line: 253, column: 8, scope: !413)
!3207 = !DILocation(line: 258, column: 27, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !398, line: 257, column: 5)
!3209 = distinct !DILexicalBlock(scope: !413, file: !398, line: 256, column: 7)
!3210 = !DILocation(line: 259, column: 32, scope: !3208)
!3211 = !DILocation(line: 260, column: 5, scope: !3208)
!3212 = !DILocation(line: 262, column: 9, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !413, file: !398, line: 262, column: 7)
!3214 = !DILocation(line: 262, column: 7, scope: !413)
!3215 = !DILocation(line: 263, column: 9, scope: !3213)
!3216 = !DILocation(line: 263, column: 5, scope: !3213)
!3217 = !DILocation(line: 264, column: 9, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !413, file: !398, line: 264, column: 7)
!3219 = !DILocation(line: 264, column: 14, scope: !3218)
!3220 = !DILocation(line: 265, column: 7, scope: !3218)
!3221 = !DILocation(line: 265, column: 11, scope: !3218)
!3222 = !DILocation(line: 266, column: 11, scope: !3218)
!3223 = !DILocation(line: 266, column: 26, scope: !3218)
!3224 = !DILocation(line: 267, column: 14, scope: !3218)
!3225 = !DILocation(line: 264, column: 7, scope: !413)
!3226 = !DILocation(line: 268, column: 5, scope: !3218)
!3227 = !DILocation(line: 0, scope: !3041, inlinedAt: !3228)
!3228 = distinct !DILocation(line: 269, column: 8, scope: !413)
!3229 = !DILocation(line: 0, scope: !3049, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 70, column: 25, scope: !3041, inlinedAt: !3228)
!3231 = !DILocation(line: 2059, column: 24, scope: !3049, inlinedAt: !3230)
!3232 = !DILocation(line: 2059, column: 10, scope: !3049, inlinedAt: !3230)
!3233 = !DILocation(line: 0, scope: !2975, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 70, column: 10, scope: !3041, inlinedAt: !3228)
!3235 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3234)
!3236 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3234)
!3237 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3234)
!3238 = !DILocation(line: 270, column: 7, scope: !413)
!3239 = !DILocation(line: 271, column: 3, scope: !413)
!3240 = distinct !DISubprogram(name: "xzalloc", scope: !398, file: !398, line: 279, type: !2995, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3241)
!3241 = !{!3242}
!3242 = !DILocalVariable(name: "s", arg: 1, scope: !3240, file: !398, line: 279, type: !60)
!3243 = !DILocation(line: 0, scope: !3240)
!3244 = !DILocalVariable(name: "n", arg: 1, scope: !3245, file: !398, line: 294, type: !60)
!3245 = distinct !DISubprogram(name: "xcalloc", scope: !398, file: !398, line: 294, type: !3109, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3246)
!3246 = !{!3244, !3247}
!3247 = !DILocalVariable(name: "s", arg: 2, scope: !3245, file: !398, line: 294, type: !60)
!3248 = !DILocation(line: 0, scope: !3245, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 281, column: 10, scope: !3240)
!3250 = !DILocation(line: 296, column: 25, scope: !3245, inlinedAt: !3249)
!3251 = !DILocation(line: 0, scope: !2975, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 296, column: 10, scope: !3245, inlinedAt: !3249)
!3253 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3252)
!3254 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3252)
!3255 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3252)
!3256 = !DILocation(line: 281, column: 3, scope: !3240)
!3257 = !DILocation(line: 0, scope: !3245)
!3258 = !DILocation(line: 296, column: 25, scope: !3245)
!3259 = !DILocation(line: 0, scope: !2975, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 296, column: 10, scope: !3245)
!3261 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3260)
!3264 = !DILocation(line: 296, column: 3, scope: !3245)
!3265 = distinct !DISubprogram(name: "xizalloc", scope: !398, file: !398, line: 285, type: !3008, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3266)
!3266 = !{!3267}
!3267 = !DILocalVariable(name: "s", arg: 1, scope: !3265, file: !398, line: 285, type: !417)
!3268 = !DILocation(line: 0, scope: !3265)
!3269 = !DILocalVariable(name: "n", arg: 1, scope: !3270, file: !398, line: 300, type: !417)
!3270 = distinct !DISubprogram(name: "xicalloc", scope: !398, file: !398, line: 300, type: !3125, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3271)
!3271 = !{!3269, !3272}
!3272 = !DILocalVariable(name: "s", arg: 2, scope: !3270, file: !398, line: 300, type: !417)
!3273 = !DILocation(line: 0, scope: !3270, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 287, column: 10, scope: !3265)
!3275 = !DILocalVariable(name: "n", arg: 1, scope: !3276, file: !3015, line: 77, type: !417)
!3276 = distinct !DISubprogram(name: "icalloc", scope: !3015, file: !3015, line: 77, type: !3125, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3277)
!3277 = !{!3275, !3278}
!3278 = !DILocalVariable(name: "s", arg: 2, scope: !3276, file: !3015, line: 77, type: !417)
!3279 = !DILocation(line: 0, scope: !3276, inlinedAt: !3280)
!3280 = distinct !DILocation(line: 302, column: 25, scope: !3270, inlinedAt: !3274)
!3281 = !DILocation(line: 91, column: 10, scope: !3276, inlinedAt: !3280)
!3282 = !DILocation(line: 0, scope: !2975, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 302, column: 10, scope: !3270, inlinedAt: !3274)
!3284 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3283)
!3285 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3283)
!3286 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3283)
!3287 = !DILocation(line: 287, column: 3, scope: !3265)
!3288 = !DILocation(line: 0, scope: !3270)
!3289 = !DILocation(line: 0, scope: !3276, inlinedAt: !3290)
!3290 = distinct !DILocation(line: 302, column: 25, scope: !3270)
!3291 = !DILocation(line: 91, column: 10, scope: !3276, inlinedAt: !3290)
!3292 = !DILocation(line: 0, scope: !2975, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 302, column: 10, scope: !3270)
!3294 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3293)
!3295 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3293)
!3296 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3293)
!3297 = !DILocation(line: 302, column: 3, scope: !3270)
!3298 = distinct !DISubprogram(name: "xmemdup", scope: !398, file: !398, line: 310, type: !3299, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!52, !685, !60}
!3301 = !{!3302, !3303}
!3302 = !DILocalVariable(name: "p", arg: 1, scope: !3298, file: !398, line: 310, type: !685)
!3303 = !DILocalVariable(name: "s", arg: 2, scope: !3298, file: !398, line: 310, type: !60)
!3304 = !DILocation(line: 0, scope: !3298)
!3305 = !DILocation(line: 0, scope: !2994, inlinedAt: !3306)
!3306 = distinct !DILocation(line: 312, column: 18, scope: !3298)
!3307 = !DILocation(line: 49, column: 25, scope: !2994, inlinedAt: !3306)
!3308 = !DILocation(line: 0, scope: !2975, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 49, column: 10, scope: !2994, inlinedAt: !3306)
!3310 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3309)
!3311 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3309)
!3312 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3309)
!3313 = !DILocalVariable(name: "__dest", arg: 1, scope: !3314, file: !1315, line: 26, type: !1318)
!3314 = distinct !DISubprogram(name: "memcpy", scope: !1315, file: !1315, line: 26, type: !1316, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3315)
!3315 = !{!3313, !3316, !3317}
!3316 = !DILocalVariable(name: "__src", arg: 2, scope: !3314, file: !1315, line: 26, type: !684)
!3317 = !DILocalVariable(name: "__len", arg: 3, scope: !3314, file: !1315, line: 26, type: !60)
!3318 = !DILocation(line: 0, scope: !3314, inlinedAt: !3319)
!3319 = distinct !DILocation(line: 312, column: 10, scope: !3298)
!3320 = !DILocation(line: 29, column: 10, scope: !3314, inlinedAt: !3319)
!3321 = !DILocation(line: 312, column: 3, scope: !3298)
!3322 = distinct !DISubprogram(name: "ximemdup", scope: !398, file: !398, line: 316, type: !3323, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!52, !685, !417}
!3325 = !{!3326, !3327}
!3326 = !DILocalVariable(name: "p", arg: 1, scope: !3322, file: !398, line: 316, type: !685)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3322, file: !398, line: 316, type: !417)
!3328 = !DILocation(line: 0, scope: !3322)
!3329 = !DILocation(line: 0, scope: !3007, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 318, column: 18, scope: !3322)
!3331 = !DILocation(line: 0, scope: !3014, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 55, column: 25, scope: !3007, inlinedAt: !3330)
!3333 = !DILocation(line: 57, column: 26, scope: !3014, inlinedAt: !3332)
!3334 = !DILocation(line: 0, scope: !2975, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 55, column: 10, scope: !3007, inlinedAt: !3330)
!3336 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3335)
!3337 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3335)
!3338 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3335)
!3339 = !DILocation(line: 0, scope: !3314, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 318, column: 10, scope: !3322)
!3341 = !DILocation(line: 29, column: 10, scope: !3314, inlinedAt: !3340)
!3342 = !DILocation(line: 318, column: 3, scope: !3322)
!3343 = distinct !DISubprogram(name: "ximemdup0", scope: !398, file: !398, line: 325, type: !3344, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!93, !685, !417}
!3346 = !{!3347, !3348, !3349}
!3347 = !DILocalVariable(name: "p", arg: 1, scope: !3343, file: !398, line: 325, type: !685)
!3348 = !DILocalVariable(name: "s", arg: 2, scope: !3343, file: !398, line: 325, type: !417)
!3349 = !DILocalVariable(name: "result", scope: !3343, file: !398, line: 327, type: !93)
!3350 = !DILocation(line: 0, scope: !3343)
!3351 = !DILocation(line: 327, column: 30, scope: !3343)
!3352 = !DILocation(line: 0, scope: !3007, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 327, column: 18, scope: !3343)
!3354 = !DILocation(line: 0, scope: !3014, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 55, column: 25, scope: !3007, inlinedAt: !3353)
!3356 = !DILocation(line: 57, column: 26, scope: !3014, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !2975, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 55, column: 10, scope: !3007, inlinedAt: !3353)
!3359 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3358)
!3362 = !DILocation(line: 328, column: 3, scope: !3343)
!3363 = !DILocation(line: 328, column: 13, scope: !3343)
!3364 = !DILocation(line: 0, scope: !3314, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 329, column: 10, scope: !3343)
!3366 = !DILocation(line: 29, column: 10, scope: !3314, inlinedAt: !3365)
!3367 = !DILocation(line: 329, column: 3, scope: !3343)
!3368 = distinct !DISubprogram(name: "xstrdup", scope: !398, file: !398, line: 335, type: !679, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3369)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "string", arg: 1, scope: !3368, file: !398, line: 335, type: !6)
!3371 = !DILocation(line: 0, scope: !3368)
!3372 = !DILocation(line: 337, column: 27, scope: !3368)
!3373 = !DILocation(line: 337, column: 43, scope: !3368)
!3374 = !DILocation(line: 0, scope: !3298, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 337, column: 10, scope: !3368)
!3376 = !DILocation(line: 0, scope: !2994, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 312, column: 18, scope: !3298, inlinedAt: !3375)
!3378 = !DILocation(line: 49, column: 25, scope: !2994, inlinedAt: !3377)
!3379 = !DILocation(line: 0, scope: !2975, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 49, column: 10, scope: !2994, inlinedAt: !3377)
!3381 = !DILocation(line: 39, column: 8, scope: !2982, inlinedAt: !3380)
!3382 = !DILocation(line: 39, column: 7, scope: !2975, inlinedAt: !3380)
!3383 = !DILocation(line: 40, column: 5, scope: !2982, inlinedAt: !3380)
!3384 = !DILocation(line: 0, scope: !3314, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 312, column: 10, scope: !3298, inlinedAt: !3375)
!3386 = !DILocation(line: 29, column: 10, scope: !3314, inlinedAt: !3385)
!3387 = !DILocation(line: 337, column: 3, scope: !3368)
!3388 = distinct !DISubprogram(name: "xalloc_die", scope: !432, file: !432, line: 32, type: !198, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !3389)
!3389 = !{!3390}
!3390 = !DILocalVariable(name: "__errstatus", scope: !3391, file: !432, line: 34, type: !704)
!3391 = distinct !DILexicalBlock(scope: !3388, file: !432, line: 34, column: 3)
!3392 = !DILocation(line: 34, column: 3, scope: !3391)
!3393 = !DILocation(line: 0, scope: !3391)
!3394 = !DILocation(line: 40, column: 3, scope: !3388)
!3395 = distinct !DISubprogram(name: "last_component", scope: !434, file: !434, line: 29, type: !679, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !3396)
!3396 = !{!3397, !3398, !3399, !3400}
!3397 = !DILocalVariable(name: "name", arg: 1, scope: !3395, file: !434, line: 29, type: !6)
!3398 = !DILocalVariable(name: "base", scope: !3395, file: !434, line: 31, type: !6)
!3399 = !DILocalVariable(name: "last_was_slash", scope: !3395, file: !434, line: 35, type: !72)
!3400 = !DILocalVariable(name: "p", scope: !3401, file: !434, line: 36, type: !6)
!3401 = distinct !DILexicalBlock(scope: !3395, file: !434, line: 36, column: 3)
!3402 = !DILocation(line: 0, scope: !3395)
!3403 = !DILocation(line: 32, column: 3, scope: !3395)
!3404 = !DILocation(line: 32, column: 10, scope: !3395)
!3405 = !DILocation(line: 33, column: 9, scope: !3395)
!3406 = distinct !{!3406, !3403, !3405, !533}
!3407 = !DILocation(line: 36, column: 30, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3401, file: !434, line: 36, column: 3)
!3409 = !DILocation(line: 31, column: 15, scope: !3395)
!3410 = !DILocation(line: 0, scope: !3401)
!3411 = !DILocation(line: 36, column: 3, scope: !3401)
!3412 = !DILocation(line: 47, column: 3, scope: !3395)
!3413 = !DILocation(line: 40, column: 16, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3415, file: !434, line: 38, column: 11)
!3415 = distinct !DILexicalBlock(scope: !3408, file: !434, line: 37, column: 5)
!3416 = !DILocation(line: 36, column: 35, scope: !3408)
!3417 = !DILocation(line: 36, column: 3, scope: !3408)
!3418 = distinct !{!3418, !3411, !3419, !533}
!3419 = !DILocation(line: 45, column: 5, scope: !3401)
!3420 = distinct !DISubprogram(name: "base_len", scope: !434, file: !434, line: 51, type: !3421, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !3423)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!60, !6}
!3423 = !{!3424, !3425, !3426}
!3424 = !DILocalVariable(name: "name", arg: 1, scope: !3420, file: !434, line: 51, type: !6)
!3425 = !DILocalVariable(name: "len", scope: !3420, file: !434, line: 53, type: !60)
!3426 = !DILocalVariable(name: "prefix_len", scope: !3420, file: !434, line: 61, type: !60)
!3427 = !DILocation(line: 0, scope: !3420)
!3428 = !DILocation(line: 54, column: 14, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3420, file: !434, line: 54, column: 3)
!3430 = !DILocation(line: 54, column: 8, scope: !3429)
!3431 = !DILocation(line: 0, scope: !3429)
!3432 = !DILocation(line: 54, column: 32, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3429, file: !434, line: 54, column: 3)
!3434 = !DILocation(line: 54, column: 38, scope: !3433)
!3435 = !DILocation(line: 54, column: 41, scope: !3433)
!3436 = !DILocation(line: 54, column: 3, scope: !3429)
!3437 = distinct !{!3437, !3436, !3438, !533}
!3438 = !DILocation(line: 55, column: 5, scope: !3429)
!3439 = !DILocation(line: 66, column: 3, scope: !3420)
!3440 = distinct !DISubprogram(name: "close_stream", scope: !436, file: !436, line: 55, type: !3441, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3477)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!58, !3443}
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3446)
!3446 = !{!3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3445, file: !89, line: 51, baseType: !58, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3445, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3445, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3445, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3445, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3445, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3445, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3445, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3445, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3445, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3445, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3445, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3445, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3445, file: !89, line: 70, baseType: !3461, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3445, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3445, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3445, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3445, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3445, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3445, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3445, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3445, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3445, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3445, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3445, file: !89, line: 93, baseType: !3461, size: 64, offset: 1344)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3445, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3445, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3445, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3445, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!3477 = !{!3478, !3479, !3481, !3482}
!3478 = !DILocalVariable(name: "stream", arg: 1, scope: !3440, file: !436, line: 55, type: !3443)
!3479 = !DILocalVariable(name: "some_pending", scope: !3440, file: !436, line: 57, type: !3480)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3481 = !DILocalVariable(name: "prev_fail", scope: !3440, file: !436, line: 58, type: !3480)
!3482 = !DILocalVariable(name: "fclose_fail", scope: !3440, file: !436, line: 59, type: !3480)
!3483 = !DILocation(line: 0, scope: !3440)
!3484 = !DILocation(line: 57, column: 30, scope: !3440)
!3485 = !DILocalVariable(name: "__stream", arg: 1, scope: !3486, file: !820, line: 135, type: !3443)
!3486 = distinct !DISubprogram(name: "ferror_unlocked", scope: !820, file: !820, line: 135, type: !3441, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !435, retainedNodes: !3487)
!3487 = !{!3485}
!3488 = !DILocation(line: 0, scope: !3486, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 58, column: 27, scope: !3440)
!3490 = !DILocation(line: 137, column: 10, scope: !3486, inlinedAt: !3489)
!3491 = !DILocation(line: 58, column: 43, scope: !3440)
!3492 = !DILocation(line: 59, column: 29, scope: !3440)
!3493 = !DILocation(line: 59, column: 45, scope: !3440)
!3494 = !DILocation(line: 69, column: 17, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3440, file: !436, line: 69, column: 7)
!3496 = !DILocation(line: 57, column: 50, scope: !3440)
!3497 = !DILocation(line: 69, column: 33, scope: !3495)
!3498 = !DILocation(line: 69, column: 53, scope: !3495)
!3499 = !DILocation(line: 69, column: 59, scope: !3495)
!3500 = !DILocation(line: 69, column: 7, scope: !3440)
!3501 = !DILocation(line: 71, column: 11, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3495, file: !436, line: 70, column: 5)
!3503 = !DILocation(line: 72, column: 9, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3502, file: !436, line: 71, column: 11)
!3505 = !DILocation(line: 72, column: 15, scope: !3504)
!3506 = !DILocation(line: 77, column: 1, scope: !3440)
!3507 = distinct !DISubprogram(name: "rpl_fclose", scope: !438, file: !438, line: 58, type: !3508, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3544)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!58, !3510}
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3512)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3513)
!3513 = !{!3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3512, file: !89, line: 51, baseType: !58, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3512, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3512, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3512, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3512, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3512, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3512, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3512, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3512, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3512, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3512, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3512, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3512, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3512, file: !89, line: 70, baseType: !3528, size: 64, offset: 832)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3512, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3512, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3512, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3512, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3512, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3512, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3512, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3512, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3512, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3512, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3512, file: !89, line: 93, baseType: !3528, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3512, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3512, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3512, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3512, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!3544 = !{!3545, !3546, !3547, !3548}
!3545 = !DILocalVariable(name: "fp", arg: 1, scope: !3507, file: !438, line: 58, type: !3510)
!3546 = !DILocalVariable(name: "saved_errno", scope: !3507, file: !438, line: 60, type: !58)
!3547 = !DILocalVariable(name: "fd", scope: !3507, file: !438, line: 63, type: !58)
!3548 = !DILocalVariable(name: "result", scope: !3507, file: !438, line: 74, type: !58)
!3549 = !DILocation(line: 0, scope: !3507)
!3550 = !DILocation(line: 63, column: 12, scope: !3507)
!3551 = !DILocation(line: 64, column: 10, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3507, file: !438, line: 64, column: 7)
!3553 = !DILocation(line: 64, column: 7, scope: !3507)
!3554 = !DILocation(line: 65, column: 12, scope: !3552)
!3555 = !DILocation(line: 65, column: 5, scope: !3552)
!3556 = !DILocation(line: 70, column: 9, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3507, file: !438, line: 70, column: 7)
!3558 = !DILocation(line: 70, column: 23, scope: !3557)
!3559 = !DILocation(line: 70, column: 33, scope: !3557)
!3560 = !DILocation(line: 70, column: 26, scope: !3557)
!3561 = !DILocation(line: 70, column: 59, scope: !3557)
!3562 = !DILocation(line: 71, column: 7, scope: !3557)
!3563 = !DILocation(line: 71, column: 10, scope: !3557)
!3564 = !DILocation(line: 70, column: 7, scope: !3507)
!3565 = !DILocation(line: 100, column: 12, scope: !3507)
!3566 = !DILocation(line: 105, column: 7, scope: !3507)
!3567 = !DILocation(line: 72, column: 19, scope: !3557)
!3568 = !DILocation(line: 105, column: 19, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3507, file: !438, line: 105, column: 7)
!3570 = !DILocation(line: 107, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3569, file: !438, line: 106, column: 5)
!3572 = !DILocation(line: 109, column: 5, scope: !3571)
!3573 = !DILocation(line: 112, column: 1, scope: !3507)
!3574 = !DISubprogram(name: "fileno", scope: !171, file: !171, line: 809, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3575 = !DISubprogram(name: "fclose", scope: !171, file: !171, line: 178, type: !3508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3576 = !DISubprogram(name: "lseek", scope: !852, file: !852, line: 339, type: !3577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!112, !58, !112, !58}
!3579 = distinct !DISubprogram(name: "rpl_fflush", scope: !440, file: !440, line: 130, type: !3580, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3616)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!58, !3582}
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3585)
!3585 = !{!3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3584, file: !89, line: 51, baseType: !58, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3584, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3584, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3584, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3584, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3584, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3584, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3584, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3584, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3584, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3584, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3584, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3584, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3584, file: !89, line: 70, baseType: !3600, size: 64, offset: 832)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3584, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3584, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3584, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3584, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3584, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3584, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3584, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3584, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3584, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3584, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3584, file: !89, line: 93, baseType: !3600, size: 64, offset: 1344)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3584, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3584, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3584, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3584, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!3616 = !{!3617}
!3617 = !DILocalVariable(name: "stream", arg: 1, scope: !3579, file: !440, line: 130, type: !3582)
!3618 = !DILocation(line: 0, scope: !3579)
!3619 = !DILocation(line: 151, column: 14, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3579, file: !440, line: 151, column: 7)
!3621 = !DILocation(line: 151, column: 22, scope: !3620)
!3622 = !DILocation(line: 151, column: 27, scope: !3620)
!3623 = !DILocation(line: 151, column: 7, scope: !3579)
!3624 = !DILocation(line: 152, column: 12, scope: !3620)
!3625 = !DILocation(line: 152, column: 5, scope: !3620)
!3626 = !DILocalVariable(name: "fp", arg: 1, scope: !3627, file: !440, line: 42, type: !3582)
!3627 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !440, file: !440, line: 42, type: !3628, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !439, retainedNodes: !3630)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{null, !3582}
!3630 = !{!3626}
!3631 = !DILocation(line: 0, scope: !3627, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 157, column: 3, scope: !3579)
!3633 = !DILocation(line: 44, column: 12, scope: !3634, inlinedAt: !3632)
!3634 = distinct !DILexicalBlock(scope: !3627, file: !440, line: 44, column: 7)
!3635 = !DILocation(line: 44, column: 19, scope: !3634, inlinedAt: !3632)
!3636 = !DILocation(line: 44, column: 7, scope: !3627, inlinedAt: !3632)
!3637 = !DILocation(line: 46, column: 5, scope: !3634, inlinedAt: !3632)
!3638 = !DILocation(line: 159, column: 10, scope: !3579)
!3639 = !DILocation(line: 159, column: 3, scope: !3579)
!3640 = !DILocation(line: 236, column: 1, scope: !3579)
!3641 = !DISubprogram(name: "fflush", scope: !171, file: !171, line: 230, type: !3580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3642 = distinct !DISubprogram(name: "rpl_fseeko", scope: !442, file: !442, line: 28, type: !3643, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !3680)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!58, !3645, !3679, !58}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3647)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3648)
!3648 = !{!3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3647, file: !89, line: 51, baseType: !58, size: 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3647, file: !89, line: 54, baseType: !93, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3647, file: !89, line: 55, baseType: !93, size: 64, offset: 128)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3647, file: !89, line: 56, baseType: !93, size: 64, offset: 192)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3647, file: !89, line: 57, baseType: !93, size: 64, offset: 256)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3647, file: !89, line: 58, baseType: !93, size: 64, offset: 320)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3647, file: !89, line: 59, baseType: !93, size: 64, offset: 384)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3647, file: !89, line: 60, baseType: !93, size: 64, offset: 448)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3647, file: !89, line: 61, baseType: !93, size: 64, offset: 512)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3647, file: !89, line: 64, baseType: !93, size: 64, offset: 576)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3647, file: !89, line: 65, baseType: !93, size: 64, offset: 640)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3647, file: !89, line: 66, baseType: !93, size: 64, offset: 704)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3647, file: !89, line: 68, baseType: !105, size: 64, offset: 768)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3647, file: !89, line: 70, baseType: !3663, size: 64, offset: 832)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3647, file: !89, line: 72, baseType: !58, size: 32, offset: 896)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3647, file: !89, line: 73, baseType: !58, size: 32, offset: 928)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3647, file: !89, line: 74, baseType: !112, size: 64, offset: 960)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3647, file: !89, line: 77, baseType: !59, size: 16, offset: 1024)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3647, file: !89, line: 78, baseType: !117, size: 8, offset: 1040)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3647, file: !89, line: 79, baseType: !119, size: 8, offset: 1048)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3647, file: !89, line: 81, baseType: !123, size: 64, offset: 1088)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3647, file: !89, line: 89, baseType: !126, size: 64, offset: 1152)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3647, file: !89, line: 91, baseType: !128, size: 64, offset: 1216)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3647, file: !89, line: 92, baseType: !131, size: 64, offset: 1280)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3647, file: !89, line: 93, baseType: !3663, size: 64, offset: 1344)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3647, file: !89, line: 94, baseType: !52, size: 64, offset: 1408)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3647, file: !89, line: 95, baseType: !60, size: 64, offset: 1472)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3647, file: !89, line: 96, baseType: !58, size: 32, offset: 1536)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3647, file: !89, line: 98, baseType: !138, size: 160, offset: 1568)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !171, line: 63, baseType: !112)
!3680 = !{!3681, !3682, !3683, !3684}
!3681 = !DILocalVariable(name: "fp", arg: 1, scope: !3642, file: !442, line: 28, type: !3645)
!3682 = !DILocalVariable(name: "offset", arg: 2, scope: !3642, file: !442, line: 28, type: !3679)
!3683 = !DILocalVariable(name: "whence", arg: 3, scope: !3642, file: !442, line: 28, type: !58)
!3684 = !DILocalVariable(name: "pos", scope: !3685, file: !442, line: 123, type: !3679)
!3685 = distinct !DILexicalBlock(scope: !3686, file: !442, line: 119, column: 5)
!3686 = distinct !DILexicalBlock(scope: !3642, file: !442, line: 55, column: 7)
!3687 = !DILocation(line: 0, scope: !3642)
!3688 = !DILocation(line: 55, column: 12, scope: !3686)
!3689 = !{!828, !474, i64 16}
!3690 = !DILocation(line: 55, column: 33, scope: !3686)
!3691 = !{!828, !474, i64 8}
!3692 = !DILocation(line: 55, column: 25, scope: !3686)
!3693 = !DILocation(line: 56, column: 7, scope: !3686)
!3694 = !DILocation(line: 56, column: 15, scope: !3686)
!3695 = !DILocation(line: 56, column: 37, scope: !3686)
!3696 = !{!828, !474, i64 32}
!3697 = !DILocation(line: 56, column: 29, scope: !3686)
!3698 = !DILocation(line: 57, column: 7, scope: !3686)
!3699 = !DILocation(line: 57, column: 15, scope: !3686)
!3700 = !{!828, !474, i64 72}
!3701 = !DILocation(line: 57, column: 29, scope: !3686)
!3702 = !DILocation(line: 55, column: 7, scope: !3642)
!3703 = !DILocation(line: 123, column: 26, scope: !3685)
!3704 = !DILocation(line: 123, column: 19, scope: !3685)
!3705 = !DILocation(line: 0, scope: !3685)
!3706 = !DILocation(line: 124, column: 15, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3685, file: !442, line: 124, column: 11)
!3708 = !DILocation(line: 124, column: 11, scope: !3685)
!3709 = !DILocation(line: 135, column: 12, scope: !3685)
!3710 = !DILocation(line: 135, column: 19, scope: !3685)
!3711 = !DILocation(line: 136, column: 12, scope: !3685)
!3712 = !DILocation(line: 136, column: 20, scope: !3685)
!3713 = !{!828, !829, i64 144}
!3714 = !DILocation(line: 167, column: 7, scope: !3685)
!3715 = !DILocation(line: 169, column: 10, scope: !3642)
!3716 = !DILocation(line: 169, column: 3, scope: !3642)
!3717 = !DILocation(line: 170, column: 1, scope: !3642)
!3718 = !DISubprogram(name: "fseeko", scope: !171, file: !171, line: 736, type: !3719, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!58, !3645, !112, !58}
!3721 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !369, file: !369, line: 100, type: !3722, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3725)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!60, !1503, !6, !60, !3724}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!3725 = !{!3726, !3727, !3728, !3729, !3730}
!3726 = !DILocalVariable(name: "pwc", arg: 1, scope: !3721, file: !369, line: 100, type: !1503)
!3727 = !DILocalVariable(name: "s", arg: 2, scope: !3721, file: !369, line: 100, type: !6)
!3728 = !DILocalVariable(name: "n", arg: 3, scope: !3721, file: !369, line: 100, type: !60)
!3729 = !DILocalVariable(name: "ps", arg: 4, scope: !3721, file: !369, line: 100, type: !3724)
!3730 = !DILocalVariable(name: "ret", scope: !3721, file: !369, line: 130, type: !60)
!3731 = !DILocation(line: 0, scope: !3721)
!3732 = !DILocation(line: 105, column: 9, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3721, file: !369, line: 105, column: 7)
!3734 = !DILocation(line: 105, column: 7, scope: !3721)
!3735 = !DILocation(line: 117, column: 10, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3721, file: !369, line: 117, column: 7)
!3737 = !DILocation(line: 117, column: 7, scope: !3721)
!3738 = !DILocation(line: 130, column: 16, scope: !3721)
!3739 = !DILocation(line: 135, column: 11, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3721, file: !369, line: 135, column: 7)
!3741 = !DILocation(line: 135, column: 25, scope: !3740)
!3742 = !DILocation(line: 135, column: 30, scope: !3740)
!3743 = !DILocation(line: 135, column: 7, scope: !3721)
!3744 = !DILocalVariable(name: "ps", arg: 1, scope: !3745, file: !1477, line: 1135, type: !3724)
!3745 = distinct !DISubprogram(name: "mbszero", scope: !1477, file: !1477, line: 1135, type: !3746, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3748)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !3724}
!3748 = !{!3744}
!3749 = !DILocation(line: 0, scope: !3745, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 137, column: 5, scope: !3740)
!3751 = !DILocalVariable(name: "__dest", arg: 1, scope: !3752, file: !1315, line: 57, type: !52)
!3752 = distinct !DISubprogram(name: "memset", scope: !1315, file: !1315, line: 57, type: !1486, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !3753)
!3753 = !{!3751, !3754, !3755}
!3754 = !DILocalVariable(name: "__ch", arg: 2, scope: !3752, file: !1315, line: 57, type: !58)
!3755 = !DILocalVariable(name: "__len", arg: 3, scope: !3752, file: !1315, line: 57, type: !60)
!3756 = !DILocation(line: 0, scope: !3752, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 1137, column: 3, scope: !3745, inlinedAt: !3750)
!3758 = !DILocation(line: 59, column: 10, scope: !3752, inlinedAt: !3757)
!3759 = !DILocation(line: 137, column: 5, scope: !3740)
!3760 = !DILocation(line: 138, column: 11, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3721, file: !369, line: 138, column: 7)
!3762 = !DILocation(line: 138, column: 7, scope: !3721)
!3763 = !DILocation(line: 139, column: 5, scope: !3761)
!3764 = !DILocation(line: 143, column: 26, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3721, file: !369, line: 143, column: 7)
!3766 = !DILocation(line: 143, column: 41, scope: !3765)
!3767 = !DILocation(line: 143, column: 7, scope: !3721)
!3768 = !DILocation(line: 145, column: 15, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !369, line: 145, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3765, file: !369, line: 144, column: 5)
!3771 = !DILocation(line: 145, column: 11, scope: !3770)
!3772 = !DILocation(line: 146, column: 32, scope: !3769)
!3773 = !DILocation(line: 146, column: 16, scope: !3769)
!3774 = !DILocation(line: 146, column: 14, scope: !3769)
!3775 = !DILocation(line: 146, column: 9, scope: !3769)
!3776 = !DILocation(line: 286, column: 1, scope: !3721)
!3777 = !DISubprogram(name: "mbsinit", scope: !3778, file: !3778, line: 293, type: !3779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !559)
!3778 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!58, !3781}
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!3783 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !444, file: !444, line: 27, type: !2959, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3784)
!3784 = !{!3785, !3786, !3787, !3788}
!3785 = !DILocalVariable(name: "ptr", arg: 1, scope: !3783, file: !444, line: 27, type: !52)
!3786 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3783, file: !444, line: 27, type: !60)
!3787 = !DILocalVariable(name: "size", arg: 3, scope: !3783, file: !444, line: 27, type: !60)
!3788 = !DILocalVariable(name: "nbytes", scope: !3783, file: !444, line: 29, type: !60)
!3789 = !DILocation(line: 0, scope: !3783)
!3790 = !DILocation(line: 30, column: 7, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3783, file: !444, line: 30, column: 7)
!3792 = !DILocalVariable(name: "ptr", arg: 1, scope: !3793, file: !3050, line: 2057, type: !52)
!3793 = distinct !DISubprogram(name: "rpl_realloc", scope: !3050, file: !3050, line: 2057, type: !3042, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !3794)
!3794 = !{!3792, !3795}
!3795 = !DILocalVariable(name: "size", arg: 2, scope: !3793, file: !3050, line: 2057, type: !60)
!3796 = !DILocation(line: 0, scope: !3793, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 37, column: 10, scope: !3783)
!3798 = !DILocation(line: 2059, column: 24, scope: !3793, inlinedAt: !3797)
!3799 = !DILocation(line: 2059, column: 10, scope: !3793, inlinedAt: !3797)
!3800 = !DILocation(line: 37, column: 3, scope: !3783)
!3801 = !DILocation(line: 32, column: 7, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3791, file: !444, line: 31, column: 5)
!3803 = !DILocation(line: 32, column: 13, scope: !3802)
!3804 = !DILocation(line: 33, column: 7, scope: !3802)
!3805 = !DILocation(line: 38, column: 1, scope: !3783)
!3806 = distinct !DISubprogram(name: "hard_locale", scope: !447, file: !447, line: 28, type: !3807, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3809)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!72, !58}
!3809 = !{!3810, !3811}
!3810 = !DILocalVariable(name: "category", arg: 1, scope: !3806, file: !447, line: 28, type: !58)
!3811 = !DILocalVariable(name: "locale", scope: !3806, file: !447, line: 30, type: !3812)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2056, elements: !3813)
!3813 = !{!3814}
!3814 = !DISubrange(count: 257)
!3815 = !DILocation(line: 0, scope: !3806)
!3816 = !DILocation(line: 30, column: 3, scope: !3806)
!3817 = !DILocation(line: 30, column: 8, scope: !3806)
!3818 = !DILocation(line: 32, column: 7, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3806, file: !447, line: 32, column: 7)
!3820 = !DILocation(line: 32, column: 7, scope: !3806)
!3821 = !DILocalVariable(name: "__s1", arg: 1, scope: !3822, file: !517, line: 1359, type: !6)
!3822 = distinct !DISubprogram(name: "streq", scope: !517, file: !517, line: 1359, type: !518, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !446, retainedNodes: !3823)
!3823 = !{!3821, !3824}
!3824 = !DILocalVariable(name: "__s2", arg: 2, scope: !3822, file: !517, line: 1359, type: !6)
!3825 = !DILocation(line: 0, scope: !3822, inlinedAt: !3826)
!3826 = distinct !DILocation(line: 35, column: 9, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3806, file: !447, line: 35, column: 7)
!3828 = !DILocation(line: 1361, column: 11, scope: !3822, inlinedAt: !3826)
!3829 = !DILocation(line: 1361, column: 10, scope: !3822, inlinedAt: !3826)
!3830 = !DILocation(line: 35, column: 29, scope: !3827)
!3831 = !DILocation(line: 0, scope: !3822, inlinedAt: !3832)
!3832 = distinct !DILocation(line: 35, column: 32, scope: !3827)
!3833 = !DILocation(line: 1361, column: 11, scope: !3822, inlinedAt: !3832)
!3834 = !DILocation(line: 1361, column: 10, scope: !3822, inlinedAt: !3832)
!3835 = !DILocation(line: 35, column: 7, scope: !3806)
!3836 = !DILocation(line: 46, column: 3, scope: !3806)
!3837 = !DILocation(line: 47, column: 1, scope: !3806)
!3838 = distinct !DISubprogram(name: "setlocale_null_r", scope: !449, file: !449, line: 154, type: !3839, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3841)
!3839 = !DISubroutineType(types: !3840)
!3840 = !{!58, !58, !93, !60}
!3841 = !{!3842, !3843, !3844}
!3842 = !DILocalVariable(name: "category", arg: 1, scope: !3838, file: !449, line: 154, type: !58)
!3843 = !DILocalVariable(name: "buf", arg: 2, scope: !3838, file: !449, line: 154, type: !93)
!3844 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3838, file: !449, line: 154, type: !60)
!3845 = !DILocation(line: 0, scope: !3838)
!3846 = !DILocation(line: 159, column: 10, scope: !3838)
!3847 = !DILocation(line: 159, column: 3, scope: !3838)
!3848 = distinct !DISubprogram(name: "setlocale_null", scope: !449, file: !449, line: 186, type: !3849, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3851)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!6, !58}
!3851 = !{!3852}
!3852 = !DILocalVariable(name: "category", arg: 1, scope: !3848, file: !449, line: 186, type: !58)
!3853 = !DILocation(line: 0, scope: !3848)
!3854 = !DILocation(line: 189, column: 10, scope: !3848)
!3855 = !DILocation(line: 189, column: 3, scope: !3848)
!3856 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !451, file: !451, line: 35, type: !3849, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !3857)
!3857 = !{!3858, !3859}
!3858 = !DILocalVariable(name: "category", arg: 1, scope: !3856, file: !451, line: 35, type: !58)
!3859 = !DILocalVariable(name: "result", scope: !3856, file: !451, line: 37, type: !6)
!3860 = !DILocation(line: 0, scope: !3856)
!3861 = !DILocation(line: 37, column: 24, scope: !3856)
!3862 = !DILocation(line: 62, column: 3, scope: !3856)
!3863 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !451, file: !451, line: 66, type: !3839, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869}
!3865 = !DILocalVariable(name: "category", arg: 1, scope: !3863, file: !451, line: 66, type: !58)
!3866 = !DILocalVariable(name: "buf", arg: 2, scope: !3863, file: !451, line: 66, type: !93)
!3867 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3863, file: !451, line: 66, type: !60)
!3868 = !DILocalVariable(name: "result", scope: !3863, file: !451, line: 111, type: !6)
!3869 = !DILocalVariable(name: "length", scope: !3870, file: !451, line: 125, type: !60)
!3870 = distinct !DILexicalBlock(scope: !3871, file: !451, line: 124, column: 5)
!3871 = distinct !DILexicalBlock(scope: !3863, file: !451, line: 113, column: 7)
!3872 = !DILocation(line: 0, scope: !3863)
!3873 = !DILocation(line: 0, scope: !3856, inlinedAt: !3874)
!3874 = distinct !DILocation(line: 111, column: 24, scope: !3863)
!3875 = !DILocation(line: 37, column: 24, scope: !3856, inlinedAt: !3874)
!3876 = !DILocation(line: 113, column: 14, scope: !3871)
!3877 = !DILocation(line: 113, column: 7, scope: !3863)
!3878 = !DILocation(line: 116, column: 19, scope: !3879)
!3879 = distinct !DILexicalBlock(scope: !3880, file: !451, line: 116, column: 11)
!3880 = distinct !DILexicalBlock(scope: !3871, file: !451, line: 114, column: 5)
!3881 = !DILocation(line: 116, column: 11, scope: !3880)
!3882 = !DILocation(line: 120, column: 16, scope: !3879)
!3883 = !DILocation(line: 120, column: 9, scope: !3879)
!3884 = !DILocation(line: 125, column: 23, scope: !3870)
!3885 = !DILocation(line: 0, scope: !3870)
!3886 = !DILocation(line: 126, column: 18, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3870, file: !451, line: 126, column: 11)
!3888 = !DILocation(line: 126, column: 11, scope: !3870)
!3889 = !DILocation(line: 128, column: 39, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3887, file: !451, line: 127, column: 9)
!3891 = !DILocalVariable(name: "__dest", arg: 1, scope: !3892, file: !1315, line: 26, type: !1318)
!3892 = distinct !DISubprogram(name: "memcpy", scope: !1315, file: !1315, line: 26, type: !1316, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !3893)
!3893 = !{!3891, !3894, !3895}
!3894 = !DILocalVariable(name: "__src", arg: 2, scope: !3892, file: !1315, line: 26, type: !684)
!3895 = !DILocalVariable(name: "__len", arg: 3, scope: !3892, file: !1315, line: 26, type: !60)
!3896 = !DILocation(line: 0, scope: !3892, inlinedAt: !3897)
!3897 = distinct !DILocation(line: 128, column: 11, scope: !3890)
!3898 = !DILocation(line: 29, column: 10, scope: !3892, inlinedAt: !3897)
!3899 = !DILocation(line: 129, column: 11, scope: !3890)
!3900 = !DILocation(line: 133, column: 23, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !451, line: 133, column: 15)
!3902 = distinct !DILexicalBlock(scope: !3887, file: !451, line: 132, column: 9)
!3903 = !DILocation(line: 133, column: 15, scope: !3902)
!3904 = !DILocation(line: 138, column: 44, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3901, file: !451, line: 134, column: 13)
!3906 = !DILocation(line: 0, scope: !3892, inlinedAt: !3907)
!3907 = distinct !DILocation(line: 138, column: 15, scope: !3905)
!3908 = !DILocation(line: 29, column: 10, scope: !3892, inlinedAt: !3907)
!3909 = !DILocation(line: 139, column: 15, scope: !3905)
!3910 = !DILocation(line: 139, column: 32, scope: !3905)
!3911 = !DILocation(line: 140, column: 13, scope: !3905)
!3912 = !DILocation(line: 0, scope: !3871)
!3913 = !DILocation(line: 145, column: 1, scope: !3863)
