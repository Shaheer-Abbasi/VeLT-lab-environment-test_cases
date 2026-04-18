; ModuleID = 'src/rmdir.bc'
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
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Remove the DIRECTORY(ies), if they are empty.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"rmdir\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"      --ignore-fail-on-non-empty\0A         ignore each failure to remove a non-empty directory\0A\00", align 1
@.str.5 = private unnamed_addr constant [120 x i8] c"  -p, --parents\0A         remove DIRECTORY and its ancestors;\0A         e.g., 'rmdir -p a/b' is similar to 'rmdir a/b a'\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"  -v, --verbose\0A         output a diagnostic for every directory processed\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"pv\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 256 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@remove_empty_parents = internal unnamed_addr global i1 false, align 1, !dbg !158
@ignore_fail_on_non_empty = internal unnamed_addr global i1 false, align 1, !dbg !159
@verbose = internal unnamed_addr global i1 false, align 1, !dbg !160
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"removing directory, %s\00", align 1
@.str.17 = private unnamed_addr constant [48 x i8] c"failed to remove %s: Symbolic link not followed\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"failed to remove %s\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !61
@.str.19 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.49 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.50 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.52 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"ignore-fail-on-non-empty\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.60 = private unnamed_addr constant [30 x i8] c"failed to remove directory %s\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !161
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !166
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !171
@.str.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.31 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.32 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.33 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !173
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !209
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !179
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !205
@.str.1.67 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !207
@.str.4.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.63 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.64 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !214
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !220
@.str.82 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.83 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.84 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.85 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.86 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.87 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.88 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.89 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.90 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.91 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 8, !dbg !256
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !268
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !286
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !316
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !323
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !288
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !325
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !274
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !293
@.str.100 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.101 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.102 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.103 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.104 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.105 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.106 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.107 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.108 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.109 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.110 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.111 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.112 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.113 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.114 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.115 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.116 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.121 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.122 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.123 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.124 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.125 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.126 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.127 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !331
@exit_failure = dso_local global i32 1, align 4, !dbg !339
@.str.142 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.140 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.141 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !345
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !442 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !446, metadata !DIExpression()), !dbg !447
  %3 = icmp eq i32 %0, 0, !dbg !448
  br i1 %3, label %9, label %4, !dbg !450

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !451, !tbaa !453
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !451
  %7 = load i8*, i8** @program_name, align 8, !dbg !451, !tbaa !453
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !451
  br label %55, !dbg !451

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !457
  %11 = load i8*, i8** @program_name, align 8, !dbg !457, !tbaa !453
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !457
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !459
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !459, !tbaa !453
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !459
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !460
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !460
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([120 x i8], [120 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !461
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !461
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !462
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !462
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !463
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !463
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !464
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !464
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !465, metadata !DIExpression()) #33, !dbg !482
  %21 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !484
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %21) #33, !dbg !484
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !470, metadata !DIExpression()) #33, !dbg !485
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %21, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !485
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !482
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !478, metadata !DIExpression()) #33, !dbg !482
  %22 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !486
  call void @llvm.dbg.value(metadata %struct.infomap* %22, metadata !478, metadata !DIExpression()) #33, !dbg !482
  br label %23, !dbg !487

23:                                               ; preds = %28, %9
  %24 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), %9 ]
  %25 = phi %struct.infomap* [ %29, %28 ], [ %22, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !478, metadata !DIExpression()) #33, !dbg !482
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !495
  call void @llvm.dbg.value(metadata i8* %24, metadata !494, metadata !DIExpression()) #33, !dbg !495
  %26 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %24) #34, !dbg !497
  %27 = icmp eq i32 %26, 0, !dbg !498
  br i1 %27, label %33, label %28, !dbg !487

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %25, i64 1, !dbg !499
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !478, metadata !DIExpression()) #33, !dbg !482
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 0, i32 0, !dbg !500
  %31 = load i8*, i8** %30, align 8, !dbg !500, !tbaa !501
  %32 = icmp eq i8* %31, null, !dbg !503
  br i1 %32, label %33, label %23, !dbg !504, !llvm.loop !505

33:                                               ; preds = %28, %23
  %34 = phi %struct.infomap* [ %25, %23 ], [ %29, %28 ]
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 1, !dbg !507
  %36 = load i8*, i8** %35, align 8, !dbg !507, !tbaa !509
  %37 = icmp eq i8* %36, null, !dbg !510
  %38 = select i1 %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %36, !dbg !511
  call void @llvm.dbg.value(metadata i8* %38, metadata !477, metadata !DIExpression()) #33, !dbg !482
  tail call void @emit_bug_reporting_address() #33, !dbg !512
  %39 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !513
  call void @llvm.dbg.value(metadata i8* %39, metadata !480, metadata !DIExpression()) #33, !dbg !482
  %40 = icmp eq i8* %39, null, !dbg !514
  br i1 %40, label %48, label %41, !dbg !516

41:                                               ; preds = %33
  %42 = tail call i32 @strncmp(i8* noundef nonnull %39, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.49, i64 0, i64 0), i64 noundef 3) #34, !dbg !517
  %43 = icmp eq i32 %42, 0, !dbg !517
  br i1 %43, label %48, label %44, !dbg !518

44:                                               ; preds = %41
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !519
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !519, !tbaa !453
  %47 = tail call i32 @fputs_unlocked(i8* noundef %45, %struct._IO_FILE* noundef %46) #33, !dbg !519
  br label %48, !dbg !521

48:                                               ; preds = %33, %41, %44
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !522
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !494, metadata !DIExpression()) #33, !dbg !522
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !481, metadata !DIExpression()) #33, !dbg !482
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #33, !dbg !524
  %50 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %49, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !524
  %51 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.52, i64 0, i64 0), i32 noundef 5) #33, !dbg !525
  %52 = icmp eq i8* %38, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !525
  %53 = select i1 %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !525
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %51, i8* noundef %38, i8* noundef %53) #33, !dbg !525
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %21) #33, !dbg !526
  br label %55

55:                                               ; preds = %48, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !527
  unreachable, !dbg !527
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !528 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !533 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !63 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !67, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i8* %0, metadata !68, metadata !DIExpression()), !dbg !538
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !539, !tbaa !540
  %3 = icmp eq i32 %2, -1, !dbg !542
  br i1 %3, label %4, label %16, !dbg !543

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #33, !dbg !544
  call void @llvm.dbg.value(metadata i8* %5, metadata !69, metadata !DIExpression()), !dbg !545
  %6 = icmp eq i8* %5, null, !dbg !546
  br i1 %6, label %14, label %7, !dbg !547

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !548, !tbaa !549
  %9 = icmp eq i8 %8, 0, !dbg !548
  br i1 %9, label %14, label %10, !dbg !550

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !488, metadata !DIExpression()) #33, !dbg !551
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), metadata !494, metadata !DIExpression()) #33, !dbg !551
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !553
  %12 = icmp eq i32 %11, 0, !dbg !554
  %13 = zext i1 %12 to i32, !dbg !550
  br label %14, !dbg !550

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !555, !tbaa !540
  br label %16, !dbg !556

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !557
  %18 = icmp eq i32 %17, 0, !dbg !557
  br i1 %18, label %22, label %19, !dbg !559

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !560, !tbaa !453
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !560
  br label %121, !dbg !562

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !72, metadata !DIExpression()), !dbg !538
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !563
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !564
  call void @llvm.dbg.value(metadata i8* %24, metadata !73, metadata !DIExpression()), !dbg !538
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !565
  call void @llvm.dbg.value(metadata i8* %25, metadata !74, metadata !DIExpression()), !dbg !538
  %26 = icmp eq i8* %25, null, !dbg !566
  br i1 %26, label %53, label %27, !dbg !567

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !568
  br i1 %28, label %53, label %29, !dbg !569

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !75, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i64 0, metadata !79, metadata !DIExpression()), !dbg !570
  %30 = icmp ult i8* %24, %25, !dbg !571
  br i1 %30, label %31, label %53, !dbg !572

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !538
  %33 = load i16*, i16** %32, align 8, !tbaa !453
  br label %34, !dbg !572

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !75, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i64 %36, metadata !79, metadata !DIExpression()), !dbg !570
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !573
  call void @llvm.dbg.value(metadata i8* %37, metadata !75, metadata !DIExpression()), !dbg !570
  %38 = load i8, i8* %35, align 1, !dbg !573, !tbaa !549
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !573
  %41 = load i16, i16* %40, align 2, !dbg !573, !tbaa !574
  %42 = lshr i16 %41, 13, !dbg !576
  %43 = and i16 %42, 1, !dbg !576
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !577
  call void @llvm.dbg.value(metadata i64 %45, metadata !79, metadata !DIExpression()), !dbg !570
  %46 = icmp ult i8* %37, %25, !dbg !571
  %47 = icmp ult i64 %45, 2, !dbg !578
  %48 = select i1 %46, i1 %47, i1 false, !dbg !578
  br i1 %48, label %34, label %49, !dbg !572, !llvm.loop !579

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !580
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !582
  %52 = xor i1 %50, true, !dbg !582
  br label %53, !dbg !582

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !538
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i8* %54, metadata !74, metadata !DIExpression()), !dbg !538
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0)) #34, !dbg !583
  call void @llvm.dbg.value(metadata i64 %56, metadata !80, metadata !DIExpression()), !dbg !538
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !584
  call void @llvm.dbg.value(metadata i8* %57, metadata !81, metadata !DIExpression()), !dbg !538
  br label %58, !dbg !585

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !538
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.value(metadata i8* %59, metadata !81, metadata !DIExpression()), !dbg !538
  %61 = load i8, i8* %59, align 1, !dbg !586, !tbaa !549
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !587

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !588
  %64 = load i8, i8* %63, align 1, !dbg !591, !tbaa !549
  %65 = icmp ne i8 %64, 45, !dbg !592
  %66 = select i1 %65, i1 %60, i1 false, !dbg !593
  br label %67, !dbg !593

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !538
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !594
  %70 = load i16*, i16** %69, align 8, !dbg !594, !tbaa !453
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !594
  %73 = load i16, i16* %72, align 2, !dbg !594, !tbaa !574
  %74 = and i16 %73, 8192, !dbg !594
  %75 = icmp eq i16 %74, 0, !dbg !594
  br i1 %75, label %89, label %76, !dbg !596

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !597
  br i1 %77, label %91, label %78, !dbg !600

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !601
  %80 = load i8, i8* %79, align 1, !dbg !601, !tbaa !549
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !601
  %83 = load i16, i16* %82, align 2, !dbg !601, !tbaa !574
  %84 = and i16 %83, 8192, !dbg !601
  %85 = icmp eq i16 %84, 0, !dbg !601
  br i1 %85, label %86, label %91, !dbg !602

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !603
  br i1 %88, label %89, label %91, !dbg !603

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !605
  call void @llvm.dbg.value(metadata i8* %90, metadata !81, metadata !DIExpression()), !dbg !538
  br label %58, !dbg !585, !llvm.loop !606

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !608
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !608, !tbaa !453
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !609
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), metadata !494, metadata !DIExpression()) #33, !dbg !609
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !611
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !615
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !617
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !488, metadata !DIExpression()) #33, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !141, metadata !DIExpression()), !dbg !538
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i64 0, i64 0), i64 noundef 6) #34, !dbg !629
  %96 = icmp eq i32 %95, 0, !dbg !629
  br i1 %96, label %100, label %97, !dbg !631

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i64 0, i64 0), i64 noundef 9) #34, !dbg !632
  %99 = icmp eq i32 %98, 0, !dbg !632
  br i1 %99, label %100, label %103, !dbg !633

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !634
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !634
  br label %106, !dbg !636

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !637
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !637
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !453
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !639
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !453
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !640
  %111 = ptrtoint i8* %59 to i64, !dbg !641
  %112 = sub i64 %111, %92, !dbg !641
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !453
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !641
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !453
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !642
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !453
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !643
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !453
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !644
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !645
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
declare !dbg !646 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !650 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !654 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !660 {
  %3 = alloca [1 x i8], align 1
  %4 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !665, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.value(metadata i8** %1, metadata !666, metadata !DIExpression()), !dbg !722
  %5 = load i8*, i8** %1, align 8, !dbg !723, !tbaa !453
  tail call void @set_program_name(i8* noundef %5) #33, !dbg !724
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #33, !dbg !725
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !726
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !727
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !728
  br label %10, !dbg !729

10:                                               ; preds = %20, %2
  %11 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !730
  call void @llvm.dbg.value(metadata i32 %11, metadata !667, metadata !DIExpression()), !dbg !722
  switch i32 %11, label %19 [
    i32 -1, label %22
    i32 112, label %20
    i32 256, label %12
    i32 118, label %13
    i32 -2, label %14
    i32 -3, label %15
  ], !dbg !729

12:                                               ; preds = %10
  br label %20, !dbg !731

13:                                               ; preds = %10
  br label %20, !dbg !734

14:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #37, !dbg !735
  unreachable, !dbg !735

15:                                               ; preds = %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !453
  %17 = load i8*, i8** @Version, align 8, !dbg !736, !tbaa !453
  %18 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !736
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef null) #33, !dbg !736
  tail call void @exit(i32 noundef 0) #35, !dbg !736
  unreachable, !dbg !736

19:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #37, !dbg !737
  unreachable, !dbg !737

20:                                               ; preds = %10, %13, %12
  %21 = phi i1* [ @verbose, %13 ], [ @ignore_fail_on_non_empty, %12 ], [ @remove_empty_parents, %10 ]
  store i1 true, i1* %21, align 1, !dbg !738
  br label %10, !dbg !729, !llvm.loop !739

22:                                               ; preds = %10
  %23 = load i32, i32* @optind, align 4, !dbg !741, !tbaa !540
  %24 = icmp eq i32 %23, %0, !dbg !743
  br i1 %24, label %31, label %25, !dbg !744

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i8 poison, metadata !668, metadata !DIExpression()), !dbg !722
  %26 = icmp slt i32 %23, %0, !dbg !745
  br i1 %26, label %27, label %134, !dbg !746

27:                                               ; preds = %25
  %28 = bitcast %struct.stat* %4 to i8*
  %29 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 2
  %30 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  br label %33, !dbg !746

31:                                               ; preds = %22
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #33, !dbg !747
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %32) #33, !dbg !747
  tail call void @usage(i32 noundef 1) #37, !dbg !749
  unreachable, !dbg !749

33:                                               ; preds = %27, %129
  %34 = phi i32 [ %23, %27 ], [ %132, %129 ]
  %35 = phi i1 [ true, %27 ], [ %130, %129 ]
  %36 = sext i32 %34 to i64, !dbg !750
  %37 = getelementptr inbounds i8*, i8** %1, i64 %36, !dbg !750
  %38 = load i8*, i8** %37, align 8, !dbg !750, !tbaa !453
  call void @llvm.dbg.value(metadata i8* %38, metadata !669, metadata !DIExpression()), !dbg !751
  %39 = load i1, i1* @verbose, align 1, !dbg !752
  br i1 %39, label %40, label %44, !dbg !754

40:                                               ; preds = %33
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !755, !tbaa !453
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !756
  %43 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %38) #33, !dbg !757
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %41, i8* noundef %42, i8* noundef %43) #33, !dbg !758
  br label %44, !dbg !758

44:                                               ; preds = %40, %33
  %45 = tail call i32 @rmdir(i8* noundef %38) #33, !dbg !759
  %46 = icmp eq i32 %45, 0, !dbg !760
  br i1 %46, label %84, label %47, !dbg !761

47:                                               ; preds = %44
  %48 = tail call i32* @__errno_location() #36, !dbg !762
  %49 = load i32, i32* %48, align 4, !dbg !762, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %49, metadata !673, metadata !DIExpression()), !dbg !763
  %50 = tail call fastcc i1 @ignorable_failure(i32 noundef %49, i8* noundef %38), !dbg !764
  br i1 %50, label %129, label %51, !dbg !766

51:                                               ; preds = %47
  call void @llvm.dbg.value(metadata i8 0, metadata !676, metadata !DIExpression()), !dbg !763
  %52 = icmp eq i32 %49, 20, !dbg !767
  br i1 %52, label %53, label %81, !dbg !768

53:                                               ; preds = %51
  %54 = tail call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %38, i32 noundef 47) #34, !dbg !769
  call void @llvm.dbg.value(metadata i8* %54, metadata !677, metadata !DIExpression()), !dbg !770
  %55 = icmp eq i8* %54, null, !dbg !771
  br i1 %55, label %81, label %56, !dbg !772

56:                                               ; preds = %53
  %57 = getelementptr inbounds i8, i8* %54, i64 1, !dbg !773
  %58 = load i8, i8* %57, align 1, !dbg !774, !tbaa !549
  %59 = icmp eq i8 %58, 0, !dbg !775
  br i1 %59, label %60, label %81, !dbg !776

60:                                               ; preds = %56
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %28) #33, !dbg !777
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !680, metadata !DIExpression()), !dbg !778
  %61 = call i32 @stat(i8* noundef %38, %struct.stat* noundef nonnull %4) #33, !dbg !779
  call void @llvm.dbg.value(metadata i32 %61, metadata !718, metadata !DIExpression()), !dbg !780
  %62 = icmp eq i32 %61, 0, !dbg !781
  br i1 %62, label %66, label %63, !dbg !781

63:                                               ; preds = %60
  %64 = load i32, i32* %48, align 4, !dbg !782, !tbaa !540
  %65 = icmp eq i32 %64, 20, !dbg !783
  br i1 %65, label %80, label %70, !dbg !784

66:                                               ; preds = %60
  %67 = load i32, i32* %29, align 8, !dbg !785, !tbaa !786
  %68 = and i32 %67, 61440, !dbg !785
  %69 = icmp eq i32 %68, 16384, !dbg !785
  br i1 %69, label %70, label %79, !dbg !790

70:                                               ; preds = %66, %63
  %71 = tail call noalias nonnull i8* @xstrdup(i8* noundef %38) #33, !dbg !791
  call void @llvm.dbg.value(metadata i8* %71, metadata !719, metadata !DIExpression()), !dbg !792
  %72 = tail call i1 @strip_trailing_slashes(i8* noundef %38) #33, !dbg !793
  call void @llvm.dbg.value(metadata i8* %38, metadata !794, metadata !DIExpression()) #33, !dbg !801
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %30) #33, !dbg !804
  call void @llvm.dbg.declare(metadata [1 x i8]* %3, metadata !800, metadata !DIExpression()) #33, !dbg !805
  %73 = call i64 @readlink(i8* noundef nonnull %38, i8* noundef nonnull %30, i64 noundef 1) #33, !dbg !806
  %74 = icmp sgt i64 %73, -1, !dbg !808
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %30) #33, !dbg !809
  br i1 %74, label %75, label %78, !dbg !810

75:                                               ; preds = %70
  %76 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !811
  %77 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef nonnull %71) #33, !dbg !811
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %76, i8* noundef %77) #33, !dbg !811
  call void @llvm.dbg.value(metadata i8 undef, metadata !676, metadata !DIExpression()), !dbg !763
  tail call void @free(i8* noundef nonnull %71) #33, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %28) #33, !dbg !814
  call void @llvm.dbg.value(metadata i8 poison, metadata !676, metadata !DIExpression()), !dbg !763
  br label %129, !dbg !815

78:                                               ; preds = %70
  call void @llvm.dbg.value(metadata i8 undef, metadata !676, metadata !DIExpression()), !dbg !763
  tail call void @free(i8* noundef nonnull %71) #33, !dbg !813
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %28) #33, !dbg !814
  call void @llvm.dbg.value(metadata i8 poison, metadata !676, metadata !DIExpression()), !dbg !763
  br label %81, !dbg !815

79:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i8 undef, metadata !676, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %28) #33, !dbg !814
  call void @llvm.dbg.value(metadata i8 poison, metadata !676, metadata !DIExpression()), !dbg !763
  br label %81, !dbg !815

80:                                               ; preds = %63
  call void @llvm.dbg.value(metadata i8 undef, metadata !676, metadata !DIExpression()), !dbg !763
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %28) #33, !dbg !814
  call void @llvm.dbg.value(metadata i8 poison, metadata !676, metadata !DIExpression()), !dbg !763
  br label %81, !dbg !815

81:                                               ; preds = %78, %53, %56, %51, %80, %79
  %82 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #33, !dbg !816
  %83 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %38) #33, !dbg !816
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %49, i8* noundef %82, i8* noundef %83) #33, !dbg !816
  br label %129, !dbg !816

84:                                               ; preds = %44
  %85 = load i1, i1* @remove_empty_parents, align 1, !dbg !818
  br i1 %85, label %86, label %129, !dbg !820

86:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i8* %38, metadata !821, metadata !DIExpression()) #33, !dbg !835
  call void @llvm.dbg.value(metadata i8 1, metadata !826, metadata !DIExpression()) #33, !dbg !835
  %87 = ptrtoint i8* %38 to i64, !dbg !838
  %88 = tail call i1 @strip_trailing_slashes(i8* noundef %38) #33, !dbg !838
  br label %89, !dbg !839

89:                                               ; preds = %114, %86
  call void @llvm.dbg.value(metadata i8 poison, metadata !826, metadata !DIExpression()) #33, !dbg !835
  %90 = tail call i8* @strrchr(i8* noundef nonnull dereferenceable(1) %38, i32 noundef 47) #34, !dbg !840
  %91 = ptrtoint i8* %90 to i64, !dbg !841
  call void @llvm.dbg.value(metadata i8* %90, metadata !827, metadata !DIExpression()) #33, !dbg !841
  %92 = icmp eq i8* %90, null, !dbg !842
  br i1 %92, label %126, label %93, !dbg !844

93:                                               ; preds = %89
  call void @llvm.dbg.value(metadata i8* %90, metadata !827, metadata !DIExpression()) #33, !dbg !841
  %94 = icmp ugt i8* %90, %38, !dbg !845
  br i1 %94, label %95, label %106, !dbg !846

95:                                               ; preds = %93
  %96 = getelementptr i8, i8* %90, i64 %87, !dbg !847
  %97 = sub i64 0, %91, !dbg !847
  %98 = getelementptr i8, i8* %96, i64 %97, !dbg !847
  br label %99, !dbg !847

99:                                               ; preds = %103, %95
  %100 = phi i8* [ %104, %103 ], [ %90, %95 ]
  call void @llvm.dbg.value(metadata i8* %100, metadata !827, metadata !DIExpression()) #33, !dbg !841
  %101 = load i8, i8* %100, align 1, !dbg !848, !tbaa !549
  %102 = icmp eq i8 %101, 47, !dbg !849
  br i1 %102, label %103, label %106, !dbg !847

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, i8* %100, i64 -1, !dbg !850
  call void @llvm.dbg.value(metadata i8* %104, metadata !827, metadata !DIExpression()) #33, !dbg !841
  %105 = icmp ugt i8* %104, %38, !dbg !845
  br i1 %105, label %99, label %106, !dbg !846, !llvm.loop !851

106:                                              ; preds = %103, %99, %93
  %107 = phi i8* [ %90, %93 ], [ %100, %99 ], [ %98, %103 ], !dbg !841
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !853
  store i8 0, i8* %108, align 1, !dbg !854, !tbaa !549
  %109 = load i1, i1* @verbose, align 1, !dbg !855
  br i1 %109, label %110, label %114, !dbg !857

110:                                              ; preds = %106
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !858, !tbaa !453
  %112 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !859
  %113 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %38) #33, !dbg !860
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %111, i8* noundef %112, i8* noundef %113) #33, !dbg !861
  br label %114, !dbg !861

114:                                              ; preds = %110, %106
  %115 = tail call i32 @rmdir(i8* noundef %38) #33, !dbg !862
  %116 = icmp eq i32 %115, 0, !dbg !863
  call void @llvm.dbg.value(metadata i1 %116, metadata !826, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !835
  %117 = tail call i32* @__errno_location() #36, !dbg !864
  %118 = load i32, i32* %117, align 4, !dbg !864, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %118, metadata !829, metadata !DIExpression()) #33, !dbg !841
  br i1 %116, label %89, label %119, !dbg !865

119:                                              ; preds = %114
  %120 = tail call fastcc i1 @ignorable_failure(i32 noundef %118, i8* noundef %38) #33, !dbg !866
  br i1 %120, label %126, label %121, !dbg !867

121:                                              ; preds = %119
  %122 = icmp eq i32 %118, 20, !dbg !868
  %123 = select i1 %122, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.60, i64 0, i64 0)
  call void @llvm.dbg.value(metadata i8* %123, metadata !830, metadata !DIExpression()) #33, !dbg !870
  %124 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %123, i32 noundef 5) #33, !dbg !871
  %125 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %38) #33, !dbg !871
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %118, i8* noundef %124, i8* noundef %125) #33, !dbg !871
  br label %126

126:                                              ; preds = %89, %119, %121
  %127 = phi i1 [ true, %119 ], [ false, %121 ], [ true, %89 ]
  %128 = and i1 %35, %127, !dbg !872
  call void @llvm.dbg.value(metadata i1 %128, metadata !668, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !722
  br label %129, !dbg !873

129:                                              ; preds = %75, %47, %81, %126, %84
  %130 = phi i1 [ %128, %126 ], [ %35, %84 ], [ %35, %47 ], [ false, %81 ], [ false, %75 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !668, metadata !DIExpression()), !dbg !722
  %131 = load i32, i32* @optind, align 4, !dbg !874, !tbaa !540
  %132 = add nsw i32 %131, 1, !dbg !874
  store i32 %132, i32* @optind, align 4, !dbg !874, !tbaa !540
  %133 = icmp slt i32 %132, %0, !dbg !745
  br i1 %133, label %33, label %134, !dbg !746, !llvm.loop !875

134:                                              ; preds = %129, %25
  %135 = phi i1 [ true, %25 ], [ %130, %129 ]
  %136 = xor i1 %135, true, !dbg !877
  %137 = zext i1 %136 to i32, !dbg !877
  ret i32 %137, !dbg !878
}

; Function Attrs: nounwind
declare !dbg !879 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !882 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !883 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !886 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !892 noundef i32 @rmdir(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc i1 @ignorable_failure(i32 noundef %0, i8* noundef %1) unnamed_addr #12 !dbg !894 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !898, metadata !DIExpression()), !dbg !900
  call void @llvm.dbg.value(metadata i8* %1, metadata !899, metadata !DIExpression()), !dbg !900
  %3 = load i1, i1* @ignore_fail_on_non_empty, align 1, !dbg !901
  br i1 %3, label %4, label %48, !dbg !902

4:                                                ; preds = %2
  switch i32 %0, label %47 [
    i32 39, label %48
    i32 17, label %48
    i32 13, label %5
    i32 1, label %5
    i32 30, label %5
    i32 16, label %5
  ], !dbg !903

5:                                                ; preds = %4, %4, %4, %4
  call void @llvm.dbg.value(metadata i32 -100, metadata !904, metadata !DIExpression()) #33, !dbg !918
  call void @llvm.dbg.value(metadata i8* %1, metadata !909, metadata !DIExpression()) #33, !dbg !918
  %6 = tail call i32 (i32, i8*, i32, ...) @openat(i32 noundef -100, i8* noundef %1, i32 noundef 51456) #33, !dbg !920
  call void @llvm.dbg.value(metadata i32 %6, metadata !917, metadata !DIExpression()) #33, !dbg !918
  %7 = icmp slt i32 %6, 0, !dbg !921
  br i1 %7, label %8, label %11, !dbg !923

8:                                                ; preds = %5
  %9 = tail call i32* @__errno_location() #36, !dbg !924
  %10 = load i32, i32* %9, align 4, !dbg !924, !tbaa !540
  br label %44, !dbg !925

11:                                               ; preds = %5
  %12 = tail call %struct.__dirstream* @fdopendir(i32 noundef %6) #33, !dbg !926
  call void @llvm.dbg.value(metadata %struct.__dirstream* %12, metadata !910, metadata !DIExpression()) #33, !dbg !918
  %13 = icmp eq %struct.__dirstream* %12, null, !dbg !927
  %14 = tail call i32* @__errno_location() #36, !dbg !918
  br i1 %13, label %15, label %18, !dbg !929

15:                                               ; preds = %11
  %16 = load i32, i32* %14, align 4, !dbg !930, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %16, metadata !916, metadata !DIExpression()) #33, !dbg !918
  %17 = tail call i32 @close(i32 noundef %6) #33, !dbg !932
  br label %44, !dbg !933

18:                                               ; preds = %11
  store i32 0, i32* %14, align 4, !dbg !934, !tbaa !540
  call void @llvm.dbg.value(metadata %struct.__dirstream* %12, metadata !935, metadata !DIExpression()) #33, !dbg !952
  %19 = tail call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %12) #33, !dbg !954
  call void @llvm.dbg.value(metadata %struct.dirent* %19, metadata !950, metadata !DIExpression()) #33, !dbg !955
  %20 = icmp eq %struct.dirent* %19, null, !dbg !956
  br i1 %20, label %36, label %21, !dbg !958

21:                                               ; preds = %18, %33
  %22 = phi %struct.dirent* [ %34, %33 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i64 0, i32 4, i64 0, !dbg !959
  call void @llvm.dbg.value(metadata i8* %23, metadata !960, metadata !DIExpression()) #33, !dbg !968
  %24 = load i8, i8* %23, align 1, !dbg !970, !tbaa !549
  %25 = icmp eq i8 %24, 46, !dbg !971
  br i1 %25, label %26, label %36, !dbg !972

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i64 0, i32 4, i64 1, !dbg !973
  %28 = load i8, i8* %27, align 1, !dbg !973, !tbaa !549
  %29 = icmp eq i8 %28, 46, !dbg !974
  %30 = select i1 %29, i64 2, i64 1, !dbg !975
  %31 = getelementptr inbounds %struct.dirent, %struct.dirent* %22, i64 0, i32 4, i64 %30, !dbg !976
  %32 = load i8, i8* %31, align 1, !dbg !976, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %32, metadata !965, metadata !DIExpression()) #33, !dbg !977
  switch i8 %32, label %36 [
    i8 47, label %33
    i8 0, label %33
  ], !dbg !978

33:                                               ; preds = %26, %26
  %34 = tail call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %12) #33, !dbg !954
  call void @llvm.dbg.value(metadata %struct.dirent* %34, metadata !950, metadata !DIExpression()) #33, !dbg !955
  %35 = icmp eq %struct.dirent* %34, null, !dbg !956
  br i1 %35, label %36, label %21, !dbg !958

36:                                               ; preds = %33, %26, %21, %18
  %37 = phi %struct.dirent* [ null, %18 ], [ %22, %26 ], [ %22, %21 ], [ null, %33 ], !dbg !954
  %38 = icmp eq %struct.dirent* %37, null, !dbg !979
  call void @llvm.dbg.value(metadata i1 %38, metadata !915, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !918
  %39 = load i32, i32* %14, align 4, !dbg !980, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %39, metadata !916, metadata !DIExpression()) #33, !dbg !918
  %40 = tail call i32 @closedir(%struct.__dirstream* noundef nonnull %12) #33, !dbg !981
  %41 = icmp eq i32 %39, 0
  %42 = select i1 %38, i1 %41, i1 false, !dbg !982
  %43 = select i1 %42, i32 -1, i32 %39, !dbg !982
  br label %44, !dbg !983

44:                                               ; preds = %8, %15, %36
  %45 = phi i32 [ %10, %8 ], [ %16, %15 ], [ %43, %36 ], !dbg !918
  %46 = icmp eq i32 %45, 0, !dbg !984
  br label %48

47:                                               ; preds = %4
  br label %48, !dbg !985

48:                                               ; preds = %4, %4, %47, %44, %2
  %49 = phi i1 [ false, %2 ], [ true, %4 ], [ %46, %44 ], [ true, %4 ], [ false, %47 ], !dbg !900
  ret i1 %49, !dbg !985
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !986 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(i8* nocapture noundef readonly, i8* nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

declare !dbg !992 i32 @openat(i32 noundef, i8* noundef, i32 noundef, ...) local_unnamed_addr #3

declare !dbg !996 %struct.__dirstream* @fdopendir(i32 noundef) local_unnamed_addr #3

declare !dbg !999 i32 @close(i32 noundef) local_unnamed_addr #3

declare !dbg !1002 %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1006 noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef nonnull %1, ...) local_unnamed_addr #12 !dbg !1009 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1047, metadata !DIExpression()), !dbg !1061
  call void @llvm.dbg.value(metadata i8* %1, metadata !1048, metadata !DIExpression()), !dbg !1061
  %5 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #33, !dbg !1062
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1049, metadata !DIExpression()), !dbg !1063
  %6 = load i8*, i8** @program_name, align 8, !dbg !1064, !tbaa !453
  %7 = tail call i32 @fputs_unlocked(i8* noundef %6, %struct._IO_FILE* noundef nonnull %0), !dbg !1064
  %8 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), %struct._IO_FILE* noundef nonnull %0), !dbg !1065
  call void @llvm.va_start(i8* nonnull %5), !dbg !1066
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1067, metadata !DIExpression()) #33, !dbg !1076
  call void @llvm.dbg.value(metadata i8* %1, metadata !1074, metadata !DIExpression()) #33, !dbg !1076
  %9 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1078
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1078, !noalias !1079
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1078
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef nonnull %0, i32 noundef 1, i8* noundef nonnull %1, %"struct.std::__va_list"* noundef nonnull %3) #33, !dbg !1078
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1078, !noalias !1079
  call void @llvm.va_end(i8* nonnull %5), !dbg !1083
  call void @llvm.dbg.value(metadata i32 10, metadata !1084, metadata !DIExpression()) #33, !dbg !1091
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1090, metadata !DIExpression()) #33, !dbg !1091
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1093
  %12 = load i8*, i8** %11, align 8, !dbg !1093, !tbaa !1094
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1093
  %14 = load i8*, i8** %13, align 8, !dbg !1093, !tbaa !1096
  %15 = icmp ult i8* %12, %14, !dbg !1093
  br i1 %15, label %18, label %16, !dbg !1093, !prof !1097

16:                                               ; preds = %2
  %17 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %0, i32 noundef 10) #33, !dbg !1093
  br label %20, !dbg !1093

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1093
  store i8* %19, i8** %11, align 8, !dbg !1093, !tbaa !1094
  store i8 10, i8* %12, align 1, !dbg !1093, !tbaa !549
  br label %20, !dbg !1093

20:                                               ; preds = %16, %18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #33, !dbg !1098
  ret void, !dbg !1098
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #14

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #14

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #15 !dbg !1099 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1101, metadata !DIExpression()), !dbg !1102
  store i8* %0, i8** @file_name, align 8, !dbg !1103, !tbaa !453
  ret void, !dbg !1104
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !1105 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1109, metadata !DIExpression()), !dbg !1110
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1111, !tbaa !1112
  ret void, !dbg !1114
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1115 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1120, !tbaa !453
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1121
  %3 = icmp eq i32 %2, 0, !dbg !1122
  br i1 %3, label %22, label %4, !dbg !1123

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1124, !tbaa !1112, !range !1125
  %6 = icmp eq i8 %5, 0, !dbg !1124
  br i1 %6, label %11, label %7, !dbg !1126

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1127
  %9 = load i32, i32* %8, align 4, !dbg !1127, !tbaa !540
  %10 = icmp eq i32 %9, 32, !dbg !1128
  br i1 %10, label %22, label %11, !dbg !1129

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.31, i64 0, i64 0), i32 noundef 5) #33, !dbg !1130
  call void @llvm.dbg.value(metadata i8* %12, metadata !1117, metadata !DIExpression()), !dbg !1131
  %13 = load i8*, i8** @file_name, align 8, !dbg !1132, !tbaa !453
  %14 = icmp eq i8* %13, null, !dbg !1132
  %15 = tail call i32* @__errno_location() #36, !dbg !1134
  %16 = load i32, i32* %15, align 4, !dbg !1134, !tbaa !540
  br i1 %14, label %19, label %17, !dbg !1135

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1136
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.32, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1136
  br label %20, !dbg !1136

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.33, i64 0, i64 0), i8* noundef %12) #33, !dbg !1137
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1138, !tbaa !540
  tail call void @_exit(i32 noundef %21) #35, !dbg !1139
  unreachable, !dbg !1139

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1140, !tbaa !453
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1142
  %25 = icmp eq i32 %24, 0, !dbg !1143
  br i1 %25, label %28, label %26, !dbg !1144

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1145, !tbaa !540
  tail call void @_exit(i32 noundef %27) #35, !dbg !1146
  unreachable, !dbg !1146

28:                                               ; preds = %22
  ret void, !dbg !1147
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local i1 @strip_trailing_slashes(i8* noundef %0) local_unnamed_addr #17 !dbg !1148 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1150, metadata !DIExpression()), !dbg !1154
  %2 = tail call i8* @last_component(i8* noundef %0) #34, !dbg !1155
  call void @llvm.dbg.value(metadata i8* %2, metadata !1151, metadata !DIExpression()), !dbg !1154
  %3 = load i8, i8* %2, align 1, !dbg !1156, !tbaa !549
  %4 = icmp eq i8 %3, 0, !dbg !1156
  %5 = select i1 %4, i8* %0, i8* %2, !dbg !1158
  call void @llvm.dbg.value(metadata i8* %5, metadata !1151, metadata !DIExpression()), !dbg !1154
  %6 = tail call i64 @base_len(i8* noundef %5) #34, !dbg !1159
  %7 = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !1160
  call void @llvm.dbg.value(metadata i8* %7, metadata !1152, metadata !DIExpression()), !dbg !1154
  %8 = load i8, i8* %7, align 1, !dbg !1161, !tbaa !549
  %9 = icmp ne i8 %8, 0, !dbg !1162
  call void @llvm.dbg.value(metadata i1 %9, metadata !1153, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1154
  store i8 0, i8* %7, align 1, !dbg !1163, !tbaa !549
  ret i1 %9, !dbg !1164
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1165 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1169, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i32 %1, metadata !1170, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8* %2, metadata !1171, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1172, metadata !DIExpression()), !dbg !1174
  tail call fastcc void @flush_stdout(), !dbg !1175
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1176, !tbaa !453
  %7 = icmp eq void ()* %6, null, !dbg !1176
  br i1 %7, label %9, label %8, !dbg !1178

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1179
  br label %13, !dbg !1179

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1180, !tbaa !453
  %11 = tail call i8* @getprogname() #34, !dbg !1180
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8* noundef %11) #33, !dbg !1180
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1182
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1182
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1182
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1182, !tbaa.struct !1183
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1182
  ret void, !dbg !1184
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1185 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1187, metadata !DIExpression()), !dbg !1188
  call void @llvm.dbg.value(metadata i32 1, metadata !1189, metadata !DIExpression()) #33, !dbg !1192
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1195
  %2 = icmp slt i32 %1, 0, !dbg !1196
  br i1 %2, label %6, label %3, !dbg !1197

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1198, !tbaa !453
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1198
  br label %6, !dbg !1198

6:                                                ; preds = %3, %0
  ret void, !dbg !1199
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1200 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1202, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i32 %1, metadata !1203, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8* %2, metadata !1204, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1205, metadata !DIExpression()), !dbg !1207
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1208, !tbaa !453
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1209
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1210, metadata !DIExpression()) #33, !dbg !1252
  call void @llvm.dbg.value(metadata i8* %2, metadata !1250, metadata !DIExpression()) #33, !dbg !1252
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1254
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1254, !noalias !1255
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1254
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1254, !noalias !1255
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1259, !tbaa !540
  %12 = add i32 %11, 1, !dbg !1259
  store i32 %12, i32* @error_message_count, align 4, !dbg !1259, !tbaa !540
  %13 = icmp eq i32 %1, 0, !dbg !1260
  br i1 %13, label %24, label %14, !dbg !1262

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1263, metadata !DIExpression()) #33, !dbg !1271
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1273
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1273
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1267, metadata !DIExpression()) #33, !dbg !1274
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1275
  call void @llvm.dbg.value(metadata i8* %16, metadata !1266, metadata !DIExpression()) #33, !dbg !1271
  %17 = icmp eq i8* %16, null, !dbg !1276
  br i1 %17, label %18, label %20, !dbg !1278

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.62, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.63, i64 0, i64 0), i32 noundef 5) #33, !dbg !1279
  call void @llvm.dbg.value(metadata i8* %19, metadata !1266, metadata !DIExpression()) #33, !dbg !1271
  br label %20, !dbg !1280

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1271
  call void @llvm.dbg.value(metadata i8* %21, metadata !1266, metadata !DIExpression()) #33, !dbg !1271
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1281, !tbaa !453
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.64, i64 0, i64 0), i8* noundef %21) #33, !dbg !1281
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1282
  br label %24, !dbg !1283

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1284, !tbaa !453
  call void @llvm.dbg.value(metadata i32 10, metadata !1285, metadata !DIExpression()) #33, !dbg !1291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1290, metadata !DIExpression()) #33, !dbg !1291
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1293
  %27 = load i8*, i8** %26, align 8, !dbg !1293, !tbaa !1094
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1293
  %29 = load i8*, i8** %28, align 8, !dbg !1293, !tbaa !1096
  %30 = icmp ult i8* %27, %29, !dbg !1293
  br i1 %30, label %33, label %31, !dbg !1293, !prof !1097

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1293
  br label %35, !dbg !1293

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1293
  store i8* %34, i8** %26, align 8, !dbg !1293, !tbaa !1094
  store i8 10, i8* %27, align 1, !dbg !1293, !tbaa !549
  br label %35, !dbg !1293

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1294, !tbaa !453
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1294
  %38 = icmp eq i32 %0, 0, !dbg !1295
  br i1 %38, label %40, label %39, !dbg !1297

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1298
  unreachable, !dbg !1298

40:                                               ; preds = %35
  ret void, !dbg !1299
}

; Function Attrs: nounwind
declare !dbg !1300 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1304 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1307 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1310 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %1, metadata !1315, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8* %2, metadata !1316, metadata !DIExpression()), !dbg !1318
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1319
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1319
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1317, metadata !DIExpression()), !dbg !1320
  call void @llvm.va_start(i8* nonnull %6), !dbg !1321
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1322
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1322
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1322, !tbaa.struct !1183
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #38, !dbg !1322
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1322
  call void @llvm.va_end(i8* nonnull %6), !dbg !1323
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1324
  ret void, !dbg !1324
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !181 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !199, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %1, metadata !200, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %2, metadata !201, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %3, metadata !202, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %4, metadata !203, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !204, metadata !DIExpression()), !dbg !1326
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1327, !tbaa !540
  %9 = icmp eq i32 %8, 0, !dbg !1327
  br i1 %9, label %24, label %10, !dbg !1329

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1330, !tbaa !540
  %12 = icmp eq i32 %11, %3, !dbg !1333
  br i1 %12, label %13, label %23, !dbg !1334

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1335, !tbaa !453
  %15 = icmp eq i8* %14, %2, !dbg !1336
  br i1 %15, label %39, label %16, !dbg !1337

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1338
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1339
  br i1 %19, label %20, label %23, !dbg !1339

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1340
  %22 = icmp eq i32 %21, 0, !dbg !1341
  br i1 %22, label %39, label %23, !dbg !1342

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1343, !tbaa !453
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1344, !tbaa !540
  br label %24, !dbg !1345

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1346
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1347, !tbaa !453
  %26 = icmp eq void ()* %25, null, !dbg !1347
  br i1 %26, label %28, label %27, !dbg !1349

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1350
  br label %32, !dbg !1350

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1351, !tbaa !453
  %30 = tail call i8* @getprogname() #34, !dbg !1351
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.67, i64 0, i64 0), i8* noundef %30) #33, !dbg !1351
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1353, !tbaa !453
  %34 = icmp eq i8* %2, null, !dbg !1353
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.68, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.69, i64 0, i64 0), !dbg !1353
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1353
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1354
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1354
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1354
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1354, !tbaa.struct !1183
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1354
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1354
  br label %39, !dbg !1355

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1355
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1356 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1360, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i32 %1, metadata !1361, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %2, metadata !1362, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i32 %3, metadata !1363, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %4, metadata !1364, metadata !DIExpression()), !dbg !1366
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1367
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1367
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1365, metadata !DIExpression()), !dbg !1368
  call void @llvm.va_start(i8* nonnull %8), !dbg !1369
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1370
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1370
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1370, !tbaa.struct !1183
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #38, !dbg !1370
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1370
  call void @llvm.va_end(i8* nonnull %8), !dbg !1371
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1372
  ret void, !dbg !1372
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1373 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1376, !tbaa !453
  ret i8* %1, !dbg !1377
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #17 !dbg !1378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1380, metadata !DIExpression()), !dbg !1383
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1384
  call void @llvm.dbg.value(metadata i8* %2, metadata !1381, metadata !DIExpression()), !dbg !1383
  %3 = icmp eq i8* %2, null, !dbg !1385
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1385
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1385
  call void @llvm.dbg.value(metadata i8* %5, metadata !1382, metadata !DIExpression()), !dbg !1383
  %6 = ptrtoint i8* %5 to i64, !dbg !1386
  %7 = ptrtoint i8* %0 to i64, !dbg !1386
  %8 = sub i64 %6, %7, !dbg !1386
  %9 = icmp sgt i64 %8, 6, !dbg !1388
  br i1 %9, label %10, label %19, !dbg !1389

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1390
  call void @llvm.dbg.value(metadata i8* %11, metadata !1391, metadata !DIExpression()) #33, !dbg !1398
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), metadata !1396, metadata !DIExpression()) #33, !dbg !1398
  call void @llvm.dbg.value(metadata i64 7, metadata !1397, metadata !DIExpression()) #33, !dbg !1398
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i64 7) #33, !dbg !1400
  %13 = icmp eq i32 %12, 0, !dbg !1401
  br i1 %13, label %14, label %19, !dbg !1402

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1380, metadata !DIExpression()), !dbg !1383
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i64 noundef 3) #34, !dbg !1403
  %16 = icmp eq i32 %15, 0, !dbg !1406
  %17 = select i1 %16, i64 3, i64 0, !dbg !1407
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1407
  br label %19, !dbg !1407

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1383
  call void @llvm.dbg.value(metadata i8* %21, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.value(metadata i8* %20, metadata !1380, metadata !DIExpression()), !dbg !1383
  store i8* %20, i8** @program_name, align 8, !dbg !1408, !tbaa !453
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1409, !tbaa !453
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1410, !tbaa !453
  ret void, !dbg !1411
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !222 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !229, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.value(metadata i8* %1, metadata !230, metadata !DIExpression()), !dbg !1412
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1413
  call void @llvm.dbg.value(metadata i8* %5, metadata !231, metadata !DIExpression()), !dbg !1412
  %6 = icmp eq i8* %5, %0, !dbg !1414
  br i1 %6, label %7, label %17, !dbg !1416

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1417
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1417
  %10 = bitcast i64* %4 to i8*, !dbg !1418
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1418
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !237, metadata !DIExpression()), !dbg !1419
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1420, metadata !DIExpression()) #33, !dbg !1427
  call void @llvm.dbg.value(metadata i8* %10, metadata !1429, metadata !DIExpression()) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i32 0, metadata !1435, metadata !DIExpression()) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i64 8, metadata !1436, metadata !DIExpression()) #33, !dbg !1437
  store i64 0, i64* %4, align 8, !dbg !1439
  call void @llvm.dbg.value(metadata i32* %3, metadata !232, metadata !DIExpression(DW_OP_deref)), !dbg !1412
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1440
  %12 = icmp eq i64 %11, 2, !dbg !1442
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !232, metadata !DIExpression()), !dbg !1412
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1443
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1444
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1444
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1412
  ret i8* %18, !dbg !1444
}

; Function Attrs: nounwind
declare !dbg !1445 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1451 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1456, metadata !DIExpression()), !dbg !1459
  %2 = tail call i32* @__errno_location() #36, !dbg !1460
  %3 = load i32, i32* %2, align 4, !dbg !1460, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %3, metadata !1457, metadata !DIExpression()), !dbg !1459
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1461
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1461
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1461
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #39, !dbg !1462
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1462
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1458, metadata !DIExpression()), !dbg !1459
  store i32 %3, i32* %2, align 4, !dbg !1463, !tbaa !540
  ret %struct.quoting_options* %8, !dbg !1464
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !1465 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1471, metadata !DIExpression()), !dbg !1472
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1473
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1473
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1474
  %5 = load i32, i32* %4, align 8, !dbg !1474, !tbaa !1475
  ret i32 %5, !dbg !1477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #15 !dbg !1478 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1482, metadata !DIExpression()), !dbg !1484
  call void @llvm.dbg.value(metadata i32 %1, metadata !1483, metadata !DIExpression()), !dbg !1484
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1485
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1485
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1486
  store i32 %1, i32* %5, align 8, !dbg !1487, !tbaa !1475
  ret void, !dbg !1488
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1489 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1493, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %1, metadata !1494, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i32 %2, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i8 %1, metadata !1496, metadata !DIExpression()), !dbg !1501
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1502
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1502
  %6 = lshr i8 %1, 5, !dbg !1503
  %7 = zext i8 %6 to i64, !dbg !1503
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1504
  call void @llvm.dbg.value(metadata i32* %8, metadata !1497, metadata !DIExpression()), !dbg !1501
  %9 = and i8 %1, 31, !dbg !1505
  %10 = zext i8 %9 to i32, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %10, metadata !1499, metadata !DIExpression()), !dbg !1501
  %11 = load i32, i32* %8, align 4, !dbg !1506, !tbaa !540
  %12 = lshr i32 %11, %10, !dbg !1507
  %13 = and i32 %12, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %13, metadata !1500, metadata !DIExpression()), !dbg !1501
  %14 = and i32 %2, 1, !dbg !1509
  %15 = xor i32 %13, %14, !dbg !1510
  %16 = shl i32 %15, %10, !dbg !1511
  %17 = xor i32 %16, %11, !dbg !1512
  store i32 %17, i32* %8, align 4, !dbg !1512, !tbaa !540
  ret i32 %13, !dbg !1513
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1514 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1518, metadata !DIExpression()), !dbg !1521
  call void @llvm.dbg.value(metadata i32 %1, metadata !1519, metadata !DIExpression()), !dbg !1521
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1522
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1524
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1518, metadata !DIExpression()), !dbg !1521
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1525
  %6 = load i32, i32* %5, align 4, !dbg !1525, !tbaa !1526
  call void @llvm.dbg.value(metadata i32 %6, metadata !1520, metadata !DIExpression()), !dbg !1521
  store i32 %1, i32* %5, align 4, !dbg !1527, !tbaa !1526
  ret i32 %6, !dbg !1528
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1529 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1533, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %1, metadata !1534, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %2, metadata !1535, metadata !DIExpression()), !dbg !1536
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1537
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1539
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1533, metadata !DIExpression()), !dbg !1536
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1540
  store i32 10, i32* %6, align 8, !dbg !1541, !tbaa !1475
  %7 = icmp ne i8* %1, null, !dbg !1542
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1544
  br i1 %9, label %11, label %10, !dbg !1544

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1545
  unreachable, !dbg !1545

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1546
  store i8* %1, i8** %12, align 8, !dbg !1547, !tbaa !1548
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1549
  store i8* %2, i8** %13, align 8, !dbg !1550, !tbaa !1551
  ret void, !dbg !1552
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1553 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1557, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %1, metadata !1558, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i8* %2, metadata !1559, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata i64 %3, metadata !1560, metadata !DIExpression()), !dbg !1565
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1561, metadata !DIExpression()), !dbg !1565
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1566
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1566
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1562, metadata !DIExpression()), !dbg !1565
  %8 = tail call i32* @__errno_location() #36, !dbg !1567
  %9 = load i32, i32* %8, align 4, !dbg !1567, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %9, metadata !1563, metadata !DIExpression()), !dbg !1565
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1568
  %11 = load i32, i32* %10, align 8, !dbg !1568, !tbaa !1475
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1569
  %13 = load i32, i32* %12, align 4, !dbg !1569, !tbaa !1526
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1570
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1571
  %16 = load i8*, i8** %15, align 8, !dbg !1571, !tbaa !1548
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1572
  %18 = load i8*, i8** %17, align 8, !dbg !1572, !tbaa !1551
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1573
  call void @llvm.dbg.value(metadata i64 %19, metadata !1564, metadata !DIExpression()), !dbg !1565
  store i32 %9, i32* %8, align 4, !dbg !1574, !tbaa !540
  ret i64 %19, !dbg !1575
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1576 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1582, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %1, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %2, metadata !1584, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %3, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %4, metadata !1586, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %5, metadata !1587, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32* %6, metadata !1588, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %7, metadata !1589, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %8, metadata !1590, metadata !DIExpression()), !dbg !1644
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1645
  %18 = icmp eq i64 %17, 1, !dbg !1646
  call void @llvm.dbg.value(metadata i1 %18, metadata !1591, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* null, metadata !1594, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1595, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %5, metadata !1597, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1599, metadata !DIExpression()), !dbg !1644
  %19 = and i32 %5, 2, !dbg !1647
  %20 = icmp ne i32 %19, 0, !dbg !1647
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
  br label %36, !dbg !1647

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1648
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1649
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1650
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %43, metadata !1595, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %42, metadata !1594, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %41, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %40, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %39, metadata !1590, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %38, metadata !1589, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %37, metadata !1586, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.label(metadata !1637), !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1644
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
  ], !dbg !1652

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1644
  br label %111, !dbg !1653

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 5, metadata !1586, metadata !DIExpression()), !dbg !1644
  br i1 %45, label %111, label %51, !dbg !1653

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1654
  br i1 %52, label %111, label %53, !dbg !1658

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1654, !tbaa !549
  br label %111, !dbg !1654

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), metadata !299, metadata !DIExpression()) #33, !dbg !1659
  call void @llvm.dbg.value(metadata i32 %37, metadata !300, metadata !DIExpression()) #33, !dbg !1659
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 noundef 5) #33, !dbg !1663
  call void @llvm.dbg.value(metadata i8* %55, metadata !301, metadata !DIExpression()) #33, !dbg !1659
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), !dbg !1664
  br i1 %56, label %57, label %66, !dbg !1666

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1667
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1668
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !303, metadata !DIExpression()) #33, !dbg !1669
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1670, metadata !DIExpression()) #33, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %23, metadata !1678, metadata !DIExpression()) #33, !dbg !1683
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()) #33, !dbg !1683
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()) #33, !dbg !1683
  store i64 0, i64* %13, align 8, !dbg !1685
  call void @llvm.dbg.value(metadata i32* %12, metadata !302, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1659
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1686
  %59 = icmp eq i64 %58, 3, !dbg !1688
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !302, metadata !DIExpression()) #33, !dbg !1659
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1689
  %63 = icmp eq i32 %37, 9, !dbg !1689
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !1689
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1689
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1690
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1690
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1659
  call void @llvm.dbg.value(metadata i8* %67, metadata !1589, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), metadata !299, metadata !DIExpression()) #33, !dbg !1691
  call void @llvm.dbg.value(metadata i32 %37, metadata !300, metadata !DIExpression()) #33, !dbg !1691
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 noundef 5) #33, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %68, metadata !301, metadata !DIExpression()) #33, !dbg !1691
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !1694
  br i1 %69, label %70, label %79, !dbg !1695

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1696
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1697
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !303, metadata !DIExpression()) #33, !dbg !1698
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1670, metadata !DIExpression()) #33, !dbg !1699
  call void @llvm.dbg.value(metadata i8* %26, metadata !1678, metadata !DIExpression()) #33, !dbg !1701
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()) #33, !dbg !1701
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()) #33, !dbg !1701
  store i64 0, i64* %11, align 8, !dbg !1703
  call void @llvm.dbg.value(metadata i32* %10, metadata !302, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1691
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1704
  %72 = icmp eq i64 %71, 3, !dbg !1705
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !302, metadata !DIExpression()) #33, !dbg !1691
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1706
  %76 = icmp eq i32 %37, 9, !dbg !1706
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !1706
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1706
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1707
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1707
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1590, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %80, metadata !1589, metadata !DIExpression()), !dbg !1644
  br i1 %45, label %97, label %82, !dbg !1708

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1601, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 0, metadata !1592, metadata !DIExpression()), !dbg !1644
  %83 = load i8, i8* %80, align 1, !dbg !1710, !tbaa !549
  %84 = icmp eq i8 %83, 0, !dbg !1712
  br i1 %84, label %97, label %85, !dbg !1712

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1601, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i64 %88, metadata !1592, metadata !DIExpression()), !dbg !1644
  %89 = icmp ult i64 %88, %48, !dbg !1713
  br i1 %89, label %90, label %92, !dbg !1716

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1713
  store i8 %86, i8* %91, align 1, !dbg !1713, !tbaa !549
  br label %92, !dbg !1713

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1716
  call void @llvm.dbg.value(metadata i64 %93, metadata !1592, metadata !DIExpression()), !dbg !1644
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1717
  call void @llvm.dbg.value(metadata i8* %94, metadata !1601, metadata !DIExpression()), !dbg !1709
  %95 = load i8, i8* %94, align 1, !dbg !1710, !tbaa !549
  %96 = icmp eq i8 %95, 0, !dbg !1712
  br i1 %96, label %97, label %85, !dbg !1712, !llvm.loop !1718

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %98, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %81, metadata !1594, metadata !DIExpression()), !dbg !1644
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1721
  call void @llvm.dbg.value(metadata i64 %99, metadata !1595, metadata !DIExpression()), !dbg !1644
  br label %111, !dbg !1722

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1596, metadata !DIExpression()), !dbg !1644
  br label %102, !dbg !1723

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1644
  br i1 %45, label %102, label %105, !dbg !1724

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1644
  br label %111, !dbg !1725

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 2, metadata !1586, metadata !DIExpression()), !dbg !1644
  br i1 %45, label %111, label %105, !dbg !1725

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1726
  br i1 %107, label %111, label %108, !dbg !1730

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1726, !tbaa !549
  br label %111, !dbg !1726

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1644
  br label %111, !dbg !1731

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1732
  unreachable, !dbg !1732

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1720
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %102 ], !dbg !1644
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1644
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1597, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1596, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %117, metadata !1595, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %116, metadata !1594, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %115, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %114, metadata !1590, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8* %113, metadata !1589, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i32 %112, metadata !1586, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 0, metadata !1606, metadata !DIExpression()), !dbg !1733
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
  br label %132, !dbg !1734

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1720
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1648
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1733
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %139, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %135, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %134, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %133, metadata !1585, metadata !DIExpression()), !dbg !1644
  %141 = icmp eq i64 %133, -1, !dbg !1735
  br i1 %141, label %142, label %146, !dbg !1736

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1737
  %144 = load i8, i8* %143, align 1, !dbg !1737, !tbaa !549
  %145 = icmp eq i8 %144, 0, !dbg !1738
  br i1 %145, label %596, label %148, !dbg !1739

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1740
  br i1 %147, label %596, label %148, !dbg !1739

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 0, metadata !1612, metadata !DIExpression()), !dbg !1741
  br i1 %123, label %149, label %163, !dbg !1742

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1744
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1745
  br i1 %151, label %152, label %154, !dbg !1745

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1746
  call void @llvm.dbg.value(metadata i64 %153, metadata !1585, metadata !DIExpression()), !dbg !1644
  br label %154, !dbg !1747

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1747
  call void @llvm.dbg.value(metadata i64 %155, metadata !1585, metadata !DIExpression()), !dbg !1644
  %156 = icmp ugt i64 %150, %155, !dbg !1748
  br i1 %156, label %163, label %157, !dbg !1749

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1750
  call void @llvm.dbg.value(metadata i8* %158, metadata !1751, metadata !DIExpression()) #33, !dbg !1756
  call void @llvm.dbg.value(metadata i8* %116, metadata !1754, metadata !DIExpression()) #33, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %117, metadata !1755, metadata !DIExpression()) #33, !dbg !1756
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1758
  %160 = icmp ne i32 %159, 0, !dbg !1759
  %161 = or i1 %160, %125, !dbg !1760
  %162 = xor i1 %160, true, !dbg !1760
  br i1 %161, label %163, label %647, !dbg !1760

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %164, metadata !1585, metadata !DIExpression()), !dbg !1644
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1761
  %167 = load i8, i8* %166, align 1, !dbg !1761, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %167, metadata !1613, metadata !DIExpression()), !dbg !1741
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
  ], !dbg !1762

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1763

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1764

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1741
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1768
  br i1 %171, label %188, label %172, !dbg !1768

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1770
  br i1 %173, label %174, label %176, !dbg !1774

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1770
  store i8 39, i8* %175, align 1, !dbg !1770, !tbaa !549
  br label %176, !dbg !1770

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1774
  call void @llvm.dbg.value(metadata i64 %177, metadata !1592, metadata !DIExpression()), !dbg !1644
  %178 = icmp ult i64 %177, %140, !dbg !1775
  br i1 %178, label %179, label %181, !dbg !1778

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1775
  store i8 36, i8* %180, align 1, !dbg !1775, !tbaa !549
  br label %181, !dbg !1775

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1778
  call void @llvm.dbg.value(metadata i64 %182, metadata !1592, metadata !DIExpression()), !dbg !1644
  %183 = icmp ult i64 %182, %140, !dbg !1779
  br i1 %183, label %184, label %186, !dbg !1782

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1779
  store i8 39, i8* %185, align 1, !dbg !1779, !tbaa !549
  br label %186, !dbg !1779

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %187, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %188, !dbg !1783

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1644
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %189, metadata !1592, metadata !DIExpression()), !dbg !1644
  %191 = icmp ult i64 %189, %140, !dbg !1784
  br i1 %191, label %192, label %194, !dbg !1787

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1784
  store i8 92, i8* %193, align 1, !dbg !1784, !tbaa !549
  br label %194, !dbg !1784

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %195, metadata !1592, metadata !DIExpression()), !dbg !1644
  br i1 %120, label %196, label %499, !dbg !1788

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1790
  %198 = icmp ult i64 %197, %164, !dbg !1791
  br i1 %198, label %199, label %456, !dbg !1792

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1793
  %201 = load i8, i8* %200, align 1, !dbg !1793, !tbaa !549
  %202 = add i8 %201, -48, !dbg !1794
  %203 = icmp ult i8 %202, 10, !dbg !1794
  br i1 %203, label %204, label %456, !dbg !1794

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1795
  br i1 %205, label %206, label %208, !dbg !1799

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1795
  store i8 48, i8* %207, align 1, !dbg !1795, !tbaa !549
  br label %208, !dbg !1795

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %209, metadata !1592, metadata !DIExpression()), !dbg !1644
  %210 = icmp ult i64 %209, %140, !dbg !1800
  br i1 %210, label %211, label %213, !dbg !1803

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1800
  store i8 48, i8* %212, align 1, !dbg !1800, !tbaa !549
  br label %213, !dbg !1800

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %214, metadata !1592, metadata !DIExpression()), !dbg !1644
  br label %456, !dbg !1804

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1805

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1806

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1807

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1809

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1811
  %221 = icmp ult i64 %220, %164, !dbg !1812
  br i1 %221, label %222, label %456, !dbg !1813

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1814
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1815
  %225 = load i8, i8* %224, align 1, !dbg !1815, !tbaa !549
  %226 = icmp eq i8 %225, 63, !dbg !1816
  br i1 %226, label %227, label %456, !dbg !1817

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1818
  %229 = load i8, i8* %228, align 1, !dbg !1818, !tbaa !549
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
  ], !dbg !1819

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1820

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %220, metadata !1606, metadata !DIExpression()), !dbg !1733
  %232 = icmp ult i64 %134, %140, !dbg !1822
  br i1 %232, label %233, label %235, !dbg !1825

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1822
  store i8 63, i8* %234, align 1, !dbg !1822, !tbaa !549
  br label %235, !dbg !1822

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %236, metadata !1592, metadata !DIExpression()), !dbg !1644
  %237 = icmp ult i64 %236, %140, !dbg !1826
  br i1 %237, label %238, label %240, !dbg !1829

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1826
  store i8 34, i8* %239, align 1, !dbg !1826, !tbaa !549
  br label %240, !dbg !1826

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1829
  call void @llvm.dbg.value(metadata i64 %241, metadata !1592, metadata !DIExpression()), !dbg !1644
  %242 = icmp ult i64 %241, %140, !dbg !1830
  br i1 %242, label %243, label %245, !dbg !1833

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1830
  store i8 34, i8* %244, align 1, !dbg !1830, !tbaa !549
  br label %245, !dbg !1830

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1833
  call void @llvm.dbg.value(metadata i64 %246, metadata !1592, metadata !DIExpression()), !dbg !1644
  %247 = icmp ult i64 %246, %140, !dbg !1834
  br i1 %247, label %248, label %250, !dbg !1837

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1834
  store i8 63, i8* %249, align 1, !dbg !1834, !tbaa !549
  br label %250, !dbg !1834

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %251, metadata !1592, metadata !DIExpression()), !dbg !1644
  br label %456, !dbg !1838

252:                                              ; preds = %163
  br label %263, !dbg !1839

253:                                              ; preds = %163
  br label %263, !dbg !1840

254:                                              ; preds = %163
  br label %261, !dbg !1841

255:                                              ; preds = %163
  br label %261, !dbg !1842

256:                                              ; preds = %163
  br label %263, !dbg !1843

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1844

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1845

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1848

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1850

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1851
  call void @llvm.dbg.label(metadata !1638), !dbg !1852
  br i1 %128, label %263, label %638, !dbg !1853

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1851
  call void @llvm.dbg.label(metadata !1640), !dbg !1855
  br i1 %118, label %510, label %467, !dbg !1856

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1857

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1858, !tbaa !549
  %268 = icmp eq i8 %267, 0, !dbg !1860
  br i1 %268, label %269, label %456, !dbg !1861

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1862
  br i1 %270, label %271, label %456, !dbg !1864

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1741
  br label %272, !dbg !1865

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1612, metadata !DIExpression()), !dbg !1741
  br i1 %126, label %274, label %456, !dbg !1866

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1868

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1612, metadata !DIExpression()), !dbg !1741
  br i1 %126, label %276, label %456, !dbg !1869

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1870

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1873
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1875
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1875
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %282, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %281, metadata !1593, metadata !DIExpression()), !dbg !1644
  %283 = icmp ult i64 %134, %282, !dbg !1876
  br i1 %283, label %284, label %286, !dbg !1879

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1876
  store i8 39, i8* %285, align 1, !dbg !1876, !tbaa !549
  br label %286, !dbg !1876

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i64 %287, metadata !1592, metadata !DIExpression()), !dbg !1644
  %288 = icmp ult i64 %287, %282, !dbg !1880
  br i1 %288, label %289, label %291, !dbg !1883

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1880
  store i8 92, i8* %290, align 1, !dbg !1880, !tbaa !549
  br label %291, !dbg !1880

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %292, metadata !1592, metadata !DIExpression()), !dbg !1644
  %293 = icmp ult i64 %292, %282, !dbg !1884
  br i1 %293, label %294, label %296, !dbg !1887

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1884
  store i8 39, i8* %295, align 1, !dbg !1884, !tbaa !549
  br label %296, !dbg !1884

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %297, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %456, !dbg !1888

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1889

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1614, metadata !DIExpression()), !dbg !1890
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1891
  %301 = load i16*, i16** %300, align 8, !dbg !1891, !tbaa !453
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1891
  %304 = load i16, i16* %303, align 2, !dbg !1891, !tbaa !574
  %305 = and i16 %304, 16384, !dbg !1891
  %306 = icmp ne i16 %305, 0, !dbg !1893
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %349, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i1 %350, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  br label %352, !dbg !1894

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1895
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1618, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1670, metadata !DIExpression()) #33, !dbg !1897
  call void @llvm.dbg.value(metadata i8* %32, metadata !1678, metadata !DIExpression()) #33, !dbg !1899
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()) #33, !dbg !1899
  call void @llvm.dbg.value(metadata i64 8, metadata !1682, metadata !DIExpression()) #33, !dbg !1899
  store i64 0, i64* %14, align 8, !dbg !1901
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1617, metadata !DIExpression()), !dbg !1890
  %308 = icmp eq i64 %164, -1, !dbg !1902
  br i1 %308, label %309, label %311, !dbg !1904

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %310, metadata !1585, metadata !DIExpression()), !dbg !1644
  br label %311, !dbg !1906

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1741
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1907
  %313 = sub i64 %312, %139, !dbg !1908
  call void @llvm.dbg.value(metadata i32* %16, metadata !1621, metadata !DIExpression(DW_OP_deref)), !dbg !1909
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %314, metadata !1625, metadata !DIExpression()), !dbg !1909
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1911

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  %316 = icmp ugt i64 %312, %139, !dbg !1912
  br i1 %316, label %319, label %317, !dbg !1914

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %349, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i1 %350, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  br label %352, !dbg !1894

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1890
  br label %346, !dbg !1917

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1614, metadata !DIExpression()), !dbg !1890
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1919
  %323 = load i8, i8* %322, align 1, !dbg !1919, !tbaa !549
  %324 = icmp eq i8 %323, 0, !dbg !1914
  br i1 %324, label %348, label %325, !dbg !1920

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %326, metadata !1614, metadata !DIExpression()), !dbg !1890
  %327 = add i64 %326, %139, !dbg !1922
  %328 = icmp eq i64 %326, %313, !dbg !1912
  br i1 %328, label %348, label %319, !dbg !1914, !llvm.loop !1923

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1924
  call void @llvm.dbg.value(metadata i64 1, metadata !1626, metadata !DIExpression()), !dbg !1925
  br i1 %331, label %332, label %340, !dbg !1924

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1626, metadata !DIExpression()), !dbg !1925
  %334 = add i64 %333, %139, !dbg !1926
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1928
  %336 = load i8, i8* %335, align 1, !dbg !1928, !tbaa !549
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1929

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64 %338, metadata !1626, metadata !DIExpression()), !dbg !1925
  %339 = icmp eq i64 %338, %314, !dbg !1931
  br i1 %339, label %340, label %332, !dbg !1932, !llvm.loop !1933

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1935, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %341, metadata !1621, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i32 %341, metadata !1937, metadata !DIExpression()) #33, !dbg !1945
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1947
  %343 = icmp ne i32 %342, 0, !dbg !1948
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %314, metadata !1614, metadata !DIExpression()), !dbg !1890
  br label %348, !dbg !1949

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1916
  call void @llvm.dbg.label(metadata !1643), !dbg !1950
  %345 = select i1 %118, i32 4, i32 2, !dbg !1951
  br label %643, !dbg !1951

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %349, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i1 %350, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  br label %352, !dbg !1894

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1617, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 0, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1915
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1916
  call void @llvm.dbg.value(metadata i64 %349, metadata !1614, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i64 %312, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i1 %350, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  %351 = icmp ugt i64 %349, 1, !dbg !1953
  br i1 %351, label %357, label %352, !dbg !1894

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1954
  br i1 %356, label %456, label %357, !dbg !1954

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %361, metadata !1634, metadata !DIExpression()), !dbg !1956
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1957

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1644
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1733
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1958
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1741
  call void @llvm.dbg.value(metadata i8 %369, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %368, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %366, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %364, metadata !1592, metadata !DIExpression()), !dbg !1644
  br i1 %362, label %414, label %370, !dbg !1959

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1964

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1741
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1967
  br i1 %372, label %389, label %373, !dbg !1967

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1969
  br i1 %374, label %375, label %377, !dbg !1973

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1969
  store i8 39, i8* %376, align 1, !dbg !1969, !tbaa !549
  br label %377, !dbg !1969

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1973
  call void @llvm.dbg.value(metadata i64 %378, metadata !1592, metadata !DIExpression()), !dbg !1644
  %379 = icmp ult i64 %378, %140, !dbg !1974
  br i1 %379, label %380, label %382, !dbg !1977

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1974
  store i8 36, i8* %381, align 1, !dbg !1974, !tbaa !549
  br label %382, !dbg !1974

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %383, metadata !1592, metadata !DIExpression()), !dbg !1644
  %384 = icmp ult i64 %383, %140, !dbg !1978
  br i1 %384, label %385, label %387, !dbg !1981

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1978
  store i8 39, i8* %386, align 1, !dbg !1978, !tbaa !549
  br label %387, !dbg !1978

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1981
  call void @llvm.dbg.value(metadata i64 %388, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %389, !dbg !1982

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1644
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %390, metadata !1592, metadata !DIExpression()), !dbg !1644
  %392 = icmp ult i64 %390, %140, !dbg !1983
  br i1 %392, label %393, label %395, !dbg !1986

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1983
  store i8 92, i8* %394, align 1, !dbg !1983, !tbaa !549
  br label %395, !dbg !1983

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %396, metadata !1592, metadata !DIExpression()), !dbg !1644
  %397 = icmp ult i64 %396, %140, !dbg !1987
  br i1 %397, label %398, label %402, !dbg !1990

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1987
  %400 = or i8 %399, 48, !dbg !1987
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1987
  store i8 %400, i8* %401, align 1, !dbg !1987, !tbaa !549
  br label %402, !dbg !1987

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %403, metadata !1592, metadata !DIExpression()), !dbg !1644
  %404 = icmp ult i64 %403, %140, !dbg !1991
  br i1 %404, label %405, label %410, !dbg !1994

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1991
  %407 = and i8 %406, 7, !dbg !1991
  %408 = or i8 %407, 48, !dbg !1991
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1991
  store i8 %408, i8* %409, align 1, !dbg !1991, !tbaa !549
  br label %410, !dbg !1991

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %411, metadata !1592, metadata !DIExpression()), !dbg !1644
  %412 = and i8 %369, 7, !dbg !1995
  %413 = or i8 %412, 48, !dbg !1996
  call void @llvm.dbg.value(metadata i8 %413, metadata !1613, metadata !DIExpression()), !dbg !1741
  br label %421, !dbg !1997

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1998

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1999
  br i1 %416, label %417, label %419, !dbg !2004

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1999
  store i8 92, i8* %418, align 1, !dbg !1999, !tbaa !549
  br label %419, !dbg !1999

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %420, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1741
  br label %421, !dbg !2005

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1644
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1741
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1741
  call void @llvm.dbg.value(metadata i8 %426, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %425, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %422, metadata !1592, metadata !DIExpression()), !dbg !1644
  %427 = add i64 %366, 1, !dbg !2006
  %428 = icmp ugt i64 %361, %427, !dbg !2008
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2009

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2010
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2010
  br i1 %432, label %433, label %444, !dbg !2010

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2013
  br i1 %434, label %435, label %437, !dbg !2017

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2013
  store i8 39, i8* %436, align 1, !dbg !2013, !tbaa !549
  br label %437, !dbg !2013

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %438, metadata !1592, metadata !DIExpression()), !dbg !1644
  %439 = icmp ult i64 %438, %140, !dbg !2018
  br i1 %439, label %440, label %442, !dbg !2021

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2018
  store i8 39, i8* %441, align 1, !dbg !2018, !tbaa !549
  br label %442, !dbg !2018

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %443, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %444, !dbg !2022

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2023
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %445, metadata !1592, metadata !DIExpression()), !dbg !1644
  %447 = icmp ult i64 %445, %140, !dbg !2024
  br i1 %447, label %448, label %450, !dbg !2027

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2024
  store i8 %426, i8* %449, align 1, !dbg !2024, !tbaa !549
  br label %450, !dbg !2024

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i64 %451, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %427, metadata !1606, metadata !DIExpression()), !dbg !1733
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2028
  %453 = load i8, i8* %452, align 1, !dbg !2028, !tbaa !549
  call void @llvm.dbg.value(metadata i8 %453, metadata !1613, metadata !DIExpression()), !dbg !1741
  br label %363, !dbg !2029, !llvm.loop !2030

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i1 %358, metadata !1612, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1741
  call void @llvm.dbg.value(metadata i8 %425, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %366, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %422, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %360, metadata !1585, metadata !DIExpression()), !dbg !1644
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2033
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1644
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1648
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1733
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1741
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 %465, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1608, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %462, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %459, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %458, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %457, metadata !1585, metadata !DIExpression()), !dbg !1644
  br i1 %121, label %478, label %467, !dbg !2034

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
  br i1 %131, label %479, label %499, !dbg !2036

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2037

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
  %490 = lshr i8 %481, 5, !dbg !2038
  %491 = zext i8 %490 to i64, !dbg !2038
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2039
  %493 = load i32, i32* %492, align 4, !dbg !2039, !tbaa !540
  %494 = and i8 %481, 31, !dbg !2040
  %495 = zext i8 %494 to i32, !dbg !2040
  %496 = shl nuw i32 1, %495, !dbg !2041
  %497 = and i32 %493, %496, !dbg !2041
  %498 = icmp eq i32 %497, 0, !dbg !2041
  br i1 %498, label %499, label %510, !dbg !2042

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
  br i1 %165, label %510, label %546, !dbg !2043

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2033
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1644
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1648
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2044
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1741
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 %518, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %516, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %513, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %512, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %511, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.label(metadata !1641), !dbg !2045
  br i1 %119, label %638, label %520, !dbg !2046

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1611, metadata !DIExpression()), !dbg !1741
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2048
  br i1 %521, label %538, label %522, !dbg !2048

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2050
  br i1 %523, label %524, label %526, !dbg !2054

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2050
  store i8 39, i8* %525, align 1, !dbg !2050, !tbaa !549
  br label %526, !dbg !2050

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i64 %527, metadata !1592, metadata !DIExpression()), !dbg !1644
  %528 = icmp ult i64 %527, %519, !dbg !2055
  br i1 %528, label %529, label %531, !dbg !2058

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2055
  store i8 36, i8* %530, align 1, !dbg !2055, !tbaa !549
  br label %531, !dbg !2055

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %532, metadata !1592, metadata !DIExpression()), !dbg !1644
  %533 = icmp ult i64 %532, %519, !dbg !2059
  br i1 %533, label %534, label %536, !dbg !2062

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2059
  store i8 39, i8* %535, align 1, !dbg !2059, !tbaa !549
  br label %536, !dbg !2059

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2062
  call void @llvm.dbg.value(metadata i64 %537, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 1, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %538, !dbg !2063

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1741
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %539, metadata !1592, metadata !DIExpression()), !dbg !1644
  %541 = icmp ult i64 %539, %519, !dbg !2064
  br i1 %541, label %542, label %544, !dbg !2067

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2064
  store i8 92, i8* %543, align 1, !dbg !2064, !tbaa !549
  br label %544, !dbg !2064

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %556, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 %555, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %552, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %549, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %548, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %547, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.label(metadata !1642), !dbg !2068
  br label %570, !dbg !2069

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2033
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1644
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1648
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2044
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2072
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 %555, metadata !1613, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1612, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8 poison, metadata !1611, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64 %552, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %549, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %548, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %547, metadata !1585, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.label(metadata !1642), !dbg !2068
  %557 = xor i1 %551, true, !dbg !2069
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2069
  br i1 %558, label %570, label %559, !dbg !2069

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2073
  br i1 %560, label %561, label %563, !dbg !2077

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2073
  store i8 39, i8* %562, align 1, !dbg !2073, !tbaa !549
  br label %563, !dbg !2073

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %564, metadata !1592, metadata !DIExpression()), !dbg !1644
  %565 = icmp ult i64 %564, %556, !dbg !2078
  br i1 %565, label %566, label %568, !dbg !2081

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2078
  store i8 39, i8* %567, align 1, !dbg !2078, !tbaa !549
  br label %568, !dbg !2078

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2081
  call void @llvm.dbg.value(metadata i64 %569, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 0, metadata !1600, metadata !DIExpression()), !dbg !1644
  br label %570, !dbg !2082

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1741
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %578, metadata !1592, metadata !DIExpression()), !dbg !1644
  %580 = icmp ult i64 %578, %571, !dbg !2083
  br i1 %580, label %581, label %583, !dbg !2086

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2083
  store i8 %572, i8* %582, align 1, !dbg !2083, !tbaa !549
  br label %583, !dbg !2083

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %584, metadata !1592, metadata !DIExpression()), !dbg !1644
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2087
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1644
  br label %586, !dbg !2088

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2033
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1644
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1648
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2044
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %593, metadata !1606, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 poison, metadata !1600, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %589, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %588, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %587, metadata !1585, metadata !DIExpression()), !dbg !1644
  %595 = add i64 %593, 1, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %595, metadata !1606, metadata !DIExpression()), !dbg !1733
  br label %132, !dbg !2090, !llvm.loop !2091

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1583, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1599, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 poison, metadata !1598, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 undef, metadata !1593, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 undef, metadata !1592, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 undef, metadata !1585, metadata !DIExpression()), !dbg !1644
  %597 = icmp eq i64 %134, 0, !dbg !2093
  %598 = and i1 %126, %597, !dbg !2095
  %599 = and i1 %598, %119, !dbg !2095
  br i1 %599, label %638, label %600, !dbg !2095

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2096
  %602 = or i1 %119, %601, !dbg !2096
  %603 = xor i1 %136, true, !dbg !2096
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2096
  br i1 %604, label %612, label %605, !dbg !2096

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2098

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2100
  br label %653, !dbg !2102

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2103
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2105
  br i1 %611, label %36, label %612, !dbg !2105

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2106
  %615 = or i1 %614, %613, !dbg !2108
  br i1 %615, label %631, label %616, !dbg !2108

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1594, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %134, metadata !1592, metadata !DIExpression()), !dbg !1644
  %617 = load i8, i8* %116, align 1, !dbg !2109, !tbaa !549
  %618 = icmp eq i8 %617, 0, !dbg !2112
  br i1 %618, label %631, label %619, !dbg !2112

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1594, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i64 %622, metadata !1592, metadata !DIExpression()), !dbg !1644
  %623 = icmp ult i64 %622, %140, !dbg !2113
  br i1 %623, label %624, label %626, !dbg !2116

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2113
  store i8 %620, i8* %625, align 1, !dbg !2113, !tbaa !549
  br label %626, !dbg !2113

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %627, metadata !1592, metadata !DIExpression()), !dbg !1644
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2117
  call void @llvm.dbg.value(metadata i8* %628, metadata !1594, metadata !DIExpression()), !dbg !1644
  %629 = load i8, i8* %628, align 1, !dbg !2109, !tbaa !549
  %630 = icmp eq i8 %629, 0, !dbg !2112
  br i1 %630, label %631, label %619, !dbg !2112, !llvm.loop !2118

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1720
  call void @llvm.dbg.value(metadata i64 %632, metadata !1592, metadata !DIExpression()), !dbg !1644
  %633 = icmp ult i64 %632, %140, !dbg !2120
  br i1 %633, label %634, label %653, !dbg !2122

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2123
  store i8 0, i8* %635, align 1, !dbg !2124, !tbaa !549
  br label %653, !dbg !2123

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1643), !dbg !1950
  %637 = icmp eq i32 %112, 2, !dbg !2125
  br i1 %637, label %643, label %647, !dbg !1951

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1643), !dbg !1950
  %641 = icmp eq i32 %112, 2, !dbg !2125
  %642 = select i1 %118, i32 4, i32 2, !dbg !1951
  br i1 %641, label %643, label %647, !dbg !1951

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1951

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1586, metadata !DIExpression()), !dbg !1644
  %651 = and i32 %5, -3, !dbg !2126
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2127
  br label %653, !dbg !2128

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2129
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2130 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2132 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2136, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2137, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2138, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()) #33, !dbg !2153
  call void @llvm.dbg.value(metadata i64 %1, metadata !2145, metadata !DIExpression()) #33, !dbg !2153
  call void @llvm.dbg.value(metadata i64* null, metadata !2146, metadata !DIExpression()) #33, !dbg !2153
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2147, metadata !DIExpression()) #33, !dbg !2153
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2155
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2148, metadata !DIExpression()) #33, !dbg !2153
  %6 = tail call i32* @__errno_location() #36, !dbg !2156
  %7 = load i32, i32* %6, align 4, !dbg !2156, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %7, metadata !2149, metadata !DIExpression()) #33, !dbg !2153
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2157
  %9 = load i32, i32* %8, align 4, !dbg !2157, !tbaa !1526
  %10 = or i32 %9, 1, !dbg !2158
  call void @llvm.dbg.value(metadata i32 %10, metadata !2150, metadata !DIExpression()) #33, !dbg !2153
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2159
  %12 = load i32, i32* %11, align 8, !dbg !2159, !tbaa !1475
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2160
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2161
  %15 = load i8*, i8** %14, align 8, !dbg !2161, !tbaa !1548
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2162
  %17 = load i8*, i8** %16, align 8, !dbg !2162, !tbaa !1551
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2163
  %19 = add i64 %18, 1, !dbg !2164
  call void @llvm.dbg.value(metadata i64 %19, metadata !2151, metadata !DIExpression()) #33, !dbg !2153
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !2165
  call void @llvm.dbg.value(metadata i8* %20, metadata !2152, metadata !DIExpression()) #33, !dbg !2153
  %21 = load i32, i32* %11, align 8, !dbg !2166, !tbaa !1475
  %22 = load i8*, i8** %14, align 8, !dbg !2167, !tbaa !1548
  %23 = load i8*, i8** %16, align 8, !dbg !2168, !tbaa !1551
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2169
  store i32 %7, i32* %6, align 4, !dbg !2170, !tbaa !540
  ret i8* %20, !dbg !2171
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2140, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64 %1, metadata !2145, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata i64* %2, metadata !2146, metadata !DIExpression()), !dbg !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2147, metadata !DIExpression()), !dbg !2172
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2173
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2173
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2148, metadata !DIExpression()), !dbg !2172
  %7 = tail call i32* @__errno_location() #36, !dbg !2174
  %8 = load i32, i32* %7, align 4, !dbg !2174, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %8, metadata !2149, metadata !DIExpression()), !dbg !2172
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2175
  %10 = load i32, i32* %9, align 4, !dbg !2175, !tbaa !1526
  %11 = icmp eq i64* %2, null, !dbg !2176
  %12 = zext i1 %11 to i32, !dbg !2176
  %13 = or i32 %10, %12, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %13, metadata !2150, metadata !DIExpression()), !dbg !2172
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2178
  %15 = load i32, i32* %14, align 8, !dbg !2178, !tbaa !1475
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2179
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2180
  %18 = load i8*, i8** %17, align 8, !dbg !2180, !tbaa !1548
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2181
  %20 = load i8*, i8** %19, align 8, !dbg !2181, !tbaa !1551
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2182
  %22 = add i64 %21, 1, !dbg !2183
  call void @llvm.dbg.value(metadata i64 %22, metadata !2151, metadata !DIExpression()), !dbg !2172
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !2184
  call void @llvm.dbg.value(metadata i8* %23, metadata !2152, metadata !DIExpression()), !dbg !2172
  %24 = load i32, i32* %14, align 8, !dbg !2185, !tbaa !1475
  %25 = load i8*, i8** %17, align 8, !dbg !2186, !tbaa !1548
  %26 = load i8*, i8** %19, align 8, !dbg !2187, !tbaa !1551
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2188
  store i32 %8, i32* %7, align 4, !dbg !2189, !tbaa !540
  br i1 %11, label %29, label %28, !dbg !2190

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2191, !tbaa !2193
  br label %29, !dbg !2194

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2195
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2196 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2201, !tbaa !453
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2198, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !2203
  %2 = load i32, i32* @nslots, align 4, !tbaa !540
  call void @llvm.dbg.value(metadata i32 1, metadata !2199, metadata !DIExpression()), !dbg !2203
  %3 = icmp sgt i32 %2, 1, !dbg !2204
  br i1 %3, label %4, label %6, !dbg !2206

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2204
  br label %10, !dbg !2206

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2207
  %8 = load i8*, i8** %7, align 8, !dbg !2207, !tbaa !2209
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2211
  br i1 %9, label %17, label %16, !dbg !2212

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2199, metadata !DIExpression()), !dbg !2203
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2213
  %13 = load i8*, i8** %12, align 8, !dbg !2213, !tbaa !2209
  tail call void @free(i8* noundef %13) #33, !dbg !2214
  %14 = add nuw nsw i64 %11, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %14, metadata !2199, metadata !DIExpression()), !dbg !2203
  %15 = icmp eq i64 %14, %5, !dbg !2204
  br i1 %15, label %6, label %10, !dbg !2206, !llvm.loop !2216

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2218
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2220, !tbaa !2221
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2222, !tbaa !2209
  br label %17, !dbg !2223

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2224
  br i1 %18, label %21, label %19, !dbg !2226

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2227
  tail call void @free(i8* noundef %20) #33, !dbg !2229
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2230, !tbaa !453
  br label %21, !dbg !2231

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2232, !tbaa !540
  ret void, !dbg !2233
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2234 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8* %1, metadata !2237, metadata !DIExpression()), !dbg !2238
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2239
  ret i8* %3, !dbg !2240
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2241 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2245, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i8* %1, metadata !2246, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i64 %2, metadata !2247, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2248, metadata !DIExpression()), !dbg !2261
  %6 = tail call i32* @__errno_location() #36, !dbg !2262
  %7 = load i32, i32* %6, align 4, !dbg !2262, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %7, metadata !2249, metadata !DIExpression()), !dbg !2261
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2263, !tbaa !453
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2250, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2251, metadata !DIExpression()), !dbg !2261
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2264
  br i1 %9, label %10, label %11, !dbg !2264

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2266
  unreachable, !dbg !2266

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2267, !tbaa !540
  %13 = icmp sgt i32 %12, %0, !dbg !2268
  br i1 %13, label %36, label %14, !dbg !2269

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2270
  call void @llvm.dbg.value(metadata i1 %15, metadata !2252, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2271
  %16 = bitcast i64* %5 to i8*, !dbg !2272
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2272
  %17 = sext i32 %12 to i64, !dbg !2273
  call void @llvm.dbg.value(metadata i64 %17, metadata !2255, metadata !DIExpression()), !dbg !2271
  store i64 %17, i64* %5, align 8, !dbg !2274, !tbaa !2193
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2275
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2275
  %20 = add nuw nsw i32 %0, 1, !dbg !2276
  %21 = sub i32 %20, %12, !dbg !2277
  %22 = sext i32 %21 to i64, !dbg !2278
  call void @llvm.dbg.value(metadata i64* %5, metadata !2255, metadata !DIExpression(DW_OP_deref)), !dbg !2271
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2279
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2279
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2250, metadata !DIExpression()), !dbg !2261
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2280, !tbaa !453
  br i1 %15, label %25, label %26, !dbg !2281

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2282, !tbaa.struct !2284
  br label %26, !dbg !2285

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2286, !tbaa !540
  %28 = sext i32 %27 to i64, !dbg !2287
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2287
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2288
  %31 = load i64, i64* %5, align 8, !dbg !2289, !tbaa !2193
  call void @llvm.dbg.value(metadata i64 %31, metadata !2255, metadata !DIExpression()), !dbg !2271
  %32 = sub nsw i64 %31, %28, !dbg !2290
  %33 = shl i64 %32, 4, !dbg !2291
  call void @llvm.dbg.value(metadata i8* %30, metadata !1678, metadata !DIExpression()) #33, !dbg !2292
  call void @llvm.dbg.value(metadata i32 0, metadata !1681, metadata !DIExpression()) #33, !dbg !2292
  call void @llvm.dbg.value(metadata i64 %33, metadata !1682, metadata !DIExpression()) #33, !dbg !2292
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2294
  %34 = load i64, i64* %5, align 8, !dbg !2295, !tbaa !2193
  call void @llvm.dbg.value(metadata i64 %34, metadata !2255, metadata !DIExpression()), !dbg !2271
  %35 = trunc i64 %34 to i32, !dbg !2295
  store i32 %35, i32* @nslots, align 4, !dbg !2296, !tbaa !540
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2297
  br label %36, !dbg !2298

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2261
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2250, metadata !DIExpression()), !dbg !2261
  %38 = zext i32 %0 to i64, !dbg !2299
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2300
  %40 = load i64, i64* %39, align 8, !dbg !2300, !tbaa !2221
  call void @llvm.dbg.value(metadata i64 %40, metadata !2256, metadata !DIExpression()), !dbg !2301
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2302
  %42 = load i8*, i8** %41, align 8, !dbg !2302, !tbaa !2209
  call void @llvm.dbg.value(metadata i8* %42, metadata !2258, metadata !DIExpression()), !dbg !2301
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2303
  %44 = load i32, i32* %43, align 4, !dbg !2303, !tbaa !1526
  %45 = or i32 %44, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %45, metadata !2259, metadata !DIExpression()), !dbg !2301
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2305
  %47 = load i32, i32* %46, align 8, !dbg !2305, !tbaa !1475
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2306
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2307
  %50 = load i8*, i8** %49, align 8, !dbg !2307, !tbaa !1548
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2308
  %52 = load i8*, i8** %51, align 8, !dbg !2308, !tbaa !1551
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %53, metadata !2260, metadata !DIExpression()), !dbg !2301
  %54 = icmp ugt i64 %40, %53, !dbg !2310
  br i1 %54, label %65, label %55, !dbg !2312

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2313
  call void @llvm.dbg.value(metadata i64 %56, metadata !2256, metadata !DIExpression()), !dbg !2301
  store i64 %56, i64* %39, align 8, !dbg !2315, !tbaa !2221
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2316
  br i1 %57, label %59, label %58, !dbg !2318

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2319
  br label %59, !dbg !2319

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !2320
  call void @llvm.dbg.value(metadata i8* %60, metadata !2258, metadata !DIExpression()), !dbg !2301
  store i8* %60, i8** %41, align 8, !dbg !2321, !tbaa !2209
  %61 = load i32, i32* %46, align 8, !dbg !2322, !tbaa !1475
  %62 = load i8*, i8** %49, align 8, !dbg !2323, !tbaa !1548
  %63 = load i8*, i8** %51, align 8, !dbg !2324, !tbaa !1551
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2325
  br label %65, !dbg !2326

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2301
  call void @llvm.dbg.value(metadata i8* %66, metadata !2258, metadata !DIExpression()), !dbg !2301
  store i32 %7, i32* %6, align 4, !dbg !2327, !tbaa !540
  ret i8* %66, !dbg !2328
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2329 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i8* %1, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata i64 %2, metadata !2335, metadata !DIExpression()), !dbg !2336
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2337
  ret i8* %4, !dbg !2338
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2236, metadata !DIExpression()) #33, !dbg !2343
  call void @llvm.dbg.value(metadata i8* %0, metadata !2237, metadata !DIExpression()) #33, !dbg !2343
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2345
  ret i8* %2, !dbg !2346
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2351, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i64 %1, metadata !2352, metadata !DIExpression()), !dbg !2353
  call void @llvm.dbg.value(metadata i32 0, metadata !2333, metadata !DIExpression()) #33, !dbg !2354
  call void @llvm.dbg.value(metadata i8* %0, metadata !2334, metadata !DIExpression()) #33, !dbg !2354
  call void @llvm.dbg.value(metadata i64 %1, metadata !2335, metadata !DIExpression()) #33, !dbg !2354
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2356
  ret i8* %3, !dbg !2357
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2358 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2362, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i32 %1, metadata !2363, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i8* %2, metadata !2364, metadata !DIExpression()), !dbg !2366
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2367
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2367
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2365, metadata !DIExpression()), !dbg !2368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2369), !dbg !2372
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()) #33, !dbg !2379
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2378, metadata !DIExpression()) #33, !dbg !2381
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2381, !alias.scope !2369
  %6 = icmp eq i32 %1, 10, !dbg !2382
  br i1 %6, label %7, label %8, !dbg !2384

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2385, !noalias !2369
  unreachable, !dbg !2385

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2386
  store i32 %1, i32* %9, align 8, !dbg !2387, !tbaa !1475, !alias.scope !2369
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2388
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2389
  ret i8* %10, !dbg !2390
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2391 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2395, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2396, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()), !dbg !2400
  call void @llvm.dbg.value(metadata i64 %3, metadata !2398, metadata !DIExpression()), !dbg !2400
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2401
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2401
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2399, metadata !DIExpression()), !dbg !2402
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2403), !dbg !2406
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()) #33, !dbg !2407
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2378, metadata !DIExpression()) #33, !dbg !2409
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2409, !alias.scope !2403
  %7 = icmp eq i32 %1, 10, !dbg !2410
  br i1 %7, label %8, label %9, !dbg !2411

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2412, !noalias !2403
  unreachable, !dbg !2412

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2413
  store i32 %1, i32* %10, align 8, !dbg !2414, !tbaa !1475, !alias.scope !2403
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2415
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2416
  ret i8* %11, !dbg !2417
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2418 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2422, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i8* %1, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.value(metadata i32 0, metadata !2362, metadata !DIExpression()) #33, !dbg !2425
  call void @llvm.dbg.value(metadata i32 %0, metadata !2363, metadata !DIExpression()) #33, !dbg !2425
  call void @llvm.dbg.value(metadata i8* %1, metadata !2364, metadata !DIExpression()) #33, !dbg !2425
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2365, metadata !DIExpression()) #33, !dbg !2428
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429) #33, !dbg !2432
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()) #33, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2378, metadata !DIExpression()) #33, !dbg !2435
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2435, !alias.scope !2429
  %5 = icmp eq i32 %0, 10, !dbg !2436
  br i1 %5, label %6, label %7, !dbg !2437

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2438, !noalias !2429
  unreachable, !dbg !2438

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2439
  store i32 %0, i32* %8, align 8, !dbg !2440, !tbaa !1475, !alias.scope !2429
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2441
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2442
  ret i8* %9, !dbg !2443
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2444 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i8* %1, metadata !2449, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i64 %2, metadata !2450, metadata !DIExpression()), !dbg !2451
  call void @llvm.dbg.value(metadata i32 0, metadata !2395, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !2397, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %2, metadata !2398, metadata !DIExpression()) #33, !dbg !2452
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2454
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2399, metadata !DIExpression()) #33, !dbg !2455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456) #33, !dbg !2459
  call void @llvm.dbg.value(metadata i32 %0, metadata !2373, metadata !DIExpression()) #33, !dbg !2460
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2378, metadata !DIExpression()) #33, !dbg !2462
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2462, !alias.scope !2456
  %6 = icmp eq i32 %0, 10, !dbg !2463
  br i1 %6, label %7, label %8, !dbg !2464

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2465, !noalias !2456
  unreachable, !dbg !2465

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2466
  store i32 %0, i32* %9, align 8, !dbg !2467, !tbaa !1475, !alias.scope !2456
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2468
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2469
  ret i8* %10, !dbg !2470
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2471 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8 %2, metadata !2477, metadata !DIExpression()), !dbg !2479
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2480
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2480
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2482, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1493, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %2, metadata !1494, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2484
  call void @llvm.dbg.value(metadata i8 %2, metadata !1496, metadata !DIExpression()), !dbg !2484
  %6 = lshr i8 %2, 5, !dbg !2486
  %7 = zext i8 %6 to i64, !dbg !2486
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2487
  call void @llvm.dbg.value(metadata i32* %8, metadata !1497, metadata !DIExpression()), !dbg !2484
  %9 = and i8 %2, 31, !dbg !2488
  %10 = zext i8 %9 to i32, !dbg !2488
  call void @llvm.dbg.value(metadata i32 %10, metadata !1499, metadata !DIExpression()), !dbg !2484
  %11 = load i32, i32* %8, align 4, !dbg !2489, !tbaa !540
  %12 = lshr i32 %11, %10, !dbg !2490
  %13 = and i32 %12, 1, !dbg !2491
  call void @llvm.dbg.value(metadata i32 %13, metadata !1500, metadata !DIExpression()), !dbg !2484
  %14 = xor i32 %13, 1, !dbg !2492
  %15 = shl i32 %14, %10, !dbg !2493
  %16 = xor i32 %15, %11, !dbg !2494
  store i32 %16, i32* %8, align 4, !dbg !2494, !tbaa !540
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2495
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2496
  ret i8* %17, !dbg !2497
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2498 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2502, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8 %1, metadata !2503, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #33, !dbg !2505
  call void @llvm.dbg.value(metadata i64 -1, metadata !2476, metadata !DIExpression()) #33, !dbg !2505
  call void @llvm.dbg.value(metadata i8 %1, metadata !2477, metadata !DIExpression()) #33, !dbg !2505
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2507
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2507
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2478, metadata !DIExpression()) #33, !dbg !2508
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2509, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1493, metadata !DIExpression()) #33, !dbg !2510
  call void @llvm.dbg.value(metadata i8 %1, metadata !1494, metadata !DIExpression()) #33, !dbg !2510
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()) #33, !dbg !2510
  call void @llvm.dbg.value(metadata i8 %1, metadata !1496, metadata !DIExpression()) #33, !dbg !2510
  %5 = lshr i8 %1, 5, !dbg !2512
  %6 = zext i8 %5 to i64, !dbg !2512
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2513
  call void @llvm.dbg.value(metadata i32* %7, metadata !1497, metadata !DIExpression()) #33, !dbg !2510
  %8 = and i8 %1, 31, !dbg !2514
  %9 = zext i8 %8 to i32, !dbg !2514
  call void @llvm.dbg.value(metadata i32 %9, metadata !1499, metadata !DIExpression()) #33, !dbg !2510
  %10 = load i32, i32* %7, align 4, !dbg !2515, !tbaa !540
  %11 = lshr i32 %10, %9, !dbg !2516
  %12 = and i32 %11, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %12, metadata !1500, metadata !DIExpression()) #33, !dbg !2510
  %13 = xor i32 %12, 1, !dbg !2518
  %14 = shl i32 %13, %9, !dbg !2519
  %15 = xor i32 %14, %10, !dbg !2520
  store i32 %15, i32* %7, align 4, !dbg !2520, !tbaa !540
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2522
  ret i8* %16, !dbg !2523
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2524 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2526, metadata !DIExpression()), !dbg !2527
  call void @llvm.dbg.value(metadata i8* %0, metadata !2502, metadata !DIExpression()) #33, !dbg !2528
  call void @llvm.dbg.value(metadata i8 58, metadata !2503, metadata !DIExpression()) #33, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #33, !dbg !2530
  call void @llvm.dbg.value(metadata i64 -1, metadata !2476, metadata !DIExpression()) #33, !dbg !2530
  call void @llvm.dbg.value(metadata i8 58, metadata !2477, metadata !DIExpression()) #33, !dbg !2530
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2532
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2478, metadata !DIExpression()) #33, !dbg !2533
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2534, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1493, metadata !DIExpression()) #33, !dbg !2535
  call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()) #33, !dbg !2535
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()) #33, !dbg !2535
  call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()) #33, !dbg !2535
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2537
  call void @llvm.dbg.value(metadata i32* %4, metadata !1497, metadata !DIExpression()) #33, !dbg !2535
  call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()) #33, !dbg !2535
  %5 = load i32, i32* %4, align 4, !dbg !2538, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %5, metadata !1500, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2535
  %6 = or i32 %5, 67108864, !dbg !2539
  store i32 %6, i32* %4, align 4, !dbg !2539, !tbaa !540
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2541
  ret i8* %7, !dbg !2542
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2543 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2545, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i64 %1, metadata !2546, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i8* %0, metadata !2475, metadata !DIExpression()) #33, !dbg !2548
  call void @llvm.dbg.value(metadata i64 %1, metadata !2476, metadata !DIExpression()) #33, !dbg !2548
  call void @llvm.dbg.value(metadata i8 58, metadata !2477, metadata !DIExpression()) #33, !dbg !2548
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2550
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2550
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2478, metadata !DIExpression()) #33, !dbg !2551
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2552, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1493, metadata !DIExpression()) #33, !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()) #33, !dbg !2553
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()) #33, !dbg !2553
  call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()) #33, !dbg !2553
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2555
  call void @llvm.dbg.value(metadata i32* %5, metadata !1497, metadata !DIExpression()) #33, !dbg !2553
  call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()) #33, !dbg !2553
  %6 = load i32, i32* %5, align 4, !dbg !2556, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %6, metadata !1500, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2553
  %7 = or i32 %6, 67108864, !dbg !2557
  store i32 %7, i32* %5, align 4, !dbg !2557, !tbaa !540
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2559
  ret i8* %8, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2561 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2563, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i32 %1, metadata !2564, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.value(metadata i8* %2, metadata !2565, metadata !DIExpression()), !dbg !2567
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2568
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2568
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2566, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i32 %1, metadata !2373, metadata !DIExpression()) #33, !dbg !2570
  call void @llvm.dbg.value(metadata i32 0, metadata !2378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2570
  %6 = icmp eq i32 %1, 10, !dbg !2572
  br i1 %6, label %7, label %8, !dbg !2573

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2574, !noalias !2575
  unreachable, !dbg !2574

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2378, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2570
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2578
  store i32 %1, i32* %9, align 8, !dbg !2578, !tbaa.struct !2483
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2578
  %11 = bitcast i32* %10 to i8*, !dbg !2578
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1493, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 58, metadata !1494, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 1, metadata !1495, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i8 58, metadata !1496, metadata !DIExpression()), !dbg !2579
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2581
  call void @llvm.dbg.value(metadata i32* %12, metadata !1497, metadata !DIExpression()), !dbg !2579
  call void @llvm.dbg.value(metadata i32 26, metadata !1499, metadata !DIExpression()), !dbg !2579
  %13 = load i32, i32* %12, align 4, !dbg !2582, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %13, metadata !1500, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2579
  %14 = or i32 %13, 67108864, !dbg !2583
  store i32 %14, i32* %12, align 4, !dbg !2583, !tbaa !540
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2584
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2585
  ret i8* %15, !dbg !2586
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2587 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2591, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %1, metadata !2592, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %2, metadata !2593, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i8* %3, metadata !2594, metadata !DIExpression()), !dbg !2595
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()) #33, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()) #33, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()) #33, !dbg !2606
  call void @llvm.dbg.value(metadata i8* %3, metadata !2603, metadata !DIExpression()) #33, !dbg !2606
  call void @llvm.dbg.value(metadata i64 -1, metadata !2604, metadata !DIExpression()) #33, !dbg !2606
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2608
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2608
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2605, metadata !DIExpression()) #33, !dbg !2609
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2610, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1533, metadata !DIExpression()) #33, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !1534, metadata !DIExpression()) #33, !dbg !2611
  call void @llvm.dbg.value(metadata i8* %2, metadata !1535, metadata !DIExpression()) #33, !dbg !2611
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1533, metadata !DIExpression()) #33, !dbg !2611
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2613
  store i32 10, i32* %7, align 8, !dbg !2614, !tbaa !1475
  %8 = icmp ne i8* %1, null, !dbg !2615
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2616
  br i1 %10, label %12, label %11, !dbg !2616

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2617
  unreachable, !dbg !2617

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2618
  store i8* %1, i8** %13, align 8, !dbg !2619, !tbaa !1548
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2620
  store i8* %2, i8** %14, align 8, !dbg !2621, !tbaa !1551
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2622
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2623
  ret i8* %15, !dbg !2624
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2597 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2596, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %1, metadata !2601, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i8* %3, metadata !2603, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i64 %4, metadata !2604, metadata !DIExpression()), !dbg !2625
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2626
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2626
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2605, metadata !DIExpression()), !dbg !2627
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2628, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1533, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %1, metadata !1534, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %2, metadata !1535, metadata !DIExpression()) #33, !dbg !2629
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1533, metadata !DIExpression()) #33, !dbg !2629
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2631
  store i32 10, i32* %8, align 8, !dbg !2632, !tbaa !1475
  %9 = icmp ne i8* %1, null, !dbg !2633
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2634
  br i1 %11, label %13, label %12, !dbg !2634

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2635
  unreachable, !dbg !2635

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2636
  store i8* %1, i8** %14, align 8, !dbg !2637, !tbaa !1548
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2638
  store i8* %2, i8** %15, align 8, !dbg !2639, !tbaa !1551
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2640
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2641
  ret i8* %16, !dbg !2642
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2643 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2648, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i8* %2, metadata !2649, metadata !DIExpression()), !dbg !2650
  call void @llvm.dbg.value(metadata i32 0, metadata !2591, metadata !DIExpression()) #33, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %0, metadata !2592, metadata !DIExpression()) #33, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %1, metadata !2593, metadata !DIExpression()) #33, !dbg !2651
  call void @llvm.dbg.value(metadata i8* %2, metadata !2594, metadata !DIExpression()) #33, !dbg !2651
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #33, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()) #33, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %1, metadata !2602, metadata !DIExpression()) #33, !dbg !2653
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()) #33, !dbg !2653
  call void @llvm.dbg.value(metadata i64 -1, metadata !2604, metadata !DIExpression()) #33, !dbg !2653
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2655
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2655
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2605, metadata !DIExpression()) #33, !dbg !2656
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2657, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1533, metadata !DIExpression()) #33, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %0, metadata !1534, metadata !DIExpression()) #33, !dbg !2658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1535, metadata !DIExpression()) #33, !dbg !2658
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1533, metadata !DIExpression()) #33, !dbg !2658
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2660
  store i32 10, i32* %6, align 8, !dbg !2661, !tbaa !1475
  %7 = icmp ne i8* %0, null, !dbg !2662
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2663
  br i1 %9, label %11, label %10, !dbg !2663

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2664
  unreachable, !dbg !2664

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2665
  store i8* %0, i8** %12, align 8, !dbg !2666, !tbaa !1548
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2667
  store i8* %1, i8** %13, align 8, !dbg !2668, !tbaa !1551
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2669
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2670
  ret i8* %14, !dbg !2671
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2672 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2676, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* %1, metadata !2677, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i8* %2, metadata !2678, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i64 %3, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.value(metadata i32 0, metadata !2596, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %0, metadata !2601, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2602, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i8* %2, metadata !2603, metadata !DIExpression()) #33, !dbg !2681
  call void @llvm.dbg.value(metadata i64 %3, metadata !2604, metadata !DIExpression()) #33, !dbg !2681
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2683
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2683
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2605, metadata !DIExpression()) #33, !dbg !2684
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2685, !tbaa.struct !2483
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1533, metadata !DIExpression()) #33, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %0, metadata !1534, metadata !DIExpression()) #33, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %1, metadata !1535, metadata !DIExpression()) #33, !dbg !2686
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1533, metadata !DIExpression()) #33, !dbg !2686
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2688
  store i32 10, i32* %7, align 8, !dbg !2689, !tbaa !1475
  %8 = icmp ne i8* %0, null, !dbg !2690
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2691
  br i1 %10, label %12, label %11, !dbg !2691

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2692
  unreachable, !dbg !2692

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2693
  store i8* %0, i8** %13, align 8, !dbg !2694, !tbaa !1548
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2695
  store i8* %1, i8** %14, align 8, !dbg !2696, !tbaa !1551
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2697
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2698
  ret i8* %15, !dbg !2699
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2700 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %1, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %2, metadata !2706, metadata !DIExpression()), !dbg !2707
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2708
  ret i8* %4, !dbg !2709
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2710 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2714, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i64 %1, metadata !2715, metadata !DIExpression()), !dbg !2716
  call void @llvm.dbg.value(metadata i32 0, metadata !2704, metadata !DIExpression()) #33, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !2705, metadata !DIExpression()) #33, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()) #33, !dbg !2717
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2719
  ret i8* %3, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2726, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %0, metadata !2704, metadata !DIExpression()) #33, !dbg !2728
  call void @llvm.dbg.value(metadata i8* %1, metadata !2705, metadata !DIExpression()) #33, !dbg !2728
  call void @llvm.dbg.value(metadata i64 -1, metadata !2706, metadata !DIExpression()) #33, !dbg !2728
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2730
  ret i8* %3, !dbg !2731
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2732 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()) #33, !dbg !2738
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()) #33, !dbg !2738
  call void @llvm.dbg.value(metadata i32 0, metadata !2704, metadata !DIExpression()) #33, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %0, metadata !2705, metadata !DIExpression()) #33, !dbg !2740
  call void @llvm.dbg.value(metadata i64 -1, metadata !2706, metadata !DIExpression()) #33, !dbg !2740
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2742
  ret i8* %2, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2744 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2783, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !2784, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !2785, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8* %3, metadata !2786, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i8** %4, metadata !2787, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.value(metadata i64 %5, metadata !2788, metadata !DIExpression()), !dbg !2789
  %7 = icmp eq i8* %1, null, !dbg !2790
  br i1 %7, label %10, label %8, !dbg !2792

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2793
  br label %12, !dbg !2793

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2794
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !2795
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2795
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2796
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.105, i64 0, i64 0), i32 noundef 5) #33, !dbg !2797
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.106, i64 0, i64 0)) #33, !dbg !2797
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2798
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
  ], !dbg !2799

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.107, i64 0, i64 0), i32 noundef 5) #33, !dbg !2800
  %21 = load i8*, i8** %4, align 8, !dbg !2800, !tbaa !453
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2800
  br label %147, !dbg !2802

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2803
  %25 = load i8*, i8** %4, align 8, !dbg !2803, !tbaa !453
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2803
  %27 = load i8*, i8** %26, align 8, !dbg !2803, !tbaa !453
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2803
  br label %147, !dbg !2804

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !2805
  %31 = load i8*, i8** %4, align 8, !dbg !2805, !tbaa !453
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2805
  %33 = load i8*, i8** %32, align 8, !dbg !2805, !tbaa !453
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2805
  %35 = load i8*, i8** %34, align 8, !dbg !2805, !tbaa !453
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2805
  br label %147, !dbg !2806

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !2807
  %39 = load i8*, i8** %4, align 8, !dbg !2807, !tbaa !453
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2807
  %41 = load i8*, i8** %40, align 8, !dbg !2807, !tbaa !453
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2807
  %43 = load i8*, i8** %42, align 8, !dbg !2807, !tbaa !453
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2807
  %45 = load i8*, i8** %44, align 8, !dbg !2807, !tbaa !453
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2807
  br label %147, !dbg !2808

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !2809
  %49 = load i8*, i8** %4, align 8, !dbg !2809, !tbaa !453
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2809
  %51 = load i8*, i8** %50, align 8, !dbg !2809, !tbaa !453
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2809
  %53 = load i8*, i8** %52, align 8, !dbg !2809, !tbaa !453
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2809
  %55 = load i8*, i8** %54, align 8, !dbg !2809, !tbaa !453
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2809
  %57 = load i8*, i8** %56, align 8, !dbg !2809, !tbaa !453
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2809
  br label %147, !dbg !2810

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !2811
  %61 = load i8*, i8** %4, align 8, !dbg !2811, !tbaa !453
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2811
  %63 = load i8*, i8** %62, align 8, !dbg !2811, !tbaa !453
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2811
  %65 = load i8*, i8** %64, align 8, !dbg !2811, !tbaa !453
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2811
  %67 = load i8*, i8** %66, align 8, !dbg !2811, !tbaa !453
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2811
  %69 = load i8*, i8** %68, align 8, !dbg !2811, !tbaa !453
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2811
  %71 = load i8*, i8** %70, align 8, !dbg !2811, !tbaa !453
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2811
  br label %147, !dbg !2812

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.113, i64 0, i64 0), i32 noundef 5) #33, !dbg !2813
  %75 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !453
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %77 = load i8*, i8** %76, align 8, !dbg !2813, !tbaa !453
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2813
  %79 = load i8*, i8** %78, align 8, !dbg !2813, !tbaa !453
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2813
  %81 = load i8*, i8** %80, align 8, !dbg !2813, !tbaa !453
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2813
  %83 = load i8*, i8** %82, align 8, !dbg !2813, !tbaa !453
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2813
  %85 = load i8*, i8** %84, align 8, !dbg !2813, !tbaa !453
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2813
  %87 = load i8*, i8** %86, align 8, !dbg !2813, !tbaa !453
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2813
  br label %147, !dbg !2814

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.114, i64 0, i64 0), i32 noundef 5) #33, !dbg !2815
  %91 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !453
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2815
  %93 = load i8*, i8** %92, align 8, !dbg !2815, !tbaa !453
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2815
  %95 = load i8*, i8** %94, align 8, !dbg !2815, !tbaa !453
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2815
  %97 = load i8*, i8** %96, align 8, !dbg !2815, !tbaa !453
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2815
  %99 = load i8*, i8** %98, align 8, !dbg !2815, !tbaa !453
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2815
  %101 = load i8*, i8** %100, align 8, !dbg !2815, !tbaa !453
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2815
  %103 = load i8*, i8** %102, align 8, !dbg !2815, !tbaa !453
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2815
  %105 = load i8*, i8** %104, align 8, !dbg !2815, !tbaa !453
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2815
  br label %147, !dbg !2816

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.115, i64 0, i64 0), i32 noundef 5) #33, !dbg !2817
  %109 = load i8*, i8** %4, align 8, !dbg !2817, !tbaa !453
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2817
  %111 = load i8*, i8** %110, align 8, !dbg !2817, !tbaa !453
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2817
  %113 = load i8*, i8** %112, align 8, !dbg !2817, !tbaa !453
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2817
  %115 = load i8*, i8** %114, align 8, !dbg !2817, !tbaa !453
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2817
  %117 = load i8*, i8** %116, align 8, !dbg !2817, !tbaa !453
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2817
  %119 = load i8*, i8** %118, align 8, !dbg !2817, !tbaa !453
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2817
  %121 = load i8*, i8** %120, align 8, !dbg !2817, !tbaa !453
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2817
  %123 = load i8*, i8** %122, align 8, !dbg !2817, !tbaa !453
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2817
  %125 = load i8*, i8** %124, align 8, !dbg !2817, !tbaa !453
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2817
  br label %147, !dbg !2818

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.116, i64 0, i64 0), i32 noundef 5) #33, !dbg !2819
  %129 = load i8*, i8** %4, align 8, !dbg !2819, !tbaa !453
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2819
  %131 = load i8*, i8** %130, align 8, !dbg !2819, !tbaa !453
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2819
  %133 = load i8*, i8** %132, align 8, !dbg !2819, !tbaa !453
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2819
  %135 = load i8*, i8** %134, align 8, !dbg !2819, !tbaa !453
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2819
  %137 = load i8*, i8** %136, align 8, !dbg !2819, !tbaa !453
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2819
  %139 = load i8*, i8** %138, align 8, !dbg !2819, !tbaa !453
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2819
  %141 = load i8*, i8** %140, align 8, !dbg !2819, !tbaa !453
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2819
  %143 = load i8*, i8** %142, align 8, !dbg !2819, !tbaa !453
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2819
  %145 = load i8*, i8** %144, align 8, !dbg !2819, !tbaa !453
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2819
  br label %147, !dbg !2820

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2821
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2822 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2826, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %1, metadata !2827, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %2, metadata !2828, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8* %3, metadata !2829, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i8** %4, metadata !2830, metadata !DIExpression()), !dbg !2832
  call void @llvm.dbg.value(metadata i64 0, metadata !2831, metadata !DIExpression()), !dbg !2832
  br label %6, !dbg !2833

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2835
  call void @llvm.dbg.value(metadata i64 %7, metadata !2831, metadata !DIExpression()), !dbg !2832
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2836
  %9 = load i8*, i8** %8, align 8, !dbg !2836, !tbaa !453
  %10 = icmp eq i8* %9, null, !dbg !2838
  %11 = add i64 %7, 1, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %11, metadata !2831, metadata !DIExpression()), !dbg !2832
  br i1 %10, label %12, label %6, !dbg !2838, !llvm.loop !2840

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2842
  ret void, !dbg !2843
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2844 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2859, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %1, metadata !2860, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %2, metadata !2861, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %3, metadata !2862, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2863, metadata !DIExpression()), !dbg !2868
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2869
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2869
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2865, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2864, metadata !DIExpression()), !dbg !2867
  %11 = load i32, i32* %8, align 8, !dbg !2871
  %12 = icmp sgt i32 %11, -1, !dbg !2871
  br i1 %12, label %20, label %13, !dbg !2871

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2871
  store i32 %14, i32* %8, align 8, !dbg !2871
  %15 = icmp ult i32 %11, -7, !dbg !2871
  br i1 %15, label %16, label %20, !dbg !2871

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2871
  %18 = sext i32 %11 to i64, !dbg !2871
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2871
  br label %24, !dbg !2871

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2871
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2871
  store i8* %23, i8** %10, align 8, !dbg !2871
  br label %24, !dbg !2871

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2871
  %28 = load i8*, i8** %27, align 8, !dbg !2871
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2874
  store i8* %28, i8** %29, align 8, !dbg !2875, !tbaa !453
  %30 = icmp eq i8* %28, null, !dbg !2876
  br i1 %30, label %210, label %31, !dbg !2877

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 1, metadata !2864, metadata !DIExpression()), !dbg !2867
  %32 = icmp sgt i32 %25, -1, !dbg !2871
  br i1 %32, label %40, label %33, !dbg !2871

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2871
  store i32 %34, i32* %8, align 8, !dbg !2871
  %35 = icmp ult i32 %25, -7, !dbg !2871
  br i1 %35, label %36, label %40, !dbg !2871

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2871
  %38 = sext i32 %25 to i64, !dbg !2871
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2871
  br label %44, !dbg !2871

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2871
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2871
  store i8* %43, i8** %10, align 8, !dbg !2871
  br label %44, !dbg !2871

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2871
  %48 = load i8*, i8** %47, align 8, !dbg !2871
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2874
  store i8* %48, i8** %49, align 8, !dbg !2875, !tbaa !453
  %50 = icmp eq i8* %48, null, !dbg !2876
  br i1 %50, label %210, label %51, !dbg !2877

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 2, metadata !2864, metadata !DIExpression()), !dbg !2867
  %52 = icmp sgt i32 %45, -1, !dbg !2871
  br i1 %52, label %60, label %53, !dbg !2871

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2871
  store i32 %54, i32* %8, align 8, !dbg !2871
  %55 = icmp ult i32 %45, -7, !dbg !2871
  br i1 %55, label %56, label %60, !dbg !2871

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2871
  %58 = sext i32 %45 to i64, !dbg !2871
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2871
  br label %64, !dbg !2871

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2871
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2871
  store i8* %63, i8** %10, align 8, !dbg !2871
  br label %64, !dbg !2871

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2871
  %68 = load i8*, i8** %67, align 8, !dbg !2871
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2874
  store i8* %68, i8** %69, align 8, !dbg !2875, !tbaa !453
  %70 = icmp eq i8* %68, null, !dbg !2876
  br i1 %70, label %210, label %71, !dbg !2877

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 3, metadata !2864, metadata !DIExpression()), !dbg !2867
  %72 = icmp sgt i32 %65, -1, !dbg !2871
  br i1 %72, label %80, label %73, !dbg !2871

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2871
  store i32 %74, i32* %8, align 8, !dbg !2871
  %75 = icmp ult i32 %65, -7, !dbg !2871
  br i1 %75, label %76, label %80, !dbg !2871

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2871
  %78 = sext i32 %65 to i64, !dbg !2871
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2871
  br label %84, !dbg !2871

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2871
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2871
  store i8* %83, i8** %10, align 8, !dbg !2871
  br label %84, !dbg !2871

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2871
  %88 = load i8*, i8** %87, align 8, !dbg !2871
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2874
  store i8* %88, i8** %89, align 8, !dbg !2875, !tbaa !453
  %90 = icmp eq i8* %88, null, !dbg !2876
  br i1 %90, label %210, label %91, !dbg !2877

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 4, metadata !2864, metadata !DIExpression()), !dbg !2867
  %92 = icmp sgt i32 %85, -1, !dbg !2871
  br i1 %92, label %100, label %93, !dbg !2871

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2871
  store i32 %94, i32* %8, align 8, !dbg !2871
  %95 = icmp ult i32 %85, -7, !dbg !2871
  br i1 %95, label %96, label %100, !dbg !2871

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2871
  %98 = sext i32 %85 to i64, !dbg !2871
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2871
  br label %104, !dbg !2871

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2871
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2871
  store i8* %103, i8** %10, align 8, !dbg !2871
  br label %104, !dbg !2871

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2871
  %108 = load i8*, i8** %107, align 8, !dbg !2871
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2874
  store i8* %108, i8** %109, align 8, !dbg !2875, !tbaa !453
  %110 = icmp eq i8* %108, null, !dbg !2876
  br i1 %110, label %210, label %111, !dbg !2877

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 5, metadata !2864, metadata !DIExpression()), !dbg !2867
  %112 = icmp sgt i32 %105, -1, !dbg !2871
  br i1 %112, label %120, label %113, !dbg !2871

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2871
  store i32 %114, i32* %8, align 8, !dbg !2871
  %115 = icmp ult i32 %105, -7, !dbg !2871
  br i1 %115, label %116, label %120, !dbg !2871

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2871
  %118 = sext i32 %105 to i64, !dbg !2871
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2871
  br label %124, !dbg !2871

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2871
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2871
  store i8* %123, i8** %10, align 8, !dbg !2871
  br label %124, !dbg !2871

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2871
  %128 = load i8*, i8** %127, align 8, !dbg !2871
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2874
  store i8* %128, i8** %129, align 8, !dbg !2875, !tbaa !453
  %130 = icmp eq i8* %128, null, !dbg !2876
  br i1 %130, label %210, label %131, !dbg !2877

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 6, metadata !2864, metadata !DIExpression()), !dbg !2867
  %132 = icmp sgt i32 %125, -1, !dbg !2871
  br i1 %132, label %140, label %133, !dbg !2871

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2871
  store i32 %134, i32* %8, align 8, !dbg !2871
  %135 = icmp ult i32 %125, -7, !dbg !2871
  br i1 %135, label %136, label %140, !dbg !2871

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2871
  %138 = sext i32 %125 to i64, !dbg !2871
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2871
  br label %144, !dbg !2871

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2871
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2871
  store i8* %143, i8** %10, align 8, !dbg !2871
  br label %144, !dbg !2871

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2871
  %148 = load i8*, i8** %147, align 8, !dbg !2871
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2874
  store i8* %148, i8** %149, align 8, !dbg !2875, !tbaa !453
  %150 = icmp eq i8* %148, null, !dbg !2876
  br i1 %150, label %210, label %151, !dbg !2877

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 7, metadata !2864, metadata !DIExpression()), !dbg !2867
  %152 = icmp sgt i32 %145, -1, !dbg !2871
  br i1 %152, label %160, label %153, !dbg !2871

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2871
  store i32 %154, i32* %8, align 8, !dbg !2871
  %155 = icmp ult i32 %145, -7, !dbg !2871
  br i1 %155, label %156, label %160, !dbg !2871

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2871
  %158 = sext i32 %145 to i64, !dbg !2871
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2871
  br label %164, !dbg !2871

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2871
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2871
  store i8* %163, i8** %10, align 8, !dbg !2871
  br label %164, !dbg !2871

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2871
  %168 = load i8*, i8** %167, align 8, !dbg !2871
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2874
  store i8* %168, i8** %169, align 8, !dbg !2875, !tbaa !453
  %170 = icmp eq i8* %168, null, !dbg !2876
  br i1 %170, label %210, label %171, !dbg !2877

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 8, metadata !2864, metadata !DIExpression()), !dbg !2867
  %172 = icmp sgt i32 %165, -1, !dbg !2871
  br i1 %172, label %180, label %173, !dbg !2871

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2871
  store i32 %174, i32* %8, align 8, !dbg !2871
  %175 = icmp ult i32 %165, -7, !dbg !2871
  br i1 %175, label %176, label %180, !dbg !2871

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2871
  %178 = sext i32 %165 to i64, !dbg !2871
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2871
  br label %184, !dbg !2871

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2871
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2871
  store i8* %183, i8** %10, align 8, !dbg !2871
  br label %184, !dbg !2871

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2871
  %188 = load i8*, i8** %187, align 8, !dbg !2871
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2874
  store i8* %188, i8** %189, align 8, !dbg !2875, !tbaa !453
  %190 = icmp eq i8* %188, null, !dbg !2876
  br i1 %190, label %210, label %191, !dbg !2877

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 9, metadata !2864, metadata !DIExpression()), !dbg !2867
  %192 = icmp sgt i32 %185, -1, !dbg !2871
  br i1 %192, label %200, label %193, !dbg !2871

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2871
  store i32 %194, i32* %8, align 8, !dbg !2871
  %195 = icmp ult i32 %185, -7, !dbg !2871
  br i1 %195, label %196, label %200, !dbg !2871

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2871
  %198 = sext i32 %185 to i64, !dbg !2871
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2871
  br label %203, !dbg !2871

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2871
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2871
  store i8* %202, i8** %10, align 8, !dbg !2871
  br label %203, !dbg !2871

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2871
  %206 = load i8*, i8** %205, align 8, !dbg !2871
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2874
  store i8* %206, i8** %207, align 8, !dbg !2875, !tbaa !453
  %208 = icmp eq i8* %206, null, !dbg !2876
  %209 = select i1 %208, i64 9, i64 10, !dbg !2877
  br label %210, !dbg !2877

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2878
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2879
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2880
  ret void, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2881 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2885, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %2, metadata !2887, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i8* %3, metadata !2888, metadata !DIExpression()), !dbg !2890
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2891
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2891
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2889, metadata !DIExpression()), !dbg !2892
  call void @llvm.va_start(i8* nonnull %7), !dbg !2893
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2894
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2894
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2894, !tbaa.struct !1183
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2894
  call void @llvm.va_end(i8* nonnull %7), !dbg !2895
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2896
  ret void, !dbg !2896
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2897 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2898, !tbaa !453
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2898
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.121, i64 0, i64 0), i32 noundef 5) #33, !dbg !2899
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.122, i64 0, i64 0)) #33, !dbg !2899
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.123, i64 0, i64 0), i32 noundef 5) #33, !dbg !2900
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.125, i64 0, i64 0)) #33, !dbg !2900
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.126, i64 0, i64 0), i32 noundef 5) #33, !dbg !2901
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.127, i64 0, i64 0)) #33, !dbg !2901
  ret void, !dbg !2902
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2903 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2908, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %1, metadata !2909, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i64 %2, metadata !2910, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()) #33, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()) #33, !dbg !2917
  call void @llvm.dbg.value(metadata i64 %2, metadata !2916, metadata !DIExpression()) #33, !dbg !2917
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2919
  call void @llvm.dbg.value(metadata i8* %4, metadata !2920, metadata !DIExpression()) #33, !dbg !2925
  %5 = icmp eq i8* %4, null, !dbg !2927
  br i1 %5, label %6, label %7, !dbg !2929

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2930
  unreachable, !dbg !2930

7:                                                ; preds = %3
  ret i8* %4, !dbg !2931
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2913 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2915, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %2, metadata !2916, metadata !DIExpression()), !dbg !2932
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %4, metadata !2920, metadata !DIExpression()) #33, !dbg !2934
  %5 = icmp eq i8* %4, null, !dbg !2936
  br i1 %5, label %6, label %7, !dbg !2937

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2938
  unreachable, !dbg !2938

7:                                                ; preds = %3
  ret i8* %4, !dbg !2939
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2940 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()), !dbg !2945
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2946
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()) #33, !dbg !2947
  %3 = icmp eq i8* %2, null, !dbg !2949
  br i1 %3, label %4, label %5, !dbg !2950

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2951
  unreachable, !dbg !2951

5:                                                ; preds = %1
  ret i8* %2, !dbg !2952
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2953 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2957, metadata !DIExpression()), !dbg !2958
  call void @llvm.dbg.value(metadata i64 %0, metadata !2959, metadata !DIExpression()) #33, !dbg !2963
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2965
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()) #33, !dbg !2966
  %3 = icmp eq i8* %2, null, !dbg !2968
  br i1 %3, label %4, label %5, !dbg !2969

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2970
  unreachable, !dbg !2970

5:                                                ; preds = %1
  ret i8* %2, !dbg !2971
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2972 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2976, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata i64 %0, metadata !2944, metadata !DIExpression()) #33, !dbg !2978
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2980
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()) #33, !dbg !2981
  %3 = icmp eq i8* %2, null, !dbg !2983
  br i1 %3, label %4, label %5, !dbg !2984

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2985
  unreachable, !dbg !2985

5:                                                ; preds = %1
  ret i8* %2, !dbg !2986
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !2987 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i64 %1, metadata !2992, metadata !DIExpression()), !dbg !2993
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #33, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #33, !dbg !2999
  %3 = icmp eq i64 %1, 0, !dbg !3001
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3001
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3002
  call void @llvm.dbg.value(metadata i8* %5, metadata !2920, metadata !DIExpression()) #33, !dbg !3003
  %6 = icmp eq i8* %5, null, !dbg !3005
  br i1 %6, label %7, label %8, !dbg !3006

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3007
  unreachable, !dbg !3007

8:                                                ; preds = %2
  ret i8* %5, !dbg !3008
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3009 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3013, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i64 %1, metadata !3014, metadata !DIExpression()), !dbg !3015
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()) #33, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %1, metadata !3019, metadata !DIExpression()) #33, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #33, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !2998, metadata !DIExpression()) #33, !dbg !3022
  %3 = icmp eq i64 %1, 0, !dbg !3024
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3024
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3025
  call void @llvm.dbg.value(metadata i8* %5, metadata !2920, metadata !DIExpression()) #33, !dbg !3026
  %6 = icmp eq i8* %5, null, !dbg !3028
  br i1 %6, label %7, label %8, !dbg !3029

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3030
  unreachable, !dbg !3030

8:                                                ; preds = %2
  ret i8* %5, !dbg !3031
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3036, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i64 %2, metadata !3038, metadata !DIExpression()), !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !3040, metadata !DIExpression()) #33, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()) #33, !dbg !3045
  call void @llvm.dbg.value(metadata i64 %2, metadata !3044, metadata !DIExpression()) #33, !dbg !3045
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %4, metadata !2920, metadata !DIExpression()) #33, !dbg !3048
  %5 = icmp eq i8* %4, null, !dbg !3050
  br i1 %5, label %6, label %7, !dbg !3051

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3052
  unreachable, !dbg !3052

7:                                                ; preds = %3
  ret i8* %4, !dbg !3053
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3054 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3058, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i64 %1, metadata !3059, metadata !DIExpression()), !dbg !3060
  call void @llvm.dbg.value(metadata i8* null, metadata !2912, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %0, metadata !2915, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !2916, metadata !DIExpression()) #33, !dbg !3061
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3063
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3064
  %4 = icmp eq i8* %3, null, !dbg !3066
  br i1 %4, label %5, label %6, !dbg !3067

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3068
  unreachable, !dbg !3068

6:                                                ; preds = %2
  ret i8* %3, !dbg !3069
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3070 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i8* null, metadata !3036, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %0, metadata !3037, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3038, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i8* null, metadata !3040, metadata !DIExpression()) #33, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %0, metadata !3043, metadata !DIExpression()) #33, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %1, metadata !3044, metadata !DIExpression()) #33, !dbg !3079
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3081
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3082
  %4 = icmp eq i8* %3, null, !dbg !3084
  br i1 %4, label %5, label %6, !dbg !3085

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3086
  unreachable, !dbg !3086

6:                                                ; preds = %2
  ret i8* %3, !dbg !3087
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3088 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3092, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i64* %1, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.value(metadata i8* %0, metadata !384, metadata !DIExpression()) #33, !dbg !3095
  call void @llvm.dbg.value(metadata i64* %1, metadata !385, metadata !DIExpression()) #33, !dbg !3095
  call void @llvm.dbg.value(metadata i64 1, metadata !386, metadata !DIExpression()) #33, !dbg !3095
  %3 = load i64, i64* %1, align 8, !dbg !3097, !tbaa !2193
  call void @llvm.dbg.value(metadata i64 %3, metadata !387, metadata !DIExpression()) #33, !dbg !3095
  %4 = icmp eq i8* %0, null, !dbg !3098
  br i1 %4, label %5, label %8, !dbg !3100

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3101
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3104
  br label %15, !dbg !3104

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3105
  %10 = add nuw i64 %9, 1, !dbg !3105
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3105
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3105
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %13, metadata !387, metadata !DIExpression()) #33, !dbg !3095
  br i1 %12, label %14, label %15, !dbg !3108

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3109
  unreachable, !dbg !3109

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3095
  call void @llvm.dbg.value(metadata i64 %16, metadata !387, metadata !DIExpression()) #33, !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()) #33, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %16, metadata !2915, metadata !DIExpression()) #33, !dbg !3110
  call void @llvm.dbg.value(metadata i64 1, metadata !2916, metadata !DIExpression()) #33, !dbg !3110
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %17, metadata !2920, metadata !DIExpression()) #33, !dbg !3113
  %18 = icmp eq i8* %17, null, !dbg !3115
  br i1 %18, label %19, label %20, !dbg !3116

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3117
  unreachable, !dbg !3117

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !384, metadata !DIExpression()) #33, !dbg !3095
  store i64 %16, i64* %1, align 8, !dbg !3118, !tbaa !2193
  ret i8* %17, !dbg !3119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !379 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !384, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64* %1, metadata !385, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i64 %2, metadata !386, metadata !DIExpression()), !dbg !3120
  %4 = load i64, i64* %1, align 8, !dbg !3121, !tbaa !2193
  call void @llvm.dbg.value(metadata i64 %4, metadata !387, metadata !DIExpression()), !dbg !3120
  %5 = icmp eq i8* %0, null, !dbg !3122
  br i1 %5, label %6, label %13, !dbg !3123

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3124
  br i1 %7, label %8, label %20, !dbg !3125

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3126
  call void @llvm.dbg.value(metadata i64 %9, metadata !387, metadata !DIExpression()), !dbg !3120
  %10 = icmp ugt i64 %2, 128, !dbg !3128
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %12, metadata !387, metadata !DIExpression()), !dbg !3120
  br label %20, !dbg !3130

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3131
  %15 = add nuw i64 %14, 1, !dbg !3131
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3131
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3131
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3131
  call void @llvm.dbg.value(metadata i64 %18, metadata !387, metadata !DIExpression()), !dbg !3120
  br i1 %17, label %19, label %20, !dbg !3132

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3133
  unreachable, !dbg !3133

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3120
  call void @llvm.dbg.value(metadata i64 %21, metadata !387, metadata !DIExpression()), !dbg !3120
  call void @llvm.dbg.value(metadata i8* %0, metadata !2912, metadata !DIExpression()) #33, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %21, metadata !2915, metadata !DIExpression()) #33, !dbg !3134
  call void @llvm.dbg.value(metadata i64 %2, metadata !2916, metadata !DIExpression()) #33, !dbg !3134
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3136
  call void @llvm.dbg.value(metadata i8* %22, metadata !2920, metadata !DIExpression()) #33, !dbg !3137
  %23 = icmp eq i8* %22, null, !dbg !3139
  br i1 %23, label %24, label %25, !dbg !3140

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3141
  unreachable, !dbg !3141

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !384, metadata !DIExpression()), !dbg !3120
  store i64 %21, i64* %1, align 8, !dbg !3142, !tbaa !2193
  ret i8* %22, !dbg !3143
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !391 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !399, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64* %1, metadata !400, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %2, metadata !401, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %3, metadata !402, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %4, metadata !403, metadata !DIExpression()), !dbg !3144
  %6 = load i64, i64* %1, align 8, !dbg !3145, !tbaa !2193
  call void @llvm.dbg.value(metadata i64 %6, metadata !404, metadata !DIExpression()), !dbg !3144
  %7 = ashr i64 %6, 1, !dbg !3146
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3146
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3146
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %10, metadata !405, metadata !DIExpression()), !dbg !3144
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3148
  call void @llvm.dbg.value(metadata i64 %11, metadata !405, metadata !DIExpression()), !dbg !3144
  %12 = icmp sgt i64 %3, -1, !dbg !3149
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3151
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3151
  call void @llvm.dbg.value(metadata i64 %15, metadata !405, metadata !DIExpression()), !dbg !3144
  %16 = icmp slt i64 %4, 0, !dbg !3152
  br i1 %16, label %17, label %30, !dbg !3152

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3152
  br i1 %18, label %19, label %24, !dbg !3152

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3152
  %21 = udiv i64 9223372036854775807, %20, !dbg !3152
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3152
  br i1 %23, label %46, label %43, !dbg !3152

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3152
  br i1 %25, label %43, label %26, !dbg !3152

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3152
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3152
  %29 = icmp ult i64 %28, %15, !dbg !3152
  br i1 %29, label %46, label %43, !dbg !3152

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3152
  br i1 %31, label %43, label %32, !dbg !3152

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3152
  br i1 %33, label %34, label %40, !dbg !3152

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3152
  br i1 %35, label %43, label %36, !dbg !3152

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3152
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3152
  %39 = icmp ult i64 %38, %4, !dbg !3152
  br i1 %39, label %46, label %43, !dbg !3152

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3152
  %42 = icmp ult i64 %41, %15, !dbg !3152
  br i1 %42, label %46, label %43, !dbg !3152

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3144
  %44 = mul i64 %15, %4, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %44, metadata !406, metadata !DIExpression()), !dbg !3144
  %45 = icmp slt i64 %44, 128, !dbg !3152
  br i1 %45, label %46, label %52, !dbg !3152

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !407, metadata !DIExpression()), !dbg !3144
  %48 = sdiv i64 %47, %4, !dbg !3153
  call void @llvm.dbg.value(metadata i64 %48, metadata !405, metadata !DIExpression()), !dbg !3144
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3156
  call void @llvm.dbg.value(metadata i64 %51, metadata !406, metadata !DIExpression()), !dbg !3144
  br label %52, !dbg !3157

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3144
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %54, metadata !406, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %53, metadata !405, metadata !DIExpression()), !dbg !3144
  %55 = icmp eq i8* %0, null, !dbg !3158
  br i1 %55, label %56, label %57, !dbg !3160

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3161, !tbaa !2193
  br label %57, !dbg !3162

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3163
  %59 = icmp slt i64 %58, %2, !dbg !3165
  br i1 %59, label %60, label %97, !dbg !3166

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3167
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3167
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3167
  call void @llvm.dbg.value(metadata i64 %63, metadata !405, metadata !DIExpression()), !dbg !3144
  br i1 %62, label %96, label %64, !dbg !3168

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3169
  br i1 %66, label %96, label %67, !dbg !3169

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3170

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3170
  br i1 %69, label %70, label %75, !dbg !3170

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3170
  %72 = udiv i64 9223372036854775807, %71, !dbg !3170
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3170
  br i1 %74, label %96, label %94, !dbg !3170

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3170
  br i1 %76, label %94, label %77, !dbg !3170

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3170
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3170
  %80 = icmp ult i64 %79, %63, !dbg !3170
  br i1 %80, label %96, label %94, !dbg !3170

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3170
  br i1 %82, label %94, label %83, !dbg !3170

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3170
  br i1 %84, label %85, label %91, !dbg !3170

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3170
  br i1 %86, label %94, label %87, !dbg !3170

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3170
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3170
  %90 = icmp ult i64 %89, %4, !dbg !3170
  br i1 %90, label %96, label %94, !dbg !3170

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3170
  %93 = icmp ult i64 %92, %63, !dbg !3170
  br i1 %93, label %96, label %94, !dbg !3170

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !406, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3144
  %95 = mul i64 %63, %4, !dbg !3170
  call void @llvm.dbg.value(metadata i64 %95, metadata !406, metadata !DIExpression()), !dbg !3144
  br label %97, !dbg !3171

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3172
  unreachable, !dbg !3172

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3144
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3144
  call void @llvm.dbg.value(metadata i64 %99, metadata !406, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i64 %98, metadata !405, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %0, metadata !2991, metadata !DIExpression()) #33, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %99, metadata !2992, metadata !DIExpression()) #33, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !2994, metadata !DIExpression()) #33, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %99, metadata !2998, metadata !DIExpression()) #33, !dbg !3175
  %100 = icmp eq i64 %99, 0, !dbg !3177
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3177
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3178
  call void @llvm.dbg.value(metadata i8* %102, metadata !2920, metadata !DIExpression()) #33, !dbg !3179
  %103 = icmp eq i8* %102, null, !dbg !3181
  br i1 %103, label %104, label %105, !dbg !3182

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3183
  unreachable, !dbg !3183

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !399, metadata !DIExpression()), !dbg !3144
  store i64 %98, i64* %1, align 8, !dbg !3184, !tbaa !2193
  ret i8* %102, !dbg !3185
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3186 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3188, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 %0, metadata !3190, metadata !DIExpression()) #33, !dbg !3194
  call void @llvm.dbg.value(metadata i64 1, metadata !3193, metadata !DIExpression()) #33, !dbg !3194
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3196
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()) #33, !dbg !3197
  %3 = icmp eq i8* %2, null, !dbg !3199
  br i1 %3, label %4, label %5, !dbg !3200

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3201
  unreachable, !dbg !3201

5:                                                ; preds = %1
  ret i8* %2, !dbg !3202
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3191 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3190, metadata !DIExpression()), !dbg !3203
  call void @llvm.dbg.value(metadata i64 %1, metadata !3193, metadata !DIExpression()), !dbg !3203
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3205
  %4 = icmp eq i8* %3, null, !dbg !3207
  br i1 %4, label %5, label %6, !dbg !3208

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3209
  unreachable, !dbg !3209

6:                                                ; preds = %2
  ret i8* %3, !dbg !3210
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3211 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()) #33, !dbg !3219
  call void @llvm.dbg.value(metadata i64 1, metadata !3218, metadata !DIExpression()) #33, !dbg !3219
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()) #33, !dbg !3225
  call void @llvm.dbg.value(metadata i64 1, metadata !3224, metadata !DIExpression()) #33, !dbg !3225
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()) #33, !dbg !3225
  call void @llvm.dbg.value(metadata i64 1, metadata !3224, metadata !DIExpression()) #33, !dbg !3225
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !2920, metadata !DIExpression()) #33, !dbg !3228
  %3 = icmp eq i8* %2, null, !dbg !3230
  br i1 %3, label %4, label %5, !dbg !3231

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3232
  unreachable, !dbg !3232

5:                                                ; preds = %1
  ret i8* %2, !dbg !3233
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3216 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3215, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3218, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()) #33, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #33, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()) #33, !dbg !3235
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()) #33, !dbg !3235
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3238
  %4 = icmp eq i8* %3, null, !dbg !3240
  br i1 %4, label %5, label %6, !dbg !3241

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3242
  unreachable, !dbg !3242

6:                                                ; preds = %2
  ret i8* %3, !dbg !3243
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3244 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3248, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i64 %1, metadata !2944, metadata !DIExpression()) #33, !dbg !3251
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3253
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3254
  %4 = icmp eq i8* %3, null, !dbg !3256
  br i1 %4, label %5, label %6, !dbg !3257

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3258
  unreachable, !dbg !3258

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()) #33, !dbg !3267
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()) #33, !dbg !3267
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3269
  ret i8* %3, !dbg !3270
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3271 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3275, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !3276, metadata !DIExpression()), !dbg !3277
  call void @llvm.dbg.value(metadata i64 %1, metadata !2957, metadata !DIExpression()) #33, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %1, metadata !2959, metadata !DIExpression()) #33, !dbg !3280
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %3, metadata !2920, metadata !DIExpression()) #33, !dbg !3283
  %4 = icmp eq i8* %3, null, !dbg !3285
  br i1 %4, label %5, label %6, !dbg !3286

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3287
  unreachable, !dbg !3287

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()) #33, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3288
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()) #33, !dbg !3288
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3290
  ret i8* %3, !dbg !3291
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3292 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()), !dbg !3299
  %3 = add nsw i64 %1, 1, !dbg !3300
  call void @llvm.dbg.value(metadata i64 %3, metadata !2957, metadata !DIExpression()) #33, !dbg !3301
  call void @llvm.dbg.value(metadata i64 %3, metadata !2959, metadata !DIExpression()) #33, !dbg !3303
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %4, metadata !2920, metadata !DIExpression()) #33, !dbg !3306
  %5 = icmp eq i8* %4, null, !dbg !3308
  br i1 %5, label %6, label %7, !dbg !3309

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3310
  unreachable, !dbg !3310

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3298, metadata !DIExpression()), !dbg !3299
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3311
  store i8 0, i8* %8, align 1, !dbg !3312, !tbaa !549
  call void @llvm.dbg.value(metadata i8* %4, metadata !3259, metadata !DIExpression()) #33, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3266, metadata !DIExpression()) #33, !dbg !3313
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3315
  ret i8* %4, !dbg !3316
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3317 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3319, metadata !DIExpression()), !dbg !3320
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3321
  %3 = add i64 %2, 1, !dbg !3322
  call void @llvm.dbg.value(metadata i8* %0, metadata !3248, metadata !DIExpression()) #33, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !3249, metadata !DIExpression()) #33, !dbg !3323
  call void @llvm.dbg.value(metadata i64 %3, metadata !2944, metadata !DIExpression()) #33, !dbg !3325
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3327
  call void @llvm.dbg.value(metadata i8* %4, metadata !2920, metadata !DIExpression()) #33, !dbg !3328
  %5 = icmp eq i8* %4, null, !dbg !3330
  br i1 %5, label %6, label %7, !dbg !3331

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3332
  unreachable, !dbg !3332

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3259, metadata !DIExpression()) #33, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3265, metadata !DIExpression()) #33, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %3, metadata !3266, metadata !DIExpression()) #33, !dbg !3333
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3335
  ret i8* %4, !dbg !3336
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3337 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3342, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %1, metadata !3339, metadata !DIExpression()), !dbg !3343
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.140, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.141, i64 0, i64 0), i32 noundef 5) #33, !dbg !3342
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.142, i64 0, i64 0), i8* noundef %2) #33, !dbg !3342
  %3 = icmp eq i32 %1, 0, !dbg !3342
  tail call void @llvm.assume(i1 %3), !dbg !3342
  tail call void @abort() #35, !dbg !3344
  unreachable, !dbg !3344
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @last_component(i8* noundef readonly %0) local_unnamed_addr #19 !dbg !3345 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3347, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %0, metadata !3348, metadata !DIExpression()), !dbg !3352
  br label %2, !dbg !3353

2:                                                ; preds = %2, %1
  %3 = phi i8* [ %0, %1 ], [ %6, %2 ], !dbg !3352
  call void @llvm.dbg.value(metadata i8* %3, metadata !3348, metadata !DIExpression()), !dbg !3352
  %4 = load i8, i8* %3, align 1, !dbg !3354, !tbaa !549
  %5 = icmp eq i8 %4, 47, !dbg !3354
  %6 = getelementptr inbounds i8, i8* %3, i64 1, !dbg !3355
  call void @llvm.dbg.value(metadata i8* %6, metadata !3348, metadata !DIExpression()), !dbg !3352
  br i1 %5, label %2, label %7, !dbg !3353, !llvm.loop !3356

7:                                                ; preds = %2, %15
  %8 = phi i8 [ %19, %15 ], [ %4, %2 ], !dbg !3357
  %9 = phi i8* [ %16, %15 ], [ %3, %2 ], !dbg !3359
  %10 = phi i1 [ %17, %15 ], [ false, %2 ]
  %11 = phi i8* [ %18, %15 ], [ %3, %2 ], !dbg !3360
  call void @llvm.dbg.value(metadata i8* %11, metadata !3350, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %9, metadata !3348, metadata !DIExpression()), !dbg !3352
  switch i8 %8, label %13 [
    i8 0, label %12
    i8 47, label %15
  ], !dbg !3361

12:                                               ; preds = %7
  ret i8* %9, !dbg !3362

13:                                               ; preds = %7
  %14 = select i1 %10, i8* %11, i8* %9, !dbg !3363
  br label %15, !dbg !3363

15:                                               ; preds = %13, %7
  %16 = phi i8* [ %9, %7 ], [ %14, %13 ], !dbg !3352
  %17 = phi i1 [ true, %7 ], [ false, %13 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3349, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i8* %16, metadata !3348, metadata !DIExpression()), !dbg !3352
  %18 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !3366
  call void @llvm.dbg.value(metadata i8* %18, metadata !3350, metadata !DIExpression()), !dbg !3360
  %19 = load i8, i8* %18, align 1, !dbg !3357, !tbaa !549
  br label %7, !dbg !3367, !llvm.loop !3368
}

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local i64 @base_len(i8* nocapture noundef readonly %0) local_unnamed_addr #30 !dbg !3370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3374, metadata !DIExpression()), !dbg !3377
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3378
  call void @llvm.dbg.value(metadata i64 %2, metadata !3375, metadata !DIExpression()), !dbg !3377
  %3 = icmp ne i64 %2, 0, !dbg !3380
  %4 = zext i1 %3 to i64, !dbg !3380
  br label %5, !dbg !3380

5:                                                ; preds = %8, %1
  %6 = phi i64 [ %2, %1 ], [ %9, %8 ], !dbg !3381
  call void @llvm.dbg.value(metadata i64 %6, metadata !3375, metadata !DIExpression()), !dbg !3377
  %7 = icmp ugt i64 %6, 1, !dbg !3382
  br i1 %7, label %8, label %13, !dbg !3384

8:                                                ; preds = %5
  %9 = add i64 %6, -1, !dbg !3385
  %10 = getelementptr inbounds i8, i8* %0, i64 %9, !dbg !3385
  %11 = load i8, i8* %10, align 1, !dbg !3385, !tbaa !549
  %12 = icmp eq i8 %11, 47, !dbg !3385
  br i1 %12, label %5, label %13, !dbg !3386, !llvm.loop !3387

13:                                               ; preds = %5, %8
  %14 = phi i64 [ %4, %5 ], [ %6, %8 ], !dbg !3381
  call void @llvm.dbg.value(metadata i64 0, metadata !3376, metadata !DIExpression()), !dbg !3377
  ret i64 %14, !dbg !3389
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3390 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3428, metadata !DIExpression()), !dbg !3433
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3434
  call void @llvm.dbg.value(metadata i1 undef, metadata !3429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3433
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3435, metadata !DIExpression()), !dbg !3438
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3440
  %4 = load i32, i32* %3, align 8, !dbg !3440, !tbaa !3441
  %5 = and i32 %4, 32, !dbg !3442
  %6 = icmp eq i32 %5, 0, !dbg !3442
  call void @llvm.dbg.value(metadata i1 %6, metadata !3431, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3433
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3443
  %8 = icmp eq i32 %7, 0, !dbg !3444
  call void @llvm.dbg.value(metadata i1 %8, metadata !3432, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3433
  br i1 %6, label %9, label %19, !dbg !3445

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3447
  call void @llvm.dbg.value(metadata i1 %10, metadata !3429, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3433
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3448
  %12 = xor i1 %8, true, !dbg !3448
  %13 = sext i1 %12 to i32, !dbg !3448
  br i1 %11, label %22, label %14, !dbg !3448

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3449
  %16 = load i32, i32* %15, align 4, !dbg !3449, !tbaa !540
  %17 = icmp ne i32 %16, 9, !dbg !3450
  %18 = sext i1 %17 to i32, !dbg !3451
  br label %22, !dbg !3451

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3452

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3454
  store i32 0, i32* %21, align 4, !dbg !3456, !tbaa !540
  br label %22, !dbg !3454

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3433
  ret i32 %23, !dbg !3457
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3458 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3496, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3497, metadata !DIExpression()), !dbg !3500
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3501
  call void @llvm.dbg.value(metadata i32 %2, metadata !3498, metadata !DIExpression()), !dbg !3500
  %3 = icmp slt i32 %2, 0, !dbg !3502
  br i1 %3, label %4, label %6, !dbg !3504

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3505
  br label %24, !dbg !3506

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3507
  %8 = icmp eq i32 %7, 0, !dbg !3507
  br i1 %8, label %13, label %9, !dbg !3509

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3510
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3511
  %12 = icmp eq i64 %11, -1, !dbg !3512
  br i1 %12, label %16, label %13, !dbg !3513

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3514
  %15 = icmp eq i32 %14, 0, !dbg !3514
  br i1 %15, label %16, label %18, !dbg !3515

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %21, metadata !3499, metadata !DIExpression()), !dbg !3500
  br label %24, !dbg !3517

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3518
  %20 = load i32, i32* %19, align 4, !dbg !3518, !tbaa !540
  call void @llvm.dbg.value(metadata i32 %20, metadata !3497, metadata !DIExpression()), !dbg !3500
  call void @llvm.dbg.value(metadata i32 0, metadata !3499, metadata !DIExpression()), !dbg !3500
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3516
  call void @llvm.dbg.value(metadata i32 %21, metadata !3499, metadata !DIExpression()), !dbg !3500
  %22 = icmp eq i32 %20, 0, !dbg !3519
  br i1 %22, label %24, label %23, !dbg !3517

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3521, !tbaa !540
  call void @llvm.dbg.value(metadata i32 -1, metadata !3499, metadata !DIExpression()), !dbg !3500
  br label %24, !dbg !3523

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3500
  ret i32 %25, !dbg !3524
}

; Function Attrs: nofree nounwind
declare !dbg !3525 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3526 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3527 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3530 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3568, metadata !DIExpression()), !dbg !3569
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3570
  br i1 %2, label %6, label %3, !dbg !3572

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3573
  %5 = icmp eq i32 %4, 0, !dbg !3573
  br i1 %5, label %6, label %8, !dbg !3574

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3575
  br label %17, !dbg !3576

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3577, metadata !DIExpression()) #33, !dbg !3582
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3584
  %10 = load i32, i32* %9, align 8, !dbg !3584, !tbaa !3441
  %11 = and i32 %10, 256, !dbg !3586
  %12 = icmp eq i32 %11, 0, !dbg !3586
  br i1 %12, label %15, label %13, !dbg !3587

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3588
  br label %15, !dbg !3588

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3589
  br label %17, !dbg !3590

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3569
  ret i32 %18, !dbg !3591
}

; Function Attrs: nofree nounwind
declare !dbg !3592 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3593 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3632, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %1, metadata !3633, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i32 %2, metadata !3634, metadata !DIExpression()), !dbg !3638
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3639
  %5 = load i8*, i8** %4, align 8, !dbg !3639, !tbaa !3640
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3641
  %7 = load i8*, i8** %6, align 8, !dbg !3641, !tbaa !3642
  %8 = icmp eq i8* %5, %7, !dbg !3643
  br i1 %8, label %9, label %28, !dbg !3644

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3645
  %11 = load i8*, i8** %10, align 8, !dbg !3645, !tbaa !1094
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3646
  %13 = load i8*, i8** %12, align 8, !dbg !3646, !tbaa !3647
  %14 = icmp eq i8* %11, %13, !dbg !3648
  br i1 %14, label %15, label %28, !dbg !3649

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3650
  %17 = load i8*, i8** %16, align 8, !dbg !3650, !tbaa !3651
  %18 = icmp eq i8* %17, null, !dbg !3652
  br i1 %18, label %19, label %28, !dbg !3653

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3654
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %21, metadata !3635, metadata !DIExpression()), !dbg !3656
  %22 = icmp eq i64 %21, -1, !dbg !3657
  br i1 %22, label %30, label %23, !dbg !3659

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3660
  %25 = load i32, i32* %24, align 8, !dbg !3661, !tbaa !3441
  %26 = and i32 %25, -17, !dbg !3661
  store i32 %26, i32* %24, align 8, !dbg !3661, !tbaa !3441
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3662
  store i64 %21, i64* %27, align 8, !dbg !3663, !tbaa !3664
  br label %30, !dbg !3665

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3666
  br label %30, !dbg !3667

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3638
  ret i32 %31, !dbg !3668
}

; Function Attrs: nofree nounwind
declare !dbg !3669 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3672 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3677, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %1, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %2, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3680, metadata !DIExpression()), !dbg !3682
  %5 = icmp eq i8* %1, null, !dbg !3683
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3685
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), i8* %1, !dbg !3685
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3685
  call void @llvm.dbg.value(metadata i64 %8, metadata !3679, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i8* %7, metadata !3678, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32* %6, metadata !3677, metadata !DIExpression()), !dbg !3682
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3686
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3688
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3680, metadata !DIExpression()), !dbg !3682
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3689
  call void @llvm.dbg.value(metadata i64 %11, metadata !3681, metadata !DIExpression()), !dbg !3682
  %12 = icmp ult i64 %11, -3, !dbg !3690
  br i1 %12, label %13, label %18, !dbg !3692

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3693
  %15 = icmp eq i32 %14, 0, !dbg !3693
  br i1 %15, label %16, label %30, !dbg !3694

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3695, metadata !DIExpression()) #33, !dbg !3700
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3702, metadata !DIExpression()) #33, !dbg !3707
  call void @llvm.dbg.value(metadata i32 0, metadata !3705, metadata !DIExpression()) #33, !dbg !3707
  call void @llvm.dbg.value(metadata i64 8, metadata !3706, metadata !DIExpression()) #33, !dbg !3707
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3709
  store i64 0, i64* %17, align 1, !dbg !3709
  br label %30, !dbg !3710

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3711
  br i1 %19, label %20, label %21, !dbg !3713

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3714
  unreachable, !dbg !3714

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3715

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3717
  br i1 %24, label %30, label %25, !dbg !3718

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3719
  br i1 %26, label %30, label %27, !dbg !3722

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3723, !tbaa !549
  %29 = zext i8 %28 to i32, !dbg !3724
  store i32 %29, i32* %6, align 4, !dbg !3725, !tbaa !540
  br label %30, !dbg !3726

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3682
  ret i64 %31, !dbg !3727
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3728 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3734 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3736, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %1, metadata !3737, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i64 %2, metadata !3738, metadata !DIExpression()), !dbg !3740
  %4 = icmp eq i64 %2, 0, !dbg !3741
  br i1 %4, label %8, label %5, !dbg !3741

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3741
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3741
  br i1 %7, label %13, label %8, !dbg !3741

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  %9 = mul i64 %2, %1, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %9, metadata !3739, metadata !DIExpression()), !dbg !3740
  call void @llvm.dbg.value(metadata i8* %0, metadata !3743, metadata !DIExpression()) #33, !dbg !3747
  call void @llvm.dbg.value(metadata i64 %9, metadata !3746, metadata !DIExpression()) #33, !dbg !3747
  %10 = icmp eq i64 %9, 0, !dbg !3749
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3749
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3750
  br label %15, !dbg !3751

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3739, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3740
  %14 = tail call i32* @__errno_location() #36, !dbg !3752
  store i32 12, i32* %14, align 4, !dbg !3754, !tbaa !540
  br label %15, !dbg !3755

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3740
  ret i8* %16, !dbg !3756
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3757 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3761, metadata !DIExpression()), !dbg !3766
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3767
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3767
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3762, metadata !DIExpression()), !dbg !3768
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3769
  %5 = icmp eq i32 %4, 0, !dbg !3769
  br i1 %5, label %6, label %13, !dbg !3771

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3772, metadata !DIExpression()) #33, !dbg !3776
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0), metadata !3775, metadata !DIExpression()) #33, !dbg !3776
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0), i64 2), !dbg !3779
  %8 = icmp eq i32 %7, 0, !dbg !3780
  br i1 %8, label %12, label %9, !dbg !3781

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3772, metadata !DIExpression()) #33, !dbg !3782
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), metadata !3775, metadata !DIExpression()) #33, !dbg !3782
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), i64 6), !dbg !3784
  %11 = icmp eq i32 %10, 0, !dbg !3785
  br i1 %11, label %12, label %13, !dbg !3786

12:                                               ; preds = %9, %6
  br label %13, !dbg !3787

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3766
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3788
  ret i1 %14, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3789 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3793, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8* %1, metadata !3794, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 %2, metadata !3795, metadata !DIExpression()), !dbg !3796
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3797
  ret i32 %4, !dbg !3798
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3799 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3804
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3805
  ret i8* %2, !dbg !3806
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3807 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3811
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3812
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()), !dbg !3811
  ret i8* %2, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3814 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3816, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i8* %1, metadata !3817, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i64 %2, metadata !3818, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()) #33, !dbg !3824
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3826
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #33, !dbg !3824
  call void @llvm.dbg.value(metadata i8* %4, metadata !3819, metadata !DIExpression()), !dbg !3823
  %5 = icmp eq i8* %4, null, !dbg !3827
  br i1 %5, label %6, label %9, !dbg !3828

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3829
  br i1 %7, label %19, label %8, !dbg !3832

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3833, !tbaa !549
  br label %19, !dbg !3834

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3835
  call void @llvm.dbg.value(metadata i64 %10, metadata !3820, metadata !DIExpression()), !dbg !3836
  %11 = icmp ult i64 %10, %2, !dbg !3837
  br i1 %11, label %12, label %14, !dbg !3839

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3840
  call void @llvm.dbg.value(metadata i8* %1, metadata !3842, metadata !DIExpression()) #33, !dbg !3847
  call void @llvm.dbg.value(metadata i8* %4, metadata !3845, metadata !DIExpression()) #33, !dbg !3847
  call void @llvm.dbg.value(metadata i64 %13, metadata !3846, metadata !DIExpression()) #33, !dbg !3847
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3849
  br label %19, !dbg !3850

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3851
  br i1 %15, label %19, label %16, !dbg !3854

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %1, metadata !3842, metadata !DIExpression()) #33, !dbg !3857
  call void @llvm.dbg.value(metadata i8* %4, metadata !3845, metadata !DIExpression()) #33, !dbg !3857
  call void @llvm.dbg.value(metadata i64 %17, metadata !3846, metadata !DIExpression()) #33, !dbg !3857
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3859
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3860
  store i8 0, i8* %18, align 1, !dbg !3861, !tbaa !549
  br label %19, !dbg !3862

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3863
  ret i32 %20, !dbg !3864
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
attributes #13 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { nofree nosync nounwind willreturn }
attributes #15 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { cold }
attributes #39 = { nounwind allocsize(1) }
attributes #40 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !361, !163, !168, !364, !175, !341, !366, !216, !226, !258, !368, !333, !375, !409, !411, !413, !415, !417, !419, !347, !421, !424, !426, !428}
!llvm.ident = !{!430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430, !430}
!llvm.module.flags = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 56, type: !146, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !42, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/rmdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "5a459e166db9bc86eb1f418ddcaeb865")
!4 = !{!5, !20, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 42, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !7, size: 32, elements: !22)
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 299, baseType: !37, size: 32, elements: !38)
!36 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{!39, !40, !41}
!39 = !DIEnumerator(name: "DS_UNKNOWN", value: -2)
!40 = !DIEnumerator(name: "DS_EMPTY", value: -1)
!41 = !DIEnumerator(name: "DS_NONEMPTY", value: 0)
!42 = !{!43, !45, !37, !46, !47, !50, !52}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54, !57, !59, !61, !0}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "remove_empty_parents", scope: !2, file: !3, line: 40, type: !56, isLocal: true, isDefinition: true)
!56 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "ignore_fail_on_non_empty", scope: !2, file: !3, line: 44, type: !56, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "verbose", scope: !2, file: !3, line: 47, type: !56, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !63, file: !36, line: 575, type: !37, isLocal: true, isDefinition: true)
!63 = distinct !DISubprogram(name: "oputs_", scope: !36, file: !36, line: 573, type: !64, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !50, !50}
!66 = !{!67, !68, !69, !72, !73, !74, !75, !79, !80, !81, !82, !84, !140, !141, !142, !144, !145}
!67 = !DILocalVariable(name: "program", arg: 1, scope: !63, file: !36, line: 573, type: !50)
!68 = !DILocalVariable(name: "option", arg: 2, scope: !63, file: !36, line: 573, type: !50)
!69 = !DILocalVariable(name: "term", scope: !70, file: !36, line: 585, type: !50)
!70 = distinct !DILexicalBlock(scope: !71, file: !36, line: 582, column: 5)
!71 = distinct !DILexicalBlock(scope: !63, file: !36, line: 581, column: 7)
!72 = !DILocalVariable(name: "double_space", scope: !63, file: !36, line: 594, type: !56)
!73 = !DILocalVariable(name: "first_word", scope: !63, file: !36, line: 595, type: !50)
!74 = !DILocalVariable(name: "option_text", scope: !63, file: !36, line: 596, type: !50)
!75 = !DILocalVariable(name: "s", scope: !76, file: !36, line: 608, type: !50)
!76 = distinct !DILexicalBlock(scope: !77, file: !36, line: 605, column: 5)
!77 = distinct !DILexicalBlock(scope: !78, file: !36, line: 604, column: 12)
!78 = distinct !DILexicalBlock(scope: !63, file: !36, line: 597, column: 7)
!79 = !DILocalVariable(name: "spaces", scope: !76, file: !36, line: 609, type: !47)
!80 = !DILocalVariable(name: "anchor_len", scope: !63, file: !36, line: 620, type: !47)
!81 = !DILocalVariable(name: "desc_text", scope: !63, file: !36, line: 625, type: !50)
!82 = !DILocalVariable(name: "__ptr", scope: !83, file: !36, line: 644, type: !50)
!83 = distinct !DILexicalBlock(scope: !63, file: !36, line: 644, column: 3)
!84 = !DILocalVariable(name: "__stream", scope: !83, file: !36, line: 644, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !88)
!87 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !90)
!89 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !106, !108, !109, !110, !114, !115, !117, !121, !124, !126, !129, !132, !133, !134, !135, !136}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !88, file: !89, line: 51, baseType: !37, size: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !88, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !88, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !88, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !88, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !88, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !88, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !88, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !88, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !88, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !88, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !88, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !88, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !89, line: 36, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !88, file: !89, line: 70, baseType: !107, size: 64, offset: 832)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !88, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !88, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !88, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !112, line: 152, baseType: !113)
!112 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !88, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !88, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!116 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !88, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !88, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !89, line: 43, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !88, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !112, line: 153, baseType: !113)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !88, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !89, line: 37, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !88, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !89, line: 38, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !88, file: !89, line: 93, baseType: !107, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !88, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !88, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !88, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !88, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 160, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 20)
!140 = !DILocalVariable(name: "__cnt", scope: !83, file: !36, line: 644, type: !47)
!141 = !DILocalVariable(name: "url_program", scope: !63, file: !36, line: 648, type: !50)
!142 = !DILocalVariable(name: "__ptr", scope: !143, file: !36, line: 686, type: !50)
!143 = distinct !DILexicalBlock(scope: !63, file: !36, line: 686, column: 3)
!144 = !DILocalVariable(name: "__stream", scope: !143, file: !36, line: 686, type: !85)
!145 = !DILocalVariable(name: "__cnt", scope: !143, file: !36, line: 686, type: !47)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 1792, elements: !156)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !149, line: 50, size: 256, elements: !150)
!149 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!150 = !{!151, !152, !153, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !149, line: 52, baseType: !50, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !148, file: !149, line: 55, baseType: !37, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !148, file: !149, line: 56, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !148, file: !149, line: 57, baseType: !37, size: 32, offset: 192)
!156 = !{!157}
!157 = !DISubrange(count: 7)
!158 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!159 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!160 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "Version", scope: !163, file: !164, line: 3, type: !50, isLocal: false, isDefinition: true)
!163 = distinct !DICompileUnit(language: DW_LANG_C99, file: !164, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !165, splitDebugInlining: false, nameTableKind: None)
!164 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!165 = !{!161}
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "file_name", scope: !168, file: !169, line: 45, type: !50, isLocal: true, isDefinition: true)
!168 = distinct !DICompileUnit(language: DW_LANG_C99, file: !169, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !170, splitDebugInlining: false, nameTableKind: None)
!169 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!170 = !{!166, !171}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !168, file: !169, line: 55, type: !56, isLocal: true, isDefinition: true)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !175, file: !176, line: 66, type: !211, isLocal: false, isDefinition: true)
!175 = distinct !DICompileUnit(language: DW_LANG_C99, file: !176, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !177, globals: !178, splitDebugInlining: false, nameTableKind: None)
!176 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!177 = !{!45, !52}
!178 = !{!179, !205, !173, !207, !209}
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "old_file_name", scope: !181, file: !176, line: 304, type: !50, isLocal: true, isDefinition: true)
!181 = distinct !DISubprogram(name: "verror_at_line", scope: !176, file: !176, line: 298, type: !182, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !198)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !37, !37, !50, !7, !50, !184}
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !185, line: 52, baseType: !186)
!185 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !187, line: 32, baseType: !188)
!187 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !189, baseType: !190)
!189 = !DIFile(filename: "lib/error.c", directory: "/src")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !191, size: 256, elements: !192)
!191 = !DINamespace(name: "std", scope: null)
!192 = !{!193, !194, !195, !196, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !190, file: !189, baseType: !45, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !190, file: !189, baseType: !45, size: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !190, file: !189, baseType: !45, size: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !190, file: !189, baseType: !37, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !190, file: !189, baseType: !37, size: 32, offset: 224)
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DILocalVariable(name: "status", arg: 1, scope: !181, file: !176, line: 298, type: !37)
!200 = !DILocalVariable(name: "errnum", arg: 2, scope: !181, file: !176, line: 298, type: !37)
!201 = !DILocalVariable(name: "file_name", arg: 3, scope: !181, file: !176, line: 298, type: !50)
!202 = !DILocalVariable(name: "line_number", arg: 4, scope: !181, file: !176, line: 298, type: !7)
!203 = !DILocalVariable(name: "message", arg: 5, scope: !181, file: !176, line: 298, type: !50)
!204 = !DILocalVariable(name: "args", arg: 6, scope: !181, file: !176, line: 298, type: !184)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "old_line_number", scope: !181, file: !176, line: 305, type: !7, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(name: "error_message_count", scope: !175, file: !176, line: 69, type: !7, isLocal: false, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !175, file: !176, line: 295, type: !37, isLocal: false, isDefinition: true)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(name: "program_name", scope: !216, file: !217, line: 31, type: !50, isLocal: false, isDefinition: true)
!216 = distinct !DICompileUnit(language: DW_LANG_C99, file: !217, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !218, globals: !219, splitDebugInlining: false, nameTableKind: None)
!217 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!218 = !{!43}
!219 = !{!214}
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "utf07FF", scope: !222, file: !223, line: 46, type: !253, isLocal: true, isDefinition: true)
!222 = distinct !DISubprogram(name: "proper_name_lite", scope: !223, file: !223, line: 38, type: !224, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !228)
!223 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!224 = !DISubroutineType(types: !225)
!225 = !{!50, !50, !50}
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !223, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !227, splitDebugInlining: false, nameTableKind: None)
!227 = !{!220}
!228 = !{!229, !230, !231, !232, !237}
!229 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !222, file: !223, line: 38, type: !50)
!230 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !222, file: !223, line: 38, type: !50)
!231 = !DILocalVariable(name: "translation", scope: !222, file: !223, line: 40, type: !50)
!232 = !DILocalVariable(name: "w", scope: !222, file: !223, line: 47, type: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !234, line: 37, baseType: !235)
!234 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !112, line: 57, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !112, line: 42, baseType: !7)
!237 = !DILocalVariable(name: "mbs", scope: !222, file: !223, line: 48, type: !238)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !240)
!239 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !242)
!241 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !242, file: !241, line: 15, baseType: !37, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !242, file: !241, line: 20, baseType: !246, size: 32, offset: 32)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 16, size: 32, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !246, file: !241, line: 18, baseType: !7, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !246, file: !241, line: 19, baseType: !250, size: 32)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 32, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 4)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !258, file: !259, line: 76, type: !327, isLocal: false, isDefinition: true)
!258 = distinct !DICompileUnit(language: DW_LANG_C99, file: !259, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !260, retainedTypes: !266, globals: !267, splitDebugInlining: false, nameTableKind: None)
!259 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!260 = !{!5, !261, !20}
!261 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !262)
!262 = !{!263, !264, !265}
!263 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!264 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!265 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!266 = !{!37, !46, !47}
!267 = !{!256, !268, !274, !286, !288, !293, !316, !323, !325}
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !258, file: !259, line: 92, type: !270, isLocal: false, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 320, elements: !272)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!272 = !{!273}
!273 = !DISubrange(count: 10)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !258, file: !259, line: 1040, type: !276, isLocal: false, isDefinition: true)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !259, line: 56, size: 448, elements: !277)
!277 = !{!278, !279, !280, !284, !285}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !276, file: !259, line: 59, baseType: !5, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !259, line: 62, baseType: !37, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !276, file: !259, line: 66, baseType: !281, size: 256, offset: 64)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !276, file: !259, line: 69, baseType: !50, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !276, file: !259, line: 72, baseType: !50, size: 64, offset: 384)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !258, file: !259, line: 107, type: !276, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(name: "slot0", scope: !258, file: !259, line: 831, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2048, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 256)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(name: "quote", scope: !295, file: !259, line: 228, type: !314, isLocal: true, isDefinition: true)
!295 = distinct !DISubprogram(name: "gettext_quote", scope: !259, file: !259, line: 197, type: !296, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!50, !50, !5}
!298 = !{!299, !300, !301, !302, !303}
!299 = !DILocalVariable(name: "msgid", arg: 1, scope: !295, file: !259, line: 197, type: !50)
!300 = !DILocalVariable(name: "s", arg: 2, scope: !295, file: !259, line: 197, type: !5)
!301 = !DILocalVariable(name: "translation", scope: !295, file: !259, line: 199, type: !50)
!302 = !DILocalVariable(name: "w", scope: !295, file: !259, line: 229, type: !233)
!303 = !DILocalVariable(name: "mbs", scope: !295, file: !259, line: 230, type: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !306, file: !241, line: 15, baseType: !37, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !306, file: !241, line: 20, baseType: !310, size: 32, offset: 32)
!310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !306, file: !241, line: 16, size: 32, elements: !311)
!311 = !{!312, !313}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !310, file: !241, line: 18, baseType: !7, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !310, file: !241, line: 19, baseType: !250, size: 32)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !315)
!315 = !{!255, !252}
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(name: "slotvec", scope: !258, file: !259, line: 834, type: !318, isLocal: true, isDefinition: true)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !259, line: 823, size: 128, elements: !320)
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !259, line: 825, baseType: !47, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !319, file: !259, line: 826, baseType: !43, size: 64, offset: 64)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(name: "nslots", scope: !258, file: !259, line: 832, type: !37, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "slotvec0", scope: !258, file: !259, line: 833, type: !319, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 704, elements: !329)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!329 = !{!330}
!330 = !DISubrange(count: 11)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !333, file: !334, line: 26, type: !336, isLocal: false, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !335, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!335 = !{!331}
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 47)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "exit_failure", scope: !341, file: !342, line: 24, type: !344, isLocal: false, isDefinition: true)
!341 = distinct !DICompileUnit(language: DW_LANG_C99, file: !342, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !343, splitDebugInlining: false, nameTableKind: None)
!342 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!343 = !{!339}
!344 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "internal_state", scope: !347, file: !348, line: 97, type: !351, isLocal: true, isDefinition: true)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !349, globals: !350, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!349 = !{!45, !47, !52}
!350 = !{!345}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !239, line: 6, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !241, line: 21, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 13, size: 64, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !353, file: !241, line: 15, baseType: !37, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !353, file: !241, line: 20, baseType: !357, size: 32, offset: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !241, line: 16, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !357, file: !241, line: 18, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !357, file: !241, line: 19, baseType: !250, size: 32)
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !363, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8f170eec0f5223b6ba3ae07aa753e06a")
!363 = !{!52}
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/stripslash.c", directory: "/src", checksumkind: CSK_MD5, checksum: "128a5f12cafc5019074f64cf3b3d799b")
!366 = distinct !DICompileUnit(language: DW_LANG_C99, file: !367, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!367 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!368 = distinct !DICompileUnit(language: DW_LANG_C99, file: !369, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !370, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!369 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!370 = !{!371}
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !369, line: 40, baseType: !7, size: 32, elements: !372)
!372 = !{!373}
!373 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!374 = !{!45}
!375 = distinct !DICompileUnit(language: DW_LANG_C99, file: !376, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !377, retainedTypes: !408, splitDebugInlining: false, nameTableKind: None)
!376 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!377 = !{!378, !390}
!378 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !379, file: !376, line: 188, baseType: !7, size: 32, elements: !388)
!379 = distinct !DISubprogram(name: "x2nrealloc", scope: !376, file: !376, line: 176, type: !380, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !383)
!380 = !DISubroutineType(types: !381)
!381 = !{!45, !45, !382, !47}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!383 = !{!384, !385, !386, !387}
!384 = !DILocalVariable(name: "p", arg: 1, scope: !379, file: !376, line: 176, type: !45)
!385 = !DILocalVariable(name: "pn", arg: 2, scope: !379, file: !376, line: 176, type: !382)
!386 = !DILocalVariable(name: "s", arg: 3, scope: !379, file: !376, line: 176, type: !47)
!387 = !DILocalVariable(name: "n", scope: !379, file: !376, line: 178, type: !47)
!388 = !{!389}
!389 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !391, file: !376, line: 228, baseType: !7, size: 32, elements: !388)
!391 = distinct !DISubprogram(name: "xpalloc", scope: !376, file: !376, line: 223, type: !392, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !398)
!392 = !DISubroutineType(types: !393)
!393 = !{!45, !45, !394, !395, !397, !395}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !396, line: 130, baseType: !397)
!396 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !48, line: 35, baseType: !113)
!398 = !{!399, !400, !401, !402, !403, !404, !405, !406, !407}
!399 = !DILocalVariable(name: "pa", arg: 1, scope: !391, file: !376, line: 223, type: !45)
!400 = !DILocalVariable(name: "pn", arg: 2, scope: !391, file: !376, line: 223, type: !394)
!401 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !391, file: !376, line: 223, type: !395)
!402 = !DILocalVariable(name: "n_max", arg: 4, scope: !391, file: !376, line: 223, type: !397)
!403 = !DILocalVariable(name: "s", arg: 5, scope: !391, file: !376, line: 223, type: !395)
!404 = !DILocalVariable(name: "n0", scope: !391, file: !376, line: 230, type: !395)
!405 = !DILocalVariable(name: "n", scope: !391, file: !376, line: 237, type: !395)
!406 = !DILocalVariable(name: "nbytes", scope: !391, file: !376, line: 248, type: !395)
!407 = !DILocalVariable(name: "adjusted_nbytes", scope: !391, file: !376, line: 252, type: !395)
!408 = !{!43, !45, !56, !113, !49}
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !218, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/basename-lgpl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c866bbc0b14fb4f9b15561a581e91dd")
!413 = distinct !DICompileUnit(language: DW_LANG_C99, file: !414, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!414 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!417 = distinct !DICompileUnit(language: DW_LANG_C99, file: !418, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!418 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!419 = distinct !DICompileUnit(language: DW_LANG_C99, file: !420, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!420 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!421 = distinct !DICompileUnit(language: DW_LANG_C99, file: !422, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !423, splitDebugInlining: false, nameTableKind: None)
!422 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!423 = !{!56, !49, !45}
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!426 = distinct !DICompileUnit(language: DW_LANG_C99, file: !427, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!427 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!428 = distinct !DICompileUnit(language: DW_LANG_C99, file: !429, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !374, splitDebugInlining: false, nameTableKind: None)
!429 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!430 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!431 = !{i32 7, !"Dwarf Version", i32 5}
!432 = !{i32 2, !"Debug Info Version", i32 3}
!433 = !{i32 1, !"wchar_size", i32 4}
!434 = !{i32 1, !"branch-target-enforcement", i32 0}
!435 = !{i32 1, !"sign-return-address", i32 0}
!436 = !{i32 1, !"sign-return-address-all", i32 0}
!437 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!438 = !{i32 7, !"PIC Level", i32 2}
!439 = !{i32 7, !"PIE Level", i32 2}
!440 = !{i32 7, !"uwtable", i32 1}
!441 = !{i32 7, !"frame-pointer", i32 1}
!442 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 166, type: !443, scopeLine: 167, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !37}
!445 = !{!446}
!446 = !DILocalVariable(name: "status", arg: 1, scope: !442, file: !3, line: 166, type: !37)
!447 = !DILocation(line: 0, scope: !442)
!448 = !DILocation(line: 168, column: 14, scope: !449)
!449 = distinct !DILexicalBlock(scope: !442, file: !3, line: 168, column: 7)
!450 = !DILocation(line: 168, column: 7, scope: !442)
!451 = !DILocation(line: 169, column: 5, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 169, column: 5)
!453 = !{!454, !454, i64 0}
!454 = !{!"any pointer", !455, i64 0}
!455 = !{!"omnipotent char", !456, i64 0}
!456 = !{!"Simple C/C++ TBAA"}
!457 = !DILocation(line: 172, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !449, file: !3, line: 171, column: 5)
!459 = !DILocation(line: 173, column: 7, scope: !458)
!460 = !DILocation(line: 177, column: 7, scope: !458)
!461 = !DILocation(line: 181, column: 7, scope: !458)
!462 = !DILocation(line: 186, column: 7, scope: !458)
!463 = !DILocation(line: 190, column: 7, scope: !458)
!464 = !DILocation(line: 191, column: 7, scope: !458)
!465 = !DILocalVariable(name: "program", arg: 1, scope: !466, file: !36, line: 836, type: !50)
!466 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 836, type: !467, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !50}
!469 = !{!465, !470, !477, !478, !480, !481}
!470 = !DILocalVariable(name: "infomap", scope: !466, file: !36, line: 838, type: !471)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 896, elements: !156)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !466, file: !36, line: 838, size: 128, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !473, file: !36, line: 838, baseType: !50, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !473, file: !36, line: 838, baseType: !50, size: 64, offset: 64)
!477 = !DILocalVariable(name: "node", scope: !466, file: !36, line: 848, type: !50)
!478 = !DILocalVariable(name: "map_prog", scope: !466, file: !36, line: 849, type: !479)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!480 = !DILocalVariable(name: "lc_messages", scope: !466, file: !36, line: 861, type: !50)
!481 = !DILocalVariable(name: "url_program", scope: !466, file: !36, line: 874, type: !50)
!482 = !DILocation(line: 0, scope: !466, inlinedAt: !483)
!483 = distinct !DILocation(line: 192, column: 7, scope: !458)
!484 = !DILocation(line: 838, column: 3, scope: !466, inlinedAt: !483)
!485 = !DILocation(line: 838, column: 67, scope: !466, inlinedAt: !483)
!486 = !DILocation(line: 849, column: 36, scope: !466, inlinedAt: !483)
!487 = !DILocation(line: 851, column: 3, scope: !466, inlinedAt: !483)
!488 = !DILocalVariable(name: "__s1", arg: 1, scope: !489, file: !490, line: 1359, type: !50)
!489 = distinct !DISubprogram(name: "streq", scope: !490, file: !490, line: 1359, type: !491, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!490 = !DIFile(filename: "./lib/string.h", directory: "/src")
!491 = !DISubroutineType(types: !492)
!492 = !{!56, !50, !50}
!493 = !{!488, !494}
!494 = !DILocalVariable(name: "__s2", arg: 2, scope: !489, file: !490, line: 1359, type: !50)
!495 = !DILocation(line: 0, scope: !489, inlinedAt: !496)
!496 = distinct !DILocation(line: 851, column: 33, scope: !466, inlinedAt: !483)
!497 = !DILocation(line: 1361, column: 11, scope: !489, inlinedAt: !496)
!498 = !DILocation(line: 1361, column: 10, scope: !489, inlinedAt: !496)
!499 = !DILocation(line: 852, column: 13, scope: !466, inlinedAt: !483)
!500 = !DILocation(line: 851, column: 20, scope: !466, inlinedAt: !483)
!501 = !{!502, !454, i64 0}
!502 = !{!"infomap", !454, i64 0, !454, i64 8}
!503 = !DILocation(line: 851, column: 10, scope: !466, inlinedAt: !483)
!504 = !DILocation(line: 851, column: 28, scope: !466, inlinedAt: !483)
!505 = distinct !{!505, !487, !499, !506}
!506 = !{!"llvm.loop.mustprogress"}
!507 = !DILocation(line: 854, column: 17, scope: !508, inlinedAt: !483)
!508 = distinct !DILexicalBlock(scope: !466, file: !36, line: 854, column: 7)
!509 = !{!502, !454, i64 8}
!510 = !DILocation(line: 854, column: 7, scope: !508, inlinedAt: !483)
!511 = !DILocation(line: 854, column: 7, scope: !466, inlinedAt: !483)
!512 = !DILocation(line: 857, column: 3, scope: !466, inlinedAt: !483)
!513 = !DILocation(line: 861, column: 29, scope: !466, inlinedAt: !483)
!514 = !DILocation(line: 862, column: 7, scope: !515, inlinedAt: !483)
!515 = distinct !DILexicalBlock(scope: !466, file: !36, line: 862, column: 7)
!516 = !DILocation(line: 862, column: 19, scope: !515, inlinedAt: !483)
!517 = !DILocation(line: 862, column: 22, scope: !515, inlinedAt: !483)
!518 = !DILocation(line: 862, column: 7, scope: !466, inlinedAt: !483)
!519 = !DILocation(line: 868, column: 7, scope: !520, inlinedAt: !483)
!520 = distinct !DILexicalBlock(scope: !515, file: !36, line: 863, column: 5)
!521 = !DILocation(line: 870, column: 5, scope: !520, inlinedAt: !483)
!522 = !DILocation(line: 0, scope: !489, inlinedAt: !523)
!523 = distinct !DILocation(line: 874, column: 29, scope: !466, inlinedAt: !483)
!524 = !DILocation(line: 875, column: 3, scope: !466, inlinedAt: !483)
!525 = !DILocation(line: 877, column: 3, scope: !466, inlinedAt: !483)
!526 = !DILocation(line: 879, column: 1, scope: !466, inlinedAt: !483)
!527 = !DILocation(line: 194, column: 3, scope: !442)
!528 = !DISubprogram(name: "dcgettext", scope: !529, file: !529, line: 51, type: !530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!529 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!530 = !DISubroutineType(types: !531)
!531 = !{!43, !50, !50, !37}
!532 = !{}
!533 = !DISubprogram(name: "fputs_unlocked", scope: !185, file: !185, line: 691, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!534 = !DISubroutineType(types: !535)
!535 = !{!37, !536, !537}
!536 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!537 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!538 = !DILocation(line: 0, scope: !63)
!539 = !DILocation(line: 581, column: 7, scope: !71)
!540 = !{!541, !541, i64 0}
!541 = !{!"int", !455, i64 0}
!542 = !DILocation(line: 581, column: 19, scope: !71)
!543 = !DILocation(line: 581, column: 7, scope: !63)
!544 = !DILocation(line: 585, column: 26, scope: !70)
!545 = !DILocation(line: 0, scope: !70)
!546 = !DILocation(line: 586, column: 23, scope: !70)
!547 = !DILocation(line: 586, column: 28, scope: !70)
!548 = !DILocation(line: 586, column: 32, scope: !70)
!549 = !{!455, !455, i64 0}
!550 = !DILocation(line: 586, column: 38, scope: !70)
!551 = !DILocation(line: 0, scope: !489, inlinedAt: !552)
!552 = distinct !DILocation(line: 586, column: 41, scope: !70)
!553 = !DILocation(line: 1361, column: 11, scope: !489, inlinedAt: !552)
!554 = !DILocation(line: 1361, column: 10, scope: !489, inlinedAt: !552)
!555 = !DILocation(line: 586, column: 19, scope: !70)
!556 = !DILocation(line: 587, column: 5, scope: !70)
!557 = !DILocation(line: 588, column: 7, scope: !558)
!558 = distinct !DILexicalBlock(scope: !63, file: !36, line: 588, column: 7)
!559 = !DILocation(line: 588, column: 7, scope: !63)
!560 = !DILocation(line: 590, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !36, line: 589, column: 5)
!562 = !DILocation(line: 591, column: 7, scope: !561)
!563 = !DILocation(line: 595, column: 37, scope: !63)
!564 = !DILocation(line: 595, column: 35, scope: !63)
!565 = !DILocation(line: 596, column: 29, scope: !63)
!566 = !DILocation(line: 597, column: 8, scope: !78)
!567 = !DILocation(line: 597, column: 7, scope: !63)
!568 = !DILocation(line: 604, column: 24, scope: !77)
!569 = !DILocation(line: 604, column: 12, scope: !78)
!570 = !DILocation(line: 0, scope: !76)
!571 = !DILocation(line: 610, column: 16, scope: !76)
!572 = !DILocation(line: 610, column: 7, scope: !76)
!573 = !DILocation(line: 611, column: 21, scope: !76)
!574 = !{!575, !575, i64 0}
!575 = !{!"short", !455, i64 0}
!576 = !DILocation(line: 611, column: 19, scope: !76)
!577 = !DILocation(line: 611, column: 16, scope: !76)
!578 = !DILocation(line: 610, column: 30, scope: !76)
!579 = distinct !{!579, !572, !573, !506}
!580 = !DILocation(line: 612, column: 18, scope: !581)
!581 = distinct !DILexicalBlock(scope: !76, file: !36, line: 612, column: 11)
!582 = !DILocation(line: 612, column: 11, scope: !76)
!583 = !DILocation(line: 620, column: 23, scope: !63)
!584 = !DILocation(line: 625, column: 39, scope: !63)
!585 = !DILocation(line: 626, column: 3, scope: !63)
!586 = !DILocation(line: 626, column: 10, scope: !63)
!587 = !DILocation(line: 626, column: 21, scope: !63)
!588 = !DILocation(line: 628, column: 44, scope: !589)
!589 = distinct !DILexicalBlock(scope: !590, file: !36, line: 628, column: 11)
!590 = distinct !DILexicalBlock(scope: !63, file: !36, line: 627, column: 5)
!591 = !DILocation(line: 628, column: 32, scope: !589)
!592 = !DILocation(line: 628, column: 49, scope: !589)
!593 = !DILocation(line: 628, column: 11, scope: !590)
!594 = !DILocation(line: 630, column: 11, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !36, line: 630, column: 11)
!596 = !DILocation(line: 630, column: 11, scope: !590)
!597 = !DILocation(line: 632, column: 26, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !36, line: 632, column: 15)
!599 = distinct !DILexicalBlock(scope: !595, file: !36, line: 631, column: 9)
!600 = !DILocation(line: 632, column: 34, scope: !598)
!601 = !DILocation(line: 632, column: 37, scope: !598)
!602 = !DILocation(line: 632, column: 15, scope: !599)
!603 = !DILocation(line: 636, column: 29, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !36, line: 636, column: 15)
!605 = !DILocation(line: 640, column: 16, scope: !590)
!606 = distinct !{!606, !585, !607, !506}
!607 = !DILocation(line: 641, column: 5, scope: !63)
!608 = !DILocation(line: 644, column: 3, scope: !63)
!609 = !DILocation(line: 0, scope: !489, inlinedAt: !610)
!610 = distinct !DILocation(line: 648, column: 31, scope: !63)
!611 = !DILocation(line: 0, scope: !489, inlinedAt: !612)
!612 = distinct !DILocation(line: 649, column: 31, scope: !63)
!613 = !DILocation(line: 0, scope: !489, inlinedAt: !614)
!614 = distinct !DILocation(line: 650, column: 31, scope: !63)
!615 = !DILocation(line: 0, scope: !489, inlinedAt: !616)
!616 = distinct !DILocation(line: 651, column: 31, scope: !63)
!617 = !DILocation(line: 0, scope: !489, inlinedAt: !618)
!618 = distinct !DILocation(line: 652, column: 31, scope: !63)
!619 = !DILocation(line: 0, scope: !489, inlinedAt: !620)
!620 = distinct !DILocation(line: 653, column: 31, scope: !63)
!621 = !DILocation(line: 0, scope: !489, inlinedAt: !622)
!622 = distinct !DILocation(line: 654, column: 31, scope: !63)
!623 = !DILocation(line: 0, scope: !489, inlinedAt: !624)
!624 = distinct !DILocation(line: 655, column: 31, scope: !63)
!625 = !DILocation(line: 0, scope: !489, inlinedAt: !626)
!626 = distinct !DILocation(line: 656, column: 31, scope: !63)
!627 = !DILocation(line: 0, scope: !489, inlinedAt: !628)
!628 = distinct !DILocation(line: 657, column: 31, scope: !63)
!629 = !DILocation(line: 663, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !63, file: !36, line: 663, column: 7)
!631 = !DILocation(line: 664, column: 7, scope: !630)
!632 = !DILocation(line: 664, column: 10, scope: !630)
!633 = !DILocation(line: 663, column: 7, scope: !63)
!634 = !DILocation(line: 669, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !36, line: 665, column: 5)
!636 = !DILocation(line: 671, column: 5, scope: !635)
!637 = !DILocation(line: 676, column: 7, scope: !638)
!638 = distinct !DILexicalBlock(scope: !630, file: !36, line: 673, column: 5)
!639 = !DILocation(line: 679, column: 3, scope: !63)
!640 = !DILocation(line: 683, column: 3, scope: !63)
!641 = !DILocation(line: 686, column: 3, scope: !63)
!642 = !DILocation(line: 688, column: 3, scope: !63)
!643 = !DILocation(line: 691, column: 3, scope: !63)
!644 = !DILocation(line: 695, column: 3, scope: !63)
!645 = !DILocation(line: 696, column: 1, scope: !63)
!646 = !DISubprogram(name: "setlocale", scope: !647, file: !647, line: 122, type: !648, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!647 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!648 = !DISubroutineType(types: !649)
!649 = !{!43, !37, !50}
!650 = !DISubprogram(name: "getenv", scope: !651, file: !651, line: 641, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!651 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!652 = !DISubroutineType(types: !653)
!653 = !{!43, !50}
!654 = !DISubprogram(name: "fwrite_unlocked", scope: !185, file: !185, line: 704, type: !655, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!655 = !DISubroutineType(types: !656)
!656 = !{!47, !657, !47, !47, !537}
!657 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!660 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 198, type: !661, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!661 = !DISubroutineType(types: !662)
!662 = !{!37, !37, !663}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!664 = !{!665, !666, !667, !668, !669, !673, !676, !677, !680, !718, !719}
!665 = !DILocalVariable(name: "argc", arg: 1, scope: !660, file: !3, line: 198, type: !37)
!666 = !DILocalVariable(name: "argv", arg: 2, scope: !660, file: !3, line: 198, type: !663)
!667 = !DILocalVariable(name: "optc", scope: !660, file: !3, line: 208, type: !37)
!668 = !DILocalVariable(name: "ok", scope: !660, file: !3, line: 235, type: !56)
!669 = !DILocalVariable(name: "dir", scope: !670, file: !3, line: 238, type: !43)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 237, column: 5)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 236, column: 3)
!672 = distinct !DILexicalBlock(scope: !660, file: !3, line: 236, column: 3)
!673 = !DILocalVariable(name: "rmdir_errno", scope: !674, file: !3, line: 246, type: !37)
!674 = distinct !DILexicalBlock(scope: !675, file: !3, line: 245, column: 9)
!675 = distinct !DILexicalBlock(scope: !670, file: !3, line: 244, column: 11)
!676 = !DILocalVariable(name: "custom_error", scope: !674, file: !3, line: 255, type: !56)
!677 = !DILocalVariable(name: "last_unix_slash", scope: !678, file: !3, line: 258, type: !50)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 257, column: 13)
!679 = distinct !DILexicalBlock(scope: !674, file: !3, line: 256, column: 15)
!680 = !DILocalVariable(name: "st", scope: !681, file: !3, line: 261, type: !683)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 260, column: 17)
!682 = distinct !DILexicalBlock(scope: !678, file: !3, line: 259, column: 19)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !684, line: 44, size: 1024, elements: !685)
!684 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!685 = !{!686, !688, !690, !692, !694, !696, !698, !699, !700, !701, !703, !704, !706, !714, !715, !716}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !683, file: !684, line: 46, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !112, line: 145, baseType: !49)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !683, file: !684, line: 47, baseType: !689, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !112, line: 148, baseType: !49)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !683, file: !684, line: 48, baseType: !691, size: 32, offset: 128)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !112, line: 150, baseType: !7)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !683, file: !684, line: 49, baseType: !693, size: 32, offset: 160)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !112, line: 151, baseType: !7)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !683, file: !684, line: 50, baseType: !695, size: 32, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !112, line: 146, baseType: !7)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !683, file: !684, line: 51, baseType: !697, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !112, line: 147, baseType: !7)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !683, file: !684, line: 52, baseType: !687, size: 64, offset: 256)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !683, file: !684, line: 53, baseType: !687, size: 64, offset: 320)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !683, file: !684, line: 54, baseType: !111, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !683, file: !684, line: 55, baseType: !702, size: 32, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !112, line: 175, baseType: !37)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !683, file: !684, line: 56, baseType: !37, size: 32, offset: 480)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !683, file: !684, line: 57, baseType: !705, size: 64, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !112, line: 180, baseType: !113)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !683, file: !684, line: 65, baseType: !707, size: 128, offset: 576)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !708, line: 11, size: 128, elements: !709)
!708 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!709 = !{!710, !712}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !707, file: !708, line: 16, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !112, line: 160, baseType: !113)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !707, file: !708, line: 21, baseType: !713, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !112, line: 197, baseType: !113)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !683, file: !684, line: 66, baseType: !707, size: 128, offset: 704)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !683, file: !684, line: 67, baseType: !707, size: 128, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !683, file: !684, line: 79, baseType: !717, size: 64, offset: 960)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 64, elements: !254)
!718 = !DILocalVariable(name: "ret", scope: !681, file: !3, line: 262, type: !37)
!719 = !DILocalVariable(name: "dir_arg", scope: !720, file: !3, line: 268, type: !43)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 266, column: 21)
!721 = distinct !DILexicalBlock(scope: !681, file: !3, line: 264, column: 23)
!722 = !DILocation(line: 0, scope: !660)
!723 = !DILocation(line: 201, column: 21, scope: !660)
!724 = !DILocation(line: 201, column: 3, scope: !660)
!725 = !DILocation(line: 202, column: 3, scope: !660)
!726 = !DILocation(line: 203, column: 3, scope: !660)
!727 = !DILocation(line: 204, column: 3, scope: !660)
!728 = !DILocation(line: 206, column: 3, scope: !660)
!729 = !DILocation(line: 209, column: 3, scope: !660)
!730 = !DILocation(line: 209, column: 18, scope: !660)
!731 = !DILocation(line: 218, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 212, column: 9)
!733 = distinct !DILexicalBlock(scope: !660, file: !3, line: 210, column: 5)
!734 = !DILocation(line: 221, column: 11, scope: !732)
!735 = !DILocation(line: 222, column: 9, scope: !732)
!736 = !DILocation(line: 223, column: 9, scope: !732)
!737 = !DILocation(line: 225, column: 11, scope: !732)
!738 = !DILocation(line: 0, scope: !732)
!739 = distinct !{!739, !729, !740, !506}
!740 = !DILocation(line: 227, column: 5, scope: !660)
!741 = !DILocation(line: 229, column: 7, scope: !742)
!742 = distinct !DILexicalBlock(scope: !660, file: !3, line: 229, column: 7)
!743 = !DILocation(line: 229, column: 14, scope: !742)
!744 = !DILocation(line: 229, column: 7, scope: !660)
!745 = !DILocation(line: 236, column: 17, scope: !671)
!746 = !DILocation(line: 236, column: 3, scope: !672)
!747 = !DILocation(line: 231, column: 7, scope: !748)
!748 = distinct !DILexicalBlock(scope: !742, file: !3, line: 230, column: 5)
!749 = !DILocation(line: 232, column: 7, scope: !748)
!750 = !DILocation(line: 238, column: 19, scope: !670)
!751 = !DILocation(line: 0, scope: !670)
!752 = !DILocation(line: 241, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !670, file: !3, line: 241, column: 11)
!754 = !DILocation(line: 241, column: 11, scope: !670)
!755 = !DILocation(line: 242, column: 23, scope: !753)
!756 = !DILocation(line: 242, column: 31, scope: !753)
!757 = !DILocation(line: 242, column: 60, scope: !753)
!758 = !DILocation(line: 242, column: 9, scope: !753)
!759 = !DILocation(line: 244, column: 11, scope: !675)
!760 = !DILocation(line: 244, column: 23, scope: !675)
!761 = !DILocation(line: 244, column: 11, scope: !670)
!762 = !DILocation(line: 246, column: 29, scope: !674)
!763 = !DILocation(line: 0, scope: !674)
!764 = !DILocation(line: 247, column: 15, scope: !765)
!765 = distinct !DILexicalBlock(scope: !674, file: !3, line: 247, column: 15)
!766 = !DILocation(line: 247, column: 15, scope: !674)
!767 = !DILocation(line: 256, column: 27, scope: !679)
!768 = !DILocation(line: 256, column: 15, scope: !674)
!769 = !DILocation(line: 258, column: 45, scope: !678)
!770 = !DILocation(line: 0, scope: !678)
!771 = !DILocation(line: 259, column: 19, scope: !682)
!772 = !DILocation(line: 259, column: 35, scope: !682)
!773 = !DILocation(line: 259, column: 57, scope: !682)
!774 = !DILocation(line: 259, column: 39, scope: !682)
!775 = !DILocation(line: 259, column: 62, scope: !682)
!776 = !DILocation(line: 259, column: 19, scope: !678)
!777 = !DILocation(line: 261, column: 19, scope: !681)
!778 = !DILocation(line: 261, column: 31, scope: !681)
!779 = !DILocation(line: 262, column: 29, scope: !681)
!780 = !DILocation(line: 0, scope: !681)
!781 = !DILocation(line: 264, column: 33, scope: !721)
!782 = !DILocation(line: 264, column: 36, scope: !721)
!783 = !DILocation(line: 264, column: 42, scope: !721)
!784 = !DILocation(line: 265, column: 23, scope: !721)
!785 = !DILocation(line: 265, column: 39, scope: !721)
!786 = !{!787, !541, i64 16}
!787 = !{!"stat", !788, i64 0, !788, i64 8, !541, i64 16, !541, i64 20, !541, i64 24, !541, i64 28, !788, i64 32, !788, i64 40, !788, i64 48, !541, i64 56, !541, i64 60, !788, i64 64, !789, i64 72, !789, i64 88, !789, i64 104, !455, i64 120}
!788 = !{!"long", !455, i64 0}
!789 = !{!"timespec", !788, i64 0, !788, i64 8}
!790 = !DILocation(line: 264, column: 23, scope: !681)
!791 = !DILocation(line: 268, column: 39, scope: !720)
!792 = !DILocation(line: 0, scope: !720)
!793 = !DILocation(line: 269, column: 23, scope: !720)
!794 = !DILocalVariable(name: "filename", arg: 1, scope: !795, file: !796, line: 49, type: !50)
!795 = distinct !DISubprogram(name: "issymlink", scope: !796, file: !796, line: 49, type: !797, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !799)
!796 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!797 = !DISubroutineType(types: !798)
!798 = !{!37, !50}
!799 = !{!794, !800}
!800 = !DILocalVariable(name: "linkbuf", scope: !795, file: !796, line: 51, type: !118)
!801 = !DILocation(line: 0, scope: !795, inlinedAt: !802)
!802 = distinct !DILocation(line: 270, column: 27, scope: !803)
!803 = distinct !DILexicalBlock(scope: !720, file: !3, line: 270, column: 27)
!804 = !DILocation(line: 51, column: 3, scope: !795, inlinedAt: !802)
!805 = !DILocation(line: 51, column: 8, scope: !795, inlinedAt: !802)
!806 = !DILocation(line: 52, column: 7, scope: !807, inlinedAt: !802)
!807 = distinct !DILexicalBlock(scope: !795, file: !796, line: 52, column: 7)
!808 = !DILocation(line: 52, column: 54, scope: !807, inlinedAt: !802)
!809 = !DILocation(line: 58, column: 1, scope: !795, inlinedAt: !802)
!810 = !DILocation(line: 52, column: 7, scope: !795, inlinedAt: !802)
!811 = !DILocation(line: 272, column: 27, scope: !812)
!812 = distinct !DILexicalBlock(scope: !803, file: !3, line: 271, column: 25)
!813 = !DILocation(line: 278, column: 23, scope: !720)
!814 = !DILocation(line: 280, column: 17, scope: !682)
!815 = !DILocation(line: 283, column: 15, scope: !674)
!816 = !DILocation(line: 284, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !674, file: !3, line: 283, column: 15)
!818 = !DILocation(line: 288, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !675, file: !3, line: 288, column: 16)
!820 = !DILocation(line: 288, column: 16, scope: !675)
!821 = !DILocalVariable(name: "dir", arg: 1, scope: !822, file: !3, line: 113, type: !43)
!822 = distinct !DISubprogram(name: "remove_parents", scope: !3, file: !3, line: 113, type: !823, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !825)
!823 = !DISubroutineType(types: !824)
!824 = !{!56, !43}
!825 = !{!821, !826, !827, !829, !830}
!826 = !DILocalVariable(name: "ok", scope: !822, file: !3, line: 115, type: !56)
!827 = !DILocalVariable(name: "slash", scope: !828, file: !3, line: 120, type: !43)
!828 = distinct !DILexicalBlock(scope: !822, file: !3, line: 119, column: 5)
!829 = !DILocalVariable(name: "rmdir_errno", scope: !828, file: !3, line: 134, type: !37)
!830 = !DILocalVariable(name: "error_msg", scope: !831, file: !3, line: 145, type: !50)
!831 = distinct !DILexicalBlock(scope: !832, file: !3, line: 144, column: 13)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 139, column: 15)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 137, column: 9)
!834 = distinct !DILexicalBlock(scope: !828, file: !3, line: 136, column: 11)
!835 = !DILocation(line: 0, scope: !822, inlinedAt: !836)
!836 = distinct !DILocation(line: 290, column: 17, scope: !837)
!837 = distinct !DILexicalBlock(scope: !819, file: !3, line: 289, column: 9)
!838 = !DILocation(line: 117, column: 3, scope: !822, inlinedAt: !836)
!839 = !DILocation(line: 118, column: 3, scope: !822, inlinedAt: !836)
!840 = !DILocation(line: 120, column: 21, scope: !828, inlinedAt: !836)
!841 = !DILocation(line: 0, scope: !828, inlinedAt: !836)
!842 = !DILocation(line: 121, column: 17, scope: !843, inlinedAt: !836)
!843 = distinct !DILexicalBlock(scope: !828, file: !3, line: 121, column: 11)
!844 = !DILocation(line: 121, column: 11, scope: !828, inlinedAt: !836)
!845 = !DILocation(line: 125, column: 20, scope: !828, inlinedAt: !836)
!846 = !DILocation(line: 125, column: 26, scope: !828, inlinedAt: !836)
!847 = !DILocation(line: 125, column: 7, scope: !828, inlinedAt: !836)
!848 = !DILocation(line: 125, column: 29, scope: !828, inlinedAt: !836)
!849 = !DILocation(line: 125, column: 36, scope: !828, inlinedAt: !836)
!850 = !DILocation(line: 126, column: 9, scope: !828, inlinedAt: !836)
!851 = distinct !{!851, !847, !852, !506}
!852 = !DILocation(line: 126, column: 11, scope: !828, inlinedAt: !836)
!853 = !DILocation(line: 127, column: 7, scope: !828, inlinedAt: !836)
!854 = !DILocation(line: 127, column: 16, scope: !828, inlinedAt: !836)
!855 = !DILocation(line: 130, column: 11, scope: !856, inlinedAt: !836)
!856 = distinct !DILexicalBlock(scope: !828, file: !3, line: 130, column: 11)
!857 = !DILocation(line: 130, column: 11, scope: !828, inlinedAt: !836)
!858 = !DILocation(line: 131, column: 23, scope: !856, inlinedAt: !836)
!859 = !DILocation(line: 131, column: 31, scope: !856, inlinedAt: !836)
!860 = !DILocation(line: 131, column: 60, scope: !856, inlinedAt: !836)
!861 = !DILocation(line: 131, column: 9, scope: !856, inlinedAt: !836)
!862 = !DILocation(line: 133, column: 13, scope: !828, inlinedAt: !836)
!863 = !DILocation(line: 133, column: 25, scope: !828, inlinedAt: !836)
!864 = !DILocation(line: 134, column: 25, scope: !828, inlinedAt: !836)
!865 = !DILocation(line: 136, column: 11, scope: !828, inlinedAt: !836)
!866 = !DILocation(line: 139, column: 15, scope: !832, inlinedAt: !836)
!867 = !DILocation(line: 139, column: 15, scope: !833, inlinedAt: !836)
!868 = !DILocation(line: 146, column: 31, scope: !869, inlinedAt: !836)
!869 = distinct !DILexicalBlock(scope: !831, file: !3, line: 146, column: 19)
!870 = !DILocation(line: 0, scope: !831, inlinedAt: !836)
!871 = !DILocation(line: 157, column: 15, scope: !831, inlinedAt: !836)
!872 = !DILocation(line: 290, column: 14, scope: !837)
!873 = !DILocation(line: 291, column: 9, scope: !837)
!874 = !DILocation(line: 236, column: 25, scope: !671)
!875 = distinct !{!875, !746, !876, !506}
!876 = !DILocation(line: 292, column: 5, scope: !672)
!877 = !DILocation(line: 294, column: 10, scope: !660)
!878 = !DILocation(line: 295, column: 1, scope: !660)
!879 = !DISubprogram(name: "bindtextdomain", scope: !529, file: !529, line: 86, type: !880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!880 = !DISubroutineType(types: !881)
!881 = !{!43, !50, !50}
!882 = !DISubprogram(name: "textdomain", scope: !529, file: !529, line: 82, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!883 = !DISubprogram(name: "atexit", scope: !651, file: !651, line: 602, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!884 = !DISubroutineType(types: !885)
!885 = !{!37, !211}
!886 = !DISubprogram(name: "getopt_long", scope: !149, file: !149, line: 66, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!887 = !DISubroutineType(types: !888)
!888 = !{!37, !37, !889, !50, !891, !154}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!892 = !DISubprogram(name: "rmdir", scope: !893, file: !893, line: 867, type: !797, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!893 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!894 = distinct !DISubprogram(name: "ignorable_failure", scope: !3, file: !3, line: 99, type: !895, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!895 = !DISubroutineType(types: !896)
!896 = !{!56, !37, !50}
!897 = !{!898, !899}
!898 = !DILocalVariable(name: "error_number", arg: 1, scope: !894, file: !3, line: 99, type: !37)
!899 = !DILocalVariable(name: "dir", arg: 2, scope: !894, file: !3, line: 99, type: !50)
!900 = !DILocation(line: 0, scope: !894)
!901 = !DILocation(line: 101, column: 11, scope: !894)
!902 = !DILocation(line: 102, column: 11, scope: !894)
!903 = !DILocation(line: 103, column: 15, scope: !894)
!904 = !DILocalVariable(name: "fd_cwd", arg: 1, scope: !905, file: !36, line: 305, type: !37)
!905 = distinct !DISubprogram(name: "directory_status", scope: !36, file: !36, line: 305, type: !906, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{!37, !37, !50}
!908 = !{!904, !909, !910, !915, !916, !917}
!909 = !DILocalVariable(name: "dir", arg: 2, scope: !905, file: !36, line: 305, type: !50)
!910 = !DILocalVariable(name: "dirp", scope: !905, file: !36, line: 307, type: !911)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !913, line: 127, baseType: !914)
!913 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !913, line: 127, flags: DIFlagFwdDecl)
!915 = !DILocalVariable(name: "no_direntries", scope: !905, file: !36, line: 308, type: !56)
!916 = !DILocalVariable(name: "saved_errno", scope: !905, file: !36, line: 309, type: !37)
!917 = !DILocalVariable(name: "fd", scope: !905, file: !36, line: 310, type: !37)
!918 = !DILocation(line: 0, scope: !905, inlinedAt: !919)
!919 = distinct !DILocation(line: 104, column: 22, scope: !894)
!920 = !DILocation(line: 310, column: 12, scope: !905, inlinedAt: !919)
!921 = !DILocation(line: 314, column: 10, scope: !922, inlinedAt: !919)
!922 = distinct !DILexicalBlock(scope: !905, file: !36, line: 314, column: 7)
!923 = !DILocation(line: 314, column: 7, scope: !905, inlinedAt: !919)
!924 = !DILocation(line: 315, column: 12, scope: !922, inlinedAt: !919)
!925 = !DILocation(line: 315, column: 5, scope: !922, inlinedAt: !919)
!926 = !DILocation(line: 317, column: 10, scope: !905, inlinedAt: !919)
!927 = !DILocation(line: 318, column: 12, scope: !928, inlinedAt: !919)
!928 = distinct !DILexicalBlock(scope: !905, file: !36, line: 318, column: 7)
!929 = !DILocation(line: 318, column: 7, scope: !905, inlinedAt: !919)
!930 = !DILocation(line: 320, column: 21, scope: !931, inlinedAt: !919)
!931 = distinct !DILexicalBlock(scope: !928, file: !36, line: 319, column: 5)
!932 = !DILocation(line: 321, column: 7, scope: !931, inlinedAt: !919)
!933 = !DILocation(line: 322, column: 7, scope: !931, inlinedAt: !919)
!934 = !DILocation(line: 325, column: 9, scope: !905, inlinedAt: !919)
!935 = !DILocalVariable(name: "dirp", arg: 1, scope: !936, file: !36, line: 285, type: !911)
!936 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !36, file: !36, line: 285, type: !937, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!937 = !DISubroutineType(types: !938)
!938 = !{!939, !911}
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !942, line: 22, size: 2240, elements: !943)
!942 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!943 = !{!944, !945, !946, !947, !948}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !941, file: !942, line: 25, baseType: !689, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !941, file: !942, line: 26, baseType: !111, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !941, file: !942, line: 31, baseType: !46, size: 16, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !941, file: !942, line: 32, baseType: !52, size: 8, offset: 144)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !941, file: !942, line: 33, baseType: !290, size: 2048, offset: 152)
!949 = !{!935, !950}
!950 = !DILocalVariable(name: "dp", scope: !951, file: !36, line: 289, type: !939)
!951 = distinct !DILexicalBlock(scope: !936, file: !36, line: 288, column: 5)
!952 = !DILocation(line: 0, scope: !936, inlinedAt: !953)
!953 = distinct !DILocation(line: 326, column: 20, scope: !905, inlinedAt: !919)
!954 = !DILocation(line: 289, column: 33, scope: !951, inlinedAt: !953)
!955 = !DILocation(line: 0, scope: !951, inlinedAt: !953)
!956 = !DILocation(line: 290, column: 14, scope: !957, inlinedAt: !953)
!957 = distinct !DILexicalBlock(scope: !951, file: !36, line: 290, column: 11)
!958 = !DILocation(line: 290, column: 22, scope: !957, inlinedAt: !953)
!959 = !DILocation(line: 290, column: 42, scope: !957, inlinedAt: !953)
!960 = !DILocalVariable(name: "file_name", arg: 1, scope: !961, file: !36, line: 272, type: !50)
!961 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !36, file: !36, line: 272, type: !962, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !964)
!962 = !DISubroutineType(types: !963)
!963 = !{!56, !50}
!964 = !{!960, !965}
!965 = !DILocalVariable(name: "sep", scope: !966, file: !36, line: 276, type: !44)
!966 = distinct !DILexicalBlock(scope: !967, file: !36, line: 275, column: 5)
!967 = distinct !DILexicalBlock(scope: !961, file: !36, line: 274, column: 7)
!968 = !DILocation(line: 0, scope: !961, inlinedAt: !969)
!969 = distinct !DILocation(line: 290, column: 27, scope: !957, inlinedAt: !953)
!970 = !DILocation(line: 274, column: 7, scope: !967, inlinedAt: !969)
!971 = !DILocation(line: 274, column: 20, scope: !967, inlinedAt: !969)
!972 = !DILocation(line: 274, column: 7, scope: !961, inlinedAt: !969)
!973 = !DILocation(line: 276, column: 29, scope: !966, inlinedAt: !969)
!974 = !DILocation(line: 276, column: 42, scope: !966, inlinedAt: !969)
!975 = !DILocation(line: 276, column: 50, scope: !966, inlinedAt: !969)
!976 = !DILocation(line: 276, column: 18, scope: !966, inlinedAt: !969)
!977 = !DILocation(line: 0, scope: !966, inlinedAt: !969)
!978 = !DILocation(line: 290, column: 11, scope: !951, inlinedAt: !953)
!979 = !DILocation(line: 326, column: 19, scope: !905, inlinedAt: !919)
!980 = !DILocation(line: 327, column: 17, scope: !905, inlinedAt: !919)
!981 = !DILocation(line: 328, column: 3, scope: !905, inlinedAt: !919)
!982 = !DILocation(line: 329, column: 24, scope: !905, inlinedAt: !919)
!983 = !DILocation(line: 329, column: 3, scope: !905, inlinedAt: !919)
!984 = !DILocation(line: 104, column: 55, scope: !894)
!985 = !DILocation(line: 101, column: 3, scope: !894)
!986 = !DISubprogram(name: "stat", scope: !987, file: !987, line: 205, type: !988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!987 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!988 = !DISubroutineType(types: !989)
!989 = !{!37, !536, !990}
!990 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!992 = !DISubprogram(name: "openat", scope: !993, file: !993, line: 205, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!993 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!994 = !DISubroutineType(types: !995)
!995 = !{!37, !37, !50, !37, null}
!996 = !DISubprogram(name: "fdopendir", scope: !913, file: !913, line: 141, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!997 = !DISubroutineType(types: !998)
!998 = !{!911, !37}
!999 = !DISubprogram(name: "close", scope: !893, file: !893, line: 358, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!37, !37}
!1002 = !DISubprogram(name: "readdir", scope: !913, file: !913, line: 162, type: !1003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!1005, !911}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!1006 = !DISubprogram(name: "closedir", scope: !913, file: !913, line: 149, type: !1007, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!37, !911}
!1009 = distinct !DISubprogram(name: "prog_fprintf", scope: !362, file: !362, line: 28, type: !1010, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1046)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !1012, !50, null}
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !1014)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !1015)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1014, file: !89, line: 51, baseType: !37, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1014, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1014, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1014, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1014, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1014, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1014, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1014, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1014, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1014, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1014, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1014, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1014, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1014, file: !89, line: 70, baseType: !1030, size: 64, offset: 832)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1014, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1014, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1014, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1014, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1014, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1014, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1014, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1014, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1014, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1014, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1014, file: !89, line: 93, baseType: !1030, size: 64, offset: 1344)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1014, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1014, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1014, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1014, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!1046 = !{!1047, !1048, !1049}
!1047 = !DILocalVariable(name: "fp", arg: 1, scope: !1009, file: !362, line: 28, type: !1012)
!1048 = !DILocalVariable(name: "fmt", arg: 2, scope: !1009, file: !362, line: 28, type: !50)
!1049 = !DILocalVariable(name: "ap", scope: !1009, file: !362, line: 30, type: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !185, line: 52, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !187, line: 32, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1053, baseType: !1054)
!1053 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !191, size: 256, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1054, file: !1053, line: 30, baseType: !45, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1054, file: !1053, line: 30, baseType: !45, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1054, file: !1053, line: 30, baseType: !45, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1054, file: !1053, line: 30, baseType: !37, size: 32, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1054, file: !1053, line: 30, baseType: !37, size: 32, offset: 224)
!1061 = !DILocation(line: 0, scope: !1009)
!1062 = !DILocation(line: 30, column: 3, scope: !1009)
!1063 = !DILocation(line: 30, column: 11, scope: !1009)
!1064 = !DILocation(line: 31, column: 3, scope: !1009)
!1065 = !DILocation(line: 32, column: 3, scope: !1009)
!1066 = !DILocation(line: 33, column: 3, scope: !1009)
!1067 = !DILocalVariable(name: "__stream", arg: 1, scope: !1068, file: !1069, line: 132, type: !1072)
!1068 = distinct !DISubprogram(name: "vfprintf", scope: !1069, file: !1069, line: 132, type: !1070, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1073)
!1069 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!37, !1072, !536, !1051}
!1072 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1012)
!1073 = !{!1067, !1074, !1075}
!1074 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1068, file: !1069, line: 133, type: !536)
!1075 = !DILocalVariable(name: "__ap", arg: 3, scope: !1068, file: !1069, line: 133, type: !1051)
!1076 = !DILocation(line: 0, scope: !1068, inlinedAt: !1077)
!1077 = distinct !DILocation(line: 34, column: 3, scope: !1009)
!1078 = !DILocation(line: 135, column: 10, scope: !1068, inlinedAt: !1077)
!1079 = !{!1080, !1082}
!1080 = distinct !{!1080, !1081, !"vfprintf.inline: argument 0"}
!1081 = distinct !{!1081, !"vfprintf.inline"}
!1082 = distinct !{!1082, !1081, !"vfprintf.inline: argument 1"}
!1083 = !DILocation(line: 35, column: 3, scope: !1009)
!1084 = !DILocalVariable(name: "__c", arg: 1, scope: !1085, file: !1086, line: 91, type: !37)
!1085 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1086, file: !1086, line: 91, type: !1087, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !1089)
!1086 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!37, !37, !1012}
!1089 = !{!1084, !1090}
!1090 = !DILocalVariable(name: "__stream", arg: 2, scope: !1085, file: !1086, line: 91, type: !1012)
!1091 = !DILocation(line: 0, scope: !1085, inlinedAt: !1092)
!1092 = distinct !DILocation(line: 36, column: 3, scope: !1009)
!1093 = !DILocation(line: 93, column: 10, scope: !1085, inlinedAt: !1092)
!1094 = !{!1095, !454, i64 40}
!1095 = !{!"_IO_FILE", !541, i64 0, !454, i64 8, !454, i64 16, !454, i64 24, !454, i64 32, !454, i64 40, !454, i64 48, !454, i64 56, !454, i64 64, !454, i64 72, !454, i64 80, !454, i64 88, !454, i64 96, !454, i64 104, !541, i64 112, !541, i64 116, !788, i64 120, !575, i64 128, !455, i64 130, !455, i64 131, !454, i64 136, !788, i64 144, !454, i64 152, !454, i64 160, !454, i64 168, !454, i64 176, !788, i64 184, !541, i64 192, !455, i64 196}
!1096 = !{!1095, !454, i64 48}
!1097 = !{!"branch_weights", i32 2000, i32 1}
!1098 = !DILocation(line: 37, column: 1, scope: !1009)
!1099 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !169, file: !169, line: 50, type: !467, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1100)
!1100 = !{!1101}
!1101 = !DILocalVariable(name: "file", arg: 1, scope: !1099, file: !169, line: 50, type: !50)
!1102 = !DILocation(line: 0, scope: !1099)
!1103 = !DILocation(line: 52, column: 13, scope: !1099)
!1104 = !DILocation(line: 53, column: 1, scope: !1099)
!1105 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !169, file: !169, line: 87, type: !1106, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1108)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !56}
!1108 = !{!1109}
!1109 = !DILocalVariable(name: "ignore", arg: 1, scope: !1105, file: !169, line: 87, type: !56)
!1110 = !DILocation(line: 0, scope: !1105)
!1111 = !DILocation(line: 89, column: 16, scope: !1105)
!1112 = !{!1113, !1113, i64 0}
!1113 = !{!"_Bool", !455, i64 0}
!1114 = !DILocation(line: 90, column: 1, scope: !1105)
!1115 = distinct !DISubprogram(name: "close_stdout", scope: !169, file: !169, line: 116, type: !212, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !168, retainedNodes: !1116)
!1116 = !{!1117}
!1117 = !DILocalVariable(name: "write_error", scope: !1118, file: !169, line: 121, type: !50)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !169, line: 120, column: 5)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !169, line: 118, column: 7)
!1120 = !DILocation(line: 118, column: 21, scope: !1119)
!1121 = !DILocation(line: 118, column: 7, scope: !1119)
!1122 = !DILocation(line: 118, column: 29, scope: !1119)
!1123 = !DILocation(line: 119, column: 7, scope: !1119)
!1124 = !DILocation(line: 119, column: 12, scope: !1119)
!1125 = !{i8 0, i8 2}
!1126 = !DILocation(line: 119, column: 25, scope: !1119)
!1127 = !DILocation(line: 119, column: 28, scope: !1119)
!1128 = !DILocation(line: 119, column: 34, scope: !1119)
!1129 = !DILocation(line: 118, column: 7, scope: !1115)
!1130 = !DILocation(line: 121, column: 33, scope: !1118)
!1131 = !DILocation(line: 0, scope: !1118)
!1132 = !DILocation(line: 122, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1118, file: !169, line: 122, column: 11)
!1134 = !DILocation(line: 0, scope: !1133)
!1135 = !DILocation(line: 122, column: 11, scope: !1118)
!1136 = !DILocation(line: 123, column: 9, scope: !1133)
!1137 = !DILocation(line: 126, column: 9, scope: !1133)
!1138 = !DILocation(line: 128, column: 14, scope: !1118)
!1139 = !DILocation(line: 128, column: 7, scope: !1118)
!1140 = !DILocation(line: 133, column: 42, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1115, file: !169, line: 133, column: 7)
!1142 = !DILocation(line: 133, column: 28, scope: !1141)
!1143 = !DILocation(line: 133, column: 50, scope: !1141)
!1144 = !DILocation(line: 133, column: 7, scope: !1115)
!1145 = !DILocation(line: 134, column: 12, scope: !1141)
!1146 = !DILocation(line: 134, column: 5, scope: !1141)
!1147 = !DILocation(line: 135, column: 1, scope: !1115)
!1148 = distinct !DISubprogram(name: "strip_trailing_slashes", scope: !365, file: !365, line: 31, type: !823, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1149)
!1149 = !{!1150, !1151, !1152, !1153}
!1150 = !DILocalVariable(name: "file", arg: 1, scope: !1148, file: !365, line: 31, type: !43)
!1151 = !DILocalVariable(name: "base", scope: !1148, file: !365, line: 33, type: !43)
!1152 = !DILocalVariable(name: "base_lim", scope: !1148, file: !365, line: 39, type: !43)
!1153 = !DILocalVariable(name: "had_slash", scope: !1148, file: !365, line: 40, type: !56)
!1154 = !DILocation(line: 0, scope: !1148)
!1155 = !DILocation(line: 33, column: 16, scope: !1148)
!1156 = !DILocation(line: 37, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1148, file: !365, line: 37, column: 7)
!1158 = !DILocation(line: 37, column: 7, scope: !1148)
!1159 = !DILocation(line: 39, column: 27, scope: !1148)
!1160 = !DILocation(line: 39, column: 25, scope: !1148)
!1161 = !DILocation(line: 40, column: 21, scope: !1148)
!1162 = !DILocation(line: 40, column: 31, scope: !1148)
!1163 = !DILocation(line: 41, column: 13, scope: !1148)
!1164 = !DILocation(line: 42, column: 3, scope: !1148)
!1165 = distinct !DISubprogram(name: "verror", scope: !176, file: !176, line: 251, type: !1166, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1168)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null, !37, !37, !50, !184}
!1168 = !{!1169, !1170, !1171, !1172}
!1169 = !DILocalVariable(name: "status", arg: 1, scope: !1165, file: !176, line: 251, type: !37)
!1170 = !DILocalVariable(name: "errnum", arg: 2, scope: !1165, file: !176, line: 251, type: !37)
!1171 = !DILocalVariable(name: "message", arg: 3, scope: !1165, file: !176, line: 251, type: !50)
!1172 = !DILocalVariable(name: "args", arg: 4, scope: !1165, file: !176, line: 251, type: !184)
!1173 = !DILocation(line: 0, scope: !1165)
!1174 = !DILocation(line: 251, column: 1, scope: !1165)
!1175 = !DILocation(line: 261, column: 3, scope: !1165)
!1176 = !DILocation(line: 265, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1165, file: !176, line: 265, column: 7)
!1178 = !DILocation(line: 265, column: 7, scope: !1165)
!1179 = !DILocation(line: 266, column: 5, scope: !1177)
!1180 = !DILocation(line: 272, column: 7, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !176, line: 268, column: 5)
!1182 = !DILocation(line: 276, column: 3, scope: !1165)
!1183 = !{i64 0, i64 8, !453, i64 8, i64 8, !453, i64 16, i64 8, !453, i64 24, i64 4, !540, i64 28, i64 4, !540}
!1184 = !DILocation(line: 282, column: 1, scope: !1165)
!1185 = distinct !DISubprogram(name: "flush_stdout", scope: !176, file: !176, line: 163, type: !212, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1186)
!1186 = !{!1187}
!1187 = !DILocalVariable(name: "stdout_fd", scope: !1185, file: !176, line: 166, type: !37)
!1188 = !DILocation(line: 0, scope: !1185)
!1189 = !DILocalVariable(name: "fd", arg: 1, scope: !1190, file: !176, line: 145, type: !37)
!1190 = distinct !DISubprogram(name: "is_open", scope: !176, file: !176, line: 145, type: !1000, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1191)
!1191 = !{!1189}
!1192 = !DILocation(line: 0, scope: !1190, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 182, column: 25, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !176, line: 182, column: 7)
!1195 = !DILocation(line: 157, column: 15, scope: !1190, inlinedAt: !1193)
!1196 = !DILocation(line: 182, column: 25, scope: !1194)
!1197 = !DILocation(line: 182, column: 7, scope: !1185)
!1198 = !DILocation(line: 184, column: 5, scope: !1194)
!1199 = !DILocation(line: 185, column: 1, scope: !1185)
!1200 = distinct !DISubprogram(name: "error_tail", scope: !176, file: !176, line: 219, type: !1166, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1201)
!1201 = !{!1202, !1203, !1204, !1205}
!1202 = !DILocalVariable(name: "status", arg: 1, scope: !1200, file: !176, line: 219, type: !37)
!1203 = !DILocalVariable(name: "errnum", arg: 2, scope: !1200, file: !176, line: 219, type: !37)
!1204 = !DILocalVariable(name: "message", arg: 3, scope: !1200, file: !176, line: 219, type: !50)
!1205 = !DILocalVariable(name: "args", arg: 4, scope: !1200, file: !176, line: 219, type: !184)
!1206 = !DILocation(line: 0, scope: !1200)
!1207 = !DILocation(line: 219, column: 1, scope: !1200)
!1208 = !DILocation(line: 229, column: 13, scope: !1200)
!1209 = !DILocation(line: 229, column: 3, scope: !1200)
!1210 = !DILocalVariable(name: "__stream", arg: 1, scope: !1211, file: !1069, line: 132, type: !1214)
!1211 = distinct !DISubprogram(name: "vfprintf", scope: !1069, file: !1069, line: 132, type: !1212, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1249)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!37, !1214, !536, !186}
!1214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1215)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1217, file: !89, line: 51, baseType: !37, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1217, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1217, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1217, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1217, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1217, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1217, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1217, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1217, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1217, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1217, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1217, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1217, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1217, file: !89, line: 70, baseType: !1233, size: 64, offset: 832)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1217, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1217, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1217, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1217, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1217, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1217, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1217, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1217, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1217, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1217, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1217, file: !89, line: 93, baseType: !1233, size: 64, offset: 1344)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1217, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1217, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1217, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1217, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!1249 = !{!1210, !1250, !1251}
!1250 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1211, file: !1069, line: 133, type: !536)
!1251 = !DILocalVariable(name: "__ap", arg: 3, scope: !1211, file: !1069, line: 133, type: !186)
!1252 = !DILocation(line: 0, scope: !1211, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 229, column: 3, scope: !1200)
!1254 = !DILocation(line: 135, column: 10, scope: !1211, inlinedAt: !1253)
!1255 = !{!1256, !1258}
!1256 = distinct !{!1256, !1257, !"vfprintf.inline: argument 0"}
!1257 = distinct !{!1257, !"vfprintf.inline"}
!1258 = distinct !{!1258, !1257, !"vfprintf.inline: argument 1"}
!1259 = !DILocation(line: 232, column: 3, scope: !1200)
!1260 = !DILocation(line: 233, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1200, file: !176, line: 233, column: 7)
!1262 = !DILocation(line: 233, column: 7, scope: !1200)
!1263 = !DILocalVariable(name: "errnum", arg: 1, scope: !1264, file: !176, line: 188, type: !37)
!1264 = distinct !DISubprogram(name: "print_errno_message", scope: !176, file: !176, line: 188, type: !443, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1265)
!1265 = !{!1263, !1266, !1267}
!1266 = !DILocalVariable(name: "s", scope: !1264, file: !176, line: 190, type: !50)
!1267 = !DILocalVariable(name: "errbuf", scope: !1264, file: !176, line: 193, type: !1268)
!1268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 8192, elements: !1269)
!1269 = !{!1270}
!1270 = !DISubrange(count: 1024)
!1271 = !DILocation(line: 0, scope: !1264, inlinedAt: !1272)
!1272 = distinct !DILocation(line: 234, column: 5, scope: !1261)
!1273 = !DILocation(line: 193, column: 3, scope: !1264, inlinedAt: !1272)
!1274 = !DILocation(line: 193, column: 8, scope: !1264, inlinedAt: !1272)
!1275 = !DILocation(line: 195, column: 7, scope: !1264, inlinedAt: !1272)
!1276 = !DILocation(line: 207, column: 9, scope: !1277, inlinedAt: !1272)
!1277 = distinct !DILexicalBlock(scope: !1264, file: !176, line: 207, column: 7)
!1278 = !DILocation(line: 207, column: 7, scope: !1264, inlinedAt: !1272)
!1279 = !DILocation(line: 208, column: 9, scope: !1277, inlinedAt: !1272)
!1280 = !DILocation(line: 208, column: 5, scope: !1277, inlinedAt: !1272)
!1281 = !DILocation(line: 214, column: 3, scope: !1264, inlinedAt: !1272)
!1282 = !DILocation(line: 216, column: 1, scope: !1264, inlinedAt: !1272)
!1283 = !DILocation(line: 234, column: 5, scope: !1261)
!1284 = !DILocation(line: 238, column: 3, scope: !1200)
!1285 = !DILocalVariable(name: "__c", arg: 1, scope: !1286, file: !1086, line: 101, type: !37)
!1286 = distinct !DISubprogram(name: "putc_unlocked", scope: !1086, file: !1086, line: 101, type: !1287, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1289)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!37, !37, !1215}
!1289 = !{!1285, !1290}
!1290 = !DILocalVariable(name: "__stream", arg: 2, scope: !1286, file: !1086, line: 101, type: !1215)
!1291 = !DILocation(line: 0, scope: !1286, inlinedAt: !1292)
!1292 = distinct !DILocation(line: 238, column: 3, scope: !1200)
!1293 = !DILocation(line: 103, column: 10, scope: !1286, inlinedAt: !1292)
!1294 = !DILocation(line: 240, column: 3, scope: !1200)
!1295 = !DILocation(line: 241, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1200, file: !176, line: 241, column: 7)
!1297 = !DILocation(line: 241, column: 7, scope: !1200)
!1298 = !DILocation(line: 242, column: 5, scope: !1296)
!1299 = !DILocation(line: 243, column: 1, scope: !1200)
!1300 = !DISubprogram(name: "strerror_r", scope: !1301, file: !1301, line: 444, type: !1302, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1301 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!43, !37, !43, !47}
!1304 = !DISubprogram(name: "fflush_unlocked", scope: !185, file: !185, line: 239, type: !1305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!37, !1215}
!1307 = !DISubprogram(name: "fcntl", scope: !993, file: !993, line: 149, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!37, !37, !37, null}
!1310 = distinct !DISubprogram(name: "error", scope: !176, file: !176, line: 285, type: !1311, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1313)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{null, !37, !37, !50, null}
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DILocalVariable(name: "status", arg: 1, scope: !1310, file: !176, line: 285, type: !37)
!1315 = !DILocalVariable(name: "errnum", arg: 2, scope: !1310, file: !176, line: 285, type: !37)
!1316 = !DILocalVariable(name: "message", arg: 3, scope: !1310, file: !176, line: 285, type: !50)
!1317 = !DILocalVariable(name: "ap", scope: !1310, file: !176, line: 287, type: !184)
!1318 = !DILocation(line: 0, scope: !1310)
!1319 = !DILocation(line: 287, column: 3, scope: !1310)
!1320 = !DILocation(line: 287, column: 11, scope: !1310)
!1321 = !DILocation(line: 288, column: 3, scope: !1310)
!1322 = !DILocation(line: 289, column: 3, scope: !1310)
!1323 = !DILocation(line: 290, column: 3, scope: !1310)
!1324 = !DILocation(line: 291, column: 1, scope: !1310)
!1325 = !DILocation(line: 0, scope: !181)
!1326 = !DILocation(line: 298, column: 1, scope: !181)
!1327 = !DILocation(line: 302, column: 7, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !181, file: !176, line: 302, column: 7)
!1329 = !DILocation(line: 302, column: 7, scope: !181)
!1330 = !DILocation(line: 307, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !176, line: 307, column: 11)
!1332 = distinct !DILexicalBlock(scope: !1328, file: !176, line: 303, column: 5)
!1333 = !DILocation(line: 307, column: 27, scope: !1331)
!1334 = !DILocation(line: 308, column: 11, scope: !1331)
!1335 = !DILocation(line: 308, column: 28, scope: !1331)
!1336 = !DILocation(line: 308, column: 25, scope: !1331)
!1337 = !DILocation(line: 309, column: 15, scope: !1331)
!1338 = !DILocation(line: 309, column: 33, scope: !1331)
!1339 = !DILocation(line: 310, column: 19, scope: !1331)
!1340 = !DILocation(line: 311, column: 22, scope: !1331)
!1341 = !DILocation(line: 311, column: 56, scope: !1331)
!1342 = !DILocation(line: 307, column: 11, scope: !1332)
!1343 = !DILocation(line: 316, column: 21, scope: !1332)
!1344 = !DILocation(line: 317, column: 23, scope: !1332)
!1345 = !DILocation(line: 318, column: 5, scope: !1332)
!1346 = !DILocation(line: 327, column: 3, scope: !181)
!1347 = !DILocation(line: 331, column: 7, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !181, file: !176, line: 331, column: 7)
!1349 = !DILocation(line: 331, column: 7, scope: !181)
!1350 = !DILocation(line: 332, column: 5, scope: !1348)
!1351 = !DILocation(line: 338, column: 7, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1348, file: !176, line: 334, column: 5)
!1353 = !DILocation(line: 346, column: 3, scope: !181)
!1354 = !DILocation(line: 350, column: 3, scope: !181)
!1355 = !DILocation(line: 356, column: 1, scope: !181)
!1356 = distinct !DISubprogram(name: "error_at_line", scope: !176, file: !176, line: 359, type: !1357, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !175, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !37, !37, !50, !7, !50, null}
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365}
!1360 = !DILocalVariable(name: "status", arg: 1, scope: !1356, file: !176, line: 359, type: !37)
!1361 = !DILocalVariable(name: "errnum", arg: 2, scope: !1356, file: !176, line: 359, type: !37)
!1362 = !DILocalVariable(name: "file_name", arg: 3, scope: !1356, file: !176, line: 359, type: !50)
!1363 = !DILocalVariable(name: "line_number", arg: 4, scope: !1356, file: !176, line: 360, type: !7)
!1364 = !DILocalVariable(name: "message", arg: 5, scope: !1356, file: !176, line: 360, type: !50)
!1365 = !DILocalVariable(name: "ap", scope: !1356, file: !176, line: 362, type: !184)
!1366 = !DILocation(line: 0, scope: !1356)
!1367 = !DILocation(line: 362, column: 3, scope: !1356)
!1368 = !DILocation(line: 362, column: 11, scope: !1356)
!1369 = !DILocation(line: 363, column: 3, scope: !1356)
!1370 = !DILocation(line: 364, column: 3, scope: !1356)
!1371 = !DILocation(line: 366, column: 3, scope: !1356)
!1372 = !DILocation(line: 367, column: 1, scope: !1356)
!1373 = distinct !DISubprogram(name: "getprogname", scope: !367, file: !367, line: 54, type: !1374, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !366, retainedNodes: !532)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!50}
!1376 = !DILocation(line: 58, column: 10, scope: !1373)
!1377 = !DILocation(line: 58, column: 3, scope: !1373)
!1378 = distinct !DISubprogram(name: "set_program_name", scope: !217, file: !217, line: 37, type: !467, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1379)
!1379 = !{!1380, !1381, !1382}
!1380 = !DILocalVariable(name: "argv0", arg: 1, scope: !1378, file: !217, line: 37, type: !50)
!1381 = !DILocalVariable(name: "slash", scope: !1378, file: !217, line: 44, type: !50)
!1382 = !DILocalVariable(name: "base", scope: !1378, file: !217, line: 45, type: !50)
!1383 = !DILocation(line: 0, scope: !1378)
!1384 = !DILocation(line: 44, column: 23, scope: !1378)
!1385 = !DILocation(line: 45, column: 22, scope: !1378)
!1386 = !DILocation(line: 46, column: 17, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1378, file: !217, line: 46, column: 7)
!1388 = !DILocation(line: 46, column: 9, scope: !1387)
!1389 = !DILocation(line: 46, column: 25, scope: !1387)
!1390 = !DILocation(line: 46, column: 40, scope: !1387)
!1391 = !DILocalVariable(name: "__s1", arg: 1, scope: !1392, file: !490, line: 974, type: !658)
!1392 = distinct !DISubprogram(name: "memeq", scope: !490, file: !490, line: 974, type: !1393, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !216, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!56, !658, !658, !47}
!1395 = !{!1391, !1396, !1397}
!1396 = !DILocalVariable(name: "__s2", arg: 2, scope: !1392, file: !490, line: 974, type: !658)
!1397 = !DILocalVariable(name: "__n", arg: 3, scope: !1392, file: !490, line: 974, type: !47)
!1398 = !DILocation(line: 0, scope: !1392, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 46, column: 28, scope: !1387)
!1400 = !DILocation(line: 976, column: 11, scope: !1392, inlinedAt: !1399)
!1401 = !DILocation(line: 976, column: 10, scope: !1392, inlinedAt: !1399)
!1402 = !DILocation(line: 46, column: 7, scope: !1378)
!1403 = !DILocation(line: 49, column: 11, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !217, line: 49, column: 11)
!1405 = distinct !DILexicalBlock(scope: !1387, file: !217, line: 47, column: 5)
!1406 = !DILocation(line: 49, column: 36, scope: !1404)
!1407 = !DILocation(line: 49, column: 11, scope: !1405)
!1408 = !DILocation(line: 65, column: 16, scope: !1378)
!1409 = !DILocation(line: 71, column: 27, scope: !1378)
!1410 = !DILocation(line: 74, column: 33, scope: !1378)
!1411 = !DILocation(line: 76, column: 1, scope: !1378)
!1412 = !DILocation(line: 0, scope: !222)
!1413 = !DILocation(line: 40, column: 29, scope: !222)
!1414 = !DILocation(line: 41, column: 19, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !222, file: !223, line: 41, column: 7)
!1416 = !DILocation(line: 41, column: 7, scope: !222)
!1417 = !DILocation(line: 47, column: 3, scope: !222)
!1418 = !DILocation(line: 48, column: 3, scope: !222)
!1419 = !DILocation(line: 48, column: 13, scope: !222)
!1420 = !DILocalVariable(name: "ps", arg: 1, scope: !1421, file: !1422, line: 1135, type: !1425)
!1421 = distinct !DISubprogram(name: "mbszero", scope: !1422, file: !1422, line: 1135, type: !1423, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1426)
!1422 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1423 = !DISubroutineType(types: !1424)
!1424 = !{null, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1426 = !{!1420}
!1427 = !DILocation(line: 0, scope: !1421, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 48, column: 18, scope: !222)
!1429 = !DILocalVariable(name: "__dest", arg: 1, scope: !1430, file: !1431, line: 57, type: !45)
!1430 = distinct !DISubprogram(name: "memset", scope: !1431, file: !1431, line: 57, type: !1432, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1434)
!1431 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!45, !45, !37, !47}
!1434 = !{!1429, !1435, !1436}
!1435 = !DILocalVariable(name: "__ch", arg: 2, scope: !1430, file: !1431, line: 57, type: !37)
!1436 = !DILocalVariable(name: "__len", arg: 3, scope: !1430, file: !1431, line: 57, type: !47)
!1437 = !DILocation(line: 0, scope: !1430, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 1137, column: 3, scope: !1421, inlinedAt: !1428)
!1439 = !DILocation(line: 59, column: 10, scope: !1430, inlinedAt: !1438)
!1440 = !DILocation(line: 49, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !222, file: !223, line: 49, column: 7)
!1442 = !DILocation(line: 49, column: 39, scope: !1441)
!1443 = !DILocation(line: 49, column: 44, scope: !1441)
!1444 = !DILocation(line: 54, column: 1, scope: !222)
!1445 = !DISubprogram(name: "mbrtoc32", scope: !234, file: !234, line: 57, type: !1446, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!47, !1448, !536, !47, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1449)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1425)
!1451 = distinct !DISubprogram(name: "clone_quoting_options", scope: !259, file: !259, line: 113, type: !1452, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1455)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1454, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1455 = !{!1456, !1457, !1458}
!1456 = !DILocalVariable(name: "o", arg: 1, scope: !1451, file: !259, line: 113, type: !1454)
!1457 = !DILocalVariable(name: "saved_errno", scope: !1451, file: !259, line: 115, type: !37)
!1458 = !DILocalVariable(name: "p", scope: !1451, file: !259, line: 116, type: !1454)
!1459 = !DILocation(line: 0, scope: !1451)
!1460 = !DILocation(line: 115, column: 21, scope: !1451)
!1461 = !DILocation(line: 116, column: 40, scope: !1451)
!1462 = !DILocation(line: 116, column: 31, scope: !1451)
!1463 = !DILocation(line: 118, column: 9, scope: !1451)
!1464 = !DILocation(line: 119, column: 3, scope: !1451)
!1465 = distinct !DISubprogram(name: "get_quoting_style", scope: !259, file: !259, line: 124, type: !1466, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1470)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!5, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!1470 = !{!1471}
!1471 = !DILocalVariable(name: "o", arg: 1, scope: !1465, file: !259, line: 124, type: !1468)
!1472 = !DILocation(line: 0, scope: !1465)
!1473 = !DILocation(line: 126, column: 11, scope: !1465)
!1474 = !DILocation(line: 126, column: 46, scope: !1465)
!1475 = !{!1476, !455, i64 0}
!1476 = !{!"quoting_options", !455, i64 0, !541, i64 4, !455, i64 8, !454, i64 40, !454, i64 48}
!1477 = !DILocation(line: 126, column: 3, scope: !1465)
!1478 = distinct !DISubprogram(name: "set_quoting_style", scope: !259, file: !259, line: 132, type: !1479, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1481)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1454, !5}
!1481 = !{!1482, !1483}
!1482 = !DILocalVariable(name: "o", arg: 1, scope: !1478, file: !259, line: 132, type: !1454)
!1483 = !DILocalVariable(name: "s", arg: 2, scope: !1478, file: !259, line: 132, type: !5)
!1484 = !DILocation(line: 0, scope: !1478)
!1485 = !DILocation(line: 134, column: 4, scope: !1478)
!1486 = !DILocation(line: 134, column: 39, scope: !1478)
!1487 = !DILocation(line: 134, column: 45, scope: !1478)
!1488 = !DILocation(line: 135, column: 1, scope: !1478)
!1489 = distinct !DISubprogram(name: "set_char_quoting", scope: !259, file: !259, line: 143, type: !1490, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!37, !1454, !44, !37}
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1499, !1500}
!1493 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !259, line: 143, type: !1454)
!1494 = !DILocalVariable(name: "c", arg: 2, scope: !1489, file: !259, line: 143, type: !44)
!1495 = !DILocalVariable(name: "i", arg: 3, scope: !1489, file: !259, line: 143, type: !37)
!1496 = !DILocalVariable(name: "uc", scope: !1489, file: !259, line: 145, type: !52)
!1497 = !DILocalVariable(name: "p", scope: !1489, file: !259, line: 146, type: !1498)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1499 = !DILocalVariable(name: "shift", scope: !1489, file: !259, line: 148, type: !37)
!1500 = !DILocalVariable(name: "r", scope: !1489, file: !259, line: 149, type: !7)
!1501 = !DILocation(line: 0, scope: !1489)
!1502 = !DILocation(line: 147, column: 6, scope: !1489)
!1503 = !DILocation(line: 147, column: 62, scope: !1489)
!1504 = !DILocation(line: 147, column: 57, scope: !1489)
!1505 = !DILocation(line: 148, column: 15, scope: !1489)
!1506 = !DILocation(line: 149, column: 21, scope: !1489)
!1507 = !DILocation(line: 149, column: 24, scope: !1489)
!1508 = !DILocation(line: 149, column: 34, scope: !1489)
!1509 = !DILocation(line: 150, column: 13, scope: !1489)
!1510 = !DILocation(line: 150, column: 19, scope: !1489)
!1511 = !DILocation(line: 150, column: 24, scope: !1489)
!1512 = !DILocation(line: 150, column: 6, scope: !1489)
!1513 = !DILocation(line: 151, column: 3, scope: !1489)
!1514 = distinct !DISubprogram(name: "set_quoting_flags", scope: !259, file: !259, line: 159, type: !1515, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1517)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!37, !1454, !37}
!1517 = !{!1518, !1519, !1520}
!1518 = !DILocalVariable(name: "o", arg: 1, scope: !1514, file: !259, line: 159, type: !1454)
!1519 = !DILocalVariable(name: "i", arg: 2, scope: !1514, file: !259, line: 159, type: !37)
!1520 = !DILocalVariable(name: "r", scope: !1514, file: !259, line: 163, type: !37)
!1521 = !DILocation(line: 0, scope: !1514)
!1522 = !DILocation(line: 161, column: 8, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1514, file: !259, line: 161, column: 7)
!1524 = !DILocation(line: 161, column: 7, scope: !1514)
!1525 = !DILocation(line: 163, column: 14, scope: !1514)
!1526 = !{!1476, !541, i64 4}
!1527 = !DILocation(line: 164, column: 12, scope: !1514)
!1528 = !DILocation(line: 165, column: 3, scope: !1514)
!1529 = distinct !DISubprogram(name: "set_custom_quoting", scope: !259, file: !259, line: 169, type: !1530, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1532)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !1454, !50, !50}
!1532 = !{!1533, !1534, !1535}
!1533 = !DILocalVariable(name: "o", arg: 1, scope: !1529, file: !259, line: 169, type: !1454)
!1534 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1529, file: !259, line: 170, type: !50)
!1535 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1529, file: !259, line: 170, type: !50)
!1536 = !DILocation(line: 0, scope: !1529)
!1537 = !DILocation(line: 172, column: 8, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1529, file: !259, line: 172, column: 7)
!1539 = !DILocation(line: 172, column: 7, scope: !1529)
!1540 = !DILocation(line: 174, column: 6, scope: !1529)
!1541 = !DILocation(line: 174, column: 12, scope: !1529)
!1542 = !DILocation(line: 175, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1529, file: !259, line: 175, column: 7)
!1544 = !DILocation(line: 175, column: 19, scope: !1543)
!1545 = !DILocation(line: 176, column: 5, scope: !1543)
!1546 = !DILocation(line: 177, column: 6, scope: !1529)
!1547 = !DILocation(line: 177, column: 17, scope: !1529)
!1548 = !{!1476, !454, i64 40}
!1549 = !DILocation(line: 178, column: 6, scope: !1529)
!1550 = !DILocation(line: 178, column: 18, scope: !1529)
!1551 = !{!1476, !454, i64 48}
!1552 = !DILocation(line: 179, column: 1, scope: !1529)
!1553 = distinct !DISubprogram(name: "quotearg_buffer", scope: !259, file: !259, line: 774, type: !1554, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!47, !43, !47, !50, !47, !1468}
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1557 = !DILocalVariable(name: "buffer", arg: 1, scope: !1553, file: !259, line: 774, type: !43)
!1558 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1553, file: !259, line: 774, type: !47)
!1559 = !DILocalVariable(name: "arg", arg: 3, scope: !1553, file: !259, line: 775, type: !50)
!1560 = !DILocalVariable(name: "argsize", arg: 4, scope: !1553, file: !259, line: 775, type: !47)
!1561 = !DILocalVariable(name: "o", arg: 5, scope: !1553, file: !259, line: 776, type: !1468)
!1562 = !DILocalVariable(name: "p", scope: !1553, file: !259, line: 778, type: !1468)
!1563 = !DILocalVariable(name: "saved_errno", scope: !1553, file: !259, line: 779, type: !37)
!1564 = !DILocalVariable(name: "r", scope: !1553, file: !259, line: 780, type: !47)
!1565 = !DILocation(line: 0, scope: !1553)
!1566 = !DILocation(line: 778, column: 37, scope: !1553)
!1567 = !DILocation(line: 779, column: 21, scope: !1553)
!1568 = !DILocation(line: 781, column: 43, scope: !1553)
!1569 = !DILocation(line: 781, column: 53, scope: !1553)
!1570 = !DILocation(line: 781, column: 60, scope: !1553)
!1571 = !DILocation(line: 782, column: 43, scope: !1553)
!1572 = !DILocation(line: 782, column: 58, scope: !1553)
!1573 = !DILocation(line: 780, column: 14, scope: !1553)
!1574 = !DILocation(line: 783, column: 9, scope: !1553)
!1575 = !DILocation(line: 784, column: 3, scope: !1553)
!1576 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !259, file: !259, line: 251, type: !1577, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1581)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!47, !43, !47, !50, !47, !5, !37, !1579, !50, !50}
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1606, !1608, !1611, !1612, !1613, !1614, !1617, !1618, !1621, !1625, !1626, !1634, !1637, !1638, !1640, !1641, !1642, !1643}
!1582 = !DILocalVariable(name: "buffer", arg: 1, scope: !1576, file: !259, line: 251, type: !43)
!1583 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1576, file: !259, line: 251, type: !47)
!1584 = !DILocalVariable(name: "arg", arg: 3, scope: !1576, file: !259, line: 252, type: !50)
!1585 = !DILocalVariable(name: "argsize", arg: 4, scope: !1576, file: !259, line: 252, type: !47)
!1586 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1576, file: !259, line: 253, type: !5)
!1587 = !DILocalVariable(name: "flags", arg: 6, scope: !1576, file: !259, line: 253, type: !37)
!1588 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1576, file: !259, line: 254, type: !1579)
!1589 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1576, file: !259, line: 255, type: !50)
!1590 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1576, file: !259, line: 256, type: !50)
!1591 = !DILocalVariable(name: "unibyte_locale", scope: !1576, file: !259, line: 258, type: !56)
!1592 = !DILocalVariable(name: "len", scope: !1576, file: !259, line: 260, type: !47)
!1593 = !DILocalVariable(name: "orig_buffersize", scope: !1576, file: !259, line: 261, type: !47)
!1594 = !DILocalVariable(name: "quote_string", scope: !1576, file: !259, line: 262, type: !50)
!1595 = !DILocalVariable(name: "quote_string_len", scope: !1576, file: !259, line: 263, type: !47)
!1596 = !DILocalVariable(name: "backslash_escapes", scope: !1576, file: !259, line: 264, type: !56)
!1597 = !DILocalVariable(name: "elide_outer_quotes", scope: !1576, file: !259, line: 265, type: !56)
!1598 = !DILocalVariable(name: "encountered_single_quote", scope: !1576, file: !259, line: 266, type: !56)
!1599 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1576, file: !259, line: 267, type: !56)
!1600 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1576, file: !259, line: 309, type: !56)
!1601 = !DILocalVariable(name: "lq", scope: !1602, file: !259, line: 361, type: !50)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !259, line: 361, column: 11)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !259, line: 360, column: 13)
!1604 = distinct !DILexicalBlock(scope: !1605, file: !259, line: 333, column: 7)
!1605 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 312, column: 5)
!1606 = !DILocalVariable(name: "i", scope: !1607, file: !259, line: 395, type: !47)
!1607 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 395, column: 3)
!1608 = !DILocalVariable(name: "is_right_quote", scope: !1609, file: !259, line: 397, type: !56)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !259, line: 396, column: 5)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !259, line: 395, column: 3)
!1611 = !DILocalVariable(name: "escaping", scope: !1609, file: !259, line: 398, type: !56)
!1612 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1609, file: !259, line: 399, type: !56)
!1613 = !DILocalVariable(name: "c", scope: !1609, file: !259, line: 417, type: !52)
!1614 = !DILocalVariable(name: "m", scope: !1615, file: !259, line: 598, type: !47)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 596, column: 11)
!1616 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 419, column: 9)
!1617 = !DILocalVariable(name: "printable", scope: !1615, file: !259, line: 600, type: !56)
!1618 = !DILocalVariable(name: "mbs", scope: !1619, file: !259, line: 609, type: !304)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !259, line: 608, column: 15)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !259, line: 602, column: 17)
!1621 = !DILocalVariable(name: "w", scope: !1622, file: !259, line: 618, type: !233)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !259, line: 617, column: 19)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !259, line: 616, column: 17)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !259, line: 616, column: 17)
!1625 = !DILocalVariable(name: "bytes", scope: !1622, file: !259, line: 619, type: !47)
!1626 = !DILocalVariable(name: "j", scope: !1627, file: !259, line: 648, type: !47)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !259, line: 648, column: 29)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !259, line: 647, column: 27)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !259, line: 645, column: 29)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !259, line: 636, column: 23)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !259, line: 628, column: 30)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !259, line: 623, column: 30)
!1633 = distinct !DILexicalBlock(scope: !1622, file: !259, line: 621, column: 25)
!1634 = !DILocalVariable(name: "ilim", scope: !1635, file: !259, line: 674, type: !47)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !259, line: 671, column: 15)
!1636 = distinct !DILexicalBlock(scope: !1615, file: !259, line: 670, column: 17)
!1637 = !DILabel(scope: !1576, name: "process_input", file: !259, line: 308)
!1638 = !DILabel(scope: !1639, name: "c_and_shell_escape", file: !259, line: 502)
!1639 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 478, column: 9)
!1640 = !DILabel(scope: !1639, name: "c_escape", file: !259, line: 507)
!1641 = !DILabel(scope: !1609, name: "store_escape", file: !259, line: 709)
!1642 = !DILabel(scope: !1609, name: "store_c", file: !259, line: 712)
!1643 = !DILabel(scope: !1576, name: "force_outer_quoting_style", file: !259, line: 753)
!1644 = !DILocation(line: 0, scope: !1576)
!1645 = !DILocation(line: 258, column: 25, scope: !1576)
!1646 = !DILocation(line: 258, column: 36, scope: !1576)
!1647 = !DILocation(line: 267, column: 3, scope: !1576)
!1648 = !DILocation(line: 261, column: 10, scope: !1576)
!1649 = !DILocation(line: 262, column: 15, scope: !1576)
!1650 = !DILocation(line: 263, column: 10, scope: !1576)
!1651 = !DILocation(line: 308, column: 2, scope: !1576)
!1652 = !DILocation(line: 311, column: 3, scope: !1576)
!1653 = !DILocation(line: 318, column: 11, scope: !1605)
!1654 = !DILocation(line: 319, column: 9, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !259, line: 319, column: 9)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !259, line: 319, column: 9)
!1657 = distinct !DILexicalBlock(scope: !1605, file: !259, line: 318, column: 11)
!1658 = !DILocation(line: 319, column: 9, scope: !1656)
!1659 = !DILocation(line: 0, scope: !295, inlinedAt: !1660)
!1660 = distinct !DILocation(line: 357, column: 26, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !259, line: 335, column: 11)
!1662 = distinct !DILexicalBlock(scope: !1604, file: !259, line: 334, column: 13)
!1663 = !DILocation(line: 199, column: 29, scope: !295, inlinedAt: !1660)
!1664 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1660)
!1665 = distinct !DILexicalBlock(scope: !295, file: !259, line: 201, column: 7)
!1666 = !DILocation(line: 201, column: 7, scope: !295, inlinedAt: !1660)
!1667 = !DILocation(line: 229, column: 3, scope: !295, inlinedAt: !1660)
!1668 = !DILocation(line: 230, column: 3, scope: !295, inlinedAt: !1660)
!1669 = !DILocation(line: 230, column: 13, scope: !295, inlinedAt: !1660)
!1670 = !DILocalVariable(name: "ps", arg: 1, scope: !1671, file: !1422, line: 1135, type: !1674)
!1671 = distinct !DISubprogram(name: "mbszero", scope: !1422, file: !1422, line: 1135, type: !1672, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1675)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{null, !1674}
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!1675 = !{!1670}
!1676 = !DILocation(line: 0, scope: !1671, inlinedAt: !1677)
!1677 = distinct !DILocation(line: 230, column: 18, scope: !295, inlinedAt: !1660)
!1678 = !DILocalVariable(name: "__dest", arg: 1, scope: !1679, file: !1431, line: 57, type: !45)
!1679 = distinct !DISubprogram(name: "memset", scope: !1431, file: !1431, line: 57, type: !1432, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1680)
!1680 = !{!1678, !1681, !1682}
!1681 = !DILocalVariable(name: "__ch", arg: 2, scope: !1679, file: !1431, line: 57, type: !37)
!1682 = !DILocalVariable(name: "__len", arg: 3, scope: !1679, file: !1431, line: 57, type: !47)
!1683 = !DILocation(line: 0, scope: !1679, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1677)
!1685 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1684)
!1686 = !DILocation(line: 231, column: 7, scope: !1687, inlinedAt: !1660)
!1687 = distinct !DILexicalBlock(scope: !295, file: !259, line: 231, column: 7)
!1688 = !DILocation(line: 231, column: 40, scope: !1687, inlinedAt: !1660)
!1689 = !DILocation(line: 231, column: 45, scope: !1687, inlinedAt: !1660)
!1690 = !DILocation(line: 235, column: 1, scope: !295, inlinedAt: !1660)
!1691 = !DILocation(line: 0, scope: !295, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 358, column: 27, scope: !1661)
!1693 = !DILocation(line: 199, column: 29, scope: !295, inlinedAt: !1692)
!1694 = !DILocation(line: 201, column: 19, scope: !1665, inlinedAt: !1692)
!1695 = !DILocation(line: 201, column: 7, scope: !295, inlinedAt: !1692)
!1696 = !DILocation(line: 229, column: 3, scope: !295, inlinedAt: !1692)
!1697 = !DILocation(line: 230, column: 3, scope: !295, inlinedAt: !1692)
!1698 = !DILocation(line: 230, column: 13, scope: !295, inlinedAt: !1692)
!1699 = !DILocation(line: 0, scope: !1671, inlinedAt: !1700)
!1700 = distinct !DILocation(line: 230, column: 18, scope: !295, inlinedAt: !1692)
!1701 = !DILocation(line: 0, scope: !1679, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1700)
!1703 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1702)
!1704 = !DILocation(line: 231, column: 7, scope: !1687, inlinedAt: !1692)
!1705 = !DILocation(line: 231, column: 40, scope: !1687, inlinedAt: !1692)
!1706 = !DILocation(line: 231, column: 45, scope: !1687, inlinedAt: !1692)
!1707 = !DILocation(line: 235, column: 1, scope: !295, inlinedAt: !1692)
!1708 = !DILocation(line: 360, column: 13, scope: !1604)
!1709 = !DILocation(line: 0, scope: !1602)
!1710 = !DILocation(line: 361, column: 45, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1602, file: !259, line: 361, column: 11)
!1712 = !DILocation(line: 361, column: 11, scope: !1602)
!1713 = !DILocation(line: 362, column: 13, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1715, file: !259, line: 362, column: 13)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !259, line: 362, column: 13)
!1716 = !DILocation(line: 362, column: 13, scope: !1715)
!1717 = !DILocation(line: 361, column: 52, scope: !1711)
!1718 = distinct !{!1718, !1712, !1719, !506}
!1719 = !DILocation(line: 362, column: 13, scope: !1602)
!1720 = !DILocation(line: 260, column: 10, scope: !1576)
!1721 = !DILocation(line: 365, column: 28, scope: !1604)
!1722 = !DILocation(line: 367, column: 7, scope: !1605)
!1723 = !DILocation(line: 370, column: 7, scope: !1605)
!1724 = !DILocation(line: 376, column: 11, scope: !1605)
!1725 = !DILocation(line: 381, column: 11, scope: !1605)
!1726 = !DILocation(line: 382, column: 9, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !259, line: 382, column: 9)
!1728 = distinct !DILexicalBlock(scope: !1729, file: !259, line: 382, column: 9)
!1729 = distinct !DILexicalBlock(scope: !1605, file: !259, line: 381, column: 11)
!1730 = !DILocation(line: 382, column: 9, scope: !1728)
!1731 = !DILocation(line: 389, column: 7, scope: !1605)
!1732 = !DILocation(line: 392, column: 7, scope: !1605)
!1733 = !DILocation(line: 0, scope: !1607)
!1734 = !DILocation(line: 395, column: 8, scope: !1607)
!1735 = !DILocation(line: 395, column: 34, scope: !1610)
!1736 = !DILocation(line: 395, column: 26, scope: !1610)
!1737 = !DILocation(line: 395, column: 48, scope: !1610)
!1738 = !DILocation(line: 395, column: 55, scope: !1610)
!1739 = !DILocation(line: 395, column: 3, scope: !1607)
!1740 = !DILocation(line: 395, column: 67, scope: !1610)
!1741 = !DILocation(line: 0, scope: !1609)
!1742 = !DILocation(line: 402, column: 11, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 401, column: 11)
!1744 = !DILocation(line: 404, column: 17, scope: !1743)
!1745 = !DILocation(line: 405, column: 39, scope: !1743)
!1746 = !DILocation(line: 409, column: 32, scope: !1743)
!1747 = !DILocation(line: 405, column: 19, scope: !1743)
!1748 = !DILocation(line: 405, column: 15, scope: !1743)
!1749 = !DILocation(line: 410, column: 11, scope: !1743)
!1750 = !DILocation(line: 410, column: 25, scope: !1743)
!1751 = !DILocalVariable(name: "__s1", arg: 1, scope: !1752, file: !490, line: 974, type: !658)
!1752 = distinct !DISubprogram(name: "memeq", scope: !490, file: !490, line: 974, type: !1393, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1753)
!1753 = !{!1751, !1754, !1755}
!1754 = !DILocalVariable(name: "__s2", arg: 2, scope: !1752, file: !490, line: 974, type: !658)
!1755 = !DILocalVariable(name: "__n", arg: 3, scope: !1752, file: !490, line: 974, type: !47)
!1756 = !DILocation(line: 0, scope: !1752, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 410, column: 14, scope: !1743)
!1758 = !DILocation(line: 976, column: 11, scope: !1752, inlinedAt: !1757)
!1759 = !DILocation(line: 976, column: 10, scope: !1752, inlinedAt: !1757)
!1760 = !DILocation(line: 401, column: 11, scope: !1609)
!1761 = !DILocation(line: 417, column: 25, scope: !1609)
!1762 = !DILocation(line: 418, column: 7, scope: !1609)
!1763 = !DILocation(line: 421, column: 15, scope: !1616)
!1764 = !DILocation(line: 423, column: 15, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !259, line: 423, column: 15)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !259, line: 422, column: 13)
!1767 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 421, column: 15)
!1768 = !DILocation(line: 423, column: 15, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1765, file: !259, line: 423, column: 15)
!1770 = !DILocation(line: 423, column: 15, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1772, file: !259, line: 423, column: 15)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !259, line: 423, column: 15)
!1773 = distinct !DILexicalBlock(scope: !1769, file: !259, line: 423, column: 15)
!1774 = !DILocation(line: 423, column: 15, scope: !1772)
!1775 = !DILocation(line: 423, column: 15, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !259, line: 423, column: 15)
!1777 = distinct !DILexicalBlock(scope: !1773, file: !259, line: 423, column: 15)
!1778 = !DILocation(line: 423, column: 15, scope: !1777)
!1779 = !DILocation(line: 423, column: 15, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !259, line: 423, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1773, file: !259, line: 423, column: 15)
!1782 = !DILocation(line: 423, column: 15, scope: !1781)
!1783 = !DILocation(line: 423, column: 15, scope: !1773)
!1784 = !DILocation(line: 423, column: 15, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !259, line: 423, column: 15)
!1786 = distinct !DILexicalBlock(scope: !1765, file: !259, line: 423, column: 15)
!1787 = !DILocation(line: 423, column: 15, scope: !1786)
!1788 = !DILocation(line: 431, column: 19, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1766, file: !259, line: 430, column: 19)
!1790 = !DILocation(line: 431, column: 24, scope: !1789)
!1791 = !DILocation(line: 431, column: 28, scope: !1789)
!1792 = !DILocation(line: 431, column: 38, scope: !1789)
!1793 = !DILocation(line: 431, column: 48, scope: !1789)
!1794 = !DILocation(line: 431, column: 59, scope: !1789)
!1795 = !DILocation(line: 433, column: 19, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !259, line: 433, column: 19)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !259, line: 433, column: 19)
!1798 = distinct !DILexicalBlock(scope: !1789, file: !259, line: 432, column: 17)
!1799 = !DILocation(line: 433, column: 19, scope: !1797)
!1800 = !DILocation(line: 434, column: 19, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1802, file: !259, line: 434, column: 19)
!1802 = distinct !DILexicalBlock(scope: !1798, file: !259, line: 434, column: 19)
!1803 = !DILocation(line: 434, column: 19, scope: !1802)
!1804 = !DILocation(line: 435, column: 17, scope: !1798)
!1805 = !DILocation(line: 442, column: 20, scope: !1767)
!1806 = !DILocation(line: 447, column: 11, scope: !1616)
!1807 = !DILocation(line: 450, column: 19, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 448, column: 13)
!1809 = !DILocation(line: 456, column: 19, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1808, file: !259, line: 455, column: 19)
!1811 = !DILocation(line: 456, column: 24, scope: !1810)
!1812 = !DILocation(line: 456, column: 28, scope: !1810)
!1813 = !DILocation(line: 456, column: 38, scope: !1810)
!1814 = !DILocation(line: 456, column: 47, scope: !1810)
!1815 = !DILocation(line: 456, column: 41, scope: !1810)
!1816 = !DILocation(line: 456, column: 52, scope: !1810)
!1817 = !DILocation(line: 455, column: 19, scope: !1808)
!1818 = !DILocation(line: 457, column: 25, scope: !1810)
!1819 = !DILocation(line: 457, column: 17, scope: !1810)
!1820 = !DILocation(line: 464, column: 25, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1810, file: !259, line: 458, column: 19)
!1822 = !DILocation(line: 468, column: 21, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !259, line: 468, column: 21)
!1824 = distinct !DILexicalBlock(scope: !1821, file: !259, line: 468, column: 21)
!1825 = !DILocation(line: 468, column: 21, scope: !1824)
!1826 = !DILocation(line: 469, column: 21, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !259, line: 469, column: 21)
!1828 = distinct !DILexicalBlock(scope: !1821, file: !259, line: 469, column: 21)
!1829 = !DILocation(line: 469, column: 21, scope: !1828)
!1830 = !DILocation(line: 470, column: 21, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !259, line: 470, column: 21)
!1832 = distinct !DILexicalBlock(scope: !1821, file: !259, line: 470, column: 21)
!1833 = !DILocation(line: 470, column: 21, scope: !1832)
!1834 = !DILocation(line: 471, column: 21, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !259, line: 471, column: 21)
!1836 = distinct !DILexicalBlock(scope: !1821, file: !259, line: 471, column: 21)
!1837 = !DILocation(line: 471, column: 21, scope: !1836)
!1838 = !DILocation(line: 472, column: 21, scope: !1821)
!1839 = !DILocation(line: 482, column: 33, scope: !1639)
!1840 = !DILocation(line: 483, column: 33, scope: !1639)
!1841 = !DILocation(line: 485, column: 33, scope: !1639)
!1842 = !DILocation(line: 486, column: 33, scope: !1639)
!1843 = !DILocation(line: 487, column: 33, scope: !1639)
!1844 = !DILocation(line: 490, column: 17, scope: !1639)
!1845 = !DILocation(line: 492, column: 21, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !259, line: 491, column: 15)
!1847 = distinct !DILexicalBlock(scope: !1639, file: !259, line: 490, column: 17)
!1848 = !DILocation(line: 499, column: 35, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1639, file: !259, line: 499, column: 17)
!1850 = !DILocation(line: 499, column: 57, scope: !1849)
!1851 = !DILocation(line: 0, scope: !1639)
!1852 = !DILocation(line: 502, column: 11, scope: !1639)
!1853 = !DILocation(line: 504, column: 17, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1639, file: !259, line: 503, column: 17)
!1855 = !DILocation(line: 507, column: 11, scope: !1639)
!1856 = !DILocation(line: 508, column: 17, scope: !1639)
!1857 = !DILocation(line: 517, column: 15, scope: !1616)
!1858 = !DILocation(line: 517, column: 40, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 517, column: 15)
!1860 = !DILocation(line: 517, column: 47, scope: !1859)
!1861 = !DILocation(line: 517, column: 18, scope: !1859)
!1862 = !DILocation(line: 521, column: 17, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 521, column: 15)
!1864 = !DILocation(line: 521, column: 15, scope: !1616)
!1865 = !DILocation(line: 525, column: 11, scope: !1616)
!1866 = !DILocation(line: 537, column: 15, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 536, column: 15)
!1868 = !DILocation(line: 536, column: 15, scope: !1616)
!1869 = !DILocation(line: 544, column: 15, scope: !1616)
!1870 = !DILocation(line: 546, column: 19, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !259, line: 545, column: 13)
!1872 = distinct !DILexicalBlock(scope: !1616, file: !259, line: 544, column: 15)
!1873 = !DILocation(line: 549, column: 19, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1871, file: !259, line: 549, column: 19)
!1875 = !DILocation(line: 549, column: 30, scope: !1874)
!1876 = !DILocation(line: 558, column: 15, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !259, line: 558, column: 15)
!1878 = distinct !DILexicalBlock(scope: !1871, file: !259, line: 558, column: 15)
!1879 = !DILocation(line: 558, column: 15, scope: !1878)
!1880 = !DILocation(line: 559, column: 15, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !259, line: 559, column: 15)
!1882 = distinct !DILexicalBlock(scope: !1871, file: !259, line: 559, column: 15)
!1883 = !DILocation(line: 559, column: 15, scope: !1882)
!1884 = !DILocation(line: 560, column: 15, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !259, line: 560, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1871, file: !259, line: 560, column: 15)
!1887 = !DILocation(line: 560, column: 15, scope: !1886)
!1888 = !DILocation(line: 562, column: 13, scope: !1871)
!1889 = !DILocation(line: 602, column: 17, scope: !1615)
!1890 = !DILocation(line: 0, scope: !1615)
!1891 = !DILocation(line: 605, column: 29, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1620, file: !259, line: 603, column: 15)
!1893 = !DILocation(line: 605, column: 41, scope: !1892)
!1894 = !DILocation(line: 670, column: 23, scope: !1636)
!1895 = !DILocation(line: 609, column: 17, scope: !1619)
!1896 = !DILocation(line: 609, column: 27, scope: !1619)
!1897 = !DILocation(line: 0, scope: !1671, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 609, column: 32, scope: !1619)
!1899 = !DILocation(line: 0, scope: !1679, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 1137, column: 3, scope: !1671, inlinedAt: !1898)
!1901 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !1900)
!1902 = !DILocation(line: 613, column: 29, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1619, file: !259, line: 613, column: 21)
!1904 = !DILocation(line: 613, column: 21, scope: !1619)
!1905 = !DILocation(line: 614, column: 29, scope: !1903)
!1906 = !DILocation(line: 614, column: 19, scope: !1903)
!1907 = !DILocation(line: 618, column: 21, scope: !1622)
!1908 = !DILocation(line: 620, column: 54, scope: !1622)
!1909 = !DILocation(line: 0, scope: !1622)
!1910 = !DILocation(line: 619, column: 36, scope: !1622)
!1911 = !DILocation(line: 621, column: 25, scope: !1622)
!1912 = !DILocation(line: 631, column: 38, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1631, file: !259, line: 629, column: 23)
!1914 = !DILocation(line: 631, column: 48, scope: !1913)
!1915 = !DILocation(line: 665, column: 19, scope: !1623)
!1916 = !DILocation(line: 666, column: 15, scope: !1620)
!1917 = !DILocation(line: 626, column: 25, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1632, file: !259, line: 624, column: 23)
!1919 = !DILocation(line: 631, column: 51, scope: !1913)
!1920 = !DILocation(line: 631, column: 25, scope: !1913)
!1921 = !DILocation(line: 632, column: 28, scope: !1913)
!1922 = !DILocation(line: 631, column: 34, scope: !1913)
!1923 = distinct !{!1923, !1920, !1921, !506}
!1924 = !DILocation(line: 646, column: 29, scope: !1629)
!1925 = !DILocation(line: 0, scope: !1627)
!1926 = !DILocation(line: 649, column: 49, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1627, file: !259, line: 648, column: 29)
!1928 = !DILocation(line: 649, column: 39, scope: !1927)
!1929 = !DILocation(line: 649, column: 31, scope: !1927)
!1930 = !DILocation(line: 648, column: 60, scope: !1927)
!1931 = !DILocation(line: 648, column: 50, scope: !1927)
!1932 = !DILocation(line: 648, column: 29, scope: !1627)
!1933 = distinct !{!1933, !1932, !1934, !506}
!1934 = !DILocation(line: 654, column: 33, scope: !1627)
!1935 = !DILocation(line: 657, column: 43, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1630, file: !259, line: 657, column: 29)
!1937 = !DILocalVariable(name: "wc", arg: 1, scope: !1938, file: !1939, line: 865, type: !1942)
!1938 = distinct !DISubprogram(name: "c32isprint", scope: !1939, file: !1939, line: 865, type: !1940, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !1944)
!1939 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!37, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1943, line: 20, baseType: !7)
!1943 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1944 = !{!1937}
!1945 = !DILocation(line: 0, scope: !1938, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 657, column: 31, scope: !1936)
!1947 = !DILocation(line: 871, column: 10, scope: !1938, inlinedAt: !1946)
!1948 = !DILocation(line: 657, column: 31, scope: !1936)
!1949 = !DILocation(line: 664, column: 23, scope: !1622)
!1950 = !DILocation(line: 753, column: 2, scope: !1576)
!1951 = !DILocation(line: 756, column: 51, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 756, column: 7)
!1953 = !DILocation(line: 670, column: 19, scope: !1636)
!1954 = !DILocation(line: 670, column: 45, scope: !1636)
!1955 = !DILocation(line: 674, column: 33, scope: !1635)
!1956 = !DILocation(line: 0, scope: !1635)
!1957 = !DILocation(line: 676, column: 17, scope: !1635)
!1958 = !DILocation(line: 398, column: 12, scope: !1609)
!1959 = !DILocation(line: 678, column: 43, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !259, line: 678, column: 25)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !259, line: 677, column: 19)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !259, line: 676, column: 17)
!1963 = distinct !DILexicalBlock(scope: !1635, file: !259, line: 676, column: 17)
!1964 = !DILocation(line: 680, column: 25, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !259, line: 680, column: 25)
!1966 = distinct !DILexicalBlock(scope: !1960, file: !259, line: 679, column: 23)
!1967 = !DILocation(line: 680, column: 25, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1965, file: !259, line: 680, column: 25)
!1969 = !DILocation(line: 680, column: 25, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1971, file: !259, line: 680, column: 25)
!1971 = distinct !DILexicalBlock(scope: !1972, file: !259, line: 680, column: 25)
!1972 = distinct !DILexicalBlock(scope: !1968, file: !259, line: 680, column: 25)
!1973 = !DILocation(line: 680, column: 25, scope: !1971)
!1974 = !DILocation(line: 680, column: 25, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !259, line: 680, column: 25)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !259, line: 680, column: 25)
!1977 = !DILocation(line: 680, column: 25, scope: !1976)
!1978 = !DILocation(line: 680, column: 25, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1980, file: !259, line: 680, column: 25)
!1980 = distinct !DILexicalBlock(scope: !1972, file: !259, line: 680, column: 25)
!1981 = !DILocation(line: 680, column: 25, scope: !1980)
!1982 = !DILocation(line: 680, column: 25, scope: !1972)
!1983 = !DILocation(line: 680, column: 25, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !259, line: 680, column: 25)
!1985 = distinct !DILexicalBlock(scope: !1965, file: !259, line: 680, column: 25)
!1986 = !DILocation(line: 680, column: 25, scope: !1985)
!1987 = !DILocation(line: 681, column: 25, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !259, line: 681, column: 25)
!1989 = distinct !DILexicalBlock(scope: !1966, file: !259, line: 681, column: 25)
!1990 = !DILocation(line: 681, column: 25, scope: !1989)
!1991 = !DILocation(line: 682, column: 25, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !259, line: 682, column: 25)
!1993 = distinct !DILexicalBlock(scope: !1966, file: !259, line: 682, column: 25)
!1994 = !DILocation(line: 682, column: 25, scope: !1993)
!1995 = !DILocation(line: 683, column: 38, scope: !1966)
!1996 = !DILocation(line: 683, column: 33, scope: !1966)
!1997 = !DILocation(line: 684, column: 23, scope: !1966)
!1998 = !DILocation(line: 685, column: 30, scope: !1960)
!1999 = !DILocation(line: 687, column: 25, scope: !2000)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !259, line: 687, column: 25)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !259, line: 687, column: 25)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !259, line: 686, column: 23)
!2003 = distinct !DILexicalBlock(scope: !1960, file: !259, line: 685, column: 30)
!2004 = !DILocation(line: 687, column: 25, scope: !2001)
!2005 = !DILocation(line: 689, column: 23, scope: !2002)
!2006 = !DILocation(line: 690, column: 35, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1961, file: !259, line: 690, column: 25)
!2008 = !DILocation(line: 690, column: 30, scope: !2007)
!2009 = !DILocation(line: 690, column: 25, scope: !1961)
!2010 = !DILocation(line: 692, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !259, line: 692, column: 21)
!2012 = distinct !DILexicalBlock(scope: !1961, file: !259, line: 692, column: 21)
!2013 = !DILocation(line: 692, column: 21, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !259, line: 692, column: 21)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !259, line: 692, column: 21)
!2016 = distinct !DILexicalBlock(scope: !2011, file: !259, line: 692, column: 21)
!2017 = !DILocation(line: 692, column: 21, scope: !2015)
!2018 = !DILocation(line: 692, column: 21, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !259, line: 692, column: 21)
!2020 = distinct !DILexicalBlock(scope: !2016, file: !259, line: 692, column: 21)
!2021 = !DILocation(line: 692, column: 21, scope: !2020)
!2022 = !DILocation(line: 692, column: 21, scope: !2016)
!2023 = !DILocation(line: 0, scope: !1961)
!2024 = !DILocation(line: 693, column: 21, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !259, line: 693, column: 21)
!2026 = distinct !DILexicalBlock(scope: !1961, file: !259, line: 693, column: 21)
!2027 = !DILocation(line: 693, column: 21, scope: !2026)
!2028 = !DILocation(line: 694, column: 25, scope: !1961)
!2029 = !DILocation(line: 676, column: 17, scope: !1962)
!2030 = distinct !{!2030, !2031, !2032}
!2031 = !DILocation(line: 676, column: 17, scope: !1963)
!2032 = !DILocation(line: 695, column: 19, scope: !1963)
!2033 = !DILocation(line: 409, column: 30, scope: !1743)
!2034 = !DILocation(line: 702, column: 34, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 702, column: 11)
!2036 = !DILocation(line: 704, column: 14, scope: !2035)
!2037 = !DILocation(line: 705, column: 14, scope: !2035)
!2038 = !DILocation(line: 705, column: 35, scope: !2035)
!2039 = !DILocation(line: 705, column: 17, scope: !2035)
!2040 = !DILocation(line: 705, column: 47, scope: !2035)
!2041 = !DILocation(line: 705, column: 65, scope: !2035)
!2042 = !DILocation(line: 706, column: 11, scope: !2035)
!2043 = !DILocation(line: 702, column: 11, scope: !1609)
!2044 = !DILocation(line: 395, column: 15, scope: !1607)
!2045 = !DILocation(line: 709, column: 5, scope: !1609)
!2046 = !DILocation(line: 710, column: 7, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 710, column: 7)
!2048 = !DILocation(line: 710, column: 7, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2047, file: !259, line: 710, column: 7)
!2050 = !DILocation(line: 710, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !259, line: 710, column: 7)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !259, line: 710, column: 7)
!2053 = distinct !DILexicalBlock(scope: !2049, file: !259, line: 710, column: 7)
!2054 = !DILocation(line: 710, column: 7, scope: !2052)
!2055 = !DILocation(line: 710, column: 7, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !259, line: 710, column: 7)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !259, line: 710, column: 7)
!2058 = !DILocation(line: 710, column: 7, scope: !2057)
!2059 = !DILocation(line: 710, column: 7, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !259, line: 710, column: 7)
!2061 = distinct !DILexicalBlock(scope: !2053, file: !259, line: 710, column: 7)
!2062 = !DILocation(line: 710, column: 7, scope: !2061)
!2063 = !DILocation(line: 710, column: 7, scope: !2053)
!2064 = !DILocation(line: 710, column: 7, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !259, line: 710, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2047, file: !259, line: 710, column: 7)
!2067 = !DILocation(line: 710, column: 7, scope: !2066)
!2068 = !DILocation(line: 712, column: 5, scope: !1609)
!2069 = !DILocation(line: 713, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !259, line: 713, column: 7)
!2071 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 713, column: 7)
!2072 = !DILocation(line: 417, column: 21, scope: !1609)
!2073 = !DILocation(line: 713, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !259, line: 713, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !259, line: 713, column: 7)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !259, line: 713, column: 7)
!2077 = !DILocation(line: 713, column: 7, scope: !2075)
!2078 = !DILocation(line: 713, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !259, line: 713, column: 7)
!2080 = distinct !DILexicalBlock(scope: !2076, file: !259, line: 713, column: 7)
!2081 = !DILocation(line: 713, column: 7, scope: !2080)
!2082 = !DILocation(line: 713, column: 7, scope: !2076)
!2083 = !DILocation(line: 714, column: 7, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !259, line: 714, column: 7)
!2085 = distinct !DILexicalBlock(scope: !1609, file: !259, line: 714, column: 7)
!2086 = !DILocation(line: 714, column: 7, scope: !2085)
!2087 = !DILocation(line: 716, column: 11, scope: !1609)
!2088 = !DILocation(line: 718, column: 5, scope: !1610)
!2089 = !DILocation(line: 395, column: 82, scope: !1610)
!2090 = !DILocation(line: 395, column: 3, scope: !1610)
!2091 = distinct !{!2091, !1739, !2092, !506}
!2092 = !DILocation(line: 718, column: 5, scope: !1607)
!2093 = !DILocation(line: 720, column: 11, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 720, column: 7)
!2095 = !DILocation(line: 720, column: 16, scope: !2094)
!2096 = !DILocation(line: 728, column: 51, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 728, column: 7)
!2098 = !DILocation(line: 731, column: 11, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2097, file: !259, line: 730, column: 5)
!2100 = !DILocation(line: 732, column: 16, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2099, file: !259, line: 731, column: 11)
!2102 = !DILocation(line: 732, column: 9, scope: !2101)
!2103 = !DILocation(line: 736, column: 18, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2101, file: !259, line: 736, column: 16)
!2105 = !DILocation(line: 736, column: 29, scope: !2104)
!2106 = !DILocation(line: 745, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 745, column: 7)
!2108 = !DILocation(line: 745, column: 20, scope: !2107)
!2109 = !DILocation(line: 746, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !259, line: 746, column: 5)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !259, line: 746, column: 5)
!2112 = !DILocation(line: 746, column: 5, scope: !2111)
!2113 = !DILocation(line: 747, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !259, line: 747, column: 7)
!2115 = distinct !DILexicalBlock(scope: !2110, file: !259, line: 747, column: 7)
!2116 = !DILocation(line: 747, column: 7, scope: !2115)
!2117 = !DILocation(line: 746, column: 39, scope: !2110)
!2118 = distinct !{!2118, !2112, !2119, !506}
!2119 = !DILocation(line: 747, column: 7, scope: !2111)
!2120 = !DILocation(line: 749, column: 11, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !1576, file: !259, line: 749, column: 7)
!2122 = !DILocation(line: 749, column: 7, scope: !1576)
!2123 = !DILocation(line: 750, column: 5, scope: !2121)
!2124 = !DILocation(line: 750, column: 17, scope: !2121)
!2125 = !DILocation(line: 756, column: 21, scope: !1952)
!2126 = !DILocation(line: 760, column: 42, scope: !1576)
!2127 = !DILocation(line: 758, column: 10, scope: !1576)
!2128 = !DILocation(line: 758, column: 3, scope: !1576)
!2129 = !DILocation(line: 762, column: 1, scope: !1576)
!2130 = !DISubprogram(name: "iswprint", scope: !2131, file: !2131, line: 120, type: !1940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!2131 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2132 = distinct !DISubprogram(name: "quotearg_alloc", scope: !259, file: !259, line: 788, type: !2133, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{!43, !50, !47, !1468}
!2135 = !{!2136, !2137, !2138}
!2136 = !DILocalVariable(name: "arg", arg: 1, scope: !2132, file: !259, line: 788, type: !50)
!2137 = !DILocalVariable(name: "argsize", arg: 2, scope: !2132, file: !259, line: 788, type: !47)
!2138 = !DILocalVariable(name: "o", arg: 3, scope: !2132, file: !259, line: 789, type: !1468)
!2139 = !DILocation(line: 0, scope: !2132)
!2140 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !259, line: 801, type: !50)
!2141 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !259, file: !259, line: 801, type: !2142, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!43, !50, !47, !382, !1468}
!2144 = !{!2140, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152}
!2145 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !259, line: 801, type: !47)
!2146 = !DILocalVariable(name: "size", arg: 3, scope: !2141, file: !259, line: 801, type: !382)
!2147 = !DILocalVariable(name: "o", arg: 4, scope: !2141, file: !259, line: 802, type: !1468)
!2148 = !DILocalVariable(name: "p", scope: !2141, file: !259, line: 804, type: !1468)
!2149 = !DILocalVariable(name: "saved_errno", scope: !2141, file: !259, line: 805, type: !37)
!2150 = !DILocalVariable(name: "flags", scope: !2141, file: !259, line: 807, type: !37)
!2151 = !DILocalVariable(name: "bufsize", scope: !2141, file: !259, line: 808, type: !47)
!2152 = !DILocalVariable(name: "buf", scope: !2141, file: !259, line: 812, type: !43)
!2153 = !DILocation(line: 0, scope: !2141, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 791, column: 10, scope: !2132)
!2155 = !DILocation(line: 804, column: 37, scope: !2141, inlinedAt: !2154)
!2156 = !DILocation(line: 805, column: 21, scope: !2141, inlinedAt: !2154)
!2157 = !DILocation(line: 807, column: 18, scope: !2141, inlinedAt: !2154)
!2158 = !DILocation(line: 807, column: 24, scope: !2141, inlinedAt: !2154)
!2159 = !DILocation(line: 808, column: 72, scope: !2141, inlinedAt: !2154)
!2160 = !DILocation(line: 809, column: 53, scope: !2141, inlinedAt: !2154)
!2161 = !DILocation(line: 810, column: 49, scope: !2141, inlinedAt: !2154)
!2162 = !DILocation(line: 811, column: 49, scope: !2141, inlinedAt: !2154)
!2163 = !DILocation(line: 808, column: 20, scope: !2141, inlinedAt: !2154)
!2164 = !DILocation(line: 811, column: 62, scope: !2141, inlinedAt: !2154)
!2165 = !DILocation(line: 812, column: 15, scope: !2141, inlinedAt: !2154)
!2166 = !DILocation(line: 813, column: 60, scope: !2141, inlinedAt: !2154)
!2167 = !DILocation(line: 815, column: 32, scope: !2141, inlinedAt: !2154)
!2168 = !DILocation(line: 815, column: 47, scope: !2141, inlinedAt: !2154)
!2169 = !DILocation(line: 813, column: 3, scope: !2141, inlinedAt: !2154)
!2170 = !DILocation(line: 816, column: 9, scope: !2141, inlinedAt: !2154)
!2171 = !DILocation(line: 791, column: 3, scope: !2132)
!2172 = !DILocation(line: 0, scope: !2141)
!2173 = !DILocation(line: 804, column: 37, scope: !2141)
!2174 = !DILocation(line: 805, column: 21, scope: !2141)
!2175 = !DILocation(line: 807, column: 18, scope: !2141)
!2176 = !DILocation(line: 807, column: 27, scope: !2141)
!2177 = !DILocation(line: 807, column: 24, scope: !2141)
!2178 = !DILocation(line: 808, column: 72, scope: !2141)
!2179 = !DILocation(line: 809, column: 53, scope: !2141)
!2180 = !DILocation(line: 810, column: 49, scope: !2141)
!2181 = !DILocation(line: 811, column: 49, scope: !2141)
!2182 = !DILocation(line: 808, column: 20, scope: !2141)
!2183 = !DILocation(line: 811, column: 62, scope: !2141)
!2184 = !DILocation(line: 812, column: 15, scope: !2141)
!2185 = !DILocation(line: 813, column: 60, scope: !2141)
!2186 = !DILocation(line: 815, column: 32, scope: !2141)
!2187 = !DILocation(line: 815, column: 47, scope: !2141)
!2188 = !DILocation(line: 813, column: 3, scope: !2141)
!2189 = !DILocation(line: 816, column: 9, scope: !2141)
!2190 = !DILocation(line: 817, column: 7, scope: !2141)
!2191 = !DILocation(line: 818, column: 11, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2141, file: !259, line: 817, column: 7)
!2193 = !{!788, !788, i64 0}
!2194 = !DILocation(line: 818, column: 5, scope: !2192)
!2195 = !DILocation(line: 819, column: 3, scope: !2141)
!2196 = distinct !DISubprogram(name: "quotearg_free", scope: !259, file: !259, line: 837, type: !212, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2197)
!2197 = !{!2198, !2199}
!2198 = !DILocalVariable(name: "sv", scope: !2196, file: !259, line: 839, type: !318)
!2199 = !DILocalVariable(name: "i", scope: !2200, file: !259, line: 840, type: !37)
!2200 = distinct !DILexicalBlock(scope: !2196, file: !259, line: 840, column: 3)
!2201 = !DILocation(line: 839, column: 24, scope: !2196)
!2202 = !DILocation(line: 0, scope: !2196)
!2203 = !DILocation(line: 0, scope: !2200)
!2204 = !DILocation(line: 840, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !259, line: 840, column: 3)
!2206 = !DILocation(line: 840, column: 3, scope: !2200)
!2207 = !DILocation(line: 842, column: 13, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2196, file: !259, line: 842, column: 7)
!2209 = !{!2210, !454, i64 8}
!2210 = !{!"slotvec", !788, i64 0, !454, i64 8}
!2211 = !DILocation(line: 842, column: 17, scope: !2208)
!2212 = !DILocation(line: 842, column: 7, scope: !2196)
!2213 = !DILocation(line: 841, column: 17, scope: !2205)
!2214 = !DILocation(line: 841, column: 5, scope: !2205)
!2215 = !DILocation(line: 840, column: 32, scope: !2205)
!2216 = distinct !{!2216, !2206, !2217, !506}
!2217 = !DILocation(line: 841, column: 20, scope: !2200)
!2218 = !DILocation(line: 844, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2208, file: !259, line: 843, column: 5)
!2220 = !DILocation(line: 845, column: 21, scope: !2219)
!2221 = !{!2210, !788, i64 0}
!2222 = !DILocation(line: 846, column: 20, scope: !2219)
!2223 = !DILocation(line: 847, column: 5, scope: !2219)
!2224 = !DILocation(line: 848, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2196, file: !259, line: 848, column: 7)
!2226 = !DILocation(line: 848, column: 7, scope: !2196)
!2227 = !DILocation(line: 850, column: 13, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2225, file: !259, line: 849, column: 5)
!2229 = !DILocation(line: 850, column: 7, scope: !2228)
!2230 = !DILocation(line: 851, column: 15, scope: !2228)
!2231 = !DILocation(line: 852, column: 5, scope: !2228)
!2232 = !DILocation(line: 853, column: 10, scope: !2196)
!2233 = !DILocation(line: 854, column: 1, scope: !2196)
!2234 = distinct !DISubprogram(name: "quotearg_n", scope: !259, file: !259, line: 919, type: !648, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "n", arg: 1, scope: !2234, file: !259, line: 919, type: !37)
!2237 = !DILocalVariable(name: "arg", arg: 2, scope: !2234, file: !259, line: 919, type: !50)
!2238 = !DILocation(line: 0, scope: !2234)
!2239 = !DILocation(line: 921, column: 10, scope: !2234)
!2240 = !DILocation(line: 921, column: 3, scope: !2234)
!2241 = distinct !DISubprogram(name: "quotearg_n_options", scope: !259, file: !259, line: 866, type: !2242, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!43, !37, !50, !47, !1468}
!2244 = !{!2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2255, !2256, !2258, !2259, !2260}
!2245 = !DILocalVariable(name: "n", arg: 1, scope: !2241, file: !259, line: 866, type: !37)
!2246 = !DILocalVariable(name: "arg", arg: 2, scope: !2241, file: !259, line: 866, type: !50)
!2247 = !DILocalVariable(name: "argsize", arg: 3, scope: !2241, file: !259, line: 866, type: !47)
!2248 = !DILocalVariable(name: "options", arg: 4, scope: !2241, file: !259, line: 867, type: !1468)
!2249 = !DILocalVariable(name: "saved_errno", scope: !2241, file: !259, line: 869, type: !37)
!2250 = !DILocalVariable(name: "sv", scope: !2241, file: !259, line: 871, type: !318)
!2251 = !DILocalVariable(name: "nslots_max", scope: !2241, file: !259, line: 873, type: !37)
!2252 = !DILocalVariable(name: "preallocated", scope: !2253, file: !259, line: 879, type: !56)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !259, line: 878, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2241, file: !259, line: 877, column: 7)
!2255 = !DILocalVariable(name: "new_nslots", scope: !2253, file: !259, line: 880, type: !395)
!2256 = !DILocalVariable(name: "size", scope: !2257, file: !259, line: 891, type: !47)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !259, line: 890, column: 3)
!2258 = !DILocalVariable(name: "val", scope: !2257, file: !259, line: 892, type: !43)
!2259 = !DILocalVariable(name: "flags", scope: !2257, file: !259, line: 894, type: !37)
!2260 = !DILocalVariable(name: "qsize", scope: !2257, file: !259, line: 895, type: !47)
!2261 = !DILocation(line: 0, scope: !2241)
!2262 = !DILocation(line: 869, column: 21, scope: !2241)
!2263 = !DILocation(line: 871, column: 24, scope: !2241)
!2264 = !DILocation(line: 874, column: 17, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2241, file: !259, line: 874, column: 7)
!2266 = !DILocation(line: 875, column: 5, scope: !2265)
!2267 = !DILocation(line: 877, column: 7, scope: !2254)
!2268 = !DILocation(line: 877, column: 14, scope: !2254)
!2269 = !DILocation(line: 877, column: 7, scope: !2241)
!2270 = !DILocation(line: 879, column: 31, scope: !2253)
!2271 = !DILocation(line: 0, scope: !2253)
!2272 = !DILocation(line: 880, column: 7, scope: !2253)
!2273 = !DILocation(line: 880, column: 26, scope: !2253)
!2274 = !DILocation(line: 880, column: 13, scope: !2253)
!2275 = !DILocation(line: 882, column: 31, scope: !2253)
!2276 = !DILocation(line: 883, column: 33, scope: !2253)
!2277 = !DILocation(line: 883, column: 42, scope: !2253)
!2278 = !DILocation(line: 883, column: 31, scope: !2253)
!2279 = !DILocation(line: 882, column: 22, scope: !2253)
!2280 = !DILocation(line: 882, column: 15, scope: !2253)
!2281 = !DILocation(line: 884, column: 11, scope: !2253)
!2282 = !DILocation(line: 885, column: 15, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2253, file: !259, line: 884, column: 11)
!2284 = !{i64 0, i64 8, !2193, i64 8, i64 8, !453}
!2285 = !DILocation(line: 885, column: 9, scope: !2283)
!2286 = !DILocation(line: 886, column: 20, scope: !2253)
!2287 = !DILocation(line: 886, column: 18, scope: !2253)
!2288 = !DILocation(line: 886, column: 15, scope: !2253)
!2289 = !DILocation(line: 886, column: 32, scope: !2253)
!2290 = !DILocation(line: 886, column: 43, scope: !2253)
!2291 = !DILocation(line: 886, column: 53, scope: !2253)
!2292 = !DILocation(line: 0, scope: !1679, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 886, column: 7, scope: !2253)
!2294 = !DILocation(line: 59, column: 10, scope: !1679, inlinedAt: !2293)
!2295 = !DILocation(line: 887, column: 16, scope: !2253)
!2296 = !DILocation(line: 887, column: 14, scope: !2253)
!2297 = !DILocation(line: 888, column: 5, scope: !2254)
!2298 = !DILocation(line: 888, column: 5, scope: !2253)
!2299 = !DILocation(line: 891, column: 19, scope: !2257)
!2300 = !DILocation(line: 891, column: 25, scope: !2257)
!2301 = !DILocation(line: 0, scope: !2257)
!2302 = !DILocation(line: 892, column: 23, scope: !2257)
!2303 = !DILocation(line: 894, column: 26, scope: !2257)
!2304 = !DILocation(line: 894, column: 32, scope: !2257)
!2305 = !DILocation(line: 896, column: 55, scope: !2257)
!2306 = !DILocation(line: 897, column: 46, scope: !2257)
!2307 = !DILocation(line: 898, column: 55, scope: !2257)
!2308 = !DILocation(line: 899, column: 55, scope: !2257)
!2309 = !DILocation(line: 895, column: 20, scope: !2257)
!2310 = !DILocation(line: 901, column: 14, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2257, file: !259, line: 901, column: 9)
!2312 = !DILocation(line: 901, column: 9, scope: !2257)
!2313 = !DILocation(line: 903, column: 35, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2311, file: !259, line: 902, column: 7)
!2315 = !DILocation(line: 903, column: 20, scope: !2314)
!2316 = !DILocation(line: 904, column: 17, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !259, line: 904, column: 13)
!2318 = !DILocation(line: 904, column: 13, scope: !2314)
!2319 = !DILocation(line: 905, column: 11, scope: !2317)
!2320 = !DILocation(line: 906, column: 27, scope: !2314)
!2321 = !DILocation(line: 906, column: 19, scope: !2314)
!2322 = !DILocation(line: 907, column: 69, scope: !2314)
!2323 = !DILocation(line: 909, column: 44, scope: !2314)
!2324 = !DILocation(line: 910, column: 44, scope: !2314)
!2325 = !DILocation(line: 907, column: 9, scope: !2314)
!2326 = !DILocation(line: 911, column: 7, scope: !2314)
!2327 = !DILocation(line: 913, column: 11, scope: !2257)
!2328 = !DILocation(line: 914, column: 5, scope: !2257)
!2329 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !259, file: !259, line: 925, type: !2330, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!43, !37, !50, !47}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "n", arg: 1, scope: !2329, file: !259, line: 925, type: !37)
!2334 = !DILocalVariable(name: "arg", arg: 2, scope: !2329, file: !259, line: 925, type: !50)
!2335 = !DILocalVariable(name: "argsize", arg: 3, scope: !2329, file: !259, line: 925, type: !47)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 927, column: 10, scope: !2329)
!2338 = !DILocation(line: 927, column: 3, scope: !2329)
!2339 = distinct !DISubprogram(name: "quotearg", scope: !259, file: !259, line: 931, type: !652, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2340)
!2340 = !{!2341}
!2341 = !DILocalVariable(name: "arg", arg: 1, scope: !2339, file: !259, line: 931, type: !50)
!2342 = !DILocation(line: 0, scope: !2339)
!2343 = !DILocation(line: 0, scope: !2234, inlinedAt: !2344)
!2344 = distinct !DILocation(line: 933, column: 10, scope: !2339)
!2345 = !DILocation(line: 921, column: 10, scope: !2234, inlinedAt: !2344)
!2346 = !DILocation(line: 933, column: 3, scope: !2339)
!2347 = distinct !DISubprogram(name: "quotearg_mem", scope: !259, file: !259, line: 937, type: !2348, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2350)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!43, !50, !47}
!2350 = !{!2351, !2352}
!2351 = !DILocalVariable(name: "arg", arg: 1, scope: !2347, file: !259, line: 937, type: !50)
!2352 = !DILocalVariable(name: "argsize", arg: 2, scope: !2347, file: !259, line: 937, type: !47)
!2353 = !DILocation(line: 0, scope: !2347)
!2354 = !DILocation(line: 0, scope: !2329, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 939, column: 10, scope: !2347)
!2356 = !DILocation(line: 927, column: 10, scope: !2329, inlinedAt: !2355)
!2357 = !DILocation(line: 939, column: 3, scope: !2347)
!2358 = distinct !DISubprogram(name: "quotearg_n_style", scope: !259, file: !259, line: 943, type: !2359, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2361)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!43, !37, !5, !50}
!2361 = !{!2362, !2363, !2364, !2365}
!2362 = !DILocalVariable(name: "n", arg: 1, scope: !2358, file: !259, line: 943, type: !37)
!2363 = !DILocalVariable(name: "s", arg: 2, scope: !2358, file: !259, line: 943, type: !5)
!2364 = !DILocalVariable(name: "arg", arg: 3, scope: !2358, file: !259, line: 943, type: !50)
!2365 = !DILocalVariable(name: "o", scope: !2358, file: !259, line: 945, type: !1469)
!2366 = !DILocation(line: 0, scope: !2358)
!2367 = !DILocation(line: 945, column: 3, scope: !2358)
!2368 = !DILocation(line: 945, column: 32, scope: !2358)
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"quoting_options_from_style: argument 0"}
!2371 = distinct !{!2371, !"quoting_options_from_style"}
!2372 = !DILocation(line: 945, column: 36, scope: !2358)
!2373 = !DILocalVariable(name: "style", arg: 1, scope: !2374, file: !259, line: 183, type: !5)
!2374 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !259, file: !259, line: 183, type: !2375, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2377)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!276, !5}
!2377 = !{!2373, !2378}
!2378 = !DILocalVariable(name: "o", scope: !2374, file: !259, line: 185, type: !276)
!2379 = !DILocation(line: 0, scope: !2374, inlinedAt: !2380)
!2380 = distinct !DILocation(line: 945, column: 36, scope: !2358)
!2381 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2380)
!2382 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2380)
!2383 = distinct !DILexicalBlock(scope: !2374, file: !259, line: 186, column: 7)
!2384 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2380)
!2385 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2380)
!2386 = !DILocation(line: 188, column: 5, scope: !2374, inlinedAt: !2380)
!2387 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2380)
!2388 = !DILocation(line: 946, column: 10, scope: !2358)
!2389 = !DILocation(line: 947, column: 1, scope: !2358)
!2390 = !DILocation(line: 946, column: 3, scope: !2358)
!2391 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !259, file: !259, line: 950, type: !2392, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!43, !37, !5, !50, !47}
!2394 = !{!2395, !2396, !2397, !2398, !2399}
!2395 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !259, line: 950, type: !37)
!2396 = !DILocalVariable(name: "s", arg: 2, scope: !2391, file: !259, line: 950, type: !5)
!2397 = !DILocalVariable(name: "arg", arg: 3, scope: !2391, file: !259, line: 951, type: !50)
!2398 = !DILocalVariable(name: "argsize", arg: 4, scope: !2391, file: !259, line: 951, type: !47)
!2399 = !DILocalVariable(name: "o", scope: !2391, file: !259, line: 953, type: !1469)
!2400 = !DILocation(line: 0, scope: !2391)
!2401 = !DILocation(line: 953, column: 3, scope: !2391)
!2402 = !DILocation(line: 953, column: 32, scope: !2391)
!2403 = !{!2404}
!2404 = distinct !{!2404, !2405, !"quoting_options_from_style: argument 0"}
!2405 = distinct !{!2405, !"quoting_options_from_style"}
!2406 = !DILocation(line: 953, column: 36, scope: !2391)
!2407 = !DILocation(line: 0, scope: !2374, inlinedAt: !2408)
!2408 = distinct !DILocation(line: 953, column: 36, scope: !2391)
!2409 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2408)
!2410 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2408)
!2411 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2408)
!2412 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2408)
!2413 = !DILocation(line: 188, column: 5, scope: !2374, inlinedAt: !2408)
!2414 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2408)
!2415 = !DILocation(line: 954, column: 10, scope: !2391)
!2416 = !DILocation(line: 955, column: 1, scope: !2391)
!2417 = !DILocation(line: 954, column: 3, scope: !2391)
!2418 = distinct !DISubprogram(name: "quotearg_style", scope: !259, file: !259, line: 958, type: !2419, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2421)
!2419 = !DISubroutineType(types: !2420)
!2420 = !{!43, !5, !50}
!2421 = !{!2422, !2423}
!2422 = !DILocalVariable(name: "s", arg: 1, scope: !2418, file: !259, line: 958, type: !5)
!2423 = !DILocalVariable(name: "arg", arg: 2, scope: !2418, file: !259, line: 958, type: !50)
!2424 = !DILocation(line: 0, scope: !2418)
!2425 = !DILocation(line: 0, scope: !2358, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 960, column: 10, scope: !2418)
!2427 = !DILocation(line: 945, column: 3, scope: !2358, inlinedAt: !2426)
!2428 = !DILocation(line: 945, column: 32, scope: !2358, inlinedAt: !2426)
!2429 = !{!2430}
!2430 = distinct !{!2430, !2431, !"quoting_options_from_style: argument 0"}
!2431 = distinct !{!2431, !"quoting_options_from_style"}
!2432 = !DILocation(line: 945, column: 36, scope: !2358, inlinedAt: !2426)
!2433 = !DILocation(line: 0, scope: !2374, inlinedAt: !2434)
!2434 = distinct !DILocation(line: 945, column: 36, scope: !2358, inlinedAt: !2426)
!2435 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2434)
!2436 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2434)
!2437 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2434)
!2438 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2434)
!2439 = !DILocation(line: 188, column: 5, scope: !2374, inlinedAt: !2434)
!2440 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2434)
!2441 = !DILocation(line: 946, column: 10, scope: !2358, inlinedAt: !2426)
!2442 = !DILocation(line: 947, column: 1, scope: !2358, inlinedAt: !2426)
!2443 = !DILocation(line: 960, column: 3, scope: !2418)
!2444 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !259, file: !259, line: 964, type: !2445, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!43, !5, !50, !47}
!2447 = !{!2448, !2449, !2450}
!2448 = !DILocalVariable(name: "s", arg: 1, scope: !2444, file: !259, line: 964, type: !5)
!2449 = !DILocalVariable(name: "arg", arg: 2, scope: !2444, file: !259, line: 964, type: !50)
!2450 = !DILocalVariable(name: "argsize", arg: 3, scope: !2444, file: !259, line: 964, type: !47)
!2451 = !DILocation(line: 0, scope: !2444)
!2452 = !DILocation(line: 0, scope: !2391, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 966, column: 10, scope: !2444)
!2454 = !DILocation(line: 953, column: 3, scope: !2391, inlinedAt: !2453)
!2455 = !DILocation(line: 953, column: 32, scope: !2391, inlinedAt: !2453)
!2456 = !{!2457}
!2457 = distinct !{!2457, !2458, !"quoting_options_from_style: argument 0"}
!2458 = distinct !{!2458, !"quoting_options_from_style"}
!2459 = !DILocation(line: 953, column: 36, scope: !2391, inlinedAt: !2453)
!2460 = !DILocation(line: 0, scope: !2374, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 953, column: 36, scope: !2391, inlinedAt: !2453)
!2462 = !DILocation(line: 185, column: 26, scope: !2374, inlinedAt: !2461)
!2463 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2461)
!2464 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2461)
!2465 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2461)
!2466 = !DILocation(line: 188, column: 5, scope: !2374, inlinedAt: !2461)
!2467 = !DILocation(line: 188, column: 11, scope: !2374, inlinedAt: !2461)
!2468 = !DILocation(line: 954, column: 10, scope: !2391, inlinedAt: !2453)
!2469 = !DILocation(line: 955, column: 1, scope: !2391, inlinedAt: !2453)
!2470 = !DILocation(line: 966, column: 3, scope: !2444)
!2471 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !259, file: !259, line: 970, type: !2472, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!43, !50, !47, !44}
!2474 = !{!2475, !2476, !2477, !2478}
!2475 = !DILocalVariable(name: "arg", arg: 1, scope: !2471, file: !259, line: 970, type: !50)
!2476 = !DILocalVariable(name: "argsize", arg: 2, scope: !2471, file: !259, line: 970, type: !47)
!2477 = !DILocalVariable(name: "ch", arg: 3, scope: !2471, file: !259, line: 970, type: !44)
!2478 = !DILocalVariable(name: "options", scope: !2471, file: !259, line: 972, type: !276)
!2479 = !DILocation(line: 0, scope: !2471)
!2480 = !DILocation(line: 972, column: 3, scope: !2471)
!2481 = !DILocation(line: 972, column: 26, scope: !2471)
!2482 = !DILocation(line: 973, column: 13, scope: !2471)
!2483 = !{i64 0, i64 4, !549, i64 4, i64 4, !540, i64 8, i64 32, !549, i64 40, i64 8, !453, i64 48, i64 8, !453}
!2484 = !DILocation(line: 0, scope: !1489, inlinedAt: !2485)
!2485 = distinct !DILocation(line: 974, column: 3, scope: !2471)
!2486 = !DILocation(line: 147, column: 62, scope: !1489, inlinedAt: !2485)
!2487 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2485)
!2488 = !DILocation(line: 148, column: 15, scope: !1489, inlinedAt: !2485)
!2489 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2485)
!2490 = !DILocation(line: 149, column: 24, scope: !1489, inlinedAt: !2485)
!2491 = !DILocation(line: 149, column: 34, scope: !1489, inlinedAt: !2485)
!2492 = !DILocation(line: 150, column: 19, scope: !1489, inlinedAt: !2485)
!2493 = !DILocation(line: 150, column: 24, scope: !1489, inlinedAt: !2485)
!2494 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2485)
!2495 = !DILocation(line: 975, column: 10, scope: !2471)
!2496 = !DILocation(line: 976, column: 1, scope: !2471)
!2497 = !DILocation(line: 975, column: 3, scope: !2471)
!2498 = distinct !DISubprogram(name: "quotearg_char", scope: !259, file: !259, line: 979, type: !2499, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2501)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!43, !50, !44}
!2501 = !{!2502, !2503}
!2502 = !DILocalVariable(name: "arg", arg: 1, scope: !2498, file: !259, line: 979, type: !50)
!2503 = !DILocalVariable(name: "ch", arg: 2, scope: !2498, file: !259, line: 979, type: !44)
!2504 = !DILocation(line: 0, scope: !2498)
!2505 = !DILocation(line: 0, scope: !2471, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 981, column: 10, scope: !2498)
!2507 = !DILocation(line: 972, column: 3, scope: !2471, inlinedAt: !2506)
!2508 = !DILocation(line: 972, column: 26, scope: !2471, inlinedAt: !2506)
!2509 = !DILocation(line: 973, column: 13, scope: !2471, inlinedAt: !2506)
!2510 = !DILocation(line: 0, scope: !1489, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 974, column: 3, scope: !2471, inlinedAt: !2506)
!2512 = !DILocation(line: 147, column: 62, scope: !1489, inlinedAt: !2511)
!2513 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2511)
!2514 = !DILocation(line: 148, column: 15, scope: !1489, inlinedAt: !2511)
!2515 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2511)
!2516 = !DILocation(line: 149, column: 24, scope: !1489, inlinedAt: !2511)
!2517 = !DILocation(line: 149, column: 34, scope: !1489, inlinedAt: !2511)
!2518 = !DILocation(line: 150, column: 19, scope: !1489, inlinedAt: !2511)
!2519 = !DILocation(line: 150, column: 24, scope: !1489, inlinedAt: !2511)
!2520 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2511)
!2521 = !DILocation(line: 975, column: 10, scope: !2471, inlinedAt: !2506)
!2522 = !DILocation(line: 976, column: 1, scope: !2471, inlinedAt: !2506)
!2523 = !DILocation(line: 981, column: 3, scope: !2498)
!2524 = distinct !DISubprogram(name: "quotearg_colon", scope: !259, file: !259, line: 985, type: !652, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2525)
!2525 = !{!2526}
!2526 = !DILocalVariable(name: "arg", arg: 1, scope: !2524, file: !259, line: 985, type: !50)
!2527 = !DILocation(line: 0, scope: !2524)
!2528 = !DILocation(line: 0, scope: !2498, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 987, column: 10, scope: !2524)
!2530 = !DILocation(line: 0, scope: !2471, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 981, column: 10, scope: !2498, inlinedAt: !2529)
!2532 = !DILocation(line: 972, column: 3, scope: !2471, inlinedAt: !2531)
!2533 = !DILocation(line: 972, column: 26, scope: !2471, inlinedAt: !2531)
!2534 = !DILocation(line: 973, column: 13, scope: !2471, inlinedAt: !2531)
!2535 = !DILocation(line: 0, scope: !1489, inlinedAt: !2536)
!2536 = distinct !DILocation(line: 974, column: 3, scope: !2471, inlinedAt: !2531)
!2537 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2536)
!2538 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2536)
!2539 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2536)
!2540 = !DILocation(line: 975, column: 10, scope: !2471, inlinedAt: !2531)
!2541 = !DILocation(line: 976, column: 1, scope: !2471, inlinedAt: !2531)
!2542 = !DILocation(line: 987, column: 3, scope: !2524)
!2543 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !259, file: !259, line: 991, type: !2348, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2544)
!2544 = !{!2545, !2546}
!2545 = !DILocalVariable(name: "arg", arg: 1, scope: !2543, file: !259, line: 991, type: !50)
!2546 = !DILocalVariable(name: "argsize", arg: 2, scope: !2543, file: !259, line: 991, type: !47)
!2547 = !DILocation(line: 0, scope: !2543)
!2548 = !DILocation(line: 0, scope: !2471, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 993, column: 10, scope: !2543)
!2550 = !DILocation(line: 972, column: 3, scope: !2471, inlinedAt: !2549)
!2551 = !DILocation(line: 972, column: 26, scope: !2471, inlinedAt: !2549)
!2552 = !DILocation(line: 973, column: 13, scope: !2471, inlinedAt: !2549)
!2553 = !DILocation(line: 0, scope: !1489, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 974, column: 3, scope: !2471, inlinedAt: !2549)
!2555 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2554)
!2556 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2554)
!2557 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2554)
!2558 = !DILocation(line: 975, column: 10, scope: !2471, inlinedAt: !2549)
!2559 = !DILocation(line: 976, column: 1, scope: !2471, inlinedAt: !2549)
!2560 = !DILocation(line: 993, column: 3, scope: !2543)
!2561 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !259, file: !259, line: 997, type: !2359, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2562)
!2562 = !{!2563, !2564, !2565, !2566}
!2563 = !DILocalVariable(name: "n", arg: 1, scope: !2561, file: !259, line: 997, type: !37)
!2564 = !DILocalVariable(name: "s", arg: 2, scope: !2561, file: !259, line: 997, type: !5)
!2565 = !DILocalVariable(name: "arg", arg: 3, scope: !2561, file: !259, line: 997, type: !50)
!2566 = !DILocalVariable(name: "options", scope: !2561, file: !259, line: 999, type: !276)
!2567 = !DILocation(line: 0, scope: !2561)
!2568 = !DILocation(line: 999, column: 3, scope: !2561)
!2569 = !DILocation(line: 999, column: 26, scope: !2561)
!2570 = !DILocation(line: 0, scope: !2374, inlinedAt: !2571)
!2571 = distinct !DILocation(line: 1000, column: 13, scope: !2561)
!2572 = !DILocation(line: 186, column: 13, scope: !2383, inlinedAt: !2571)
!2573 = !DILocation(line: 186, column: 7, scope: !2374, inlinedAt: !2571)
!2574 = !DILocation(line: 187, column: 5, scope: !2383, inlinedAt: !2571)
!2575 = !{!2576}
!2576 = distinct !{!2576, !2577, !"quoting_options_from_style: argument 0"}
!2577 = distinct !{!2577, !"quoting_options_from_style"}
!2578 = !DILocation(line: 1000, column: 13, scope: !2561)
!2579 = !DILocation(line: 0, scope: !1489, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1001, column: 3, scope: !2561)
!2581 = !DILocation(line: 147, column: 57, scope: !1489, inlinedAt: !2580)
!2582 = !DILocation(line: 149, column: 21, scope: !1489, inlinedAt: !2580)
!2583 = !DILocation(line: 150, column: 6, scope: !1489, inlinedAt: !2580)
!2584 = !DILocation(line: 1002, column: 10, scope: !2561)
!2585 = !DILocation(line: 1003, column: 1, scope: !2561)
!2586 = !DILocation(line: 1002, column: 3, scope: !2561)
!2587 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !259, file: !259, line: 1006, type: !2588, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2590)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!43, !37, !50, !50, !50}
!2590 = !{!2591, !2592, !2593, !2594}
!2591 = !DILocalVariable(name: "n", arg: 1, scope: !2587, file: !259, line: 1006, type: !37)
!2592 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2587, file: !259, line: 1006, type: !50)
!2593 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2587, file: !259, line: 1007, type: !50)
!2594 = !DILocalVariable(name: "arg", arg: 4, scope: !2587, file: !259, line: 1007, type: !50)
!2595 = !DILocation(line: 0, scope: !2587)
!2596 = !DILocalVariable(name: "n", arg: 1, scope: !2597, file: !259, line: 1014, type: !37)
!2597 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !259, file: !259, line: 1014, type: !2598, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!43, !37, !50, !50, !50, !47}
!2600 = !{!2596, !2601, !2602, !2603, !2604, !2605}
!2601 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2597, file: !259, line: 1014, type: !50)
!2602 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2597, file: !259, line: 1015, type: !50)
!2603 = !DILocalVariable(name: "arg", arg: 4, scope: !2597, file: !259, line: 1016, type: !50)
!2604 = !DILocalVariable(name: "argsize", arg: 5, scope: !2597, file: !259, line: 1016, type: !47)
!2605 = !DILocalVariable(name: "o", scope: !2597, file: !259, line: 1018, type: !276)
!2606 = !DILocation(line: 0, scope: !2597, inlinedAt: !2607)
!2607 = distinct !DILocation(line: 1009, column: 10, scope: !2587)
!2608 = !DILocation(line: 1018, column: 3, scope: !2597, inlinedAt: !2607)
!2609 = !DILocation(line: 1018, column: 26, scope: !2597, inlinedAt: !2607)
!2610 = !DILocation(line: 1018, column: 30, scope: !2597, inlinedAt: !2607)
!2611 = !DILocation(line: 0, scope: !1529, inlinedAt: !2612)
!2612 = distinct !DILocation(line: 1019, column: 3, scope: !2597, inlinedAt: !2607)
!2613 = !DILocation(line: 174, column: 6, scope: !1529, inlinedAt: !2612)
!2614 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2612)
!2615 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2612)
!2616 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2612)
!2617 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2612)
!2618 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2612)
!2619 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2612)
!2620 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2612)
!2621 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2612)
!2622 = !DILocation(line: 1020, column: 10, scope: !2597, inlinedAt: !2607)
!2623 = !DILocation(line: 1021, column: 1, scope: !2597, inlinedAt: !2607)
!2624 = !DILocation(line: 1009, column: 3, scope: !2587)
!2625 = !DILocation(line: 0, scope: !2597)
!2626 = !DILocation(line: 1018, column: 3, scope: !2597)
!2627 = !DILocation(line: 1018, column: 26, scope: !2597)
!2628 = !DILocation(line: 1018, column: 30, scope: !2597)
!2629 = !DILocation(line: 0, scope: !1529, inlinedAt: !2630)
!2630 = distinct !DILocation(line: 1019, column: 3, scope: !2597)
!2631 = !DILocation(line: 174, column: 6, scope: !1529, inlinedAt: !2630)
!2632 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2630)
!2633 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2630)
!2634 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2630)
!2635 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2630)
!2636 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2630)
!2637 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2630)
!2638 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2630)
!2639 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2630)
!2640 = !DILocation(line: 1020, column: 10, scope: !2597)
!2641 = !DILocation(line: 1021, column: 1, scope: !2597)
!2642 = !DILocation(line: 1020, column: 3, scope: !2597)
!2643 = distinct !DISubprogram(name: "quotearg_custom", scope: !259, file: !259, line: 1024, type: !2644, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2646)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!43, !50, !50, !50}
!2646 = !{!2647, !2648, !2649}
!2647 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2643, file: !259, line: 1024, type: !50)
!2648 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2643, file: !259, line: 1024, type: !50)
!2649 = !DILocalVariable(name: "arg", arg: 3, scope: !2643, file: !259, line: 1025, type: !50)
!2650 = !DILocation(line: 0, scope: !2643)
!2651 = !DILocation(line: 0, scope: !2587, inlinedAt: !2652)
!2652 = distinct !DILocation(line: 1027, column: 10, scope: !2643)
!2653 = !DILocation(line: 0, scope: !2597, inlinedAt: !2654)
!2654 = distinct !DILocation(line: 1009, column: 10, scope: !2587, inlinedAt: !2652)
!2655 = !DILocation(line: 1018, column: 3, scope: !2597, inlinedAt: !2654)
!2656 = !DILocation(line: 1018, column: 26, scope: !2597, inlinedAt: !2654)
!2657 = !DILocation(line: 1018, column: 30, scope: !2597, inlinedAt: !2654)
!2658 = !DILocation(line: 0, scope: !1529, inlinedAt: !2659)
!2659 = distinct !DILocation(line: 1019, column: 3, scope: !2597, inlinedAt: !2654)
!2660 = !DILocation(line: 174, column: 6, scope: !1529, inlinedAt: !2659)
!2661 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2659)
!2662 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2659)
!2663 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2659)
!2664 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2659)
!2665 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2659)
!2666 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2659)
!2667 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2659)
!2668 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2659)
!2669 = !DILocation(line: 1020, column: 10, scope: !2597, inlinedAt: !2654)
!2670 = !DILocation(line: 1021, column: 1, scope: !2597, inlinedAt: !2654)
!2671 = !DILocation(line: 1027, column: 3, scope: !2643)
!2672 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !259, file: !259, line: 1031, type: !2673, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2675)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!43, !50, !50, !50, !47}
!2675 = !{!2676, !2677, !2678, !2679}
!2676 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2672, file: !259, line: 1031, type: !50)
!2677 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2672, file: !259, line: 1031, type: !50)
!2678 = !DILocalVariable(name: "arg", arg: 3, scope: !2672, file: !259, line: 1032, type: !50)
!2679 = !DILocalVariable(name: "argsize", arg: 4, scope: !2672, file: !259, line: 1032, type: !47)
!2680 = !DILocation(line: 0, scope: !2672)
!2681 = !DILocation(line: 0, scope: !2597, inlinedAt: !2682)
!2682 = distinct !DILocation(line: 1034, column: 10, scope: !2672)
!2683 = !DILocation(line: 1018, column: 3, scope: !2597, inlinedAt: !2682)
!2684 = !DILocation(line: 1018, column: 26, scope: !2597, inlinedAt: !2682)
!2685 = !DILocation(line: 1018, column: 30, scope: !2597, inlinedAt: !2682)
!2686 = !DILocation(line: 0, scope: !1529, inlinedAt: !2687)
!2687 = distinct !DILocation(line: 1019, column: 3, scope: !2597, inlinedAt: !2682)
!2688 = !DILocation(line: 174, column: 6, scope: !1529, inlinedAt: !2687)
!2689 = !DILocation(line: 174, column: 12, scope: !1529, inlinedAt: !2687)
!2690 = !DILocation(line: 175, column: 8, scope: !1543, inlinedAt: !2687)
!2691 = !DILocation(line: 175, column: 19, scope: !1543, inlinedAt: !2687)
!2692 = !DILocation(line: 176, column: 5, scope: !1543, inlinedAt: !2687)
!2693 = !DILocation(line: 177, column: 6, scope: !1529, inlinedAt: !2687)
!2694 = !DILocation(line: 177, column: 17, scope: !1529, inlinedAt: !2687)
!2695 = !DILocation(line: 178, column: 6, scope: !1529, inlinedAt: !2687)
!2696 = !DILocation(line: 178, column: 18, scope: !1529, inlinedAt: !2687)
!2697 = !DILocation(line: 1020, column: 10, scope: !2597, inlinedAt: !2682)
!2698 = !DILocation(line: 1021, column: 1, scope: !2597, inlinedAt: !2682)
!2699 = !DILocation(line: 1034, column: 3, scope: !2672)
!2700 = distinct !DISubprogram(name: "quote_n_mem", scope: !259, file: !259, line: 1049, type: !2701, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2703)
!2701 = !DISubroutineType(types: !2702)
!2702 = !{!50, !37, !50, !47}
!2703 = !{!2704, !2705, !2706}
!2704 = !DILocalVariable(name: "n", arg: 1, scope: !2700, file: !259, line: 1049, type: !37)
!2705 = !DILocalVariable(name: "arg", arg: 2, scope: !2700, file: !259, line: 1049, type: !50)
!2706 = !DILocalVariable(name: "argsize", arg: 3, scope: !2700, file: !259, line: 1049, type: !47)
!2707 = !DILocation(line: 0, scope: !2700)
!2708 = !DILocation(line: 1051, column: 10, scope: !2700)
!2709 = !DILocation(line: 1051, column: 3, scope: !2700)
!2710 = distinct !DISubprogram(name: "quote_mem", scope: !259, file: !259, line: 1055, type: !2711, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2713)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!50, !50, !47}
!2713 = !{!2714, !2715}
!2714 = !DILocalVariable(name: "arg", arg: 1, scope: !2710, file: !259, line: 1055, type: !50)
!2715 = !DILocalVariable(name: "argsize", arg: 2, scope: !2710, file: !259, line: 1055, type: !47)
!2716 = !DILocation(line: 0, scope: !2710)
!2717 = !DILocation(line: 0, scope: !2700, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1057, column: 10, scope: !2710)
!2719 = !DILocation(line: 1051, column: 10, scope: !2700, inlinedAt: !2718)
!2720 = !DILocation(line: 1057, column: 3, scope: !2710)
!2721 = distinct !DISubprogram(name: "quote_n", scope: !259, file: !259, line: 1061, type: !2722, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!50, !37, !50}
!2724 = !{!2725, !2726}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !259, line: 1061, type: !37)
!2726 = !DILocalVariable(name: "arg", arg: 2, scope: !2721, file: !259, line: 1061, type: !50)
!2727 = !DILocation(line: 0, scope: !2721)
!2728 = !DILocation(line: 0, scope: !2700, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1063, column: 10, scope: !2721)
!2730 = !DILocation(line: 1051, column: 10, scope: !2700, inlinedAt: !2729)
!2731 = !DILocation(line: 1063, column: 3, scope: !2721)
!2732 = distinct !DISubprogram(name: "quote", scope: !259, file: !259, line: 1067, type: !2733, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !258, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!50, !50}
!2735 = !{!2736}
!2736 = !DILocalVariable(name: "arg", arg: 1, scope: !2732, file: !259, line: 1067, type: !50)
!2737 = !DILocation(line: 0, scope: !2732)
!2738 = !DILocation(line: 0, scope: !2721, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1069, column: 10, scope: !2732)
!2740 = !DILocation(line: 0, scope: !2700, inlinedAt: !2741)
!2741 = distinct !DILocation(line: 1063, column: 10, scope: !2721, inlinedAt: !2739)
!2742 = !DILocation(line: 1051, column: 10, scope: !2700, inlinedAt: !2741)
!2743 = !DILocation(line: 1069, column: 3, scope: !2732)
!2744 = distinct !DISubprogram(name: "version_etc_arn", scope: !369, file: !369, line: 61, type: !2745, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2782)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !2747, !50, !50, !50, !2781, !47}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2749, file: !89, line: 51, baseType: !37, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2749, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2749, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2749, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2749, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2749, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2749, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2749, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2749, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2749, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2749, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2749, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2749, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2749, file: !89, line: 70, baseType: !2765, size: 64, offset: 832)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2749, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2749, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2749, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2749, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2749, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2749, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2749, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2749, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2749, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2749, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2749, file: !89, line: 93, baseType: !2765, size: 64, offset: 1344)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2749, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2749, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2749, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2749, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!2782 = !{!2783, !2784, !2785, !2786, !2787, !2788}
!2783 = !DILocalVariable(name: "stream", arg: 1, scope: !2744, file: !369, line: 61, type: !2747)
!2784 = !DILocalVariable(name: "command_name", arg: 2, scope: !2744, file: !369, line: 62, type: !50)
!2785 = !DILocalVariable(name: "package", arg: 3, scope: !2744, file: !369, line: 62, type: !50)
!2786 = !DILocalVariable(name: "version", arg: 4, scope: !2744, file: !369, line: 63, type: !50)
!2787 = !DILocalVariable(name: "authors", arg: 5, scope: !2744, file: !369, line: 64, type: !2781)
!2788 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2744, file: !369, line: 64, type: !47)
!2789 = !DILocation(line: 0, scope: !2744)
!2790 = !DILocation(line: 66, column: 7, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2744, file: !369, line: 66, column: 7)
!2792 = !DILocation(line: 66, column: 7, scope: !2744)
!2793 = !DILocation(line: 67, column: 5, scope: !2791)
!2794 = !DILocation(line: 69, column: 5, scope: !2791)
!2795 = !DILocation(line: 83, column: 3, scope: !2744)
!2796 = !DILocation(line: 85, column: 3, scope: !2744)
!2797 = !DILocation(line: 88, column: 3, scope: !2744)
!2798 = !DILocation(line: 95, column: 3, scope: !2744)
!2799 = !DILocation(line: 97, column: 3, scope: !2744)
!2800 = !DILocation(line: 105, column: 7, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2744, file: !369, line: 98, column: 5)
!2802 = !DILocation(line: 106, column: 7, scope: !2801)
!2803 = !DILocation(line: 109, column: 7, scope: !2801)
!2804 = !DILocation(line: 110, column: 7, scope: !2801)
!2805 = !DILocation(line: 113, column: 7, scope: !2801)
!2806 = !DILocation(line: 115, column: 7, scope: !2801)
!2807 = !DILocation(line: 120, column: 7, scope: !2801)
!2808 = !DILocation(line: 122, column: 7, scope: !2801)
!2809 = !DILocation(line: 127, column: 7, scope: !2801)
!2810 = !DILocation(line: 129, column: 7, scope: !2801)
!2811 = !DILocation(line: 134, column: 7, scope: !2801)
!2812 = !DILocation(line: 137, column: 7, scope: !2801)
!2813 = !DILocation(line: 142, column: 7, scope: !2801)
!2814 = !DILocation(line: 145, column: 7, scope: !2801)
!2815 = !DILocation(line: 150, column: 7, scope: !2801)
!2816 = !DILocation(line: 154, column: 7, scope: !2801)
!2817 = !DILocation(line: 159, column: 7, scope: !2801)
!2818 = !DILocation(line: 163, column: 7, scope: !2801)
!2819 = !DILocation(line: 170, column: 7, scope: !2801)
!2820 = !DILocation(line: 174, column: 7, scope: !2801)
!2821 = !DILocation(line: 176, column: 1, scope: !2744)
!2822 = distinct !DISubprogram(name: "version_etc_ar", scope: !369, file: !369, line: 183, type: !2823, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{null, !2747, !50, !50, !50, !2781}
!2825 = !{!2826, !2827, !2828, !2829, !2830, !2831}
!2826 = !DILocalVariable(name: "stream", arg: 1, scope: !2822, file: !369, line: 183, type: !2747)
!2827 = !DILocalVariable(name: "command_name", arg: 2, scope: !2822, file: !369, line: 184, type: !50)
!2828 = !DILocalVariable(name: "package", arg: 3, scope: !2822, file: !369, line: 184, type: !50)
!2829 = !DILocalVariable(name: "version", arg: 4, scope: !2822, file: !369, line: 185, type: !50)
!2830 = !DILocalVariable(name: "authors", arg: 5, scope: !2822, file: !369, line: 185, type: !2781)
!2831 = !DILocalVariable(name: "n_authors", scope: !2822, file: !369, line: 187, type: !47)
!2832 = !DILocation(line: 0, scope: !2822)
!2833 = !DILocation(line: 189, column: 8, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2822, file: !369, line: 189, column: 3)
!2835 = !DILocation(line: 0, scope: !2834)
!2836 = !DILocation(line: 189, column: 23, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2834, file: !369, line: 189, column: 3)
!2838 = !DILocation(line: 189, column: 3, scope: !2834)
!2839 = !DILocation(line: 189, column: 52, scope: !2837)
!2840 = distinct !{!2840, !2838, !2841, !506}
!2841 = !DILocation(line: 190, column: 5, scope: !2834)
!2842 = !DILocation(line: 191, column: 3, scope: !2822)
!2843 = !DILocation(line: 192, column: 1, scope: !2822)
!2844 = distinct !DISubprogram(name: "version_etc_va", scope: !369, file: !369, line: 199, type: !2845, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2858)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{null, !2747, !50, !50, !50, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !185, line: 52, baseType: !2848)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !187, line: 32, baseType: !2849)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2850, baseType: !2851)
!2850 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !191, size: 256, elements: !2852)
!2852 = !{!2853, !2854, !2855, !2856, !2857}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2851, file: !2850, line: 192, baseType: !45, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2851, file: !2850, line: 192, baseType: !45, size: 64, offset: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2851, file: !2850, line: 192, baseType: !45, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2851, file: !2850, line: 192, baseType: !37, size: 32, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2851, file: !2850, line: 192, baseType: !37, size: 32, offset: 224)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865}
!2859 = !DILocalVariable(name: "stream", arg: 1, scope: !2844, file: !369, line: 199, type: !2747)
!2860 = !DILocalVariable(name: "command_name", arg: 2, scope: !2844, file: !369, line: 200, type: !50)
!2861 = !DILocalVariable(name: "package", arg: 3, scope: !2844, file: !369, line: 200, type: !50)
!2862 = !DILocalVariable(name: "version", arg: 4, scope: !2844, file: !369, line: 201, type: !50)
!2863 = !DILocalVariable(name: "authors", arg: 5, scope: !2844, file: !369, line: 201, type: !2847)
!2864 = !DILocalVariable(name: "n_authors", scope: !2844, file: !369, line: 203, type: !47)
!2865 = !DILocalVariable(name: "authtab", scope: !2844, file: !369, line: 204, type: !2866)
!2866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !272)
!2867 = !DILocation(line: 0, scope: !2844)
!2868 = !DILocation(line: 201, column: 46, scope: !2844)
!2869 = !DILocation(line: 204, column: 3, scope: !2844)
!2870 = !DILocation(line: 204, column: 15, scope: !2844)
!2871 = !DILocation(line: 208, column: 35, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !369, line: 206, column: 3)
!2873 = distinct !DILexicalBlock(scope: !2844, file: !369, line: 206, column: 3)
!2874 = !DILocation(line: 208, column: 14, scope: !2872)
!2875 = !DILocation(line: 208, column: 33, scope: !2872)
!2876 = !DILocation(line: 208, column: 67, scope: !2872)
!2877 = !DILocation(line: 206, column: 3, scope: !2873)
!2878 = !DILocation(line: 0, scope: !2873)
!2879 = !DILocation(line: 211, column: 3, scope: !2844)
!2880 = !DILocation(line: 213, column: 1, scope: !2844)
!2881 = distinct !DISubprogram(name: "version_etc", scope: !369, file: !369, line: 230, type: !2882, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{null, !2747, !50, !50, !50, null}
!2884 = !{!2885, !2886, !2887, !2888, !2889}
!2885 = !DILocalVariable(name: "stream", arg: 1, scope: !2881, file: !369, line: 230, type: !2747)
!2886 = !DILocalVariable(name: "command_name", arg: 2, scope: !2881, file: !369, line: 231, type: !50)
!2887 = !DILocalVariable(name: "package", arg: 3, scope: !2881, file: !369, line: 231, type: !50)
!2888 = !DILocalVariable(name: "version", arg: 4, scope: !2881, file: !369, line: 232, type: !50)
!2889 = !DILocalVariable(name: "authors", scope: !2881, file: !369, line: 234, type: !2847)
!2890 = !DILocation(line: 0, scope: !2881)
!2891 = !DILocation(line: 234, column: 3, scope: !2881)
!2892 = !DILocation(line: 234, column: 11, scope: !2881)
!2893 = !DILocation(line: 235, column: 3, scope: !2881)
!2894 = !DILocation(line: 236, column: 3, scope: !2881)
!2895 = !DILocation(line: 237, column: 3, scope: !2881)
!2896 = !DILocation(line: 238, column: 1, scope: !2881)
!2897 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !369, file: !369, line: 241, type: !212, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !368, retainedNodes: !532)
!2898 = !DILocation(line: 243, column: 3, scope: !2897)
!2899 = !DILocation(line: 248, column: 3, scope: !2897)
!2900 = !DILocation(line: 254, column: 3, scope: !2897)
!2901 = !DILocation(line: 259, column: 3, scope: !2897)
!2902 = !DILocation(line: 261, column: 1, scope: !2897)
!2903 = distinct !DISubprogram(name: "xnrealloc", scope: !2904, file: !2904, line: 147, type: !2905, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2907)
!2904 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!45, !45, !47, !47}
!2907 = !{!2908, !2909, !2910}
!2908 = !DILocalVariable(name: "p", arg: 1, scope: !2903, file: !2904, line: 147, type: !45)
!2909 = !DILocalVariable(name: "n", arg: 2, scope: !2903, file: !2904, line: 147, type: !47)
!2910 = !DILocalVariable(name: "s", arg: 3, scope: !2903, file: !2904, line: 147, type: !47)
!2911 = !DILocation(line: 0, scope: !2903)
!2912 = !DILocalVariable(name: "p", arg: 1, scope: !2913, file: !376, line: 83, type: !45)
!2913 = distinct !DISubprogram(name: "xreallocarray", scope: !376, file: !376, line: 83, type: !2905, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2914)
!2914 = !{!2912, !2915, !2916}
!2915 = !DILocalVariable(name: "n", arg: 2, scope: !2913, file: !376, line: 83, type: !47)
!2916 = !DILocalVariable(name: "s", arg: 3, scope: !2913, file: !376, line: 83, type: !47)
!2917 = !DILocation(line: 0, scope: !2913, inlinedAt: !2918)
!2918 = distinct !DILocation(line: 149, column: 10, scope: !2903)
!2919 = !DILocation(line: 85, column: 25, scope: !2913, inlinedAt: !2918)
!2920 = !DILocalVariable(name: "p", arg: 1, scope: !2921, file: !376, line: 37, type: !45)
!2921 = distinct !DISubprogram(name: "check_nonnull", scope: !376, file: !376, line: 37, type: !2922, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!45, !45}
!2924 = !{!2920}
!2925 = !DILocation(line: 0, scope: !2921, inlinedAt: !2926)
!2926 = distinct !DILocation(line: 85, column: 10, scope: !2913, inlinedAt: !2918)
!2927 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !2926)
!2928 = distinct !DILexicalBlock(scope: !2921, file: !376, line: 39, column: 7)
!2929 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !2926)
!2930 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !2926)
!2931 = !DILocation(line: 149, column: 3, scope: !2903)
!2932 = !DILocation(line: 0, scope: !2913)
!2933 = !DILocation(line: 85, column: 25, scope: !2913)
!2934 = !DILocation(line: 0, scope: !2921, inlinedAt: !2935)
!2935 = distinct !DILocation(line: 85, column: 10, scope: !2913)
!2936 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !2935)
!2937 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !2935)
!2938 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !2935)
!2939 = !DILocation(line: 85, column: 3, scope: !2913)
!2940 = distinct !DISubprogram(name: "xmalloc", scope: !376, file: !376, line: 47, type: !2941, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2943)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!45, !47}
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "s", arg: 1, scope: !2940, file: !376, line: 47, type: !47)
!2945 = !DILocation(line: 0, scope: !2940)
!2946 = !DILocation(line: 49, column: 25, scope: !2940)
!2947 = !DILocation(line: 0, scope: !2921, inlinedAt: !2948)
!2948 = distinct !DILocation(line: 49, column: 10, scope: !2940)
!2949 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !2948)
!2950 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !2948)
!2951 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !2948)
!2952 = !DILocation(line: 49, column: 3, scope: !2940)
!2953 = distinct !DISubprogram(name: "ximalloc", scope: !376, file: !376, line: 53, type: !2954, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2956)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!45, !395}
!2956 = !{!2957}
!2957 = !DILocalVariable(name: "s", arg: 1, scope: !2953, file: !376, line: 53, type: !395)
!2958 = !DILocation(line: 0, scope: !2953)
!2959 = !DILocalVariable(name: "s", arg: 1, scope: !2960, file: !2961, line: 55, type: !395)
!2960 = distinct !DISubprogram(name: "imalloc", scope: !2961, file: !2961, line: 55, type: !2954, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2962)
!2961 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2962 = !{!2959}
!2963 = !DILocation(line: 0, scope: !2960, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 55, column: 25, scope: !2953)
!2965 = !DILocation(line: 57, column: 26, scope: !2960, inlinedAt: !2964)
!2966 = !DILocation(line: 0, scope: !2921, inlinedAt: !2967)
!2967 = distinct !DILocation(line: 55, column: 10, scope: !2953)
!2968 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !2967)
!2969 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !2967)
!2970 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !2967)
!2971 = !DILocation(line: 55, column: 3, scope: !2953)
!2972 = distinct !DISubprogram(name: "xcharalloc", scope: !376, file: !376, line: 59, type: !2973, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!43, !47}
!2975 = !{!2976}
!2976 = !DILocalVariable(name: "n", arg: 1, scope: !2972, file: !376, line: 59, type: !47)
!2977 = !DILocation(line: 0, scope: !2972)
!2978 = !DILocation(line: 0, scope: !2940, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 61, column: 10, scope: !2972)
!2980 = !DILocation(line: 49, column: 25, scope: !2940, inlinedAt: !2979)
!2981 = !DILocation(line: 0, scope: !2921, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 49, column: 10, scope: !2940, inlinedAt: !2979)
!2983 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !2982)
!2984 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !2982)
!2985 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !2982)
!2986 = !DILocation(line: 61, column: 3, scope: !2972)
!2987 = distinct !DISubprogram(name: "xrealloc", scope: !376, file: !376, line: 68, type: !2988, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2990)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!45, !45, !47}
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "p", arg: 1, scope: !2987, file: !376, line: 68, type: !45)
!2992 = !DILocalVariable(name: "s", arg: 2, scope: !2987, file: !376, line: 68, type: !47)
!2993 = !DILocation(line: 0, scope: !2987)
!2994 = !DILocalVariable(name: "ptr", arg: 1, scope: !2995, file: !2996, line: 2057, type: !45)
!2995 = distinct !DISubprogram(name: "rpl_realloc", scope: !2996, file: !2996, line: 2057, type: !2988, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !2997)
!2996 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2997 = !{!2994, !2998}
!2998 = !DILocalVariable(name: "size", arg: 2, scope: !2995, file: !2996, line: 2057, type: !47)
!2999 = !DILocation(line: 0, scope: !2995, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 70, column: 25, scope: !2987)
!3001 = !DILocation(line: 2059, column: 24, scope: !2995, inlinedAt: !3000)
!3002 = !DILocation(line: 2059, column: 10, scope: !2995, inlinedAt: !3000)
!3003 = !DILocation(line: 0, scope: !2921, inlinedAt: !3004)
!3004 = distinct !DILocation(line: 70, column: 10, scope: !2987)
!3005 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3004)
!3006 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3004)
!3007 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3004)
!3008 = !DILocation(line: 70, column: 3, scope: !2987)
!3009 = distinct !DISubprogram(name: "xirealloc", scope: !376, file: !376, line: 74, type: !3010, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3012)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!45, !45, !395}
!3012 = !{!3013, !3014}
!3013 = !DILocalVariable(name: "p", arg: 1, scope: !3009, file: !376, line: 74, type: !45)
!3014 = !DILocalVariable(name: "s", arg: 2, scope: !3009, file: !376, line: 74, type: !395)
!3015 = !DILocation(line: 0, scope: !3009)
!3016 = !DILocalVariable(name: "p", arg: 1, scope: !3017, file: !2961, line: 66, type: !45)
!3017 = distinct !DISubprogram(name: "irealloc", scope: !2961, file: !2961, line: 66, type: !3010, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3018)
!3018 = !{!3016, !3019}
!3019 = !DILocalVariable(name: "s", arg: 2, scope: !3017, file: !2961, line: 66, type: !395)
!3020 = !DILocation(line: 0, scope: !3017, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 76, column: 25, scope: !3009)
!3022 = !DILocation(line: 0, scope: !2995, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 68, column: 26, scope: !3017, inlinedAt: !3021)
!3024 = !DILocation(line: 2059, column: 24, scope: !2995, inlinedAt: !3023)
!3025 = !DILocation(line: 2059, column: 10, scope: !2995, inlinedAt: !3023)
!3026 = !DILocation(line: 0, scope: !2921, inlinedAt: !3027)
!3027 = distinct !DILocation(line: 76, column: 10, scope: !3009)
!3028 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3027)
!3029 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3027)
!3030 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3027)
!3031 = !DILocation(line: 76, column: 3, scope: !3009)
!3032 = distinct !DISubprogram(name: "xireallocarray", scope: !376, file: !376, line: 89, type: !3033, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!45, !45, !395, !395}
!3035 = !{!3036, !3037, !3038}
!3036 = !DILocalVariable(name: "p", arg: 1, scope: !3032, file: !376, line: 89, type: !45)
!3037 = !DILocalVariable(name: "n", arg: 2, scope: !3032, file: !376, line: 89, type: !395)
!3038 = !DILocalVariable(name: "s", arg: 3, scope: !3032, file: !376, line: 89, type: !395)
!3039 = !DILocation(line: 0, scope: !3032)
!3040 = !DILocalVariable(name: "p", arg: 1, scope: !3041, file: !2961, line: 98, type: !45)
!3041 = distinct !DISubprogram(name: "ireallocarray", scope: !2961, file: !2961, line: 98, type: !3033, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3042)
!3042 = !{!3040, !3043, !3044}
!3043 = !DILocalVariable(name: "n", arg: 2, scope: !3041, file: !2961, line: 98, type: !395)
!3044 = !DILocalVariable(name: "s", arg: 3, scope: !3041, file: !2961, line: 98, type: !395)
!3045 = !DILocation(line: 0, scope: !3041, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 91, column: 25, scope: !3032)
!3047 = !DILocation(line: 101, column: 13, scope: !3041, inlinedAt: !3046)
!3048 = !DILocation(line: 0, scope: !2921, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 91, column: 10, scope: !3032)
!3050 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3049)
!3053 = !DILocation(line: 91, column: 3, scope: !3032)
!3054 = distinct !DISubprogram(name: "xnmalloc", scope: !376, file: !376, line: 98, type: !3055, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3057)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!45, !47, !47}
!3057 = !{!3058, !3059}
!3058 = !DILocalVariable(name: "n", arg: 1, scope: !3054, file: !376, line: 98, type: !47)
!3059 = !DILocalVariable(name: "s", arg: 2, scope: !3054, file: !376, line: 98, type: !47)
!3060 = !DILocation(line: 0, scope: !3054)
!3061 = !DILocation(line: 0, scope: !2913, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 100, column: 10, scope: !3054)
!3063 = !DILocation(line: 85, column: 25, scope: !2913, inlinedAt: !3062)
!3064 = !DILocation(line: 0, scope: !2921, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 85, column: 10, scope: !2913, inlinedAt: !3062)
!3066 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3065)
!3067 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3065)
!3068 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3065)
!3069 = !DILocation(line: 100, column: 3, scope: !3054)
!3070 = distinct !DISubprogram(name: "xinmalloc", scope: !376, file: !376, line: 104, type: !3071, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3073)
!3071 = !DISubroutineType(types: !3072)
!3072 = !{!45, !395, !395}
!3073 = !{!3074, !3075}
!3074 = !DILocalVariable(name: "n", arg: 1, scope: !3070, file: !376, line: 104, type: !395)
!3075 = !DILocalVariable(name: "s", arg: 2, scope: !3070, file: !376, line: 104, type: !395)
!3076 = !DILocation(line: 0, scope: !3070)
!3077 = !DILocation(line: 0, scope: !3032, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 106, column: 10, scope: !3070)
!3079 = !DILocation(line: 0, scope: !3041, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 91, column: 25, scope: !3032, inlinedAt: !3078)
!3081 = !DILocation(line: 101, column: 13, scope: !3041, inlinedAt: !3080)
!3082 = !DILocation(line: 0, scope: !2921, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 91, column: 10, scope: !3032, inlinedAt: !3078)
!3084 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3083)
!3085 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3083)
!3086 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3083)
!3087 = !DILocation(line: 106, column: 3, scope: !3070)
!3088 = distinct !DISubprogram(name: "x2realloc", scope: !376, file: !376, line: 116, type: !3089, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!45, !45, !382}
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "p", arg: 1, scope: !3088, file: !376, line: 116, type: !45)
!3093 = !DILocalVariable(name: "ps", arg: 2, scope: !3088, file: !376, line: 116, type: !382)
!3094 = !DILocation(line: 0, scope: !3088)
!3095 = !DILocation(line: 0, scope: !379, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 118, column: 10, scope: !3088)
!3097 = !DILocation(line: 178, column: 14, scope: !379, inlinedAt: !3096)
!3098 = !DILocation(line: 180, column: 9, scope: !3099, inlinedAt: !3096)
!3099 = distinct !DILexicalBlock(scope: !379, file: !376, line: 180, column: 7)
!3100 = !DILocation(line: 180, column: 7, scope: !379, inlinedAt: !3096)
!3101 = !DILocation(line: 182, column: 13, scope: !3102, inlinedAt: !3096)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !376, line: 182, column: 11)
!3103 = distinct !DILexicalBlock(scope: !3099, file: !376, line: 181, column: 5)
!3104 = !DILocation(line: 182, column: 11, scope: !3103, inlinedAt: !3096)
!3105 = !DILocation(line: 197, column: 11, scope: !3106, inlinedAt: !3096)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !376, line: 197, column: 11)
!3107 = distinct !DILexicalBlock(scope: !3099, file: !376, line: 195, column: 5)
!3108 = !DILocation(line: 197, column: 11, scope: !3107, inlinedAt: !3096)
!3109 = !DILocation(line: 198, column: 9, scope: !3106, inlinedAt: !3096)
!3110 = !DILocation(line: 0, scope: !2913, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 201, column: 7, scope: !379, inlinedAt: !3096)
!3112 = !DILocation(line: 85, column: 25, scope: !2913, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !2921, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 85, column: 10, scope: !2913, inlinedAt: !3111)
!3115 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3114)
!3118 = !DILocation(line: 202, column: 7, scope: !379, inlinedAt: !3096)
!3119 = !DILocation(line: 118, column: 3, scope: !3088)
!3120 = !DILocation(line: 0, scope: !379)
!3121 = !DILocation(line: 178, column: 14, scope: !379)
!3122 = !DILocation(line: 180, column: 9, scope: !3099)
!3123 = !DILocation(line: 180, column: 7, scope: !379)
!3124 = !DILocation(line: 182, column: 13, scope: !3102)
!3125 = !DILocation(line: 182, column: 11, scope: !3103)
!3126 = !DILocation(line: 190, column: 30, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3102, file: !376, line: 183, column: 9)
!3128 = !DILocation(line: 191, column: 16, scope: !3127)
!3129 = !DILocation(line: 191, column: 13, scope: !3127)
!3130 = !DILocation(line: 192, column: 9, scope: !3127)
!3131 = !DILocation(line: 197, column: 11, scope: !3106)
!3132 = !DILocation(line: 197, column: 11, scope: !3107)
!3133 = !DILocation(line: 198, column: 9, scope: !3106)
!3134 = !DILocation(line: 0, scope: !2913, inlinedAt: !3135)
!3135 = distinct !DILocation(line: 201, column: 7, scope: !379)
!3136 = !DILocation(line: 85, column: 25, scope: !2913, inlinedAt: !3135)
!3137 = !DILocation(line: 0, scope: !2921, inlinedAt: !3138)
!3138 = distinct !DILocation(line: 85, column: 10, scope: !2913, inlinedAt: !3135)
!3139 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3138)
!3140 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3138)
!3141 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3138)
!3142 = !DILocation(line: 202, column: 7, scope: !379)
!3143 = !DILocation(line: 203, column: 3, scope: !379)
!3144 = !DILocation(line: 0, scope: !391)
!3145 = !DILocation(line: 230, column: 14, scope: !391)
!3146 = !DILocation(line: 238, column: 7, scope: !3147)
!3147 = distinct !DILexicalBlock(scope: !391, file: !376, line: 238, column: 7)
!3148 = !DILocation(line: 238, column: 7, scope: !391)
!3149 = !DILocation(line: 240, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !391, file: !376, line: 240, column: 7)
!3151 = !DILocation(line: 240, column: 18, scope: !3150)
!3152 = !DILocation(line: 253, column: 8, scope: !391)
!3153 = !DILocation(line: 258, column: 27, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !376, line: 257, column: 5)
!3155 = distinct !DILexicalBlock(scope: !391, file: !376, line: 256, column: 7)
!3156 = !DILocation(line: 259, column: 32, scope: !3154)
!3157 = !DILocation(line: 260, column: 5, scope: !3154)
!3158 = !DILocation(line: 262, column: 9, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !391, file: !376, line: 262, column: 7)
!3160 = !DILocation(line: 262, column: 7, scope: !391)
!3161 = !DILocation(line: 263, column: 9, scope: !3159)
!3162 = !DILocation(line: 263, column: 5, scope: !3159)
!3163 = !DILocation(line: 264, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !391, file: !376, line: 264, column: 7)
!3165 = !DILocation(line: 264, column: 14, scope: !3164)
!3166 = !DILocation(line: 265, column: 7, scope: !3164)
!3167 = !DILocation(line: 265, column: 11, scope: !3164)
!3168 = !DILocation(line: 266, column: 11, scope: !3164)
!3169 = !DILocation(line: 266, column: 26, scope: !3164)
!3170 = !DILocation(line: 267, column: 14, scope: !3164)
!3171 = !DILocation(line: 264, column: 7, scope: !391)
!3172 = !DILocation(line: 268, column: 5, scope: !3164)
!3173 = !DILocation(line: 0, scope: !2987, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 269, column: 8, scope: !391)
!3175 = !DILocation(line: 0, scope: !2995, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 70, column: 25, scope: !2987, inlinedAt: !3174)
!3177 = !DILocation(line: 2059, column: 24, scope: !2995, inlinedAt: !3176)
!3178 = !DILocation(line: 2059, column: 10, scope: !2995, inlinedAt: !3176)
!3179 = !DILocation(line: 0, scope: !2921, inlinedAt: !3180)
!3180 = distinct !DILocation(line: 70, column: 10, scope: !2987, inlinedAt: !3174)
!3181 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3180)
!3182 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3180)
!3183 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3180)
!3184 = !DILocation(line: 270, column: 7, scope: !391)
!3185 = !DILocation(line: 271, column: 3, scope: !391)
!3186 = distinct !DISubprogram(name: "xzalloc", scope: !376, file: !376, line: 279, type: !2941, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3187)
!3187 = !{!3188}
!3188 = !DILocalVariable(name: "s", arg: 1, scope: !3186, file: !376, line: 279, type: !47)
!3189 = !DILocation(line: 0, scope: !3186)
!3190 = !DILocalVariable(name: "n", arg: 1, scope: !3191, file: !376, line: 294, type: !47)
!3191 = distinct !DISubprogram(name: "xcalloc", scope: !376, file: !376, line: 294, type: !3055, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3192)
!3192 = !{!3190, !3193}
!3193 = !DILocalVariable(name: "s", arg: 2, scope: !3191, file: !376, line: 294, type: !47)
!3194 = !DILocation(line: 0, scope: !3191, inlinedAt: !3195)
!3195 = distinct !DILocation(line: 281, column: 10, scope: !3186)
!3196 = !DILocation(line: 296, column: 25, scope: !3191, inlinedAt: !3195)
!3197 = !DILocation(line: 0, scope: !2921, inlinedAt: !3198)
!3198 = distinct !DILocation(line: 296, column: 10, scope: !3191, inlinedAt: !3195)
!3199 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3198)
!3200 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3198)
!3201 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3198)
!3202 = !DILocation(line: 281, column: 3, scope: !3186)
!3203 = !DILocation(line: 0, scope: !3191)
!3204 = !DILocation(line: 296, column: 25, scope: !3191)
!3205 = !DILocation(line: 0, scope: !2921, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 296, column: 10, scope: !3191)
!3207 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3206)
!3208 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3206)
!3209 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3206)
!3210 = !DILocation(line: 296, column: 3, scope: !3191)
!3211 = distinct !DISubprogram(name: "xizalloc", scope: !376, file: !376, line: 285, type: !2954, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3212)
!3212 = !{!3213}
!3213 = !DILocalVariable(name: "s", arg: 1, scope: !3211, file: !376, line: 285, type: !395)
!3214 = !DILocation(line: 0, scope: !3211)
!3215 = !DILocalVariable(name: "n", arg: 1, scope: !3216, file: !376, line: 300, type: !395)
!3216 = distinct !DISubprogram(name: "xicalloc", scope: !376, file: !376, line: 300, type: !3071, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3217)
!3217 = !{!3215, !3218}
!3218 = !DILocalVariable(name: "s", arg: 2, scope: !3216, file: !376, line: 300, type: !395)
!3219 = !DILocation(line: 0, scope: !3216, inlinedAt: !3220)
!3220 = distinct !DILocation(line: 287, column: 10, scope: !3211)
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !2961, line: 77, type: !395)
!3222 = distinct !DISubprogram(name: "icalloc", scope: !2961, file: !2961, line: 77, type: !3071, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3223)
!3223 = !{!3221, !3224}
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3222, file: !2961, line: 77, type: !395)
!3225 = !DILocation(line: 0, scope: !3222, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 302, column: 25, scope: !3216, inlinedAt: !3220)
!3227 = !DILocation(line: 91, column: 10, scope: !3222, inlinedAt: !3226)
!3228 = !DILocation(line: 0, scope: !2921, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 302, column: 10, scope: !3216, inlinedAt: !3220)
!3230 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3229)
!3231 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3229)
!3232 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3229)
!3233 = !DILocation(line: 287, column: 3, scope: !3211)
!3234 = !DILocation(line: 0, scope: !3216)
!3235 = !DILocation(line: 0, scope: !3222, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 302, column: 25, scope: !3216)
!3237 = !DILocation(line: 91, column: 10, scope: !3222, inlinedAt: !3236)
!3238 = !DILocation(line: 0, scope: !2921, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 302, column: 10, scope: !3216)
!3240 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3239)
!3241 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3239)
!3242 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3239)
!3243 = !DILocation(line: 302, column: 3, scope: !3216)
!3244 = distinct !DISubprogram(name: "xmemdup", scope: !376, file: !376, line: 310, type: !3245, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3247)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!45, !658, !47}
!3247 = !{!3248, !3249}
!3248 = !DILocalVariable(name: "p", arg: 1, scope: !3244, file: !376, line: 310, type: !658)
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3244, file: !376, line: 310, type: !47)
!3250 = !DILocation(line: 0, scope: !3244)
!3251 = !DILocation(line: 0, scope: !2940, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 312, column: 18, scope: !3244)
!3253 = !DILocation(line: 49, column: 25, scope: !2940, inlinedAt: !3252)
!3254 = !DILocation(line: 0, scope: !2921, inlinedAt: !3255)
!3255 = distinct !DILocation(line: 49, column: 10, scope: !2940, inlinedAt: !3252)
!3256 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3255)
!3257 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3255)
!3258 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3255)
!3259 = !DILocalVariable(name: "__dest", arg: 1, scope: !3260, file: !1431, line: 26, type: !3263)
!3260 = distinct !DISubprogram(name: "memcpy", scope: !1431, file: !1431, line: 26, type: !3261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3264)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!45, !3263, !657, !47}
!3263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!3264 = !{!3259, !3265, !3266}
!3265 = !DILocalVariable(name: "__src", arg: 2, scope: !3260, file: !1431, line: 26, type: !657)
!3266 = !DILocalVariable(name: "__len", arg: 3, scope: !3260, file: !1431, line: 26, type: !47)
!3267 = !DILocation(line: 0, scope: !3260, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 312, column: 10, scope: !3244)
!3269 = !DILocation(line: 29, column: 10, scope: !3260, inlinedAt: !3268)
!3270 = !DILocation(line: 312, column: 3, scope: !3244)
!3271 = distinct !DISubprogram(name: "ximemdup", scope: !376, file: !376, line: 316, type: !3272, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3274)
!3272 = !DISubroutineType(types: !3273)
!3273 = !{!45, !658, !395}
!3274 = !{!3275, !3276}
!3275 = !DILocalVariable(name: "p", arg: 1, scope: !3271, file: !376, line: 316, type: !658)
!3276 = !DILocalVariable(name: "s", arg: 2, scope: !3271, file: !376, line: 316, type: !395)
!3277 = !DILocation(line: 0, scope: !3271)
!3278 = !DILocation(line: 0, scope: !2953, inlinedAt: !3279)
!3279 = distinct !DILocation(line: 318, column: 18, scope: !3271)
!3280 = !DILocation(line: 0, scope: !2960, inlinedAt: !3281)
!3281 = distinct !DILocation(line: 55, column: 25, scope: !2953, inlinedAt: !3279)
!3282 = !DILocation(line: 57, column: 26, scope: !2960, inlinedAt: !3281)
!3283 = !DILocation(line: 0, scope: !2921, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 55, column: 10, scope: !2953, inlinedAt: !3279)
!3285 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3284)
!3286 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3284)
!3287 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3284)
!3288 = !DILocation(line: 0, scope: !3260, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 318, column: 10, scope: !3271)
!3290 = !DILocation(line: 29, column: 10, scope: !3260, inlinedAt: !3289)
!3291 = !DILocation(line: 318, column: 3, scope: !3271)
!3292 = distinct !DISubprogram(name: "ximemdup0", scope: !376, file: !376, line: 325, type: !3293, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3295)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{!43, !658, !395}
!3295 = !{!3296, !3297, !3298}
!3296 = !DILocalVariable(name: "p", arg: 1, scope: !3292, file: !376, line: 325, type: !658)
!3297 = !DILocalVariable(name: "s", arg: 2, scope: !3292, file: !376, line: 325, type: !395)
!3298 = !DILocalVariable(name: "result", scope: !3292, file: !376, line: 327, type: !43)
!3299 = !DILocation(line: 0, scope: !3292)
!3300 = !DILocation(line: 327, column: 30, scope: !3292)
!3301 = !DILocation(line: 0, scope: !2953, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 327, column: 18, scope: !3292)
!3303 = !DILocation(line: 0, scope: !2960, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 55, column: 25, scope: !2953, inlinedAt: !3302)
!3305 = !DILocation(line: 57, column: 26, scope: !2960, inlinedAt: !3304)
!3306 = !DILocation(line: 0, scope: !2921, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 55, column: 10, scope: !2953, inlinedAt: !3302)
!3308 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3307)
!3309 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3307)
!3310 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3307)
!3311 = !DILocation(line: 328, column: 3, scope: !3292)
!3312 = !DILocation(line: 328, column: 13, scope: !3292)
!3313 = !DILocation(line: 0, scope: !3260, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 329, column: 10, scope: !3292)
!3315 = !DILocation(line: 29, column: 10, scope: !3260, inlinedAt: !3314)
!3316 = !DILocation(line: 329, column: 3, scope: !3292)
!3317 = distinct !DISubprogram(name: "xstrdup", scope: !376, file: !376, line: 335, type: !652, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !375, retainedNodes: !3318)
!3318 = !{!3319}
!3319 = !DILocalVariable(name: "string", arg: 1, scope: !3317, file: !376, line: 335, type: !50)
!3320 = !DILocation(line: 0, scope: !3317)
!3321 = !DILocation(line: 337, column: 27, scope: !3317)
!3322 = !DILocation(line: 337, column: 43, scope: !3317)
!3323 = !DILocation(line: 0, scope: !3244, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 337, column: 10, scope: !3317)
!3325 = !DILocation(line: 0, scope: !2940, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 312, column: 18, scope: !3244, inlinedAt: !3324)
!3327 = !DILocation(line: 49, column: 25, scope: !2940, inlinedAt: !3326)
!3328 = !DILocation(line: 0, scope: !2921, inlinedAt: !3329)
!3329 = distinct !DILocation(line: 49, column: 10, scope: !2940, inlinedAt: !3326)
!3330 = !DILocation(line: 39, column: 8, scope: !2928, inlinedAt: !3329)
!3331 = !DILocation(line: 39, column: 7, scope: !2921, inlinedAt: !3329)
!3332 = !DILocation(line: 40, column: 5, scope: !2928, inlinedAt: !3329)
!3333 = !DILocation(line: 0, scope: !3260, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 312, column: 10, scope: !3244, inlinedAt: !3324)
!3335 = !DILocation(line: 29, column: 10, scope: !3260, inlinedAt: !3334)
!3336 = !DILocation(line: 337, column: 3, scope: !3317)
!3337 = distinct !DISubprogram(name: "xalloc_die", scope: !410, file: !410, line: 32, type: !212, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3338)
!3338 = !{!3339}
!3339 = !DILocalVariable(name: "__errstatus", scope: !3340, file: !410, line: 34, type: !3341)
!3340 = distinct !DILexicalBlock(scope: !3337, file: !410, line: 34, column: 3)
!3341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3342 = !DILocation(line: 34, column: 3, scope: !3340)
!3343 = !DILocation(line: 0, scope: !3340)
!3344 = !DILocation(line: 40, column: 3, scope: !3337)
!3345 = distinct !DISubprogram(name: "last_component", scope: !412, file: !412, line: 29, type: !652, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3346)
!3346 = !{!3347, !3348, !3349, !3350}
!3347 = !DILocalVariable(name: "name", arg: 1, scope: !3345, file: !412, line: 29, type: !50)
!3348 = !DILocalVariable(name: "base", scope: !3345, file: !412, line: 31, type: !50)
!3349 = !DILocalVariable(name: "last_was_slash", scope: !3345, file: !412, line: 35, type: !56)
!3350 = !DILocalVariable(name: "p", scope: !3351, file: !412, line: 36, type: !50)
!3351 = distinct !DILexicalBlock(scope: !3345, file: !412, line: 36, column: 3)
!3352 = !DILocation(line: 0, scope: !3345)
!3353 = !DILocation(line: 32, column: 3, scope: !3345)
!3354 = !DILocation(line: 32, column: 10, scope: !3345)
!3355 = !DILocation(line: 33, column: 9, scope: !3345)
!3356 = distinct !{!3356, !3353, !3355, !506}
!3357 = !DILocation(line: 36, column: 30, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3351, file: !412, line: 36, column: 3)
!3359 = !DILocation(line: 31, column: 15, scope: !3345)
!3360 = !DILocation(line: 0, scope: !3351)
!3361 = !DILocation(line: 36, column: 3, scope: !3351)
!3362 = !DILocation(line: 47, column: 3, scope: !3345)
!3363 = !DILocation(line: 40, column: 16, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !412, line: 38, column: 11)
!3365 = distinct !DILexicalBlock(scope: !3358, file: !412, line: 37, column: 5)
!3366 = !DILocation(line: 36, column: 35, scope: !3358)
!3367 = !DILocation(line: 36, column: 3, scope: !3358)
!3368 = distinct !{!3368, !3361, !3369, !506}
!3369 = !DILocation(line: 45, column: 5, scope: !3351)
!3370 = distinct !DISubprogram(name: "base_len", scope: !412, file: !412, line: 51, type: !3371, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3373)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!47, !50}
!3373 = !{!3374, !3375, !3376}
!3374 = !DILocalVariable(name: "name", arg: 1, scope: !3370, file: !412, line: 51, type: !50)
!3375 = !DILocalVariable(name: "len", scope: !3370, file: !412, line: 53, type: !47)
!3376 = !DILocalVariable(name: "prefix_len", scope: !3370, file: !412, line: 61, type: !47)
!3377 = !DILocation(line: 0, scope: !3370)
!3378 = !DILocation(line: 54, column: 14, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3370, file: !412, line: 54, column: 3)
!3380 = !DILocation(line: 54, column: 8, scope: !3379)
!3381 = !DILocation(line: 0, scope: !3379)
!3382 = !DILocation(line: 54, column: 32, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3379, file: !412, line: 54, column: 3)
!3384 = !DILocation(line: 54, column: 38, scope: !3383)
!3385 = !DILocation(line: 54, column: 41, scope: !3383)
!3386 = !DILocation(line: 54, column: 3, scope: !3379)
!3387 = distinct !{!3387, !3386, !3388, !506}
!3388 = !DILocation(line: 55, column: 5, scope: !3379)
!3389 = !DILocation(line: 66, column: 3, scope: !3370)
!3390 = distinct !DISubprogram(name: "close_stream", scope: !414, file: !414, line: 55, type: !3391, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3427)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!37, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3396)
!3396 = !{!3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3395, file: !89, line: 51, baseType: !37, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3395, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3395, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3395, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3395, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3395, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3395, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3395, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3395, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3395, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3395, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3395, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3395, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3395, file: !89, line: 70, baseType: !3411, size: 64, offset: 832)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3395, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3395, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3395, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3395, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3395, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3395, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3395, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3395, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3395, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3395, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3395, file: !89, line: 93, baseType: !3411, size: 64, offset: 1344)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3395, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3395, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3395, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3395, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!3427 = !{!3428, !3429, !3431, !3432}
!3428 = !DILocalVariable(name: "stream", arg: 1, scope: !3390, file: !414, line: 55, type: !3393)
!3429 = !DILocalVariable(name: "some_pending", scope: !3390, file: !414, line: 57, type: !3430)
!3430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!3431 = !DILocalVariable(name: "prev_fail", scope: !3390, file: !414, line: 58, type: !3430)
!3432 = !DILocalVariable(name: "fclose_fail", scope: !3390, file: !414, line: 59, type: !3430)
!3433 = !DILocation(line: 0, scope: !3390)
!3434 = !DILocation(line: 57, column: 30, scope: !3390)
!3435 = !DILocalVariable(name: "__stream", arg: 1, scope: !3436, file: !1086, line: 135, type: !3393)
!3436 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1086, file: !1086, line: 135, type: !3391, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !413, retainedNodes: !3437)
!3437 = !{!3435}
!3438 = !DILocation(line: 0, scope: !3436, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 58, column: 27, scope: !3390)
!3440 = !DILocation(line: 137, column: 10, scope: !3436, inlinedAt: !3439)
!3441 = !{!1095, !541, i64 0}
!3442 = !DILocation(line: 58, column: 43, scope: !3390)
!3443 = !DILocation(line: 59, column: 29, scope: !3390)
!3444 = !DILocation(line: 59, column: 45, scope: !3390)
!3445 = !DILocation(line: 69, column: 17, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3390, file: !414, line: 69, column: 7)
!3447 = !DILocation(line: 57, column: 50, scope: !3390)
!3448 = !DILocation(line: 69, column: 33, scope: !3446)
!3449 = !DILocation(line: 69, column: 53, scope: !3446)
!3450 = !DILocation(line: 69, column: 59, scope: !3446)
!3451 = !DILocation(line: 69, column: 7, scope: !3390)
!3452 = !DILocation(line: 71, column: 11, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3446, file: !414, line: 70, column: 5)
!3454 = !DILocation(line: 72, column: 9, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3453, file: !414, line: 71, column: 11)
!3456 = !DILocation(line: 72, column: 15, scope: !3455)
!3457 = !DILocation(line: 77, column: 1, scope: !3390)
!3458 = distinct !DISubprogram(name: "rpl_fclose", scope: !416, file: !416, line: 58, type: !3459, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !3495)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!37, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3463)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3463, file: !89, line: 51, baseType: !37, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3463, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3463, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3463, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3463, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3463, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3463, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3463, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3463, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3463, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3463, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3463, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3463, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3463, file: !89, line: 70, baseType: !3479, size: 64, offset: 832)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3463, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3463, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3463, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3463, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3463, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3463, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3463, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3463, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3463, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3463, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3463, file: !89, line: 93, baseType: !3479, size: 64, offset: 1344)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3463, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3463, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3463, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3463, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!3495 = !{!3496, !3497, !3498, !3499}
!3496 = !DILocalVariable(name: "fp", arg: 1, scope: !3458, file: !416, line: 58, type: !3461)
!3497 = !DILocalVariable(name: "saved_errno", scope: !3458, file: !416, line: 60, type: !37)
!3498 = !DILocalVariable(name: "fd", scope: !3458, file: !416, line: 63, type: !37)
!3499 = !DILocalVariable(name: "result", scope: !3458, file: !416, line: 74, type: !37)
!3500 = !DILocation(line: 0, scope: !3458)
!3501 = !DILocation(line: 63, column: 12, scope: !3458)
!3502 = !DILocation(line: 64, column: 10, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3458, file: !416, line: 64, column: 7)
!3504 = !DILocation(line: 64, column: 7, scope: !3458)
!3505 = !DILocation(line: 65, column: 12, scope: !3503)
!3506 = !DILocation(line: 65, column: 5, scope: !3503)
!3507 = !DILocation(line: 70, column: 9, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3458, file: !416, line: 70, column: 7)
!3509 = !DILocation(line: 70, column: 23, scope: !3508)
!3510 = !DILocation(line: 70, column: 33, scope: !3508)
!3511 = !DILocation(line: 70, column: 26, scope: !3508)
!3512 = !DILocation(line: 70, column: 59, scope: !3508)
!3513 = !DILocation(line: 71, column: 7, scope: !3508)
!3514 = !DILocation(line: 71, column: 10, scope: !3508)
!3515 = !DILocation(line: 70, column: 7, scope: !3458)
!3516 = !DILocation(line: 100, column: 12, scope: !3458)
!3517 = !DILocation(line: 105, column: 7, scope: !3458)
!3518 = !DILocation(line: 72, column: 19, scope: !3508)
!3519 = !DILocation(line: 105, column: 19, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3458, file: !416, line: 105, column: 7)
!3521 = !DILocation(line: 107, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3520, file: !416, line: 106, column: 5)
!3523 = !DILocation(line: 109, column: 5, scope: !3522)
!3524 = !DILocation(line: 112, column: 1, scope: !3458)
!3525 = !DISubprogram(name: "fileno", scope: !185, file: !185, line: 809, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3526 = !DISubprogram(name: "fclose", scope: !185, file: !185, line: 178, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3527 = !DISubprogram(name: "lseek", scope: !893, file: !893, line: 339, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!111, !37, !111, !37}
!3530 = distinct !DISubprogram(name: "rpl_fflush", scope: !418, file: !418, line: 130, type: !3531, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3567)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!37, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3535)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3535, file: !89, line: 51, baseType: !37, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3535, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3535, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3535, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3535, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3535, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3535, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3535, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3535, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3535, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3535, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3535, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3535, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3535, file: !89, line: 70, baseType: !3551, size: 64, offset: 832)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3535, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3535, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3535, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3535, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3535, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3535, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3535, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3535, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3535, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3535, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3535, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3535, file: !89, line: 93, baseType: !3551, size: 64, offset: 1344)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3535, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3535, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3535, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3535, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!3567 = !{!3568}
!3568 = !DILocalVariable(name: "stream", arg: 1, scope: !3530, file: !418, line: 130, type: !3533)
!3569 = !DILocation(line: 0, scope: !3530)
!3570 = !DILocation(line: 151, column: 14, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3530, file: !418, line: 151, column: 7)
!3572 = !DILocation(line: 151, column: 22, scope: !3571)
!3573 = !DILocation(line: 151, column: 27, scope: !3571)
!3574 = !DILocation(line: 151, column: 7, scope: !3530)
!3575 = !DILocation(line: 152, column: 12, scope: !3571)
!3576 = !DILocation(line: 152, column: 5, scope: !3571)
!3577 = !DILocalVariable(name: "fp", arg: 1, scope: !3578, file: !418, line: 42, type: !3533)
!3578 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !418, file: !418, line: 42, type: !3579, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !417, retainedNodes: !3581)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{null, !3533}
!3581 = !{!3577}
!3582 = !DILocation(line: 0, scope: !3578, inlinedAt: !3583)
!3583 = distinct !DILocation(line: 157, column: 3, scope: !3530)
!3584 = !DILocation(line: 44, column: 12, scope: !3585, inlinedAt: !3583)
!3585 = distinct !DILexicalBlock(scope: !3578, file: !418, line: 44, column: 7)
!3586 = !DILocation(line: 44, column: 19, scope: !3585, inlinedAt: !3583)
!3587 = !DILocation(line: 44, column: 7, scope: !3578, inlinedAt: !3583)
!3588 = !DILocation(line: 46, column: 5, scope: !3585, inlinedAt: !3583)
!3589 = !DILocation(line: 159, column: 10, scope: !3530)
!3590 = !DILocation(line: 159, column: 3, scope: !3530)
!3591 = !DILocation(line: 236, column: 1, scope: !3530)
!3592 = !DISubprogram(name: "fflush", scope: !185, file: !185, line: 230, type: !3531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3593 = distinct !DISubprogram(name: "rpl_fseeko", scope: !420, file: !420, line: 28, type: !3594, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !419, retainedNodes: !3631)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!37, !3596, !3630, !37}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !87, line: 7, baseType: !3598)
!3598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !89, line: 49, size: 1728, elements: !3599)
!3599 = !{!3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3598, file: !89, line: 51, baseType: !37, size: 32)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3598, file: !89, line: 54, baseType: !43, size: 64, offset: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3598, file: !89, line: 55, baseType: !43, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3598, file: !89, line: 56, baseType: !43, size: 64, offset: 192)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3598, file: !89, line: 57, baseType: !43, size: 64, offset: 256)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3598, file: !89, line: 58, baseType: !43, size: 64, offset: 320)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3598, file: !89, line: 59, baseType: !43, size: 64, offset: 384)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3598, file: !89, line: 60, baseType: !43, size: 64, offset: 448)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3598, file: !89, line: 61, baseType: !43, size: 64, offset: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3598, file: !89, line: 64, baseType: !43, size: 64, offset: 576)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3598, file: !89, line: 65, baseType: !43, size: 64, offset: 640)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3598, file: !89, line: 66, baseType: !43, size: 64, offset: 704)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3598, file: !89, line: 68, baseType: !104, size: 64, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3598, file: !89, line: 70, baseType: !3614, size: 64, offset: 832)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3598, file: !89, line: 72, baseType: !37, size: 32, offset: 896)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3598, file: !89, line: 73, baseType: !37, size: 32, offset: 928)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3598, file: !89, line: 74, baseType: !111, size: 64, offset: 960)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3598, file: !89, line: 77, baseType: !46, size: 16, offset: 1024)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3598, file: !89, line: 78, baseType: !116, size: 8, offset: 1040)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3598, file: !89, line: 79, baseType: !118, size: 8, offset: 1048)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3598, file: !89, line: 81, baseType: !122, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3598, file: !89, line: 89, baseType: !125, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3598, file: !89, line: 91, baseType: !127, size: 64, offset: 1216)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3598, file: !89, line: 92, baseType: !130, size: 64, offset: 1280)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3598, file: !89, line: 93, baseType: !3614, size: 64, offset: 1344)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3598, file: !89, line: 94, baseType: !45, size: 64, offset: 1408)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3598, file: !89, line: 95, baseType: !47, size: 64, offset: 1472)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3598, file: !89, line: 96, baseType: !37, size: 32, offset: 1536)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3598, file: !89, line: 98, baseType: !137, size: 160, offset: 1568)
!3630 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !185, line: 63, baseType: !111)
!3631 = !{!3632, !3633, !3634, !3635}
!3632 = !DILocalVariable(name: "fp", arg: 1, scope: !3593, file: !420, line: 28, type: !3596)
!3633 = !DILocalVariable(name: "offset", arg: 2, scope: !3593, file: !420, line: 28, type: !3630)
!3634 = !DILocalVariable(name: "whence", arg: 3, scope: !3593, file: !420, line: 28, type: !37)
!3635 = !DILocalVariable(name: "pos", scope: !3636, file: !420, line: 123, type: !3630)
!3636 = distinct !DILexicalBlock(scope: !3637, file: !420, line: 119, column: 5)
!3637 = distinct !DILexicalBlock(scope: !3593, file: !420, line: 55, column: 7)
!3638 = !DILocation(line: 0, scope: !3593)
!3639 = !DILocation(line: 55, column: 12, scope: !3637)
!3640 = !{!1095, !454, i64 16}
!3641 = !DILocation(line: 55, column: 33, scope: !3637)
!3642 = !{!1095, !454, i64 8}
!3643 = !DILocation(line: 55, column: 25, scope: !3637)
!3644 = !DILocation(line: 56, column: 7, scope: !3637)
!3645 = !DILocation(line: 56, column: 15, scope: !3637)
!3646 = !DILocation(line: 56, column: 37, scope: !3637)
!3647 = !{!1095, !454, i64 32}
!3648 = !DILocation(line: 56, column: 29, scope: !3637)
!3649 = !DILocation(line: 57, column: 7, scope: !3637)
!3650 = !DILocation(line: 57, column: 15, scope: !3637)
!3651 = !{!1095, !454, i64 72}
!3652 = !DILocation(line: 57, column: 29, scope: !3637)
!3653 = !DILocation(line: 55, column: 7, scope: !3593)
!3654 = !DILocation(line: 123, column: 26, scope: !3636)
!3655 = !DILocation(line: 123, column: 19, scope: !3636)
!3656 = !DILocation(line: 0, scope: !3636)
!3657 = !DILocation(line: 124, column: 15, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3636, file: !420, line: 124, column: 11)
!3659 = !DILocation(line: 124, column: 11, scope: !3636)
!3660 = !DILocation(line: 135, column: 12, scope: !3636)
!3661 = !DILocation(line: 135, column: 19, scope: !3636)
!3662 = !DILocation(line: 136, column: 12, scope: !3636)
!3663 = !DILocation(line: 136, column: 20, scope: !3636)
!3664 = !{!1095, !788, i64 144}
!3665 = !DILocation(line: 167, column: 7, scope: !3636)
!3666 = !DILocation(line: 169, column: 10, scope: !3593)
!3667 = !DILocation(line: 169, column: 3, scope: !3593)
!3668 = !DILocation(line: 170, column: 1, scope: !3593)
!3669 = !DISubprogram(name: "fseeko", scope: !185, file: !185, line: 736, type: !3670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!37, !3596, !111, !37}
!3672 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !348, file: !348, line: 100, type: !3673, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !3676)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!47, !1449, !50, !47, !3675}
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!3676 = !{!3677, !3678, !3679, !3680, !3681}
!3677 = !DILocalVariable(name: "pwc", arg: 1, scope: !3672, file: !348, line: 100, type: !1449)
!3678 = !DILocalVariable(name: "s", arg: 2, scope: !3672, file: !348, line: 100, type: !50)
!3679 = !DILocalVariable(name: "n", arg: 3, scope: !3672, file: !348, line: 100, type: !47)
!3680 = !DILocalVariable(name: "ps", arg: 4, scope: !3672, file: !348, line: 100, type: !3675)
!3681 = !DILocalVariable(name: "ret", scope: !3672, file: !348, line: 130, type: !47)
!3682 = !DILocation(line: 0, scope: !3672)
!3683 = !DILocation(line: 105, column: 9, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3672, file: !348, line: 105, column: 7)
!3685 = !DILocation(line: 105, column: 7, scope: !3672)
!3686 = !DILocation(line: 117, column: 10, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3672, file: !348, line: 117, column: 7)
!3688 = !DILocation(line: 117, column: 7, scope: !3672)
!3689 = !DILocation(line: 130, column: 16, scope: !3672)
!3690 = !DILocation(line: 135, column: 11, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3672, file: !348, line: 135, column: 7)
!3692 = !DILocation(line: 135, column: 25, scope: !3691)
!3693 = !DILocation(line: 135, column: 30, scope: !3691)
!3694 = !DILocation(line: 135, column: 7, scope: !3672)
!3695 = !DILocalVariable(name: "ps", arg: 1, scope: !3696, file: !1422, line: 1135, type: !3675)
!3696 = distinct !DISubprogram(name: "mbszero", scope: !1422, file: !1422, line: 1135, type: !3697, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !3699)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{null, !3675}
!3699 = !{!3695}
!3700 = !DILocation(line: 0, scope: !3696, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 137, column: 5, scope: !3691)
!3702 = !DILocalVariable(name: "__dest", arg: 1, scope: !3703, file: !1431, line: 57, type: !45)
!3703 = distinct !DISubprogram(name: "memset", scope: !1431, file: !1431, line: 57, type: !1432, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !347, retainedNodes: !3704)
!3704 = !{!3702, !3705, !3706}
!3705 = !DILocalVariable(name: "__ch", arg: 2, scope: !3703, file: !1431, line: 57, type: !37)
!3706 = !DILocalVariable(name: "__len", arg: 3, scope: !3703, file: !1431, line: 57, type: !47)
!3707 = !DILocation(line: 0, scope: !3703, inlinedAt: !3708)
!3708 = distinct !DILocation(line: 1137, column: 3, scope: !3696, inlinedAt: !3701)
!3709 = !DILocation(line: 59, column: 10, scope: !3703, inlinedAt: !3708)
!3710 = !DILocation(line: 137, column: 5, scope: !3691)
!3711 = !DILocation(line: 138, column: 11, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3672, file: !348, line: 138, column: 7)
!3713 = !DILocation(line: 138, column: 7, scope: !3672)
!3714 = !DILocation(line: 139, column: 5, scope: !3712)
!3715 = !DILocation(line: 143, column: 26, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3672, file: !348, line: 143, column: 7)
!3717 = !DILocation(line: 143, column: 41, scope: !3716)
!3718 = !DILocation(line: 143, column: 7, scope: !3672)
!3719 = !DILocation(line: 145, column: 15, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !348, line: 145, column: 11)
!3721 = distinct !DILexicalBlock(scope: !3716, file: !348, line: 144, column: 5)
!3722 = !DILocation(line: 145, column: 11, scope: !3721)
!3723 = !DILocation(line: 146, column: 32, scope: !3720)
!3724 = !DILocation(line: 146, column: 16, scope: !3720)
!3725 = !DILocation(line: 146, column: 14, scope: !3720)
!3726 = !DILocation(line: 146, column: 9, scope: !3720)
!3727 = !DILocation(line: 286, column: 1, scope: !3672)
!3728 = !DISubprogram(name: "mbsinit", scope: !3729, file: !3729, line: 293, type: !3730, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !532)
!3729 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!37, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!3734 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !422, file: !422, line: 27, type: !2905, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3735)
!3735 = !{!3736, !3737, !3738, !3739}
!3736 = !DILocalVariable(name: "ptr", arg: 1, scope: !3734, file: !422, line: 27, type: !45)
!3737 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3734, file: !422, line: 27, type: !47)
!3738 = !DILocalVariable(name: "size", arg: 3, scope: !3734, file: !422, line: 27, type: !47)
!3739 = !DILocalVariable(name: "nbytes", scope: !3734, file: !422, line: 29, type: !47)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 30, column: 7, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3734, file: !422, line: 30, column: 7)
!3743 = !DILocalVariable(name: "ptr", arg: 1, scope: !3744, file: !2996, line: 2057, type: !45)
!3744 = distinct !DISubprogram(name: "rpl_realloc", scope: !2996, file: !2996, line: 2057, type: !2988, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !421, retainedNodes: !3745)
!3745 = !{!3743, !3746}
!3746 = !DILocalVariable(name: "size", arg: 2, scope: !3744, file: !2996, line: 2057, type: !47)
!3747 = !DILocation(line: 0, scope: !3744, inlinedAt: !3748)
!3748 = distinct !DILocation(line: 37, column: 10, scope: !3734)
!3749 = !DILocation(line: 2059, column: 24, scope: !3744, inlinedAt: !3748)
!3750 = !DILocation(line: 2059, column: 10, scope: !3744, inlinedAt: !3748)
!3751 = !DILocation(line: 37, column: 3, scope: !3734)
!3752 = !DILocation(line: 32, column: 7, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3742, file: !422, line: 31, column: 5)
!3754 = !DILocation(line: 32, column: 13, scope: !3753)
!3755 = !DILocation(line: 33, column: 7, scope: !3753)
!3756 = !DILocation(line: 38, column: 1, scope: !3734)
!3757 = distinct !DISubprogram(name: "hard_locale", scope: !425, file: !425, line: 28, type: !3758, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!56, !37}
!3760 = !{!3761, !3762}
!3761 = !DILocalVariable(name: "category", arg: 1, scope: !3757, file: !425, line: 28, type: !37)
!3762 = !DILocalVariable(name: "locale", scope: !3757, file: !425, line: 30, type: !3763)
!3763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 2056, elements: !3764)
!3764 = !{!3765}
!3765 = !DISubrange(count: 257)
!3766 = !DILocation(line: 0, scope: !3757)
!3767 = !DILocation(line: 30, column: 3, scope: !3757)
!3768 = !DILocation(line: 30, column: 8, scope: !3757)
!3769 = !DILocation(line: 32, column: 7, scope: !3770)
!3770 = distinct !DILexicalBlock(scope: !3757, file: !425, line: 32, column: 7)
!3771 = !DILocation(line: 32, column: 7, scope: !3757)
!3772 = !DILocalVariable(name: "__s1", arg: 1, scope: !3773, file: !490, line: 1359, type: !50)
!3773 = distinct !DISubprogram(name: "streq", scope: !490, file: !490, line: 1359, type: !491, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3774)
!3774 = !{!3772, !3775}
!3775 = !DILocalVariable(name: "__s2", arg: 2, scope: !3773, file: !490, line: 1359, type: !50)
!3776 = !DILocation(line: 0, scope: !3773, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 35, column: 9, scope: !3778)
!3778 = distinct !DILexicalBlock(scope: !3757, file: !425, line: 35, column: 7)
!3779 = !DILocation(line: 1361, column: 11, scope: !3773, inlinedAt: !3777)
!3780 = !DILocation(line: 1361, column: 10, scope: !3773, inlinedAt: !3777)
!3781 = !DILocation(line: 35, column: 29, scope: !3778)
!3782 = !DILocation(line: 0, scope: !3773, inlinedAt: !3783)
!3783 = distinct !DILocation(line: 35, column: 32, scope: !3778)
!3784 = !DILocation(line: 1361, column: 11, scope: !3773, inlinedAt: !3783)
!3785 = !DILocation(line: 1361, column: 10, scope: !3773, inlinedAt: !3783)
!3786 = !DILocation(line: 35, column: 7, scope: !3757)
!3787 = !DILocation(line: 46, column: 3, scope: !3757)
!3788 = !DILocation(line: 47, column: 1, scope: !3757)
!3789 = distinct !DISubprogram(name: "setlocale_null_r", scope: !427, file: !427, line: 154, type: !3790, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!37, !37, !43, !47}
!3792 = !{!3793, !3794, !3795}
!3793 = !DILocalVariable(name: "category", arg: 1, scope: !3789, file: !427, line: 154, type: !37)
!3794 = !DILocalVariable(name: "buf", arg: 2, scope: !3789, file: !427, line: 154, type: !43)
!3795 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3789, file: !427, line: 154, type: !47)
!3796 = !DILocation(line: 0, scope: !3789)
!3797 = !DILocation(line: 159, column: 10, scope: !3789)
!3798 = !DILocation(line: 159, column: 3, scope: !3789)
!3799 = distinct !DISubprogram(name: "setlocale_null", scope: !427, file: !427, line: 186, type: !3800, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !426, retainedNodes: !3802)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!50, !37}
!3802 = !{!3803}
!3803 = !DILocalVariable(name: "category", arg: 1, scope: !3799, file: !427, line: 186, type: !37)
!3804 = !DILocation(line: 0, scope: !3799)
!3805 = !DILocation(line: 189, column: 10, scope: !3799)
!3806 = !DILocation(line: 189, column: 3, scope: !3799)
!3807 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !429, file: !429, line: 35, type: !3800, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !3808)
!3808 = !{!3809, !3810}
!3809 = !DILocalVariable(name: "category", arg: 1, scope: !3807, file: !429, line: 35, type: !37)
!3810 = !DILocalVariable(name: "result", scope: !3807, file: !429, line: 37, type: !50)
!3811 = !DILocation(line: 0, scope: !3807)
!3812 = !DILocation(line: 37, column: 24, scope: !3807)
!3813 = !DILocation(line: 62, column: 3, scope: !3807)
!3814 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !429, file: !429, line: 66, type: !3790, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820}
!3816 = !DILocalVariable(name: "category", arg: 1, scope: !3814, file: !429, line: 66, type: !37)
!3817 = !DILocalVariable(name: "buf", arg: 2, scope: !3814, file: !429, line: 66, type: !43)
!3818 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3814, file: !429, line: 66, type: !47)
!3819 = !DILocalVariable(name: "result", scope: !3814, file: !429, line: 111, type: !50)
!3820 = !DILocalVariable(name: "length", scope: !3821, file: !429, line: 125, type: !47)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !429, line: 124, column: 5)
!3822 = distinct !DILexicalBlock(scope: !3814, file: !429, line: 113, column: 7)
!3823 = !DILocation(line: 0, scope: !3814)
!3824 = !DILocation(line: 0, scope: !3807, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 111, column: 24, scope: !3814)
!3826 = !DILocation(line: 37, column: 24, scope: !3807, inlinedAt: !3825)
!3827 = !DILocation(line: 113, column: 14, scope: !3822)
!3828 = !DILocation(line: 113, column: 7, scope: !3814)
!3829 = !DILocation(line: 116, column: 19, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !429, line: 116, column: 11)
!3831 = distinct !DILexicalBlock(scope: !3822, file: !429, line: 114, column: 5)
!3832 = !DILocation(line: 116, column: 11, scope: !3831)
!3833 = !DILocation(line: 120, column: 16, scope: !3830)
!3834 = !DILocation(line: 120, column: 9, scope: !3830)
!3835 = !DILocation(line: 125, column: 23, scope: !3821)
!3836 = !DILocation(line: 0, scope: !3821)
!3837 = !DILocation(line: 126, column: 18, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3821, file: !429, line: 126, column: 11)
!3839 = !DILocation(line: 126, column: 11, scope: !3821)
!3840 = !DILocation(line: 128, column: 39, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3838, file: !429, line: 127, column: 9)
!3842 = !DILocalVariable(name: "__dest", arg: 1, scope: !3843, file: !1431, line: 26, type: !3263)
!3843 = distinct !DISubprogram(name: "memcpy", scope: !1431, file: !1431, line: 26, type: !3261, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !428, retainedNodes: !3844)
!3844 = !{!3842, !3845, !3846}
!3845 = !DILocalVariable(name: "__src", arg: 2, scope: !3843, file: !1431, line: 26, type: !657)
!3846 = !DILocalVariable(name: "__len", arg: 3, scope: !3843, file: !1431, line: 26, type: !47)
!3847 = !DILocation(line: 0, scope: !3843, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 128, column: 11, scope: !3841)
!3849 = !DILocation(line: 29, column: 10, scope: !3843, inlinedAt: !3848)
!3850 = !DILocation(line: 129, column: 11, scope: !3841)
!3851 = !DILocation(line: 133, column: 23, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3853, file: !429, line: 133, column: 15)
!3853 = distinct !DILexicalBlock(scope: !3838, file: !429, line: 132, column: 9)
!3854 = !DILocation(line: 133, column: 15, scope: !3853)
!3855 = !DILocation(line: 138, column: 44, scope: !3856)
!3856 = distinct !DILexicalBlock(scope: !3852, file: !429, line: 134, column: 13)
!3857 = !DILocation(line: 0, scope: !3843, inlinedAt: !3858)
!3858 = distinct !DILocation(line: 138, column: 15, scope: !3856)
!3859 = !DILocation(line: 29, column: 10, scope: !3843, inlinedAt: !3858)
!3860 = !DILocation(line: 139, column: 15, scope: !3856)
!3861 = !DILocation(line: 139, column: 32, scope: !3856)
!3862 = !DILocation(line: 140, column: 13, scope: !3856)
!3863 = !DILocation(line: 0, scope: !3822)
!3864 = !DILocation(line: 145, column: 1, scope: !3814)
