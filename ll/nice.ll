; ModuleID = 'src/nice.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"  -n, --adjustment=N\0A         add integer N to the niceness (default 10)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !91
@.str.21 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.48 = private unnamed_addr constant [180 x i8] c"\0AExit status:\0A  125  if the %s command itself fails\0A  126  if COMMAND is found but cannot be invoked\0A  127  if COMMAND cannot be found\0A  -    the exit status of COMMAND otherwise\0A\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.52 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.53 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.55 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), align 8, !dbg !187
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !192
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !197
@.str.29 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !199
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !235
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !205
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !231
@.str.1.39 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.41 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.40 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !233
@.str.4.34 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.35 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.36 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !240
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !246
@.str.64 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.65 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.66 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.67 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.68 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.69 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.70 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.71 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.72 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.73 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 8, !dbg !280
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !306
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !324
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !354
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !361
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !326
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !363
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !312
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !331
@.str.82 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.83 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.85 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.86 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.87 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.88 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.89 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.90 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.91 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.92 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.93 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.94 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.95 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.96 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.97 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.98 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.103 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.104 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.105 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.106 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.107 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.108 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.109 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !369
@exit_failure = dso_local global i32 1, align 4, !dbg !377
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.120 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.135 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !383
@.str.140 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.141 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !477 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !481, metadata !DIExpression()), !dbg !482
  %3 = icmp eq i32 %0, 0, !dbg !483
  br i1 %3, label %9, label %4, !dbg !485

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !486, !tbaa !488
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #34, !dbg !486
  %7 = load i8*, i8** @program_name, align 8, !dbg !486, !tbaa !488
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #34, !dbg !486
  br label %59, !dbg !486

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #34, !dbg !492
  %11 = load i8*, i8** @program_name, align 8, !dbg !492, !tbaa !488
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #34, !dbg !492
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #34, !dbg !494
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %13, i32 noundef -20, i32 noundef 19) #34, !dbg !494
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #34, !dbg !495
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !495, !tbaa !488
  %17 = tail call i32 @fputs_unlocked(i8* noundef %15, %struct._IO_FILE* noundef %16) #34, !dbg !495
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #34, !dbg !499
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !499
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #34, !dbg !500
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !500
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #34, !dbg !501
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !501
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #34, !dbg !502
  %22 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %21, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !502
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !503, metadata !DIExpression()) #34, !dbg !508
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([180 x i8], [180 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #34, !dbg !510
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %23, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !510
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !511, metadata !DIExpression()) #34, !dbg !528
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !530
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #34, !dbg !530
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !514, metadata !DIExpression()) #34, !dbg !531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #34, !dbg !531
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !523, metadata !DIExpression()) #34, !dbg !528
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !524, metadata !DIExpression()) #34, !dbg !528
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !532
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !524, metadata !DIExpression()) #34, !dbg !528
  br label %27, !dbg !533

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !524, metadata !DIExpression()) #34, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !541
  call void @llvm.dbg.value(metadata i8* %28, metadata !540, metadata !DIExpression()) #34, !dbg !541
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #35, !dbg !543
  %31 = icmp eq i32 %30, 0, !dbg !544
  br i1 %31, label %37, label %32, !dbg !533

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !545
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !524, metadata !DIExpression()) #34, !dbg !528
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !546
  %35 = load i8*, i8** %34, align 8, !dbg !546, !tbaa !547
  %36 = icmp eq i8* %35, null, !dbg !549
  br i1 %36, label %37, label %27, !dbg !550, !llvm.loop !551

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !553
  %40 = load i8*, i8** %39, align 8, !dbg !553, !tbaa !555
  %41 = icmp eq i8* %40, null, !dbg !556
  %42 = select i1 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !557
  call void @llvm.dbg.value(metadata i8* %42, metadata !523, metadata !DIExpression()) #34, !dbg !528
  tail call void @emit_bug_reporting_address() #34, !dbg !558
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #34, !dbg !559
  call void @llvm.dbg.value(metadata i8* %43, metadata !526, metadata !DIExpression()) #34, !dbg !528
  %44 = icmp eq i8* %43, null, !dbg !560
  br i1 %44, label %52, label %45, !dbg !562

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i64 0, i64 0), i64 noundef 3) #35, !dbg !563
  %47 = icmp eq i32 %46, 0, !dbg !563
  br i1 %47, label %52, label %48, !dbg !564

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.53, i64 0, i64 0), i32 noundef 5) #34, !dbg !565
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !565, !tbaa !488
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #34, !dbg !565
  br label %52, !dbg !567

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), metadata !540, metadata !DIExpression()) #34, !dbg !568
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !527, metadata !DIExpression()) #34, !dbg !528
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #34, !dbg !570
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #34, !dbg !570
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #34, !dbg !571
  %56 = icmp eq i8* %42, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !571
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !571
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #34, !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #34, !dbg !572
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #36, !dbg !573
  unreachable, !dbg !573
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !574 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !578 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !93 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !97, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* %0, metadata !98, metadata !DIExpression()), !dbg !583
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !584, !tbaa !585
  %3 = icmp eq i32 %2, -1, !dbg !587
  br i1 %3, label %4, label %16, !dbg !588

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !589
  call void @llvm.dbg.value(metadata i8* %5, metadata !99, metadata !DIExpression()), !dbg !590
  %6 = icmp eq i8* %5, null, !dbg !591
  br i1 %6, label %14, label %7, !dbg !592

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !593, !tbaa !594
  %9 = icmp eq i8 %8, 0, !dbg !593
  br i1 %9, label %14, label %10, !dbg !595

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !534, metadata !DIExpression()) #34, !dbg !596
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0), metadata !540, metadata !DIExpression()) #34, !dbg !596
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #35, !dbg !598
  %12 = icmp eq i32 %11, 0, !dbg !599
  %13 = zext i1 %12 to i32, !dbg !595
  br label %14, !dbg !595

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !600, !tbaa !585
  br label %16, !dbg !601

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !602
  %18 = icmp eq i32 %17, 0, !dbg !602
  br i1 %18, label %22, label %19, !dbg !604

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !605, !tbaa !488
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !605
  br label %121, !dbg !607

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !102, metadata !DIExpression()), !dbg !583
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0)) #35, !dbg !608
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !609
  call void @llvm.dbg.value(metadata i8* %24, metadata !103, metadata !DIExpression()), !dbg !583
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #35, !dbg !610
  call void @llvm.dbg.value(metadata i8* %25, metadata !104, metadata !DIExpression()), !dbg !583
  %26 = icmp eq i8* %25, null, !dbg !611
  br i1 %26, label %53, label %27, !dbg !612

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !613
  br i1 %28, label %53, label %29, !dbg !614

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !105, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 0, metadata !109, metadata !DIExpression()), !dbg !615
  %30 = icmp ult i8* %24, %25, !dbg !616
  br i1 %30, label %31, label %53, !dbg !617

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #37, !dbg !583
  %33 = load i16*, i16** %32, align 8, !tbaa !488
  br label %34, !dbg !617

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !105, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata i64 %36, metadata !109, metadata !DIExpression()), !dbg !615
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !618
  call void @llvm.dbg.value(metadata i8* %37, metadata !105, metadata !DIExpression()), !dbg !615
  %38 = load i8, i8* %35, align 1, !dbg !618, !tbaa !594
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !618
  %41 = load i16, i16* %40, align 2, !dbg !618, !tbaa !619
  %42 = lshr i16 %41, 13, !dbg !621
  %43 = and i16 %42, 1, !dbg !621
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !622
  call void @llvm.dbg.value(metadata i64 %45, metadata !109, metadata !DIExpression()), !dbg !615
  %46 = icmp ult i8* %37, %25, !dbg !616
  %47 = icmp ult i64 %45, 2, !dbg !623
  %48 = select i1 %46, i1 %47, i1 false, !dbg !623
  br i1 %48, label %34, label %49, !dbg !617, !llvm.loop !624

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !625
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !627
  %52 = xor i1 %50, true, !dbg !627
  br label %53, !dbg !627

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !583
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !102, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* %54, metadata !104, metadata !DIExpression()), !dbg !583
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #35, !dbg !628
  call void @llvm.dbg.value(metadata i64 %56, metadata !110, metadata !DIExpression()), !dbg !583
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !629
  call void @llvm.dbg.value(metadata i8* %57, metadata !111, metadata !DIExpression()), !dbg !583
  br label %58, !dbg !630

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !583
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !102, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.value(metadata i8* %59, metadata !111, metadata !DIExpression()), !dbg !583
  %61 = load i8, i8* %59, align 1, !dbg !631, !tbaa !594
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !632

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !633
  %64 = load i8, i8* %63, align 1, !dbg !636, !tbaa !594
  %65 = icmp ne i8 %64, 45, !dbg !637
  %66 = select i1 %65, i1 %60, i1 false, !dbg !638
  br label %67, !dbg !638

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !102, metadata !DIExpression()), !dbg !583
  %69 = tail call i16** @__ctype_b_loc() #37, !dbg !639
  %70 = load i16*, i16** %69, align 8, !dbg !639, !tbaa !488
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !639
  %73 = load i16, i16* %72, align 2, !dbg !639, !tbaa !619
  %74 = and i16 %73, 8192, !dbg !639
  %75 = icmp eq i16 %74, 0, !dbg !639
  br i1 %75, label %89, label %76, !dbg !641

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !642
  br i1 %77, label %91, label %78, !dbg !645

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !646
  %80 = load i8, i8* %79, align 1, !dbg !646, !tbaa !594
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !646
  %83 = load i16, i16* %82, align 2, !dbg !646, !tbaa !619
  %84 = and i16 %83, 8192, !dbg !646
  %85 = icmp eq i16 %84, 0, !dbg !646
  br i1 %85, label %86, label %91, !dbg !647

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !648
  br i1 %88, label %89, label %91, !dbg !648

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !650
  call void @llvm.dbg.value(metadata i8* %90, metadata !111, metadata !DIExpression()), !dbg !583
  br label %58, !dbg !630, !llvm.loop !651

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !653
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !653, !tbaa !488
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), metadata !540, metadata !DIExpression()) #34, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !670
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !534, metadata !DIExpression()) #34, !dbg !672
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !170, metadata !DIExpression()), !dbg !583
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i64 0, i64 0), i64 noundef 6) #35, !dbg !674
  %96 = icmp eq i32 %95, 0, !dbg !674
  br i1 %96, label %100, label %97, !dbg !676

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i64 0, i64 0), i64 noundef 9) #35, !dbg !677
  %99 = icmp eq i32 %98, 0, !dbg !677
  br i1 %99, label %100, label %103, !dbg !678

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !679
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #34, !dbg !679
  br label %106, !dbg !681

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !682
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #34, !dbg !682
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !488
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !684
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !488
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !685
  %111 = ptrtoint i8* %59 to i64, !dbg !686
  %112 = sub i64 %111, %92, !dbg !686
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !488
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !686
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !687, !tbaa !488
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !687
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !488
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !688
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !689, !tbaa !488
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !689
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !690
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
declare !dbg !691 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !695 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !699 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !22 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !30, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8** %1, metadata !31, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !705
  %4 = load i8*, i8** %1, align 8, !dbg !706, !tbaa !488
  tail call void @set_program_name(i8* noundef %4) #34, !dbg !707
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !708
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #34, !dbg !709
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #34, !dbg !710
  call void @llvm.dbg.value(metadata i32 125, metadata !711, metadata !DIExpression()), !dbg !714
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !716, !tbaa !585
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #34, !dbg !718
  call void @llvm.dbg.value(metadata i32 1, metadata !39, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !705
  %9 = icmp sgt i32 %0, 1, !dbg !719
  br i1 %9, label %10, label %64, !dbg !720

10:                                               ; preds = %2, %49
  %11 = phi i8* [ %51, %49 ], [ null, %2 ]
  %12 = phi i32 [ %50, %49 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i8* %11, metadata !34, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %12, metadata !39, metadata !DIExpression()), !dbg !705
  %13 = sext i32 %12 to i64, !dbg !721
  %14 = getelementptr inbounds i8*, i8** %1, i64 %13, !dbg !721
  %15 = load i8*, i8** %14, align 8, !dbg !721, !tbaa !488
  call void @llvm.dbg.value(metadata i8* %15, metadata !40, metadata !DIExpression()), !dbg !722
  %16 = load i8, i8* %15, align 1, !dbg !723, !tbaa !594
  %17 = icmp eq i8 %16, 45, !dbg !724
  br i1 %17, label %18, label %32, !dbg !725

18:                                               ; preds = %10
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !726
  %20 = load i8, i8* %19, align 1, !dbg !726, !tbaa !594
  %21 = icmp eq i8 %20, 45, !dbg !727
  %22 = icmp eq i8 %20, 43
  %23 = or i1 %21, %22, !dbg !728
  %24 = select i1 %23, i64 2, i64 1, !dbg !729
  %25 = getelementptr inbounds i8, i8* %15, i64 %24, !dbg !730
  %26 = load i8, i8* %25, align 1, !dbg !730, !tbaa !594
  %27 = zext i8 %26 to i32, !dbg !730
  call void @llvm.dbg.value(metadata i32 %27, metadata !731, metadata !DIExpression()), !dbg !737
  %28 = add nsw i32 %27, -48, !dbg !739
  %29 = icmp ult i32 %28, 10, !dbg !739
  br i1 %29, label %30, label %32, !dbg !740

30:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i8* %19, metadata !34, metadata !DIExpression()), !dbg !705
  %31 = add nsw i32 %12, 1, !dbg !741
  call void @llvm.dbg.value(metadata i32 %31, metadata !39, metadata !DIExpression()), !dbg !705
  br label %49, !dbg !743

32:                                               ; preds = %18, %10
  %33 = add i32 %12, -1, !dbg !744
  %34 = sub nsw i32 %0, %33, !dbg !745
  call void @llvm.dbg.value(metadata i32 %34, metadata !47, metadata !DIExpression()), !dbg !746
  %35 = sext i32 %33 to i64, !dbg !747
  %36 = getelementptr inbounds i8*, i8** %1, i64 %35, !dbg !747
  call void @llvm.dbg.value(metadata i8** %36, metadata !48, metadata !DIExpression()), !dbg !746
  %37 = load i8*, i8** %1, align 8, !dbg !748, !tbaa !488
  store i8* %37, i8** %36, align 8, !dbg !749, !tbaa !488
  store i32 0, i32* @optind, align 4, !dbg !750, !tbaa !585
  %38 = tail call i32 @getopt_long(i32 noundef %34, i8** noundef nonnull %36, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #34, !dbg !751
  call void @llvm.dbg.value(metadata i32 %38, metadata !44, metadata !DIExpression()), !dbg !746
  %39 = load i32, i32* @optind, align 4, !dbg !752, !tbaa !585
  %40 = add i32 %33, %39, !dbg !753
  call void @llvm.dbg.value(metadata i32 %40, metadata !39, metadata !DIExpression()), !dbg !705
  switch i32 %38, label %46 [
    i32 110, label %47
    i32 -1, label %53
    i32 -2, label %41
    i32 -3, label %42
  ], !dbg !754

41:                                               ; preds = %32
  tail call void @usage(i32 noundef 0) #38, !dbg !755
  unreachable, !dbg !755

42:                                               ; preds = %32
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !757, !tbaa !488
  %44 = load i8*, i8** @Version, align 8, !dbg !757, !tbaa !488
  %45 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #34, !dbg !757
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %43, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %44, i8* noundef %45, i8* noundef null) #34, !dbg !757
  tail call void @exit(i32 noundef 0) #36, !dbg !757
  unreachable, !dbg !757

46:                                               ; preds = %32
  tail call void @usage(i32 noundef 125) #38, !dbg !758
  unreachable, !dbg !758

47:                                               ; preds = %32
  %48 = load i8*, i8** @optarg, align 8, !dbg !759, !tbaa !488
  call void @llvm.dbg.value(metadata i8* %48, metadata !34, metadata !DIExpression()), !dbg !705
  br label %49

49:                                               ; preds = %30, %47
  %50 = phi i32 [ %31, %30 ], [ %40, %47 ], !dbg !760
  %51 = phi i8* [ %19, %30 ], [ %48, %47 ], !dbg !705
  call void @llvm.dbg.value(metadata i8* %51, metadata !34, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %50, metadata !39, metadata !DIExpression()), !dbg !705
  %52 = icmp slt i32 %50, %0, !dbg !719
  br i1 %52, label %10, label %53, !dbg !720

53:                                               ; preds = %49, %32
  %54 = phi i8* [ %51, %49 ], [ %11, %32 ], !dbg !705
  %55 = phi i32 [ %50, %49 ], [ %40, %32 ], !dbg !761
  call void @llvm.dbg.value(metadata i8* %54, metadata !34, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.value(metadata i32 %55, metadata !39, metadata !DIExpression()), !dbg !705
  %56 = icmp eq i8* %54, null, !dbg !762
  br i1 %56, label %64, label %57, !dbg !763

57:                                               ; preds = %53
  %58 = bitcast i64* %3 to i8*, !dbg !764
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #34, !dbg !764
  call void @llvm.dbg.value(metadata i64* %3, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !765
  %59 = call i32 @xstrtol(i8* noundef nonnull %54, i8** noundef null, i32 noundef 10, i64* noundef nonnull %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #34, !dbg !766
  %60 = icmp ugt i32 %59, 1, !dbg !768
  br i1 %60, label %61, label %67, !dbg !769

61:                                               ; preds = %57
  %62 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 noundef 5) #34, !dbg !770
  %63 = call i8* @quote(i8* noundef nonnull %54) #34, !dbg !770
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef 0, i8* noundef %62, i8* noundef %63) #34, !dbg !770
  unreachable, !dbg !770

64:                                               ; preds = %2, %53
  %65 = phi i32 [ %55, %53 ], [ 1, %2 ]
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !705
  %66 = icmp eq i32 %65, %0, !dbg !771
  br i1 %66, label %77, label %88, !dbg !773

67:                                               ; preds = %57
  %68 = load i64, i64* %3, align 8, !dbg !774, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %68, metadata !49, metadata !DIExpression()), !dbg !765
  %69 = icmp slt i64 %68, 39, !dbg !774
  %70 = select i1 %69, i64 %68, i64 39, !dbg !774
  %71 = icmp sgt i64 %70, -39, !dbg !774
  %72 = select i1 %71, i64 %70, i64 -39, !dbg !774
  %73 = trunc i64 %72 to i32, !dbg !774
  call void @llvm.dbg.value(metadata i32 %73, metadata !33, metadata !DIExpression()), !dbg !705
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #34, !dbg !777
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !705
  %74 = icmp eq i32 %55, %0, !dbg !771
  br i1 %74, label %75, label %88, !dbg !773

75:                                               ; preds = %67
  %76 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #34, !dbg !778
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %76) #34, !dbg !778
  call void @usage(i32 noundef 125) #38, !dbg !782
  unreachable, !dbg !782

77:                                               ; preds = %64
  %78 = tail call i32* @__errno_location() #37, !dbg !783
  store i32 0, i32* %78, align 4, !dbg !784, !tbaa !585
  %79 = tail call i32 @getpriority(i32 noundef 0, i32 noundef 0) #34, !dbg !785
  call void @llvm.dbg.value(metadata i32 %79, metadata !32, metadata !DIExpression()), !dbg !705
  %80 = icmp eq i32 %79, -1, !dbg !786
  br i1 %80, label %81, label %86, !dbg !788

81:                                               ; preds = %77
  %82 = load i32, i32* %78, align 4, !dbg !789, !tbaa !585
  %83 = icmp eq i32 %82, 0, !dbg !790
  br i1 %83, label %86, label %84, !dbg !791

84:                                               ; preds = %81
  %85 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #34, !dbg !792
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %82, i8* noundef %85) #34, !dbg !792
  unreachable, !dbg !792

86:                                               ; preds = %81, %77
  %87 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 noundef %79) #34, !dbg !793
  br label %125, !dbg !794

88:                                               ; preds = %67, %64
  %89 = phi i32 [ %55, %67 ], [ %65, %64 ]
  %90 = phi i32 [ %73, %67 ], [ 10, %64 ]
  %91 = tail call i32* @__errno_location() #37, !dbg !795
  store i32 0, i32* %91, align 4, !dbg !796, !tbaa !585
  %92 = call i32 @getpriority(i32 noundef 0, i32 noundef 0) #34, !dbg !797
  call void @llvm.dbg.value(metadata i32 %92, metadata !32, metadata !DIExpression()), !dbg !705
  %93 = icmp eq i32 %92, -1, !dbg !798
  br i1 %93, label %94, label %99, !dbg !800

94:                                               ; preds = %88
  %95 = load i32, i32* %91, align 4, !dbg !801, !tbaa !585
  %96 = icmp eq i32 %95, 0, !dbg !802
  br i1 %96, label %99, label %97, !dbg !803

97:                                               ; preds = %94
  %98 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #34, !dbg !804
  call void (i32, i32, i8*, ...) @error(i32 noundef 125, i32 noundef %95, i8* noundef %98) #34, !dbg !804
  unreachable, !dbg !804

99:                                               ; preds = %94, %88
  %100 = add nsw i32 %92, %90, !dbg !805
  %101 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %100) #34, !dbg !806
  %102 = icmp eq i32 %101, 0, !dbg !807
  call void @llvm.dbg.value(metadata i1 %102, metadata !37, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !705
  br i1 %102, label %115, label %103, !dbg !808

103:                                              ; preds = %99
  %104 = load i32, i32* %91, align 4, !dbg !809, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %104, metadata !810, metadata !DIExpression()), !dbg !813
  %105 = icmp eq i32 %104, 13, !dbg !815
  %106 = icmp eq i32 %104, 1, !dbg !816
  %107 = or i1 %105, %106, !dbg !816
  %108 = select i1 %107, i32 0, i32 125, !dbg !809
  call void @llvm.dbg.value(metadata i32 %108, metadata !53, metadata !DIExpression()), !dbg !817
  %109 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #34, !dbg !809
  call void (i32, i32, i8*, ...) @error(i32 noundef %108, i32 noundef %104, i8* noundef %109) #34, !dbg !809
  call void @llvm.assume(i1 %107), !dbg !809
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !818, !tbaa !488
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %110, metadata !820, metadata !DIExpression()), !dbg !826
  %111 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %110, i64 0, i32 0, !dbg !828
  %112 = load i32, i32* %111, align 8, !dbg !828, !tbaa !829
  %113 = and i32 %112, 32, !dbg !818
  %114 = icmp eq i32 %113, 0, !dbg !818
  br i1 %114, label %115, label %125, !dbg !831

115:                                              ; preds = %103, %99
  %116 = sext i32 %89 to i64, !dbg !832
  %117 = getelementptr inbounds i8*, i8** %1, i64 %116, !dbg !832
  %118 = load i8*, i8** %117, align 8, !dbg !832, !tbaa !488
  %119 = call i32 @execvp(i8* noundef %118, i8** noundef nonnull %117) #34, !dbg !833
  %120 = load i32, i32* %91, align 4, !dbg !834, !tbaa !585
  %121 = icmp eq i32 %120, 2, !dbg !835
  %122 = select i1 %121, i32 127, i32 126, !dbg !834
  call void @llvm.dbg.value(metadata i32 %122, metadata !58, metadata !DIExpression()), !dbg !705
  %123 = load i8*, i8** %117, align 8, !dbg !836, !tbaa !488
  %124 = call i8* @quote(i8* noundef %123) #34, !dbg !836
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %120, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* noundef %124) #34, !dbg !836
  br label %125

125:                                              ; preds = %103, %115, %86
  %126 = phi i32 [ 0, %86 ], [ %122, %115 ], [ 125, %103 ], !dbg !705
  ret i32 %126, !dbg !837
}

; Function Attrs: nounwind
declare !dbg !838 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !841 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !842 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !845 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !851 i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !859 i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nofree nounwind
declare !dbg !862 i32 @execvp(i8* noundef, i8** noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !868, metadata !DIExpression()), !dbg !869
  store i8* %0, i8** @file_name, align 8, !dbg !870, !tbaa !488
  ret void, !dbg !871
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !872 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !876, metadata !DIExpression()), !dbg !877
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !878, !tbaa !879
  ret void, !dbg !881
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !882 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !887, !tbaa !488
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #34, !dbg !888
  %3 = icmp eq i32 %2, 0, !dbg !889
  br i1 %3, label %22, label %4, !dbg !890

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !891, !tbaa !879, !range !892
  %6 = icmp eq i8 %5, 0, !dbg !891
  br i1 %6, label %11, label %7, !dbg !893

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #37, !dbg !894
  %9 = load i32, i32* %8, align 4, !dbg !894, !tbaa !585
  %10 = icmp eq i32 %9, 32, !dbg !895
  br i1 %10, label %22, label %11, !dbg !896

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.30, i64 0, i64 0), i32 noundef 5) #34, !dbg !897
  call void @llvm.dbg.value(metadata i8* %12, metadata !884, metadata !DIExpression()), !dbg !898
  %13 = load i8*, i8** @file_name, align 8, !dbg !899, !tbaa !488
  %14 = icmp eq i8* %13, null, !dbg !899
  %15 = tail call i32* @__errno_location() #37, !dbg !901
  %16 = load i32, i32* %15, align 4, !dbg !901, !tbaa !585
  br i1 %14, label %19, label %17, !dbg !902

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #34, !dbg !903
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.31, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #34, !dbg !903
  br label %20, !dbg !903

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.32, i64 0, i64 0), i8* noundef %12) #34, !dbg !904
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !905, !tbaa !585
  tail call void @_exit(i32 noundef %21) #36, !dbg !906
  unreachable, !dbg !906

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !907, !tbaa !488
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #34, !dbg !909
  %25 = icmp eq i32 %24, 0, !dbg !910
  br i1 %25, label %28, label %26, !dbg !911

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !912, !tbaa !585
  tail call void @_exit(i32 noundef %27) #36, !dbg !913
  unreachable, !dbg !913

28:                                               ; preds = %22
  ret void, !dbg !914
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !915 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !919, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i32 %1, metadata !920, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.value(metadata i8* %2, metadata !921, metadata !DIExpression()), !dbg !923
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !922, metadata !DIExpression()), !dbg !924
  tail call fastcc void @flush_stdout(), !dbg !925
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !926, !tbaa !488
  %7 = icmp eq void ()* %6, null, !dbg !926
  br i1 %7, label %9, label %8, !dbg !928

8:                                                ; preds = %4
  tail call void %6() #34, !dbg !929
  br label %13, !dbg !929

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !930, !tbaa !488
  %11 = tail call i8* @getprogname() #35, !dbg !930
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8* noundef %11) #34, !dbg !930
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !932
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #34, !dbg !932
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !932
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !932, !tbaa.struct !933
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !932
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #34, !dbg !932
  ret void, !dbg !934
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !935 {
  call void @llvm.dbg.value(metadata i32 1, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 1, metadata !939, metadata !DIExpression()) #34, !dbg !944
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #34, !dbg !947
  %2 = icmp slt i32 %1, 0, !dbg !948
  br i1 %2, label %6, label %3, !dbg !949

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !950, !tbaa !488
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #34, !dbg !950
  br label %6, !dbg !950

6:                                                ; preds = %3, %0
  ret void, !dbg !951
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !952 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !954, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i32 %1, metadata !955, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.value(metadata i8* %2, metadata !956, metadata !DIExpression()), !dbg !958
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !957, metadata !DIExpression()), !dbg !959
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !960, !tbaa !488
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !961
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !962, metadata !DIExpression()) #34, !dbg !1005
  call void @llvm.dbg.value(metadata i8* %2, metadata !1003, metadata !DIExpression()) #34, !dbg !1005
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1007
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1007, !noalias !1008
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1007
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #34, !dbg !1007
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1007, !noalias !1008
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1012, !tbaa !585
  %12 = add i32 %11, 1, !dbg !1012
  store i32 %12, i32* @error_message_count, align 4, !dbg !1012, !tbaa !585
  %13 = icmp eq i32 %1, 0, !dbg !1013
  br i1 %13, label %24, label %14, !dbg !1015

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1016, metadata !DIExpression()) #34, !dbg !1024
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1026
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1020, metadata !DIExpression()) #34, !dbg !1027
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #34, !dbg !1028
  call void @llvm.dbg.value(metadata i8* %16, metadata !1019, metadata !DIExpression()) #34, !dbg !1024
  %17 = icmp eq i8* %16, null, !dbg !1029
  br i1 %17, label %18, label %20, !dbg !1031

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.34, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.35, i64 0, i64 0), i32 noundef 5) #34, !dbg !1032
  call void @llvm.dbg.value(metadata i8* %19, metadata !1019, metadata !DIExpression()) #34, !dbg !1024
  br label %20, !dbg !1033

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1024
  call void @llvm.dbg.value(metadata i8* %21, metadata !1019, metadata !DIExpression()) #34, !dbg !1024
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1034, !tbaa !488
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.36, i64 0, i64 0), i8* noundef %21) #34, !dbg !1034
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #34, !dbg !1035
  br label %24, !dbg !1036

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1037, !tbaa !488
  call void @llvm.dbg.value(metadata i32 10, metadata !1038, metadata !DIExpression()) #34, !dbg !1044
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1043, metadata !DIExpression()) #34, !dbg !1044
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1046
  %27 = load i8*, i8** %26, align 8, !dbg !1046, !tbaa !1047
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1046
  %29 = load i8*, i8** %28, align 8, !dbg !1046, !tbaa !1048
  %30 = icmp ult i8* %27, %29, !dbg !1046
  br i1 %30, label %33, label %31, !dbg !1046, !prof !1049

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #34, !dbg !1046
  br label %35, !dbg !1046

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1046
  store i8* %34, i8** %26, align 8, !dbg !1046, !tbaa !1047
  store i8 10, i8* %27, align 1, !dbg !1046, !tbaa !594
  br label %35, !dbg !1046

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1050, !tbaa !488
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

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1079, !tbaa.struct !933
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #39, !dbg !1079
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !1079
  call void @llvm.va_end(i8* nonnull %6), !dbg !1080
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #34, !dbg !1081
  ret void, !dbg !1081
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !207 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !225, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %1, metadata !226, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %2, metadata !227, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i32 %3, metadata !228, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i8* %4, metadata !229, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !230, metadata !DIExpression()), !dbg !1083
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1084, !tbaa !585
  %9 = icmp eq i32 %8, 0, !dbg !1084
  br i1 %9, label %24, label %10, !dbg !1086

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1087, !tbaa !585
  %12 = icmp eq i32 %11, %3, !dbg !1090
  br i1 %12, label %13, label %23, !dbg !1091

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1092, !tbaa !488
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
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1100, !tbaa !488
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1101, !tbaa !585
  br label %24, !dbg !1102

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1103
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1104, !tbaa !488
  %26 = icmp eq void ()* %25, null, !dbg !1104
  br i1 %26, label %28, label %27, !dbg !1106

27:                                               ; preds = %24
  tail call void %25() #34, !dbg !1107
  br label %32, !dbg !1107

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1108, !tbaa !488
  %30 = tail call i8* @getprogname() #35, !dbg !1108
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.39, i64 0, i64 0), i8* noundef %30) #34, !dbg !1108
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1110, !tbaa !488
  %34 = icmp eq i8* %2, null, !dbg !1110
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.40, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.41, i64 0, i64 0), !dbg !1110
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #34, !dbg !1110
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1111
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #34, !dbg !1111
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1111
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1111, !tbaa.struct !933
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1127, !tbaa.struct !933
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #39, !dbg !1127
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #34, !dbg !1127
  call void @llvm.va_end(i8* nonnull %8), !dbg !1128
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !1129
  ret void, !dbg !1129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1130 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1133, !tbaa !488
  ret i8* %1, !dbg !1134
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1135 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1137, metadata !DIExpression()), !dbg !1140
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #35, !dbg !1141
  call void @llvm.dbg.value(metadata i8* %2, metadata !1138, metadata !DIExpression()), !dbg !1140
  %3 = icmp eq i8* %2, null, !dbg !1142
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1142
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %5, metadata !1139, metadata !DIExpression()), !dbg !1140
  %6 = ptrtoint i8* %5 to i64, !dbg !1143
  %7 = ptrtoint i8* %0 to i64, !dbg !1143
  %8 = sub i64 %6, %7, !dbg !1143
  %9 = icmp sgt i64 %8, 6, !dbg !1145
  br i1 %9, label %10, label %19, !dbg !1146

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1147
  call void @llvm.dbg.value(metadata i8* %11, metadata !1148, metadata !DIExpression()) #34, !dbg !1155
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), metadata !1153, metadata !DIExpression()) #34, !dbg !1155
  call void @llvm.dbg.value(metadata i64 7, metadata !1154, metadata !DIExpression()) #34, !dbg !1155
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i64 7) #34, !dbg !1157
  %13 = icmp eq i32 %12, 0, !dbg !1158
  br i1 %13, label %14, label %19, !dbg !1159

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1137, metadata !DIExpression()), !dbg !1140
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i64 noundef 3) #35, !dbg !1160
  %16 = icmp eq i32 %15, 0, !dbg !1163
  %17 = select i1 %16, i64 3, i64 0, !dbg !1164
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1164
  br label %19, !dbg !1164

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1140
  call void @llvm.dbg.value(metadata i8* %21, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata i8* %20, metadata !1137, metadata !DIExpression()), !dbg !1140
  store i8* %20, i8** @program_name, align 8, !dbg !1165, !tbaa !488
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1166, !tbaa !488
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1167, !tbaa !488
  ret void, !dbg !1168
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !248 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !255, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.value(metadata i8* %1, metadata !256, metadata !DIExpression()), !dbg !1169
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #34, !dbg !1170
  call void @llvm.dbg.value(metadata i8* %5, metadata !257, metadata !DIExpression()), !dbg !1169
  %6 = icmp eq i8* %5, %0, !dbg !1171
  br i1 %6, label %7, label %17, !dbg !1173

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1174
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1174
  %10 = bitcast i64* %4 to i8*, !dbg !1175
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1175
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !263, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1177, metadata !DIExpression()) #34, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %10, metadata !1186, metadata !DIExpression()) #34, !dbg !1194
  call void @llvm.dbg.value(metadata i32 0, metadata !1192, metadata !DIExpression()) #34, !dbg !1194
  call void @llvm.dbg.value(metadata i64 8, metadata !1193, metadata !DIExpression()) #34, !dbg !1194
  store i64 0, i64* %4, align 8, !dbg !1196
  call void @llvm.dbg.value(metadata i32* %3, metadata !258, metadata !DIExpression(DW_OP_deref)), !dbg !1169
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #34, !dbg !1197
  %12 = icmp eq i64 %11, 2, !dbg !1199
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !258, metadata !DIExpression()), !dbg !1169
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1200
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1169
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #34, !dbg !1201
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #34, !dbg !1201
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1169
  ret i8* %18, !dbg !1201
}

; Function Attrs: nounwind
declare !dbg !1202 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1208 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1213, metadata !DIExpression()), !dbg !1216
  %2 = tail call i32* @__errno_location() #37, !dbg !1217
  %3 = load i32, i32* %2, align 4, !dbg !1217, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %3, metadata !1214, metadata !DIExpression()), !dbg !1216
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1218
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1218
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1218
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1219
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1215, metadata !DIExpression()), !dbg !1216
  store i32 %3, i32* %2, align 4, !dbg !1220, !tbaa !585
  ret %struct.quoting_options* %8, !dbg !1221
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1222 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1228, metadata !DIExpression()), !dbg !1229
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1230
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1230
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1231
  %5 = load i32, i32* %4, align 8, !dbg !1231, !tbaa !1232
  ret i32 %5, !dbg !1234
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1235 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1239, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 %1, metadata !1240, metadata !DIExpression()), !dbg !1241
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1242
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1242
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1243
  store i32 %1, i32* %5, align 8, !dbg !1244, !tbaa !1232
  ret void, !dbg !1245
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1246 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1250, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %1, metadata !1251, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i32 %2, metadata !1252, metadata !DIExpression()), !dbg !1258
  call void @llvm.dbg.value(metadata i8 %1, metadata !1253, metadata !DIExpression()), !dbg !1258
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1259
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1259
  %6 = lshr i8 %1, 5, !dbg !1260
  %7 = zext i8 %6 to i64, !dbg !1260
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1261
  call void @llvm.dbg.value(metadata i32* %8, metadata !1254, metadata !DIExpression()), !dbg !1258
  %9 = and i8 %1, 31, !dbg !1262
  %10 = zext i8 %9 to i32, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %10, metadata !1256, metadata !DIExpression()), !dbg !1258
  %11 = load i32, i32* %8, align 4, !dbg !1263, !tbaa !585
  %12 = lshr i32 %11, %10, !dbg !1264
  %13 = and i32 %12, 1, !dbg !1265
  call void @llvm.dbg.value(metadata i32 %13, metadata !1257, metadata !DIExpression()), !dbg !1258
  %14 = and i32 %2, 1, !dbg !1266
  %15 = xor i32 %13, %14, !dbg !1267
  %16 = shl i32 %15, %10, !dbg !1268
  %17 = xor i32 %16, %11, !dbg !1269
  store i32 %17, i32* %8, align 4, !dbg !1269, !tbaa !585
  ret i32 %13, !dbg !1270
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1271 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1275, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1276, metadata !DIExpression()), !dbg !1278
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1279
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1281
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1275, metadata !DIExpression()), !dbg !1278
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1282
  %6 = load i32, i32* %5, align 4, !dbg !1282, !tbaa !1283
  call void @llvm.dbg.value(metadata i32 %6, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %1, i32* %5, align 4, !dbg !1284, !tbaa !1283
  ret i32 %6, !dbg !1285
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1286 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1290, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8* %1, metadata !1291, metadata !DIExpression()), !dbg !1293
  call void @llvm.dbg.value(metadata i8* %2, metadata !1292, metadata !DIExpression()), !dbg !1293
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1294
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1296
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1290, metadata !DIExpression()), !dbg !1293
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1297
  store i32 10, i32* %6, align 8, !dbg !1298, !tbaa !1232
  %7 = icmp ne i8* %1, null, !dbg !1299
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1301
  br i1 %9, label %11, label %10, !dbg !1301

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !1302
  unreachable, !dbg !1302

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1303
  store i8* %1, i8** %12, align 8, !dbg !1304, !tbaa !1305
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1306
  store i8* %2, i8** %13, align 8, !dbg !1307, !tbaa !1308
  ret void, !dbg !1309
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1314, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %1, metadata !1315, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i8* %2, metadata !1316, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata i64 %3, metadata !1317, metadata !DIExpression()), !dbg !1322
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1318, metadata !DIExpression()), !dbg !1322
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1323
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1323
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1319, metadata !DIExpression()), !dbg !1322
  %8 = tail call i32* @__errno_location() #37, !dbg !1324
  %9 = load i32, i32* %8, align 4, !dbg !1324, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %9, metadata !1320, metadata !DIExpression()), !dbg !1322
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1325
  %11 = load i32, i32* %10, align 8, !dbg !1325, !tbaa !1232
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1326
  %13 = load i32, i32* %12, align 4, !dbg !1326, !tbaa !1283
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1327
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1328
  %16 = load i8*, i8** %15, align 8, !dbg !1328, !tbaa !1305
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1329
  %18 = load i8*, i8** %17, align 8, !dbg !1329, !tbaa !1308
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1330
  call void @llvm.dbg.value(metadata i64 %19, metadata !1321, metadata !DIExpression()), !dbg !1322
  store i32 %9, i32* %8, align 4, !dbg !1331, !tbaa !585
  ret i64 %19, !dbg !1332
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1333 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1339, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %1, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %2, metadata !1341, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %3, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 %4, metadata !1343, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 %5, metadata !1344, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32* %6, metadata !1345, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %7, metadata !1346, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %8, metadata !1347, metadata !DIExpression()), !dbg !1401
  %17 = tail call i64 @__ctype_get_mb_cur_max() #34, !dbg !1402
  %18 = icmp eq i64 %17, 1, !dbg !1403
  call void @llvm.dbg.value(metadata i1 %18, metadata !1348, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* null, metadata !1351, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1352, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 %5, metadata !1354, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1356, metadata !DIExpression()), !dbg !1401
  %19 = and i32 %5, 2, !dbg !1404
  %20 = icmp ne i32 %19, 0, !dbg !1404
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
  br label %36, !dbg !1404

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1405
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1406
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1407
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1356, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %43, metadata !1352, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %42, metadata !1351, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %41, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %40, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %39, metadata !1347, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %38, metadata !1346, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 %37, metadata !1343, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.label(metadata !1394), !dbg !1408
  call void @llvm.dbg.value(metadata i8 0, metadata !1357, metadata !DIExpression()), !dbg !1401
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
  ], !dbg !1409

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, metadata !1343, metadata !DIExpression()), !dbg !1401
  br label %111, !dbg !1410

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 5, metadata !1343, metadata !DIExpression()), !dbg !1401
  br i1 %45, label %111, label %51, !dbg !1410

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1411
  br i1 %52, label %111, label %53, !dbg !1415

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1411, !tbaa !594
  br label %111, !dbg !1411

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), metadata !337, metadata !DIExpression()) #34, !dbg !1416
  call void @llvm.dbg.value(metadata i32 %37, metadata !338, metadata !DIExpression()) #34, !dbg !1416
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 noundef 5) #34, !dbg !1420
  call void @llvm.dbg.value(metadata i8* %55, metadata !339, metadata !DIExpression()) #34, !dbg !1416
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), !dbg !1421
  br i1 %56, label %57, label %66, !dbg !1423

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1424
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1425
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !341, metadata !DIExpression()) #34, !dbg !1426
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1427, metadata !DIExpression()) #34, !dbg !1433
  call void @llvm.dbg.value(metadata i8* %23, metadata !1435, metadata !DIExpression()) #34, !dbg !1440
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()) #34, !dbg !1440
  call void @llvm.dbg.value(metadata i64 8, metadata !1439, metadata !DIExpression()) #34, !dbg !1440
  store i64 0, i64* %13, align 8, !dbg !1442
  call void @llvm.dbg.value(metadata i32* %12, metadata !340, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1416
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #34, !dbg !1443
  %59 = icmp eq i64 %58, 3, !dbg !1445
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !340, metadata !DIExpression()) #34, !dbg !1416
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1446
  %63 = icmp eq i32 %37, 9, !dbg !1446
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1446
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1446
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #34, !dbg !1447
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #34, !dbg !1447
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1416
  call void @llvm.dbg.value(metadata i8* %67, metadata !1346, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), metadata !337, metadata !DIExpression()) #34, !dbg !1448
  call void @llvm.dbg.value(metadata i32 %37, metadata !338, metadata !DIExpression()) #34, !dbg !1448
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 noundef 5) #34, !dbg !1450
  call void @llvm.dbg.value(metadata i8* %68, metadata !339, metadata !DIExpression()) #34, !dbg !1448
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1451
  br i1 %69, label %70, label %79, !dbg !1452

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1453
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1454
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !341, metadata !DIExpression()) #34, !dbg !1455
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1427, metadata !DIExpression()) #34, !dbg !1456
  call void @llvm.dbg.value(metadata i8* %26, metadata !1435, metadata !DIExpression()) #34, !dbg !1458
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()) #34, !dbg !1458
  call void @llvm.dbg.value(metadata i64 8, metadata !1439, metadata !DIExpression()) #34, !dbg !1458
  store i64 0, i64* %11, align 8, !dbg !1460
  call void @llvm.dbg.value(metadata i32* %10, metadata !340, metadata !DIExpression(DW_OP_deref)) #34, !dbg !1448
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #34, !dbg !1461
  %72 = icmp eq i64 %71, 3, !dbg !1462
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !340, metadata !DIExpression()) #34, !dbg !1448
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1463
  %76 = icmp eq i32 %37, 9, !dbg !1463
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1463
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #34, !dbg !1464
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #34, !dbg !1464
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1347, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %80, metadata !1346, metadata !DIExpression()), !dbg !1401
  br i1 %45, label %97, label %82, !dbg !1465

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1358, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 0, metadata !1349, metadata !DIExpression()), !dbg !1401
  %83 = load i8, i8* %80, align 1, !dbg !1467, !tbaa !594
  %84 = icmp eq i8 %83, 0, !dbg !1469
  br i1 %84, label %97, label %85, !dbg !1469

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1358, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.value(metadata i64 %88, metadata !1349, metadata !DIExpression()), !dbg !1401
  %89 = icmp ult i64 %88, %48, !dbg !1470
  br i1 %89, label %90, label %92, !dbg !1473

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1470
  store i8 %86, i8* %91, align 1, !dbg !1470, !tbaa !594
  br label %92, !dbg !1470

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1473
  call void @llvm.dbg.value(metadata i64 %93, metadata !1349, metadata !DIExpression()), !dbg !1401
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1474
  call void @llvm.dbg.value(metadata i8* %94, metadata !1358, metadata !DIExpression()), !dbg !1466
  %95 = load i8, i8* %94, align 1, !dbg !1467, !tbaa !594
  %96 = icmp eq i8 %95, 0, !dbg !1469
  br i1 %96, label %97, label %85, !dbg !1469, !llvm.loop !1475

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1477
  call void @llvm.dbg.value(metadata i64 %98, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %81, metadata !1351, metadata !DIExpression()), !dbg !1401
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #35, !dbg !1478
  call void @llvm.dbg.value(metadata i64 %99, metadata !1352, metadata !DIExpression()), !dbg !1401
  br label %111, !dbg !1479

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1353, metadata !DIExpression()), !dbg !1401
  br label %102, !dbg !1480

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1353, metadata !DIExpression()), !dbg !1401
  br i1 %45, label %102, label %105, !dbg !1481

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1401
  br label %111, !dbg !1482

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 2, metadata !1343, metadata !DIExpression()), !dbg !1401
  br i1 %45, label %111, label %105, !dbg !1482

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1483
  br i1 %107, label %111, label %108, !dbg !1487

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1483, !tbaa !594
  br label %111, !dbg !1483

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1354, metadata !DIExpression()), !dbg !1401
  br label %111, !dbg !1488

110:                                              ; preds = %36
  call void @abort() #36, !dbg !1489
  unreachable, !dbg !1489

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1477
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %102 ], !dbg !1401
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1401
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1354, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1353, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %117, metadata !1352, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %116, metadata !1351, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %115, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %114, metadata !1347, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8* %113, metadata !1346, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i32 %112, metadata !1343, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1363, metadata !DIExpression()), !dbg !1490
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
  br label %132, !dbg !1491

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1477
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1405
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1490
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %139, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1356, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %135, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %134, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %133, metadata !1342, metadata !DIExpression()), !dbg !1401
  %141 = icmp eq i64 %133, -1, !dbg !1492
  br i1 %141, label %142, label %146, !dbg !1493

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1494
  %144 = load i8, i8* %143, align 1, !dbg !1494, !tbaa !594
  %145 = icmp eq i8 %144, 0, !dbg !1495
  br i1 %145, label %596, label %148, !dbg !1496

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1497
  br i1 %147, label %596, label %148, !dbg !1496

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 0, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 0, metadata !1369, metadata !DIExpression()), !dbg !1498
  br i1 %123, label %149, label %163, !dbg !1499

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1501
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1502
  br i1 %151, label %152, label %154, !dbg !1502

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %153, metadata !1342, metadata !DIExpression()), !dbg !1401
  br label %154, !dbg !1504

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1504
  call void @llvm.dbg.value(metadata i64 %155, metadata !1342, metadata !DIExpression()), !dbg !1401
  %156 = icmp ugt i64 %150, %155, !dbg !1505
  br i1 %156, label %163, label %157, !dbg !1506

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1507
  call void @llvm.dbg.value(metadata i8* %158, metadata !1508, metadata !DIExpression()) #34, !dbg !1513
  call void @llvm.dbg.value(metadata i8* %116, metadata !1511, metadata !DIExpression()) #34, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %117, metadata !1512, metadata !DIExpression()) #34, !dbg !1513
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #34, !dbg !1515
  %160 = icmp ne i32 %159, 0, !dbg !1516
  %161 = or i1 %160, %125, !dbg !1517
  %162 = xor i1 %160, true, !dbg !1517
  br i1 %161, label %163, label %647, !dbg !1517

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %164, metadata !1342, metadata !DIExpression()), !dbg !1401
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1518
  %167 = load i8, i8* %166, align 1, !dbg !1518, !tbaa !594
  call void @llvm.dbg.value(metadata i8 %167, metadata !1370, metadata !DIExpression()), !dbg !1498
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
  ], !dbg !1519

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1520

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1521

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1498
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1525
  br i1 %171, label %188, label %172, !dbg !1525

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1527
  br i1 %173, label %174, label %176, !dbg !1531

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1527
  store i8 39, i8* %175, align 1, !dbg !1527, !tbaa !594
  br label %176, !dbg !1527

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %177, metadata !1349, metadata !DIExpression()), !dbg !1401
  %178 = icmp ult i64 %177, %140, !dbg !1532
  br i1 %178, label %179, label %181, !dbg !1535

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1532
  store i8 36, i8* %180, align 1, !dbg !1532, !tbaa !594
  br label %181, !dbg !1532

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %182, metadata !1349, metadata !DIExpression()), !dbg !1401
  %183 = icmp ult i64 %182, %140, !dbg !1536
  br i1 %183, label %184, label %186, !dbg !1539

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1536
  store i8 39, i8* %185, align 1, !dbg !1536, !tbaa !594
  br label %186, !dbg !1536

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %187, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %188, !dbg !1540

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1401
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %189, metadata !1349, metadata !DIExpression()), !dbg !1401
  %191 = icmp ult i64 %189, %140, !dbg !1541
  br i1 %191, label %192, label %194, !dbg !1544

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1541
  store i8 92, i8* %193, align 1, !dbg !1541, !tbaa !594
  br label %194, !dbg !1541

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %195, metadata !1349, metadata !DIExpression()), !dbg !1401
  br i1 %120, label %196, label %499, !dbg !1545

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1547
  %198 = icmp ult i64 %197, %164, !dbg !1548
  br i1 %198, label %199, label %456, !dbg !1549

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1550
  %201 = load i8, i8* %200, align 1, !dbg !1550, !tbaa !594
  %202 = add i8 %201, -48, !dbg !1551
  %203 = icmp ult i8 %202, 10, !dbg !1551
  br i1 %203, label %204, label %456, !dbg !1551

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1552
  br i1 %205, label %206, label %208, !dbg !1556

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1552
  store i8 48, i8* %207, align 1, !dbg !1552, !tbaa !594
  br label %208, !dbg !1552

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1556
  call void @llvm.dbg.value(metadata i64 %209, metadata !1349, metadata !DIExpression()), !dbg !1401
  %210 = icmp ult i64 %209, %140, !dbg !1557
  br i1 %210, label %211, label %213, !dbg !1560

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1557
  store i8 48, i8* %212, align 1, !dbg !1557, !tbaa !594
  br label %213, !dbg !1557

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1560
  call void @llvm.dbg.value(metadata i64 %214, metadata !1349, metadata !DIExpression()), !dbg !1401
  br label %456, !dbg !1561

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1562

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1563

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1564

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1566

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1568
  %221 = icmp ult i64 %220, %164, !dbg !1569
  br i1 %221, label %222, label %456, !dbg !1570

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1571
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1572
  %225 = load i8, i8* %224, align 1, !dbg !1572, !tbaa !594
  %226 = icmp eq i8 %225, 63, !dbg !1573
  br i1 %226, label %227, label %456, !dbg !1574

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1575
  %229 = load i8, i8* %228, align 1, !dbg !1575, !tbaa !594
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
  ], !dbg !1576

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1577

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %220, metadata !1363, metadata !DIExpression()), !dbg !1490
  %232 = icmp ult i64 %134, %140, !dbg !1579
  br i1 %232, label %233, label %235, !dbg !1582

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1579
  store i8 63, i8* %234, align 1, !dbg !1579, !tbaa !594
  br label %235, !dbg !1579

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1582
  call void @llvm.dbg.value(metadata i64 %236, metadata !1349, metadata !DIExpression()), !dbg !1401
  %237 = icmp ult i64 %236, %140, !dbg !1583
  br i1 %237, label %238, label %240, !dbg !1586

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1583
  store i8 34, i8* %239, align 1, !dbg !1583, !tbaa !594
  br label %240, !dbg !1583

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %241, metadata !1349, metadata !DIExpression()), !dbg !1401
  %242 = icmp ult i64 %241, %140, !dbg !1587
  br i1 %242, label %243, label %245, !dbg !1590

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1587
  store i8 34, i8* %244, align 1, !dbg !1587, !tbaa !594
  br label %245, !dbg !1587

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1590
  call void @llvm.dbg.value(metadata i64 %246, metadata !1349, metadata !DIExpression()), !dbg !1401
  %247 = icmp ult i64 %246, %140, !dbg !1591
  br i1 %247, label %248, label %250, !dbg !1594

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1591
  store i8 63, i8* %249, align 1, !dbg !1591, !tbaa !594
  br label %250, !dbg !1591

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %251, metadata !1349, metadata !DIExpression()), !dbg !1401
  br label %456, !dbg !1595

252:                                              ; preds = %163
  br label %263, !dbg !1596

253:                                              ; preds = %163
  br label %263, !dbg !1597

254:                                              ; preds = %163
  br label %261, !dbg !1598

255:                                              ; preds = %163
  br label %261, !dbg !1599

256:                                              ; preds = %163
  br label %263, !dbg !1600

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1601

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1602

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1605

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1607

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1608
  call void @llvm.dbg.label(metadata !1395), !dbg !1609
  br i1 %128, label %263, label %638, !dbg !1610

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1608
  call void @llvm.dbg.label(metadata !1397), !dbg !1612
  br i1 %118, label %510, label %467, !dbg !1613

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1614

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1615, !tbaa !594
  %268 = icmp eq i8 %267, 0, !dbg !1617
  br i1 %268, label %269, label %456, !dbg !1618

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1619
  br i1 %270, label %271, label %456, !dbg !1621

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1369, metadata !DIExpression()), !dbg !1498
  br label %272, !dbg !1622

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1369, metadata !DIExpression()), !dbg !1498
  br i1 %126, label %274, label %456, !dbg !1623

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1625

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1369, metadata !DIExpression()), !dbg !1498
  br i1 %126, label %276, label %456, !dbg !1626

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1627

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1630
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1632
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1632
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %282, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %281, metadata !1350, metadata !DIExpression()), !dbg !1401
  %283 = icmp ult i64 %134, %282, !dbg !1633
  br i1 %283, label %284, label %286, !dbg !1636

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1633
  store i8 39, i8* %285, align 1, !dbg !1633, !tbaa !594
  br label %286, !dbg !1633

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %287, metadata !1349, metadata !DIExpression()), !dbg !1401
  %288 = icmp ult i64 %287, %282, !dbg !1637
  br i1 %288, label %289, label %291, !dbg !1640

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1637
  store i8 92, i8* %290, align 1, !dbg !1637, !tbaa !594
  br label %291, !dbg !1637

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1640
  call void @llvm.dbg.value(metadata i64 %292, metadata !1349, metadata !DIExpression()), !dbg !1401
  %293 = icmp ult i64 %292, %282, !dbg !1641
  br i1 %293, label %294, label %296, !dbg !1644

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1641
  store i8 39, i8* %295, align 1, !dbg !1641, !tbaa !594
  br label %296, !dbg !1641

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1644
  call void @llvm.dbg.value(metadata i64 %297, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %456, !dbg !1645

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1646

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1371, metadata !DIExpression()), !dbg !1647
  %300 = tail call i16** @__ctype_b_loc() #37, !dbg !1648
  %301 = load i16*, i16** %300, align 8, !dbg !1648, !tbaa !488
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1648
  %304 = load i16, i16* %303, align 2, !dbg !1648, !tbaa !619
  %305 = and i16 %304, 16384, !dbg !1648
  %306 = icmp ne i16 %305, 0, !dbg !1650
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %349, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %312, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i1 %350, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  br label %352, !dbg !1651

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1652
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1375, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1427, metadata !DIExpression()) #34, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %32, metadata !1435, metadata !DIExpression()) #34, !dbg !1656
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()) #34, !dbg !1656
  call void @llvm.dbg.value(metadata i64 8, metadata !1439, metadata !DIExpression()) #34, !dbg !1656
  store i64 0, i64* %14, align 8, !dbg !1658
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 1, metadata !1374, metadata !DIExpression()), !dbg !1647
  %308 = icmp eq i64 %164, -1, !dbg !1659
  br i1 %308, label %309, label %311, !dbg !1661

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #35, !dbg !1662
  call void @llvm.dbg.value(metadata i64 %310, metadata !1342, metadata !DIExpression()), !dbg !1401
  br label %311, !dbg !1663

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1498
  call void @llvm.dbg.value(metadata i64 %312, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1664
  %313 = sub i64 %312, %139, !dbg !1665
  call void @llvm.dbg.value(metadata i32* %16, metadata !1378, metadata !DIExpression(DW_OP_deref)), !dbg !1666
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #34, !dbg !1667
  call void @llvm.dbg.value(metadata i64 %314, metadata !1382, metadata !DIExpression()), !dbg !1666
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1668

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  %316 = icmp ugt i64 %312, %139, !dbg !1669
  br i1 %316, label %319, label %317, !dbg !1671

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %349, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %312, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i1 %350, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  br label %352, !dbg !1651

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1374, metadata !DIExpression()), !dbg !1647
  br label %346, !dbg !1674

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1371, metadata !DIExpression()), !dbg !1647
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1676
  %323 = load i8, i8* %322, align 1, !dbg !1676, !tbaa !594
  %324 = icmp eq i8 %323, 0, !dbg !1671
  br i1 %324, label %348, label %325, !dbg !1677

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1678
  call void @llvm.dbg.value(metadata i64 %326, metadata !1371, metadata !DIExpression()), !dbg !1647
  %327 = add i64 %326, %139, !dbg !1679
  %328 = icmp eq i64 %326, %313, !dbg !1669
  br i1 %328, label %348, label %319, !dbg !1671, !llvm.loop !1680

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1681
  call void @llvm.dbg.value(metadata i64 1, metadata !1383, metadata !DIExpression()), !dbg !1682
  br i1 %331, label %332, label %340, !dbg !1681

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1383, metadata !DIExpression()), !dbg !1682
  %334 = add i64 %333, %139, !dbg !1683
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1685
  %336 = load i8, i8* %335, align 1, !dbg !1685, !tbaa !594
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1686

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %338, metadata !1383, metadata !DIExpression()), !dbg !1682
  %339 = icmp eq i64 %338, %314, !dbg !1688
  br i1 %339, label %340, label %332, !dbg !1689, !llvm.loop !1690

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1692, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %341, metadata !1378, metadata !DIExpression()), !dbg !1666
  call void @llvm.dbg.value(metadata i32 %341, metadata !1694, metadata !DIExpression()) #34, !dbg !1702
  %342 = call i32 @iswprint(i32 noundef %341) #34, !dbg !1704
  %343 = icmp ne i32 %342, 0, !dbg !1705
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %314, metadata !1371, metadata !DIExpression()), !dbg !1647
  br label %348, !dbg !1706

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1673
  call void @llvm.dbg.label(metadata !1400), !dbg !1707
  %345 = select i1 %118, i32 4, i32 2, !dbg !1708
  br label %643, !dbg !1708

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %349, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %312, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i1 %350, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  br label %352, !dbg !1651

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1374, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 0, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #34, !dbg !1672
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #34, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %349, metadata !1371, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i64 %312, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i1 %350, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  %351 = icmp ugt i64 %349, 1, !dbg !1710
  br i1 %351, label %357, label %352, !dbg !1651

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1711
  br i1 %356, label %456, label %357, !dbg !1711

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %361, metadata !1391, metadata !DIExpression()), !dbg !1713
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1714

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1401
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1490
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1715
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8 %369, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %368, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %366, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %364, metadata !1349, metadata !DIExpression()), !dbg !1401
  br i1 %362, label %414, label %370, !dbg !1716

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1721

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1498
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1724
  br i1 %372, label %389, label %373, !dbg !1724

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1726
  br i1 %374, label %375, label %377, !dbg !1730

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1726
  store i8 39, i8* %376, align 1, !dbg !1726, !tbaa !594
  br label %377, !dbg !1726

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1730
  call void @llvm.dbg.value(metadata i64 %378, metadata !1349, metadata !DIExpression()), !dbg !1401
  %379 = icmp ult i64 %378, %140, !dbg !1731
  br i1 %379, label %380, label %382, !dbg !1734

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1731
  store i8 36, i8* %381, align 1, !dbg !1731, !tbaa !594
  br label %382, !dbg !1731

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1734
  call void @llvm.dbg.value(metadata i64 %383, metadata !1349, metadata !DIExpression()), !dbg !1401
  %384 = icmp ult i64 %383, %140, !dbg !1735
  br i1 %384, label %385, label %387, !dbg !1738

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1735
  store i8 39, i8* %386, align 1, !dbg !1735, !tbaa !594
  br label %387, !dbg !1735

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1738
  call void @llvm.dbg.value(metadata i64 %388, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %389, !dbg !1739

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1401
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %390, metadata !1349, metadata !DIExpression()), !dbg !1401
  %392 = icmp ult i64 %390, %140, !dbg !1740
  br i1 %392, label %393, label %395, !dbg !1743

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1740
  store i8 92, i8* %394, align 1, !dbg !1740, !tbaa !594
  br label %395, !dbg !1740

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1743
  call void @llvm.dbg.value(metadata i64 %396, metadata !1349, metadata !DIExpression()), !dbg !1401
  %397 = icmp ult i64 %396, %140, !dbg !1744
  br i1 %397, label %398, label %402, !dbg !1747

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1744
  %400 = or i8 %399, 48, !dbg !1744
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1744
  store i8 %400, i8* %401, align 1, !dbg !1744, !tbaa !594
  br label %402, !dbg !1744

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %403, metadata !1349, metadata !DIExpression()), !dbg !1401
  %404 = icmp ult i64 %403, %140, !dbg !1748
  br i1 %404, label %405, label %410, !dbg !1751

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1748
  %407 = and i8 %406, 7, !dbg !1748
  %408 = or i8 %407, 48, !dbg !1748
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1748
  store i8 %408, i8* %409, align 1, !dbg !1748, !tbaa !594
  br label %410, !dbg !1748

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1751
  call void @llvm.dbg.value(metadata i64 %411, metadata !1349, metadata !DIExpression()), !dbg !1401
  %412 = and i8 %369, 7, !dbg !1752
  %413 = or i8 %412, 48, !dbg !1753
  call void @llvm.dbg.value(metadata i8 %413, metadata !1370, metadata !DIExpression()), !dbg !1498
  br label %421, !dbg !1754

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1755

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1756
  br i1 %416, label %417, label %419, !dbg !1761

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1756
  store i8 92, i8* %418, align 1, !dbg !1756, !tbaa !594
  br label %419, !dbg !1756

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1761
  call void @llvm.dbg.value(metadata i64 %420, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1365, metadata !DIExpression()), !dbg !1498
  br label %421, !dbg !1762

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1401
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1498
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8 %426, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %425, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %422, metadata !1349, metadata !DIExpression()), !dbg !1401
  %427 = add i64 %366, 1, !dbg !1763
  %428 = icmp ugt i64 %361, %427, !dbg !1765
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1766

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1767
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1767
  br i1 %432, label %433, label %444, !dbg !1767

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1770
  br i1 %434, label %435, label %437, !dbg !1774

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1770
  store i8 39, i8* %436, align 1, !dbg !1770, !tbaa !594
  br label %437, !dbg !1770

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %438, metadata !1349, metadata !DIExpression()), !dbg !1401
  %439 = icmp ult i64 %438, %140, !dbg !1775
  br i1 %439, label %440, label %442, !dbg !1778

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1775
  store i8 39, i8* %441, align 1, !dbg !1775, !tbaa !594
  br label %442, !dbg !1775

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %443, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %444, !dbg !1779

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1780
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %445, metadata !1349, metadata !DIExpression()), !dbg !1401
  %447 = icmp ult i64 %445, %140, !dbg !1781
  br i1 %447, label %448, label %450, !dbg !1784

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1781
  store i8 %426, i8* %449, align 1, !dbg !1781, !tbaa !594
  br label %450, !dbg !1781

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %451, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %427, metadata !1363, metadata !DIExpression()), !dbg !1490
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1785
  %453 = load i8, i8* %452, align 1, !dbg !1785, !tbaa !594
  call void @llvm.dbg.value(metadata i8 %453, metadata !1370, metadata !DIExpression()), !dbg !1498
  br label %363, !dbg !1786, !llvm.loop !1787

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i1 %358, metadata !1369, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1498
  call void @llvm.dbg.value(metadata i8 %425, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %366, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %422, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %360, metadata !1342, metadata !DIExpression()), !dbg !1401
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1790
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1401
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1405
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1490
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1498
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %465, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1365, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %462, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %459, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %458, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %457, metadata !1342, metadata !DIExpression()), !dbg !1401
  br i1 %121, label %478, label %467, !dbg !1791

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
  br i1 %131, label %479, label %499, !dbg !1793

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1794

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
  %490 = lshr i8 %481, 5, !dbg !1795
  %491 = zext i8 %490 to i64, !dbg !1795
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1796
  %493 = load i32, i32* %492, align 4, !dbg !1796, !tbaa !585
  %494 = and i8 %481, 31, !dbg !1797
  %495 = zext i8 %494 to i32, !dbg !1797
  %496 = shl nuw i32 1, %495, !dbg !1798
  %497 = and i32 %493, %496, !dbg !1798
  %498 = icmp eq i32 %497, 0, !dbg !1798
  br i1 %498, label %499, label %510, !dbg !1799

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
  br i1 %165, label %510, label %546, !dbg !1800

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1790
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1401
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1405
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1801
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1498
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %518, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %516, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %513, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %512, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %511, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.label(metadata !1398), !dbg !1802
  br i1 %119, label %638, label %520, !dbg !1803

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1368, metadata !DIExpression()), !dbg !1498
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1805
  br i1 %521, label %538, label %522, !dbg !1805

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1807
  br i1 %523, label %524, label %526, !dbg !1811

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1807
  store i8 39, i8* %525, align 1, !dbg !1807, !tbaa !594
  br label %526, !dbg !1807

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %527, metadata !1349, metadata !DIExpression()), !dbg !1401
  %528 = icmp ult i64 %527, %519, !dbg !1812
  br i1 %528, label %529, label %531, !dbg !1815

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1812
  store i8 36, i8* %530, align 1, !dbg !1812, !tbaa !594
  br label %531, !dbg !1812

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %532, metadata !1349, metadata !DIExpression()), !dbg !1401
  %533 = icmp ult i64 %532, %519, !dbg !1816
  br i1 %533, label %534, label %536, !dbg !1819

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1816
  store i8 39, i8* %535, align 1, !dbg !1816, !tbaa !594
  br label %536, !dbg !1816

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1819
  call void @llvm.dbg.value(metadata i64 %537, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 1, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %538, !dbg !1820

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1498
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %539, metadata !1349, metadata !DIExpression()), !dbg !1401
  %541 = icmp ult i64 %539, %519, !dbg !1821
  br i1 %541, label %542, label %544, !dbg !1824

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1821
  store i8 92, i8* %543, align 1, !dbg !1821, !tbaa !594
  br label %544, !dbg !1821

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %556, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %555, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %552, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %549, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %548, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %547, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.label(metadata !1399), !dbg !1825
  br label %570, !dbg !1826

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1790
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1401
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1405
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1801
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1829
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 %555, metadata !1370, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1369, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i8 poison, metadata !1368, metadata !DIExpression()), !dbg !1498
  call void @llvm.dbg.value(metadata i64 %552, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %549, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %548, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %547, metadata !1342, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.label(metadata !1399), !dbg !1825
  %557 = xor i1 %551, true, !dbg !1826
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1826
  br i1 %558, label %570, label %559, !dbg !1826

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1830
  br i1 %560, label %561, label %563, !dbg !1834

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1830
  store i8 39, i8* %562, align 1, !dbg !1830, !tbaa !594
  br label %563, !dbg !1830

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %564, metadata !1349, metadata !DIExpression()), !dbg !1401
  %565 = icmp ult i64 %564, %556, !dbg !1835
  br i1 %565, label %566, label %568, !dbg !1838

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1835
  store i8 39, i8* %567, align 1, !dbg !1835, !tbaa !594
  br label %568, !dbg !1835

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1838
  call void @llvm.dbg.value(metadata i64 %569, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 0, metadata !1357, metadata !DIExpression()), !dbg !1401
  br label %570, !dbg !1839

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1498
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %578, metadata !1349, metadata !DIExpression()), !dbg !1401
  %580 = icmp ult i64 %578, %571, !dbg !1840
  br i1 %580, label %581, label %583, !dbg !1843

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1840
  store i8 %572, i8* %582, align 1, !dbg !1840, !tbaa !594
  br label %583, !dbg !1840

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1843
  call void @llvm.dbg.value(metadata i64 %584, metadata !1349, metadata !DIExpression()), !dbg !1401
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1844
  call void @llvm.dbg.value(metadata i8 poison, metadata !1356, metadata !DIExpression()), !dbg !1401
  br label %586, !dbg !1845

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1790
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1401
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1405
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1801
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %593, metadata !1363, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i8 poison, metadata !1357, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1356, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %589, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %588, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %587, metadata !1342, metadata !DIExpression()), !dbg !1401
  %595 = add i64 %593, 1, !dbg !1846
  call void @llvm.dbg.value(metadata i64 %595, metadata !1363, metadata !DIExpression()), !dbg !1490
  br label %132, !dbg !1847, !llvm.loop !1848

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1340, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1356, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1355, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 undef, metadata !1350, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 undef, metadata !1349, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 undef, metadata !1342, metadata !DIExpression()), !dbg !1401
  %597 = icmp eq i64 %134, 0, !dbg !1850
  %598 = and i1 %126, %597, !dbg !1852
  %599 = and i1 %598, %119, !dbg !1852
  br i1 %599, label %638, label %600, !dbg !1852

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1853
  %602 = or i1 %119, %601, !dbg !1853
  %603 = xor i1 %136, true, !dbg !1853
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1853
  br i1 %604, label %612, label %605, !dbg !1853

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1855

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1857
  br label %653, !dbg !1859

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1860
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1862
  br i1 %611, label %36, label %612, !dbg !1862

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1863
  %615 = or i1 %614, %613, !dbg !1865
  br i1 %615, label %631, label %616, !dbg !1865

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1351, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %134, metadata !1349, metadata !DIExpression()), !dbg !1401
  %617 = load i8, i8* %116, align 1, !dbg !1866, !tbaa !594
  %618 = icmp eq i8 %617, 0, !dbg !1869
  br i1 %618, label %631, label %619, !dbg !1869

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1351, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %622, metadata !1349, metadata !DIExpression()), !dbg !1401
  %623 = icmp ult i64 %622, %140, !dbg !1870
  br i1 %623, label %624, label %626, !dbg !1873

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1870
  store i8 %620, i8* %625, align 1, !dbg !1870, !tbaa !594
  br label %626, !dbg !1870

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1873
  call void @llvm.dbg.value(metadata i64 %627, metadata !1349, metadata !DIExpression()), !dbg !1401
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1874
  call void @llvm.dbg.value(metadata i8* %628, metadata !1351, metadata !DIExpression()), !dbg !1401
  %629 = load i8, i8* %628, align 1, !dbg !1866, !tbaa !594
  %630 = icmp eq i8 %629, 0, !dbg !1869
  br i1 %630, label %631, label %619, !dbg !1869, !llvm.loop !1875

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1477
  call void @llvm.dbg.value(metadata i64 %632, metadata !1349, metadata !DIExpression()), !dbg !1401
  %633 = icmp ult i64 %632, %140, !dbg !1877
  br i1 %633, label %634, label %653, !dbg !1879

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1880
  store i8 0, i8* %635, align 1, !dbg !1881, !tbaa !594
  br label %653, !dbg !1880

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1400), !dbg !1707
  %637 = icmp eq i32 %112, 2, !dbg !1882
  br i1 %637, label %643, label %647, !dbg !1708

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1400), !dbg !1707
  %641 = icmp eq i32 %112, 2, !dbg !1882
  %642 = select i1 %118, i32 4, i32 2, !dbg !1708
  br i1 %641, label %643, label %647, !dbg !1708

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1708

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1343, metadata !DIExpression()), !dbg !1401
  %651 = and i32 %5, -3, !dbg !1883
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1884
  br label %653, !dbg !1885

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1886
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1887 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1889 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1893, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i64 %1, metadata !1894, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1895, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8* %0, metadata !1897, metadata !DIExpression()) #34, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %1, metadata !1902, metadata !DIExpression()) #34, !dbg !1910
  call void @llvm.dbg.value(metadata i64* null, metadata !1903, metadata !DIExpression()) #34, !dbg !1910
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1904, metadata !DIExpression()) #34, !dbg !1910
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1912
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1912
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1905, metadata !DIExpression()) #34, !dbg !1910
  %6 = tail call i32* @__errno_location() #37, !dbg !1913
  %7 = load i32, i32* %6, align 4, !dbg !1913, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %7, metadata !1906, metadata !DIExpression()) #34, !dbg !1910
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1914
  %9 = load i32, i32* %8, align 4, !dbg !1914, !tbaa !1283
  %10 = or i32 %9, 1, !dbg !1915
  call void @llvm.dbg.value(metadata i32 %10, metadata !1907, metadata !DIExpression()) #34, !dbg !1910
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1916
  %12 = load i32, i32* %11, align 8, !dbg !1916, !tbaa !1232
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1917
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1918
  %15 = load i8*, i8** %14, align 8, !dbg !1918, !tbaa !1305
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1919
  %17 = load i8*, i8** %16, align 8, !dbg !1919, !tbaa !1308
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #34, !dbg !1920
  %19 = add i64 %18, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %19, metadata !1908, metadata !DIExpression()) #34, !dbg !1910
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %20, metadata !1909, metadata !DIExpression()) #34, !dbg !1910
  %21 = load i32, i32* %11, align 8, !dbg !1923, !tbaa !1232
  %22 = load i8*, i8** %14, align 8, !dbg !1924, !tbaa !1305
  %23 = load i8*, i8** %16, align 8, !dbg !1925, !tbaa !1308
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #34, !dbg !1926
  store i32 %7, i32* %6, align 4, !dbg !1927, !tbaa !585
  ret i8* %20, !dbg !1928
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1898 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1897, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64 %1, metadata !1902, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i64* %2, metadata !1903, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1904, metadata !DIExpression()), !dbg !1929
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1930
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1905, metadata !DIExpression()), !dbg !1929
  %7 = tail call i32* @__errno_location() #37, !dbg !1931
  %8 = load i32, i32* %7, align 4, !dbg !1931, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %8, metadata !1906, metadata !DIExpression()), !dbg !1929
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1932
  %10 = load i32, i32* %9, align 4, !dbg !1932, !tbaa !1283
  %11 = icmp eq i64* %2, null, !dbg !1933
  %12 = zext i1 %11 to i32, !dbg !1933
  %13 = or i32 %10, %12, !dbg !1934
  call void @llvm.dbg.value(metadata i32 %13, metadata !1907, metadata !DIExpression()), !dbg !1929
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1935
  %15 = load i32, i32* %14, align 8, !dbg !1935, !tbaa !1232
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1936
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1937
  %18 = load i8*, i8** %17, align 8, !dbg !1937, !tbaa !1305
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1938
  %20 = load i8*, i8** %19, align 8, !dbg !1938, !tbaa !1308
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1939
  %22 = add i64 %21, 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %22, metadata !1908, metadata !DIExpression()), !dbg !1929
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !1941
  call void @llvm.dbg.value(metadata i8* %23, metadata !1909, metadata !DIExpression()), !dbg !1929
  %24 = load i32, i32* %14, align 8, !dbg !1942, !tbaa !1232
  %25 = load i8*, i8** %17, align 8, !dbg !1943, !tbaa !1305
  %26 = load i8*, i8** %19, align 8, !dbg !1944, !tbaa !1308
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1945
  store i32 %8, i32* %7, align 4, !dbg !1946, !tbaa !585
  br i1 %11, label %29, label %28, !dbg !1947

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1948, !tbaa !775
  br label %29, !dbg !1950

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1951
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1952 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1957, !tbaa !488
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1954, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !1959
  %2 = load i32, i32* @nslots, align 4, !tbaa !585
  call void @llvm.dbg.value(metadata i32 1, metadata !1955, metadata !DIExpression()), !dbg !1959
  %3 = icmp sgt i32 %2, 1, !dbg !1960
  br i1 %3, label %4, label %6, !dbg !1962

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1960
  br label %10, !dbg !1962

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1963
  %8 = load i8*, i8** %7, align 8, !dbg !1963, !tbaa !1965
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1967
  br i1 %9, label %17, label %16, !dbg !1968

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1955, metadata !DIExpression()), !dbg !1959
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !1969
  %13 = load i8*, i8** %12, align 8, !dbg !1969, !tbaa !1965
  tail call void @free(i8* noundef %13) #34, !dbg !1970
  %14 = add nuw nsw i64 %11, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %14, metadata !1955, metadata !DIExpression()), !dbg !1959
  %15 = icmp eq i64 %14, %5, !dbg !1960
  br i1 %15, label %6, label %10, !dbg !1962, !llvm.loop !1972

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #34, !dbg !1974
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1976, !tbaa !1977
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1978, !tbaa !1965
  br label %17, !dbg !1979

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1980
  br i1 %18, label %21, label %19, !dbg !1982

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1983
  tail call void @free(i8* noundef %20) #34, !dbg !1985
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1986, !tbaa !488
  br label %21, !dbg !1987

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !1988, !tbaa !585
  ret void, !dbg !1989
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !1990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1992, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.value(metadata i8* %1, metadata !1993, metadata !DIExpression()), !dbg !1994
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !1995
  ret i8* %3, !dbg !1996
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !1997 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2001, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i8* %1, metadata !2002, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i64 %2, metadata !2003, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2004, metadata !DIExpression()), !dbg !2017
  %6 = tail call i32* @__errno_location() #37, !dbg !2018
  %7 = load i32, i32* %6, align 4, !dbg !2018, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %7, metadata !2005, metadata !DIExpression()), !dbg !2017
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2019, !tbaa !488
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2006, metadata !DIExpression()), !dbg !2017
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2007, metadata !DIExpression()), !dbg !2017
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2020
  br i1 %9, label %10, label %11, !dbg !2020

10:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2022
  unreachable, !dbg !2022

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2023, !tbaa !585
  %13 = icmp sgt i32 %12, %0, !dbg !2024
  br i1 %13, label %36, label %14, !dbg !2025

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2026
  call void @llvm.dbg.value(metadata i1 %15, metadata !2008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2027
  %16 = bitcast i64* %5 to i8*, !dbg !2028
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2028
  %17 = sext i32 %12 to i64, !dbg !2029
  call void @llvm.dbg.value(metadata i64 %17, metadata !2011, metadata !DIExpression()), !dbg !2027
  store i64 %17, i64* %5, align 8, !dbg !2030, !tbaa !775
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2031
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2031
  %20 = add nuw nsw i32 %0, 1, !dbg !2032
  %21 = sub i32 %20, %12, !dbg !2033
  %22 = sext i32 %21 to i64, !dbg !2034
  call void @llvm.dbg.value(metadata i64* %5, metadata !2011, metadata !DIExpression(DW_OP_deref)), !dbg !2027
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #34, !dbg !2035
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2035
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2006, metadata !DIExpression()), !dbg !2017
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2036, !tbaa !488
  br i1 %15, label %25, label %26, !dbg !2037

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2038, !tbaa.struct !2040
  br label %26, !dbg !2041

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2042, !tbaa !585
  %28 = sext i32 %27 to i64, !dbg !2043
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2043
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2044
  %31 = load i64, i64* %5, align 8, !dbg !2045, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %31, metadata !2011, metadata !DIExpression()), !dbg !2027
  %32 = sub nsw i64 %31, %28, !dbg !2046
  %33 = shl i64 %32, 4, !dbg !2047
  call void @llvm.dbg.value(metadata i8* %30, metadata !1435, metadata !DIExpression()) #34, !dbg !2048
  call void @llvm.dbg.value(metadata i32 0, metadata !1438, metadata !DIExpression()) #34, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %33, metadata !1439, metadata !DIExpression()) #34, !dbg !2048
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #34, !dbg !2050
  %34 = load i64, i64* %5, align 8, !dbg !2051, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %34, metadata !2011, metadata !DIExpression()), !dbg !2027
  %35 = trunc i64 %34 to i32, !dbg !2051
  store i32 %35, i32* @nslots, align 4, !dbg !2052, !tbaa !585
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #34, !dbg !2053
  br label %36, !dbg !2054

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2017
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2006, metadata !DIExpression()), !dbg !2017
  %38 = zext i32 %0 to i64, !dbg !2055
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2056
  %40 = load i64, i64* %39, align 8, !dbg !2056, !tbaa !1977
  call void @llvm.dbg.value(metadata i64 %40, metadata !2012, metadata !DIExpression()), !dbg !2057
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2058
  %42 = load i8*, i8** %41, align 8, !dbg !2058, !tbaa !1965
  call void @llvm.dbg.value(metadata i8* %42, metadata !2014, metadata !DIExpression()), !dbg !2057
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2059
  %44 = load i32, i32* %43, align 4, !dbg !2059, !tbaa !1283
  %45 = or i32 %44, 1, !dbg !2060
  call void @llvm.dbg.value(metadata i32 %45, metadata !2015, metadata !DIExpression()), !dbg !2057
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2061
  %47 = load i32, i32* %46, align 8, !dbg !2061, !tbaa !1232
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2062
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2063
  %50 = load i8*, i8** %49, align 8, !dbg !2063, !tbaa !1305
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2064
  %52 = load i8*, i8** %51, align 8, !dbg !2064, !tbaa !1308
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2065
  call void @llvm.dbg.value(metadata i64 %53, metadata !2016, metadata !DIExpression()), !dbg !2057
  %54 = icmp ugt i64 %40, %53, !dbg !2066
  br i1 %54, label %65, label %55, !dbg !2068

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2069
  call void @llvm.dbg.value(metadata i64 %56, metadata !2012, metadata !DIExpression()), !dbg !2057
  store i64 %56, i64* %39, align 8, !dbg !2071, !tbaa !1977
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2072
  br i1 %57, label %59, label %58, !dbg !2074

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #34, !dbg !2075
  br label %59, !dbg !2075

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2076
  call void @llvm.dbg.value(metadata i8* %60, metadata !2014, metadata !DIExpression()), !dbg !2057
  store i8* %60, i8** %41, align 8, !dbg !2077, !tbaa !1965
  %61 = load i32, i32* %46, align 8, !dbg !2078, !tbaa !1232
  %62 = load i8*, i8** %49, align 8, !dbg !2079, !tbaa !1305
  %63 = load i8*, i8** %51, align 8, !dbg !2080, !tbaa !1308
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2081
  br label %65, !dbg !2082

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2057
  call void @llvm.dbg.value(metadata i8* %66, metadata !2014, metadata !DIExpression()), !dbg !2057
  store i32 %7, i32* %6, align 4, !dbg !2083, !tbaa !585
  ret i8* %66, !dbg !2084
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2085 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2089, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i8* %1, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.dbg.value(metadata i64 %2, metadata !2091, metadata !DIExpression()), !dbg !2092
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2093
  ret i8* %4, !dbg !2094
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2097, metadata !DIExpression()), !dbg !2098
  call void @llvm.dbg.value(metadata i32 0, metadata !1992, metadata !DIExpression()) #34, !dbg !2099
  call void @llvm.dbg.value(metadata i8* %0, metadata !1993, metadata !DIExpression()) #34, !dbg !2099
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2101
  ret i8* %2, !dbg !2102
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2103 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2107, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i64 %1, metadata !2108, metadata !DIExpression()), !dbg !2109
  call void @llvm.dbg.value(metadata i32 0, metadata !2089, metadata !DIExpression()) #34, !dbg !2110
  call void @llvm.dbg.value(metadata i8* %0, metadata !2090, metadata !DIExpression()) #34, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %1, metadata !2091, metadata !DIExpression()) #34, !dbg !2110
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #34, !dbg !2112
  ret i8* %3, !dbg !2113
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2114 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2118, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i32 %1, metadata !2119, metadata !DIExpression()), !dbg !2122
  call void @llvm.dbg.value(metadata i8* %2, metadata !2120, metadata !DIExpression()), !dbg !2122
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2123
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2123
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2121, metadata !DIExpression()), !dbg !2124
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2129, metadata !DIExpression()) #34, !dbg !2135
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2134, metadata !DIExpression()) #34, !dbg !2137
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2137, !alias.scope !2125
  %6 = icmp eq i32 %1, 10, !dbg !2138
  br i1 %6, label %7, label %8, !dbg !2140

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2141, !noalias !2125
  unreachable, !dbg !2141

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2142
  store i32 %1, i32* %9, align 8, !dbg !2143, !tbaa !1232, !alias.scope !2125
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2145
  ret i8* %10, !dbg !2146
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2147 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2151, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i32 %1, metadata !2152, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i8* %2, metadata !2153, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata i64 %3, metadata !2154, metadata !DIExpression()), !dbg !2156
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2157
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2157
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2155, metadata !DIExpression()), !dbg !2158
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2159), !dbg !2162
  call void @llvm.dbg.value(metadata i32 %1, metadata !2129, metadata !DIExpression()) #34, !dbg !2163
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2134, metadata !DIExpression()) #34, !dbg !2165
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #34, !dbg !2165, !alias.scope !2159
  %7 = icmp eq i32 %1, 10, !dbg !2166
  br i1 %7, label %8, label %9, !dbg !2167

8:                                                ; preds = %4
  tail call void @abort() #36, !dbg !2168, !noalias !2159
  unreachable, !dbg !2168

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2169
  store i32 %1, i32* %10, align 8, !dbg !2170, !tbaa !1232, !alias.scope !2159
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2171
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2172
  ret i8* %11, !dbg !2173
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2174 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2178, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i8* %1, metadata !2179, metadata !DIExpression()), !dbg !2180
  call void @llvm.dbg.value(metadata i32 0, metadata !2118, metadata !DIExpression()) #34, !dbg !2181
  call void @llvm.dbg.value(metadata i32 %0, metadata !2119, metadata !DIExpression()) #34, !dbg !2181
  call void @llvm.dbg.value(metadata i8* %1, metadata !2120, metadata !DIExpression()) #34, !dbg !2181
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2183
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2121, metadata !DIExpression()) #34, !dbg !2184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185) #34, !dbg !2188
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()) #34, !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2134, metadata !DIExpression()) #34, !dbg !2191
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #34, !dbg !2191, !alias.scope !2185
  %5 = icmp eq i32 %0, 10, !dbg !2192
  br i1 %5, label %6, label %7, !dbg !2193

6:                                                ; preds = %2
  tail call void @abort() #36, !dbg !2194, !noalias !2185
  unreachable, !dbg !2194

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2195
  store i32 %0, i32* %8, align 8, !dbg !2196, !tbaa !1232, !alias.scope !2185
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2197
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2198
  ret i8* %9, !dbg !2199
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2200 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2204, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8* %1, metadata !2205, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i64 %2, metadata !2206, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()) #34, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %0, metadata !2152, metadata !DIExpression()) #34, !dbg !2208
  call void @llvm.dbg.value(metadata i8* %1, metadata !2153, metadata !DIExpression()) #34, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %2, metadata !2154, metadata !DIExpression()) #34, !dbg !2208
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2210
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2210
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2155, metadata !DIExpression()) #34, !dbg !2211
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2212) #34, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %0, metadata !2129, metadata !DIExpression()) #34, !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2134, metadata !DIExpression()) #34, !dbg !2218
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #34, !dbg !2218, !alias.scope !2212
  %6 = icmp eq i32 %0, 10, !dbg !2219
  br i1 %6, label %7, label %8, !dbg !2220

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2221, !noalias !2212
  unreachable, !dbg !2221

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2222
  store i32 %0, i32* %9, align 8, !dbg !2223, !tbaa !1232, !alias.scope !2212
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2224
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2225
  ret i8* %10, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2227 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %1, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8 %2, metadata !2233, metadata !DIExpression()), !dbg !2235
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2236
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2234, metadata !DIExpression()), !dbg !2237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2238, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1250, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %2, metadata !1251, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 %2, metadata !1253, metadata !DIExpression()), !dbg !2240
  %6 = lshr i8 %2, 5, !dbg !2242
  %7 = zext i8 %6 to i64, !dbg !2242
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2243
  call void @llvm.dbg.value(metadata i32* %8, metadata !1254, metadata !DIExpression()), !dbg !2240
  %9 = and i8 %2, 31, !dbg !2244
  %10 = zext i8 %9 to i32, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %10, metadata !1256, metadata !DIExpression()), !dbg !2240
  %11 = load i32, i32* %8, align 4, !dbg !2245, !tbaa !585
  %12 = lshr i32 %11, %10, !dbg !2246
  %13 = and i32 %12, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %13, metadata !1257, metadata !DIExpression()), !dbg !2240
  %14 = xor i32 %13, 1, !dbg !2248
  %15 = shl i32 %14, %10, !dbg !2249
  %16 = xor i32 %15, %11, !dbg !2250
  store i32 %16, i32* %8, align 4, !dbg !2250, !tbaa !585
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2251
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2252
  ret i8* %17, !dbg !2253
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2254 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %1, metadata !2259, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()) #34, !dbg !2261
  call void @llvm.dbg.value(metadata i64 -1, metadata !2232, metadata !DIExpression()) #34, !dbg !2261
  call void @llvm.dbg.value(metadata i8 %1, metadata !2233, metadata !DIExpression()) #34, !dbg !2261
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2263
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2263
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2234, metadata !DIExpression()) #34, !dbg !2264
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2265, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1250, metadata !DIExpression()) #34, !dbg !2266
  call void @llvm.dbg.value(metadata i8 %1, metadata !1251, metadata !DIExpression()) #34, !dbg !2266
  call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()) #34, !dbg !2266
  call void @llvm.dbg.value(metadata i8 %1, metadata !1253, metadata !DIExpression()) #34, !dbg !2266
  %5 = lshr i8 %1, 5, !dbg !2268
  %6 = zext i8 %5 to i64, !dbg !2268
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2269
  call void @llvm.dbg.value(metadata i32* %7, metadata !1254, metadata !DIExpression()) #34, !dbg !2266
  %8 = and i8 %1, 31, !dbg !2270
  %9 = zext i8 %8 to i32, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %9, metadata !1256, metadata !DIExpression()) #34, !dbg !2266
  %10 = load i32, i32* %7, align 4, !dbg !2271, !tbaa !585
  %11 = lshr i32 %10, %9, !dbg !2272
  %12 = and i32 %11, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %12, metadata !1257, metadata !DIExpression()) #34, !dbg !2266
  %13 = xor i32 %12, 1, !dbg !2274
  %14 = shl i32 %13, %9, !dbg !2275
  %15 = xor i32 %14, %10, !dbg !2276
  store i32 %15, i32* %7, align 4, !dbg !2276, !tbaa !585
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2277
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2278
  ret i8* %16, !dbg !2279
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2280 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2282, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8* %0, metadata !2258, metadata !DIExpression()) #34, !dbg !2284
  call void @llvm.dbg.value(metadata i8 58, metadata !2259, metadata !DIExpression()) #34, !dbg !2284
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()) #34, !dbg !2286
  call void @llvm.dbg.value(metadata i64 -1, metadata !2232, metadata !DIExpression()) #34, !dbg !2286
  call void @llvm.dbg.value(metadata i8 58, metadata !2233, metadata !DIExpression()) #34, !dbg !2286
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2288
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2288
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2234, metadata !DIExpression()) #34, !dbg !2289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2290, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1250, metadata !DIExpression()) #34, !dbg !2291
  call void @llvm.dbg.value(metadata i8 58, metadata !1251, metadata !DIExpression()) #34, !dbg !2291
  call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()) #34, !dbg !2291
  call void @llvm.dbg.value(metadata i8 58, metadata !1253, metadata !DIExpression()) #34, !dbg !2291
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2293
  call void @llvm.dbg.value(metadata i32* %4, metadata !1254, metadata !DIExpression()) #34, !dbg !2291
  call void @llvm.dbg.value(metadata i32 26, metadata !1256, metadata !DIExpression()) #34, !dbg !2291
  %5 = load i32, i32* %4, align 4, !dbg !2294, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %5, metadata !1257, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2291
  %6 = or i32 %5, 67108864, !dbg !2295
  store i32 %6, i32* %4, align 4, !dbg !2295, !tbaa !585
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #34, !dbg !2296
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #34, !dbg !2297
  ret i8* %7, !dbg !2298
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2299 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i64 %1, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata i8* %0, metadata !2231, metadata !DIExpression()) #34, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %1, metadata !2232, metadata !DIExpression()) #34, !dbg !2304
  call void @llvm.dbg.value(metadata i8 58, metadata !2233, metadata !DIExpression()) #34, !dbg !2304
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2306
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2306
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2234, metadata !DIExpression()) #34, !dbg !2307
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #34, !dbg !2308, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1250, metadata !DIExpression()) #34, !dbg !2309
  call void @llvm.dbg.value(metadata i8 58, metadata !1251, metadata !DIExpression()) #34, !dbg !2309
  call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()) #34, !dbg !2309
  call void @llvm.dbg.value(metadata i8 58, metadata !1253, metadata !DIExpression()) #34, !dbg !2309
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %5, metadata !1254, metadata !DIExpression()) #34, !dbg !2309
  call void @llvm.dbg.value(metadata i32 26, metadata !1256, metadata !DIExpression()) #34, !dbg !2309
  %6 = load i32, i32* %5, align 4, !dbg !2312, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %6, metadata !1257, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #34, !dbg !2309
  %7 = or i32 %6, 67108864, !dbg !2313
  store i32 %7, i32* %5, align 4, !dbg !2313, !tbaa !585
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #34, !dbg !2314
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #34, !dbg !2315
  ret i8* %8, !dbg !2316
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2317 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2319, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %1, metadata !2320, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %2, metadata !2321, metadata !DIExpression()), !dbg !2323
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2324
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2324
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2322, metadata !DIExpression()), !dbg !2325
  call void @llvm.dbg.value(metadata i32 %1, metadata !2129, metadata !DIExpression()) #34, !dbg !2326
  call void @llvm.dbg.value(metadata i32 0, metadata !2134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2326
  %6 = icmp eq i32 %1, 10, !dbg !2328
  br i1 %6, label %7, label %8, !dbg !2329

7:                                                ; preds = %3
  tail call void @abort() #36, !dbg !2330, !noalias !2331
  unreachable, !dbg !2330

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2134, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2326
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2334
  store i32 %1, i32* %9, align 8, !dbg !2334, !tbaa.struct !2239
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2334
  %11 = bitcast i32* %10 to i8*, !dbg !2334
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1250, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 58, metadata !1251, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 1, metadata !1252, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i8 58, metadata !1253, metadata !DIExpression()), !dbg !2335
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2337
  call void @llvm.dbg.value(metadata i32* %12, metadata !1254, metadata !DIExpression()), !dbg !2335
  call void @llvm.dbg.value(metadata i32 26, metadata !1256, metadata !DIExpression()), !dbg !2335
  %13 = load i32, i32* %12, align 4, !dbg !2338, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %13, metadata !1257, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2335
  %14 = or i32 %13, 67108864, !dbg !2339
  store i32 %14, i32* %12, align 4, !dbg !2339, !tbaa !585
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2340
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2341
  ret i8* %15, !dbg !2342
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2343 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2347, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %1, metadata !2348, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %2, metadata !2349, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i8* %3, metadata !2350, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2357, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %2, metadata !2358, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i8* %3, metadata !2359, metadata !DIExpression()) #34, !dbg !2362
  call void @llvm.dbg.value(metadata i64 -1, metadata !2360, metadata !DIExpression()) #34, !dbg !2362
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2364
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2361, metadata !DIExpression()) #34, !dbg !2365
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2366, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1290, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !1291, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %2, metadata !1292, metadata !DIExpression()) #34, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1290, metadata !DIExpression()) #34, !dbg !2367
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2369
  store i32 10, i32* %7, align 8, !dbg !2370, !tbaa !1232
  %8 = icmp ne i8* %1, null, !dbg !2371
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2372
  br i1 %10, label %12, label %11, !dbg !2372

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2373
  unreachable, !dbg !2373

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2374
  store i8* %1, i8** %13, align 8, !dbg !2375, !tbaa !1305
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2376
  store i8* %2, i8** %14, align 8, !dbg !2377, !tbaa !1308
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2379
  ret i8* %15, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2353 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2352, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %1, metadata !2357, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %2, metadata !2358, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i8* %3, metadata !2359, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.value(metadata i64 %4, metadata !2360, metadata !DIExpression()), !dbg !2381
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2382
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2382
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2361, metadata !DIExpression()), !dbg !2383
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2384, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1290, metadata !DIExpression()) #34, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %1, metadata !1291, metadata !DIExpression()) #34, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %2, metadata !1292, metadata !DIExpression()) #34, !dbg !2385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1290, metadata !DIExpression()) #34, !dbg !2385
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2387
  store i32 10, i32* %8, align 8, !dbg !2388, !tbaa !1232
  %9 = icmp ne i8* %1, null, !dbg !2389
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2390
  br i1 %11, label %13, label %12, !dbg !2390

12:                                               ; preds = %5
  tail call void @abort() #36, !dbg !2391
  unreachable, !dbg !2391

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2392
  store i8* %1, i8** %14, align 8, !dbg !2393, !tbaa !1305
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2394
  store i8* %2, i8** %15, align 8, !dbg !2395, !tbaa !1308
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #34, !dbg !2397
  ret i8* %16, !dbg !2398
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2399 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2403, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %1, metadata !2404, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %2, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i32 0, metadata !2347, metadata !DIExpression()) #34, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %0, metadata !2348, metadata !DIExpression()) #34, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !2349, metadata !DIExpression()) #34, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %2, metadata !2350, metadata !DIExpression()) #34, !dbg !2407
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %0, metadata !2357, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %1, metadata !2358, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i8* %2, metadata !2359, metadata !DIExpression()) #34, !dbg !2409
  call void @llvm.dbg.value(metadata i64 -1, metadata !2360, metadata !DIExpression()) #34, !dbg !2409
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2411
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2361, metadata !DIExpression()) #34, !dbg !2412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2413, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1290, metadata !DIExpression()) #34, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %0, metadata !1291, metadata !DIExpression()) #34, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %1, metadata !1292, metadata !DIExpression()) #34, !dbg !2414
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1290, metadata !DIExpression()) #34, !dbg !2414
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2416
  store i32 10, i32* %6, align 8, !dbg !2417, !tbaa !1232
  %7 = icmp ne i8* %0, null, !dbg !2418
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2419
  br i1 %9, label %11, label %10, !dbg !2419

10:                                               ; preds = %3
  tail call void @abort() #36, !dbg !2420
  unreachable, !dbg !2420

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2421
  store i8* %0, i8** %12, align 8, !dbg !2422, !tbaa !1305
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2423
  store i8* %1, i8** %13, align 8, !dbg !2424, !tbaa !1308
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #34, !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #34, !dbg !2426
  ret i8* %14, !dbg !2427
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2428 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2432, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %1, metadata !2433, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i8* %2, metadata !2434, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i64 %3, metadata !2435, metadata !DIExpression()), !dbg !2436
  call void @llvm.dbg.value(metadata i32 0, metadata !2352, metadata !DIExpression()) #34, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %0, metadata !2357, metadata !DIExpression()) #34, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %1, metadata !2358, metadata !DIExpression()) #34, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %2, metadata !2359, metadata !DIExpression()) #34, !dbg !2437
  call void @llvm.dbg.value(metadata i64 %3, metadata !2360, metadata !DIExpression()) #34, !dbg !2437
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2439
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2439
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2361, metadata !DIExpression()) #34, !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #34, !dbg !2441, !tbaa.struct !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1290, metadata !DIExpression()) #34, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %0, metadata !1291, metadata !DIExpression()) #34, !dbg !2442
  call void @llvm.dbg.value(metadata i8* %1, metadata !1292, metadata !DIExpression()) #34, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1290, metadata !DIExpression()) #34, !dbg !2442
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2444
  store i32 10, i32* %7, align 8, !dbg !2445, !tbaa !1232
  %8 = icmp ne i8* %0, null, !dbg !2446
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2447
  br i1 %10, label %12, label %11, !dbg !2447

11:                                               ; preds = %4
  tail call void @abort() #36, !dbg !2448
  unreachable, !dbg !2448

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2449
  store i8* %0, i8** %13, align 8, !dbg !2450, !tbaa !1305
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2451
  store i8* %1, i8** %14, align 8, !dbg !2452, !tbaa !1308
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #34, !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #34, !dbg !2454
  ret i8* %15, !dbg !2455
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2456 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i8* %1, metadata !2461, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %2, metadata !2462, metadata !DIExpression()), !dbg !2463
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2464
  ret i8* %4, !dbg !2465
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2466 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i64 %1, metadata !2471, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i32 0, metadata !2460, metadata !DIExpression()) #34, !dbg !2473
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()) #34, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %1, metadata !2462, metadata !DIExpression()) #34, !dbg !2473
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2475
  ret i8* %3, !dbg !2476
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2477 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i8* %1, metadata !2482, metadata !DIExpression()), !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()) #34, !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2461, metadata !DIExpression()) #34, !dbg !2484
  call void @llvm.dbg.value(metadata i64 -1, metadata !2462, metadata !DIExpression()) #34, !dbg !2484
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2486
  ret i8* %3, !dbg !2487
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2488 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2492, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i32 0, metadata !2481, metadata !DIExpression()) #34, !dbg !2494
  call void @llvm.dbg.value(metadata i8* %0, metadata !2482, metadata !DIExpression()) #34, !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2460, metadata !DIExpression()) #34, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %0, metadata !2461, metadata !DIExpression()) #34, !dbg !2496
  call void @llvm.dbg.value(metadata i64 -1, metadata !2462, metadata !DIExpression()) #34, !dbg !2496
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #34, !dbg !2498
  ret i8* %2, !dbg !2499
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2500 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2539, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %1, metadata !2540, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %2, metadata !2541, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %3, metadata !2542, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8** %4, metadata !2543, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i64 %5, metadata !2544, metadata !DIExpression()), !dbg !2545
  %7 = icmp eq i8* %1, null, !dbg !2546
  br i1 %7, label %10, label %8, !dbg !2548

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #34, !dbg !2549
  br label %12, !dbg !2549

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #34, !dbg !2550
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.85, i64 0, i64 0), i32 noundef 5) #34, !dbg !2551
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #34, !dbg !2551
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2552
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.87, i64 0, i64 0), i32 noundef 5) #34, !dbg !2553
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.88, i64 0, i64 0)) #34, !dbg !2553
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2554
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
  ], !dbg !2555

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.89, i64 0, i64 0), i32 noundef 5) #34, !dbg !2556
  %21 = load i8*, i8** %4, align 8, !dbg !2556, !tbaa !488
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #34, !dbg !2556
  br label %147, !dbg !2558

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.90, i64 0, i64 0), i32 noundef 5) #34, !dbg !2559
  %25 = load i8*, i8** %4, align 8, !dbg !2559, !tbaa !488
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2559
  %27 = load i8*, i8** %26, align 8, !dbg !2559, !tbaa !488
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #34, !dbg !2559
  br label %147, !dbg !2560

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.91, i64 0, i64 0), i32 noundef 5) #34, !dbg !2561
  %31 = load i8*, i8** %4, align 8, !dbg !2561, !tbaa !488
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2561
  %33 = load i8*, i8** %32, align 8, !dbg !2561, !tbaa !488
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2561
  %35 = load i8*, i8** %34, align 8, !dbg !2561, !tbaa !488
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #34, !dbg !2561
  br label %147, !dbg !2562

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.92, i64 0, i64 0), i32 noundef 5) #34, !dbg !2563
  %39 = load i8*, i8** %4, align 8, !dbg !2563, !tbaa !488
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2563
  %41 = load i8*, i8** %40, align 8, !dbg !2563, !tbaa !488
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2563
  %43 = load i8*, i8** %42, align 8, !dbg !2563, !tbaa !488
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2563
  %45 = load i8*, i8** %44, align 8, !dbg !2563, !tbaa !488
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #34, !dbg !2563
  br label %147, !dbg !2564

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef 5) #34, !dbg !2565
  %49 = load i8*, i8** %4, align 8, !dbg !2565, !tbaa !488
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2565
  %51 = load i8*, i8** %50, align 8, !dbg !2565, !tbaa !488
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2565
  %53 = load i8*, i8** %52, align 8, !dbg !2565, !tbaa !488
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2565
  %55 = load i8*, i8** %54, align 8, !dbg !2565, !tbaa !488
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2565
  %57 = load i8*, i8** %56, align 8, !dbg !2565, !tbaa !488
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #34, !dbg !2565
  br label %147, !dbg !2566

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef 5) #34, !dbg !2567
  %61 = load i8*, i8** %4, align 8, !dbg !2567, !tbaa !488
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2567
  %63 = load i8*, i8** %62, align 8, !dbg !2567, !tbaa !488
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2567
  %65 = load i8*, i8** %64, align 8, !dbg !2567, !tbaa !488
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2567
  %67 = load i8*, i8** %66, align 8, !dbg !2567, !tbaa !488
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2567
  %69 = load i8*, i8** %68, align 8, !dbg !2567, !tbaa !488
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2567
  %71 = load i8*, i8** %70, align 8, !dbg !2567, !tbaa !488
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #34, !dbg !2567
  br label %147, !dbg !2568

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.95, i64 0, i64 0), i32 noundef 5) #34, !dbg !2569
  %75 = load i8*, i8** %4, align 8, !dbg !2569, !tbaa !488
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2569
  %77 = load i8*, i8** %76, align 8, !dbg !2569, !tbaa !488
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2569
  %79 = load i8*, i8** %78, align 8, !dbg !2569, !tbaa !488
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2569
  %81 = load i8*, i8** %80, align 8, !dbg !2569, !tbaa !488
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2569
  %83 = load i8*, i8** %82, align 8, !dbg !2569, !tbaa !488
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2569
  %85 = load i8*, i8** %84, align 8, !dbg !2569, !tbaa !488
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2569
  %87 = load i8*, i8** %86, align 8, !dbg !2569, !tbaa !488
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #34, !dbg !2569
  br label %147, !dbg !2570

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.96, i64 0, i64 0), i32 noundef 5) #34, !dbg !2571
  %91 = load i8*, i8** %4, align 8, !dbg !2571, !tbaa !488
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2571
  %93 = load i8*, i8** %92, align 8, !dbg !2571, !tbaa !488
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2571
  %95 = load i8*, i8** %94, align 8, !dbg !2571, !tbaa !488
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2571
  %97 = load i8*, i8** %96, align 8, !dbg !2571, !tbaa !488
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2571
  %99 = load i8*, i8** %98, align 8, !dbg !2571, !tbaa !488
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2571
  %101 = load i8*, i8** %100, align 8, !dbg !2571, !tbaa !488
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2571
  %103 = load i8*, i8** %102, align 8, !dbg !2571, !tbaa !488
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2571
  %105 = load i8*, i8** %104, align 8, !dbg !2571, !tbaa !488
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #34, !dbg !2571
  br label %147, !dbg !2572

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.97, i64 0, i64 0), i32 noundef 5) #34, !dbg !2573
  %109 = load i8*, i8** %4, align 8, !dbg !2573, !tbaa !488
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2573
  %111 = load i8*, i8** %110, align 8, !dbg !2573, !tbaa !488
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2573
  %113 = load i8*, i8** %112, align 8, !dbg !2573, !tbaa !488
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2573
  %115 = load i8*, i8** %114, align 8, !dbg !2573, !tbaa !488
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2573
  %117 = load i8*, i8** %116, align 8, !dbg !2573, !tbaa !488
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2573
  %119 = load i8*, i8** %118, align 8, !dbg !2573, !tbaa !488
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2573
  %121 = load i8*, i8** %120, align 8, !dbg !2573, !tbaa !488
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2573
  %123 = load i8*, i8** %122, align 8, !dbg !2573, !tbaa !488
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2573
  %125 = load i8*, i8** %124, align 8, !dbg !2573, !tbaa !488
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #34, !dbg !2573
  br label %147, !dbg !2574

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.98, i64 0, i64 0), i32 noundef 5) #34, !dbg !2575
  %129 = load i8*, i8** %4, align 8, !dbg !2575, !tbaa !488
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2575
  %131 = load i8*, i8** %130, align 8, !dbg !2575, !tbaa !488
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2575
  %133 = load i8*, i8** %132, align 8, !dbg !2575, !tbaa !488
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2575
  %135 = load i8*, i8** %134, align 8, !dbg !2575, !tbaa !488
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2575
  %137 = load i8*, i8** %136, align 8, !dbg !2575, !tbaa !488
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2575
  %139 = load i8*, i8** %138, align 8, !dbg !2575, !tbaa !488
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2575
  %141 = load i8*, i8** %140, align 8, !dbg !2575, !tbaa !488
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2575
  %143 = load i8*, i8** %142, align 8, !dbg !2575, !tbaa !488
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2575
  %145 = load i8*, i8** %144, align 8, !dbg !2575, !tbaa !488
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #34, !dbg !2575
  br label %147, !dbg !2576

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2578 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2582, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %2, metadata !2584, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8* %3, metadata !2585, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i8** %4, metadata !2586, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2587, metadata !DIExpression()), !dbg !2588
  br label %6, !dbg !2589

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2591
  call void @llvm.dbg.value(metadata i64 %7, metadata !2587, metadata !DIExpression()), !dbg !2588
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2592
  %9 = load i8*, i8** %8, align 8, !dbg !2592, !tbaa !488
  %10 = icmp eq i8* %9, null, !dbg !2594
  %11 = add i64 %7, 1, !dbg !2595
  call void @llvm.dbg.value(metadata i64 %11, metadata !2587, metadata !DIExpression()), !dbg !2588
  br i1 %10, label %12, label %6, !dbg !2594, !llvm.loop !2596

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2598
  ret void, !dbg !2599
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2600 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2615, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %1, metadata !2616, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %2, metadata !2617, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %3, metadata !2618, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2619, metadata !DIExpression()), !dbg !2624
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2625
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2625
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 0, metadata !2620, metadata !DIExpression()), !dbg !2623
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2620, metadata !DIExpression()), !dbg !2623
  %11 = load i32, i32* %8, align 8, !dbg !2627
  %12 = icmp sgt i32 %11, -1, !dbg !2627
  br i1 %12, label %20, label %13, !dbg !2627

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2627
  store i32 %14, i32* %8, align 8, !dbg !2627
  %15 = icmp ult i32 %11, -7, !dbg !2627
  br i1 %15, label %16, label %20, !dbg !2627

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2627
  %18 = sext i32 %11 to i64, !dbg !2627
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2627
  br label %24, !dbg !2627

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2627
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2627
  store i8* %23, i8** %10, align 8, !dbg !2627
  br label %24, !dbg !2627

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2627
  %28 = load i8*, i8** %27, align 8, !dbg !2627
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2630
  store i8* %28, i8** %29, align 8, !dbg !2631, !tbaa !488
  %30 = icmp eq i8* %28, null, !dbg !2632
  br i1 %30, label %210, label %31, !dbg !2633

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 1, metadata !2620, metadata !DIExpression()), !dbg !2623
  %32 = icmp sgt i32 %25, -1, !dbg !2627
  br i1 %32, label %40, label %33, !dbg !2627

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2627
  store i32 %34, i32* %8, align 8, !dbg !2627
  %35 = icmp ult i32 %25, -7, !dbg !2627
  br i1 %35, label %36, label %40, !dbg !2627

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2627
  %38 = sext i32 %25 to i64, !dbg !2627
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2627
  br label %44, !dbg !2627

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2627
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2627
  store i8* %43, i8** %10, align 8, !dbg !2627
  br label %44, !dbg !2627

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2627
  %48 = load i8*, i8** %47, align 8, !dbg !2627
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2630
  store i8* %48, i8** %49, align 8, !dbg !2631, !tbaa !488
  %50 = icmp eq i8* %48, null, !dbg !2632
  br i1 %50, label %210, label %51, !dbg !2633

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 2, metadata !2620, metadata !DIExpression()), !dbg !2623
  %52 = icmp sgt i32 %45, -1, !dbg !2627
  br i1 %52, label %60, label %53, !dbg !2627

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2627
  store i32 %54, i32* %8, align 8, !dbg !2627
  %55 = icmp ult i32 %45, -7, !dbg !2627
  br i1 %55, label %56, label %60, !dbg !2627

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2627
  %58 = sext i32 %45 to i64, !dbg !2627
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2627
  br label %64, !dbg !2627

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2627
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2627
  store i8* %63, i8** %10, align 8, !dbg !2627
  br label %64, !dbg !2627

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2627
  %68 = load i8*, i8** %67, align 8, !dbg !2627
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2630
  store i8* %68, i8** %69, align 8, !dbg !2631, !tbaa !488
  %70 = icmp eq i8* %68, null, !dbg !2632
  br i1 %70, label %210, label %71, !dbg !2633

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 3, metadata !2620, metadata !DIExpression()), !dbg !2623
  %72 = icmp sgt i32 %65, -1, !dbg !2627
  br i1 %72, label %80, label %73, !dbg !2627

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2627
  store i32 %74, i32* %8, align 8, !dbg !2627
  %75 = icmp ult i32 %65, -7, !dbg !2627
  br i1 %75, label %76, label %80, !dbg !2627

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2627
  %78 = sext i32 %65 to i64, !dbg !2627
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2627
  br label %84, !dbg !2627

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2627
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2627
  store i8* %83, i8** %10, align 8, !dbg !2627
  br label %84, !dbg !2627

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2627
  %88 = load i8*, i8** %87, align 8, !dbg !2627
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2630
  store i8* %88, i8** %89, align 8, !dbg !2631, !tbaa !488
  %90 = icmp eq i8* %88, null, !dbg !2632
  br i1 %90, label %210, label %91, !dbg !2633

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 4, metadata !2620, metadata !DIExpression()), !dbg !2623
  %92 = icmp sgt i32 %85, -1, !dbg !2627
  br i1 %92, label %100, label %93, !dbg !2627

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2627
  store i32 %94, i32* %8, align 8, !dbg !2627
  %95 = icmp ult i32 %85, -7, !dbg !2627
  br i1 %95, label %96, label %100, !dbg !2627

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2627
  %98 = sext i32 %85 to i64, !dbg !2627
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2627
  br label %104, !dbg !2627

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2627
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2627
  store i8* %103, i8** %10, align 8, !dbg !2627
  br label %104, !dbg !2627

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2627
  %108 = load i8*, i8** %107, align 8, !dbg !2627
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2630
  store i8* %108, i8** %109, align 8, !dbg !2631, !tbaa !488
  %110 = icmp eq i8* %108, null, !dbg !2632
  br i1 %110, label %210, label %111, !dbg !2633

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 5, metadata !2620, metadata !DIExpression()), !dbg !2623
  %112 = icmp sgt i32 %105, -1, !dbg !2627
  br i1 %112, label %120, label %113, !dbg !2627

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2627
  store i32 %114, i32* %8, align 8, !dbg !2627
  %115 = icmp ult i32 %105, -7, !dbg !2627
  br i1 %115, label %116, label %120, !dbg !2627

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2627
  %118 = sext i32 %105 to i64, !dbg !2627
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2627
  br label %124, !dbg !2627

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2627
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2627
  store i8* %123, i8** %10, align 8, !dbg !2627
  br label %124, !dbg !2627

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2627
  %128 = load i8*, i8** %127, align 8, !dbg !2627
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2630
  store i8* %128, i8** %129, align 8, !dbg !2631, !tbaa !488
  %130 = icmp eq i8* %128, null, !dbg !2632
  br i1 %130, label %210, label %131, !dbg !2633

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 6, metadata !2620, metadata !DIExpression()), !dbg !2623
  %132 = icmp sgt i32 %125, -1, !dbg !2627
  br i1 %132, label %140, label %133, !dbg !2627

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2627
  store i32 %134, i32* %8, align 8, !dbg !2627
  %135 = icmp ult i32 %125, -7, !dbg !2627
  br i1 %135, label %136, label %140, !dbg !2627

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2627
  %138 = sext i32 %125 to i64, !dbg !2627
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2627
  br label %144, !dbg !2627

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2627
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2627
  store i8* %143, i8** %10, align 8, !dbg !2627
  br label %144, !dbg !2627

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2627
  %148 = load i8*, i8** %147, align 8, !dbg !2627
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2630
  store i8* %148, i8** %149, align 8, !dbg !2631, !tbaa !488
  %150 = icmp eq i8* %148, null, !dbg !2632
  br i1 %150, label %210, label %151, !dbg !2633

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 7, metadata !2620, metadata !DIExpression()), !dbg !2623
  %152 = icmp sgt i32 %145, -1, !dbg !2627
  br i1 %152, label %160, label %153, !dbg !2627

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2627
  store i32 %154, i32* %8, align 8, !dbg !2627
  %155 = icmp ult i32 %145, -7, !dbg !2627
  br i1 %155, label %156, label %160, !dbg !2627

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2627
  %158 = sext i32 %145 to i64, !dbg !2627
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2627
  br label %164, !dbg !2627

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2627
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2627
  store i8* %163, i8** %10, align 8, !dbg !2627
  br label %164, !dbg !2627

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2627
  %168 = load i8*, i8** %167, align 8, !dbg !2627
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2630
  store i8* %168, i8** %169, align 8, !dbg !2631, !tbaa !488
  %170 = icmp eq i8* %168, null, !dbg !2632
  br i1 %170, label %210, label %171, !dbg !2633

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 8, metadata !2620, metadata !DIExpression()), !dbg !2623
  %172 = icmp sgt i32 %165, -1, !dbg !2627
  br i1 %172, label %180, label %173, !dbg !2627

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2627
  store i32 %174, i32* %8, align 8, !dbg !2627
  %175 = icmp ult i32 %165, -7, !dbg !2627
  br i1 %175, label %176, label %180, !dbg !2627

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2627
  %178 = sext i32 %165 to i64, !dbg !2627
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2627
  br label %184, !dbg !2627

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2627
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2627
  store i8* %183, i8** %10, align 8, !dbg !2627
  br label %184, !dbg !2627

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2627
  %188 = load i8*, i8** %187, align 8, !dbg !2627
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2630
  store i8* %188, i8** %189, align 8, !dbg !2631, !tbaa !488
  %190 = icmp eq i8* %188, null, !dbg !2632
  br i1 %190, label %210, label %191, !dbg !2633

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i64 9, metadata !2620, metadata !DIExpression()), !dbg !2623
  %192 = icmp sgt i32 %185, -1, !dbg !2627
  br i1 %192, label %200, label %193, !dbg !2627

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2627
  store i32 %194, i32* %8, align 8, !dbg !2627
  %195 = icmp ult i32 %185, -7, !dbg !2627
  br i1 %195, label %196, label %200, !dbg !2627

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2627
  %198 = sext i32 %185 to i64, !dbg !2627
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2627
  br label %203, !dbg !2627

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2627
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2627
  store i8* %202, i8** %10, align 8, !dbg !2627
  br label %203, !dbg !2627

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2627
  %206 = load i8*, i8** %205, align 8, !dbg !2627
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2630
  store i8* %206, i8** %207, align 8, !dbg !2631, !tbaa !488
  %208 = icmp eq i8* %206, null, !dbg !2632
  %209 = select i1 %208, i64 9, i64 10, !dbg !2633
  br label %210, !dbg !2633

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2634
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2635
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #34, !dbg !2636
  ret void, !dbg !2636
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2637 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2641, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %1, metadata !2642, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %2, metadata !2643, metadata !DIExpression()), !dbg !2646
  call void @llvm.dbg.value(metadata i8* %3, metadata !2644, metadata !DIExpression()), !dbg !2646
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2647
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2647
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2645, metadata !DIExpression()), !dbg !2648
  call void @llvm.va_start(i8* nonnull %7), !dbg !2649
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2650
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2650, !tbaa.struct !933
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2650
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #34, !dbg !2650
  call void @llvm.va_end(i8* nonnull %7), !dbg !2651
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #34, !dbg !2652
  ret void, !dbg !2652
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2653 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2654, !tbaa !488
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2654
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.103, i64 0, i64 0), i32 noundef 5) #34, !dbg !2655
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.104, i64 0, i64 0)) #34, !dbg !2655
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.105, i64 0, i64 0), i32 noundef 5) #34, !dbg !2656
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.107, i64 0, i64 0)) #34, !dbg !2656
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.108, i64 0, i64 0), i32 noundef 5) #34, !dbg !2657
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.109, i64 0, i64 0)) #34, !dbg !2657
  ret void, !dbg !2658
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2659 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 %1, metadata !2665, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 %2, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()) #34, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %1, metadata !2671, metadata !DIExpression()) #34, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %2, metadata !2672, metadata !DIExpression()) #34, !dbg !2673
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2675
  call void @llvm.dbg.value(metadata i8* %4, metadata !2676, metadata !DIExpression()) #34, !dbg !2681
  %5 = icmp eq i8* %4, null, !dbg !2683
  br i1 %5, label %6, label %7, !dbg !2685

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2686
  unreachable, !dbg !2686

7:                                                ; preds = %3
  ret i8* %4, !dbg !2687
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2669 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %1, metadata !2671, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %2, metadata !2672, metadata !DIExpression()), !dbg !2688
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %4, metadata !2676, metadata !DIExpression()) #34, !dbg !2690
  %5 = icmp eq i8* %4, null, !dbg !2692
  br i1 %5, label %6, label %7, !dbg !2693

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2694
  unreachable, !dbg !2694

7:                                                ; preds = %3
  ret i8* %4, !dbg !2695
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2696 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2700, metadata !DIExpression()), !dbg !2701
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2702
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #34, !dbg !2703
  %3 = icmp eq i8* %2, null, !dbg !2705
  br i1 %3, label %4, label %5, !dbg !2706

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2707
  unreachable, !dbg !2707

5:                                                ; preds = %1
  ret i8* %2, !dbg !2708
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2709 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2713, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i64 %0, metadata !2715, metadata !DIExpression()) #34, !dbg !2719
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2721
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #34, !dbg !2722
  %3 = icmp eq i8* %2, null, !dbg !2724
  br i1 %3, label %4, label %5, !dbg !2725

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2726
  unreachable, !dbg !2726

5:                                                ; preds = %1
  ret i8* %2, !dbg !2727
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2728 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2732, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i64 %0, metadata !2700, metadata !DIExpression()) #34, !dbg !2734
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #34, !dbg !2736
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #34, !dbg !2737
  %3 = icmp eq i8* %2, null, !dbg !2739
  br i1 %3, label %4, label %5, !dbg !2740

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2741
  unreachable, !dbg !2741

5:                                                ; preds = %1
  ret i8* %2, !dbg !2742
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2743 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i64 %1, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()) #34, !dbg !2755
  call void @llvm.dbg.value(metadata i64 %1, metadata !2754, metadata !DIExpression()) #34, !dbg !2755
  %3 = icmp eq i64 %1, 0, !dbg !2757
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2757
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2758
  call void @llvm.dbg.value(metadata i8* %5, metadata !2676, metadata !DIExpression()) #34, !dbg !2759
  %6 = icmp eq i8* %5, null, !dbg !2761
  br i1 %6, label %7, label %8, !dbg !2762

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2763
  unreachable, !dbg !2763

8:                                                ; preds = %2
  ret i8* %5, !dbg !2764
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2765 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2772, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i64 %1, metadata !2775, metadata !DIExpression()) #34, !dbg !2776
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()) #34, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %1, metadata !2754, metadata !DIExpression()) #34, !dbg !2778
  %3 = icmp eq i64 %1, 0, !dbg !2780
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2780
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #34, !dbg !2781
  call void @llvm.dbg.value(metadata i8* %5, metadata !2676, metadata !DIExpression()) #34, !dbg !2782
  %6 = icmp eq i8* %5, null, !dbg !2784
  br i1 %6, label %7, label %8, !dbg !2785

7:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2786
  unreachable, !dbg !2786

8:                                                ; preds = %2
  ret i8* %5, !dbg !2787
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2788 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2792, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %1, metadata !2793, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i64 %2, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %0, metadata !2796, metadata !DIExpression()) #34, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %1, metadata !2799, metadata !DIExpression()) #34, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %2, metadata !2800, metadata !DIExpression()) #34, !dbg !2801
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #34, !dbg !2803
  call void @llvm.dbg.value(metadata i8* %4, metadata !2676, metadata !DIExpression()) #34, !dbg !2804
  %5 = icmp eq i8* %4, null, !dbg !2806
  br i1 %5, label %6, label %7, !dbg !2807

6:                                                ; preds = %3
  tail call void @xalloc_die() #36, !dbg !2808
  unreachable, !dbg !2808

7:                                                ; preds = %3
  ret i8* %4, !dbg !2809
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2810 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2814, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2815, metadata !DIExpression()), !dbg !2816
  call void @llvm.dbg.value(metadata i8* null, metadata !2668, metadata !DIExpression()) #34, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %0, metadata !2671, metadata !DIExpression()) #34, !dbg !2817
  call void @llvm.dbg.value(metadata i64 %1, metadata !2672, metadata !DIExpression()) #34, !dbg !2817
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !2820
  %4 = icmp eq i8* %3, null, !dbg !2822
  br i1 %4, label %5, label %6, !dbg !2823

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2824
  unreachable, !dbg !2824

6:                                                ; preds = %2
  ret i8* %3, !dbg !2825
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2826 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* null, metadata !2792, metadata !DIExpression()) #34, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %0, metadata !2793, metadata !DIExpression()) #34, !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2794, metadata !DIExpression()) #34, !dbg !2833
  call void @llvm.dbg.value(metadata i8* null, metadata !2796, metadata !DIExpression()) #34, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %0, metadata !2799, metadata !DIExpression()) #34, !dbg !2835
  call void @llvm.dbg.value(metadata i64 %1, metadata !2800, metadata !DIExpression()) #34, !dbg !2835
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #34, !dbg !2837
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !2838
  %4 = icmp eq i8* %3, null, !dbg !2840
  br i1 %4, label %5, label %6, !dbg !2841

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2842
  unreachable, !dbg !2842

6:                                                ; preds = %2
  ret i8* %3, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2844 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2848, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i64* %1, metadata !2849, metadata !DIExpression()), !dbg !2850
  call void @llvm.dbg.value(metadata i8* %0, metadata !417, metadata !DIExpression()) #34, !dbg !2851
  call void @llvm.dbg.value(metadata i64* %1, metadata !418, metadata !DIExpression()) #34, !dbg !2851
  call void @llvm.dbg.value(metadata i64 1, metadata !419, metadata !DIExpression()) #34, !dbg !2851
  %3 = load i64, i64* %1, align 8, !dbg !2853, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %3, metadata !420, metadata !DIExpression()) #34, !dbg !2851
  %4 = icmp eq i8* %0, null, !dbg !2854
  br i1 %4, label %5, label %8, !dbg !2856

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2857
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2860
  br label %15, !dbg !2860

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2861
  %10 = add nuw i64 %9, 1, !dbg !2861
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #34, !dbg !2861
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2861
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %13, metadata !420, metadata !DIExpression()) #34, !dbg !2851
  br i1 %12, label %14, label %15, !dbg !2864

14:                                               ; preds = %8
  tail call void @xalloc_die() #36, !dbg !2865
  unreachable, !dbg !2865

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2851
  call void @llvm.dbg.value(metadata i64 %16, metadata !420, metadata !DIExpression()) #34, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()) #34, !dbg !2866
  call void @llvm.dbg.value(metadata i64 %16, metadata !2671, metadata !DIExpression()) #34, !dbg !2866
  call void @llvm.dbg.value(metadata i64 1, metadata !2672, metadata !DIExpression()) #34, !dbg !2866
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #34, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %17, metadata !2676, metadata !DIExpression()) #34, !dbg !2869
  %18 = icmp eq i8* %17, null, !dbg !2871
  br i1 %18, label %19, label %20, !dbg !2872

19:                                               ; preds = %15
  tail call void @xalloc_die() #36, !dbg !2873
  unreachable, !dbg !2873

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !417, metadata !DIExpression()) #34, !dbg !2851
  store i64 %16, i64* %1, align 8, !dbg !2874, !tbaa !775
  ret i8* %17, !dbg !2875
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !412 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !417, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64* %1, metadata !418, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %2, metadata !419, metadata !DIExpression()), !dbg !2876
  %4 = load i64, i64* %1, align 8, !dbg !2877, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %4, metadata !420, metadata !DIExpression()), !dbg !2876
  %5 = icmp eq i8* %0, null, !dbg !2878
  br i1 %5, label %6, label %13, !dbg !2879

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2880
  br i1 %7, label %8, label %20, !dbg !2881

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2882
  call void @llvm.dbg.value(metadata i64 %9, metadata !420, metadata !DIExpression()), !dbg !2876
  %10 = icmp ugt i64 %2, 128, !dbg !2884
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %12, metadata !420, metadata !DIExpression()), !dbg !2876
  br label %20, !dbg !2886

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2887
  %15 = add nuw i64 %14, 1, !dbg !2887
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2887
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2887
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2887
  call void @llvm.dbg.value(metadata i64 %18, metadata !420, metadata !DIExpression()), !dbg !2876
  br i1 %17, label %19, label %20, !dbg !2888

19:                                               ; preds = %13
  tail call void @xalloc_die() #36, !dbg !2889
  unreachable, !dbg !2889

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2876
  call void @llvm.dbg.value(metadata i64 %21, metadata !420, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i8* %0, metadata !2668, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %21, metadata !2671, metadata !DIExpression()) #34, !dbg !2890
  call void @llvm.dbg.value(metadata i64 %2, metadata !2672, metadata !DIExpression()) #34, !dbg !2890
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #34, !dbg !2892
  call void @llvm.dbg.value(metadata i8* %22, metadata !2676, metadata !DIExpression()) #34, !dbg !2893
  %23 = icmp eq i8* %22, null, !dbg !2895
  br i1 %23, label %24, label %25, !dbg !2896

24:                                               ; preds = %20
  tail call void @xalloc_die() #36, !dbg !2897
  unreachable, !dbg !2897

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !417, metadata !DIExpression()), !dbg !2876
  store i64 %21, i64* %1, align 8, !dbg !2898, !tbaa !775
  ret i8* %22, !dbg !2899
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !424 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !432, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64* %1, metadata !433, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %2, metadata !434, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %3, metadata !435, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %4, metadata !436, metadata !DIExpression()), !dbg !2900
  %6 = load i64, i64* %1, align 8, !dbg !2901, !tbaa !775
  call void @llvm.dbg.value(metadata i64 %6, metadata !437, metadata !DIExpression()), !dbg !2900
  %7 = ashr i64 %6, 1, !dbg !2902
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2902
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2902
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %10, metadata !438, metadata !DIExpression()), !dbg !2900
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %11, metadata !438, metadata !DIExpression()), !dbg !2900
  %12 = icmp sgt i64 %3, -1, !dbg !2905
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2907
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2907
  call void @llvm.dbg.value(metadata i64 %15, metadata !438, metadata !DIExpression()), !dbg !2900
  %16 = icmp slt i64 %4, 0, !dbg !2908
  br i1 %16, label %17, label %30, !dbg !2908

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2908
  br i1 %18, label %19, label %24, !dbg !2908

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2908
  %21 = udiv i64 9223372036854775807, %20, !dbg !2908
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2908
  br i1 %23, label %46, label %43, !dbg !2908

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2908
  br i1 %25, label %43, label %26, !dbg !2908

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2908
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2908
  %29 = icmp ult i64 %28, %15, !dbg !2908
  br i1 %29, label %46, label %43, !dbg !2908

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2908
  br i1 %31, label %43, label %32, !dbg !2908

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2908
  br i1 %33, label %34, label %40, !dbg !2908

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2908
  br i1 %35, label %43, label %36, !dbg !2908

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2908
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2908
  %39 = icmp ult i64 %38, %4, !dbg !2908
  br i1 %39, label %46, label %43, !dbg !2908

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2908
  %42 = icmp ult i64 %41, %15, !dbg !2908
  br i1 %42, label %46, label %43, !dbg !2908

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !439, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2900
  %44 = mul i64 %15, %4, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %44, metadata !439, metadata !DIExpression()), !dbg !2900
  %45 = icmp slt i64 %44, 128, !dbg !2908
  br i1 %45, label %46, label %52, !dbg !2908

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !440, metadata !DIExpression()), !dbg !2900
  %48 = sdiv i64 %47, %4, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %48, metadata !438, metadata !DIExpression()), !dbg !2900
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %51, metadata !439, metadata !DIExpression()), !dbg !2900
  br label %52, !dbg !2913

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2900
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2900
  call void @llvm.dbg.value(metadata i64 %54, metadata !439, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %53, metadata !438, metadata !DIExpression()), !dbg !2900
  %55 = icmp eq i8* %0, null, !dbg !2914
  br i1 %55, label %56, label %57, !dbg !2916

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2917, !tbaa !775
  br label %57, !dbg !2918

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2919
  %59 = icmp slt i64 %58, %2, !dbg !2921
  br i1 %59, label %60, label %97, !dbg !2922

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2923
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2923
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %63, metadata !438, metadata !DIExpression()), !dbg !2900
  br i1 %62, label %96, label %64, !dbg !2924

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2925
  br i1 %66, label %96, label %67, !dbg !2925

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2926

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2926
  br i1 %69, label %70, label %75, !dbg !2926

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2926
  %72 = udiv i64 9223372036854775807, %71, !dbg !2926
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2926
  br i1 %74, label %96, label %94, !dbg !2926

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2926
  br i1 %76, label %94, label %77, !dbg !2926

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2926
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2926
  %80 = icmp ult i64 %79, %63, !dbg !2926
  br i1 %80, label %96, label %94, !dbg !2926

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2926
  br i1 %82, label %94, label %83, !dbg !2926

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2926
  br i1 %84, label %85, label %91, !dbg !2926

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2926
  br i1 %86, label %94, label %87, !dbg !2926

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2926
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2926
  %90 = icmp ult i64 %89, %4, !dbg !2926
  br i1 %90, label %96, label %94, !dbg !2926

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2926
  %93 = icmp ult i64 %92, %63, !dbg !2926
  br i1 %93, label %96, label %94, !dbg !2926

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !439, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2900
  %95 = mul i64 %63, %4, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %95, metadata !439, metadata !DIExpression()), !dbg !2900
  br label %97, !dbg !2927

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #36, !dbg !2928
  unreachable, !dbg !2928

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2900
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2900
  call void @llvm.dbg.value(metadata i64 %99, metadata !439, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i64 %98, metadata !438, metadata !DIExpression()), !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2747, metadata !DIExpression()) #34, !dbg !2929
  call void @llvm.dbg.value(metadata i64 %99, metadata !2748, metadata !DIExpression()) #34, !dbg !2929
  call void @llvm.dbg.value(metadata i8* %0, metadata !2750, metadata !DIExpression()) #34, !dbg !2931
  call void @llvm.dbg.value(metadata i64 %99, metadata !2754, metadata !DIExpression()) #34, !dbg !2931
  %100 = icmp eq i64 %99, 0, !dbg !2933
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2933
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #34, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %102, metadata !2676, metadata !DIExpression()) #34, !dbg !2935
  %103 = icmp eq i8* %102, null, !dbg !2937
  br i1 %103, label %104, label %105, !dbg !2938

104:                                              ; preds = %97
  tail call void @xalloc_die() #36, !dbg !2939
  unreachable, !dbg !2939

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !432, metadata !DIExpression()), !dbg !2900
  store i64 %98, i64* %1, align 8, !dbg !2940, !tbaa !775
  ret i8* %102, !dbg !2941
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2942 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()) #34, !dbg !2950
  call void @llvm.dbg.value(metadata i64 1, metadata !2949, metadata !DIExpression()) #34, !dbg !2950
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !2952
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #34, !dbg !2953
  %3 = icmp eq i8* %2, null, !dbg !2955
  br i1 %3, label %4, label %5, !dbg !2956

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2957
  unreachable, !dbg !2957

5:                                                ; preds = %1
  ret i8* %2, !dbg !2958
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2947 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()), !dbg !2959
  call void @llvm.dbg.value(metadata i64 %1, metadata !2949, metadata !DIExpression()), !dbg !2959
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !2960
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !2961
  %4 = icmp eq i8* %3, null, !dbg !2963
  br i1 %4, label %5, label %6, !dbg !2964

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2965
  unreachable, !dbg !2965

6:                                                ; preds = %2
  ret i8* %3, !dbg !2966
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2967 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2969, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()) #34, !dbg !2975
  call void @llvm.dbg.value(metadata i64 1, metadata !2974, metadata !DIExpression()) #34, !dbg !2975
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()) #34, !dbg !2981
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()) #34, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()) #34, !dbg !2981
  call void @llvm.dbg.value(metadata i64 1, metadata !2980, metadata !DIExpression()) #34, !dbg !2981
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #34, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %2, metadata !2676, metadata !DIExpression()) #34, !dbg !2984
  %3 = icmp eq i8* %2, null, !dbg !2986
  br i1 %3, label %4, label %5, !dbg !2987

4:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !2988
  unreachable, !dbg !2988

5:                                                ; preds = %1
  ret i8* %2, !dbg !2989
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2971, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %1, metadata !2974, metadata !DIExpression()), !dbg !2990
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()) #34, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %1, metadata !2980, metadata !DIExpression()) #34, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %0, metadata !2977, metadata !DIExpression()) #34, !dbg !2991
  call void @llvm.dbg.value(metadata i64 %1, metadata !2980, metadata !DIExpression()) #34, !dbg !2991
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #34, !dbg !2993
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !2994
  %4 = icmp eq i8* %3, null, !dbg !2996
  br i1 %4, label %5, label %6, !dbg !2997

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !2998
  unreachable, !dbg !2998

6:                                                ; preds = %2
  ret i8* %3, !dbg !2999
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3000 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3004, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !3005, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata i64 %1, metadata !2700, metadata !DIExpression()) #34, !dbg !3007
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3009
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !3010
  %4 = icmp eq i8* %3, null, !dbg !3012
  br i1 %4, label %5, label %6, !dbg !3013

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3014
  unreachable, !dbg !3014

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3015, metadata !DIExpression()) #34, !dbg !3023
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #34, !dbg !3023
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()) #34, !dbg !3023
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3025
  ret i8* %3, !dbg !3026
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3027 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i64 %1, metadata !2713, metadata !DIExpression()) #34, !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()) #34, !dbg !3036
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #34, !dbg !3038
  call void @llvm.dbg.value(metadata i8* %3, metadata !2676, metadata !DIExpression()) #34, !dbg !3039
  %4 = icmp eq i8* %3, null, !dbg !3041
  br i1 %4, label %5, label %6, !dbg !3042

5:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3043
  unreachable, !dbg !3043

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3015, metadata !DIExpression()) #34, !dbg !3044
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #34, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()) #34, !dbg !3044
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3046
  ret i8* %3, !dbg !3047
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3048 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3052, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %1, metadata !3053, metadata !DIExpression()), !dbg !3055
  %3 = add nsw i64 %1, 1, !dbg !3056
  call void @llvm.dbg.value(metadata i64 %3, metadata !2713, metadata !DIExpression()) #34, !dbg !3057
  call void @llvm.dbg.value(metadata i64 %3, metadata !2715, metadata !DIExpression()) #34, !dbg !3059
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %4, metadata !2676, metadata !DIExpression()) #34, !dbg !3062
  %5 = icmp eq i8* %4, null, !dbg !3064
  br i1 %5, label %6, label %7, !dbg !3065

6:                                                ; preds = %2
  tail call void @xalloc_die() #36, !dbg !3066
  unreachable, !dbg !3066

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3054, metadata !DIExpression()), !dbg !3055
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3067
  store i8 0, i8* %8, align 1, !dbg !3068, !tbaa !594
  call void @llvm.dbg.value(metadata i8* %4, metadata !3015, metadata !DIExpression()) #34, !dbg !3069
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #34, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()) #34, !dbg !3069
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #34, !dbg !3071
  ret i8* %4, !dbg !3072
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3075, metadata !DIExpression()), !dbg !3076
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #35, !dbg !3077
  %3 = add i64 %2, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %0, metadata !3004, metadata !DIExpression()) #34, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %3, metadata !3005, metadata !DIExpression()) #34, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %3, metadata !2700, metadata !DIExpression()) #34, !dbg !3081
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #34, !dbg !3083
  call void @llvm.dbg.value(metadata i8* %4, metadata !2676, metadata !DIExpression()) #34, !dbg !3084
  %5 = icmp eq i8* %4, null, !dbg !3086
  br i1 %5, label %6, label %7, !dbg !3087

6:                                                ; preds = %1
  tail call void @xalloc_die() #36, !dbg !3088
  unreachable, !dbg !3088

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3015, metadata !DIExpression()) #34, !dbg !3089
  call void @llvm.dbg.value(metadata i8* %0, metadata !3021, metadata !DIExpression()) #34, !dbg !3089
  call void @llvm.dbg.value(metadata i64 %3, metadata !3022, metadata !DIExpression()) #34, !dbg !3089
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #34, !dbg !3091
  ret i8* %4, !dbg !3092
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3093 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3097, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %1, metadata !3095, metadata !DIExpression()), !dbg !3098
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.121, i64 0, i64 0), i32 noundef 5) #34, !dbg !3097
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* noundef %2) #34, !dbg !3097
  %3 = icmp eq i32 %1, 0, !dbg !3097
  tail call void @llvm.assume(i1 %3), !dbg !3097
  tail call void @abort() #36, !dbg !3099
  unreachable, !dbg !3099
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @xstrtol(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #30 !dbg !3100 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3106, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8** %1, metadata !3107, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 %2, metadata !3108, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64* %3, metadata !3109, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* %4, metadata !3110, metadata !DIExpression()), !dbg !3120
  %7 = bitcast i8** %6 to i8*, !dbg !3121
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #34, !dbg !3121
  %8 = icmp eq i8** %1, null, !dbg !3122
  %9 = select i1 %8, i8** %6, i8** %1, !dbg !3122
  call void @llvm.dbg.value(metadata i8** %9, metadata !3112, metadata !DIExpression()), !dbg !3120
  %10 = tail call i32* @__errno_location() #37, !dbg !3123
  store i32 0, i32* %10, align 4, !dbg !3124, !tbaa !585
  %11 = call i64 @strtol(i8* noundef %0, i8** noundef %9, i32 noundef %2) #34, !dbg !3125
  call void @llvm.dbg.value(metadata i64 %11, metadata !3113, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i32 0, metadata !3114, metadata !DIExpression()), !dbg !3120
  %12 = load i8*, i8** %9, align 8, !dbg !3126, !tbaa !488
  %13 = icmp eq i8* %12, %0, !dbg !3128
  br i1 %13, label %14, label %23, !dbg !3129

14:                                               ; preds = %5
  %15 = icmp eq i8* %4, null, !dbg !3130
  br i1 %15, label %1077, label %16, !dbg !3133

16:                                               ; preds = %14
  %17 = load i8, i8* %0, align 1, !dbg !3134, !tbaa !594
  %18 = icmp eq i8 %17, 0, !dbg !3134
  br i1 %18, label %1077, label %19, !dbg !3135

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !3134
  %21 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %20) #35, !dbg !3136
  %22 = icmp eq i8* %21, null, !dbg !3136
  br i1 %22, label %1077, label %30, !dbg !3137

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !3138, !tbaa !585
  switch i32 %24, label %1077 [
    i32 0, label %26
    i32 34, label %25
  ], !dbg !3140

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !3114, metadata !DIExpression()), !dbg !3120
  br label %26, !dbg !3141

26:                                               ; preds = %23, %25
  %27 = phi i32 [ 1, %25 ], [ %24, %23 ], !dbg !3120
  call void @llvm.dbg.value(metadata i32 %27, metadata !3114, metadata !DIExpression()), !dbg !3120
  %28 = icmp eq i8* %4, null, !dbg !3143
  br i1 %28, label %29, label %30, !dbg !3145

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %11, metadata !3113, metadata !DIExpression()), !dbg !3120
  store i64 %11, i64* %3, align 8, !dbg !3146, !tbaa !775
  br label %1077, !dbg !3148

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %32 = phi i64 [ %11, %26 ], [ 1, %19 ]
  %33 = load i8, i8* %12, align 1, !dbg !3149, !tbaa !594
  %34 = icmp eq i8 %33, 0, !dbg !3150
  br i1 %34, label %1074, label %35, !dbg !3151

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32, !dbg !3149
  %37 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef %36) #35, !dbg !3152
  %38 = icmp eq i8* %37, null, !dbg !3152
  br i1 %38, label %39, label %41, !dbg !3154

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %11, metadata !3113, metadata !DIExpression()), !dbg !3120
  store i64 %32, i64* %3, align 8, !dbg !3155, !tbaa !775
  %40 = or i32 %31, 2, !dbg !3157
  br label %1077, !dbg !3158

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 1, metadata !3118, metadata !DIExpression()), !dbg !3159
  switch i8 %33, label %54 [
    i8 69, label %42
    i8 71, label %42
    i8 103, label %42
    i8 107, label %42
    i8 75, label %42
    i8 77, label %42
    i8 109, label %42
    i8 80, label %42
    i8 81, label %42
    i8 82, label %42
    i8 84, label %42
    i8 116, label %42
    i8 89, label %42
    i8 90, label %42
  ], !dbg !3160

42:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %43 = tail call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #35, !dbg !3161
  %44 = icmp eq i8* %43, null, !dbg !3161
  br i1 %44, label %54, label %45, !dbg !3164

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3165
  %47 = load i8, i8* %46, align 1, !dbg !3165, !tbaa !594
  switch i8 %47, label %54 [
    i8 105, label %48
    i8 66, label %53
    i8 68, label %53
  ], !dbg !3166

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !3167
  %50 = load i8, i8* %49, align 1, !dbg !3167, !tbaa !594
  %51 = icmp eq i8 %50, 66, !dbg !3170
  %52 = select i1 %51, i64 3, i64 1, !dbg !3171
  br label %54, !dbg !3171

53:                                               ; preds = %45, %45
  call void @llvm.dbg.value(metadata i32 1000, metadata !3115, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 2, metadata !3118, metadata !DIExpression()), !dbg !3159
  br label %54, !dbg !3172

54:                                               ; preds = %48, %42, %45, %53, %41
  %55 = phi i64 [ 1024, %41 ], [ 1024, %45 ], [ 1000, %53 ], [ 1024, %42 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %41 ], [ 1, %45 ], [ 2, %53 ], [ 1, %42 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3118, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 undef, metadata !3115, metadata !DIExpression()), !dbg !3159
  switch i8 %33, label %1072 [
    i8 98, label %69
    i8 66, label %78
    i8 99, label %1063
    i8 69, label %67
    i8 71, label %191
    i8 103, label %191
    i8 107, label %241
    i8 75, label %241
    i8 77, label %254
    i8 109, label %254
    i8 80, label %65
    i8 81, label %63
    i8 82, label %61
    i8 84, label %720
    i8 116, label %720
    i8 119, label %786
    i8 89, label %59
    i8 90, label %57
  ], !dbg !3173

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 7, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 6, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %58 = icmp slt i64 %32, 0, !dbg !3194
  br i1 %58, label %939, label %945, !dbg !3194

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 8, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 7, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %60 = icmp slt i64 %32, 0, !dbg !3200
  br i1 %60, label %795, label %801, !dbg !3200

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 9, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 8, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %62 = icmp slt i64 %32, 0, !dbg !3205
  br i1 %62, label %556, label %562, !dbg !3205

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 10, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 9, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %64 = icmp slt i64 %32, 0, !dbg !3210
  br i1 %64, label %372, label %378, !dbg !3210

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  %66 = icmp slt i64 %32, 0, !dbg !3215
  br i1 %66, label %288, label %294, !dbg !3215

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 6, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %68 = icmp slt i64 %32, 0, !dbg !3220
  br i1 %68, label %87, label %93, !dbg !3220

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 512, metadata !3190, metadata !DIExpression()), !dbg !3221
  %70 = icmp slt i64 %32, 0, !dbg !3223
  br i1 %70, label %71, label %74, !dbg !3223

71:                                               ; preds = %69
  %72 = add i64 %32, -1, !dbg !3223
  %73 = icmp ult i64 %72, -18014398509481985, !dbg !3223
  br i1 %73, label %1063, label %76, !dbg !3223

74:                                               ; preds = %69
  %75 = icmp ugt i64 %32, 18014398509481983, !dbg !3223
  br i1 %75, label %1063, label %76, !dbg !3223

76:                                               ; preds = %74, %71
  %77 = shl nsw i64 %32, 9, !dbg !3223
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 512), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3221
  br label %1063, !dbg !3224

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3225
  call void @llvm.dbg.value(metadata i32 1024, metadata !3190, metadata !DIExpression()), !dbg !3225
  %79 = icmp slt i64 %32, 0, !dbg !3227
  br i1 %79, label %80, label %83, !dbg !3227

80:                                               ; preds = %78
  %81 = add i64 %32, -1, !dbg !3227
  %82 = icmp ult i64 %81, -9007199254740993, !dbg !3227
  br i1 %82, label %1063, label %85, !dbg !3227

83:                                               ; preds = %78
  %84 = icmp ugt i64 %32, 9007199254740991, !dbg !3227
  br i1 %84, label %1063, label %85, !dbg !3227

85:                                               ; preds = %83, %80
  %86 = shl nsw i64 %32, 10, !dbg !3227
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 1024), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3225
  br label %1063, !dbg !3228

87:                                               ; preds = %67
  %88 = icmp eq i64 %32, -1, !dbg !3220
  br i1 %88, label %96, label %89, !dbg !3220

89:                                               ; preds = %87
  %90 = sub i64 0, %32, !dbg !3220
  %91 = udiv i64 -9223372036854775808, %90, !dbg !3220
  %92 = icmp ult i64 %91, %55, !dbg !3220
  br i1 %92, label %104, label %96, !dbg !3220

93:                                               ; preds = %67
  %94 = udiv i64 9223372036854775807, %55, !dbg !3220
  %95 = icmp ult i64 %94, %32, !dbg !3220
  br i1 %95, label %99, label %96, !dbg !3220

96:                                               ; preds = %87, %89, %93
  %97 = mul i64 %32, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %98 = icmp slt i64 %97, 0, !dbg !3220
  br i1 %98, label %104, label %99, !dbg !3220

99:                                               ; preds = %93, %96
  %100 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %101 = phi i64 [ %97, %96 ], [ 9223372036854775807, %93 ]
  %102 = udiv i64 9223372036854775807, %55, !dbg !3220
  %103 = icmp ult i64 %102, %101, !dbg !3220
  br i1 %103, label %115, label %110, !dbg !3220

104:                                              ; preds = %89, %96
  %105 = phi i32 [ 0, %96 ], [ 1, %89 ]
  %106 = phi i64 [ %97, %96 ], [ -9223372036854775808, %89 ]
  %107 = sub i64 0, %106, !dbg !3220
  %108 = udiv i64 -9223372036854775808, %107, !dbg !3220
  %109 = icmp slt i64 %108, %55, !dbg !3220
  br i1 %109, label %120, label %110, !dbg !3220

110:                                              ; preds = %99, %104
  %111 = phi i32 [ %105, %104 ], [ %100, %99 ]
  %112 = phi i64 [ %106, %104 ], [ %101, %99 ]
  %113 = mul i64 %112, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %97, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %111, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %114 = icmp slt i64 %113, 0, !dbg !3220
  br i1 %114, label %120, label %115, !dbg !3220

115:                                              ; preds = %99, %110
  %116 = phi i32 [ %111, %110 ], [ 1, %99 ]
  %117 = phi i64 [ %113, %110 ], [ 9223372036854775807, %99 ]
  %118 = udiv i64 9223372036854775807, %55, !dbg !3220
  %119 = icmp ult i64 %118, %117, !dbg !3220
  br i1 %119, label %131, label %126, !dbg !3220

120:                                              ; preds = %104, %110
  %121 = phi i32 [ %111, %110 ], [ 1, %104 ]
  %122 = phi i64 [ %113, %110 ], [ -9223372036854775808, %104 ]
  %123 = sub i64 0, %122, !dbg !3220
  %124 = udiv i64 -9223372036854775808, %123, !dbg !3220
  %125 = icmp slt i64 %124, %55, !dbg !3220
  br i1 %125, label %138, label %126, !dbg !3220

126:                                              ; preds = %115, %120
  %127 = phi i32 [ %121, %120 ], [ %116, %115 ]
  %128 = phi i64 [ %122, %120 ], [ %117, %115 ]
  %129 = mul i64 %128, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %113, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %127, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %130 = icmp slt i64 %129, 0, !dbg !3220
  br i1 %130, label %138, label %131, !dbg !3220

131:                                              ; preds = %115, %126
  %132 = phi i32 [ %127, %126 ], [ 1, %115 ]
  %133 = phi i64 [ %129, %126 ], [ 9223372036854775807, %115 ]
  %134 = udiv i64 9223372036854775807, %55, !dbg !3220
  %135 = icmp ult i64 %134, %133, !dbg !3220
  br i1 %135, label %136, label %146, !dbg !3220

136:                                              ; preds = %131
  %137 = or i32 %132, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %147, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  br label %151, !dbg !3220

138:                                              ; preds = %120, %126
  %139 = phi i32 [ %127, %126 ], [ 1, %120 ]
  %140 = phi i64 [ %129, %126 ], [ -9223372036854775808, %120 ]
  %141 = sub i64 0, %140, !dbg !3220
  %142 = udiv i64 -9223372036854775808, %141, !dbg !3220
  %143 = icmp slt i64 %142, %55, !dbg !3220
  br i1 %143, label %144, label %146, !dbg !3220

144:                                              ; preds = %138
  %145 = or i32 %139, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %147, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  br label %158, !dbg !3220

146:                                              ; preds = %131, %138
  %147 = phi i32 [ %139, %138 ], [ %132, %131 ]
  %148 = phi i64 [ %140, %138 ], [ %133, %131 ]
  %149 = mul i64 %148, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %129, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %147, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %150 = icmp slt i64 %149, 0, !dbg !3220
  br i1 %150, label %158, label %151, !dbg !3220

151:                                              ; preds = %136, %146
  %152 = phi i32 [ %137, %136 ], [ %147, %146 ]
  %153 = phi i64 [ 9223372036854775807, %136 ], [ %149, %146 ]
  %154 = udiv i64 9223372036854775807, %55, !dbg !3220
  %155 = icmp ult i64 %154, %153, !dbg !3220
  br i1 %155, label %156, label %166, !dbg !3220

156:                                              ; preds = %151
  %157 = or i32 %152, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %167, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  br label %171, !dbg !3220

158:                                              ; preds = %146, %144
  %159 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %160 = phi i64 [ -9223372036854775808, %144 ], [ %149, %146 ]
  %161 = sub i64 0, %160, !dbg !3220
  %162 = udiv i64 -9223372036854775808, %161, !dbg !3220
  %163 = icmp slt i64 %162, %55, !dbg !3220
  br i1 %163, label %164, label %166, !dbg !3220

164:                                              ; preds = %158
  %165 = or i32 %159, 1, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %167, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  br label %176, !dbg !3220

166:                                              ; preds = %151, %158
  %167 = phi i32 [ %159, %158 ], [ %152, %151 ]
  %168 = phi i64 [ %160, %158 ], [ %153, %151 ]
  %169 = mul i64 %168, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %149, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  call void @llvm.dbg.value(metadata i32 %167, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3218
  %170 = icmp slt i64 %169, 0, !dbg !3220
  br i1 %170, label %176, label %171, !dbg !3220

171:                                              ; preds = %156, %166
  %172 = phi i32 [ %157, %156 ], [ %167, %166 ]
  %173 = phi i64 [ 9223372036854775807, %156 ], [ %169, %166 ]
  %174 = udiv i64 9223372036854775807, %55, !dbg !3220
  %175 = icmp ult i64 %174, %173, !dbg !3220
  br i1 %175, label %186, label %182, !dbg !3220

176:                                              ; preds = %166, %164
  %177 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %178 = phi i64 [ -9223372036854775808, %164 ], [ %169, %166 ]
  %179 = sub i64 0, %178, !dbg !3220
  %180 = udiv i64 -9223372036854775808, %179, !dbg !3220
  %181 = icmp slt i64 %180, %55, !dbg !3220
  br i1 %181, label %186, label %182, !dbg !3220

182:                                              ; preds = %176, %171
  %183 = phi i32 [ %177, %176 ], [ %172, %171 ]
  %184 = phi i64 [ %178, %176 ], [ %173, %171 ]
  %185 = mul i64 %184, %55, !dbg !3220
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3218
  br label %186, !dbg !3230

186:                                              ; preds = %182, %176, %171
  %187 = phi i32 [ %183, %182 ], [ %172, %171 ], [ %177, %176 ]
  %188 = phi i64 [ %185, %182 ], [ 9223372036854775807, %171 ], [ -9223372036854775808, %176 ], !dbg !3218
  %189 = phi i32 [ 0, %182 ], [ 1, %171 ], [ 1, %176 ], !dbg !3218
  %190 = or i32 %189, %187, !dbg !3229
  call void @llvm.dbg.value(metadata i32 %190, metadata !3174, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3216
  br label %1063, !dbg !3231

191:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3179, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 undef, metadata !3180, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3234
  %192 = icmp slt i64 %32, 0, !dbg !3236
  br i1 %192, label %193, label %199, !dbg !3236

193:                                              ; preds = %191
  %194 = icmp eq i64 %32, -1, !dbg !3236
  br i1 %194, label %202, label %195, !dbg !3236

195:                                              ; preds = %193
  %196 = sub i64 0, %32, !dbg !3236
  %197 = udiv i64 -9223372036854775808, %196, !dbg !3236
  %198 = icmp ult i64 %197, %55, !dbg !3236
  br i1 %198, label %210, label %202, !dbg !3236

199:                                              ; preds = %191
  %200 = udiv i64 9223372036854775807, %55, !dbg !3236
  %201 = icmp ult i64 %200, %32, !dbg !3236
  br i1 %201, label %205, label %202, !dbg !3236

202:                                              ; preds = %193, %195, %199
  %203 = mul i64 %32, %55, !dbg !3236
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3234
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3234
  %204 = icmp slt i64 %203, 0, !dbg !3236
  br i1 %204, label %210, label %205, !dbg !3236

205:                                              ; preds = %199, %202
  %206 = phi i32 [ 0, %202 ], [ 1, %199 ]
  %207 = phi i64 [ %203, %202 ], [ 9223372036854775807, %199 ]
  %208 = udiv i64 9223372036854775807, %55, !dbg !3236
  %209 = icmp ult i64 %208, %207, !dbg !3236
  br i1 %209, label %221, label %216, !dbg !3236

210:                                              ; preds = %195, %202
  %211 = phi i32 [ 0, %202 ], [ 1, %195 ]
  %212 = phi i64 [ %203, %202 ], [ -9223372036854775808, %195 ]
  %213 = sub i64 0, %212, !dbg !3236
  %214 = udiv i64 -9223372036854775808, %213, !dbg !3236
  %215 = icmp slt i64 %214, %55, !dbg !3236
  br i1 %215, label %226, label %216, !dbg !3236

216:                                              ; preds = %205, %210
  %217 = phi i32 [ %211, %210 ], [ %206, %205 ]
  %218 = phi i64 [ %212, %210 ], [ %207, %205 ]
  %219 = mul i64 %218, %55, !dbg !3236
  call void @llvm.dbg.value(metadata !DIArgList(i64 %203, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3234
  call void @llvm.dbg.value(metadata i32 %217, metadata !3174, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3234
  %220 = icmp slt i64 %219, 0, !dbg !3236
  br i1 %220, label %226, label %221, !dbg !3236

221:                                              ; preds = %205, %216
  %222 = phi i32 [ %217, %216 ], [ 1, %205 ]
  %223 = phi i64 [ %219, %216 ], [ 9223372036854775807, %205 ]
  %224 = udiv i64 9223372036854775807, %55, !dbg !3236
  %225 = icmp ult i64 %224, %223, !dbg !3236
  br i1 %225, label %236, label %232, !dbg !3236

226:                                              ; preds = %210, %216
  %227 = phi i32 [ %217, %216 ], [ 1, %210 ]
  %228 = phi i64 [ %219, %216 ], [ -9223372036854775808, %210 ]
  %229 = sub i64 0, %228, !dbg !3236
  %230 = udiv i64 -9223372036854775808, %229, !dbg !3236
  %231 = icmp slt i64 %230, %55, !dbg !3236
  br i1 %231, label %236, label %232, !dbg !3236

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %227, %226 ], [ %222, %221 ]
  %234 = phi i64 [ %228, %226 ], [ %223, %221 ]
  %235 = mul i64 %234, %55, !dbg !3236
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3234
  br label %236, !dbg !3237

236:                                              ; preds = %232, %226, %221
  %237 = phi i32 [ %233, %232 ], [ %222, %221 ], [ %227, %226 ]
  %238 = phi i64 [ %235, %232 ], [ 9223372036854775807, %221 ], [ -9223372036854775808, %226 ], !dbg !3234
  %239 = phi i32 [ 0, %232 ], [ 1, %221 ], [ 1, %226 ], !dbg !3234
  %240 = or i32 %239, %237, !dbg !3238
  call void @llvm.dbg.value(metadata i32 %240, metadata !3174, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3232
  br label %1063, !dbg !3231

241:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3179, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 undef, metadata !3180, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.value(metadata i32 undef, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3239
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3241
  %242 = icmp slt i64 %32, 0, !dbg !3243
  br i1 %242, label %243, label %249, !dbg !3243

243:                                              ; preds = %241
  %244 = icmp eq i64 %32, -1, !dbg !3243
  br i1 %244, label %252, label %245, !dbg !3243

245:                                              ; preds = %243
  %246 = sub i64 0, %32, !dbg !3243
  %247 = udiv i64 -9223372036854775808, %246, !dbg !3243
  %248 = icmp ult i64 %247, %55, !dbg !3243
  br i1 %248, label %1063, label %252, !dbg !3243

249:                                              ; preds = %241
  %250 = udiv i64 9223372036854775807, %55, !dbg !3243
  %251 = icmp ult i64 %250, %32, !dbg !3243
  br i1 %251, label %1063, label %252, !dbg !3243

252:                                              ; preds = %249, %245, %243
  %253 = mul i64 %32, %55, !dbg !3243
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3241
  br label %1063, !dbg !3244

254:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3179, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 undef, metadata !3180, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3247
  %255 = icmp slt i64 %32, 0, !dbg !3249
  br i1 %255, label %256, label %262, !dbg !3249

256:                                              ; preds = %254
  %257 = icmp eq i64 %32, -1, !dbg !3249
  br i1 %257, label %265, label %258, !dbg !3249

258:                                              ; preds = %256
  %259 = sub i64 0, %32, !dbg !3249
  %260 = udiv i64 -9223372036854775808, %259, !dbg !3249
  %261 = icmp ult i64 %260, %55, !dbg !3249
  br i1 %261, label %273, label %265, !dbg !3249

262:                                              ; preds = %254
  %263 = udiv i64 9223372036854775807, %55, !dbg !3249
  %264 = icmp ult i64 %263, %32, !dbg !3249
  br i1 %264, label %268, label %265, !dbg !3249

265:                                              ; preds = %256, %258, %262
  %266 = mul i64 %32, %55, !dbg !3249
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3247
  %267 = icmp slt i64 %266, 0, !dbg !3249
  br i1 %267, label %273, label %268, !dbg !3249

268:                                              ; preds = %262, %265
  %269 = phi i32 [ 0, %265 ], [ 1, %262 ]
  %270 = phi i64 [ %266, %265 ], [ 9223372036854775807, %262 ]
  %271 = udiv i64 9223372036854775807, %55, !dbg !3249
  %272 = icmp ult i64 %271, %270, !dbg !3249
  br i1 %272, label %283, label %279, !dbg !3249

273:                                              ; preds = %258, %265
  %274 = phi i32 [ 0, %265 ], [ 1, %258 ]
  %275 = phi i64 [ %266, %265 ], [ -9223372036854775808, %258 ]
  %276 = sub i64 0, %275, !dbg !3249
  %277 = udiv i64 -9223372036854775808, %276, !dbg !3249
  %278 = icmp slt i64 %277, %55, !dbg !3249
  br i1 %278, label %283, label %279, !dbg !3249

279:                                              ; preds = %273, %268
  %280 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %281 = phi i64 [ %275, %273 ], [ %270, %268 ]
  %282 = mul i64 %281, %55, !dbg !3249
  call void @llvm.dbg.value(metadata !DIArgList(i64 %266, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3247
  br label %283, !dbg !3250

283:                                              ; preds = %279, %273, %268
  %284 = phi i32 [ %280, %279 ], [ %269, %268 ], [ %274, %273 ]
  %285 = phi i64 [ %282, %279 ], [ 9223372036854775807, %268 ], [ -9223372036854775808, %273 ], !dbg !3247
  %286 = phi i32 [ 0, %279 ], [ 1, %268 ], [ 1, %273 ], !dbg !3247
  %287 = or i32 %286, %284, !dbg !3251
  call void @llvm.dbg.value(metadata i32 %287, metadata !3174, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3245
  br label %1063, !dbg !3231

288:                                              ; preds = %65
  %289 = icmp eq i64 %32, -1, !dbg !3215
  br i1 %289, label %297, label %290, !dbg !3215

290:                                              ; preds = %288
  %291 = sub i64 0, %32, !dbg !3215
  %292 = udiv i64 -9223372036854775808, %291, !dbg !3215
  %293 = icmp ult i64 %292, %55, !dbg !3215
  br i1 %293, label %305, label %297, !dbg !3215

294:                                              ; preds = %65
  %295 = udiv i64 9223372036854775807, %55, !dbg !3215
  %296 = icmp ult i64 %295, %32, !dbg !3215
  br i1 %296, label %300, label %297, !dbg !3215

297:                                              ; preds = %288, %290, %294
  %298 = mul i64 %32, %55, !dbg !3215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  %299 = icmp slt i64 %298, 0, !dbg !3215
  br i1 %299, label %305, label %300, !dbg !3215

300:                                              ; preds = %294, %297
  %301 = phi i32 [ 0, %297 ], [ 1, %294 ]
  %302 = phi i64 [ %298, %297 ], [ 9223372036854775807, %294 ]
  %303 = udiv i64 9223372036854775807, %55, !dbg !3215
  %304 = icmp ult i64 %303, %302, !dbg !3215
  br i1 %304, label %316, label %311, !dbg !3215

305:                                              ; preds = %290, %297
  %306 = phi i32 [ 0, %297 ], [ 1, %290 ]
  %307 = phi i64 [ %298, %297 ], [ -9223372036854775808, %290 ]
  %308 = sub i64 0, %307, !dbg !3215
  %309 = udiv i64 -9223372036854775808, %308, !dbg !3215
  %310 = icmp slt i64 %309, %55, !dbg !3215
  br i1 %310, label %321, label %311, !dbg !3215

311:                                              ; preds = %300, %305
  %312 = phi i32 [ %306, %305 ], [ %301, %300 ]
  %313 = phi i64 [ %307, %305 ], [ %302, %300 ]
  %314 = mul i64 %313, %55, !dbg !3215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %298, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %312, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  %315 = icmp slt i64 %314, 0, !dbg !3215
  br i1 %315, label %321, label %316, !dbg !3215

316:                                              ; preds = %300, %311
  %317 = phi i32 [ %312, %311 ], [ 1, %300 ]
  %318 = phi i64 [ %314, %311 ], [ 9223372036854775807, %300 ]
  %319 = udiv i64 9223372036854775807, %55, !dbg !3215
  %320 = icmp ult i64 %319, %318, !dbg !3215
  br i1 %320, label %332, label %327, !dbg !3215

321:                                              ; preds = %305, %311
  %322 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %323 = phi i64 [ %314, %311 ], [ -9223372036854775808, %305 ]
  %324 = sub i64 0, %323, !dbg !3215
  %325 = udiv i64 -9223372036854775808, %324, !dbg !3215
  %326 = icmp slt i64 %325, %55, !dbg !3215
  br i1 %326, label %339, label %327, !dbg !3215

327:                                              ; preds = %316, %321
  %328 = phi i32 [ %322, %321 ], [ %317, %316 ]
  %329 = phi i64 [ %323, %321 ], [ %318, %316 ]
  %330 = mul i64 %329, %55, !dbg !3215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %314, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %328, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  %331 = icmp slt i64 %330, 0, !dbg !3215
  br i1 %331, label %339, label %332, !dbg !3215

332:                                              ; preds = %316, %327
  %333 = phi i32 [ %328, %327 ], [ 1, %316 ]
  %334 = phi i64 [ %330, %327 ], [ 9223372036854775807, %316 ]
  %335 = udiv i64 9223372036854775807, %55, !dbg !3215
  %336 = icmp ult i64 %335, %334, !dbg !3215
  br i1 %336, label %337, label %347, !dbg !3215

337:                                              ; preds = %332
  %338 = or i32 %333, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %348, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  br label %352, !dbg !3215

339:                                              ; preds = %321, %327
  %340 = phi i32 [ %328, %327 ], [ 1, %321 ]
  %341 = phi i64 [ %330, %327 ], [ -9223372036854775808, %321 ]
  %342 = sub i64 0, %341, !dbg !3215
  %343 = udiv i64 -9223372036854775808, %342, !dbg !3215
  %344 = icmp slt i64 %343, %55, !dbg !3215
  br i1 %344, label %345, label %347, !dbg !3215

345:                                              ; preds = %339
  %346 = or i32 %340, 1, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %348, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  br label %357, !dbg !3215

347:                                              ; preds = %332, %339
  %348 = phi i32 [ %340, %339 ], [ %333, %332 ]
  %349 = phi i64 [ %341, %339 ], [ %334, %332 ]
  %350 = mul i64 %349, %55, !dbg !3215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %330, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3213
  call void @llvm.dbg.value(metadata i32 %348, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3213
  %351 = icmp slt i64 %350, 0, !dbg !3215
  br i1 %351, label %357, label %352, !dbg !3215

352:                                              ; preds = %337, %347
  %353 = phi i32 [ %338, %337 ], [ %348, %347 ]
  %354 = phi i64 [ 9223372036854775807, %337 ], [ %350, %347 ]
  %355 = udiv i64 9223372036854775807, %55, !dbg !3215
  %356 = icmp ult i64 %355, %354, !dbg !3215
  br i1 %356, label %367, label %363, !dbg !3215

357:                                              ; preds = %347, %345
  %358 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %359 = phi i64 [ -9223372036854775808, %345 ], [ %350, %347 ]
  %360 = sub i64 0, %359, !dbg !3215
  %361 = udiv i64 -9223372036854775808, %360, !dbg !3215
  %362 = icmp slt i64 %361, %55, !dbg !3215
  br i1 %362, label %367, label %363, !dbg !3215

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %365 = phi i64 [ %359, %357 ], [ %354, %352 ]
  %366 = mul i64 %365, %55, !dbg !3215
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3213
  br label %367, !dbg !3253

367:                                              ; preds = %363, %357, %352
  %368 = phi i32 [ %364, %363 ], [ %353, %352 ], [ %358, %357 ]
  %369 = phi i64 [ %366, %363 ], [ 9223372036854775807, %352 ], [ -9223372036854775808, %357 ], !dbg !3213
  %370 = phi i32 [ 0, %363 ], [ 1, %352 ], [ 1, %357 ], !dbg !3213
  %371 = or i32 %370, %368, !dbg !3252
  call void @llvm.dbg.value(metadata i32 %371, metadata !3174, metadata !DIExpression()), !dbg !3211
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3211
  br label %1063, !dbg !3231

372:                                              ; preds = %63
  %373 = icmp eq i64 %32, -1, !dbg !3210
  br i1 %373, label %381, label %374, !dbg !3210

374:                                              ; preds = %372
  %375 = sub i64 0, %32, !dbg !3210
  %376 = udiv i64 -9223372036854775808, %375, !dbg !3210
  %377 = icmp ult i64 %376, %55, !dbg !3210
  br i1 %377, label %389, label %381, !dbg !3210

378:                                              ; preds = %63
  %379 = udiv i64 9223372036854775807, %55, !dbg !3210
  %380 = icmp ult i64 %379, %32, !dbg !3210
  br i1 %380, label %384, label %381, !dbg !3210

381:                                              ; preds = %372, %374, %378
  %382 = mul i64 %32, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 8, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %383 = icmp slt i64 %382, 0, !dbg !3210
  br i1 %383, label %389, label %384, !dbg !3210

384:                                              ; preds = %378, %381
  %385 = phi i32 [ 0, %381 ], [ 1, %378 ]
  %386 = phi i64 [ %382, %381 ], [ 9223372036854775807, %378 ]
  %387 = udiv i64 9223372036854775807, %55, !dbg !3210
  %388 = icmp ult i64 %387, %386, !dbg !3210
  br i1 %388, label %400, label %395, !dbg !3210

389:                                              ; preds = %374, %381
  %390 = phi i32 [ 0, %381 ], [ 1, %374 ]
  %391 = phi i64 [ %382, %381 ], [ -9223372036854775808, %374 ]
  %392 = sub i64 0, %391, !dbg !3210
  %393 = udiv i64 -9223372036854775808, %392, !dbg !3210
  %394 = icmp slt i64 %393, %55, !dbg !3210
  br i1 %394, label %405, label %395, !dbg !3210

395:                                              ; preds = %384, %389
  %396 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %397 = phi i64 [ %391, %389 ], [ %386, %384 ]
  %398 = mul i64 %397, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %382, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %396, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 7, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %399 = icmp slt i64 %398, 0, !dbg !3210
  br i1 %399, label %405, label %400, !dbg !3210

400:                                              ; preds = %384, %395
  %401 = phi i32 [ %396, %395 ], [ 1, %384 ]
  %402 = phi i64 [ %398, %395 ], [ 9223372036854775807, %384 ]
  %403 = udiv i64 9223372036854775807, %55, !dbg !3210
  %404 = icmp ult i64 %403, %402, !dbg !3210
  br i1 %404, label %416, label %411, !dbg !3210

405:                                              ; preds = %389, %395
  %406 = phi i32 [ %396, %395 ], [ 1, %389 ]
  %407 = phi i64 [ %398, %395 ], [ -9223372036854775808, %389 ]
  %408 = sub i64 0, %407, !dbg !3210
  %409 = udiv i64 -9223372036854775808, %408, !dbg !3210
  %410 = icmp slt i64 %409, %55, !dbg !3210
  br i1 %410, label %423, label %411, !dbg !3210

411:                                              ; preds = %400, %405
  %412 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %413 = phi i64 [ %407, %405 ], [ %402, %400 ]
  %414 = mul i64 %413, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %398, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %412, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 6, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %415 = icmp slt i64 %414, 0, !dbg !3210
  br i1 %415, label %423, label %416, !dbg !3210

416:                                              ; preds = %400, %411
  %417 = phi i32 [ %412, %411 ], [ 1, %400 ]
  %418 = phi i64 [ %414, %411 ], [ 9223372036854775807, %400 ]
  %419 = udiv i64 9223372036854775807, %55, !dbg !3210
  %420 = icmp ult i64 %419, %418, !dbg !3210
  br i1 %420, label %421, label %431, !dbg !3210

421:                                              ; preds = %416
  %422 = or i32 %417, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %432, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %436, !dbg !3210

423:                                              ; preds = %405, %411
  %424 = phi i32 [ %412, %411 ], [ 1, %405 ]
  %425 = phi i64 [ %414, %411 ], [ -9223372036854775808, %405 ]
  %426 = sub i64 0, %425, !dbg !3210
  %427 = udiv i64 -9223372036854775808, %426, !dbg !3210
  %428 = icmp slt i64 %427, %55, !dbg !3210
  br i1 %428, label %429, label %431, !dbg !3210

429:                                              ; preds = %423
  %430 = or i32 %424, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %432, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %443, !dbg !3210

431:                                              ; preds = %416, %423
  %432 = phi i32 [ %424, %423 ], [ %417, %416 ]
  %433 = phi i64 [ %425, %423 ], [ %418, %416 ]
  %434 = mul i64 %433, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %414, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %432, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %435 = icmp slt i64 %434, 0, !dbg !3210
  br i1 %435, label %443, label %436, !dbg !3210

436:                                              ; preds = %421, %431
  %437 = phi i32 [ %422, %421 ], [ %432, %431 ]
  %438 = phi i64 [ 9223372036854775807, %421 ], [ %434, %431 ]
  %439 = udiv i64 9223372036854775807, %55, !dbg !3210
  %440 = icmp ult i64 %439, %438, !dbg !3210
  br i1 %440, label %441, label %451, !dbg !3210

441:                                              ; preds = %436
  %442 = or i32 %437, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %452, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %456, !dbg !3210

443:                                              ; preds = %431, %429
  %444 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %445 = phi i64 [ -9223372036854775808, %429 ], [ %434, %431 ]
  %446 = sub i64 0, %445, !dbg !3210
  %447 = udiv i64 -9223372036854775808, %446, !dbg !3210
  %448 = icmp slt i64 %447, %55, !dbg !3210
  br i1 %448, label %449, label %451, !dbg !3210

449:                                              ; preds = %443
  %450 = or i32 %444, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %452, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %463, !dbg !3210

451:                                              ; preds = %436, %443
  %452 = phi i32 [ %444, %443 ], [ %437, %436 ]
  %453 = phi i64 [ %445, %443 ], [ %438, %436 ]
  %454 = mul i64 %453, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %434, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %452, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %455 = icmp slt i64 %454, 0, !dbg !3210
  br i1 %455, label %463, label %456, !dbg !3210

456:                                              ; preds = %441, %451
  %457 = phi i32 [ %442, %441 ], [ %452, %451 ]
  %458 = phi i64 [ 9223372036854775807, %441 ], [ %454, %451 ]
  %459 = udiv i64 9223372036854775807, %55, !dbg !3210
  %460 = icmp ult i64 %459, %458, !dbg !3210
  br i1 %460, label %461, label %471, !dbg !3210

461:                                              ; preds = %456
  %462 = or i32 %457, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %472, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %476, !dbg !3210

463:                                              ; preds = %451, %449
  %464 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %465 = phi i64 [ -9223372036854775808, %449 ], [ %454, %451 ]
  %466 = sub i64 0, %465, !dbg !3210
  %467 = udiv i64 -9223372036854775808, %466, !dbg !3210
  %468 = icmp slt i64 %467, %55, !dbg !3210
  br i1 %468, label %469, label %471, !dbg !3210

469:                                              ; preds = %463
  %470 = or i32 %464, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %472, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %483, !dbg !3210

471:                                              ; preds = %456, %463
  %472 = phi i32 [ %464, %463 ], [ %457, %456 ]
  %473 = phi i64 [ %465, %463 ], [ %458, %456 ]
  %474 = mul i64 %473, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %454, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %472, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %475 = icmp slt i64 %474, 0, !dbg !3210
  br i1 %475, label %483, label %476, !dbg !3210

476:                                              ; preds = %461, %471
  %477 = phi i32 [ %462, %461 ], [ %472, %471 ]
  %478 = phi i64 [ 9223372036854775807, %461 ], [ %474, %471 ]
  %479 = udiv i64 9223372036854775807, %55, !dbg !3210
  %480 = icmp ult i64 %479, %478, !dbg !3210
  br i1 %480, label %481, label %491, !dbg !3210

481:                                              ; preds = %476
  %482 = or i32 %477, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %492, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %496, !dbg !3210

483:                                              ; preds = %471, %469
  %484 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %485 = phi i64 [ -9223372036854775808, %469 ], [ %474, %471 ]
  %486 = sub i64 0, %485, !dbg !3210
  %487 = udiv i64 -9223372036854775808, %486, !dbg !3210
  %488 = icmp slt i64 %487, %55, !dbg !3210
  br i1 %488, label %489, label %491, !dbg !3210

489:                                              ; preds = %483
  %490 = or i32 %484, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %492, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %503, !dbg !3210

491:                                              ; preds = %476, %483
  %492 = phi i32 [ %484, %483 ], [ %477, %476 ]
  %493 = phi i64 [ %485, %483 ], [ %478, %476 ]
  %494 = mul i64 %493, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %474, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %492, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %495 = icmp slt i64 %494, 0, !dbg !3210
  br i1 %495, label %503, label %496, !dbg !3210

496:                                              ; preds = %481, %491
  %497 = phi i32 [ %482, %481 ], [ %492, %491 ]
  %498 = phi i64 [ 9223372036854775807, %481 ], [ %494, %491 ]
  %499 = udiv i64 9223372036854775807, %55, !dbg !3210
  %500 = icmp ult i64 %499, %498, !dbg !3210
  br i1 %500, label %501, label %511, !dbg !3210

501:                                              ; preds = %496
  %502 = or i32 %497, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %512, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %516, !dbg !3210

503:                                              ; preds = %491, %489
  %504 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %505 = phi i64 [ -9223372036854775808, %489 ], [ %494, %491 ]
  %506 = sub i64 0, %505, !dbg !3210
  %507 = udiv i64 -9223372036854775808, %506, !dbg !3210
  %508 = icmp slt i64 %507, %55, !dbg !3210
  br i1 %508, label %509, label %511, !dbg !3210

509:                                              ; preds = %503
  %510 = or i32 %504, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %512, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %523, !dbg !3210

511:                                              ; preds = %496, %503
  %512 = phi i32 [ %504, %503 ], [ %497, %496 ]
  %513 = phi i64 [ %505, %503 ], [ %498, %496 ]
  %514 = mul i64 %513, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %494, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %512, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %515 = icmp slt i64 %514, 0, !dbg !3210
  br i1 %515, label %523, label %516, !dbg !3210

516:                                              ; preds = %501, %511
  %517 = phi i32 [ %502, %501 ], [ %512, %511 ]
  %518 = phi i64 [ 9223372036854775807, %501 ], [ %514, %511 ]
  %519 = udiv i64 9223372036854775807, %55, !dbg !3210
  %520 = icmp ult i64 %519, %518, !dbg !3210
  br i1 %520, label %521, label %531, !dbg !3210

521:                                              ; preds = %516
  %522 = or i32 %517, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %532, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %536, !dbg !3210

523:                                              ; preds = %511, %509
  %524 = phi i32 [ %510, %509 ], [ %512, %511 ]
  %525 = phi i64 [ -9223372036854775808, %509 ], [ %514, %511 ]
  %526 = sub i64 0, %525, !dbg !3210
  %527 = udiv i64 -9223372036854775808, %526, !dbg !3210
  %528 = icmp slt i64 %527, %55, !dbg !3210
  br i1 %528, label %529, label %531, !dbg !3210

529:                                              ; preds = %523
  %530 = or i32 %524, 1, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %532, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  br label %541, !dbg !3210

531:                                              ; preds = %516, %523
  %532 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %533 = phi i64 [ %525, %523 ], [ %518, %516 ]
  %534 = mul i64 %533, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %514, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  call void @llvm.dbg.value(metadata i32 %532, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3208
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3208
  %535 = icmp slt i64 %534, 0, !dbg !3210
  br i1 %535, label %541, label %536, !dbg !3210

536:                                              ; preds = %521, %531
  %537 = phi i32 [ %522, %521 ], [ %532, %531 ]
  %538 = phi i64 [ 9223372036854775807, %521 ], [ %534, %531 ]
  %539 = udiv i64 9223372036854775807, %55, !dbg !3210
  %540 = icmp ult i64 %539, %538, !dbg !3210
  br i1 %540, label %551, label %547, !dbg !3210

541:                                              ; preds = %531, %529
  %542 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %543 = phi i64 [ -9223372036854775808, %529 ], [ %534, %531 ]
  %544 = sub i64 0, %543, !dbg !3210
  %545 = udiv i64 -9223372036854775808, %544, !dbg !3210
  %546 = icmp slt i64 %545, %55, !dbg !3210
  br i1 %546, label %551, label %547, !dbg !3210

547:                                              ; preds = %541, %536
  %548 = phi i32 [ %542, %541 ], [ %537, %536 ]
  %549 = phi i64 [ %543, %541 ], [ %538, %536 ]
  %550 = mul i64 %549, %55, !dbg !3210
  call void @llvm.dbg.value(metadata !DIArgList(i64 %534, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3208
  br label %551, !dbg !3255

551:                                              ; preds = %547, %541, %536
  %552 = phi i32 [ %548, %547 ], [ %537, %536 ], [ %542, %541 ]
  %553 = phi i64 [ %550, %547 ], [ 9223372036854775807, %536 ], [ -9223372036854775808, %541 ], !dbg !3208
  %554 = phi i32 [ 0, %547 ], [ 1, %536 ], [ 1, %541 ], !dbg !3208
  %555 = or i32 %554, %552, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %555, metadata !3174, metadata !DIExpression()), !dbg !3206
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3206
  br label %1063, !dbg !3231

556:                                              ; preds = %61
  %557 = icmp eq i64 %32, -1, !dbg !3205
  br i1 %557, label %565, label %558, !dbg !3205

558:                                              ; preds = %556
  %559 = sub i64 0, %32, !dbg !3205
  %560 = udiv i64 -9223372036854775808, %559, !dbg !3205
  %561 = icmp ult i64 %560, %55, !dbg !3205
  br i1 %561, label %573, label %565, !dbg !3205

562:                                              ; preds = %61
  %563 = udiv i64 9223372036854775807, %55, !dbg !3205
  %564 = icmp ult i64 %563, %32, !dbg !3205
  br i1 %564, label %568, label %565, !dbg !3205

565:                                              ; preds = %556, %558, %562
  %566 = mul i64 %32, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 7, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %567 = icmp slt i64 %566, 0, !dbg !3205
  br i1 %567, label %573, label %568, !dbg !3205

568:                                              ; preds = %562, %565
  %569 = phi i32 [ 0, %565 ], [ 1, %562 ]
  %570 = phi i64 [ %566, %565 ], [ 9223372036854775807, %562 ]
  %571 = udiv i64 9223372036854775807, %55, !dbg !3205
  %572 = icmp ult i64 %571, %570, !dbg !3205
  br i1 %572, label %584, label %579, !dbg !3205

573:                                              ; preds = %558, %565
  %574 = phi i32 [ 0, %565 ], [ 1, %558 ]
  %575 = phi i64 [ %566, %565 ], [ -9223372036854775808, %558 ]
  %576 = sub i64 0, %575, !dbg !3205
  %577 = udiv i64 -9223372036854775808, %576, !dbg !3205
  %578 = icmp slt i64 %577, %55, !dbg !3205
  br i1 %578, label %589, label %579, !dbg !3205

579:                                              ; preds = %568, %573
  %580 = phi i32 [ %574, %573 ], [ %569, %568 ]
  %581 = phi i64 [ %575, %573 ], [ %570, %568 ]
  %582 = mul i64 %581, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %566, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %580, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 6, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %583 = icmp slt i64 %582, 0, !dbg !3205
  br i1 %583, label %589, label %584, !dbg !3205

584:                                              ; preds = %568, %579
  %585 = phi i32 [ %580, %579 ], [ 1, %568 ]
  %586 = phi i64 [ %582, %579 ], [ 9223372036854775807, %568 ]
  %587 = udiv i64 9223372036854775807, %55, !dbg !3205
  %588 = icmp ult i64 %587, %586, !dbg !3205
  br i1 %588, label %600, label %595, !dbg !3205

589:                                              ; preds = %573, %579
  %590 = phi i32 [ %580, %579 ], [ 1, %573 ]
  %591 = phi i64 [ %582, %579 ], [ -9223372036854775808, %573 ]
  %592 = sub i64 0, %591, !dbg !3205
  %593 = udiv i64 -9223372036854775808, %592, !dbg !3205
  %594 = icmp slt i64 %593, %55, !dbg !3205
  br i1 %594, label %607, label %595, !dbg !3205

595:                                              ; preds = %584, %589
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = phi i64 [ %591, %589 ], [ %586, %584 ]
  %598 = mul i64 %597, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %582, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %596, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %599 = icmp slt i64 %598, 0, !dbg !3205
  br i1 %599, label %607, label %600, !dbg !3205

600:                                              ; preds = %584, %595
  %601 = phi i32 [ %596, %595 ], [ 1, %584 ]
  %602 = phi i64 [ %598, %595 ], [ 9223372036854775807, %584 ]
  %603 = udiv i64 9223372036854775807, %55, !dbg !3205
  %604 = icmp ult i64 %603, %602, !dbg !3205
  br i1 %604, label %605, label %615, !dbg !3205

605:                                              ; preds = %600
  %606 = or i32 %601, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %616, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %620, !dbg !3205

607:                                              ; preds = %589, %595
  %608 = phi i32 [ %596, %595 ], [ 1, %589 ]
  %609 = phi i64 [ %598, %595 ], [ -9223372036854775808, %589 ]
  %610 = sub i64 0, %609, !dbg !3205
  %611 = udiv i64 -9223372036854775808, %610, !dbg !3205
  %612 = icmp slt i64 %611, %55, !dbg !3205
  br i1 %612, label %613, label %615, !dbg !3205

613:                                              ; preds = %607
  %614 = or i32 %608, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %616, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %627, !dbg !3205

615:                                              ; preds = %600, %607
  %616 = phi i32 [ %608, %607 ], [ %601, %600 ]
  %617 = phi i64 [ %609, %607 ], [ %602, %600 ]
  %618 = mul i64 %617, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %598, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %616, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %619 = icmp slt i64 %618, 0, !dbg !3205
  br i1 %619, label %627, label %620, !dbg !3205

620:                                              ; preds = %605, %615
  %621 = phi i32 [ %606, %605 ], [ %616, %615 ]
  %622 = phi i64 [ 9223372036854775807, %605 ], [ %618, %615 ]
  %623 = udiv i64 9223372036854775807, %55, !dbg !3205
  %624 = icmp ult i64 %623, %622, !dbg !3205
  br i1 %624, label %625, label %635, !dbg !3205

625:                                              ; preds = %620
  %626 = or i32 %621, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %636, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %640, !dbg !3205

627:                                              ; preds = %615, %613
  %628 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %629 = phi i64 [ -9223372036854775808, %613 ], [ %618, %615 ]
  %630 = sub i64 0, %629, !dbg !3205
  %631 = udiv i64 -9223372036854775808, %630, !dbg !3205
  %632 = icmp slt i64 %631, %55, !dbg !3205
  br i1 %632, label %633, label %635, !dbg !3205

633:                                              ; preds = %627
  %634 = or i32 %628, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %636, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %647, !dbg !3205

635:                                              ; preds = %620, %627
  %636 = phi i32 [ %628, %627 ], [ %621, %620 ]
  %637 = phi i64 [ %629, %627 ], [ %622, %620 ]
  %638 = mul i64 %637, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %618, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %636, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %639 = icmp slt i64 %638, 0, !dbg !3205
  br i1 %639, label %647, label %640, !dbg !3205

640:                                              ; preds = %625, %635
  %641 = phi i32 [ %626, %625 ], [ %636, %635 ]
  %642 = phi i64 [ 9223372036854775807, %625 ], [ %638, %635 ]
  %643 = udiv i64 9223372036854775807, %55, !dbg !3205
  %644 = icmp ult i64 %643, %642, !dbg !3205
  br i1 %644, label %645, label %655, !dbg !3205

645:                                              ; preds = %640
  %646 = or i32 %641, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %656, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %660, !dbg !3205

647:                                              ; preds = %635, %633
  %648 = phi i32 [ %634, %633 ], [ %636, %635 ]
  %649 = phi i64 [ -9223372036854775808, %633 ], [ %638, %635 ]
  %650 = sub i64 0, %649, !dbg !3205
  %651 = udiv i64 -9223372036854775808, %650, !dbg !3205
  %652 = icmp slt i64 %651, %55, !dbg !3205
  br i1 %652, label %653, label %655, !dbg !3205

653:                                              ; preds = %647
  %654 = or i32 %648, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %656, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %667, !dbg !3205

655:                                              ; preds = %640, %647
  %656 = phi i32 [ %648, %647 ], [ %641, %640 ]
  %657 = phi i64 [ %649, %647 ], [ %642, %640 ]
  %658 = mul i64 %657, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %638, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %656, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %659 = icmp slt i64 %658, 0, !dbg !3205
  br i1 %659, label %667, label %660, !dbg !3205

660:                                              ; preds = %645, %655
  %661 = phi i32 [ %646, %645 ], [ %656, %655 ]
  %662 = phi i64 [ 9223372036854775807, %645 ], [ %658, %655 ]
  %663 = udiv i64 9223372036854775807, %55, !dbg !3205
  %664 = icmp ult i64 %663, %662, !dbg !3205
  br i1 %664, label %665, label %675, !dbg !3205

665:                                              ; preds = %660
  %666 = or i32 %661, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %676, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %680, !dbg !3205

667:                                              ; preds = %655, %653
  %668 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %669 = phi i64 [ -9223372036854775808, %653 ], [ %658, %655 ]
  %670 = sub i64 0, %669, !dbg !3205
  %671 = udiv i64 -9223372036854775808, %670, !dbg !3205
  %672 = icmp slt i64 %671, %55, !dbg !3205
  br i1 %672, label %673, label %675, !dbg !3205

673:                                              ; preds = %667
  %674 = or i32 %668, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %676, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %687, !dbg !3205

675:                                              ; preds = %660, %667
  %676 = phi i32 [ %668, %667 ], [ %661, %660 ]
  %677 = phi i64 [ %669, %667 ], [ %662, %660 ]
  %678 = mul i64 %677, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %658, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %676, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %679 = icmp slt i64 %678, 0, !dbg !3205
  br i1 %679, label %687, label %680, !dbg !3205

680:                                              ; preds = %665, %675
  %681 = phi i32 [ %666, %665 ], [ %676, %675 ]
  %682 = phi i64 [ 9223372036854775807, %665 ], [ %678, %675 ]
  %683 = udiv i64 9223372036854775807, %55, !dbg !3205
  %684 = icmp ult i64 %683, %682, !dbg !3205
  br i1 %684, label %685, label %695, !dbg !3205

685:                                              ; preds = %680
  %686 = or i32 %681, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %696, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %700, !dbg !3205

687:                                              ; preds = %675, %673
  %688 = phi i32 [ %674, %673 ], [ %676, %675 ]
  %689 = phi i64 [ -9223372036854775808, %673 ], [ %678, %675 ]
  %690 = sub i64 0, %689, !dbg !3205
  %691 = udiv i64 -9223372036854775808, %690, !dbg !3205
  %692 = icmp slt i64 %691, %55, !dbg !3205
  br i1 %692, label %693, label %695, !dbg !3205

693:                                              ; preds = %687
  %694 = or i32 %688, 1, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %696, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  br label %705, !dbg !3205

695:                                              ; preds = %680, %687
  %696 = phi i32 [ %688, %687 ], [ %681, %680 ]
  %697 = phi i64 [ %689, %687 ], [ %682, %680 ]
  %698 = mul i64 %697, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %678, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  call void @llvm.dbg.value(metadata i32 %696, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3203
  %699 = icmp slt i64 %698, 0, !dbg !3205
  br i1 %699, label %705, label %700, !dbg !3205

700:                                              ; preds = %685, %695
  %701 = phi i32 [ %686, %685 ], [ %696, %695 ]
  %702 = phi i64 [ 9223372036854775807, %685 ], [ %698, %695 ]
  %703 = udiv i64 9223372036854775807, %55, !dbg !3205
  %704 = icmp ult i64 %703, %702, !dbg !3205
  br i1 %704, label %715, label %711, !dbg !3205

705:                                              ; preds = %695, %693
  %706 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %707 = phi i64 [ -9223372036854775808, %693 ], [ %698, %695 ]
  %708 = sub i64 0, %707, !dbg !3205
  %709 = udiv i64 -9223372036854775808, %708, !dbg !3205
  %710 = icmp slt i64 %709, %55, !dbg !3205
  br i1 %710, label %715, label %711, !dbg !3205

711:                                              ; preds = %705, %700
  %712 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %713 = phi i64 [ %707, %705 ], [ %702, %700 ]
  %714 = mul i64 %713, %55, !dbg !3205
  call void @llvm.dbg.value(metadata !DIArgList(i64 %698, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3203
  br label %715, !dbg !3257

715:                                              ; preds = %711, %705, %700
  %716 = phi i32 [ %712, %711 ], [ %701, %700 ], [ %706, %705 ]
  %717 = phi i64 [ %714, %711 ], [ 9223372036854775807, %700 ], [ -9223372036854775808, %705 ], !dbg !3203
  %718 = phi i32 [ 0, %711 ], [ 1, %700 ], [ 1, %705 ], !dbg !3203
  %719 = or i32 %718, %716, !dbg !3256
  call void @llvm.dbg.value(metadata i32 %719, metadata !3174, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3201
  br label %1063, !dbg !3231

720:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3179, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 undef, metadata !3180, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3260
  %721 = icmp slt i64 %32, 0, !dbg !3262
  br i1 %721, label %722, label %728, !dbg !3262

722:                                              ; preds = %720
  %723 = icmp eq i64 %32, -1, !dbg !3262
  br i1 %723, label %731, label %724, !dbg !3262

724:                                              ; preds = %722
  %725 = sub i64 0, %32, !dbg !3262
  %726 = udiv i64 -9223372036854775808, %725, !dbg !3262
  %727 = icmp ult i64 %726, %55, !dbg !3262
  br i1 %727, label %739, label %731, !dbg !3262

728:                                              ; preds = %720
  %729 = udiv i64 9223372036854775807, %55, !dbg !3262
  %730 = icmp ult i64 %729, %32, !dbg !3262
  br i1 %730, label %734, label %731, !dbg !3262

731:                                              ; preds = %722, %724, %728
  %732 = mul i64 %32, %55, !dbg !3262
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3260
  %733 = icmp slt i64 %732, 0, !dbg !3262
  br i1 %733, label %739, label %734, !dbg !3262

734:                                              ; preds = %728, %731
  %735 = phi i32 [ 0, %731 ], [ 1, %728 ]
  %736 = phi i64 [ %732, %731 ], [ 9223372036854775807, %728 ]
  %737 = udiv i64 9223372036854775807, %55, !dbg !3262
  %738 = icmp ult i64 %737, %736, !dbg !3262
  br i1 %738, label %750, label %745, !dbg !3262

739:                                              ; preds = %724, %731
  %740 = phi i32 [ 0, %731 ], [ 1, %724 ]
  %741 = phi i64 [ %732, %731 ], [ -9223372036854775808, %724 ]
  %742 = sub i64 0, %741, !dbg !3262
  %743 = udiv i64 -9223372036854775808, %742, !dbg !3262
  %744 = icmp slt i64 %743, %55, !dbg !3262
  br i1 %744, label %755, label %745, !dbg !3262

745:                                              ; preds = %734, %739
  %746 = phi i32 [ %740, %739 ], [ %735, %734 ]
  %747 = phi i64 [ %741, %739 ], [ %736, %734 ]
  %748 = mul i64 %747, %55, !dbg !3262
  call void @llvm.dbg.value(metadata !DIArgList(i64 %732, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %746, metadata !3174, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3260
  %749 = icmp slt i64 %748, 0, !dbg !3262
  br i1 %749, label %755, label %750, !dbg !3262

750:                                              ; preds = %734, %745
  %751 = phi i32 [ %746, %745 ], [ 1, %734 ]
  %752 = phi i64 [ %748, %745 ], [ 9223372036854775807, %734 ]
  %753 = udiv i64 9223372036854775807, %55, !dbg !3262
  %754 = icmp ult i64 %753, %752, !dbg !3262
  br i1 %754, label %766, label %761, !dbg !3262

755:                                              ; preds = %739, %745
  %756 = phi i32 [ %746, %745 ], [ 1, %739 ]
  %757 = phi i64 [ %748, %745 ], [ -9223372036854775808, %739 ]
  %758 = sub i64 0, %757, !dbg !3262
  %759 = udiv i64 -9223372036854775808, %758, !dbg !3262
  %760 = icmp slt i64 %759, %55, !dbg !3262
  br i1 %760, label %771, label %761, !dbg !3262

761:                                              ; preds = %750, %755
  %762 = phi i32 [ %756, %755 ], [ %751, %750 ]
  %763 = phi i64 [ %757, %755 ], [ %752, %750 ]
  %764 = mul i64 %763, %55, !dbg !3262
  call void @llvm.dbg.value(metadata !DIArgList(i64 %748, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  call void @llvm.dbg.value(metadata i32 %762, metadata !3174, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3260
  %765 = icmp slt i64 %764, 0, !dbg !3262
  br i1 %765, label %771, label %766, !dbg !3262

766:                                              ; preds = %750, %761
  %767 = phi i32 [ %762, %761 ], [ 1, %750 ]
  %768 = phi i64 [ %764, %761 ], [ 9223372036854775807, %750 ]
  %769 = udiv i64 9223372036854775807, %55, !dbg !3262
  %770 = icmp ult i64 %769, %768, !dbg !3262
  br i1 %770, label %781, label %777, !dbg !3262

771:                                              ; preds = %755, %761
  %772 = phi i32 [ %762, %761 ], [ 1, %755 ]
  %773 = phi i64 [ %764, %761 ], [ -9223372036854775808, %755 ]
  %774 = sub i64 0, %773, !dbg !3262
  %775 = udiv i64 -9223372036854775808, %774, !dbg !3262
  %776 = icmp slt i64 %775, %55, !dbg !3262
  br i1 %776, label %781, label %777, !dbg !3262

777:                                              ; preds = %771, %766
  %778 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %779 = phi i64 [ %773, %771 ], [ %768, %766 ]
  %780 = mul i64 %779, %55, !dbg !3262
  call void @llvm.dbg.value(metadata !DIArgList(i64 %764, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3260
  br label %781, !dbg !3263

781:                                              ; preds = %777, %771, %766
  %782 = phi i32 [ %778, %777 ], [ %767, %766 ], [ %772, %771 ]
  %783 = phi i64 [ %780, %777 ], [ 9223372036854775807, %766 ], [ -9223372036854775808, %771 ], !dbg !3260
  %784 = phi i32 [ 0, %777 ], [ 1, %766 ], [ 1, %771 ], !dbg !3260
  %785 = or i32 %784, %782, !dbg !3264
  call void @llvm.dbg.value(metadata i32 %785, metadata !3174, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3258
  br label %1063, !dbg !3231

786:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i32 2, metadata !3190, metadata !DIExpression()), !dbg !3265
  %787 = icmp slt i64 %32, 0, !dbg !3267
  br i1 %787, label %788, label %791, !dbg !3267

788:                                              ; preds = %786
  %789 = add i64 %32, -1, !dbg !3267
  %790 = icmp ult i64 %789, -4611686018427387905, !dbg !3267
  br i1 %790, label %1063, label %793, !dbg !3267

791:                                              ; preds = %786
  %792 = icmp ugt i64 %32, 4611686018427387903, !dbg !3267
  br i1 %792, label %1063, label %793, !dbg !3267

793:                                              ; preds = %791, %788
  %794 = shl nsw i64 %32, 1, !dbg !3267
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 2), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3265
  br label %1063, !dbg !3268

795:                                              ; preds = %59
  %796 = icmp eq i64 %32, -1, !dbg !3200
  br i1 %796, label %804, label %797, !dbg !3200

797:                                              ; preds = %795
  %798 = sub i64 0, %32, !dbg !3200
  %799 = udiv i64 -9223372036854775808, %798, !dbg !3200
  %800 = icmp ult i64 %799, %55, !dbg !3200
  br i1 %800, label %812, label %804, !dbg !3200

801:                                              ; preds = %59
  %802 = udiv i64 9223372036854775807, %55, !dbg !3200
  %803 = icmp ult i64 %802, %32, !dbg !3200
  br i1 %803, label %807, label %804, !dbg !3200

804:                                              ; preds = %795, %797, %801
  %805 = mul i64 %32, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 6, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %806 = icmp slt i64 %805, 0, !dbg !3200
  br i1 %806, label %812, label %807, !dbg !3200

807:                                              ; preds = %801, %804
  %808 = phi i32 [ 0, %804 ], [ 1, %801 ]
  %809 = phi i64 [ %805, %804 ], [ 9223372036854775807, %801 ]
  %810 = udiv i64 9223372036854775807, %55, !dbg !3200
  %811 = icmp ult i64 %810, %809, !dbg !3200
  br i1 %811, label %823, label %818, !dbg !3200

812:                                              ; preds = %797, %804
  %813 = phi i32 [ 0, %804 ], [ 1, %797 ]
  %814 = phi i64 [ %805, %804 ], [ -9223372036854775808, %797 ]
  %815 = sub i64 0, %814, !dbg !3200
  %816 = udiv i64 -9223372036854775808, %815, !dbg !3200
  %817 = icmp slt i64 %816, %55, !dbg !3200
  br i1 %817, label %828, label %818, !dbg !3200

818:                                              ; preds = %807, %812
  %819 = phi i32 [ %813, %812 ], [ %808, %807 ]
  %820 = phi i64 [ %814, %812 ], [ %809, %807 ]
  %821 = mul i64 %820, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %805, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %819, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %822 = icmp slt i64 %821, 0, !dbg !3200
  br i1 %822, label %828, label %823, !dbg !3200

823:                                              ; preds = %807, %818
  %824 = phi i32 [ %819, %818 ], [ 1, %807 ]
  %825 = phi i64 [ %821, %818 ], [ 9223372036854775807, %807 ]
  %826 = udiv i64 9223372036854775807, %55, !dbg !3200
  %827 = icmp ult i64 %826, %825, !dbg !3200
  br i1 %827, label %839, label %834, !dbg !3200

828:                                              ; preds = %812, %818
  %829 = phi i32 [ %819, %818 ], [ 1, %812 ]
  %830 = phi i64 [ %821, %818 ], [ -9223372036854775808, %812 ]
  %831 = sub i64 0, %830, !dbg !3200
  %832 = udiv i64 -9223372036854775808, %831, !dbg !3200
  %833 = icmp slt i64 %832, %55, !dbg !3200
  br i1 %833, label %846, label %834, !dbg !3200

834:                                              ; preds = %823, %828
  %835 = phi i32 [ %829, %828 ], [ %824, %823 ]
  %836 = phi i64 [ %830, %828 ], [ %825, %823 ]
  %837 = mul i64 %836, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %821, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %835, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %838 = icmp slt i64 %837, 0, !dbg !3200
  br i1 %838, label %846, label %839, !dbg !3200

839:                                              ; preds = %823, %834
  %840 = phi i32 [ %835, %834 ], [ 1, %823 ]
  %841 = phi i64 [ %837, %834 ], [ 9223372036854775807, %823 ]
  %842 = udiv i64 9223372036854775807, %55, !dbg !3200
  %843 = icmp ult i64 %842, %841, !dbg !3200
  br i1 %843, label %844, label %854, !dbg !3200

844:                                              ; preds = %839
  %845 = or i32 %840, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %855, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %859, !dbg !3200

846:                                              ; preds = %828, %834
  %847 = phi i32 [ %835, %834 ], [ 1, %828 ]
  %848 = phi i64 [ %837, %834 ], [ -9223372036854775808, %828 ]
  %849 = sub i64 0, %848, !dbg !3200
  %850 = udiv i64 -9223372036854775808, %849, !dbg !3200
  %851 = icmp slt i64 %850, %55, !dbg !3200
  br i1 %851, label %852, label %854, !dbg !3200

852:                                              ; preds = %846
  %853 = or i32 %847, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %855, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %866, !dbg !3200

854:                                              ; preds = %839, %846
  %855 = phi i32 [ %847, %846 ], [ %840, %839 ]
  %856 = phi i64 [ %848, %846 ], [ %841, %839 ]
  %857 = mul i64 %856, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %837, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %855, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %858 = icmp slt i64 %857, 0, !dbg !3200
  br i1 %858, label %866, label %859, !dbg !3200

859:                                              ; preds = %844, %854
  %860 = phi i32 [ %845, %844 ], [ %855, %854 ]
  %861 = phi i64 [ 9223372036854775807, %844 ], [ %857, %854 ]
  %862 = udiv i64 9223372036854775807, %55, !dbg !3200
  %863 = icmp ult i64 %862, %861, !dbg !3200
  br i1 %863, label %864, label %874, !dbg !3200

864:                                              ; preds = %859
  %865 = or i32 %860, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %875, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %879, !dbg !3200

866:                                              ; preds = %854, %852
  %867 = phi i32 [ %853, %852 ], [ %855, %854 ]
  %868 = phi i64 [ -9223372036854775808, %852 ], [ %857, %854 ]
  %869 = sub i64 0, %868, !dbg !3200
  %870 = udiv i64 -9223372036854775808, %869, !dbg !3200
  %871 = icmp slt i64 %870, %55, !dbg !3200
  br i1 %871, label %872, label %874, !dbg !3200

872:                                              ; preds = %866
  %873 = or i32 %867, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %875, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %886, !dbg !3200

874:                                              ; preds = %859, %866
  %875 = phi i32 [ %867, %866 ], [ %860, %859 ]
  %876 = phi i64 [ %868, %866 ], [ %861, %859 ]
  %877 = mul i64 %876, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %857, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %875, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %878 = icmp slt i64 %877, 0, !dbg !3200
  br i1 %878, label %886, label %879, !dbg !3200

879:                                              ; preds = %864, %874
  %880 = phi i32 [ %865, %864 ], [ %875, %874 ]
  %881 = phi i64 [ 9223372036854775807, %864 ], [ %877, %874 ]
  %882 = udiv i64 9223372036854775807, %55, !dbg !3200
  %883 = icmp ult i64 %882, %881, !dbg !3200
  br i1 %883, label %884, label %894, !dbg !3200

884:                                              ; preds = %879
  %885 = or i32 %880, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %895, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %899, !dbg !3200

886:                                              ; preds = %874, %872
  %887 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %888 = phi i64 [ -9223372036854775808, %872 ], [ %877, %874 ]
  %889 = sub i64 0, %888, !dbg !3200
  %890 = udiv i64 -9223372036854775808, %889, !dbg !3200
  %891 = icmp slt i64 %890, %55, !dbg !3200
  br i1 %891, label %892, label %894, !dbg !3200

892:                                              ; preds = %886
  %893 = or i32 %887, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %895, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %906, !dbg !3200

894:                                              ; preds = %879, %886
  %895 = phi i32 [ %887, %886 ], [ %880, %879 ]
  %896 = phi i64 [ %888, %886 ], [ %881, %879 ]
  %897 = mul i64 %896, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %877, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %895, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %898 = icmp slt i64 %897, 0, !dbg !3200
  br i1 %898, label %906, label %899, !dbg !3200

899:                                              ; preds = %884, %894
  %900 = phi i32 [ %885, %884 ], [ %895, %894 ]
  %901 = phi i64 [ 9223372036854775807, %884 ], [ %897, %894 ]
  %902 = udiv i64 9223372036854775807, %55, !dbg !3200
  %903 = icmp ult i64 %902, %901, !dbg !3200
  br i1 %903, label %904, label %914, !dbg !3200

904:                                              ; preds = %899
  %905 = or i32 %900, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %915, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %919, !dbg !3200

906:                                              ; preds = %894, %892
  %907 = phi i32 [ %893, %892 ], [ %895, %894 ]
  %908 = phi i64 [ -9223372036854775808, %892 ], [ %897, %894 ]
  %909 = sub i64 0, %908, !dbg !3200
  %910 = udiv i64 -9223372036854775808, %909, !dbg !3200
  %911 = icmp slt i64 %910, %55, !dbg !3200
  br i1 %911, label %912, label %914, !dbg !3200

912:                                              ; preds = %906
  %913 = or i32 %907, 1, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %915, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  br label %924, !dbg !3200

914:                                              ; preds = %899, %906
  %915 = phi i32 [ %907, %906 ], [ %900, %899 ]
  %916 = phi i64 [ %908, %906 ], [ %901, %899 ]
  %917 = mul i64 %916, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %897, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  call void @llvm.dbg.value(metadata i32 %915, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3198
  %918 = icmp slt i64 %917, 0, !dbg !3200
  br i1 %918, label %924, label %919, !dbg !3200

919:                                              ; preds = %904, %914
  %920 = phi i32 [ %905, %904 ], [ %915, %914 ]
  %921 = phi i64 [ 9223372036854775807, %904 ], [ %917, %914 ]
  %922 = udiv i64 9223372036854775807, %55, !dbg !3200
  %923 = icmp ult i64 %922, %921, !dbg !3200
  br i1 %923, label %934, label %930, !dbg !3200

924:                                              ; preds = %914, %912
  %925 = phi i32 [ %913, %912 ], [ %915, %914 ]
  %926 = phi i64 [ -9223372036854775808, %912 ], [ %917, %914 ]
  %927 = sub i64 0, %926, !dbg !3200
  %928 = udiv i64 -9223372036854775808, %927, !dbg !3200
  %929 = icmp slt i64 %928, %55, !dbg !3200
  br i1 %929, label %934, label %930, !dbg !3200

930:                                              ; preds = %924, %919
  %931 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %932 = phi i64 [ %926, %924 ], [ %921, %919 ]
  %933 = mul i64 %932, %55, !dbg !3200
  call void @llvm.dbg.value(metadata !DIArgList(i64 %917, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3198
  br label %934, !dbg !3270

934:                                              ; preds = %930, %924, %919
  %935 = phi i32 [ %931, %930 ], [ %920, %919 ], [ %925, %924 ]
  %936 = phi i64 [ %933, %930 ], [ 9223372036854775807, %919 ], [ -9223372036854775808, %924 ], !dbg !3198
  %937 = phi i32 [ 0, %930 ], [ 1, %919 ], [ 1, %924 ], !dbg !3198
  %938 = or i32 %937, %935, !dbg !3269
  call void @llvm.dbg.value(metadata i32 %938, metadata !3174, metadata !DIExpression()), !dbg !3196
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3196
  br label %1063, !dbg !3231

939:                                              ; preds = %57
  %940 = icmp eq i64 %32, -1, !dbg !3194
  br i1 %940, label %948, label %941, !dbg !3194

941:                                              ; preds = %939
  %942 = sub i64 0, %32, !dbg !3194
  %943 = udiv i64 -9223372036854775808, %942, !dbg !3194
  %944 = icmp ult i64 %943, %55, !dbg !3194
  br i1 %944, label %956, label %948, !dbg !3194

945:                                              ; preds = %57
  %946 = udiv i64 9223372036854775807, %55, !dbg !3194
  %947 = icmp ult i64 %946, %32, !dbg !3194
  br i1 %947, label %951, label %948, !dbg !3194

948:                                              ; preds = %939, %941, %945
  %949 = mul i64 %32, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 0, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 5, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %950 = icmp slt i64 %949, 0, !dbg !3194
  br i1 %950, label %956, label %951, !dbg !3194

951:                                              ; preds = %945, %948
  %952 = phi i32 [ 0, %948 ], [ 1, %945 ]
  %953 = phi i64 [ %949, %948 ], [ 9223372036854775807, %945 ]
  %954 = udiv i64 9223372036854775807, %55, !dbg !3194
  %955 = icmp ult i64 %954, %953, !dbg !3194
  br i1 %955, label %967, label %962, !dbg !3194

956:                                              ; preds = %941, %948
  %957 = phi i32 [ 0, %948 ], [ 1, %941 ]
  %958 = phi i64 [ %949, %948 ], [ -9223372036854775808, %941 ]
  %959 = sub i64 0, %958, !dbg !3194
  %960 = udiv i64 -9223372036854775808, %959, !dbg !3194
  %961 = icmp slt i64 %960, %55, !dbg !3194
  br i1 %961, label %972, label %962, !dbg !3194

962:                                              ; preds = %951, %956
  %963 = phi i32 [ %957, %956 ], [ %952, %951 ]
  %964 = phi i64 [ %958, %956 ], [ %953, %951 ]
  %965 = mul i64 %964, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %949, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %963, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 4, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %966 = icmp slt i64 %965, 0, !dbg !3194
  br i1 %966, label %972, label %967, !dbg !3194

967:                                              ; preds = %951, %962
  %968 = phi i32 [ %963, %962 ], [ 1, %951 ]
  %969 = phi i64 [ %965, %962 ], [ 9223372036854775807, %951 ]
  %970 = udiv i64 9223372036854775807, %55, !dbg !3194
  %971 = icmp ult i64 %970, %969, !dbg !3194
  br i1 %971, label %983, label %978, !dbg !3194

972:                                              ; preds = %956, %962
  %973 = phi i32 [ %963, %962 ], [ 1, %956 ]
  %974 = phi i64 [ %965, %962 ], [ -9223372036854775808, %956 ]
  %975 = sub i64 0, %974, !dbg !3194
  %976 = udiv i64 -9223372036854775808, %975, !dbg !3194
  %977 = icmp slt i64 %976, %55, !dbg !3194
  br i1 %977, label %990, label %978, !dbg !3194

978:                                              ; preds = %967, %972
  %979 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %980 = phi i64 [ %974, %972 ], [ %969, %967 ]
  %981 = mul i64 %980, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %965, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %979, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 3, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %982 = icmp slt i64 %981, 0, !dbg !3194
  br i1 %982, label %990, label %983, !dbg !3194

983:                                              ; preds = %967, %978
  %984 = phi i32 [ %979, %978 ], [ 1, %967 ]
  %985 = phi i64 [ %981, %978 ], [ 9223372036854775807, %967 ]
  %986 = udiv i64 9223372036854775807, %55, !dbg !3194
  %987 = icmp ult i64 %986, %985, !dbg !3194
  br i1 %987, label %988, label %998, !dbg !3194

988:                                              ; preds = %983
  %989 = or i32 %984, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %999, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1003, !dbg !3194

990:                                              ; preds = %972, %978
  %991 = phi i32 [ %979, %978 ], [ 1, %972 ]
  %992 = phi i64 [ %981, %978 ], [ -9223372036854775808, %972 ]
  %993 = sub i64 0, %992, !dbg !3194
  %994 = udiv i64 -9223372036854775808, %993, !dbg !3194
  %995 = icmp slt i64 %994, %55, !dbg !3194
  br i1 %995, label %996, label %998, !dbg !3194

996:                                              ; preds = %990
  %997 = or i32 %991, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %999, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1010, !dbg !3194

998:                                              ; preds = %983, %990
  %999 = phi i32 [ %991, %990 ], [ %984, %983 ]
  %1000 = phi i64 [ %992, %990 ], [ %985, %983 ]
  %1001 = mul i64 %1000, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %981, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %999, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 2, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %1002 = icmp slt i64 %1001, 0, !dbg !3194
  br i1 %1002, label %1010, label %1003, !dbg !3194

1003:                                             ; preds = %988, %998
  %1004 = phi i32 [ %989, %988 ], [ %999, %998 ]
  %1005 = phi i64 [ 9223372036854775807, %988 ], [ %1001, %998 ]
  %1006 = udiv i64 9223372036854775807, %55, !dbg !3194
  %1007 = icmp ult i64 %1006, %1005, !dbg !3194
  br i1 %1007, label %1008, label %1018, !dbg !3194

1008:                                             ; preds = %1003
  %1009 = or i32 %1004, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1023, !dbg !3194

1010:                                             ; preds = %998, %996
  %1011 = phi i32 [ %997, %996 ], [ %999, %998 ]
  %1012 = phi i64 [ -9223372036854775808, %996 ], [ %1001, %998 ]
  %1013 = sub i64 0, %1012, !dbg !3194
  %1014 = udiv i64 -9223372036854775808, %1013, !dbg !3194
  %1015 = icmp slt i64 %1014, %55, !dbg !3194
  br i1 %1015, label %1016, label %1018, !dbg !3194

1016:                                             ; preds = %1010
  %1017 = or i32 %1011, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1030, !dbg !3194

1018:                                             ; preds = %1003, %1010
  %1019 = phi i32 [ %1011, %1010 ], [ %1004, %1003 ]
  %1020 = phi i64 [ %1012, %1010 ], [ %1005, %1003 ]
  %1021 = mul i64 %1020, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1001, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %1019, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 1, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %1022 = icmp slt i64 %1021, 0, !dbg !3194
  br i1 %1022, label %1030, label %1023, !dbg !3194

1023:                                             ; preds = %1008, %1018
  %1024 = phi i32 [ %1009, %1008 ], [ %1019, %1018 ]
  %1025 = phi i64 [ 9223372036854775807, %1008 ], [ %1021, %1018 ]
  %1026 = udiv i64 9223372036854775807, %55, !dbg !3194
  %1027 = icmp ult i64 %1026, %1025, !dbg !3194
  br i1 %1027, label %1028, label %1038, !dbg !3194

1028:                                             ; preds = %1023
  %1029 = or i32 %1024, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1043, !dbg !3194

1030:                                             ; preds = %1018, %1016
  %1031 = phi i32 [ %1017, %1016 ], [ %1019, %1018 ]
  %1032 = phi i64 [ -9223372036854775808, %1016 ], [ %1021, %1018 ]
  %1033 = sub i64 0, %1032, !dbg !3194
  %1034 = udiv i64 -9223372036854775808, %1033, !dbg !3194
  %1035 = icmp slt i64 %1034, %55, !dbg !3194
  br i1 %1035, label %1036, label %1038, !dbg !3194

1036:                                             ; preds = %1030
  %1037 = or i32 %1031, 1, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  br label %1048, !dbg !3194

1038:                                             ; preds = %1023, %1030
  %1039 = phi i32 [ %1031, %1030 ], [ %1024, %1023 ]
  %1040 = phi i64 [ %1032, %1030 ], [ %1025, %1023 ]
  %1041 = mul i64 %1040, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1021, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  call void @llvm.dbg.value(metadata i32 %1039, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64* undef, metadata !3185, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.value(metadata i32 undef, metadata !3190, metadata !DIExpression()), !dbg !3192
  %1042 = icmp slt i64 %1041, 0, !dbg !3194
  br i1 %1042, label %1048, label %1043, !dbg !3194

1043:                                             ; preds = %1028, %1038
  %1044 = phi i32 [ %1029, %1028 ], [ %1039, %1038 ]
  %1045 = phi i64 [ 9223372036854775807, %1028 ], [ %1041, %1038 ]
  %1046 = udiv i64 9223372036854775807, %55, !dbg !3194
  %1047 = icmp ult i64 %1046, %1045, !dbg !3194
  br i1 %1047, label %1058, label %1054, !dbg !3194

1048:                                             ; preds = %1038, %1036
  %1049 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1050 = phi i64 [ -9223372036854775808, %1036 ], [ %1041, %1038 ]
  %1051 = sub i64 0, %1050, !dbg !3194
  %1052 = udiv i64 -9223372036854775808, %1051, !dbg !3194
  %1053 = icmp slt i64 %1052, %55, !dbg !3194
  br i1 %1053, label %1058, label %1054, !dbg !3194

1054:                                             ; preds = %1048, %1043
  %1055 = phi i32 [ %1049, %1048 ], [ %1044, %1043 ]
  %1056 = phi i64 [ %1050, %1048 ], [ %1045, %1043 ]
  %1057 = mul i64 %1056, %55, !dbg !3194
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1041, i32 undef), metadata !3191, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !3192
  br label %1058, !dbg !3272

1058:                                             ; preds = %1054, %1048, %1043
  %1059 = phi i32 [ %1055, %1054 ], [ %1044, %1043 ], [ %1049, %1048 ]
  %1060 = phi i64 [ %1057, %1054 ], [ 9223372036854775807, %1043 ], [ -9223372036854775808, %1048 ], !dbg !3192
  %1061 = phi i32 [ 0, %1054 ], [ 1, %1043 ], [ 1, %1048 ], !dbg !3192
  %1062 = or i32 %1061, %1059, !dbg !3271
  call void @llvm.dbg.value(metadata i32 %1062, metadata !3174, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3181, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3182
  br label %1063, !dbg !3231

1063:                                             ; preds = %788, %80, %71, %245, %249, %252, %1058, %934, %781, %715, %551, %367, %283, %236, %186, %54, %74, %76, %83, %85, %791, %793
  %1064 = phi i64 [ %32, %54 ], [ %77, %76 ], [ 9223372036854775807, %74 ], [ %86, %85 ], [ 9223372036854775807, %83 ], [ %794, %793 ], [ 9223372036854775807, %791 ], [ %188, %186 ], [ %238, %236 ], [ %285, %283 ], [ %369, %367 ], [ %553, %551 ], [ %717, %715 ], [ %783, %781 ], [ %936, %934 ], [ %1060, %1058 ], [ %253, %252 ], [ 9223372036854775807, %249 ], [ -9223372036854775808, %245 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %80 ], [ -9223372036854775808, %788 ], !dbg !3120
  %1065 = phi i32 [ 0, %54 ], [ 0, %76 ], [ 1, %74 ], [ 0, %85 ], [ 1, %83 ], [ 0, %793 ], [ 1, %791 ], [ %190, %186 ], [ %240, %236 ], [ %287, %283 ], [ %371, %367 ], [ %555, %551 ], [ %719, %715 ], [ %785, %781 ], [ %938, %934 ], [ %1062, %1058 ], [ 0, %252 ], [ 1, %249 ], [ 1, %245 ], [ 1, %71 ], [ 1, %80 ], [ 1, %788 ], !dbg !3273
  call void @llvm.dbg.value(metadata i32 %1065, metadata !3119, metadata !DIExpression()), !dbg !3159
  %1066 = or i32 %1065, %31, !dbg !3231
  call void @llvm.dbg.value(metadata i32 %1066, metadata !3114, metadata !DIExpression()), !dbg !3120
  %1067 = getelementptr inbounds i8, i8* %12, i64 %56, !dbg !3274
  store i8* %1067, i8** %9, align 8, !dbg !3274, !tbaa !488
  %1068 = load i8, i8* %1067, align 1, !dbg !3275, !tbaa !594
  %1069 = icmp eq i8 %1068, 0, !dbg !3275
  %1070 = or i32 %1066, 2
  %1071 = select i1 %1069, i32 %1066, i32 %1070, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %31, metadata !3114, metadata !DIExpression()), !dbg !3120
  br label %1074

1072:                                             ; preds = %54
  call void @llvm.dbg.value(metadata i64 %11, metadata !3113, metadata !DIExpression()), !dbg !3120
  store i64 %32, i64* %3, align 8, !dbg !3278, !tbaa !775
  %1073 = or i32 %31, 2, !dbg !3279
  call void @llvm.dbg.value(metadata i32 %31, metadata !3114, metadata !DIExpression()), !dbg !3120
  br label %1077

1074:                                             ; preds = %1063, %30
  %1075 = phi i64 [ %32, %30 ], [ %1064, %1063 ], !dbg !3280
  %1076 = phi i32 [ %31, %30 ], [ %1071, %1063 ], !dbg !3281
  call void @llvm.dbg.value(metadata i32 %1076, metadata !3114, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %1075, metadata !3113, metadata !DIExpression()), !dbg !3120
  store i64 %1075, i64* %3, align 8, !dbg !3282, !tbaa !775
  br label %1077, !dbg !3283

1077:                                             ; preds = %1072, %23, %14, %16, %19, %1074, %39, %29
  %1078 = phi i32 [ %1076, %1074 ], [ %1073, %1072 ], [ %40, %39 ], [ %27, %29 ], [ 4, %19 ], [ 4, %16 ], [ 4, %14 ], [ 4, %23 ], !dbg !3120
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #34, !dbg !3284
  ret i32 %1078, !dbg !3284
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(i8* noundef readonly, i8** nocapture noundef, i32 noundef) local_unnamed_addr #31

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3285 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3323, metadata !DIExpression()), !dbg !3328
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #34, !dbg !3329
  call void @llvm.dbg.value(metadata i1 undef, metadata !3324, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3328
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3330, metadata !DIExpression()), !dbg !3333
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3335
  %4 = load i32, i32* %3, align 8, !dbg !3335, !tbaa !829
  %5 = and i32 %4, 32, !dbg !3336
  %6 = icmp eq i32 %5, 0, !dbg !3336
  call void @llvm.dbg.value(metadata i1 %6, metadata !3326, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3328
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #34, !dbg !3337
  %8 = icmp eq i32 %7, 0, !dbg !3338
  call void @llvm.dbg.value(metadata i1 %8, metadata !3327, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3328
  br i1 %6, label %9, label %19, !dbg !3339

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3341
  call void @llvm.dbg.value(metadata i1 %10, metadata !3324, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3328
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3342
  %12 = xor i1 %8, true, !dbg !3342
  %13 = sext i1 %12 to i32, !dbg !3342
  br i1 %11, label %22, label %14, !dbg !3342

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #37, !dbg !3343
  %16 = load i32, i32* %15, align 4, !dbg !3343, !tbaa !585
  %17 = icmp ne i32 %16, 9, !dbg !3344
  %18 = sext i1 %17 to i32, !dbg !3345
  br label %22, !dbg !3345

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3346

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #37, !dbg !3348
  store i32 0, i32* %21, align 4, !dbg !3350, !tbaa !585
  br label %22, !dbg !3348

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3328
  ret i32 %23, !dbg !3351
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3352 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3390, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3391, metadata !DIExpression()), !dbg !3394
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3395
  call void @llvm.dbg.value(metadata i32 %2, metadata !3392, metadata !DIExpression()), !dbg !3394
  %3 = icmp slt i32 %2, 0, !dbg !3396
  br i1 %3, label %4, label %6, !dbg !3398

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3399
  br label %24, !dbg !3400

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3401
  %8 = icmp eq i32 %7, 0, !dbg !3401
  br i1 %8, label %13, label %9, !dbg !3403

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3404
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #34, !dbg !3405
  %12 = icmp eq i64 %11, -1, !dbg !3406
  br i1 %12, label %16, label %13, !dbg !3407

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3408
  %15 = icmp eq i32 %14, 0, !dbg !3408
  br i1 %15, label %16, label %18, !dbg !3409

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3391, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3394
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3410
  call void @llvm.dbg.value(metadata i32 %21, metadata !3393, metadata !DIExpression()), !dbg !3394
  br label %24, !dbg !3411

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #37, !dbg !3412
  %20 = load i32, i32* %19, align 4, !dbg !3412, !tbaa !585
  call void @llvm.dbg.value(metadata i32 %20, metadata !3391, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i32 0, metadata !3393, metadata !DIExpression()), !dbg !3394
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3410
  call void @llvm.dbg.value(metadata i32 %21, metadata !3393, metadata !DIExpression()), !dbg !3394
  %22 = icmp eq i32 %20, 0, !dbg !3413
  br i1 %22, label %24, label %23, !dbg !3411

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3415, !tbaa !585
  call void @llvm.dbg.value(metadata i32 -1, metadata !3393, metadata !DIExpression()), !dbg !3394
  br label %24, !dbg !3417

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3394
  ret i32 %25, !dbg !3418
}

; Function Attrs: nofree nounwind
declare !dbg !3419 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3420 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3421 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3424 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3462, metadata !DIExpression()), !dbg !3463
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3464
  br i1 %2, label %6, label %3, !dbg !3466

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3467
  %5 = icmp eq i32 %4, 0, !dbg !3467
  br i1 %5, label %6, label %8, !dbg !3468

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3469
  br label %17, !dbg !3470

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3471, metadata !DIExpression()) #34, !dbg !3476
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3478
  %10 = load i32, i32* %9, align 8, !dbg !3478, !tbaa !829
  %11 = and i32 %10, 256, !dbg !3480
  %12 = icmp eq i32 %11, 0, !dbg !3480
  br i1 %12, label %15, label %13, !dbg !3481

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #34, !dbg !3482
  br label %15, !dbg !3482

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3483
  br label %17, !dbg !3484

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3463
  ret i32 %18, !dbg !3485
}

; Function Attrs: nofree nounwind
declare !dbg !3486 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3487 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3526, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3527, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i32 %2, metadata !3528, metadata !DIExpression()), !dbg !3532
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3533
  %5 = load i8*, i8** %4, align 8, !dbg !3533, !tbaa !3534
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3535
  %7 = load i8*, i8** %6, align 8, !dbg !3535, !tbaa !3536
  %8 = icmp eq i8* %5, %7, !dbg !3537
  br i1 %8, label %9, label %28, !dbg !3538

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3539
  %11 = load i8*, i8** %10, align 8, !dbg !3539, !tbaa !1047
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3540
  %13 = load i8*, i8** %12, align 8, !dbg !3540, !tbaa !3541
  %14 = icmp eq i8* %11, %13, !dbg !3542
  br i1 %14, label %15, label %28, !dbg !3543

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3544
  %17 = load i8*, i8** %16, align 8, !dbg !3544, !tbaa !3545
  %18 = icmp eq i8* %17, null, !dbg !3546
  br i1 %18, label %19, label %28, !dbg !3547

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #34, !dbg !3548
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #34, !dbg !3549
  call void @llvm.dbg.value(metadata i64 %21, metadata !3529, metadata !DIExpression()), !dbg !3550
  %22 = icmp eq i64 %21, -1, !dbg !3551
  br i1 %22, label %30, label %23, !dbg !3553

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3554
  %25 = load i32, i32* %24, align 8, !dbg !3555, !tbaa !829
  %26 = and i32 %25, -17, !dbg !3555
  store i32 %26, i32* %24, align 8, !dbg !3555, !tbaa !829
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3556
  store i64 %21, i64* %27, align 8, !dbg !3557, !tbaa !3558
  br label %30, !dbg !3559

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3560
  br label %30, !dbg !3561

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3532
  ret i32 %31, !dbg !3562
}

; Function Attrs: nofree nounwind
declare !dbg !3563 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3566 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3571, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !3572, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i64 %2, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3574, metadata !DIExpression()), !dbg !3576
  %5 = icmp eq i8* %1, null, !dbg !3577
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3579
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.135, i64 0, i64 0), i8* %1, !dbg !3579
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3579
  call void @llvm.dbg.value(metadata i64 %8, metadata !3573, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i8* %7, metadata !3572, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32* %6, metadata !3571, metadata !DIExpression()), !dbg !3576
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3580
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3582
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3574, metadata !DIExpression()), !dbg !3576
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #34, !dbg !3583
  call void @llvm.dbg.value(metadata i64 %11, metadata !3575, metadata !DIExpression()), !dbg !3576
  %12 = icmp ult i64 %11, -3, !dbg !3584
  br i1 %12, label %13, label %18, !dbg !3586

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #35, !dbg !3587
  %15 = icmp eq i32 %14, 0, !dbg !3587
  br i1 %15, label %16, label %30, !dbg !3588

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3589, metadata !DIExpression()) #34, !dbg !3594
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3596, metadata !DIExpression()) #34, !dbg !3601
  call void @llvm.dbg.value(metadata i32 0, metadata !3599, metadata !DIExpression()) #34, !dbg !3601
  call void @llvm.dbg.value(metadata i64 8, metadata !3600, metadata !DIExpression()) #34, !dbg !3601
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3603
  store i64 0, i64* %17, align 1, !dbg !3603
  br label %30, !dbg !3604

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3605
  br i1 %19, label %20, label %21, !dbg !3607

20:                                               ; preds = %18
  tail call void @abort() #36, !dbg !3608
  unreachable, !dbg !3608

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3609

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #34, !dbg !3611
  br i1 %24, label %30, label %25, !dbg !3612

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3613
  br i1 %26, label %30, label %27, !dbg !3616

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3617, !tbaa !594
  %29 = zext i8 %28 to i32, !dbg !3618
  store i32 %29, i32* %6, align 4, !dbg !3619, !tbaa !585
  br label %30, !dbg !3620

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3576
  ret i64 %31, !dbg !3621
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3622 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #32

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #33 !dbg !3628 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3630, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %1, metadata !3631, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i64 %2, metadata !3632, metadata !DIExpression()), !dbg !3634
  %4 = icmp eq i64 %2, 0, !dbg !3635
  br i1 %4, label %8, label %5, !dbg !3635

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3635
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3635
  br i1 %7, label %13, label %8, !dbg !3635

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3633, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3634
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3633, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3634
  %9 = mul i64 %2, %1, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %9, metadata !3633, metadata !DIExpression()), !dbg !3634
  call void @llvm.dbg.value(metadata i8* %0, metadata !3637, metadata !DIExpression()) #34, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %9, metadata !3640, metadata !DIExpression()) #34, !dbg !3641
  %10 = icmp eq i64 %9, 0, !dbg !3643
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3643
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #34, !dbg !3644
  br label %15, !dbg !3645

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3633, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3634
  %14 = tail call i32* @__errno_location() #37, !dbg !3646
  store i32 12, i32* %14, align 4, !dbg !3648, !tbaa !585
  br label %15, !dbg !3649

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3634
  ret i8* %16, !dbg !3650
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3651 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3653, metadata !DIExpression()), !dbg !3658
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3659
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3659
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3654, metadata !DIExpression()), !dbg !3660
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #34, !dbg !3661
  %5 = icmp eq i32 %4, 0, !dbg !3661
  br i1 %5, label %6, label %13, !dbg !3663

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3664, metadata !DIExpression()) #34, !dbg !3668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), metadata !3667, metadata !DIExpression()) #34, !dbg !3668
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.140, i64 0, i64 0), i64 2), !dbg !3671
  %8 = icmp eq i32 %7, 0, !dbg !3672
  br i1 %8, label %12, label %9, !dbg !3673

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3664, metadata !DIExpression()) #34, !dbg !3674
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), metadata !3667, metadata !DIExpression()) #34, !dbg !3674
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.141, i64 0, i64 0), i64 6), !dbg !3676
  %11 = icmp eq i32 %10, 0, !dbg !3677
  br i1 %11, label %12, label %13, !dbg !3678

12:                                               ; preds = %9, %6
  br label %13, !dbg !3679

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3658
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #34, !dbg !3680
  ret i1 %14, !dbg !3680
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3681 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3685, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i8* %1, metadata !3686, metadata !DIExpression()), !dbg !3688
  call void @llvm.dbg.value(metadata i64 %2, metadata !3687, metadata !DIExpression()), !dbg !3688
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #34, !dbg !3689
  ret i32 %4, !dbg !3690
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3691 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3695, metadata !DIExpression()), !dbg !3696
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #34, !dbg !3697
  ret i8* %2, !dbg !3698
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3699 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()), !dbg !3703
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3704
  call void @llvm.dbg.value(metadata i8* %2, metadata !3702, metadata !DIExpression()), !dbg !3703
  ret i8* %2, !dbg !3705
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3706 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3708, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i8* %1, metadata !3709, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i64 %2, metadata !3710, metadata !DIExpression()), !dbg !3715
  call void @llvm.dbg.value(metadata i32 %0, metadata !3701, metadata !DIExpression()) #34, !dbg !3716
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #34, !dbg !3718
  call void @llvm.dbg.value(metadata i8* %4, metadata !3702, metadata !DIExpression()) #34, !dbg !3716
  call void @llvm.dbg.value(metadata i8* %4, metadata !3711, metadata !DIExpression()), !dbg !3715
  %5 = icmp eq i8* %4, null, !dbg !3719
  br i1 %5, label %6, label %9, !dbg !3720

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3721
  br i1 %7, label %19, label %8, !dbg !3724

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3725, !tbaa !594
  br label %19, !dbg !3726

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #35, !dbg !3727
  call void @llvm.dbg.value(metadata i64 %10, metadata !3712, metadata !DIExpression()), !dbg !3728
  %11 = icmp ult i64 %10, %2, !dbg !3729
  br i1 %11, label %12, label %14, !dbg !3731

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %1, metadata !3734, metadata !DIExpression()) #34, !dbg !3739
  call void @llvm.dbg.value(metadata i8* %4, metadata !3737, metadata !DIExpression()) #34, !dbg !3739
  call void @llvm.dbg.value(metadata i64 %13, metadata !3738, metadata !DIExpression()) #34, !dbg !3739
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #34, !dbg !3741
  br label %19, !dbg !3742

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3743
  br i1 %15, label %19, label %16, !dbg !3746

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3747
  call void @llvm.dbg.value(metadata i8* %1, metadata !3734, metadata !DIExpression()) #34, !dbg !3749
  call void @llvm.dbg.value(metadata i8* %4, metadata !3737, metadata !DIExpression()) #34, !dbg !3749
  call void @llvm.dbg.value(metadata i64 %17, metadata !3738, metadata !DIExpression()) #34, !dbg !3749
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #34, !dbg !3751
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3752
  store i8 0, i8* %18, align 1, !dbg !3753, !tbaa !594
  br label %19, !dbg !3754

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3755
  ret i32 %20, !dbg !3756
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
attributes #13 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { argmemonly nofree nounwind willreturn writeonly }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nounwind }
attributes #35 = { nounwind readonly willreturn }
attributes #36 = { noreturn nounwind }
attributes #37 = { nounwind readnone willreturn }
attributes #38 = { noreturn }
attributes #39 = { cold }
attributes #40 = { nounwind allocsize(1) }
attributes #41 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !189, !194, !201, !379, !399, !242, !252, !282, !401, !371, !408, !442, !444, !448, !450, !452, !454, !385, !456, !459, !461, !463}
!llvm.ident = !{!465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465, !465}
!llvm.module.flags = !{!466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 57, type: !175, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !90, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/nice.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bb63d6c4d157649b1559df44069c2e07")
!4 = !{!5, !13, !21, !62, !68}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 90, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 30, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !3, line: 177, baseType: !25, size: 32, elements: !59)
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 102, type: !23, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !29)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{!30, !31, !32, !33, !34, !37, !39, !40, !44, !47, !48, !49, !53, !58}
!30 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 102, type: !25)
!31 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 102, type: !26)
!32 = !DILocalVariable(name: "current_niceness", scope: !22, file: !3, line: 104, type: !25)
!33 = !DILocalVariable(name: "adjustment", scope: !22, file: !3, line: 105, type: !25)
!34 = !DILocalVariable(name: "adjustment_given", scope: !22, file: !3, line: 106, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!37 = !DILocalVariable(name: "ok", scope: !22, file: !3, line: 107, type: !38)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 108, type: !25)
!40 = !DILocalVariable(name: "s", scope: !41, file: !3, line: 121, type: !35)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 120, column: 5)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 119, column: 3)
!43 = distinct !DILexicalBlock(scope: !22, file: !3, line: 119, column: 3)
!44 = !DILocalVariable(name: "c", scope: !45, file: !3, line: 130, type: !25)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 129, column: 9)
!46 = distinct !DILexicalBlock(scope: !41, file: !3, line: 123, column: 11)
!47 = !DILocalVariable(name: "fake_argc", scope: !45, file: !3, line: 131, type: !25)
!48 = !DILocalVariable(name: "fake_argv", scope: !45, file: !3, line: 132, type: !26)
!49 = !DILocalVariable(name: "tmp", scope: !50, file: !3, line: 179, type: !52)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 167, column: 5)
!51 = distinct !DILexicalBlock(scope: !22, file: !3, line: 166, column: 7)
!52 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "__errstatus", scope: !54, file: !3, line: 240, type: !57)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 240, column: 7)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 239, column: 5)
!56 = distinct !DILexicalBlock(scope: !22, file: !3, line: 238, column: 7)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!58 = !DILocalVariable(name: "exit_status", scope: !22, file: !3, line: 253, type: !25)
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!61 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !63, line: 187, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!64 = !{!65, !66, !67}
!65 = !DIEnumerator(name: "PRIO_PROCESS", value: 0)
!66 = !DIEnumerator(name: "PRIO_PGRP", value: 1)
!67 = !DIEnumerator(name: "PRIO_USER", value: 2)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 46, baseType: !7, size: 32, elements: !70)
!69 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!71 = !DIEnumerator(name: "_ISupper", value: 256)
!72 = !DIEnumerator(name: "_ISlower", value: 512)
!73 = !DIEnumerator(name: "_ISalpha", value: 1024)
!74 = !DIEnumerator(name: "_ISdigit", value: 2048)
!75 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!76 = !DIEnumerator(name: "_ISspace", value: 8192)
!77 = !DIEnumerator(name: "_ISprint", value: 16384)
!78 = !DIEnumerator(name: "_ISgraph", value: 32768)
!79 = !DIEnumerator(name: "_ISblank", value: 1)
!80 = !DIEnumerator(name: "_IScntrl", value: 2)
!81 = !DIEnumerator(name: "_ISpunct", value: 4)
!82 = !DIEnumerator(name: "_ISalnum", value: 8)
!83 = !{!27, !84, !25, !85, !86, !35, !89}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !87, line: 46, baseType: !88)
!87 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!88 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!89 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!90 = !{!91, !0}
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !93, file: !6, line: 575, type: !25, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "oputs_", scope: !6, file: !6, line: 573, type: !94, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !35, !35}
!96 = !{!97, !98, !99, !102, !103, !104, !105, !109, !110, !111, !112, !114, !169, !170, !171, !173, !174}
!97 = !DILocalVariable(name: "program", arg: 1, scope: !93, file: !6, line: 573, type: !35)
!98 = !DILocalVariable(name: "option", arg: 2, scope: !93, file: !6, line: 573, type: !35)
!99 = !DILocalVariable(name: "term", scope: !100, file: !6, line: 585, type: !35)
!100 = distinct !DILexicalBlock(scope: !101, file: !6, line: 582, column: 5)
!101 = distinct !DILexicalBlock(scope: !93, file: !6, line: 581, column: 7)
!102 = !DILocalVariable(name: "double_space", scope: !93, file: !6, line: 594, type: !38)
!103 = !DILocalVariable(name: "first_word", scope: !93, file: !6, line: 595, type: !35)
!104 = !DILocalVariable(name: "option_text", scope: !93, file: !6, line: 596, type: !35)
!105 = !DILocalVariable(name: "s", scope: !106, file: !6, line: 608, type: !35)
!106 = distinct !DILexicalBlock(scope: !107, file: !6, line: 605, column: 5)
!107 = distinct !DILexicalBlock(scope: !108, file: !6, line: 604, column: 12)
!108 = distinct !DILexicalBlock(scope: !93, file: !6, line: 597, column: 7)
!109 = !DILocalVariable(name: "spaces", scope: !106, file: !6, line: 609, type: !86)
!110 = !DILocalVariable(name: "anchor_len", scope: !93, file: !6, line: 620, type: !86)
!111 = !DILocalVariable(name: "desc_text", scope: !93, file: !6, line: 625, type: !35)
!112 = !DILocalVariable(name: "__ptr", scope: !113, file: !6, line: 644, type: !35)
!113 = distinct !DILexicalBlock(scope: !93, file: !6, line: 644, column: 3)
!114 = !DILocalVariable(name: "__stream", scope: !113, file: !6, line: 644, type: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !118)
!117 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !120)
!119 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !136, !138, !139, !140, !143, !144, !146, !150, !153, !155, !158, !161, !162, !163, !164, !165}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !118, file: !119, line: 51, baseType: !25, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !118, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !118, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !118, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !118, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !118, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !118, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !118, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !118, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !118, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !118, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !118, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !118, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !119, line: 36, flags: DIFlagFwdDecl)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !118, file: !119, line: 70, baseType: !137, size: 64, offset: 832)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !118, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !118, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !118, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !142, line: 152, baseType: !52)
!142 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !118, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !118, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!145 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !118, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !118, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !119, line: 43, baseType: null)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !118, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !142, line: 153, baseType: !52)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !118, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !119, line: 37, flags: DIFlagFwdDecl)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !118, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !119, line: 38, flags: DIFlagFwdDecl)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !118, file: !119, line: 93, baseType: !137, size: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !118, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !118, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !118, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !118, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 20)
!169 = !DILocalVariable(name: "__cnt", scope: !113, file: !6, line: 644, type: !86)
!170 = !DILocalVariable(name: "url_program", scope: !93, file: !6, line: 648, type: !35)
!171 = !DILocalVariable(name: "__ptr", scope: !172, file: !6, line: 686, type: !35)
!172 = distinct !DILexicalBlock(scope: !93, file: !6, line: 686, column: 3)
!173 = !DILocalVariable(name: "__stream", scope: !172, file: !6, line: 686, type: !115)
!174 = !DILocalVariable(name: "__cnt", scope: !172, file: !6, line: 686, type: !86)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 1024, elements: !185)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !178, line: 50, size: 256, elements: !179)
!178 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!179 = !{!180, !181, !182, !184}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !178, line: 52, baseType: !35, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !177, file: !178, line: 55, baseType: !25, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !177, file: !178, line: 56, baseType: !183, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !177, file: !178, line: 57, baseType: !25, size: 32, offset: 192)
!185 = !{!186}
!186 = !DISubrange(count: 4)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(name: "Version", scope: !189, file: !190, line: 3, type: !35, isLocal: false, isDefinition: true)
!189 = distinct !DICompileUnit(language: DW_LANG_C99, file: !190, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !191, splitDebugInlining: false, nameTableKind: None)
!190 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!191 = !{!187}
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "file_name", scope: !194, file: !195, line: 45, type: !35, isLocal: true, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !196, splitDebugInlining: false, nameTableKind: None)
!195 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!196 = !{!192, !197}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !194, file: !195, line: 55, type: !38, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !201, file: !202, line: 66, type: !237, isLocal: false, isDefinition: true)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !203, globals: !204, splitDebugInlining: false, nameTableKind: None)
!202 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!203 = !{!84, !89}
!204 = !{!205, !231, !199, !233, !235}
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "old_file_name", scope: !207, file: !202, line: 304, type: !35, isLocal: true, isDefinition: true)
!207 = distinct !DISubprogram(name: "verror_at_line", scope: !202, file: !202, line: 298, type: !208, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !224)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !25, !25, !35, !7, !35, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !211, line: 52, baseType: !212)
!211 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !213, line: 32, baseType: !214)
!213 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !215, baseType: !216)
!215 = !DIFile(filename: "lib/error.c", directory: "/src")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !217, size: 256, elements: !218)
!217 = !DINamespace(name: "std", scope: null)
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !216, file: !215, baseType: !84, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !216, file: !215, baseType: !84, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !216, file: !215, baseType: !84, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !216, file: !215, baseType: !25, size: 32, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !216, file: !215, baseType: !25, size: 32, offset: 224)
!224 = !{!225, !226, !227, !228, !229, !230}
!225 = !DILocalVariable(name: "status", arg: 1, scope: !207, file: !202, line: 298, type: !25)
!226 = !DILocalVariable(name: "errnum", arg: 2, scope: !207, file: !202, line: 298, type: !25)
!227 = !DILocalVariable(name: "file_name", arg: 3, scope: !207, file: !202, line: 298, type: !35)
!228 = !DILocalVariable(name: "line_number", arg: 4, scope: !207, file: !202, line: 298, type: !7)
!229 = !DILocalVariable(name: "message", arg: 5, scope: !207, file: !202, line: 298, type: !35)
!230 = !DILocalVariable(name: "args", arg: 6, scope: !207, file: !202, line: 298, type: !210)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "old_line_number", scope: !207, file: !202, line: 305, type: !7, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(name: "error_message_count", scope: !201, file: !202, line: 69, type: !7, isLocal: false, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !201, file: !202, line: 295, type: !25, isLocal: false, isDefinition: true)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{null}
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "program_name", scope: !242, file: !243, line: 31, type: !35, isLocal: false, isDefinition: true)
!242 = distinct !DICompileUnit(language: DW_LANG_C99, file: !243, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !244, globals: !245, splitDebugInlining: false, nameTableKind: None)
!243 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!244 = !{!27}
!245 = !{!240}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(name: "utf07FF", scope: !248, file: !249, line: 46, type: !277, isLocal: true, isDefinition: true)
!248 = distinct !DISubprogram(name: "proper_name_lite", scope: !249, file: !249, line: 38, type: !250, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !254)
!249 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!250 = !DISubroutineType(types: !251)
!251 = !{!35, !35, !35}
!252 = distinct !DICompileUnit(language: DW_LANG_C99, file: !249, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !253, splitDebugInlining: false, nameTableKind: None)
!253 = !{!246}
!254 = !{!255, !256, !257, !258, !263}
!255 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !248, file: !249, line: 38, type: !35)
!256 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !248, file: !249, line: 38, type: !35)
!257 = !DILocalVariable(name: "translation", scope: !248, file: !249, line: 40, type: !35)
!258 = !DILocalVariable(name: "w", scope: !248, file: !249, line: 47, type: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !260, line: 37, baseType: !261)
!260 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !142, line: 57, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !142, line: 42, baseType: !7)
!263 = !DILocalVariable(name: "mbs", scope: !248, file: !249, line: 48, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !265, line: 6, baseType: !266)
!265 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !267, line: 21, baseType: !268)
!267 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 13, size: 64, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !268, file: !267, line: 15, baseType: !25, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !268, file: !267, line: 20, baseType: !272, size: 32, offset: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 16, size: 32, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !272, file: !267, line: 18, baseType: !7, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !272, file: !267, line: 19, baseType: !276, size: 32)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !185)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 16, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 2)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !282, file: !283, line: 76, type: !365, isLocal: false, isDefinition: true)
!282 = distinct !DICompileUnit(language: DW_LANG_C99, file: !283, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !284, retainedTypes: !304, globals: !305, splitDebugInlining: false, nameTableKind: None)
!283 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!284 = !{!285, !299, !68}
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !286, line: 42, baseType: !7, size: 32, elements: !287)
!286 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298}
!288 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!289 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!290 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!291 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!292 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!293 = !DIEnumerator(name: "c_quoting_style", value: 5)
!294 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!295 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!296 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!297 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!298 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !286, line: 254, baseType: !7, size: 32, elements: !300)
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!302 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!303 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!304 = !{!25, !85, !86}
!305 = !{!280, !306, !312, !324, !326, !331, !354, !361, !363}
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !282, file: !283, line: 92, type: !308, isLocal: false, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 320, elements: !310)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!310 = !{!311}
!311 = !DISubrange(count: 10)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !282, file: !283, line: 1040, type: !314, isLocal: false, isDefinition: true)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !283, line: 56, size: 448, elements: !315)
!315 = !{!316, !317, !318, !322, !323}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !314, file: !283, line: 59, baseType: !285, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !314, file: !283, line: 62, baseType: !25, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !314, file: !283, line: 66, baseType: !319, size: 256, offset: 64)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 8)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !314, file: !283, line: 69, baseType: !35, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !314, file: !283, line: 72, baseType: !35, size: 64, offset: 384)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !282, file: !283, line: 107, type: !314, isLocal: true, isDefinition: true)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "slot0", scope: !282, file: !283, line: 831, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 256)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "quote", scope: !333, file: !283, line: 228, type: !352, isLocal: true, isDefinition: true)
!333 = distinct !DISubprogram(name: "gettext_quote", scope: !283, file: !283, line: 197, type: !334, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{!35, !35, !285}
!336 = !{!337, !338, !339, !340, !341}
!337 = !DILocalVariable(name: "msgid", arg: 1, scope: !333, file: !283, line: 197, type: !35)
!338 = !DILocalVariable(name: "s", arg: 2, scope: !333, file: !283, line: 197, type: !285)
!339 = !DILocalVariable(name: "translation", scope: !333, file: !283, line: 199, type: !35)
!340 = !DILocalVariable(name: "w", scope: !333, file: !283, line: 229, type: !259)
!341 = !DILocalVariable(name: "mbs", scope: !333, file: !283, line: 230, type: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !265, line: 6, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !267, line: 21, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 13, size: 64, elements: !345)
!345 = !{!346, !347}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !344, file: !267, line: 15, baseType: !25, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !344, file: !267, line: 20, baseType: !348, size: 32, offset: 32)
!348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !344, file: !267, line: 16, size: 32, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !348, file: !267, line: 18, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !348, file: !267, line: 19, baseType: !276, size: 32)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 64, elements: !353)
!353 = !{!279, !186}
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "slotvec", scope: !282, file: !283, line: 834, type: !356, isLocal: true, isDefinition: true)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !283, line: 823, size: 128, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !357, file: !283, line: 825, baseType: !86, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !357, file: !283, line: 826, baseType: !27, size: 64, offset: 64)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "nslots", scope: !282, file: !283, line: 832, type: !25, isLocal: true, isDefinition: true)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(name: "slotvec0", scope: !282, file: !283, line: 833, type: !357, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 704, elements: !367)
!366 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!367 = !{!368}
!368 = !DISubrange(count: 11)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !371, file: !372, line: 26, type: !374, isLocal: false, isDefinition: true)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !373, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!373 = !{!369}
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 47)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "exit_failure", scope: !379, file: !380, line: 24, type: !382, isLocal: false, isDefinition: true)
!379 = distinct !DICompileUnit(language: DW_LANG_C99, file: !380, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !381, splitDebugInlining: false, nameTableKind: None)
!380 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!381 = !{!377}
!382 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(name: "internal_state", scope: !385, file: !386, line: 97, type: !389, isLocal: true, isDefinition: true)
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !387, globals: !388, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!387 = !{!84, !86, !89}
!388 = !{!383}
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !265, line: 6, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !267, line: 21, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !267, line: 13, size: 64, elements: !392)
!392 = !{!393, !394}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !391, file: !267, line: 15, baseType: !25, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !391, file: !267, line: 20, baseType: !395, size: 32, offset: 32)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !391, file: !267, line: 16, size: 32, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !395, file: !267, line: 18, baseType: !7, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !395, file: !267, line: 19, baseType: !276, size: 32)
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !403, retainedTypes: !407, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!403 = !{!404}
!404 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !402, line: 40, baseType: !7, size: 32, elements: !405)
!405 = !{!406}
!406 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!407 = !{!84}
!408 = distinct !DICompileUnit(language: DW_LANG_C99, file: !409, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !410, retainedTypes: !441, splitDebugInlining: false, nameTableKind: None)
!409 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!410 = !{!411, !423}
!411 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !412, file: !409, line: 188, baseType: !7, size: 32, elements: !421)
!412 = distinct !DISubprogram(name: "x2nrealloc", scope: !409, file: !409, line: 176, type: !413, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !416)
!413 = !DISubroutineType(types: !414)
!414 = !{!84, !84, !415, !86}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "p", arg: 1, scope: !412, file: !409, line: 176, type: !84)
!418 = !DILocalVariable(name: "pn", arg: 2, scope: !412, file: !409, line: 176, type: !415)
!419 = !DILocalVariable(name: "s", arg: 3, scope: !412, file: !409, line: 176, type: !86)
!420 = !DILocalVariable(name: "n", scope: !412, file: !409, line: 178, type: !86)
!421 = !{!422}
!422 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!423 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !424, file: !409, line: 228, baseType: !7, size: 32, elements: !421)
!424 = distinct !DISubprogram(name: "xpalloc", scope: !409, file: !409, line: 223, type: !425, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !431)
!425 = !DISubroutineType(types: !426)
!426 = !{!84, !84, !427, !428, !430, !428}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !429, line: 130, baseType: !430)
!429 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !87, line: 35, baseType: !52)
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440}
!432 = !DILocalVariable(name: "pa", arg: 1, scope: !424, file: !409, line: 223, type: !84)
!433 = !DILocalVariable(name: "pn", arg: 2, scope: !424, file: !409, line: 223, type: !427)
!434 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !424, file: !409, line: 223, type: !428)
!435 = !DILocalVariable(name: "n_max", arg: 4, scope: !424, file: !409, line: 223, type: !430)
!436 = !DILocalVariable(name: "s", arg: 5, scope: !424, file: !409, line: 223, type: !428)
!437 = !DILocalVariable(name: "n0", scope: !424, file: !409, line: 230, type: !428)
!438 = !DILocalVariable(name: "n", scope: !424, file: !409, line: 237, type: !428)
!439 = !DILocalVariable(name: "nbytes", scope: !424, file: !409, line: 248, type: !428)
!440 = !DILocalVariable(name: "adjusted_nbytes", scope: !424, file: !409, line: 252, type: !428)
!441 = !{!27, !84, !38, !52, !88}
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !446, retainedTypes: !447, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!446 = !{!13}
!447 = !{!38, !52, !88}
!448 = distinct !DICompileUnit(language: DW_LANG_C99, file: !449, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!449 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!452 = distinct !DICompileUnit(language: DW_LANG_C99, file: !453, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!456 = distinct !DICompileUnit(language: DW_LANG_C99, file: !457, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !458, splitDebugInlining: false, nameTableKind: None)
!457 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!458 = !{!38, !88, !84}
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!463 = distinct !DICompileUnit(language: DW_LANG_C99, file: !464, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !407, splitDebugInlining: false, nameTableKind: None)
!464 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!465 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!466 = !{i32 7, !"Dwarf Version", i32 5}
!467 = !{i32 2, !"Debug Info Version", i32 3}
!468 = !{i32 1, !"wchar_size", i32 4}
!469 = !{i32 1, !"branch-target-enforcement", i32 0}
!470 = !{i32 1, !"sign-return-address", i32 0}
!471 = !{i32 1, !"sign-return-address-all", i32 0}
!472 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!473 = !{i32 7, !"PIC Level", i32 2}
!474 = !{i32 7, !"PIE Level", i32 2}
!475 = !{i32 7, !"uwtable", i32 1}
!476 = !{i32 7, !"frame-pointer", i32 1}
!477 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 66, type: !478, scopeLine: 67, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !25}
!480 = !{!481}
!481 = !DILocalVariable(name: "status", arg: 1, scope: !477, file: !3, line: 66, type: !25)
!482 = !DILocation(line: 0, scope: !477)
!483 = !DILocation(line: 68, column: 14, scope: !484)
!484 = distinct !DILexicalBlock(scope: !477, file: !3, line: 68, column: 7)
!485 = !DILocation(line: 68, column: 7, scope: !477)
!486 = !DILocation(line: 69, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 69, column: 5)
!488 = !{!489, !489, i64 0}
!489 = !{!"any pointer", !490, i64 0}
!490 = !{!"omnipotent char", !491, i64 0}
!491 = !{!"Simple C/C++ TBAA"}
!492 = !DILocation(line: 72, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !484, file: !3, line: 71, column: 5)
!494 = !DILocation(line: 73, column: 7, scope: !493)
!495 = !DILocation(line: 736, column: 3, scope: !496, inlinedAt: !498)
!496 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 734, type: !238, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!497 = !{}
!498 = distinct !DILocation(line: 80, column: 7, scope: !493)
!499 = !DILocation(line: 82, column: 7, scope: !493)
!500 = !DILocation(line: 86, column: 7, scope: !493)
!501 = !DILocation(line: 87, column: 7, scope: !493)
!502 = !DILocation(line: 88, column: 7, scope: !493)
!503 = !DILocalVariable(name: "program", arg: 1, scope: !504, file: !6, line: 824, type: !35)
!504 = distinct !DISubprogram(name: "emit_exec_status", scope: !6, file: !6, line: 824, type: !505, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !507)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !35}
!507 = !{!503}
!508 = !DILocation(line: 0, scope: !504, inlinedAt: !509)
!509 = distinct !DILocation(line: 89, column: 7, scope: !493)
!510 = !DILocation(line: 826, column: 7, scope: !504, inlinedAt: !509)
!511 = !DILocalVariable(name: "program", arg: 1, scope: !512, file: !6, line: 836, type: !35)
!512 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 836, type: !505, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!513 = !{!511, !514, !523, !524, !526, !527}
!514 = !DILocalVariable(name: "infomap", scope: !512, file: !6, line: 838, type: !515)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 896, elements: !521)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !512, file: !6, line: 838, size: 128, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !517, file: !6, line: 838, baseType: !35, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !517, file: !6, line: 838, baseType: !35, size: 64, offset: 64)
!521 = !{!522}
!522 = !DISubrange(count: 7)
!523 = !DILocalVariable(name: "node", scope: !512, file: !6, line: 848, type: !35)
!524 = !DILocalVariable(name: "map_prog", scope: !512, file: !6, line: 849, type: !525)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!526 = !DILocalVariable(name: "lc_messages", scope: !512, file: !6, line: 861, type: !35)
!527 = !DILocalVariable(name: "url_program", scope: !512, file: !6, line: 874, type: !35)
!528 = !DILocation(line: 0, scope: !512, inlinedAt: !529)
!529 = distinct !DILocation(line: 90, column: 7, scope: !493)
!530 = !DILocation(line: 838, column: 3, scope: !512, inlinedAt: !529)
!531 = !DILocation(line: 838, column: 67, scope: !512, inlinedAt: !529)
!532 = !DILocation(line: 849, column: 36, scope: !512, inlinedAt: !529)
!533 = !DILocation(line: 851, column: 3, scope: !512, inlinedAt: !529)
!534 = !DILocalVariable(name: "__s1", arg: 1, scope: !535, file: !536, line: 1359, type: !35)
!535 = distinct !DISubprogram(name: "streq", scope: !536, file: !536, line: 1359, type: !537, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !539)
!536 = !DIFile(filename: "./lib/string.h", directory: "/src")
!537 = !DISubroutineType(types: !538)
!538 = !{!38, !35, !35}
!539 = !{!534, !540}
!540 = !DILocalVariable(name: "__s2", arg: 2, scope: !535, file: !536, line: 1359, type: !35)
!541 = !DILocation(line: 0, scope: !535, inlinedAt: !542)
!542 = distinct !DILocation(line: 851, column: 33, scope: !512, inlinedAt: !529)
!543 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !542)
!544 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !542)
!545 = !DILocation(line: 852, column: 13, scope: !512, inlinedAt: !529)
!546 = !DILocation(line: 851, column: 20, scope: !512, inlinedAt: !529)
!547 = !{!548, !489, i64 0}
!548 = !{!"infomap", !489, i64 0, !489, i64 8}
!549 = !DILocation(line: 851, column: 10, scope: !512, inlinedAt: !529)
!550 = !DILocation(line: 851, column: 28, scope: !512, inlinedAt: !529)
!551 = distinct !{!551, !533, !545, !552}
!552 = !{!"llvm.loop.mustprogress"}
!553 = !DILocation(line: 854, column: 17, scope: !554, inlinedAt: !529)
!554 = distinct !DILexicalBlock(scope: !512, file: !6, line: 854, column: 7)
!555 = !{!548, !489, i64 8}
!556 = !DILocation(line: 854, column: 7, scope: !554, inlinedAt: !529)
!557 = !DILocation(line: 854, column: 7, scope: !512, inlinedAt: !529)
!558 = !DILocation(line: 857, column: 3, scope: !512, inlinedAt: !529)
!559 = !DILocation(line: 861, column: 29, scope: !512, inlinedAt: !529)
!560 = !DILocation(line: 862, column: 7, scope: !561, inlinedAt: !529)
!561 = distinct !DILexicalBlock(scope: !512, file: !6, line: 862, column: 7)
!562 = !DILocation(line: 862, column: 19, scope: !561, inlinedAt: !529)
!563 = !DILocation(line: 862, column: 22, scope: !561, inlinedAt: !529)
!564 = !DILocation(line: 862, column: 7, scope: !512, inlinedAt: !529)
!565 = !DILocation(line: 868, column: 7, scope: !566, inlinedAt: !529)
!566 = distinct !DILexicalBlock(scope: !561, file: !6, line: 863, column: 5)
!567 = !DILocation(line: 870, column: 5, scope: !566, inlinedAt: !529)
!568 = !DILocation(line: 0, scope: !535, inlinedAt: !569)
!569 = distinct !DILocation(line: 874, column: 29, scope: !512, inlinedAt: !529)
!570 = !DILocation(line: 875, column: 3, scope: !512, inlinedAt: !529)
!571 = !DILocation(line: 877, column: 3, scope: !512, inlinedAt: !529)
!572 = !DILocation(line: 879, column: 1, scope: !512, inlinedAt: !529)
!573 = !DILocation(line: 92, column: 3, scope: !477)
!574 = !DISubprogram(name: "dcgettext", scope: !575, file: !575, line: 51, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!575 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!576 = !DISubroutineType(types: !577)
!577 = !{!27, !35, !35, !25}
!578 = !DISubprogram(name: "fputs_unlocked", scope: !211, file: !211, line: 691, type: !579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!579 = !DISubroutineType(types: !580)
!580 = !{!25, !581, !582}
!581 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!582 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!583 = !DILocation(line: 0, scope: !93)
!584 = !DILocation(line: 581, column: 7, scope: !101)
!585 = !{!586, !586, i64 0}
!586 = !{!"int", !490, i64 0}
!587 = !DILocation(line: 581, column: 19, scope: !101)
!588 = !DILocation(line: 581, column: 7, scope: !93)
!589 = !DILocation(line: 585, column: 26, scope: !100)
!590 = !DILocation(line: 0, scope: !100)
!591 = !DILocation(line: 586, column: 23, scope: !100)
!592 = !DILocation(line: 586, column: 28, scope: !100)
!593 = !DILocation(line: 586, column: 32, scope: !100)
!594 = !{!490, !490, i64 0}
!595 = !DILocation(line: 586, column: 38, scope: !100)
!596 = !DILocation(line: 0, scope: !535, inlinedAt: !597)
!597 = distinct !DILocation(line: 586, column: 41, scope: !100)
!598 = !DILocation(line: 1361, column: 11, scope: !535, inlinedAt: !597)
!599 = !DILocation(line: 1361, column: 10, scope: !535, inlinedAt: !597)
!600 = !DILocation(line: 586, column: 19, scope: !100)
!601 = !DILocation(line: 587, column: 5, scope: !100)
!602 = !DILocation(line: 588, column: 7, scope: !603)
!603 = distinct !DILexicalBlock(scope: !93, file: !6, line: 588, column: 7)
!604 = !DILocation(line: 588, column: 7, scope: !93)
!605 = !DILocation(line: 590, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !603, file: !6, line: 589, column: 5)
!607 = !DILocation(line: 591, column: 7, scope: !606)
!608 = !DILocation(line: 595, column: 37, scope: !93)
!609 = !DILocation(line: 595, column: 35, scope: !93)
!610 = !DILocation(line: 596, column: 29, scope: !93)
!611 = !DILocation(line: 597, column: 8, scope: !108)
!612 = !DILocation(line: 597, column: 7, scope: !93)
!613 = !DILocation(line: 604, column: 24, scope: !107)
!614 = !DILocation(line: 604, column: 12, scope: !108)
!615 = !DILocation(line: 0, scope: !106)
!616 = !DILocation(line: 610, column: 16, scope: !106)
!617 = !DILocation(line: 610, column: 7, scope: !106)
!618 = !DILocation(line: 611, column: 21, scope: !106)
!619 = !{!620, !620, i64 0}
!620 = !{!"short", !490, i64 0}
!621 = !DILocation(line: 611, column: 19, scope: !106)
!622 = !DILocation(line: 611, column: 16, scope: !106)
!623 = !DILocation(line: 610, column: 30, scope: !106)
!624 = distinct !{!624, !617, !618, !552}
!625 = !DILocation(line: 612, column: 18, scope: !626)
!626 = distinct !DILexicalBlock(scope: !106, file: !6, line: 612, column: 11)
!627 = !DILocation(line: 612, column: 11, scope: !106)
!628 = !DILocation(line: 620, column: 23, scope: !93)
!629 = !DILocation(line: 625, column: 39, scope: !93)
!630 = !DILocation(line: 626, column: 3, scope: !93)
!631 = !DILocation(line: 626, column: 10, scope: !93)
!632 = !DILocation(line: 626, column: 21, scope: !93)
!633 = !DILocation(line: 628, column: 44, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !6, line: 628, column: 11)
!635 = distinct !DILexicalBlock(scope: !93, file: !6, line: 627, column: 5)
!636 = !DILocation(line: 628, column: 32, scope: !634)
!637 = !DILocation(line: 628, column: 49, scope: !634)
!638 = !DILocation(line: 628, column: 11, scope: !635)
!639 = !DILocation(line: 630, column: 11, scope: !640)
!640 = distinct !DILexicalBlock(scope: !635, file: !6, line: 630, column: 11)
!641 = !DILocation(line: 630, column: 11, scope: !635)
!642 = !DILocation(line: 632, column: 26, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !6, line: 632, column: 15)
!644 = distinct !DILexicalBlock(scope: !640, file: !6, line: 631, column: 9)
!645 = !DILocation(line: 632, column: 34, scope: !643)
!646 = !DILocation(line: 632, column: 37, scope: !643)
!647 = !DILocation(line: 632, column: 15, scope: !644)
!648 = !DILocation(line: 636, column: 29, scope: !649)
!649 = distinct !DILexicalBlock(scope: !644, file: !6, line: 636, column: 15)
!650 = !DILocation(line: 640, column: 16, scope: !635)
!651 = distinct !{!651, !630, !652, !552}
!652 = !DILocation(line: 641, column: 5, scope: !93)
!653 = !DILocation(line: 644, column: 3, scope: !93)
!654 = !DILocation(line: 0, scope: !535, inlinedAt: !655)
!655 = distinct !DILocation(line: 648, column: 31, scope: !93)
!656 = !DILocation(line: 0, scope: !535, inlinedAt: !657)
!657 = distinct !DILocation(line: 649, column: 31, scope: !93)
!658 = !DILocation(line: 0, scope: !535, inlinedAt: !659)
!659 = distinct !DILocation(line: 650, column: 31, scope: !93)
!660 = !DILocation(line: 0, scope: !535, inlinedAt: !661)
!661 = distinct !DILocation(line: 651, column: 31, scope: !93)
!662 = !DILocation(line: 0, scope: !535, inlinedAt: !663)
!663 = distinct !DILocation(line: 652, column: 31, scope: !93)
!664 = !DILocation(line: 0, scope: !535, inlinedAt: !665)
!665 = distinct !DILocation(line: 653, column: 31, scope: !93)
!666 = !DILocation(line: 0, scope: !535, inlinedAt: !667)
!667 = distinct !DILocation(line: 654, column: 31, scope: !93)
!668 = !DILocation(line: 0, scope: !535, inlinedAt: !669)
!669 = distinct !DILocation(line: 655, column: 31, scope: !93)
!670 = !DILocation(line: 0, scope: !535, inlinedAt: !671)
!671 = distinct !DILocation(line: 656, column: 31, scope: !93)
!672 = !DILocation(line: 0, scope: !535, inlinedAt: !673)
!673 = distinct !DILocation(line: 657, column: 31, scope: !93)
!674 = !DILocation(line: 663, column: 7, scope: !675)
!675 = distinct !DILexicalBlock(scope: !93, file: !6, line: 663, column: 7)
!676 = !DILocation(line: 664, column: 7, scope: !675)
!677 = !DILocation(line: 664, column: 10, scope: !675)
!678 = !DILocation(line: 663, column: 7, scope: !93)
!679 = !DILocation(line: 669, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !675, file: !6, line: 665, column: 5)
!681 = !DILocation(line: 671, column: 5, scope: !680)
!682 = !DILocation(line: 676, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !675, file: !6, line: 673, column: 5)
!684 = !DILocation(line: 679, column: 3, scope: !93)
!685 = !DILocation(line: 683, column: 3, scope: !93)
!686 = !DILocation(line: 686, column: 3, scope: !93)
!687 = !DILocation(line: 688, column: 3, scope: !93)
!688 = !DILocation(line: 691, column: 3, scope: !93)
!689 = !DILocation(line: 695, column: 3, scope: !93)
!690 = !DILocation(line: 696, column: 1, scope: !93)
!691 = !DISubprogram(name: "setlocale", scope: !692, file: !692, line: 122, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!692 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!693 = !DISubroutineType(types: !694)
!694 = !{!27, !25, !35}
!695 = !DISubprogram(name: "getenv", scope: !696, file: !696, line: 641, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!696 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!697 = !DISubroutineType(types: !698)
!698 = !{!27, !35}
!699 = !DISubprogram(name: "fwrite_unlocked", scope: !211, file: !211, line: 704, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!700 = !DISubroutineType(types: !701)
!701 = !{!86, !702, !86, !86, !582}
!702 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!705 = !DILocation(line: 0, scope: !22)
!706 = !DILocation(line: 111, column: 21, scope: !22)
!707 = !DILocation(line: 111, column: 3, scope: !22)
!708 = !DILocation(line: 112, column: 3, scope: !22)
!709 = !DILocation(line: 113, column: 3, scope: !22)
!710 = !DILocation(line: 114, column: 3, scope: !22)
!711 = !DILocalVariable(name: "status", arg: 1, scope: !712, file: !6, line: 102, type: !25)
!712 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 102, type: !478, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!713 = !{!711}
!714 = !DILocation(line: 0, scope: !712, inlinedAt: !715)
!715 = distinct !DILocation(line: 116, column: 3, scope: !22)
!716 = !DILocation(line: 105, column: 18, scope: !717, inlinedAt: !715)
!717 = distinct !DILexicalBlock(scope: !712, file: !6, line: 104, column: 7)
!718 = !DILocation(line: 117, column: 3, scope: !22)
!719 = !DILocation(line: 119, column: 17, scope: !42)
!720 = !DILocation(line: 119, column: 3, scope: !43)
!721 = !DILocation(line: 121, column: 23, scope: !41)
!722 = !DILocation(line: 0, scope: !41)
!723 = !DILocation(line: 123, column: 11, scope: !46)
!724 = !DILocation(line: 123, column: 16, scope: !46)
!725 = !DILocation(line: 123, column: 23, scope: !46)
!726 = !DILocation(line: 123, column: 44, scope: !46)
!727 = !DILocation(line: 123, column: 49, scope: !46)
!728 = !DILocation(line: 123, column: 56, scope: !46)
!729 = !DILocation(line: 123, column: 41, scope: !46)
!730 = !DILocation(line: 123, column: 37, scope: !46)
!731 = !DILocalVariable(name: "c", arg: 1, scope: !732, file: !733, line: 233, type: !25)
!732 = distinct !DISubprogram(name: "c_isdigit", scope: !733, file: !733, line: 233, type: !734, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!733 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!734 = !DISubroutineType(types: !735)
!735 = !{!38, !25}
!736 = !{!731}
!737 = !DILocation(line: 0, scope: !732, inlinedAt: !738)
!738 = distinct !DILocation(line: 123, column: 26, scope: !46)
!739 = !DILocation(line: 235, column: 3, scope: !732, inlinedAt: !738)
!740 = !DILocation(line: 123, column: 11, scope: !41)
!741 = !DILocation(line: 126, column: 11, scope: !742)
!742 = distinct !DILexicalBlock(scope: !46, file: !3, line: 124, column: 9)
!743 = !DILocation(line: 127, column: 9, scope: !742)
!744 = !DILocation(line: 131, column: 37, scope: !45)
!745 = !DILocation(line: 131, column: 32, scope: !45)
!746 = !DILocation(line: 0, scope: !45)
!747 = !DILocation(line: 132, column: 35, scope: !45)
!748 = !DILocation(line: 135, column: 26, scope: !45)
!749 = !DILocation(line: 135, column: 24, scope: !45)
!750 = !DILocation(line: 138, column: 18, scope: !45)
!751 = !DILocation(line: 140, column: 15, scope: !45)
!752 = !DILocation(line: 141, column: 16, scope: !45)
!753 = !DILocation(line: 141, column: 13, scope: !45)
!754 = !DILocation(line: 143, column: 11, scope: !45)
!755 = !DILocation(line: 152, column: 13, scope: !756)
!756 = distinct !DILexicalBlock(scope: !45, file: !3, line: 144, column: 13)
!757 = !DILocation(line: 154, column: 13, scope: !756)
!758 = !DILocation(line: 157, column: 15, scope: !756)
!759 = !DILocation(line: 146, column: 34, scope: !756)
!760 = !DILocation(line: 0, scope: !46)
!761 = !DILocation(line: 0, scope: !43)
!762 = !DILocation(line: 166, column: 7, scope: !51)
!763 = !DILocation(line: 166, column: 7, scope: !22)
!764 = !DILocation(line: 179, column: 7, scope: !50)
!765 = !DILocation(line: 0, scope: !50)
!766 = !DILocation(line: 180, column: 30, scope: !767)
!767 = distinct !DILexicalBlock(scope: !50, file: !3, line: 180, column: 11)
!768 = !DILocation(line: 180, column: 28, scope: !767)
!769 = !DILocation(line: 180, column: 11, scope: !50)
!770 = !DILocation(line: 181, column: 9, scope: !767)
!771 = !DILocation(line: 213, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !22, file: !3, line: 213, column: 7)
!773 = !DILocation(line: 213, column: 7, scope: !22)
!774 = !DILocation(line: 209, column: 20, scope: !50)
!775 = !{!776, !776, i64 0}
!776 = !{!"long", !490, i64 0}
!777 = !DILocation(line: 211, column: 5, scope: !51)
!778 = !DILocation(line: 217, column: 11, scope: !779)
!779 = distinct !DILexicalBlock(scope: !780, file: !3, line: 216, column: 9)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 215, column: 11)
!781 = distinct !DILexicalBlock(scope: !772, file: !3, line: 214, column: 5)
!782 = !DILocation(line: 218, column: 11, scope: !779)
!783 = !DILocation(line: 221, column: 7, scope: !781)
!784 = !DILocation(line: 221, column: 13, scope: !781)
!785 = !DILocation(line: 222, column: 26, scope: !781)
!786 = !DILocation(line: 223, column: 28, scope: !787)
!787 = distinct !DILexicalBlock(scope: !781, file: !3, line: 223, column: 11)
!788 = !DILocation(line: 223, column: 34, scope: !787)
!789 = !DILocation(line: 223, column: 37, scope: !787)
!790 = !DILocation(line: 223, column: 43, scope: !787)
!791 = !DILocation(line: 223, column: 11, scope: !781)
!792 = !DILocation(line: 224, column: 9, scope: !787)
!793 = !DILocation(line: 225, column: 7, scope: !781)
!794 = !DILocation(line: 226, column: 7, scope: !781)
!795 = !DILocation(line: 229, column: 3, scope: !22)
!796 = !DILocation(line: 229, column: 9, scope: !22)
!797 = !DILocation(line: 233, column: 22, scope: !22)
!798 = !DILocation(line: 234, column: 24, scope: !799)
!799 = distinct !DILexicalBlock(scope: !22, file: !3, line: 234, column: 7)
!800 = !DILocation(line: 234, column: 30, scope: !799)
!801 = !DILocation(line: 234, column: 33, scope: !799)
!802 = !DILocation(line: 234, column: 39, scope: !799)
!803 = !DILocation(line: 234, column: 7, scope: !22)
!804 = !DILocation(line: 235, column: 5, scope: !799)
!805 = !DILocation(line: 236, column: 56, scope: !22)
!806 = !DILocation(line: 236, column: 9, scope: !22)
!807 = !DILocation(line: 236, column: 70, scope: !22)
!808 = !DILocation(line: 238, column: 7, scope: !22)
!809 = !DILocation(line: 240, column: 7, scope: !54)
!810 = !DILocalVariable(name: "err", arg: 1, scope: !811, file: !3, line: 96, type: !25)
!811 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 96, type: !734, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !812)
!812 = !{!810}
!813 = !DILocation(line: 0, scope: !811, inlinedAt: !814)
!814 = distinct !DILocation(line: 240, column: 7, scope: !54)
!815 = !DILocation(line: 98, column: 14, scope: !811, inlinedAt: !814)
!816 = !DILocation(line: 98, column: 24, scope: !811, inlinedAt: !814)
!817 = !DILocation(line: 0, scope: !54)
!818 = !DILocation(line: 247, column: 11, scope: !819)
!819 = distinct !DILexicalBlock(scope: !55, file: !3, line: 247, column: 11)
!820 = !DILocalVariable(name: "__stream", arg: 1, scope: !821, file: !822, line: 135, type: !115)
!821 = distinct !DISubprogram(name: "ferror_unlocked", scope: !822, file: !822, line: 135, type: !823, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!822 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!823 = !DISubroutineType(types: !824)
!824 = !{!25, !115}
!825 = !{!820}
!826 = !DILocation(line: 0, scope: !821, inlinedAt: !827)
!827 = distinct !DILocation(line: 247, column: 11, scope: !819)
!828 = !DILocation(line: 137, column: 10, scope: !821, inlinedAt: !827)
!829 = !{!830, !586, i64 0}
!830 = !{!"_IO_FILE", !586, i64 0, !489, i64 8, !489, i64 16, !489, i64 24, !489, i64 32, !489, i64 40, !489, i64 48, !489, i64 56, !489, i64 64, !489, i64 72, !489, i64 80, !489, i64 88, !489, i64 96, !489, i64 104, !586, i64 112, !586, i64 116, !776, i64 120, !620, i64 128, !490, i64 130, !490, i64 131, !489, i64 136, !776, i64 144, !489, i64 152, !489, i64 160, !489, i64 168, !489, i64 176, !776, i64 184, !586, i64 192, !490, i64 196}
!831 = !DILocation(line: 247, column: 11, scope: !55)
!832 = !DILocation(line: 251, column: 11, scope: !22)
!833 = !DILocation(line: 251, column: 3, scope: !22)
!834 = !DILocation(line: 253, column: 21, scope: !22)
!835 = !DILocation(line: 253, column: 27, scope: !22)
!836 = !DILocation(line: 254, column: 3, scope: !22)
!837 = !DILocation(line: 256, column: 1, scope: !22)
!838 = !DISubprogram(name: "bindtextdomain", scope: !575, file: !575, line: 86, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!839 = !DISubroutineType(types: !840)
!840 = !{!27, !35, !35}
!841 = !DISubprogram(name: "textdomain", scope: !575, file: !575, line: 82, type: !697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!842 = !DISubprogram(name: "atexit", scope: !696, file: !696, line: 602, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!843 = !DISubroutineType(types: !844)
!844 = !{!25, !237}
!845 = !DISubprogram(name: "getopt_long", scope: !178, file: !178, line: 66, type: !846, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!846 = !DISubroutineType(types: !847)
!847 = !{!25, !25, !848, !35, !850, !183}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!851 = !DISubprogram(name: "getpriority", scope: !852, file: !852, line: 105, type: !853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!852 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "e55940cb1bf33174af2c45f02cd69e8a")
!853 = !DISubroutineType(types: !854)
!854 = !{!25, !855, !856}
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__priority_which_t", file: !852, line: 40, baseType: !62)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "id_t", file: !857, line: 103, baseType: !858)
!857 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__id_t", file: !142, line: 159, baseType: !7)
!859 = !DISubprogram(name: "setpriority", scope: !852, file: !852, line: 109, type: !860, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!860 = !DISubroutineType(types: !861)
!861 = !{!25, !855, !856, !25}
!862 = !DISubprogram(name: "execvp", scope: !863, file: !863, line: 599, type: !864, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!863 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!864 = !DISubroutineType(types: !865)
!865 = !{!25, !35, !848}
!866 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !195, file: !195, line: 50, type: !505, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !867)
!867 = !{!868}
!868 = !DILocalVariable(name: "file", arg: 1, scope: !866, file: !195, line: 50, type: !35)
!869 = !DILocation(line: 0, scope: !866)
!870 = !DILocation(line: 52, column: 13, scope: !866)
!871 = !DILocation(line: 53, column: 1, scope: !866)
!872 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !195, file: !195, line: 87, type: !873, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !875)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !38}
!875 = !{!876}
!876 = !DILocalVariable(name: "ignore", arg: 1, scope: !872, file: !195, line: 87, type: !38)
!877 = !DILocation(line: 0, scope: !872)
!878 = !DILocation(line: 89, column: 16, scope: !872)
!879 = !{!880, !880, i64 0}
!880 = !{!"_Bool", !490, i64 0}
!881 = !DILocation(line: 90, column: 1, scope: !872)
!882 = distinct !DISubprogram(name: "close_stdout", scope: !195, file: !195, line: 116, type: !238, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !194, retainedNodes: !883)
!883 = !{!884}
!884 = !DILocalVariable(name: "write_error", scope: !885, file: !195, line: 121, type: !35)
!885 = distinct !DILexicalBlock(scope: !886, file: !195, line: 120, column: 5)
!886 = distinct !DILexicalBlock(scope: !882, file: !195, line: 118, column: 7)
!887 = !DILocation(line: 118, column: 21, scope: !886)
!888 = !DILocation(line: 118, column: 7, scope: !886)
!889 = !DILocation(line: 118, column: 29, scope: !886)
!890 = !DILocation(line: 119, column: 7, scope: !886)
!891 = !DILocation(line: 119, column: 12, scope: !886)
!892 = !{i8 0, i8 2}
!893 = !DILocation(line: 119, column: 25, scope: !886)
!894 = !DILocation(line: 119, column: 28, scope: !886)
!895 = !DILocation(line: 119, column: 34, scope: !886)
!896 = !DILocation(line: 118, column: 7, scope: !882)
!897 = !DILocation(line: 121, column: 33, scope: !885)
!898 = !DILocation(line: 0, scope: !885)
!899 = !DILocation(line: 122, column: 11, scope: !900)
!900 = distinct !DILexicalBlock(scope: !885, file: !195, line: 122, column: 11)
!901 = !DILocation(line: 0, scope: !900)
!902 = !DILocation(line: 122, column: 11, scope: !885)
!903 = !DILocation(line: 123, column: 9, scope: !900)
!904 = !DILocation(line: 126, column: 9, scope: !900)
!905 = !DILocation(line: 128, column: 14, scope: !885)
!906 = !DILocation(line: 128, column: 7, scope: !885)
!907 = !DILocation(line: 133, column: 42, scope: !908)
!908 = distinct !DILexicalBlock(scope: !882, file: !195, line: 133, column: 7)
!909 = !DILocation(line: 133, column: 28, scope: !908)
!910 = !DILocation(line: 133, column: 50, scope: !908)
!911 = !DILocation(line: 133, column: 7, scope: !882)
!912 = !DILocation(line: 134, column: 12, scope: !908)
!913 = !DILocation(line: 134, column: 5, scope: !908)
!914 = !DILocation(line: 135, column: 1, scope: !882)
!915 = distinct !DISubprogram(name: "verror", scope: !202, file: !202, line: 251, type: !916, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !25, !25, !35, !210}
!918 = !{!919, !920, !921, !922}
!919 = !DILocalVariable(name: "status", arg: 1, scope: !915, file: !202, line: 251, type: !25)
!920 = !DILocalVariable(name: "errnum", arg: 2, scope: !915, file: !202, line: 251, type: !25)
!921 = !DILocalVariable(name: "message", arg: 3, scope: !915, file: !202, line: 251, type: !35)
!922 = !DILocalVariable(name: "args", arg: 4, scope: !915, file: !202, line: 251, type: !210)
!923 = !DILocation(line: 0, scope: !915)
!924 = !DILocation(line: 251, column: 1, scope: !915)
!925 = !DILocation(line: 261, column: 3, scope: !915)
!926 = !DILocation(line: 265, column: 7, scope: !927)
!927 = distinct !DILexicalBlock(scope: !915, file: !202, line: 265, column: 7)
!928 = !DILocation(line: 265, column: 7, scope: !915)
!929 = !DILocation(line: 266, column: 5, scope: !927)
!930 = !DILocation(line: 272, column: 7, scope: !931)
!931 = distinct !DILexicalBlock(scope: !927, file: !202, line: 268, column: 5)
!932 = !DILocation(line: 276, column: 3, scope: !915)
!933 = !{i64 0, i64 8, !488, i64 8, i64 8, !488, i64 16, i64 8, !488, i64 24, i64 4, !585, i64 28, i64 4, !585}
!934 = !DILocation(line: 282, column: 1, scope: !915)
!935 = distinct !DISubprogram(name: "flush_stdout", scope: !202, file: !202, line: 163, type: !238, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !936)
!936 = !{!937}
!937 = !DILocalVariable(name: "stdout_fd", scope: !935, file: !202, line: 166, type: !25)
!938 = !DILocation(line: 0, scope: !935)
!939 = !DILocalVariable(name: "fd", arg: 1, scope: !940, file: !202, line: 145, type: !25)
!940 = distinct !DISubprogram(name: "is_open", scope: !202, file: !202, line: 145, type: !941, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !943)
!941 = !DISubroutineType(types: !942)
!942 = !{!25, !25}
!943 = !{!939}
!944 = !DILocation(line: 0, scope: !940, inlinedAt: !945)
!945 = distinct !DILocation(line: 182, column: 25, scope: !946)
!946 = distinct !DILexicalBlock(scope: !935, file: !202, line: 182, column: 7)
!947 = !DILocation(line: 157, column: 15, scope: !940, inlinedAt: !945)
!948 = !DILocation(line: 182, column: 25, scope: !946)
!949 = !DILocation(line: 182, column: 7, scope: !935)
!950 = !DILocation(line: 184, column: 5, scope: !946)
!951 = !DILocation(line: 185, column: 1, scope: !935)
!952 = distinct !DISubprogram(name: "error_tail", scope: !202, file: !202, line: 219, type: !916, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !953)
!953 = !{!954, !955, !956, !957}
!954 = !DILocalVariable(name: "status", arg: 1, scope: !952, file: !202, line: 219, type: !25)
!955 = !DILocalVariable(name: "errnum", arg: 2, scope: !952, file: !202, line: 219, type: !25)
!956 = !DILocalVariable(name: "message", arg: 3, scope: !952, file: !202, line: 219, type: !35)
!957 = !DILocalVariable(name: "args", arg: 4, scope: !952, file: !202, line: 219, type: !210)
!958 = !DILocation(line: 0, scope: !952)
!959 = !DILocation(line: 219, column: 1, scope: !952)
!960 = !DILocation(line: 229, column: 13, scope: !952)
!961 = !DILocation(line: 229, column: 3, scope: !952)
!962 = !DILocalVariable(name: "__stream", arg: 1, scope: !963, file: !964, line: 132, type: !967)
!963 = distinct !DISubprogram(name: "vfprintf", scope: !964, file: !964, line: 132, type: !965, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1002)
!964 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!965 = !DISubroutineType(types: !966)
!966 = !{!25, !967, !581, !212}
!967 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !970, file: !119, line: 51, baseType: !25, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !970, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !970, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !970, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !970, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !970, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !970, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !970, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !970, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !970, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !970, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !970, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !970, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !970, file: !119, line: 70, baseType: !986, size: 64, offset: 832)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !970, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !970, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !970, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !970, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !970, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !970, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !970, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !970, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !970, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !970, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !970, file: !119, line: 93, baseType: !986, size: 64, offset: 1344)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !970, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !970, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !970, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !970, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!1002 = !{!962, !1003, !1004}
!1003 = !DILocalVariable(name: "__fmt", arg: 2, scope: !963, file: !964, line: 133, type: !581)
!1004 = !DILocalVariable(name: "__ap", arg: 3, scope: !963, file: !964, line: 133, type: !212)
!1005 = !DILocation(line: 0, scope: !963, inlinedAt: !1006)
!1006 = distinct !DILocation(line: 229, column: 3, scope: !952)
!1007 = !DILocation(line: 135, column: 10, scope: !963, inlinedAt: !1006)
!1008 = !{!1009, !1011}
!1009 = distinct !{!1009, !1010, !"vfprintf.inline: argument 0"}
!1010 = distinct !{!1010, !"vfprintf.inline"}
!1011 = distinct !{!1011, !1010, !"vfprintf.inline: argument 1"}
!1012 = !DILocation(line: 232, column: 3, scope: !952)
!1013 = !DILocation(line: 233, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !952, file: !202, line: 233, column: 7)
!1015 = !DILocation(line: 233, column: 7, scope: !952)
!1016 = !DILocalVariable(name: "errnum", arg: 1, scope: !1017, file: !202, line: 188, type: !25)
!1017 = distinct !DISubprogram(name: "print_errno_message", scope: !202, file: !202, line: 188, type: !478, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1018)
!1018 = !{!1016, !1019, !1020}
!1019 = !DILocalVariable(name: "s", scope: !1017, file: !202, line: 190, type: !35)
!1020 = !DILocalVariable(name: "errbuf", scope: !1017, file: !202, line: 193, type: !1021)
!1021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8192, elements: !1022)
!1022 = !{!1023}
!1023 = !DISubrange(count: 1024)
!1024 = !DILocation(line: 0, scope: !1017, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 234, column: 5, scope: !1014)
!1026 = !DILocation(line: 193, column: 3, scope: !1017, inlinedAt: !1025)
!1027 = !DILocation(line: 193, column: 8, scope: !1017, inlinedAt: !1025)
!1028 = !DILocation(line: 195, column: 7, scope: !1017, inlinedAt: !1025)
!1029 = !DILocation(line: 207, column: 9, scope: !1030, inlinedAt: !1025)
!1030 = distinct !DILexicalBlock(scope: !1017, file: !202, line: 207, column: 7)
!1031 = !DILocation(line: 207, column: 7, scope: !1017, inlinedAt: !1025)
!1032 = !DILocation(line: 208, column: 9, scope: !1030, inlinedAt: !1025)
!1033 = !DILocation(line: 208, column: 5, scope: !1030, inlinedAt: !1025)
!1034 = !DILocation(line: 214, column: 3, scope: !1017, inlinedAt: !1025)
!1035 = !DILocation(line: 216, column: 1, scope: !1017, inlinedAt: !1025)
!1036 = !DILocation(line: 234, column: 5, scope: !1014)
!1037 = !DILocation(line: 238, column: 3, scope: !952)
!1038 = !DILocalVariable(name: "__c", arg: 1, scope: !1039, file: !822, line: 101, type: !25)
!1039 = distinct !DISubprogram(name: "putc_unlocked", scope: !822, file: !822, line: 101, type: !1040, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!25, !25, !968}
!1042 = !{!1038, !1043}
!1043 = !DILocalVariable(name: "__stream", arg: 2, scope: !1039, file: !822, line: 101, type: !968)
!1044 = !DILocation(line: 0, scope: !1039, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 238, column: 3, scope: !952)
!1046 = !DILocation(line: 103, column: 10, scope: !1039, inlinedAt: !1045)
!1047 = !{!830, !489, i64 40}
!1048 = !{!830, !489, i64 48}
!1049 = !{!"branch_weights", i32 2000, i32 1}
!1050 = !DILocation(line: 240, column: 3, scope: !952)
!1051 = !DILocation(line: 241, column: 7, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !952, file: !202, line: 241, column: 7)
!1053 = !DILocation(line: 241, column: 7, scope: !952)
!1054 = !DILocation(line: 242, column: 5, scope: !1052)
!1055 = !DILocation(line: 243, column: 1, scope: !952)
!1056 = !DISubprogram(name: "strerror_r", scope: !1057, file: !1057, line: 444, type: !1058, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!1057 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!27, !25, !27, !86}
!1060 = !DISubprogram(name: "fflush_unlocked", scope: !211, file: !211, line: 239, type: !1061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!25, !968}
!1063 = !DISubprogram(name: "fcntl", scope: !1064, file: !1064, line: 149, type: !1065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!1064 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!25, !25, !25, null}
!1067 = distinct !DISubprogram(name: "error", scope: !202, file: !202, line: 285, type: !1068, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1070)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{null, !25, !25, !35, null}
!1070 = !{!1071, !1072, !1073, !1074}
!1071 = !DILocalVariable(name: "status", arg: 1, scope: !1067, file: !202, line: 285, type: !25)
!1072 = !DILocalVariable(name: "errnum", arg: 2, scope: !1067, file: !202, line: 285, type: !25)
!1073 = !DILocalVariable(name: "message", arg: 3, scope: !1067, file: !202, line: 285, type: !35)
!1074 = !DILocalVariable(name: "ap", scope: !1067, file: !202, line: 287, type: !210)
!1075 = !DILocation(line: 0, scope: !1067)
!1076 = !DILocation(line: 287, column: 3, scope: !1067)
!1077 = !DILocation(line: 287, column: 11, scope: !1067)
!1078 = !DILocation(line: 288, column: 3, scope: !1067)
!1079 = !DILocation(line: 289, column: 3, scope: !1067)
!1080 = !DILocation(line: 290, column: 3, scope: !1067)
!1081 = !DILocation(line: 291, column: 1, scope: !1067)
!1082 = !DILocation(line: 0, scope: !207)
!1083 = !DILocation(line: 298, column: 1, scope: !207)
!1084 = !DILocation(line: 302, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !207, file: !202, line: 302, column: 7)
!1086 = !DILocation(line: 302, column: 7, scope: !207)
!1087 = !DILocation(line: 307, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !202, line: 307, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !202, line: 303, column: 5)
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
!1103 = !DILocation(line: 327, column: 3, scope: !207)
!1104 = !DILocation(line: 331, column: 7, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !207, file: !202, line: 331, column: 7)
!1106 = !DILocation(line: 331, column: 7, scope: !207)
!1107 = !DILocation(line: 332, column: 5, scope: !1105)
!1108 = !DILocation(line: 338, column: 7, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1105, file: !202, line: 334, column: 5)
!1110 = !DILocation(line: 346, column: 3, scope: !207)
!1111 = !DILocation(line: 350, column: 3, scope: !207)
!1112 = !DILocation(line: 356, column: 1, scope: !207)
!1113 = distinct !DISubprogram(name: "error_at_line", scope: !202, file: !202, line: 359, type: !1114, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !201, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !25, !25, !35, !7, !35, null}
!1116 = !{!1117, !1118, !1119, !1120, !1121, !1122}
!1117 = !DILocalVariable(name: "status", arg: 1, scope: !1113, file: !202, line: 359, type: !25)
!1118 = !DILocalVariable(name: "errnum", arg: 2, scope: !1113, file: !202, line: 359, type: !25)
!1119 = !DILocalVariable(name: "file_name", arg: 3, scope: !1113, file: !202, line: 359, type: !35)
!1120 = !DILocalVariable(name: "line_number", arg: 4, scope: !1113, file: !202, line: 360, type: !7)
!1121 = !DILocalVariable(name: "message", arg: 5, scope: !1113, file: !202, line: 360, type: !35)
!1122 = !DILocalVariable(name: "ap", scope: !1113, file: !202, line: 362, type: !210)
!1123 = !DILocation(line: 0, scope: !1113)
!1124 = !DILocation(line: 362, column: 3, scope: !1113)
!1125 = !DILocation(line: 362, column: 11, scope: !1113)
!1126 = !DILocation(line: 363, column: 3, scope: !1113)
!1127 = !DILocation(line: 364, column: 3, scope: !1113)
!1128 = !DILocation(line: 366, column: 3, scope: !1113)
!1129 = !DILocation(line: 367, column: 1, scope: !1113)
!1130 = distinct !DISubprogram(name: "getprogname", scope: !400, file: !400, line: 54, type: !1131, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !497)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!35}
!1133 = !DILocation(line: 58, column: 10, scope: !1130)
!1134 = !DILocation(line: 58, column: 3, scope: !1130)
!1135 = distinct !DISubprogram(name: "set_program_name", scope: !243, file: !243, line: 37, type: !505, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !242, retainedNodes: !1136)
!1136 = !{!1137, !1138, !1139}
!1137 = !DILocalVariable(name: "argv0", arg: 1, scope: !1135, file: !243, line: 37, type: !35)
!1138 = !DILocalVariable(name: "slash", scope: !1135, file: !243, line: 44, type: !35)
!1139 = !DILocalVariable(name: "base", scope: !1135, file: !243, line: 45, type: !35)
!1140 = !DILocation(line: 0, scope: !1135)
!1141 = !DILocation(line: 44, column: 23, scope: !1135)
!1142 = !DILocation(line: 45, column: 22, scope: !1135)
!1143 = !DILocation(line: 46, column: 17, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1135, file: !243, line: 46, column: 7)
!1145 = !DILocation(line: 46, column: 9, scope: !1144)
!1146 = !DILocation(line: 46, column: 25, scope: !1144)
!1147 = !DILocation(line: 46, column: 40, scope: !1144)
!1148 = !DILocalVariable(name: "__s1", arg: 1, scope: !1149, file: !536, line: 974, type: !703)
!1149 = distinct !DISubprogram(name: "memeq", scope: !536, file: !536, line: 974, type: !1150, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !242, retainedNodes: !1152)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!38, !703, !703, !86}
!1152 = !{!1148, !1153, !1154}
!1153 = !DILocalVariable(name: "__s2", arg: 2, scope: !1149, file: !536, line: 974, type: !703)
!1154 = !DILocalVariable(name: "__n", arg: 3, scope: !1149, file: !536, line: 974, type: !86)
!1155 = !DILocation(line: 0, scope: !1149, inlinedAt: !1156)
!1156 = distinct !DILocation(line: 46, column: 28, scope: !1144)
!1157 = !DILocation(line: 976, column: 11, scope: !1149, inlinedAt: !1156)
!1158 = !DILocation(line: 976, column: 10, scope: !1149, inlinedAt: !1156)
!1159 = !DILocation(line: 46, column: 7, scope: !1135)
!1160 = !DILocation(line: 49, column: 11, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !243, line: 49, column: 11)
!1162 = distinct !DILexicalBlock(scope: !1144, file: !243, line: 47, column: 5)
!1163 = !DILocation(line: 49, column: 36, scope: !1161)
!1164 = !DILocation(line: 49, column: 11, scope: !1162)
!1165 = !DILocation(line: 65, column: 16, scope: !1135)
!1166 = !DILocation(line: 71, column: 27, scope: !1135)
!1167 = !DILocation(line: 74, column: 33, scope: !1135)
!1168 = !DILocation(line: 76, column: 1, scope: !1135)
!1169 = !DILocation(line: 0, scope: !248)
!1170 = !DILocation(line: 40, column: 29, scope: !248)
!1171 = !DILocation(line: 41, column: 19, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !248, file: !249, line: 41, column: 7)
!1173 = !DILocation(line: 41, column: 7, scope: !248)
!1174 = !DILocation(line: 47, column: 3, scope: !248)
!1175 = !DILocation(line: 48, column: 3, scope: !248)
!1176 = !DILocation(line: 48, column: 13, scope: !248)
!1177 = !DILocalVariable(name: "ps", arg: 1, scope: !1178, file: !1179, line: 1135, type: !1182)
!1178 = distinct !DISubprogram(name: "mbszero", scope: !1179, file: !1179, line: 1135, type: !1180, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1183)
!1179 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1182}
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!1183 = !{!1177}
!1184 = !DILocation(line: 0, scope: !1178, inlinedAt: !1185)
!1185 = distinct !DILocation(line: 48, column: 18, scope: !248)
!1186 = !DILocalVariable(name: "__dest", arg: 1, scope: !1187, file: !1188, line: 57, type: !84)
!1187 = distinct !DISubprogram(name: "memset", scope: !1188, file: !1188, line: 57, type: !1189, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !252, retainedNodes: !1191)
!1188 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!84, !84, !25, !86}
!1191 = !{!1186, !1192, !1193}
!1192 = !DILocalVariable(name: "__ch", arg: 2, scope: !1187, file: !1188, line: 57, type: !25)
!1193 = !DILocalVariable(name: "__len", arg: 3, scope: !1187, file: !1188, line: 57, type: !86)
!1194 = !DILocation(line: 0, scope: !1187, inlinedAt: !1195)
!1195 = distinct !DILocation(line: 1137, column: 3, scope: !1178, inlinedAt: !1185)
!1196 = !DILocation(line: 59, column: 10, scope: !1187, inlinedAt: !1195)
!1197 = !DILocation(line: 49, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !248, file: !249, line: 49, column: 7)
!1199 = !DILocation(line: 49, column: 39, scope: !1198)
!1200 = !DILocation(line: 49, column: 44, scope: !1198)
!1201 = !DILocation(line: 54, column: 1, scope: !248)
!1202 = !DISubprogram(name: "mbrtoc32", scope: !260, file: !260, line: 57, type: !1203, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!86, !1205, !581, !86, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1182)
!1208 = distinct !DISubprogram(name: "clone_quoting_options", scope: !283, file: !283, line: 113, type: !1209, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1212)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1211, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1212 = !{!1213, !1214, !1215}
!1213 = !DILocalVariable(name: "o", arg: 1, scope: !1208, file: !283, line: 113, type: !1211)
!1214 = !DILocalVariable(name: "saved_errno", scope: !1208, file: !283, line: 115, type: !25)
!1215 = !DILocalVariable(name: "p", scope: !1208, file: !283, line: 116, type: !1211)
!1216 = !DILocation(line: 0, scope: !1208)
!1217 = !DILocation(line: 115, column: 21, scope: !1208)
!1218 = !DILocation(line: 116, column: 40, scope: !1208)
!1219 = !DILocation(line: 116, column: 31, scope: !1208)
!1220 = !DILocation(line: 118, column: 9, scope: !1208)
!1221 = !DILocation(line: 119, column: 3, scope: !1208)
!1222 = distinct !DISubprogram(name: "get_quoting_style", scope: !283, file: !283, line: 124, type: !1223, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1227)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!285, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !314)
!1227 = !{!1228}
!1228 = !DILocalVariable(name: "o", arg: 1, scope: !1222, file: !283, line: 124, type: !1225)
!1229 = !DILocation(line: 0, scope: !1222)
!1230 = !DILocation(line: 126, column: 11, scope: !1222)
!1231 = !DILocation(line: 126, column: 46, scope: !1222)
!1232 = !{!1233, !490, i64 0}
!1233 = !{!"quoting_options", !490, i64 0, !586, i64 4, !490, i64 8, !489, i64 40, !489, i64 48}
!1234 = !DILocation(line: 126, column: 3, scope: !1222)
!1235 = distinct !DISubprogram(name: "set_quoting_style", scope: !283, file: !283, line: 132, type: !1236, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1238)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1211, !285}
!1238 = !{!1239, !1240}
!1239 = !DILocalVariable(name: "o", arg: 1, scope: !1235, file: !283, line: 132, type: !1211)
!1240 = !DILocalVariable(name: "s", arg: 2, scope: !1235, file: !283, line: 132, type: !285)
!1241 = !DILocation(line: 0, scope: !1235)
!1242 = !DILocation(line: 134, column: 4, scope: !1235)
!1243 = !DILocation(line: 134, column: 39, scope: !1235)
!1244 = !DILocation(line: 134, column: 45, scope: !1235)
!1245 = !DILocation(line: 135, column: 1, scope: !1235)
!1246 = distinct !DISubprogram(name: "set_char_quoting", scope: !283, file: !283, line: 143, type: !1247, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1249)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!25, !1211, !28, !25}
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1256, !1257}
!1250 = !DILocalVariable(name: "o", arg: 1, scope: !1246, file: !283, line: 143, type: !1211)
!1251 = !DILocalVariable(name: "c", arg: 2, scope: !1246, file: !283, line: 143, type: !28)
!1252 = !DILocalVariable(name: "i", arg: 3, scope: !1246, file: !283, line: 143, type: !25)
!1253 = !DILocalVariable(name: "uc", scope: !1246, file: !283, line: 145, type: !89)
!1254 = !DILocalVariable(name: "p", scope: !1246, file: !283, line: 146, type: !1255)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1256 = !DILocalVariable(name: "shift", scope: !1246, file: !283, line: 148, type: !25)
!1257 = !DILocalVariable(name: "r", scope: !1246, file: !283, line: 149, type: !7)
!1258 = !DILocation(line: 0, scope: !1246)
!1259 = !DILocation(line: 147, column: 6, scope: !1246)
!1260 = !DILocation(line: 147, column: 62, scope: !1246)
!1261 = !DILocation(line: 147, column: 57, scope: !1246)
!1262 = !DILocation(line: 148, column: 15, scope: !1246)
!1263 = !DILocation(line: 149, column: 21, scope: !1246)
!1264 = !DILocation(line: 149, column: 24, scope: !1246)
!1265 = !DILocation(line: 149, column: 34, scope: !1246)
!1266 = !DILocation(line: 150, column: 13, scope: !1246)
!1267 = !DILocation(line: 150, column: 19, scope: !1246)
!1268 = !DILocation(line: 150, column: 24, scope: !1246)
!1269 = !DILocation(line: 150, column: 6, scope: !1246)
!1270 = !DILocation(line: 151, column: 3, scope: !1246)
!1271 = distinct !DISubprogram(name: "set_quoting_flags", scope: !283, file: !283, line: 159, type: !1272, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!25, !1211, !25}
!1274 = !{!1275, !1276, !1277}
!1275 = !DILocalVariable(name: "o", arg: 1, scope: !1271, file: !283, line: 159, type: !1211)
!1276 = !DILocalVariable(name: "i", arg: 2, scope: !1271, file: !283, line: 159, type: !25)
!1277 = !DILocalVariable(name: "r", scope: !1271, file: !283, line: 163, type: !25)
!1278 = !DILocation(line: 0, scope: !1271)
!1279 = !DILocation(line: 161, column: 8, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1271, file: !283, line: 161, column: 7)
!1281 = !DILocation(line: 161, column: 7, scope: !1271)
!1282 = !DILocation(line: 163, column: 14, scope: !1271)
!1283 = !{!1233, !586, i64 4}
!1284 = !DILocation(line: 164, column: 12, scope: !1271)
!1285 = !DILocation(line: 165, column: 3, scope: !1271)
!1286 = distinct !DISubprogram(name: "set_custom_quoting", scope: !283, file: !283, line: 169, type: !1287, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1211, !35, !35}
!1289 = !{!1290, !1291, !1292}
!1290 = !DILocalVariable(name: "o", arg: 1, scope: !1286, file: !283, line: 169, type: !1211)
!1291 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1286, file: !283, line: 170, type: !35)
!1292 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1286, file: !283, line: 170, type: !35)
!1293 = !DILocation(line: 0, scope: !1286)
!1294 = !DILocation(line: 172, column: 8, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1286, file: !283, line: 172, column: 7)
!1296 = !DILocation(line: 172, column: 7, scope: !1286)
!1297 = !DILocation(line: 174, column: 6, scope: !1286)
!1298 = !DILocation(line: 174, column: 12, scope: !1286)
!1299 = !DILocation(line: 175, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1286, file: !283, line: 175, column: 7)
!1301 = !DILocation(line: 175, column: 19, scope: !1300)
!1302 = !DILocation(line: 176, column: 5, scope: !1300)
!1303 = !DILocation(line: 177, column: 6, scope: !1286)
!1304 = !DILocation(line: 177, column: 17, scope: !1286)
!1305 = !{!1233, !489, i64 40}
!1306 = !DILocation(line: 178, column: 6, scope: !1286)
!1307 = !DILocation(line: 178, column: 18, scope: !1286)
!1308 = !{!1233, !489, i64 48}
!1309 = !DILocation(line: 179, column: 1, scope: !1286)
!1310 = distinct !DISubprogram(name: "quotearg_buffer", scope: !283, file: !283, line: 774, type: !1311, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!86, !27, !86, !35, !86, !1225}
!1313 = !{!1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1314 = !DILocalVariable(name: "buffer", arg: 1, scope: !1310, file: !283, line: 774, type: !27)
!1315 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1310, file: !283, line: 774, type: !86)
!1316 = !DILocalVariable(name: "arg", arg: 3, scope: !1310, file: !283, line: 775, type: !35)
!1317 = !DILocalVariable(name: "argsize", arg: 4, scope: !1310, file: !283, line: 775, type: !86)
!1318 = !DILocalVariable(name: "o", arg: 5, scope: !1310, file: !283, line: 776, type: !1225)
!1319 = !DILocalVariable(name: "p", scope: !1310, file: !283, line: 778, type: !1225)
!1320 = !DILocalVariable(name: "saved_errno", scope: !1310, file: !283, line: 779, type: !25)
!1321 = !DILocalVariable(name: "r", scope: !1310, file: !283, line: 780, type: !86)
!1322 = !DILocation(line: 0, scope: !1310)
!1323 = !DILocation(line: 778, column: 37, scope: !1310)
!1324 = !DILocation(line: 779, column: 21, scope: !1310)
!1325 = !DILocation(line: 781, column: 43, scope: !1310)
!1326 = !DILocation(line: 781, column: 53, scope: !1310)
!1327 = !DILocation(line: 781, column: 60, scope: !1310)
!1328 = !DILocation(line: 782, column: 43, scope: !1310)
!1329 = !DILocation(line: 782, column: 58, scope: !1310)
!1330 = !DILocation(line: 780, column: 14, scope: !1310)
!1331 = !DILocation(line: 783, column: 9, scope: !1310)
!1332 = !DILocation(line: 784, column: 3, scope: !1310)
!1333 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !283, file: !283, line: 251, type: !1334, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1338)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!86, !27, !86, !35, !86, !285, !25, !1336, !35, !35}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1363, !1365, !1368, !1369, !1370, !1371, !1374, !1375, !1378, !1382, !1383, !1391, !1394, !1395, !1397, !1398, !1399, !1400}
!1339 = !DILocalVariable(name: "buffer", arg: 1, scope: !1333, file: !283, line: 251, type: !27)
!1340 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1333, file: !283, line: 251, type: !86)
!1341 = !DILocalVariable(name: "arg", arg: 3, scope: !1333, file: !283, line: 252, type: !35)
!1342 = !DILocalVariable(name: "argsize", arg: 4, scope: !1333, file: !283, line: 252, type: !86)
!1343 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1333, file: !283, line: 253, type: !285)
!1344 = !DILocalVariable(name: "flags", arg: 6, scope: !1333, file: !283, line: 253, type: !25)
!1345 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1333, file: !283, line: 254, type: !1336)
!1346 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1333, file: !283, line: 255, type: !35)
!1347 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1333, file: !283, line: 256, type: !35)
!1348 = !DILocalVariable(name: "unibyte_locale", scope: !1333, file: !283, line: 258, type: !38)
!1349 = !DILocalVariable(name: "len", scope: !1333, file: !283, line: 260, type: !86)
!1350 = !DILocalVariable(name: "orig_buffersize", scope: !1333, file: !283, line: 261, type: !86)
!1351 = !DILocalVariable(name: "quote_string", scope: !1333, file: !283, line: 262, type: !35)
!1352 = !DILocalVariable(name: "quote_string_len", scope: !1333, file: !283, line: 263, type: !86)
!1353 = !DILocalVariable(name: "backslash_escapes", scope: !1333, file: !283, line: 264, type: !38)
!1354 = !DILocalVariable(name: "elide_outer_quotes", scope: !1333, file: !283, line: 265, type: !38)
!1355 = !DILocalVariable(name: "encountered_single_quote", scope: !1333, file: !283, line: 266, type: !38)
!1356 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1333, file: !283, line: 267, type: !38)
!1357 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1333, file: !283, line: 309, type: !38)
!1358 = !DILocalVariable(name: "lq", scope: !1359, file: !283, line: 361, type: !35)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !283, line: 361, column: 11)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !283, line: 360, column: 13)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !283, line: 333, column: 7)
!1362 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 312, column: 5)
!1363 = !DILocalVariable(name: "i", scope: !1364, file: !283, line: 395, type: !86)
!1364 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 395, column: 3)
!1365 = !DILocalVariable(name: "is_right_quote", scope: !1366, file: !283, line: 397, type: !38)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !283, line: 396, column: 5)
!1367 = distinct !DILexicalBlock(scope: !1364, file: !283, line: 395, column: 3)
!1368 = !DILocalVariable(name: "escaping", scope: !1366, file: !283, line: 398, type: !38)
!1369 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1366, file: !283, line: 399, type: !38)
!1370 = !DILocalVariable(name: "c", scope: !1366, file: !283, line: 417, type: !89)
!1371 = !DILocalVariable(name: "m", scope: !1372, file: !283, line: 598, type: !86)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 596, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 419, column: 9)
!1374 = !DILocalVariable(name: "printable", scope: !1372, file: !283, line: 600, type: !38)
!1375 = !DILocalVariable(name: "mbs", scope: !1376, file: !283, line: 609, type: !342)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !283, line: 608, column: 15)
!1377 = distinct !DILexicalBlock(scope: !1372, file: !283, line: 602, column: 17)
!1378 = !DILocalVariable(name: "w", scope: !1379, file: !283, line: 618, type: !259)
!1379 = distinct !DILexicalBlock(scope: !1380, file: !283, line: 617, column: 19)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !283, line: 616, column: 17)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !283, line: 616, column: 17)
!1382 = !DILocalVariable(name: "bytes", scope: !1379, file: !283, line: 619, type: !86)
!1383 = !DILocalVariable(name: "j", scope: !1384, file: !283, line: 648, type: !86)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !283, line: 648, column: 29)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !283, line: 647, column: 27)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !283, line: 645, column: 29)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !283, line: 636, column: 23)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !283, line: 628, column: 30)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !283, line: 623, column: 30)
!1390 = distinct !DILexicalBlock(scope: !1379, file: !283, line: 621, column: 25)
!1391 = !DILocalVariable(name: "ilim", scope: !1392, file: !283, line: 674, type: !86)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !283, line: 671, column: 15)
!1393 = distinct !DILexicalBlock(scope: !1372, file: !283, line: 670, column: 17)
!1394 = !DILabel(scope: !1333, name: "process_input", file: !283, line: 308)
!1395 = !DILabel(scope: !1396, name: "c_and_shell_escape", file: !283, line: 502)
!1396 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 478, column: 9)
!1397 = !DILabel(scope: !1396, name: "c_escape", file: !283, line: 507)
!1398 = !DILabel(scope: !1366, name: "store_escape", file: !283, line: 709)
!1399 = !DILabel(scope: !1366, name: "store_c", file: !283, line: 712)
!1400 = !DILabel(scope: !1333, name: "force_outer_quoting_style", file: !283, line: 753)
!1401 = !DILocation(line: 0, scope: !1333)
!1402 = !DILocation(line: 258, column: 25, scope: !1333)
!1403 = !DILocation(line: 258, column: 36, scope: !1333)
!1404 = !DILocation(line: 267, column: 3, scope: !1333)
!1405 = !DILocation(line: 261, column: 10, scope: !1333)
!1406 = !DILocation(line: 262, column: 15, scope: !1333)
!1407 = !DILocation(line: 263, column: 10, scope: !1333)
!1408 = !DILocation(line: 308, column: 2, scope: !1333)
!1409 = !DILocation(line: 311, column: 3, scope: !1333)
!1410 = !DILocation(line: 318, column: 11, scope: !1362)
!1411 = !DILocation(line: 319, column: 9, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !283, line: 319, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !283, line: 319, column: 9)
!1414 = distinct !DILexicalBlock(scope: !1362, file: !283, line: 318, column: 11)
!1415 = !DILocation(line: 319, column: 9, scope: !1413)
!1416 = !DILocation(line: 0, scope: !333, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 357, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !283, line: 335, column: 11)
!1419 = distinct !DILexicalBlock(scope: !1361, file: !283, line: 334, column: 13)
!1420 = !DILocation(line: 199, column: 29, scope: !333, inlinedAt: !1417)
!1421 = !DILocation(line: 201, column: 19, scope: !1422, inlinedAt: !1417)
!1422 = distinct !DILexicalBlock(scope: !333, file: !283, line: 201, column: 7)
!1423 = !DILocation(line: 201, column: 7, scope: !333, inlinedAt: !1417)
!1424 = !DILocation(line: 229, column: 3, scope: !333, inlinedAt: !1417)
!1425 = !DILocation(line: 230, column: 3, scope: !333, inlinedAt: !1417)
!1426 = !DILocation(line: 230, column: 13, scope: !333, inlinedAt: !1417)
!1427 = !DILocalVariable(name: "ps", arg: 1, scope: !1428, file: !1179, line: 1135, type: !1431)
!1428 = distinct !DISubprogram(name: "mbszero", scope: !1179, file: !1179, line: 1135, type: !1429, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1432)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{null, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!1432 = !{!1427}
!1433 = !DILocation(line: 0, scope: !1428, inlinedAt: !1434)
!1434 = distinct !DILocation(line: 230, column: 18, scope: !333, inlinedAt: !1417)
!1435 = !DILocalVariable(name: "__dest", arg: 1, scope: !1436, file: !1188, line: 57, type: !84)
!1436 = distinct !DISubprogram(name: "memset", scope: !1188, file: !1188, line: 57, type: !1189, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1437)
!1437 = !{!1435, !1438, !1439}
!1438 = !DILocalVariable(name: "__ch", arg: 2, scope: !1436, file: !1188, line: 57, type: !25)
!1439 = !DILocalVariable(name: "__len", arg: 3, scope: !1436, file: !1188, line: 57, type: !86)
!1440 = !DILocation(line: 0, scope: !1436, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 1137, column: 3, scope: !1428, inlinedAt: !1434)
!1442 = !DILocation(line: 59, column: 10, scope: !1436, inlinedAt: !1441)
!1443 = !DILocation(line: 231, column: 7, scope: !1444, inlinedAt: !1417)
!1444 = distinct !DILexicalBlock(scope: !333, file: !283, line: 231, column: 7)
!1445 = !DILocation(line: 231, column: 40, scope: !1444, inlinedAt: !1417)
!1446 = !DILocation(line: 231, column: 45, scope: !1444, inlinedAt: !1417)
!1447 = !DILocation(line: 235, column: 1, scope: !333, inlinedAt: !1417)
!1448 = !DILocation(line: 0, scope: !333, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 358, column: 27, scope: !1418)
!1450 = !DILocation(line: 199, column: 29, scope: !333, inlinedAt: !1449)
!1451 = !DILocation(line: 201, column: 19, scope: !1422, inlinedAt: !1449)
!1452 = !DILocation(line: 201, column: 7, scope: !333, inlinedAt: !1449)
!1453 = !DILocation(line: 229, column: 3, scope: !333, inlinedAt: !1449)
!1454 = !DILocation(line: 230, column: 3, scope: !333, inlinedAt: !1449)
!1455 = !DILocation(line: 230, column: 13, scope: !333, inlinedAt: !1449)
!1456 = !DILocation(line: 0, scope: !1428, inlinedAt: !1457)
!1457 = distinct !DILocation(line: 230, column: 18, scope: !333, inlinedAt: !1449)
!1458 = !DILocation(line: 0, scope: !1436, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 1137, column: 3, scope: !1428, inlinedAt: !1457)
!1460 = !DILocation(line: 59, column: 10, scope: !1436, inlinedAt: !1459)
!1461 = !DILocation(line: 231, column: 7, scope: !1444, inlinedAt: !1449)
!1462 = !DILocation(line: 231, column: 40, scope: !1444, inlinedAt: !1449)
!1463 = !DILocation(line: 231, column: 45, scope: !1444, inlinedAt: !1449)
!1464 = !DILocation(line: 235, column: 1, scope: !333, inlinedAt: !1449)
!1465 = !DILocation(line: 360, column: 13, scope: !1361)
!1466 = !DILocation(line: 0, scope: !1359)
!1467 = !DILocation(line: 361, column: 45, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1359, file: !283, line: 361, column: 11)
!1469 = !DILocation(line: 361, column: 11, scope: !1359)
!1470 = !DILocation(line: 362, column: 13, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !283, line: 362, column: 13)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !283, line: 362, column: 13)
!1473 = !DILocation(line: 362, column: 13, scope: !1472)
!1474 = !DILocation(line: 361, column: 52, scope: !1468)
!1475 = distinct !{!1475, !1469, !1476, !552}
!1476 = !DILocation(line: 362, column: 13, scope: !1359)
!1477 = !DILocation(line: 260, column: 10, scope: !1333)
!1478 = !DILocation(line: 365, column: 28, scope: !1361)
!1479 = !DILocation(line: 367, column: 7, scope: !1362)
!1480 = !DILocation(line: 370, column: 7, scope: !1362)
!1481 = !DILocation(line: 376, column: 11, scope: !1362)
!1482 = !DILocation(line: 381, column: 11, scope: !1362)
!1483 = !DILocation(line: 382, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !283, line: 382, column: 9)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !283, line: 382, column: 9)
!1486 = distinct !DILexicalBlock(scope: !1362, file: !283, line: 381, column: 11)
!1487 = !DILocation(line: 382, column: 9, scope: !1485)
!1488 = !DILocation(line: 389, column: 7, scope: !1362)
!1489 = !DILocation(line: 392, column: 7, scope: !1362)
!1490 = !DILocation(line: 0, scope: !1364)
!1491 = !DILocation(line: 395, column: 8, scope: !1364)
!1492 = !DILocation(line: 395, column: 34, scope: !1367)
!1493 = !DILocation(line: 395, column: 26, scope: !1367)
!1494 = !DILocation(line: 395, column: 48, scope: !1367)
!1495 = !DILocation(line: 395, column: 55, scope: !1367)
!1496 = !DILocation(line: 395, column: 3, scope: !1364)
!1497 = !DILocation(line: 395, column: 67, scope: !1367)
!1498 = !DILocation(line: 0, scope: !1366)
!1499 = !DILocation(line: 402, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 401, column: 11)
!1501 = !DILocation(line: 404, column: 17, scope: !1500)
!1502 = !DILocation(line: 405, column: 39, scope: !1500)
!1503 = !DILocation(line: 409, column: 32, scope: !1500)
!1504 = !DILocation(line: 405, column: 19, scope: !1500)
!1505 = !DILocation(line: 405, column: 15, scope: !1500)
!1506 = !DILocation(line: 410, column: 11, scope: !1500)
!1507 = !DILocation(line: 410, column: 25, scope: !1500)
!1508 = !DILocalVariable(name: "__s1", arg: 1, scope: !1509, file: !536, line: 974, type: !703)
!1509 = distinct !DISubprogram(name: "memeq", scope: !536, file: !536, line: 974, type: !1150, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1510)
!1510 = !{!1508, !1511, !1512}
!1511 = !DILocalVariable(name: "__s2", arg: 2, scope: !1509, file: !536, line: 974, type: !703)
!1512 = !DILocalVariable(name: "__n", arg: 3, scope: !1509, file: !536, line: 974, type: !86)
!1513 = !DILocation(line: 0, scope: !1509, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 410, column: 14, scope: !1500)
!1515 = !DILocation(line: 976, column: 11, scope: !1509, inlinedAt: !1514)
!1516 = !DILocation(line: 976, column: 10, scope: !1509, inlinedAt: !1514)
!1517 = !DILocation(line: 401, column: 11, scope: !1366)
!1518 = !DILocation(line: 417, column: 25, scope: !1366)
!1519 = !DILocation(line: 418, column: 7, scope: !1366)
!1520 = !DILocation(line: 421, column: 15, scope: !1373)
!1521 = !DILocation(line: 423, column: 15, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !283, line: 423, column: 15)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !283, line: 422, column: 13)
!1524 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 421, column: 15)
!1525 = !DILocation(line: 423, column: 15, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1522, file: !283, line: 423, column: 15)
!1527 = !DILocation(line: 423, column: 15, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !283, line: 423, column: 15)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !283, line: 423, column: 15)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !283, line: 423, column: 15)
!1531 = !DILocation(line: 423, column: 15, scope: !1529)
!1532 = !DILocation(line: 423, column: 15, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !283, line: 423, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1530, file: !283, line: 423, column: 15)
!1535 = !DILocation(line: 423, column: 15, scope: !1534)
!1536 = !DILocation(line: 423, column: 15, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !283, line: 423, column: 15)
!1538 = distinct !DILexicalBlock(scope: !1530, file: !283, line: 423, column: 15)
!1539 = !DILocation(line: 423, column: 15, scope: !1538)
!1540 = !DILocation(line: 423, column: 15, scope: !1530)
!1541 = !DILocation(line: 423, column: 15, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !283, line: 423, column: 15)
!1543 = distinct !DILexicalBlock(scope: !1522, file: !283, line: 423, column: 15)
!1544 = !DILocation(line: 423, column: 15, scope: !1543)
!1545 = !DILocation(line: 431, column: 19, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1523, file: !283, line: 430, column: 19)
!1547 = !DILocation(line: 431, column: 24, scope: !1546)
!1548 = !DILocation(line: 431, column: 28, scope: !1546)
!1549 = !DILocation(line: 431, column: 38, scope: !1546)
!1550 = !DILocation(line: 431, column: 48, scope: !1546)
!1551 = !DILocation(line: 431, column: 59, scope: !1546)
!1552 = !DILocation(line: 433, column: 19, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !283, line: 433, column: 19)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !283, line: 433, column: 19)
!1555 = distinct !DILexicalBlock(scope: !1546, file: !283, line: 432, column: 17)
!1556 = !DILocation(line: 433, column: 19, scope: !1554)
!1557 = !DILocation(line: 434, column: 19, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !283, line: 434, column: 19)
!1559 = distinct !DILexicalBlock(scope: !1555, file: !283, line: 434, column: 19)
!1560 = !DILocation(line: 434, column: 19, scope: !1559)
!1561 = !DILocation(line: 435, column: 17, scope: !1555)
!1562 = !DILocation(line: 442, column: 20, scope: !1524)
!1563 = !DILocation(line: 447, column: 11, scope: !1373)
!1564 = !DILocation(line: 450, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 448, column: 13)
!1566 = !DILocation(line: 456, column: 19, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1565, file: !283, line: 455, column: 19)
!1568 = !DILocation(line: 456, column: 24, scope: !1567)
!1569 = !DILocation(line: 456, column: 28, scope: !1567)
!1570 = !DILocation(line: 456, column: 38, scope: !1567)
!1571 = !DILocation(line: 456, column: 47, scope: !1567)
!1572 = !DILocation(line: 456, column: 41, scope: !1567)
!1573 = !DILocation(line: 456, column: 52, scope: !1567)
!1574 = !DILocation(line: 455, column: 19, scope: !1565)
!1575 = !DILocation(line: 457, column: 25, scope: !1567)
!1576 = !DILocation(line: 457, column: 17, scope: !1567)
!1577 = !DILocation(line: 464, column: 25, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1567, file: !283, line: 458, column: 19)
!1579 = !DILocation(line: 468, column: 21, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !283, line: 468, column: 21)
!1581 = distinct !DILexicalBlock(scope: !1578, file: !283, line: 468, column: 21)
!1582 = !DILocation(line: 468, column: 21, scope: !1581)
!1583 = !DILocation(line: 469, column: 21, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !283, line: 469, column: 21)
!1585 = distinct !DILexicalBlock(scope: !1578, file: !283, line: 469, column: 21)
!1586 = !DILocation(line: 469, column: 21, scope: !1585)
!1587 = !DILocation(line: 470, column: 21, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1589, file: !283, line: 470, column: 21)
!1589 = distinct !DILexicalBlock(scope: !1578, file: !283, line: 470, column: 21)
!1590 = !DILocation(line: 470, column: 21, scope: !1589)
!1591 = !DILocation(line: 471, column: 21, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !283, line: 471, column: 21)
!1593 = distinct !DILexicalBlock(scope: !1578, file: !283, line: 471, column: 21)
!1594 = !DILocation(line: 471, column: 21, scope: !1593)
!1595 = !DILocation(line: 472, column: 21, scope: !1578)
!1596 = !DILocation(line: 482, column: 33, scope: !1396)
!1597 = !DILocation(line: 483, column: 33, scope: !1396)
!1598 = !DILocation(line: 485, column: 33, scope: !1396)
!1599 = !DILocation(line: 486, column: 33, scope: !1396)
!1600 = !DILocation(line: 487, column: 33, scope: !1396)
!1601 = !DILocation(line: 490, column: 17, scope: !1396)
!1602 = !DILocation(line: 492, column: 21, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !283, line: 491, column: 15)
!1604 = distinct !DILexicalBlock(scope: !1396, file: !283, line: 490, column: 17)
!1605 = !DILocation(line: 499, column: 35, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1396, file: !283, line: 499, column: 17)
!1607 = !DILocation(line: 499, column: 57, scope: !1606)
!1608 = !DILocation(line: 0, scope: !1396)
!1609 = !DILocation(line: 502, column: 11, scope: !1396)
!1610 = !DILocation(line: 504, column: 17, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1396, file: !283, line: 503, column: 17)
!1612 = !DILocation(line: 507, column: 11, scope: !1396)
!1613 = !DILocation(line: 508, column: 17, scope: !1396)
!1614 = !DILocation(line: 517, column: 15, scope: !1373)
!1615 = !DILocation(line: 517, column: 40, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 517, column: 15)
!1617 = !DILocation(line: 517, column: 47, scope: !1616)
!1618 = !DILocation(line: 517, column: 18, scope: !1616)
!1619 = !DILocation(line: 521, column: 17, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 521, column: 15)
!1621 = !DILocation(line: 521, column: 15, scope: !1373)
!1622 = !DILocation(line: 525, column: 11, scope: !1373)
!1623 = !DILocation(line: 537, column: 15, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 536, column: 15)
!1625 = !DILocation(line: 536, column: 15, scope: !1373)
!1626 = !DILocation(line: 544, column: 15, scope: !1373)
!1627 = !DILocation(line: 546, column: 19, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !283, line: 545, column: 13)
!1629 = distinct !DILexicalBlock(scope: !1373, file: !283, line: 544, column: 15)
!1630 = !DILocation(line: 549, column: 19, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1628, file: !283, line: 549, column: 19)
!1632 = !DILocation(line: 549, column: 30, scope: !1631)
!1633 = !DILocation(line: 558, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !283, line: 558, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1628, file: !283, line: 558, column: 15)
!1636 = !DILocation(line: 558, column: 15, scope: !1635)
!1637 = !DILocation(line: 559, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !283, line: 559, column: 15)
!1639 = distinct !DILexicalBlock(scope: !1628, file: !283, line: 559, column: 15)
!1640 = !DILocation(line: 559, column: 15, scope: !1639)
!1641 = !DILocation(line: 560, column: 15, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !283, line: 560, column: 15)
!1643 = distinct !DILexicalBlock(scope: !1628, file: !283, line: 560, column: 15)
!1644 = !DILocation(line: 560, column: 15, scope: !1643)
!1645 = !DILocation(line: 562, column: 13, scope: !1628)
!1646 = !DILocation(line: 602, column: 17, scope: !1372)
!1647 = !DILocation(line: 0, scope: !1372)
!1648 = !DILocation(line: 605, column: 29, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1377, file: !283, line: 603, column: 15)
!1650 = !DILocation(line: 605, column: 41, scope: !1649)
!1651 = !DILocation(line: 670, column: 23, scope: !1393)
!1652 = !DILocation(line: 609, column: 17, scope: !1376)
!1653 = !DILocation(line: 609, column: 27, scope: !1376)
!1654 = !DILocation(line: 0, scope: !1428, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 609, column: 32, scope: !1376)
!1656 = !DILocation(line: 0, scope: !1436, inlinedAt: !1657)
!1657 = distinct !DILocation(line: 1137, column: 3, scope: !1428, inlinedAt: !1655)
!1658 = !DILocation(line: 59, column: 10, scope: !1436, inlinedAt: !1657)
!1659 = !DILocation(line: 613, column: 29, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1376, file: !283, line: 613, column: 21)
!1661 = !DILocation(line: 613, column: 21, scope: !1376)
!1662 = !DILocation(line: 614, column: 29, scope: !1660)
!1663 = !DILocation(line: 614, column: 19, scope: !1660)
!1664 = !DILocation(line: 618, column: 21, scope: !1379)
!1665 = !DILocation(line: 620, column: 54, scope: !1379)
!1666 = !DILocation(line: 0, scope: !1379)
!1667 = !DILocation(line: 619, column: 36, scope: !1379)
!1668 = !DILocation(line: 621, column: 25, scope: !1379)
!1669 = !DILocation(line: 631, column: 38, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1388, file: !283, line: 629, column: 23)
!1671 = !DILocation(line: 631, column: 48, scope: !1670)
!1672 = !DILocation(line: 665, column: 19, scope: !1380)
!1673 = !DILocation(line: 666, column: 15, scope: !1377)
!1674 = !DILocation(line: 626, column: 25, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1389, file: !283, line: 624, column: 23)
!1676 = !DILocation(line: 631, column: 51, scope: !1670)
!1677 = !DILocation(line: 631, column: 25, scope: !1670)
!1678 = !DILocation(line: 632, column: 28, scope: !1670)
!1679 = !DILocation(line: 631, column: 34, scope: !1670)
!1680 = distinct !{!1680, !1677, !1678, !552}
!1681 = !DILocation(line: 646, column: 29, scope: !1386)
!1682 = !DILocation(line: 0, scope: !1384)
!1683 = !DILocation(line: 649, column: 49, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1384, file: !283, line: 648, column: 29)
!1685 = !DILocation(line: 649, column: 39, scope: !1684)
!1686 = !DILocation(line: 649, column: 31, scope: !1684)
!1687 = !DILocation(line: 648, column: 60, scope: !1684)
!1688 = !DILocation(line: 648, column: 50, scope: !1684)
!1689 = !DILocation(line: 648, column: 29, scope: !1384)
!1690 = distinct !{!1690, !1689, !1691, !552}
!1691 = !DILocation(line: 654, column: 33, scope: !1384)
!1692 = !DILocation(line: 657, column: 43, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1387, file: !283, line: 657, column: 29)
!1694 = !DILocalVariable(name: "wc", arg: 1, scope: !1695, file: !1696, line: 865, type: !1699)
!1695 = distinct !DISubprogram(name: "c32isprint", scope: !1696, file: !1696, line: 865, type: !1697, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1701)
!1696 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!25, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1700, line: 20, baseType: !7)
!1700 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1701 = !{!1694}
!1702 = !DILocation(line: 0, scope: !1695, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 657, column: 31, scope: !1693)
!1704 = !DILocation(line: 871, column: 10, scope: !1695, inlinedAt: !1703)
!1705 = !DILocation(line: 657, column: 31, scope: !1693)
!1706 = !DILocation(line: 664, column: 23, scope: !1379)
!1707 = !DILocation(line: 753, column: 2, scope: !1333)
!1708 = !DILocation(line: 756, column: 51, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 756, column: 7)
!1710 = !DILocation(line: 670, column: 19, scope: !1393)
!1711 = !DILocation(line: 670, column: 45, scope: !1393)
!1712 = !DILocation(line: 674, column: 33, scope: !1392)
!1713 = !DILocation(line: 0, scope: !1392)
!1714 = !DILocation(line: 676, column: 17, scope: !1392)
!1715 = !DILocation(line: 398, column: 12, scope: !1366)
!1716 = !DILocation(line: 678, column: 43, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1718, file: !283, line: 678, column: 25)
!1718 = distinct !DILexicalBlock(scope: !1719, file: !283, line: 677, column: 19)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !283, line: 676, column: 17)
!1720 = distinct !DILexicalBlock(scope: !1392, file: !283, line: 676, column: 17)
!1721 = !DILocation(line: 680, column: 25, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !283, line: 680, column: 25)
!1723 = distinct !DILexicalBlock(scope: !1717, file: !283, line: 679, column: 23)
!1724 = !DILocation(line: 680, column: 25, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1722, file: !283, line: 680, column: 25)
!1726 = !DILocation(line: 680, column: 25, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !283, line: 680, column: 25)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !283, line: 680, column: 25)
!1729 = distinct !DILexicalBlock(scope: !1725, file: !283, line: 680, column: 25)
!1730 = !DILocation(line: 680, column: 25, scope: !1728)
!1731 = !DILocation(line: 680, column: 25, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !283, line: 680, column: 25)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !283, line: 680, column: 25)
!1734 = !DILocation(line: 680, column: 25, scope: !1733)
!1735 = !DILocation(line: 680, column: 25, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !283, line: 680, column: 25)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !283, line: 680, column: 25)
!1738 = !DILocation(line: 680, column: 25, scope: !1737)
!1739 = !DILocation(line: 680, column: 25, scope: !1729)
!1740 = !DILocation(line: 680, column: 25, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !283, line: 680, column: 25)
!1742 = distinct !DILexicalBlock(scope: !1722, file: !283, line: 680, column: 25)
!1743 = !DILocation(line: 680, column: 25, scope: !1742)
!1744 = !DILocation(line: 681, column: 25, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !283, line: 681, column: 25)
!1746 = distinct !DILexicalBlock(scope: !1723, file: !283, line: 681, column: 25)
!1747 = !DILocation(line: 681, column: 25, scope: !1746)
!1748 = !DILocation(line: 682, column: 25, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !283, line: 682, column: 25)
!1750 = distinct !DILexicalBlock(scope: !1723, file: !283, line: 682, column: 25)
!1751 = !DILocation(line: 682, column: 25, scope: !1750)
!1752 = !DILocation(line: 683, column: 38, scope: !1723)
!1753 = !DILocation(line: 683, column: 33, scope: !1723)
!1754 = !DILocation(line: 684, column: 23, scope: !1723)
!1755 = !DILocation(line: 685, column: 30, scope: !1717)
!1756 = !DILocation(line: 687, column: 25, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !283, line: 687, column: 25)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !283, line: 687, column: 25)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !283, line: 686, column: 23)
!1760 = distinct !DILexicalBlock(scope: !1717, file: !283, line: 685, column: 30)
!1761 = !DILocation(line: 687, column: 25, scope: !1758)
!1762 = !DILocation(line: 689, column: 23, scope: !1759)
!1763 = !DILocation(line: 690, column: 35, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1718, file: !283, line: 690, column: 25)
!1765 = !DILocation(line: 690, column: 30, scope: !1764)
!1766 = !DILocation(line: 690, column: 25, scope: !1718)
!1767 = !DILocation(line: 692, column: 21, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !283, line: 692, column: 21)
!1769 = distinct !DILexicalBlock(scope: !1718, file: !283, line: 692, column: 21)
!1770 = !DILocation(line: 692, column: 21, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !283, line: 692, column: 21)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !283, line: 692, column: 21)
!1773 = distinct !DILexicalBlock(scope: !1768, file: !283, line: 692, column: 21)
!1774 = !DILocation(line: 692, column: 21, scope: !1772)
!1775 = !DILocation(line: 692, column: 21, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !283, line: 692, column: 21)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !283, line: 692, column: 21)
!1778 = !DILocation(line: 692, column: 21, scope: !1777)
!1779 = !DILocation(line: 692, column: 21, scope: !1773)
!1780 = !DILocation(line: 0, scope: !1718)
!1781 = !DILocation(line: 693, column: 21, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !283, line: 693, column: 21)
!1783 = distinct !DILexicalBlock(scope: !1718, file: !283, line: 693, column: 21)
!1784 = !DILocation(line: 693, column: 21, scope: !1783)
!1785 = !DILocation(line: 694, column: 25, scope: !1718)
!1786 = !DILocation(line: 676, column: 17, scope: !1719)
!1787 = distinct !{!1787, !1788, !1789}
!1788 = !DILocation(line: 676, column: 17, scope: !1720)
!1789 = !DILocation(line: 695, column: 19, scope: !1720)
!1790 = !DILocation(line: 409, column: 30, scope: !1500)
!1791 = !DILocation(line: 702, column: 34, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 702, column: 11)
!1793 = !DILocation(line: 704, column: 14, scope: !1792)
!1794 = !DILocation(line: 705, column: 14, scope: !1792)
!1795 = !DILocation(line: 705, column: 35, scope: !1792)
!1796 = !DILocation(line: 705, column: 17, scope: !1792)
!1797 = !DILocation(line: 705, column: 47, scope: !1792)
!1798 = !DILocation(line: 705, column: 65, scope: !1792)
!1799 = !DILocation(line: 706, column: 11, scope: !1792)
!1800 = !DILocation(line: 702, column: 11, scope: !1366)
!1801 = !DILocation(line: 395, column: 15, scope: !1364)
!1802 = !DILocation(line: 709, column: 5, scope: !1366)
!1803 = !DILocation(line: 710, column: 7, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 710, column: 7)
!1805 = !DILocation(line: 710, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1804, file: !283, line: 710, column: 7)
!1807 = !DILocation(line: 710, column: 7, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !283, line: 710, column: 7)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !283, line: 710, column: 7)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !283, line: 710, column: 7)
!1811 = !DILocation(line: 710, column: 7, scope: !1809)
!1812 = !DILocation(line: 710, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !283, line: 710, column: 7)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !283, line: 710, column: 7)
!1815 = !DILocation(line: 710, column: 7, scope: !1814)
!1816 = !DILocation(line: 710, column: 7, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !283, line: 710, column: 7)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !283, line: 710, column: 7)
!1819 = !DILocation(line: 710, column: 7, scope: !1818)
!1820 = !DILocation(line: 710, column: 7, scope: !1810)
!1821 = !DILocation(line: 710, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !283, line: 710, column: 7)
!1823 = distinct !DILexicalBlock(scope: !1804, file: !283, line: 710, column: 7)
!1824 = !DILocation(line: 710, column: 7, scope: !1823)
!1825 = !DILocation(line: 712, column: 5, scope: !1366)
!1826 = !DILocation(line: 713, column: 7, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !283, line: 713, column: 7)
!1828 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 713, column: 7)
!1829 = !DILocation(line: 417, column: 21, scope: !1366)
!1830 = !DILocation(line: 713, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !283, line: 713, column: 7)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !283, line: 713, column: 7)
!1833 = distinct !DILexicalBlock(scope: !1827, file: !283, line: 713, column: 7)
!1834 = !DILocation(line: 713, column: 7, scope: !1832)
!1835 = !DILocation(line: 713, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !283, line: 713, column: 7)
!1837 = distinct !DILexicalBlock(scope: !1833, file: !283, line: 713, column: 7)
!1838 = !DILocation(line: 713, column: 7, scope: !1837)
!1839 = !DILocation(line: 713, column: 7, scope: !1833)
!1840 = !DILocation(line: 714, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !283, line: 714, column: 7)
!1842 = distinct !DILexicalBlock(scope: !1366, file: !283, line: 714, column: 7)
!1843 = !DILocation(line: 714, column: 7, scope: !1842)
!1844 = !DILocation(line: 716, column: 11, scope: !1366)
!1845 = !DILocation(line: 718, column: 5, scope: !1367)
!1846 = !DILocation(line: 395, column: 82, scope: !1367)
!1847 = !DILocation(line: 395, column: 3, scope: !1367)
!1848 = distinct !{!1848, !1496, !1849, !552}
!1849 = !DILocation(line: 718, column: 5, scope: !1364)
!1850 = !DILocation(line: 720, column: 11, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 720, column: 7)
!1852 = !DILocation(line: 720, column: 16, scope: !1851)
!1853 = !DILocation(line: 728, column: 51, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 728, column: 7)
!1855 = !DILocation(line: 731, column: 11, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1854, file: !283, line: 730, column: 5)
!1857 = !DILocation(line: 732, column: 16, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1856, file: !283, line: 731, column: 11)
!1859 = !DILocation(line: 732, column: 9, scope: !1858)
!1860 = !DILocation(line: 736, column: 18, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1858, file: !283, line: 736, column: 16)
!1862 = !DILocation(line: 736, column: 29, scope: !1861)
!1863 = !DILocation(line: 745, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 745, column: 7)
!1865 = !DILocation(line: 745, column: 20, scope: !1864)
!1866 = !DILocation(line: 746, column: 12, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !283, line: 746, column: 5)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !283, line: 746, column: 5)
!1869 = !DILocation(line: 746, column: 5, scope: !1868)
!1870 = !DILocation(line: 747, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !283, line: 747, column: 7)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !283, line: 747, column: 7)
!1873 = !DILocation(line: 747, column: 7, scope: !1872)
!1874 = !DILocation(line: 746, column: 39, scope: !1867)
!1875 = distinct !{!1875, !1869, !1876, !552}
!1876 = !DILocation(line: 747, column: 7, scope: !1868)
!1877 = !DILocation(line: 749, column: 11, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1333, file: !283, line: 749, column: 7)
!1879 = !DILocation(line: 749, column: 7, scope: !1333)
!1880 = !DILocation(line: 750, column: 5, scope: !1878)
!1881 = !DILocation(line: 750, column: 17, scope: !1878)
!1882 = !DILocation(line: 756, column: 21, scope: !1709)
!1883 = !DILocation(line: 760, column: 42, scope: !1333)
!1884 = !DILocation(line: 758, column: 10, scope: !1333)
!1885 = !DILocation(line: 758, column: 3, scope: !1333)
!1886 = !DILocation(line: 762, column: 1, scope: !1333)
!1887 = !DISubprogram(name: "iswprint", scope: !1888, file: !1888, line: 120, type: !1697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!1888 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1889 = distinct !DISubprogram(name: "quotearg_alloc", scope: !283, file: !283, line: 788, type: !1890, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!27, !35, !86, !1225}
!1892 = !{!1893, !1894, !1895}
!1893 = !DILocalVariable(name: "arg", arg: 1, scope: !1889, file: !283, line: 788, type: !35)
!1894 = !DILocalVariable(name: "argsize", arg: 2, scope: !1889, file: !283, line: 788, type: !86)
!1895 = !DILocalVariable(name: "o", arg: 3, scope: !1889, file: !283, line: 789, type: !1225)
!1896 = !DILocation(line: 0, scope: !1889)
!1897 = !DILocalVariable(name: "arg", arg: 1, scope: !1898, file: !283, line: 801, type: !35)
!1898 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !283, file: !283, line: 801, type: !1899, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1901)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!27, !35, !86, !415, !1225}
!1901 = !{!1897, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909}
!1902 = !DILocalVariable(name: "argsize", arg: 2, scope: !1898, file: !283, line: 801, type: !86)
!1903 = !DILocalVariable(name: "size", arg: 3, scope: !1898, file: !283, line: 801, type: !415)
!1904 = !DILocalVariable(name: "o", arg: 4, scope: !1898, file: !283, line: 802, type: !1225)
!1905 = !DILocalVariable(name: "p", scope: !1898, file: !283, line: 804, type: !1225)
!1906 = !DILocalVariable(name: "saved_errno", scope: !1898, file: !283, line: 805, type: !25)
!1907 = !DILocalVariable(name: "flags", scope: !1898, file: !283, line: 807, type: !25)
!1908 = !DILocalVariable(name: "bufsize", scope: !1898, file: !283, line: 808, type: !86)
!1909 = !DILocalVariable(name: "buf", scope: !1898, file: !283, line: 812, type: !27)
!1910 = !DILocation(line: 0, scope: !1898, inlinedAt: !1911)
!1911 = distinct !DILocation(line: 791, column: 10, scope: !1889)
!1912 = !DILocation(line: 804, column: 37, scope: !1898, inlinedAt: !1911)
!1913 = !DILocation(line: 805, column: 21, scope: !1898, inlinedAt: !1911)
!1914 = !DILocation(line: 807, column: 18, scope: !1898, inlinedAt: !1911)
!1915 = !DILocation(line: 807, column: 24, scope: !1898, inlinedAt: !1911)
!1916 = !DILocation(line: 808, column: 72, scope: !1898, inlinedAt: !1911)
!1917 = !DILocation(line: 809, column: 53, scope: !1898, inlinedAt: !1911)
!1918 = !DILocation(line: 810, column: 49, scope: !1898, inlinedAt: !1911)
!1919 = !DILocation(line: 811, column: 49, scope: !1898, inlinedAt: !1911)
!1920 = !DILocation(line: 808, column: 20, scope: !1898, inlinedAt: !1911)
!1921 = !DILocation(line: 811, column: 62, scope: !1898, inlinedAt: !1911)
!1922 = !DILocation(line: 812, column: 15, scope: !1898, inlinedAt: !1911)
!1923 = !DILocation(line: 813, column: 60, scope: !1898, inlinedAt: !1911)
!1924 = !DILocation(line: 815, column: 32, scope: !1898, inlinedAt: !1911)
!1925 = !DILocation(line: 815, column: 47, scope: !1898, inlinedAt: !1911)
!1926 = !DILocation(line: 813, column: 3, scope: !1898, inlinedAt: !1911)
!1927 = !DILocation(line: 816, column: 9, scope: !1898, inlinedAt: !1911)
!1928 = !DILocation(line: 791, column: 3, scope: !1889)
!1929 = !DILocation(line: 0, scope: !1898)
!1930 = !DILocation(line: 804, column: 37, scope: !1898)
!1931 = !DILocation(line: 805, column: 21, scope: !1898)
!1932 = !DILocation(line: 807, column: 18, scope: !1898)
!1933 = !DILocation(line: 807, column: 27, scope: !1898)
!1934 = !DILocation(line: 807, column: 24, scope: !1898)
!1935 = !DILocation(line: 808, column: 72, scope: !1898)
!1936 = !DILocation(line: 809, column: 53, scope: !1898)
!1937 = !DILocation(line: 810, column: 49, scope: !1898)
!1938 = !DILocation(line: 811, column: 49, scope: !1898)
!1939 = !DILocation(line: 808, column: 20, scope: !1898)
!1940 = !DILocation(line: 811, column: 62, scope: !1898)
!1941 = !DILocation(line: 812, column: 15, scope: !1898)
!1942 = !DILocation(line: 813, column: 60, scope: !1898)
!1943 = !DILocation(line: 815, column: 32, scope: !1898)
!1944 = !DILocation(line: 815, column: 47, scope: !1898)
!1945 = !DILocation(line: 813, column: 3, scope: !1898)
!1946 = !DILocation(line: 816, column: 9, scope: !1898)
!1947 = !DILocation(line: 817, column: 7, scope: !1898)
!1948 = !DILocation(line: 818, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1898, file: !283, line: 817, column: 7)
!1950 = !DILocation(line: 818, column: 5, scope: !1949)
!1951 = !DILocation(line: 819, column: 3, scope: !1898)
!1952 = distinct !DISubprogram(name: "quotearg_free", scope: !283, file: !283, line: 837, type: !238, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1953)
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "sv", scope: !1952, file: !283, line: 839, type: !356)
!1955 = !DILocalVariable(name: "i", scope: !1956, file: !283, line: 840, type: !25)
!1956 = distinct !DILexicalBlock(scope: !1952, file: !283, line: 840, column: 3)
!1957 = !DILocation(line: 839, column: 24, scope: !1952)
!1958 = !DILocation(line: 0, scope: !1952)
!1959 = !DILocation(line: 0, scope: !1956)
!1960 = !DILocation(line: 840, column: 21, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !283, line: 840, column: 3)
!1962 = !DILocation(line: 840, column: 3, scope: !1956)
!1963 = !DILocation(line: 842, column: 13, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1952, file: !283, line: 842, column: 7)
!1965 = !{!1966, !489, i64 8}
!1966 = !{!"slotvec", !776, i64 0, !489, i64 8}
!1967 = !DILocation(line: 842, column: 17, scope: !1964)
!1968 = !DILocation(line: 842, column: 7, scope: !1952)
!1969 = !DILocation(line: 841, column: 17, scope: !1961)
!1970 = !DILocation(line: 841, column: 5, scope: !1961)
!1971 = !DILocation(line: 840, column: 32, scope: !1961)
!1972 = distinct !{!1972, !1962, !1973, !552}
!1973 = !DILocation(line: 841, column: 20, scope: !1956)
!1974 = !DILocation(line: 844, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1964, file: !283, line: 843, column: 5)
!1976 = !DILocation(line: 845, column: 21, scope: !1975)
!1977 = !{!1966, !776, i64 0}
!1978 = !DILocation(line: 846, column: 20, scope: !1975)
!1979 = !DILocation(line: 847, column: 5, scope: !1975)
!1980 = !DILocation(line: 848, column: 10, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1952, file: !283, line: 848, column: 7)
!1982 = !DILocation(line: 848, column: 7, scope: !1952)
!1983 = !DILocation(line: 850, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !283, line: 849, column: 5)
!1985 = !DILocation(line: 850, column: 7, scope: !1984)
!1986 = !DILocation(line: 851, column: 15, scope: !1984)
!1987 = !DILocation(line: 852, column: 5, scope: !1984)
!1988 = !DILocation(line: 853, column: 10, scope: !1952)
!1989 = !DILocation(line: 854, column: 1, scope: !1952)
!1990 = distinct !DISubprogram(name: "quotearg_n", scope: !283, file: !283, line: 919, type: !693, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !1991)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "n", arg: 1, scope: !1990, file: !283, line: 919, type: !25)
!1993 = !DILocalVariable(name: "arg", arg: 2, scope: !1990, file: !283, line: 919, type: !35)
!1994 = !DILocation(line: 0, scope: !1990)
!1995 = !DILocation(line: 921, column: 10, scope: !1990)
!1996 = !DILocation(line: 921, column: 3, scope: !1990)
!1997 = distinct !DISubprogram(name: "quotearg_n_options", scope: !283, file: !283, line: 866, type: !1998, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2000)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!27, !25, !35, !86, !1225}
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2011, !2012, !2014, !2015, !2016}
!2001 = !DILocalVariable(name: "n", arg: 1, scope: !1997, file: !283, line: 866, type: !25)
!2002 = !DILocalVariable(name: "arg", arg: 2, scope: !1997, file: !283, line: 866, type: !35)
!2003 = !DILocalVariable(name: "argsize", arg: 3, scope: !1997, file: !283, line: 866, type: !86)
!2004 = !DILocalVariable(name: "options", arg: 4, scope: !1997, file: !283, line: 867, type: !1225)
!2005 = !DILocalVariable(name: "saved_errno", scope: !1997, file: !283, line: 869, type: !25)
!2006 = !DILocalVariable(name: "sv", scope: !1997, file: !283, line: 871, type: !356)
!2007 = !DILocalVariable(name: "nslots_max", scope: !1997, file: !283, line: 873, type: !25)
!2008 = !DILocalVariable(name: "preallocated", scope: !2009, file: !283, line: 879, type: !38)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !283, line: 878, column: 5)
!2010 = distinct !DILexicalBlock(scope: !1997, file: !283, line: 877, column: 7)
!2011 = !DILocalVariable(name: "new_nslots", scope: !2009, file: !283, line: 880, type: !428)
!2012 = !DILocalVariable(name: "size", scope: !2013, file: !283, line: 891, type: !86)
!2013 = distinct !DILexicalBlock(scope: !1997, file: !283, line: 890, column: 3)
!2014 = !DILocalVariable(name: "val", scope: !2013, file: !283, line: 892, type: !27)
!2015 = !DILocalVariable(name: "flags", scope: !2013, file: !283, line: 894, type: !25)
!2016 = !DILocalVariable(name: "qsize", scope: !2013, file: !283, line: 895, type: !86)
!2017 = !DILocation(line: 0, scope: !1997)
!2018 = !DILocation(line: 869, column: 21, scope: !1997)
!2019 = !DILocation(line: 871, column: 24, scope: !1997)
!2020 = !DILocation(line: 874, column: 17, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1997, file: !283, line: 874, column: 7)
!2022 = !DILocation(line: 875, column: 5, scope: !2021)
!2023 = !DILocation(line: 877, column: 7, scope: !2010)
!2024 = !DILocation(line: 877, column: 14, scope: !2010)
!2025 = !DILocation(line: 877, column: 7, scope: !1997)
!2026 = !DILocation(line: 879, column: 31, scope: !2009)
!2027 = !DILocation(line: 0, scope: !2009)
!2028 = !DILocation(line: 880, column: 7, scope: !2009)
!2029 = !DILocation(line: 880, column: 26, scope: !2009)
!2030 = !DILocation(line: 880, column: 13, scope: !2009)
!2031 = !DILocation(line: 882, column: 31, scope: !2009)
!2032 = !DILocation(line: 883, column: 33, scope: !2009)
!2033 = !DILocation(line: 883, column: 42, scope: !2009)
!2034 = !DILocation(line: 883, column: 31, scope: !2009)
!2035 = !DILocation(line: 882, column: 22, scope: !2009)
!2036 = !DILocation(line: 882, column: 15, scope: !2009)
!2037 = !DILocation(line: 884, column: 11, scope: !2009)
!2038 = !DILocation(line: 885, column: 15, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2009, file: !283, line: 884, column: 11)
!2040 = !{i64 0, i64 8, !775, i64 8, i64 8, !488}
!2041 = !DILocation(line: 885, column: 9, scope: !2039)
!2042 = !DILocation(line: 886, column: 20, scope: !2009)
!2043 = !DILocation(line: 886, column: 18, scope: !2009)
!2044 = !DILocation(line: 886, column: 15, scope: !2009)
!2045 = !DILocation(line: 886, column: 32, scope: !2009)
!2046 = !DILocation(line: 886, column: 43, scope: !2009)
!2047 = !DILocation(line: 886, column: 53, scope: !2009)
!2048 = !DILocation(line: 0, scope: !1436, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 886, column: 7, scope: !2009)
!2050 = !DILocation(line: 59, column: 10, scope: !1436, inlinedAt: !2049)
!2051 = !DILocation(line: 887, column: 16, scope: !2009)
!2052 = !DILocation(line: 887, column: 14, scope: !2009)
!2053 = !DILocation(line: 888, column: 5, scope: !2010)
!2054 = !DILocation(line: 888, column: 5, scope: !2009)
!2055 = !DILocation(line: 891, column: 19, scope: !2013)
!2056 = !DILocation(line: 891, column: 25, scope: !2013)
!2057 = !DILocation(line: 0, scope: !2013)
!2058 = !DILocation(line: 892, column: 23, scope: !2013)
!2059 = !DILocation(line: 894, column: 26, scope: !2013)
!2060 = !DILocation(line: 894, column: 32, scope: !2013)
!2061 = !DILocation(line: 896, column: 55, scope: !2013)
!2062 = !DILocation(line: 897, column: 46, scope: !2013)
!2063 = !DILocation(line: 898, column: 55, scope: !2013)
!2064 = !DILocation(line: 899, column: 55, scope: !2013)
!2065 = !DILocation(line: 895, column: 20, scope: !2013)
!2066 = !DILocation(line: 901, column: 14, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2013, file: !283, line: 901, column: 9)
!2068 = !DILocation(line: 901, column: 9, scope: !2013)
!2069 = !DILocation(line: 903, column: 35, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2067, file: !283, line: 902, column: 7)
!2071 = !DILocation(line: 903, column: 20, scope: !2070)
!2072 = !DILocation(line: 904, column: 17, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !283, line: 904, column: 13)
!2074 = !DILocation(line: 904, column: 13, scope: !2070)
!2075 = !DILocation(line: 905, column: 11, scope: !2073)
!2076 = !DILocation(line: 906, column: 27, scope: !2070)
!2077 = !DILocation(line: 906, column: 19, scope: !2070)
!2078 = !DILocation(line: 907, column: 69, scope: !2070)
!2079 = !DILocation(line: 909, column: 44, scope: !2070)
!2080 = !DILocation(line: 910, column: 44, scope: !2070)
!2081 = !DILocation(line: 907, column: 9, scope: !2070)
!2082 = !DILocation(line: 911, column: 7, scope: !2070)
!2083 = !DILocation(line: 913, column: 11, scope: !2013)
!2084 = !DILocation(line: 914, column: 5, scope: !2013)
!2085 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !283, file: !283, line: 925, type: !2086, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2088)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!27, !25, !35, !86}
!2088 = !{!2089, !2090, !2091}
!2089 = !DILocalVariable(name: "n", arg: 1, scope: !2085, file: !283, line: 925, type: !25)
!2090 = !DILocalVariable(name: "arg", arg: 2, scope: !2085, file: !283, line: 925, type: !35)
!2091 = !DILocalVariable(name: "argsize", arg: 3, scope: !2085, file: !283, line: 925, type: !86)
!2092 = !DILocation(line: 0, scope: !2085)
!2093 = !DILocation(line: 927, column: 10, scope: !2085)
!2094 = !DILocation(line: 927, column: 3, scope: !2085)
!2095 = distinct !DISubprogram(name: "quotearg", scope: !283, file: !283, line: 931, type: !697, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2096)
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "arg", arg: 1, scope: !2095, file: !283, line: 931, type: !35)
!2098 = !DILocation(line: 0, scope: !2095)
!2099 = !DILocation(line: 0, scope: !1990, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 933, column: 10, scope: !2095)
!2101 = !DILocation(line: 921, column: 10, scope: !1990, inlinedAt: !2100)
!2102 = !DILocation(line: 933, column: 3, scope: !2095)
!2103 = distinct !DISubprogram(name: "quotearg_mem", scope: !283, file: !283, line: 937, type: !2104, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2106)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!27, !35, !86}
!2106 = !{!2107, !2108}
!2107 = !DILocalVariable(name: "arg", arg: 1, scope: !2103, file: !283, line: 937, type: !35)
!2108 = !DILocalVariable(name: "argsize", arg: 2, scope: !2103, file: !283, line: 937, type: !86)
!2109 = !DILocation(line: 0, scope: !2103)
!2110 = !DILocation(line: 0, scope: !2085, inlinedAt: !2111)
!2111 = distinct !DILocation(line: 939, column: 10, scope: !2103)
!2112 = !DILocation(line: 927, column: 10, scope: !2085, inlinedAt: !2111)
!2113 = !DILocation(line: 939, column: 3, scope: !2103)
!2114 = distinct !DISubprogram(name: "quotearg_n_style", scope: !283, file: !283, line: 943, type: !2115, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!27, !25, !285, !35}
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DILocalVariable(name: "n", arg: 1, scope: !2114, file: !283, line: 943, type: !25)
!2119 = !DILocalVariable(name: "s", arg: 2, scope: !2114, file: !283, line: 943, type: !285)
!2120 = !DILocalVariable(name: "arg", arg: 3, scope: !2114, file: !283, line: 943, type: !35)
!2121 = !DILocalVariable(name: "o", scope: !2114, file: !283, line: 945, type: !1226)
!2122 = !DILocation(line: 0, scope: !2114)
!2123 = !DILocation(line: 945, column: 3, scope: !2114)
!2124 = !DILocation(line: 945, column: 32, scope: !2114)
!2125 = !{!2126}
!2126 = distinct !{!2126, !2127, !"quoting_options_from_style: argument 0"}
!2127 = distinct !{!2127, !"quoting_options_from_style"}
!2128 = !DILocation(line: 945, column: 36, scope: !2114)
!2129 = !DILocalVariable(name: "style", arg: 1, scope: !2130, file: !283, line: 183, type: !285)
!2130 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !283, file: !283, line: 183, type: !2131, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!314, !285}
!2133 = !{!2129, !2134}
!2134 = !DILocalVariable(name: "o", scope: !2130, file: !283, line: 185, type: !314)
!2135 = !DILocation(line: 0, scope: !2130, inlinedAt: !2136)
!2136 = distinct !DILocation(line: 945, column: 36, scope: !2114)
!2137 = !DILocation(line: 185, column: 26, scope: !2130, inlinedAt: !2136)
!2138 = !DILocation(line: 186, column: 13, scope: !2139, inlinedAt: !2136)
!2139 = distinct !DILexicalBlock(scope: !2130, file: !283, line: 186, column: 7)
!2140 = !DILocation(line: 186, column: 7, scope: !2130, inlinedAt: !2136)
!2141 = !DILocation(line: 187, column: 5, scope: !2139, inlinedAt: !2136)
!2142 = !DILocation(line: 188, column: 5, scope: !2130, inlinedAt: !2136)
!2143 = !DILocation(line: 188, column: 11, scope: !2130, inlinedAt: !2136)
!2144 = !DILocation(line: 946, column: 10, scope: !2114)
!2145 = !DILocation(line: 947, column: 1, scope: !2114)
!2146 = !DILocation(line: 946, column: 3, scope: !2114)
!2147 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !283, file: !283, line: 950, type: !2148, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!27, !25, !285, !35, !86}
!2150 = !{!2151, !2152, !2153, !2154, !2155}
!2151 = !DILocalVariable(name: "n", arg: 1, scope: !2147, file: !283, line: 950, type: !25)
!2152 = !DILocalVariable(name: "s", arg: 2, scope: !2147, file: !283, line: 950, type: !285)
!2153 = !DILocalVariable(name: "arg", arg: 3, scope: !2147, file: !283, line: 951, type: !35)
!2154 = !DILocalVariable(name: "argsize", arg: 4, scope: !2147, file: !283, line: 951, type: !86)
!2155 = !DILocalVariable(name: "o", scope: !2147, file: !283, line: 953, type: !1226)
!2156 = !DILocation(line: 0, scope: !2147)
!2157 = !DILocation(line: 953, column: 3, scope: !2147)
!2158 = !DILocation(line: 953, column: 32, scope: !2147)
!2159 = !{!2160}
!2160 = distinct !{!2160, !2161, !"quoting_options_from_style: argument 0"}
!2161 = distinct !{!2161, !"quoting_options_from_style"}
!2162 = !DILocation(line: 953, column: 36, scope: !2147)
!2163 = !DILocation(line: 0, scope: !2130, inlinedAt: !2164)
!2164 = distinct !DILocation(line: 953, column: 36, scope: !2147)
!2165 = !DILocation(line: 185, column: 26, scope: !2130, inlinedAt: !2164)
!2166 = !DILocation(line: 186, column: 13, scope: !2139, inlinedAt: !2164)
!2167 = !DILocation(line: 186, column: 7, scope: !2130, inlinedAt: !2164)
!2168 = !DILocation(line: 187, column: 5, scope: !2139, inlinedAt: !2164)
!2169 = !DILocation(line: 188, column: 5, scope: !2130, inlinedAt: !2164)
!2170 = !DILocation(line: 188, column: 11, scope: !2130, inlinedAt: !2164)
!2171 = !DILocation(line: 954, column: 10, scope: !2147)
!2172 = !DILocation(line: 955, column: 1, scope: !2147)
!2173 = !DILocation(line: 954, column: 3, scope: !2147)
!2174 = distinct !DISubprogram(name: "quotearg_style", scope: !283, file: !283, line: 958, type: !2175, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2177)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!27, !285, !35}
!2177 = !{!2178, !2179}
!2178 = !DILocalVariable(name: "s", arg: 1, scope: !2174, file: !283, line: 958, type: !285)
!2179 = !DILocalVariable(name: "arg", arg: 2, scope: !2174, file: !283, line: 958, type: !35)
!2180 = !DILocation(line: 0, scope: !2174)
!2181 = !DILocation(line: 0, scope: !2114, inlinedAt: !2182)
!2182 = distinct !DILocation(line: 960, column: 10, scope: !2174)
!2183 = !DILocation(line: 945, column: 3, scope: !2114, inlinedAt: !2182)
!2184 = !DILocation(line: 945, column: 32, scope: !2114, inlinedAt: !2182)
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"quoting_options_from_style: argument 0"}
!2187 = distinct !{!2187, !"quoting_options_from_style"}
!2188 = !DILocation(line: 945, column: 36, scope: !2114, inlinedAt: !2182)
!2189 = !DILocation(line: 0, scope: !2130, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 945, column: 36, scope: !2114, inlinedAt: !2182)
!2191 = !DILocation(line: 185, column: 26, scope: !2130, inlinedAt: !2190)
!2192 = !DILocation(line: 186, column: 13, scope: !2139, inlinedAt: !2190)
!2193 = !DILocation(line: 186, column: 7, scope: !2130, inlinedAt: !2190)
!2194 = !DILocation(line: 187, column: 5, scope: !2139, inlinedAt: !2190)
!2195 = !DILocation(line: 188, column: 5, scope: !2130, inlinedAt: !2190)
!2196 = !DILocation(line: 188, column: 11, scope: !2130, inlinedAt: !2190)
!2197 = !DILocation(line: 946, column: 10, scope: !2114, inlinedAt: !2182)
!2198 = !DILocation(line: 947, column: 1, scope: !2114, inlinedAt: !2182)
!2199 = !DILocation(line: 960, column: 3, scope: !2174)
!2200 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !283, file: !283, line: 964, type: !2201, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!27, !285, !35, !86}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "s", arg: 1, scope: !2200, file: !283, line: 964, type: !285)
!2205 = !DILocalVariable(name: "arg", arg: 2, scope: !2200, file: !283, line: 964, type: !35)
!2206 = !DILocalVariable(name: "argsize", arg: 3, scope: !2200, file: !283, line: 964, type: !86)
!2207 = !DILocation(line: 0, scope: !2200)
!2208 = !DILocation(line: 0, scope: !2147, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 966, column: 10, scope: !2200)
!2210 = !DILocation(line: 953, column: 3, scope: !2147, inlinedAt: !2209)
!2211 = !DILocation(line: 953, column: 32, scope: !2147, inlinedAt: !2209)
!2212 = !{!2213}
!2213 = distinct !{!2213, !2214, !"quoting_options_from_style: argument 0"}
!2214 = distinct !{!2214, !"quoting_options_from_style"}
!2215 = !DILocation(line: 953, column: 36, scope: !2147, inlinedAt: !2209)
!2216 = !DILocation(line: 0, scope: !2130, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 953, column: 36, scope: !2147, inlinedAt: !2209)
!2218 = !DILocation(line: 185, column: 26, scope: !2130, inlinedAt: !2217)
!2219 = !DILocation(line: 186, column: 13, scope: !2139, inlinedAt: !2217)
!2220 = !DILocation(line: 186, column: 7, scope: !2130, inlinedAt: !2217)
!2221 = !DILocation(line: 187, column: 5, scope: !2139, inlinedAt: !2217)
!2222 = !DILocation(line: 188, column: 5, scope: !2130, inlinedAt: !2217)
!2223 = !DILocation(line: 188, column: 11, scope: !2130, inlinedAt: !2217)
!2224 = !DILocation(line: 954, column: 10, scope: !2147, inlinedAt: !2209)
!2225 = !DILocation(line: 955, column: 1, scope: !2147, inlinedAt: !2209)
!2226 = !DILocation(line: 966, column: 3, scope: !2200)
!2227 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !283, file: !283, line: 970, type: !2228, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!27, !35, !86, !28}
!2230 = !{!2231, !2232, !2233, !2234}
!2231 = !DILocalVariable(name: "arg", arg: 1, scope: !2227, file: !283, line: 970, type: !35)
!2232 = !DILocalVariable(name: "argsize", arg: 2, scope: !2227, file: !283, line: 970, type: !86)
!2233 = !DILocalVariable(name: "ch", arg: 3, scope: !2227, file: !283, line: 970, type: !28)
!2234 = !DILocalVariable(name: "options", scope: !2227, file: !283, line: 972, type: !314)
!2235 = !DILocation(line: 0, scope: !2227)
!2236 = !DILocation(line: 972, column: 3, scope: !2227)
!2237 = !DILocation(line: 972, column: 26, scope: !2227)
!2238 = !DILocation(line: 973, column: 13, scope: !2227)
!2239 = !{i64 0, i64 4, !594, i64 4, i64 4, !585, i64 8, i64 32, !594, i64 40, i64 8, !488, i64 48, i64 8, !488}
!2240 = !DILocation(line: 0, scope: !1246, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 974, column: 3, scope: !2227)
!2242 = !DILocation(line: 147, column: 62, scope: !1246, inlinedAt: !2241)
!2243 = !DILocation(line: 147, column: 57, scope: !1246, inlinedAt: !2241)
!2244 = !DILocation(line: 148, column: 15, scope: !1246, inlinedAt: !2241)
!2245 = !DILocation(line: 149, column: 21, scope: !1246, inlinedAt: !2241)
!2246 = !DILocation(line: 149, column: 24, scope: !1246, inlinedAt: !2241)
!2247 = !DILocation(line: 149, column: 34, scope: !1246, inlinedAt: !2241)
!2248 = !DILocation(line: 150, column: 19, scope: !1246, inlinedAt: !2241)
!2249 = !DILocation(line: 150, column: 24, scope: !1246, inlinedAt: !2241)
!2250 = !DILocation(line: 150, column: 6, scope: !1246, inlinedAt: !2241)
!2251 = !DILocation(line: 975, column: 10, scope: !2227)
!2252 = !DILocation(line: 976, column: 1, scope: !2227)
!2253 = !DILocation(line: 975, column: 3, scope: !2227)
!2254 = distinct !DISubprogram(name: "quotearg_char", scope: !283, file: !283, line: 979, type: !2255, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!27, !35, !28}
!2257 = !{!2258, !2259}
!2258 = !DILocalVariable(name: "arg", arg: 1, scope: !2254, file: !283, line: 979, type: !35)
!2259 = !DILocalVariable(name: "ch", arg: 2, scope: !2254, file: !283, line: 979, type: !28)
!2260 = !DILocation(line: 0, scope: !2254)
!2261 = !DILocation(line: 0, scope: !2227, inlinedAt: !2262)
!2262 = distinct !DILocation(line: 981, column: 10, scope: !2254)
!2263 = !DILocation(line: 972, column: 3, scope: !2227, inlinedAt: !2262)
!2264 = !DILocation(line: 972, column: 26, scope: !2227, inlinedAt: !2262)
!2265 = !DILocation(line: 973, column: 13, scope: !2227, inlinedAt: !2262)
!2266 = !DILocation(line: 0, scope: !1246, inlinedAt: !2267)
!2267 = distinct !DILocation(line: 974, column: 3, scope: !2227, inlinedAt: !2262)
!2268 = !DILocation(line: 147, column: 62, scope: !1246, inlinedAt: !2267)
!2269 = !DILocation(line: 147, column: 57, scope: !1246, inlinedAt: !2267)
!2270 = !DILocation(line: 148, column: 15, scope: !1246, inlinedAt: !2267)
!2271 = !DILocation(line: 149, column: 21, scope: !1246, inlinedAt: !2267)
!2272 = !DILocation(line: 149, column: 24, scope: !1246, inlinedAt: !2267)
!2273 = !DILocation(line: 149, column: 34, scope: !1246, inlinedAt: !2267)
!2274 = !DILocation(line: 150, column: 19, scope: !1246, inlinedAt: !2267)
!2275 = !DILocation(line: 150, column: 24, scope: !1246, inlinedAt: !2267)
!2276 = !DILocation(line: 150, column: 6, scope: !1246, inlinedAt: !2267)
!2277 = !DILocation(line: 975, column: 10, scope: !2227, inlinedAt: !2262)
!2278 = !DILocation(line: 976, column: 1, scope: !2227, inlinedAt: !2262)
!2279 = !DILocation(line: 981, column: 3, scope: !2254)
!2280 = distinct !DISubprogram(name: "quotearg_colon", scope: !283, file: !283, line: 985, type: !697, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2281)
!2281 = !{!2282}
!2282 = !DILocalVariable(name: "arg", arg: 1, scope: !2280, file: !283, line: 985, type: !35)
!2283 = !DILocation(line: 0, scope: !2280)
!2284 = !DILocation(line: 0, scope: !2254, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 987, column: 10, scope: !2280)
!2286 = !DILocation(line: 0, scope: !2227, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 981, column: 10, scope: !2254, inlinedAt: !2285)
!2288 = !DILocation(line: 972, column: 3, scope: !2227, inlinedAt: !2287)
!2289 = !DILocation(line: 972, column: 26, scope: !2227, inlinedAt: !2287)
!2290 = !DILocation(line: 973, column: 13, scope: !2227, inlinedAt: !2287)
!2291 = !DILocation(line: 0, scope: !1246, inlinedAt: !2292)
!2292 = distinct !DILocation(line: 974, column: 3, scope: !2227, inlinedAt: !2287)
!2293 = !DILocation(line: 147, column: 57, scope: !1246, inlinedAt: !2292)
!2294 = !DILocation(line: 149, column: 21, scope: !1246, inlinedAt: !2292)
!2295 = !DILocation(line: 150, column: 6, scope: !1246, inlinedAt: !2292)
!2296 = !DILocation(line: 975, column: 10, scope: !2227, inlinedAt: !2287)
!2297 = !DILocation(line: 976, column: 1, scope: !2227, inlinedAt: !2287)
!2298 = !DILocation(line: 987, column: 3, scope: !2280)
!2299 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !283, file: !283, line: 991, type: !2104, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2300)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "arg", arg: 1, scope: !2299, file: !283, line: 991, type: !35)
!2302 = !DILocalVariable(name: "argsize", arg: 2, scope: !2299, file: !283, line: 991, type: !86)
!2303 = !DILocation(line: 0, scope: !2299)
!2304 = !DILocation(line: 0, scope: !2227, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 993, column: 10, scope: !2299)
!2306 = !DILocation(line: 972, column: 3, scope: !2227, inlinedAt: !2305)
!2307 = !DILocation(line: 972, column: 26, scope: !2227, inlinedAt: !2305)
!2308 = !DILocation(line: 973, column: 13, scope: !2227, inlinedAt: !2305)
!2309 = !DILocation(line: 0, scope: !1246, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 974, column: 3, scope: !2227, inlinedAt: !2305)
!2311 = !DILocation(line: 147, column: 57, scope: !1246, inlinedAt: !2310)
!2312 = !DILocation(line: 149, column: 21, scope: !1246, inlinedAt: !2310)
!2313 = !DILocation(line: 150, column: 6, scope: !1246, inlinedAt: !2310)
!2314 = !DILocation(line: 975, column: 10, scope: !2227, inlinedAt: !2305)
!2315 = !DILocation(line: 976, column: 1, scope: !2227, inlinedAt: !2305)
!2316 = !DILocation(line: 993, column: 3, scope: !2299)
!2317 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !283, file: !283, line: 997, type: !2115, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2318)
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DILocalVariable(name: "n", arg: 1, scope: !2317, file: !283, line: 997, type: !25)
!2320 = !DILocalVariable(name: "s", arg: 2, scope: !2317, file: !283, line: 997, type: !285)
!2321 = !DILocalVariable(name: "arg", arg: 3, scope: !2317, file: !283, line: 997, type: !35)
!2322 = !DILocalVariable(name: "options", scope: !2317, file: !283, line: 999, type: !314)
!2323 = !DILocation(line: 0, scope: !2317)
!2324 = !DILocation(line: 999, column: 3, scope: !2317)
!2325 = !DILocation(line: 999, column: 26, scope: !2317)
!2326 = !DILocation(line: 0, scope: !2130, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 1000, column: 13, scope: !2317)
!2328 = !DILocation(line: 186, column: 13, scope: !2139, inlinedAt: !2327)
!2329 = !DILocation(line: 186, column: 7, scope: !2130, inlinedAt: !2327)
!2330 = !DILocation(line: 187, column: 5, scope: !2139, inlinedAt: !2327)
!2331 = !{!2332}
!2332 = distinct !{!2332, !2333, !"quoting_options_from_style: argument 0"}
!2333 = distinct !{!2333, !"quoting_options_from_style"}
!2334 = !DILocation(line: 1000, column: 13, scope: !2317)
!2335 = !DILocation(line: 0, scope: !1246, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 1001, column: 3, scope: !2317)
!2337 = !DILocation(line: 147, column: 57, scope: !1246, inlinedAt: !2336)
!2338 = !DILocation(line: 149, column: 21, scope: !1246, inlinedAt: !2336)
!2339 = !DILocation(line: 150, column: 6, scope: !1246, inlinedAt: !2336)
!2340 = !DILocation(line: 1002, column: 10, scope: !2317)
!2341 = !DILocation(line: 1003, column: 1, scope: !2317)
!2342 = !DILocation(line: 1002, column: 3, scope: !2317)
!2343 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !283, file: !283, line: 1006, type: !2344, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2346)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!27, !25, !35, !35, !35}
!2346 = !{!2347, !2348, !2349, !2350}
!2347 = !DILocalVariable(name: "n", arg: 1, scope: !2343, file: !283, line: 1006, type: !25)
!2348 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2343, file: !283, line: 1006, type: !35)
!2349 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2343, file: !283, line: 1007, type: !35)
!2350 = !DILocalVariable(name: "arg", arg: 4, scope: !2343, file: !283, line: 1007, type: !35)
!2351 = !DILocation(line: 0, scope: !2343)
!2352 = !DILocalVariable(name: "n", arg: 1, scope: !2353, file: !283, line: 1014, type: !25)
!2353 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !283, file: !283, line: 1014, type: !2354, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2356)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!27, !25, !35, !35, !35, !86}
!2356 = !{!2352, !2357, !2358, !2359, !2360, !2361}
!2357 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2353, file: !283, line: 1014, type: !35)
!2358 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2353, file: !283, line: 1015, type: !35)
!2359 = !DILocalVariable(name: "arg", arg: 4, scope: !2353, file: !283, line: 1016, type: !35)
!2360 = !DILocalVariable(name: "argsize", arg: 5, scope: !2353, file: !283, line: 1016, type: !86)
!2361 = !DILocalVariable(name: "o", scope: !2353, file: !283, line: 1018, type: !314)
!2362 = !DILocation(line: 0, scope: !2353, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 1009, column: 10, scope: !2343)
!2364 = !DILocation(line: 1018, column: 3, scope: !2353, inlinedAt: !2363)
!2365 = !DILocation(line: 1018, column: 26, scope: !2353, inlinedAt: !2363)
!2366 = !DILocation(line: 1018, column: 30, scope: !2353, inlinedAt: !2363)
!2367 = !DILocation(line: 0, scope: !1286, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 1019, column: 3, scope: !2353, inlinedAt: !2363)
!2369 = !DILocation(line: 174, column: 6, scope: !1286, inlinedAt: !2368)
!2370 = !DILocation(line: 174, column: 12, scope: !1286, inlinedAt: !2368)
!2371 = !DILocation(line: 175, column: 8, scope: !1300, inlinedAt: !2368)
!2372 = !DILocation(line: 175, column: 19, scope: !1300, inlinedAt: !2368)
!2373 = !DILocation(line: 176, column: 5, scope: !1300, inlinedAt: !2368)
!2374 = !DILocation(line: 177, column: 6, scope: !1286, inlinedAt: !2368)
!2375 = !DILocation(line: 177, column: 17, scope: !1286, inlinedAt: !2368)
!2376 = !DILocation(line: 178, column: 6, scope: !1286, inlinedAt: !2368)
!2377 = !DILocation(line: 178, column: 18, scope: !1286, inlinedAt: !2368)
!2378 = !DILocation(line: 1020, column: 10, scope: !2353, inlinedAt: !2363)
!2379 = !DILocation(line: 1021, column: 1, scope: !2353, inlinedAt: !2363)
!2380 = !DILocation(line: 1009, column: 3, scope: !2343)
!2381 = !DILocation(line: 0, scope: !2353)
!2382 = !DILocation(line: 1018, column: 3, scope: !2353)
!2383 = !DILocation(line: 1018, column: 26, scope: !2353)
!2384 = !DILocation(line: 1018, column: 30, scope: !2353)
!2385 = !DILocation(line: 0, scope: !1286, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 1019, column: 3, scope: !2353)
!2387 = !DILocation(line: 174, column: 6, scope: !1286, inlinedAt: !2386)
!2388 = !DILocation(line: 174, column: 12, scope: !1286, inlinedAt: !2386)
!2389 = !DILocation(line: 175, column: 8, scope: !1300, inlinedAt: !2386)
!2390 = !DILocation(line: 175, column: 19, scope: !1300, inlinedAt: !2386)
!2391 = !DILocation(line: 176, column: 5, scope: !1300, inlinedAt: !2386)
!2392 = !DILocation(line: 177, column: 6, scope: !1286, inlinedAt: !2386)
!2393 = !DILocation(line: 177, column: 17, scope: !1286, inlinedAt: !2386)
!2394 = !DILocation(line: 178, column: 6, scope: !1286, inlinedAt: !2386)
!2395 = !DILocation(line: 178, column: 18, scope: !1286, inlinedAt: !2386)
!2396 = !DILocation(line: 1020, column: 10, scope: !2353)
!2397 = !DILocation(line: 1021, column: 1, scope: !2353)
!2398 = !DILocation(line: 1020, column: 3, scope: !2353)
!2399 = distinct !DISubprogram(name: "quotearg_custom", scope: !283, file: !283, line: 1024, type: !2400, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!27, !35, !35, !35}
!2402 = !{!2403, !2404, !2405}
!2403 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2399, file: !283, line: 1024, type: !35)
!2404 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2399, file: !283, line: 1024, type: !35)
!2405 = !DILocalVariable(name: "arg", arg: 3, scope: !2399, file: !283, line: 1025, type: !35)
!2406 = !DILocation(line: 0, scope: !2399)
!2407 = !DILocation(line: 0, scope: !2343, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 1027, column: 10, scope: !2399)
!2409 = !DILocation(line: 0, scope: !2353, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1009, column: 10, scope: !2343, inlinedAt: !2408)
!2411 = !DILocation(line: 1018, column: 3, scope: !2353, inlinedAt: !2410)
!2412 = !DILocation(line: 1018, column: 26, scope: !2353, inlinedAt: !2410)
!2413 = !DILocation(line: 1018, column: 30, scope: !2353, inlinedAt: !2410)
!2414 = !DILocation(line: 0, scope: !1286, inlinedAt: !2415)
!2415 = distinct !DILocation(line: 1019, column: 3, scope: !2353, inlinedAt: !2410)
!2416 = !DILocation(line: 174, column: 6, scope: !1286, inlinedAt: !2415)
!2417 = !DILocation(line: 174, column: 12, scope: !1286, inlinedAt: !2415)
!2418 = !DILocation(line: 175, column: 8, scope: !1300, inlinedAt: !2415)
!2419 = !DILocation(line: 175, column: 19, scope: !1300, inlinedAt: !2415)
!2420 = !DILocation(line: 176, column: 5, scope: !1300, inlinedAt: !2415)
!2421 = !DILocation(line: 177, column: 6, scope: !1286, inlinedAt: !2415)
!2422 = !DILocation(line: 177, column: 17, scope: !1286, inlinedAt: !2415)
!2423 = !DILocation(line: 178, column: 6, scope: !1286, inlinedAt: !2415)
!2424 = !DILocation(line: 178, column: 18, scope: !1286, inlinedAt: !2415)
!2425 = !DILocation(line: 1020, column: 10, scope: !2353, inlinedAt: !2410)
!2426 = !DILocation(line: 1021, column: 1, scope: !2353, inlinedAt: !2410)
!2427 = !DILocation(line: 1027, column: 3, scope: !2399)
!2428 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !283, file: !283, line: 1031, type: !2429, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!27, !35, !35, !35, !86}
!2431 = !{!2432, !2433, !2434, !2435}
!2432 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2428, file: !283, line: 1031, type: !35)
!2433 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2428, file: !283, line: 1031, type: !35)
!2434 = !DILocalVariable(name: "arg", arg: 3, scope: !2428, file: !283, line: 1032, type: !35)
!2435 = !DILocalVariable(name: "argsize", arg: 4, scope: !2428, file: !283, line: 1032, type: !86)
!2436 = !DILocation(line: 0, scope: !2428)
!2437 = !DILocation(line: 0, scope: !2353, inlinedAt: !2438)
!2438 = distinct !DILocation(line: 1034, column: 10, scope: !2428)
!2439 = !DILocation(line: 1018, column: 3, scope: !2353, inlinedAt: !2438)
!2440 = !DILocation(line: 1018, column: 26, scope: !2353, inlinedAt: !2438)
!2441 = !DILocation(line: 1018, column: 30, scope: !2353, inlinedAt: !2438)
!2442 = !DILocation(line: 0, scope: !1286, inlinedAt: !2443)
!2443 = distinct !DILocation(line: 1019, column: 3, scope: !2353, inlinedAt: !2438)
!2444 = !DILocation(line: 174, column: 6, scope: !1286, inlinedAt: !2443)
!2445 = !DILocation(line: 174, column: 12, scope: !1286, inlinedAt: !2443)
!2446 = !DILocation(line: 175, column: 8, scope: !1300, inlinedAt: !2443)
!2447 = !DILocation(line: 175, column: 19, scope: !1300, inlinedAt: !2443)
!2448 = !DILocation(line: 176, column: 5, scope: !1300, inlinedAt: !2443)
!2449 = !DILocation(line: 177, column: 6, scope: !1286, inlinedAt: !2443)
!2450 = !DILocation(line: 177, column: 17, scope: !1286, inlinedAt: !2443)
!2451 = !DILocation(line: 178, column: 6, scope: !1286, inlinedAt: !2443)
!2452 = !DILocation(line: 178, column: 18, scope: !1286, inlinedAt: !2443)
!2453 = !DILocation(line: 1020, column: 10, scope: !2353, inlinedAt: !2438)
!2454 = !DILocation(line: 1021, column: 1, scope: !2353, inlinedAt: !2438)
!2455 = !DILocation(line: 1034, column: 3, scope: !2428)
!2456 = distinct !DISubprogram(name: "quote_n_mem", scope: !283, file: !283, line: 1049, type: !2457, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!35, !25, !35, !86}
!2459 = !{!2460, !2461, !2462}
!2460 = !DILocalVariable(name: "n", arg: 1, scope: !2456, file: !283, line: 1049, type: !25)
!2461 = !DILocalVariable(name: "arg", arg: 2, scope: !2456, file: !283, line: 1049, type: !35)
!2462 = !DILocalVariable(name: "argsize", arg: 3, scope: !2456, file: !283, line: 1049, type: !86)
!2463 = !DILocation(line: 0, scope: !2456)
!2464 = !DILocation(line: 1051, column: 10, scope: !2456)
!2465 = !DILocation(line: 1051, column: 3, scope: !2456)
!2466 = distinct !DISubprogram(name: "quote_mem", scope: !283, file: !283, line: 1055, type: !2467, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!35, !35, !86}
!2469 = !{!2470, !2471}
!2470 = !DILocalVariable(name: "arg", arg: 1, scope: !2466, file: !283, line: 1055, type: !35)
!2471 = !DILocalVariable(name: "argsize", arg: 2, scope: !2466, file: !283, line: 1055, type: !86)
!2472 = !DILocation(line: 0, scope: !2466)
!2473 = !DILocation(line: 0, scope: !2456, inlinedAt: !2474)
!2474 = distinct !DILocation(line: 1057, column: 10, scope: !2466)
!2475 = !DILocation(line: 1051, column: 10, scope: !2456, inlinedAt: !2474)
!2476 = !DILocation(line: 1057, column: 3, scope: !2466)
!2477 = distinct !DISubprogram(name: "quote_n", scope: !283, file: !283, line: 1061, type: !2478, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2480)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!35, !25, !35}
!2480 = !{!2481, !2482}
!2481 = !DILocalVariable(name: "n", arg: 1, scope: !2477, file: !283, line: 1061, type: !25)
!2482 = !DILocalVariable(name: "arg", arg: 2, scope: !2477, file: !283, line: 1061, type: !35)
!2483 = !DILocation(line: 0, scope: !2477)
!2484 = !DILocation(line: 0, scope: !2456, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 1063, column: 10, scope: !2477)
!2486 = !DILocation(line: 1051, column: 10, scope: !2456, inlinedAt: !2485)
!2487 = !DILocation(line: 1063, column: 3, scope: !2477)
!2488 = distinct !DISubprogram(name: "quote", scope: !283, file: !283, line: 1067, type: !2489, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !282, retainedNodes: !2491)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!35, !35}
!2491 = !{!2492}
!2492 = !DILocalVariable(name: "arg", arg: 1, scope: !2488, file: !283, line: 1067, type: !35)
!2493 = !DILocation(line: 0, scope: !2488)
!2494 = !DILocation(line: 0, scope: !2477, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 1069, column: 10, scope: !2488)
!2496 = !DILocation(line: 0, scope: !2456, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1063, column: 10, scope: !2477, inlinedAt: !2495)
!2498 = !DILocation(line: 1051, column: 10, scope: !2456, inlinedAt: !2497)
!2499 = !DILocation(line: 1069, column: 3, scope: !2488)
!2500 = distinct !DISubprogram(name: "version_etc_arn", scope: !402, file: !402, line: 61, type: !2501, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !2538)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{null, !2503, !35, !35, !35, !2537, !86}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !2506)
!2506 = !{!2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2505, file: !119, line: 51, baseType: !25, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2505, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2505, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2505, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2505, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2505, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2505, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2505, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2505, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2505, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2505, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2505, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2505, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2505, file: !119, line: 70, baseType: !2521, size: 64, offset: 832)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2505, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2505, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2505, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2505, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2505, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2505, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2505, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2505, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2505, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2505, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2505, file: !119, line: 93, baseType: !2521, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2505, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2505, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2505, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2505, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2544}
!2539 = !DILocalVariable(name: "stream", arg: 1, scope: !2500, file: !402, line: 61, type: !2503)
!2540 = !DILocalVariable(name: "command_name", arg: 2, scope: !2500, file: !402, line: 62, type: !35)
!2541 = !DILocalVariable(name: "package", arg: 3, scope: !2500, file: !402, line: 62, type: !35)
!2542 = !DILocalVariable(name: "version", arg: 4, scope: !2500, file: !402, line: 63, type: !35)
!2543 = !DILocalVariable(name: "authors", arg: 5, scope: !2500, file: !402, line: 64, type: !2537)
!2544 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2500, file: !402, line: 64, type: !86)
!2545 = !DILocation(line: 0, scope: !2500)
!2546 = !DILocation(line: 66, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2500, file: !402, line: 66, column: 7)
!2548 = !DILocation(line: 66, column: 7, scope: !2500)
!2549 = !DILocation(line: 67, column: 5, scope: !2547)
!2550 = !DILocation(line: 69, column: 5, scope: !2547)
!2551 = !DILocation(line: 83, column: 3, scope: !2500)
!2552 = !DILocation(line: 85, column: 3, scope: !2500)
!2553 = !DILocation(line: 88, column: 3, scope: !2500)
!2554 = !DILocation(line: 95, column: 3, scope: !2500)
!2555 = !DILocation(line: 97, column: 3, scope: !2500)
!2556 = !DILocation(line: 105, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2500, file: !402, line: 98, column: 5)
!2558 = !DILocation(line: 106, column: 7, scope: !2557)
!2559 = !DILocation(line: 109, column: 7, scope: !2557)
!2560 = !DILocation(line: 110, column: 7, scope: !2557)
!2561 = !DILocation(line: 113, column: 7, scope: !2557)
!2562 = !DILocation(line: 115, column: 7, scope: !2557)
!2563 = !DILocation(line: 120, column: 7, scope: !2557)
!2564 = !DILocation(line: 122, column: 7, scope: !2557)
!2565 = !DILocation(line: 127, column: 7, scope: !2557)
!2566 = !DILocation(line: 129, column: 7, scope: !2557)
!2567 = !DILocation(line: 134, column: 7, scope: !2557)
!2568 = !DILocation(line: 137, column: 7, scope: !2557)
!2569 = !DILocation(line: 142, column: 7, scope: !2557)
!2570 = !DILocation(line: 145, column: 7, scope: !2557)
!2571 = !DILocation(line: 150, column: 7, scope: !2557)
!2572 = !DILocation(line: 154, column: 7, scope: !2557)
!2573 = !DILocation(line: 159, column: 7, scope: !2557)
!2574 = !DILocation(line: 163, column: 7, scope: !2557)
!2575 = !DILocation(line: 170, column: 7, scope: !2557)
!2576 = !DILocation(line: 174, column: 7, scope: !2557)
!2577 = !DILocation(line: 176, column: 1, scope: !2500)
!2578 = distinct !DISubprogram(name: "version_etc_ar", scope: !402, file: !402, line: 183, type: !2579, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !2503, !35, !35, !35, !2537}
!2581 = !{!2582, !2583, !2584, !2585, !2586, !2587}
!2582 = !DILocalVariable(name: "stream", arg: 1, scope: !2578, file: !402, line: 183, type: !2503)
!2583 = !DILocalVariable(name: "command_name", arg: 2, scope: !2578, file: !402, line: 184, type: !35)
!2584 = !DILocalVariable(name: "package", arg: 3, scope: !2578, file: !402, line: 184, type: !35)
!2585 = !DILocalVariable(name: "version", arg: 4, scope: !2578, file: !402, line: 185, type: !35)
!2586 = !DILocalVariable(name: "authors", arg: 5, scope: !2578, file: !402, line: 185, type: !2537)
!2587 = !DILocalVariable(name: "n_authors", scope: !2578, file: !402, line: 187, type: !86)
!2588 = !DILocation(line: 0, scope: !2578)
!2589 = !DILocation(line: 189, column: 8, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2578, file: !402, line: 189, column: 3)
!2591 = !DILocation(line: 0, scope: !2590)
!2592 = !DILocation(line: 189, column: 23, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2590, file: !402, line: 189, column: 3)
!2594 = !DILocation(line: 189, column: 3, scope: !2590)
!2595 = !DILocation(line: 189, column: 52, scope: !2593)
!2596 = distinct !{!2596, !2594, !2597, !552}
!2597 = !DILocation(line: 190, column: 5, scope: !2590)
!2598 = !DILocation(line: 191, column: 3, scope: !2578)
!2599 = !DILocation(line: 192, column: 1, scope: !2578)
!2600 = distinct !DISubprogram(name: "version_etc_va", scope: !402, file: !402, line: 199, type: !2601, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !2614)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{null, !2503, !35, !35, !35, !2603}
!2603 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !211, line: 52, baseType: !2604)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !213, line: 32, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2606, baseType: !2607)
!2606 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !217, size: 256, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2612, !2613}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2607, file: !2606, line: 192, baseType: !84, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2607, file: !2606, line: 192, baseType: !84, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2607, file: !2606, line: 192, baseType: !84, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2607, file: !2606, line: 192, baseType: !25, size: 32, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2607, file: !2606, line: 192, baseType: !25, size: 32, offset: 224)
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2615 = !DILocalVariable(name: "stream", arg: 1, scope: !2600, file: !402, line: 199, type: !2503)
!2616 = !DILocalVariable(name: "command_name", arg: 2, scope: !2600, file: !402, line: 200, type: !35)
!2617 = !DILocalVariable(name: "package", arg: 3, scope: !2600, file: !402, line: 200, type: !35)
!2618 = !DILocalVariable(name: "version", arg: 4, scope: !2600, file: !402, line: 201, type: !35)
!2619 = !DILocalVariable(name: "authors", arg: 5, scope: !2600, file: !402, line: 201, type: !2603)
!2620 = !DILocalVariable(name: "n_authors", scope: !2600, file: !402, line: 203, type: !86)
!2621 = !DILocalVariable(name: "authtab", scope: !2600, file: !402, line: 204, type: !2622)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !310)
!2623 = !DILocation(line: 0, scope: !2600)
!2624 = !DILocation(line: 201, column: 46, scope: !2600)
!2625 = !DILocation(line: 204, column: 3, scope: !2600)
!2626 = !DILocation(line: 204, column: 15, scope: !2600)
!2627 = !DILocation(line: 208, column: 35, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !402, line: 206, column: 3)
!2629 = distinct !DILexicalBlock(scope: !2600, file: !402, line: 206, column: 3)
!2630 = !DILocation(line: 208, column: 14, scope: !2628)
!2631 = !DILocation(line: 208, column: 33, scope: !2628)
!2632 = !DILocation(line: 208, column: 67, scope: !2628)
!2633 = !DILocation(line: 206, column: 3, scope: !2629)
!2634 = !DILocation(line: 0, scope: !2629)
!2635 = !DILocation(line: 211, column: 3, scope: !2600)
!2636 = !DILocation(line: 213, column: 1, scope: !2600)
!2637 = distinct !DISubprogram(name: "version_etc", scope: !402, file: !402, line: 230, type: !2638, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !2640)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{null, !2503, !35, !35, !35, null}
!2640 = !{!2641, !2642, !2643, !2644, !2645}
!2641 = !DILocalVariable(name: "stream", arg: 1, scope: !2637, file: !402, line: 230, type: !2503)
!2642 = !DILocalVariable(name: "command_name", arg: 2, scope: !2637, file: !402, line: 231, type: !35)
!2643 = !DILocalVariable(name: "package", arg: 3, scope: !2637, file: !402, line: 231, type: !35)
!2644 = !DILocalVariable(name: "version", arg: 4, scope: !2637, file: !402, line: 232, type: !35)
!2645 = !DILocalVariable(name: "authors", scope: !2637, file: !402, line: 234, type: !2603)
!2646 = !DILocation(line: 0, scope: !2637)
!2647 = !DILocation(line: 234, column: 3, scope: !2637)
!2648 = !DILocation(line: 234, column: 11, scope: !2637)
!2649 = !DILocation(line: 235, column: 3, scope: !2637)
!2650 = !DILocation(line: 236, column: 3, scope: !2637)
!2651 = !DILocation(line: 237, column: 3, scope: !2637)
!2652 = !DILocation(line: 238, column: 1, scope: !2637)
!2653 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !402, file: !402, line: 241, type: !238, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !497)
!2654 = !DILocation(line: 243, column: 3, scope: !2653)
!2655 = !DILocation(line: 248, column: 3, scope: !2653)
!2656 = !DILocation(line: 254, column: 3, scope: !2653)
!2657 = !DILocation(line: 259, column: 3, scope: !2653)
!2658 = !DILocation(line: 261, column: 1, scope: !2653)
!2659 = distinct !DISubprogram(name: "xnrealloc", scope: !2660, file: !2660, line: 147, type: !2661, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2663)
!2660 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!84, !84, !86, !86}
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "p", arg: 1, scope: !2659, file: !2660, line: 147, type: !84)
!2665 = !DILocalVariable(name: "n", arg: 2, scope: !2659, file: !2660, line: 147, type: !86)
!2666 = !DILocalVariable(name: "s", arg: 3, scope: !2659, file: !2660, line: 147, type: !86)
!2667 = !DILocation(line: 0, scope: !2659)
!2668 = !DILocalVariable(name: "p", arg: 1, scope: !2669, file: !409, line: 83, type: !84)
!2669 = distinct !DISubprogram(name: "xreallocarray", scope: !409, file: !409, line: 83, type: !2661, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2670)
!2670 = !{!2668, !2671, !2672}
!2671 = !DILocalVariable(name: "n", arg: 2, scope: !2669, file: !409, line: 83, type: !86)
!2672 = !DILocalVariable(name: "s", arg: 3, scope: !2669, file: !409, line: 83, type: !86)
!2673 = !DILocation(line: 0, scope: !2669, inlinedAt: !2674)
!2674 = distinct !DILocation(line: 149, column: 10, scope: !2659)
!2675 = !DILocation(line: 85, column: 25, scope: !2669, inlinedAt: !2674)
!2676 = !DILocalVariable(name: "p", arg: 1, scope: !2677, file: !409, line: 37, type: !84)
!2677 = distinct !DISubprogram(name: "check_nonnull", scope: !409, file: !409, line: 37, type: !2678, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2680)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!84, !84}
!2680 = !{!2676}
!2681 = !DILocation(line: 0, scope: !2677, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 85, column: 10, scope: !2669, inlinedAt: !2674)
!2683 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2682)
!2684 = distinct !DILexicalBlock(scope: !2677, file: !409, line: 39, column: 7)
!2685 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2682)
!2686 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2682)
!2687 = !DILocation(line: 149, column: 3, scope: !2659)
!2688 = !DILocation(line: 0, scope: !2669)
!2689 = !DILocation(line: 85, column: 25, scope: !2669)
!2690 = !DILocation(line: 0, scope: !2677, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 85, column: 10, scope: !2669)
!2692 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2691)
!2693 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2691)
!2694 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2691)
!2695 = !DILocation(line: 85, column: 3, scope: !2669)
!2696 = distinct !DISubprogram(name: "xmalloc", scope: !409, file: !409, line: 47, type: !2697, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2699)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!84, !86}
!2699 = !{!2700}
!2700 = !DILocalVariable(name: "s", arg: 1, scope: !2696, file: !409, line: 47, type: !86)
!2701 = !DILocation(line: 0, scope: !2696)
!2702 = !DILocation(line: 49, column: 25, scope: !2696)
!2703 = !DILocation(line: 0, scope: !2677, inlinedAt: !2704)
!2704 = distinct !DILocation(line: 49, column: 10, scope: !2696)
!2705 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2704)
!2706 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2704)
!2707 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2704)
!2708 = !DILocation(line: 49, column: 3, scope: !2696)
!2709 = distinct !DISubprogram(name: "ximalloc", scope: !409, file: !409, line: 53, type: !2710, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!84, !428}
!2712 = !{!2713}
!2713 = !DILocalVariable(name: "s", arg: 1, scope: !2709, file: !409, line: 53, type: !428)
!2714 = !DILocation(line: 0, scope: !2709)
!2715 = !DILocalVariable(name: "s", arg: 1, scope: !2716, file: !2717, line: 55, type: !428)
!2716 = distinct !DISubprogram(name: "imalloc", scope: !2717, file: !2717, line: 55, type: !2710, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2718)
!2717 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2718 = !{!2715}
!2719 = !DILocation(line: 0, scope: !2716, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 55, column: 25, scope: !2709)
!2721 = !DILocation(line: 57, column: 26, scope: !2716, inlinedAt: !2720)
!2722 = !DILocation(line: 0, scope: !2677, inlinedAt: !2723)
!2723 = distinct !DILocation(line: 55, column: 10, scope: !2709)
!2724 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2723)
!2725 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2723)
!2726 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2723)
!2727 = !DILocation(line: 55, column: 3, scope: !2709)
!2728 = distinct !DISubprogram(name: "xcharalloc", scope: !409, file: !409, line: 59, type: !2729, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2731)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!27, !86}
!2731 = !{!2732}
!2732 = !DILocalVariable(name: "n", arg: 1, scope: !2728, file: !409, line: 59, type: !86)
!2733 = !DILocation(line: 0, scope: !2728)
!2734 = !DILocation(line: 0, scope: !2696, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 61, column: 10, scope: !2728)
!2736 = !DILocation(line: 49, column: 25, scope: !2696, inlinedAt: !2735)
!2737 = !DILocation(line: 0, scope: !2677, inlinedAt: !2738)
!2738 = distinct !DILocation(line: 49, column: 10, scope: !2696, inlinedAt: !2735)
!2739 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2738)
!2740 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2738)
!2741 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2738)
!2742 = !DILocation(line: 61, column: 3, scope: !2728)
!2743 = distinct !DISubprogram(name: "xrealloc", scope: !409, file: !409, line: 68, type: !2744, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2746)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!84, !84, !86}
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "p", arg: 1, scope: !2743, file: !409, line: 68, type: !84)
!2748 = !DILocalVariable(name: "s", arg: 2, scope: !2743, file: !409, line: 68, type: !86)
!2749 = !DILocation(line: 0, scope: !2743)
!2750 = !DILocalVariable(name: "ptr", arg: 1, scope: !2751, file: !2752, line: 2057, type: !84)
!2751 = distinct !DISubprogram(name: "rpl_realloc", scope: !2752, file: !2752, line: 2057, type: !2744, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2753)
!2752 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2753 = !{!2750, !2754}
!2754 = !DILocalVariable(name: "size", arg: 2, scope: !2751, file: !2752, line: 2057, type: !86)
!2755 = !DILocation(line: 0, scope: !2751, inlinedAt: !2756)
!2756 = distinct !DILocation(line: 70, column: 25, scope: !2743)
!2757 = !DILocation(line: 2059, column: 24, scope: !2751, inlinedAt: !2756)
!2758 = !DILocation(line: 2059, column: 10, scope: !2751, inlinedAt: !2756)
!2759 = !DILocation(line: 0, scope: !2677, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 70, column: 10, scope: !2743)
!2761 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2760)
!2762 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2760)
!2763 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2760)
!2764 = !DILocation(line: 70, column: 3, scope: !2743)
!2765 = distinct !DISubprogram(name: "xirealloc", scope: !409, file: !409, line: 74, type: !2766, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!84, !84, !428}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "p", arg: 1, scope: !2765, file: !409, line: 74, type: !84)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !409, line: 74, type: !428)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocalVariable(name: "p", arg: 1, scope: !2773, file: !2717, line: 66, type: !84)
!2773 = distinct !DISubprogram(name: "irealloc", scope: !2717, file: !2717, line: 66, type: !2766, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2774)
!2774 = !{!2772, !2775}
!2775 = !DILocalVariable(name: "s", arg: 2, scope: !2773, file: !2717, line: 66, type: !428)
!2776 = !DILocation(line: 0, scope: !2773, inlinedAt: !2777)
!2777 = distinct !DILocation(line: 76, column: 25, scope: !2765)
!2778 = !DILocation(line: 0, scope: !2751, inlinedAt: !2779)
!2779 = distinct !DILocation(line: 68, column: 26, scope: !2773, inlinedAt: !2777)
!2780 = !DILocation(line: 2059, column: 24, scope: !2751, inlinedAt: !2779)
!2781 = !DILocation(line: 2059, column: 10, scope: !2751, inlinedAt: !2779)
!2782 = !DILocation(line: 0, scope: !2677, inlinedAt: !2783)
!2783 = distinct !DILocation(line: 76, column: 10, scope: !2765)
!2784 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2783)
!2785 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2783)
!2786 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2783)
!2787 = !DILocation(line: 76, column: 3, scope: !2765)
!2788 = distinct !DISubprogram(name: "xireallocarray", scope: !409, file: !409, line: 89, type: !2789, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2791)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!84, !84, !428, !428}
!2791 = !{!2792, !2793, !2794}
!2792 = !DILocalVariable(name: "p", arg: 1, scope: !2788, file: !409, line: 89, type: !84)
!2793 = !DILocalVariable(name: "n", arg: 2, scope: !2788, file: !409, line: 89, type: !428)
!2794 = !DILocalVariable(name: "s", arg: 3, scope: !2788, file: !409, line: 89, type: !428)
!2795 = !DILocation(line: 0, scope: !2788)
!2796 = !DILocalVariable(name: "p", arg: 1, scope: !2797, file: !2717, line: 98, type: !84)
!2797 = distinct !DISubprogram(name: "ireallocarray", scope: !2717, file: !2717, line: 98, type: !2789, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2798)
!2798 = !{!2796, !2799, !2800}
!2799 = !DILocalVariable(name: "n", arg: 2, scope: !2797, file: !2717, line: 98, type: !428)
!2800 = !DILocalVariable(name: "s", arg: 3, scope: !2797, file: !2717, line: 98, type: !428)
!2801 = !DILocation(line: 0, scope: !2797, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 91, column: 25, scope: !2788)
!2803 = !DILocation(line: 101, column: 13, scope: !2797, inlinedAt: !2802)
!2804 = !DILocation(line: 0, scope: !2677, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 91, column: 10, scope: !2788)
!2806 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2805)
!2807 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2805)
!2808 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2805)
!2809 = !DILocation(line: 91, column: 3, scope: !2788)
!2810 = distinct !DISubprogram(name: "xnmalloc", scope: !409, file: !409, line: 98, type: !2811, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!84, !86, !86}
!2813 = !{!2814, !2815}
!2814 = !DILocalVariable(name: "n", arg: 1, scope: !2810, file: !409, line: 98, type: !86)
!2815 = !DILocalVariable(name: "s", arg: 2, scope: !2810, file: !409, line: 98, type: !86)
!2816 = !DILocation(line: 0, scope: !2810)
!2817 = !DILocation(line: 0, scope: !2669, inlinedAt: !2818)
!2818 = distinct !DILocation(line: 100, column: 10, scope: !2810)
!2819 = !DILocation(line: 85, column: 25, scope: !2669, inlinedAt: !2818)
!2820 = !DILocation(line: 0, scope: !2677, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 85, column: 10, scope: !2669, inlinedAt: !2818)
!2822 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2821)
!2823 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2821)
!2824 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2821)
!2825 = !DILocation(line: 100, column: 3, scope: !2810)
!2826 = distinct !DISubprogram(name: "xinmalloc", scope: !409, file: !409, line: 104, type: !2827, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!84, !428, !428}
!2829 = !{!2830, !2831}
!2830 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !409, line: 104, type: !428)
!2831 = !DILocalVariable(name: "s", arg: 2, scope: !2826, file: !409, line: 104, type: !428)
!2832 = !DILocation(line: 0, scope: !2826)
!2833 = !DILocation(line: 0, scope: !2788, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 106, column: 10, scope: !2826)
!2835 = !DILocation(line: 0, scope: !2797, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 91, column: 25, scope: !2788, inlinedAt: !2834)
!2837 = !DILocation(line: 101, column: 13, scope: !2797, inlinedAt: !2836)
!2838 = !DILocation(line: 0, scope: !2677, inlinedAt: !2839)
!2839 = distinct !DILocation(line: 91, column: 10, scope: !2788, inlinedAt: !2834)
!2840 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2839)
!2841 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2839)
!2842 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2839)
!2843 = !DILocation(line: 106, column: 3, scope: !2826)
!2844 = distinct !DISubprogram(name: "x2realloc", scope: !409, file: !409, line: 116, type: !2845, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2847)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!84, !84, !415}
!2847 = !{!2848, !2849}
!2848 = !DILocalVariable(name: "p", arg: 1, scope: !2844, file: !409, line: 116, type: !84)
!2849 = !DILocalVariable(name: "ps", arg: 2, scope: !2844, file: !409, line: 116, type: !415)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 0, scope: !412, inlinedAt: !2852)
!2852 = distinct !DILocation(line: 118, column: 10, scope: !2844)
!2853 = !DILocation(line: 178, column: 14, scope: !412, inlinedAt: !2852)
!2854 = !DILocation(line: 180, column: 9, scope: !2855, inlinedAt: !2852)
!2855 = distinct !DILexicalBlock(scope: !412, file: !409, line: 180, column: 7)
!2856 = !DILocation(line: 180, column: 7, scope: !412, inlinedAt: !2852)
!2857 = !DILocation(line: 182, column: 13, scope: !2858, inlinedAt: !2852)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !409, line: 182, column: 11)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !409, line: 181, column: 5)
!2860 = !DILocation(line: 182, column: 11, scope: !2859, inlinedAt: !2852)
!2861 = !DILocation(line: 197, column: 11, scope: !2862, inlinedAt: !2852)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !409, line: 197, column: 11)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !409, line: 195, column: 5)
!2864 = !DILocation(line: 197, column: 11, scope: !2863, inlinedAt: !2852)
!2865 = !DILocation(line: 198, column: 9, scope: !2862, inlinedAt: !2852)
!2866 = !DILocation(line: 0, scope: !2669, inlinedAt: !2867)
!2867 = distinct !DILocation(line: 201, column: 7, scope: !412, inlinedAt: !2852)
!2868 = !DILocation(line: 85, column: 25, scope: !2669, inlinedAt: !2867)
!2869 = !DILocation(line: 0, scope: !2677, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 85, column: 10, scope: !2669, inlinedAt: !2867)
!2871 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2870)
!2872 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2870)
!2873 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2870)
!2874 = !DILocation(line: 202, column: 7, scope: !412, inlinedAt: !2852)
!2875 = !DILocation(line: 118, column: 3, scope: !2844)
!2876 = !DILocation(line: 0, scope: !412)
!2877 = !DILocation(line: 178, column: 14, scope: !412)
!2878 = !DILocation(line: 180, column: 9, scope: !2855)
!2879 = !DILocation(line: 180, column: 7, scope: !412)
!2880 = !DILocation(line: 182, column: 13, scope: !2858)
!2881 = !DILocation(line: 182, column: 11, scope: !2859)
!2882 = !DILocation(line: 190, column: 30, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2858, file: !409, line: 183, column: 9)
!2884 = !DILocation(line: 191, column: 16, scope: !2883)
!2885 = !DILocation(line: 191, column: 13, scope: !2883)
!2886 = !DILocation(line: 192, column: 9, scope: !2883)
!2887 = !DILocation(line: 197, column: 11, scope: !2862)
!2888 = !DILocation(line: 197, column: 11, scope: !2863)
!2889 = !DILocation(line: 198, column: 9, scope: !2862)
!2890 = !DILocation(line: 0, scope: !2669, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 201, column: 7, scope: !412)
!2892 = !DILocation(line: 85, column: 25, scope: !2669, inlinedAt: !2891)
!2893 = !DILocation(line: 0, scope: !2677, inlinedAt: !2894)
!2894 = distinct !DILocation(line: 85, column: 10, scope: !2669, inlinedAt: !2891)
!2895 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2894)
!2896 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2894)
!2897 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2894)
!2898 = !DILocation(line: 202, column: 7, scope: !412)
!2899 = !DILocation(line: 203, column: 3, scope: !412)
!2900 = !DILocation(line: 0, scope: !424)
!2901 = !DILocation(line: 230, column: 14, scope: !424)
!2902 = !DILocation(line: 238, column: 7, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !424, file: !409, line: 238, column: 7)
!2904 = !DILocation(line: 238, column: 7, scope: !424)
!2905 = !DILocation(line: 240, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !424, file: !409, line: 240, column: 7)
!2907 = !DILocation(line: 240, column: 18, scope: !2906)
!2908 = !DILocation(line: 253, column: 8, scope: !424)
!2909 = !DILocation(line: 258, column: 27, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !409, line: 257, column: 5)
!2911 = distinct !DILexicalBlock(scope: !424, file: !409, line: 256, column: 7)
!2912 = !DILocation(line: 259, column: 32, scope: !2910)
!2913 = !DILocation(line: 260, column: 5, scope: !2910)
!2914 = !DILocation(line: 262, column: 9, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !424, file: !409, line: 262, column: 7)
!2916 = !DILocation(line: 262, column: 7, scope: !424)
!2917 = !DILocation(line: 263, column: 9, scope: !2915)
!2918 = !DILocation(line: 263, column: 5, scope: !2915)
!2919 = !DILocation(line: 264, column: 9, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !424, file: !409, line: 264, column: 7)
!2921 = !DILocation(line: 264, column: 14, scope: !2920)
!2922 = !DILocation(line: 265, column: 7, scope: !2920)
!2923 = !DILocation(line: 265, column: 11, scope: !2920)
!2924 = !DILocation(line: 266, column: 11, scope: !2920)
!2925 = !DILocation(line: 266, column: 26, scope: !2920)
!2926 = !DILocation(line: 267, column: 14, scope: !2920)
!2927 = !DILocation(line: 264, column: 7, scope: !424)
!2928 = !DILocation(line: 268, column: 5, scope: !2920)
!2929 = !DILocation(line: 0, scope: !2743, inlinedAt: !2930)
!2930 = distinct !DILocation(line: 269, column: 8, scope: !424)
!2931 = !DILocation(line: 0, scope: !2751, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 70, column: 25, scope: !2743, inlinedAt: !2930)
!2933 = !DILocation(line: 2059, column: 24, scope: !2751, inlinedAt: !2932)
!2934 = !DILocation(line: 2059, column: 10, scope: !2751, inlinedAt: !2932)
!2935 = !DILocation(line: 0, scope: !2677, inlinedAt: !2936)
!2936 = distinct !DILocation(line: 70, column: 10, scope: !2743, inlinedAt: !2930)
!2937 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2936)
!2938 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2936)
!2939 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2936)
!2940 = !DILocation(line: 270, column: 7, scope: !424)
!2941 = !DILocation(line: 271, column: 3, scope: !424)
!2942 = distinct !DISubprogram(name: "xzalloc", scope: !409, file: !409, line: 279, type: !2697, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "s", arg: 1, scope: !2942, file: !409, line: 279, type: !86)
!2945 = !DILocation(line: 0, scope: !2942)
!2946 = !DILocalVariable(name: "n", arg: 1, scope: !2947, file: !409, line: 294, type: !86)
!2947 = distinct !DISubprogram(name: "xcalloc", scope: !409, file: !409, line: 294, type: !2811, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2948)
!2948 = !{!2946, !2949}
!2949 = !DILocalVariable(name: "s", arg: 2, scope: !2947, file: !409, line: 294, type: !86)
!2950 = !DILocation(line: 0, scope: !2947, inlinedAt: !2951)
!2951 = distinct !DILocation(line: 281, column: 10, scope: !2942)
!2952 = !DILocation(line: 296, column: 25, scope: !2947, inlinedAt: !2951)
!2953 = !DILocation(line: 0, scope: !2677, inlinedAt: !2954)
!2954 = distinct !DILocation(line: 296, column: 10, scope: !2947, inlinedAt: !2951)
!2955 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2954)
!2956 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2954)
!2957 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2954)
!2958 = !DILocation(line: 281, column: 3, scope: !2942)
!2959 = !DILocation(line: 0, scope: !2947)
!2960 = !DILocation(line: 296, column: 25, scope: !2947)
!2961 = !DILocation(line: 0, scope: !2677, inlinedAt: !2962)
!2962 = distinct !DILocation(line: 296, column: 10, scope: !2947)
!2963 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2962)
!2964 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2962)
!2965 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2962)
!2966 = !DILocation(line: 296, column: 3, scope: !2947)
!2967 = distinct !DISubprogram(name: "xizalloc", scope: !409, file: !409, line: 285, type: !2710, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2968)
!2968 = !{!2969}
!2969 = !DILocalVariable(name: "s", arg: 1, scope: !2967, file: !409, line: 285, type: !428)
!2970 = !DILocation(line: 0, scope: !2967)
!2971 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !409, line: 300, type: !428)
!2972 = distinct !DISubprogram(name: "xicalloc", scope: !409, file: !409, line: 300, type: !2827, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2973)
!2973 = !{!2971, !2974}
!2974 = !DILocalVariable(name: "s", arg: 2, scope: !2972, file: !409, line: 300, type: !428)
!2975 = !DILocation(line: 0, scope: !2972, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 287, column: 10, scope: !2967)
!2977 = !DILocalVariable(name: "n", arg: 1, scope: !2978, file: !2717, line: 77, type: !428)
!2978 = distinct !DISubprogram(name: "icalloc", scope: !2717, file: !2717, line: 77, type: !2827, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !2979)
!2979 = !{!2977, !2980}
!2980 = !DILocalVariable(name: "s", arg: 2, scope: !2978, file: !2717, line: 77, type: !428)
!2981 = !DILocation(line: 0, scope: !2978, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 302, column: 25, scope: !2972, inlinedAt: !2976)
!2983 = !DILocation(line: 91, column: 10, scope: !2978, inlinedAt: !2982)
!2984 = !DILocation(line: 0, scope: !2677, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 302, column: 10, scope: !2972, inlinedAt: !2976)
!2986 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2985)
!2987 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2985)
!2988 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2985)
!2989 = !DILocation(line: 287, column: 3, scope: !2967)
!2990 = !DILocation(line: 0, scope: !2972)
!2991 = !DILocation(line: 0, scope: !2978, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 302, column: 25, scope: !2972)
!2993 = !DILocation(line: 91, column: 10, scope: !2978, inlinedAt: !2992)
!2994 = !DILocation(line: 0, scope: !2677, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 302, column: 10, scope: !2972)
!2996 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !2995)
!2997 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !2995)
!2998 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !2995)
!2999 = !DILocation(line: 302, column: 3, scope: !2972)
!3000 = distinct !DISubprogram(name: "xmemdup", scope: !409, file: !409, line: 310, type: !3001, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!84, !703, !86}
!3003 = !{!3004, !3005}
!3004 = !DILocalVariable(name: "p", arg: 1, scope: !3000, file: !409, line: 310, type: !703)
!3005 = !DILocalVariable(name: "s", arg: 2, scope: !3000, file: !409, line: 310, type: !86)
!3006 = !DILocation(line: 0, scope: !3000)
!3007 = !DILocation(line: 0, scope: !2696, inlinedAt: !3008)
!3008 = distinct !DILocation(line: 312, column: 18, scope: !3000)
!3009 = !DILocation(line: 49, column: 25, scope: !2696, inlinedAt: !3008)
!3010 = !DILocation(line: 0, scope: !2677, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 49, column: 10, scope: !2696, inlinedAt: !3008)
!3012 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !3011)
!3013 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !3011)
!3014 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !3011)
!3015 = !DILocalVariable(name: "__dest", arg: 1, scope: !3016, file: !1188, line: 26, type: !3019)
!3016 = distinct !DISubprogram(name: "memcpy", scope: !1188, file: !1188, line: 26, type: !3017, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3020)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!84, !3019, !702, !86}
!3019 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!3020 = !{!3015, !3021, !3022}
!3021 = !DILocalVariable(name: "__src", arg: 2, scope: !3016, file: !1188, line: 26, type: !702)
!3022 = !DILocalVariable(name: "__len", arg: 3, scope: !3016, file: !1188, line: 26, type: !86)
!3023 = !DILocation(line: 0, scope: !3016, inlinedAt: !3024)
!3024 = distinct !DILocation(line: 312, column: 10, scope: !3000)
!3025 = !DILocation(line: 29, column: 10, scope: !3016, inlinedAt: !3024)
!3026 = !DILocation(line: 312, column: 3, scope: !3000)
!3027 = distinct !DISubprogram(name: "ximemdup", scope: !409, file: !409, line: 316, type: !3028, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3030)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!84, !703, !428}
!3030 = !{!3031, !3032}
!3031 = !DILocalVariable(name: "p", arg: 1, scope: !3027, file: !409, line: 316, type: !703)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3027, file: !409, line: 316, type: !428)
!3033 = !DILocation(line: 0, scope: !3027)
!3034 = !DILocation(line: 0, scope: !2709, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 318, column: 18, scope: !3027)
!3036 = !DILocation(line: 0, scope: !2716, inlinedAt: !3037)
!3037 = distinct !DILocation(line: 55, column: 25, scope: !2709, inlinedAt: !3035)
!3038 = !DILocation(line: 57, column: 26, scope: !2716, inlinedAt: !3037)
!3039 = !DILocation(line: 0, scope: !2677, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 55, column: 10, scope: !2709, inlinedAt: !3035)
!3041 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !3040)
!3042 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !3040)
!3043 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !3040)
!3044 = !DILocation(line: 0, scope: !3016, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 318, column: 10, scope: !3027)
!3046 = !DILocation(line: 29, column: 10, scope: !3016, inlinedAt: !3045)
!3047 = !DILocation(line: 318, column: 3, scope: !3027)
!3048 = distinct !DISubprogram(name: "ximemdup0", scope: !409, file: !409, line: 325, type: !3049, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3051)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!27, !703, !428}
!3051 = !{!3052, !3053, !3054}
!3052 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !409, line: 325, type: !703)
!3053 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !409, line: 325, type: !428)
!3054 = !DILocalVariable(name: "result", scope: !3048, file: !409, line: 327, type: !27)
!3055 = !DILocation(line: 0, scope: !3048)
!3056 = !DILocation(line: 327, column: 30, scope: !3048)
!3057 = !DILocation(line: 0, scope: !2709, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 327, column: 18, scope: !3048)
!3059 = !DILocation(line: 0, scope: !2716, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 55, column: 25, scope: !2709, inlinedAt: !3058)
!3061 = !DILocation(line: 57, column: 26, scope: !2716, inlinedAt: !3060)
!3062 = !DILocation(line: 0, scope: !2677, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 55, column: 10, scope: !2709, inlinedAt: !3058)
!3064 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !3063)
!3065 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !3063)
!3066 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !3063)
!3067 = !DILocation(line: 328, column: 3, scope: !3048)
!3068 = !DILocation(line: 328, column: 13, scope: !3048)
!3069 = !DILocation(line: 0, scope: !3016, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 329, column: 10, scope: !3048)
!3071 = !DILocation(line: 29, column: 10, scope: !3016, inlinedAt: !3070)
!3072 = !DILocation(line: 329, column: 3, scope: !3048)
!3073 = distinct !DISubprogram(name: "xstrdup", scope: !409, file: !409, line: 335, type: !697, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !408, retainedNodes: !3074)
!3074 = !{!3075}
!3075 = !DILocalVariable(name: "string", arg: 1, scope: !3073, file: !409, line: 335, type: !35)
!3076 = !DILocation(line: 0, scope: !3073)
!3077 = !DILocation(line: 337, column: 27, scope: !3073)
!3078 = !DILocation(line: 337, column: 43, scope: !3073)
!3079 = !DILocation(line: 0, scope: !3000, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 337, column: 10, scope: !3073)
!3081 = !DILocation(line: 0, scope: !2696, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 312, column: 18, scope: !3000, inlinedAt: !3080)
!3083 = !DILocation(line: 49, column: 25, scope: !2696, inlinedAt: !3082)
!3084 = !DILocation(line: 0, scope: !2677, inlinedAt: !3085)
!3085 = distinct !DILocation(line: 49, column: 10, scope: !2696, inlinedAt: !3082)
!3086 = !DILocation(line: 39, column: 8, scope: !2684, inlinedAt: !3085)
!3087 = !DILocation(line: 39, column: 7, scope: !2677, inlinedAt: !3085)
!3088 = !DILocation(line: 40, column: 5, scope: !2684, inlinedAt: !3085)
!3089 = !DILocation(line: 0, scope: !3016, inlinedAt: !3090)
!3090 = distinct !DILocation(line: 312, column: 10, scope: !3000, inlinedAt: !3080)
!3091 = !DILocation(line: 29, column: 10, scope: !3016, inlinedAt: !3090)
!3092 = !DILocation(line: 337, column: 3, scope: !3073)
!3093 = distinct !DISubprogram(name: "xalloc_die", scope: !443, file: !443, line: 32, type: !238, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !3094)
!3094 = !{!3095}
!3095 = !DILocalVariable(name: "__errstatus", scope: !3096, file: !443, line: 34, type: !57)
!3096 = distinct !DILexicalBlock(scope: !3093, file: !443, line: 34, column: 3)
!3097 = !DILocation(line: 34, column: 3, scope: !3096)
!3098 = !DILocation(line: 0, scope: !3096)
!3099 = !DILocation(line: 40, column: 3, scope: !3093)
!3100 = distinct !DISubprogram(name: "xstrtol", scope: !445, file: !445, line: 71, type: !3101, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3105)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!3103, !35, !26, !25, !3104, !35}
!3103 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 43, baseType: !13)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!3105 = !{!3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3118, !3119}
!3106 = !DILocalVariable(name: "nptr", arg: 1, scope: !3100, file: !445, line: 71, type: !35)
!3107 = !DILocalVariable(name: "endptr", arg: 2, scope: !3100, file: !445, line: 71, type: !26)
!3108 = !DILocalVariable(name: "base", arg: 3, scope: !3100, file: !445, line: 71, type: !25)
!3109 = !DILocalVariable(name: "val", arg: 4, scope: !3100, file: !445, line: 72, type: !3104)
!3110 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3100, file: !445, line: 72, type: !35)
!3111 = !DILocalVariable(name: "t_ptr", scope: !3100, file: !445, line: 74, type: !27)
!3112 = !DILocalVariable(name: "p", scope: !3100, file: !445, line: 75, type: !26)
!3113 = !DILocalVariable(name: "tmp", scope: !3100, file: !445, line: 91, type: !52)
!3114 = !DILocalVariable(name: "err", scope: !3100, file: !445, line: 92, type: !3103)
!3115 = !DILocalVariable(name: "xbase", scope: !3116, file: !445, line: 126, type: !25)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !445, line: 119, column: 5)
!3117 = distinct !DILexicalBlock(scope: !3100, file: !445, line: 118, column: 7)
!3118 = !DILocalVariable(name: "suffixes", scope: !3116, file: !445, line: 127, type: !25)
!3119 = !DILocalVariable(name: "overflow", scope: !3116, file: !445, line: 156, type: !3103)
!3120 = !DILocation(line: 0, scope: !3100)
!3121 = !DILocation(line: 74, column: 3, scope: !3100)
!3122 = !DILocation(line: 75, column: 14, scope: !3100)
!3123 = !DILocation(line: 90, column: 3, scope: !3100)
!3124 = !DILocation(line: 90, column: 9, scope: !3100)
!3125 = !DILocation(line: 91, column: 20, scope: !3100)
!3126 = !DILocation(line: 94, column: 7, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3100, file: !445, line: 94, column: 7)
!3128 = !DILocation(line: 94, column: 10, scope: !3127)
!3129 = !DILocation(line: 94, column: 7, scope: !3100)
!3130 = !DILocation(line: 98, column: 14, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3132, file: !445, line: 98, column: 11)
!3132 = distinct !DILexicalBlock(scope: !3127, file: !445, line: 95, column: 5)
!3133 = !DILocation(line: 98, column: 29, scope: !3131)
!3134 = !DILocation(line: 98, column: 32, scope: !3131)
!3135 = !DILocation(line: 98, column: 38, scope: !3131)
!3136 = !DILocation(line: 98, column: 41, scope: !3131)
!3137 = !DILocation(line: 98, column: 11, scope: !3132)
!3138 = !DILocation(line: 102, column: 12, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3127, file: !445, line: 102, column: 12)
!3140 = !DILocation(line: 102, column: 12, scope: !3127)
!3141 = !DILocation(line: 107, column: 5, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !445, line: 103, column: 5)
!3143 = !DILocation(line: 112, column: 8, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3100, file: !445, line: 112, column: 7)
!3145 = !DILocation(line: 112, column: 7, scope: !3100)
!3146 = !DILocation(line: 114, column: 12, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !3144, file: !445, line: 113, column: 5)
!3148 = !DILocation(line: 115, column: 7, scope: !3147)
!3149 = !DILocation(line: 118, column: 7, scope: !3117)
!3150 = !DILocation(line: 118, column: 11, scope: !3117)
!3151 = !DILocation(line: 118, column: 7, scope: !3100)
!3152 = !DILocation(line: 120, column: 12, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3116, file: !445, line: 120, column: 11)
!3154 = !DILocation(line: 120, column: 11, scope: !3116)
!3155 = !DILocation(line: 122, column: 16, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3153, file: !445, line: 121, column: 9)
!3157 = !DILocation(line: 123, column: 22, scope: !3156)
!3158 = !DILocation(line: 123, column: 11, scope: !3156)
!3159 = !DILocation(line: 0, scope: !3116)
!3160 = !DILocation(line: 128, column: 7, scope: !3116)
!3161 = !DILocation(line: 140, column: 15, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !445, line: 140, column: 15)
!3163 = distinct !DILexicalBlock(scope: !3116, file: !445, line: 129, column: 9)
!3164 = !DILocation(line: 140, column: 15, scope: !3163)
!3165 = !DILocation(line: 141, column: 21, scope: !3162)
!3166 = !DILocation(line: 141, column: 13, scope: !3162)
!3167 = !DILocation(line: 144, column: 21, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !445, line: 144, column: 21)
!3169 = distinct !DILexicalBlock(scope: !3162, file: !445, line: 142, column: 15)
!3170 = !DILocation(line: 144, column: 29, scope: !3168)
!3171 = !DILocation(line: 144, column: 21, scope: !3169)
!3172 = !DILocation(line: 152, column: 17, scope: !3169)
!3173 = !DILocation(line: 157, column: 7, scope: !3116)
!3174 = !DILocalVariable(name: "err", scope: !3175, file: !445, line: 64, type: !3103)
!3175 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !445, file: !445, line: 62, type: !3176, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3178)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!3103, !3104, !25, !25}
!3178 = !{!3179, !3180, !3181, !3174}
!3179 = !DILocalVariable(name: "x", arg: 1, scope: !3175, file: !445, line: 62, type: !3104)
!3180 = !DILocalVariable(name: "base", arg: 2, scope: !3175, file: !445, line: 62, type: !25)
!3181 = !DILocalVariable(name: "power", arg: 3, scope: !3175, file: !445, line: 62, type: !25)
!3182 = !DILocation(line: 0, scope: !3175, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 219, column: 22, scope: !3184)
!3184 = distinct !DILexicalBlock(scope: !3116, file: !445, line: 158, column: 9)
!3185 = !DILocalVariable(name: "x", arg: 1, scope: !3186, file: !445, line: 47, type: !3104)
!3186 = distinct !DISubprogram(name: "bkm_scale", scope: !445, file: !445, line: 47, type: !3187, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3189)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!3103, !3104, !25}
!3189 = !{!3185, !3190, !3191}
!3190 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3186, file: !445, line: 47, type: !25)
!3191 = !DILocalVariable(name: "scaled", scope: !3186, file: !445, line: 49, type: !52)
!3192 = !DILocation(line: 0, scope: !3186, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3183)
!3194 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3193)
!3195 = distinct !DILexicalBlock(scope: !3186, file: !445, line: 50, column: 7)
!3196 = !DILocation(line: 0, scope: !3175, inlinedAt: !3197)
!3197 = distinct !DILocation(line: 215, column: 22, scope: !3184)
!3198 = !DILocation(line: 0, scope: !3186, inlinedAt: !3199)
!3199 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3197)
!3200 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3199)
!3201 = !DILocation(line: 0, scope: !3175, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 202, column: 22, scope: !3184)
!3203 = !DILocation(line: 0, scope: !3186, inlinedAt: !3204)
!3204 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3202)
!3205 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3204)
!3206 = !DILocation(line: 0, scope: !3175, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 198, column: 22, scope: !3184)
!3208 = !DILocation(line: 0, scope: !3186, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3207)
!3210 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3209)
!3211 = !DILocation(line: 0, scope: !3175, inlinedAt: !3212)
!3212 = distinct !DILocation(line: 194, column: 22, scope: !3184)
!3213 = !DILocation(line: 0, scope: !3186, inlinedAt: !3214)
!3214 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3212)
!3215 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3214)
!3216 = !DILocation(line: 0, scope: !3175, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 175, column: 22, scope: !3184)
!3218 = !DILocation(line: 0, scope: !3186, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3217)
!3220 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3219)
!3221 = !DILocation(line: 0, scope: !3186, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 160, column: 22, scope: !3184)
!3223 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3222)
!3224 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3222)
!3225 = !DILocation(line: 0, scope: !3186, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 167, column: 22, scope: !3184)
!3227 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3226)
!3228 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3226)
!3229 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3217)
!3230 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3219)
!3231 = !DILocation(line: 227, column: 11, scope: !3116)
!3232 = !DILocation(line: 0, scope: !3175, inlinedAt: !3233)
!3233 = distinct !DILocation(line: 180, column: 22, scope: !3184)
!3234 = !DILocation(line: 0, scope: !3186, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3233)
!3236 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3235)
!3237 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3235)
!3238 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3233)
!3239 = !DILocation(line: 0, scope: !3175, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 185, column: 22, scope: !3184)
!3241 = !DILocation(line: 0, scope: !3186, inlinedAt: !3242)
!3242 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3240)
!3243 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3242)
!3244 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3242)
!3245 = !DILocation(line: 0, scope: !3175, inlinedAt: !3246)
!3246 = distinct !DILocation(line: 190, column: 22, scope: !3184)
!3247 = !DILocation(line: 0, scope: !3186, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3246)
!3249 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3248)
!3250 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3248)
!3251 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3246)
!3252 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3212)
!3253 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3214)
!3254 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3207)
!3255 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3209)
!3256 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3202)
!3257 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3204)
!3258 = !DILocation(line: 0, scope: !3175, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 207, column: 22, scope: !3184)
!3260 = !DILocation(line: 0, scope: !3186, inlinedAt: !3261)
!3261 = distinct !DILocation(line: 66, column: 12, scope: !3175, inlinedAt: !3259)
!3262 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3261)
!3263 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3261)
!3264 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3259)
!3265 = !DILocation(line: 0, scope: !3186, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 211, column: 22, scope: !3184)
!3267 = !DILocation(line: 50, column: 7, scope: !3195, inlinedAt: !3266)
!3268 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3266)
!3269 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3197)
!3270 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3199)
!3271 = !DILocation(line: 66, column: 9, scope: !3175, inlinedAt: !3183)
!3272 = !DILocation(line: 50, column: 7, scope: !3186, inlinedAt: !3193)
!3273 = !DILocation(line: 0, scope: !3184)
!3274 = !DILocation(line: 228, column: 10, scope: !3116)
!3275 = !DILocation(line: 229, column: 11, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3116, file: !445, line: 229, column: 11)
!3277 = !DILocation(line: 229, column: 11, scope: !3116)
!3278 = !DILocation(line: 223, column: 16, scope: !3184)
!3279 = !DILocation(line: 224, column: 22, scope: !3184)
!3280 = !DILocation(line: 100, column: 11, scope: !3132)
!3281 = !DILocation(line: 92, column: 16, scope: !3100)
!3282 = !DILocation(line: 233, column: 8, scope: !3100)
!3283 = !DILocation(line: 234, column: 3, scope: !3100)
!3284 = !DILocation(line: 235, column: 1, scope: !3100)
!3285 = distinct !DISubprogram(name: "close_stream", scope: !449, file: !449, line: 55, type: !3286, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3322)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!25, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !3291)
!3291 = !{!3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3290, file: !119, line: 51, baseType: !25, size: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3290, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3290, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3290, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3290, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3290, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3290, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3290, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3290, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3290, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3290, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3290, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3290, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3290, file: !119, line: 70, baseType: !3306, size: 64, offset: 832)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3290, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3290, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3290, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3290, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3290, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3290, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3290, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3290, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3290, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3290, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3290, file: !119, line: 93, baseType: !3306, size: 64, offset: 1344)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3290, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3290, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3290, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3290, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!3322 = !{!3323, !3324, !3326, !3327}
!3323 = !DILocalVariable(name: "stream", arg: 1, scope: !3285, file: !449, line: 55, type: !3288)
!3324 = !DILocalVariable(name: "some_pending", scope: !3285, file: !449, line: 57, type: !3325)
!3325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3326 = !DILocalVariable(name: "prev_fail", scope: !3285, file: !449, line: 58, type: !3325)
!3327 = !DILocalVariable(name: "fclose_fail", scope: !3285, file: !449, line: 59, type: !3325)
!3328 = !DILocation(line: 0, scope: !3285)
!3329 = !DILocation(line: 57, column: 30, scope: !3285)
!3330 = !DILocalVariable(name: "__stream", arg: 1, scope: !3331, file: !822, line: 135, type: !3288)
!3331 = distinct !DISubprogram(name: "ferror_unlocked", scope: !822, file: !822, line: 135, type: !3286, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !448, retainedNodes: !3332)
!3332 = !{!3330}
!3333 = !DILocation(line: 0, scope: !3331, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 58, column: 27, scope: !3285)
!3335 = !DILocation(line: 137, column: 10, scope: !3331, inlinedAt: !3334)
!3336 = !DILocation(line: 58, column: 43, scope: !3285)
!3337 = !DILocation(line: 59, column: 29, scope: !3285)
!3338 = !DILocation(line: 59, column: 45, scope: !3285)
!3339 = !DILocation(line: 69, column: 17, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3285, file: !449, line: 69, column: 7)
!3341 = !DILocation(line: 57, column: 50, scope: !3285)
!3342 = !DILocation(line: 69, column: 33, scope: !3340)
!3343 = !DILocation(line: 69, column: 53, scope: !3340)
!3344 = !DILocation(line: 69, column: 59, scope: !3340)
!3345 = !DILocation(line: 69, column: 7, scope: !3285)
!3346 = !DILocation(line: 71, column: 11, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3340, file: !449, line: 70, column: 5)
!3348 = !DILocation(line: 72, column: 9, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3347, file: !449, line: 71, column: 11)
!3350 = !DILocation(line: 72, column: 15, scope: !3349)
!3351 = !DILocation(line: 77, column: 1, scope: !3285)
!3352 = distinct !DISubprogram(name: "rpl_fclose", scope: !451, file: !451, line: 58, type: !3353, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !3389)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!25, !3355}
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !3357)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3357, file: !119, line: 51, baseType: !25, size: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3357, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3357, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3357, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3357, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3357, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3357, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3357, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3357, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3357, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3357, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3357, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3357, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3357, file: !119, line: 70, baseType: !3373, size: 64, offset: 832)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3357, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3357, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3357, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3357, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3357, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3357, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3357, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3357, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3357, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3357, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3357, file: !119, line: 93, baseType: !3373, size: 64, offset: 1344)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3357, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3357, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3357, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3357, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!3389 = !{!3390, !3391, !3392, !3393}
!3390 = !DILocalVariable(name: "fp", arg: 1, scope: !3352, file: !451, line: 58, type: !3355)
!3391 = !DILocalVariable(name: "saved_errno", scope: !3352, file: !451, line: 60, type: !25)
!3392 = !DILocalVariable(name: "fd", scope: !3352, file: !451, line: 63, type: !25)
!3393 = !DILocalVariable(name: "result", scope: !3352, file: !451, line: 74, type: !25)
!3394 = !DILocation(line: 0, scope: !3352)
!3395 = !DILocation(line: 63, column: 12, scope: !3352)
!3396 = !DILocation(line: 64, column: 10, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3352, file: !451, line: 64, column: 7)
!3398 = !DILocation(line: 64, column: 7, scope: !3352)
!3399 = !DILocation(line: 65, column: 12, scope: !3397)
!3400 = !DILocation(line: 65, column: 5, scope: !3397)
!3401 = !DILocation(line: 70, column: 9, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3352, file: !451, line: 70, column: 7)
!3403 = !DILocation(line: 70, column: 23, scope: !3402)
!3404 = !DILocation(line: 70, column: 33, scope: !3402)
!3405 = !DILocation(line: 70, column: 26, scope: !3402)
!3406 = !DILocation(line: 70, column: 59, scope: !3402)
!3407 = !DILocation(line: 71, column: 7, scope: !3402)
!3408 = !DILocation(line: 71, column: 10, scope: !3402)
!3409 = !DILocation(line: 70, column: 7, scope: !3352)
!3410 = !DILocation(line: 100, column: 12, scope: !3352)
!3411 = !DILocation(line: 105, column: 7, scope: !3352)
!3412 = !DILocation(line: 72, column: 19, scope: !3402)
!3413 = !DILocation(line: 105, column: 19, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3352, file: !451, line: 105, column: 7)
!3415 = !DILocation(line: 107, column: 13, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3414, file: !451, line: 106, column: 5)
!3417 = !DILocation(line: 109, column: 5, scope: !3416)
!3418 = !DILocation(line: 112, column: 1, scope: !3352)
!3419 = !DISubprogram(name: "fileno", scope: !211, file: !211, line: 809, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3420 = !DISubprogram(name: "fclose", scope: !211, file: !211, line: 178, type: !3353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3421 = !DISubprogram(name: "lseek", scope: !863, file: !863, line: 339, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!141, !25, !141, !25}
!3424 = distinct !DISubprogram(name: "rpl_fflush", scope: !453, file: !453, line: 130, type: !3425, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !3461)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!25, !3427}
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !3430)
!3430 = !{!3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3429, file: !119, line: 51, baseType: !25, size: 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3429, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3429, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3429, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3429, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3429, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3429, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3429, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3429, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3429, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3429, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3429, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3429, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3429, file: !119, line: 70, baseType: !3445, size: 64, offset: 832)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3429, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3429, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3429, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3429, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3429, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3429, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3429, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3429, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3429, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3429, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3429, file: !119, line: 93, baseType: !3445, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3429, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3429, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3429, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3429, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!3461 = !{!3462}
!3462 = !DILocalVariable(name: "stream", arg: 1, scope: !3424, file: !453, line: 130, type: !3427)
!3463 = !DILocation(line: 0, scope: !3424)
!3464 = !DILocation(line: 151, column: 14, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3424, file: !453, line: 151, column: 7)
!3466 = !DILocation(line: 151, column: 22, scope: !3465)
!3467 = !DILocation(line: 151, column: 27, scope: !3465)
!3468 = !DILocation(line: 151, column: 7, scope: !3424)
!3469 = !DILocation(line: 152, column: 12, scope: !3465)
!3470 = !DILocation(line: 152, column: 5, scope: !3465)
!3471 = !DILocalVariable(name: "fp", arg: 1, scope: !3472, file: !453, line: 42, type: !3427)
!3472 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !453, file: !453, line: 42, type: !3473, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !3475)
!3473 = !DISubroutineType(types: !3474)
!3474 = !{null, !3427}
!3475 = !{!3471}
!3476 = !DILocation(line: 0, scope: !3472, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 157, column: 3, scope: !3424)
!3478 = !DILocation(line: 44, column: 12, scope: !3479, inlinedAt: !3477)
!3479 = distinct !DILexicalBlock(scope: !3472, file: !453, line: 44, column: 7)
!3480 = !DILocation(line: 44, column: 19, scope: !3479, inlinedAt: !3477)
!3481 = !DILocation(line: 44, column: 7, scope: !3472, inlinedAt: !3477)
!3482 = !DILocation(line: 46, column: 5, scope: !3479, inlinedAt: !3477)
!3483 = !DILocation(line: 159, column: 10, scope: !3424)
!3484 = !DILocation(line: 159, column: 3, scope: !3424)
!3485 = !DILocation(line: 236, column: 1, scope: !3424)
!3486 = !DISubprogram(name: "fflush", scope: !211, file: !211, line: 230, type: !3425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3487 = distinct !DISubprogram(name: "rpl_fseeko", scope: !455, file: !455, line: 28, type: !3488, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !3525)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!25, !3490, !3524, !25}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 7, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 49, size: 1728, elements: !3493)
!3493 = !{!3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3492, file: !119, line: 51, baseType: !25, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3492, file: !119, line: 54, baseType: !27, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3492, file: !119, line: 55, baseType: !27, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3492, file: !119, line: 56, baseType: !27, size: 64, offset: 192)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3492, file: !119, line: 57, baseType: !27, size: 64, offset: 256)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3492, file: !119, line: 58, baseType: !27, size: 64, offset: 320)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3492, file: !119, line: 59, baseType: !27, size: 64, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3492, file: !119, line: 60, baseType: !27, size: 64, offset: 448)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3492, file: !119, line: 61, baseType: !27, size: 64, offset: 512)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3492, file: !119, line: 64, baseType: !27, size: 64, offset: 576)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3492, file: !119, line: 65, baseType: !27, size: 64, offset: 640)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3492, file: !119, line: 66, baseType: !27, size: 64, offset: 704)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3492, file: !119, line: 68, baseType: !134, size: 64, offset: 768)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3492, file: !119, line: 70, baseType: !3508, size: 64, offset: 832)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3492, file: !119, line: 72, baseType: !25, size: 32, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3492, file: !119, line: 73, baseType: !25, size: 32, offset: 928)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3492, file: !119, line: 74, baseType: !141, size: 64, offset: 960)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3492, file: !119, line: 77, baseType: !85, size: 16, offset: 1024)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3492, file: !119, line: 78, baseType: !145, size: 8, offset: 1040)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3492, file: !119, line: 79, baseType: !147, size: 8, offset: 1048)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3492, file: !119, line: 81, baseType: !151, size: 64, offset: 1088)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3492, file: !119, line: 89, baseType: !154, size: 64, offset: 1152)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3492, file: !119, line: 91, baseType: !156, size: 64, offset: 1216)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3492, file: !119, line: 92, baseType: !159, size: 64, offset: 1280)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3492, file: !119, line: 93, baseType: !3508, size: 64, offset: 1344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3492, file: !119, line: 94, baseType: !84, size: 64, offset: 1408)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3492, file: !119, line: 95, baseType: !86, size: 64, offset: 1472)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3492, file: !119, line: 96, baseType: !25, size: 32, offset: 1536)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3492, file: !119, line: 98, baseType: !166, size: 160, offset: 1568)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !211, line: 63, baseType: !141)
!3525 = !{!3526, !3527, !3528, !3529}
!3526 = !DILocalVariable(name: "fp", arg: 1, scope: !3487, file: !455, line: 28, type: !3490)
!3527 = !DILocalVariable(name: "offset", arg: 2, scope: !3487, file: !455, line: 28, type: !3524)
!3528 = !DILocalVariable(name: "whence", arg: 3, scope: !3487, file: !455, line: 28, type: !25)
!3529 = !DILocalVariable(name: "pos", scope: !3530, file: !455, line: 123, type: !3524)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !455, line: 119, column: 5)
!3531 = distinct !DILexicalBlock(scope: !3487, file: !455, line: 55, column: 7)
!3532 = !DILocation(line: 0, scope: !3487)
!3533 = !DILocation(line: 55, column: 12, scope: !3531)
!3534 = !{!830, !489, i64 16}
!3535 = !DILocation(line: 55, column: 33, scope: !3531)
!3536 = !{!830, !489, i64 8}
!3537 = !DILocation(line: 55, column: 25, scope: !3531)
!3538 = !DILocation(line: 56, column: 7, scope: !3531)
!3539 = !DILocation(line: 56, column: 15, scope: !3531)
!3540 = !DILocation(line: 56, column: 37, scope: !3531)
!3541 = !{!830, !489, i64 32}
!3542 = !DILocation(line: 56, column: 29, scope: !3531)
!3543 = !DILocation(line: 57, column: 7, scope: !3531)
!3544 = !DILocation(line: 57, column: 15, scope: !3531)
!3545 = !{!830, !489, i64 72}
!3546 = !DILocation(line: 57, column: 29, scope: !3531)
!3547 = !DILocation(line: 55, column: 7, scope: !3487)
!3548 = !DILocation(line: 123, column: 26, scope: !3530)
!3549 = !DILocation(line: 123, column: 19, scope: !3530)
!3550 = !DILocation(line: 0, scope: !3530)
!3551 = !DILocation(line: 124, column: 15, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3530, file: !455, line: 124, column: 11)
!3553 = !DILocation(line: 124, column: 11, scope: !3530)
!3554 = !DILocation(line: 135, column: 12, scope: !3530)
!3555 = !DILocation(line: 135, column: 19, scope: !3530)
!3556 = !DILocation(line: 136, column: 12, scope: !3530)
!3557 = !DILocation(line: 136, column: 20, scope: !3530)
!3558 = !{!830, !776, i64 144}
!3559 = !DILocation(line: 167, column: 7, scope: !3530)
!3560 = !DILocation(line: 169, column: 10, scope: !3487)
!3561 = !DILocation(line: 169, column: 3, scope: !3487)
!3562 = !DILocation(line: 170, column: 1, scope: !3487)
!3563 = !DISubprogram(name: "fseeko", scope: !211, file: !211, line: 736, type: !3564, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!25, !3490, !141, !25}
!3566 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !386, file: !386, line: 100, type: !3567, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !3570)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!86, !1206, !35, !86, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!3570 = !{!3571, !3572, !3573, !3574, !3575}
!3571 = !DILocalVariable(name: "pwc", arg: 1, scope: !3566, file: !386, line: 100, type: !1206)
!3572 = !DILocalVariable(name: "s", arg: 2, scope: !3566, file: !386, line: 100, type: !35)
!3573 = !DILocalVariable(name: "n", arg: 3, scope: !3566, file: !386, line: 100, type: !86)
!3574 = !DILocalVariable(name: "ps", arg: 4, scope: !3566, file: !386, line: 100, type: !3569)
!3575 = !DILocalVariable(name: "ret", scope: !3566, file: !386, line: 130, type: !86)
!3576 = !DILocation(line: 0, scope: !3566)
!3577 = !DILocation(line: 105, column: 9, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3566, file: !386, line: 105, column: 7)
!3579 = !DILocation(line: 105, column: 7, scope: !3566)
!3580 = !DILocation(line: 117, column: 10, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3566, file: !386, line: 117, column: 7)
!3582 = !DILocation(line: 117, column: 7, scope: !3566)
!3583 = !DILocation(line: 130, column: 16, scope: !3566)
!3584 = !DILocation(line: 135, column: 11, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3566, file: !386, line: 135, column: 7)
!3586 = !DILocation(line: 135, column: 25, scope: !3585)
!3587 = !DILocation(line: 135, column: 30, scope: !3585)
!3588 = !DILocation(line: 135, column: 7, scope: !3566)
!3589 = !DILocalVariable(name: "ps", arg: 1, scope: !3590, file: !1179, line: 1135, type: !3569)
!3590 = distinct !DISubprogram(name: "mbszero", scope: !1179, file: !1179, line: 1135, type: !3591, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{null, !3569}
!3593 = !{!3589}
!3594 = !DILocation(line: 0, scope: !3590, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 137, column: 5, scope: !3585)
!3596 = !DILocalVariable(name: "__dest", arg: 1, scope: !3597, file: !1188, line: 57, type: !84)
!3597 = distinct !DISubprogram(name: "memset", scope: !1188, file: !1188, line: 57, type: !1189, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !3598)
!3598 = !{!3596, !3599, !3600}
!3599 = !DILocalVariable(name: "__ch", arg: 2, scope: !3597, file: !1188, line: 57, type: !25)
!3600 = !DILocalVariable(name: "__len", arg: 3, scope: !3597, file: !1188, line: 57, type: !86)
!3601 = !DILocation(line: 0, scope: !3597, inlinedAt: !3602)
!3602 = distinct !DILocation(line: 1137, column: 3, scope: !3590, inlinedAt: !3595)
!3603 = !DILocation(line: 59, column: 10, scope: !3597, inlinedAt: !3602)
!3604 = !DILocation(line: 137, column: 5, scope: !3585)
!3605 = !DILocation(line: 138, column: 11, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3566, file: !386, line: 138, column: 7)
!3607 = !DILocation(line: 138, column: 7, scope: !3566)
!3608 = !DILocation(line: 139, column: 5, scope: !3606)
!3609 = !DILocation(line: 143, column: 26, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3566, file: !386, line: 143, column: 7)
!3611 = !DILocation(line: 143, column: 41, scope: !3610)
!3612 = !DILocation(line: 143, column: 7, scope: !3566)
!3613 = !DILocation(line: 145, column: 15, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !386, line: 145, column: 11)
!3615 = distinct !DILexicalBlock(scope: !3610, file: !386, line: 144, column: 5)
!3616 = !DILocation(line: 145, column: 11, scope: !3615)
!3617 = !DILocation(line: 146, column: 32, scope: !3614)
!3618 = !DILocation(line: 146, column: 16, scope: !3614)
!3619 = !DILocation(line: 146, column: 14, scope: !3614)
!3620 = !DILocation(line: 146, column: 9, scope: !3614)
!3621 = !DILocation(line: 286, column: 1, scope: !3566)
!3622 = !DISubprogram(name: "mbsinit", scope: !3623, file: !3623, line: 293, type: !3624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !497)
!3623 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3624 = !DISubroutineType(types: !3625)
!3625 = !{!25, !3626}
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!3628 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !457, file: !457, line: 27, type: !2661, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3629)
!3629 = !{!3630, !3631, !3632, !3633}
!3630 = !DILocalVariable(name: "ptr", arg: 1, scope: !3628, file: !457, line: 27, type: !84)
!3631 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3628, file: !457, line: 27, type: !86)
!3632 = !DILocalVariable(name: "size", arg: 3, scope: !3628, file: !457, line: 27, type: !86)
!3633 = !DILocalVariable(name: "nbytes", scope: !3628, file: !457, line: 29, type: !86)
!3634 = !DILocation(line: 0, scope: !3628)
!3635 = !DILocation(line: 30, column: 7, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3628, file: !457, line: 30, column: 7)
!3637 = !DILocalVariable(name: "ptr", arg: 1, scope: !3638, file: !2752, line: 2057, type: !84)
!3638 = distinct !DISubprogram(name: "rpl_realloc", scope: !2752, file: !2752, line: 2057, type: !2744, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !456, retainedNodes: !3639)
!3639 = !{!3637, !3640}
!3640 = !DILocalVariable(name: "size", arg: 2, scope: !3638, file: !2752, line: 2057, type: !86)
!3641 = !DILocation(line: 0, scope: !3638, inlinedAt: !3642)
!3642 = distinct !DILocation(line: 37, column: 10, scope: !3628)
!3643 = !DILocation(line: 2059, column: 24, scope: !3638, inlinedAt: !3642)
!3644 = !DILocation(line: 2059, column: 10, scope: !3638, inlinedAt: !3642)
!3645 = !DILocation(line: 37, column: 3, scope: !3628)
!3646 = !DILocation(line: 32, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3636, file: !457, line: 31, column: 5)
!3648 = !DILocation(line: 32, column: 13, scope: !3647)
!3649 = !DILocation(line: 33, column: 7, scope: !3647)
!3650 = !DILocation(line: 38, column: 1, scope: !3628)
!3651 = distinct !DISubprogram(name: "hard_locale", scope: !460, file: !460, line: 28, type: !734, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3652)
!3652 = !{!3653, !3654}
!3653 = !DILocalVariable(name: "category", arg: 1, scope: !3651, file: !460, line: 28, type: !25)
!3654 = !DILocalVariable(name: "locale", scope: !3651, file: !460, line: 30, type: !3655)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2056, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 257)
!3658 = !DILocation(line: 0, scope: !3651)
!3659 = !DILocation(line: 30, column: 3, scope: !3651)
!3660 = !DILocation(line: 30, column: 8, scope: !3651)
!3661 = !DILocation(line: 32, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3651, file: !460, line: 32, column: 7)
!3663 = !DILocation(line: 32, column: 7, scope: !3651)
!3664 = !DILocalVariable(name: "__s1", arg: 1, scope: !3665, file: !536, line: 1359, type: !35)
!3665 = distinct !DISubprogram(name: "streq", scope: !536, file: !536, line: 1359, type: !537, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !3666)
!3666 = !{!3664, !3667}
!3667 = !DILocalVariable(name: "__s2", arg: 2, scope: !3665, file: !536, line: 1359, type: !35)
!3668 = !DILocation(line: 0, scope: !3665, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 35, column: 9, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3651, file: !460, line: 35, column: 7)
!3671 = !DILocation(line: 1361, column: 11, scope: !3665, inlinedAt: !3669)
!3672 = !DILocation(line: 1361, column: 10, scope: !3665, inlinedAt: !3669)
!3673 = !DILocation(line: 35, column: 29, scope: !3670)
!3674 = !DILocation(line: 0, scope: !3665, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 35, column: 32, scope: !3670)
!3676 = !DILocation(line: 1361, column: 11, scope: !3665, inlinedAt: !3675)
!3677 = !DILocation(line: 1361, column: 10, scope: !3665, inlinedAt: !3675)
!3678 = !DILocation(line: 35, column: 7, scope: !3651)
!3679 = !DILocation(line: 46, column: 3, scope: !3651)
!3680 = !DILocation(line: 47, column: 1, scope: !3651)
!3681 = distinct !DISubprogram(name: "setlocale_null_r", scope: !462, file: !462, line: 154, type: !3682, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3684)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!25, !25, !27, !86}
!3684 = !{!3685, !3686, !3687}
!3685 = !DILocalVariable(name: "category", arg: 1, scope: !3681, file: !462, line: 154, type: !25)
!3686 = !DILocalVariable(name: "buf", arg: 2, scope: !3681, file: !462, line: 154, type: !27)
!3687 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3681, file: !462, line: 154, type: !86)
!3688 = !DILocation(line: 0, scope: !3681)
!3689 = !DILocation(line: 159, column: 10, scope: !3681)
!3690 = !DILocation(line: 159, column: 3, scope: !3681)
!3691 = distinct !DISubprogram(name: "setlocale_null", scope: !462, file: !462, line: 186, type: !3692, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!35, !25}
!3694 = !{!3695}
!3695 = !DILocalVariable(name: "category", arg: 1, scope: !3691, file: !462, line: 186, type: !25)
!3696 = !DILocation(line: 0, scope: !3691)
!3697 = !DILocation(line: 189, column: 10, scope: !3691)
!3698 = !DILocation(line: 189, column: 3, scope: !3691)
!3699 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !464, file: !464, line: 35, type: !3692, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3700)
!3700 = !{!3701, !3702}
!3701 = !DILocalVariable(name: "category", arg: 1, scope: !3699, file: !464, line: 35, type: !25)
!3702 = !DILocalVariable(name: "result", scope: !3699, file: !464, line: 37, type: !35)
!3703 = !DILocation(line: 0, scope: !3699)
!3704 = !DILocation(line: 37, column: 24, scope: !3699)
!3705 = !DILocation(line: 62, column: 3, scope: !3699)
!3706 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !464, file: !464, line: 66, type: !3682, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712}
!3708 = !DILocalVariable(name: "category", arg: 1, scope: !3706, file: !464, line: 66, type: !25)
!3709 = !DILocalVariable(name: "buf", arg: 2, scope: !3706, file: !464, line: 66, type: !27)
!3710 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3706, file: !464, line: 66, type: !86)
!3711 = !DILocalVariable(name: "result", scope: !3706, file: !464, line: 111, type: !35)
!3712 = !DILocalVariable(name: "length", scope: !3713, file: !464, line: 125, type: !86)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !464, line: 124, column: 5)
!3714 = distinct !DILexicalBlock(scope: !3706, file: !464, line: 113, column: 7)
!3715 = !DILocation(line: 0, scope: !3706)
!3716 = !DILocation(line: 0, scope: !3699, inlinedAt: !3717)
!3717 = distinct !DILocation(line: 111, column: 24, scope: !3706)
!3718 = !DILocation(line: 37, column: 24, scope: !3699, inlinedAt: !3717)
!3719 = !DILocation(line: 113, column: 14, scope: !3714)
!3720 = !DILocation(line: 113, column: 7, scope: !3706)
!3721 = !DILocation(line: 116, column: 19, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !464, line: 116, column: 11)
!3723 = distinct !DILexicalBlock(scope: !3714, file: !464, line: 114, column: 5)
!3724 = !DILocation(line: 116, column: 11, scope: !3723)
!3725 = !DILocation(line: 120, column: 16, scope: !3722)
!3726 = !DILocation(line: 120, column: 9, scope: !3722)
!3727 = !DILocation(line: 125, column: 23, scope: !3713)
!3728 = !DILocation(line: 0, scope: !3713)
!3729 = !DILocation(line: 126, column: 18, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3713, file: !464, line: 126, column: 11)
!3731 = !DILocation(line: 126, column: 11, scope: !3713)
!3732 = !DILocation(line: 128, column: 39, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3730, file: !464, line: 127, column: 9)
!3734 = !DILocalVariable(name: "__dest", arg: 1, scope: !3735, file: !1188, line: 26, type: !3019)
!3735 = distinct !DISubprogram(name: "memcpy", scope: !1188, file: !1188, line: 26, type: !3017, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !463, retainedNodes: !3736)
!3736 = !{!3734, !3737, !3738}
!3737 = !DILocalVariable(name: "__src", arg: 2, scope: !3735, file: !1188, line: 26, type: !702)
!3738 = !DILocalVariable(name: "__len", arg: 3, scope: !3735, file: !1188, line: 26, type: !86)
!3739 = !DILocation(line: 0, scope: !3735, inlinedAt: !3740)
!3740 = distinct !DILocation(line: 128, column: 11, scope: !3733)
!3741 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3740)
!3742 = !DILocation(line: 129, column: 11, scope: !3733)
!3743 = !DILocation(line: 133, column: 23, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !464, line: 133, column: 15)
!3745 = distinct !DILexicalBlock(scope: !3730, file: !464, line: 132, column: 9)
!3746 = !DILocation(line: 133, column: 15, scope: !3745)
!3747 = !DILocation(line: 138, column: 44, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3744, file: !464, line: 134, column: 13)
!3749 = !DILocation(line: 0, scope: !3735, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 138, column: 15, scope: !3748)
!3751 = !DILocation(line: 29, column: 10, scope: !3735, inlinedAt: !3750)
!3752 = !DILocation(line: 139, column: 15, scope: !3748)
!3753 = !DILocation(line: 139, column: 32, scope: !3748)
!3754 = !DILocation(line: 140, column: 13, scope: !3748)
!3755 = !DILocation(line: 0, scope: !3714)
!3756 = !DILocation(line: 145, column: 1, scope: !3706)
