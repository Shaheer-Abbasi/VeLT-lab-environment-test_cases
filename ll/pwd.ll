; ModuleID = 'src/pwd.bc'
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
%struct.file_name = type { i8*, i64, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@.str.4 = private unnamed_addr constant [81 x i8] c"  -L, --logical\0A         use PWD from environment, even if it contains symlinks\0A\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"  -P, --physical\0A         resolve all symlinks\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.15 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !52
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.59 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.66 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.67 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), align 8, !dbg !150
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !155
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !160
@.str.26 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.27 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.28 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !162
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !198
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !168
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !194
@.str.1.36 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.38 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.37 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !196
@.str.4.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.32 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.33 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !203
@.str.69 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.70 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !209
@.str.73 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.74 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.75 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.76 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.77 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.78 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.79 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.80 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.81 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.82 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.74, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.75, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.76, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.79, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.80, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.82, i32 0, i32 0), i8* null], align 8, !dbg !245
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !257
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !275
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !305
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !312
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !277
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !314
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !263
@.str.10.85 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.83 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.86 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.84 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !282
@.str.95 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.97 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.98 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.99 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.100 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.101 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.102 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.103 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.104 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.105 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.106 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.107 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.108 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.109 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.110 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.111 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.112 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.117 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.118 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.119 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.120 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.121 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.122 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.123 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !320
@exit_failure = dso_local global i32 1, align 4, !dbg !328
@.str.140 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.138 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.139 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.153 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !334
@.str.158 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.159 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !428 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !432, metadata !DIExpression()), !dbg !433
  %3 = icmp eq i32 %0, 0, !dbg !434
  br i1 %3, label %9, label %4, !dbg !436

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !437, !tbaa !439
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !437
  %7 = load i8*, i8** @program_name, align 8, !dbg !437, !tbaa !439
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !437
  br label %59, !dbg !437

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !443
  %11 = load i8*, i8** @program_name, align 8, !dbg !443, !tbaa !439
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !443
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !445
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !445, !tbaa !439
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !445
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !446
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !446
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !447
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !447
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !448
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !448
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !449
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !449
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #33, !dbg !450
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !450, !tbaa !439
  %22 = tail call i32 @fputs_unlocked(i8* noundef %20, %struct._IO_FILE* noundef %21), !dbg !450
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #33, !dbg !451
  %24 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %23, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !451
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !452, metadata !DIExpression()) #33, !dbg !471
  %25 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %25) #33, !dbg !473
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !457, metadata !DIExpression()) #33, !dbg !474
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %25, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !474
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !466, metadata !DIExpression()) #33, !dbg !471
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !467, metadata !DIExpression()) #33, !dbg !471
  %26 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !475
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !467, metadata !DIExpression()) #33, !dbg !471
  br label %27, !dbg !476

27:                                               ; preds = %32, %9
  %28 = phi i8* [ %35, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), %9 ]
  %29 = phi %struct.infomap* [ %33, %32 ], [ %26, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !467, metadata !DIExpression()) #33, !dbg !471
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !484
  call void @llvm.dbg.value(metadata i8* %28, metadata !483, metadata !DIExpression()) #33, !dbg !484
  %30 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %28) #34, !dbg !486
  %31 = icmp eq i32 %30, 0, !dbg !487
  br i1 %31, label %37, label %32, !dbg !476

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %29, i64 1, !dbg !488
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !467, metadata !DIExpression()) #33, !dbg !471
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 0, !dbg !489
  %35 = load i8*, i8** %34, align 8, !dbg !489, !tbaa !490
  %36 = icmp eq i8* %35, null, !dbg !492
  br i1 %36, label %37, label %27, !dbg !493, !llvm.loop !494

37:                                               ; preds = %32, %27
  %38 = phi %struct.infomap* [ %29, %27 ], [ %33, %32 ]
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 1, !dbg !496
  %40 = load i8*, i8** %39, align 8, !dbg !496, !tbaa !498
  %41 = icmp eq i8* %40, null, !dbg !499
  %42 = select i1 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40, !dbg !500
  call void @llvm.dbg.value(metadata i8* %42, metadata !466, metadata !DIExpression()) #33, !dbg !471
  tail call void @emit_bug_reporting_address() #33, !dbg !501
  %43 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !502
  call void @llvm.dbg.value(metadata i8* %43, metadata !469, metadata !DIExpression()) #33, !dbg !471
  %44 = icmp eq i8* %43, null, !dbg !503
  br i1 %44, label %52, label %45, !dbg !505

45:                                               ; preds = %37
  %46 = tail call i32 @strncmp(i8* noundef nonnull %43, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.48, i64 0, i64 0), i64 noundef 3) #34, !dbg !506
  %47 = icmp eq i32 %46, 0, !dbg !506
  br i1 %47, label %52, label %48, !dbg !507

48:                                               ; preds = %45
  %49 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #33, !dbg !508
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !508, !tbaa !439
  %51 = tail call i32 @fputs_unlocked(i8* noundef %49, %struct._IO_FILE* noundef %50) #33, !dbg !508
  br label %52, !dbg !510

52:                                               ; preds = %37, %45, %48
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !511
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !470, metadata !DIExpression()) #33, !dbg !471
  %53 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !513
  %54 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %53, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !513
  %55 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 noundef 5) #33, !dbg !514
  %56 = icmp eq i8* %42, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), !dbg !514
  %57 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !514
  %58 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %55, i8* noundef %42, i8* noundef %57) #33, !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %25) #33, !dbg !515
  br label %59

59:                                               ; preds = %52, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !516
  unreachable, !dbg !516
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !517 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !522 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !54 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !58, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %0, metadata !59, metadata !DIExpression()), !dbg !527
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !528, !tbaa !529
  %3 = icmp eq i32 %2, -1, !dbg !531
  br i1 %3, label %4, label %16, !dbg !532

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #33, !dbg !533
  call void @llvm.dbg.value(metadata i8* %5, metadata !60, metadata !DIExpression()), !dbg !534
  %6 = icmp eq i8* %5, null, !dbg !535
  br i1 %6, label %14, label %7, !dbg !536

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !537, !tbaa !538
  %9 = icmp eq i8 %8, 0, !dbg !537
  br i1 %9, label %14, label %10, !dbg !539

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !477, metadata !DIExpression()) #33, !dbg !540
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !540
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !542
  %12 = icmp eq i32 %11, 0, !dbg !543
  %13 = zext i1 %12 to i32, !dbg !539
  br label %14, !dbg !539

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !544, !tbaa !529
  br label %16, !dbg !545

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !546
  %18 = icmp eq i32 %17, 0, !dbg !546
  br i1 %18, label %22, label %19, !dbg !548

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !549, !tbaa !439
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !549
  br label %121, !dbg !551

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !63, metadata !DIExpression()), !dbg !527
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !552
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !553
  call void @llvm.dbg.value(metadata i8* %24, metadata !65, metadata !DIExpression()), !dbg !527
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !554
  call void @llvm.dbg.value(metadata i8* %25, metadata !66, metadata !DIExpression()), !dbg !527
  %26 = icmp eq i8* %25, null, !dbg !555
  br i1 %26, label %53, label %27, !dbg !556

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !557
  br i1 %28, label %53, label %29, !dbg !558

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !67, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 0, metadata !71, metadata !DIExpression()), !dbg !559
  %30 = icmp ult i8* %24, %25, !dbg !560
  br i1 %30, label %31, label %53, !dbg !561

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !527
  %33 = load i16*, i16** %32, align 8, !tbaa !439
  br label %34, !dbg !561

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !67, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.value(metadata i64 %36, metadata !71, metadata !DIExpression()), !dbg !559
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !562
  call void @llvm.dbg.value(metadata i8* %37, metadata !67, metadata !DIExpression()), !dbg !559
  %38 = load i8, i8* %35, align 1, !dbg !562, !tbaa !538
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !562
  %41 = load i16, i16* %40, align 2, !dbg !562, !tbaa !563
  %42 = lshr i16 %41, 13, !dbg !565
  %43 = and i16 %42, 1, !dbg !565
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !566
  call void @llvm.dbg.value(metadata i64 %45, metadata !71, metadata !DIExpression()), !dbg !559
  %46 = icmp ult i8* %37, %25, !dbg !560
  %47 = icmp ult i64 %45, 2, !dbg !567
  %48 = select i1 %46, i1 %47, i1 false, !dbg !567
  br i1 %48, label %34, label %49, !dbg !561, !llvm.loop !568

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !569
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !571
  %52 = xor i1 %50, true, !dbg !571
  br label %53, !dbg !571

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !527
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %54, metadata !66, metadata !DIExpression()), !dbg !527
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0)) #34, !dbg !572
  call void @llvm.dbg.value(metadata i64 %56, metadata !72, metadata !DIExpression()), !dbg !527
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !573
  call void @llvm.dbg.value(metadata i8* %57, metadata !73, metadata !DIExpression()), !dbg !527
  br label %58, !dbg !574

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !527
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.value(metadata i8* %59, metadata !73, metadata !DIExpression()), !dbg !527
  %61 = load i8, i8* %59, align 1, !dbg !575, !tbaa !538
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !576

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !577
  %64 = load i8, i8* %63, align 1, !dbg !580, !tbaa !538
  %65 = icmp ne i8 %64, 45, !dbg !581
  %66 = select i1 %65, i1 %60, i1 false, !dbg !582
  br label %67, !dbg !582

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !63, metadata !DIExpression()), !dbg !527
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !583
  %70 = load i16*, i16** %69, align 8, !dbg !583, !tbaa !439
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !583
  %73 = load i16, i16* %72, align 2, !dbg !583, !tbaa !563
  %74 = and i16 %73, 8192, !dbg !583
  %75 = icmp eq i16 %74, 0, !dbg !583
  br i1 %75, label %89, label %76, !dbg !585

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !586
  br i1 %77, label %91, label %78, !dbg !589

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !590
  %80 = load i8, i8* %79, align 1, !dbg !590, !tbaa !538
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !590
  %83 = load i16, i16* %82, align 2, !dbg !590, !tbaa !563
  %84 = and i16 %83, 8192, !dbg !590
  %85 = icmp eq i16 %84, 0, !dbg !590
  br i1 %85, label %86, label %91, !dbg !591

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !592
  br i1 %88, label %89, label %91, !dbg !592

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !594
  call void @llvm.dbg.value(metadata i8* %90, metadata !73, metadata !DIExpression()), !dbg !527
  br label %58, !dbg !574, !llvm.loop !595

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !597
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !597, !tbaa !439
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !597
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), metadata !483, metadata !DIExpression()) #33, !dbg !598
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !600
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !602
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #33, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), metadata !133, metadata !DIExpression()), !dbg !527
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i64 0, i64 0), i64 noundef 6) #34, !dbg !618
  %96 = icmp eq i32 %95, 0, !dbg !618
  br i1 %96, label %100, label %97, !dbg !620

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0), i64 noundef 9) #34, !dbg !621
  %99 = icmp eq i32 %98, 0, !dbg !621
  br i1 %99, label %100, label %103, !dbg !622

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !623
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !623
  br label %106, !dbg !625

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !626
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !626
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !628, !tbaa !439
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !628
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !629, !tbaa !439
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !629
  %111 = ptrtoint i8* %59 to i64, !dbg !630
  %112 = sub i64 %111, %92, !dbg !630
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !630, !tbaa !439
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !630
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !631, !tbaa !439
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !631
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !439
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !632
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !439
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !633
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !634
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
declare !dbg !635 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !639 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !643 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !649 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !654, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.value(metadata i8** %1, metadata !655, metadata !DIExpression()), !dbg !672
  %9 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !673
  %10 = icmp ne i8* %9, null, !dbg !674
  call void @llvm.dbg.value(metadata i1 %10, metadata !656, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !672
  %11 = load i8*, i8** %1, align 8, !dbg !675, !tbaa !439
  tail call void @set_program_name(i8* noundef %11) #33, !dbg !676
  %12 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #33, !dbg !677
  %13 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !678
  %14 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #33, !dbg !679
  %15 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !680
  br label %16, !dbg !681

16:                                               ; preds = %20, %2
  %17 = phi i1 [ %10, %2 ], [ %21, %20 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !656, metadata !DIExpression()), !dbg !672
  %18 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #33, !dbg !682
  call void @llvm.dbg.value(metadata i32 %18, metadata !657, metadata !DIExpression()), !dbg !683
  switch i32 %18, label %27 [
    i32 -1, label %28
    i32 76, label %20
    i32 80, label %19
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !684

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 0, metadata !656, metadata !DIExpression()), !dbg !672
  br label %20, !dbg !685

20:                                               ; preds = %19, %16
  %21 = phi i1 [ false, %19 ], [ true, %16 ]
  br label %16, !dbg !672

22:                                               ; preds = %16
  tail call void @usage(i32 noundef 0) #37, !dbg !687
  unreachable, !dbg !687

23:                                               ; preds = %16
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !688, !tbaa !439
  %25 = load i8*, i8** @Version, align 8, !dbg !688, !tbaa !439
  %26 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0)) #33, !dbg !688
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* noundef %25, i8* noundef %26, i8* noundef null) #33, !dbg !688
  tail call void @exit(i32 noundef 0) #35, !dbg !688
  unreachable, !dbg !688

27:                                               ; preds = %16
  tail call void @usage(i32 noundef 1) #37, !dbg !689
  unreachable, !dbg !689

28:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 poison, metadata !656, metadata !DIExpression()), !dbg !672
  %29 = load i32, i32* @optind, align 4, !dbg !690, !tbaa !529
  %30 = icmp slt i32 %29, %0, !dbg !692
  br i1 %30, label %31, label %33, !dbg !693

31:                                               ; preds = %28
  %32 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0), i32 noundef 5) #33, !dbg !694
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %32) #33, !dbg !694
  br label %33, !dbg !694

33:                                               ; preds = %31, %28
  br i1 %17, label %34, label %77, !dbg !695

34:                                               ; preds = %33
  %35 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0)) #33, !dbg !696
  call void @llvm.dbg.value(metadata i8* %35, metadata !701, metadata !DIExpression()) #33, !dbg !741
  %36 = icmp eq i8* %35, null, !dbg !742
  br i1 %36, label %77, label %37, !dbg !744

37:                                               ; preds = %34
  %38 = load i8, i8* %35, align 1, !dbg !745, !tbaa !538
  %39 = icmp eq i8 %38, 47, !dbg !746
  br i1 %39, label %40, label %77, !dbg !747

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i8* %35, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %41 = tail call i8* @strstr(i8* noundef nonnull %35, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #34, !dbg !748
  call void @llvm.dbg.value(metadata i8* %41, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %42 = icmp eq i8* %41, null, !dbg !749
  br i1 %42, label %54, label %43, !dbg !749

43:                                               ; preds = %40, %50
  %44 = phi i8* [ %52, %50 ], [ %41, %40 ]
  %45 = getelementptr inbounds i8, i8* %44, i64 2, !dbg !750
  %46 = load i8, i8* %45, align 1, !dbg !750, !tbaa !538
  switch i8 %46, label %50 [
    i8 0, label %77
    i8 47, label %77
    i8 46, label %47
  ], !dbg !753

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %44, i64 3, !dbg !754
  %49 = load i8, i8* %48, align 1, !dbg !754, !tbaa !538
  switch i8 %49, label %50 [
    i8 0, label %77
    i8 47, label %77
  ], !dbg !755

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !756
  call void @llvm.dbg.value(metadata i8* %51, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %52 = tail call i8* @strstr(i8* noundef nonnull %51, i8* noundef nonnull dereferenceable(1) getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0)) #34, !dbg !748
  call void @llvm.dbg.value(metadata i8* %52, metadata !702, metadata !DIExpression()) #33, !dbg !741
  %53 = icmp eq i8* %52, null, !dbg !749
  br i1 %53, label %54, label %43, !dbg !749, !llvm.loop !757

54:                                               ; preds = %50, %40
  %55 = bitcast %struct.stat* %7 to i8*, !dbg !759
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %55) #33, !dbg !759
  call void @llvm.dbg.declare(metadata %struct.stat* %7, metadata !703, metadata !DIExpression()) #33, !dbg !760
  %56 = bitcast %struct.stat* %8 to i8*, !dbg !761
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %56) #33, !dbg !761
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !739, metadata !DIExpression()) #33, !dbg !762
  %57 = call i32 @stat(i8* noundef nonnull %35, %struct.stat* noundef nonnull %7) #33, !dbg !763
  %58 = icmp eq i32 %57, 0, !dbg !765
  br i1 %58, label %59, label %74, !dbg !766

59:                                               ; preds = %54
  %60 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %8) #33, !dbg !767
  %61 = icmp eq i32 %60, 0, !dbg !768
  br i1 %61, label %62, label %74, !dbg !769

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !770, metadata !DIExpression()) #33, !dbg !779
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !778, metadata !DIExpression()) #33, !dbg !779
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !781
  %64 = load i64, i64* %63, align 8, !dbg !781, !tbaa !782
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !781
  %66 = load i64, i64* %65, align 8, !dbg !781, !tbaa !782
  %67 = icmp eq i64 %64, %66, !dbg !781
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !781
  %69 = load i64, i64* %68, align 8, !dbg !781, !tbaa !786
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !781
  %71 = load i64, i64* %70, align 8, !dbg !781, !tbaa !786
  %72 = icmp eq i64 %69, %71, !dbg !781
  %73 = and i1 %67, %72, !dbg !781
  br i1 %73, label %75, label %74, !dbg !787

74:                                               ; preds = %54, %59, %62
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %56) #33, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #33, !dbg !788
  call void @llvm.dbg.value(metadata i8* %35, metadata !659, metadata !DIExpression()), !dbg !789
  br label %77, !dbg !790

75:                                               ; preds = %62
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %56) #33, !dbg !788
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %55) #33, !dbg !788
  call void @llvm.dbg.value(metadata i8* %35, metadata !659, metadata !DIExpression()), !dbg !789
  %76 = tail call i32 @puts(i8* noundef nonnull %35), !dbg !791
  br label %254

77:                                               ; preds = %47, %47, %43, %43, %34, %37, %74, %33
  %78 = tail call noalias i8* @xgetcwd() #33, !dbg !794
  call void @llvm.dbg.value(metadata i8* %78, metadata !662, metadata !DIExpression()), !dbg !672
  %79 = icmp eq i8* %78, null, !dbg !795
  br i1 %79, label %82, label %80, !dbg !796

80:                                               ; preds = %77
  %81 = tail call i32 @puts(i8* noundef nonnull %78), !dbg !797
  tail call void @free(i8* noundef nonnull %78) #33, !dbg !799
  br label %254, !dbg !800

82:                                               ; preds = %77
  %83 = tail call noalias nonnull i8* @xmalloc(i64 noundef 24) #38, !dbg !801
  %84 = bitcast i8* %83 to %struct.file_name*, !dbg !801
  call void @llvm.dbg.value(metadata %struct.file_name* %84, metadata !806, metadata !DIExpression()) #33, !dbg !809
  call void @llvm.dbg.value(metadata i32 8192, metadata !807, metadata !DIExpression()) #33, !dbg !809
  %85 = getelementptr inbounds i8, i8* %83, i64 8, !dbg !810
  %86 = bitcast i8* %85 to i64*, !dbg !810
  store i64 8192, i64* %86, align 8, !dbg !811, !tbaa !812
  %87 = tail call noalias nonnull i8* @xmalloc(i64 noundef 8192) #38, !dbg !814
  %88 = bitcast i8* %83 to i8**, !dbg !815
  store i8* %87, i8** %88, align 8, !dbg !816, !tbaa !817
  %89 = getelementptr inbounds i8, i8* %87, i64 8191, !dbg !818
  %90 = getelementptr inbounds i8, i8* %83, i64 16, !dbg !819
  %91 = bitcast i8* %90 to i8**, !dbg !819
  store i8* %89, i8** %91, align 8, !dbg !820, !tbaa !821
  store i8 0, i8* %89, align 1, !dbg !822, !tbaa !538
  call void @llvm.dbg.value(metadata %struct.file_name* %84, metadata !663, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata %struct.file_name* %84, metadata !824, metadata !DIExpression()) #33, !dbg !842
  call void @llvm.dbg.value(metadata i64 1, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %92 = bitcast %struct.timespec* %5 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #33, !dbg !844
  call void @llvm.dbg.declare(metadata %struct.timespec* %5, metadata !830, metadata !DIExpression()) #33, !dbg !845
  %93 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* noundef nonnull %5) #33, !dbg !846
  call void @llvm.dbg.value(metadata %struct.timespec* %93, metadata !839, metadata !DIExpression()) #33, !dbg !842
  %94 = icmp eq %struct.timespec* %93, null, !dbg !847
  br i1 %94, label %95, label %100, !dbg !849

95:                                               ; preds = %82
  %96 = tail call i32* @__errno_location() #36, !dbg !850
  %97 = load i32, i32* %96, align 4, !dbg !850, !tbaa !529
  %98 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.60, i64 0, i64 0), i32 noundef 5) #33, !dbg !850
  %99 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0)) #33, !dbg !850
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %97, i8* noundef %98, i8* noundef %99) #33, !dbg !850
  unreachable, !dbg !850

100:                                              ; preds = %82
  %101 = bitcast %struct.stat* %6 to i8*, !dbg !851
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %101) #33, !dbg !851
  call void @llvm.dbg.declare(metadata %struct.stat* %6, metadata !841, metadata !DIExpression()) #33, !dbg !852
  %102 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %6) #33, !dbg !853
  %103 = icmp slt i32 %102, 0, !dbg !855
  br i1 %103, label %122, label %104, !dbg !856

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %106 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i64 0, i32 1
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 1, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %109 = load i64, i64* %105, align 8, !dbg !857, !tbaa !782
  %110 = load i64, i64* %106, align 8, !dbg !857, !tbaa !860
  %111 = load i64, i64* %107, align 8, !dbg !857, !tbaa !786
  %112 = load i64, i64* %108, align 8, !dbg !857, !tbaa !862
  %113 = icmp eq i64 %109, %110, !dbg !857
  %114 = icmp eq i64 %111, %112, !dbg !857
  %115 = and i1 %113, %114, !dbg !857
  br i1 %115, label %244, label %116, !dbg !863

116:                                              ; preds = %104
  %117 = bitcast %struct.stat* %3 to i8*
  %118 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %119 = bitcast %struct.stat* %4 to i8*
  %120 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %121 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  br label %127, !dbg !863

122:                                              ; preds = %100
  %123 = tail call i32* @__errno_location() #36, !dbg !864
  %124 = load i32, i32* %123, align 4, !dbg !864, !tbaa !529
  %125 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #33, !dbg !864
  %126 = call i8* @quotearg_style(i32 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #33, !dbg !864
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %124, i8* noundef %125, i8* noundef %126) #33, !dbg !864
  unreachable, !dbg !864

127:                                              ; preds = %236, %116
  %128 = phi i64 [ %111, %116 ], [ %239, %236 ]
  %129 = phi i64 [ %109, %116 ], [ %237, %236 ]
  %130 = phi i64 [ 1, %116 ], [ %131, %236 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %131 = add i64 %130, 1, !dbg !865
  call void @llvm.dbg.value(metadata i64 %131, metadata !829, metadata !DIExpression()) #33, !dbg !842
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !866, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata %struct.file_name* %84, metadata !872, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata i64 %130, metadata !873, metadata !DIExpression()) #33, !dbg !902
  %132 = call %struct.__dirstream* @opendir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #33, !dbg !904
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !874, metadata !DIExpression()) #33, !dbg !902
  %133 = icmp eq %struct.__dirstream* %132, null, !dbg !905
  br i1 %133, label %134, label %140, !dbg !907

134:                                              ; preds = %127
  %135 = tail call i32* @__errno_location() #36, !dbg !908
  %136 = load i32, i32* %135, align 4, !dbg !908, !tbaa !529
  %137 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #33, !dbg !908
  %138 = call fastcc i8* @nth_parent(i64 noundef %130) #33, !dbg !908
  %139 = call i8* @quote(i8* noundef nonnull %138) #33, !dbg !908
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %136, i8* noundef %137, i8* noundef %139) #33, !dbg !908
  unreachable, !dbg !908

140:                                              ; preds = %127
  %141 = call i32 @dirfd(%struct.__dirstream* noundef nonnull %132) #33, !dbg !909
  call void @llvm.dbg.value(metadata i32 %141, metadata !879, metadata !DIExpression()) #33, !dbg !902
  %142 = icmp sgt i32 %141, -1, !dbg !910
  br i1 %142, label %143, label %146, !dbg !912

143:                                              ; preds = %140
  %144 = call i32 @fchdir(i32 noundef %141) #33, !dbg !913
  %145 = icmp slt i32 %144, 0, !dbg !914
  br i1 %145, label %149, label %155, !dbg !915

146:                                              ; preds = %140
  %147 = call i32 @chdir(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0)) #33, !dbg !916
  %148 = icmp slt i32 %147, 0, !dbg !914
  br i1 %148, label %149, label %157, !dbg !915

149:                                              ; preds = %146, %143
  %150 = tail call i32* @__errno_location() #36, !dbg !917
  %151 = load i32, i32* %150, align 4, !dbg !917, !tbaa !529
  %152 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #33, !dbg !917
  %153 = call fastcc i8* @nth_parent(i64 noundef %130) #33, !dbg !917
  %154 = call i8* @quote(i8* noundef nonnull %153) #33, !dbg !917
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %151, i8* noundef %152, i8* noundef %154) #33, !dbg !917
  unreachable, !dbg !917

155:                                              ; preds = %143
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %117) #33, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !880, metadata !DIExpression()) #33, !dbg !919
  %156 = call i32 @fstat(i32 noundef %141, %struct.stat* noundef nonnull %3) #33, !dbg !920
  br label %159, !dbg !922

157:                                              ; preds = %146
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %117) #33, !dbg !918
  call void @llvm.dbg.declare(metadata %struct.stat* %3, metadata !880, metadata !DIExpression()) #33, !dbg !919
  %158 = call i32 @stat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0), %struct.stat* noundef nonnull %3) #33, !dbg !923
  br label %159, !dbg !922

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ], !dbg !922
  %161 = icmp slt i32 %160, 0, !dbg !924
  br i1 %161, label %162, label %168, !dbg !925

162:                                              ; preds = %159
  %163 = tail call i32* @__errno_location() #36, !dbg !926
  %164 = load i32, i32* %163, align 4, !dbg !926, !tbaa !529
  %165 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i64 0, i64 0), i32 noundef 5) #33, !dbg !926
  %166 = call fastcc i8* @nth_parent(i64 noundef %130) #33, !dbg !926
  %167 = call i8* @quote(i8* noundef nonnull %166) #33, !dbg !926
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %164, i8* noundef %165, i8* noundef %167) #33, !dbg !926
  unreachable, !dbg !926

168:                                              ; preds = %159
  %169 = load i64, i64* %118, align 8, !dbg !927, !tbaa !782
  %170 = icmp eq i64 %169, %129, !dbg !928
  call void @llvm.dbg.value(metadata i1 %170, metadata !881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #33, !dbg !902
  call void @llvm.dbg.value(metadata i8 0, metadata !882, metadata !DIExpression()) #33, !dbg !902
  %171 = tail call i32* @__errno_location() #36, !dbg !902
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !874, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  store i32 0, i32* %171, align 4, !dbg !929, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !930, metadata !DIExpression()) #33, !dbg !937
  %172 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %132) #33, !dbg !939
  call void @llvm.dbg.value(metadata %struct.dirent* %172, metadata !935, metadata !DIExpression()) #33, !dbg !940
  %173 = icmp eq %struct.dirent* %172, null, !dbg !941
  br i1 %173, label %193, label %174, !dbg !943

174:                                              ; preds = %168
  %175 = xor i1 %170, true
  br label %176, !dbg !943

176:                                              ; preds = %191, %174
  %177 = phi %struct.dirent* [ %172, %174 ], [ %192, %191 ]
  %178 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 0, !dbg !944
  call void @llvm.dbg.value(metadata i8* %178, metadata !945, metadata !DIExpression()) #33, !dbg !953
  %179 = load i8, i8* %178, align 1, !dbg !955, !tbaa !538
  %180 = icmp eq i8 %179, 46, !dbg !956
  br i1 %180, label %181, label %198, !dbg !957

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 1, !dbg !958
  %183 = load i8, i8* %182, align 1, !dbg !958, !tbaa !538
  %184 = icmp eq i8 %183, 46, !dbg !959
  %185 = select i1 %184, i64 2, i64 1, !dbg !960
  %186 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 %185, !dbg !961
  %187 = load i8, i8* %186, align 1, !dbg !961, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %187, metadata !950, metadata !DIExpression()) #33, !dbg !962
  switch i8 %187, label %198 [
    i8 47, label %188
    i8 0, label %188
  ], !dbg !963

188:                                              ; preds = %181, %181
  %189 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %132) #33, !dbg !939
  call void @llvm.dbg.value(metadata %struct.dirent* %189, metadata !935, metadata !DIExpression()) #33, !dbg !940
  %190 = icmp eq %struct.dirent* %189, null, !dbg !941
  br i1 %190, label %193, label %191, !dbg !943

191:                                              ; preds = %188, %216
  %192 = phi %struct.dirent* [ %189, %188 ], [ %217, %216 ]
  br label %176, !dbg !944

193:                                              ; preds = %168, %216, %188
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !883, metadata !DIExpression()) #33, !dbg !964
  %194 = load i32, i32* %171, align 4, !dbg !965, !tbaa !529
  %195 = icmp eq i32 %194, 0, !dbg !965
  %196 = call i32 @closedir(%struct.__dirstream* noundef nonnull %132) #33, !dbg !902
  br i1 %195, label %223, label %197, !dbg !966

197:                                              ; preds = %193
  call void @llvm.dbg.value(metadata i32 %194, metadata !895, metadata !DIExpression()) #33, !dbg !967
  store i32 %194, i32* %171, align 4, !dbg !968, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, metadata !874, metadata !DIExpression()) #33, !dbg !902
  br label %227, !dbg !969

198:                                              ; preds = %181, %176
  %199 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 4, i64 0, !dbg !944
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !883, metadata !DIExpression()) #33, !dbg !964
  %200 = getelementptr inbounds %struct.dirent, %struct.dirent* %177, i64 0, i32 0, !dbg !971
  %201 = load i64, i64* %200, align 8, !dbg !971, !tbaa !972
  call void @llvm.dbg.value(metadata i64 %201, metadata !900, metadata !DIExpression()) #33, !dbg !964
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %119) #33, !dbg !974
  call void @llvm.dbg.declare(metadata %struct.stat* %4, metadata !901, metadata !DIExpression()) #33, !dbg !975
  %202 = icmp eq i64 %201, 0, !dbg !976
  %203 = select i1 %202, i1 true, i1 %175, !dbg !978
  br i1 %203, label %204, label %209, !dbg !978

204:                                              ; preds = %198
  %205 = call i32 @lstat(i8* noundef nonnull %199, %struct.stat* noundef nonnull %4) #33, !dbg !979
  %206 = icmp slt i32 %205, 0, !dbg !982
  br i1 %206, label %216, label %207, !dbg !983, !llvm.loop !984

207:                                              ; preds = %204
  %208 = load i64, i64* %120, align 8, !dbg !987, !tbaa !786
  call void @llvm.dbg.value(metadata i64 %208, metadata !900, metadata !DIExpression()) #33, !dbg !964
  br label %209, !dbg !988

209:                                              ; preds = %207, %198
  %210 = phi i64 [ %208, %207 ], [ %201, %198 ], !dbg !964
  call void @llvm.dbg.value(metadata i64 %210, metadata !900, metadata !DIExpression()) #33, !dbg !964
  %211 = icmp eq i64 %210, %128, !dbg !989
  br i1 %211, label %212, label %216, !dbg !991, !llvm.loop !992

212:                                              ; preds = %209
  %213 = load i64, i64* %121, align 8
  %214 = icmp eq i64 %213, %129
  %215 = select i1 %170, i1 true, i1 %214, !dbg !993
  br i1 %215, label %219, label %216, !dbg !993

216:                                              ; preds = %212, %209, %204
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %119) #33, !dbg !986
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !874, metadata !DIExpression()) #33, !dbg !902
  store i32 0, i32* %171, align 4, !dbg !929, !tbaa !529
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !930, metadata !DIExpression()) #33, !dbg !937
  %217 = call %struct.dirent* @readdir(%struct.__dirstream* noundef nonnull %132) #33, !dbg !939
  call void @llvm.dbg.value(metadata %struct.dirent* %217, metadata !935, metadata !DIExpression()) #33, !dbg !940
  %218 = icmp eq %struct.dirent* %217, null, !dbg !941
  br i1 %218, label %193, label %191, !dbg !943

219:                                              ; preds = %212
  %220 = call i64 @strlen(i8* noundef nonnull %199) #34, !dbg !995
  call fastcc void @file_name_prepend(%struct.file_name* noundef nonnull %84, i8* noundef nonnull %199, i64 noundef %220) #33, !dbg !997
  call void @llvm.dbg.value(metadata i8 poison, metadata !882, metadata !DIExpression()) #33, !dbg !902
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %119) #33, !dbg !986
  call void @llvm.dbg.value(metadata %struct.__dirstream* %132, metadata !874, metadata !DIExpression()) #33, !dbg !902
  %221 = call i32 @closedir(%struct.__dirstream* noundef nonnull %132) #33, !dbg !998
  %222 = icmp eq i32 %221, 0, !dbg !999
  br i1 %222, label %236, label %225, !dbg !1000

223:                                              ; preds = %193
  %224 = icmp eq i32 %196, 0, !dbg !999
  br i1 %224, label %232, label %225, !dbg !1000

225:                                              ; preds = %219, %223
  %226 = load i32, i32* %171, align 4, !dbg !1001, !tbaa !529
  br label %227, !dbg !1000

227:                                              ; preds = %225, %197
  %228 = phi i32 [ %226, %225 ], [ %194, %197 ], !dbg !1001
  %229 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #33, !dbg !1001
  %230 = call fastcc i8* @nth_parent(i64 noundef %130) #33, !dbg !1001
  %231 = call i8* @quote(i8* noundef nonnull %230) #33, !dbg !1001
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %228, i8* noundef %229, i8* noundef %231) #33, !dbg !1001
  unreachable, !dbg !1001

232:                                              ; preds = %223
  %233 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #33, !dbg !1003
  %234 = call fastcc i8* @nth_parent(i64 noundef %130) #33, !dbg !1003
  %235 = call i8* @quote(i8* noundef nonnull %234) #33, !dbg !1003
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %233, i8* noundef %235) #33, !dbg !1003
  unreachable, !dbg !1003

236:                                              ; preds = %219
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128) %101, i8* noundef nonnull align 8 dereferenceable(128) %117, i64 128, i1 false) #33, !dbg !1005, !tbaa.struct !1006
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %117) #33, !dbg !1008
  call void @llvm.dbg.value(metadata i64 %131, metadata !829, metadata !DIExpression()) #33, !dbg !842
  %237 = load i64, i64* %105, align 8, !dbg !857, !tbaa !782
  %238 = load i64, i64* %106, align 8, !dbg !857, !tbaa !860
  %239 = load i64, i64* %107, align 8, !dbg !857, !tbaa !786
  %240 = load i64, i64* %108, align 8, !dbg !857, !tbaa !862
  %241 = icmp eq i64 %237, %238, !dbg !857
  %242 = icmp eq i64 %239, %240, !dbg !857
  %243 = and i1 %241, %242, !dbg !857
  br i1 %243, label %244, label %127, !dbg !863, !llvm.loop !1009

244:                                              ; preds = %236, %104
  %245 = load i8*, i8** %91, align 8, !dbg !1012, !tbaa !821
  %246 = load i8, i8* %245, align 1, !dbg !1014, !tbaa !538
  %247 = icmp eq i8 %246, 0, !dbg !1015
  br i1 %247, label %248, label %250, !dbg !1016

248:                                              ; preds = %244
  call fastcc void @file_name_prepend(%struct.file_name* noundef nonnull %84, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), i64 noundef 0) #33, !dbg !1017
  %249 = load i8*, i8** %91, align 8, !dbg !1018, !tbaa !821
  br label %250, !dbg !1017

250:                                              ; preds = %244, %248
  %251 = phi i8* [ %245, %244 ], [ %249, %248 ], !dbg !1018
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %101) #33, !dbg !1019
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #33, !dbg !1019
  %252 = call i32 @puts(i8* noundef nonnull dereferenceable(1) %251), !dbg !1020
  call void @llvm.dbg.value(metadata %struct.file_name* %84, metadata !1021, metadata !DIExpression()) #33, !dbg !1024
  %253 = load i8*, i8** %88, align 8, !dbg !1026, !tbaa !817
  call void @free(i8* noundef %253) #33, !dbg !1027
  call void @free(i8* noundef nonnull %83) #33, !dbg !1028
  br label %254

254:                                              ; preds = %75, %80, %250
  ret i32 0, !dbg !1029
}

; Function Attrs: nounwind
declare !dbg !1030 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1033 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1034 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1037 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strstr(i8* noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !1043 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1048 noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare !dbg !1051 noalias noundef %struct.__dirstream* @opendir(i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc nonnull i8* @nth_parent(i64 noundef %0) unnamed_addr #12 !dbg !1054 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1058, metadata !DIExpression()), !dbg !1063
  %2 = tail call noalias nonnull i8* @xnmalloc(i64 noundef 3, i64 noundef %0) #39, !dbg !1064
  call void @llvm.dbg.value(metadata i8* %2, metadata !1059, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %2, metadata !1060, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i64 0, metadata !1061, metadata !DIExpression()), !dbg !1065
  %3 = icmp eq i64 %0, 0, !dbg !1066
  br i1 %3, label %4, label %7, !dbg !1068

4:                                                ; preds = %7, %1
  %5 = phi i8* [ %2, %1 ], [ %10, %7 ], !dbg !1063
  %6 = getelementptr inbounds i8, i8* %5, i64 -1, !dbg !1069
  store i8 0, i8* %6, align 1, !dbg !1070, !tbaa !538
  ret i8* %2, !dbg !1071

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %11, %7 ], [ 0, %1 ]
  %9 = phi i8* [ %10, %7 ], [ %2, %1 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !1061, metadata !DIExpression()), !dbg !1065
  call void @llvm.dbg.value(metadata i8* %9, metadata !1060, metadata !DIExpression()), !dbg !1063
  call void @llvm.dbg.value(metadata i8* %9, metadata !1072, metadata !DIExpression()) #33, !dbg !1081
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), metadata !1079, metadata !DIExpression()) #33, !dbg !1081
  call void @llvm.dbg.value(metadata i64 3, metadata !1080, metadata !DIExpression()) #33, !dbg !1081
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 dereferenceable(3) %9, i8* noundef nonnull align 1 dereferenceable(3) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i64 0, i64 0), i64 noundef 3, i1 noundef false) #33, !dbg !1084
  %10 = getelementptr inbounds i8, i8* %9, i64 3, !dbg !1085
  call void @llvm.dbg.value(metadata i8* %10, metadata !1060, metadata !DIExpression()), !dbg !1063
  %11 = add nuw i64 %8, 1, !dbg !1086
  call void @llvm.dbg.value(metadata i64 %11, metadata !1061, metadata !DIExpression()), !dbg !1065
  %12 = icmp eq i64 %11, %0, !dbg !1066
  br i1 %12, label %4, label %7, !dbg !1068, !llvm.loop !1087
}

; Function Attrs: nounwind
declare !dbg !1089 i32 @dirfd(%struct.__dirstream* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1092 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1096 i32 @chdir(i8* noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !1097 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

declare !dbg !1100 %struct.dirent* @readdir(%struct.__dirstream* noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1104 noundef i32 @closedir(%struct.__dirstream* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !1105 noundef i32 @lstat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @file_name_prepend(%struct.file_name* noundef %0, i8* nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #12 !dbg !1106 {
  call void @llvm.dbg.value(metadata %struct.file_name* %0, metadata !1110, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i8* %1, metadata !1111, metadata !DIExpression()), !dbg !1118
  call void @llvm.dbg.value(metadata i64 %2, metadata !1112, metadata !DIExpression()), !dbg !1118
  %4 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 2, !dbg !1119
  %5 = load i8*, i8** %4, align 8, !dbg !1119, !tbaa !821
  %6 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 0, !dbg !1120
  %7 = load i8*, i8** %6, align 8, !dbg !1120, !tbaa !817
  %8 = ptrtoint i8* %5 to i64, !dbg !1121
  %9 = ptrtoint i8* %7 to i64, !dbg !1121
  %10 = sub i64 %8, %9, !dbg !1121
  call void @llvm.dbg.value(metadata i64 %10, metadata !1113, metadata !DIExpression()), !dbg !1118
  %11 = add i64 %2, 1, !dbg !1122
  %12 = icmp ugt i64 %11, %10, !dbg !1123
  br i1 %12, label %13, label %26, !dbg !1124

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.file_name, %struct.file_name* %0, i64 0, i32 1, !dbg !1125
  %15 = load i64, i64* %14, align 8, !dbg !1125, !tbaa !812
  %16 = sub nsw i64 %15, %10, !dbg !1126
  call void @llvm.dbg.value(metadata i64 %16, metadata !1114, metadata !DIExpression()), !dbg !1127
  %17 = sub i64 %11, %10, !dbg !1128
  %18 = tail call nonnull i8* @xpalloc(i8* noundef null, i64* noundef nonnull %14, i64 noundef %17, i64 noundef -1, i64 noundef 1) #33, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %18, metadata !1117, metadata !DIExpression()), !dbg !1127
  %19 = load i64, i64* %14, align 8, !dbg !1130, !tbaa !812
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1131
  %21 = sub i64 0, %16, !dbg !1132
  %22 = getelementptr inbounds i8, i8* %20, i64 %21, !dbg !1132
  %23 = load i8*, i8** %4, align 8, !dbg !1133, !tbaa !821
  call void @llvm.dbg.value(metadata i8* %22, metadata !1072, metadata !DIExpression()) #33, !dbg !1134
  call void @llvm.dbg.value(metadata i8* %23, metadata !1079, metadata !DIExpression()) #33, !dbg !1134
  call void @llvm.dbg.value(metadata i64 %16, metadata !1080, metadata !DIExpression()) #33, !dbg !1134
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %22, i8* noundef nonnull align 1 %23, i64 noundef %16, i1 noundef false) #33, !dbg !1136
  store i8* %22, i8** %4, align 8, !dbg !1137, !tbaa !821
  %24 = load i8*, i8** %6, align 8, !dbg !1138, !tbaa !817
  tail call void @free(i8* noundef %24) #33, !dbg !1139
  store i8* %18, i8** %6, align 8, !dbg !1140, !tbaa !817
  %25 = load i8*, i8** %4, align 8, !dbg !1141, !tbaa !821
  br label %26, !dbg !1142

26:                                               ; preds = %13, %3
  %27 = phi i8* [ %25, %13 ], [ %5, %3 ], !dbg !1141
  %28 = xor i64 %2, -1, !dbg !1141
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !1141
  store i8* %29, i8** %4, align 8, !dbg !1141, !tbaa !821
  store i8 47, i8* %29, align 1, !dbg !1143, !tbaa !538
  %30 = load i8*, i8** %4, align 8, !dbg !1144, !tbaa !821
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1145
  call void @llvm.dbg.value(metadata i8* %31, metadata !1072, metadata !DIExpression()) #33, !dbg !1146
  call void @llvm.dbg.value(metadata i8* %1, metadata !1079, metadata !DIExpression()) #33, !dbg !1146
  call void @llvm.dbg.value(metadata i64 %2, metadata !1080, metadata !DIExpression()) #33, !dbg !1146
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %31, i8* noundef nonnull align 1 %1, i64 noundef %2, i1 noundef false) #33, !dbg !1148
  ret void, !dbg !1149
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !1150 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1152, metadata !DIExpression()), !dbg !1153
  store i8* %0, i8** @file_name, align 8, !dbg !1154, !tbaa !439
  ret void, !dbg !1155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !1156 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1160, metadata !DIExpression()), !dbg !1161
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1162, !tbaa !1163
  ret void, !dbg !1165
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1166 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !439
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !1172
  %3 = icmp eq i32 %2, 0, !dbg !1173
  br i1 %3, label %22, label %4, !dbg !1174

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1175, !tbaa !1163, !range !1176
  %6 = icmp eq i8 %5, 0, !dbg !1175
  br i1 %6, label %11, label %7, !dbg !1177

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !1178
  %9 = load i32, i32* %8, align 4, !dbg !1178, !tbaa !529
  %10 = icmp eq i32 %9, 32, !dbg !1179
  br i1 %10, label %22, label %11, !dbg !1180

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.27, i64 0, i64 0), i32 noundef 5) #33, !dbg !1181
  call void @llvm.dbg.value(metadata i8* %12, metadata !1168, metadata !DIExpression()), !dbg !1182
  %13 = load i8*, i8** @file_name, align 8, !dbg !1183, !tbaa !439
  %14 = icmp eq i8* %13, null, !dbg !1183
  %15 = tail call i32* @__errno_location() #36, !dbg !1185
  %16 = load i32, i32* %15, align 4, !dbg !1185, !tbaa !529
  br i1 %14, label %19, label %17, !dbg !1186

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !1187
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.28, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !1187
  br label %20, !dbg !1187

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.29, i64 0, i64 0), i8* noundef %12) #33, !dbg !1188
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1189, !tbaa !529
  tail call void @_exit(i32 noundef %21) #35, !dbg !1190
  unreachable, !dbg !1190

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1191, !tbaa !439
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !1193
  %25 = icmp eq i32 %24, 0, !dbg !1194
  br i1 %25, label %28, label %26, !dbg !1195

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1196, !tbaa !529
  tail call void @_exit(i32 noundef %27) #35, !dbg !1197
  unreachable, !dbg !1197

28:                                               ; preds = %22
  ret void, !dbg !1198
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !1199 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1203, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i32 %1, metadata !1204, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.value(metadata i8* %2, metadata !1205, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1206, metadata !DIExpression()), !dbg !1208
  tail call fastcc void @flush_stdout(), !dbg !1209
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1210, !tbaa !439
  %7 = icmp eq void ()* %6, null, !dbg !1210
  br i1 %7, label %9, label %8, !dbg !1212

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !1213
  br label %13, !dbg !1213

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1214, !tbaa !439
  %11 = tail call i8* @getprogname() #34, !dbg !1214
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), i8* noundef %11) #33, !dbg !1214
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1216
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1216
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1216
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1216, !tbaa.struct !1217
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1216
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !1216
  ret void, !dbg !1218
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1219 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i32 1, metadata !1223, metadata !DIExpression()) #33, !dbg !1226
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !1229
  %2 = icmp slt i32 %1, 0, !dbg !1230
  br i1 %2, label %6, label %3, !dbg !1231

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1232, !tbaa !439
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !1232
  br label %6, !dbg !1232

6:                                                ; preds = %3, %0
  ret void, !dbg !1233
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1234 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1236, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i32 %1, metadata !1237, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %2, metadata !1238, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1239, metadata !DIExpression()), !dbg !1241
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1242, !tbaa !439
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1243
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1244, metadata !DIExpression()) #33, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %2, metadata !1285, metadata !DIExpression()) #33, !dbg !1287
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1289, !noalias !1290
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1289
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !1289
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1289, !noalias !1290
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1294, !tbaa !529
  %12 = add i32 %11, 1, !dbg !1294
  store i32 %12, i32* @error_message_count, align 4, !dbg !1294, !tbaa !529
  %13 = icmp eq i32 %1, 0, !dbg !1295
  br i1 %13, label %24, label %14, !dbg !1297

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1298, metadata !DIExpression()) #33, !dbg !1306
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1308
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1308
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1302, metadata !DIExpression()) #33, !dbg !1309
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %16, metadata !1301, metadata !DIExpression()) #33, !dbg !1306
  %17 = icmp eq i8* %16, null, !dbg !1311
  br i1 %17, label %18, label %20, !dbg !1313

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.32, i64 0, i64 0), i32 noundef 5) #33, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %19, metadata !1301, metadata !DIExpression()) #33, !dbg !1306
  br label %20, !dbg !1315

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1306
  call void @llvm.dbg.value(metadata i8* %21, metadata !1301, metadata !DIExpression()) #33, !dbg !1306
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1316, !tbaa !439
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.33, i64 0, i64 0), i8* noundef %21) #33, !dbg !1316
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !1317
  br label %24, !dbg !1318

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1319, !tbaa !439
  call void @llvm.dbg.value(metadata i32 10, metadata !1320, metadata !DIExpression()) #33, !dbg !1327
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1326, metadata !DIExpression()) #33, !dbg !1327
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1329
  %27 = load i8*, i8** %26, align 8, !dbg !1329, !tbaa !1330
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1329
  %29 = load i8*, i8** %28, align 8, !dbg !1329, !tbaa !1332
  %30 = icmp ult i8* %27, %29, !dbg !1329
  br i1 %30, label %33, label %31, !dbg !1329, !prof !1333

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !1329
  br label %35, !dbg !1329

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1329
  store i8* %34, i8** %26, align 8, !dbg !1329, !tbaa !1330
  store i8 10, i8* %27, align 1, !dbg !1329, !tbaa !538
  br label %35, !dbg !1329

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1334, !tbaa !439
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !1334
  %38 = icmp eq i32 %0, 0, !dbg !1335
  br i1 %38, label %40, label %39, !dbg !1337

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !1338
  unreachable, !dbg !1338

40:                                               ; preds = %35
  ret void, !dbg !1339
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1340 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1344 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1347 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1351 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1355, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i32 %1, metadata !1356, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %2, metadata !1357, metadata !DIExpression()), !dbg !1359
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1360
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1360
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1358, metadata !DIExpression()), !dbg !1361
  call void @llvm.va_start(i8* nonnull %6), !dbg !1362
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1363
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1363
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1363, !tbaa.struct !1217
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1363
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1363
  call void @llvm.va_end(i8* nonnull %6), !dbg !1364
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1365
  ret void, !dbg !1365
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !170 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !188, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i32 %1, metadata !189, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i32 %3, metadata !191, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.value(metadata i8* %4, metadata !192, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !193, metadata !DIExpression()), !dbg !1367
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1368, !tbaa !529
  %9 = icmp eq i32 %8, 0, !dbg !1368
  br i1 %9, label %24, label %10, !dbg !1370

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1371, !tbaa !529
  %12 = icmp eq i32 %11, %3, !dbg !1374
  br i1 %12, label %13, label %23, !dbg !1375

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1376, !tbaa !439
  %15 = icmp eq i8* %14, %2, !dbg !1377
  br i1 %15, label %39, label %16, !dbg !1378

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1379
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1380
  br i1 %19, label %20, label %23, !dbg !1380

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1381
  %22 = icmp eq i32 %21, 0, !dbg !1382
  br i1 %22, label %39, label %23, !dbg !1383

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1384, !tbaa !439
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1385, !tbaa !529
  br label %24, !dbg !1386

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1387
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1388, !tbaa !439
  %26 = icmp eq void ()* %25, null, !dbg !1388
  br i1 %26, label %28, label %27, !dbg !1390

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1391
  br label %32, !dbg !1391

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1392, !tbaa !439
  %30 = tail call i8* @getprogname() #34, !dbg !1392
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.36, i64 0, i64 0), i8* noundef %30) #33, !dbg !1392
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1394, !tbaa !439
  %34 = icmp eq i8* %2, null, !dbg !1394
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.37, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.38, i64 0, i64 0), !dbg !1394
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1394
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1395
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1395
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1395
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1395, !tbaa.struct !1217
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1395
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1395
  br label %39, !dbg !1396

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1396
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1397 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1401, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %1, metadata !1402, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %2, metadata !1403, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i32 %3, metadata !1404, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.value(metadata i8* %4, metadata !1405, metadata !DIExpression()), !dbg !1407
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1408
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1408
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1406, metadata !DIExpression()), !dbg !1409
  call void @llvm.va_start(i8* nonnull %8), !dbg !1410
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1411
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1411
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1411, !tbaa.struct !1217
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1411
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1411
  call void @llvm.va_end(i8* nonnull %8), !dbg !1412
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1413
  ret void, !dbg !1413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1414 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1415, !tbaa !439
  ret i8* %1, !dbg !1416
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1417 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1419, metadata !DIExpression()), !dbg !1422
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1423
  call void @llvm.dbg.value(metadata i8* %2, metadata !1420, metadata !DIExpression()), !dbg !1422
  %3 = icmp eq i8* %2, null, !dbg !1424
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1424
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1424
  call void @llvm.dbg.value(metadata i8* %5, metadata !1421, metadata !DIExpression()), !dbg !1422
  %6 = ptrtoint i8* %5 to i64, !dbg !1425
  %7 = ptrtoint i8* %0 to i64, !dbg !1425
  %8 = sub i64 %6, %7, !dbg !1425
  %9 = icmp sgt i64 %8, 6, !dbg !1427
  br i1 %9, label %10, label %19, !dbg !1428

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1429
  call void @llvm.dbg.value(metadata i8* %11, metadata !1430, metadata !DIExpression()) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), metadata !1435, metadata !DIExpression()) #33, !dbg !1437
  call void @llvm.dbg.value(metadata i64 7, metadata !1436, metadata !DIExpression()) #33, !dbg !1437
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i64 7) #33, !dbg !1439
  %13 = icmp eq i32 %12, 0, !dbg !1440
  br i1 %13, label %14, label %19, !dbg !1441

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1419, metadata !DIExpression()), !dbg !1422
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.70, i64 0, i64 0), i64 noundef 3) #34, !dbg !1442
  %16 = icmp eq i32 %15, 0, !dbg !1445
  %17 = select i1 %16, i64 3, i64 0, !dbg !1446
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1446
  br label %19, !dbg !1446

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1422
  call void @llvm.dbg.value(metadata i8* %21, metadata !1421, metadata !DIExpression()), !dbg !1422
  call void @llvm.dbg.value(metadata i8* %20, metadata !1419, metadata !DIExpression()), !dbg !1422
  store i8* %20, i8** @program_name, align 8, !dbg !1447, !tbaa !439
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1448, !tbaa !439
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1449, !tbaa !439
  ret void, !dbg !1450
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !211 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !218, metadata !DIExpression()), !dbg !1451
  call void @llvm.dbg.value(metadata i8* %1, metadata !219, metadata !DIExpression()), !dbg !1451
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1452
  call void @llvm.dbg.value(metadata i8* %5, metadata !220, metadata !DIExpression()), !dbg !1451
  %6 = icmp eq i8* %5, %0, !dbg !1453
  br i1 %6, label %7, label %17, !dbg !1455

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1456
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1456
  %10 = bitcast i64* %4 to i8*, !dbg !1457
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1457
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !226, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1459, metadata !DIExpression()) #33, !dbg !1466
  call void @llvm.dbg.value(metadata i8* %10, metadata !1468, metadata !DIExpression()) #33, !dbg !1475
  call void @llvm.dbg.value(metadata i32 0, metadata !1473, metadata !DIExpression()) #33, !dbg !1475
  call void @llvm.dbg.value(metadata i64 8, metadata !1474, metadata !DIExpression()) #33, !dbg !1475
  store i64 0, i64* %4, align 8, !dbg !1477
  call void @llvm.dbg.value(metadata i32* %3, metadata !221, metadata !DIExpression(DW_OP_deref)), !dbg !1451
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1478
  %12 = icmp eq i64 %11, 2, !dbg !1480
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !221, metadata !DIExpression()), !dbg !1451
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1481
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1451
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1482
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1482
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1451
  ret i8* %18, !dbg !1482
}

; Function Attrs: nounwind
declare !dbg !1483 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1489 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1494, metadata !DIExpression()), !dbg !1497
  %2 = tail call i32* @__errno_location() #36, !dbg !1498
  %3 = load i32, i32* %2, align 4, !dbg !1498, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %3, metadata !1495, metadata !DIExpression()), !dbg !1497
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1499
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1499
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1499
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #41, !dbg !1500
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1500
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1496, metadata !DIExpression()), !dbg !1497
  store i32 %3, i32* %2, align 4, !dbg !1501, !tbaa !529
  ret %struct.quoting_options* %8, !dbg !1502
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1503 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1509, metadata !DIExpression()), !dbg !1510
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1511
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1511
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1512
  %5 = load i32, i32* %4, align 8, !dbg !1512, !tbaa !1513
  ret i32 %5, !dbg !1515
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1516 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1520, metadata !DIExpression()), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1522
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1523
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1523
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1524
  store i32 %1, i32* %5, align 8, !dbg !1525, !tbaa !1513
  ret void, !dbg !1526
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1527 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1531, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %2, metadata !1533, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 %1, metadata !1534, metadata !DIExpression()), !dbg !1539
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1540
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1540
  %6 = lshr i8 %1, 5, !dbg !1541
  %7 = zext i8 %6 to i64, !dbg !1541
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1542
  call void @llvm.dbg.value(metadata i32* %8, metadata !1535, metadata !DIExpression()), !dbg !1539
  %9 = and i8 %1, 31, !dbg !1543
  %10 = zext i8 %9 to i32, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %10, metadata !1537, metadata !DIExpression()), !dbg !1539
  %11 = load i32, i32* %8, align 4, !dbg !1544, !tbaa !529
  %12 = lshr i32 %11, %10, !dbg !1545
  %13 = and i32 %12, 1, !dbg !1546
  call void @llvm.dbg.value(metadata i32 %13, metadata !1538, metadata !DIExpression()), !dbg !1539
  %14 = and i32 %2, 1, !dbg !1547
  %15 = xor i32 %13, %14, !dbg !1548
  %16 = shl i32 %15, %10, !dbg !1549
  %17 = xor i32 %16, %11, !dbg !1550
  store i32 %17, i32* %8, align 4, !dbg !1550, !tbaa !529
  ret i32 %13, !dbg !1551
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1552 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1556, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 %1, metadata !1557, metadata !DIExpression()), !dbg !1559
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1560
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1562
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1556, metadata !DIExpression()), !dbg !1559
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1563
  %6 = load i32, i32* %5, align 4, !dbg !1563, !tbaa !1564
  call void @llvm.dbg.value(metadata i32 %6, metadata !1558, metadata !DIExpression()), !dbg !1559
  store i32 %1, i32* %5, align 4, !dbg !1565, !tbaa !1564
  ret i32 %6, !dbg !1566
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1567 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1571, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()), !dbg !1574
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()), !dbg !1574
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1575
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()), !dbg !1574
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1578
  store i32 10, i32* %6, align 8, !dbg !1579, !tbaa !1513
  %7 = icmp ne i8* %1, null, !dbg !1580
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1582
  br i1 %9, label %11, label %10, !dbg !1582

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1583
  unreachable, !dbg !1583

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1584
  store i8* %1, i8** %12, align 8, !dbg !1585, !tbaa !1586
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1587
  store i8* %2, i8** %13, align 8, !dbg !1588, !tbaa !1589
  ret void, !dbg !1590
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1595, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %1, metadata !1596, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8* %2, metadata !1597, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i64 %3, metadata !1598, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1599, metadata !DIExpression()), !dbg !1603
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1604
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1604
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1600, metadata !DIExpression()), !dbg !1603
  %8 = tail call i32* @__errno_location() #36, !dbg !1605
  %9 = load i32, i32* %8, align 4, !dbg !1605, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %9, metadata !1601, metadata !DIExpression()), !dbg !1603
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1606
  %11 = load i32, i32* %10, align 8, !dbg !1606, !tbaa !1513
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1607
  %13 = load i32, i32* %12, align 4, !dbg !1607, !tbaa !1564
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1608
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1609
  %16 = load i8*, i8** %15, align 8, !dbg !1609, !tbaa !1586
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1610
  %18 = load i8*, i8** %17, align 8, !dbg !1610, !tbaa !1589
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1611
  call void @llvm.dbg.value(metadata i64 %19, metadata !1602, metadata !DIExpression()), !dbg !1603
  store i32 %9, i32* %8, align 4, !dbg !1612, !tbaa !529
  ret i64 %19, !dbg !1613
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1614 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1620, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %1, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %2, metadata !1622, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %3, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %4, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %5, metadata !1625, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32* %6, metadata !1626, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %7, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %8, metadata !1628, metadata !DIExpression()), !dbg !1682
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1683
  %18 = icmp eq i64 %17, 1, !dbg !1684
  call void @llvm.dbg.value(metadata i1 %18, metadata !1629, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* null, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %5, metadata !1635, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1637, metadata !DIExpression()), !dbg !1682
  %19 = and i32 %5, 2, !dbg !1685
  %20 = icmp ne i32 %19, 0, !dbg !1685
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
  br label %36, !dbg !1685

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1686
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1687
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1688
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %43, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %42, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %41, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %40, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %39, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %38, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %37, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1675), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
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
  ], !dbg !1690

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 5, metadata !1624, metadata !DIExpression()), !dbg !1682
  br label %111, !dbg !1691

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 5, metadata !1624, metadata !DIExpression()), !dbg !1682
  br i1 %45, label %111, label %51, !dbg !1691

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1692
  br i1 %52, label %111, label %53, !dbg !1696

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1692, !tbaa !538
  br label %111, !dbg !1692

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), metadata !288, metadata !DIExpression()) #33, !dbg !1697
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #33, !dbg !1697
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), i32 noundef 5) #33, !dbg !1701
  call void @llvm.dbg.value(metadata i8* %55, metadata !290, metadata !DIExpression()) #33, !dbg !1697
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.83, i64 0, i64 0), !dbg !1702
  br i1 %56, label %57, label %66, !dbg !1704

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1705
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1706
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !292, metadata !DIExpression()) #33, !dbg !1707
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1708, metadata !DIExpression()) #33, !dbg !1714
  call void @llvm.dbg.value(metadata i8* %23, metadata !1716, metadata !DIExpression()) #33, !dbg !1721
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()) #33, !dbg !1721
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()) #33, !dbg !1721
  store i64 0, i64* %13, align 8, !dbg !1723
  call void @llvm.dbg.value(metadata i32* %12, metadata !291, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1697
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1724
  %59 = icmp eq i64 %58, 3, !dbg !1726
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !291, metadata !DIExpression()) #33, !dbg !1697
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1727
  %63 = icmp eq i32 %37, 9, !dbg !1727
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1727
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1727
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1728
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1728
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1697
  call void @llvm.dbg.value(metadata i8* %67, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), metadata !288, metadata !DIExpression()) #33, !dbg !1729
  call void @llvm.dbg.value(metadata i32 %37, metadata !289, metadata !DIExpression()) #33, !dbg !1729
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), i32 noundef 5) #33, !dbg !1731
  call void @llvm.dbg.value(metadata i8* %68, metadata !290, metadata !DIExpression()) #33, !dbg !1729
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1732
  br i1 %69, label %70, label %79, !dbg !1733

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1735
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !292, metadata !DIExpression()) #33, !dbg !1736
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1708, metadata !DIExpression()) #33, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %26, metadata !1716, metadata !DIExpression()) #33, !dbg !1739
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()) #33, !dbg !1739
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()) #33, !dbg !1739
  store i64 0, i64* %11, align 8, !dbg !1741
  call void @llvm.dbg.value(metadata i32* %10, metadata !291, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1729
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1742
  %72 = icmp eq i64 %71, 3, !dbg !1743
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !291, metadata !DIExpression()) #33, !dbg !1729
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1744
  %76 = icmp eq i32 %37, 9, !dbg !1744
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), !dbg !1744
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1744
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1745
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1745
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %80, metadata !1627, metadata !DIExpression()), !dbg !1682
  br i1 %45, label %97, label %82, !dbg !1746

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1639, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 0, metadata !1630, metadata !DIExpression()), !dbg !1682
  %83 = load i8, i8* %80, align 1, !dbg !1748, !tbaa !538
  %84 = icmp eq i8 %83, 0, !dbg !1750
  br i1 %84, label %97, label %85, !dbg !1750

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1639, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i64 %88, metadata !1630, metadata !DIExpression()), !dbg !1682
  %89 = icmp ult i64 %88, %48, !dbg !1751
  br i1 %89, label %90, label %92, !dbg !1754

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1751
  store i8 %86, i8* %91, align 1, !dbg !1751, !tbaa !538
  br label %92, !dbg !1751

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1754
  call void @llvm.dbg.value(metadata i64 %93, metadata !1630, metadata !DIExpression()), !dbg !1682
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1755
  call void @llvm.dbg.value(metadata i8* %94, metadata !1639, metadata !DIExpression()), !dbg !1747
  %95 = load i8, i8* %94, align 1, !dbg !1748, !tbaa !538
  %96 = icmp eq i8 %95, 0, !dbg !1750
  br i1 %96, label %97, label %85, !dbg !1750, !llvm.loop !1756

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %98, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %81, metadata !1632, metadata !DIExpression()), !dbg !1682
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1759
  call void @llvm.dbg.value(metadata i64 %99, metadata !1633, metadata !DIExpression()), !dbg !1682
  br label %111, !dbg !1760

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1634, metadata !DIExpression()), !dbg !1682
  br label %102, !dbg !1761

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  br i1 %45, label %102, label %105, !dbg !1762

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 2, metadata !1624, metadata !DIExpression()), !dbg !1682
  br label %111, !dbg !1763

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 2, metadata !1624, metadata !DIExpression()), !dbg !1682
  br i1 %45, label %111, label %105, !dbg !1763

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1764
  br i1 %107, label %111, label %108, !dbg !1768

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1764, !tbaa !538
  br label %111, !dbg !1764

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1635, metadata !DIExpression()), !dbg !1682
  br label %111, !dbg !1769

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1770
  unreachable, !dbg !1770

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1758
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.85, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.86, i64 0, i64 0), %102 ], !dbg !1682
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1682
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1635, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1634, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %117, metadata !1633, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %116, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %115, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %114, metadata !1628, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8* %113, metadata !1627, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %112, metadata !1624, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 0, metadata !1644, metadata !DIExpression()), !dbg !1771
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
  br label %132, !dbg !1772

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1758
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1686
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1771
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %139, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %135, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %134, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %133, metadata !1623, metadata !DIExpression()), !dbg !1682
  %141 = icmp eq i64 %133, -1, !dbg !1773
  br i1 %141, label %142, label %146, !dbg !1774

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1775
  %144 = load i8, i8* %143, align 1, !dbg !1775, !tbaa !538
  %145 = icmp eq i8 %144, 0, !dbg !1776
  br i1 %145, label %596, label %148, !dbg !1777

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1778
  br i1 %147, label %596, label %148, !dbg !1777

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1650, metadata !DIExpression()), !dbg !1779
  br i1 %123, label %149, label %163, !dbg !1780

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1782
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1783
  br i1 %151, label %152, label %154, !dbg !1783

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %153, metadata !1623, metadata !DIExpression()), !dbg !1682
  br label %154, !dbg !1785

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1785
  call void @llvm.dbg.value(metadata i64 %155, metadata !1623, metadata !DIExpression()), !dbg !1682
  %156 = icmp ugt i64 %150, %155, !dbg !1786
  br i1 %156, label %163, label %157, !dbg !1787

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1788
  call void @llvm.dbg.value(metadata i8* %158, metadata !1789, metadata !DIExpression()) #33, !dbg !1794
  call void @llvm.dbg.value(metadata i8* %116, metadata !1792, metadata !DIExpression()) #33, !dbg !1794
  call void @llvm.dbg.value(metadata i64 %117, metadata !1793, metadata !DIExpression()) #33, !dbg !1794
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1796
  %160 = icmp ne i32 %159, 0, !dbg !1797
  %161 = or i1 %160, %125, !dbg !1798
  %162 = xor i1 %160, true, !dbg !1798
  br i1 %161, label %163, label %647, !dbg !1798

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %164, metadata !1623, metadata !DIExpression()), !dbg !1682
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1799
  %167 = load i8, i8* %166, align 1, !dbg !1799, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %167, metadata !1651, metadata !DIExpression()), !dbg !1779
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
  ], !dbg !1800

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1801

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1802

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1779
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1806
  br i1 %171, label %188, label %172, !dbg !1806

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1808
  br i1 %173, label %174, label %176, !dbg !1812

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1808
  store i8 39, i8* %175, align 1, !dbg !1808, !tbaa !538
  br label %176, !dbg !1808

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1812
  call void @llvm.dbg.value(metadata i64 %177, metadata !1630, metadata !DIExpression()), !dbg !1682
  %178 = icmp ult i64 %177, %140, !dbg !1813
  br i1 %178, label %179, label %181, !dbg !1816

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1813
  store i8 36, i8* %180, align 1, !dbg !1813, !tbaa !538
  br label %181, !dbg !1813

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1816
  call void @llvm.dbg.value(metadata i64 %182, metadata !1630, metadata !DIExpression()), !dbg !1682
  %183 = icmp ult i64 %182, %140, !dbg !1817
  br i1 %183, label %184, label %186, !dbg !1820

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1817
  store i8 39, i8* %185, align 1, !dbg !1817, !tbaa !538
  br label %186, !dbg !1817

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %187, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %188, !dbg !1821

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1682
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %189, metadata !1630, metadata !DIExpression()), !dbg !1682
  %191 = icmp ult i64 %189, %140, !dbg !1822
  br i1 %191, label %192, label %194, !dbg !1825

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1822
  store i8 92, i8* %193, align 1, !dbg !1822, !tbaa !538
  br label %194, !dbg !1822

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1825
  call void @llvm.dbg.value(metadata i64 %195, metadata !1630, metadata !DIExpression()), !dbg !1682
  br i1 %120, label %196, label %499, !dbg !1826

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1828
  %198 = icmp ult i64 %197, %164, !dbg !1829
  br i1 %198, label %199, label %456, !dbg !1830

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1831
  %201 = load i8, i8* %200, align 1, !dbg !1831, !tbaa !538
  %202 = add i8 %201, -48, !dbg !1832
  %203 = icmp ult i8 %202, 10, !dbg !1832
  br i1 %203, label %204, label %456, !dbg !1832

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1833
  br i1 %205, label %206, label %208, !dbg !1837

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1833
  store i8 48, i8* %207, align 1, !dbg !1833, !tbaa !538
  br label %208, !dbg !1833

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1837
  call void @llvm.dbg.value(metadata i64 %209, metadata !1630, metadata !DIExpression()), !dbg !1682
  %210 = icmp ult i64 %209, %140, !dbg !1838
  br i1 %210, label %211, label %213, !dbg !1841

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1838
  store i8 48, i8* %212, align 1, !dbg !1838, !tbaa !538
  br label %213, !dbg !1838

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1841
  call void @llvm.dbg.value(metadata i64 %214, metadata !1630, metadata !DIExpression()), !dbg !1682
  br label %456, !dbg !1842

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1843

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1844

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1845

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1847

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1849
  %221 = icmp ult i64 %220, %164, !dbg !1850
  br i1 %221, label %222, label %456, !dbg !1851

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1852
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1853
  %225 = load i8, i8* %224, align 1, !dbg !1853, !tbaa !538
  %226 = icmp eq i8 %225, 63, !dbg !1854
  br i1 %226, label %227, label %456, !dbg !1855

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1856
  %229 = load i8, i8* %228, align 1, !dbg !1856, !tbaa !538
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
  ], !dbg !1857

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1858

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %220, metadata !1644, metadata !DIExpression()), !dbg !1771
  %232 = icmp ult i64 %134, %140, !dbg !1860
  br i1 %232, label %233, label %235, !dbg !1863

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1860
  store i8 63, i8* %234, align 1, !dbg !1860, !tbaa !538
  br label %235, !dbg !1860

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1863
  call void @llvm.dbg.value(metadata i64 %236, metadata !1630, metadata !DIExpression()), !dbg !1682
  %237 = icmp ult i64 %236, %140, !dbg !1864
  br i1 %237, label %238, label %240, !dbg !1867

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1864
  store i8 34, i8* %239, align 1, !dbg !1864, !tbaa !538
  br label %240, !dbg !1864

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1867
  call void @llvm.dbg.value(metadata i64 %241, metadata !1630, metadata !DIExpression()), !dbg !1682
  %242 = icmp ult i64 %241, %140, !dbg !1868
  br i1 %242, label %243, label %245, !dbg !1871

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1868
  store i8 34, i8* %244, align 1, !dbg !1868, !tbaa !538
  br label %245, !dbg !1868

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %246, metadata !1630, metadata !DIExpression()), !dbg !1682
  %247 = icmp ult i64 %246, %140, !dbg !1872
  br i1 %247, label %248, label %250, !dbg !1875

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1872
  store i8 63, i8* %249, align 1, !dbg !1872, !tbaa !538
  br label %250, !dbg !1872

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %251, metadata !1630, metadata !DIExpression()), !dbg !1682
  br label %456, !dbg !1876

252:                                              ; preds = %163
  br label %263, !dbg !1877

253:                                              ; preds = %163
  br label %263, !dbg !1878

254:                                              ; preds = %163
  br label %261, !dbg !1879

255:                                              ; preds = %163
  br label %261, !dbg !1880

256:                                              ; preds = %163
  br label %263, !dbg !1881

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1882

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1883

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1886

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1888

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1676), !dbg !1890
  br i1 %128, label %263, label %638, !dbg !1891

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1889
  call void @llvm.dbg.label(metadata !1678), !dbg !1893
  br i1 %118, label %510, label %467, !dbg !1894

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1895

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1896, !tbaa !538
  %268 = icmp eq i8 %267, 0, !dbg !1898
  br i1 %268, label %269, label %456, !dbg !1899

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1900
  br i1 %270, label %271, label %456, !dbg !1902

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1779
  br label %272, !dbg !1903

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1650, metadata !DIExpression()), !dbg !1779
  br i1 %126, label %274, label %456, !dbg !1904

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1906

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1650, metadata !DIExpression()), !dbg !1779
  br i1 %126, label %276, label %456, !dbg !1907

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1908

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1911
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1913
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1913
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1913
  call void @llvm.dbg.value(metadata i64 %282, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %281, metadata !1631, metadata !DIExpression()), !dbg !1682
  %283 = icmp ult i64 %134, %282, !dbg !1914
  br i1 %283, label %284, label %286, !dbg !1917

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1914
  store i8 39, i8* %285, align 1, !dbg !1914, !tbaa !538
  br label %286, !dbg !1914

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %287, metadata !1630, metadata !DIExpression()), !dbg !1682
  %288 = icmp ult i64 %287, %282, !dbg !1918
  br i1 %288, label %289, label %291, !dbg !1921

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1918
  store i8 92, i8* %290, align 1, !dbg !1918, !tbaa !538
  br label %291, !dbg !1918

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %292, metadata !1630, metadata !DIExpression()), !dbg !1682
  %293 = icmp ult i64 %292, %282, !dbg !1922
  br i1 %293, label %294, label %296, !dbg !1925

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1922
  store i8 39, i8* %295, align 1, !dbg !1922, !tbaa !538
  br label %296, !dbg !1922

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1925
  call void @llvm.dbg.value(metadata i64 %297, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %456, !dbg !1926

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1927

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1652, metadata !DIExpression()), !dbg !1928
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1929
  %301 = load i16*, i16** %300, align 8, !dbg !1929, !tbaa !439
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1929
  %304 = load i16, i16* %303, align 2, !dbg !1929, !tbaa !563
  %305 = and i16 %304, 16384, !dbg !1929
  %306 = icmp ne i16 %305, 0, !dbg !1931
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %349, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %312, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 %350, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  br label %352, !dbg !1932

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1933
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1656, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1708, metadata !DIExpression()) #33, !dbg !1935
  call void @llvm.dbg.value(metadata i8* %32, metadata !1716, metadata !DIExpression()) #33, !dbg !1937
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()) #33, !dbg !1937
  call void @llvm.dbg.value(metadata i64 8, metadata !1720, metadata !DIExpression()) #33, !dbg !1937
  store i64 0, i64* %14, align 8, !dbg !1939
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 1, metadata !1655, metadata !DIExpression()), !dbg !1928
  %308 = icmp eq i64 %164, -1, !dbg !1940
  br i1 %308, label %309, label %311, !dbg !1942

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %310, metadata !1623, metadata !DIExpression()), !dbg !1682
  br label %311, !dbg !1944

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1779
  call void @llvm.dbg.value(metadata i64 %312, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1945
  %313 = sub i64 %312, %139, !dbg !1946
  call void @llvm.dbg.value(metadata i32* %16, metadata !1659, metadata !DIExpression(DW_OP_deref)), !dbg !1947
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %314, metadata !1663, metadata !DIExpression()), !dbg !1947
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1949

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  %316 = icmp ugt i64 %312, %139, !dbg !1950
  br i1 %316, label %319, label %317, !dbg !1952

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %349, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %312, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 %350, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  br label %352, !dbg !1932

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1655, metadata !DIExpression()), !dbg !1928
  br label %346, !dbg !1955

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1652, metadata !DIExpression()), !dbg !1928
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1957
  %323 = load i8, i8* %322, align 1, !dbg !1957, !tbaa !538
  %324 = icmp eq i8 %323, 0, !dbg !1952
  br i1 %324, label %348, label %325, !dbg !1958

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %326, metadata !1652, metadata !DIExpression()), !dbg !1928
  %327 = add i64 %326, %139, !dbg !1960
  %328 = icmp eq i64 %326, %313, !dbg !1950
  br i1 %328, label %348, label %319, !dbg !1952, !llvm.loop !1961

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1962
  call void @llvm.dbg.value(metadata i64 1, metadata !1664, metadata !DIExpression()), !dbg !1963
  br i1 %331, label %332, label %340, !dbg !1962

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1664, metadata !DIExpression()), !dbg !1963
  %334 = add i64 %333, %139, !dbg !1964
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1966
  %336 = load i8, i8* %335, align 1, !dbg !1966, !tbaa !538
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1967

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %338, metadata !1664, metadata !DIExpression()), !dbg !1963
  %339 = icmp eq i64 %338, %314, !dbg !1969
  br i1 %339, label %340, label %332, !dbg !1970, !llvm.loop !1971

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1973, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %341, metadata !1659, metadata !DIExpression()), !dbg !1947
  call void @llvm.dbg.value(metadata i32 %341, metadata !1975, metadata !DIExpression()) #33, !dbg !1983
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1985
  %343 = icmp ne i32 %342, 0, !dbg !1986
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %314, metadata !1652, metadata !DIExpression()), !dbg !1928
  br label %348, !dbg !1987

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1954
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %345 = select i1 %118, i32 4, i32 2, !dbg !1989
  br label %643, !dbg !1989

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %349, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %312, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 %350, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  br label %352, !dbg !1932

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1655, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 0, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1954
  call void @llvm.dbg.value(metadata i64 %349, metadata !1652, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i64 %312, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i1 %350, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  %351 = icmp ugt i64 %349, 1, !dbg !1991
  br i1 %351, label %357, label %352, !dbg !1932

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1992
  br i1 %356, label %456, label %357, !dbg !1992

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1993
  call void @llvm.dbg.value(metadata i64 %361, metadata !1672, metadata !DIExpression()), !dbg !1994
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1995

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1682
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1771
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1996
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1779
  call void @llvm.dbg.value(metadata i8 %369, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %368, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %366, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %364, metadata !1630, metadata !DIExpression()), !dbg !1682
  br i1 %362, label %414, label %370, !dbg !1997

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2002

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1779
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2005
  br i1 %372, label %389, label %373, !dbg !2005

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2007
  br i1 %374, label %375, label %377, !dbg !2011

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2007
  store i8 39, i8* %376, align 1, !dbg !2007, !tbaa !538
  br label %377, !dbg !2007

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2011
  call void @llvm.dbg.value(metadata i64 %378, metadata !1630, metadata !DIExpression()), !dbg !1682
  %379 = icmp ult i64 %378, %140, !dbg !2012
  br i1 %379, label %380, label %382, !dbg !2015

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2012
  store i8 36, i8* %381, align 1, !dbg !2012, !tbaa !538
  br label %382, !dbg !2012

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %383, metadata !1630, metadata !DIExpression()), !dbg !1682
  %384 = icmp ult i64 %383, %140, !dbg !2016
  br i1 %384, label %385, label %387, !dbg !2019

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2016
  store i8 39, i8* %386, align 1, !dbg !2016, !tbaa !538
  br label %387, !dbg !2016

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2019
  call void @llvm.dbg.value(metadata i64 %388, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %389, !dbg !2020

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1682
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %390, metadata !1630, metadata !DIExpression()), !dbg !1682
  %392 = icmp ult i64 %390, %140, !dbg !2021
  br i1 %392, label %393, label %395, !dbg !2024

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2021
  store i8 92, i8* %394, align 1, !dbg !2021, !tbaa !538
  br label %395, !dbg !2021

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %396, metadata !1630, metadata !DIExpression()), !dbg !1682
  %397 = icmp ult i64 %396, %140, !dbg !2025
  br i1 %397, label %398, label %402, !dbg !2028

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2025
  %400 = or i8 %399, 48, !dbg !2025
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2025
  store i8 %400, i8* %401, align 1, !dbg !2025, !tbaa !538
  br label %402, !dbg !2025

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %403, metadata !1630, metadata !DIExpression()), !dbg !1682
  %404 = icmp ult i64 %403, %140, !dbg !2029
  br i1 %404, label %405, label %410, !dbg !2032

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2029
  %407 = and i8 %406, 7, !dbg !2029
  %408 = or i8 %407, 48, !dbg !2029
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2029
  store i8 %408, i8* %409, align 1, !dbg !2029, !tbaa !538
  br label %410, !dbg !2029

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %411, metadata !1630, metadata !DIExpression()), !dbg !1682
  %412 = and i8 %369, 7, !dbg !2033
  %413 = or i8 %412, 48, !dbg !2034
  call void @llvm.dbg.value(metadata i8 %413, metadata !1651, metadata !DIExpression()), !dbg !1779
  br label %421, !dbg !2035

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2036

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2037
  br i1 %416, label %417, label %419, !dbg !2042

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2037
  store i8 92, i8* %418, align 1, !dbg !2037, !tbaa !538
  br label %419, !dbg !2037

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2042
  call void @llvm.dbg.value(metadata i64 %420, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1779
  br label %421, !dbg !2043

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1682
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1779
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1779
  call void @llvm.dbg.value(metadata i8 %426, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %425, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %422, metadata !1630, metadata !DIExpression()), !dbg !1682
  %427 = add i64 %366, 1, !dbg !2044
  %428 = icmp ugt i64 %361, %427, !dbg !2046
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2047

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2048
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2048
  br i1 %432, label %433, label %444, !dbg !2048

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2051
  br i1 %434, label %435, label %437, !dbg !2055

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2051
  store i8 39, i8* %436, align 1, !dbg !2051, !tbaa !538
  br label %437, !dbg !2051

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i64 %438, metadata !1630, metadata !DIExpression()), !dbg !1682
  %439 = icmp ult i64 %438, %140, !dbg !2056
  br i1 %439, label %440, label %442, !dbg !2059

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2056
  store i8 39, i8* %441, align 1, !dbg !2056, !tbaa !538
  br label %442, !dbg !2056

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2059
  call void @llvm.dbg.value(metadata i64 %443, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %444, !dbg !2060

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2061
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %445, metadata !1630, metadata !DIExpression()), !dbg !1682
  %447 = icmp ult i64 %445, %140, !dbg !2062
  br i1 %447, label %448, label %450, !dbg !2065

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2062
  store i8 %426, i8* %449, align 1, !dbg !2062, !tbaa !538
  br label %450, !dbg !2062

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2065
  call void @llvm.dbg.value(metadata i64 %451, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %427, metadata !1644, metadata !DIExpression()), !dbg !1771
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2066
  %453 = load i8, i8* %452, align 1, !dbg !2066, !tbaa !538
  call void @llvm.dbg.value(metadata i8 %453, metadata !1651, metadata !DIExpression()), !dbg !1779
  br label %363, !dbg !2067, !llvm.loop !2068

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i1 %358, metadata !1650, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1779
  call void @llvm.dbg.value(metadata i8 %425, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %366, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %422, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %360, metadata !1623, metadata !DIExpression()), !dbg !1682
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2071
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1682
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1686
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1771
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1779
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %465, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1646, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %462, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %459, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %458, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %457, metadata !1623, metadata !DIExpression()), !dbg !1682
  br i1 %121, label %478, label %467, !dbg !2072

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
  br i1 %131, label %479, label %499, !dbg !2074

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2075

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
  %490 = lshr i8 %481, 5, !dbg !2076
  %491 = zext i8 %490 to i64, !dbg !2076
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2077
  %493 = load i32, i32* %492, align 4, !dbg !2077, !tbaa !529
  %494 = and i8 %481, 31, !dbg !2078
  %495 = zext i8 %494 to i32, !dbg !2078
  %496 = shl nuw i32 1, %495, !dbg !2079
  %497 = and i32 %493, %496, !dbg !2079
  %498 = icmp eq i32 %497, 0, !dbg !2079
  br i1 %498, label %499, label %510, !dbg !2080

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
  br i1 %165, label %510, label %546, !dbg !2081

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2071
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1682
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1686
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2082
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1779
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %518, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %516, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %513, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %512, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %511, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1679), !dbg !2083
  br i1 %119, label %638, label %520, !dbg !2084

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1649, metadata !DIExpression()), !dbg !1779
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2086
  br i1 %521, label %538, label %522, !dbg !2086

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2088
  br i1 %523, label %524, label %526, !dbg !2092

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2088
  store i8 39, i8* %525, align 1, !dbg !2088, !tbaa !538
  br label %526, !dbg !2088

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2092
  call void @llvm.dbg.value(metadata i64 %527, metadata !1630, metadata !DIExpression()), !dbg !1682
  %528 = icmp ult i64 %527, %519, !dbg !2093
  br i1 %528, label %529, label %531, !dbg !2096

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2093
  store i8 36, i8* %530, align 1, !dbg !2093, !tbaa !538
  br label %531, !dbg !2093

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2096
  call void @llvm.dbg.value(metadata i64 %532, metadata !1630, metadata !DIExpression()), !dbg !1682
  %533 = icmp ult i64 %532, %519, !dbg !2097
  br i1 %533, label %534, label %536, !dbg !2100

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2097
  store i8 39, i8* %535, align 1, !dbg !2097, !tbaa !538
  br label %536, !dbg !2097

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2100
  call void @llvm.dbg.value(metadata i64 %537, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 1, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %538, !dbg !2101

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1779
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %539, metadata !1630, metadata !DIExpression()), !dbg !1682
  %541 = icmp ult i64 %539, %519, !dbg !2102
  br i1 %541, label %542, label %544, !dbg !2105

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2102
  store i8 92, i8* %543, align 1, !dbg !2102, !tbaa !538
  br label %544, !dbg !2102

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i64 %556, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %555, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %552, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %549, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %548, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %547, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1680), !dbg !2106
  br label %570, !dbg !2107

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2071
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1682
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1686
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2082
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2110
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 %555, metadata !1651, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1650, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 poison, metadata !1649, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 %552, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %549, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %548, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %547, metadata !1623, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.label(metadata !1680), !dbg !2106
  %557 = xor i1 %551, true, !dbg !2107
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2107
  br i1 %558, label %570, label %559, !dbg !2107

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2111
  br i1 %560, label %561, label %563, !dbg !2115

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2111
  store i8 39, i8* %562, align 1, !dbg !2111, !tbaa !538
  br label %563, !dbg !2111

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %564, metadata !1630, metadata !DIExpression()), !dbg !1682
  %565 = icmp ult i64 %564, %556, !dbg !2116
  br i1 %565, label %566, label %568, !dbg !2119

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2116
  store i8 39, i8* %567, align 1, !dbg !2116, !tbaa !538
  br label %568, !dbg !2116

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2119
  call void @llvm.dbg.value(metadata i64 %569, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1682
  br label %570, !dbg !2120

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1779
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %578, metadata !1630, metadata !DIExpression()), !dbg !1682
  %580 = icmp ult i64 %578, %571, !dbg !2121
  br i1 %580, label %581, label %583, !dbg !2124

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2121
  store i8 %572, i8* %582, align 1, !dbg !2121, !tbaa !538
  br label %583, !dbg !2121

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2124
  call void @llvm.dbg.value(metadata i64 %584, metadata !1630, metadata !DIExpression()), !dbg !1682
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2125
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  br label %586, !dbg !2126

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2071
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1682
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1686
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2082
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %593, metadata !1644, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 poison, metadata !1638, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %589, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %588, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %587, metadata !1623, metadata !DIExpression()), !dbg !1682
  %595 = add i64 %593, 1, !dbg !2127
  call void @llvm.dbg.value(metadata i64 %595, metadata !1644, metadata !DIExpression()), !dbg !1771
  br label %132, !dbg !2128, !llvm.loop !2129

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1621, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1637, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 poison, metadata !1636, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 undef, metadata !1631, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 undef, metadata !1630, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 undef, metadata !1623, metadata !DIExpression()), !dbg !1682
  %597 = icmp eq i64 %134, 0, !dbg !2131
  %598 = and i1 %126, %597, !dbg !2133
  %599 = and i1 %598, %119, !dbg !2133
  br i1 %599, label %638, label %600, !dbg !2133

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2134
  %602 = or i1 %119, %601, !dbg !2134
  %603 = xor i1 %136, true, !dbg !2134
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2134
  br i1 %604, label %612, label %605, !dbg !2134

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2136

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2138
  br label %653, !dbg !2140

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2141
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2143
  br i1 %611, label %36, label %612, !dbg !2143

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2144
  %615 = or i1 %614, %613, !dbg !2146
  br i1 %615, label %631, label %616, !dbg !2146

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %134, metadata !1630, metadata !DIExpression()), !dbg !1682
  %617 = load i8, i8* %116, align 1, !dbg !2147, !tbaa !538
  %618 = icmp eq i8 %617, 0, !dbg !2150
  br i1 %618, label %631, label %619, !dbg !2150

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1632, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i64 %622, metadata !1630, metadata !DIExpression()), !dbg !1682
  %623 = icmp ult i64 %622, %140, !dbg !2151
  br i1 %623, label %624, label %626, !dbg !2154

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2151
  store i8 %620, i8* %625, align 1, !dbg !2151, !tbaa !538
  br label %626, !dbg !2151

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2154
  call void @llvm.dbg.value(metadata i64 %627, metadata !1630, metadata !DIExpression()), !dbg !1682
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2155
  call void @llvm.dbg.value(metadata i8* %628, metadata !1632, metadata !DIExpression()), !dbg !1682
  %629 = load i8, i8* %628, align 1, !dbg !2147, !tbaa !538
  %630 = icmp eq i8 %629, 0, !dbg !2150
  br i1 %630, label %631, label %619, !dbg !2150, !llvm.loop !2156

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1758
  call void @llvm.dbg.value(metadata i64 %632, metadata !1630, metadata !DIExpression()), !dbg !1682
  %633 = icmp ult i64 %632, %140, !dbg !2158
  br i1 %633, label %634, label %653, !dbg !2160

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2161
  store i8 0, i8* %635, align 1, !dbg !2162, !tbaa !538
  br label %653, !dbg !2161

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %637 = icmp eq i32 %112, 2, !dbg !2163
  br i1 %637, label %643, label %647, !dbg !1989

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1681), !dbg !1988
  %641 = icmp eq i32 %112, 2, !dbg !2163
  %642 = select i1 %118, i32 4, i32 2, !dbg !1989
  br i1 %641, label %643, label %647, !dbg !1989

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1989

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1624, metadata !DIExpression()), !dbg !1682
  %651 = and i32 %5, -3, !dbg !2164
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2165
  br label %653, !dbg !2166

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2167
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !2168 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2170 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i64 %1, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2176, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()) #33, !dbg !2191
  call void @llvm.dbg.value(metadata i64 %1, metadata !2183, metadata !DIExpression()) #33, !dbg !2191
  call void @llvm.dbg.value(metadata i64* null, metadata !2184, metadata !DIExpression()) #33, !dbg !2191
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2185, metadata !DIExpression()) #33, !dbg !2191
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2193
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2193
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2186, metadata !DIExpression()) #33, !dbg !2191
  %6 = tail call i32* @__errno_location() #36, !dbg !2194
  %7 = load i32, i32* %6, align 4, !dbg !2194, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %7, metadata !2187, metadata !DIExpression()) #33, !dbg !2191
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2195
  %9 = load i32, i32* %8, align 4, !dbg !2195, !tbaa !1564
  %10 = or i32 %9, 1, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %10, metadata !2188, metadata !DIExpression()) #33, !dbg !2191
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2197
  %12 = load i32, i32* %11, align 8, !dbg !2197, !tbaa !1513
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2198
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2199
  %15 = load i8*, i8** %14, align 8, !dbg !2199, !tbaa !1586
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2200
  %17 = load i8*, i8** %16, align 8, !dbg !2200, !tbaa !1589
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !2201
  %19 = add i64 %18, 1, !dbg !2202
  call void @llvm.dbg.value(metadata i64 %19, metadata !2189, metadata !DIExpression()) #33, !dbg !2191
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2203
  call void @llvm.dbg.value(metadata i8* %20, metadata !2190, metadata !DIExpression()) #33, !dbg !2191
  %21 = load i32, i32* %11, align 8, !dbg !2204, !tbaa !1513
  %22 = load i8*, i8** %14, align 8, !dbg !2205, !tbaa !1586
  %23 = load i8*, i8** %16, align 8, !dbg !2206, !tbaa !1589
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !2207
  store i32 %7, i32* %6, align 4, !dbg !2208, !tbaa !529
  ret i8* %20, !dbg !2209
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2178, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64 %1, metadata !2183, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i64* %2, metadata !2184, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2185, metadata !DIExpression()), !dbg !2210
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2211
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2211
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2186, metadata !DIExpression()), !dbg !2210
  %7 = tail call i32* @__errno_location() #36, !dbg !2212
  %8 = load i32, i32* %7, align 4, !dbg !2212, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %8, metadata !2187, metadata !DIExpression()), !dbg !2210
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2213
  %10 = load i32, i32* %9, align 4, !dbg !2213, !tbaa !1564
  %11 = icmp eq i64* %2, null, !dbg !2214
  %12 = zext i1 %11 to i32, !dbg !2214
  %13 = or i32 %10, %12, !dbg !2215
  call void @llvm.dbg.value(metadata i32 %13, metadata !2188, metadata !DIExpression()), !dbg !2210
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2216
  %15 = load i32, i32* %14, align 8, !dbg !2216, !tbaa !1513
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2217
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2218
  %18 = load i8*, i8** %17, align 8, !dbg !2218, !tbaa !1586
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2219
  %20 = load i8*, i8** %19, align 8, !dbg !2219, !tbaa !1589
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2220
  %22 = add i64 %21, 1, !dbg !2221
  call void @llvm.dbg.value(metadata i64 %22, metadata !2189, metadata !DIExpression()), !dbg !2210
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2222
  call void @llvm.dbg.value(metadata i8* %23, metadata !2190, metadata !DIExpression()), !dbg !2210
  %24 = load i32, i32* %14, align 8, !dbg !2223, !tbaa !1513
  %25 = load i8*, i8** %17, align 8, !dbg !2224, !tbaa !1586
  %26 = load i8*, i8** %19, align 8, !dbg !2225, !tbaa !1589
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2226
  store i32 %8, i32* %7, align 4, !dbg !2227, !tbaa !529
  br i1 %11, label %29, label %28, !dbg !2228

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2229, !tbaa !1007
  br label %29, !dbg !2231

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2232
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2233 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2238, !tbaa !439
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2235, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !2240
  %2 = load i32, i32* @nslots, align 4, !tbaa !529
  call void @llvm.dbg.value(metadata i32 1, metadata !2236, metadata !DIExpression()), !dbg !2240
  %3 = icmp sgt i32 %2, 1, !dbg !2241
  br i1 %3, label %4, label %6, !dbg !2243

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2241
  br label %10, !dbg !2243

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2244
  %8 = load i8*, i8** %7, align 8, !dbg !2244, !tbaa !2246
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2248
  br i1 %9, label %17, label %16, !dbg !2249

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2236, metadata !DIExpression()), !dbg !2240
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2250
  %13 = load i8*, i8** %12, align 8, !dbg !2250, !tbaa !2246
  tail call void @free(i8* noundef %13) #33, !dbg !2251
  %14 = add nuw nsw i64 %11, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i64 %14, metadata !2236, metadata !DIExpression()), !dbg !2240
  %15 = icmp eq i64 %14, %5, !dbg !2241
  br i1 %15, label %6, label %10, !dbg !2243, !llvm.loop !2253

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2255
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2257, !tbaa !2258
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2259, !tbaa !2246
  br label %17, !dbg !2260

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2261
  br i1 %18, label %21, label %19, !dbg !2263

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2264
  tail call void @free(i8* noundef %20) #33, !dbg !2266
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2267, !tbaa !439
  br label %21, !dbg !2268

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2269, !tbaa !529
  ret void, !dbg !2270
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2271 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2273, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %1, metadata !2274, metadata !DIExpression()), !dbg !2275
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2276
  ret i8* %3, !dbg !2277
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2278 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2282, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %1, metadata !2283, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %2, metadata !2284, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2285, metadata !DIExpression()), !dbg !2298
  %6 = tail call i32* @__errno_location() #36, !dbg !2299
  %7 = load i32, i32* %6, align 4, !dbg !2299, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %7, metadata !2286, metadata !DIExpression()), !dbg !2298
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2300, !tbaa !439
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2287, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2288, metadata !DIExpression()), !dbg !2298
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2301
  br i1 %9, label %10, label %11, !dbg !2301

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2303
  unreachable, !dbg !2303

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2304, !tbaa !529
  %13 = icmp sgt i32 %12, %0, !dbg !2305
  br i1 %13, label %36, label %14, !dbg !2306

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2307
  call void @llvm.dbg.value(metadata i1 %15, metadata !2289, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2308
  %16 = bitcast i64* %5 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2309
  %17 = sext i32 %12 to i64, !dbg !2310
  call void @llvm.dbg.value(metadata i64 %17, metadata !2292, metadata !DIExpression()), !dbg !2308
  store i64 %17, i64* %5, align 8, !dbg !2311, !tbaa !1007
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2312
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2312
  %20 = add nuw nsw i32 %0, 1, !dbg !2313
  %21 = sub i32 %20, %12, !dbg !2314
  %22 = sext i32 %21 to i64, !dbg !2315
  call void @llvm.dbg.value(metadata i64* %5, metadata !2292, metadata !DIExpression(DW_OP_deref)), !dbg !2308
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2316
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2287, metadata !DIExpression()), !dbg !2298
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2317, !tbaa !439
  br i1 %15, label %25, label %26, !dbg !2318

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2319, !tbaa.struct !2321
  br label %26, !dbg !2322

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2323, !tbaa !529
  %28 = sext i32 %27 to i64, !dbg !2324
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2324
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2325
  %31 = load i64, i64* %5, align 8, !dbg !2326, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %31, metadata !2292, metadata !DIExpression()), !dbg !2308
  %32 = sub nsw i64 %31, %28, !dbg !2327
  %33 = shl i64 %32, 4, !dbg !2328
  call void @llvm.dbg.value(metadata i8* %30, metadata !1716, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i32 0, metadata !1719, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i64 %33, metadata !1720, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2331
  %34 = load i64, i64* %5, align 8, !dbg !2332, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %34, metadata !2292, metadata !DIExpression()), !dbg !2308
  %35 = trunc i64 %34 to i32, !dbg !2332
  store i32 %35, i32* @nslots, align 4, !dbg !2333, !tbaa !529
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2334
  br label %36, !dbg !2335

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2298
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2287, metadata !DIExpression()), !dbg !2298
  %38 = zext i32 %0 to i64, !dbg !2336
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2337
  %40 = load i64, i64* %39, align 8, !dbg !2337, !tbaa !2258
  call void @llvm.dbg.value(metadata i64 %40, metadata !2293, metadata !DIExpression()), !dbg !2338
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2339
  %42 = load i8*, i8** %41, align 8, !dbg !2339, !tbaa !2246
  call void @llvm.dbg.value(metadata i8* %42, metadata !2295, metadata !DIExpression()), !dbg !2338
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2340
  %44 = load i32, i32* %43, align 4, !dbg !2340, !tbaa !1564
  %45 = or i32 %44, 1, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %45, metadata !2296, metadata !DIExpression()), !dbg !2338
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2342
  %47 = load i32, i32* %46, align 8, !dbg !2342, !tbaa !1513
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2343
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2344
  %50 = load i8*, i8** %49, align 8, !dbg !2344, !tbaa !1586
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2345
  %52 = load i8*, i8** %51, align 8, !dbg !2345, !tbaa !1589
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2346
  call void @llvm.dbg.value(metadata i64 %53, metadata !2297, metadata !DIExpression()), !dbg !2338
  %54 = icmp ugt i64 %40, %53, !dbg !2347
  br i1 %54, label %65, label %55, !dbg !2349

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %56, metadata !2293, metadata !DIExpression()), !dbg !2338
  store i64 %56, i64* %39, align 8, !dbg !2352, !tbaa !2258
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2353
  br i1 %57, label %59, label %58, !dbg !2355

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2356
  br label %59, !dbg !2356

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2357
  call void @llvm.dbg.value(metadata i8* %60, metadata !2295, metadata !DIExpression()), !dbg !2338
  store i8* %60, i8** %41, align 8, !dbg !2358, !tbaa !2246
  %61 = load i32, i32* %46, align 8, !dbg !2359, !tbaa !1513
  %62 = load i8*, i8** %49, align 8, !dbg !2360, !tbaa !1586
  %63 = load i8*, i8** %51, align 8, !dbg !2361, !tbaa !1589
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2362
  br label %65, !dbg !2363

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2338
  call void @llvm.dbg.value(metadata i8* %66, metadata !2295, metadata !DIExpression()), !dbg !2338
  store i32 %7, i32* %6, align 4, !dbg !2364, !tbaa !529
  ret i8* %66, !dbg !2365
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2366 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2370, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8* %1, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i64 %2, metadata !2372, metadata !DIExpression()), !dbg !2373
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2374
  ret i8* %4, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2376 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.value(metadata i32 0, metadata !2273, metadata !DIExpression()) #33, !dbg !2380
  call void @llvm.dbg.value(metadata i8* %0, metadata !2274, metadata !DIExpression()) #33, !dbg !2380
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2382
  ret i8* %2, !dbg !2383
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2388, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i64 %1, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.value(metadata i32 0, metadata !2370, metadata !DIExpression()) #33, !dbg !2391
  call void @llvm.dbg.value(metadata i8* %0, metadata !2371, metadata !DIExpression()) #33, !dbg !2391
  call void @llvm.dbg.value(metadata i64 %1, metadata !2372, metadata !DIExpression()) #33, !dbg !2391
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2393
  ret i8* %3, !dbg !2394
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2395 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2399, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %1, metadata !2400, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i8* %2, metadata !2401, metadata !DIExpression()), !dbg !2403
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2404
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2404
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2402, metadata !DIExpression()), !dbg !2405
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2406), !dbg !2409
  call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()) #33, !dbg !2416
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2415, metadata !DIExpression()) #33, !dbg !2418
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2418, !alias.scope !2406
  %6 = icmp eq i32 %1, 10, !dbg !2419
  br i1 %6, label %7, label %8, !dbg !2421

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2422, !noalias !2406
  unreachable, !dbg !2422

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2423
  store i32 %1, i32* %9, align 8, !dbg !2424, !tbaa !1513, !alias.scope !2406
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2425
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2426
  ret i8* %10, !dbg !2427
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2428 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2432, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %1, metadata !2433, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i8* %2, metadata !2434, metadata !DIExpression()), !dbg !2437
  call void @llvm.dbg.value(metadata i64 %3, metadata !2435, metadata !DIExpression()), !dbg !2437
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2438
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2436, metadata !DIExpression()), !dbg !2439
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2440), !dbg !2443
  call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()) #33, !dbg !2444
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2415, metadata !DIExpression()) #33, !dbg !2446
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2446, !alias.scope !2440
  %7 = icmp eq i32 %1, 10, !dbg !2447
  br i1 %7, label %8, label %9, !dbg !2448

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2449, !noalias !2440
  unreachable, !dbg !2449

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2450
  store i32 %1, i32* %10, align 8, !dbg !2451, !tbaa !1513, !alias.scope !2440
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2452
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2453
  ret i8* %11, !dbg !2454
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2455 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2459, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %1, metadata !2460, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i32 0, metadata !2399, metadata !DIExpression()) #33, !dbg !2462
  call void @llvm.dbg.value(metadata i32 %0, metadata !2400, metadata !DIExpression()) #33, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %1, metadata !2401, metadata !DIExpression()) #33, !dbg !2462
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2464
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2464
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2402, metadata !DIExpression()) #33, !dbg !2465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466) #33, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()) #33, !dbg !2470
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2415, metadata !DIExpression()) #33, !dbg !2472
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2472, !alias.scope !2466
  %5 = icmp eq i32 %0, 10, !dbg !2473
  br i1 %5, label %6, label %7, !dbg !2474

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2475, !noalias !2466
  unreachable, !dbg !2475

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2476
  store i32 %0, i32* %8, align 8, !dbg !2477, !tbaa !1513, !alias.scope !2466
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2478
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2479
  ret i8* %9, !dbg !2480
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2481 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2485, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %1, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i64 %2, metadata !2487, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i32 0, metadata !2432, metadata !DIExpression()) #33, !dbg !2489
  call void @llvm.dbg.value(metadata i32 %0, metadata !2433, metadata !DIExpression()) #33, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %1, metadata !2434, metadata !DIExpression()) #33, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %2, metadata !2435, metadata !DIExpression()) #33, !dbg !2489
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2491
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2436, metadata !DIExpression()) #33, !dbg !2492
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2493) #33, !dbg !2496
  call void @llvm.dbg.value(metadata i32 %0, metadata !2410, metadata !DIExpression()) #33, !dbg !2497
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2415, metadata !DIExpression()) #33, !dbg !2499
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2499, !alias.scope !2493
  %6 = icmp eq i32 %0, 10, !dbg !2500
  br i1 %6, label %7, label %8, !dbg !2501

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2502, !noalias !2493
  unreachable, !dbg !2502

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2503
  store i32 %0, i32* %9, align 8, !dbg !2504, !tbaa !1513, !alias.scope !2493
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2505
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2506
  ret i8* %10, !dbg !2507
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2508 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i64 %1, metadata !2513, metadata !DIExpression()), !dbg !2516
  call void @llvm.dbg.value(metadata i8 %2, metadata !2514, metadata !DIExpression()), !dbg !2516
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2517
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2515, metadata !DIExpression()), !dbg !2518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2519, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1531, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 %2, metadata !1532, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8 %2, metadata !1534, metadata !DIExpression()), !dbg !2521
  %6 = lshr i8 %2, 5, !dbg !2523
  %7 = zext i8 %6 to i64, !dbg !2523
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2524
  call void @llvm.dbg.value(metadata i32* %8, metadata !1535, metadata !DIExpression()), !dbg !2521
  %9 = and i8 %2, 31, !dbg !2525
  %10 = zext i8 %9 to i32, !dbg !2525
  call void @llvm.dbg.value(metadata i32 %10, metadata !1537, metadata !DIExpression()), !dbg !2521
  %11 = load i32, i32* %8, align 4, !dbg !2526, !tbaa !529
  %12 = lshr i32 %11, %10, !dbg !2527
  %13 = and i32 %12, 1, !dbg !2528
  call void @llvm.dbg.value(metadata i32 %13, metadata !1538, metadata !DIExpression()), !dbg !2521
  %14 = xor i32 %13, 1, !dbg !2529
  %15 = shl i32 %14, %10, !dbg !2530
  %16 = xor i32 %15, %11, !dbg !2531
  store i32 %16, i32* %8, align 4, !dbg !2531, !tbaa !529
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2533
  ret i8* %17, !dbg !2534
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2535 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8 %1, metadata !2540, metadata !DIExpression()), !dbg !2541
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()) #33, !dbg !2542
  call void @llvm.dbg.value(metadata i64 -1, metadata !2513, metadata !DIExpression()) #33, !dbg !2542
  call void @llvm.dbg.value(metadata i8 %1, metadata !2514, metadata !DIExpression()) #33, !dbg !2542
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2544
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2515, metadata !DIExpression()) #33, !dbg !2545
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2546, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1531, metadata !DIExpression()) #33, !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1532, metadata !DIExpression()) #33, !dbg !2547
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()) #33, !dbg !2547
  call void @llvm.dbg.value(metadata i8 %1, metadata !1534, metadata !DIExpression()) #33, !dbg !2547
  %5 = lshr i8 %1, 5, !dbg !2549
  %6 = zext i8 %5 to i64, !dbg !2549
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2550
  call void @llvm.dbg.value(metadata i32* %7, metadata !1535, metadata !DIExpression()) #33, !dbg !2547
  %8 = and i8 %1, 31, !dbg !2551
  %9 = zext i8 %8 to i32, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %9, metadata !1537, metadata !DIExpression()) #33, !dbg !2547
  %10 = load i32, i32* %7, align 4, !dbg !2552, !tbaa !529
  %11 = lshr i32 %10, %9, !dbg !2553
  %12 = and i32 %11, 1, !dbg !2554
  call void @llvm.dbg.value(metadata i32 %12, metadata !1538, metadata !DIExpression()) #33, !dbg !2547
  %13 = xor i32 %12, 1, !dbg !2555
  %14 = shl i32 %13, %9, !dbg !2556
  %15 = xor i32 %14, %10, !dbg !2557
  store i32 %15, i32* %7, align 4, !dbg !2557, !tbaa !529
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2558
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2559
  ret i8* %16, !dbg !2560
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2561 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2563, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata i8* %0, metadata !2539, metadata !DIExpression()) #33, !dbg !2565
  call void @llvm.dbg.value(metadata i8 58, metadata !2540, metadata !DIExpression()) #33, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()) #33, !dbg !2567
  call void @llvm.dbg.value(metadata i64 -1, metadata !2513, metadata !DIExpression()) #33, !dbg !2567
  call void @llvm.dbg.value(metadata i8 58, metadata !2514, metadata !DIExpression()) #33, !dbg !2567
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2569
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2569
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2515, metadata !DIExpression()) #33, !dbg !2570
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2571, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1531, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()) #33, !dbg !2572
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2574
  call void @llvm.dbg.value(metadata i32* %4, metadata !1535, metadata !DIExpression()) #33, !dbg !2572
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()) #33, !dbg !2572
  %5 = load i32, i32* %4, align 4, !dbg !2575, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %5, metadata !1538, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2572
  %6 = or i32 %5, 67108864, !dbg !2576
  store i32 %6, i32* %4, align 4, !dbg !2576, !tbaa !529
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2577
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2578
  ret i8* %7, !dbg !2579
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2580 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i64 %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %0, metadata !2512, metadata !DIExpression()) #33, !dbg !2585
  call void @llvm.dbg.value(metadata i64 %1, metadata !2513, metadata !DIExpression()) #33, !dbg !2585
  call void @llvm.dbg.value(metadata i8 58, metadata !2514, metadata !DIExpression()) #33, !dbg !2585
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2515, metadata !DIExpression()) #33, !dbg !2588
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2589, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1531, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()) #33, !dbg !2590
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2592
  call void @llvm.dbg.value(metadata i32* %5, metadata !1535, metadata !DIExpression()) #33, !dbg !2590
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()) #33, !dbg !2590
  %6 = load i32, i32* %5, align 4, !dbg !2593, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %6, metadata !1538, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2590
  %7 = or i32 %6, 67108864, !dbg !2594
  store i32 %7, i32* %5, align 4, !dbg !2594, !tbaa !529
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2595
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2596
  ret i8* %8, !dbg !2597
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2598 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2600, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i32 %1, metadata !2601, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.value(metadata i8* %2, metadata !2602, metadata !DIExpression()), !dbg !2604
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2605
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2605
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2603, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()) #33, !dbg !2607
  call void @llvm.dbg.value(metadata i32 0, metadata !2415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2607
  %6 = icmp eq i32 %1, 10, !dbg !2609
  br i1 %6, label %7, label %8, !dbg !2610

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2611, !noalias !2612
  unreachable, !dbg !2611

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2607
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2615
  store i32 %1, i32* %9, align 8, !dbg !2615, !tbaa.struct !2520
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2615
  %11 = bitcast i32* %10 to i8*, !dbg !2615
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2615
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1531, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 58, metadata !1532, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 1, metadata !1533, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i8 58, metadata !1534, metadata !DIExpression()), !dbg !2616
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2618
  call void @llvm.dbg.value(metadata i32* %12, metadata !1535, metadata !DIExpression()), !dbg !2616
  call void @llvm.dbg.value(metadata i32 26, metadata !1537, metadata !DIExpression()), !dbg !2616
  %13 = load i32, i32* %12, align 4, !dbg !2619, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %13, metadata !1538, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2616
  %14 = or i32 %13, 67108864, !dbg !2620
  store i32 %14, i32* %12, align 4, !dbg !2620, !tbaa !529
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2621
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2622
  ret i8* %15, !dbg !2623
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2624 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2628, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %1, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %2, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8* %3, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()) #33, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()) #33, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %2, metadata !2639, metadata !DIExpression()) #33, !dbg !2643
  call void @llvm.dbg.value(metadata i8* %3, metadata !2640, metadata !DIExpression()) #33, !dbg !2643
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #33, !dbg !2643
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2645
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2645
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2642, metadata !DIExpression()) #33, !dbg !2646
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2647, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #33, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()) #33, !dbg !2648
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()) #33, !dbg !2648
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #33, !dbg !2648
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2650
  store i32 10, i32* %7, align 8, !dbg !2651, !tbaa !1513
  %8 = icmp ne i8* %1, null, !dbg !2652
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2653
  br i1 %10, label %12, label %11, !dbg !2653

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2654
  unreachable, !dbg !2654

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2655
  store i8* %1, i8** %13, align 8, !dbg !2656, !tbaa !1586
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2657
  store i8* %2, i8** %14, align 8, !dbg !2658, !tbaa !1589
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2659
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2660
  ret i8* %15, !dbg !2661
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2634 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2633, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* %1, metadata !2638, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* %2, metadata !2639, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i8* %3, metadata !2640, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.value(metadata i64 %4, metadata !2641, metadata !DIExpression()), !dbg !2662
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2663
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2642, metadata !DIExpression()), !dbg !2664
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2665, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1571, metadata !DIExpression()) #33, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %1, metadata !1572, metadata !DIExpression()) #33, !dbg !2666
  call void @llvm.dbg.value(metadata i8* %2, metadata !1573, metadata !DIExpression()) #33, !dbg !2666
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1571, metadata !DIExpression()) #33, !dbg !2666
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2668
  store i32 10, i32* %8, align 8, !dbg !2669, !tbaa !1513
  %9 = icmp ne i8* %1, null, !dbg !2670
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2671
  br i1 %11, label %13, label %12, !dbg !2671

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2672
  unreachable, !dbg !2672

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2673
  store i8* %1, i8** %14, align 8, !dbg !2674, !tbaa !1586
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2675
  store i8* %2, i8** %15, align 8, !dbg !2676, !tbaa !1589
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2677
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2678
  ret i8* %16, !dbg !2679
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2680 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %1, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %2, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i32 0, metadata !2628, metadata !DIExpression()) #33, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %0, metadata !2629, metadata !DIExpression()) #33, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %1, metadata !2630, metadata !DIExpression()) #33, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %2, metadata !2631, metadata !DIExpression()) #33, !dbg !2688
  call void @llvm.dbg.value(metadata i32 0, metadata !2633, metadata !DIExpression()) #33, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %0, metadata !2638, metadata !DIExpression()) #33, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()) #33, !dbg !2690
  call void @llvm.dbg.value(metadata i8* %2, metadata !2640, metadata !DIExpression()) #33, !dbg !2690
  call void @llvm.dbg.value(metadata i64 -1, metadata !2641, metadata !DIExpression()) #33, !dbg !2690
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2692
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2642, metadata !DIExpression()) #33, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2694, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1571, metadata !DIExpression()) #33, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %0, metadata !1572, metadata !DIExpression()) #33, !dbg !2695
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()) #33, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1571, metadata !DIExpression()) #33, !dbg !2695
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2697
  store i32 10, i32* %6, align 8, !dbg !2698, !tbaa !1513
  %7 = icmp ne i8* %0, null, !dbg !2699
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2700
  br i1 %9, label %11, label %10, !dbg !2700

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2701
  unreachable, !dbg !2701

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2702
  store i8* %0, i8** %12, align 8, !dbg !2703, !tbaa !1586
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2704
  store i8* %1, i8** %13, align 8, !dbg !2705, !tbaa !1589
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2706
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2707
  ret i8* %14, !dbg !2708
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2709 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2713, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2714, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %2, metadata !2715, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i64 %3, metadata !2716, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i32 0, metadata !2633, metadata !DIExpression()) #33, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %0, metadata !2638, metadata !DIExpression()) #33, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %1, metadata !2639, metadata !DIExpression()) #33, !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !2640, metadata !DIExpression()) #33, !dbg !2718
  call void @llvm.dbg.value(metadata i64 %3, metadata !2641, metadata !DIExpression()) #33, !dbg !2718
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2720
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2642, metadata !DIExpression()) #33, !dbg !2721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2722, !tbaa.struct !2520
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #33, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %0, metadata !1572, metadata !DIExpression()) #33, !dbg !2723
  call void @llvm.dbg.value(metadata i8* %1, metadata !1573, metadata !DIExpression()) #33, !dbg !2723
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1571, metadata !DIExpression()) #33, !dbg !2723
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2725
  store i32 10, i32* %7, align 8, !dbg !2726, !tbaa !1513
  %8 = icmp ne i8* %0, null, !dbg !2727
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2728
  br i1 %10, label %12, label %11, !dbg !2728

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2729
  unreachable, !dbg !2729

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2730
  store i8* %0, i8** %13, align 8, !dbg !2731, !tbaa !1586
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2732
  store i8* %1, i8** %14, align 8, !dbg !2733, !tbaa !1589
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2734
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2735
  ret i8* %15, !dbg !2736
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2737 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 %2, metadata !2743, metadata !DIExpression()), !dbg !2744
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2745
  ret i8* %4, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2747 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i64 %1, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()) #33, !dbg !2754
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #33, !dbg !2754
  call void @llvm.dbg.value(metadata i64 %1, metadata !2743, metadata !DIExpression()) #33, !dbg !2754
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2756
  ret i8* %3, !dbg !2757
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2758 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2762, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %1, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %0, metadata !2741, metadata !DIExpression()) #33, !dbg !2765
  call void @llvm.dbg.value(metadata i8* %1, metadata !2742, metadata !DIExpression()) #33, !dbg !2765
  call void @llvm.dbg.value(metadata i64 -1, metadata !2743, metadata !DIExpression()) #33, !dbg !2765
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2767
  ret i8* %3, !dbg !2768
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2773, metadata !DIExpression()), !dbg !2774
  call void @llvm.dbg.value(metadata i32 0, metadata !2762, metadata !DIExpression()) #33, !dbg !2775
  call void @llvm.dbg.value(metadata i8* %0, metadata !2763, metadata !DIExpression()) #33, !dbg !2775
  call void @llvm.dbg.value(metadata i32 0, metadata !2741, metadata !DIExpression()) #33, !dbg !2777
  call void @llvm.dbg.value(metadata i8* %0, metadata !2742, metadata !DIExpression()) #33, !dbg !2777
  call void @llvm.dbg.value(metadata i64 -1, metadata !2743, metadata !DIExpression()) #33, !dbg !2777
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2779
  ret i8* %2, !dbg !2780
}

; Function Attrs: nofree nounwind uwtable
define dso_local %struct.timespec* @get_root_dev_ino(%struct.timespec* noundef nonnull writeonly %0) local_unnamed_addr #24 !dbg !2781 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !2790, metadata !DIExpression()), !dbg !2814
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !2815
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #33, !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !2791, metadata !DIExpression()), !dbg !2816
  %4 = call i32 @lstat(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.95, i64 0, i64 0), %struct.stat* noundef nonnull %2) #33, !dbg !2817
  %5 = icmp eq i32 %4, 0, !dbg !2817
  br i1 %5, label %6, label %11, !dbg !2819

6:                                                ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !2820
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !dbg !2820, !tbaa !1007
  %9 = shufflevector <2 x i64> %8, <2 x i64> poison, <2 x i32> <i32 1, i32 0>, !dbg !2821
  %10 = bitcast %struct.timespec* %0 to <2 x i64>*, !dbg !2821
  store <2 x i64> %9, <2 x i64>* %10, align 8, !dbg !2821, !tbaa !1007
  br label %11, !dbg !2822

11:                                               ; preds = %1, %6
  %12 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ], !dbg !2814
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #33, !dbg !2823
  ret %struct.timespec* %12, !dbg !2823
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2824 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2863, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %1, metadata !2864, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %2, metadata !2865, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8* %3, metadata !2866, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i8** %4, metadata !2867, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.value(metadata i64 %5, metadata !2868, metadata !DIExpression()), !dbg !2869
  %7 = icmp eq i8* %1, null, !dbg !2870
  br i1 %7, label %10, label %8, !dbg !2872

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2873
  br label %12, !dbg !2873

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.97, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2874
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.99, i64 0, i64 0), i32 noundef 5) #33, !dbg !2875
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2875
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2876
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.101, i64 0, i64 0), i32 noundef 5) #33, !dbg !2877
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.102, i64 0, i64 0)) #33, !dbg !2877
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2878
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
  ], !dbg !2879

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !2880
  %21 = load i8*, i8** %4, align 8, !dbg !2880, !tbaa !439
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2880
  br label %147, !dbg !2882

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.104, i64 0, i64 0), i32 noundef 5) #33, !dbg !2883
  %25 = load i8*, i8** %4, align 8, !dbg !2883, !tbaa !439
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2883
  %27 = load i8*, i8** %26, align 8, !dbg !2883, !tbaa !439
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2883
  br label %147, !dbg !2884

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.105, i64 0, i64 0), i32 noundef 5) #33, !dbg !2885
  %31 = load i8*, i8** %4, align 8, !dbg !2885, !tbaa !439
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2885
  %33 = load i8*, i8** %32, align 8, !dbg !2885, !tbaa !439
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2885
  %35 = load i8*, i8** %34, align 8, !dbg !2885, !tbaa !439
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2885
  br label %147, !dbg !2886

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.106, i64 0, i64 0), i32 noundef 5) #33, !dbg !2887
  %39 = load i8*, i8** %4, align 8, !dbg !2887, !tbaa !439
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2887
  %41 = load i8*, i8** %40, align 8, !dbg !2887, !tbaa !439
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2887
  %43 = load i8*, i8** %42, align 8, !dbg !2887, !tbaa !439
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2887
  %45 = load i8*, i8** %44, align 8, !dbg !2887, !tbaa !439
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2887
  br label %147, !dbg !2888

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.107, i64 0, i64 0), i32 noundef 5) #33, !dbg !2889
  %49 = load i8*, i8** %4, align 8, !dbg !2889, !tbaa !439
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2889
  %51 = load i8*, i8** %50, align 8, !dbg !2889, !tbaa !439
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2889
  %53 = load i8*, i8** %52, align 8, !dbg !2889, !tbaa !439
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2889
  %55 = load i8*, i8** %54, align 8, !dbg !2889, !tbaa !439
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2889
  %57 = load i8*, i8** %56, align 8, !dbg !2889, !tbaa !439
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2889
  br label %147, !dbg !2890

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2891
  %61 = load i8*, i8** %4, align 8, !dbg !2891, !tbaa !439
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2891
  %63 = load i8*, i8** %62, align 8, !dbg !2891, !tbaa !439
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2891
  %65 = load i8*, i8** %64, align 8, !dbg !2891, !tbaa !439
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2891
  %67 = load i8*, i8** %66, align 8, !dbg !2891, !tbaa !439
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2891
  %69 = load i8*, i8** %68, align 8, !dbg !2891, !tbaa !439
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2891
  %71 = load i8*, i8** %70, align 8, !dbg !2891, !tbaa !439
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2891
  br label %147, !dbg !2892

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.109, i64 0, i64 0), i32 noundef 5) #33, !dbg !2893
  %75 = load i8*, i8** %4, align 8, !dbg !2893, !tbaa !439
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2893
  %77 = load i8*, i8** %76, align 8, !dbg !2893, !tbaa !439
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2893
  %79 = load i8*, i8** %78, align 8, !dbg !2893, !tbaa !439
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2893
  %81 = load i8*, i8** %80, align 8, !dbg !2893, !tbaa !439
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2893
  %83 = load i8*, i8** %82, align 8, !dbg !2893, !tbaa !439
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2893
  %85 = load i8*, i8** %84, align 8, !dbg !2893, !tbaa !439
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2893
  %87 = load i8*, i8** %86, align 8, !dbg !2893, !tbaa !439
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2893
  br label %147, !dbg !2894

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.110, i64 0, i64 0), i32 noundef 5) #33, !dbg !2895
  %91 = load i8*, i8** %4, align 8, !dbg !2895, !tbaa !439
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2895
  %93 = load i8*, i8** %92, align 8, !dbg !2895, !tbaa !439
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2895
  %95 = load i8*, i8** %94, align 8, !dbg !2895, !tbaa !439
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2895
  %97 = load i8*, i8** %96, align 8, !dbg !2895, !tbaa !439
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2895
  %99 = load i8*, i8** %98, align 8, !dbg !2895, !tbaa !439
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2895
  %101 = load i8*, i8** %100, align 8, !dbg !2895, !tbaa !439
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2895
  %103 = load i8*, i8** %102, align 8, !dbg !2895, !tbaa !439
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2895
  %105 = load i8*, i8** %104, align 8, !dbg !2895, !tbaa !439
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2895
  br label %147, !dbg !2896

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.111, i64 0, i64 0), i32 noundef 5) #33, !dbg !2897
  %109 = load i8*, i8** %4, align 8, !dbg !2897, !tbaa !439
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2897
  %111 = load i8*, i8** %110, align 8, !dbg !2897, !tbaa !439
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2897
  %113 = load i8*, i8** %112, align 8, !dbg !2897, !tbaa !439
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2897
  %115 = load i8*, i8** %114, align 8, !dbg !2897, !tbaa !439
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2897
  %117 = load i8*, i8** %116, align 8, !dbg !2897, !tbaa !439
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2897
  %119 = load i8*, i8** %118, align 8, !dbg !2897, !tbaa !439
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2897
  %121 = load i8*, i8** %120, align 8, !dbg !2897, !tbaa !439
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2897
  %123 = load i8*, i8** %122, align 8, !dbg !2897, !tbaa !439
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2897
  %125 = load i8*, i8** %124, align 8, !dbg !2897, !tbaa !439
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2897
  br label %147, !dbg !2898

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.112, i64 0, i64 0), i32 noundef 5) #33, !dbg !2899
  %129 = load i8*, i8** %4, align 8, !dbg !2899, !tbaa !439
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2899
  %131 = load i8*, i8** %130, align 8, !dbg !2899, !tbaa !439
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2899
  %133 = load i8*, i8** %132, align 8, !dbg !2899, !tbaa !439
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2899
  %135 = load i8*, i8** %134, align 8, !dbg !2899, !tbaa !439
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2899
  %137 = load i8*, i8** %136, align 8, !dbg !2899, !tbaa !439
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2899
  %139 = load i8*, i8** %138, align 8, !dbg !2899, !tbaa !439
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2899
  %141 = load i8*, i8** %140, align 8, !dbg !2899, !tbaa !439
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2899
  %143 = load i8*, i8** %142, align 8, !dbg !2899, !tbaa !439
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2899
  %145 = load i8*, i8** %144, align 8, !dbg !2899, !tbaa !439
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2899
  br label %147, !dbg !2900

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2901
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2902 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2906, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %1, metadata !2907, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2908, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %3, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8** %4, metadata !2910, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i64 0, metadata !2911, metadata !DIExpression()), !dbg !2912
  br label %6, !dbg !2913

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2915
  call void @llvm.dbg.value(metadata i64 %7, metadata !2911, metadata !DIExpression()), !dbg !2912
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2916
  %9 = load i8*, i8** %8, align 8, !dbg !2916, !tbaa !439
  %10 = icmp eq i8* %9, null, !dbg !2918
  %11 = add i64 %7, 1, !dbg !2919
  call void @llvm.dbg.value(metadata i64 %11, metadata !2911, metadata !DIExpression()), !dbg !2912
  br i1 %10, label %12, label %6, !dbg !2918, !llvm.loop !2920

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2922
  ret void, !dbg !2923
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2924 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2939, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !2940, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %2, metadata !2941, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i8* %3, metadata !2942, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2943, metadata !DIExpression()), !dbg !2948
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2949
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2945, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.value(metadata i64 0, metadata !2944, metadata !DIExpression()), !dbg !2947
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2944, metadata !DIExpression()), !dbg !2947
  %11 = load i32, i32* %8, align 8, !dbg !2951
  %12 = icmp sgt i32 %11, -1, !dbg !2951
  br i1 %12, label %20, label %13, !dbg !2951

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2951
  store i32 %14, i32* %8, align 8, !dbg !2951
  %15 = icmp ult i32 %11, -7, !dbg !2951
  br i1 %15, label %16, label %20, !dbg !2951

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2951
  %18 = sext i32 %11 to i64, !dbg !2951
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2951
  br label %24, !dbg !2951

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2951
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2951
  store i8* %23, i8** %10, align 8, !dbg !2951
  br label %24, !dbg !2951

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2951
  %28 = load i8*, i8** %27, align 8, !dbg !2951
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2954
  store i8* %28, i8** %29, align 8, !dbg !2955, !tbaa !439
  %30 = icmp eq i8* %28, null, !dbg !2956
  br i1 %30, label %210, label %31, !dbg !2957

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 1, metadata !2944, metadata !DIExpression()), !dbg !2947
  %32 = icmp sgt i32 %25, -1, !dbg !2951
  br i1 %32, label %40, label %33, !dbg !2951

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2951
  store i32 %34, i32* %8, align 8, !dbg !2951
  %35 = icmp ult i32 %25, -7, !dbg !2951
  br i1 %35, label %36, label %40, !dbg !2951

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2951
  %38 = sext i32 %25 to i64, !dbg !2951
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2951
  br label %44, !dbg !2951

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2951
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2951
  store i8* %43, i8** %10, align 8, !dbg !2951
  br label %44, !dbg !2951

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2951
  %48 = load i8*, i8** %47, align 8, !dbg !2951
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2954
  store i8* %48, i8** %49, align 8, !dbg !2955, !tbaa !439
  %50 = icmp eq i8* %48, null, !dbg !2956
  br i1 %50, label %210, label %51, !dbg !2957

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 2, metadata !2944, metadata !DIExpression()), !dbg !2947
  %52 = icmp sgt i32 %45, -1, !dbg !2951
  br i1 %52, label %60, label %53, !dbg !2951

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2951
  store i32 %54, i32* %8, align 8, !dbg !2951
  %55 = icmp ult i32 %45, -7, !dbg !2951
  br i1 %55, label %56, label %60, !dbg !2951

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2951
  %58 = sext i32 %45 to i64, !dbg !2951
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2951
  br label %64, !dbg !2951

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2951
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2951
  store i8* %63, i8** %10, align 8, !dbg !2951
  br label %64, !dbg !2951

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2951
  %68 = load i8*, i8** %67, align 8, !dbg !2951
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2954
  store i8* %68, i8** %69, align 8, !dbg !2955, !tbaa !439
  %70 = icmp eq i8* %68, null, !dbg !2956
  br i1 %70, label %210, label %71, !dbg !2957

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 3, metadata !2944, metadata !DIExpression()), !dbg !2947
  %72 = icmp sgt i32 %65, -1, !dbg !2951
  br i1 %72, label %80, label %73, !dbg !2951

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2951
  store i32 %74, i32* %8, align 8, !dbg !2951
  %75 = icmp ult i32 %65, -7, !dbg !2951
  br i1 %75, label %76, label %80, !dbg !2951

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2951
  %78 = sext i32 %65 to i64, !dbg !2951
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2951
  br label %84, !dbg !2951

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2951
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2951
  store i8* %83, i8** %10, align 8, !dbg !2951
  br label %84, !dbg !2951

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2951
  %88 = load i8*, i8** %87, align 8, !dbg !2951
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2954
  store i8* %88, i8** %89, align 8, !dbg !2955, !tbaa !439
  %90 = icmp eq i8* %88, null, !dbg !2956
  br i1 %90, label %210, label %91, !dbg !2957

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 4, metadata !2944, metadata !DIExpression()), !dbg !2947
  %92 = icmp sgt i32 %85, -1, !dbg !2951
  br i1 %92, label %100, label %93, !dbg !2951

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2951
  store i32 %94, i32* %8, align 8, !dbg !2951
  %95 = icmp ult i32 %85, -7, !dbg !2951
  br i1 %95, label %96, label %100, !dbg !2951

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2951
  %98 = sext i32 %85 to i64, !dbg !2951
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2951
  br label %104, !dbg !2951

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2951
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2951
  store i8* %103, i8** %10, align 8, !dbg !2951
  br label %104, !dbg !2951

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2951
  %108 = load i8*, i8** %107, align 8, !dbg !2951
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2954
  store i8* %108, i8** %109, align 8, !dbg !2955, !tbaa !439
  %110 = icmp eq i8* %108, null, !dbg !2956
  br i1 %110, label %210, label %111, !dbg !2957

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 5, metadata !2944, metadata !DIExpression()), !dbg !2947
  %112 = icmp sgt i32 %105, -1, !dbg !2951
  br i1 %112, label %120, label %113, !dbg !2951

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2951
  store i32 %114, i32* %8, align 8, !dbg !2951
  %115 = icmp ult i32 %105, -7, !dbg !2951
  br i1 %115, label %116, label %120, !dbg !2951

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2951
  %118 = sext i32 %105 to i64, !dbg !2951
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2951
  br label %124, !dbg !2951

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2951
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2951
  store i8* %123, i8** %10, align 8, !dbg !2951
  br label %124, !dbg !2951

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2951
  %128 = load i8*, i8** %127, align 8, !dbg !2951
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2954
  store i8* %128, i8** %129, align 8, !dbg !2955, !tbaa !439
  %130 = icmp eq i8* %128, null, !dbg !2956
  br i1 %130, label %210, label %131, !dbg !2957

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 6, metadata !2944, metadata !DIExpression()), !dbg !2947
  %132 = icmp sgt i32 %125, -1, !dbg !2951
  br i1 %132, label %140, label %133, !dbg !2951

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2951
  store i32 %134, i32* %8, align 8, !dbg !2951
  %135 = icmp ult i32 %125, -7, !dbg !2951
  br i1 %135, label %136, label %140, !dbg !2951

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2951
  %138 = sext i32 %125 to i64, !dbg !2951
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2951
  br label %144, !dbg !2951

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2951
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2951
  store i8* %143, i8** %10, align 8, !dbg !2951
  br label %144, !dbg !2951

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2951
  %148 = load i8*, i8** %147, align 8, !dbg !2951
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2954
  store i8* %148, i8** %149, align 8, !dbg !2955, !tbaa !439
  %150 = icmp eq i8* %148, null, !dbg !2956
  br i1 %150, label %210, label %151, !dbg !2957

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 7, metadata !2944, metadata !DIExpression()), !dbg !2947
  %152 = icmp sgt i32 %145, -1, !dbg !2951
  br i1 %152, label %160, label %153, !dbg !2951

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2951
  store i32 %154, i32* %8, align 8, !dbg !2951
  %155 = icmp ult i32 %145, -7, !dbg !2951
  br i1 %155, label %156, label %160, !dbg !2951

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2951
  %158 = sext i32 %145 to i64, !dbg !2951
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2951
  br label %164, !dbg !2951

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2951
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2951
  store i8* %163, i8** %10, align 8, !dbg !2951
  br label %164, !dbg !2951

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2951
  %168 = load i8*, i8** %167, align 8, !dbg !2951
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2954
  store i8* %168, i8** %169, align 8, !dbg !2955, !tbaa !439
  %170 = icmp eq i8* %168, null, !dbg !2956
  br i1 %170, label %210, label %171, !dbg !2957

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 8, metadata !2944, metadata !DIExpression()), !dbg !2947
  %172 = icmp sgt i32 %165, -1, !dbg !2951
  br i1 %172, label %180, label %173, !dbg !2951

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2951
  store i32 %174, i32* %8, align 8, !dbg !2951
  %175 = icmp ult i32 %165, -7, !dbg !2951
  br i1 %175, label %176, label %180, !dbg !2951

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2951
  %178 = sext i32 %165 to i64, !dbg !2951
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2951
  br label %184, !dbg !2951

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2951
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2951
  store i8* %183, i8** %10, align 8, !dbg !2951
  br label %184, !dbg !2951

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2951
  %188 = load i8*, i8** %187, align 8, !dbg !2951
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2954
  store i8* %188, i8** %189, align 8, !dbg !2955, !tbaa !439
  %190 = icmp eq i8* %188, null, !dbg !2956
  br i1 %190, label %210, label %191, !dbg !2957

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2944, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata i64 9, metadata !2944, metadata !DIExpression()), !dbg !2947
  %192 = icmp sgt i32 %185, -1, !dbg !2951
  br i1 %192, label %200, label %193, !dbg !2951

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2951
  store i32 %194, i32* %8, align 8, !dbg !2951
  %195 = icmp ult i32 %185, -7, !dbg !2951
  br i1 %195, label %196, label %200, !dbg !2951

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2951
  %198 = sext i32 %185 to i64, !dbg !2951
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2951
  br label %203, !dbg !2951

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2951
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2951
  store i8* %202, i8** %10, align 8, !dbg !2951
  br label %203, !dbg !2951

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2951
  %206 = load i8*, i8** %205, align 8, !dbg !2951
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2954
  store i8* %206, i8** %207, align 8, !dbg !2955, !tbaa !439
  %208 = icmp eq i8* %206, null, !dbg !2956
  %209 = select i1 %208, i64 9, i64 10, !dbg !2957
  br label %210, !dbg !2957

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2958
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2960
  ret void, !dbg !2960
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2961 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2965, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %2, metadata !2967, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %3, metadata !2968, metadata !DIExpression()), !dbg !2970
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2971
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2971
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.va_start(i8* nonnull %7), !dbg !2973
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2974
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2974
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2974, !tbaa.struct !1217
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2974
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2974
  call void @llvm.va_end(i8* nonnull %7), !dbg !2975
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2976
  ret void, !dbg !2976
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2977 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2978, !tbaa !439
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.100, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2978
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.117, i64 0, i64 0), i32 noundef 5) #33, !dbg !2979
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.118, i64 0, i64 0)) #33, !dbg !2979
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.119, i64 0, i64 0), i32 noundef 5) #33, !dbg !2980
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.120, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.121, i64 0, i64 0)) #33, !dbg !2980
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.98, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.122, i64 0, i64 0), i32 noundef 5) #33, !dbg !2981
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.123, i64 0, i64 0)) #33, !dbg !2981
  ret void, !dbg !2982
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2983 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2988, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %1, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 %2, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()) #33, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()) #33, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()) #33, !dbg !2997
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2999
  call void @llvm.dbg.value(metadata i8* %4, metadata !3000, metadata !DIExpression()) #33, !dbg !3005
  %5 = icmp eq i8* %4, null, !dbg !3007
  br i1 %5, label %6, label %7, !dbg !3009

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3010
  unreachable, !dbg !3010

7:                                                ; preds = %3
  ret i8* %4, !dbg !3011
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %1, metadata !2995, metadata !DIExpression()), !dbg !3012
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()), !dbg !3012
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3013
  call void @llvm.dbg.value(metadata i8* %4, metadata !3000, metadata !DIExpression()) #33, !dbg !3014
  %5 = icmp eq i8* %4, null, !dbg !3016
  br i1 %5, label %6, label %7, !dbg !3017

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3018
  unreachable, !dbg !3018

7:                                                ; preds = %3
  ret i8* %4, !dbg !3019
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3020 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()), !dbg !3025
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3026
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #33, !dbg !3027
  %3 = icmp eq i8* %2, null, !dbg !3029
  br i1 %3, label %4, label %5, !dbg !3030

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3031
  unreachable, !dbg !3031

5:                                                ; preds = %1
  ret i8* %2, !dbg !3032
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3033 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.value(metadata i64 %0, metadata !3039, metadata !DIExpression()) #33, !dbg !3043
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3045
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #33, !dbg !3046
  %3 = icmp eq i8* %2, null, !dbg !3048
  br i1 %3, label %4, label %5, !dbg !3049

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3050
  unreachable, !dbg !3050

5:                                                ; preds = %1
  ret i8* %2, !dbg !3051
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3052 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3054, metadata !DIExpression()), !dbg !3055
  call void @llvm.dbg.value(metadata i64 %0, metadata !3024, metadata !DIExpression()) #33, !dbg !3056
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !3058
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #33, !dbg !3059
  %3 = icmp eq i8* %2, null, !dbg !3061
  br i1 %3, label %4, label %5, !dbg !3062

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3063
  unreachable, !dbg !3063

5:                                                ; preds = %1
  ret i8* %2, !dbg !3064
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #33, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #33, !dbg !3077
  %3 = icmp eq i64 %1, 0, !dbg !3079
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3079
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3080
  call void @llvm.dbg.value(metadata i8* %5, metadata !3000, metadata !DIExpression()) #33, !dbg !3081
  %6 = icmp eq i8* %5, null, !dbg !3083
  br i1 %6, label %7, label %8, !dbg !3084

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3085
  unreachable, !dbg !3085

8:                                                ; preds = %2
  ret i8* %5, !dbg !3086
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3087 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i8* %0, metadata !3094, metadata !DIExpression()) #33, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %1, metadata !3097, metadata !DIExpression()) #33, !dbg !3098
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #33, !dbg !3100
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #33, !dbg !3100
  %3 = icmp eq i64 %1, 0, !dbg !3102
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3102
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %5, metadata !3000, metadata !DIExpression()) #33, !dbg !3104
  %6 = icmp eq i8* %5, null, !dbg !3106
  br i1 %6, label %7, label %8, !dbg !3107

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3108
  unreachable, !dbg !3108

8:                                                ; preds = %2
  ret i8* %5, !dbg !3109
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3110 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %1, metadata !3115, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i64 %2, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i8* %0, metadata !3118, metadata !DIExpression()) #33, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %1, metadata !3121, metadata !DIExpression()) #33, !dbg !3123
  call void @llvm.dbg.value(metadata i64 %2, metadata !3122, metadata !DIExpression()) #33, !dbg !3123
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %4, metadata !3000, metadata !DIExpression()) #33, !dbg !3126
  %5 = icmp eq i8* %4, null, !dbg !3128
  br i1 %5, label %6, label %7, !dbg !3129

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3130
  unreachable, !dbg !3130

7:                                                ; preds = %3
  ret i8* %4, !dbg !3131
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3132 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3137, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i8* null, metadata !2992, metadata !DIExpression()) #33, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %0, metadata !2995, metadata !DIExpression()) #33, !dbg !3139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2996, metadata !DIExpression()) #33, !dbg !3139
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3141
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3142
  %4 = icmp eq i8* %3, null, !dbg !3144
  br i1 %4, label %5, label %6, !dbg !3145

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3146
  unreachable, !dbg !3146

6:                                                ; preds = %2
  ret i8* %3, !dbg !3147
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3148 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3152, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i64 %1, metadata !3153, metadata !DIExpression()), !dbg !3154
  call void @llvm.dbg.value(metadata i8* null, metadata !3114, metadata !DIExpression()) #33, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %0, metadata !3115, metadata !DIExpression()) #33, !dbg !3155
  call void @llvm.dbg.value(metadata i64 %1, metadata !3116, metadata !DIExpression()) #33, !dbg !3155
  call void @llvm.dbg.value(metadata i8* null, metadata !3118, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %0, metadata !3121, metadata !DIExpression()) #33, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %1, metadata !3122, metadata !DIExpression()) #33, !dbg !3157
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3160
  %4 = icmp eq i8* %3, null, !dbg !3162
  br i1 %4, label %5, label %6, !dbg !3163

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3164
  unreachable, !dbg !3164

6:                                                ; preds = %2
  ret i8* %3, !dbg !3165
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3166 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3170, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i64* %1, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()) #33, !dbg !3173
  call void @llvm.dbg.value(metadata i64* %1, metadata !371, metadata !DIExpression()) #33, !dbg !3173
  call void @llvm.dbg.value(metadata i64 1, metadata !372, metadata !DIExpression()) #33, !dbg !3173
  %3 = load i64, i64* %1, align 8, !dbg !3175, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %3, metadata !373, metadata !DIExpression()) #33, !dbg !3173
  %4 = icmp eq i8* %0, null, !dbg !3176
  br i1 %4, label %5, label %8, !dbg !3178

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3179
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3182
  br label %15, !dbg !3182

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3183
  %10 = add nuw i64 %9, 1, !dbg !3183
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !3183
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3183
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %13, metadata !373, metadata !DIExpression()) #33, !dbg !3173
  br i1 %12, label %14, label %15, !dbg !3186

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !3187
  unreachable, !dbg !3187

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3173
  call void @llvm.dbg.value(metadata i64 %16, metadata !373, metadata !DIExpression()) #33, !dbg !3173
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()) #33, !dbg !3188
  call void @llvm.dbg.value(metadata i64 %16, metadata !2995, metadata !DIExpression()) #33, !dbg !3188
  call void @llvm.dbg.value(metadata i64 1, metadata !2996, metadata !DIExpression()) #33, !dbg !3188
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !3190
  call void @llvm.dbg.value(metadata i8* %17, metadata !3000, metadata !DIExpression()) #33, !dbg !3191
  %18 = icmp eq i8* %17, null, !dbg !3193
  br i1 %18, label %19, label %20, !dbg !3194

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !3195
  unreachable, !dbg !3195

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !370, metadata !DIExpression()) #33, !dbg !3173
  store i64 %16, i64* %1, align 8, !dbg !3196, !tbaa !1007
  ret i8* %17, !dbg !3197
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !365 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !370, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64* %1, metadata !371, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i64 %2, metadata !372, metadata !DIExpression()), !dbg !3198
  %4 = load i64, i64* %1, align 8, !dbg !3199, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %4, metadata !373, metadata !DIExpression()), !dbg !3198
  %5 = icmp eq i8* %0, null, !dbg !3200
  br i1 %5, label %6, label %13, !dbg !3201

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3202
  br i1 %7, label %8, label %20, !dbg !3203

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %9, metadata !373, metadata !DIExpression()), !dbg !3198
  %10 = icmp ugt i64 %2, 128, !dbg !3206
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %12, metadata !373, metadata !DIExpression()), !dbg !3198
  br label %20, !dbg !3208

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3209
  %15 = add nuw i64 %14, 1, !dbg !3209
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3209
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3209
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %18, metadata !373, metadata !DIExpression()), !dbg !3198
  br i1 %17, label %19, label %20, !dbg !3210

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !3211
  unreachable, !dbg !3211

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3198
  call void @llvm.dbg.value(metadata i64 %21, metadata !373, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %0, metadata !2992, metadata !DIExpression()) #33, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %21, metadata !2995, metadata !DIExpression()) #33, !dbg !3212
  call void @llvm.dbg.value(metadata i64 %2, metadata !2996, metadata !DIExpression()) #33, !dbg !3212
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !3214
  call void @llvm.dbg.value(metadata i8* %22, metadata !3000, metadata !DIExpression()) #33, !dbg !3215
  %23 = icmp eq i8* %22, null, !dbg !3217
  br i1 %23, label %24, label %25, !dbg !3218

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !3219
  unreachable, !dbg !3219

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !370, metadata !DIExpression()), !dbg !3198
  store i64 %21, i64* %1, align 8, !dbg !3220, !tbaa !1007
  ret i8* %22, !dbg !3221
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !377 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !385, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64* %1, metadata !386, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %2, metadata !387, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %3, metadata !388, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %4, metadata !389, metadata !DIExpression()), !dbg !3222
  %6 = load i64, i64* %1, align 8, !dbg !3223, !tbaa !1007
  call void @llvm.dbg.value(metadata i64 %6, metadata !390, metadata !DIExpression()), !dbg !3222
  %7 = ashr i64 %6, 1, !dbg !3224
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3224
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3224
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3224
  call void @llvm.dbg.value(metadata i64 %10, metadata !391, metadata !DIExpression()), !dbg !3222
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3226
  call void @llvm.dbg.value(metadata i64 %11, metadata !391, metadata !DIExpression()), !dbg !3222
  %12 = icmp sgt i64 %3, -1, !dbg !3227
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3229
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %15, metadata !391, metadata !DIExpression()), !dbg !3222
  %16 = icmp slt i64 %4, 0, !dbg !3230
  br i1 %16, label %17, label %30, !dbg !3230

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3230
  br i1 %18, label %19, label %24, !dbg !3230

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3230
  %21 = udiv i64 9223372036854775807, %20, !dbg !3230
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3230
  br i1 %23, label %46, label %43, !dbg !3230

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3230
  br i1 %25, label %43, label %26, !dbg !3230

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3230
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3230
  %29 = icmp ult i64 %28, %15, !dbg !3230
  br i1 %29, label %46, label %43, !dbg !3230

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3230
  br i1 %31, label %43, label %32, !dbg !3230

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3230
  br i1 %33, label %34, label %40, !dbg !3230

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3230
  br i1 %35, label %43, label %36, !dbg !3230

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3230
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3230
  %39 = icmp ult i64 %38, %4, !dbg !3230
  br i1 %39, label %46, label %43, !dbg !3230

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3230
  %42 = icmp ult i64 %41, %15, !dbg !3230
  br i1 %42, label %46, label %43, !dbg !3230

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3222
  %44 = mul i64 %15, %4, !dbg !3230
  call void @llvm.dbg.value(metadata i64 %44, metadata !392, metadata !DIExpression()), !dbg !3222
  %45 = icmp slt i64 %44, 128, !dbg !3230
  br i1 %45, label %46, label %52, !dbg !3230

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !393, metadata !DIExpression()), !dbg !3222
  %48 = sdiv i64 %47, %4, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %48, metadata !391, metadata !DIExpression()), !dbg !3222
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3234
  call void @llvm.dbg.value(metadata i64 %51, metadata !392, metadata !DIExpression()), !dbg !3222
  br label %52, !dbg !3235

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3222
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3222
  call void @llvm.dbg.value(metadata i64 %54, metadata !392, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %53, metadata !391, metadata !DIExpression()), !dbg !3222
  %55 = icmp eq i8* %0, null, !dbg !3236
  br i1 %55, label %56, label %57, !dbg !3238

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3239, !tbaa !1007
  br label %57, !dbg !3240

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3241
  %59 = icmp slt i64 %58, %2, !dbg !3243
  br i1 %59, label %60, label %97, !dbg !3244

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3245
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3245
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3245
  call void @llvm.dbg.value(metadata i64 %63, metadata !391, metadata !DIExpression()), !dbg !3222
  br i1 %62, label %96, label %64, !dbg !3246

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3247
  br i1 %66, label %96, label %67, !dbg !3247

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3248

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3248
  br i1 %69, label %70, label %75, !dbg !3248

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3248
  %72 = udiv i64 9223372036854775807, %71, !dbg !3248
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3248
  br i1 %74, label %96, label %94, !dbg !3248

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3248
  br i1 %76, label %94, label %77, !dbg !3248

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3248
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3248
  %80 = icmp ult i64 %79, %63, !dbg !3248
  br i1 %80, label %96, label %94, !dbg !3248

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3248
  br i1 %82, label %94, label %83, !dbg !3248

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3248
  br i1 %84, label %85, label %91, !dbg !3248

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3248
  br i1 %86, label %94, label %87, !dbg !3248

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3248
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3248
  %90 = icmp ult i64 %89, %4, !dbg !3248
  br i1 %90, label %96, label %94, !dbg !3248

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3248
  %93 = icmp ult i64 %92, %63, !dbg !3248
  br i1 %93, label %96, label %94, !dbg !3248

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !392, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3222
  %95 = mul i64 %63, %4, !dbg !3248
  call void @llvm.dbg.value(metadata i64 %95, metadata !392, metadata !DIExpression()), !dbg !3222
  br label %97, !dbg !3249

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !3250
  unreachable, !dbg !3250

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3222
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3222
  call void @llvm.dbg.value(metadata i64 %99, metadata !392, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i64 %98, metadata !391, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8* %0, metadata !3069, metadata !DIExpression()) #33, !dbg !3251
  call void @llvm.dbg.value(metadata i64 %99, metadata !3070, metadata !DIExpression()) #33, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #33, !dbg !3253
  call void @llvm.dbg.value(metadata i64 %99, metadata !3076, metadata !DIExpression()) #33, !dbg !3253
  %100 = icmp eq i64 %99, 0, !dbg !3255
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3255
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !3256
  call void @llvm.dbg.value(metadata i8* %102, metadata !3000, metadata !DIExpression()) #33, !dbg !3257
  %103 = icmp eq i8* %102, null, !dbg !3259
  br i1 %103, label %104, label %105, !dbg !3260

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !3261
  unreachable, !dbg !3261

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !385, metadata !DIExpression()), !dbg !3222
  store i64 %98, i64* %1, align 8, !dbg !3262, !tbaa !1007
  ret i8* %102, !dbg !3263
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3264 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3266, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()) #33, !dbg !3272
  call void @llvm.dbg.value(metadata i64 1, metadata !3271, metadata !DIExpression()) #33, !dbg !3272
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #33, !dbg !3275
  %3 = icmp eq i8* %2, null, !dbg !3277
  br i1 %3, label %4, label %5, !dbg !3278

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3279
  unreachable, !dbg !3279

5:                                                ; preds = %1
  ret i8* %2, !dbg !3280
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3269 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3268, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3271, metadata !DIExpression()), !dbg !3281
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3282
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3283
  %4 = icmp eq i8* %3, null, !dbg !3285
  br i1 %4, label %5, label %6, !dbg !3286

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3287
  unreachable, !dbg !3287

6:                                                ; preds = %2
  ret i8* %3, !dbg !3288
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3289 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3291, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()) #33, !dbg !3297
  call void @llvm.dbg.value(metadata i64 1, metadata !3296, metadata !DIExpression()) #33, !dbg !3297
  call void @llvm.dbg.value(metadata i64 %0, metadata !3299, metadata !DIExpression()) #33, !dbg !3303
  call void @llvm.dbg.value(metadata i64 1, metadata !3302, metadata !DIExpression()) #33, !dbg !3303
  call void @llvm.dbg.value(metadata i64 %0, metadata !3299, metadata !DIExpression()) #33, !dbg !3303
  call void @llvm.dbg.value(metadata i64 1, metadata !3302, metadata !DIExpression()) #33, !dbg !3303
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3305
  call void @llvm.dbg.value(metadata i8* %2, metadata !3000, metadata !DIExpression()) #33, !dbg !3306
  %3 = icmp eq i8* %2, null, !dbg !3308
  br i1 %3, label %4, label %5, !dbg !3309

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3310
  unreachable, !dbg !3310

5:                                                ; preds = %1
  ret i8* %2, !dbg !3311
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3294 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3293, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %1, metadata !3296, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i64 %0, metadata !3299, metadata !DIExpression()) #33, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()) #33, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %0, metadata !3299, metadata !DIExpression()) #33, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %1, metadata !3302, metadata !DIExpression()) #33, !dbg !3313
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3316
  %4 = icmp eq i8* %3, null, !dbg !3318
  br i1 %4, label %5, label %6, !dbg !3319

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3320
  unreachable, !dbg !3320

6:                                                ; preds = %2
  ret i8* %3, !dbg !3321
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3322 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()) #33, !dbg !3329
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3331
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3332
  %4 = icmp eq i8* %3, null, !dbg !3334
  br i1 %4, label %5, label %6, !dbg !3335

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3336
  unreachable, !dbg !3336

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3337, metadata !DIExpression()) #33, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()) #33, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()) #33, !dbg !3342
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3344
  ret i8* %3, !dbg !3345
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3346 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.value(metadata i64 %1, metadata !3037, metadata !DIExpression()) #33, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %1, metadata !3039, metadata !DIExpression()) #33, !dbg !3355
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3357
  call void @llvm.dbg.value(metadata i8* %3, metadata !3000, metadata !DIExpression()) #33, !dbg !3358
  %4 = icmp eq i8* %3, null, !dbg !3360
  br i1 %4, label %5, label %6, !dbg !3361

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3362
  unreachable, !dbg !3362

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3337, metadata !DIExpression()) #33, !dbg !3363
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()) #33, !dbg !3363
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()) #33, !dbg !3363
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3365
  ret i8* %3, !dbg !3366
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3367 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3371, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %1, metadata !3372, metadata !DIExpression()), !dbg !3374
  %3 = add nsw i64 %1, 1, !dbg !3375
  call void @llvm.dbg.value(metadata i64 %3, metadata !3037, metadata !DIExpression()) #33, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %3, metadata !3039, metadata !DIExpression()) #33, !dbg !3378
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3380
  call void @llvm.dbg.value(metadata i8* %4, metadata !3000, metadata !DIExpression()) #33, !dbg !3381
  %5 = icmp eq i8* %4, null, !dbg !3383
  br i1 %5, label %6, label %7, !dbg !3384

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3385
  unreachable, !dbg !3385

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3373, metadata !DIExpression()), !dbg !3374
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3386
  store i8 0, i8* %8, align 1, !dbg !3387, !tbaa !538
  call void @llvm.dbg.value(metadata i8* %4, metadata !3337, metadata !DIExpression()) #33, !dbg !3388
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()) #33, !dbg !3388
  call void @llvm.dbg.value(metadata i64 %1, metadata !3341, metadata !DIExpression()) #33, !dbg !3388
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3390
  ret i8* %4, !dbg !3391
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3392 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3394, metadata !DIExpression()), !dbg !3395
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3396
  %3 = add i64 %2, 1, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #33, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %3, metadata !3327, metadata !DIExpression()) #33, !dbg !3398
  call void @llvm.dbg.value(metadata i64 %3, metadata !3024, metadata !DIExpression()) #33, !dbg !3400
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3402
  call void @llvm.dbg.value(metadata i8* %4, metadata !3000, metadata !DIExpression()) #33, !dbg !3403
  %5 = icmp eq i8* %4, null, !dbg !3405
  br i1 %5, label %6, label %7, !dbg !3406

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3407
  unreachable, !dbg !3407

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3337, metadata !DIExpression()) #33, !dbg !3408
  call void @llvm.dbg.value(metadata i8* %0, metadata !3340, metadata !DIExpression()) #33, !dbg !3408
  call void @llvm.dbg.value(metadata i64 %3, metadata !3341, metadata !DIExpression()) #33, !dbg !3408
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3410
  ret i8* %4, !dbg !3411
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3412 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3417, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %1, metadata !3414, metadata !DIExpression()), !dbg !3418
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.138, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.139, i64 0, i64 0), i32 noundef 5) #33, !dbg !3417
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.140, i64 0, i64 0), i8* noundef %2) #33, !dbg !3417
  %3 = icmp eq i32 %1, 0, !dbg !3417
  tail call void @llvm.assume(i1 %3), !dbg !3417
  tail call void @abort() #35, !dbg !3419
  unreachable, !dbg !3419
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local noalias i8* @xgetcwd() local_unnamed_addr #12 !dbg !3420 {
  %1 = tail call i8* @getcwd(i8* noundef null, i64 noundef 0) #33, !dbg !3424
  call void @llvm.dbg.value(metadata i8* %1, metadata !3423, metadata !DIExpression()), !dbg !3425
  %2 = icmp eq i8* %1, null, !dbg !3426
  br i1 %2, label %3, label %8, !dbg !3428

3:                                                ; preds = %0
  %4 = tail call i32* @__errno_location() #36, !dbg !3429
  %5 = load i32, i32* %4, align 4, !dbg !3429, !tbaa !529
  %6 = icmp eq i32 %5, 12, !dbg !3430
  br i1 %6, label %7, label %8, !dbg !3431

7:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !3432
  unreachable, !dbg !3432

8:                                                ; preds = %3, %0
  ret i8* %1, !dbg !3433
}

; Function Attrs: nounwind
declare i8* @getcwd(i8* noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3434 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3472, metadata !DIExpression()), !dbg !3477
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3478
  call void @llvm.dbg.value(metadata i1 undef, metadata !3473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3477
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3479, metadata !DIExpression()), !dbg !3482
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3484
  %4 = load i32, i32* %3, align 8, !dbg !3484, !tbaa !3485
  %5 = and i32 %4, 32, !dbg !3486
  %6 = icmp eq i32 %5, 0, !dbg !3486
  call void @llvm.dbg.value(metadata i1 %6, metadata !3475, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3477
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3487
  %8 = icmp eq i32 %7, 0, !dbg !3488
  call void @llvm.dbg.value(metadata i1 %8, metadata !3476, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3477
  br i1 %6, label %9, label %19, !dbg !3489

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3491
  call void @llvm.dbg.value(metadata i1 %10, metadata !3473, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3477
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3492
  %12 = xor i1 %8, true, !dbg !3492
  %13 = sext i1 %12 to i32, !dbg !3492
  br i1 %11, label %22, label %14, !dbg !3492

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3493
  %16 = load i32, i32* %15, align 4, !dbg !3493, !tbaa !529
  %17 = icmp ne i32 %16, 9, !dbg !3494
  %18 = sext i1 %17 to i32, !dbg !3495
  br label %22, !dbg !3495

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3496

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3498
  store i32 0, i32* %21, align 4, !dbg !3500, !tbaa !529
  br label %22, !dbg !3498

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3477
  ret i32 %23, !dbg !3501
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3502 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3540, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3541, metadata !DIExpression()), !dbg !3544
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3545
  call void @llvm.dbg.value(metadata i32 %2, metadata !3542, metadata !DIExpression()), !dbg !3544
  %3 = icmp slt i32 %2, 0, !dbg !3546
  br i1 %3, label %4, label %6, !dbg !3548

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3549
  br label %24, !dbg !3550

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3551
  %8 = icmp eq i32 %7, 0, !dbg !3551
  br i1 %8, label %13, label %9, !dbg !3553

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3554
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3555
  %12 = icmp eq i64 %11, -1, !dbg !3556
  br i1 %12, label %16, label %13, !dbg !3557

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3558
  %15 = icmp eq i32 %14, 0, !dbg !3558
  br i1 %15, label %16, label %18, !dbg !3559

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %21, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3561

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3562
  %20 = load i32, i32* %19, align 4, !dbg !3562, !tbaa !529
  call void @llvm.dbg.value(metadata i32 %20, metadata !3541, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.value(metadata i32 0, metadata !3543, metadata !DIExpression()), !dbg !3544
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3560
  call void @llvm.dbg.value(metadata i32 %21, metadata !3543, metadata !DIExpression()), !dbg !3544
  %22 = icmp eq i32 %20, 0, !dbg !3563
  br i1 %22, label %24, label %23, !dbg !3561

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3565, !tbaa !529
  call void @llvm.dbg.value(metadata i32 -1, metadata !3543, metadata !DIExpression()), !dbg !3544
  br label %24, !dbg !3567

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3544
  ret i32 %25, !dbg !3568
}

; Function Attrs: nofree nounwind
declare !dbg !3569 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3570 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3571 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3574 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3612, metadata !DIExpression()), !dbg !3613
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3614
  br i1 %2, label %6, label %3, !dbg !3616

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3617
  %5 = icmp eq i32 %4, 0, !dbg !3617
  br i1 %5, label %6, label %8, !dbg !3618

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3619
  br label %17, !dbg !3620

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3621, metadata !DIExpression()) #33, !dbg !3626
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3628
  %10 = load i32, i32* %9, align 8, !dbg !3628, !tbaa !3485
  %11 = and i32 %10, 256, !dbg !3630
  %12 = icmp eq i32 %11, 0, !dbg !3630
  br i1 %12, label %15, label %13, !dbg !3631

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3632
  br label %15, !dbg !3632

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3633
  br label %17, !dbg !3634

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3613
  ret i32 %18, !dbg !3635
}

; Function Attrs: nofree nounwind
declare !dbg !3636 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3637 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3676, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i64 %1, metadata !3677, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.value(metadata i32 %2, metadata !3678, metadata !DIExpression()), !dbg !3682
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3683
  %5 = load i8*, i8** %4, align 8, !dbg !3683, !tbaa !3684
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3685
  %7 = load i8*, i8** %6, align 8, !dbg !3685, !tbaa !3686
  %8 = icmp eq i8* %5, %7, !dbg !3687
  br i1 %8, label %9, label %28, !dbg !3688

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3689
  %11 = load i8*, i8** %10, align 8, !dbg !3689, !tbaa !1330
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3690
  %13 = load i8*, i8** %12, align 8, !dbg !3690, !tbaa !3691
  %14 = icmp eq i8* %11, %13, !dbg !3692
  br i1 %14, label %15, label %28, !dbg !3693

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3694
  %17 = load i8*, i8** %16, align 8, !dbg !3694, !tbaa !3695
  %18 = icmp eq i8* %17, null, !dbg !3696
  br i1 %18, label %19, label %28, !dbg !3697

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3698
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3699
  call void @llvm.dbg.value(metadata i64 %21, metadata !3679, metadata !DIExpression()), !dbg !3700
  %22 = icmp eq i64 %21, -1, !dbg !3701
  br i1 %22, label %30, label %23, !dbg !3703

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3704
  %25 = load i32, i32* %24, align 8, !dbg !3705, !tbaa !3485
  %26 = and i32 %25, -17, !dbg !3705
  store i32 %26, i32* %24, align 8, !dbg !3705, !tbaa !3485
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3706
  store i64 %21, i64* %27, align 8, !dbg !3707, !tbaa !3708
  br label %30, !dbg !3709

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3710
  br label %30, !dbg !3711

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3682
  ret i32 %31, !dbg !3712
}

; Function Attrs: nofree nounwind
declare !dbg !3713 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3716 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3721, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %1, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i64 %2, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3724, metadata !DIExpression()), !dbg !3726
  %5 = icmp eq i8* %1, null, !dbg !3727
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3729
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.153, i64 0, i64 0), i8* %1, !dbg !3729
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %8, metadata !3723, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i8* %7, metadata !3722, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.value(metadata i32* %6, metadata !3721, metadata !DIExpression()), !dbg !3726
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3730
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3732
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3724, metadata !DIExpression()), !dbg !3726
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3733
  call void @llvm.dbg.value(metadata i64 %11, metadata !3725, metadata !DIExpression()), !dbg !3726
  %12 = icmp ult i64 %11, -3, !dbg !3734
  br i1 %12, label %13, label %18, !dbg !3736

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3737
  %15 = icmp eq i32 %14, 0, !dbg !3737
  br i1 %15, label %16, label %30, !dbg !3738

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3739, metadata !DIExpression()) #33, !dbg !3744
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3746, metadata !DIExpression()) #33, !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3749, metadata !DIExpression()) #33, !dbg !3751
  call void @llvm.dbg.value(metadata i64 8, metadata !3750, metadata !DIExpression()) #33, !dbg !3751
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3753
  store i64 0, i64* %17, align 1, !dbg !3753
  br label %30, !dbg !3754

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3755
  br i1 %19, label %20, label %21, !dbg !3757

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3758
  unreachable, !dbg !3758

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3759

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3761
  br i1 %24, label %30, label %25, !dbg !3762

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3763
  br i1 %26, label %30, label %27, !dbg !3766

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3767, !tbaa !538
  %29 = zext i8 %28 to i32, !dbg !3768
  store i32 %29, i32* %6, align 4, !dbg !3769, !tbaa !529
  br label %30, !dbg !3770

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3726
  ret i64 %31, !dbg !3771
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3772 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3780, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %1, metadata !3781, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i64 %2, metadata !3782, metadata !DIExpression()), !dbg !3784
  %4 = icmp eq i64 %2, 0, !dbg !3785
  br i1 %4, label %8, label %5, !dbg !3785

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3785
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3785
  br i1 %7, label %13, label %8, !dbg !3785

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  %9 = mul i64 %2, %1, !dbg !3785
  call void @llvm.dbg.value(metadata i64 %9, metadata !3783, metadata !DIExpression()), !dbg !3784
  call void @llvm.dbg.value(metadata i8* %0, metadata !3787, metadata !DIExpression()) #33, !dbg !3791
  call void @llvm.dbg.value(metadata i64 %9, metadata !3790, metadata !DIExpression()) #33, !dbg !3791
  %10 = icmp eq i64 %9, 0, !dbg !3793
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3793
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3794
  br label %15, !dbg !3795

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3783, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3784
  %14 = tail call i32* @__errno_location() #36, !dbg !3796
  store i32 12, i32* %14, align 4, !dbg !3798, !tbaa !529
  br label %15, !dbg !3799

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3784
  ret i8* %16, !dbg !3800
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3801 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3805, metadata !DIExpression()), !dbg !3810
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3811
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3811
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3806, metadata !DIExpression()), !dbg !3812
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3813
  %5 = icmp eq i32 %4, 0, !dbg !3813
  br i1 %5, label %6, label %13, !dbg !3815

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3816, metadata !DIExpression()) #33, !dbg !3820
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), metadata !3819, metadata !DIExpression()) #33, !dbg !3820
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.158, i64 0, i64 0), i64 2), !dbg !3823
  %8 = icmp eq i32 %7, 0, !dbg !3824
  br i1 %8, label %12, label %9, !dbg !3825

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3816, metadata !DIExpression()) #33, !dbg !3826
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), metadata !3819, metadata !DIExpression()) #33, !dbg !3826
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.159, i64 0, i64 0), i64 6), !dbg !3828
  %11 = icmp eq i32 %10, 0, !dbg !3829
  br i1 %11, label %12, label %13, !dbg !3830

12:                                               ; preds = %9, %6
  br label %13, !dbg !3831

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3810
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3832
  ret i1 %14, !dbg !3832
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3833 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3837, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i8* %1, metadata !3838, metadata !DIExpression()), !dbg !3840
  call void @llvm.dbg.value(metadata i64 %2, metadata !3839, metadata !DIExpression()), !dbg !3840
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3841
  ret i32 %4, !dbg !3842
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3843 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3847, metadata !DIExpression()), !dbg !3848
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3849
  ret i8* %2, !dbg !3850
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3851 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()), !dbg !3855
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3856
  call void @llvm.dbg.value(metadata i8* %2, metadata !3854, metadata !DIExpression()), !dbg !3855
  ret i8* %2, !dbg !3857
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3858 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3860, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i8* %1, metadata !3861, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %2, metadata !3862, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i32 %0, metadata !3853, metadata !DIExpression()) #33, !dbg !3868
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %4, metadata !3854, metadata !DIExpression()) #33, !dbg !3868
  call void @llvm.dbg.value(metadata i8* %4, metadata !3863, metadata !DIExpression()), !dbg !3867
  %5 = icmp eq i8* %4, null, !dbg !3871
  br i1 %5, label %6, label %9, !dbg !3872

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3873
  br i1 %7, label %19, label %8, !dbg !3876

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3877, !tbaa !538
  br label %19, !dbg !3878

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3879
  call void @llvm.dbg.value(metadata i64 %10, metadata !3864, metadata !DIExpression()), !dbg !3880
  %11 = icmp ult i64 %10, %2, !dbg !3881
  br i1 %11, label %12, label %14, !dbg !3883

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3884
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()) #33, !dbg !3891
  call void @llvm.dbg.value(metadata i8* %4, metadata !3889, metadata !DIExpression()) #33, !dbg !3891
  call void @llvm.dbg.value(metadata i64 %13, metadata !3890, metadata !DIExpression()) #33, !dbg !3891
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3893
  br label %19, !dbg !3894

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3895
  br i1 %15, label %19, label %16, !dbg !3898

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3899
  call void @llvm.dbg.value(metadata i8* %1, metadata !3886, metadata !DIExpression()) #33, !dbg !3901
  call void @llvm.dbg.value(metadata i8* %4, metadata !3889, metadata !DIExpression()) #33, !dbg !3901
  call void @llvm.dbg.value(metadata i64 %17, metadata !3890, metadata !DIExpression()) #33, !dbg !3901
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3903
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3904
  store i8 0, i8* %18, align 1, !dbg !3905, !tbaa !538
  br label %19, !dbg !3906

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3907
  ret i32 %20, !dbg !3908
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
attributes #14 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { nofree nosync nounwind willreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { argmemonly nofree nounwind readonly willreturn }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { argmemonly nofree nounwind willreturn writeonly }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind }
attributes #34 = { nounwind readonly willreturn }
attributes #35 = { noreturn nounwind }
attributes #36 = { nounwind readnone willreturn }
attributes #37 = { noreturn }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !152, !157, !164, !330, !350, !205, !215, !247, !352, !354, !322, !361, !395, !397, !399, !401, !403, !405, !336, !407, !410, !412, !414}
!llvm.ident = !{!416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416, !416}
!llvm.module.flags = !{!417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !39, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/pwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "706e724ab654cd1fe336b61765fe7047")
!4 = !{!5, !21, !35}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 46, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "_ISupper", value: 256)
!10 = !DIEnumerator(name: "_ISlower", value: 512)
!11 = !DIEnumerator(name: "_ISalpha", value: 1024)
!12 = !DIEnumerator(name: "_ISdigit", value: 2048)
!13 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!14 = !DIEnumerator(name: "_ISspace", value: 8192)
!15 = !DIEnumerator(name: "_ISprint", value: 16384)
!16 = !DIEnumerator(name: "_ISgraph", value: 32768)
!17 = !DIEnumerator(name: "_ISblank", value: 1)
!18 = !DIEnumerator(name: "_IScntrl", value: 2)
!19 = !DIEnumerator(name: "_ISpunct", value: 4)
!20 = !DIEnumerator(name: "_ISalnum", value: 8)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !22, line: 42, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!24 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!25 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!26 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!27 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!28 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!29 = !DIEnumerator(name: "c_quoting_style", value: 5)
!30 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!31 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!32 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!33 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!34 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 120, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!37 = !{!38}
!38 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0)
!39 = !{!40, !41, !43, !44, !45, !48, !50}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!44 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52, !0}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !54, file: !36, line: 575, type: !43, isLocal: true, isDefinition: true)
!54 = distinct !DISubprogram(name: "oputs_", scope: !36, file: !36, line: 573, type: !55, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !48, !48}
!57 = !{!58, !59, !60, !63, !65, !66, !67, !71, !72, !73, !74, !76, !132, !133, !134, !136, !137}
!58 = !DILocalVariable(name: "program", arg: 1, scope: !54, file: !36, line: 573, type: !48)
!59 = !DILocalVariable(name: "option", arg: 2, scope: !54, file: !36, line: 573, type: !48)
!60 = !DILocalVariable(name: "term", scope: !61, file: !36, line: 585, type: !48)
!61 = distinct !DILexicalBlock(scope: !62, file: !36, line: 582, column: 5)
!62 = distinct !DILexicalBlock(scope: !54, file: !36, line: 581, column: 7)
!63 = !DILocalVariable(name: "double_space", scope: !54, file: !36, line: 594, type: !64)
!64 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!65 = !DILocalVariable(name: "first_word", scope: !54, file: !36, line: 595, type: !48)
!66 = !DILocalVariable(name: "option_text", scope: !54, file: !36, line: 596, type: !48)
!67 = !DILocalVariable(name: "s", scope: !68, file: !36, line: 608, type: !48)
!68 = distinct !DILexicalBlock(scope: !69, file: !36, line: 605, column: 5)
!69 = distinct !DILexicalBlock(scope: !70, file: !36, line: 604, column: 12)
!70 = distinct !DILexicalBlock(scope: !54, file: !36, line: 597, column: 7)
!71 = !DILocalVariable(name: "spaces", scope: !68, file: !36, line: 609, type: !45)
!72 = !DILocalVariable(name: "anchor_len", scope: !54, file: !36, line: 620, type: !45)
!73 = !DILocalVariable(name: "desc_text", scope: !54, file: !36, line: 625, type: !48)
!74 = !DILocalVariable(name: "__ptr", scope: !75, file: !36, line: 644, type: !48)
!75 = distinct !DILexicalBlock(scope: !54, file: !36, line: 644, column: 3)
!76 = !DILocalVariable(name: "__stream", scope: !75, file: !36, line: 644, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !43, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!105 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocalVariable(name: "__cnt", scope: !75, file: !36, line: 644, type: !45)
!133 = !DILocalVariable(name: "url_program", scope: !54, file: !36, line: 648, type: !48)
!134 = !DILocalVariable(name: "__ptr", scope: !135, file: !36, line: 686, type: !48)
!135 = distinct !DILexicalBlock(scope: !54, file: !36, line: 686, column: 3)
!136 = !DILocalVariable(name: "__stream", scope: !135, file: !36, line: 686, type: !77)
!137 = !DILocalVariable(name: "__cnt", scope: !135, file: !36, line: 686, type: !45)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1280, elements: !148)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !141, line: 50, size: 256, elements: !142)
!141 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!142 = !{!143, !144, !145, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !140, file: !141, line: 52, baseType: !48, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !140, file: !141, line: 55, baseType: !43, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !140, file: !141, line: 56, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !141, line: 57, baseType: !43, size: 32, offset: 192)
!148 = !{!149}
!149 = !DISubrange(count: 5)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "Version", scope: !152, file: !153, line: 3, type: !48, isLocal: false, isDefinition: true)
!152 = distinct !DICompileUnit(language: DW_LANG_C99, file: !153, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !154, splitDebugInlining: false, nameTableKind: None)
!153 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!154 = !{!150}
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(name: "file_name", scope: !157, file: !158, line: 45, type: !48, isLocal: true, isDefinition: true)
!157 = distinct !DICompileUnit(language: DW_LANG_C99, file: !158, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !159, splitDebugInlining: false, nameTableKind: None)
!158 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!159 = !{!155, !160}
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !157, file: !158, line: 55, type: !64, isLocal: true, isDefinition: true)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !164, file: !165, line: 66, type: !200, isLocal: false, isDefinition: true)
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !166, globals: !167, splitDebugInlining: false, nameTableKind: None)
!165 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!166 = !{!40, !50}
!167 = !{!168, !194, !162, !196, !198}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "old_file_name", scope: !170, file: !165, line: 304, type: !48, isLocal: true, isDefinition: true)
!170 = distinct !DISubprogram(name: "verror_at_line", scope: !165, file: !165, line: 298, type: !171, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !187)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !43, !43, !48, !7, !48, !173}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !175)
!174 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !177)
!176 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !178, baseType: !179)
!178 = !DIFile(filename: "lib/error.c", directory: "/src")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !181)
!180 = !DINamespace(name: "std", scope: null)
!181 = !{!182, !183, !184, !185, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !179, file: !178, baseType: !40, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !179, file: !178, baseType: !40, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !179, file: !178, baseType: !40, size: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !179, file: !178, baseType: !43, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !179, file: !178, baseType: !43, size: 32, offset: 224)
!187 = !{!188, !189, !190, !191, !192, !193}
!188 = !DILocalVariable(name: "status", arg: 1, scope: !170, file: !165, line: 298, type: !43)
!189 = !DILocalVariable(name: "errnum", arg: 2, scope: !170, file: !165, line: 298, type: !43)
!190 = !DILocalVariable(name: "file_name", arg: 3, scope: !170, file: !165, line: 298, type: !48)
!191 = !DILocalVariable(name: "line_number", arg: 4, scope: !170, file: !165, line: 298, type: !7)
!192 = !DILocalVariable(name: "message", arg: 5, scope: !170, file: !165, line: 298, type: !48)
!193 = !DILocalVariable(name: "args", arg: 6, scope: !170, file: !165, line: 298, type: !173)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(name: "old_line_number", scope: !170, file: !165, line: 305, type: !7, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(name: "error_message_count", scope: !164, file: !165, line: 69, type: !7, isLocal: false, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !164, file: !165, line: 295, type: !43, isLocal: false, isDefinition: true)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null}
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "program_name", scope: !205, file: !206, line: 31, type: !48, isLocal: false, isDefinition: true)
!205 = distinct !DICompileUnit(language: DW_LANG_C99, file: !206, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !207, globals: !208, splitDebugInlining: false, nameTableKind: None)
!206 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!207 = !{!41}
!208 = !{!203}
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(name: "utf07FF", scope: !211, file: !212, line: 46, type: !242, isLocal: true, isDefinition: true)
!211 = distinct !DISubprogram(name: "proper_name_lite", scope: !212, file: !212, line: 38, type: !213, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !217)
!212 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!213 = !DISubroutineType(types: !214)
!214 = !{!48, !48, !48}
!215 = distinct !DICompileUnit(language: DW_LANG_C99, file: !212, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !216, splitDebugInlining: false, nameTableKind: None)
!216 = !{!209}
!217 = !{!218, !219, !220, !221, !226}
!218 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !211, file: !212, line: 38, type: !48)
!219 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !211, file: !212, line: 38, type: !48)
!220 = !DILocalVariable(name: "translation", scope: !211, file: !212, line: 40, type: !48)
!221 = !DILocalVariable(name: "w", scope: !211, file: !212, line: 47, type: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !223, line: 37, baseType: !224)
!223 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !104, line: 57, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !104, line: 42, baseType: !7)
!226 = !DILocalVariable(name: "mbs", scope: !211, file: !212, line: 48, type: !227)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !229)
!228 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !231, file: !230, line: 15, baseType: !43, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !231, file: !230, line: 20, baseType: !235, size: 32, offset: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 16, size: 32, elements: !236)
!236 = !{!237, !238}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !235, file: !230, line: 18, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !235, file: !230, line: 19, baseType: !239, size: 32)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 32, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 4)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 16, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !247, file: !248, line: 76, type: !316, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !249, retainedTypes: !255, globals: !256, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!249 = !{!21, !250, !5}
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !22, line: 254, baseType: !7, size: 32, elements: !251)
!251 = !{!252, !253, !254}
!252 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!253 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!254 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!255 = !{!43, !44, !45}
!256 = !{!245, !257, !263, !275, !277, !282, !305, !312, !314}
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !247, file: !248, line: 92, type: !259, isLocal: false, isDefinition: true)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 320, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!261 = !{!262}
!262 = !DISubrange(count: 10)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !247, file: !248, line: 1040, type: !265, isLocal: false, isDefinition: true)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !248, line: 56, size: 448, elements: !266)
!266 = !{!267, !268, !269, !273, !274}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !265, file: !248, line: 59, baseType: !21, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !248, line: 62, baseType: !43, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !265, file: !248, line: 66, baseType: !270, size: 256, offset: 64)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !265, file: !248, line: 69, baseType: !48, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !265, file: !248, line: 72, baseType: !48, size: 64, offset: 384)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !247, file: !248, line: 107, type: !265, isLocal: true, isDefinition: true)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(name: "slot0", scope: !247, file: !248, line: 831, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2048, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 256)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(name: "quote", scope: !284, file: !248, line: 228, type: !303, isLocal: true, isDefinition: true)
!284 = distinct !DISubprogram(name: "gettext_quote", scope: !248, file: !248, line: 197, type: !285, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !287)
!285 = !DISubroutineType(types: !286)
!286 = !{!48, !48, !21}
!287 = !{!288, !289, !290, !291, !292}
!288 = !DILocalVariable(name: "msgid", arg: 1, scope: !284, file: !248, line: 197, type: !48)
!289 = !DILocalVariable(name: "s", arg: 2, scope: !284, file: !248, line: 197, type: !21)
!290 = !DILocalVariable(name: "translation", scope: !284, file: !248, line: 199, type: !48)
!291 = !DILocalVariable(name: "w", scope: !284, file: !248, line: 229, type: !222)
!292 = !DILocalVariable(name: "mbs", scope: !284, file: !248, line: 230, type: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !295, file: !230, line: 15, baseType: !43, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !295, file: !230, line: 20, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !230, line: 16, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !299, file: !230, line: 18, baseType: !7, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !299, file: !230, line: 19, baseType: !239, size: 32)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !304)
!304 = !{!244, !241}
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "slotvec", scope: !247, file: !248, line: 834, type: !307, isLocal: true, isDefinition: true)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !248, line: 823, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !248, line: 825, baseType: !45, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !248, line: 826, baseType: !41, size: 64, offset: 64)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "nslots", scope: !247, file: !248, line: 832, type: !43, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "slotvec0", scope: !247, file: !248, line: 833, type: !308, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 704, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!318 = !{!319}
!319 = !DISubrange(count: 11)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !322, file: !323, line: 26, type: !325, isLocal: false, isDefinition: true)
!322 = distinct !DICompileUnit(language: DW_LANG_C99, file: !323, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !324, splitDebugInlining: false, nameTableKind: None)
!323 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!324 = !{!320}
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 376, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 47)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "exit_failure", scope: !330, file: !331, line: 24, type: !333, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !332, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!332 = !{!328}
!333 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "internal_state", scope: !336, file: !337, line: 97, type: !340, isLocal: true, isDefinition: true)
!336 = distinct !DICompileUnit(language: DW_LANG_C99, file: !337, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !338, globals: !339, splitDebugInlining: false, nameTableKind: None)
!337 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!338 = !{!40, !45, !50}
!339 = !{!334}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !228, line: 6, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !230, line: 21, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 13, size: 64, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !342, file: !230, line: 15, baseType: !43, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !342, file: !230, line: 20, baseType: !346, size: 32, offset: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !230, line: 16, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !346, file: !230, line: 18, baseType: !7, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !346, file: !230, line: 19, baseType: !239, size: 32)
!350 = distinct !DICompileUnit(language: DW_LANG_C99, file: !351, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!351 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b0632229108c1521929601778d55996f")
!354 = distinct !DICompileUnit(language: DW_LANG_C99, file: !355, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !356, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!355 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!356 = !{!357}
!357 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !355, line: 40, baseType: !7, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!360 = !{!40}
!361 = distinct !DICompileUnit(language: DW_LANG_C99, file: !362, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !363, retainedTypes: !394, splitDebugInlining: false, nameTableKind: None)
!362 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!363 = !{!364, !376}
!364 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !365, file: !362, line: 188, baseType: !7, size: 32, elements: !374)
!365 = distinct !DISubprogram(name: "x2nrealloc", scope: !362, file: !362, line: 176, type: !366, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !369)
!366 = !DISubroutineType(types: !367)
!367 = !{!40, !40, !368, !45}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!369 = !{!370, !371, !372, !373}
!370 = !DILocalVariable(name: "p", arg: 1, scope: !365, file: !362, line: 176, type: !40)
!371 = !DILocalVariable(name: "pn", arg: 2, scope: !365, file: !362, line: 176, type: !368)
!372 = !DILocalVariable(name: "s", arg: 3, scope: !365, file: !362, line: 176, type: !45)
!373 = !DILocalVariable(name: "n", scope: !365, file: !362, line: 178, type: !45)
!374 = !{!375}
!375 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !377, file: !362, line: 228, baseType: !7, size: 32, elements: !374)
!377 = distinct !DISubprogram(name: "xpalloc", scope: !362, file: !362, line: 223, type: !378, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !384)
!378 = !DISubroutineType(types: !379)
!379 = !{!40, !40, !380, !381, !383, !381}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !382, line: 130, baseType: !383)
!382 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !46, line: 35, baseType: !105)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393}
!385 = !DILocalVariable(name: "pa", arg: 1, scope: !377, file: !362, line: 223, type: !40)
!386 = !DILocalVariable(name: "pn", arg: 2, scope: !377, file: !362, line: 223, type: !380)
!387 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !377, file: !362, line: 223, type: !381)
!388 = !DILocalVariable(name: "n_max", arg: 4, scope: !377, file: !362, line: 223, type: !383)
!389 = !DILocalVariable(name: "s", arg: 5, scope: !377, file: !362, line: 223, type: !381)
!390 = !DILocalVariable(name: "n0", scope: !377, file: !362, line: 230, type: !381)
!391 = !DILocalVariable(name: "n", scope: !377, file: !362, line: 237, type: !381)
!392 = !DILocalVariable(name: "nbytes", scope: !377, file: !362, line: 248, type: !381)
!393 = !DILocalVariable(name: "adjusted_nbytes", scope: !377, file: !362, line: 252, type: !381)
!394 = !{!41, !40, !64, !105, !47}
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/xgetcwd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3727157833d2e1ec9b24b353bc14eccb")
!399 = distinct !DICompileUnit(language: DW_LANG_C99, file: !400, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!400 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !409, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!409 = !{!64, !47, !40}
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!412 = distinct !DICompileUnit(language: DW_LANG_C99, file: !413, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!413 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!416 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!417 = !{i32 7, !"Dwarf Version", i32 5}
!418 = !{i32 2, !"Debug Info Version", i32 3}
!419 = !{i32 1, !"wchar_size", i32 4}
!420 = !{i32 1, !"branch-target-enforcement", i32 0}
!421 = !{i32 1, !"sign-return-address", i32 0}
!422 = !{i32 1, !"sign-return-address-all", i32 0}
!423 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!424 = !{i32 7, !"PIC Level", i32 2}
!425 = !{i32 7, !"PIE Level", i32 2}
!426 = !{i32 7, !"uwtable", i32 1}
!427 = !{i32 7, !"frame-pointer", i32 1}
!428 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 49, type: !429, scopeLine: 50, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !43}
!431 = !{!432}
!432 = !DILocalVariable(name: "status", arg: 1, scope: !428, file: !3, line: 49, type: !43)
!433 = !DILocation(line: 0, scope: !428)
!434 = !DILocation(line: 51, column: 14, scope: !435)
!435 = distinct !DILexicalBlock(scope: !428, file: !3, line: 51, column: 7)
!436 = !DILocation(line: 51, column: 7, scope: !428)
!437 = !DILocation(line: 52, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 52, column: 5)
!439 = !{!440, !440, i64 0}
!440 = !{!"any pointer", !441, i64 0}
!441 = !{!"omnipotent char", !442, i64 0}
!442 = !{!"Simple C/C++ TBAA"}
!443 = !DILocation(line: 55, column: 7, scope: !444)
!444 = distinct !DILexicalBlock(scope: !435, file: !3, line: 54, column: 5)
!445 = !DILocation(line: 56, column: 7, scope: !444)
!446 = !DILocation(line: 60, column: 7, scope: !444)
!447 = !DILocation(line: 64, column: 7, scope: !444)
!448 = !DILocation(line: 68, column: 7, scope: !444)
!449 = !DILocation(line: 69, column: 7, scope: !444)
!450 = !DILocation(line: 70, column: 7, scope: !444)
!451 = !DILocation(line: 73, column: 7, scope: !444)
!452 = !DILocalVariable(name: "program", arg: 1, scope: !453, file: !36, line: 836, type: !48)
!453 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !36, file: !36, line: 836, type: !454, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !48}
!456 = !{!452, !457, !466, !467, !469, !470}
!457 = !DILocalVariable(name: "infomap", scope: !453, file: !36, line: 838, type: !458)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 896, elements: !464)
!459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !453, file: !36, line: 838, size: 128, elements: !461)
!461 = !{!462, !463}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !460, file: !36, line: 838, baseType: !48, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !460, file: !36, line: 838, baseType: !48, size: 64, offset: 64)
!464 = !{!465}
!465 = !DISubrange(count: 7)
!466 = !DILocalVariable(name: "node", scope: !453, file: !36, line: 848, type: !48)
!467 = !DILocalVariable(name: "map_prog", scope: !453, file: !36, line: 849, type: !468)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!469 = !DILocalVariable(name: "lc_messages", scope: !453, file: !36, line: 861, type: !48)
!470 = !DILocalVariable(name: "url_program", scope: !453, file: !36, line: 874, type: !48)
!471 = !DILocation(line: 0, scope: !453, inlinedAt: !472)
!472 = distinct !DILocation(line: 74, column: 7, scope: !444)
!473 = !DILocation(line: 838, column: 3, scope: !453, inlinedAt: !472)
!474 = !DILocation(line: 838, column: 67, scope: !453, inlinedAt: !472)
!475 = !DILocation(line: 849, column: 36, scope: !453, inlinedAt: !472)
!476 = !DILocation(line: 851, column: 3, scope: !453, inlinedAt: !472)
!477 = !DILocalVariable(name: "__s1", arg: 1, scope: !478, file: !479, line: 1359, type: !48)
!478 = distinct !DISubprogram(name: "streq", scope: !479, file: !479, line: 1359, type: !480, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !482)
!479 = !DIFile(filename: "./lib/string.h", directory: "/src")
!480 = !DISubroutineType(types: !481)
!481 = !{!64, !48, !48}
!482 = !{!477, !483}
!483 = !DILocalVariable(name: "__s2", arg: 2, scope: !478, file: !479, line: 1359, type: !48)
!484 = !DILocation(line: 0, scope: !478, inlinedAt: !485)
!485 = distinct !DILocation(line: 851, column: 33, scope: !453, inlinedAt: !472)
!486 = !DILocation(line: 1361, column: 11, scope: !478, inlinedAt: !485)
!487 = !DILocation(line: 1361, column: 10, scope: !478, inlinedAt: !485)
!488 = !DILocation(line: 852, column: 13, scope: !453, inlinedAt: !472)
!489 = !DILocation(line: 851, column: 20, scope: !453, inlinedAt: !472)
!490 = !{!491, !440, i64 0}
!491 = !{!"infomap", !440, i64 0, !440, i64 8}
!492 = !DILocation(line: 851, column: 10, scope: !453, inlinedAt: !472)
!493 = !DILocation(line: 851, column: 28, scope: !453, inlinedAt: !472)
!494 = distinct !{!494, !476, !488, !495}
!495 = !{!"llvm.loop.mustprogress"}
!496 = !DILocation(line: 854, column: 17, scope: !497, inlinedAt: !472)
!497 = distinct !DILexicalBlock(scope: !453, file: !36, line: 854, column: 7)
!498 = !{!491, !440, i64 8}
!499 = !DILocation(line: 854, column: 7, scope: !497, inlinedAt: !472)
!500 = !DILocation(line: 854, column: 7, scope: !453, inlinedAt: !472)
!501 = !DILocation(line: 857, column: 3, scope: !453, inlinedAt: !472)
!502 = !DILocation(line: 861, column: 29, scope: !453, inlinedAt: !472)
!503 = !DILocation(line: 862, column: 7, scope: !504, inlinedAt: !472)
!504 = distinct !DILexicalBlock(scope: !453, file: !36, line: 862, column: 7)
!505 = !DILocation(line: 862, column: 19, scope: !504, inlinedAt: !472)
!506 = !DILocation(line: 862, column: 22, scope: !504, inlinedAt: !472)
!507 = !DILocation(line: 862, column: 7, scope: !453, inlinedAt: !472)
!508 = !DILocation(line: 868, column: 7, scope: !509, inlinedAt: !472)
!509 = distinct !DILexicalBlock(scope: !504, file: !36, line: 863, column: 5)
!510 = !DILocation(line: 870, column: 5, scope: !509, inlinedAt: !472)
!511 = !DILocation(line: 0, scope: !478, inlinedAt: !512)
!512 = distinct !DILocation(line: 874, column: 29, scope: !453, inlinedAt: !472)
!513 = !DILocation(line: 875, column: 3, scope: !453, inlinedAt: !472)
!514 = !DILocation(line: 877, column: 3, scope: !453, inlinedAt: !472)
!515 = !DILocation(line: 879, column: 1, scope: !453, inlinedAt: !472)
!516 = !DILocation(line: 76, column: 3, scope: !428)
!517 = !DISubprogram(name: "dcgettext", scope: !518, file: !518, line: 51, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!518 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!519 = !DISubroutineType(types: !520)
!520 = !{!41, !48, !48, !43}
!521 = !{}
!522 = !DISubprogram(name: "fputs_unlocked", scope: !174, file: !174, line: 691, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!523 = !DISubroutineType(types: !524)
!524 = !{!43, !525, !526}
!525 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!526 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!527 = !DILocation(line: 0, scope: !54)
!528 = !DILocation(line: 581, column: 7, scope: !62)
!529 = !{!530, !530, i64 0}
!530 = !{!"int", !441, i64 0}
!531 = !DILocation(line: 581, column: 19, scope: !62)
!532 = !DILocation(line: 581, column: 7, scope: !54)
!533 = !DILocation(line: 585, column: 26, scope: !61)
!534 = !DILocation(line: 0, scope: !61)
!535 = !DILocation(line: 586, column: 23, scope: !61)
!536 = !DILocation(line: 586, column: 28, scope: !61)
!537 = !DILocation(line: 586, column: 32, scope: !61)
!538 = !{!441, !441, i64 0}
!539 = !DILocation(line: 586, column: 38, scope: !61)
!540 = !DILocation(line: 0, scope: !478, inlinedAt: !541)
!541 = distinct !DILocation(line: 586, column: 41, scope: !61)
!542 = !DILocation(line: 1361, column: 11, scope: !478, inlinedAt: !541)
!543 = !DILocation(line: 1361, column: 10, scope: !478, inlinedAt: !541)
!544 = !DILocation(line: 586, column: 19, scope: !61)
!545 = !DILocation(line: 587, column: 5, scope: !61)
!546 = !DILocation(line: 588, column: 7, scope: !547)
!547 = distinct !DILexicalBlock(scope: !54, file: !36, line: 588, column: 7)
!548 = !DILocation(line: 588, column: 7, scope: !54)
!549 = !DILocation(line: 590, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !36, line: 589, column: 5)
!551 = !DILocation(line: 591, column: 7, scope: !550)
!552 = !DILocation(line: 595, column: 37, scope: !54)
!553 = !DILocation(line: 595, column: 35, scope: !54)
!554 = !DILocation(line: 596, column: 29, scope: !54)
!555 = !DILocation(line: 597, column: 8, scope: !70)
!556 = !DILocation(line: 597, column: 7, scope: !54)
!557 = !DILocation(line: 604, column: 24, scope: !69)
!558 = !DILocation(line: 604, column: 12, scope: !70)
!559 = !DILocation(line: 0, scope: !68)
!560 = !DILocation(line: 610, column: 16, scope: !68)
!561 = !DILocation(line: 610, column: 7, scope: !68)
!562 = !DILocation(line: 611, column: 21, scope: !68)
!563 = !{!564, !564, i64 0}
!564 = !{!"short", !441, i64 0}
!565 = !DILocation(line: 611, column: 19, scope: !68)
!566 = !DILocation(line: 611, column: 16, scope: !68)
!567 = !DILocation(line: 610, column: 30, scope: !68)
!568 = distinct !{!568, !561, !562, !495}
!569 = !DILocation(line: 612, column: 18, scope: !570)
!570 = distinct !DILexicalBlock(scope: !68, file: !36, line: 612, column: 11)
!571 = !DILocation(line: 612, column: 11, scope: !68)
!572 = !DILocation(line: 620, column: 23, scope: !54)
!573 = !DILocation(line: 625, column: 39, scope: !54)
!574 = !DILocation(line: 626, column: 3, scope: !54)
!575 = !DILocation(line: 626, column: 10, scope: !54)
!576 = !DILocation(line: 626, column: 21, scope: !54)
!577 = !DILocation(line: 628, column: 44, scope: !578)
!578 = distinct !DILexicalBlock(scope: !579, file: !36, line: 628, column: 11)
!579 = distinct !DILexicalBlock(scope: !54, file: !36, line: 627, column: 5)
!580 = !DILocation(line: 628, column: 32, scope: !578)
!581 = !DILocation(line: 628, column: 49, scope: !578)
!582 = !DILocation(line: 628, column: 11, scope: !579)
!583 = !DILocation(line: 630, column: 11, scope: !584)
!584 = distinct !DILexicalBlock(scope: !579, file: !36, line: 630, column: 11)
!585 = !DILocation(line: 630, column: 11, scope: !579)
!586 = !DILocation(line: 632, column: 26, scope: !587)
!587 = distinct !DILexicalBlock(scope: !588, file: !36, line: 632, column: 15)
!588 = distinct !DILexicalBlock(scope: !584, file: !36, line: 631, column: 9)
!589 = !DILocation(line: 632, column: 34, scope: !587)
!590 = !DILocation(line: 632, column: 37, scope: !587)
!591 = !DILocation(line: 632, column: 15, scope: !588)
!592 = !DILocation(line: 636, column: 29, scope: !593)
!593 = distinct !DILexicalBlock(scope: !588, file: !36, line: 636, column: 15)
!594 = !DILocation(line: 640, column: 16, scope: !579)
!595 = distinct !{!595, !574, !596, !495}
!596 = !DILocation(line: 641, column: 5, scope: !54)
!597 = !DILocation(line: 644, column: 3, scope: !54)
!598 = !DILocation(line: 0, scope: !478, inlinedAt: !599)
!599 = distinct !DILocation(line: 648, column: 31, scope: !54)
!600 = !DILocation(line: 0, scope: !478, inlinedAt: !601)
!601 = distinct !DILocation(line: 649, column: 31, scope: !54)
!602 = !DILocation(line: 0, scope: !478, inlinedAt: !603)
!603 = distinct !DILocation(line: 650, column: 31, scope: !54)
!604 = !DILocation(line: 0, scope: !478, inlinedAt: !605)
!605 = distinct !DILocation(line: 651, column: 31, scope: !54)
!606 = !DILocation(line: 0, scope: !478, inlinedAt: !607)
!607 = distinct !DILocation(line: 652, column: 31, scope: !54)
!608 = !DILocation(line: 0, scope: !478, inlinedAt: !609)
!609 = distinct !DILocation(line: 653, column: 31, scope: !54)
!610 = !DILocation(line: 0, scope: !478, inlinedAt: !611)
!611 = distinct !DILocation(line: 654, column: 31, scope: !54)
!612 = !DILocation(line: 0, scope: !478, inlinedAt: !613)
!613 = distinct !DILocation(line: 655, column: 31, scope: !54)
!614 = !DILocation(line: 0, scope: !478, inlinedAt: !615)
!615 = distinct !DILocation(line: 656, column: 31, scope: !54)
!616 = !DILocation(line: 0, scope: !478, inlinedAt: !617)
!617 = distinct !DILocation(line: 657, column: 31, scope: !54)
!618 = !DILocation(line: 663, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !54, file: !36, line: 663, column: 7)
!620 = !DILocation(line: 664, column: 7, scope: !619)
!621 = !DILocation(line: 664, column: 10, scope: !619)
!622 = !DILocation(line: 663, column: 7, scope: !54)
!623 = !DILocation(line: 669, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !619, file: !36, line: 665, column: 5)
!625 = !DILocation(line: 671, column: 5, scope: !624)
!626 = !DILocation(line: 676, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !619, file: !36, line: 673, column: 5)
!628 = !DILocation(line: 679, column: 3, scope: !54)
!629 = !DILocation(line: 683, column: 3, scope: !54)
!630 = !DILocation(line: 686, column: 3, scope: !54)
!631 = !DILocation(line: 688, column: 3, scope: !54)
!632 = !DILocation(line: 691, column: 3, scope: !54)
!633 = !DILocation(line: 695, column: 3, scope: !54)
!634 = !DILocation(line: 696, column: 1, scope: !54)
!635 = !DISubprogram(name: "setlocale", scope: !636, file: !636, line: 122, type: !637, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!636 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!637 = !DISubroutineType(types: !638)
!638 = !{!41, !43, !48}
!639 = !DISubprogram(name: "getenv", scope: !640, file: !640, line: 641, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!640 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!641 = !DISubroutineType(types: !642)
!642 = !{!41, !48}
!643 = !DISubprogram(name: "fwrite_unlocked", scope: !174, file: !174, line: 704, type: !644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!644 = !DISubroutineType(types: !645)
!645 = !{!45, !646, !45, !45, !526}
!646 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!649 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 320, type: !650, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !653)
!650 = !DISubroutineType(types: !651)
!651 = !{!43, !43, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!653 = !{!654, !655, !656, !657, !659, !662, !663}
!654 = !DILocalVariable(name: "argc", arg: 1, scope: !649, file: !3, line: 320, type: !43)
!655 = !DILocalVariable(name: "argv", arg: 2, scope: !649, file: !3, line: 320, type: !652)
!656 = !DILocalVariable(name: "logical", scope: !649, file: !3, line: 325, type: !64)
!657 = !DILocalVariable(name: "c", scope: !658, file: !3, line: 337, type: !43)
!658 = distinct !DILexicalBlock(scope: !649, file: !3, line: 336, column: 5)
!659 = !DILocalVariable(name: "wd", scope: !660, file: !3, line: 363, type: !48)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 362, column: 5)
!661 = distinct !DILexicalBlock(scope: !649, file: !3, line: 361, column: 7)
!662 = !DILocalVariable(name: "wd", scope: !649, file: !3, line: 371, type: !41)
!663 = !DILocalVariable(name: "file_name", scope: !664, file: !3, line: 379, type: !666)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 378, column: 5)
!665 = distinct !DILexicalBlock(scope: !649, file: !3, line: 372, column: 7)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 32, size: 192, elements: !668)
!668 = !{!669, !670, !671}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !667, file: !3, line: 34, baseType: !41, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !667, file: !3, line: 35, baseType: !381, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !667, file: !3, line: 36, baseType: !41, size: 64, offset: 128)
!672 = !DILocation(line: 0, scope: !649)
!673 = !DILocation(line: 325, column: 19, scope: !649)
!674 = !DILocation(line: 325, column: 46, scope: !649)
!675 = !DILocation(line: 328, column: 21, scope: !649)
!676 = !DILocation(line: 328, column: 3, scope: !649)
!677 = !DILocation(line: 329, column: 3, scope: !649)
!678 = !DILocation(line: 330, column: 3, scope: !649)
!679 = !DILocation(line: 331, column: 3, scope: !649)
!680 = !DILocation(line: 333, column: 3, scope: !649)
!681 = !DILocation(line: 335, column: 3, scope: !649)
!682 = !DILocation(line: 337, column: 15, scope: !658)
!683 = !DILocation(line: 0, scope: !658)
!684 = !DILocation(line: 338, column: 11, scope: !658)
!685 = !DILocation(line: 347, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !658, file: !3, line: 341, column: 9)
!687 = !DILocation(line: 349, column: 9, scope: !686)
!688 = !DILocation(line: 351, column: 9, scope: !686)
!689 = !DILocation(line: 354, column: 11, scope: !686)
!690 = !DILocation(line: 358, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !649, file: !3, line: 358, column: 7)
!692 = !DILocation(line: 358, column: 14, scope: !691)
!693 = !DILocation(line: 358, column: 7, scope: !649)
!694 = !DILocation(line: 359, column: 5, scope: !691)
!695 = !DILocation(line: 361, column: 7, scope: !649)
!696 = !DILocation(line: 296, column: 20, scope: !697, inlinedAt: !740)
!697 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 294, type: !698, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{!48}
!700 = !{!701, !702, !703, !739}
!701 = !DILocalVariable(name: "wd", scope: !697, file: !3, line: 296, type: !48)
!702 = !DILocalVariable(name: "p", scope: !697, file: !3, line: 301, type: !48)
!703 = !DILocalVariable(name: "st1", scope: !697, file: !3, line: 311, type: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !705, line: 44, size: 1024, elements: !706)
!705 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!706 = !{!707, !709, !711, !713, !715, !717, !719, !720, !721, !722, !724, !725, !727, !735, !736, !737}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !704, file: !705, line: 46, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !104, line: 145, baseType: !47)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !704, file: !705, line: 47, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !104, line: 148, baseType: !47)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !704, file: !705, line: 48, baseType: !712, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !104, line: 150, baseType: !7)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !704, file: !705, line: 49, baseType: !714, size: 32, offset: 160)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !104, line: 151, baseType: !7)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !704, file: !705, line: 50, baseType: !716, size: 32, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !104, line: 146, baseType: !7)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !704, file: !705, line: 51, baseType: !718, size: 32, offset: 224)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !104, line: 147, baseType: !7)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !704, file: !705, line: 52, baseType: !708, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !704, file: !705, line: 53, baseType: !708, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !704, file: !705, line: 54, baseType: !103, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !704, file: !705, line: 55, baseType: !723, size: 32, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !104, line: 175, baseType: !43)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !704, file: !705, line: 56, baseType: !43, size: 32, offset: 480)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !704, file: !705, line: 57, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !104, line: 180, baseType: !105)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !704, file: !705, line: 65, baseType: !728, size: 128, offset: 576)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !729, line: 11, size: 128, elements: !730)
!729 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!730 = !{!731, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !728, file: !729, line: 16, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !104, line: 160, baseType: !105)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !728, file: !729, line: 21, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !104, line: 197, baseType: !105)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !704, file: !705, line: 66, baseType: !728, size: 128, offset: 704)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !704, file: !705, line: 67, baseType: !728, size: 128, offset: 832)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !704, file: !705, line: 79, baseType: !738, size: 64, offset: 960)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 64, elements: !243)
!739 = !DILocalVariable(name: "st2", scope: !697, file: !3, line: 312, type: !704)
!740 = distinct !DILocation(line: 363, column: 24, scope: !660)
!741 = !DILocation(line: 0, scope: !697, inlinedAt: !740)
!742 = !DILocation(line: 299, column: 8, scope: !743, inlinedAt: !740)
!743 = distinct !DILexicalBlock(scope: !697, file: !3, line: 299, column: 7)
!744 = !DILocation(line: 299, column: 11, scope: !743, inlinedAt: !740)
!745 = !DILocation(line: 299, column: 14, scope: !743, inlinedAt: !740)
!746 = !DILocation(line: 299, column: 20, scope: !743, inlinedAt: !740)
!747 = !DILocation(line: 299, column: 7, scope: !697, inlinedAt: !740)
!748 = !DILocation(line: 302, column: 15, scope: !697, inlinedAt: !740)
!749 = !DILocation(line: 302, column: 3, scope: !697, inlinedAt: !740)
!750 = !DILocation(line: 304, column: 12, scope: !751, inlinedAt: !740)
!751 = distinct !DILexicalBlock(scope: !752, file: !3, line: 304, column: 11)
!752 = distinct !DILexicalBlock(scope: !697, file: !3, line: 303, column: 5)
!753 = !DILocation(line: 304, column: 17, scope: !751, inlinedAt: !740)
!754 = !DILocation(line: 305, column: 32, scope: !751, inlinedAt: !740)
!755 = !DILocation(line: 305, column: 37, scope: !751, inlinedAt: !740)
!756 = !DILocation(line: 307, column: 8, scope: !752, inlinedAt: !740)
!757 = distinct !{!757, !749, !758, !495}
!758 = !DILocation(line: 308, column: 5, scope: !697, inlinedAt: !740)
!759 = !DILocation(line: 311, column: 3, scope: !697, inlinedAt: !740)
!760 = !DILocation(line: 311, column: 15, scope: !697, inlinedAt: !740)
!761 = !DILocation(line: 312, column: 3, scope: !697, inlinedAt: !740)
!762 = !DILocation(line: 312, column: 15, scope: !697, inlinedAt: !740)
!763 = !DILocation(line: 313, column: 7, scope: !764, inlinedAt: !740)
!764 = distinct !DILexicalBlock(scope: !697, file: !3, line: 313, column: 7)
!765 = !DILocation(line: 313, column: 23, scope: !764, inlinedAt: !740)
!766 = !DILocation(line: 313, column: 28, scope: !764, inlinedAt: !740)
!767 = !DILocation(line: 313, column: 31, scope: !764, inlinedAt: !740)
!768 = !DILocation(line: 313, column: 48, scope: !764, inlinedAt: !740)
!769 = !DILocation(line: 313, column: 53, scope: !764, inlinedAt: !740)
!770 = !DILocalVariable(name: "a", arg: 1, scope: !771, file: !772, line: 86, type: !775)
!771 = distinct !DISubprogram(name: "psame_inode", scope: !772, file: !772, line: 86, type: !773, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !777)
!772 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!773 = !DISubroutineType(types: !774)
!774 = !{!64, !775, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!777 = !{!770, !778}
!778 = !DILocalVariable(name: "b", arg: 2, scope: !771, file: !772, line: 86, type: !775)
!779 = !DILocation(line: 0, scope: !771, inlinedAt: !780)
!780 = distinct !DILocation(line: 313, column: 56, scope: !764, inlinedAt: !740)
!781 = !DILocation(line: 90, column: 14, scope: !771, inlinedAt: !780)
!782 = !{!783, !784, i64 0}
!783 = !{!"stat", !784, i64 0, !784, i64 8, !530, i64 16, !530, i64 20, !530, i64 24, !530, i64 28, !784, i64 32, !784, i64 40, !784, i64 48, !530, i64 56, !530, i64 60, !784, i64 64, !785, i64 72, !785, i64 88, !785, i64 104, !441, i64 120}
!784 = !{!"long", !441, i64 0}
!785 = !{!"timespec", !784, i64 0, !784, i64 8}
!786 = !{!783, !784, i64 8}
!787 = !DILocation(line: 313, column: 7, scope: !697, inlinedAt: !740)
!788 = !DILocation(line: 316, column: 1, scope: !697, inlinedAt: !740)
!789 = !DILocation(line: 0, scope: !660)
!790 = !DILocation(line: 364, column: 11, scope: !660)
!791 = !DILocation(line: 366, column: 11, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 365, column: 9)
!793 = distinct !DILexicalBlock(scope: !660, file: !3, line: 364, column: 11)
!794 = !DILocation(line: 371, column: 14, scope: !649)
!795 = !DILocation(line: 372, column: 10, scope: !665)
!796 = !DILocation(line: 372, column: 7, scope: !649)
!797 = !DILocation(line: 374, column: 7, scope: !798)
!798 = distinct !DILexicalBlock(scope: !665, file: !3, line: 373, column: 5)
!799 = !DILocation(line: 375, column: 7, scope: !798)
!800 = !DILocation(line: 376, column: 5, scope: !798)
!801 = !DILocation(line: 89, column: 25, scope: !802, inlinedAt: !808)
!802 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 87, type: !803, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{!666}
!805 = !{!806, !807}
!806 = !DILocalVariable(name: "p", scope: !802, file: !3, line: 89, type: !666)
!807 = !DILocalVariable(name: "init_alloc", scope: !802, file: !3, line: 93, type: !43)
!808 = distinct !DILocation(line: 379, column: 37, scope: !664)
!809 = !DILocation(line: 0, scope: !802, inlinedAt: !808)
!810 = !DILocation(line: 94, column: 6, scope: !802, inlinedAt: !808)
!811 = !DILocation(line: 94, column: 14, scope: !802, inlinedAt: !808)
!812 = !{!813, !784, i64 8}
!813 = !{!"file_name", !440, i64 0, !784, i64 8, !440, i64 16}
!814 = !DILocation(line: 96, column: 12, scope: !802, inlinedAt: !808)
!815 = !DILocation(line: 96, column: 6, scope: !802, inlinedAt: !808)
!816 = !DILocation(line: 96, column: 10, scope: !802, inlinedAt: !808)
!817 = !{!813, !440, i64 0}
!818 = !DILocation(line: 97, column: 34, scope: !802, inlinedAt: !808)
!819 = !DILocation(line: 97, column: 6, scope: !802, inlinedAt: !808)
!820 = !DILocation(line: 97, column: 12, scope: !802, inlinedAt: !808)
!821 = !{!813, !440, i64 16}
!822 = !DILocation(line: 98, column: 15, scope: !802, inlinedAt: !808)
!823 = !DILocation(line: 0, scope: !664)
!824 = !DILocalVariable(name: "file_name", arg: 1, scope: !825, file: !3, line: 262, type: !666)
!825 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 262, type: !826, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !666}
!828 = !{!824, !829, !830, !839, !841}
!829 = !DILocalVariable(name: "height", scope: !825, file: !3, line: 264, type: !45)
!830 = !DILocalVariable(name: "dev_ino_buf", scope: !825, file: !3, line: 265, type: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !832, line: 30, size: 128, elements: !833)
!832 = !DIFile(filename: "./lib/dev-ino.h", directory: "/src", checksumkind: CSK_MD5, checksum: "7eae2ded9ac0c200760eafd719dd996d")
!833 = !{!834, !837}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !831, file: !832, line: 32, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !836, line: 47, baseType: !710)
!836 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!837 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !831, file: !832, line: 33, baseType: !838, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !836, line: 59, baseType: !708)
!839 = !DILocalVariable(name: "root_dev_ino", scope: !825, file: !3, line: 266, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!841 = !DILocalVariable(name: "dot_sb", scope: !825, file: !3, line: 272, type: !704)
!842 = !DILocation(line: 0, scope: !825, inlinedAt: !843)
!843 = distinct !DILocation(line: 380, column: 7, scope: !664)
!844 = !DILocation(line: 265, column: 3, scope: !825, inlinedAt: !843)
!845 = !DILocation(line: 265, column: 18, scope: !825, inlinedAt: !843)
!846 = !DILocation(line: 266, column: 34, scope: !825, inlinedAt: !843)
!847 = !DILocation(line: 268, column: 20, scope: !848, inlinedAt: !843)
!848 = distinct !DILexicalBlock(scope: !825, file: !3, line: 268, column: 7)
!849 = !DILocation(line: 268, column: 7, scope: !825, inlinedAt: !843)
!850 = !DILocation(line: 269, column: 5, scope: !848, inlinedAt: !843)
!851 = !DILocation(line: 272, column: 3, scope: !825, inlinedAt: !843)
!852 = !DILocation(line: 272, column: 15, scope: !825, inlinedAt: !843)
!853 = !DILocation(line: 273, column: 7, scope: !854, inlinedAt: !843)
!854 = distinct !DILexicalBlock(scope: !825, file: !3, line: 273, column: 7)
!855 = !DILocation(line: 273, column: 27, scope: !854, inlinedAt: !843)
!856 = !DILocation(line: 273, column: 7, scope: !825, inlinedAt: !843)
!857 = !DILocation(line: 279, column: 11, scope: !858, inlinedAt: !843)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 279, column: 11)
!859 = distinct !DILexicalBlock(scope: !825, file: !3, line: 277, column: 5)
!860 = !{!861, !784, i64 8}
!861 = !{!"dev_ino", !784, i64 0, !784, i64 8}
!862 = !{!861, !784, i64 0}
!863 = !DILocation(line: 279, column: 11, scope: !859, inlinedAt: !843)
!864 = !DILocation(line: 274, column: 5, scope: !854, inlinedAt: !843)
!865 = !DILocation(line: 282, column: 49, scope: !859, inlinedAt: !843)
!866 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !867, file: !3, line: 153, type: !870)
!867 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !868, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !870, !666, !45}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!871 = !{!866, !872, !873, !874, !879, !880, !881, !882, !883, !895, !900, !901}
!872 = !DILocalVariable(name: "file_name", arg: 2, scope: !867, file: !3, line: 153, type: !666)
!873 = !DILocalVariable(name: "parent_height", arg: 3, scope: !867, file: !3, line: 154, type: !45)
!874 = !DILocalVariable(name: "dirp", scope: !867, file: !3, line: 156, type: !875)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !877, line: 127, baseType: !878)
!877 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !877, line: 127, flags: DIFlagFwdDecl)
!879 = !DILocalVariable(name: "fd", scope: !867, file: !3, line: 161, type: !43)
!880 = !DILocalVariable(name: "parent_sb", scope: !867, file: !3, line: 166, type: !704)
!881 = !DILocalVariable(name: "use_lstat", scope: !867, file: !3, line: 173, type: !64)
!882 = !DILocalVariable(name: "found", scope: !867, file: !3, line: 175, type: !64)
!883 = !DILocalVariable(name: "dp", scope: !884, file: !3, line: 178, type: !885)
!884 = distinct !DILexicalBlock(scope: !867, file: !3, line: 177, column: 5)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !888, line: 22, size: 2240, elements: !889)
!888 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!889 = !{!890, !891, !892, !893, !894}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !887, file: !888, line: 25, baseType: !710, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !887, file: !888, line: 26, baseType: !103, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !887, file: !888, line: 31, baseType: !44, size: 16, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !887, file: !888, line: 32, baseType: !50, size: 8, offset: 144)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !887, file: !888, line: 33, baseType: !279, size: 2048, offset: 152)
!895 = !DILocalVariable(name: "e", scope: !896, file: !3, line: 186, type: !43)
!896 = distinct !DILexicalBlock(scope: !897, file: !3, line: 184, column: 13)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 183, column: 15)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 182, column: 9)
!899 = distinct !DILexicalBlock(scope: !884, file: !3, line: 181, column: 11)
!900 = !DILocalVariable(name: "ino", scope: !884, file: !3, line: 196, type: !835)
!901 = !DILocalVariable(name: "ent_sb", scope: !884, file: !3, line: 198, type: !704)
!902 = !DILocation(line: 0, scope: !867, inlinedAt: !903)
!903 = distinct !DILocation(line: 282, column: 7, scope: !859, inlinedAt: !843)
!904 = !DILocation(line: 156, column: 15, scope: !867, inlinedAt: !903)
!905 = !DILocation(line: 157, column: 12, scope: !906, inlinedAt: !903)
!906 = distinct !DILexicalBlock(scope: !867, file: !3, line: 157, column: 7)
!907 = !DILocation(line: 157, column: 7, scope: !867, inlinedAt: !903)
!908 = !DILocation(line: 158, column: 5, scope: !906, inlinedAt: !903)
!909 = !DILocation(line: 161, column: 12, scope: !867, inlinedAt: !903)
!910 = !DILocation(line: 162, column: 10, scope: !911, inlinedAt: !903)
!911 = distinct !DILexicalBlock(scope: !867, file: !3, line: 162, column: 7)
!912 = !DILocation(line: 162, column: 8, scope: !911, inlinedAt: !903)
!913 = !DILocation(line: 162, column: 18, scope: !911, inlinedAt: !903)
!914 = !DILocation(line: 162, column: 46, scope: !911, inlinedAt: !903)
!915 = !DILocation(line: 162, column: 7, scope: !867, inlinedAt: !903)
!916 = !DILocation(line: 162, column: 32, scope: !911, inlinedAt: !903)
!917 = !DILocation(line: 163, column: 5, scope: !911, inlinedAt: !903)
!918 = !DILocation(line: 166, column: 3, scope: !867, inlinedAt: !903)
!919 = !DILocation(line: 166, column: 15, scope: !867, inlinedAt: !903)
!920 = !DILocation(line: 167, column: 18, scope: !921, inlinedAt: !903)
!921 = distinct !DILexicalBlock(scope: !867, file: !3, line: 167, column: 7)
!922 = !DILocation(line: 167, column: 8, scope: !921, inlinedAt: !903)
!923 = !DILocation(line: 167, column: 43, scope: !921, inlinedAt: !903)
!924 = !DILocation(line: 167, column: 67, scope: !921, inlinedAt: !903)
!925 = !DILocation(line: 167, column: 7, scope: !867, inlinedAt: !903)
!926 = !DILocation(line: 168, column: 5, scope: !921, inlinedAt: !903)
!927 = !DILocation(line: 173, column: 31, scope: !867, inlinedAt: !903)
!928 = !DILocation(line: 173, column: 38, scope: !867, inlinedAt: !903)
!929 = !DILocation(line: 180, column: 13, scope: !884, inlinedAt: !903)
!930 = !DILocalVariable(name: "dirp", arg: 1, scope: !931, file: !36, line: 285, type: !875)
!931 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !36, file: !36, line: 285, type: !932, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!932 = !DISubroutineType(types: !933)
!933 = !{!885, !875}
!934 = !{!930, !935}
!935 = !DILocalVariable(name: "dp", scope: !936, file: !36, line: 289, type: !885)
!936 = distinct !DILexicalBlock(scope: !931, file: !36, line: 288, column: 5)
!937 = !DILocation(line: 0, scope: !931, inlinedAt: !938)
!938 = distinct !DILocation(line: 181, column: 17, scope: !899, inlinedAt: !903)
!939 = !DILocation(line: 289, column: 33, scope: !936, inlinedAt: !938)
!940 = !DILocation(line: 0, scope: !936, inlinedAt: !938)
!941 = !DILocation(line: 290, column: 14, scope: !942, inlinedAt: !938)
!942 = distinct !DILexicalBlock(scope: !936, file: !36, line: 290, column: 11)
!943 = !DILocation(line: 290, column: 22, scope: !942, inlinedAt: !938)
!944 = !DILocation(line: 290, column: 42, scope: !942, inlinedAt: !938)
!945 = !DILocalVariable(name: "file_name", arg: 1, scope: !946, file: !36, line: 272, type: !48)
!946 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !36, file: !36, line: 272, type: !947, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!64, !48}
!949 = !{!945, !950}
!950 = !DILocalVariable(name: "sep", scope: !951, file: !36, line: 276, type: !42)
!951 = distinct !DILexicalBlock(scope: !952, file: !36, line: 275, column: 5)
!952 = distinct !DILexicalBlock(scope: !946, file: !36, line: 274, column: 7)
!953 = !DILocation(line: 0, scope: !946, inlinedAt: !954)
!954 = distinct !DILocation(line: 290, column: 27, scope: !942, inlinedAt: !938)
!955 = !DILocation(line: 274, column: 7, scope: !952, inlinedAt: !954)
!956 = !DILocation(line: 274, column: 20, scope: !952, inlinedAt: !954)
!957 = !DILocation(line: 274, column: 7, scope: !946, inlinedAt: !954)
!958 = !DILocation(line: 276, column: 29, scope: !951, inlinedAt: !954)
!959 = !DILocation(line: 276, column: 42, scope: !951, inlinedAt: !954)
!960 = !DILocation(line: 276, column: 50, scope: !951, inlinedAt: !954)
!961 = !DILocation(line: 276, column: 18, scope: !951, inlinedAt: !954)
!962 = !DILocation(line: 0, scope: !951, inlinedAt: !954)
!963 = !DILocation(line: 290, column: 11, scope: !936, inlinedAt: !938)
!964 = !DILocation(line: 0, scope: !884, inlinedAt: !903)
!965 = !DILocation(line: 183, column: 15, scope: !897, inlinedAt: !903)
!966 = !DILocation(line: 183, column: 15, scope: !898, inlinedAt: !903)
!967 = !DILocation(line: 0, scope: !896, inlinedAt: !903)
!968 = !DILocation(line: 188, column: 21, scope: !896, inlinedAt: !903)
!969 = !DILocation(line: 222, column: 20, scope: !970, inlinedAt: !903)
!970 = distinct !DILexicalBlock(scope: !867, file: !3, line: 222, column: 7)
!971 = !DILocation(line: 196, column: 19, scope: !884, inlinedAt: !903)
!972 = !{!973, !784, i64 0}
!973 = !{!"dirent", !784, i64 0, !784, i64 8, !564, i64 16, !441, i64 18, !441, i64 19}
!974 = !DILocation(line: 198, column: 7, scope: !884, inlinedAt: !903)
!975 = !DILocation(line: 198, column: 19, scope: !884, inlinedAt: !903)
!976 = !DILocation(line: 199, column: 15, scope: !977, inlinedAt: !903)
!977 = distinct !DILexicalBlock(scope: !884, file: !3, line: 199, column: 11)
!978 = !DILocation(line: 199, column: 38, scope: !977, inlinedAt: !903)
!979 = !DILocation(line: 201, column: 15, scope: !980, inlinedAt: !903)
!980 = distinct !DILexicalBlock(scope: !981, file: !3, line: 201, column: 15)
!981 = distinct !DILexicalBlock(scope: !977, file: !3, line: 200, column: 9)
!982 = !DILocation(line: 201, column: 43, scope: !980, inlinedAt: !903)
!983 = !DILocation(line: 201, column: 15, scope: !981, inlinedAt: !903)
!984 = distinct !{!984, !985, !986}
!985 = !DILocation(line: 176, column: 3, scope: !867, inlinedAt: !903)
!986 = !DILocation(line: 220, column: 5, scope: !867, inlinedAt: !903)
!987 = !DILocation(line: 206, column: 24, scope: !981, inlinedAt: !903)
!988 = !DILocation(line: 207, column: 9, scope: !981, inlinedAt: !903)
!989 = !DILocation(line: 209, column: 15, scope: !990, inlinedAt: !903)
!990 = distinct !DILexicalBlock(scope: !884, file: !3, line: 209, column: 11)
!991 = !DILocation(line: 209, column: 11, scope: !884, inlinedAt: !903)
!992 = distinct !{!992, !985, !986}
!993 = !DILocation(line: 214, column: 24, scope: !994, inlinedAt: !903)
!994 = distinct !DILexicalBlock(scope: !884, file: !3, line: 214, column: 12)
!995 = !DILocation(line: 216, column: 53, scope: !996, inlinedAt: !903)
!996 = distinct !DILexicalBlock(scope: !994, file: !3, line: 215, column: 9)
!997 = !DILocation(line: 216, column: 11, scope: !996, inlinedAt: !903)
!998 = !DILocation(line: 222, column: 23, scope: !970, inlinedAt: !903)
!999 = !DILocation(line: 222, column: 39, scope: !970, inlinedAt: !903)
!1000 = !DILocation(line: 222, column: 7, scope: !867, inlinedAt: !903)
!1001 = !DILocation(line: 226, column: 7, scope: !1002, inlinedAt: !903)
!1002 = distinct !DILexicalBlock(scope: !970, file: !3, line: 223, column: 5)
!1003 = !DILocation(line: 231, column: 5, scope: !1004, inlinedAt: !903)
!1004 = distinct !DILexicalBlock(scope: !867, file: !3, line: 230, column: 8)
!1005 = !DILocation(line: 235, column: 13, scope: !867, inlinedAt: !903)
!1006 = !{i64 0, i64 8, !1007, i64 8, i64 8, !1007, i64 16, i64 4, !529, i64 20, i64 4, !529, i64 24, i64 4, !529, i64 28, i64 4, !529, i64 32, i64 8, !1007, i64 40, i64 8, !1007, i64 48, i64 8, !1007, i64 56, i64 4, !529, i64 60, i64 4, !529, i64 64, i64 8, !1007, i64 72, i64 8, !1007, i64 80, i64 8, !1007, i64 88, i64 8, !1007, i64 96, i64 8, !1007, i64 104, i64 8, !1007, i64 112, i64 8, !1007, i64 120, i64 8, !538}
!1007 = !{!784, !784, i64 0}
!1008 = !DILocation(line: 236, column: 1, scope: !867, inlinedAt: !903)
!1009 = distinct !{!1009, !1010, !1011}
!1010 = !DILocation(line: 276, column: 3, scope: !825, inlinedAt: !843)
!1011 = !DILocation(line: 283, column: 5, scope: !825, inlinedAt: !843)
!1012 = !DILocation(line: 286, column: 18, scope: !1013, inlinedAt: !843)
!1013 = distinct !DILexicalBlock(scope: !825, file: !3, line: 286, column: 7)
!1014 = !DILocation(line: 286, column: 7, scope: !1013, inlinedAt: !843)
!1015 = !DILocation(line: 286, column: 27, scope: !1013, inlinedAt: !843)
!1016 = !DILocation(line: 286, column: 7, scope: !825, inlinedAt: !843)
!1017 = !DILocation(line: 287, column: 5, scope: !1013, inlinedAt: !843)
!1018 = !DILocation(line: 381, column: 24, scope: !664)
!1019 = !DILocation(line: 288, column: 1, scope: !825, inlinedAt: !843)
!1020 = !DILocation(line: 381, column: 7, scope: !664)
!1021 = !DILocalVariable(name: "p", arg: 1, scope: !1022, file: !3, line: 80, type: !666)
!1022 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 80, type: !826, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1023 = !{!1021}
!1024 = !DILocation(line: 0, scope: !1022, inlinedAt: !1025)
!1025 = distinct !DILocation(line: 382, column: 7, scope: !664)
!1026 = !DILocation(line: 82, column: 12, scope: !1022, inlinedAt: !1025)
!1027 = !DILocation(line: 82, column: 3, scope: !1022, inlinedAt: !1025)
!1028 = !DILocation(line: 83, column: 3, scope: !1022, inlinedAt: !1025)
!1029 = !DILocation(line: 386, column: 1, scope: !649)
!1030 = !DISubprogram(name: "bindtextdomain", scope: !518, file: !518, line: 86, type: !1031, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!41, !48, !48}
!1033 = !DISubprogram(name: "textdomain", scope: !518, file: !518, line: 82, type: !641, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1034 = !DISubprogram(name: "atexit", scope: !640, file: !640, line: 602, type: !1035, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!43, !200}
!1037 = !DISubprogram(name: "getopt_long", scope: !141, file: !141, line: 66, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!43, !43, !1040, !48, !1042, !146}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!1043 = !DISubprogram(name: "stat", scope: !1044, file: !1044, line: 205, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1044 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!43, !525, !1047}
!1047 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !870)
!1048 = !DISubprogram(name: "puts", scope: !174, file: !174, line: 661, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!43, !48}
!1051 = !DISubprogram(name: "opendir", scope: !877, file: !877, line: 134, type: !1052, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!875, !48}
!1054 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1055, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!41, !45}
!1057 = !{!1058, !1059, !1060, !1061}
!1058 = !DILocalVariable(name: "n", arg: 1, scope: !1054, file: !3, line: 127, type: !45)
!1059 = !DILocalVariable(name: "buf", scope: !1054, file: !3, line: 129, type: !41)
!1060 = !DILocalVariable(name: "p", scope: !1054, file: !3, line: 130, type: !41)
!1061 = !DILocalVariable(name: "i", scope: !1062, file: !3, line: 132, type: !45)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 132, column: 3)
!1063 = !DILocation(line: 0, scope: !1054)
!1064 = !DILocation(line: 129, column: 15, scope: !1054)
!1065 = !DILocation(line: 0, scope: !1062)
!1066 = !DILocation(line: 132, column: 24, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 132, column: 3)
!1068 = !DILocation(line: 132, column: 3, scope: !1062)
!1069 = !DILocation(line: 137, column: 3, scope: !1054)
!1070 = !DILocation(line: 137, column: 9, scope: !1054)
!1071 = !DILocation(line: 138, column: 3, scope: !1054)
!1072 = !DILocalVariable(name: "__dest", arg: 1, scope: !1073, file: !1074, line: 26, type: !1077)
!1073 = distinct !DISubprogram(name: "memcpy", scope: !1074, file: !1074, line: 26, type: !1075, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1074 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!40, !1077, !646, !45}
!1077 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!1078 = !{!1072, !1079, !1080}
!1079 = !DILocalVariable(name: "__src", arg: 2, scope: !1073, file: !1074, line: 26, type: !646)
!1080 = !DILocalVariable(name: "__len", arg: 3, scope: !1073, file: !1074, line: 26, type: !45)
!1081 = !DILocation(line: 0, scope: !1073, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 134, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 133, column: 5)
!1084 = !DILocation(line: 29, column: 10, scope: !1073, inlinedAt: !1082)
!1085 = !DILocation(line: 135, column: 9, scope: !1083)
!1086 = !DILocation(line: 132, column: 30, scope: !1067)
!1087 = distinct !{!1087, !1068, !1088, !495}
!1088 = !DILocation(line: 136, column: 5, scope: !1062)
!1089 = !DISubprogram(name: "dirfd", scope: !877, file: !877, line: 224, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!43, !875}
!1092 = !DISubprogram(name: "fchdir", scope: !1093, file: !1093, line: 521, type: !1094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1093 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!43, !43}
!1096 = !DISubprogram(name: "chdir", scope: !1093, file: !1093, line: 517, type: !1049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1097 = !DISubprogram(name: "fstat", scope: !1044, file: !1044, line: 210, type: !1098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!43, !43, !870}
!1100 = !DISubprogram(name: "readdir", scope: !877, file: !877, line: 162, type: !1101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!1103, !875}
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!1104 = !DISubprogram(name: "closedir", scope: !877, file: !877, line: 149, type: !1090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1105 = !DISubprogram(name: "lstat", scope: !1044, file: !1044, line: 313, type: !1045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1106 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 104, type: !1107, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !666, !48, !45}
!1109 = !{!1110, !1111, !1112, !1113, !1114, !1117}
!1110 = !DILocalVariable(name: "p", arg: 1, scope: !1106, file: !3, line: 104, type: !666)
!1111 = !DILocalVariable(name: "s", arg: 2, scope: !1106, file: !3, line: 104, type: !48)
!1112 = !DILocalVariable(name: "s_len", arg: 3, scope: !1106, file: !3, line: 104, type: !45)
!1113 = !DILocalVariable(name: "n_free", scope: !1106, file: !3, line: 106, type: !381)
!1114 = !DILocalVariable(name: "n_used", scope: !1115, file: !3, line: 113, type: !381)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 108, column: 5)
!1116 = distinct !DILexicalBlock(scope: !1106, file: !3, line: 107, column: 7)
!1117 = !DILocalVariable(name: "buf", scope: !1115, file: !3, line: 114, type: !41)
!1118 = !DILocation(line: 0, scope: !1106)
!1119 = !DILocation(line: 106, column: 21, scope: !1106)
!1120 = !DILocation(line: 106, column: 32, scope: !1106)
!1121 = !DILocation(line: 106, column: 27, scope: !1106)
!1122 = !DILocation(line: 107, column: 18, scope: !1116)
!1123 = !DILocation(line: 107, column: 14, scope: !1116)
!1124 = !DILocation(line: 107, column: 7, scope: !1106)
!1125 = !DILocation(line: 113, column: 25, scope: !1115)
!1126 = !DILocation(line: 113, column: 33, scope: !1115)
!1127 = !DILocation(line: 0, scope: !1115)
!1128 = !DILocation(line: 114, column: 57, scope: !1115)
!1129 = !DILocation(line: 114, column: 19, scope: !1115)
!1130 = !DILocation(line: 115, column: 35, scope: !1115)
!1131 = !DILocation(line: 115, column: 30, scope: !1115)
!1132 = !DILocation(line: 115, column: 43, scope: !1115)
!1133 = !DILocation(line: 115, column: 56, scope: !1115)
!1134 = !DILocation(line: 0, scope: !1073, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 115, column: 18, scope: !1115)
!1136 = !DILocation(line: 29, column: 10, scope: !1073, inlinedAt: !1135)
!1137 = !DILocation(line: 115, column: 16, scope: !1115)
!1138 = !DILocation(line: 116, column: 16, scope: !1115)
!1139 = !DILocation(line: 116, column: 7, scope: !1115)
!1140 = !DILocation(line: 117, column: 14, scope: !1115)
!1141 = !DILocation(line: 120, column: 12, scope: !1106)
!1142 = !DILocation(line: 118, column: 5, scope: !1115)
!1143 = !DILocation(line: 121, column: 15, scope: !1106)
!1144 = !DILocation(line: 122, column: 14, scope: !1106)
!1145 = !DILocation(line: 122, column: 20, scope: !1106)
!1146 = !DILocation(line: 0, scope: !1073, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 122, column: 3, scope: !1106)
!1148 = !DILocation(line: 29, column: 10, scope: !1073, inlinedAt: !1147)
!1149 = !DILocation(line: 123, column: 1, scope: !1106)
!1150 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !158, file: !158, line: 50, type: !454, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1151)
!1151 = !{!1152}
!1152 = !DILocalVariable(name: "file", arg: 1, scope: !1150, file: !158, line: 50, type: !48)
!1153 = !DILocation(line: 0, scope: !1150)
!1154 = !DILocation(line: 52, column: 13, scope: !1150)
!1155 = !DILocation(line: 53, column: 1, scope: !1150)
!1156 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !158, file: !158, line: 87, type: !1157, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1159)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !64}
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "ignore", arg: 1, scope: !1156, file: !158, line: 87, type: !64)
!1161 = !DILocation(line: 0, scope: !1156)
!1162 = !DILocation(line: 89, column: 16, scope: !1156)
!1163 = !{!1164, !1164, i64 0}
!1164 = !{!"_Bool", !441, i64 0}
!1165 = !DILocation(line: 90, column: 1, scope: !1156)
!1166 = distinct !DISubprogram(name: "close_stdout", scope: !158, file: !158, line: 116, type: !201, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !157, retainedNodes: !1167)
!1167 = !{!1168}
!1168 = !DILocalVariable(name: "write_error", scope: !1169, file: !158, line: 121, type: !48)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !158, line: 120, column: 5)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !158, line: 118, column: 7)
!1171 = !DILocation(line: 118, column: 21, scope: !1170)
!1172 = !DILocation(line: 118, column: 7, scope: !1170)
!1173 = !DILocation(line: 118, column: 29, scope: !1170)
!1174 = !DILocation(line: 119, column: 7, scope: !1170)
!1175 = !DILocation(line: 119, column: 12, scope: !1170)
!1176 = !{i8 0, i8 2}
!1177 = !DILocation(line: 119, column: 25, scope: !1170)
!1178 = !DILocation(line: 119, column: 28, scope: !1170)
!1179 = !DILocation(line: 119, column: 34, scope: !1170)
!1180 = !DILocation(line: 118, column: 7, scope: !1166)
!1181 = !DILocation(line: 121, column: 33, scope: !1169)
!1182 = !DILocation(line: 0, scope: !1169)
!1183 = !DILocation(line: 122, column: 11, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1169, file: !158, line: 122, column: 11)
!1185 = !DILocation(line: 0, scope: !1184)
!1186 = !DILocation(line: 122, column: 11, scope: !1169)
!1187 = !DILocation(line: 123, column: 9, scope: !1184)
!1188 = !DILocation(line: 126, column: 9, scope: !1184)
!1189 = !DILocation(line: 128, column: 14, scope: !1169)
!1190 = !DILocation(line: 128, column: 7, scope: !1169)
!1191 = !DILocation(line: 133, column: 42, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1166, file: !158, line: 133, column: 7)
!1193 = !DILocation(line: 133, column: 28, scope: !1192)
!1194 = !DILocation(line: 133, column: 50, scope: !1192)
!1195 = !DILocation(line: 133, column: 7, scope: !1166)
!1196 = !DILocation(line: 134, column: 12, scope: !1192)
!1197 = !DILocation(line: 134, column: 5, scope: !1192)
!1198 = !DILocation(line: 135, column: 1, scope: !1166)
!1199 = distinct !DISubprogram(name: "verror", scope: !165, file: !165, line: 251, type: !1200, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !43, !43, !48, !173}
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DILocalVariable(name: "status", arg: 1, scope: !1199, file: !165, line: 251, type: !43)
!1204 = !DILocalVariable(name: "errnum", arg: 2, scope: !1199, file: !165, line: 251, type: !43)
!1205 = !DILocalVariable(name: "message", arg: 3, scope: !1199, file: !165, line: 251, type: !48)
!1206 = !DILocalVariable(name: "args", arg: 4, scope: !1199, file: !165, line: 251, type: !173)
!1207 = !DILocation(line: 0, scope: !1199)
!1208 = !DILocation(line: 251, column: 1, scope: !1199)
!1209 = !DILocation(line: 261, column: 3, scope: !1199)
!1210 = !DILocation(line: 265, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !165, line: 265, column: 7)
!1212 = !DILocation(line: 265, column: 7, scope: !1199)
!1213 = !DILocation(line: 266, column: 5, scope: !1211)
!1214 = !DILocation(line: 272, column: 7, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !165, line: 268, column: 5)
!1216 = !DILocation(line: 276, column: 3, scope: !1199)
!1217 = !{i64 0, i64 8, !439, i64 8, i64 8, !439, i64 16, i64 8, !439, i64 24, i64 4, !529, i64 28, i64 4, !529}
!1218 = !DILocation(line: 282, column: 1, scope: !1199)
!1219 = distinct !DISubprogram(name: "flush_stdout", scope: !165, file: !165, line: 163, type: !201, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1220)
!1220 = !{!1221}
!1221 = !DILocalVariable(name: "stdout_fd", scope: !1219, file: !165, line: 166, type: !43)
!1222 = !DILocation(line: 0, scope: !1219)
!1223 = !DILocalVariable(name: "fd", arg: 1, scope: !1224, file: !165, line: 145, type: !43)
!1224 = distinct !DISubprogram(name: "is_open", scope: !165, file: !165, line: 145, type: !1094, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1225)
!1225 = !{!1223}
!1226 = !DILocation(line: 0, scope: !1224, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 182, column: 25, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1219, file: !165, line: 182, column: 7)
!1229 = !DILocation(line: 157, column: 15, scope: !1224, inlinedAt: !1227)
!1230 = !DILocation(line: 182, column: 25, scope: !1228)
!1231 = !DILocation(line: 182, column: 7, scope: !1219)
!1232 = !DILocation(line: 184, column: 5, scope: !1228)
!1233 = !DILocation(line: 185, column: 1, scope: !1219)
!1234 = distinct !DISubprogram(name: "error_tail", scope: !165, file: !165, line: 219, type: !1200, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1235)
!1235 = !{!1236, !1237, !1238, !1239}
!1236 = !DILocalVariable(name: "status", arg: 1, scope: !1234, file: !165, line: 219, type: !43)
!1237 = !DILocalVariable(name: "errnum", arg: 2, scope: !1234, file: !165, line: 219, type: !43)
!1238 = !DILocalVariable(name: "message", arg: 3, scope: !1234, file: !165, line: 219, type: !48)
!1239 = !DILocalVariable(name: "args", arg: 4, scope: !1234, file: !165, line: 219, type: !173)
!1240 = !DILocation(line: 0, scope: !1234)
!1241 = !DILocation(line: 219, column: 1, scope: !1234)
!1242 = !DILocation(line: 229, column: 13, scope: !1234)
!1243 = !DILocation(line: 229, column: 3, scope: !1234)
!1244 = !DILocalVariable(name: "__stream", arg: 1, scope: !1245, file: !1246, line: 132, type: !1249)
!1245 = distinct !DISubprogram(name: "vfprintf", scope: !1246, file: !1246, line: 132, type: !1247, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1284)
!1246 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!43, !1249, !525, !175}
!1249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1250)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !1253)
!1253 = !{!1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1252, file: !81, line: 51, baseType: !43, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1252, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1252, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1252, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1252, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1252, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1252, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1252, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1252, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1252, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1252, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1252, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1252, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1252, file: !81, line: 70, baseType: !1268, size: 64, offset: 832)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1252, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1252, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1252, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1252, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1252, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1252, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1252, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1252, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1252, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1252, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1252, file: !81, line: 93, baseType: !1268, size: 64, offset: 1344)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1252, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1252, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1252, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1252, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!1284 = !{!1244, !1285, !1286}
!1285 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1245, file: !1246, line: 133, type: !525)
!1286 = !DILocalVariable(name: "__ap", arg: 3, scope: !1245, file: !1246, line: 133, type: !175)
!1287 = !DILocation(line: 0, scope: !1245, inlinedAt: !1288)
!1288 = distinct !DILocation(line: 229, column: 3, scope: !1234)
!1289 = !DILocation(line: 135, column: 10, scope: !1245, inlinedAt: !1288)
!1290 = !{!1291, !1293}
!1291 = distinct !{!1291, !1292, !"vfprintf.inline: argument 0"}
!1292 = distinct !{!1292, !"vfprintf.inline"}
!1293 = distinct !{!1293, !1292, !"vfprintf.inline: argument 1"}
!1294 = !DILocation(line: 232, column: 3, scope: !1234)
!1295 = !DILocation(line: 233, column: 7, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1234, file: !165, line: 233, column: 7)
!1297 = !DILocation(line: 233, column: 7, scope: !1234)
!1298 = !DILocalVariable(name: "errnum", arg: 1, scope: !1299, file: !165, line: 188, type: !43)
!1299 = distinct !DISubprogram(name: "print_errno_message", scope: !165, file: !165, line: 188, type: !429, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1300)
!1300 = !{!1298, !1301, !1302}
!1301 = !DILocalVariable(name: "s", scope: !1299, file: !165, line: 190, type: !48)
!1302 = !DILocalVariable(name: "errbuf", scope: !1299, file: !165, line: 193, type: !1303)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8192, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 1024)
!1306 = !DILocation(line: 0, scope: !1299, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 234, column: 5, scope: !1296)
!1308 = !DILocation(line: 193, column: 3, scope: !1299, inlinedAt: !1307)
!1309 = !DILocation(line: 193, column: 8, scope: !1299, inlinedAt: !1307)
!1310 = !DILocation(line: 195, column: 7, scope: !1299, inlinedAt: !1307)
!1311 = !DILocation(line: 207, column: 9, scope: !1312, inlinedAt: !1307)
!1312 = distinct !DILexicalBlock(scope: !1299, file: !165, line: 207, column: 7)
!1313 = !DILocation(line: 207, column: 7, scope: !1299, inlinedAt: !1307)
!1314 = !DILocation(line: 208, column: 9, scope: !1312, inlinedAt: !1307)
!1315 = !DILocation(line: 208, column: 5, scope: !1312, inlinedAt: !1307)
!1316 = !DILocation(line: 214, column: 3, scope: !1299, inlinedAt: !1307)
!1317 = !DILocation(line: 216, column: 1, scope: !1299, inlinedAt: !1307)
!1318 = !DILocation(line: 234, column: 5, scope: !1296)
!1319 = !DILocation(line: 238, column: 3, scope: !1234)
!1320 = !DILocalVariable(name: "__c", arg: 1, scope: !1321, file: !1322, line: 101, type: !43)
!1321 = distinct !DISubprogram(name: "putc_unlocked", scope: !1322, file: !1322, line: 101, type: !1323, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1325)
!1322 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!43, !43, !1250}
!1325 = !{!1320, !1326}
!1326 = !DILocalVariable(name: "__stream", arg: 2, scope: !1321, file: !1322, line: 101, type: !1250)
!1327 = !DILocation(line: 0, scope: !1321, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 238, column: 3, scope: !1234)
!1329 = !DILocation(line: 103, column: 10, scope: !1321, inlinedAt: !1328)
!1330 = !{!1331, !440, i64 40}
!1331 = !{!"_IO_FILE", !530, i64 0, !440, i64 8, !440, i64 16, !440, i64 24, !440, i64 32, !440, i64 40, !440, i64 48, !440, i64 56, !440, i64 64, !440, i64 72, !440, i64 80, !440, i64 88, !440, i64 96, !440, i64 104, !530, i64 112, !530, i64 116, !784, i64 120, !564, i64 128, !441, i64 130, !441, i64 131, !440, i64 136, !784, i64 144, !440, i64 152, !440, i64 160, !440, i64 168, !440, i64 176, !784, i64 184, !530, i64 192, !441, i64 196}
!1332 = !{!1331, !440, i64 48}
!1333 = !{!"branch_weights", i32 2000, i32 1}
!1334 = !DILocation(line: 240, column: 3, scope: !1234)
!1335 = !DILocation(line: 241, column: 7, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1234, file: !165, line: 241, column: 7)
!1337 = !DILocation(line: 241, column: 7, scope: !1234)
!1338 = !DILocation(line: 242, column: 5, scope: !1336)
!1339 = !DILocation(line: 243, column: 1, scope: !1234)
!1340 = !DISubprogram(name: "strerror_r", scope: !1341, file: !1341, line: 444, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1341 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!41, !43, !41, !45}
!1344 = !DISubprogram(name: "fflush_unlocked", scope: !174, file: !174, line: 239, type: !1345, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!43, !1250}
!1347 = !DISubprogram(name: "fcntl", scope: !1348, file: !1348, line: 149, type: !1349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1348 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!43, !43, !43, null}
!1351 = distinct !DISubprogram(name: "error", scope: !165, file: !165, line: 285, type: !1352, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1354)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !43, !43, !48, null}
!1354 = !{!1355, !1356, !1357, !1358}
!1355 = !DILocalVariable(name: "status", arg: 1, scope: !1351, file: !165, line: 285, type: !43)
!1356 = !DILocalVariable(name: "errnum", arg: 2, scope: !1351, file: !165, line: 285, type: !43)
!1357 = !DILocalVariable(name: "message", arg: 3, scope: !1351, file: !165, line: 285, type: !48)
!1358 = !DILocalVariable(name: "ap", scope: !1351, file: !165, line: 287, type: !173)
!1359 = !DILocation(line: 0, scope: !1351)
!1360 = !DILocation(line: 287, column: 3, scope: !1351)
!1361 = !DILocation(line: 287, column: 11, scope: !1351)
!1362 = !DILocation(line: 288, column: 3, scope: !1351)
!1363 = !DILocation(line: 289, column: 3, scope: !1351)
!1364 = !DILocation(line: 290, column: 3, scope: !1351)
!1365 = !DILocation(line: 291, column: 1, scope: !1351)
!1366 = !DILocation(line: 0, scope: !170)
!1367 = !DILocation(line: 298, column: 1, scope: !170)
!1368 = !DILocation(line: 302, column: 7, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !170, file: !165, line: 302, column: 7)
!1370 = !DILocation(line: 302, column: 7, scope: !170)
!1371 = !DILocation(line: 307, column: 11, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !165, line: 307, column: 11)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !165, line: 303, column: 5)
!1374 = !DILocation(line: 307, column: 27, scope: !1372)
!1375 = !DILocation(line: 308, column: 11, scope: !1372)
!1376 = !DILocation(line: 308, column: 28, scope: !1372)
!1377 = !DILocation(line: 308, column: 25, scope: !1372)
!1378 = !DILocation(line: 309, column: 15, scope: !1372)
!1379 = !DILocation(line: 309, column: 33, scope: !1372)
!1380 = !DILocation(line: 310, column: 19, scope: !1372)
!1381 = !DILocation(line: 311, column: 22, scope: !1372)
!1382 = !DILocation(line: 311, column: 56, scope: !1372)
!1383 = !DILocation(line: 307, column: 11, scope: !1373)
!1384 = !DILocation(line: 316, column: 21, scope: !1373)
!1385 = !DILocation(line: 317, column: 23, scope: !1373)
!1386 = !DILocation(line: 318, column: 5, scope: !1373)
!1387 = !DILocation(line: 327, column: 3, scope: !170)
!1388 = !DILocation(line: 331, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !170, file: !165, line: 331, column: 7)
!1390 = !DILocation(line: 331, column: 7, scope: !170)
!1391 = !DILocation(line: 332, column: 5, scope: !1389)
!1392 = !DILocation(line: 338, column: 7, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !165, line: 334, column: 5)
!1394 = !DILocation(line: 346, column: 3, scope: !170)
!1395 = !DILocation(line: 350, column: 3, scope: !170)
!1396 = !DILocation(line: 356, column: 1, scope: !170)
!1397 = distinct !DISubprogram(name: "error_at_line", scope: !165, file: !165, line: 359, type: !1398, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !164, retainedNodes: !1400)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !43, !43, !48, !7, !48, null}
!1400 = !{!1401, !1402, !1403, !1404, !1405, !1406}
!1401 = !DILocalVariable(name: "status", arg: 1, scope: !1397, file: !165, line: 359, type: !43)
!1402 = !DILocalVariable(name: "errnum", arg: 2, scope: !1397, file: !165, line: 359, type: !43)
!1403 = !DILocalVariable(name: "file_name", arg: 3, scope: !1397, file: !165, line: 359, type: !48)
!1404 = !DILocalVariable(name: "line_number", arg: 4, scope: !1397, file: !165, line: 360, type: !7)
!1405 = !DILocalVariable(name: "message", arg: 5, scope: !1397, file: !165, line: 360, type: !48)
!1406 = !DILocalVariable(name: "ap", scope: !1397, file: !165, line: 362, type: !173)
!1407 = !DILocation(line: 0, scope: !1397)
!1408 = !DILocation(line: 362, column: 3, scope: !1397)
!1409 = !DILocation(line: 362, column: 11, scope: !1397)
!1410 = !DILocation(line: 363, column: 3, scope: !1397)
!1411 = !DILocation(line: 364, column: 3, scope: !1397)
!1412 = !DILocation(line: 366, column: 3, scope: !1397)
!1413 = !DILocation(line: 367, column: 1, scope: !1397)
!1414 = distinct !DISubprogram(name: "getprogname", scope: !351, file: !351, line: 54, type: !698, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !350, retainedNodes: !521)
!1415 = !DILocation(line: 58, column: 10, scope: !1414)
!1416 = !DILocation(line: 58, column: 3, scope: !1414)
!1417 = distinct !DISubprogram(name: "set_program_name", scope: !206, file: !206, line: 37, type: !454, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1418)
!1418 = !{!1419, !1420, !1421}
!1419 = !DILocalVariable(name: "argv0", arg: 1, scope: !1417, file: !206, line: 37, type: !48)
!1420 = !DILocalVariable(name: "slash", scope: !1417, file: !206, line: 44, type: !48)
!1421 = !DILocalVariable(name: "base", scope: !1417, file: !206, line: 45, type: !48)
!1422 = !DILocation(line: 0, scope: !1417)
!1423 = !DILocation(line: 44, column: 23, scope: !1417)
!1424 = !DILocation(line: 45, column: 22, scope: !1417)
!1425 = !DILocation(line: 46, column: 17, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !206, line: 46, column: 7)
!1427 = !DILocation(line: 46, column: 9, scope: !1426)
!1428 = !DILocation(line: 46, column: 25, scope: !1426)
!1429 = !DILocation(line: 46, column: 40, scope: !1426)
!1430 = !DILocalVariable(name: "__s1", arg: 1, scope: !1431, file: !479, line: 974, type: !647)
!1431 = distinct !DISubprogram(name: "memeq", scope: !479, file: !479, line: 974, type: !1432, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !205, retainedNodes: !1434)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!64, !647, !647, !45}
!1434 = !{!1430, !1435, !1436}
!1435 = !DILocalVariable(name: "__s2", arg: 2, scope: !1431, file: !479, line: 974, type: !647)
!1436 = !DILocalVariable(name: "__n", arg: 3, scope: !1431, file: !479, line: 974, type: !45)
!1437 = !DILocation(line: 0, scope: !1431, inlinedAt: !1438)
!1438 = distinct !DILocation(line: 46, column: 28, scope: !1426)
!1439 = !DILocation(line: 976, column: 11, scope: !1431, inlinedAt: !1438)
!1440 = !DILocation(line: 976, column: 10, scope: !1431, inlinedAt: !1438)
!1441 = !DILocation(line: 46, column: 7, scope: !1417)
!1442 = !DILocation(line: 49, column: 11, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !206, line: 49, column: 11)
!1444 = distinct !DILexicalBlock(scope: !1426, file: !206, line: 47, column: 5)
!1445 = !DILocation(line: 49, column: 36, scope: !1443)
!1446 = !DILocation(line: 49, column: 11, scope: !1444)
!1447 = !DILocation(line: 65, column: 16, scope: !1417)
!1448 = !DILocation(line: 71, column: 27, scope: !1417)
!1449 = !DILocation(line: 74, column: 33, scope: !1417)
!1450 = !DILocation(line: 76, column: 1, scope: !1417)
!1451 = !DILocation(line: 0, scope: !211)
!1452 = !DILocation(line: 40, column: 29, scope: !211)
!1453 = !DILocation(line: 41, column: 19, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !211, file: !212, line: 41, column: 7)
!1455 = !DILocation(line: 41, column: 7, scope: !211)
!1456 = !DILocation(line: 47, column: 3, scope: !211)
!1457 = !DILocation(line: 48, column: 3, scope: !211)
!1458 = !DILocation(line: 48, column: 13, scope: !211)
!1459 = !DILocalVariable(name: "ps", arg: 1, scope: !1460, file: !1461, line: 1135, type: !1464)
!1460 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !1462, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1465)
!1461 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1462 = !DISubroutineType(types: !1463)
!1463 = !{null, !1464}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!1465 = !{!1459}
!1466 = !DILocation(line: 0, scope: !1460, inlinedAt: !1467)
!1467 = distinct !DILocation(line: 48, column: 18, scope: !211)
!1468 = !DILocalVariable(name: "__dest", arg: 1, scope: !1469, file: !1074, line: 57, type: !40)
!1469 = distinct !DISubprogram(name: "memset", scope: !1074, file: !1074, line: 57, type: !1470, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !215, retainedNodes: !1472)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!40, !40, !43, !45}
!1472 = !{!1468, !1473, !1474}
!1473 = !DILocalVariable(name: "__ch", arg: 2, scope: !1469, file: !1074, line: 57, type: !43)
!1474 = !DILocalVariable(name: "__len", arg: 3, scope: !1469, file: !1074, line: 57, type: !45)
!1475 = !DILocation(line: 0, scope: !1469, inlinedAt: !1476)
!1476 = distinct !DILocation(line: 1137, column: 3, scope: !1460, inlinedAt: !1467)
!1477 = !DILocation(line: 59, column: 10, scope: !1469, inlinedAt: !1476)
!1478 = !DILocation(line: 49, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !211, file: !212, line: 49, column: 7)
!1480 = !DILocation(line: 49, column: 39, scope: !1479)
!1481 = !DILocation(line: 49, column: 44, scope: !1479)
!1482 = !DILocation(line: 54, column: 1, scope: !211)
!1483 = !DISubprogram(name: "mbrtoc32", scope: !223, file: !223, line: 57, type: !1484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!45, !1486, !525, !45, !1488}
!1486 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1464)
!1489 = distinct !DISubprogram(name: "clone_quoting_options", scope: !248, file: !248, line: 113, type: !1490, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1493)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1492, !1492}
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!1493 = !{!1494, !1495, !1496}
!1494 = !DILocalVariable(name: "o", arg: 1, scope: !1489, file: !248, line: 113, type: !1492)
!1495 = !DILocalVariable(name: "saved_errno", scope: !1489, file: !248, line: 115, type: !43)
!1496 = !DILocalVariable(name: "p", scope: !1489, file: !248, line: 116, type: !1492)
!1497 = !DILocation(line: 0, scope: !1489)
!1498 = !DILocation(line: 115, column: 21, scope: !1489)
!1499 = !DILocation(line: 116, column: 40, scope: !1489)
!1500 = !DILocation(line: 116, column: 31, scope: !1489)
!1501 = !DILocation(line: 118, column: 9, scope: !1489)
!1502 = !DILocation(line: 119, column: 3, scope: !1489)
!1503 = distinct !DISubprogram(name: "get_quoting_style", scope: !248, file: !248, line: 124, type: !1504, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1508)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!21, !1506}
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!1508 = !{!1509}
!1509 = !DILocalVariable(name: "o", arg: 1, scope: !1503, file: !248, line: 124, type: !1506)
!1510 = !DILocation(line: 0, scope: !1503)
!1511 = !DILocation(line: 126, column: 11, scope: !1503)
!1512 = !DILocation(line: 126, column: 46, scope: !1503)
!1513 = !{!1514, !441, i64 0}
!1514 = !{!"quoting_options", !441, i64 0, !530, i64 4, !441, i64 8, !440, i64 40, !440, i64 48}
!1515 = !DILocation(line: 126, column: 3, scope: !1503)
!1516 = distinct !DISubprogram(name: "set_quoting_style", scope: !248, file: !248, line: 132, type: !1517, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1519)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1492, !21}
!1519 = !{!1520, !1521}
!1520 = !DILocalVariable(name: "o", arg: 1, scope: !1516, file: !248, line: 132, type: !1492)
!1521 = !DILocalVariable(name: "s", arg: 2, scope: !1516, file: !248, line: 132, type: !21)
!1522 = !DILocation(line: 0, scope: !1516)
!1523 = !DILocation(line: 134, column: 4, scope: !1516)
!1524 = !DILocation(line: 134, column: 39, scope: !1516)
!1525 = !DILocation(line: 134, column: 45, scope: !1516)
!1526 = !DILocation(line: 135, column: 1, scope: !1516)
!1527 = distinct !DISubprogram(name: "set_char_quoting", scope: !248, file: !248, line: 143, type: !1528, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!43, !1492, !42, !43}
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1537, !1538}
!1531 = !DILocalVariable(name: "o", arg: 1, scope: !1527, file: !248, line: 143, type: !1492)
!1532 = !DILocalVariable(name: "c", arg: 2, scope: !1527, file: !248, line: 143, type: !42)
!1533 = !DILocalVariable(name: "i", arg: 3, scope: !1527, file: !248, line: 143, type: !43)
!1534 = !DILocalVariable(name: "uc", scope: !1527, file: !248, line: 145, type: !50)
!1535 = !DILocalVariable(name: "p", scope: !1527, file: !248, line: 146, type: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1537 = !DILocalVariable(name: "shift", scope: !1527, file: !248, line: 148, type: !43)
!1538 = !DILocalVariable(name: "r", scope: !1527, file: !248, line: 149, type: !7)
!1539 = !DILocation(line: 0, scope: !1527)
!1540 = !DILocation(line: 147, column: 6, scope: !1527)
!1541 = !DILocation(line: 147, column: 62, scope: !1527)
!1542 = !DILocation(line: 147, column: 57, scope: !1527)
!1543 = !DILocation(line: 148, column: 15, scope: !1527)
!1544 = !DILocation(line: 149, column: 21, scope: !1527)
!1545 = !DILocation(line: 149, column: 24, scope: !1527)
!1546 = !DILocation(line: 149, column: 34, scope: !1527)
!1547 = !DILocation(line: 150, column: 13, scope: !1527)
!1548 = !DILocation(line: 150, column: 19, scope: !1527)
!1549 = !DILocation(line: 150, column: 24, scope: !1527)
!1550 = !DILocation(line: 150, column: 6, scope: !1527)
!1551 = !DILocation(line: 151, column: 3, scope: !1527)
!1552 = distinct !DISubprogram(name: "set_quoting_flags", scope: !248, file: !248, line: 159, type: !1553, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1555)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!43, !1492, !43}
!1555 = !{!1556, !1557, !1558}
!1556 = !DILocalVariable(name: "o", arg: 1, scope: !1552, file: !248, line: 159, type: !1492)
!1557 = !DILocalVariable(name: "i", arg: 2, scope: !1552, file: !248, line: 159, type: !43)
!1558 = !DILocalVariable(name: "r", scope: !1552, file: !248, line: 163, type: !43)
!1559 = !DILocation(line: 0, scope: !1552)
!1560 = !DILocation(line: 161, column: 8, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1552, file: !248, line: 161, column: 7)
!1562 = !DILocation(line: 161, column: 7, scope: !1552)
!1563 = !DILocation(line: 163, column: 14, scope: !1552)
!1564 = !{!1514, !530, i64 4}
!1565 = !DILocation(line: 164, column: 12, scope: !1552)
!1566 = !DILocation(line: 165, column: 3, scope: !1552)
!1567 = distinct !DISubprogram(name: "set_custom_quoting", scope: !248, file: !248, line: 169, type: !1568, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1570)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{null, !1492, !48, !48}
!1570 = !{!1571, !1572, !1573}
!1571 = !DILocalVariable(name: "o", arg: 1, scope: !1567, file: !248, line: 169, type: !1492)
!1572 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1567, file: !248, line: 170, type: !48)
!1573 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1567, file: !248, line: 170, type: !48)
!1574 = !DILocation(line: 0, scope: !1567)
!1575 = !DILocation(line: 172, column: 8, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1567, file: !248, line: 172, column: 7)
!1577 = !DILocation(line: 172, column: 7, scope: !1567)
!1578 = !DILocation(line: 174, column: 6, scope: !1567)
!1579 = !DILocation(line: 174, column: 12, scope: !1567)
!1580 = !DILocation(line: 175, column: 8, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1567, file: !248, line: 175, column: 7)
!1582 = !DILocation(line: 175, column: 19, scope: !1581)
!1583 = !DILocation(line: 176, column: 5, scope: !1581)
!1584 = !DILocation(line: 177, column: 6, scope: !1567)
!1585 = !DILocation(line: 177, column: 17, scope: !1567)
!1586 = !{!1514, !440, i64 40}
!1587 = !DILocation(line: 178, column: 6, scope: !1567)
!1588 = !DILocation(line: 178, column: 18, scope: !1567)
!1589 = !{!1514, !440, i64 48}
!1590 = !DILocation(line: 179, column: 1, scope: !1567)
!1591 = distinct !DISubprogram(name: "quotearg_buffer", scope: !248, file: !248, line: 774, type: !1592, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!45, !41, !45, !48, !45, !1506}
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1595 = !DILocalVariable(name: "buffer", arg: 1, scope: !1591, file: !248, line: 774, type: !41)
!1596 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1591, file: !248, line: 774, type: !45)
!1597 = !DILocalVariable(name: "arg", arg: 3, scope: !1591, file: !248, line: 775, type: !48)
!1598 = !DILocalVariable(name: "argsize", arg: 4, scope: !1591, file: !248, line: 775, type: !45)
!1599 = !DILocalVariable(name: "o", arg: 5, scope: !1591, file: !248, line: 776, type: !1506)
!1600 = !DILocalVariable(name: "p", scope: !1591, file: !248, line: 778, type: !1506)
!1601 = !DILocalVariable(name: "saved_errno", scope: !1591, file: !248, line: 779, type: !43)
!1602 = !DILocalVariable(name: "r", scope: !1591, file: !248, line: 780, type: !45)
!1603 = !DILocation(line: 0, scope: !1591)
!1604 = !DILocation(line: 778, column: 37, scope: !1591)
!1605 = !DILocation(line: 779, column: 21, scope: !1591)
!1606 = !DILocation(line: 781, column: 43, scope: !1591)
!1607 = !DILocation(line: 781, column: 53, scope: !1591)
!1608 = !DILocation(line: 781, column: 60, scope: !1591)
!1609 = !DILocation(line: 782, column: 43, scope: !1591)
!1610 = !DILocation(line: 782, column: 58, scope: !1591)
!1611 = !DILocation(line: 780, column: 14, scope: !1591)
!1612 = !DILocation(line: 783, column: 9, scope: !1591)
!1613 = !DILocation(line: 784, column: 3, scope: !1591)
!1614 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !248, file: !248, line: 251, type: !1615, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1619)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!45, !41, !45, !48, !45, !21, !43, !1617, !48, !48}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1644, !1646, !1649, !1650, !1651, !1652, !1655, !1656, !1659, !1663, !1664, !1672, !1675, !1676, !1678, !1679, !1680, !1681}
!1620 = !DILocalVariable(name: "buffer", arg: 1, scope: !1614, file: !248, line: 251, type: !41)
!1621 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1614, file: !248, line: 251, type: !45)
!1622 = !DILocalVariable(name: "arg", arg: 3, scope: !1614, file: !248, line: 252, type: !48)
!1623 = !DILocalVariable(name: "argsize", arg: 4, scope: !1614, file: !248, line: 252, type: !45)
!1624 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1614, file: !248, line: 253, type: !21)
!1625 = !DILocalVariable(name: "flags", arg: 6, scope: !1614, file: !248, line: 253, type: !43)
!1626 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1614, file: !248, line: 254, type: !1617)
!1627 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1614, file: !248, line: 255, type: !48)
!1628 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1614, file: !248, line: 256, type: !48)
!1629 = !DILocalVariable(name: "unibyte_locale", scope: !1614, file: !248, line: 258, type: !64)
!1630 = !DILocalVariable(name: "len", scope: !1614, file: !248, line: 260, type: !45)
!1631 = !DILocalVariable(name: "orig_buffersize", scope: !1614, file: !248, line: 261, type: !45)
!1632 = !DILocalVariable(name: "quote_string", scope: !1614, file: !248, line: 262, type: !48)
!1633 = !DILocalVariable(name: "quote_string_len", scope: !1614, file: !248, line: 263, type: !45)
!1634 = !DILocalVariable(name: "backslash_escapes", scope: !1614, file: !248, line: 264, type: !64)
!1635 = !DILocalVariable(name: "elide_outer_quotes", scope: !1614, file: !248, line: 265, type: !64)
!1636 = !DILocalVariable(name: "encountered_single_quote", scope: !1614, file: !248, line: 266, type: !64)
!1637 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1614, file: !248, line: 267, type: !64)
!1638 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1614, file: !248, line: 309, type: !64)
!1639 = !DILocalVariable(name: "lq", scope: !1640, file: !248, line: 361, type: !48)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !248, line: 361, column: 11)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 360, column: 13)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 333, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 312, column: 5)
!1644 = !DILocalVariable(name: "i", scope: !1645, file: !248, line: 395, type: !45)
!1645 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 395, column: 3)
!1646 = !DILocalVariable(name: "is_right_quote", scope: !1647, file: !248, line: 397, type: !64)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !248, line: 396, column: 5)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !248, line: 395, column: 3)
!1649 = !DILocalVariable(name: "escaping", scope: !1647, file: !248, line: 398, type: !64)
!1650 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1647, file: !248, line: 399, type: !64)
!1651 = !DILocalVariable(name: "c", scope: !1647, file: !248, line: 417, type: !50)
!1652 = !DILocalVariable(name: "m", scope: !1653, file: !248, line: 598, type: !45)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 596, column: 11)
!1654 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 419, column: 9)
!1655 = !DILocalVariable(name: "printable", scope: !1653, file: !248, line: 600, type: !64)
!1656 = !DILocalVariable(name: "mbs", scope: !1657, file: !248, line: 609, type: !293)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !248, line: 608, column: 15)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !248, line: 602, column: 17)
!1659 = !DILocalVariable(name: "w", scope: !1660, file: !248, line: 618, type: !222)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !248, line: 617, column: 19)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !248, line: 616, column: 17)
!1662 = distinct !DILexicalBlock(scope: !1657, file: !248, line: 616, column: 17)
!1663 = !DILocalVariable(name: "bytes", scope: !1660, file: !248, line: 619, type: !45)
!1664 = !DILocalVariable(name: "j", scope: !1665, file: !248, line: 648, type: !45)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !248, line: 648, column: 29)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !248, line: 647, column: 27)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !248, line: 645, column: 29)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !248, line: 636, column: 23)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !248, line: 628, column: 30)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !248, line: 623, column: 30)
!1671 = distinct !DILexicalBlock(scope: !1660, file: !248, line: 621, column: 25)
!1672 = !DILocalVariable(name: "ilim", scope: !1673, file: !248, line: 674, type: !45)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !248, line: 671, column: 15)
!1674 = distinct !DILexicalBlock(scope: !1653, file: !248, line: 670, column: 17)
!1675 = !DILabel(scope: !1614, name: "process_input", file: !248, line: 308)
!1676 = !DILabel(scope: !1677, name: "c_and_shell_escape", file: !248, line: 502)
!1677 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 478, column: 9)
!1678 = !DILabel(scope: !1677, name: "c_escape", file: !248, line: 507)
!1679 = !DILabel(scope: !1647, name: "store_escape", file: !248, line: 709)
!1680 = !DILabel(scope: !1647, name: "store_c", file: !248, line: 712)
!1681 = !DILabel(scope: !1614, name: "force_outer_quoting_style", file: !248, line: 753)
!1682 = !DILocation(line: 0, scope: !1614)
!1683 = !DILocation(line: 258, column: 25, scope: !1614)
!1684 = !DILocation(line: 258, column: 36, scope: !1614)
!1685 = !DILocation(line: 267, column: 3, scope: !1614)
!1686 = !DILocation(line: 261, column: 10, scope: !1614)
!1687 = !DILocation(line: 262, column: 15, scope: !1614)
!1688 = !DILocation(line: 263, column: 10, scope: !1614)
!1689 = !DILocation(line: 308, column: 2, scope: !1614)
!1690 = !DILocation(line: 311, column: 3, scope: !1614)
!1691 = !DILocation(line: 318, column: 11, scope: !1643)
!1692 = !DILocation(line: 319, column: 9, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1694, file: !248, line: 319, column: 9)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !248, line: 319, column: 9)
!1695 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 318, column: 11)
!1696 = !DILocation(line: 319, column: 9, scope: !1694)
!1697 = !DILocation(line: 0, scope: !284, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 357, column: 26, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !248, line: 335, column: 11)
!1700 = distinct !DILexicalBlock(scope: !1642, file: !248, line: 334, column: 13)
!1701 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1698)
!1702 = !DILocation(line: 201, column: 19, scope: !1703, inlinedAt: !1698)
!1703 = distinct !DILexicalBlock(scope: !284, file: !248, line: 201, column: 7)
!1704 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1698)
!1705 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1698)
!1706 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1698)
!1707 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1698)
!1708 = !DILocalVariable(name: "ps", arg: 1, scope: !1709, file: !1461, line: 1135, type: !1712)
!1709 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !1710, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1713)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{null, !1712}
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1713 = !{!1708}
!1714 = !DILocation(line: 0, scope: !1709, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1698)
!1716 = !DILocalVariable(name: "__dest", arg: 1, scope: !1717, file: !1074, line: 57, type: !40)
!1717 = distinct !DISubprogram(name: "memset", scope: !1074, file: !1074, line: 57, type: !1470, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1718)
!1718 = !{!1716, !1719, !1720}
!1719 = !DILocalVariable(name: "__ch", arg: 2, scope: !1717, file: !1074, line: 57, type: !43)
!1720 = !DILocalVariable(name: "__len", arg: 3, scope: !1717, file: !1074, line: 57, type: !45)
!1721 = !DILocation(line: 0, scope: !1717, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1715)
!1723 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1722)
!1724 = !DILocation(line: 231, column: 7, scope: !1725, inlinedAt: !1698)
!1725 = distinct !DILexicalBlock(scope: !284, file: !248, line: 231, column: 7)
!1726 = !DILocation(line: 231, column: 40, scope: !1725, inlinedAt: !1698)
!1727 = !DILocation(line: 231, column: 45, scope: !1725, inlinedAt: !1698)
!1728 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1698)
!1729 = !DILocation(line: 0, scope: !284, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 358, column: 27, scope: !1699)
!1731 = !DILocation(line: 199, column: 29, scope: !284, inlinedAt: !1730)
!1732 = !DILocation(line: 201, column: 19, scope: !1703, inlinedAt: !1730)
!1733 = !DILocation(line: 201, column: 7, scope: !284, inlinedAt: !1730)
!1734 = !DILocation(line: 229, column: 3, scope: !284, inlinedAt: !1730)
!1735 = !DILocation(line: 230, column: 3, scope: !284, inlinedAt: !1730)
!1736 = !DILocation(line: 230, column: 13, scope: !284, inlinedAt: !1730)
!1737 = !DILocation(line: 0, scope: !1709, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 230, column: 18, scope: !284, inlinedAt: !1730)
!1739 = !DILocation(line: 0, scope: !1717, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1738)
!1741 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1740)
!1742 = !DILocation(line: 231, column: 7, scope: !1725, inlinedAt: !1730)
!1743 = !DILocation(line: 231, column: 40, scope: !1725, inlinedAt: !1730)
!1744 = !DILocation(line: 231, column: 45, scope: !1725, inlinedAt: !1730)
!1745 = !DILocation(line: 235, column: 1, scope: !284, inlinedAt: !1730)
!1746 = !DILocation(line: 360, column: 13, scope: !1642)
!1747 = !DILocation(line: 0, scope: !1640)
!1748 = !DILocation(line: 361, column: 45, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1640, file: !248, line: 361, column: 11)
!1750 = !DILocation(line: 361, column: 11, scope: !1640)
!1751 = !DILocation(line: 362, column: 13, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !248, line: 362, column: 13)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !248, line: 362, column: 13)
!1754 = !DILocation(line: 362, column: 13, scope: !1753)
!1755 = !DILocation(line: 361, column: 52, scope: !1749)
!1756 = distinct !{!1756, !1750, !1757, !495}
!1757 = !DILocation(line: 362, column: 13, scope: !1640)
!1758 = !DILocation(line: 260, column: 10, scope: !1614)
!1759 = !DILocation(line: 365, column: 28, scope: !1642)
!1760 = !DILocation(line: 367, column: 7, scope: !1643)
!1761 = !DILocation(line: 370, column: 7, scope: !1643)
!1762 = !DILocation(line: 376, column: 11, scope: !1643)
!1763 = !DILocation(line: 381, column: 11, scope: !1643)
!1764 = !DILocation(line: 382, column: 9, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !248, line: 382, column: 9)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !248, line: 382, column: 9)
!1767 = distinct !DILexicalBlock(scope: !1643, file: !248, line: 381, column: 11)
!1768 = !DILocation(line: 382, column: 9, scope: !1766)
!1769 = !DILocation(line: 389, column: 7, scope: !1643)
!1770 = !DILocation(line: 392, column: 7, scope: !1643)
!1771 = !DILocation(line: 0, scope: !1645)
!1772 = !DILocation(line: 395, column: 8, scope: !1645)
!1773 = !DILocation(line: 395, column: 34, scope: !1648)
!1774 = !DILocation(line: 395, column: 26, scope: !1648)
!1775 = !DILocation(line: 395, column: 48, scope: !1648)
!1776 = !DILocation(line: 395, column: 55, scope: !1648)
!1777 = !DILocation(line: 395, column: 3, scope: !1645)
!1778 = !DILocation(line: 395, column: 67, scope: !1648)
!1779 = !DILocation(line: 0, scope: !1647)
!1780 = !DILocation(line: 402, column: 11, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 401, column: 11)
!1782 = !DILocation(line: 404, column: 17, scope: !1781)
!1783 = !DILocation(line: 405, column: 39, scope: !1781)
!1784 = !DILocation(line: 409, column: 32, scope: !1781)
!1785 = !DILocation(line: 405, column: 19, scope: !1781)
!1786 = !DILocation(line: 405, column: 15, scope: !1781)
!1787 = !DILocation(line: 410, column: 11, scope: !1781)
!1788 = !DILocation(line: 410, column: 25, scope: !1781)
!1789 = !DILocalVariable(name: "__s1", arg: 1, scope: !1790, file: !479, line: 974, type: !647)
!1790 = distinct !DISubprogram(name: "memeq", scope: !479, file: !479, line: 974, type: !1432, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1791)
!1791 = !{!1789, !1792, !1793}
!1792 = !DILocalVariable(name: "__s2", arg: 2, scope: !1790, file: !479, line: 974, type: !647)
!1793 = !DILocalVariable(name: "__n", arg: 3, scope: !1790, file: !479, line: 974, type: !45)
!1794 = !DILocation(line: 0, scope: !1790, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 410, column: 14, scope: !1781)
!1796 = !DILocation(line: 976, column: 11, scope: !1790, inlinedAt: !1795)
!1797 = !DILocation(line: 976, column: 10, scope: !1790, inlinedAt: !1795)
!1798 = !DILocation(line: 401, column: 11, scope: !1647)
!1799 = !DILocation(line: 417, column: 25, scope: !1647)
!1800 = !DILocation(line: 418, column: 7, scope: !1647)
!1801 = !DILocation(line: 421, column: 15, scope: !1654)
!1802 = !DILocation(line: 423, column: 15, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !248, line: 423, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1805, file: !248, line: 422, column: 13)
!1805 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 421, column: 15)
!1806 = !DILocation(line: 423, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !248, line: 423, column: 15)
!1808 = !DILocation(line: 423, column: 15, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !248, line: 423, column: 15)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !248, line: 423, column: 15)
!1811 = distinct !DILexicalBlock(scope: !1807, file: !248, line: 423, column: 15)
!1812 = !DILocation(line: 423, column: 15, scope: !1810)
!1813 = !DILocation(line: 423, column: 15, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1815, file: !248, line: 423, column: 15)
!1815 = distinct !DILexicalBlock(scope: !1811, file: !248, line: 423, column: 15)
!1816 = !DILocation(line: 423, column: 15, scope: !1815)
!1817 = !DILocation(line: 423, column: 15, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !248, line: 423, column: 15)
!1819 = distinct !DILexicalBlock(scope: !1811, file: !248, line: 423, column: 15)
!1820 = !DILocation(line: 423, column: 15, scope: !1819)
!1821 = !DILocation(line: 423, column: 15, scope: !1811)
!1822 = !DILocation(line: 423, column: 15, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !248, line: 423, column: 15)
!1824 = distinct !DILexicalBlock(scope: !1803, file: !248, line: 423, column: 15)
!1825 = !DILocation(line: 423, column: 15, scope: !1824)
!1826 = !DILocation(line: 431, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1804, file: !248, line: 430, column: 19)
!1828 = !DILocation(line: 431, column: 24, scope: !1827)
!1829 = !DILocation(line: 431, column: 28, scope: !1827)
!1830 = !DILocation(line: 431, column: 38, scope: !1827)
!1831 = !DILocation(line: 431, column: 48, scope: !1827)
!1832 = !DILocation(line: 431, column: 59, scope: !1827)
!1833 = !DILocation(line: 433, column: 19, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !248, line: 433, column: 19)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !248, line: 433, column: 19)
!1836 = distinct !DILexicalBlock(scope: !1827, file: !248, line: 432, column: 17)
!1837 = !DILocation(line: 433, column: 19, scope: !1835)
!1838 = !DILocation(line: 434, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !248, line: 434, column: 19)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !248, line: 434, column: 19)
!1841 = !DILocation(line: 434, column: 19, scope: !1840)
!1842 = !DILocation(line: 435, column: 17, scope: !1836)
!1843 = !DILocation(line: 442, column: 20, scope: !1805)
!1844 = !DILocation(line: 447, column: 11, scope: !1654)
!1845 = !DILocation(line: 450, column: 19, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 448, column: 13)
!1847 = !DILocation(line: 456, column: 19, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1846, file: !248, line: 455, column: 19)
!1849 = !DILocation(line: 456, column: 24, scope: !1848)
!1850 = !DILocation(line: 456, column: 28, scope: !1848)
!1851 = !DILocation(line: 456, column: 38, scope: !1848)
!1852 = !DILocation(line: 456, column: 47, scope: !1848)
!1853 = !DILocation(line: 456, column: 41, scope: !1848)
!1854 = !DILocation(line: 456, column: 52, scope: !1848)
!1855 = !DILocation(line: 455, column: 19, scope: !1846)
!1856 = !DILocation(line: 457, column: 25, scope: !1848)
!1857 = !DILocation(line: 457, column: 17, scope: !1848)
!1858 = !DILocation(line: 464, column: 25, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1848, file: !248, line: 458, column: 19)
!1860 = !DILocation(line: 468, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1862, file: !248, line: 468, column: 21)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !248, line: 468, column: 21)
!1863 = !DILocation(line: 468, column: 21, scope: !1862)
!1864 = !DILocation(line: 469, column: 21, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !248, line: 469, column: 21)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !248, line: 469, column: 21)
!1867 = !DILocation(line: 469, column: 21, scope: !1866)
!1868 = !DILocation(line: 470, column: 21, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !248, line: 470, column: 21)
!1870 = distinct !DILexicalBlock(scope: !1859, file: !248, line: 470, column: 21)
!1871 = !DILocation(line: 470, column: 21, scope: !1870)
!1872 = !DILocation(line: 471, column: 21, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !248, line: 471, column: 21)
!1874 = distinct !DILexicalBlock(scope: !1859, file: !248, line: 471, column: 21)
!1875 = !DILocation(line: 471, column: 21, scope: !1874)
!1876 = !DILocation(line: 472, column: 21, scope: !1859)
!1877 = !DILocation(line: 482, column: 33, scope: !1677)
!1878 = !DILocation(line: 483, column: 33, scope: !1677)
!1879 = !DILocation(line: 485, column: 33, scope: !1677)
!1880 = !DILocation(line: 486, column: 33, scope: !1677)
!1881 = !DILocation(line: 487, column: 33, scope: !1677)
!1882 = !DILocation(line: 490, column: 17, scope: !1677)
!1883 = !DILocation(line: 492, column: 21, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !248, line: 491, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1677, file: !248, line: 490, column: 17)
!1886 = !DILocation(line: 499, column: 35, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1677, file: !248, line: 499, column: 17)
!1888 = !DILocation(line: 499, column: 57, scope: !1887)
!1889 = !DILocation(line: 0, scope: !1677)
!1890 = !DILocation(line: 502, column: 11, scope: !1677)
!1891 = !DILocation(line: 504, column: 17, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1677, file: !248, line: 503, column: 17)
!1893 = !DILocation(line: 507, column: 11, scope: !1677)
!1894 = !DILocation(line: 508, column: 17, scope: !1677)
!1895 = !DILocation(line: 517, column: 15, scope: !1654)
!1896 = !DILocation(line: 517, column: 40, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 517, column: 15)
!1898 = !DILocation(line: 517, column: 47, scope: !1897)
!1899 = !DILocation(line: 517, column: 18, scope: !1897)
!1900 = !DILocation(line: 521, column: 17, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 521, column: 15)
!1902 = !DILocation(line: 521, column: 15, scope: !1654)
!1903 = !DILocation(line: 525, column: 11, scope: !1654)
!1904 = !DILocation(line: 537, column: 15, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 536, column: 15)
!1906 = !DILocation(line: 536, column: 15, scope: !1654)
!1907 = !DILocation(line: 544, column: 15, scope: !1654)
!1908 = !DILocation(line: 546, column: 19, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1910, file: !248, line: 545, column: 13)
!1910 = distinct !DILexicalBlock(scope: !1654, file: !248, line: 544, column: 15)
!1911 = !DILocation(line: 549, column: 19, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !248, line: 549, column: 19)
!1913 = !DILocation(line: 549, column: 30, scope: !1912)
!1914 = !DILocation(line: 558, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !248, line: 558, column: 15)
!1916 = distinct !DILexicalBlock(scope: !1909, file: !248, line: 558, column: 15)
!1917 = !DILocation(line: 558, column: 15, scope: !1916)
!1918 = !DILocation(line: 559, column: 15, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1920, file: !248, line: 559, column: 15)
!1920 = distinct !DILexicalBlock(scope: !1909, file: !248, line: 559, column: 15)
!1921 = !DILocation(line: 559, column: 15, scope: !1920)
!1922 = !DILocation(line: 560, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !248, line: 560, column: 15)
!1924 = distinct !DILexicalBlock(scope: !1909, file: !248, line: 560, column: 15)
!1925 = !DILocation(line: 560, column: 15, scope: !1924)
!1926 = !DILocation(line: 562, column: 13, scope: !1909)
!1927 = !DILocation(line: 602, column: 17, scope: !1653)
!1928 = !DILocation(line: 0, scope: !1653)
!1929 = !DILocation(line: 605, column: 29, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1658, file: !248, line: 603, column: 15)
!1931 = !DILocation(line: 605, column: 41, scope: !1930)
!1932 = !DILocation(line: 670, column: 23, scope: !1674)
!1933 = !DILocation(line: 609, column: 17, scope: !1657)
!1934 = !DILocation(line: 609, column: 27, scope: !1657)
!1935 = !DILocation(line: 0, scope: !1709, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 609, column: 32, scope: !1657)
!1937 = !DILocation(line: 0, scope: !1717, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 1137, column: 3, scope: !1709, inlinedAt: !1936)
!1939 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !1938)
!1940 = !DILocation(line: 613, column: 29, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1657, file: !248, line: 613, column: 21)
!1942 = !DILocation(line: 613, column: 21, scope: !1657)
!1943 = !DILocation(line: 614, column: 29, scope: !1941)
!1944 = !DILocation(line: 614, column: 19, scope: !1941)
!1945 = !DILocation(line: 618, column: 21, scope: !1660)
!1946 = !DILocation(line: 620, column: 54, scope: !1660)
!1947 = !DILocation(line: 0, scope: !1660)
!1948 = !DILocation(line: 619, column: 36, scope: !1660)
!1949 = !DILocation(line: 621, column: 25, scope: !1660)
!1950 = !DILocation(line: 631, column: 38, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1669, file: !248, line: 629, column: 23)
!1952 = !DILocation(line: 631, column: 48, scope: !1951)
!1953 = !DILocation(line: 665, column: 19, scope: !1661)
!1954 = !DILocation(line: 666, column: 15, scope: !1658)
!1955 = !DILocation(line: 626, column: 25, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1670, file: !248, line: 624, column: 23)
!1957 = !DILocation(line: 631, column: 51, scope: !1951)
!1958 = !DILocation(line: 631, column: 25, scope: !1951)
!1959 = !DILocation(line: 632, column: 28, scope: !1951)
!1960 = !DILocation(line: 631, column: 34, scope: !1951)
!1961 = distinct !{!1961, !1958, !1959, !495}
!1962 = !DILocation(line: 646, column: 29, scope: !1667)
!1963 = !DILocation(line: 0, scope: !1665)
!1964 = !DILocation(line: 649, column: 49, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1665, file: !248, line: 648, column: 29)
!1966 = !DILocation(line: 649, column: 39, scope: !1965)
!1967 = !DILocation(line: 649, column: 31, scope: !1965)
!1968 = !DILocation(line: 648, column: 60, scope: !1965)
!1969 = !DILocation(line: 648, column: 50, scope: !1965)
!1970 = !DILocation(line: 648, column: 29, scope: !1665)
!1971 = distinct !{!1971, !1970, !1972, !495}
!1972 = !DILocation(line: 654, column: 33, scope: !1665)
!1973 = !DILocation(line: 657, column: 43, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1668, file: !248, line: 657, column: 29)
!1975 = !DILocalVariable(name: "wc", arg: 1, scope: !1976, file: !1977, line: 865, type: !1980)
!1976 = distinct !DISubprogram(name: "c32isprint", scope: !1977, file: !1977, line: 865, type: !1978, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !1982)
!1977 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!43, !1980}
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1981, line: 20, baseType: !7)
!1981 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1982 = !{!1975}
!1983 = !DILocation(line: 0, scope: !1976, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 657, column: 31, scope: !1974)
!1985 = !DILocation(line: 871, column: 10, scope: !1976, inlinedAt: !1984)
!1986 = !DILocation(line: 657, column: 31, scope: !1974)
!1987 = !DILocation(line: 664, column: 23, scope: !1660)
!1988 = !DILocation(line: 753, column: 2, scope: !1614)
!1989 = !DILocation(line: 756, column: 51, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 756, column: 7)
!1991 = !DILocation(line: 670, column: 19, scope: !1674)
!1992 = !DILocation(line: 670, column: 45, scope: !1674)
!1993 = !DILocation(line: 674, column: 33, scope: !1673)
!1994 = !DILocation(line: 0, scope: !1673)
!1995 = !DILocation(line: 676, column: 17, scope: !1673)
!1996 = !DILocation(line: 398, column: 12, scope: !1647)
!1997 = !DILocation(line: 678, column: 43, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !248, line: 678, column: 25)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !248, line: 677, column: 19)
!2000 = distinct !DILexicalBlock(scope: !2001, file: !248, line: 676, column: 17)
!2001 = distinct !DILexicalBlock(scope: !1673, file: !248, line: 676, column: 17)
!2002 = !DILocation(line: 680, column: 25, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !248, line: 680, column: 25)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !248, line: 679, column: 23)
!2005 = !DILocation(line: 680, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2003, file: !248, line: 680, column: 25)
!2007 = !DILocation(line: 680, column: 25, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2009, file: !248, line: 680, column: 25)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !248, line: 680, column: 25)
!2010 = distinct !DILexicalBlock(scope: !2006, file: !248, line: 680, column: 25)
!2011 = !DILocation(line: 680, column: 25, scope: !2009)
!2012 = !DILocation(line: 680, column: 25, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !248, line: 680, column: 25)
!2014 = distinct !DILexicalBlock(scope: !2010, file: !248, line: 680, column: 25)
!2015 = !DILocation(line: 680, column: 25, scope: !2014)
!2016 = !DILocation(line: 680, column: 25, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !248, line: 680, column: 25)
!2018 = distinct !DILexicalBlock(scope: !2010, file: !248, line: 680, column: 25)
!2019 = !DILocation(line: 680, column: 25, scope: !2018)
!2020 = !DILocation(line: 680, column: 25, scope: !2010)
!2021 = !DILocation(line: 680, column: 25, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !248, line: 680, column: 25)
!2023 = distinct !DILexicalBlock(scope: !2003, file: !248, line: 680, column: 25)
!2024 = !DILocation(line: 680, column: 25, scope: !2023)
!2025 = !DILocation(line: 681, column: 25, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !248, line: 681, column: 25)
!2027 = distinct !DILexicalBlock(scope: !2004, file: !248, line: 681, column: 25)
!2028 = !DILocation(line: 681, column: 25, scope: !2027)
!2029 = !DILocation(line: 682, column: 25, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2031, file: !248, line: 682, column: 25)
!2031 = distinct !DILexicalBlock(scope: !2004, file: !248, line: 682, column: 25)
!2032 = !DILocation(line: 682, column: 25, scope: !2031)
!2033 = !DILocation(line: 683, column: 38, scope: !2004)
!2034 = !DILocation(line: 683, column: 33, scope: !2004)
!2035 = !DILocation(line: 684, column: 23, scope: !2004)
!2036 = !DILocation(line: 685, column: 30, scope: !1998)
!2037 = !DILocation(line: 687, column: 25, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !248, line: 687, column: 25)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !248, line: 687, column: 25)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !248, line: 686, column: 23)
!2041 = distinct !DILexicalBlock(scope: !1998, file: !248, line: 685, column: 30)
!2042 = !DILocation(line: 687, column: 25, scope: !2039)
!2043 = !DILocation(line: 689, column: 23, scope: !2040)
!2044 = !DILocation(line: 690, column: 35, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !1999, file: !248, line: 690, column: 25)
!2046 = !DILocation(line: 690, column: 30, scope: !2045)
!2047 = !DILocation(line: 690, column: 25, scope: !1999)
!2048 = !DILocation(line: 692, column: 21, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !248, line: 692, column: 21)
!2050 = distinct !DILexicalBlock(scope: !1999, file: !248, line: 692, column: 21)
!2051 = !DILocation(line: 692, column: 21, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2053, file: !248, line: 692, column: 21)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !248, line: 692, column: 21)
!2054 = distinct !DILexicalBlock(scope: !2049, file: !248, line: 692, column: 21)
!2055 = !DILocation(line: 692, column: 21, scope: !2053)
!2056 = !DILocation(line: 692, column: 21, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2058, file: !248, line: 692, column: 21)
!2058 = distinct !DILexicalBlock(scope: !2054, file: !248, line: 692, column: 21)
!2059 = !DILocation(line: 692, column: 21, scope: !2058)
!2060 = !DILocation(line: 692, column: 21, scope: !2054)
!2061 = !DILocation(line: 0, scope: !1999)
!2062 = !DILocation(line: 693, column: 21, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !248, line: 693, column: 21)
!2064 = distinct !DILexicalBlock(scope: !1999, file: !248, line: 693, column: 21)
!2065 = !DILocation(line: 693, column: 21, scope: !2064)
!2066 = !DILocation(line: 694, column: 25, scope: !1999)
!2067 = !DILocation(line: 676, column: 17, scope: !2000)
!2068 = distinct !{!2068, !2069, !2070}
!2069 = !DILocation(line: 676, column: 17, scope: !2001)
!2070 = !DILocation(line: 695, column: 19, scope: !2001)
!2071 = !DILocation(line: 409, column: 30, scope: !1781)
!2072 = !DILocation(line: 702, column: 34, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 702, column: 11)
!2074 = !DILocation(line: 704, column: 14, scope: !2073)
!2075 = !DILocation(line: 705, column: 14, scope: !2073)
!2076 = !DILocation(line: 705, column: 35, scope: !2073)
!2077 = !DILocation(line: 705, column: 17, scope: !2073)
!2078 = !DILocation(line: 705, column: 47, scope: !2073)
!2079 = !DILocation(line: 705, column: 65, scope: !2073)
!2080 = !DILocation(line: 706, column: 11, scope: !2073)
!2081 = !DILocation(line: 702, column: 11, scope: !1647)
!2082 = !DILocation(line: 395, column: 15, scope: !1645)
!2083 = !DILocation(line: 709, column: 5, scope: !1647)
!2084 = !DILocation(line: 710, column: 7, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 710, column: 7)
!2086 = !DILocation(line: 710, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2085, file: !248, line: 710, column: 7)
!2088 = !DILocation(line: 710, column: 7, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2090, file: !248, line: 710, column: 7)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !248, line: 710, column: 7)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !248, line: 710, column: 7)
!2092 = !DILocation(line: 710, column: 7, scope: !2090)
!2093 = !DILocation(line: 710, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2095, file: !248, line: 710, column: 7)
!2095 = distinct !DILexicalBlock(scope: !2091, file: !248, line: 710, column: 7)
!2096 = !DILocation(line: 710, column: 7, scope: !2095)
!2097 = !DILocation(line: 710, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !248, line: 710, column: 7)
!2099 = distinct !DILexicalBlock(scope: !2091, file: !248, line: 710, column: 7)
!2100 = !DILocation(line: 710, column: 7, scope: !2099)
!2101 = !DILocation(line: 710, column: 7, scope: !2091)
!2102 = !DILocation(line: 710, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !248, line: 710, column: 7)
!2104 = distinct !DILexicalBlock(scope: !2085, file: !248, line: 710, column: 7)
!2105 = !DILocation(line: 710, column: 7, scope: !2104)
!2106 = !DILocation(line: 712, column: 5, scope: !1647)
!2107 = !DILocation(line: 713, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2109, file: !248, line: 713, column: 7)
!2109 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 713, column: 7)
!2110 = !DILocation(line: 417, column: 21, scope: !1647)
!2111 = !DILocation(line: 713, column: 7, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2113, file: !248, line: 713, column: 7)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !248, line: 713, column: 7)
!2114 = distinct !DILexicalBlock(scope: !2108, file: !248, line: 713, column: 7)
!2115 = !DILocation(line: 713, column: 7, scope: !2113)
!2116 = !DILocation(line: 713, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !248, line: 713, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !248, line: 713, column: 7)
!2119 = !DILocation(line: 713, column: 7, scope: !2118)
!2120 = !DILocation(line: 713, column: 7, scope: !2114)
!2121 = !DILocation(line: 714, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !248, line: 714, column: 7)
!2123 = distinct !DILexicalBlock(scope: !1647, file: !248, line: 714, column: 7)
!2124 = !DILocation(line: 714, column: 7, scope: !2123)
!2125 = !DILocation(line: 716, column: 11, scope: !1647)
!2126 = !DILocation(line: 718, column: 5, scope: !1648)
!2127 = !DILocation(line: 395, column: 82, scope: !1648)
!2128 = !DILocation(line: 395, column: 3, scope: !1648)
!2129 = distinct !{!2129, !1777, !2130, !495}
!2130 = !DILocation(line: 718, column: 5, scope: !1645)
!2131 = !DILocation(line: 720, column: 11, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 720, column: 7)
!2133 = !DILocation(line: 720, column: 16, scope: !2132)
!2134 = !DILocation(line: 728, column: 51, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 728, column: 7)
!2136 = !DILocation(line: 731, column: 11, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2135, file: !248, line: 730, column: 5)
!2138 = !DILocation(line: 732, column: 16, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2137, file: !248, line: 731, column: 11)
!2140 = !DILocation(line: 732, column: 9, scope: !2139)
!2141 = !DILocation(line: 736, column: 18, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !248, line: 736, column: 16)
!2143 = !DILocation(line: 736, column: 29, scope: !2142)
!2144 = !DILocation(line: 745, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 745, column: 7)
!2146 = !DILocation(line: 745, column: 20, scope: !2145)
!2147 = !DILocation(line: 746, column: 12, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !248, line: 746, column: 5)
!2149 = distinct !DILexicalBlock(scope: !2145, file: !248, line: 746, column: 5)
!2150 = !DILocation(line: 746, column: 5, scope: !2149)
!2151 = !DILocation(line: 747, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !248, line: 747, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !248, line: 747, column: 7)
!2154 = !DILocation(line: 747, column: 7, scope: !2153)
!2155 = !DILocation(line: 746, column: 39, scope: !2148)
!2156 = distinct !{!2156, !2150, !2157, !495}
!2157 = !DILocation(line: 747, column: 7, scope: !2149)
!2158 = !DILocation(line: 749, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !1614, file: !248, line: 749, column: 7)
!2160 = !DILocation(line: 749, column: 7, scope: !1614)
!2161 = !DILocation(line: 750, column: 5, scope: !2159)
!2162 = !DILocation(line: 750, column: 17, scope: !2159)
!2163 = !DILocation(line: 756, column: 21, scope: !1990)
!2164 = !DILocation(line: 760, column: 42, scope: !1614)
!2165 = !DILocation(line: 758, column: 10, scope: !1614)
!2166 = !DILocation(line: 758, column: 3, scope: !1614)
!2167 = !DILocation(line: 762, column: 1, scope: !1614)
!2168 = !DISubprogram(name: "iswprint", scope: !2169, file: !2169, line: 120, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!2169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2170 = distinct !DISubprogram(name: "quotearg_alloc", scope: !248, file: !248, line: 788, type: !2171, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!41, !48, !45, !1506}
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "arg", arg: 1, scope: !2170, file: !248, line: 788, type: !48)
!2175 = !DILocalVariable(name: "argsize", arg: 2, scope: !2170, file: !248, line: 788, type: !45)
!2176 = !DILocalVariable(name: "o", arg: 3, scope: !2170, file: !248, line: 789, type: !1506)
!2177 = !DILocation(line: 0, scope: !2170)
!2178 = !DILocalVariable(name: "arg", arg: 1, scope: !2179, file: !248, line: 801, type: !48)
!2179 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !248, file: !248, line: 801, type: !2180, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!41, !48, !45, !368, !1506}
!2182 = !{!2178, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2183 = !DILocalVariable(name: "argsize", arg: 2, scope: !2179, file: !248, line: 801, type: !45)
!2184 = !DILocalVariable(name: "size", arg: 3, scope: !2179, file: !248, line: 801, type: !368)
!2185 = !DILocalVariable(name: "o", arg: 4, scope: !2179, file: !248, line: 802, type: !1506)
!2186 = !DILocalVariable(name: "p", scope: !2179, file: !248, line: 804, type: !1506)
!2187 = !DILocalVariable(name: "saved_errno", scope: !2179, file: !248, line: 805, type: !43)
!2188 = !DILocalVariable(name: "flags", scope: !2179, file: !248, line: 807, type: !43)
!2189 = !DILocalVariable(name: "bufsize", scope: !2179, file: !248, line: 808, type: !45)
!2190 = !DILocalVariable(name: "buf", scope: !2179, file: !248, line: 812, type: !41)
!2191 = !DILocation(line: 0, scope: !2179, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 791, column: 10, scope: !2170)
!2193 = !DILocation(line: 804, column: 37, scope: !2179, inlinedAt: !2192)
!2194 = !DILocation(line: 805, column: 21, scope: !2179, inlinedAt: !2192)
!2195 = !DILocation(line: 807, column: 18, scope: !2179, inlinedAt: !2192)
!2196 = !DILocation(line: 807, column: 24, scope: !2179, inlinedAt: !2192)
!2197 = !DILocation(line: 808, column: 72, scope: !2179, inlinedAt: !2192)
!2198 = !DILocation(line: 809, column: 53, scope: !2179, inlinedAt: !2192)
!2199 = !DILocation(line: 810, column: 49, scope: !2179, inlinedAt: !2192)
!2200 = !DILocation(line: 811, column: 49, scope: !2179, inlinedAt: !2192)
!2201 = !DILocation(line: 808, column: 20, scope: !2179, inlinedAt: !2192)
!2202 = !DILocation(line: 811, column: 62, scope: !2179, inlinedAt: !2192)
!2203 = !DILocation(line: 812, column: 15, scope: !2179, inlinedAt: !2192)
!2204 = !DILocation(line: 813, column: 60, scope: !2179, inlinedAt: !2192)
!2205 = !DILocation(line: 815, column: 32, scope: !2179, inlinedAt: !2192)
!2206 = !DILocation(line: 815, column: 47, scope: !2179, inlinedAt: !2192)
!2207 = !DILocation(line: 813, column: 3, scope: !2179, inlinedAt: !2192)
!2208 = !DILocation(line: 816, column: 9, scope: !2179, inlinedAt: !2192)
!2209 = !DILocation(line: 791, column: 3, scope: !2170)
!2210 = !DILocation(line: 0, scope: !2179)
!2211 = !DILocation(line: 804, column: 37, scope: !2179)
!2212 = !DILocation(line: 805, column: 21, scope: !2179)
!2213 = !DILocation(line: 807, column: 18, scope: !2179)
!2214 = !DILocation(line: 807, column: 27, scope: !2179)
!2215 = !DILocation(line: 807, column: 24, scope: !2179)
!2216 = !DILocation(line: 808, column: 72, scope: !2179)
!2217 = !DILocation(line: 809, column: 53, scope: !2179)
!2218 = !DILocation(line: 810, column: 49, scope: !2179)
!2219 = !DILocation(line: 811, column: 49, scope: !2179)
!2220 = !DILocation(line: 808, column: 20, scope: !2179)
!2221 = !DILocation(line: 811, column: 62, scope: !2179)
!2222 = !DILocation(line: 812, column: 15, scope: !2179)
!2223 = !DILocation(line: 813, column: 60, scope: !2179)
!2224 = !DILocation(line: 815, column: 32, scope: !2179)
!2225 = !DILocation(line: 815, column: 47, scope: !2179)
!2226 = !DILocation(line: 813, column: 3, scope: !2179)
!2227 = !DILocation(line: 816, column: 9, scope: !2179)
!2228 = !DILocation(line: 817, column: 7, scope: !2179)
!2229 = !DILocation(line: 818, column: 11, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2179, file: !248, line: 817, column: 7)
!2231 = !DILocation(line: 818, column: 5, scope: !2230)
!2232 = !DILocation(line: 819, column: 3, scope: !2179)
!2233 = distinct !DISubprogram(name: "quotearg_free", scope: !248, file: !248, line: 837, type: !201, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2234)
!2234 = !{!2235, !2236}
!2235 = !DILocalVariable(name: "sv", scope: !2233, file: !248, line: 839, type: !307)
!2236 = !DILocalVariable(name: "i", scope: !2237, file: !248, line: 840, type: !43)
!2237 = distinct !DILexicalBlock(scope: !2233, file: !248, line: 840, column: 3)
!2238 = !DILocation(line: 839, column: 24, scope: !2233)
!2239 = !DILocation(line: 0, scope: !2233)
!2240 = !DILocation(line: 0, scope: !2237)
!2241 = !DILocation(line: 840, column: 21, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !248, line: 840, column: 3)
!2243 = !DILocation(line: 840, column: 3, scope: !2237)
!2244 = !DILocation(line: 842, column: 13, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2233, file: !248, line: 842, column: 7)
!2246 = !{!2247, !440, i64 8}
!2247 = !{!"slotvec", !784, i64 0, !440, i64 8}
!2248 = !DILocation(line: 842, column: 17, scope: !2245)
!2249 = !DILocation(line: 842, column: 7, scope: !2233)
!2250 = !DILocation(line: 841, column: 17, scope: !2242)
!2251 = !DILocation(line: 841, column: 5, scope: !2242)
!2252 = !DILocation(line: 840, column: 32, scope: !2242)
!2253 = distinct !{!2253, !2243, !2254, !495}
!2254 = !DILocation(line: 841, column: 20, scope: !2237)
!2255 = !DILocation(line: 844, column: 7, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2245, file: !248, line: 843, column: 5)
!2257 = !DILocation(line: 845, column: 21, scope: !2256)
!2258 = !{!2247, !784, i64 0}
!2259 = !DILocation(line: 846, column: 20, scope: !2256)
!2260 = !DILocation(line: 847, column: 5, scope: !2256)
!2261 = !DILocation(line: 848, column: 10, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2233, file: !248, line: 848, column: 7)
!2263 = !DILocation(line: 848, column: 7, scope: !2233)
!2264 = !DILocation(line: 850, column: 13, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !248, line: 849, column: 5)
!2266 = !DILocation(line: 850, column: 7, scope: !2265)
!2267 = !DILocation(line: 851, column: 15, scope: !2265)
!2268 = !DILocation(line: 852, column: 5, scope: !2265)
!2269 = !DILocation(line: 853, column: 10, scope: !2233)
!2270 = !DILocation(line: 854, column: 1, scope: !2233)
!2271 = distinct !DISubprogram(name: "quotearg_n", scope: !248, file: !248, line: 919, type: !637, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2272)
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "n", arg: 1, scope: !2271, file: !248, line: 919, type: !43)
!2274 = !DILocalVariable(name: "arg", arg: 2, scope: !2271, file: !248, line: 919, type: !48)
!2275 = !DILocation(line: 0, scope: !2271)
!2276 = !DILocation(line: 921, column: 10, scope: !2271)
!2277 = !DILocation(line: 921, column: 3, scope: !2271)
!2278 = distinct !DISubprogram(name: "quotearg_n_options", scope: !248, file: !248, line: 866, type: !2279, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!41, !43, !48, !45, !1506}
!2281 = !{!2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2292, !2293, !2295, !2296, !2297}
!2282 = !DILocalVariable(name: "n", arg: 1, scope: !2278, file: !248, line: 866, type: !43)
!2283 = !DILocalVariable(name: "arg", arg: 2, scope: !2278, file: !248, line: 866, type: !48)
!2284 = !DILocalVariable(name: "argsize", arg: 3, scope: !2278, file: !248, line: 866, type: !45)
!2285 = !DILocalVariable(name: "options", arg: 4, scope: !2278, file: !248, line: 867, type: !1506)
!2286 = !DILocalVariable(name: "saved_errno", scope: !2278, file: !248, line: 869, type: !43)
!2287 = !DILocalVariable(name: "sv", scope: !2278, file: !248, line: 871, type: !307)
!2288 = !DILocalVariable(name: "nslots_max", scope: !2278, file: !248, line: 873, type: !43)
!2289 = !DILocalVariable(name: "preallocated", scope: !2290, file: !248, line: 879, type: !64)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !248, line: 878, column: 5)
!2291 = distinct !DILexicalBlock(scope: !2278, file: !248, line: 877, column: 7)
!2292 = !DILocalVariable(name: "new_nslots", scope: !2290, file: !248, line: 880, type: !381)
!2293 = !DILocalVariable(name: "size", scope: !2294, file: !248, line: 891, type: !45)
!2294 = distinct !DILexicalBlock(scope: !2278, file: !248, line: 890, column: 3)
!2295 = !DILocalVariable(name: "val", scope: !2294, file: !248, line: 892, type: !41)
!2296 = !DILocalVariable(name: "flags", scope: !2294, file: !248, line: 894, type: !43)
!2297 = !DILocalVariable(name: "qsize", scope: !2294, file: !248, line: 895, type: !45)
!2298 = !DILocation(line: 0, scope: !2278)
!2299 = !DILocation(line: 869, column: 21, scope: !2278)
!2300 = !DILocation(line: 871, column: 24, scope: !2278)
!2301 = !DILocation(line: 874, column: 17, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2278, file: !248, line: 874, column: 7)
!2303 = !DILocation(line: 875, column: 5, scope: !2302)
!2304 = !DILocation(line: 877, column: 7, scope: !2291)
!2305 = !DILocation(line: 877, column: 14, scope: !2291)
!2306 = !DILocation(line: 877, column: 7, scope: !2278)
!2307 = !DILocation(line: 879, column: 31, scope: !2290)
!2308 = !DILocation(line: 0, scope: !2290)
!2309 = !DILocation(line: 880, column: 7, scope: !2290)
!2310 = !DILocation(line: 880, column: 26, scope: !2290)
!2311 = !DILocation(line: 880, column: 13, scope: !2290)
!2312 = !DILocation(line: 882, column: 31, scope: !2290)
!2313 = !DILocation(line: 883, column: 33, scope: !2290)
!2314 = !DILocation(line: 883, column: 42, scope: !2290)
!2315 = !DILocation(line: 883, column: 31, scope: !2290)
!2316 = !DILocation(line: 882, column: 22, scope: !2290)
!2317 = !DILocation(line: 882, column: 15, scope: !2290)
!2318 = !DILocation(line: 884, column: 11, scope: !2290)
!2319 = !DILocation(line: 885, column: 15, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2290, file: !248, line: 884, column: 11)
!2321 = !{i64 0, i64 8, !1007, i64 8, i64 8, !439}
!2322 = !DILocation(line: 885, column: 9, scope: !2320)
!2323 = !DILocation(line: 886, column: 20, scope: !2290)
!2324 = !DILocation(line: 886, column: 18, scope: !2290)
!2325 = !DILocation(line: 886, column: 15, scope: !2290)
!2326 = !DILocation(line: 886, column: 32, scope: !2290)
!2327 = !DILocation(line: 886, column: 43, scope: !2290)
!2328 = !DILocation(line: 886, column: 53, scope: !2290)
!2329 = !DILocation(line: 0, scope: !1717, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 886, column: 7, scope: !2290)
!2331 = !DILocation(line: 59, column: 10, scope: !1717, inlinedAt: !2330)
!2332 = !DILocation(line: 887, column: 16, scope: !2290)
!2333 = !DILocation(line: 887, column: 14, scope: !2290)
!2334 = !DILocation(line: 888, column: 5, scope: !2291)
!2335 = !DILocation(line: 888, column: 5, scope: !2290)
!2336 = !DILocation(line: 891, column: 19, scope: !2294)
!2337 = !DILocation(line: 891, column: 25, scope: !2294)
!2338 = !DILocation(line: 0, scope: !2294)
!2339 = !DILocation(line: 892, column: 23, scope: !2294)
!2340 = !DILocation(line: 894, column: 26, scope: !2294)
!2341 = !DILocation(line: 894, column: 32, scope: !2294)
!2342 = !DILocation(line: 896, column: 55, scope: !2294)
!2343 = !DILocation(line: 897, column: 46, scope: !2294)
!2344 = !DILocation(line: 898, column: 55, scope: !2294)
!2345 = !DILocation(line: 899, column: 55, scope: !2294)
!2346 = !DILocation(line: 895, column: 20, scope: !2294)
!2347 = !DILocation(line: 901, column: 14, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2294, file: !248, line: 901, column: 9)
!2349 = !DILocation(line: 901, column: 9, scope: !2294)
!2350 = !DILocation(line: 903, column: 35, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2348, file: !248, line: 902, column: 7)
!2352 = !DILocation(line: 903, column: 20, scope: !2351)
!2353 = !DILocation(line: 904, column: 17, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2351, file: !248, line: 904, column: 13)
!2355 = !DILocation(line: 904, column: 13, scope: !2351)
!2356 = !DILocation(line: 905, column: 11, scope: !2354)
!2357 = !DILocation(line: 906, column: 27, scope: !2351)
!2358 = !DILocation(line: 906, column: 19, scope: !2351)
!2359 = !DILocation(line: 907, column: 69, scope: !2351)
!2360 = !DILocation(line: 909, column: 44, scope: !2351)
!2361 = !DILocation(line: 910, column: 44, scope: !2351)
!2362 = !DILocation(line: 907, column: 9, scope: !2351)
!2363 = !DILocation(line: 911, column: 7, scope: !2351)
!2364 = !DILocation(line: 913, column: 11, scope: !2294)
!2365 = !DILocation(line: 914, column: 5, scope: !2294)
!2366 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !248, file: !248, line: 925, type: !2367, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!41, !43, !48, !45}
!2369 = !{!2370, !2371, !2372}
!2370 = !DILocalVariable(name: "n", arg: 1, scope: !2366, file: !248, line: 925, type: !43)
!2371 = !DILocalVariable(name: "arg", arg: 2, scope: !2366, file: !248, line: 925, type: !48)
!2372 = !DILocalVariable(name: "argsize", arg: 3, scope: !2366, file: !248, line: 925, type: !45)
!2373 = !DILocation(line: 0, scope: !2366)
!2374 = !DILocation(line: 927, column: 10, scope: !2366)
!2375 = !DILocation(line: 927, column: 3, scope: !2366)
!2376 = distinct !DISubprogram(name: "quotearg", scope: !248, file: !248, line: 931, type: !641, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2377)
!2377 = !{!2378}
!2378 = !DILocalVariable(name: "arg", arg: 1, scope: !2376, file: !248, line: 931, type: !48)
!2379 = !DILocation(line: 0, scope: !2376)
!2380 = !DILocation(line: 0, scope: !2271, inlinedAt: !2381)
!2381 = distinct !DILocation(line: 933, column: 10, scope: !2376)
!2382 = !DILocation(line: 921, column: 10, scope: !2271, inlinedAt: !2381)
!2383 = !DILocation(line: 933, column: 3, scope: !2376)
!2384 = distinct !DISubprogram(name: "quotearg_mem", scope: !248, file: !248, line: 937, type: !2385, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2387)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!41, !48, !45}
!2387 = !{!2388, !2389}
!2388 = !DILocalVariable(name: "arg", arg: 1, scope: !2384, file: !248, line: 937, type: !48)
!2389 = !DILocalVariable(name: "argsize", arg: 2, scope: !2384, file: !248, line: 937, type: !45)
!2390 = !DILocation(line: 0, scope: !2384)
!2391 = !DILocation(line: 0, scope: !2366, inlinedAt: !2392)
!2392 = distinct !DILocation(line: 939, column: 10, scope: !2384)
!2393 = !DILocation(line: 927, column: 10, scope: !2366, inlinedAt: !2392)
!2394 = !DILocation(line: 939, column: 3, scope: !2384)
!2395 = distinct !DISubprogram(name: "quotearg_n_style", scope: !248, file: !248, line: 943, type: !2396, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2398)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!41, !43, !21, !48}
!2398 = !{!2399, !2400, !2401, !2402}
!2399 = !DILocalVariable(name: "n", arg: 1, scope: !2395, file: !248, line: 943, type: !43)
!2400 = !DILocalVariable(name: "s", arg: 2, scope: !2395, file: !248, line: 943, type: !21)
!2401 = !DILocalVariable(name: "arg", arg: 3, scope: !2395, file: !248, line: 943, type: !48)
!2402 = !DILocalVariable(name: "o", scope: !2395, file: !248, line: 945, type: !1507)
!2403 = !DILocation(line: 0, scope: !2395)
!2404 = !DILocation(line: 945, column: 3, scope: !2395)
!2405 = !DILocation(line: 945, column: 32, scope: !2395)
!2406 = !{!2407}
!2407 = distinct !{!2407, !2408, !"quoting_options_from_style: argument 0"}
!2408 = distinct !{!2408, !"quoting_options_from_style"}
!2409 = !DILocation(line: 945, column: 36, scope: !2395)
!2410 = !DILocalVariable(name: "style", arg: 1, scope: !2411, file: !248, line: 183, type: !21)
!2411 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !248, file: !248, line: 183, type: !2412, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!265, !21}
!2414 = !{!2410, !2415}
!2415 = !DILocalVariable(name: "o", scope: !2411, file: !248, line: 185, type: !265)
!2416 = !DILocation(line: 0, scope: !2411, inlinedAt: !2417)
!2417 = distinct !DILocation(line: 945, column: 36, scope: !2395)
!2418 = !DILocation(line: 185, column: 26, scope: !2411, inlinedAt: !2417)
!2419 = !DILocation(line: 186, column: 13, scope: !2420, inlinedAt: !2417)
!2420 = distinct !DILexicalBlock(scope: !2411, file: !248, line: 186, column: 7)
!2421 = !DILocation(line: 186, column: 7, scope: !2411, inlinedAt: !2417)
!2422 = !DILocation(line: 187, column: 5, scope: !2420, inlinedAt: !2417)
!2423 = !DILocation(line: 188, column: 5, scope: !2411, inlinedAt: !2417)
!2424 = !DILocation(line: 188, column: 11, scope: !2411, inlinedAt: !2417)
!2425 = !DILocation(line: 946, column: 10, scope: !2395)
!2426 = !DILocation(line: 947, column: 1, scope: !2395)
!2427 = !DILocation(line: 946, column: 3, scope: !2395)
!2428 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !248, file: !248, line: 950, type: !2429, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2431)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!41, !43, !21, !48, !45}
!2431 = !{!2432, !2433, !2434, !2435, !2436}
!2432 = !DILocalVariable(name: "n", arg: 1, scope: !2428, file: !248, line: 950, type: !43)
!2433 = !DILocalVariable(name: "s", arg: 2, scope: !2428, file: !248, line: 950, type: !21)
!2434 = !DILocalVariable(name: "arg", arg: 3, scope: !2428, file: !248, line: 951, type: !48)
!2435 = !DILocalVariable(name: "argsize", arg: 4, scope: !2428, file: !248, line: 951, type: !45)
!2436 = !DILocalVariable(name: "o", scope: !2428, file: !248, line: 953, type: !1507)
!2437 = !DILocation(line: 0, scope: !2428)
!2438 = !DILocation(line: 953, column: 3, scope: !2428)
!2439 = !DILocation(line: 953, column: 32, scope: !2428)
!2440 = !{!2441}
!2441 = distinct !{!2441, !2442, !"quoting_options_from_style: argument 0"}
!2442 = distinct !{!2442, !"quoting_options_from_style"}
!2443 = !DILocation(line: 953, column: 36, scope: !2428)
!2444 = !DILocation(line: 0, scope: !2411, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 953, column: 36, scope: !2428)
!2446 = !DILocation(line: 185, column: 26, scope: !2411, inlinedAt: !2445)
!2447 = !DILocation(line: 186, column: 13, scope: !2420, inlinedAt: !2445)
!2448 = !DILocation(line: 186, column: 7, scope: !2411, inlinedAt: !2445)
!2449 = !DILocation(line: 187, column: 5, scope: !2420, inlinedAt: !2445)
!2450 = !DILocation(line: 188, column: 5, scope: !2411, inlinedAt: !2445)
!2451 = !DILocation(line: 188, column: 11, scope: !2411, inlinedAt: !2445)
!2452 = !DILocation(line: 954, column: 10, scope: !2428)
!2453 = !DILocation(line: 955, column: 1, scope: !2428)
!2454 = !DILocation(line: 954, column: 3, scope: !2428)
!2455 = distinct !DISubprogram(name: "quotearg_style", scope: !248, file: !248, line: 958, type: !2456, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2458)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!41, !21, !48}
!2458 = !{!2459, !2460}
!2459 = !DILocalVariable(name: "s", arg: 1, scope: !2455, file: !248, line: 958, type: !21)
!2460 = !DILocalVariable(name: "arg", arg: 2, scope: !2455, file: !248, line: 958, type: !48)
!2461 = !DILocation(line: 0, scope: !2455)
!2462 = !DILocation(line: 0, scope: !2395, inlinedAt: !2463)
!2463 = distinct !DILocation(line: 960, column: 10, scope: !2455)
!2464 = !DILocation(line: 945, column: 3, scope: !2395, inlinedAt: !2463)
!2465 = !DILocation(line: 945, column: 32, scope: !2395, inlinedAt: !2463)
!2466 = !{!2467}
!2467 = distinct !{!2467, !2468, !"quoting_options_from_style: argument 0"}
!2468 = distinct !{!2468, !"quoting_options_from_style"}
!2469 = !DILocation(line: 945, column: 36, scope: !2395, inlinedAt: !2463)
!2470 = !DILocation(line: 0, scope: !2411, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 945, column: 36, scope: !2395, inlinedAt: !2463)
!2472 = !DILocation(line: 185, column: 26, scope: !2411, inlinedAt: !2471)
!2473 = !DILocation(line: 186, column: 13, scope: !2420, inlinedAt: !2471)
!2474 = !DILocation(line: 186, column: 7, scope: !2411, inlinedAt: !2471)
!2475 = !DILocation(line: 187, column: 5, scope: !2420, inlinedAt: !2471)
!2476 = !DILocation(line: 188, column: 5, scope: !2411, inlinedAt: !2471)
!2477 = !DILocation(line: 188, column: 11, scope: !2411, inlinedAt: !2471)
!2478 = !DILocation(line: 946, column: 10, scope: !2395, inlinedAt: !2463)
!2479 = !DILocation(line: 947, column: 1, scope: !2395, inlinedAt: !2463)
!2480 = !DILocation(line: 960, column: 3, scope: !2455)
!2481 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !248, file: !248, line: 964, type: !2482, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2484)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!41, !21, !48, !45}
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "s", arg: 1, scope: !2481, file: !248, line: 964, type: !21)
!2486 = !DILocalVariable(name: "arg", arg: 2, scope: !2481, file: !248, line: 964, type: !48)
!2487 = !DILocalVariable(name: "argsize", arg: 3, scope: !2481, file: !248, line: 964, type: !45)
!2488 = !DILocation(line: 0, scope: !2481)
!2489 = !DILocation(line: 0, scope: !2428, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 966, column: 10, scope: !2481)
!2491 = !DILocation(line: 953, column: 3, scope: !2428, inlinedAt: !2490)
!2492 = !DILocation(line: 953, column: 32, scope: !2428, inlinedAt: !2490)
!2493 = !{!2494}
!2494 = distinct !{!2494, !2495, !"quoting_options_from_style: argument 0"}
!2495 = distinct !{!2495, !"quoting_options_from_style"}
!2496 = !DILocation(line: 953, column: 36, scope: !2428, inlinedAt: !2490)
!2497 = !DILocation(line: 0, scope: !2411, inlinedAt: !2498)
!2498 = distinct !DILocation(line: 953, column: 36, scope: !2428, inlinedAt: !2490)
!2499 = !DILocation(line: 185, column: 26, scope: !2411, inlinedAt: !2498)
!2500 = !DILocation(line: 186, column: 13, scope: !2420, inlinedAt: !2498)
!2501 = !DILocation(line: 186, column: 7, scope: !2411, inlinedAt: !2498)
!2502 = !DILocation(line: 187, column: 5, scope: !2420, inlinedAt: !2498)
!2503 = !DILocation(line: 188, column: 5, scope: !2411, inlinedAt: !2498)
!2504 = !DILocation(line: 188, column: 11, scope: !2411, inlinedAt: !2498)
!2505 = !DILocation(line: 954, column: 10, scope: !2428, inlinedAt: !2490)
!2506 = !DILocation(line: 955, column: 1, scope: !2428, inlinedAt: !2490)
!2507 = !DILocation(line: 966, column: 3, scope: !2481)
!2508 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !248, file: !248, line: 970, type: !2509, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!41, !48, !45, !42}
!2511 = !{!2512, !2513, !2514, !2515}
!2512 = !DILocalVariable(name: "arg", arg: 1, scope: !2508, file: !248, line: 970, type: !48)
!2513 = !DILocalVariable(name: "argsize", arg: 2, scope: !2508, file: !248, line: 970, type: !45)
!2514 = !DILocalVariable(name: "ch", arg: 3, scope: !2508, file: !248, line: 970, type: !42)
!2515 = !DILocalVariable(name: "options", scope: !2508, file: !248, line: 972, type: !265)
!2516 = !DILocation(line: 0, scope: !2508)
!2517 = !DILocation(line: 972, column: 3, scope: !2508)
!2518 = !DILocation(line: 972, column: 26, scope: !2508)
!2519 = !DILocation(line: 973, column: 13, scope: !2508)
!2520 = !{i64 0, i64 4, !538, i64 4, i64 4, !529, i64 8, i64 32, !538, i64 40, i64 8, !439, i64 48, i64 8, !439}
!2521 = !DILocation(line: 0, scope: !1527, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 974, column: 3, scope: !2508)
!2523 = !DILocation(line: 147, column: 62, scope: !1527, inlinedAt: !2522)
!2524 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2522)
!2525 = !DILocation(line: 148, column: 15, scope: !1527, inlinedAt: !2522)
!2526 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2522)
!2527 = !DILocation(line: 149, column: 24, scope: !1527, inlinedAt: !2522)
!2528 = !DILocation(line: 149, column: 34, scope: !1527, inlinedAt: !2522)
!2529 = !DILocation(line: 150, column: 19, scope: !1527, inlinedAt: !2522)
!2530 = !DILocation(line: 150, column: 24, scope: !1527, inlinedAt: !2522)
!2531 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2522)
!2532 = !DILocation(line: 975, column: 10, scope: !2508)
!2533 = !DILocation(line: 976, column: 1, scope: !2508)
!2534 = !DILocation(line: 975, column: 3, scope: !2508)
!2535 = distinct !DISubprogram(name: "quotearg_char", scope: !248, file: !248, line: 979, type: !2536, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!41, !48, !42}
!2538 = !{!2539, !2540}
!2539 = !DILocalVariable(name: "arg", arg: 1, scope: !2535, file: !248, line: 979, type: !48)
!2540 = !DILocalVariable(name: "ch", arg: 2, scope: !2535, file: !248, line: 979, type: !42)
!2541 = !DILocation(line: 0, scope: !2535)
!2542 = !DILocation(line: 0, scope: !2508, inlinedAt: !2543)
!2543 = distinct !DILocation(line: 981, column: 10, scope: !2535)
!2544 = !DILocation(line: 972, column: 3, scope: !2508, inlinedAt: !2543)
!2545 = !DILocation(line: 972, column: 26, scope: !2508, inlinedAt: !2543)
!2546 = !DILocation(line: 973, column: 13, scope: !2508, inlinedAt: !2543)
!2547 = !DILocation(line: 0, scope: !1527, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 974, column: 3, scope: !2508, inlinedAt: !2543)
!2549 = !DILocation(line: 147, column: 62, scope: !1527, inlinedAt: !2548)
!2550 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2548)
!2551 = !DILocation(line: 148, column: 15, scope: !1527, inlinedAt: !2548)
!2552 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2548)
!2553 = !DILocation(line: 149, column: 24, scope: !1527, inlinedAt: !2548)
!2554 = !DILocation(line: 149, column: 34, scope: !1527, inlinedAt: !2548)
!2555 = !DILocation(line: 150, column: 19, scope: !1527, inlinedAt: !2548)
!2556 = !DILocation(line: 150, column: 24, scope: !1527, inlinedAt: !2548)
!2557 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2548)
!2558 = !DILocation(line: 975, column: 10, scope: !2508, inlinedAt: !2543)
!2559 = !DILocation(line: 976, column: 1, scope: !2508, inlinedAt: !2543)
!2560 = !DILocation(line: 981, column: 3, scope: !2535)
!2561 = distinct !DISubprogram(name: "quotearg_colon", scope: !248, file: !248, line: 985, type: !641, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2562)
!2562 = !{!2563}
!2563 = !DILocalVariable(name: "arg", arg: 1, scope: !2561, file: !248, line: 985, type: !48)
!2564 = !DILocation(line: 0, scope: !2561)
!2565 = !DILocation(line: 0, scope: !2535, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 987, column: 10, scope: !2561)
!2567 = !DILocation(line: 0, scope: !2508, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 981, column: 10, scope: !2535, inlinedAt: !2566)
!2569 = !DILocation(line: 972, column: 3, scope: !2508, inlinedAt: !2568)
!2570 = !DILocation(line: 972, column: 26, scope: !2508, inlinedAt: !2568)
!2571 = !DILocation(line: 973, column: 13, scope: !2508, inlinedAt: !2568)
!2572 = !DILocation(line: 0, scope: !1527, inlinedAt: !2573)
!2573 = distinct !DILocation(line: 974, column: 3, scope: !2508, inlinedAt: !2568)
!2574 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2573)
!2575 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2573)
!2576 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2573)
!2577 = !DILocation(line: 975, column: 10, scope: !2508, inlinedAt: !2568)
!2578 = !DILocation(line: 976, column: 1, scope: !2508, inlinedAt: !2568)
!2579 = !DILocation(line: 987, column: 3, scope: !2561)
!2580 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !248, file: !248, line: 991, type: !2385, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2581)
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "arg", arg: 1, scope: !2580, file: !248, line: 991, type: !48)
!2583 = !DILocalVariable(name: "argsize", arg: 2, scope: !2580, file: !248, line: 991, type: !45)
!2584 = !DILocation(line: 0, scope: !2580)
!2585 = !DILocation(line: 0, scope: !2508, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 993, column: 10, scope: !2580)
!2587 = !DILocation(line: 972, column: 3, scope: !2508, inlinedAt: !2586)
!2588 = !DILocation(line: 972, column: 26, scope: !2508, inlinedAt: !2586)
!2589 = !DILocation(line: 973, column: 13, scope: !2508, inlinedAt: !2586)
!2590 = !DILocation(line: 0, scope: !1527, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 974, column: 3, scope: !2508, inlinedAt: !2586)
!2592 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2591)
!2593 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2591)
!2594 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2591)
!2595 = !DILocation(line: 975, column: 10, scope: !2508, inlinedAt: !2586)
!2596 = !DILocation(line: 976, column: 1, scope: !2508, inlinedAt: !2586)
!2597 = !DILocation(line: 993, column: 3, scope: !2580)
!2598 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !248, file: !248, line: 997, type: !2396, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2599)
!2599 = !{!2600, !2601, !2602, !2603}
!2600 = !DILocalVariable(name: "n", arg: 1, scope: !2598, file: !248, line: 997, type: !43)
!2601 = !DILocalVariable(name: "s", arg: 2, scope: !2598, file: !248, line: 997, type: !21)
!2602 = !DILocalVariable(name: "arg", arg: 3, scope: !2598, file: !248, line: 997, type: !48)
!2603 = !DILocalVariable(name: "options", scope: !2598, file: !248, line: 999, type: !265)
!2604 = !DILocation(line: 0, scope: !2598)
!2605 = !DILocation(line: 999, column: 3, scope: !2598)
!2606 = !DILocation(line: 999, column: 26, scope: !2598)
!2607 = !DILocation(line: 0, scope: !2411, inlinedAt: !2608)
!2608 = distinct !DILocation(line: 1000, column: 13, scope: !2598)
!2609 = !DILocation(line: 186, column: 13, scope: !2420, inlinedAt: !2608)
!2610 = !DILocation(line: 186, column: 7, scope: !2411, inlinedAt: !2608)
!2611 = !DILocation(line: 187, column: 5, scope: !2420, inlinedAt: !2608)
!2612 = !{!2613}
!2613 = distinct !{!2613, !2614, !"quoting_options_from_style: argument 0"}
!2614 = distinct !{!2614, !"quoting_options_from_style"}
!2615 = !DILocation(line: 1000, column: 13, scope: !2598)
!2616 = !DILocation(line: 0, scope: !1527, inlinedAt: !2617)
!2617 = distinct !DILocation(line: 1001, column: 3, scope: !2598)
!2618 = !DILocation(line: 147, column: 57, scope: !1527, inlinedAt: !2617)
!2619 = !DILocation(line: 149, column: 21, scope: !1527, inlinedAt: !2617)
!2620 = !DILocation(line: 150, column: 6, scope: !1527, inlinedAt: !2617)
!2621 = !DILocation(line: 1002, column: 10, scope: !2598)
!2622 = !DILocation(line: 1003, column: 1, scope: !2598)
!2623 = !DILocation(line: 1002, column: 3, scope: !2598)
!2624 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !248, file: !248, line: 1006, type: !2625, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2627)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!41, !43, !48, !48, !48}
!2627 = !{!2628, !2629, !2630, !2631}
!2628 = !DILocalVariable(name: "n", arg: 1, scope: !2624, file: !248, line: 1006, type: !43)
!2629 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2624, file: !248, line: 1006, type: !48)
!2630 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2624, file: !248, line: 1007, type: !48)
!2631 = !DILocalVariable(name: "arg", arg: 4, scope: !2624, file: !248, line: 1007, type: !48)
!2632 = !DILocation(line: 0, scope: !2624)
!2633 = !DILocalVariable(name: "n", arg: 1, scope: !2634, file: !248, line: 1014, type: !43)
!2634 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !248, file: !248, line: 1014, type: !2635, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2637)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!41, !43, !48, !48, !48, !45}
!2637 = !{!2633, !2638, !2639, !2640, !2641, !2642}
!2638 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2634, file: !248, line: 1014, type: !48)
!2639 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2634, file: !248, line: 1015, type: !48)
!2640 = !DILocalVariable(name: "arg", arg: 4, scope: !2634, file: !248, line: 1016, type: !48)
!2641 = !DILocalVariable(name: "argsize", arg: 5, scope: !2634, file: !248, line: 1016, type: !45)
!2642 = !DILocalVariable(name: "o", scope: !2634, file: !248, line: 1018, type: !265)
!2643 = !DILocation(line: 0, scope: !2634, inlinedAt: !2644)
!2644 = distinct !DILocation(line: 1009, column: 10, scope: !2624)
!2645 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2644)
!2646 = !DILocation(line: 1018, column: 26, scope: !2634, inlinedAt: !2644)
!2647 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2644)
!2648 = !DILocation(line: 0, scope: !1567, inlinedAt: !2649)
!2649 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2644)
!2650 = !DILocation(line: 174, column: 6, scope: !1567, inlinedAt: !2649)
!2651 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2649)
!2652 = !DILocation(line: 175, column: 8, scope: !1581, inlinedAt: !2649)
!2653 = !DILocation(line: 175, column: 19, scope: !1581, inlinedAt: !2649)
!2654 = !DILocation(line: 176, column: 5, scope: !1581, inlinedAt: !2649)
!2655 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2649)
!2656 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2649)
!2657 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2649)
!2658 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2649)
!2659 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2644)
!2660 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2644)
!2661 = !DILocation(line: 1009, column: 3, scope: !2624)
!2662 = !DILocation(line: 0, scope: !2634)
!2663 = !DILocation(line: 1018, column: 3, scope: !2634)
!2664 = !DILocation(line: 1018, column: 26, scope: !2634)
!2665 = !DILocation(line: 1018, column: 30, scope: !2634)
!2666 = !DILocation(line: 0, scope: !1567, inlinedAt: !2667)
!2667 = distinct !DILocation(line: 1019, column: 3, scope: !2634)
!2668 = !DILocation(line: 174, column: 6, scope: !1567, inlinedAt: !2667)
!2669 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2667)
!2670 = !DILocation(line: 175, column: 8, scope: !1581, inlinedAt: !2667)
!2671 = !DILocation(line: 175, column: 19, scope: !1581, inlinedAt: !2667)
!2672 = !DILocation(line: 176, column: 5, scope: !1581, inlinedAt: !2667)
!2673 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2667)
!2674 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2667)
!2675 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2667)
!2676 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2667)
!2677 = !DILocation(line: 1020, column: 10, scope: !2634)
!2678 = !DILocation(line: 1021, column: 1, scope: !2634)
!2679 = !DILocation(line: 1020, column: 3, scope: !2634)
!2680 = distinct !DISubprogram(name: "quotearg_custom", scope: !248, file: !248, line: 1024, type: !2681, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!41, !48, !48, !48}
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2680, file: !248, line: 1024, type: !48)
!2685 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2680, file: !248, line: 1024, type: !48)
!2686 = !DILocalVariable(name: "arg", arg: 3, scope: !2680, file: !248, line: 1025, type: !48)
!2687 = !DILocation(line: 0, scope: !2680)
!2688 = !DILocation(line: 0, scope: !2624, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 1027, column: 10, scope: !2680)
!2690 = !DILocation(line: 0, scope: !2634, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 1009, column: 10, scope: !2624, inlinedAt: !2689)
!2692 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2691)
!2693 = !DILocation(line: 1018, column: 26, scope: !2634, inlinedAt: !2691)
!2694 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2691)
!2695 = !DILocation(line: 0, scope: !1567, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2691)
!2697 = !DILocation(line: 174, column: 6, scope: !1567, inlinedAt: !2696)
!2698 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2696)
!2699 = !DILocation(line: 175, column: 8, scope: !1581, inlinedAt: !2696)
!2700 = !DILocation(line: 175, column: 19, scope: !1581, inlinedAt: !2696)
!2701 = !DILocation(line: 176, column: 5, scope: !1581, inlinedAt: !2696)
!2702 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2696)
!2703 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2696)
!2704 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2696)
!2705 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2696)
!2706 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2691)
!2707 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2691)
!2708 = !DILocation(line: 1027, column: 3, scope: !2680)
!2709 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !248, file: !248, line: 1031, type: !2710, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!41, !48, !48, !48, !45}
!2712 = !{!2713, !2714, !2715, !2716}
!2713 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2709, file: !248, line: 1031, type: !48)
!2714 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2709, file: !248, line: 1031, type: !48)
!2715 = !DILocalVariable(name: "arg", arg: 3, scope: !2709, file: !248, line: 1032, type: !48)
!2716 = !DILocalVariable(name: "argsize", arg: 4, scope: !2709, file: !248, line: 1032, type: !45)
!2717 = !DILocation(line: 0, scope: !2709)
!2718 = !DILocation(line: 0, scope: !2634, inlinedAt: !2719)
!2719 = distinct !DILocation(line: 1034, column: 10, scope: !2709)
!2720 = !DILocation(line: 1018, column: 3, scope: !2634, inlinedAt: !2719)
!2721 = !DILocation(line: 1018, column: 26, scope: !2634, inlinedAt: !2719)
!2722 = !DILocation(line: 1018, column: 30, scope: !2634, inlinedAt: !2719)
!2723 = !DILocation(line: 0, scope: !1567, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 1019, column: 3, scope: !2634, inlinedAt: !2719)
!2725 = !DILocation(line: 174, column: 6, scope: !1567, inlinedAt: !2724)
!2726 = !DILocation(line: 174, column: 12, scope: !1567, inlinedAt: !2724)
!2727 = !DILocation(line: 175, column: 8, scope: !1581, inlinedAt: !2724)
!2728 = !DILocation(line: 175, column: 19, scope: !1581, inlinedAt: !2724)
!2729 = !DILocation(line: 176, column: 5, scope: !1581, inlinedAt: !2724)
!2730 = !DILocation(line: 177, column: 6, scope: !1567, inlinedAt: !2724)
!2731 = !DILocation(line: 177, column: 17, scope: !1567, inlinedAt: !2724)
!2732 = !DILocation(line: 178, column: 6, scope: !1567, inlinedAt: !2724)
!2733 = !DILocation(line: 178, column: 18, scope: !1567, inlinedAt: !2724)
!2734 = !DILocation(line: 1020, column: 10, scope: !2634, inlinedAt: !2719)
!2735 = !DILocation(line: 1021, column: 1, scope: !2634, inlinedAt: !2719)
!2736 = !DILocation(line: 1034, column: 3, scope: !2709)
!2737 = distinct !DISubprogram(name: "quote_n_mem", scope: !248, file: !248, line: 1049, type: !2738, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2740)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!48, !43, !48, !45}
!2740 = !{!2741, !2742, !2743}
!2741 = !DILocalVariable(name: "n", arg: 1, scope: !2737, file: !248, line: 1049, type: !43)
!2742 = !DILocalVariable(name: "arg", arg: 2, scope: !2737, file: !248, line: 1049, type: !48)
!2743 = !DILocalVariable(name: "argsize", arg: 3, scope: !2737, file: !248, line: 1049, type: !45)
!2744 = !DILocation(line: 0, scope: !2737)
!2745 = !DILocation(line: 1051, column: 10, scope: !2737)
!2746 = !DILocation(line: 1051, column: 3, scope: !2737)
!2747 = distinct !DISubprogram(name: "quote_mem", scope: !248, file: !248, line: 1055, type: !2748, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!48, !48, !45}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "arg", arg: 1, scope: !2747, file: !248, line: 1055, type: !48)
!2752 = !DILocalVariable(name: "argsize", arg: 2, scope: !2747, file: !248, line: 1055, type: !45)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 0, scope: !2737, inlinedAt: !2755)
!2755 = distinct !DILocation(line: 1057, column: 10, scope: !2747)
!2756 = !DILocation(line: 1051, column: 10, scope: !2737, inlinedAt: !2755)
!2757 = !DILocation(line: 1057, column: 3, scope: !2747)
!2758 = distinct !DISubprogram(name: "quote_n", scope: !248, file: !248, line: 1061, type: !2759, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2761)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!48, !43, !48}
!2761 = !{!2762, !2763}
!2762 = !DILocalVariable(name: "n", arg: 1, scope: !2758, file: !248, line: 1061, type: !43)
!2763 = !DILocalVariable(name: "arg", arg: 2, scope: !2758, file: !248, line: 1061, type: !48)
!2764 = !DILocation(line: 0, scope: !2758)
!2765 = !DILocation(line: 0, scope: !2737, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 1063, column: 10, scope: !2758)
!2767 = !DILocation(line: 1051, column: 10, scope: !2737, inlinedAt: !2766)
!2768 = !DILocation(line: 1063, column: 3, scope: !2758)
!2769 = distinct !DISubprogram(name: "quote", scope: !248, file: !248, line: 1067, type: !2770, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2772)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!48, !48}
!2772 = !{!2773}
!2773 = !DILocalVariable(name: "arg", arg: 1, scope: !2769, file: !248, line: 1067, type: !48)
!2774 = !DILocation(line: 0, scope: !2769)
!2775 = !DILocation(line: 0, scope: !2758, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 1069, column: 10, scope: !2769)
!2777 = !DILocation(line: 0, scope: !2737, inlinedAt: !2778)
!2778 = distinct !DILocation(line: 1063, column: 10, scope: !2758, inlinedAt: !2776)
!2779 = !DILocation(line: 1051, column: 10, scope: !2737, inlinedAt: !2778)
!2780 = !DILocation(line: 1069, column: 3, scope: !2769)
!2781 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !353, file: !353, line: 29, type: !2782, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !352, retainedNodes: !2789)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!2784, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !832, line: 30, size: 128, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2785, file: !832, line: 32, baseType: !835, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2785, file: !832, line: 33, baseType: !838, size: 64, offset: 64)
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !2781, file: !353, line: 29, type: !2784)
!2791 = !DILocalVariable(name: "statbuf", scope: !2781, file: !353, line: 31, type: !2792)
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !705, line: 44, size: 1024, elements: !2793)
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2811, !2812, !2813}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2792, file: !705, line: 46, baseType: !708, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2792, file: !705, line: 47, baseType: !710, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2792, file: !705, line: 48, baseType: !712, size: 32, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2792, file: !705, line: 49, baseType: !714, size: 32, offset: 160)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2792, file: !705, line: 50, baseType: !716, size: 32, offset: 192)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2792, file: !705, line: 51, baseType: !718, size: 32, offset: 224)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2792, file: !705, line: 52, baseType: !708, size: 64, offset: 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !2792, file: !705, line: 53, baseType: !708, size: 64, offset: 320)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2792, file: !705, line: 54, baseType: !103, size: 64, offset: 384)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2792, file: !705, line: 55, baseType: !723, size: 32, offset: 448)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !2792, file: !705, line: 56, baseType: !43, size: 32, offset: 480)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2792, file: !705, line: 57, baseType: !726, size: 64, offset: 512)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2792, file: !705, line: 65, baseType: !2807, size: 128, offset: 576)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !729, line: 11, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2807, file: !729, line: 16, baseType: !732, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2807, file: !729, line: 21, baseType: !734, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2792, file: !705, line: 66, baseType: !2807, size: 128, offset: 704)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2792, file: !705, line: 67, baseType: !2807, size: 128, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2792, file: !705, line: 79, baseType: !738, size: 64, offset: 960)
!2814 = !DILocation(line: 0, scope: !2781)
!2815 = !DILocation(line: 31, column: 3, scope: !2781)
!2816 = !DILocation(line: 31, column: 15, scope: !2781)
!2817 = !DILocation(line: 32, column: 7, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2781, file: !353, line: 32, column: 7)
!2819 = !DILocation(line: 32, column: 7, scope: !2781)
!2820 = !DILocation(line: 35, column: 30, scope: !2781)
!2821 = !DILocation(line: 34, column: 20, scope: !2781)
!2822 = !DILocation(line: 36, column: 3, scope: !2781)
!2823 = !DILocation(line: 37, column: 1, scope: !2781)
!2824 = distinct !DISubprogram(name: "version_etc_arn", scope: !355, file: !355, line: 61, type: !2825, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2862)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{null, !2827, !48, !48, !48, !2861, !45}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !2829)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !2830)
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2829, file: !81, line: 51, baseType: !43, size: 32)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2829, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2829, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2829, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2829, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2829, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2829, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2829, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2829, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2829, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2829, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2829, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2829, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2829, file: !81, line: 70, baseType: !2845, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2829, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2829, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2829, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2829, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2829, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2829, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2829, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2829, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2829, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2829, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2829, file: !81, line: 93, baseType: !2845, size: 64, offset: 1344)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2829, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2829, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2829, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2829, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2868}
!2863 = !DILocalVariable(name: "stream", arg: 1, scope: !2824, file: !355, line: 61, type: !2827)
!2864 = !DILocalVariable(name: "command_name", arg: 2, scope: !2824, file: !355, line: 62, type: !48)
!2865 = !DILocalVariable(name: "package", arg: 3, scope: !2824, file: !355, line: 62, type: !48)
!2866 = !DILocalVariable(name: "version", arg: 4, scope: !2824, file: !355, line: 63, type: !48)
!2867 = !DILocalVariable(name: "authors", arg: 5, scope: !2824, file: !355, line: 64, type: !2861)
!2868 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2824, file: !355, line: 64, type: !45)
!2869 = !DILocation(line: 0, scope: !2824)
!2870 = !DILocation(line: 66, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2824, file: !355, line: 66, column: 7)
!2872 = !DILocation(line: 66, column: 7, scope: !2824)
!2873 = !DILocation(line: 67, column: 5, scope: !2871)
!2874 = !DILocation(line: 69, column: 5, scope: !2871)
!2875 = !DILocation(line: 83, column: 3, scope: !2824)
!2876 = !DILocation(line: 85, column: 3, scope: !2824)
!2877 = !DILocation(line: 88, column: 3, scope: !2824)
!2878 = !DILocation(line: 95, column: 3, scope: !2824)
!2879 = !DILocation(line: 97, column: 3, scope: !2824)
!2880 = !DILocation(line: 105, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2824, file: !355, line: 98, column: 5)
!2882 = !DILocation(line: 106, column: 7, scope: !2881)
!2883 = !DILocation(line: 109, column: 7, scope: !2881)
!2884 = !DILocation(line: 110, column: 7, scope: !2881)
!2885 = !DILocation(line: 113, column: 7, scope: !2881)
!2886 = !DILocation(line: 115, column: 7, scope: !2881)
!2887 = !DILocation(line: 120, column: 7, scope: !2881)
!2888 = !DILocation(line: 122, column: 7, scope: !2881)
!2889 = !DILocation(line: 127, column: 7, scope: !2881)
!2890 = !DILocation(line: 129, column: 7, scope: !2881)
!2891 = !DILocation(line: 134, column: 7, scope: !2881)
!2892 = !DILocation(line: 137, column: 7, scope: !2881)
!2893 = !DILocation(line: 142, column: 7, scope: !2881)
!2894 = !DILocation(line: 145, column: 7, scope: !2881)
!2895 = !DILocation(line: 150, column: 7, scope: !2881)
!2896 = !DILocation(line: 154, column: 7, scope: !2881)
!2897 = !DILocation(line: 159, column: 7, scope: !2881)
!2898 = !DILocation(line: 163, column: 7, scope: !2881)
!2899 = !DILocation(line: 170, column: 7, scope: !2881)
!2900 = !DILocation(line: 174, column: 7, scope: !2881)
!2901 = !DILocation(line: 176, column: 1, scope: !2824)
!2902 = distinct !DISubprogram(name: "version_etc_ar", scope: !355, file: !355, line: 183, type: !2903, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2905)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{null, !2827, !48, !48, !48, !2861}
!2905 = !{!2906, !2907, !2908, !2909, !2910, !2911}
!2906 = !DILocalVariable(name: "stream", arg: 1, scope: !2902, file: !355, line: 183, type: !2827)
!2907 = !DILocalVariable(name: "command_name", arg: 2, scope: !2902, file: !355, line: 184, type: !48)
!2908 = !DILocalVariable(name: "package", arg: 3, scope: !2902, file: !355, line: 184, type: !48)
!2909 = !DILocalVariable(name: "version", arg: 4, scope: !2902, file: !355, line: 185, type: !48)
!2910 = !DILocalVariable(name: "authors", arg: 5, scope: !2902, file: !355, line: 185, type: !2861)
!2911 = !DILocalVariable(name: "n_authors", scope: !2902, file: !355, line: 187, type: !45)
!2912 = !DILocation(line: 0, scope: !2902)
!2913 = !DILocation(line: 189, column: 8, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2902, file: !355, line: 189, column: 3)
!2915 = !DILocation(line: 0, scope: !2914)
!2916 = !DILocation(line: 189, column: 23, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2914, file: !355, line: 189, column: 3)
!2918 = !DILocation(line: 189, column: 3, scope: !2914)
!2919 = !DILocation(line: 189, column: 52, scope: !2917)
!2920 = distinct !{!2920, !2918, !2921, !495}
!2921 = !DILocation(line: 190, column: 5, scope: !2914)
!2922 = !DILocation(line: 191, column: 3, scope: !2902)
!2923 = !DILocation(line: 192, column: 1, scope: !2902)
!2924 = distinct !DISubprogram(name: "version_etc_va", scope: !355, file: !355, line: 199, type: !2925, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2938)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{null, !2827, !48, !48, !48, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !174, line: 52, baseType: !2928)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !176, line: 32, baseType: !2929)
!2929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2930, baseType: !2931)
!2930 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !180, size: 256, elements: !2932)
!2932 = !{!2933, !2934, !2935, !2936, !2937}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2931, file: !2930, line: 192, baseType: !40, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2931, file: !2930, line: 192, baseType: !40, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2931, file: !2930, line: 192, baseType: !40, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2931, file: !2930, line: 192, baseType: !43, size: 32, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2931, file: !2930, line: 192, baseType: !43, size: 32, offset: 224)
!2938 = !{!2939, !2940, !2941, !2942, !2943, !2944, !2945}
!2939 = !DILocalVariable(name: "stream", arg: 1, scope: !2924, file: !355, line: 199, type: !2827)
!2940 = !DILocalVariable(name: "command_name", arg: 2, scope: !2924, file: !355, line: 200, type: !48)
!2941 = !DILocalVariable(name: "package", arg: 3, scope: !2924, file: !355, line: 200, type: !48)
!2942 = !DILocalVariable(name: "version", arg: 4, scope: !2924, file: !355, line: 201, type: !48)
!2943 = !DILocalVariable(name: "authors", arg: 5, scope: !2924, file: !355, line: 201, type: !2927)
!2944 = !DILocalVariable(name: "n_authors", scope: !2924, file: !355, line: 203, type: !45)
!2945 = !DILocalVariable(name: "authtab", scope: !2924, file: !355, line: 204, type: !2946)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !48, size: 640, elements: !261)
!2947 = !DILocation(line: 0, scope: !2924)
!2948 = !DILocation(line: 201, column: 46, scope: !2924)
!2949 = !DILocation(line: 204, column: 3, scope: !2924)
!2950 = !DILocation(line: 204, column: 15, scope: !2924)
!2951 = !DILocation(line: 208, column: 35, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !355, line: 206, column: 3)
!2953 = distinct !DILexicalBlock(scope: !2924, file: !355, line: 206, column: 3)
!2954 = !DILocation(line: 208, column: 14, scope: !2952)
!2955 = !DILocation(line: 208, column: 33, scope: !2952)
!2956 = !DILocation(line: 208, column: 67, scope: !2952)
!2957 = !DILocation(line: 206, column: 3, scope: !2953)
!2958 = !DILocation(line: 0, scope: !2953)
!2959 = !DILocation(line: 211, column: 3, scope: !2924)
!2960 = !DILocation(line: 213, column: 1, scope: !2924)
!2961 = distinct !DISubprogram(name: "version_etc", scope: !355, file: !355, line: 230, type: !2962, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !2964)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !2827, !48, !48, !48, null}
!2964 = !{!2965, !2966, !2967, !2968, !2969}
!2965 = !DILocalVariable(name: "stream", arg: 1, scope: !2961, file: !355, line: 230, type: !2827)
!2966 = !DILocalVariable(name: "command_name", arg: 2, scope: !2961, file: !355, line: 231, type: !48)
!2967 = !DILocalVariable(name: "package", arg: 3, scope: !2961, file: !355, line: 231, type: !48)
!2968 = !DILocalVariable(name: "version", arg: 4, scope: !2961, file: !355, line: 232, type: !48)
!2969 = !DILocalVariable(name: "authors", scope: !2961, file: !355, line: 234, type: !2927)
!2970 = !DILocation(line: 0, scope: !2961)
!2971 = !DILocation(line: 234, column: 3, scope: !2961)
!2972 = !DILocation(line: 234, column: 11, scope: !2961)
!2973 = !DILocation(line: 235, column: 3, scope: !2961)
!2974 = !DILocation(line: 236, column: 3, scope: !2961)
!2975 = !DILocation(line: 237, column: 3, scope: !2961)
!2976 = !DILocation(line: 238, column: 1, scope: !2961)
!2977 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !355, file: !355, line: 241, type: !201, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !354, retainedNodes: !521)
!2978 = !DILocation(line: 243, column: 3, scope: !2977)
!2979 = !DILocation(line: 248, column: 3, scope: !2977)
!2980 = !DILocation(line: 254, column: 3, scope: !2977)
!2981 = !DILocation(line: 259, column: 3, scope: !2977)
!2982 = !DILocation(line: 261, column: 1, scope: !2977)
!2983 = distinct !DISubprogram(name: "xnrealloc", scope: !2984, file: !2984, line: 147, type: !2985, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2987)
!2984 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!40, !40, !45, !45}
!2987 = !{!2988, !2989, !2990}
!2988 = !DILocalVariable(name: "p", arg: 1, scope: !2983, file: !2984, line: 147, type: !40)
!2989 = !DILocalVariable(name: "n", arg: 2, scope: !2983, file: !2984, line: 147, type: !45)
!2990 = !DILocalVariable(name: "s", arg: 3, scope: !2983, file: !2984, line: 147, type: !45)
!2991 = !DILocation(line: 0, scope: !2983)
!2992 = !DILocalVariable(name: "p", arg: 1, scope: !2993, file: !362, line: 83, type: !40)
!2993 = distinct !DISubprogram(name: "xreallocarray", scope: !362, file: !362, line: 83, type: !2985, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !2994)
!2994 = !{!2992, !2995, !2996}
!2995 = !DILocalVariable(name: "n", arg: 2, scope: !2993, file: !362, line: 83, type: !45)
!2996 = !DILocalVariable(name: "s", arg: 3, scope: !2993, file: !362, line: 83, type: !45)
!2997 = !DILocation(line: 0, scope: !2993, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 149, column: 10, scope: !2983)
!2999 = !DILocation(line: 85, column: 25, scope: !2993, inlinedAt: !2998)
!3000 = !DILocalVariable(name: "p", arg: 1, scope: !3001, file: !362, line: 37, type: !40)
!3001 = distinct !DISubprogram(name: "check_nonnull", scope: !362, file: !362, line: 37, type: !3002, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3004)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!40, !40}
!3004 = !{!3000}
!3005 = !DILocation(line: 0, scope: !3001, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 85, column: 10, scope: !2993, inlinedAt: !2998)
!3007 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3006)
!3008 = distinct !DILexicalBlock(scope: !3001, file: !362, line: 39, column: 7)
!3009 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3006)
!3010 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3006)
!3011 = !DILocation(line: 149, column: 3, scope: !2983)
!3012 = !DILocation(line: 0, scope: !2993)
!3013 = !DILocation(line: 85, column: 25, scope: !2993)
!3014 = !DILocation(line: 0, scope: !3001, inlinedAt: !3015)
!3015 = distinct !DILocation(line: 85, column: 10, scope: !2993)
!3016 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3015)
!3017 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3015)
!3018 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3015)
!3019 = !DILocation(line: 85, column: 3, scope: !2993)
!3020 = distinct !DISubprogram(name: "xmalloc", scope: !362, file: !362, line: 47, type: !3021, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!40, !45}
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "s", arg: 1, scope: !3020, file: !362, line: 47, type: !45)
!3025 = !DILocation(line: 0, scope: !3020)
!3026 = !DILocation(line: 49, column: 25, scope: !3020)
!3027 = !DILocation(line: 0, scope: !3001, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 49, column: 10, scope: !3020)
!3029 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3028)
!3030 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3028)
!3031 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3028)
!3032 = !DILocation(line: 49, column: 3, scope: !3020)
!3033 = distinct !DISubprogram(name: "ximalloc", scope: !362, file: !362, line: 53, type: !3034, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3036)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!40, !381}
!3036 = !{!3037}
!3037 = !DILocalVariable(name: "s", arg: 1, scope: !3033, file: !362, line: 53, type: !381)
!3038 = !DILocation(line: 0, scope: !3033)
!3039 = !DILocalVariable(name: "s", arg: 1, scope: !3040, file: !3041, line: 55, type: !381)
!3040 = distinct !DISubprogram(name: "imalloc", scope: !3041, file: !3041, line: 55, type: !3034, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3042)
!3041 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3042 = !{!3039}
!3043 = !DILocation(line: 0, scope: !3040, inlinedAt: !3044)
!3044 = distinct !DILocation(line: 55, column: 25, scope: !3033)
!3045 = !DILocation(line: 57, column: 26, scope: !3040, inlinedAt: !3044)
!3046 = !DILocation(line: 0, scope: !3001, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 55, column: 10, scope: !3033)
!3048 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3047)
!3049 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3047)
!3050 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3047)
!3051 = !DILocation(line: 55, column: 3, scope: !3033)
!3052 = distinct !DISubprogram(name: "xcharalloc", scope: !362, file: !362, line: 59, type: !1055, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3053)
!3053 = !{!3054}
!3054 = !DILocalVariable(name: "n", arg: 1, scope: !3052, file: !362, line: 59, type: !45)
!3055 = !DILocation(line: 0, scope: !3052)
!3056 = !DILocation(line: 0, scope: !3020, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 61, column: 10, scope: !3052)
!3058 = !DILocation(line: 49, column: 25, scope: !3020, inlinedAt: !3057)
!3059 = !DILocation(line: 0, scope: !3001, inlinedAt: !3060)
!3060 = distinct !DILocation(line: 49, column: 10, scope: !3020, inlinedAt: !3057)
!3061 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3060)
!3062 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3060)
!3063 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3060)
!3064 = !DILocation(line: 61, column: 3, scope: !3052)
!3065 = distinct !DISubprogram(name: "xrealloc", scope: !362, file: !362, line: 68, type: !3066, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!40, !40, !45}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3065, file: !362, line: 68, type: !40)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !362, line: 68, type: !45)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocalVariable(name: "ptr", arg: 1, scope: !3073, file: !3074, line: 2057, type: !40)
!3073 = distinct !DISubprogram(name: "rpl_realloc", scope: !3074, file: !3074, line: 2057, type: !3066, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3075)
!3074 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3075 = !{!3072, !3076}
!3076 = !DILocalVariable(name: "size", arg: 2, scope: !3073, file: !3074, line: 2057, type: !45)
!3077 = !DILocation(line: 0, scope: !3073, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 70, column: 25, scope: !3065)
!3079 = !DILocation(line: 2059, column: 24, scope: !3073, inlinedAt: !3078)
!3080 = !DILocation(line: 2059, column: 10, scope: !3073, inlinedAt: !3078)
!3081 = !DILocation(line: 0, scope: !3001, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 70, column: 10, scope: !3065)
!3083 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3082)
!3084 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3082)
!3085 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3082)
!3086 = !DILocation(line: 70, column: 3, scope: !3065)
!3087 = distinct !DISubprogram(name: "xirealloc", scope: !362, file: !362, line: 74, type: !3088, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!40, !40, !381}
!3090 = !{!3091, !3092}
!3091 = !DILocalVariable(name: "p", arg: 1, scope: !3087, file: !362, line: 74, type: !40)
!3092 = !DILocalVariable(name: "s", arg: 2, scope: !3087, file: !362, line: 74, type: !381)
!3093 = !DILocation(line: 0, scope: !3087)
!3094 = !DILocalVariable(name: "p", arg: 1, scope: !3095, file: !3041, line: 66, type: !40)
!3095 = distinct !DISubprogram(name: "irealloc", scope: !3041, file: !3041, line: 66, type: !3088, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3096)
!3096 = !{!3094, !3097}
!3097 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !3041, line: 66, type: !381)
!3098 = !DILocation(line: 0, scope: !3095, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 76, column: 25, scope: !3087)
!3100 = !DILocation(line: 0, scope: !3073, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 68, column: 26, scope: !3095, inlinedAt: !3099)
!3102 = !DILocation(line: 2059, column: 24, scope: !3073, inlinedAt: !3101)
!3103 = !DILocation(line: 2059, column: 10, scope: !3073, inlinedAt: !3101)
!3104 = !DILocation(line: 0, scope: !3001, inlinedAt: !3105)
!3105 = distinct !DILocation(line: 76, column: 10, scope: !3087)
!3106 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3105)
!3107 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3105)
!3108 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3105)
!3109 = !DILocation(line: 76, column: 3, scope: !3087)
!3110 = distinct !DISubprogram(name: "xireallocarray", scope: !362, file: !362, line: 89, type: !3111, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!40, !40, !381, !381}
!3113 = !{!3114, !3115, !3116}
!3114 = !DILocalVariable(name: "p", arg: 1, scope: !3110, file: !362, line: 89, type: !40)
!3115 = !DILocalVariable(name: "n", arg: 2, scope: !3110, file: !362, line: 89, type: !381)
!3116 = !DILocalVariable(name: "s", arg: 3, scope: !3110, file: !362, line: 89, type: !381)
!3117 = !DILocation(line: 0, scope: !3110)
!3118 = !DILocalVariable(name: "p", arg: 1, scope: !3119, file: !3041, line: 98, type: !40)
!3119 = distinct !DISubprogram(name: "ireallocarray", scope: !3041, file: !3041, line: 98, type: !3111, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3120)
!3120 = !{!3118, !3121, !3122}
!3121 = !DILocalVariable(name: "n", arg: 2, scope: !3119, file: !3041, line: 98, type: !381)
!3122 = !DILocalVariable(name: "s", arg: 3, scope: !3119, file: !3041, line: 98, type: !381)
!3123 = !DILocation(line: 0, scope: !3119, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 91, column: 25, scope: !3110)
!3125 = !DILocation(line: 101, column: 13, scope: !3119, inlinedAt: !3124)
!3126 = !DILocation(line: 0, scope: !3001, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 91, column: 10, scope: !3110)
!3128 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3127)
!3129 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3127)
!3130 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3127)
!3131 = !DILocation(line: 91, column: 3, scope: !3110)
!3132 = distinct !DISubprogram(name: "xnmalloc", scope: !362, file: !362, line: 98, type: !3133, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!40, !45, !45}
!3135 = !{!3136, !3137}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !362, line: 98, type: !45)
!3137 = !DILocalVariable(name: "s", arg: 2, scope: !3132, file: !362, line: 98, type: !45)
!3138 = !DILocation(line: 0, scope: !3132)
!3139 = !DILocation(line: 0, scope: !2993, inlinedAt: !3140)
!3140 = distinct !DILocation(line: 100, column: 10, scope: !3132)
!3141 = !DILocation(line: 85, column: 25, scope: !2993, inlinedAt: !3140)
!3142 = !DILocation(line: 0, scope: !3001, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 85, column: 10, scope: !2993, inlinedAt: !3140)
!3144 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3143)
!3145 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3143)
!3146 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3143)
!3147 = !DILocation(line: 100, column: 3, scope: !3132)
!3148 = distinct !DISubprogram(name: "xinmalloc", scope: !362, file: !362, line: 104, type: !3149, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3151)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!40, !381, !381}
!3151 = !{!3152, !3153}
!3152 = !DILocalVariable(name: "n", arg: 1, scope: !3148, file: !362, line: 104, type: !381)
!3153 = !DILocalVariable(name: "s", arg: 2, scope: !3148, file: !362, line: 104, type: !381)
!3154 = !DILocation(line: 0, scope: !3148)
!3155 = !DILocation(line: 0, scope: !3110, inlinedAt: !3156)
!3156 = distinct !DILocation(line: 106, column: 10, scope: !3148)
!3157 = !DILocation(line: 0, scope: !3119, inlinedAt: !3158)
!3158 = distinct !DILocation(line: 91, column: 25, scope: !3110, inlinedAt: !3156)
!3159 = !DILocation(line: 101, column: 13, scope: !3119, inlinedAt: !3158)
!3160 = !DILocation(line: 0, scope: !3001, inlinedAt: !3161)
!3161 = distinct !DILocation(line: 91, column: 10, scope: !3110, inlinedAt: !3156)
!3162 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3161)
!3163 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3161)
!3164 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3161)
!3165 = !DILocation(line: 106, column: 3, scope: !3148)
!3166 = distinct !DISubprogram(name: "x2realloc", scope: !362, file: !362, line: 116, type: !3167, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3169)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!40, !40, !368}
!3169 = !{!3170, !3171}
!3170 = !DILocalVariable(name: "p", arg: 1, scope: !3166, file: !362, line: 116, type: !40)
!3171 = !DILocalVariable(name: "ps", arg: 2, scope: !3166, file: !362, line: 116, type: !368)
!3172 = !DILocation(line: 0, scope: !3166)
!3173 = !DILocation(line: 0, scope: !365, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 118, column: 10, scope: !3166)
!3175 = !DILocation(line: 178, column: 14, scope: !365, inlinedAt: !3174)
!3176 = !DILocation(line: 180, column: 9, scope: !3177, inlinedAt: !3174)
!3177 = distinct !DILexicalBlock(scope: !365, file: !362, line: 180, column: 7)
!3178 = !DILocation(line: 180, column: 7, scope: !365, inlinedAt: !3174)
!3179 = !DILocation(line: 182, column: 13, scope: !3180, inlinedAt: !3174)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !362, line: 182, column: 11)
!3181 = distinct !DILexicalBlock(scope: !3177, file: !362, line: 181, column: 5)
!3182 = !DILocation(line: 182, column: 11, scope: !3181, inlinedAt: !3174)
!3183 = !DILocation(line: 197, column: 11, scope: !3184, inlinedAt: !3174)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !362, line: 197, column: 11)
!3185 = distinct !DILexicalBlock(scope: !3177, file: !362, line: 195, column: 5)
!3186 = !DILocation(line: 197, column: 11, scope: !3185, inlinedAt: !3174)
!3187 = !DILocation(line: 198, column: 9, scope: !3184, inlinedAt: !3174)
!3188 = !DILocation(line: 0, scope: !2993, inlinedAt: !3189)
!3189 = distinct !DILocation(line: 201, column: 7, scope: !365, inlinedAt: !3174)
!3190 = !DILocation(line: 85, column: 25, scope: !2993, inlinedAt: !3189)
!3191 = !DILocation(line: 0, scope: !3001, inlinedAt: !3192)
!3192 = distinct !DILocation(line: 85, column: 10, scope: !2993, inlinedAt: !3189)
!3193 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3192)
!3194 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3192)
!3195 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3192)
!3196 = !DILocation(line: 202, column: 7, scope: !365, inlinedAt: !3174)
!3197 = !DILocation(line: 118, column: 3, scope: !3166)
!3198 = !DILocation(line: 0, scope: !365)
!3199 = !DILocation(line: 178, column: 14, scope: !365)
!3200 = !DILocation(line: 180, column: 9, scope: !3177)
!3201 = !DILocation(line: 180, column: 7, scope: !365)
!3202 = !DILocation(line: 182, column: 13, scope: !3180)
!3203 = !DILocation(line: 182, column: 11, scope: !3181)
!3204 = !DILocation(line: 190, column: 30, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3180, file: !362, line: 183, column: 9)
!3206 = !DILocation(line: 191, column: 16, scope: !3205)
!3207 = !DILocation(line: 191, column: 13, scope: !3205)
!3208 = !DILocation(line: 192, column: 9, scope: !3205)
!3209 = !DILocation(line: 197, column: 11, scope: !3184)
!3210 = !DILocation(line: 197, column: 11, scope: !3185)
!3211 = !DILocation(line: 198, column: 9, scope: !3184)
!3212 = !DILocation(line: 0, scope: !2993, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 201, column: 7, scope: !365)
!3214 = !DILocation(line: 85, column: 25, scope: !2993, inlinedAt: !3213)
!3215 = !DILocation(line: 0, scope: !3001, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 85, column: 10, scope: !2993, inlinedAt: !3213)
!3217 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3216)
!3218 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3216)
!3219 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3216)
!3220 = !DILocation(line: 202, column: 7, scope: !365)
!3221 = !DILocation(line: 203, column: 3, scope: !365)
!3222 = !DILocation(line: 0, scope: !377)
!3223 = !DILocation(line: 230, column: 14, scope: !377)
!3224 = !DILocation(line: 238, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !377, file: !362, line: 238, column: 7)
!3226 = !DILocation(line: 238, column: 7, scope: !377)
!3227 = !DILocation(line: 240, column: 9, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !377, file: !362, line: 240, column: 7)
!3229 = !DILocation(line: 240, column: 18, scope: !3228)
!3230 = !DILocation(line: 253, column: 8, scope: !377)
!3231 = !DILocation(line: 258, column: 27, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !362, line: 257, column: 5)
!3233 = distinct !DILexicalBlock(scope: !377, file: !362, line: 256, column: 7)
!3234 = !DILocation(line: 259, column: 32, scope: !3232)
!3235 = !DILocation(line: 260, column: 5, scope: !3232)
!3236 = !DILocation(line: 262, column: 9, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !377, file: !362, line: 262, column: 7)
!3238 = !DILocation(line: 262, column: 7, scope: !377)
!3239 = !DILocation(line: 263, column: 9, scope: !3237)
!3240 = !DILocation(line: 263, column: 5, scope: !3237)
!3241 = !DILocation(line: 264, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !377, file: !362, line: 264, column: 7)
!3243 = !DILocation(line: 264, column: 14, scope: !3242)
!3244 = !DILocation(line: 265, column: 7, scope: !3242)
!3245 = !DILocation(line: 265, column: 11, scope: !3242)
!3246 = !DILocation(line: 266, column: 11, scope: !3242)
!3247 = !DILocation(line: 266, column: 26, scope: !3242)
!3248 = !DILocation(line: 267, column: 14, scope: !3242)
!3249 = !DILocation(line: 264, column: 7, scope: !377)
!3250 = !DILocation(line: 268, column: 5, scope: !3242)
!3251 = !DILocation(line: 0, scope: !3065, inlinedAt: !3252)
!3252 = distinct !DILocation(line: 269, column: 8, scope: !377)
!3253 = !DILocation(line: 0, scope: !3073, inlinedAt: !3254)
!3254 = distinct !DILocation(line: 70, column: 25, scope: !3065, inlinedAt: !3252)
!3255 = !DILocation(line: 2059, column: 24, scope: !3073, inlinedAt: !3254)
!3256 = !DILocation(line: 2059, column: 10, scope: !3073, inlinedAt: !3254)
!3257 = !DILocation(line: 0, scope: !3001, inlinedAt: !3258)
!3258 = distinct !DILocation(line: 70, column: 10, scope: !3065, inlinedAt: !3252)
!3259 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3258)
!3260 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3258)
!3261 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3258)
!3262 = !DILocation(line: 270, column: 7, scope: !377)
!3263 = !DILocation(line: 271, column: 3, scope: !377)
!3264 = distinct !DISubprogram(name: "xzalloc", scope: !362, file: !362, line: 279, type: !3021, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3265)
!3265 = !{!3266}
!3266 = !DILocalVariable(name: "s", arg: 1, scope: !3264, file: !362, line: 279, type: !45)
!3267 = !DILocation(line: 0, scope: !3264)
!3268 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !362, line: 294, type: !45)
!3269 = distinct !DISubprogram(name: "xcalloc", scope: !362, file: !362, line: 294, type: !3133, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3270)
!3270 = !{!3268, !3271}
!3271 = !DILocalVariable(name: "s", arg: 2, scope: !3269, file: !362, line: 294, type: !45)
!3272 = !DILocation(line: 0, scope: !3269, inlinedAt: !3273)
!3273 = distinct !DILocation(line: 281, column: 10, scope: !3264)
!3274 = !DILocation(line: 296, column: 25, scope: !3269, inlinedAt: !3273)
!3275 = !DILocation(line: 0, scope: !3001, inlinedAt: !3276)
!3276 = distinct !DILocation(line: 296, column: 10, scope: !3269, inlinedAt: !3273)
!3277 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3276)
!3278 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3276)
!3279 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3276)
!3280 = !DILocation(line: 281, column: 3, scope: !3264)
!3281 = !DILocation(line: 0, scope: !3269)
!3282 = !DILocation(line: 296, column: 25, scope: !3269)
!3283 = !DILocation(line: 0, scope: !3001, inlinedAt: !3284)
!3284 = distinct !DILocation(line: 296, column: 10, scope: !3269)
!3285 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3284)
!3286 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3284)
!3287 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3284)
!3288 = !DILocation(line: 296, column: 3, scope: !3269)
!3289 = distinct !DISubprogram(name: "xizalloc", scope: !362, file: !362, line: 285, type: !3034, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3290)
!3290 = !{!3291}
!3291 = !DILocalVariable(name: "s", arg: 1, scope: !3289, file: !362, line: 285, type: !381)
!3292 = !DILocation(line: 0, scope: !3289)
!3293 = !DILocalVariable(name: "n", arg: 1, scope: !3294, file: !362, line: 300, type: !381)
!3294 = distinct !DISubprogram(name: "xicalloc", scope: !362, file: !362, line: 300, type: !3149, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3295)
!3295 = !{!3293, !3296}
!3296 = !DILocalVariable(name: "s", arg: 2, scope: !3294, file: !362, line: 300, type: !381)
!3297 = !DILocation(line: 0, scope: !3294, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 287, column: 10, scope: !3289)
!3299 = !DILocalVariable(name: "n", arg: 1, scope: !3300, file: !3041, line: 77, type: !381)
!3300 = distinct !DISubprogram(name: "icalloc", scope: !3041, file: !3041, line: 77, type: !3149, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3301)
!3301 = !{!3299, !3302}
!3302 = !DILocalVariable(name: "s", arg: 2, scope: !3300, file: !3041, line: 77, type: !381)
!3303 = !DILocation(line: 0, scope: !3300, inlinedAt: !3304)
!3304 = distinct !DILocation(line: 302, column: 25, scope: !3294, inlinedAt: !3298)
!3305 = !DILocation(line: 91, column: 10, scope: !3300, inlinedAt: !3304)
!3306 = !DILocation(line: 0, scope: !3001, inlinedAt: !3307)
!3307 = distinct !DILocation(line: 302, column: 10, scope: !3294, inlinedAt: !3298)
!3308 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3307)
!3309 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3307)
!3310 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3307)
!3311 = !DILocation(line: 287, column: 3, scope: !3289)
!3312 = !DILocation(line: 0, scope: !3294)
!3313 = !DILocation(line: 0, scope: !3300, inlinedAt: !3314)
!3314 = distinct !DILocation(line: 302, column: 25, scope: !3294)
!3315 = !DILocation(line: 91, column: 10, scope: !3300, inlinedAt: !3314)
!3316 = !DILocation(line: 0, scope: !3001, inlinedAt: !3317)
!3317 = distinct !DILocation(line: 302, column: 10, scope: !3294)
!3318 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3317)
!3319 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3317)
!3320 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3317)
!3321 = !DILocation(line: 302, column: 3, scope: !3294)
!3322 = distinct !DISubprogram(name: "xmemdup", scope: !362, file: !362, line: 310, type: !3323, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3325)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!40, !647, !45}
!3325 = !{!3326, !3327}
!3326 = !DILocalVariable(name: "p", arg: 1, scope: !3322, file: !362, line: 310, type: !647)
!3327 = !DILocalVariable(name: "s", arg: 2, scope: !3322, file: !362, line: 310, type: !45)
!3328 = !DILocation(line: 0, scope: !3322)
!3329 = !DILocation(line: 0, scope: !3020, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 312, column: 18, scope: !3322)
!3331 = !DILocation(line: 49, column: 25, scope: !3020, inlinedAt: !3330)
!3332 = !DILocation(line: 0, scope: !3001, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 49, column: 10, scope: !3020, inlinedAt: !3330)
!3334 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3333)
!3335 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3333)
!3336 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3333)
!3337 = !DILocalVariable(name: "__dest", arg: 1, scope: !3338, file: !1074, line: 26, type: !1077)
!3338 = distinct !DISubprogram(name: "memcpy", scope: !1074, file: !1074, line: 26, type: !1075, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3339)
!3339 = !{!3337, !3340, !3341}
!3340 = !DILocalVariable(name: "__src", arg: 2, scope: !3338, file: !1074, line: 26, type: !646)
!3341 = !DILocalVariable(name: "__len", arg: 3, scope: !3338, file: !1074, line: 26, type: !45)
!3342 = !DILocation(line: 0, scope: !3338, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 312, column: 10, scope: !3322)
!3344 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3343)
!3345 = !DILocation(line: 312, column: 3, scope: !3322)
!3346 = distinct !DISubprogram(name: "ximemdup", scope: !362, file: !362, line: 316, type: !3347, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3349)
!3347 = !DISubroutineType(types: !3348)
!3348 = !{!40, !647, !381}
!3349 = !{!3350, !3351}
!3350 = !DILocalVariable(name: "p", arg: 1, scope: !3346, file: !362, line: 316, type: !647)
!3351 = !DILocalVariable(name: "s", arg: 2, scope: !3346, file: !362, line: 316, type: !381)
!3352 = !DILocation(line: 0, scope: !3346)
!3353 = !DILocation(line: 0, scope: !3033, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 318, column: 18, scope: !3346)
!3355 = !DILocation(line: 0, scope: !3040, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 55, column: 25, scope: !3033, inlinedAt: !3354)
!3357 = !DILocation(line: 57, column: 26, scope: !3040, inlinedAt: !3356)
!3358 = !DILocation(line: 0, scope: !3001, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 55, column: 10, scope: !3033, inlinedAt: !3354)
!3360 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3359)
!3361 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3359)
!3362 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3359)
!3363 = !DILocation(line: 0, scope: !3338, inlinedAt: !3364)
!3364 = distinct !DILocation(line: 318, column: 10, scope: !3346)
!3365 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3364)
!3366 = !DILocation(line: 318, column: 3, scope: !3346)
!3367 = distinct !DISubprogram(name: "ximemdup0", scope: !362, file: !362, line: 325, type: !3368, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3370)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!41, !647, !381}
!3370 = !{!3371, !3372, !3373}
!3371 = !DILocalVariable(name: "p", arg: 1, scope: !3367, file: !362, line: 325, type: !647)
!3372 = !DILocalVariable(name: "s", arg: 2, scope: !3367, file: !362, line: 325, type: !381)
!3373 = !DILocalVariable(name: "result", scope: !3367, file: !362, line: 327, type: !41)
!3374 = !DILocation(line: 0, scope: !3367)
!3375 = !DILocation(line: 327, column: 30, scope: !3367)
!3376 = !DILocation(line: 0, scope: !3033, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 327, column: 18, scope: !3367)
!3378 = !DILocation(line: 0, scope: !3040, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 55, column: 25, scope: !3033, inlinedAt: !3377)
!3380 = !DILocation(line: 57, column: 26, scope: !3040, inlinedAt: !3379)
!3381 = !DILocation(line: 0, scope: !3001, inlinedAt: !3382)
!3382 = distinct !DILocation(line: 55, column: 10, scope: !3033, inlinedAt: !3377)
!3383 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3382)
!3384 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3382)
!3385 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3382)
!3386 = !DILocation(line: 328, column: 3, scope: !3367)
!3387 = !DILocation(line: 328, column: 13, scope: !3367)
!3388 = !DILocation(line: 0, scope: !3338, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 329, column: 10, scope: !3367)
!3390 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3389)
!3391 = !DILocation(line: 329, column: 3, scope: !3367)
!3392 = distinct !DISubprogram(name: "xstrdup", scope: !362, file: !362, line: 335, type: !641, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !361, retainedNodes: !3393)
!3393 = !{!3394}
!3394 = !DILocalVariable(name: "string", arg: 1, scope: !3392, file: !362, line: 335, type: !48)
!3395 = !DILocation(line: 0, scope: !3392)
!3396 = !DILocation(line: 337, column: 27, scope: !3392)
!3397 = !DILocation(line: 337, column: 43, scope: !3392)
!3398 = !DILocation(line: 0, scope: !3322, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 337, column: 10, scope: !3392)
!3400 = !DILocation(line: 0, scope: !3020, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 312, column: 18, scope: !3322, inlinedAt: !3399)
!3402 = !DILocation(line: 49, column: 25, scope: !3020, inlinedAt: !3401)
!3403 = !DILocation(line: 0, scope: !3001, inlinedAt: !3404)
!3404 = distinct !DILocation(line: 49, column: 10, scope: !3020, inlinedAt: !3401)
!3405 = !DILocation(line: 39, column: 8, scope: !3008, inlinedAt: !3404)
!3406 = !DILocation(line: 39, column: 7, scope: !3001, inlinedAt: !3404)
!3407 = !DILocation(line: 40, column: 5, scope: !3008, inlinedAt: !3404)
!3408 = !DILocation(line: 0, scope: !3338, inlinedAt: !3409)
!3409 = distinct !DILocation(line: 312, column: 10, scope: !3322, inlinedAt: !3399)
!3410 = !DILocation(line: 29, column: 10, scope: !3338, inlinedAt: !3409)
!3411 = !DILocation(line: 337, column: 3, scope: !3392)
!3412 = distinct !DISubprogram(name: "xalloc_die", scope: !396, file: !396, line: 32, type: !201, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !3413)
!3413 = !{!3414}
!3414 = !DILocalVariable(name: "__errstatus", scope: !3415, file: !396, line: 34, type: !3416)
!3415 = distinct !DILexicalBlock(scope: !3412, file: !396, line: 34, column: 3)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3417 = !DILocation(line: 34, column: 3, scope: !3415)
!3418 = !DILocation(line: 0, scope: !3415)
!3419 = !DILocation(line: 40, column: 3, scope: !3412)
!3420 = distinct !DISubprogram(name: "xgetcwd", scope: !398, file: !398, line: 35, type: !3421, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3422)
!3421 = !DISubroutineType(types: !207)
!3422 = !{!3423}
!3423 = !DILocalVariable(name: "cwd", scope: !3420, file: !398, line: 37, type: !41)
!3424 = !DILocation(line: 37, column: 15, scope: !3420)
!3425 = !DILocation(line: 0, scope: !3420)
!3426 = !DILocation(line: 38, column: 9, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3420, file: !398, line: 38, column: 7)
!3428 = !DILocation(line: 38, column: 13, scope: !3427)
!3429 = !DILocation(line: 38, column: 16, scope: !3427)
!3430 = !DILocation(line: 38, column: 22, scope: !3427)
!3431 = !DILocation(line: 38, column: 7, scope: !3420)
!3432 = !DILocation(line: 39, column: 5, scope: !3427)
!3433 = !DILocation(line: 40, column: 3, scope: !3420)
!3434 = distinct !DISubprogram(name: "close_stream", scope: !400, file: !400, line: 55, type: !3435, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3471)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!43, !3437}
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3440)
!3440 = !{!3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3439, file: !81, line: 51, baseType: !43, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3439, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3439, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3439, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3439, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3439, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3439, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3439, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3439, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3439, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3439, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3439, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3439, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3439, file: !81, line: 70, baseType: !3455, size: 64, offset: 832)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3439, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3439, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3439, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3439, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3439, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3439, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3439, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3439, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3439, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3439, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3439, file: !81, line: 93, baseType: !3455, size: 64, offset: 1344)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3439, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3439, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3439, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3439, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3471 = !{!3472, !3473, !3475, !3476}
!3472 = !DILocalVariable(name: "stream", arg: 1, scope: !3434, file: !400, line: 55, type: !3437)
!3473 = !DILocalVariable(name: "some_pending", scope: !3434, file: !400, line: 57, type: !3474)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!3475 = !DILocalVariable(name: "prev_fail", scope: !3434, file: !400, line: 58, type: !3474)
!3476 = !DILocalVariable(name: "fclose_fail", scope: !3434, file: !400, line: 59, type: !3474)
!3477 = !DILocation(line: 0, scope: !3434)
!3478 = !DILocation(line: 57, column: 30, scope: !3434)
!3479 = !DILocalVariable(name: "__stream", arg: 1, scope: !3480, file: !1322, line: 135, type: !3437)
!3480 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1322, file: !1322, line: 135, type: !3435, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !399, retainedNodes: !3481)
!3481 = !{!3479}
!3482 = !DILocation(line: 0, scope: !3480, inlinedAt: !3483)
!3483 = distinct !DILocation(line: 58, column: 27, scope: !3434)
!3484 = !DILocation(line: 137, column: 10, scope: !3480, inlinedAt: !3483)
!3485 = !{!1331, !530, i64 0}
!3486 = !DILocation(line: 58, column: 43, scope: !3434)
!3487 = !DILocation(line: 59, column: 29, scope: !3434)
!3488 = !DILocation(line: 59, column: 45, scope: !3434)
!3489 = !DILocation(line: 69, column: 17, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3434, file: !400, line: 69, column: 7)
!3491 = !DILocation(line: 57, column: 50, scope: !3434)
!3492 = !DILocation(line: 69, column: 33, scope: !3490)
!3493 = !DILocation(line: 69, column: 53, scope: !3490)
!3494 = !DILocation(line: 69, column: 59, scope: !3490)
!3495 = !DILocation(line: 69, column: 7, scope: !3434)
!3496 = !DILocation(line: 71, column: 11, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3490, file: !400, line: 70, column: 5)
!3498 = !DILocation(line: 72, column: 9, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3497, file: !400, line: 71, column: 11)
!3500 = !DILocation(line: 72, column: 15, scope: !3499)
!3501 = !DILocation(line: 77, column: 1, scope: !3434)
!3502 = distinct !DISubprogram(name: "rpl_fclose", scope: !402, file: !402, line: 58, type: !3503, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3539)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!43, !3505}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3507, file: !81, line: 51, baseType: !43, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3507, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3507, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3507, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3507, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3507, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3507, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3507, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3507, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3507, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3507, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3507, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3507, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3507, file: !81, line: 70, baseType: !3523, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3507, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3507, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3507, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3507, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3507, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3507, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3507, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3507, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3507, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3507, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3507, file: !81, line: 93, baseType: !3523, size: 64, offset: 1344)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3507, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3507, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3507, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3507, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DILocalVariable(name: "fp", arg: 1, scope: !3502, file: !402, line: 58, type: !3505)
!3541 = !DILocalVariable(name: "saved_errno", scope: !3502, file: !402, line: 60, type: !43)
!3542 = !DILocalVariable(name: "fd", scope: !3502, file: !402, line: 63, type: !43)
!3543 = !DILocalVariable(name: "result", scope: !3502, file: !402, line: 74, type: !43)
!3544 = !DILocation(line: 0, scope: !3502)
!3545 = !DILocation(line: 63, column: 12, scope: !3502)
!3546 = !DILocation(line: 64, column: 10, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3502, file: !402, line: 64, column: 7)
!3548 = !DILocation(line: 64, column: 7, scope: !3502)
!3549 = !DILocation(line: 65, column: 12, scope: !3547)
!3550 = !DILocation(line: 65, column: 5, scope: !3547)
!3551 = !DILocation(line: 70, column: 9, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3502, file: !402, line: 70, column: 7)
!3553 = !DILocation(line: 70, column: 23, scope: !3552)
!3554 = !DILocation(line: 70, column: 33, scope: !3552)
!3555 = !DILocation(line: 70, column: 26, scope: !3552)
!3556 = !DILocation(line: 70, column: 59, scope: !3552)
!3557 = !DILocation(line: 71, column: 7, scope: !3552)
!3558 = !DILocation(line: 71, column: 10, scope: !3552)
!3559 = !DILocation(line: 70, column: 7, scope: !3502)
!3560 = !DILocation(line: 100, column: 12, scope: !3502)
!3561 = !DILocation(line: 105, column: 7, scope: !3502)
!3562 = !DILocation(line: 72, column: 19, scope: !3552)
!3563 = !DILocation(line: 105, column: 19, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3502, file: !402, line: 105, column: 7)
!3565 = !DILocation(line: 107, column: 13, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3564, file: !402, line: 106, column: 5)
!3567 = !DILocation(line: 109, column: 5, scope: !3566)
!3568 = !DILocation(line: 112, column: 1, scope: !3502)
!3569 = !DISubprogram(name: "fileno", scope: !174, file: !174, line: 809, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3570 = !DISubprogram(name: "fclose", scope: !174, file: !174, line: 178, type: !3503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3571 = !DISubprogram(name: "lseek", scope: !1093, file: !1093, line: 339, type: !3572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!103, !43, !103, !43}
!3574 = distinct !DISubprogram(name: "rpl_fflush", scope: !404, file: !404, line: 130, type: !3575, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3611)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!43, !3577}
!3577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3578, size: 64)
!3578 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3579)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3580)
!3580 = !{!3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3579, file: !81, line: 51, baseType: !43, size: 32)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3579, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3579, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3579, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3579, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3579, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3579, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3579, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3579, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3579, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3579, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3579, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3579, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3579, file: !81, line: 70, baseType: !3595, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3579, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3579, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3579, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3579, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3579, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3579, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3579, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3579, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3579, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3579, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3579, file: !81, line: 93, baseType: !3595, size: 64, offset: 1344)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3579, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3579, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3579, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3579, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3611 = !{!3612}
!3612 = !DILocalVariable(name: "stream", arg: 1, scope: !3574, file: !404, line: 130, type: !3577)
!3613 = !DILocation(line: 0, scope: !3574)
!3614 = !DILocation(line: 151, column: 14, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3574, file: !404, line: 151, column: 7)
!3616 = !DILocation(line: 151, column: 22, scope: !3615)
!3617 = !DILocation(line: 151, column: 27, scope: !3615)
!3618 = !DILocation(line: 151, column: 7, scope: !3574)
!3619 = !DILocation(line: 152, column: 12, scope: !3615)
!3620 = !DILocation(line: 152, column: 5, scope: !3615)
!3621 = !DILocalVariable(name: "fp", arg: 1, scope: !3622, file: !404, line: 42, type: !3577)
!3622 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !404, file: !404, line: 42, type: !3623, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{null, !3577}
!3625 = !{!3621}
!3626 = !DILocation(line: 0, scope: !3622, inlinedAt: !3627)
!3627 = distinct !DILocation(line: 157, column: 3, scope: !3574)
!3628 = !DILocation(line: 44, column: 12, scope: !3629, inlinedAt: !3627)
!3629 = distinct !DILexicalBlock(scope: !3622, file: !404, line: 44, column: 7)
!3630 = !DILocation(line: 44, column: 19, scope: !3629, inlinedAt: !3627)
!3631 = !DILocation(line: 44, column: 7, scope: !3622, inlinedAt: !3627)
!3632 = !DILocation(line: 46, column: 5, scope: !3629, inlinedAt: !3627)
!3633 = !DILocation(line: 159, column: 10, scope: !3574)
!3634 = !DILocation(line: 159, column: 3, scope: !3574)
!3635 = !DILocation(line: 236, column: 1, scope: !3574)
!3636 = !DISubprogram(name: "fflush", scope: !174, file: !174, line: 230, type: !3575, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3637 = distinct !DISubprogram(name: "rpl_fseeko", scope: !406, file: !406, line: 28, type: !3638, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3675)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!43, !3640, !3674, !43}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !3642)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !3643)
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3642, file: !81, line: 51, baseType: !43, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3642, file: !81, line: 54, baseType: !41, size: 64, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3642, file: !81, line: 55, baseType: !41, size: 64, offset: 128)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3642, file: !81, line: 56, baseType: !41, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3642, file: !81, line: 57, baseType: !41, size: 64, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3642, file: !81, line: 58, baseType: !41, size: 64, offset: 320)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3642, file: !81, line: 59, baseType: !41, size: 64, offset: 384)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3642, file: !81, line: 60, baseType: !41, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3642, file: !81, line: 61, baseType: !41, size: 64, offset: 512)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3642, file: !81, line: 64, baseType: !41, size: 64, offset: 576)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3642, file: !81, line: 65, baseType: !41, size: 64, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3642, file: !81, line: 66, baseType: !41, size: 64, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3642, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3642, file: !81, line: 70, baseType: !3658, size: 64, offset: 832)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3642, file: !81, line: 72, baseType: !43, size: 32, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3642, file: !81, line: 73, baseType: !43, size: 32, offset: 928)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3642, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3642, file: !81, line: 77, baseType: !44, size: 16, offset: 1024)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3642, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3642, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3642, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3642, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3642, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3642, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3642, file: !81, line: 93, baseType: !3658, size: 64, offset: 1344)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3642, file: !81, line: 94, baseType: !40, size: 64, offset: 1408)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3642, file: !81, line: 95, baseType: !45, size: 64, offset: 1472)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3642, file: !81, line: 96, baseType: !43, size: 32, offset: 1536)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3642, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!3674 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !174, line: 63, baseType: !103)
!3675 = !{!3676, !3677, !3678, !3679}
!3676 = !DILocalVariable(name: "fp", arg: 1, scope: !3637, file: !406, line: 28, type: !3640)
!3677 = !DILocalVariable(name: "offset", arg: 2, scope: !3637, file: !406, line: 28, type: !3674)
!3678 = !DILocalVariable(name: "whence", arg: 3, scope: !3637, file: !406, line: 28, type: !43)
!3679 = !DILocalVariable(name: "pos", scope: !3680, file: !406, line: 123, type: !3674)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !406, line: 119, column: 5)
!3681 = distinct !DILexicalBlock(scope: !3637, file: !406, line: 55, column: 7)
!3682 = !DILocation(line: 0, scope: !3637)
!3683 = !DILocation(line: 55, column: 12, scope: !3681)
!3684 = !{!1331, !440, i64 16}
!3685 = !DILocation(line: 55, column: 33, scope: !3681)
!3686 = !{!1331, !440, i64 8}
!3687 = !DILocation(line: 55, column: 25, scope: !3681)
!3688 = !DILocation(line: 56, column: 7, scope: !3681)
!3689 = !DILocation(line: 56, column: 15, scope: !3681)
!3690 = !DILocation(line: 56, column: 37, scope: !3681)
!3691 = !{!1331, !440, i64 32}
!3692 = !DILocation(line: 56, column: 29, scope: !3681)
!3693 = !DILocation(line: 57, column: 7, scope: !3681)
!3694 = !DILocation(line: 57, column: 15, scope: !3681)
!3695 = !{!1331, !440, i64 72}
!3696 = !DILocation(line: 57, column: 29, scope: !3681)
!3697 = !DILocation(line: 55, column: 7, scope: !3637)
!3698 = !DILocation(line: 123, column: 26, scope: !3680)
!3699 = !DILocation(line: 123, column: 19, scope: !3680)
!3700 = !DILocation(line: 0, scope: !3680)
!3701 = !DILocation(line: 124, column: 15, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3680, file: !406, line: 124, column: 11)
!3703 = !DILocation(line: 124, column: 11, scope: !3680)
!3704 = !DILocation(line: 135, column: 12, scope: !3680)
!3705 = !DILocation(line: 135, column: 19, scope: !3680)
!3706 = !DILocation(line: 136, column: 12, scope: !3680)
!3707 = !DILocation(line: 136, column: 20, scope: !3680)
!3708 = !{!1331, !784, i64 144}
!3709 = !DILocation(line: 167, column: 7, scope: !3680)
!3710 = !DILocation(line: 169, column: 10, scope: !3637)
!3711 = !DILocation(line: 169, column: 3, scope: !3637)
!3712 = !DILocation(line: 170, column: 1, scope: !3637)
!3713 = !DISubprogram(name: "fseeko", scope: !174, file: !174, line: 736, type: !3714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!43, !3640, !103, !43}
!3716 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !337, file: !337, line: 100, type: !3717, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3720)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!45, !1487, !48, !45, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!3720 = !{!3721, !3722, !3723, !3724, !3725}
!3721 = !DILocalVariable(name: "pwc", arg: 1, scope: !3716, file: !337, line: 100, type: !1487)
!3722 = !DILocalVariable(name: "s", arg: 2, scope: !3716, file: !337, line: 100, type: !48)
!3723 = !DILocalVariable(name: "n", arg: 3, scope: !3716, file: !337, line: 100, type: !45)
!3724 = !DILocalVariable(name: "ps", arg: 4, scope: !3716, file: !337, line: 100, type: !3719)
!3725 = !DILocalVariable(name: "ret", scope: !3716, file: !337, line: 130, type: !45)
!3726 = !DILocation(line: 0, scope: !3716)
!3727 = !DILocation(line: 105, column: 9, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3716, file: !337, line: 105, column: 7)
!3729 = !DILocation(line: 105, column: 7, scope: !3716)
!3730 = !DILocation(line: 117, column: 10, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3716, file: !337, line: 117, column: 7)
!3732 = !DILocation(line: 117, column: 7, scope: !3716)
!3733 = !DILocation(line: 130, column: 16, scope: !3716)
!3734 = !DILocation(line: 135, column: 11, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3716, file: !337, line: 135, column: 7)
!3736 = !DILocation(line: 135, column: 25, scope: !3735)
!3737 = !DILocation(line: 135, column: 30, scope: !3735)
!3738 = !DILocation(line: 135, column: 7, scope: !3716)
!3739 = !DILocalVariable(name: "ps", arg: 1, scope: !3740, file: !1461, line: 1135, type: !3719)
!3740 = distinct !DISubprogram(name: "mbszero", scope: !1461, file: !1461, line: 1135, type: !3741, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !3719}
!3743 = !{!3739}
!3744 = !DILocation(line: 0, scope: !3740, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 137, column: 5, scope: !3735)
!3746 = !DILocalVariable(name: "__dest", arg: 1, scope: !3747, file: !1074, line: 57, type: !40)
!3747 = distinct !DISubprogram(name: "memset", scope: !1074, file: !1074, line: 57, type: !1470, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !336, retainedNodes: !3748)
!3748 = !{!3746, !3749, !3750}
!3749 = !DILocalVariable(name: "__ch", arg: 2, scope: !3747, file: !1074, line: 57, type: !43)
!3750 = !DILocalVariable(name: "__len", arg: 3, scope: !3747, file: !1074, line: 57, type: !45)
!3751 = !DILocation(line: 0, scope: !3747, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 1137, column: 3, scope: !3740, inlinedAt: !3745)
!3753 = !DILocation(line: 59, column: 10, scope: !3747, inlinedAt: !3752)
!3754 = !DILocation(line: 137, column: 5, scope: !3735)
!3755 = !DILocation(line: 138, column: 11, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3716, file: !337, line: 138, column: 7)
!3757 = !DILocation(line: 138, column: 7, scope: !3716)
!3758 = !DILocation(line: 139, column: 5, scope: !3756)
!3759 = !DILocation(line: 143, column: 26, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3716, file: !337, line: 143, column: 7)
!3761 = !DILocation(line: 143, column: 41, scope: !3760)
!3762 = !DILocation(line: 143, column: 7, scope: !3716)
!3763 = !DILocation(line: 145, column: 15, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3765, file: !337, line: 145, column: 11)
!3765 = distinct !DILexicalBlock(scope: !3760, file: !337, line: 144, column: 5)
!3766 = !DILocation(line: 145, column: 11, scope: !3765)
!3767 = !DILocation(line: 146, column: 32, scope: !3764)
!3768 = !DILocation(line: 146, column: 16, scope: !3764)
!3769 = !DILocation(line: 146, column: 14, scope: !3764)
!3770 = !DILocation(line: 146, column: 9, scope: !3764)
!3771 = !DILocation(line: 286, column: 1, scope: !3716)
!3772 = !DISubprogram(name: "mbsinit", scope: !3773, file: !3773, line: 293, type: !3774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !521)
!3773 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!43, !3776}
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!3778 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !408, file: !408, line: 27, type: !2985, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3779)
!3779 = !{!3780, !3781, !3782, !3783}
!3780 = !DILocalVariable(name: "ptr", arg: 1, scope: !3778, file: !408, line: 27, type: !40)
!3781 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3778, file: !408, line: 27, type: !45)
!3782 = !DILocalVariable(name: "size", arg: 3, scope: !3778, file: !408, line: 27, type: !45)
!3783 = !DILocalVariable(name: "nbytes", scope: !3778, file: !408, line: 29, type: !45)
!3784 = !DILocation(line: 0, scope: !3778)
!3785 = !DILocation(line: 30, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3778, file: !408, line: 30, column: 7)
!3787 = !DILocalVariable(name: "ptr", arg: 1, scope: !3788, file: !3074, line: 2057, type: !40)
!3788 = distinct !DISubprogram(name: "rpl_realloc", scope: !3074, file: !3074, line: 2057, type: !3066, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3789)
!3789 = !{!3787, !3790}
!3790 = !DILocalVariable(name: "size", arg: 2, scope: !3788, file: !3074, line: 2057, type: !45)
!3791 = !DILocation(line: 0, scope: !3788, inlinedAt: !3792)
!3792 = distinct !DILocation(line: 37, column: 10, scope: !3778)
!3793 = !DILocation(line: 2059, column: 24, scope: !3788, inlinedAt: !3792)
!3794 = !DILocation(line: 2059, column: 10, scope: !3788, inlinedAt: !3792)
!3795 = !DILocation(line: 37, column: 3, scope: !3778)
!3796 = !DILocation(line: 32, column: 7, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3786, file: !408, line: 31, column: 5)
!3798 = !DILocation(line: 32, column: 13, scope: !3797)
!3799 = !DILocation(line: 33, column: 7, scope: !3797)
!3800 = !DILocation(line: 38, column: 1, scope: !3778)
!3801 = distinct !DISubprogram(name: "hard_locale", scope: !411, file: !411, line: 28, type: !3802, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3804)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!64, !43}
!3804 = !{!3805, !3806}
!3805 = !DILocalVariable(name: "category", arg: 1, scope: !3801, file: !411, line: 28, type: !43)
!3806 = !DILocalVariable(name: "locale", scope: !3801, file: !411, line: 30, type: !3807)
!3807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 2056, elements: !3808)
!3808 = !{!3809}
!3809 = !DISubrange(count: 257)
!3810 = !DILocation(line: 0, scope: !3801)
!3811 = !DILocation(line: 30, column: 3, scope: !3801)
!3812 = !DILocation(line: 30, column: 8, scope: !3801)
!3813 = !DILocation(line: 32, column: 7, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3801, file: !411, line: 32, column: 7)
!3815 = !DILocation(line: 32, column: 7, scope: !3801)
!3816 = !DILocalVariable(name: "__s1", arg: 1, scope: !3817, file: !479, line: 1359, type: !48)
!3817 = distinct !DISubprogram(name: "streq", scope: !479, file: !479, line: 1359, type: !480, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3818)
!3818 = !{!3816, !3819}
!3819 = !DILocalVariable(name: "__s2", arg: 2, scope: !3817, file: !479, line: 1359, type: !48)
!3820 = !DILocation(line: 0, scope: !3817, inlinedAt: !3821)
!3821 = distinct !DILocation(line: 35, column: 9, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3801, file: !411, line: 35, column: 7)
!3823 = !DILocation(line: 1361, column: 11, scope: !3817, inlinedAt: !3821)
!3824 = !DILocation(line: 1361, column: 10, scope: !3817, inlinedAt: !3821)
!3825 = !DILocation(line: 35, column: 29, scope: !3822)
!3826 = !DILocation(line: 0, scope: !3817, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 35, column: 32, scope: !3822)
!3828 = !DILocation(line: 1361, column: 11, scope: !3817, inlinedAt: !3827)
!3829 = !DILocation(line: 1361, column: 10, scope: !3817, inlinedAt: !3827)
!3830 = !DILocation(line: 35, column: 7, scope: !3801)
!3831 = !DILocation(line: 46, column: 3, scope: !3801)
!3832 = !DILocation(line: 47, column: 1, scope: !3801)
!3833 = distinct !DISubprogram(name: "setlocale_null_r", scope: !413, file: !413, line: 154, type: !3834, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3836)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!43, !43, !41, !45}
!3836 = !{!3837, !3838, !3839}
!3837 = !DILocalVariable(name: "category", arg: 1, scope: !3833, file: !413, line: 154, type: !43)
!3838 = !DILocalVariable(name: "buf", arg: 2, scope: !3833, file: !413, line: 154, type: !41)
!3839 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3833, file: !413, line: 154, type: !45)
!3840 = !DILocation(line: 0, scope: !3833)
!3841 = !DILocation(line: 159, column: 10, scope: !3833)
!3842 = !DILocation(line: 159, column: 3, scope: !3833)
!3843 = distinct !DISubprogram(name: "setlocale_null", scope: !413, file: !413, line: 186, type: !3844, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !412, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!48, !43}
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "category", arg: 1, scope: !3843, file: !413, line: 186, type: !43)
!3848 = !DILocation(line: 0, scope: !3843)
!3849 = !DILocation(line: 189, column: 10, scope: !3843)
!3850 = !DILocation(line: 189, column: 3, scope: !3843)
!3851 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !415, file: !415, line: 35, type: !3844, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3852)
!3852 = !{!3853, !3854}
!3853 = !DILocalVariable(name: "category", arg: 1, scope: !3851, file: !415, line: 35, type: !43)
!3854 = !DILocalVariable(name: "result", scope: !3851, file: !415, line: 37, type: !48)
!3855 = !DILocation(line: 0, scope: !3851)
!3856 = !DILocation(line: 37, column: 24, scope: !3851)
!3857 = !DILocation(line: 62, column: 3, scope: !3851)
!3858 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !415, file: !415, line: 66, type: !3834, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3859)
!3859 = !{!3860, !3861, !3862, !3863, !3864}
!3860 = !DILocalVariable(name: "category", arg: 1, scope: !3858, file: !415, line: 66, type: !43)
!3861 = !DILocalVariable(name: "buf", arg: 2, scope: !3858, file: !415, line: 66, type: !41)
!3862 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3858, file: !415, line: 66, type: !45)
!3863 = !DILocalVariable(name: "result", scope: !3858, file: !415, line: 111, type: !48)
!3864 = !DILocalVariable(name: "length", scope: !3865, file: !415, line: 125, type: !45)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !415, line: 124, column: 5)
!3866 = distinct !DILexicalBlock(scope: !3858, file: !415, line: 113, column: 7)
!3867 = !DILocation(line: 0, scope: !3858)
!3868 = !DILocation(line: 0, scope: !3851, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 111, column: 24, scope: !3858)
!3870 = !DILocation(line: 37, column: 24, scope: !3851, inlinedAt: !3869)
!3871 = !DILocation(line: 113, column: 14, scope: !3866)
!3872 = !DILocation(line: 113, column: 7, scope: !3858)
!3873 = !DILocation(line: 116, column: 19, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3875, file: !415, line: 116, column: 11)
!3875 = distinct !DILexicalBlock(scope: !3866, file: !415, line: 114, column: 5)
!3876 = !DILocation(line: 116, column: 11, scope: !3875)
!3877 = !DILocation(line: 120, column: 16, scope: !3874)
!3878 = !DILocation(line: 120, column: 9, scope: !3874)
!3879 = !DILocation(line: 125, column: 23, scope: !3865)
!3880 = !DILocation(line: 0, scope: !3865)
!3881 = !DILocation(line: 126, column: 18, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3865, file: !415, line: 126, column: 11)
!3883 = !DILocation(line: 126, column: 11, scope: !3865)
!3884 = !DILocation(line: 128, column: 39, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3882, file: !415, line: 127, column: 9)
!3886 = !DILocalVariable(name: "__dest", arg: 1, scope: !3887, file: !1074, line: 26, type: !1077)
!3887 = distinct !DISubprogram(name: "memcpy", scope: !1074, file: !1074, line: 26, type: !1075, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3888)
!3888 = !{!3886, !3889, !3890}
!3889 = !DILocalVariable(name: "__src", arg: 2, scope: !3887, file: !1074, line: 26, type: !646)
!3890 = !DILocalVariable(name: "__len", arg: 3, scope: !3887, file: !1074, line: 26, type: !45)
!3891 = !DILocation(line: 0, scope: !3887, inlinedAt: !3892)
!3892 = distinct !DILocation(line: 128, column: 11, scope: !3885)
!3893 = !DILocation(line: 29, column: 10, scope: !3887, inlinedAt: !3892)
!3894 = !DILocation(line: 129, column: 11, scope: !3885)
!3895 = !DILocation(line: 133, column: 23, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !415, line: 133, column: 15)
!3897 = distinct !DILexicalBlock(scope: !3882, file: !415, line: 132, column: 9)
!3898 = !DILocation(line: 133, column: 15, scope: !3897)
!3899 = !DILocation(line: 138, column: 44, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3896, file: !415, line: 134, column: 13)
!3901 = !DILocation(line: 0, scope: !3887, inlinedAt: !3902)
!3902 = distinct !DILocation(line: 138, column: 15, scope: !3900)
!3903 = !DILocation(line: 29, column: 10, scope: !3887, inlinedAt: !3902)
!3904 = !DILocation(line: 139, column: 15, scope: !3900)
!3905 = !DILocation(line: 139, column: 32, scope: !3900)
!3906 = !DILocation(line: 140, column: 13, scope: !3900)
!3907 = !DILocation(line: 0, scope: !3866)
!3908 = !DILocation(line: 145, column: 1, scope: !3858)
