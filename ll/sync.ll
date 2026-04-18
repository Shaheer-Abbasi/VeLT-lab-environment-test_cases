; ModuleID = 'src/sync.bc'
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
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION] [FILE]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [137 x i8] c"Synchronize cached writes to persistent storage\0A\0AIf one or more files are specified, sync only them,\0Aor their containing file systems.\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"  -d, --data             sync only file data, no unneeded metadata\0A\00", align 1
@.str.5 = private unnamed_addr constant [71 x i8] c"  -f, --file-system      sync the file systems that contain the files\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"df\00", align 1
@long_options = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Giuseppe Scrivano\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [45 x i8] c"cannot specify both --data and --file-system\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"--data needs at least one argument\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !54
@.str.17 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.39 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.47 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.48 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"file-system\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"error opening %s\00", align 1
@.str.57 = private unnamed_addr constant [36 x i8] c"couldn't reset non-blocking mode %s\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"error syncing %s\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"failed to close %s\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0), align 8, !dbg !153
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !158
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !163
@.str.25 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.26 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.27 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !165
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.29 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !201
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !171
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !197
@.str.1.35 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.37 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.36 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !199
@.str.4.30 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.31 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.32 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !206
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !224
@.str.60 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.61 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !230
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.66, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.67, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.68, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.69, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.72, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.73, i32 0, i32 0), i8* null], align 8, !dbg !266
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !278
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !296
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !326
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !333
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !298
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !335
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !284
@.str.10.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.74 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.77 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !303
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
@.str.23 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !341
@exit_failure = dso_local global i32 1, align 4, !dbg !349
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.119 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.120 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !355
@.str.137 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !445 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !449, metadata !DIExpression()), !dbg !450
  %3 = icmp eq i32 %0, 0, !dbg !451
  br i1 %3, label %9, label %4, !dbg !453

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !454, !tbaa !456
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #33, !dbg !454
  %7 = load i8*, i8** @program_name, align 8, !dbg !454, !tbaa !456
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #33, !dbg !454
  br label %54, !dbg !454

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #33, !dbg !460
  %11 = load i8*, i8** @program_name, align 8, !dbg !460, !tbaa !456
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #33, !dbg !460
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([137 x i8], [137 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #33, !dbg !462
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !462, !tbaa !456
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !462
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #33, !dbg !463
  tail call fastcc void @oputs_(i8* noundef %16), !dbg !463
  %17 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #33, !dbg !464
  tail call fastcc void @oputs_(i8* noundef %17), !dbg !464
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #33, !dbg !465
  tail call fastcc void @oputs_(i8* noundef %18), !dbg !465
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #33, !dbg !466
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !466
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !467, metadata !DIExpression()) #33, !dbg !486
  %20 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %20) #33, !dbg !488
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !472, metadata !DIExpression()) #33, !dbg !489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %20, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #33, !dbg !489
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !481, metadata !DIExpression()) #33, !dbg !486
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !482, metadata !DIExpression()) #33, !dbg !486
  %21 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !490
  call void @llvm.dbg.value(metadata %struct.infomap* %21, metadata !482, metadata !DIExpression()) #33, !dbg !486
  br label %22, !dbg !491

22:                                               ; preds = %27, %9
  %23 = phi i8* [ %30, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %24 = phi %struct.infomap* [ %28, %27 ], [ %21, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %24, metadata !482, metadata !DIExpression()) #33, !dbg !486
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !499
  call void @llvm.dbg.value(metadata i8* %23, metadata !498, metadata !DIExpression()) #33, !dbg !499
  %25 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %23) #34, !dbg !501
  %26 = icmp eq i32 %25, 0, !dbg !502
  br i1 %26, label %32, label %27, !dbg !491

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %24, i64 1, !dbg !503
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !482, metadata !DIExpression()) #33, !dbg !486
  %29 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 0, i32 0, !dbg !504
  %30 = load i8*, i8** %29, align 8, !dbg !504, !tbaa !505
  %31 = icmp eq i8* %30, null, !dbg !507
  br i1 %31, label %32, label %22, !dbg !508, !llvm.loop !509

32:                                               ; preds = %27, %22
  %33 = phi %struct.infomap* [ %24, %22 ], [ %28, %27 ]
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 0, i32 1, !dbg !511
  %35 = load i8*, i8** %34, align 8, !dbg !511, !tbaa !513
  %36 = icmp eq i8* %35, null, !dbg !514
  %37 = select i1 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %35, !dbg !515
  call void @llvm.dbg.value(metadata i8* %37, metadata !481, metadata !DIExpression()) #33, !dbg !486
  tail call void @emit_bug_reporting_address() #33, !dbg !516
  %38 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #33, !dbg !517
  call void @llvm.dbg.value(metadata i8* %38, metadata !484, metadata !DIExpression()) #33, !dbg !486
  %39 = icmp eq i8* %38, null, !dbg !518
  br i1 %39, label %47, label %40, !dbg !520

40:                                               ; preds = %32
  %41 = tail call i32 @strncmp(i8* noundef nonnull %38, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 noundef 3) #34, !dbg !521
  %42 = icmp eq i32 %41, 0, !dbg !521
  br i1 %42, label %47, label %43, !dbg !522

43:                                               ; preds = %40
  %44 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.48, i64 0, i64 0), i32 noundef 5) #33, !dbg !523
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !523, !tbaa !456
  %46 = tail call i32 @fputs_unlocked(i8* noundef %44, %struct._IO_FILE* noundef %45) #33, !dbg !523
  br label %47, !dbg !525

47:                                               ; preds = %32, %40, %43
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !498, metadata !DIExpression()) #33, !dbg !526
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !485, metadata !DIExpression()) #33, !dbg !486
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i32 noundef 5) #33, !dbg !528
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %48, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)) #33, !dbg !528
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0), i32 noundef 5) #33, !dbg !529
  %51 = icmp eq i8* %37, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), !dbg !529
  %52 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !529
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %50, i8* noundef %37, i8* noundef %52) #33, !dbg !529
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %20) #33, !dbg !530
  br label %54

54:                                               ; preds = %47, %4
  tail call void @exit(i32 noundef %0) #35, !dbg !531
  unreachable, !dbg !531
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !532 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !537 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !56 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !61, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %0, metadata !62, metadata !DIExpression()), !dbg !542
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !543, !tbaa !544
  %3 = icmp eq i32 %2, -1, !dbg !546
  br i1 %3, label %4, label %16, !dbg !547

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0)) #33, !dbg !548
  call void @llvm.dbg.value(metadata i8* %5, metadata !63, metadata !DIExpression()), !dbg !549
  %6 = icmp eq i8* %5, null, !dbg !550
  br i1 %6, label %14, label %7, !dbg !551

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !552, !tbaa !553
  %9 = icmp eq i8 %8, 0, !dbg !552
  br i1 %9, label %14, label %10, !dbg !554

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !492, metadata !DIExpression()) #33, !dbg !555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), metadata !498, metadata !DIExpression()) #33, !dbg !555
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0)) #34, !dbg !557
  %12 = icmp eq i32 %11, 0, !dbg !558
  %13 = zext i1 %12 to i32, !dbg !554
  br label %14, !dbg !554

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !559, !tbaa !544
  br label %16, !dbg !560

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !561
  %18 = icmp eq i32 %17, 0, !dbg !561
  br i1 %18, label %22, label %19, !dbg !563

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !564, !tbaa !456
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !564
  br label %121, !dbg !566

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !66, metadata !DIExpression()), !dbg !542
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0)) #34, !dbg !567
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !568
  call void @llvm.dbg.value(metadata i8* %24, metadata !68, metadata !DIExpression()), !dbg !542
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #34, !dbg !569
  call void @llvm.dbg.value(metadata i8* %25, metadata !69, metadata !DIExpression()), !dbg !542
  %26 = icmp eq i8* %25, null, !dbg !570
  br i1 %26, label %53, label %27, !dbg !571

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !572
  br i1 %28, label %53, label %29, !dbg !573

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !70, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 0, metadata !74, metadata !DIExpression()), !dbg !574
  %30 = icmp ult i8* %24, %25, !dbg !575
  br i1 %30, label %31, label %53, !dbg !576

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #36, !dbg !542
  %33 = load i16*, i16** %32, align 8, !tbaa !456
  br label %34, !dbg !576

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !70, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.value(metadata i64 %36, metadata !74, metadata !DIExpression()), !dbg !574
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !577
  call void @llvm.dbg.value(metadata i8* %37, metadata !70, metadata !DIExpression()), !dbg !574
  %38 = load i8, i8* %35, align 1, !dbg !577, !tbaa !553
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !577
  %41 = load i16, i16* %40, align 2, !dbg !577, !tbaa !578
  %42 = lshr i16 %41, 13, !dbg !580
  %43 = and i16 %42, 1, !dbg !580
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !581
  call void @llvm.dbg.value(metadata i64 %45, metadata !74, metadata !DIExpression()), !dbg !574
  %46 = icmp ult i8* %37, %25, !dbg !575
  %47 = icmp ult i64 %45, 2, !dbg !582
  %48 = select i1 %46, i1 %47, i1 false, !dbg !582
  br i1 %48, label %34, label %49, !dbg !576, !llvm.loop !583

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !584
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !586
  %52 = xor i1 %50, true, !dbg !586
  br label %53, !dbg !586

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !542
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %54, metadata !69, metadata !DIExpression()), !dbg !542
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #34, !dbg !587
  call void @llvm.dbg.value(metadata i64 %56, metadata !75, metadata !DIExpression()), !dbg !542
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !588
  call void @llvm.dbg.value(metadata i8* %57, metadata !76, metadata !DIExpression()), !dbg !542
  br label %58, !dbg !589

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !542
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i8* %59, metadata !76, metadata !DIExpression()), !dbg !542
  %61 = load i8, i8* %59, align 1, !dbg !590, !tbaa !553
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !591

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !592
  %64 = load i8, i8* %63, align 1, !dbg !595, !tbaa !553
  %65 = icmp ne i8 %64, 45, !dbg !596
  %66 = select i1 %65, i1 %60, i1 false, !dbg !597
  br label %67, !dbg !597

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !66, metadata !DIExpression()), !dbg !542
  %69 = tail call i16** @__ctype_b_loc() #36, !dbg !598
  %70 = load i16*, i16** %69, align 8, !dbg !598, !tbaa !456
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !598
  %73 = load i16, i16* %72, align 2, !dbg !598, !tbaa !578
  %74 = and i16 %73, 8192, !dbg !598
  %75 = icmp eq i16 %74, 0, !dbg !598
  br i1 %75, label %89, label %76, !dbg !600

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !601
  br i1 %77, label %91, label %78, !dbg !604

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !605
  %80 = load i8, i8* %79, align 1, !dbg !605, !tbaa !553
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !605
  %83 = load i16, i16* %82, align 2, !dbg !605, !tbaa !578
  %84 = and i16 %83, 8192, !dbg !605
  %85 = icmp eq i16 %84, 0, !dbg !605
  br i1 %85, label %86, label %91, !dbg !606

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !607
  br i1 %88, label %89, label %91, !dbg !607

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !609
  call void @llvm.dbg.value(metadata i8* %90, metadata !76, metadata !DIExpression()), !dbg !542
  br label %58, !dbg !589, !llvm.loop !610

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !612
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !612, !tbaa !456
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), metadata !498, metadata !DIExpression()) #33, !dbg !613
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !615
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !617
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !621
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !623
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !625
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !492, metadata !DIExpression()) #33, !dbg !631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), metadata !136, metadata !DIExpression()), !dbg !542
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i64 0, i64 0), i64 noundef 6) #34, !dbg !633
  %96 = icmp eq i32 %95, 0, !dbg !633
  br i1 %96, label %100, label %97, !dbg !635

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i64 noundef 9) #34, !dbg !636
  %99 = icmp eq i32 %98, 0, !dbg !636
  br i1 %99, label %100, label %103, !dbg !637

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !638
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #33, !dbg !638
  br label %106, !dbg !640

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !641
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.39, i64 0, i64 0), i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #33, !dbg !641
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !456
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !643
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !644, !tbaa !456
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !644
  %111 = ptrtoint i8* %59 to i64, !dbg !645
  %112 = sub i64 %111, %92, !dbg !645
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !645, !tbaa !456
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !645
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !646, !tbaa !456
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !646
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !647, !tbaa !456
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !647
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !648, !tbaa !456
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !648
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !649
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
declare !dbg !650 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !654 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !658 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !664 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !669, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8** %1, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8 0, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8 0, metadata !672, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8 1, metadata !673, metadata !DIExpression()), !dbg !677
  %3 = load i8*, i8** %1, align 8, !dbg !678, !tbaa !456
  tail call void @set_program_name(i8* noundef %3) #33, !dbg !679
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #33, !dbg !680
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #33, !dbg !681
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #33, !dbg !682
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #33, !dbg !683
  br label %8, !dbg !684

8:                                                ; preds = %11, %2
  %9 = phi i1 [ false, %2 ], [ true, %11 ]
  %10 = phi i1 [ false, %2 ], [ %12, %11 ]
  br label %11, !dbg !684

11:                                               ; preds = %8, %11
  %12 = phi i1 [ true, %11 ], [ %10, %8 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !671, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.value(metadata i8 poison, metadata !672, metadata !DIExpression()), !dbg !677
  %13 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #33, !dbg !685
  call void @llvm.dbg.value(metadata i32 %13, metadata !674, metadata !DIExpression()), !dbg !677
  switch i32 %13, label %20 [
    i32 -1, label %21
    i32 100, label %11
    i32 102, label %8
    i32 -2, label %14
    i32 -3, label %15
  ], !dbg !684, !llvm.loop !686

14:                                               ; preds = %11
  tail call void @usage(i32 noundef 0) #37, !dbg !688
  unreachable, !dbg !688

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !691, !tbaa !456
  %17 = load i8*, i8** @Version, align 8, !dbg !691, !tbaa !456
  %18 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #33, !dbg !691
  %19 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #33, !dbg !691
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* noundef %17, i8* noundef %18, i8* noundef %19, i8* noundef null) #33, !dbg !691
  tail call void @exit(i32 noundef 0) #35, !dbg !691
  unreachable, !dbg !691

20:                                               ; preds = %11
  tail call void @usage(i32 noundef 1) #37, !dbg !692
  unreachable, !dbg !692

21:                                               ; preds = %11
  %22 = load i32, i32* @optind, align 4, !dbg !693, !tbaa !544
  %23 = icmp slt i32 %22, %0, !dbg !694
  call void @llvm.dbg.value(metadata i1 %23, metadata !675, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !677
  %24 = and i1 %12, %9, !dbg !695
  br i1 %24, label %25, label %27, !dbg !695

25:                                               ; preds = %21
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #33, !dbg !697
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %26) #33, !dbg !697
  unreachable, !dbg !697

27:                                               ; preds = %21
  %28 = xor i1 %12, true, !dbg !695
  %29 = select i1 %23, i1 true, i1 %28, !dbg !698
  br i1 %29, label %32, label %30, !dbg !698

30:                                               ; preds = %27
  %31 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #33, !dbg !700
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %31) #33, !dbg !700
  unreachable, !dbg !700

32:                                               ; preds = %27
  %33 = zext i1 %12 to i32, !dbg !701
  %34 = select i1 %9, i32 2, i32 %33, !dbg !701
  %35 = select i1 %23, i32 %34, i32 3, !dbg !701
  call void @llvm.dbg.value(metadata i32 %35, metadata !676, metadata !DIExpression()), !dbg !677
  br i1 %23, label %37, label %36, !dbg !703

36:                                               ; preds = %32
  tail call void @sync() #33, !dbg !704
  br label %96, !dbg !704

37:                                               ; preds = %32, %87
  %38 = phi i32 [ %91, %87 ], [ %22, %32 ]
  %39 = phi i1 [ %89, %87 ], [ true, %32 ]
  %40 = sext i32 %38 to i64, !dbg !706
  %41 = getelementptr inbounds i8*, i8** %1, i64 %40, !dbg !706
  %42 = load i8*, i8** %41, align 8, !dbg !706, !tbaa !456
  call void @llvm.dbg.value(metadata i32 %35, metadata !710, metadata !DIExpression()) #33, !dbg !726
  call void @llvm.dbg.value(metadata i8* %42, metadata !715, metadata !DIExpression()) #33, !dbg !726
  call void @llvm.dbg.value(metadata i32 2048, metadata !716, metadata !DIExpression()) #33, !dbg !726
  %43 = tail call i32 (i8*, i32, ...) @open(i8* noundef %42, i32 noundef 2048) #33, !dbg !728
  call void @llvm.dbg.value(metadata i32 %43, metadata !717, metadata !DIExpression()) #33, !dbg !726
  %44 = icmp slt i32 %43, 0, !dbg !729
  br i1 %44, label %45, label %50, !dbg !730

45:                                               ; preds = %37
  %46 = tail call i32* @__errno_location() #36, !dbg !731
  %47 = load i32, i32* %46, align 4, !dbg !731, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %47, metadata !718, metadata !DIExpression()) #33, !dbg !732
  %48 = tail call i32 (i8*, i32, ...) @open(i8* noundef %42, i32 noundef 2049) #33, !dbg !733
  call void @llvm.dbg.value(metadata i32 %48, metadata !717, metadata !DIExpression()) #33, !dbg !726
  %49 = icmp slt i32 %48, 0, !dbg !735
  br i1 %49, label %82, label %50, !dbg !737

50:                                               ; preds = %45, %37
  %51 = phi i32 [ %43, %37 ], [ %48, %45 ], !dbg !726
  call void @llvm.dbg.value(metadata i32 %51, metadata !717, metadata !DIExpression()) #33, !dbg !726
  call void @llvm.dbg.value(metadata i8 1, metadata !721, metadata !DIExpression()) #33, !dbg !726
  %52 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %51, i32 noundef 3) #33, !dbg !738
  call void @llvm.dbg.value(metadata i32 %52, metadata !722, metadata !DIExpression()) #33, !dbg !726
  %53 = icmp eq i32 %52, -1, !dbg !739
  br i1 %53, label %69, label %54, !dbg !741

54:                                               ; preds = %50
  %55 = and i32 %52, -2049, !dbg !742
  %56 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %51, i32 noundef 4, i32 noundef %55) #33, !dbg !743
  %57 = icmp slt i32 %56, 0, !dbg !744
  br i1 %57, label %69, label %58, !dbg !745

58:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i8 poison, metadata !721, metadata !DIExpression()) #33, !dbg !726
  call void @llvm.dbg.value(metadata i32 -1, metadata !723, metadata !DIExpression()) #33, !dbg !746
  switch i32 %35, label %65 [
    i32 1, label %59
    i32 0, label %61
    i32 2, label %63
  ], !dbg !747

59:                                               ; preds = %58
  %60 = tail call i32 @fdatasync(i32 noundef %51) #33, !dbg !748
  call void @llvm.dbg.value(metadata i32 %60, metadata !723, metadata !DIExpression()) #33, !dbg !746
  br label %66, !dbg !750

61:                                               ; preds = %58
  %62 = tail call i32 @fsync(i32 noundef %51) #33, !dbg !751
  call void @llvm.dbg.value(metadata i32 %62, metadata !723, metadata !DIExpression()) #33, !dbg !746
  br label %66, !dbg !752

63:                                               ; preds = %58
  %64 = tail call i32 @syncfs(i32 noundef %51) #33, !dbg !753
  call void @llvm.dbg.value(metadata i32 %64, metadata !723, metadata !DIExpression()) #33, !dbg !746
  br label %66, !dbg !754

65:                                               ; preds = %58
  unreachable, !dbg !755

66:                                               ; preds = %63, %61, %59
  %67 = phi i32 [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], !dbg !756
  call void @llvm.dbg.value(metadata i32 %67, metadata !723, metadata !DIExpression()) #33, !dbg !746
  %68 = icmp slt i32 %67, 0, !dbg !757
  br i1 %68, label %69, label %75, !dbg !759

69:                                               ; preds = %66, %54, %50
  %70 = phi i8* [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0), %50 ], [ getelementptr inbounds ([36 x i8], [36 x i8]* @.str.57, i64 0, i64 0), %54 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i64 0, i64 0), %66 ]
  %71 = tail call i32* @__errno_location() #36, !dbg !726
  %72 = load i32, i32* %71, align 4, !dbg !726, !tbaa !544
  %73 = tail call i8* @dcgettext(i8* noundef null, i8* noundef nonnull %70, i32 noundef 5) #33, !dbg !726
  %74 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %42) #33, !dbg !726
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %72, i8* noundef %73, i8* noundef %74) #33, !dbg !726
  br label %75, !dbg !760

75:                                               ; preds = %69, %66
  %76 = phi i1 [ true, %66 ], [ false, %69 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !721, metadata !DIExpression()) #33, !dbg !726
  %77 = tail call i32 @close(i32 noundef %51) #33, !dbg !760
  %78 = icmp slt i32 %77, 0, !dbg !762
  br i1 %78, label %79, label %87, !dbg !763

79:                                               ; preds = %75
  %80 = tail call i32* @__errno_location() #36, !dbg !764
  %81 = load i32, i32* %80, align 4, !dbg !764, !tbaa !544
  call void @llvm.dbg.value(metadata i8 0, metadata !721, metadata !DIExpression()) #33, !dbg !726
  br label %82, !dbg !766

82:                                               ; preds = %79, %45
  %83 = phi i8* [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.59, i64 0, i64 0), %79 ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i64 0, i64 0), %45 ]
  %84 = phi i32 [ %81, %79 ], [ %47, %45 ]
  %85 = tail call i8* @dcgettext(i8* noundef null, i8* noundef nonnull %83, i32 noundef 5) #33, !dbg !726
  %86 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %42) #33, !dbg !726
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %84, i8* noundef %85, i8* noundef %86) #33, !dbg !726
  br label %87, !dbg !767

87:                                               ; preds = %75, %82
  %88 = phi i1 [ %76, %75 ], [ false, %82 ], !dbg !726
  %89 = and i1 %39, %88, !dbg !768
  call void @llvm.dbg.value(metadata i1 %89, metadata !673, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !677
  %90 = load i32, i32* @optind, align 4, !dbg !769, !tbaa !544
  %91 = add nsw i32 %90, 1, !dbg !769
  store i32 %91, i32* @optind, align 4, !dbg !769, !tbaa !544
  call void @llvm.dbg.value(metadata i8 poison, metadata !673, metadata !DIExpression()), !dbg !677
  %92 = icmp slt i32 %91, %0, !dbg !770
  br i1 %92, label %37, label %93, !dbg !771, !llvm.loop !772

93:                                               ; preds = %87
  %94 = xor i1 %89, true, !dbg !774
  %95 = zext i1 %94 to i32, !dbg !774
  br label %96, !dbg !774

96:                                               ; preds = %93, %36
  %97 = phi i32 [ 0, %36 ], [ %95, %93 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !673, metadata !DIExpression()), !dbg !677
  ret i32 %97, !dbg !775
}

; Function Attrs: nounwind
declare !dbg !776 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !779 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !780 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !783 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !789 void @sync() local_unnamed_addr #2

; Function Attrs: nofree
declare !dbg !791 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

declare !dbg !795 i32 @fdatasync(i32 noundef) local_unnamed_addr #3

declare !dbg !798 i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !799 i32 @syncfs(i32 noundef) local_unnamed_addr #2

declare !dbg !800 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !801 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !803, metadata !DIExpression()), !dbg !804
  store i8* %0, i8** @file_name, align 8, !dbg !805, !tbaa !456
  ret void, !dbg !806
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !807 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !811, metadata !DIExpression()), !dbg !812
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !813, !tbaa !814
  ret void, !dbg !816
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !817 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !822, !tbaa !456
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #33, !dbg !823
  %3 = icmp eq i32 %2, 0, !dbg !824
  br i1 %3, label %22, label %4, !dbg !825

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !826, !tbaa !814, !range !827
  %6 = icmp eq i8 %5, 0, !dbg !826
  br i1 %6, label %11, label %7, !dbg !828

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #36, !dbg !829
  %9 = load i32, i32* %8, align 4, !dbg !829, !tbaa !544
  %10 = icmp eq i32 %9, 32, !dbg !830
  br i1 %10, label %22, label %11, !dbg !831

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.26, i64 0, i64 0), i32 noundef 5) #33, !dbg !832
  call void @llvm.dbg.value(metadata i8* %12, metadata !819, metadata !DIExpression()), !dbg !833
  %13 = load i8*, i8** @file_name, align 8, !dbg !834, !tbaa !456
  %14 = icmp eq i8* %13, null, !dbg !834
  %15 = tail call i32* @__errno_location() #36, !dbg !836
  %16 = load i32, i32* %15, align 4, !dbg !836, !tbaa !544
  br i1 %14, label %19, label %17, !dbg !837

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #33, !dbg !838
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.27, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #33, !dbg !838
  br label %20, !dbg !838

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.28, i64 0, i64 0), i8* noundef %12) #33, !dbg !839
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !840, !tbaa !544
  tail call void @_exit(i32 noundef %21) #35, !dbg !841
  unreachable, !dbg !841

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !842, !tbaa !456
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #33, !dbg !844
  %25 = icmp eq i32 %24, 0, !dbg !845
  br i1 %25, label %28, label %26, !dbg !846

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !847, !tbaa !544
  tail call void @_exit(i32 noundef %27) #35, !dbg !848
  unreachable, !dbg !848

28:                                               ; preds = %22
  ret void, !dbg !849
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !850 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !854, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i32 %1, metadata !855, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.value(metadata i8* %2, metadata !856, metadata !DIExpression()), !dbg !858
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !857, metadata !DIExpression()), !dbg !859
  tail call fastcc void @flush_stdout(), !dbg !860
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !861, !tbaa !456
  %7 = icmp eq void ()* %6, null, !dbg !861
  br i1 %7, label %9, label %8, !dbg !863

8:                                                ; preds = %4
  tail call void %6() #33, !dbg !864
  br label %13, !dbg !864

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !865, !tbaa !456
  %11 = tail call i8* @getprogname() #34, !dbg !865
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i8* noundef %11) #33, !dbg !865
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !867
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #33, !dbg !867
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !867
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !867, !tbaa.struct !868
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !867
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #33, !dbg !867
  ret void, !dbg !869
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !870 {
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 1, metadata !874, metadata !DIExpression()) #33, !dbg !877
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #33, !dbg !880
  %2 = icmp slt i32 %1, 0, !dbg !881
  br i1 %2, label %6, label %3, !dbg !882

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !883, !tbaa !456
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #33, !dbg !883
  br label %6, !dbg !883

6:                                                ; preds = %3, %0
  ret void, !dbg !884
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !885 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !887, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i32 %1, metadata !888, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.value(metadata i8* %2, metadata !889, metadata !DIExpression()), !dbg !891
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !890, metadata !DIExpression()), !dbg !892
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !893, !tbaa !456
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !894
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !895, metadata !DIExpression()) #33, !dbg !938
  call void @llvm.dbg.value(metadata i8* %2, metadata !936, metadata !DIExpression()) #33, !dbg !938
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !940
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !940, !noalias !941
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !940
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #33, !dbg !940
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !940, !noalias !941
  %11 = load i32, i32* @error_message_count, align 4, !dbg !945, !tbaa !544
  %12 = add i32 %11, 1, !dbg !945
  store i32 %12, i32* @error_message_count, align 4, !dbg !945, !tbaa !544
  %13 = icmp eq i32 %1, 0, !dbg !946
  br i1 %13, label %24, label %14, !dbg !948

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !949, metadata !DIExpression()) #33, !dbg !957
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !959
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !959
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !953, metadata !DIExpression()) #33, !dbg !960
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #33, !dbg !961
  call void @llvm.dbg.value(metadata i8* %16, metadata !952, metadata !DIExpression()) #33, !dbg !957
  %17 = icmp eq i8* %16, null, !dbg !962
  br i1 %17, label %18, label %20, !dbg !964

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.30, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.31, i64 0, i64 0), i32 noundef 5) #33, !dbg !965
  call void @llvm.dbg.value(metadata i8* %19, metadata !952, metadata !DIExpression()) #33, !dbg !957
  br label %20, !dbg !966

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !957
  call void @llvm.dbg.value(metadata i8* %21, metadata !952, metadata !DIExpression()) #33, !dbg !957
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !967, !tbaa !456
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.32, i64 0, i64 0), i8* noundef %21) #33, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #33, !dbg !968
  br label %24, !dbg !969

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !970, !tbaa !456
  call void @llvm.dbg.value(metadata i32 10, metadata !971, metadata !DIExpression()) #33, !dbg !978
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !977, metadata !DIExpression()) #33, !dbg !978
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !980
  %27 = load i8*, i8** %26, align 8, !dbg !980, !tbaa !981
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !980
  %29 = load i8*, i8** %28, align 8, !dbg !980, !tbaa !984
  %30 = icmp ult i8* %27, %29, !dbg !980
  br i1 %30, label %33, label %31, !dbg !980, !prof !985

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #33, !dbg !980
  br label %35, !dbg !980

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !980
  store i8* %34, i8** %26, align 8, !dbg !980, !tbaa !981
  store i8 10, i8* %27, align 1, !dbg !980, !tbaa !553
  br label %35, !dbg !980

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !986, !tbaa !456
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #33, !dbg !986
  %38 = icmp eq i32 %0, 0, !dbg !987
  br i1 %38, label %40, label %39, !dbg !989

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #35, !dbg !990
  unreachable, !dbg !990

40:                                               ; preds = %35
  ret void, !dbg !991
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !992 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !996 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !999 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1002 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1006, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i32 %1, metadata !1007, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i8* %2, metadata !1008, metadata !DIExpression()), !dbg !1010
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1011
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1011
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1009, metadata !DIExpression()), !dbg !1012
  call void @llvm.va_start(i8* nonnull %6), !dbg !1013
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1014
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1014, !tbaa.struct !868
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #38, !dbg !1014
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !1014
  call void @llvm.va_end(i8* nonnull %6), !dbg !1015
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #33, !dbg !1016
  ret void, !dbg !1016
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !173 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !191, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32 %1, metadata !192, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %2, metadata !193, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i32 %3, metadata !194, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %4, metadata !195, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !196, metadata !DIExpression()), !dbg !1018
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1019, !tbaa !544
  %9 = icmp eq i32 %8, 0, !dbg !1019
  br i1 %9, label %24, label %10, !dbg !1021

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1022, !tbaa !544
  %12 = icmp eq i32 %11, %3, !dbg !1025
  br i1 %12, label %13, label %23, !dbg !1026

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1027, !tbaa !456
  %15 = icmp eq i8* %14, %2, !dbg !1028
  br i1 %15, label %39, label %16, !dbg !1029

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1030
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1031
  br i1 %19, label %20, label %23, !dbg !1031

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #34, !dbg !1032
  %22 = icmp eq i32 %21, 0, !dbg !1033
  br i1 %22, label %39, label %23, !dbg !1034

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1035, !tbaa !456
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1036, !tbaa !544
  br label %24, !dbg !1037

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1038
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1039, !tbaa !456
  %26 = icmp eq void ()* %25, null, !dbg !1039
  br i1 %26, label %28, label %27, !dbg !1041

27:                                               ; preds = %24
  tail call void %25() #33, !dbg !1042
  br label %32, !dbg !1042

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1043, !tbaa !456
  %30 = tail call i8* @getprogname() #34, !dbg !1043
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.35, i64 0, i64 0), i8* noundef %30) #33, !dbg !1043
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1045, !tbaa !456
  %34 = icmp eq i8* %2, null, !dbg !1045
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.36, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.37, i64 0, i64 0), !dbg !1045
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #33, !dbg !1045
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1046
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1046
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1046
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1046, !tbaa.struct !868
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1046
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #33, !dbg !1046
  br label %39, !dbg !1047

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1047
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1048 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1052, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %1, metadata !1053, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %2, metadata !1054, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i32 %3, metadata !1055, metadata !DIExpression()), !dbg !1058
  call void @llvm.dbg.value(metadata i8* %4, metadata !1056, metadata !DIExpression()), !dbg !1058
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1059
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1059
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1057, metadata !DIExpression()), !dbg !1060
  call void @llvm.va_start(i8* nonnull %8), !dbg !1061
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1062
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1062, !tbaa.struct !868
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #38, !dbg !1062
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #33, !dbg !1062
  call void @llvm.va_end(i8* nonnull %8), !dbg !1063
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !1064
  ret void, !dbg !1064
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !1065 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1067, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 %1, metadata !1068, metadata !DIExpression()), !dbg !1092
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1093
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #33, !dbg !1093
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1069, metadata !DIExpression()), !dbg !1094
  call void @llvm.va_start(i8* nonnull %4), !dbg !1095
  call void @llvm.dbg.value(metadata i32 -1, metadata !1080, metadata !DIExpression()), !dbg !1092
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
  ], !dbg !1096

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1097
  %7 = load i32, i32* %6, align 8, !dbg !1097
  %8 = icmp sgt i32 %7, -1, !dbg !1097
  br i1 %8, label %17, label %9, !dbg !1097

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !1097
  store i32 %10, i32* %6, align 8, !dbg !1097
  %11 = icmp ult i32 %7, -7, !dbg !1097
  br i1 %11, label %12, label %17, !dbg !1097

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1097
  %14 = load i8*, i8** %13, align 8, !dbg !1097
  %15 = sext i32 %7 to i64, !dbg !1097
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !1097
  br label %21, !dbg !1097

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1097
  %19 = load i8*, i8** %18, align 8, !dbg !1097
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1097
  store i8* %20, i8** %18, align 8, !dbg !1097
  br label %21, !dbg !1097

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !1097
  %24 = load i32, i32* %23, align 8, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %24, metadata !1081, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32 %0, metadata !1099, metadata !DIExpression()) #33, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %24, metadata !1102, metadata !DIExpression()) #33, !dbg !1104
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #33, !dbg !1106
  call void @llvm.dbg.value(metadata i32 %25, metadata !1103, metadata !DIExpression()) #33, !dbg !1104
  call void @llvm.dbg.value(metadata i32 %25, metadata !1080, metadata !DIExpression()), !dbg !1092
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1107
  %28 = load i32, i32* %27, align 8, !dbg !1107
  %29 = icmp sgt i32 %28, -1, !dbg !1107
  br i1 %29, label %38, label %30, !dbg !1107

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !1107
  store i32 %31, i32* %27, align 8, !dbg !1107
  %32 = icmp ult i32 %28, -7, !dbg !1107
  br i1 %32, label %33, label %38, !dbg !1107

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1107
  %35 = load i8*, i8** %34, align 8, !dbg !1107
  %36 = sext i32 %28 to i64, !dbg !1107
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1107
  br label %42, !dbg !1107

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1107
  %40 = load i8*, i8** %39, align 8, !dbg !1107
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !1107
  store i8* %41, i8** %39, align 8, !dbg !1107
  br label %42, !dbg !1107

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !1107
  %45 = load i32, i32* %44, align 8, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %45, metadata !1084, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %0, metadata !215, metadata !DIExpression()) #33, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %45, metadata !216, metadata !DIExpression()) #33, !dbg !1109
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1111, !tbaa !544
  %47 = icmp sgt i32 %46, -1, !dbg !1113
  br i1 %47, label %48, label %60, !dbg !1114

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #33, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %49, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  %50 = icmp sgt i32 %49, -1, !dbg !1117
  br i1 %50, label %55, label %51, !dbg !1119

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #36, !dbg !1120
  %53 = load i32, i32* %52, align 4, !dbg !1120, !tbaa !544
  %54 = icmp eq i32 %53, 22, !dbg !1121
  br i1 %54, label %56, label %55, !dbg !1122

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1123, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %66, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  br label %124, !dbg !1125

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !1099, metadata !DIExpression()) #33, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %45, metadata !1102, metadata !DIExpression()) #33, !dbg !1126
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #33, !dbg !1129
  call void @llvm.dbg.value(metadata i32 %57, metadata !1103, metadata !DIExpression()) #33, !dbg !1126
  call void @llvm.dbg.value(metadata i32 %57, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  %58 = icmp sgt i32 %57, -1, !dbg !1130
  br i1 %58, label %59, label %124, !dbg !1132

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !1133, !tbaa !544
  br label %64, !dbg !1134

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !1099, metadata !DIExpression()) #33, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %45, metadata !1102, metadata !DIExpression()) #33, !dbg !1135
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #33, !dbg !1137
  call void @llvm.dbg.value(metadata i32 %61, metadata !1103, metadata !DIExpression()) #33, !dbg !1135
  call void @llvm.dbg.value(metadata i32 %61, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !1138
  call void @llvm.dbg.value(metadata i32 %66, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  %67 = icmp sgt i32 %66, -1, !dbg !1139
  %68 = select i1 %67, i1 %65, i1 false, !dbg !1125
  br i1 %68, label %69, label %124, !dbg !1125

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #33, !dbg !1140
  call void @llvm.dbg.value(metadata i32 %70, metadata !218, metadata !DIExpression()) #33, !dbg !1141
  %71 = icmp slt i32 %70, 0, !dbg !1142
  br i1 %71, label %76, label %72, !dbg !1143

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !1144
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #33, !dbg !1145
  %75 = icmp eq i32 %74, -1, !dbg !1146
  br i1 %75, label %76, label %124, !dbg !1147

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #36, !dbg !1148
  %78 = load i32, i32* %77, align 4, !dbg !1148, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %78, metadata !221, metadata !DIExpression()) #33, !dbg !1149
  %79 = call i32 @close(i32 noundef %66) #33, !dbg !1150
  store i32 %78, i32* %77, align 4, !dbg !1151, !tbaa !544
  call void @llvm.dbg.value(metadata i32 -1, metadata !217, metadata !DIExpression()) #33, !dbg !1109
  br label %124, !dbg !1152

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #33, !dbg !1153
  call void @llvm.dbg.value(metadata i32 %81, metadata !1080, metadata !DIExpression()), !dbg !1092
  br label %124, !dbg !1154

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1155
  %84 = load i32, i32* %83, align 8, !dbg !1155
  %85 = icmp sgt i32 %84, -1, !dbg !1155
  br i1 %85, label %94, label %86, !dbg !1155

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !1155
  store i32 %87, i32* %83, align 8, !dbg !1155
  %88 = icmp ult i32 %84, -7, !dbg !1155
  br i1 %88, label %89, label %94, !dbg !1155

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1155
  %91 = load i8*, i8** %90, align 8, !dbg !1155
  %92 = sext i32 %84 to i64, !dbg !1155
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !1155
  br label %98, !dbg !1155

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1155
  %96 = load i8*, i8** %95, align 8, !dbg !1155
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !1155
  store i8* %97, i8** %95, align 8, !dbg !1155
  br label %98, !dbg !1155

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !1155
  %101 = load i32, i32* %100, align 8, !dbg !1155
  call void @llvm.dbg.value(metadata i32 %101, metadata !1086, metadata !DIExpression()), !dbg !1156
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #33, !dbg !1157
  call void @llvm.dbg.value(metadata i32 %102, metadata !1080, metadata !DIExpression()), !dbg !1092
  br label %124, !dbg !1158

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !1159
  %105 = load i32, i32* %104, align 8, !dbg !1159
  %106 = icmp sgt i32 %105, -1, !dbg !1159
  br i1 %106, label %115, label %107, !dbg !1159

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !1159
  store i32 %108, i32* %104, align 8, !dbg !1159
  %109 = icmp ult i32 %105, -7, !dbg !1159
  br i1 %109, label %110, label %115, !dbg !1159

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !1159
  %112 = load i8*, i8** %111, align 8, !dbg !1159
  %113 = sext i32 %105 to i64, !dbg !1159
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !1159
  br label %119, !dbg !1159

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !1159
  %117 = load i8*, i8** %116, align 8, !dbg !1159
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !1159
  store i8* %118, i8** %116, align 8, !dbg !1159
  br label %119, !dbg !1159

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !1159
  %122 = load i8*, i8** %121, align 8, !dbg !1159
  call void @llvm.dbg.value(metadata i8* %122, metadata !1090, metadata !DIExpression()), !dbg !1160
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #33, !dbg !1161
  call void @llvm.dbg.value(metadata i32 %123, metadata !1080, metadata !DIExpression()), !dbg !1092
  br label %124, !dbg !1162

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !1163
  call void @llvm.dbg.value(metadata i32 %125, metadata !1080, metadata !DIExpression()), !dbg !1092
  call void @llvm.va_end(i8* nonnull %4), !dbg !1164
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #33, !dbg !1165
  ret i32 %125, !dbg !1166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1167 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1170, !tbaa !456
  ret i8* %1, !dbg !1171
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1174, metadata !DIExpression()), !dbg !1177
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #34, !dbg !1178
  call void @llvm.dbg.value(metadata i8* %2, metadata !1175, metadata !DIExpression()), !dbg !1177
  %3 = icmp eq i8* %2, null, !dbg !1179
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1179
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %5, metadata !1176, metadata !DIExpression()), !dbg !1177
  %6 = ptrtoint i8* %5 to i64, !dbg !1180
  %7 = ptrtoint i8* %0 to i64, !dbg !1180
  %8 = sub i64 %6, %7, !dbg !1180
  %9 = icmp sgt i64 %8, 6, !dbg !1182
  br i1 %9, label %10, label %19, !dbg !1183

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1184
  call void @llvm.dbg.value(metadata i8* %11, metadata !1185, metadata !DIExpression()) #33, !dbg !1192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), metadata !1190, metadata !DIExpression()) #33, !dbg !1192
  call void @llvm.dbg.value(metadata i64 7, metadata !1191, metadata !DIExpression()) #33, !dbg !1192
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i64 0, i64 0), i64 7) #33, !dbg !1194
  %13 = icmp eq i32 %12, 0, !dbg !1195
  br i1 %13, label %14, label %19, !dbg !1196

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1174, metadata !DIExpression()), !dbg !1177
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.61, i64 0, i64 0), i64 noundef 3) #34, !dbg !1197
  %16 = icmp eq i32 %15, 0, !dbg !1200
  %17 = select i1 %16, i64 3, i64 0, !dbg !1201
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1201
  br label %19, !dbg !1201

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1177
  call void @llvm.dbg.value(metadata i8* %21, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.value(metadata i8* %20, metadata !1174, metadata !DIExpression()), !dbg !1177
  store i8* %20, i8** @program_name, align 8, !dbg !1202, !tbaa !456
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1203, !tbaa !456
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1204, !tbaa !456
  ret void, !dbg !1205
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !232 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !239, metadata !DIExpression()), !dbg !1206
  call void @llvm.dbg.value(metadata i8* %1, metadata !240, metadata !DIExpression()), !dbg !1206
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #33, !dbg !1207
  call void @llvm.dbg.value(metadata i8* %5, metadata !241, metadata !DIExpression()), !dbg !1206
  %6 = icmp eq i8* %5, %0, !dbg !1208
  br i1 %6, label %7, label %17, !dbg !1210

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1211
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1211
  %10 = bitcast i64* %4 to i8*, !dbg !1212
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1212
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !247, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1214, metadata !DIExpression()) #33, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %10, metadata !1223, metadata !DIExpression()) #33, !dbg !1231
  call void @llvm.dbg.value(metadata i32 0, metadata !1229, metadata !DIExpression()) #33, !dbg !1231
  call void @llvm.dbg.value(metadata i64 8, metadata !1230, metadata !DIExpression()) #33, !dbg !1231
  store i64 0, i64* %4, align 8, !dbg !1233
  call void @llvm.dbg.value(metadata i32* %3, metadata !242, metadata !DIExpression(DW_OP_deref)), !dbg !1206
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #33, !dbg !1234
  %12 = icmp eq i64 %11, 2, !dbg !1236
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !242, metadata !DIExpression()), !dbg !1206
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1237
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1206
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #33, !dbg !1238
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #33, !dbg !1238
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1206
  ret i8* %18, !dbg !1238
}

; Function Attrs: nounwind
declare !dbg !1239 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1245 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1250, metadata !DIExpression()), !dbg !1253
  %2 = tail call i32* @__errno_location() #36, !dbg !1254
  %3 = load i32, i32* %2, align 4, !dbg !1254, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %3, metadata !1251, metadata !DIExpression()), !dbg !1253
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1255
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1255
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1255
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #39, !dbg !1256
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1252, metadata !DIExpression()), !dbg !1253
  store i32 %3, i32* %2, align 4, !dbg !1257, !tbaa !544
  ret %struct.quoting_options* %8, !dbg !1258
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1259 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1265, metadata !DIExpression()), !dbg !1266
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1267
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1267
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1268
  %5 = load i32, i32* %4, align 8, !dbg !1268, !tbaa !1269
  ret i32 %5, !dbg !1271
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1272 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1276, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i32 %1, metadata !1277, metadata !DIExpression()), !dbg !1278
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1279
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1279
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1280
  store i32 %1, i32* %5, align 8, !dbg !1281, !tbaa !1269
  ret void, !dbg !1282
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1283 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1287, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %1, metadata !1288, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i32 %2, metadata !1289, metadata !DIExpression()), !dbg !1295
  call void @llvm.dbg.value(metadata i8 %1, metadata !1290, metadata !DIExpression()), !dbg !1295
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1296
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1296
  %6 = lshr i8 %1, 5, !dbg !1297
  %7 = zext i8 %6 to i64, !dbg !1297
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1298
  call void @llvm.dbg.value(metadata i32* %8, metadata !1291, metadata !DIExpression()), !dbg !1295
  %9 = and i8 %1, 31, !dbg !1299
  %10 = zext i8 %9 to i32, !dbg !1299
  call void @llvm.dbg.value(metadata i32 %10, metadata !1293, metadata !DIExpression()), !dbg !1295
  %11 = load i32, i32* %8, align 4, !dbg !1300, !tbaa !544
  %12 = lshr i32 %11, %10, !dbg !1301
  %13 = and i32 %12, 1, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %13, metadata !1294, metadata !DIExpression()), !dbg !1295
  %14 = and i32 %2, 1, !dbg !1303
  %15 = xor i32 %13, %14, !dbg !1304
  %16 = shl i32 %15, %10, !dbg !1305
  %17 = xor i32 %16, %11, !dbg !1306
  store i32 %17, i32* %8, align 4, !dbg !1306, !tbaa !544
  ret i32 %13, !dbg !1307
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1308 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1312, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i32 %1, metadata !1313, metadata !DIExpression()), !dbg !1315
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1316
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1318
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1312, metadata !DIExpression()), !dbg !1315
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1319
  %6 = load i32, i32* %5, align 4, !dbg !1319, !tbaa !1320
  call void @llvm.dbg.value(metadata i32 %6, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i32 %1, i32* %5, align 4, !dbg !1321, !tbaa !1320
  ret i32 %6, !dbg !1322
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1323 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1327, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()), !dbg !1330
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()), !dbg !1330
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1331
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()), !dbg !1330
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1334
  store i32 10, i32* %6, align 8, !dbg !1335, !tbaa !1269
  %7 = icmp ne i8* %1, null, !dbg !1336
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1338
  br i1 %9, label %11, label %10, !dbg !1338

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !1339
  unreachable, !dbg !1339

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1340
  store i8* %1, i8** %12, align 8, !dbg !1341, !tbaa !1342
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1343
  store i8* %2, i8** %13, align 8, !dbg !1344, !tbaa !1345
  ret void, !dbg !1346
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1347 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1351, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %1, metadata !1352, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i8* %2, metadata !1353, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata i64 %3, metadata !1354, metadata !DIExpression()), !dbg !1359
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1355, metadata !DIExpression()), !dbg !1359
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1360
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1360
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1356, metadata !DIExpression()), !dbg !1359
  %8 = tail call i32* @__errno_location() #36, !dbg !1361
  %9 = load i32, i32* %8, align 4, !dbg !1361, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %9, metadata !1357, metadata !DIExpression()), !dbg !1359
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1362
  %11 = load i32, i32* %10, align 8, !dbg !1362, !tbaa !1269
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1363
  %13 = load i32, i32* %12, align 4, !dbg !1363, !tbaa !1320
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1364
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1365
  %16 = load i8*, i8** %15, align 8, !dbg !1365, !tbaa !1342
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1366
  %18 = load i8*, i8** %17, align 8, !dbg !1366, !tbaa !1345
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1367
  call void @llvm.dbg.value(metadata i64 %19, metadata !1358, metadata !DIExpression()), !dbg !1359
  store i32 %9, i32* %8, align 4, !dbg !1368, !tbaa !544
  ret i64 %19, !dbg !1369
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1370 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1376, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %1, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %2, metadata !1378, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %3, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %4, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %5, metadata !1381, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32* %6, metadata !1382, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %7, metadata !1383, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %8, metadata !1384, metadata !DIExpression()), !dbg !1438
  %17 = tail call i64 @__ctype_get_mb_cur_max() #33, !dbg !1439
  %18 = icmp eq i64 %17, 1, !dbg !1440
  call void @llvm.dbg.value(metadata i1 %18, metadata !1385, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* null, metadata !1388, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1389, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %5, metadata !1391, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1393, metadata !DIExpression()), !dbg !1438
  %19 = and i32 %5, 2, !dbg !1441
  %20 = icmp ne i32 %19, 0, !dbg !1441
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
  br label %36, !dbg !1441

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1442
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1443
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1444
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1393, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %43, metadata !1389, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %42, metadata !1388, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %41, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %40, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %39, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %38, metadata !1383, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %37, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1431), !dbg !1445
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1438
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
  ], !dbg !1446

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 5, metadata !1380, metadata !DIExpression()), !dbg !1438
  br label %111, !dbg !1447

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 5, metadata !1380, metadata !DIExpression()), !dbg !1438
  br i1 %45, label %111, label %51, !dbg !1447

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1448
  br i1 %52, label %111, label %53, !dbg !1452

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1448, !tbaa !553
  br label %111, !dbg !1448

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), metadata !309, metadata !DIExpression()) #33, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #33, !dbg !1453
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), i32 noundef 5) #33, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %55, metadata !311, metadata !DIExpression()) #33, !dbg !1453
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.74, i64 0, i64 0), !dbg !1458
  br i1 %56, label %57, label %66, !dbg !1460

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1461
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1462
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !313, metadata !DIExpression()) #33, !dbg !1463
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1464, metadata !DIExpression()) #33, !dbg !1470
  call void @llvm.dbg.value(metadata i8* %23, metadata !1472, metadata !DIExpression()) #33, !dbg !1477
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()) #33, !dbg !1477
  call void @llvm.dbg.value(metadata i64 8, metadata !1476, metadata !DIExpression()) #33, !dbg !1477
  store i64 0, i64* %13, align 8, !dbg !1479
  call void @llvm.dbg.value(metadata i32* %12, metadata !312, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1453
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #33, !dbg !1480
  %59 = icmp eq i64 %58, 3, !dbg !1482
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !312, metadata !DIExpression()) #33, !dbg !1453
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1483
  %63 = icmp eq i32 %37, 9, !dbg !1483
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1483
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1483
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #33, !dbg !1484
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #33, !dbg !1484
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8* %67, metadata !1383, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), metadata !309, metadata !DIExpression()) #33, !dbg !1485
  call void @llvm.dbg.value(metadata i32 %37, metadata !310, metadata !DIExpression()) #33, !dbg !1485
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), i32 noundef 5) #33, !dbg !1487
  call void @llvm.dbg.value(metadata i8* %68, metadata !311, metadata !DIExpression()) #33, !dbg !1485
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1488
  br i1 %69, label %70, label %79, !dbg !1489

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1490
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1491
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !313, metadata !DIExpression()) #33, !dbg !1492
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1464, metadata !DIExpression()) #33, !dbg !1493
  call void @llvm.dbg.value(metadata i8* %26, metadata !1472, metadata !DIExpression()) #33, !dbg !1495
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()) #33, !dbg !1495
  call void @llvm.dbg.value(metadata i64 8, metadata !1476, metadata !DIExpression()) #33, !dbg !1495
  store i64 0, i64* %11, align 8, !dbg !1497
  call void @llvm.dbg.value(metadata i32* %10, metadata !312, metadata !DIExpression(DW_OP_deref)) #33, !dbg !1485
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #33, !dbg !1498
  %72 = icmp eq i64 %71, 3, !dbg !1499
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !312, metadata !DIExpression()) #33, !dbg !1485
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1500
  %76 = icmp eq i32 %37, 9, !dbg !1500
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), !dbg !1500
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1500
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #33, !dbg !1501
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #33, !dbg !1501
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %80, metadata !1383, metadata !DIExpression()), !dbg !1438
  br i1 %45, label %97, label %82, !dbg !1502

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1395, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 0, metadata !1386, metadata !DIExpression()), !dbg !1438
  %83 = load i8, i8* %80, align 1, !dbg !1504, !tbaa !553
  %84 = icmp eq i8 %83, 0, !dbg !1506
  br i1 %84, label %97, label %85, !dbg !1506

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1395, metadata !DIExpression()), !dbg !1503
  call void @llvm.dbg.value(metadata i64 %88, metadata !1386, metadata !DIExpression()), !dbg !1438
  %89 = icmp ult i64 %88, %48, !dbg !1507
  br i1 %89, label %90, label %92, !dbg !1510

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1507
  store i8 %86, i8* %91, align 1, !dbg !1507, !tbaa !553
  br label %92, !dbg !1507

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1510
  call void @llvm.dbg.value(metadata i64 %93, metadata !1386, metadata !DIExpression()), !dbg !1438
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1511
  call void @llvm.dbg.value(metadata i8* %94, metadata !1395, metadata !DIExpression()), !dbg !1503
  %95 = load i8, i8* %94, align 1, !dbg !1504, !tbaa !553
  %96 = icmp eq i8 %95, 0, !dbg !1506
  br i1 %96, label %97, label %85, !dbg !1506, !llvm.loop !1512

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1514
  call void @llvm.dbg.value(metadata i64 %98, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %81, metadata !1388, metadata !DIExpression()), !dbg !1438
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #34, !dbg !1515
  call void @llvm.dbg.value(metadata i64 %99, metadata !1389, metadata !DIExpression()), !dbg !1438
  br label %111, !dbg !1516

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1390, metadata !DIExpression()), !dbg !1438
  br label %102, !dbg !1517

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()), !dbg !1438
  br i1 %45, label %102, label %105, !dbg !1518

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 2, metadata !1380, metadata !DIExpression()), !dbg !1438
  br label %111, !dbg !1519

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 2, metadata !1380, metadata !DIExpression()), !dbg !1438
  br i1 %45, label %111, label %105, !dbg !1519

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1520
  br i1 %107, label %111, label %108, !dbg !1524

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1520, !tbaa !553
  br label %111, !dbg !1520

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1391, metadata !DIExpression()), !dbg !1438
  br label %111, !dbg !1525

110:                                              ; preds = %36
  call void @abort() #35, !dbg !1526
  unreachable, !dbg !1526

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1514
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.76, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.77, i64 0, i64 0), %102 ], !dbg !1438
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1438
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1391, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1390, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %117, metadata !1389, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %116, metadata !1388, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %115, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %114, metadata !1384, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8* %113, metadata !1383, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i32 %112, metadata !1380, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1527
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
  br label %132, !dbg !1528

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1514
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1442
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1527
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %139, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1393, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %135, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %134, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %133, metadata !1379, metadata !DIExpression()), !dbg !1438
  %141 = icmp eq i64 %133, -1, !dbg !1529
  br i1 %141, label %142, label %146, !dbg !1530

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1531
  %144 = load i8, i8* %143, align 1, !dbg !1531, !tbaa !553
  %145 = icmp eq i8 %144, 0, !dbg !1532
  br i1 %145, label %596, label %148, !dbg !1533

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1534
  br i1 %147, label %596, label %148, !dbg !1533

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 0, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 0, metadata !1406, metadata !DIExpression()), !dbg !1535
  br i1 %123, label %149, label %163, !dbg !1536

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1538
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1539
  br i1 %151, label %152, label %154, !dbg !1539

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %153, metadata !1379, metadata !DIExpression()), !dbg !1438
  br label %154, !dbg !1541

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1541
  call void @llvm.dbg.value(metadata i64 %155, metadata !1379, metadata !DIExpression()), !dbg !1438
  %156 = icmp ugt i64 %150, %155, !dbg !1542
  br i1 %156, label %163, label %157, !dbg !1543

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1544
  call void @llvm.dbg.value(metadata i8* %158, metadata !1545, metadata !DIExpression()) #33, !dbg !1550
  call void @llvm.dbg.value(metadata i8* %116, metadata !1548, metadata !DIExpression()) #33, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %117, metadata !1549, metadata !DIExpression()) #33, !dbg !1550
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #33, !dbg !1552
  %160 = icmp ne i32 %159, 0, !dbg !1553
  %161 = or i1 %160, %125, !dbg !1554
  %162 = xor i1 %160, true, !dbg !1554
  br i1 %161, label %163, label %647, !dbg !1554

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %164, metadata !1379, metadata !DIExpression()), !dbg !1438
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1555
  %167 = load i8, i8* %166, align 1, !dbg !1555, !tbaa !553
  call void @llvm.dbg.value(metadata i8 %167, metadata !1407, metadata !DIExpression()), !dbg !1535
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
  ], !dbg !1556

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1557

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1558

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1535
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1562
  br i1 %171, label %188, label %172, !dbg !1562

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1564
  br i1 %173, label %174, label %176, !dbg !1568

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1564
  store i8 39, i8* %175, align 1, !dbg !1564, !tbaa !553
  br label %176, !dbg !1564

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %177, metadata !1386, metadata !DIExpression()), !dbg !1438
  %178 = icmp ult i64 %177, %140, !dbg !1569
  br i1 %178, label %179, label %181, !dbg !1572

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1569
  store i8 36, i8* %180, align 1, !dbg !1569, !tbaa !553
  br label %181, !dbg !1569

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1572
  call void @llvm.dbg.value(metadata i64 %182, metadata !1386, metadata !DIExpression()), !dbg !1438
  %183 = icmp ult i64 %182, %140, !dbg !1573
  br i1 %183, label %184, label %186, !dbg !1576

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1573
  store i8 39, i8* %185, align 1, !dbg !1573, !tbaa !553
  br label %186, !dbg !1573

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1576
  call void @llvm.dbg.value(metadata i64 %187, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %188, !dbg !1577

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1438
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %189, metadata !1386, metadata !DIExpression()), !dbg !1438
  %191 = icmp ult i64 %189, %140, !dbg !1578
  br i1 %191, label %192, label %194, !dbg !1581

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1578
  store i8 92, i8* %193, align 1, !dbg !1578, !tbaa !553
  br label %194, !dbg !1578

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1581
  call void @llvm.dbg.value(metadata i64 %195, metadata !1386, metadata !DIExpression()), !dbg !1438
  br i1 %120, label %196, label %499, !dbg !1582

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1584
  %198 = icmp ult i64 %197, %164, !dbg !1585
  br i1 %198, label %199, label %456, !dbg !1586

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1587
  %201 = load i8, i8* %200, align 1, !dbg !1587, !tbaa !553
  %202 = add i8 %201, -48, !dbg !1588
  %203 = icmp ult i8 %202, 10, !dbg !1588
  br i1 %203, label %204, label %456, !dbg !1588

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1589
  br i1 %205, label %206, label %208, !dbg !1593

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1589
  store i8 48, i8* %207, align 1, !dbg !1589, !tbaa !553
  br label %208, !dbg !1589

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1593
  call void @llvm.dbg.value(metadata i64 %209, metadata !1386, metadata !DIExpression()), !dbg !1438
  %210 = icmp ult i64 %209, %140, !dbg !1594
  br i1 %210, label %211, label %213, !dbg !1597

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1594
  store i8 48, i8* %212, align 1, !dbg !1594, !tbaa !553
  br label %213, !dbg !1594

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %214, metadata !1386, metadata !DIExpression()), !dbg !1438
  br label %456, !dbg !1598

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1599

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1600

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1601

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1603

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1605
  %221 = icmp ult i64 %220, %164, !dbg !1606
  br i1 %221, label %222, label %456, !dbg !1607

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1608
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1609
  %225 = load i8, i8* %224, align 1, !dbg !1609, !tbaa !553
  %226 = icmp eq i8 %225, 63, !dbg !1610
  br i1 %226, label %227, label %456, !dbg !1611

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1612
  %229 = load i8, i8* %228, align 1, !dbg !1612, !tbaa !553
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
  ], !dbg !1613

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1614

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %220, metadata !1400, metadata !DIExpression()), !dbg !1527
  %232 = icmp ult i64 %134, %140, !dbg !1616
  br i1 %232, label %233, label %235, !dbg !1619

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1616
  store i8 63, i8* %234, align 1, !dbg !1616, !tbaa !553
  br label %235, !dbg !1616

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1619
  call void @llvm.dbg.value(metadata i64 %236, metadata !1386, metadata !DIExpression()), !dbg !1438
  %237 = icmp ult i64 %236, %140, !dbg !1620
  br i1 %237, label %238, label %240, !dbg !1623

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1620
  store i8 34, i8* %239, align 1, !dbg !1620, !tbaa !553
  br label %240, !dbg !1620

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1623
  call void @llvm.dbg.value(metadata i64 %241, metadata !1386, metadata !DIExpression()), !dbg !1438
  %242 = icmp ult i64 %241, %140, !dbg !1624
  br i1 %242, label %243, label %245, !dbg !1627

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1624
  store i8 34, i8* %244, align 1, !dbg !1624, !tbaa !553
  br label %245, !dbg !1624

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1627
  call void @llvm.dbg.value(metadata i64 %246, metadata !1386, metadata !DIExpression()), !dbg !1438
  %247 = icmp ult i64 %246, %140, !dbg !1628
  br i1 %247, label %248, label %250, !dbg !1631

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1628
  store i8 63, i8* %249, align 1, !dbg !1628, !tbaa !553
  br label %250, !dbg !1628

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1631
  call void @llvm.dbg.value(metadata i64 %251, metadata !1386, metadata !DIExpression()), !dbg !1438
  br label %456, !dbg !1632

252:                                              ; preds = %163
  br label %263, !dbg !1633

253:                                              ; preds = %163
  br label %263, !dbg !1634

254:                                              ; preds = %163
  br label %261, !dbg !1635

255:                                              ; preds = %163
  br label %261, !dbg !1636

256:                                              ; preds = %163
  br label %263, !dbg !1637

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1638

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1639

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1642

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1644

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1645
  call void @llvm.dbg.label(metadata !1432), !dbg !1646
  br i1 %128, label %263, label %638, !dbg !1647

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1645
  call void @llvm.dbg.label(metadata !1434), !dbg !1649
  br i1 %118, label %510, label %467, !dbg !1650

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1651

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1652, !tbaa !553
  %268 = icmp eq i8 %267, 0, !dbg !1654
  br i1 %268, label %269, label %456, !dbg !1655

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1656
  br i1 %270, label %271, label %456, !dbg !1658

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1535
  br label %272, !dbg !1659

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1406, metadata !DIExpression()), !dbg !1535
  br i1 %126, label %274, label %456, !dbg !1660

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1662

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1406, metadata !DIExpression()), !dbg !1535
  br i1 %126, label %276, label %456, !dbg !1663

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1664

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1667
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1669
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1669
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1669
  call void @llvm.dbg.value(metadata i64 %282, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %281, metadata !1387, metadata !DIExpression()), !dbg !1438
  %283 = icmp ult i64 %134, %282, !dbg !1670
  br i1 %283, label %284, label %286, !dbg !1673

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1670
  store i8 39, i8* %285, align 1, !dbg !1670, !tbaa !553
  br label %286, !dbg !1670

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1673
  call void @llvm.dbg.value(metadata i64 %287, metadata !1386, metadata !DIExpression()), !dbg !1438
  %288 = icmp ult i64 %287, %282, !dbg !1674
  br i1 %288, label %289, label %291, !dbg !1677

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1674
  store i8 92, i8* %290, align 1, !dbg !1674, !tbaa !553
  br label %291, !dbg !1674

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1677
  call void @llvm.dbg.value(metadata i64 %292, metadata !1386, metadata !DIExpression()), !dbg !1438
  %293 = icmp ult i64 %292, %282, !dbg !1678
  br i1 %293, label %294, label %296, !dbg !1681

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1678
  store i8 39, i8* %295, align 1, !dbg !1678, !tbaa !553
  br label %296, !dbg !1678

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1681
  call void @llvm.dbg.value(metadata i64 %297, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %456, !dbg !1682

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1683

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1408, metadata !DIExpression()), !dbg !1684
  %300 = tail call i16** @__ctype_b_loc() #36, !dbg !1685
  %301 = load i16*, i16** %300, align 8, !dbg !1685, !tbaa !456
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1685
  %304 = load i16, i16* %303, align 2, !dbg !1685, !tbaa !578
  %305 = and i16 %304, 16384, !dbg !1685
  %306 = icmp ne i16 %305, 0, !dbg !1687
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %349, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %312, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i1 %350, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1535
  br label %352, !dbg !1688

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1689
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1412, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1464, metadata !DIExpression()) #33, !dbg !1691
  call void @llvm.dbg.value(metadata i8* %32, metadata !1472, metadata !DIExpression()) #33, !dbg !1693
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()) #33, !dbg !1693
  call void @llvm.dbg.value(metadata i64 8, metadata !1476, metadata !DIExpression()) #33, !dbg !1693
  store i64 0, i64* %14, align 8, !dbg !1695
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 1, metadata !1411, metadata !DIExpression()), !dbg !1684
  %308 = icmp eq i64 %164, -1, !dbg !1696
  br i1 %308, label %309, label %311, !dbg !1698

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #34, !dbg !1699
  call void @llvm.dbg.value(metadata i64 %310, metadata !1379, metadata !DIExpression()), !dbg !1438
  br label %311, !dbg !1700

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1535
  call void @llvm.dbg.value(metadata i64 %312, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1701
  %313 = sub i64 %312, %139, !dbg !1702
  call void @llvm.dbg.value(metadata i32* %16, metadata !1415, metadata !DIExpression(DW_OP_deref)), !dbg !1703
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #33, !dbg !1704
  call void @llvm.dbg.value(metadata i64 %314, metadata !1419, metadata !DIExpression()), !dbg !1703
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1705

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  %316 = icmp ugt i64 %312, %139, !dbg !1706
  br i1 %316, label %319, label %317, !dbg !1708

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %349, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %312, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i1 %350, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1535
  br label %352, !dbg !1688

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1411, metadata !DIExpression()), !dbg !1684
  br label %346, !dbg !1711

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1408, metadata !DIExpression()), !dbg !1684
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1713
  %323 = load i8, i8* %322, align 1, !dbg !1713, !tbaa !553
  %324 = icmp eq i8 %323, 0, !dbg !1708
  br i1 %324, label %348, label %325, !dbg !1714

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i64 %326, metadata !1408, metadata !DIExpression()), !dbg !1684
  %327 = add i64 %326, %139, !dbg !1716
  %328 = icmp eq i64 %326, %313, !dbg !1706
  br i1 %328, label %348, label %319, !dbg !1708, !llvm.loop !1717

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1718
  call void @llvm.dbg.value(metadata i64 1, metadata !1420, metadata !DIExpression()), !dbg !1719
  br i1 %331, label %332, label %340, !dbg !1718

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1420, metadata !DIExpression()), !dbg !1719
  %334 = add i64 %333, %139, !dbg !1720
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1722
  %336 = load i8, i8* %335, align 1, !dbg !1722, !tbaa !553
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1723

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i64 %338, metadata !1420, metadata !DIExpression()), !dbg !1719
  %339 = icmp eq i64 %338, %314, !dbg !1725
  br i1 %339, label %340, label %332, !dbg !1726, !llvm.loop !1727

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1729, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %341, metadata !1415, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i32 %341, metadata !1731, metadata !DIExpression()) #33, !dbg !1739
  %342 = call i32 @iswprint(i32 noundef %341) #33, !dbg !1741
  %343 = icmp ne i32 %342, 0, !dbg !1742
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %314, metadata !1408, metadata !DIExpression()), !dbg !1684
  br label %348, !dbg !1743

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1710
  call void @llvm.dbg.label(metadata !1437), !dbg !1744
  %345 = select i1 %118, i32 4, i32 2, !dbg !1745
  br label %643, !dbg !1745

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %349, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %312, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i1 %350, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1535
  br label %352, !dbg !1688

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1411, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #33, !dbg !1709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #33, !dbg !1710
  call void @llvm.dbg.value(metadata i64 %349, metadata !1408, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %312, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i1 %350, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1535
  %351 = icmp ugt i64 %349, 1, !dbg !1747
  br i1 %351, label %357, label %352, !dbg !1688

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1748
  br i1 %356, label %456, label %357, !dbg !1748

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1749
  call void @llvm.dbg.value(metadata i64 %361, metadata !1428, metadata !DIExpression()), !dbg !1750
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1751

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1438
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1527
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1752
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1535
  call void @llvm.dbg.value(metadata i8 %369, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 %368, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %366, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %364, metadata !1386, metadata !DIExpression()), !dbg !1438
  br i1 %362, label %414, label %370, !dbg !1753

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1758

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1535
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1761
  br i1 %372, label %389, label %373, !dbg !1761

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !1763
  br i1 %374, label %375, label %377, !dbg !1767

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1763
  store i8 39, i8* %376, align 1, !dbg !1763, !tbaa !553
  br label %377, !dbg !1763

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !1767
  call void @llvm.dbg.value(metadata i64 %378, metadata !1386, metadata !DIExpression()), !dbg !1438
  %379 = icmp ult i64 %378, %140, !dbg !1768
  br i1 %379, label %380, label %382, !dbg !1771

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !1768
  store i8 36, i8* %381, align 1, !dbg !1768, !tbaa !553
  br label %382, !dbg !1768

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %383, metadata !1386, metadata !DIExpression()), !dbg !1438
  %384 = icmp ult i64 %383, %140, !dbg !1772
  br i1 %384, label %385, label %387, !dbg !1775

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !1772
  store i8 39, i8* %386, align 1, !dbg !1772, !tbaa !553
  br label %387, !dbg !1772

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !1775
  call void @llvm.dbg.value(metadata i64 %388, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %389, !dbg !1776

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1438
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %390, metadata !1386, metadata !DIExpression()), !dbg !1438
  %392 = icmp ult i64 %390, %140, !dbg !1777
  br i1 %392, label %393, label %395, !dbg !1780

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !1777
  store i8 92, i8* %394, align 1, !dbg !1777, !tbaa !553
  br label %395, !dbg !1777

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !1780
  call void @llvm.dbg.value(metadata i64 %396, metadata !1386, metadata !DIExpression()), !dbg !1438
  %397 = icmp ult i64 %396, %140, !dbg !1781
  br i1 %397, label %398, label %402, !dbg !1784

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !1781
  %400 = or i8 %399, 48, !dbg !1781
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !1781
  store i8 %400, i8* %401, align 1, !dbg !1781, !tbaa !553
  br label %402, !dbg !1781

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !1784
  call void @llvm.dbg.value(metadata i64 %403, metadata !1386, metadata !DIExpression()), !dbg !1438
  %404 = icmp ult i64 %403, %140, !dbg !1785
  br i1 %404, label %405, label %410, !dbg !1788

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !1785
  %407 = and i8 %406, 7, !dbg !1785
  %408 = or i8 %407, 48, !dbg !1785
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !1785
  store i8 %408, i8* %409, align 1, !dbg !1785, !tbaa !553
  br label %410, !dbg !1785

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !1788
  call void @llvm.dbg.value(metadata i64 %411, metadata !1386, metadata !DIExpression()), !dbg !1438
  %412 = and i8 %369, 7, !dbg !1789
  %413 = or i8 %412, 48, !dbg !1790
  call void @llvm.dbg.value(metadata i8 %413, metadata !1407, metadata !DIExpression()), !dbg !1535
  br label %421, !dbg !1791

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !1792

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !1793
  br i1 %416, label %417, label %419, !dbg !1798

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !1793
  store i8 92, i8* %418, align 1, !dbg !1793, !tbaa !553
  br label %419, !dbg !1793

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !1798
  call void @llvm.dbg.value(metadata i64 %420, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1402, metadata !DIExpression()), !dbg !1535
  br label %421, !dbg !1799

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1438
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1535
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1535
  call void @llvm.dbg.value(metadata i8 %426, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 %425, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %422, metadata !1386, metadata !DIExpression()), !dbg !1438
  %427 = add i64 %366, 1, !dbg !1800
  %428 = icmp ugt i64 %361, %427, !dbg !1802
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !1803

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !1804
  %432 = select i1 %423, i1 %431, i1 false, !dbg !1804
  br i1 %432, label %433, label %444, !dbg !1804

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !1807
  br i1 %434, label %435, label %437, !dbg !1811

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !1807
  store i8 39, i8* %436, align 1, !dbg !1807, !tbaa !553
  br label %437, !dbg !1807

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %438, metadata !1386, metadata !DIExpression()), !dbg !1438
  %439 = icmp ult i64 %438, %140, !dbg !1812
  br i1 %439, label %440, label %442, !dbg !1815

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !1812
  store i8 39, i8* %441, align 1, !dbg !1812, !tbaa !553
  br label %442, !dbg !1812

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !1815
  call void @llvm.dbg.value(metadata i64 %443, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %444, !dbg !1816

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !1817
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %445, metadata !1386, metadata !DIExpression()), !dbg !1438
  %447 = icmp ult i64 %445, %140, !dbg !1818
  br i1 %447, label %448, label %450, !dbg !1821

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !1818
  store i8 %426, i8* %449, align 1, !dbg !1818, !tbaa !553
  br label %450, !dbg !1818

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !1821
  call void @llvm.dbg.value(metadata i64 %451, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %427, metadata !1400, metadata !DIExpression()), !dbg !1527
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !1822
  %453 = load i8, i8* %452, align 1, !dbg !1822, !tbaa !553
  call void @llvm.dbg.value(metadata i8 %453, metadata !1407, metadata !DIExpression()), !dbg !1535
  br label %363, !dbg !1823, !llvm.loop !1824

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i1 %358, metadata !1406, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1535
  call void @llvm.dbg.value(metadata i8 %425, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %366, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %422, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %360, metadata !1379, metadata !DIExpression()), !dbg !1438
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !1827
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1438
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1442
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1527
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1535
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %465, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1406, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1402, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %462, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %459, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %458, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %457, metadata !1379, metadata !DIExpression()), !dbg !1438
  br i1 %121, label %478, label %467, !dbg !1828

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
  br i1 %131, label %479, label %499, !dbg !1830

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !1831

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
  %490 = lshr i8 %481, 5, !dbg !1832
  %491 = zext i8 %490 to i64, !dbg !1832
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !1833
  %493 = load i32, i32* %492, align 4, !dbg !1833, !tbaa !544
  %494 = and i8 %481, 31, !dbg !1834
  %495 = zext i8 %494 to i32, !dbg !1834
  %496 = shl nuw i32 1, %495, !dbg !1835
  %497 = and i32 %493, %496, !dbg !1835
  %498 = icmp eq i32 %497, 0, !dbg !1835
  br i1 %498, label %499, label %510, !dbg !1836

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
  br i1 %165, label %510, label %546, !dbg !1837

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !1827
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1438
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1442
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !1838
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1535
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %518, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1406, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %516, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %513, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %512, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %511, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1435), !dbg !1839
  br i1 %119, label %638, label %520, !dbg !1840

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1405, metadata !DIExpression()), !dbg !1535
  %521 = select i1 %120, i1 true, i1 %515, !dbg !1842
  br i1 %521, label %538, label %522, !dbg !1842

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !1844
  br i1 %523, label %524, label %526, !dbg !1848

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !1844
  store i8 39, i8* %525, align 1, !dbg !1844, !tbaa !553
  br label %526, !dbg !1844

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !1848
  call void @llvm.dbg.value(metadata i64 %527, metadata !1386, metadata !DIExpression()), !dbg !1438
  %528 = icmp ult i64 %527, %519, !dbg !1849
  br i1 %528, label %529, label %531, !dbg !1852

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !1849
  store i8 36, i8* %530, align 1, !dbg !1849, !tbaa !553
  br label %531, !dbg !1849

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !1852
  call void @llvm.dbg.value(metadata i64 %532, metadata !1386, metadata !DIExpression()), !dbg !1438
  %533 = icmp ult i64 %532, %519, !dbg !1853
  br i1 %533, label %534, label %536, !dbg !1856

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !1853
  store i8 39, i8* %535, align 1, !dbg !1853, !tbaa !553
  br label %536, !dbg !1853

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %537, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 1, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %538, !dbg !1857

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1535
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %539, metadata !1386, metadata !DIExpression()), !dbg !1438
  %541 = icmp ult i64 %539, %519, !dbg !1858
  br i1 %541, label %542, label %544, !dbg !1861

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !1858
  store i8 92, i8* %543, align 1, !dbg !1858, !tbaa !553
  br label %544, !dbg !1858

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !1861
  call void @llvm.dbg.value(metadata i64 %556, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %555, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1406, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %552, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %549, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %548, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %547, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1436), !dbg !1862
  br label %570, !dbg !1863

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !1827
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1438
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1442
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !1838
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !1866
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 %555, metadata !1407, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1406, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %552, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %549, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %548, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %547, metadata !1379, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.label(metadata !1436), !dbg !1862
  %557 = xor i1 %551, true, !dbg !1863
  %558 = select i1 %557, i1 true, i1 %553, !dbg !1863
  br i1 %558, label %570, label %559, !dbg !1863

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !1867
  br i1 %560, label %561, label %563, !dbg !1871

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1867
  store i8 39, i8* %562, align 1, !dbg !1867, !tbaa !553
  br label %563, !dbg !1867

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !1871
  call void @llvm.dbg.value(metadata i64 %564, metadata !1386, metadata !DIExpression()), !dbg !1438
  %565 = icmp ult i64 %564, %556, !dbg !1872
  br i1 %565, label %566, label %568, !dbg !1875

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1872
  store i8 39, i8* %567, align 1, !dbg !1872, !tbaa !553
  br label %568, !dbg !1872

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !1875
  call void @llvm.dbg.value(metadata i64 %569, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 0, metadata !1394, metadata !DIExpression()), !dbg !1438
  br label %570, !dbg !1876

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1535
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %578, metadata !1386, metadata !DIExpression()), !dbg !1438
  %580 = icmp ult i64 %578, %571, !dbg !1877
  br i1 %580, label %581, label %583, !dbg !1880

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !1877
  store i8 %572, i8* %582, align 1, !dbg !1877, !tbaa !553
  br label %583, !dbg !1877

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !1880
  call void @llvm.dbg.value(metadata i64 %584, metadata !1386, metadata !DIExpression()), !dbg !1438
  %585 = select i1 %573, i1 %137, i1 false, !dbg !1881
  call void @llvm.dbg.value(metadata i8 poison, metadata !1393, metadata !DIExpression()), !dbg !1438
  br label %586, !dbg !1882

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !1827
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1438
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1442
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !1838
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %593, metadata !1400, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 poison, metadata !1394, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1393, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %589, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %588, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %587, metadata !1379, metadata !DIExpression()), !dbg !1438
  %595 = add i64 %593, 1, !dbg !1883
  call void @llvm.dbg.value(metadata i64 %595, metadata !1400, metadata !DIExpression()), !dbg !1527
  br label %132, !dbg !1884, !llvm.loop !1885

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1377, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1393, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i8 poison, metadata !1392, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 undef, metadata !1387, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 undef, metadata !1386, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 undef, metadata !1379, metadata !DIExpression()), !dbg !1438
  %597 = icmp eq i64 %134, 0, !dbg !1887
  %598 = and i1 %126, %597, !dbg !1889
  %599 = and i1 %598, %119, !dbg !1889
  br i1 %599, label %638, label %600, !dbg !1889

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !1890
  %602 = or i1 %119, %601, !dbg !1890
  %603 = xor i1 %136, true, !dbg !1890
  %604 = select i1 %602, i1 true, i1 %603, !dbg !1890
  br i1 %604, label %612, label %605, !dbg !1890

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !1892

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !1894
  br label %653, !dbg !1896

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !1897
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !1899
  br i1 %611, label %36, label %612, !dbg !1899

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !1900
  %615 = or i1 %614, %613, !dbg !1902
  br i1 %615, label %631, label %616, !dbg !1902

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1388, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %134, metadata !1386, metadata !DIExpression()), !dbg !1438
  %617 = load i8, i8* %116, align 1, !dbg !1903, !tbaa !553
  %618 = icmp eq i8 %617, 0, !dbg !1906
  br i1 %618, label %631, label %619, !dbg !1906

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1388, metadata !DIExpression()), !dbg !1438
  call void @llvm.dbg.value(metadata i64 %622, metadata !1386, metadata !DIExpression()), !dbg !1438
  %623 = icmp ult i64 %622, %140, !dbg !1907
  br i1 %623, label %624, label %626, !dbg !1910

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !1907
  store i8 %620, i8* %625, align 1, !dbg !1907, !tbaa !553
  br label %626, !dbg !1907

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %627, metadata !1386, metadata !DIExpression()), !dbg !1438
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %628, metadata !1388, metadata !DIExpression()), !dbg !1438
  %629 = load i8, i8* %628, align 1, !dbg !1903, !tbaa !553
  %630 = icmp eq i8 %629, 0, !dbg !1906
  br i1 %630, label %631, label %619, !dbg !1906, !llvm.loop !1912

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1514
  call void @llvm.dbg.value(metadata i64 %632, metadata !1386, metadata !DIExpression()), !dbg !1438
  %633 = icmp ult i64 %632, %140, !dbg !1914
  br i1 %633, label %634, label %653, !dbg !1916

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !1917
  store i8 0, i8* %635, align 1, !dbg !1918, !tbaa !553
  br label %653, !dbg !1917

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1437), !dbg !1744
  %637 = icmp eq i32 %112, 2, !dbg !1919
  br i1 %637, label %643, label %647, !dbg !1745

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1437), !dbg !1744
  %641 = icmp eq i32 %112, 2, !dbg !1919
  %642 = select i1 %118, i32 4, i32 2, !dbg !1745
  br i1 %641, label %643, label %647, !dbg !1745

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1745

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1380, metadata !DIExpression()), !dbg !1438
  %651 = and i32 %5, -3, !dbg !1920
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !1921
  br label %653, !dbg !1922

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !1923
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !1924 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !1926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1930, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i64 %1, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1932, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %0, metadata !1934, metadata !DIExpression()) #33, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %1, metadata !1939, metadata !DIExpression()) #33, !dbg !1947
  call void @llvm.dbg.value(metadata i64* null, metadata !1940, metadata !DIExpression()) #33, !dbg !1947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1941, metadata !DIExpression()) #33, !dbg !1947
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1949
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1949
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1942, metadata !DIExpression()) #33, !dbg !1947
  %6 = tail call i32* @__errno_location() #36, !dbg !1950
  %7 = load i32, i32* %6, align 4, !dbg !1950, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %7, metadata !1943, metadata !DIExpression()) #33, !dbg !1947
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1951
  %9 = load i32, i32* %8, align 4, !dbg !1951, !tbaa !1320
  %10 = or i32 %9, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i32 %10, metadata !1944, metadata !DIExpression()) #33, !dbg !1947
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1953
  %12 = load i32, i32* %11, align 8, !dbg !1953, !tbaa !1269
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1954
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1955
  %15 = load i8*, i8** %14, align 8, !dbg !1955, !tbaa !1342
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1956
  %17 = load i8*, i8** %16, align 8, !dbg !1956, !tbaa !1345
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #33, !dbg !1957
  %19 = add i64 %18, 1, !dbg !1958
  call void @llvm.dbg.value(metadata i64 %19, metadata !1945, metadata !DIExpression()) #33, !dbg !1947
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #40, !dbg !1959
  call void @llvm.dbg.value(metadata i8* %20, metadata !1946, metadata !DIExpression()) #33, !dbg !1947
  %21 = load i32, i32* %11, align 8, !dbg !1960, !tbaa !1269
  %22 = load i8*, i8** %14, align 8, !dbg !1961, !tbaa !1342
  %23 = load i8*, i8** %16, align 8, !dbg !1962, !tbaa !1345
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #33, !dbg !1963
  store i32 %7, i32* %6, align 4, !dbg !1964, !tbaa !544
  ret i8* %20, !dbg !1965
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !1935 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1934, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64 %1, metadata !1939, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i64* %2, metadata !1940, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1941, metadata !DIExpression()), !dbg !1966
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1967
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1967
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1942, metadata !DIExpression()), !dbg !1966
  %7 = tail call i32* @__errno_location() #36, !dbg !1968
  %8 = load i32, i32* %7, align 4, !dbg !1968, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %8, metadata !1943, metadata !DIExpression()), !dbg !1966
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1969
  %10 = load i32, i32* %9, align 4, !dbg !1969, !tbaa !1320
  %11 = icmp eq i64* %2, null, !dbg !1970
  %12 = zext i1 %11 to i32, !dbg !1970
  %13 = or i32 %10, %12, !dbg !1971
  call void @llvm.dbg.value(metadata i32 %13, metadata !1944, metadata !DIExpression()), !dbg !1966
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1972
  %15 = load i32, i32* %14, align 8, !dbg !1972, !tbaa !1269
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1973
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1974
  %18 = load i8*, i8** %17, align 8, !dbg !1974, !tbaa !1342
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1975
  %20 = load i8*, i8** %19, align 8, !dbg !1975, !tbaa !1345
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !1976
  %22 = add i64 %21, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 %22, metadata !1945, metadata !DIExpression()), !dbg !1966
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #40, !dbg !1978
  call void @llvm.dbg.value(metadata i8* %23, metadata !1946, metadata !DIExpression()), !dbg !1966
  %24 = load i32, i32* %14, align 8, !dbg !1979, !tbaa !1269
  %25 = load i8*, i8** %17, align 8, !dbg !1980, !tbaa !1342
  %26 = load i8*, i8** %19, align 8, !dbg !1981, !tbaa !1345
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !1982
  store i32 %8, i32* %7, align 4, !dbg !1983, !tbaa !544
  br i1 %11, label %29, label %28, !dbg !1984

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !1985, !tbaa !1987
  br label %29, !dbg !1988

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !1989
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !1990 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1995, !tbaa !456
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1992, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i32 1, metadata !1993, metadata !DIExpression()), !dbg !1997
  %2 = load i32, i32* @nslots, align 4, !tbaa !544
  call void @llvm.dbg.value(metadata i32 1, metadata !1993, metadata !DIExpression()), !dbg !1997
  %3 = icmp sgt i32 %2, 1, !dbg !1998
  br i1 %3, label %4, label %6, !dbg !2000

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !1998
  br label %10, !dbg !2000

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2001
  %8 = load i8*, i8** %7, align 8, !dbg !2001, !tbaa !2003
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2005
  br i1 %9, label %17, label %16, !dbg !2006

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !1993, metadata !DIExpression()), !dbg !1997
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2007
  %13 = load i8*, i8** %12, align 8, !dbg !2007, !tbaa !2003
  tail call void @free(i8* noundef %13) #33, !dbg !2008
  %14 = add nuw nsw i64 %11, 1, !dbg !2009
  call void @llvm.dbg.value(metadata i64 %14, metadata !1993, metadata !DIExpression()), !dbg !1997
  %15 = icmp eq i64 %14, %5, !dbg !1998
  br i1 %15, label %6, label %10, !dbg !2000, !llvm.loop !2010

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #33, !dbg !2012
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2014, !tbaa !2015
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2016, !tbaa !2003
  br label %17, !dbg !2017

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2018
  br i1 %18, label %21, label %19, !dbg !2020

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2021
  tail call void @free(i8* noundef %20) #33, !dbg !2023
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2024, !tbaa !456
  br label %21, !dbg !2025

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2026, !tbaa !544
  ret void, !dbg !2027
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2028 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i8* %1, metadata !2031, metadata !DIExpression()), !dbg !2032
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2033
  ret i8* %3, !dbg !2034
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2035 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2039, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8* %1, metadata !2040, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i64 %2, metadata !2041, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2042, metadata !DIExpression()), !dbg !2055
  %6 = tail call i32* @__errno_location() #36, !dbg !2056
  %7 = load i32, i32* %6, align 4, !dbg !2056, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %7, metadata !2043, metadata !DIExpression()), !dbg !2055
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2057, !tbaa !456
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2044, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2045, metadata !DIExpression()), !dbg !2055
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2058
  br i1 %9, label %10, label %11, !dbg !2058

10:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2060
  unreachable, !dbg !2060

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2061, !tbaa !544
  %13 = icmp sgt i32 %12, %0, !dbg !2062
  br i1 %13, label %36, label %14, !dbg !2063

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2064
  call void @llvm.dbg.value(metadata i1 %15, metadata !2046, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2065
  %16 = bitcast i64* %5 to i8*, !dbg !2066
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2066
  %17 = sext i32 %12 to i64, !dbg !2067
  call void @llvm.dbg.value(metadata i64 %17, metadata !2049, metadata !DIExpression()), !dbg !2065
  store i64 %17, i64* %5, align 8, !dbg !2068, !tbaa !1987
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2069
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2069
  %20 = add nuw nsw i32 %0, 1, !dbg !2070
  %21 = sub i32 %20, %12, !dbg !2071
  %22 = sext i32 %21 to i64, !dbg !2072
  call void @llvm.dbg.value(metadata i64* %5, metadata !2049, metadata !DIExpression(DW_OP_deref)), !dbg !2065
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #33, !dbg !2073
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2073
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2044, metadata !DIExpression()), !dbg !2055
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2074, !tbaa !456
  br i1 %15, label %25, label %26, !dbg !2075

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2076, !tbaa.struct !2078
  br label %26, !dbg !2079

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2080, !tbaa !544
  %28 = sext i32 %27 to i64, !dbg !2081
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2081
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2082
  %31 = load i64, i64* %5, align 8, !dbg !2083, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %31, metadata !2049, metadata !DIExpression()), !dbg !2065
  %32 = sub nsw i64 %31, %28, !dbg !2084
  %33 = shl i64 %32, 4, !dbg !2085
  call void @llvm.dbg.value(metadata i8* %30, metadata !1472, metadata !DIExpression()) #33, !dbg !2086
  call void @llvm.dbg.value(metadata i32 0, metadata !1475, metadata !DIExpression()) #33, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %33, metadata !1476, metadata !DIExpression()) #33, !dbg !2086
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #33, !dbg !2088
  %34 = load i64, i64* %5, align 8, !dbg !2089, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %34, metadata !2049, metadata !DIExpression()), !dbg !2065
  %35 = trunc i64 %34 to i32, !dbg !2089
  store i32 %35, i32* @nslots, align 4, !dbg !2090, !tbaa !544
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #33, !dbg !2091
  br label %36, !dbg !2092

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2055
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2044, metadata !DIExpression()), !dbg !2055
  %38 = zext i32 %0 to i64, !dbg !2093
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2094
  %40 = load i64, i64* %39, align 8, !dbg !2094, !tbaa !2015
  call void @llvm.dbg.value(metadata i64 %40, metadata !2050, metadata !DIExpression()), !dbg !2095
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2096
  %42 = load i8*, i8** %41, align 8, !dbg !2096, !tbaa !2003
  call void @llvm.dbg.value(metadata i8* %42, metadata !2052, metadata !DIExpression()), !dbg !2095
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2097
  %44 = load i32, i32* %43, align 4, !dbg !2097, !tbaa !1320
  %45 = or i32 %44, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %45, metadata !2053, metadata !DIExpression()), !dbg !2095
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2099
  %47 = load i32, i32* %46, align 8, !dbg !2099, !tbaa !1269
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2100
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2101
  %50 = load i8*, i8** %49, align 8, !dbg !2101, !tbaa !1342
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2102
  %52 = load i8*, i8** %51, align 8, !dbg !2102, !tbaa !1345
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2103
  call void @llvm.dbg.value(metadata i64 %53, metadata !2054, metadata !DIExpression()), !dbg !2095
  %54 = icmp ugt i64 %40, %53, !dbg !2104
  br i1 %54, label %65, label %55, !dbg !2106

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2107
  call void @llvm.dbg.value(metadata i64 %56, metadata !2050, metadata !DIExpression()), !dbg !2095
  store i64 %56, i64* %39, align 8, !dbg !2109, !tbaa !2015
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2110
  br i1 %57, label %59, label %58, !dbg !2112

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #33, !dbg !2113
  br label %59, !dbg !2113

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #40, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %60, metadata !2052, metadata !DIExpression()), !dbg !2095
  store i8* %60, i8** %41, align 8, !dbg !2115, !tbaa !2003
  %61 = load i32, i32* %46, align 8, !dbg !2116, !tbaa !1269
  %62 = load i8*, i8** %49, align 8, !dbg !2117, !tbaa !1342
  %63 = load i8*, i8** %51, align 8, !dbg !2118, !tbaa !1345
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2119
  br label %65, !dbg !2120

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2095
  call void @llvm.dbg.value(metadata i8* %66, metadata !2052, metadata !DIExpression()), !dbg !2095
  store i32 %7, i32* %6, align 4, !dbg !2121, !tbaa !544
  ret i8* %66, !dbg !2122
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2123 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2127, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i8* %1, metadata !2128, metadata !DIExpression()), !dbg !2130
  call void @llvm.dbg.value(metadata i64 %2, metadata !2129, metadata !DIExpression()), !dbg !2130
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2131
  ret i8* %4, !dbg !2132
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2133 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2135, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2030, metadata !DIExpression()) #33, !dbg !2137
  call void @llvm.dbg.value(metadata i8* %0, metadata !2031, metadata !DIExpression()) #33, !dbg !2137
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2139
  ret i8* %2, !dbg !2140
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2141 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i64 %1, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 0, metadata !2127, metadata !DIExpression()) #33, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %0, metadata !2128, metadata !DIExpression()) #33, !dbg !2148
  call void @llvm.dbg.value(metadata i64 %1, metadata !2129, metadata !DIExpression()) #33, !dbg !2148
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #33, !dbg !2150
  ret i8* %3, !dbg !2151
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2152 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i32 %1, metadata !2157, metadata !DIExpression()), !dbg !2160
  call void @llvm.dbg.value(metadata i8* %2, metadata !2158, metadata !DIExpression()), !dbg !2160
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2161
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2159, metadata !DIExpression()), !dbg !2162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163), !dbg !2166
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #33, !dbg !2173
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()) #33, !dbg !2175
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2175, !alias.scope !2163
  %6 = icmp eq i32 %1, 10, !dbg !2176
  br i1 %6, label %7, label %8, !dbg !2178

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2179, !noalias !2163
  unreachable, !dbg !2179

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2180
  store i32 %1, i32* %9, align 8, !dbg !2181, !tbaa !1269, !alias.scope !2163
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2182
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2183
  ret i8* %10, !dbg !2184
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2185 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2189, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i32 %1, metadata !2190, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i8* %2, metadata !2191, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata i64 %3, metadata !2192, metadata !DIExpression()), !dbg !2194
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2195
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2195
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2193, metadata !DIExpression()), !dbg !2196
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2197), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #33, !dbg !2201
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2172, metadata !DIExpression()) #33, !dbg !2203
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #33, !dbg !2203, !alias.scope !2197
  %7 = icmp eq i32 %1, 10, !dbg !2204
  br i1 %7, label %8, label %9, !dbg !2205

8:                                                ; preds = %4
  tail call void @abort() #35, !dbg !2206, !noalias !2197
  unreachable, !dbg !2206

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2207
  store i32 %1, i32* %10, align 8, !dbg !2208, !tbaa !1269, !alias.scope !2197
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2209
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2210
  ret i8* %11, !dbg !2211
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2212 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2216, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2217, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i32 0, metadata !2156, metadata !DIExpression()) #33, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %0, metadata !2157, metadata !DIExpression()) #33, !dbg !2219
  call void @llvm.dbg.value(metadata i8* %1, metadata !2158, metadata !DIExpression()) #33, !dbg !2219
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2221
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2221
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2159, metadata !DIExpression()) #33, !dbg !2222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223) #33, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()) #33, !dbg !2227
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2172, metadata !DIExpression()) #33, !dbg !2229
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #33, !dbg !2229, !alias.scope !2223
  %5 = icmp eq i32 %0, 10, !dbg !2230
  br i1 %5, label %6, label %7, !dbg !2231

6:                                                ; preds = %2
  tail call void @abort() #35, !dbg !2232, !noalias !2223
  unreachable, !dbg !2232

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2233
  store i32 %0, i32* %8, align 8, !dbg !2234, !tbaa !1269, !alias.scope !2223
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2235
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2236
  ret i8* %9, !dbg !2237
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2238 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2242, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i8* %1, metadata !2243, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i64 %2, metadata !2244, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()) #33, !dbg !2246
  call void @llvm.dbg.value(metadata i32 %0, metadata !2190, metadata !DIExpression()) #33, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !2191, metadata !DIExpression()) #33, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %2, metadata !2192, metadata !DIExpression()) #33, !dbg !2246
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2248
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2248
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2193, metadata !DIExpression()) #33, !dbg !2249
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250) #33, !dbg !2253
  call void @llvm.dbg.value(metadata i32 %0, metadata !2167, metadata !DIExpression()) #33, !dbg !2254
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2172, metadata !DIExpression()) #33, !dbg !2256
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #33, !dbg !2256, !alias.scope !2250
  %6 = icmp eq i32 %0, 10, !dbg !2257
  br i1 %6, label %7, label %8, !dbg !2258

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2259, !noalias !2250
  unreachable, !dbg !2259

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2260
  store i32 %0, i32* %9, align 8, !dbg !2261, !tbaa !1269, !alias.scope !2250
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2263
  ret i8* %10, !dbg !2264
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2265 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %2, metadata !2271, metadata !DIExpression()), !dbg !2273
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2274
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2274
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression()), !dbg !2275
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2276, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %2, metadata !1288, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.value(metadata i8 %2, metadata !1290, metadata !DIExpression()), !dbg !2278
  %6 = lshr i8 %2, 5, !dbg !2280
  %7 = zext i8 %6 to i64, !dbg !2280
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2281
  call void @llvm.dbg.value(metadata i32* %8, metadata !1291, metadata !DIExpression()), !dbg !2278
  %9 = and i8 %2, 31, !dbg !2282
  %10 = zext i8 %9 to i32, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %10, metadata !1293, metadata !DIExpression()), !dbg !2278
  %11 = load i32, i32* %8, align 4, !dbg !2283, !tbaa !544
  %12 = lshr i32 %11, %10, !dbg !2284
  %13 = and i32 %12, 1, !dbg !2285
  call void @llvm.dbg.value(metadata i32 %13, metadata !1294, metadata !DIExpression()), !dbg !2278
  %14 = xor i32 %13, 1, !dbg !2286
  %15 = shl i32 %14, %10, !dbg !2287
  %16 = xor i32 %15, %11, !dbg !2288
  store i32 %16, i32* %8, align 4, !dbg !2288, !tbaa !544
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2289
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2290
  ret i8* %17, !dbg !2291
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2292 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8 %1, metadata !2297, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #33, !dbg !2299
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #33, !dbg !2299
  call void @llvm.dbg.value(metadata i8 %1, metadata !2271, metadata !DIExpression()) #33, !dbg !2299
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2301
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression()) #33, !dbg !2302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2303, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1287, metadata !DIExpression()) #33, !dbg !2304
  call void @llvm.dbg.value(metadata i8 %1, metadata !1288, metadata !DIExpression()) #33, !dbg !2304
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #33, !dbg !2304
  call void @llvm.dbg.value(metadata i8 %1, metadata !1290, metadata !DIExpression()) #33, !dbg !2304
  %5 = lshr i8 %1, 5, !dbg !2306
  %6 = zext i8 %5 to i64, !dbg !2306
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2307
  call void @llvm.dbg.value(metadata i32* %7, metadata !1291, metadata !DIExpression()) #33, !dbg !2304
  %8 = and i8 %1, 31, !dbg !2308
  %9 = zext i8 %8 to i32, !dbg !2308
  call void @llvm.dbg.value(metadata i32 %9, metadata !1293, metadata !DIExpression()) #33, !dbg !2304
  %10 = load i32, i32* %7, align 4, !dbg !2309, !tbaa !544
  %11 = lshr i32 %10, %9, !dbg !2310
  %12 = and i32 %11, 1, !dbg !2311
  call void @llvm.dbg.value(metadata i32 %12, metadata !1294, metadata !DIExpression()) #33, !dbg !2304
  %13 = xor i32 %12, 1, !dbg !2312
  %14 = shl i32 %13, %9, !dbg !2313
  %15 = xor i32 %14, %10, !dbg !2314
  store i32 %15, i32* %7, align 4, !dbg !2314, !tbaa !544
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2315
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2316
  ret i8* %16, !dbg !2317
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2318 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2320, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata i8* %0, metadata !2296, metadata !DIExpression()) #33, !dbg !2322
  call void @llvm.dbg.value(metadata i8 58, metadata !2297, metadata !DIExpression()) #33, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #33, !dbg !2324
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #33, !dbg !2324
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #33, !dbg !2324
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2326
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2326
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2272, metadata !DIExpression()) #33, !dbg !2327
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2328, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1287, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()) #33, !dbg !2329
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32* %4, metadata !1291, metadata !DIExpression()) #33, !dbg !2329
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()) #33, !dbg !2329
  %5 = load i32, i32* %4, align 4, !dbg !2332, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %5, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2329
  %6 = or i32 %5, 67108864, !dbg !2333
  store i32 %6, i32* %4, align 4, !dbg !2333, !tbaa !544
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #33, !dbg !2334
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #33, !dbg !2335
  ret i8* %7, !dbg !2336
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2337 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2339, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i64 %1, metadata !2340, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #33, !dbg !2342
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()) #33, !dbg !2342
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #33, !dbg !2342
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2344
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression()) #33, !dbg !2345
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #33, !dbg !2346, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1287, metadata !DIExpression()) #33, !dbg !2347
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()) #33, !dbg !2347
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()) #33, !dbg !2347
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()) #33, !dbg !2347
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2349
  call void @llvm.dbg.value(metadata i32* %5, metadata !1291, metadata !DIExpression()) #33, !dbg !2347
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()) #33, !dbg !2347
  %6 = load i32, i32* %5, align 4, !dbg !2350, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %6, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #33, !dbg !2347
  %7 = or i32 %6, 67108864, !dbg !2351
  store i32 %7, i32* %5, align 4, !dbg !2351, !tbaa !544
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #33, !dbg !2352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #33, !dbg !2353
  ret i8* %8, !dbg !2354
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2355 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2357, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i32 %1, metadata !2358, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %2, metadata !2359, metadata !DIExpression()), !dbg !2361
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2362
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()) #33, !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !2172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2364
  %6 = icmp eq i32 %1, 10, !dbg !2366
  br i1 %6, label %7, label %8, !dbg !2367

7:                                                ; preds = %3
  tail call void @abort() #35, !dbg !2368, !noalias !2369
  unreachable, !dbg !2368

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2364
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2372
  store i32 %1, i32* %9, align 8, !dbg !2372, !tbaa.struct !2277
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2372
  %11 = bitcast i32* %10 to i8*, !dbg !2372
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2372
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1287, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 58, metadata !1288, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 1, metadata !1289, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i8 58, metadata !1290, metadata !DIExpression()), !dbg !2373
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2375
  call void @llvm.dbg.value(metadata i32* %12, metadata !1291, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 26, metadata !1293, metadata !DIExpression()), !dbg !2373
  %13 = load i32, i32* %12, align 4, !dbg !2376, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %13, metadata !1294, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2373
  %14 = or i32 %13, 67108864, !dbg !2377
  store i32 %14, i32* %12, align 4, !dbg !2377, !tbaa !544
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2378
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2379
  ret i8* %15, !dbg !2380
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2381 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2385, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %1, metadata !2386, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %2, metadata !2387, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8* %3, metadata !2388, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()) #33, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %1, metadata !2395, metadata !DIExpression()) #33, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %2, metadata !2396, metadata !DIExpression()) #33, !dbg !2400
  call void @llvm.dbg.value(metadata i8* %3, metadata !2397, metadata !DIExpression()) #33, !dbg !2400
  call void @llvm.dbg.value(metadata i64 -1, metadata !2398, metadata !DIExpression()) #33, !dbg !2400
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2402
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2402
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2399, metadata !DIExpression()) #33, !dbg !2403
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2404, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #33, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()) #33, !dbg !2405
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()) #33, !dbg !2405
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #33, !dbg !2405
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2407
  store i32 10, i32* %7, align 8, !dbg !2408, !tbaa !1269
  %8 = icmp ne i8* %1, null, !dbg !2409
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2410
  br i1 %10, label %12, label %11, !dbg !2410

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2411
  unreachable, !dbg !2411

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2412
  store i8* %1, i8** %13, align 8, !dbg !2413, !tbaa !1342
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2414
  store i8* %2, i8** %14, align 8, !dbg !2415, !tbaa !1345
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2416
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2417
  ret i8* %15, !dbg !2418
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2391 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %1, metadata !2395, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %2, metadata !2396, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i8* %3, metadata !2397, metadata !DIExpression()), !dbg !2419
  call void @llvm.dbg.value(metadata i64 %4, metadata !2398, metadata !DIExpression()), !dbg !2419
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2420
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2399, metadata !DIExpression()), !dbg !2421
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2422, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1327, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %1, metadata !1328, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !1329, metadata !DIExpression()) #33, !dbg !2423
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1327, metadata !DIExpression()) #33, !dbg !2423
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2425
  store i32 10, i32* %8, align 8, !dbg !2426, !tbaa !1269
  %9 = icmp ne i8* %1, null, !dbg !2427
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2428
  br i1 %11, label %13, label %12, !dbg !2428

12:                                               ; preds = %5
  tail call void @abort() #35, !dbg !2429
  unreachable, !dbg !2429

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2430
  store i8* %1, i8** %14, align 8, !dbg !2431, !tbaa !1342
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2432
  store i8* %2, i8** %15, align 8, !dbg !2433, !tbaa !1345
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2434
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #33, !dbg !2435
  ret i8* %16, !dbg !2436
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2437 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2441, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2442, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i8* %2, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata i32 0, metadata !2385, metadata !DIExpression()) #33, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %0, metadata !2386, metadata !DIExpression()) #33, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %1, metadata !2387, metadata !DIExpression()) #33, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %2, metadata !2388, metadata !DIExpression()) #33, !dbg !2445
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()) #33, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %0, metadata !2395, metadata !DIExpression()) #33, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()) #33, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()) #33, !dbg !2447
  call void @llvm.dbg.value(metadata i64 -1, metadata !2398, metadata !DIExpression()) #33, !dbg !2447
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2449
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2449
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2399, metadata !DIExpression()) #33, !dbg !2450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2451, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1327, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata i8* %1, metadata !1329, metadata !DIExpression()) #33, !dbg !2452
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1327, metadata !DIExpression()) #33, !dbg !2452
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2454
  store i32 10, i32* %6, align 8, !dbg !2455, !tbaa !1269
  %7 = icmp ne i8* %0, null, !dbg !2456
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2457
  br i1 %9, label %11, label %10, !dbg !2457

10:                                               ; preds = %3
  tail call void @abort() #35, !dbg !2458
  unreachable, !dbg !2458

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2459
  store i8* %0, i8** %12, align 8, !dbg !2460, !tbaa !1342
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2461
  store i8* %1, i8** %13, align 8, !dbg !2462, !tbaa !1345
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #33, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #33, !dbg !2464
  ret i8* %14, !dbg !2465
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2466 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %1, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i8* %2, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i64 %3, metadata !2473, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 0, metadata !2390, metadata !DIExpression()) #33, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %0, metadata !2395, metadata !DIExpression()) #33, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %1, metadata !2396, metadata !DIExpression()) #33, !dbg !2475
  call void @llvm.dbg.value(metadata i8* %2, metadata !2397, metadata !DIExpression()) #33, !dbg !2475
  call void @llvm.dbg.value(metadata i64 %3, metadata !2398, metadata !DIExpression()) #33, !dbg !2475
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2477
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2477
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2399, metadata !DIExpression()) #33, !dbg !2478
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #33, !dbg !2479, !tbaa.struct !2277
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #33, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %0, metadata !1328, metadata !DIExpression()) #33, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %1, metadata !1329, metadata !DIExpression()) #33, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1327, metadata !DIExpression()) #33, !dbg !2480
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2482
  store i32 10, i32* %7, align 8, !dbg !2483, !tbaa !1269
  %8 = icmp ne i8* %0, null, !dbg !2484
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2485
  br i1 %10, label %12, label %11, !dbg !2485

11:                                               ; preds = %4
  tail call void @abort() #35, !dbg !2486
  unreachable, !dbg !2486

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2487
  store i8* %0, i8** %13, align 8, !dbg !2488, !tbaa !1342
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2489
  store i8* %1, i8** %14, align 8, !dbg !2490, !tbaa !1345
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #33, !dbg !2491
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #33, !dbg !2492
  ret i8* %15, !dbg !2493
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2494 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2498, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i8* %1, metadata !2499, metadata !DIExpression()), !dbg !2501
  call void @llvm.dbg.value(metadata i64 %2, metadata !2500, metadata !DIExpression()), !dbg !2501
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2502
  ret i8* %4, !dbg !2503
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2504 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2508, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %1, metadata !2509, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()) #33, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %0, metadata !2499, metadata !DIExpression()) #33, !dbg !2511
  call void @llvm.dbg.value(metadata i64 %1, metadata !2500, metadata !DIExpression()) #33, !dbg !2511
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2513
  ret i8* %3, !dbg !2514
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2515 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2519, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !2520, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i32 %0, metadata !2498, metadata !DIExpression()) #33, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %1, metadata !2499, metadata !DIExpression()) #33, !dbg !2522
  call void @llvm.dbg.value(metadata i64 -1, metadata !2500, metadata !DIExpression()) #33, !dbg !2522
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2524
  ret i8* %3, !dbg !2525
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2526 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()), !dbg !2531
  call void @llvm.dbg.value(metadata i32 0, metadata !2519, metadata !DIExpression()) #33, !dbg !2532
  call void @llvm.dbg.value(metadata i8* %0, metadata !2520, metadata !DIExpression()) #33, !dbg !2532
  call void @llvm.dbg.value(metadata i32 0, metadata !2498, metadata !DIExpression()) #33, !dbg !2534
  call void @llvm.dbg.value(metadata i8* %0, metadata !2499, metadata !DIExpression()) #33, !dbg !2534
  call void @llvm.dbg.value(metadata i64 -1, metadata !2500, metadata !DIExpression()) #33, !dbg !2534
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #33, !dbg !2536
  ret i8* %2, !dbg !2537
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2538 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2577, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %1, metadata !2578, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %2, metadata !2579, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %3, metadata !2580, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8** %4, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i64 %5, metadata !2582, metadata !DIExpression()), !dbg !2583
  %7 = icmp eq i8* %1, null, !dbg !2584
  br i1 %7, label %10, label %8, !dbg !2586

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #33, !dbg !2587
  br label %12, !dbg !2587

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.83, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #33, !dbg !2588
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.85, i64 0, i64 0), i32 noundef 5) #33, !dbg !2589
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #33, !dbg !2589
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2590
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.87, i64 0, i64 0), i32 noundef 5) #33, !dbg !2591
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.88, i64 0, i64 0)) #33, !dbg !2591
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2592
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
  ], !dbg !2593

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.89, i64 0, i64 0), i32 noundef 5) #33, !dbg !2594
  %21 = load i8*, i8** %4, align 8, !dbg !2594, !tbaa !456
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #33, !dbg !2594
  br label %147, !dbg !2596

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.90, i64 0, i64 0), i32 noundef 5) #33, !dbg !2597
  %25 = load i8*, i8** %4, align 8, !dbg !2597, !tbaa !456
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2597
  %27 = load i8*, i8** %26, align 8, !dbg !2597, !tbaa !456
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #33, !dbg !2597
  br label %147, !dbg !2598

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.91, i64 0, i64 0), i32 noundef 5) #33, !dbg !2599
  %31 = load i8*, i8** %4, align 8, !dbg !2599, !tbaa !456
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2599
  %33 = load i8*, i8** %32, align 8, !dbg !2599, !tbaa !456
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2599
  %35 = load i8*, i8** %34, align 8, !dbg !2599, !tbaa !456
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #33, !dbg !2599
  br label %147, !dbg !2600

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.92, i64 0, i64 0), i32 noundef 5) #33, !dbg !2601
  %39 = load i8*, i8** %4, align 8, !dbg !2601, !tbaa !456
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2601
  %41 = load i8*, i8** %40, align 8, !dbg !2601, !tbaa !456
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2601
  %43 = load i8*, i8** %42, align 8, !dbg !2601, !tbaa !456
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2601
  %45 = load i8*, i8** %44, align 8, !dbg !2601, !tbaa !456
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #33, !dbg !2601
  br label %147, !dbg !2602

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.93, i64 0, i64 0), i32 noundef 5) #33, !dbg !2603
  %49 = load i8*, i8** %4, align 8, !dbg !2603, !tbaa !456
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2603
  %51 = load i8*, i8** %50, align 8, !dbg !2603, !tbaa !456
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2603
  %53 = load i8*, i8** %52, align 8, !dbg !2603, !tbaa !456
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2603
  %55 = load i8*, i8** %54, align 8, !dbg !2603, !tbaa !456
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2603
  %57 = load i8*, i8** %56, align 8, !dbg !2603, !tbaa !456
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #33, !dbg !2603
  br label %147, !dbg !2604

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.94, i64 0, i64 0), i32 noundef 5) #33, !dbg !2605
  %61 = load i8*, i8** %4, align 8, !dbg !2605, !tbaa !456
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2605
  %63 = load i8*, i8** %62, align 8, !dbg !2605, !tbaa !456
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2605
  %65 = load i8*, i8** %64, align 8, !dbg !2605, !tbaa !456
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2605
  %67 = load i8*, i8** %66, align 8, !dbg !2605, !tbaa !456
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2605
  %69 = load i8*, i8** %68, align 8, !dbg !2605, !tbaa !456
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2605
  %71 = load i8*, i8** %70, align 8, !dbg !2605, !tbaa !456
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #33, !dbg !2605
  br label %147, !dbg !2606

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.95, i64 0, i64 0), i32 noundef 5) #33, !dbg !2607
  %75 = load i8*, i8** %4, align 8, !dbg !2607, !tbaa !456
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2607
  %77 = load i8*, i8** %76, align 8, !dbg !2607, !tbaa !456
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2607
  %79 = load i8*, i8** %78, align 8, !dbg !2607, !tbaa !456
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2607
  %81 = load i8*, i8** %80, align 8, !dbg !2607, !tbaa !456
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2607
  %83 = load i8*, i8** %82, align 8, !dbg !2607, !tbaa !456
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2607
  %85 = load i8*, i8** %84, align 8, !dbg !2607, !tbaa !456
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2607
  %87 = load i8*, i8** %86, align 8, !dbg !2607, !tbaa !456
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #33, !dbg !2607
  br label %147, !dbg !2608

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.96, i64 0, i64 0), i32 noundef 5) #33, !dbg !2609
  %91 = load i8*, i8** %4, align 8, !dbg !2609, !tbaa !456
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2609
  %93 = load i8*, i8** %92, align 8, !dbg !2609, !tbaa !456
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2609
  %95 = load i8*, i8** %94, align 8, !dbg !2609, !tbaa !456
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2609
  %97 = load i8*, i8** %96, align 8, !dbg !2609, !tbaa !456
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2609
  %99 = load i8*, i8** %98, align 8, !dbg !2609, !tbaa !456
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2609
  %101 = load i8*, i8** %100, align 8, !dbg !2609, !tbaa !456
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2609
  %103 = load i8*, i8** %102, align 8, !dbg !2609, !tbaa !456
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2609
  %105 = load i8*, i8** %104, align 8, !dbg !2609, !tbaa !456
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #33, !dbg !2609
  br label %147, !dbg !2610

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.97, i64 0, i64 0), i32 noundef 5) #33, !dbg !2611
  %109 = load i8*, i8** %4, align 8, !dbg !2611, !tbaa !456
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2611
  %111 = load i8*, i8** %110, align 8, !dbg !2611, !tbaa !456
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2611
  %113 = load i8*, i8** %112, align 8, !dbg !2611, !tbaa !456
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2611
  %115 = load i8*, i8** %114, align 8, !dbg !2611, !tbaa !456
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2611
  %117 = load i8*, i8** %116, align 8, !dbg !2611, !tbaa !456
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2611
  %119 = load i8*, i8** %118, align 8, !dbg !2611, !tbaa !456
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2611
  %121 = load i8*, i8** %120, align 8, !dbg !2611, !tbaa !456
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2611
  %123 = load i8*, i8** %122, align 8, !dbg !2611, !tbaa !456
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2611
  %125 = load i8*, i8** %124, align 8, !dbg !2611, !tbaa !456
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #33, !dbg !2611
  br label %147, !dbg !2612

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.98, i64 0, i64 0), i32 noundef 5) #33, !dbg !2613
  %129 = load i8*, i8** %4, align 8, !dbg !2613, !tbaa !456
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2613
  %131 = load i8*, i8** %130, align 8, !dbg !2613, !tbaa !456
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2613
  %133 = load i8*, i8** %132, align 8, !dbg !2613, !tbaa !456
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2613
  %135 = load i8*, i8** %134, align 8, !dbg !2613, !tbaa !456
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2613
  %137 = load i8*, i8** %136, align 8, !dbg !2613, !tbaa !456
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2613
  %139 = load i8*, i8** %138, align 8, !dbg !2613, !tbaa !456
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2613
  %141 = load i8*, i8** %140, align 8, !dbg !2613, !tbaa !456
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2613
  %143 = load i8*, i8** %142, align 8, !dbg !2613, !tbaa !456
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2613
  %145 = load i8*, i8** %144, align 8, !dbg !2613, !tbaa !456
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #33, !dbg !2613
  br label %147, !dbg !2614

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2615
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2616 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2620, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %1, metadata !2621, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %2, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %3, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8** %4, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i64 0, metadata !2625, metadata !DIExpression()), !dbg !2626
  br label %6, !dbg !2627

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2629
  call void @llvm.dbg.value(metadata i64 %7, metadata !2625, metadata !DIExpression()), !dbg !2626
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2630
  %9 = load i8*, i8** %8, align 8, !dbg !2630, !tbaa !456
  %10 = icmp eq i8* %9, null, !dbg !2632
  %11 = add i64 %7, 1, !dbg !2633
  call void @llvm.dbg.value(metadata i64 %11, metadata !2625, metadata !DIExpression()), !dbg !2626
  br i1 %10, label %12, label %6, !dbg !2632, !llvm.loop !2634

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2636
  ret void, !dbg !2637
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2638 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2653, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %1, metadata !2654, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %2, metadata !2655, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i8* %3, metadata !2656, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2657, metadata !DIExpression()), !dbg !2662
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2663
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2663
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2659, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2661
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2661
  %11 = load i32, i32* %8, align 8, !dbg !2665
  %12 = icmp sgt i32 %11, -1, !dbg !2665
  br i1 %12, label %20, label %13, !dbg !2665

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2665
  store i32 %14, i32* %8, align 8, !dbg !2665
  %15 = icmp ult i32 %11, -7, !dbg !2665
  br i1 %15, label %16, label %20, !dbg !2665

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2665
  %18 = sext i32 %11 to i64, !dbg !2665
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2665
  br label %24, !dbg !2665

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2665
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2665
  store i8* %23, i8** %10, align 8, !dbg !2665
  br label %24, !dbg !2665

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2665
  %28 = load i8*, i8** %27, align 8, !dbg !2665
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2668
  store i8* %28, i8** %29, align 8, !dbg !2669, !tbaa !456
  %30 = icmp eq i8* %28, null, !dbg !2670
  br i1 %30, label %210, label %31, !dbg !2671

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 1, metadata !2658, metadata !DIExpression()), !dbg !2661
  %32 = icmp sgt i32 %25, -1, !dbg !2665
  br i1 %32, label %40, label %33, !dbg !2665

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2665
  store i32 %34, i32* %8, align 8, !dbg !2665
  %35 = icmp ult i32 %25, -7, !dbg !2665
  br i1 %35, label %36, label %40, !dbg !2665

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2665
  %38 = sext i32 %25 to i64, !dbg !2665
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2665
  br label %44, !dbg !2665

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2665
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2665
  store i8* %43, i8** %10, align 8, !dbg !2665
  br label %44, !dbg !2665

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2665
  %48 = load i8*, i8** %47, align 8, !dbg !2665
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2668
  store i8* %48, i8** %49, align 8, !dbg !2669, !tbaa !456
  %50 = icmp eq i8* %48, null, !dbg !2670
  br i1 %50, label %210, label %51, !dbg !2671

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 2, metadata !2658, metadata !DIExpression()), !dbg !2661
  %52 = icmp sgt i32 %45, -1, !dbg !2665
  br i1 %52, label %60, label %53, !dbg !2665

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2665
  store i32 %54, i32* %8, align 8, !dbg !2665
  %55 = icmp ult i32 %45, -7, !dbg !2665
  br i1 %55, label %56, label %60, !dbg !2665

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2665
  %58 = sext i32 %45 to i64, !dbg !2665
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2665
  br label %64, !dbg !2665

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2665
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2665
  store i8* %63, i8** %10, align 8, !dbg !2665
  br label %64, !dbg !2665

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2665
  %68 = load i8*, i8** %67, align 8, !dbg !2665
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2668
  store i8* %68, i8** %69, align 8, !dbg !2669, !tbaa !456
  %70 = icmp eq i8* %68, null, !dbg !2670
  br i1 %70, label %210, label %71, !dbg !2671

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 3, metadata !2658, metadata !DIExpression()), !dbg !2661
  %72 = icmp sgt i32 %65, -1, !dbg !2665
  br i1 %72, label %80, label %73, !dbg !2665

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2665
  store i32 %74, i32* %8, align 8, !dbg !2665
  %75 = icmp ult i32 %65, -7, !dbg !2665
  br i1 %75, label %76, label %80, !dbg !2665

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2665
  %78 = sext i32 %65 to i64, !dbg !2665
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2665
  br label %84, !dbg !2665

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2665
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2665
  store i8* %83, i8** %10, align 8, !dbg !2665
  br label %84, !dbg !2665

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2665
  %88 = load i8*, i8** %87, align 8, !dbg !2665
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2668
  store i8* %88, i8** %89, align 8, !dbg !2669, !tbaa !456
  %90 = icmp eq i8* %88, null, !dbg !2670
  br i1 %90, label %210, label %91, !dbg !2671

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 4, metadata !2658, metadata !DIExpression()), !dbg !2661
  %92 = icmp sgt i32 %85, -1, !dbg !2665
  br i1 %92, label %100, label %93, !dbg !2665

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2665
  store i32 %94, i32* %8, align 8, !dbg !2665
  %95 = icmp ult i32 %85, -7, !dbg !2665
  br i1 %95, label %96, label %100, !dbg !2665

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2665
  %98 = sext i32 %85 to i64, !dbg !2665
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2665
  br label %104, !dbg !2665

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2665
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2665
  store i8* %103, i8** %10, align 8, !dbg !2665
  br label %104, !dbg !2665

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2665
  %108 = load i8*, i8** %107, align 8, !dbg !2665
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2668
  store i8* %108, i8** %109, align 8, !dbg !2669, !tbaa !456
  %110 = icmp eq i8* %108, null, !dbg !2670
  br i1 %110, label %210, label %111, !dbg !2671

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 5, metadata !2658, metadata !DIExpression()), !dbg !2661
  %112 = icmp sgt i32 %105, -1, !dbg !2665
  br i1 %112, label %120, label %113, !dbg !2665

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2665
  store i32 %114, i32* %8, align 8, !dbg !2665
  %115 = icmp ult i32 %105, -7, !dbg !2665
  br i1 %115, label %116, label %120, !dbg !2665

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2665
  %118 = sext i32 %105 to i64, !dbg !2665
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2665
  br label %124, !dbg !2665

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2665
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2665
  store i8* %123, i8** %10, align 8, !dbg !2665
  br label %124, !dbg !2665

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2665
  %128 = load i8*, i8** %127, align 8, !dbg !2665
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2668
  store i8* %128, i8** %129, align 8, !dbg !2669, !tbaa !456
  %130 = icmp eq i8* %128, null, !dbg !2670
  br i1 %130, label %210, label %131, !dbg !2671

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 6, metadata !2658, metadata !DIExpression()), !dbg !2661
  %132 = icmp sgt i32 %125, -1, !dbg !2665
  br i1 %132, label %140, label %133, !dbg !2665

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2665
  store i32 %134, i32* %8, align 8, !dbg !2665
  %135 = icmp ult i32 %125, -7, !dbg !2665
  br i1 %135, label %136, label %140, !dbg !2665

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2665
  %138 = sext i32 %125 to i64, !dbg !2665
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2665
  br label %144, !dbg !2665

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2665
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2665
  store i8* %143, i8** %10, align 8, !dbg !2665
  br label %144, !dbg !2665

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2665
  %148 = load i8*, i8** %147, align 8, !dbg !2665
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2668
  store i8* %148, i8** %149, align 8, !dbg !2669, !tbaa !456
  %150 = icmp eq i8* %148, null, !dbg !2670
  br i1 %150, label %210, label %151, !dbg !2671

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 7, metadata !2658, metadata !DIExpression()), !dbg !2661
  %152 = icmp sgt i32 %145, -1, !dbg !2665
  br i1 %152, label %160, label %153, !dbg !2665

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2665
  store i32 %154, i32* %8, align 8, !dbg !2665
  %155 = icmp ult i32 %145, -7, !dbg !2665
  br i1 %155, label %156, label %160, !dbg !2665

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2665
  %158 = sext i32 %145 to i64, !dbg !2665
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2665
  br label %164, !dbg !2665

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2665
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2665
  store i8* %163, i8** %10, align 8, !dbg !2665
  br label %164, !dbg !2665

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2665
  %168 = load i8*, i8** %167, align 8, !dbg !2665
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2668
  store i8* %168, i8** %169, align 8, !dbg !2669, !tbaa !456
  %170 = icmp eq i8* %168, null, !dbg !2670
  br i1 %170, label %210, label %171, !dbg !2671

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 8, metadata !2658, metadata !DIExpression()), !dbg !2661
  %172 = icmp sgt i32 %165, -1, !dbg !2665
  br i1 %172, label %180, label %173, !dbg !2665

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2665
  store i32 %174, i32* %8, align 8, !dbg !2665
  %175 = icmp ult i32 %165, -7, !dbg !2665
  br i1 %175, label %176, label %180, !dbg !2665

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2665
  %178 = sext i32 %165 to i64, !dbg !2665
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2665
  br label %184, !dbg !2665

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2665
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2665
  store i8* %183, i8** %10, align 8, !dbg !2665
  br label %184, !dbg !2665

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2665
  %188 = load i8*, i8** %187, align 8, !dbg !2665
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2668
  store i8* %188, i8** %189, align 8, !dbg !2669, !tbaa !456
  %190 = icmp eq i8* %188, null, !dbg !2670
  br i1 %190, label %210, label %191, !dbg !2671

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2658, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata i64 9, metadata !2658, metadata !DIExpression()), !dbg !2661
  %192 = icmp sgt i32 %185, -1, !dbg !2665
  br i1 %192, label %200, label %193, !dbg !2665

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2665
  store i32 %194, i32* %8, align 8, !dbg !2665
  %195 = icmp ult i32 %185, -7, !dbg !2665
  br i1 %195, label %196, label %200, !dbg !2665

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2665
  %198 = sext i32 %185 to i64, !dbg !2665
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2665
  br label %203, !dbg !2665

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2665
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2665
  store i8* %202, i8** %10, align 8, !dbg !2665
  br label %203, !dbg !2665

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2665
  %206 = load i8*, i8** %205, align 8, !dbg !2665
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2668
  store i8* %206, i8** %207, align 8, !dbg !2669, !tbaa !456
  %208 = icmp eq i8* %206, null, !dbg !2670
  %209 = select i1 %208, i64 9, i64 10, !dbg !2671
  br label %210, !dbg !2671

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2672
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2673
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #33, !dbg !2674
  ret void, !dbg !2674
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2675 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2679, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %1, metadata !2680, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %2, metadata !2681, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %3, metadata !2682, metadata !DIExpression()), !dbg !2684
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2685
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2685
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2683, metadata !DIExpression()), !dbg !2686
  call void @llvm.va_start(i8* nonnull %7), !dbg !2687
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2688
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2688, !tbaa.struct !868
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #33, !dbg !2688
  call void @llvm.va_end(i8* nonnull %7), !dbg !2689
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #33, !dbg !2690
  ret void, !dbg !2690
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2691 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2692, !tbaa !456
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.86, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2692
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.103, i64 0, i64 0), i32 noundef 5) #33, !dbg !2693
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.104, i64 0, i64 0)) #33, !dbg !2693
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.105, i64 0, i64 0), i32 noundef 5) #33, !dbg !2694
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.106, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.107, i64 0, i64 0)) #33, !dbg !2694
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.84, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.108, i64 0, i64 0), i32 noundef 5) #33, !dbg !2695
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0)) #33, !dbg !2695
  ret void, !dbg !2696
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2697 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2702, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %1, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 %2, metadata !2704, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #33, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()) #33, !dbg !2711
  call void @llvm.dbg.value(metadata i64 %2, metadata !2710, metadata !DIExpression()) #33, !dbg !2711
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %4, metadata !2714, metadata !DIExpression()) #33, !dbg !2719
  %5 = icmp eq i8* %4, null, !dbg !2721
  br i1 %5, label %6, label %7, !dbg !2723

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2724
  unreachable, !dbg !2724

7:                                                ; preds = %3
  ret i8* %4, !dbg !2725
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %1, metadata !2709, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i64 %2, metadata !2710, metadata !DIExpression()), !dbg !2726
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2727
  call void @llvm.dbg.value(metadata i8* %4, metadata !2714, metadata !DIExpression()) #33, !dbg !2728
  %5 = icmp eq i8* %4, null, !dbg !2730
  br i1 %5, label %6, label %7, !dbg !2731

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2732
  unreachable, !dbg !2732

7:                                                ; preds = %3
  ret i8* %4, !dbg !2733
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2734 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2738, metadata !DIExpression()), !dbg !2739
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2740
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #33, !dbg !2741
  %3 = icmp eq i8* %2, null, !dbg !2743
  br i1 %3, label %4, label %5, !dbg !2744

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2745
  unreachable, !dbg !2745

5:                                                ; preds = %1
  ret i8* %2, !dbg !2746
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2747 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i64 %0, metadata !2753, metadata !DIExpression()) #33, !dbg !2757
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #33, !dbg !2760
  %3 = icmp eq i8* %2, null, !dbg !2762
  br i1 %3, label %4, label %5, !dbg !2763

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2764
  unreachable, !dbg !2764

5:                                                ; preds = %1
  ret i8* %2, !dbg !2765
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2766 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i64 %0, metadata !2738, metadata !DIExpression()) #33, !dbg !2772
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #33, !dbg !2774
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #33, !dbg !2775
  %3 = icmp eq i8* %2, null, !dbg !2777
  br i1 %3, label %4, label %5, !dbg !2778

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2779
  unreachable, !dbg !2779

5:                                                ; preds = %1
  ret i8* %2, !dbg !2780
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2781 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i64 %1, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()) #33, !dbg !2793
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()) #33, !dbg !2793
  %3 = icmp eq i64 %1, 0, !dbg !2795
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2795
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2796
  call void @llvm.dbg.value(metadata i8* %5, metadata !2714, metadata !DIExpression()) #33, !dbg !2797
  %6 = icmp eq i8* %5, null, !dbg !2799
  br i1 %6, label %7, label %8, !dbg !2800

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2801
  unreachable, !dbg !2801

8:                                                ; preds = %2
  ret i8* %5, !dbg !2802
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !2803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2807, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %1, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %0, metadata !2810, metadata !DIExpression()) #33, !dbg !2814
  call void @llvm.dbg.value(metadata i64 %1, metadata !2813, metadata !DIExpression()) #33, !dbg !2814
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()) #33, !dbg !2816
  call void @llvm.dbg.value(metadata i64 %1, metadata !2792, metadata !DIExpression()) #33, !dbg !2816
  %3 = icmp eq i64 %1, 0, !dbg !2818
  %4 = select i1 %3, i64 1, i64 %1, !dbg !2818
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #33, !dbg !2819
  call void @llvm.dbg.value(metadata i8* %5, metadata !2714, metadata !DIExpression()) #33, !dbg !2820
  %6 = icmp eq i8* %5, null, !dbg !2822
  br i1 %6, label %7, label %8, !dbg !2823

7:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2824
  unreachable, !dbg !2824

8:                                                ; preds = %2
  ret i8* %5, !dbg !2825
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !2826 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2830, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %1, metadata !2831, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i64 %2, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.value(metadata i8* %0, metadata !2834, metadata !DIExpression()) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %1, metadata !2837, metadata !DIExpression()) #33, !dbg !2839
  call void @llvm.dbg.value(metadata i64 %2, metadata !2838, metadata !DIExpression()) #33, !dbg !2839
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #33, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %4, metadata !2714, metadata !DIExpression()) #33, !dbg !2842
  %5 = icmp eq i8* %4, null, !dbg !2844
  br i1 %5, label %6, label %7, !dbg !2845

6:                                                ; preds = %3
  tail call void @xalloc_die() #35, !dbg !2846
  unreachable, !dbg !2846

7:                                                ; preds = %3
  ret i8* %4, !dbg !2847
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2848 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i64 %1, metadata !2853, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.value(metadata i8* null, metadata !2706, metadata !DIExpression()) #33, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %0, metadata !2709, metadata !DIExpression()) #33, !dbg !2855
  call void @llvm.dbg.value(metadata i64 %1, metadata !2710, metadata !DIExpression()) #33, !dbg !2855
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2857
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !2858
  %4 = icmp eq i8* %3, null, !dbg !2860
  br i1 %4, label %5, label %6, !dbg !2861

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2862
  unreachable, !dbg !2862

6:                                                ; preds = %2
  ret i8* %3, !dbg !2863
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2864 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2868, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i64 %1, metadata !2869, metadata !DIExpression()), !dbg !2870
  call void @llvm.dbg.value(metadata i8* null, metadata !2830, metadata !DIExpression()) #33, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %0, metadata !2831, metadata !DIExpression()) #33, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %1, metadata !2832, metadata !DIExpression()) #33, !dbg !2871
  call void @llvm.dbg.value(metadata i8* null, metadata !2834, metadata !DIExpression()) #33, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %0, metadata !2837, metadata !DIExpression()) #33, !dbg !2873
  call void @llvm.dbg.value(metadata i64 %1, metadata !2838, metadata !DIExpression()) #33, !dbg !2873
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #33, !dbg !2875
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !2876
  %4 = icmp eq i8* %3, null, !dbg !2878
  br i1 %4, label %5, label %6, !dbg !2879

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !2880
  unreachable, !dbg !2880

6:                                                ; preds = %2
  ret i8* %3, !dbg !2881
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !2882 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i64* %1, metadata !2887, metadata !DIExpression()), !dbg !2888
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()) #33, !dbg !2889
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()) #33, !dbg !2889
  call void @llvm.dbg.value(metadata i64 1, metadata !391, metadata !DIExpression()) #33, !dbg !2889
  %3 = load i64, i64* %1, align 8, !dbg !2891, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()) #33, !dbg !2889
  %4 = icmp eq i8* %0, null, !dbg !2892
  br i1 %4, label %5, label %8, !dbg !2894

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2895
  %7 = select i1 %6, i64 128, i64 %3, !dbg !2898
  br label %15, !dbg !2898

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !2899
  %10 = add nuw i64 %9, 1, !dbg !2899
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #33, !dbg !2899
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !2899
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !2899
  call void @llvm.dbg.value(metadata i64 %13, metadata !392, metadata !DIExpression()) #33, !dbg !2889
  br i1 %12, label %14, label %15, !dbg !2902

14:                                               ; preds = %8
  tail call void @xalloc_die() #35, !dbg !2903
  unreachable, !dbg !2903

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !2889
  call void @llvm.dbg.value(metadata i64 %16, metadata !392, metadata !DIExpression()) #33, !dbg !2889
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #33, !dbg !2904
  call void @llvm.dbg.value(metadata i64 %16, metadata !2709, metadata !DIExpression()) #33, !dbg !2904
  call void @llvm.dbg.value(metadata i64 1, metadata !2710, metadata !DIExpression()) #33, !dbg !2904
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #33, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %17, metadata !2714, metadata !DIExpression()) #33, !dbg !2907
  %18 = icmp eq i8* %17, null, !dbg !2909
  br i1 %18, label %19, label %20, !dbg !2910

19:                                               ; preds = %15
  tail call void @xalloc_die() #35, !dbg !2911
  unreachable, !dbg !2911

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !389, metadata !DIExpression()) #33, !dbg !2889
  store i64 %16, i64* %1, align 8, !dbg !2912, !tbaa !1987
  ret i8* %17, !dbg !2913
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !2914
  %4 = load i64, i64* %1, align 8, !dbg !2915, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !2914
  %5 = icmp eq i8* %0, null, !dbg !2916
  br i1 %5, label %6, label %13, !dbg !2917

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2918
  br i1 %7, label %8, label %20, !dbg !2919

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2920
  call void @llvm.dbg.value(metadata i64 %9, metadata !392, metadata !DIExpression()), !dbg !2914
  %10 = icmp ugt i64 %2, 128, !dbg !2922
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %12, metadata !392, metadata !DIExpression()), !dbg !2914
  br label %20, !dbg !2924

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !2925
  %15 = add nuw i64 %14, 1, !dbg !2925
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !2925
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !2925
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %18, metadata !392, metadata !DIExpression()), !dbg !2914
  br i1 %17, label %19, label %20, !dbg !2926

19:                                               ; preds = %13
  tail call void @xalloc_die() #35, !dbg !2927
  unreachable, !dbg !2927

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !2914
  call void @llvm.dbg.value(metadata i64 %21, metadata !392, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8* %0, metadata !2706, metadata !DIExpression()) #33, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %21, metadata !2709, metadata !DIExpression()) #33, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %2, metadata !2710, metadata !DIExpression()) #33, !dbg !2928
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #33, !dbg !2930
  call void @llvm.dbg.value(metadata i8* %22, metadata !2714, metadata !DIExpression()) #33, !dbg !2931
  %23 = icmp eq i8* %22, null, !dbg !2933
  br i1 %23, label %24, label %25, !dbg !2934

24:                                               ; preds = %20
  tail call void @xalloc_die() #35, !dbg !2935
  unreachable, !dbg !2935

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !389, metadata !DIExpression()), !dbg !2914
  store i64 %21, i64* %1, align 8, !dbg !2936, !tbaa !1987
  ret i8* %22, !dbg !2937
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64* %1, metadata !405, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %2, metadata !406, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %3, metadata !407, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %4, metadata !408, metadata !DIExpression()), !dbg !2938
  %6 = load i64, i64* %1, align 8, !dbg !2939, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %6, metadata !409, metadata !DIExpression()), !dbg !2938
  %7 = ashr i64 %6, 1, !dbg !2940
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !2940
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !2940
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !2940
  call void @llvm.dbg.value(metadata i64 %10, metadata !410, metadata !DIExpression()), !dbg !2938
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !2942
  call void @llvm.dbg.value(metadata i64 %11, metadata !410, metadata !DIExpression()), !dbg !2938
  %12 = icmp sgt i64 %3, -1, !dbg !2943
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !2945
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %15, metadata !410, metadata !DIExpression()), !dbg !2938
  %16 = icmp slt i64 %4, 0, !dbg !2946
  br i1 %16, label %17, label %30, !dbg !2946

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !2946
  br i1 %18, label %19, label %24, !dbg !2946

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !2946
  %21 = udiv i64 9223372036854775807, %20, !dbg !2946
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !2946
  br i1 %23, label %46, label %43, !dbg !2946

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !2946
  br i1 %25, label %43, label %26, !dbg !2946

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !2946
  %28 = udiv i64 -9223372036854775808, %27, !dbg !2946
  %29 = icmp ult i64 %28, %15, !dbg !2946
  br i1 %29, label %46, label %43, !dbg !2946

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !2946
  br i1 %31, label %43, label %32, !dbg !2946

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !2946
  br i1 %33, label %34, label %40, !dbg !2946

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !2946
  br i1 %35, label %43, label %36, !dbg !2946

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !2946
  %38 = udiv i64 -9223372036854775808, %37, !dbg !2946
  %39 = icmp ult i64 %38, %4, !dbg !2946
  br i1 %39, label %46, label %43, !dbg !2946

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !2946
  %42 = icmp ult i64 %41, %15, !dbg !2946
  br i1 %42, label %46, label %43, !dbg !2946

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2938
  %44 = mul i64 %15, %4, !dbg !2946
  call void @llvm.dbg.value(metadata i64 %44, metadata !411, metadata !DIExpression()), !dbg !2938
  %45 = icmp slt i64 %44, 128, !dbg !2946
  br i1 %45, label %46, label %52, !dbg !2946

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !412, metadata !DIExpression()), !dbg !2938
  %48 = sdiv i64 %47, %4, !dbg !2947
  call void @llvm.dbg.value(metadata i64 %48, metadata !410, metadata !DIExpression()), !dbg !2938
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %51, metadata !411, metadata !DIExpression()), !dbg !2938
  br label %52, !dbg !2951

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !2938
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !2938
  call void @llvm.dbg.value(metadata i64 %54, metadata !411, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %53, metadata !410, metadata !DIExpression()), !dbg !2938
  %55 = icmp eq i8* %0, null, !dbg !2952
  br i1 %55, label %56, label %57, !dbg !2954

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !2955, !tbaa !1987
  br label %57, !dbg !2956

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !2957
  %59 = icmp slt i64 %58, %2, !dbg !2959
  br i1 %59, label %60, label %97, !dbg !2960

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !2961
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !2961
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !2961
  call void @llvm.dbg.value(metadata i64 %63, metadata !410, metadata !DIExpression()), !dbg !2938
  br i1 %62, label %96, label %64, !dbg !2962

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !2963
  br i1 %66, label %96, label %67, !dbg !2963

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !2964

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !2964
  br i1 %69, label %70, label %75, !dbg !2964

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !2964
  %72 = udiv i64 9223372036854775807, %71, !dbg !2964
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !2964
  br i1 %74, label %96, label %94, !dbg !2964

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !2964
  br i1 %76, label %94, label %77, !dbg !2964

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !2964
  %79 = udiv i64 -9223372036854775808, %78, !dbg !2964
  %80 = icmp ult i64 %79, %63, !dbg !2964
  br i1 %80, label %96, label %94, !dbg !2964

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !2964
  br i1 %82, label %94, label %83, !dbg !2964

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !2964
  br i1 %84, label %85, label %91, !dbg !2964

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !2964
  br i1 %86, label %94, label %87, !dbg !2964

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !2964
  %89 = udiv i64 -9223372036854775808, %88, !dbg !2964
  %90 = icmp ult i64 %89, %4, !dbg !2964
  br i1 %90, label %96, label %94, !dbg !2964

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !2964
  %93 = icmp ult i64 %92, %63, !dbg !2964
  br i1 %93, label %96, label %94, !dbg !2964

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !2938
  %95 = mul i64 %63, %4, !dbg !2964
  call void @llvm.dbg.value(metadata i64 %95, metadata !411, metadata !DIExpression()), !dbg !2938
  br label %97, !dbg !2965

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #35, !dbg !2966
  unreachable, !dbg !2966

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !2938
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !2938
  call void @llvm.dbg.value(metadata i64 %99, metadata !411, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i64 %98, metadata !410, metadata !DIExpression()), !dbg !2938
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()) #33, !dbg !2967
  call void @llvm.dbg.value(metadata i64 %99, metadata !2786, metadata !DIExpression()) #33, !dbg !2967
  call void @llvm.dbg.value(metadata i8* %0, metadata !2788, metadata !DIExpression()) #33, !dbg !2969
  call void @llvm.dbg.value(metadata i64 %99, metadata !2792, metadata !DIExpression()) #33, !dbg !2969
  %100 = icmp eq i64 %99, 0, !dbg !2971
  %101 = select i1 %100, i64 1, i64 %99, !dbg !2971
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #33, !dbg !2972
  call void @llvm.dbg.value(metadata i8* %102, metadata !2714, metadata !DIExpression()) #33, !dbg !2973
  %103 = icmp eq i8* %102, null, !dbg !2975
  br i1 %103, label %104, label %105, !dbg !2976

104:                                              ; preds = %97
  tail call void @xalloc_die() #35, !dbg !2977
  unreachable, !dbg !2977

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !404, metadata !DIExpression()), !dbg !2938
  store i64 %98, i64* %1, align 8, !dbg !2978, !tbaa !1987
  ret i8* %102, !dbg !2979
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !2980 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2982, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.value(metadata i64 %0, metadata !2984, metadata !DIExpression()) #33, !dbg !2988
  call void @llvm.dbg.value(metadata i64 1, metadata !2987, metadata !DIExpression()) #33, !dbg !2988
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !2990
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #33, !dbg !2991
  %3 = icmp eq i8* %2, null, !dbg !2993
  br i1 %3, label %4, label %5, !dbg !2994

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !2995
  unreachable, !dbg !2995

5:                                                ; preds = %1
  ret i8* %2, !dbg !2996
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !2985 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2984, metadata !DIExpression()), !dbg !2997
  call void @llvm.dbg.value(metadata i64 %1, metadata !2987, metadata !DIExpression()), !dbg !2997
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !2999
  %4 = icmp eq i8* %3, null, !dbg !3001
  br i1 %4, label %5, label %6, !dbg !3002

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3003
  unreachable, !dbg !3003

6:                                                ; preds = %2
  ret i8* %3, !dbg !3004
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #27 !dbg !3005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %0, metadata !3009, metadata !DIExpression()) #33, !dbg !3013
  call void @llvm.dbg.value(metadata i64 1, metadata !3012, metadata !DIExpression()) #33, !dbg !3013
  call void @llvm.dbg.value(metadata i64 %0, metadata !3015, metadata !DIExpression()) #33, !dbg !3019
  call void @llvm.dbg.value(metadata i64 1, metadata !3018, metadata !DIExpression()) #33, !dbg !3019
  call void @llvm.dbg.value(metadata i64 %0, metadata !3015, metadata !DIExpression()) #33, !dbg !3019
  call void @llvm.dbg.value(metadata i64 1, metadata !3018, metadata !DIExpression()) #33, !dbg !3019
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #33, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %2, metadata !2714, metadata !DIExpression()) #33, !dbg !3022
  %3 = icmp eq i8* %2, null, !dbg !3024
  br i1 %3, label %4, label %5, !dbg !3025

4:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3026
  unreachable, !dbg !3026

5:                                                ; preds = %1
  ret i8* %2, !dbg !3027
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3010 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3009, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %1, metadata !3012, metadata !DIExpression()), !dbg !3028
  call void @llvm.dbg.value(metadata i64 %0, metadata !3015, metadata !DIExpression()) #33, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()) #33, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %0, metadata !3015, metadata !DIExpression()) #33, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %1, metadata !3018, metadata !DIExpression()) #33, !dbg !3029
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #33, !dbg !3031
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !3032
  %4 = icmp eq i8* %3, null, !dbg !3034
  br i1 %4, label %5, label %6, !dbg !3035

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3036
  unreachable, !dbg !3036

6:                                                ; preds = %2
  ret i8* %3, !dbg !3037
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3038 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3043, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !2738, metadata !DIExpression()) #33, !dbg !3045
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !3048
  %4 = icmp eq i8* %3, null, !dbg !3050
  br i1 %4, label %5, label %6, !dbg !3051

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3052
  unreachable, !dbg !3052

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3053, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()) #33, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()) #33, !dbg !3061
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3063
  ret i8* %3, !dbg !3064
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !2751, metadata !DIExpression()) #33, !dbg !3072
  call void @llvm.dbg.value(metadata i64 %1, metadata !2753, metadata !DIExpression()) #33, !dbg !3074
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #33, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()) #33, !dbg !3077
  %4 = icmp eq i8* %3, null, !dbg !3079
  br i1 %4, label %5, label %6, !dbg !3080

5:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3081
  unreachable, !dbg !3081

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3053, metadata !DIExpression()) #33, !dbg !3082
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()) #33, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()) #33, !dbg !3082
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3084
  ret i8* %3, !dbg !3085
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3086 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata i64 %1, metadata !3091, metadata !DIExpression()), !dbg !3093
  %3 = add nsw i64 %1, 1, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %3, metadata !2751, metadata !DIExpression()) #33, !dbg !3095
  call void @llvm.dbg.value(metadata i64 %3, metadata !2753, metadata !DIExpression()) #33, !dbg !3097
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3099
  call void @llvm.dbg.value(metadata i8* %4, metadata !2714, metadata !DIExpression()) #33, !dbg !3100
  %5 = icmp eq i8* %4, null, !dbg !3102
  br i1 %5, label %6, label %7, !dbg !3103

6:                                                ; preds = %2
  tail call void @xalloc_die() #35, !dbg !3104
  unreachable, !dbg !3104

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3092, metadata !DIExpression()), !dbg !3093
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3105
  store i8 0, i8* %8, align 1, !dbg !3106, !tbaa !553
  call void @llvm.dbg.value(metadata i8* %4, metadata !3053, metadata !DIExpression()) #33, !dbg !3107
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()) #33, !dbg !3107
  call void @llvm.dbg.value(metadata i64 %1, metadata !3060, metadata !DIExpression()) #33, !dbg !3107
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #33, !dbg !3109
  ret i8* %4, !dbg !3110
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3111 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3113, metadata !DIExpression()), !dbg !3114
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #34, !dbg !3115
  %3 = add i64 %2, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i8* %0, metadata !3042, metadata !DIExpression()) #33, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %3, metadata !3043, metadata !DIExpression()) #33, !dbg !3117
  call void @llvm.dbg.value(metadata i64 %3, metadata !2738, metadata !DIExpression()) #33, !dbg !3119
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #33, !dbg !3121
  call void @llvm.dbg.value(metadata i8* %4, metadata !2714, metadata !DIExpression()) #33, !dbg !3122
  %5 = icmp eq i8* %4, null, !dbg !3124
  br i1 %5, label %6, label %7, !dbg !3125

6:                                                ; preds = %1
  tail call void @xalloc_die() #35, !dbg !3126
  unreachable, !dbg !3126

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3053, metadata !DIExpression()) #33, !dbg !3127
  call void @llvm.dbg.value(metadata i8* %0, metadata !3059, metadata !DIExpression()) #33, !dbg !3127
  call void @llvm.dbg.value(metadata i64 %3, metadata !3060, metadata !DIExpression()) #33, !dbg !3127
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #33, !dbg !3129
  ret i8* %4, !dbg !3130
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3131 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3136, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %1, metadata !3133, metadata !DIExpression()), !dbg !3137
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.119, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.120, i64 0, i64 0), i32 noundef 5) #33, !dbg !3136
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i64 0, i64 0), i8* noundef %2) #33, !dbg !3136
  %3 = icmp eq i32 %1, 0, !dbg !3136
  tail call void @llvm.assume(i1 %3), !dbg !3136
  tail call void @abort() #35, !dbg !3138
  unreachable, !dbg !3138
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3139 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3177, metadata !DIExpression()), !dbg !3182
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #33, !dbg !3183
  call void @llvm.dbg.value(metadata i1 undef, metadata !3178, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3182
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3184, metadata !DIExpression()), !dbg !3187
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3189
  %4 = load i32, i32* %3, align 8, !dbg !3189, !tbaa !3190
  %5 = and i32 %4, 32, !dbg !3191
  %6 = icmp eq i32 %5, 0, !dbg !3191
  call void @llvm.dbg.value(metadata i1 %6, metadata !3180, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3182
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #33, !dbg !3192
  %8 = icmp eq i32 %7, 0, !dbg !3193
  call void @llvm.dbg.value(metadata i1 %8, metadata !3181, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3182
  br i1 %6, label %9, label %19, !dbg !3194

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3196
  call void @llvm.dbg.value(metadata i1 %10, metadata !3178, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3182
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3197
  %12 = xor i1 %8, true, !dbg !3197
  %13 = sext i1 %12 to i32, !dbg !3197
  br i1 %11, label %22, label %14, !dbg !3197

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #36, !dbg !3198
  %16 = load i32, i32* %15, align 4, !dbg !3198, !tbaa !544
  %17 = icmp ne i32 %16, 9, !dbg !3199
  %18 = sext i1 %17 to i32, !dbg !3200
  br label %22, !dbg !3200

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3201

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #36, !dbg !3203
  store i32 0, i32* %21, align 4, !dbg !3205, !tbaa !544
  br label %22, !dbg !3203

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3182
  ret i32 %23, !dbg !3206
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3207 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3245, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 0, metadata !3246, metadata !DIExpression()), !dbg !3249
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3250
  call void @llvm.dbg.value(metadata i32 %2, metadata !3247, metadata !DIExpression()), !dbg !3249
  %3 = icmp slt i32 %2, 0, !dbg !3251
  br i1 %3, label %4, label %6, !dbg !3253

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3254
  br label %24, !dbg !3255

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3256
  %8 = icmp eq i32 %7, 0, !dbg !3256
  br i1 %8, label %13, label %9, !dbg !3258

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3259
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #33, !dbg !3260
  %12 = icmp eq i64 %11, -1, !dbg !3261
  br i1 %12, label %16, label %13, !dbg !3262

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3263
  %15 = icmp eq i32 %14, 0, !dbg !3263
  br i1 %15, label %16, label %18, !dbg !3264

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 0, metadata !3248, metadata !DIExpression()), !dbg !3249
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %21, metadata !3248, metadata !DIExpression()), !dbg !3249
  br label %24, !dbg !3266

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #36, !dbg !3267
  %20 = load i32, i32* %19, align 4, !dbg !3267, !tbaa !544
  call void @llvm.dbg.value(metadata i32 %20, metadata !3246, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata i32 0, metadata !3248, metadata !DIExpression()), !dbg !3249
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3265
  call void @llvm.dbg.value(metadata i32 %21, metadata !3248, metadata !DIExpression()), !dbg !3249
  %22 = icmp eq i32 %20, 0, !dbg !3268
  br i1 %22, label %24, label %23, !dbg !3266

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3270, !tbaa !544
  call void @llvm.dbg.value(metadata i32 -1, metadata !3248, metadata !DIExpression()), !dbg !3249
  br label %24, !dbg !3272

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3249
  ret i32 %25, !dbg !3273
}

; Function Attrs: nofree nounwind
declare !dbg !3274 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3275 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3276 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3279 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3317, metadata !DIExpression()), !dbg !3318
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3319
  br i1 %2, label %6, label %3, !dbg !3321

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3322
  %5 = icmp eq i32 %4, 0, !dbg !3322
  br i1 %5, label %6, label %8, !dbg !3323

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3324
  br label %17, !dbg !3325

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3326, metadata !DIExpression()) #33, !dbg !3331
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3333
  %10 = load i32, i32* %9, align 8, !dbg !3333, !tbaa !3190
  %11 = and i32 %10, 256, !dbg !3335
  %12 = icmp eq i32 %11, 0, !dbg !3335
  br i1 %12, label %15, label %13, !dbg !3336

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #33, !dbg !3337
  br label %15, !dbg !3337

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3338
  br label %17, !dbg !3339

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3318
  ret i32 %18, !dbg !3340
}

; Function Attrs: nofree nounwind
declare !dbg !3341 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3342 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3381, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i64 %1, metadata !3382, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.value(metadata i32 %2, metadata !3383, metadata !DIExpression()), !dbg !3387
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3388
  %5 = load i8*, i8** %4, align 8, !dbg !3388, !tbaa !3389
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3390
  %7 = load i8*, i8** %6, align 8, !dbg !3390, !tbaa !3391
  %8 = icmp eq i8* %5, %7, !dbg !3392
  br i1 %8, label %9, label %28, !dbg !3393

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3394
  %11 = load i8*, i8** %10, align 8, !dbg !3394, !tbaa !981
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3395
  %13 = load i8*, i8** %12, align 8, !dbg !3395, !tbaa !3396
  %14 = icmp eq i8* %11, %13, !dbg !3397
  br i1 %14, label %15, label %28, !dbg !3398

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3399
  %17 = load i8*, i8** %16, align 8, !dbg !3399, !tbaa !3400
  %18 = icmp eq i8* %17, null, !dbg !3401
  br i1 %18, label %19, label %28, !dbg !3402

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #33, !dbg !3403
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #33, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %21, metadata !3384, metadata !DIExpression()), !dbg !3405
  %22 = icmp eq i64 %21, -1, !dbg !3406
  br i1 %22, label %30, label %23, !dbg !3408

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3409
  %25 = load i32, i32* %24, align 8, !dbg !3410, !tbaa !3190
  %26 = and i32 %25, -17, !dbg !3410
  store i32 %26, i32* %24, align 8, !dbg !3410, !tbaa !3190
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3411
  store i64 %21, i64* %27, align 8, !dbg !3412, !tbaa !3413
  br label %30, !dbg !3414

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3415
  br label %30, !dbg !3416

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3387
  ret i32 %31, !dbg !3417
}

; Function Attrs: nofree nounwind
declare !dbg !3418 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3421 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3426, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %1, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i64 %2, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3429, metadata !DIExpression()), !dbg !3431
  %5 = icmp eq i8* %1, null, !dbg !3432
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3434
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.132, i64 0, i64 0), i8* %1, !dbg !3434
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3434
  call void @llvm.dbg.value(metadata i64 %8, metadata !3428, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i8* %7, metadata !3427, metadata !DIExpression()), !dbg !3431
  call void @llvm.dbg.value(metadata i32* %6, metadata !3426, metadata !DIExpression()), !dbg !3431
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3435
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3437
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3429, metadata !DIExpression()), !dbg !3431
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #33, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %11, metadata !3430, metadata !DIExpression()), !dbg !3431
  %12 = icmp ult i64 %11, -3, !dbg !3439
  br i1 %12, label %13, label %18, !dbg !3441

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #34, !dbg !3442
  %15 = icmp eq i32 %14, 0, !dbg !3442
  br i1 %15, label %16, label %30, !dbg !3443

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3444, metadata !DIExpression()) #33, !dbg !3449
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3451, metadata !DIExpression()) #33, !dbg !3456
  call void @llvm.dbg.value(metadata i32 0, metadata !3454, metadata !DIExpression()) #33, !dbg !3456
  call void @llvm.dbg.value(metadata i64 8, metadata !3455, metadata !DIExpression()) #33, !dbg !3456
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3458
  store i64 0, i64* %17, align 1, !dbg !3458
  br label %30, !dbg !3459

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3460
  br i1 %19, label %20, label %21, !dbg !3462

20:                                               ; preds = %18
  tail call void @abort() #35, !dbg !3463
  unreachable, !dbg !3463

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3464

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #33, !dbg !3466
  br i1 %24, label %30, label %25, !dbg !3467

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3468
  br i1 %26, label %30, label %27, !dbg !3471

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3472, !tbaa !553
  %29 = zext i8 %28 to i32, !dbg !3473
  store i32 %29, i32* %6, align 4, !dbg !3474, !tbaa !544
  br label %30, !dbg !3475

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3431
  ret i64 %31, !dbg !3476
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3477 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #31

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #32 !dbg !3483 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3485, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %1, metadata !3486, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i64 %2, metadata !3487, metadata !DIExpression()), !dbg !3489
  %4 = icmp eq i64 %2, 0, !dbg !3490
  br i1 %4, label %8, label %5, !dbg !3490

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3490
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3490
  br i1 %7, label %13, label %8, !dbg !3490

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3488, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3489
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3488, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3489
  %9 = mul i64 %2, %1, !dbg !3490
  call void @llvm.dbg.value(metadata i64 %9, metadata !3488, metadata !DIExpression()), !dbg !3489
  call void @llvm.dbg.value(metadata i8* %0, metadata !3492, metadata !DIExpression()) #33, !dbg !3496
  call void @llvm.dbg.value(metadata i64 %9, metadata !3495, metadata !DIExpression()) #33, !dbg !3496
  %10 = icmp eq i64 %9, 0, !dbg !3498
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3498
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #33, !dbg !3499
  br label %15, !dbg !3500

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3488, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3489
  %14 = tail call i32* @__errno_location() #36, !dbg !3501
  store i32 12, i32* %14, align 4, !dbg !3503, !tbaa !544
  br label %15, !dbg !3504

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3489
  ret i8* %16, !dbg !3505
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3506 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3510, metadata !DIExpression()), !dbg !3515
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3516
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3516
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3511, metadata !DIExpression()), !dbg !3517
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #33, !dbg !3518
  %5 = icmp eq i32 %4, 0, !dbg !3518
  br i1 %5, label %6, label %13, !dbg !3520

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3521, metadata !DIExpression()) #33, !dbg !3525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i64 0, i64 0), metadata !3524, metadata !DIExpression()) #33, !dbg !3525
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.137, i64 0, i64 0), i64 2), !dbg !3528
  %8 = icmp eq i32 %7, 0, !dbg !3529
  br i1 %8, label %12, label %9, !dbg !3530

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3521, metadata !DIExpression()) #33, !dbg !3531
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), metadata !3524, metadata !DIExpression()) #33, !dbg !3531
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i64 6), !dbg !3533
  %11 = icmp eq i32 %10, 0, !dbg !3534
  br i1 %11, label %12, label %13, !dbg !3535

12:                                               ; preds = %9, %6
  br label %13, !dbg !3536

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3515
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #33, !dbg !3537
  ret i1 %14, !dbg !3537
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3538 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3542, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i8* %1, metadata !3543, metadata !DIExpression()), !dbg !3545
  call void @llvm.dbg.value(metadata i64 %2, metadata !3544, metadata !DIExpression()), !dbg !3545
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #33, !dbg !3546
  ret i32 %4, !dbg !3547
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3548 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3552, metadata !DIExpression()), !dbg !3553
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #33, !dbg !3554
  ret i8* %2, !dbg !3555
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3556 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3558, metadata !DIExpression()), !dbg !3560
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3561
  call void @llvm.dbg.value(metadata i8* %2, metadata !3559, metadata !DIExpression()), !dbg !3560
  ret i8* %2, !dbg !3562
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3563 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3565, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i8* %1, metadata !3566, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i64 %2, metadata !3567, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.value(metadata i32 %0, metadata !3558, metadata !DIExpression()) #33, !dbg !3573
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #33, !dbg !3575
  call void @llvm.dbg.value(metadata i8* %4, metadata !3559, metadata !DIExpression()) #33, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %4, metadata !3568, metadata !DIExpression()), !dbg !3572
  %5 = icmp eq i8* %4, null, !dbg !3576
  br i1 %5, label %6, label %9, !dbg !3577

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3578
  br i1 %7, label %19, label %8, !dbg !3581

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3582, !tbaa !553
  br label %19, !dbg !3583

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #34, !dbg !3584
  call void @llvm.dbg.value(metadata i64 %10, metadata !3569, metadata !DIExpression()), !dbg !3585
  %11 = icmp ult i64 %10, %2, !dbg !3586
  br i1 %11, label %12, label %14, !dbg !3588

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3589
  call void @llvm.dbg.value(metadata i8* %1, metadata !3591, metadata !DIExpression()) #33, !dbg !3596
  call void @llvm.dbg.value(metadata i8* %4, metadata !3594, metadata !DIExpression()) #33, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %13, metadata !3595, metadata !DIExpression()) #33, !dbg !3596
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #33, !dbg !3598
  br label %19, !dbg !3599

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3600
  br i1 %15, label %19, label %16, !dbg !3603

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3604
  call void @llvm.dbg.value(metadata i8* %1, metadata !3591, metadata !DIExpression()) #33, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %4, metadata !3594, metadata !DIExpression()) #33, !dbg !3606
  call void @llvm.dbg.value(metadata i64 %17, metadata !3595, metadata !DIExpression()) #33, !dbg !3606
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #33, !dbg !3608
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3609
  store i8 0, i8* %18, align 1, !dbg !3610, !tbaa !553
  br label %19, !dbg !3611

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3612
  ret i32 %20, !dbg !3613
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
attributes #24 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
attributes #38 = { cold }
attributes #39 = { nounwind allocsize(1) }
attributes #40 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2, !155, !160, !167, !351, !212, !371, !226, !236, !268, !373, !343, !380, !414, !416, !418, !420, !422, !357, !424, !427, !429, !431}
!llvm.ident = !{!433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433, !433}
!llvm.module.flags = !{!434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 45, type: !141, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !41, globals: !53, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/sync.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2b8dff623ed78e0f8980b4530e39b085")
!4 = !{!5, !12, !27}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "sync_mode", file: !3, line: 37, baseType: !6, size: 32, elements: !7)
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{!8, !9, !10, !11}
!8 = !DIEnumerator(name: "MODE_FILE", value: 0)
!9 = !DIEnumerator(name: "MODE_DATA", value: 1)
!10 = !DIEnumerator(name: "MODE_FILE_SYSTEM", value: 2)
!11 = !DIEnumerator(name: "MODE_SYNC", value: 3)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 46, baseType: !6, size: 32, elements: !14)
!13 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!15 = !DIEnumerator(name: "_ISupper", value: 256)
!16 = !DIEnumerator(name: "_ISlower", value: 512)
!17 = !DIEnumerator(name: "_ISalpha", value: 1024)
!18 = !DIEnumerator(name: "_ISdigit", value: 2048)
!19 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!20 = !DIEnumerator(name: "_ISspace", value: 8192)
!21 = !DIEnumerator(name: "_ISprint", value: 16384)
!22 = !DIEnumerator(name: "_ISgraph", value: 32768)
!23 = !DIEnumerator(name: "_ISblank", value: 1)
!24 = !DIEnumerator(name: "_IScntrl", value: 2)
!25 = !DIEnumerator(name: "_ISpunct", value: 4)
!26 = !DIEnumerator(name: "_ISalnum", value: 8)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !28, line: 42, baseType: !6, size: 32, elements: !29)
!28 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!30 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!31 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!32 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!33 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!34 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!35 = !DIEnumerator(name: "c_quoting_style", value: 5)
!36 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!37 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!38 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!39 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!40 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!41 = !{!42, !44, !45, !46, !47, !50, !52}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!45 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !{!54, !0}
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !56, file: !57, line: 575, type: !45, isLocal: true, isDefinition: true)
!56 = distinct !DISubprogram(name: "oputs_", scope: !57, file: !57, line: 573, type: !58, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!57 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!58 = !DISubroutineType(types: !59)
!59 = !{null, !50, !50}
!60 = !{!61, !62, !63, !66, !68, !69, !70, !74, !75, !76, !77, !79, !135, !136, !137, !139, !140}
!61 = !DILocalVariable(name: "program", arg: 1, scope: !56, file: !57, line: 573, type: !50)
!62 = !DILocalVariable(name: "option", arg: 2, scope: !56, file: !57, line: 573, type: !50)
!63 = !DILocalVariable(name: "term", scope: !64, file: !57, line: 585, type: !50)
!64 = distinct !DILexicalBlock(scope: !65, file: !57, line: 582, column: 5)
!65 = distinct !DILexicalBlock(scope: !56, file: !57, line: 581, column: 7)
!66 = !DILocalVariable(name: "double_space", scope: !56, file: !57, line: 594, type: !67)
!67 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!68 = !DILocalVariable(name: "first_word", scope: !56, file: !57, line: 595, type: !50)
!69 = !DILocalVariable(name: "option_text", scope: !56, file: !57, line: 596, type: !50)
!70 = !DILocalVariable(name: "s", scope: !71, file: !57, line: 608, type: !50)
!71 = distinct !DILexicalBlock(scope: !72, file: !57, line: 605, column: 5)
!72 = distinct !DILexicalBlock(scope: !73, file: !57, line: 604, column: 12)
!73 = distinct !DILexicalBlock(scope: !56, file: !57, line: 597, column: 7)
!74 = !DILocalVariable(name: "spaces", scope: !71, file: !57, line: 609, type: !47)
!75 = !DILocalVariable(name: "anchor_len", scope: !56, file: !57, line: 620, type: !47)
!76 = !DILocalVariable(name: "desc_text", scope: !56, file: !57, line: 625, type: !50)
!77 = !DILocalVariable(name: "__ptr", scope: !78, file: !57, line: 644, type: !50)
!78 = distinct !DILexicalBlock(scope: !56, file: !57, line: 644, column: 3)
!79 = !DILocalVariable(name: "__stream", scope: !78, file: !57, line: 644, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !45, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!108 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !114)
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
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DILocalVariable(name: "__cnt", scope: !78, file: !57, line: 644, type: !47)
!136 = !DILocalVariable(name: "url_program", scope: !56, file: !57, line: 648, type: !50)
!137 = !DILocalVariable(name: "__ptr", scope: !138, file: !57, line: 686, type: !50)
!138 = distinct !DILexicalBlock(scope: !56, file: !57, line: 686, column: 3)
!139 = !DILocalVariable(name: "__stream", scope: !138, file: !57, line: 686, type: !80)
!140 = !DILocalVariable(name: "__cnt", scope: !138, file: !57, line: 686, type: !47)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 1280, elements: !151)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !144, line: 50, size: 256, elements: !145)
!144 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!145 = !{!146, !147, !148, !150}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 52, baseType: !50, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !143, file: !144, line: 55, baseType: !45, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !143, file: !144, line: 56, baseType: !149, size: 64, offset: 128)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !143, file: !144, line: 57, baseType: !45, size: 32, offset: 192)
!151 = !{!152}
!152 = !DISubrange(count: 5)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(name: "Version", scope: !155, file: !156, line: 3, type: !50, isLocal: false, isDefinition: true)
!155 = distinct !DICompileUnit(language: DW_LANG_C99, file: !156, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !157, splitDebugInlining: false, nameTableKind: None)
!156 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!157 = !{!153}
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "file_name", scope: !160, file: !161, line: 45, type: !50, isLocal: true, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !162, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!162 = !{!158, !163}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !160, file: !161, line: 55, type: !67, isLocal: true, isDefinition: true)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !167, file: !168, line: 66, type: !203, isLocal: false, isDefinition: true)
!167 = distinct !DICompileUnit(language: DW_LANG_C99, file: !168, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !169, globals: !170, splitDebugInlining: false, nameTableKind: None)
!168 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!169 = !{!44, !52}
!170 = !{!171, !197, !165, !199, !201}
!171 = !DIGlobalVariableExpression(var: !172, expr: !DIExpression())
!172 = distinct !DIGlobalVariable(name: "old_file_name", scope: !173, file: !168, line: 304, type: !50, isLocal: true, isDefinition: true)
!173 = distinct !DISubprogram(name: "verror_at_line", scope: !168, file: !168, line: 298, type: !174, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !190)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !45, !45, !50, !6, !50, !176}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !177, line: 52, baseType: !178)
!177 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !179, line: 32, baseType: !180)
!179 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !181, baseType: !182)
!181 = !DIFile(filename: "lib/error.c", directory: "/src")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !183, size: 256, elements: !184)
!183 = !DINamespace(name: "std", scope: null)
!184 = !{!185, !186, !187, !188, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !182, file: !181, baseType: !44, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !182, file: !181, baseType: !44, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !182, file: !181, baseType: !44, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !182, file: !181, baseType: !45, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !182, file: !181, baseType: !45, size: 32, offset: 224)
!190 = !{!191, !192, !193, !194, !195, !196}
!191 = !DILocalVariable(name: "status", arg: 1, scope: !173, file: !168, line: 298, type: !45)
!192 = !DILocalVariable(name: "errnum", arg: 2, scope: !173, file: !168, line: 298, type: !45)
!193 = !DILocalVariable(name: "file_name", arg: 3, scope: !173, file: !168, line: 298, type: !50)
!194 = !DILocalVariable(name: "line_number", arg: 4, scope: !173, file: !168, line: 298, type: !6)
!195 = !DILocalVariable(name: "message", arg: 5, scope: !173, file: !168, line: 298, type: !50)
!196 = !DILocalVariable(name: "args", arg: 6, scope: !173, file: !168, line: 298, type: !176)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "old_line_number", scope: !173, file: !168, line: 305, type: !6, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "error_message_count", scope: !167, file: !168, line: 69, type: !6, isLocal: false, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !167, file: !168, line: 295, type: !45, isLocal: false, isDefinition: true)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{null}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !208, file: !209, line: 506, type: !45, isLocal: true, isDefinition: true)
!208 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !209, file: !209, line: 485, type: !210, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !214)
!209 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!210 = !DISubroutineType(types: !211)
!211 = !{!45, !45, !45}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !213, splitDebugInlining: false, nameTableKind: None)
!213 = !{!206}
!214 = !{!215, !216, !217, !218, !221}
!215 = !DILocalVariable(name: "fd", arg: 1, scope: !208, file: !209, line: 485, type: !45)
!216 = !DILocalVariable(name: "target", arg: 2, scope: !208, file: !209, line: 485, type: !45)
!217 = !DILocalVariable(name: "result", scope: !208, file: !209, line: 487, type: !45)
!218 = !DILocalVariable(name: "flags", scope: !219, file: !209, line: 530, type: !45)
!219 = distinct !DILexicalBlock(scope: !220, file: !209, line: 529, column: 5)
!220 = distinct !DILexicalBlock(scope: !208, file: !209, line: 528, column: 7)
!221 = !DILocalVariable(name: "saved_errno", scope: !222, file: !209, line: 533, type: !45)
!222 = distinct !DILexicalBlock(scope: !223, file: !209, line: 532, column: 9)
!223 = distinct !DILexicalBlock(scope: !219, file: !209, line: 531, column: 11)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(name: "program_name", scope: !226, file: !227, line: 31, type: !50, isLocal: false, isDefinition: true)
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !228, globals: !229, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!228 = !{!42}
!229 = !{!224}
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "utf07FF", scope: !232, file: !233, line: 46, type: !263, isLocal: true, isDefinition: true)
!232 = distinct !DISubprogram(name: "proper_name_lite", scope: !233, file: !233, line: 38, type: !234, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !238)
!233 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!234 = !DISubroutineType(types: !235)
!235 = !{!50, !50, !50}
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !233, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !237, splitDebugInlining: false, nameTableKind: None)
!237 = !{!230}
!238 = !{!239, !240, !241, !242, !247}
!239 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !232, file: !233, line: 38, type: !50)
!240 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !232, file: !233, line: 38, type: !50)
!241 = !DILocalVariable(name: "translation", scope: !232, file: !233, line: 40, type: !50)
!242 = !DILocalVariable(name: "w", scope: !232, file: !233, line: 47, type: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !244, line: 37, baseType: !245)
!244 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !107, line: 57, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !107, line: 42, baseType: !6)
!247 = !DILocalVariable(name: "mbs", scope: !232, file: !233, line: 48, type: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !249, line: 6, baseType: !250)
!249 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !251, line: 21, baseType: !252)
!251 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 13, size: 64, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !252, file: !251, line: 15, baseType: !45, size: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !252, file: !251, line: 20, baseType: !256, size: 32, offset: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !252, file: !251, line: 16, size: 32, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !256, file: !251, line: 18, baseType: !6, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !256, file: !251, line: 19, baseType: !260, size: 32)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 32, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 4)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 16, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 2)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !268, file: !269, line: 76, type: !337, isLocal: false, isDefinition: true)
!268 = distinct !DICompileUnit(language: DW_LANG_C99, file: !269, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !270, retainedTypes: !276, globals: !277, splitDebugInlining: false, nameTableKind: None)
!269 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!270 = !{!27, !271, !12}
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !28, line: 254, baseType: !6, size: 32, elements: !272)
!272 = !{!273, !274, !275}
!273 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!274 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!275 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!276 = !{!45, !46, !47}
!277 = !{!266, !278, !284, !296, !298, !303, !326, !333, !335}
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !268, file: !269, line: 92, type: !280, isLocal: false, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !281, size: 320, elements: !282)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!282 = !{!283}
!283 = !DISubrange(count: 10)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !268, file: !269, line: 1040, type: !286, isLocal: false, isDefinition: true)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !269, line: 56, size: 448, elements: !287)
!287 = !{!288, !289, !290, !294, !295}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !286, file: !269, line: 59, baseType: !27, size: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !286, file: !269, line: 62, baseType: !45, size: 32, offset: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !286, file: !269, line: 66, baseType: !291, size: 256, offset: 64)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 8)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !286, file: !269, line: 69, baseType: !50, size: 64, offset: 320)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !286, file: !269, line: 72, baseType: !50, size: 64, offset: 384)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !268, file: !269, line: 107, type: !286, isLocal: true, isDefinition: true)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(name: "slot0", scope: !268, file: !269, line: 831, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2048, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 256)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(name: "quote", scope: !305, file: !269, line: 228, type: !324, isLocal: true, isDefinition: true)
!305 = distinct !DISubprogram(name: "gettext_quote", scope: !269, file: !269, line: 197, type: !306, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!50, !50, !27}
!308 = !{!309, !310, !311, !312, !313}
!309 = !DILocalVariable(name: "msgid", arg: 1, scope: !305, file: !269, line: 197, type: !50)
!310 = !DILocalVariable(name: "s", arg: 2, scope: !305, file: !269, line: 197, type: !27)
!311 = !DILocalVariable(name: "translation", scope: !305, file: !269, line: 199, type: !50)
!312 = !DILocalVariable(name: "w", scope: !305, file: !269, line: 229, type: !243)
!313 = !DILocalVariable(name: "mbs", scope: !305, file: !269, line: 230, type: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !249, line: 6, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !251, line: 21, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 13, size: 64, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !316, file: !251, line: 15, baseType: !45, size: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !316, file: !251, line: 20, baseType: !320, size: 32, offset: 32)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !251, line: 16, size: 32, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !320, file: !251, line: 18, baseType: !6, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !320, file: !251, line: 19, baseType: !260, size: 32)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 64, elements: !325)
!325 = !{!265, !262}
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "slotvec", scope: !268, file: !269, line: 834, type: !328, isLocal: true, isDefinition: true)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !269, line: 823, size: 128, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !329, file: !269, line: 825, baseType: !47, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !329, file: !269, line: 826, baseType: !42, size: 64, offset: 64)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "nslots", scope: !268, file: !269, line: 832, type: !45, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "slotvec0", scope: !268, file: !269, line: 833, type: !329, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 704, elements: !339)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!339 = !{!340}
!340 = !DISubrange(count: 11)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !343, file: !344, line: 26, type: !346, isLocal: false, isDefinition: true)
!343 = distinct !DICompileUnit(language: DW_LANG_C99, file: !344, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !345, splitDebugInlining: false, nameTableKind: None)
!344 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!345 = !{!341}
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 376, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 47)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(name: "exit_failure", scope: !351, file: !352, line: 24, type: !354, isLocal: false, isDefinition: true)
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !353, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!353 = !{!349}
!354 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "internal_state", scope: !357, file: !358, line: 97, type: !361, isLocal: true, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !359, globals: !360, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!359 = !{!44, !47, !52}
!360 = !{!355}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !249, line: 6, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !251, line: 21, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !251, line: 13, size: 64, elements: !364)
!364 = !{!365, !366}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !363, file: !251, line: 15, baseType: !45, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !363, file: !251, line: 20, baseType: !367, size: 32, offset: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !251, line: 16, size: 32, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !367, file: !251, line: 18, baseType: !6, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !367, file: !251, line: 19, baseType: !260, size: 32)
!371 = distinct !DICompileUnit(language: DW_LANG_C99, file: !372, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!372 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !375, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!375 = !{!376}
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !374, line: 40, baseType: !6, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!379 = !{!44}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !382, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!382 = !{!383, !395}
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !384, file: !381, line: 188, baseType: !6, size: 32, elements: !393)
!384 = distinct !DISubprogram(name: "x2nrealloc", scope: !381, file: !381, line: 176, type: !385, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{!44, !44, !387, !47}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!388 = !{!389, !390, !391, !392}
!389 = !DILocalVariable(name: "p", arg: 1, scope: !384, file: !381, line: 176, type: !44)
!390 = !DILocalVariable(name: "pn", arg: 2, scope: !384, file: !381, line: 176, type: !387)
!391 = !DILocalVariable(name: "s", arg: 3, scope: !384, file: !381, line: 176, type: !47)
!392 = !DILocalVariable(name: "n", scope: !384, file: !381, line: 178, type: !47)
!393 = !{!394}
!394 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !396, file: !381, line: 228, baseType: !6, size: 32, elements: !393)
!396 = distinct !DISubprogram(name: "xpalloc", scope: !381, file: !381, line: 223, type: !397, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !403)
!397 = !DISubroutineType(types: !398)
!398 = !{!44, !44, !399, !400, !402, !400}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !401, line: 130, baseType: !402)
!401 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !48, line: 35, baseType: !108)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DILocalVariable(name: "pa", arg: 1, scope: !396, file: !381, line: 223, type: !44)
!405 = !DILocalVariable(name: "pn", arg: 2, scope: !396, file: !381, line: 223, type: !399)
!406 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !396, file: !381, line: 223, type: !400)
!407 = !DILocalVariable(name: "n_max", arg: 4, scope: !396, file: !381, line: 223, type: !402)
!408 = !DILocalVariable(name: "s", arg: 5, scope: !396, file: !381, line: 223, type: !400)
!409 = !DILocalVariable(name: "n0", scope: !396, file: !381, line: 230, type: !400)
!410 = !DILocalVariable(name: "n", scope: !396, file: !381, line: 237, type: !400)
!411 = !DILocalVariable(name: "nbytes", scope: !396, file: !381, line: 248, type: !400)
!412 = !DILocalVariable(name: "adjusted_nbytes", scope: !396, file: !381, line: 252, type: !400)
!413 = !{!42, !44, !67, !108, !49}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!420 = distinct !DICompileUnit(language: DW_LANG_C99, file: !421, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!421 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!422 = distinct !DICompileUnit(language: DW_LANG_C99, file: !423, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!423 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !426, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!426 = !{!67, !49, !44}
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!433 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!434 = !{i32 7, !"Dwarf Version", i32 5}
!435 = !{i32 2, !"Debug Info Version", i32 3}
!436 = !{i32 1, !"wchar_size", i32 4}
!437 = !{i32 1, !"branch-target-enforcement", i32 0}
!438 = !{i32 1, !"sign-return-address", i32 0}
!439 = !{i32 1, !"sign-return-address-all", i32 0}
!440 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!441 = !{i32 7, !"PIC Level", i32 2}
!442 = !{i32 7, !"PIE Level", i32 2}
!443 = !{i32 7, !"uwtable", i32 1}
!444 = !{i32 7, !"frame-pointer", i32 1}
!445 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 55, type: !446, scopeLine: 56, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !448)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !45}
!448 = !{!449}
!449 = !DILocalVariable(name: "status", arg: 1, scope: !445, file: !3, line: 55, type: !45)
!450 = !DILocation(line: 0, scope: !445)
!451 = !DILocation(line: 57, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !445, file: !3, line: 57, column: 7)
!453 = !DILocation(line: 57, column: 7, scope: !445)
!454 = !DILocation(line: 58, column: 5, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !3, line: 58, column: 5)
!456 = !{!457, !457, i64 0}
!457 = !{!"any pointer", !458, i64 0}
!458 = !{!"omnipotent char", !459, i64 0}
!459 = !{!"Simple C/C++ TBAA"}
!460 = !DILocation(line: 61, column: 7, scope: !461)
!461 = distinct !DILexicalBlock(scope: !452, file: !3, line: 60, column: 5)
!462 = !DILocation(line: 62, column: 7, scope: !461)
!463 = !DILocation(line: 70, column: 7, scope: !461)
!464 = !DILocation(line: 73, column: 7, scope: !461)
!465 = !DILocation(line: 76, column: 7, scope: !461)
!466 = !DILocation(line: 77, column: 7, scope: !461)
!467 = !DILocalVariable(name: "program", arg: 1, scope: !468, file: !57, line: 836, type: !50)
!468 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !57, file: !57, line: 836, type: !469, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !471)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !50}
!471 = !{!467, !472, !481, !482, !484, !485}
!472 = !DILocalVariable(name: "infomap", scope: !468, file: !57, line: 838, type: !473)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, size: 896, elements: !479)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !468, file: !57, line: 838, size: 128, elements: !476)
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !475, file: !57, line: 838, baseType: !50, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !475, file: !57, line: 838, baseType: !50, size: 64, offset: 64)
!479 = !{!480}
!480 = !DISubrange(count: 7)
!481 = !DILocalVariable(name: "node", scope: !468, file: !57, line: 848, type: !50)
!482 = !DILocalVariable(name: "map_prog", scope: !468, file: !57, line: 849, type: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!484 = !DILocalVariable(name: "lc_messages", scope: !468, file: !57, line: 861, type: !50)
!485 = !DILocalVariable(name: "url_program", scope: !468, file: !57, line: 874, type: !50)
!486 = !DILocation(line: 0, scope: !468, inlinedAt: !487)
!487 = distinct !DILocation(line: 78, column: 7, scope: !461)
!488 = !DILocation(line: 838, column: 3, scope: !468, inlinedAt: !487)
!489 = !DILocation(line: 838, column: 67, scope: !468, inlinedAt: !487)
!490 = !DILocation(line: 849, column: 36, scope: !468, inlinedAt: !487)
!491 = !DILocation(line: 851, column: 3, scope: !468, inlinedAt: !487)
!492 = !DILocalVariable(name: "__s1", arg: 1, scope: !493, file: !494, line: 1359, type: !50)
!493 = distinct !DISubprogram(name: "streq", scope: !494, file: !494, line: 1359, type: !495, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!494 = !DIFile(filename: "./lib/string.h", directory: "/src")
!495 = !DISubroutineType(types: !496)
!496 = !{!67, !50, !50}
!497 = !{!492, !498}
!498 = !DILocalVariable(name: "__s2", arg: 2, scope: !493, file: !494, line: 1359, type: !50)
!499 = !DILocation(line: 0, scope: !493, inlinedAt: !500)
!500 = distinct !DILocation(line: 851, column: 33, scope: !468, inlinedAt: !487)
!501 = !DILocation(line: 1361, column: 11, scope: !493, inlinedAt: !500)
!502 = !DILocation(line: 1361, column: 10, scope: !493, inlinedAt: !500)
!503 = !DILocation(line: 852, column: 13, scope: !468, inlinedAt: !487)
!504 = !DILocation(line: 851, column: 20, scope: !468, inlinedAt: !487)
!505 = !{!506, !457, i64 0}
!506 = !{!"infomap", !457, i64 0, !457, i64 8}
!507 = !DILocation(line: 851, column: 10, scope: !468, inlinedAt: !487)
!508 = !DILocation(line: 851, column: 28, scope: !468, inlinedAt: !487)
!509 = distinct !{!509, !491, !503, !510}
!510 = !{!"llvm.loop.mustprogress"}
!511 = !DILocation(line: 854, column: 17, scope: !512, inlinedAt: !487)
!512 = distinct !DILexicalBlock(scope: !468, file: !57, line: 854, column: 7)
!513 = !{!506, !457, i64 8}
!514 = !DILocation(line: 854, column: 7, scope: !512, inlinedAt: !487)
!515 = !DILocation(line: 854, column: 7, scope: !468, inlinedAt: !487)
!516 = !DILocation(line: 857, column: 3, scope: !468, inlinedAt: !487)
!517 = !DILocation(line: 861, column: 29, scope: !468, inlinedAt: !487)
!518 = !DILocation(line: 862, column: 7, scope: !519, inlinedAt: !487)
!519 = distinct !DILexicalBlock(scope: !468, file: !57, line: 862, column: 7)
!520 = !DILocation(line: 862, column: 19, scope: !519, inlinedAt: !487)
!521 = !DILocation(line: 862, column: 22, scope: !519, inlinedAt: !487)
!522 = !DILocation(line: 862, column: 7, scope: !468, inlinedAt: !487)
!523 = !DILocation(line: 868, column: 7, scope: !524, inlinedAt: !487)
!524 = distinct !DILexicalBlock(scope: !519, file: !57, line: 863, column: 5)
!525 = !DILocation(line: 870, column: 5, scope: !524, inlinedAt: !487)
!526 = !DILocation(line: 0, scope: !493, inlinedAt: !527)
!527 = distinct !DILocation(line: 874, column: 29, scope: !468, inlinedAt: !487)
!528 = !DILocation(line: 875, column: 3, scope: !468, inlinedAt: !487)
!529 = !DILocation(line: 877, column: 3, scope: !468, inlinedAt: !487)
!530 = !DILocation(line: 879, column: 1, scope: !468, inlinedAt: !487)
!531 = !DILocation(line: 80, column: 3, scope: !445)
!532 = !DISubprogram(name: "dcgettext", scope: !533, file: !533, line: 51, type: !534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!533 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!534 = !DISubroutineType(types: !535)
!535 = !{!42, !50, !50, !45}
!536 = !{}
!537 = !DISubprogram(name: "fputs_unlocked", scope: !177, file: !177, line: 691, type: !538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!538 = !DISubroutineType(types: !539)
!539 = !{!45, !540, !541}
!540 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!541 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!542 = !DILocation(line: 0, scope: !56)
!543 = !DILocation(line: 581, column: 7, scope: !65)
!544 = !{!545, !545, i64 0}
!545 = !{!"int", !458, i64 0}
!546 = !DILocation(line: 581, column: 19, scope: !65)
!547 = !DILocation(line: 581, column: 7, scope: !56)
!548 = !DILocation(line: 585, column: 26, scope: !64)
!549 = !DILocation(line: 0, scope: !64)
!550 = !DILocation(line: 586, column: 23, scope: !64)
!551 = !DILocation(line: 586, column: 28, scope: !64)
!552 = !DILocation(line: 586, column: 32, scope: !64)
!553 = !{!458, !458, i64 0}
!554 = !DILocation(line: 586, column: 38, scope: !64)
!555 = !DILocation(line: 0, scope: !493, inlinedAt: !556)
!556 = distinct !DILocation(line: 586, column: 41, scope: !64)
!557 = !DILocation(line: 1361, column: 11, scope: !493, inlinedAt: !556)
!558 = !DILocation(line: 1361, column: 10, scope: !493, inlinedAt: !556)
!559 = !DILocation(line: 586, column: 19, scope: !64)
!560 = !DILocation(line: 587, column: 5, scope: !64)
!561 = !DILocation(line: 588, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !56, file: !57, line: 588, column: 7)
!563 = !DILocation(line: 588, column: 7, scope: !56)
!564 = !DILocation(line: 590, column: 7, scope: !565)
!565 = distinct !DILexicalBlock(scope: !562, file: !57, line: 589, column: 5)
!566 = !DILocation(line: 591, column: 7, scope: !565)
!567 = !DILocation(line: 595, column: 37, scope: !56)
!568 = !DILocation(line: 595, column: 35, scope: !56)
!569 = !DILocation(line: 596, column: 29, scope: !56)
!570 = !DILocation(line: 597, column: 8, scope: !73)
!571 = !DILocation(line: 597, column: 7, scope: !56)
!572 = !DILocation(line: 604, column: 24, scope: !72)
!573 = !DILocation(line: 604, column: 12, scope: !73)
!574 = !DILocation(line: 0, scope: !71)
!575 = !DILocation(line: 610, column: 16, scope: !71)
!576 = !DILocation(line: 610, column: 7, scope: !71)
!577 = !DILocation(line: 611, column: 21, scope: !71)
!578 = !{!579, !579, i64 0}
!579 = !{!"short", !458, i64 0}
!580 = !DILocation(line: 611, column: 19, scope: !71)
!581 = !DILocation(line: 611, column: 16, scope: !71)
!582 = !DILocation(line: 610, column: 30, scope: !71)
!583 = distinct !{!583, !576, !577, !510}
!584 = !DILocation(line: 612, column: 18, scope: !585)
!585 = distinct !DILexicalBlock(scope: !71, file: !57, line: 612, column: 11)
!586 = !DILocation(line: 612, column: 11, scope: !71)
!587 = !DILocation(line: 620, column: 23, scope: !56)
!588 = !DILocation(line: 625, column: 39, scope: !56)
!589 = !DILocation(line: 626, column: 3, scope: !56)
!590 = !DILocation(line: 626, column: 10, scope: !56)
!591 = !DILocation(line: 626, column: 21, scope: !56)
!592 = !DILocation(line: 628, column: 44, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !57, line: 628, column: 11)
!594 = distinct !DILexicalBlock(scope: !56, file: !57, line: 627, column: 5)
!595 = !DILocation(line: 628, column: 32, scope: !593)
!596 = !DILocation(line: 628, column: 49, scope: !593)
!597 = !DILocation(line: 628, column: 11, scope: !594)
!598 = !DILocation(line: 630, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !57, line: 630, column: 11)
!600 = !DILocation(line: 630, column: 11, scope: !594)
!601 = !DILocation(line: 632, column: 26, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !57, line: 632, column: 15)
!603 = distinct !DILexicalBlock(scope: !599, file: !57, line: 631, column: 9)
!604 = !DILocation(line: 632, column: 34, scope: !602)
!605 = !DILocation(line: 632, column: 37, scope: !602)
!606 = !DILocation(line: 632, column: 15, scope: !603)
!607 = !DILocation(line: 636, column: 29, scope: !608)
!608 = distinct !DILexicalBlock(scope: !603, file: !57, line: 636, column: 15)
!609 = !DILocation(line: 640, column: 16, scope: !594)
!610 = distinct !{!610, !589, !611, !510}
!611 = !DILocation(line: 641, column: 5, scope: !56)
!612 = !DILocation(line: 644, column: 3, scope: !56)
!613 = !DILocation(line: 0, scope: !493, inlinedAt: !614)
!614 = distinct !DILocation(line: 648, column: 31, scope: !56)
!615 = !DILocation(line: 0, scope: !493, inlinedAt: !616)
!616 = distinct !DILocation(line: 649, column: 31, scope: !56)
!617 = !DILocation(line: 0, scope: !493, inlinedAt: !618)
!618 = distinct !DILocation(line: 650, column: 31, scope: !56)
!619 = !DILocation(line: 0, scope: !493, inlinedAt: !620)
!620 = distinct !DILocation(line: 651, column: 31, scope: !56)
!621 = !DILocation(line: 0, scope: !493, inlinedAt: !622)
!622 = distinct !DILocation(line: 652, column: 31, scope: !56)
!623 = !DILocation(line: 0, scope: !493, inlinedAt: !624)
!624 = distinct !DILocation(line: 653, column: 31, scope: !56)
!625 = !DILocation(line: 0, scope: !493, inlinedAt: !626)
!626 = distinct !DILocation(line: 654, column: 31, scope: !56)
!627 = !DILocation(line: 0, scope: !493, inlinedAt: !628)
!628 = distinct !DILocation(line: 655, column: 31, scope: !56)
!629 = !DILocation(line: 0, scope: !493, inlinedAt: !630)
!630 = distinct !DILocation(line: 656, column: 31, scope: !56)
!631 = !DILocation(line: 0, scope: !493, inlinedAt: !632)
!632 = distinct !DILocation(line: 657, column: 31, scope: !56)
!633 = !DILocation(line: 663, column: 7, scope: !634)
!634 = distinct !DILexicalBlock(scope: !56, file: !57, line: 663, column: 7)
!635 = !DILocation(line: 664, column: 7, scope: !634)
!636 = !DILocation(line: 664, column: 10, scope: !634)
!637 = !DILocation(line: 663, column: 7, scope: !56)
!638 = !DILocation(line: 669, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !634, file: !57, line: 665, column: 5)
!640 = !DILocation(line: 671, column: 5, scope: !639)
!641 = !DILocation(line: 676, column: 7, scope: !642)
!642 = distinct !DILexicalBlock(scope: !634, file: !57, line: 673, column: 5)
!643 = !DILocation(line: 679, column: 3, scope: !56)
!644 = !DILocation(line: 683, column: 3, scope: !56)
!645 = !DILocation(line: 686, column: 3, scope: !56)
!646 = !DILocation(line: 688, column: 3, scope: !56)
!647 = !DILocation(line: 691, column: 3, scope: !56)
!648 = !DILocation(line: 695, column: 3, scope: !56)
!649 = !DILocation(line: 696, column: 1, scope: !56)
!650 = !DISubprogram(name: "setlocale", scope: !651, file: !651, line: 122, type: !652, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!651 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!652 = !DISubroutineType(types: !653)
!653 = !{!42, !45, !50}
!654 = !DISubprogram(name: "getenv", scope: !655, file: !655, line: 641, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!655 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!656 = !DISubroutineType(types: !657)
!657 = !{!42, !50}
!658 = !DISubprogram(name: "fwrite_unlocked", scope: !177, file: !177, line: 704, type: !659, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!659 = !DISubroutineType(types: !660)
!660 = !{!47, !661, !47, !47, !541}
!661 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!664 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 166, type: !665, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!665 = !DISubroutineType(types: !666)
!666 = !{!45, !45, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676}
!669 = !DILocalVariable(name: "argc", arg: 1, scope: !664, file: !3, line: 166, type: !45)
!670 = !DILocalVariable(name: "argv", arg: 2, scope: !664, file: !3, line: 166, type: !667)
!671 = !DILocalVariable(name: "arg_data", scope: !664, file: !3, line: 168, type: !67)
!672 = !DILocalVariable(name: "arg_file_system", scope: !664, file: !3, line: 168, type: !67)
!673 = !DILocalVariable(name: "ok", scope: !664, file: !3, line: 169, type: !67)
!674 = !DILocalVariable(name: "c", scope: !664, file: !3, line: 179, type: !45)
!675 = !DILocalVariable(name: "args_specified", scope: !664, file: !3, line: 202, type: !67)
!676 = !DILocalVariable(name: "mode", scope: !664, file: !3, line: 211, type: !5)
!677 = !DILocation(line: 0, scope: !664)
!678 = !DILocation(line: 172, column: 21, scope: !664)
!679 = !DILocation(line: 172, column: 3, scope: !664)
!680 = !DILocation(line: 173, column: 3, scope: !664)
!681 = !DILocation(line: 174, column: 3, scope: !664)
!682 = !DILocation(line: 175, column: 3, scope: !664)
!683 = !DILocation(line: 177, column: 3, scope: !664)
!684 = !DILocation(line: 180, column: 3, scope: !664)
!685 = !DILocation(line: 180, column: 15, scope: !664)
!686 = distinct !{!686, !684, !687, !510}
!687 = !DILocation(line: 200, column: 5, scope: !664)
!688 = !DILocation(line: 193, column: 9, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 184, column: 9)
!690 = distinct !DILexicalBlock(scope: !664, file: !3, line: 182, column: 5)
!691 = !DILocation(line: 195, column: 9, scope: !689)
!692 = !DILocation(line: 198, column: 11, scope: !689)
!693 = !DILocation(line: 202, column: 25, scope: !664)
!694 = !DILocation(line: 202, column: 32, scope: !664)
!695 = !DILocation(line: 204, column: 16, scope: !696)
!696 = distinct !DILexicalBlock(scope: !664, file: !3, line: 204, column: 7)
!697 = !DILocation(line: 205, column: 5, scope: !696)
!698 = !DILocation(line: 208, column: 23, scope: !699)
!699 = distinct !DILexicalBlock(scope: !664, file: !3, line: 208, column: 7)
!700 = !DILocation(line: 209, column: 5, scope: !699)
!701 = !DILocation(line: 212, column: 24, scope: !702)
!702 = distinct !DILexicalBlock(scope: !664, file: !3, line: 212, column: 7)
!703 = !DILocation(line: 221, column: 7, scope: !664)
!704 = !DILocation(line: 222, column: 5, scope: !705)
!705 = distinct !DILexicalBlock(scope: !664, file: !3, line: 221, column: 7)
!706 = !DILocation(line: 226, column: 31, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 225, column: 7)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 225, column: 7)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 224, column: 5)
!710 = !DILocalVariable(name: "mode", arg: 1, scope: !711, file: !3, line: 87, type: !5)
!711 = distinct !DISubprogram(name: "sync_arg", scope: !3, file: !3, line: 87, type: !712, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{!67, !5, !50}
!714 = !{!710, !715, !716, !717, !718, !721, !722, !723}
!715 = !DILocalVariable(name: "file", arg: 2, scope: !711, file: !3, line: 87, type: !50)
!716 = !DILocalVariable(name: "open_flags", scope: !711, file: !3, line: 89, type: !45)
!717 = !DILocalVariable(name: "fd", scope: !711, file: !3, line: 99, type: !45)
!718 = !DILocalVariable(name: "rd_errno", scope: !719, file: !3, line: 104, type: !45)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 101, column: 5)
!720 = distinct !DILexicalBlock(scope: !711, file: !3, line: 100, column: 7)
!721 = !DILocalVariable(name: "ret", scope: !711, file: !3, line: 114, type: !67)
!722 = !DILocalVariable(name: "fdflags", scope: !711, file: !3, line: 117, type: !45)
!723 = !DILocalVariable(name: "sync_status", scope: !724, file: !3, line: 128, type: !45)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 127, column: 5)
!725 = distinct !DILexicalBlock(scope: !711, file: !3, line: 126, column: 7)
!726 = !DILocation(line: 0, scope: !711, inlinedAt: !727)
!727 = distinct !DILocation(line: 226, column: 15, scope: !707)
!728 = !DILocation(line: 99, column: 12, scope: !711, inlinedAt: !727)
!729 = !DILocation(line: 100, column: 10, scope: !720, inlinedAt: !727)
!730 = !DILocation(line: 100, column: 7, scope: !711, inlinedAt: !727)
!731 = !DILocation(line: 104, column: 22, scope: !719, inlinedAt: !727)
!732 = !DILocation(line: 0, scope: !719, inlinedAt: !727)
!733 = !DILocation(line: 106, column: 14, scope: !734, inlinedAt: !727)
!734 = distinct !DILexicalBlock(scope: !719, file: !3, line: 105, column: 11)
!735 = !DILocation(line: 107, column: 14, scope: !736, inlinedAt: !727)
!736 = distinct !DILexicalBlock(scope: !719, file: !3, line: 107, column: 11)
!737 = !DILocation(line: 107, column: 11, scope: !719, inlinedAt: !727)
!738 = !DILocation(line: 117, column: 17, scope: !711, inlinedAt: !727)
!739 = !DILocation(line: 118, column: 15, scope: !740, inlinedAt: !727)
!740 = distinct !DILexicalBlock(scope: !711, file: !3, line: 118, column: 7)
!741 = !DILocation(line: 119, column: 7, scope: !740, inlinedAt: !727)
!742 = !DILocation(line: 119, column: 38, scope: !740, inlinedAt: !727)
!743 = !DILocation(line: 119, column: 10, scope: !740, inlinedAt: !727)
!744 = !DILocation(line: 119, column: 53, scope: !740, inlinedAt: !727)
!745 = !DILocation(line: 118, column: 7, scope: !711, inlinedAt: !727)
!746 = !DILocation(line: 0, scope: !724, inlinedAt: !727)
!747 = !DILocation(line: 130, column: 7, scope: !724, inlinedAt: !727)
!748 = !DILocation(line: 133, column: 25, scope: !749, inlinedAt: !727)
!749 = distinct !DILexicalBlock(scope: !724, file: !3, line: 131, column: 9)
!750 = !DILocation(line: 134, column: 11, scope: !749, inlinedAt: !727)
!751 = !DILocation(line: 137, column: 25, scope: !749, inlinedAt: !727)
!752 = !DILocation(line: 138, column: 11, scope: !749, inlinedAt: !727)
!753 = !DILocation(line: 142, column: 25, scope: !749, inlinedAt: !727)
!754 = !DILocation(line: 143, column: 11, scope: !749, inlinedAt: !727)
!755 = !DILocation(line: 146, column: 11, scope: !749, inlinedAt: !727)
!756 = !DILocation(line: 0, scope: !749, inlinedAt: !727)
!757 = !DILocation(line: 149, column: 23, scope: !758, inlinedAt: !727)
!758 = distinct !DILexicalBlock(scope: !724, file: !3, line: 149, column: 11)
!759 = !DILocation(line: 149, column: 11, scope: !724, inlinedAt: !727)
!760 = !DILocation(line: 156, column: 7, scope: !761, inlinedAt: !727)
!761 = distinct !DILexicalBlock(scope: !711, file: !3, line: 156, column: 7)
!762 = !DILocation(line: 156, column: 18, scope: !761, inlinedAt: !727)
!763 = !DILocation(line: 156, column: 7, scope: !711, inlinedAt: !727)
!764 = !DILocation(line: 158, column: 7, scope: !765, inlinedAt: !727)
!765 = distinct !DILexicalBlock(scope: !761, file: !3, line: 157, column: 5)
!766 = !DILocation(line: 160, column: 5, scope: !765, inlinedAt: !727)
!767 = !DILocation(line: 163, column: 1, scope: !711, inlinedAt: !727)
!768 = !DILocation(line: 226, column: 12, scope: !707)
!769 = !DILocation(line: 225, column: 35, scope: !707)
!770 = !DILocation(line: 225, column: 21, scope: !707)
!771 = !DILocation(line: 225, column: 7, scope: !708)
!772 = distinct !{!772, !771, !773, !510}
!773 = !DILocation(line: 226, column: 43, scope: !708)
!774 = !DILocation(line: 229, column: 10, scope: !664)
!775 = !DILocation(line: 230, column: 1, scope: !664)
!776 = !DISubprogram(name: "bindtextdomain", scope: !533, file: !533, line: 86, type: !777, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!777 = !DISubroutineType(types: !778)
!778 = !{!42, !50, !50}
!779 = !DISubprogram(name: "textdomain", scope: !533, file: !533, line: 82, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!780 = !DISubprogram(name: "atexit", scope: !655, file: !655, line: 602, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!781 = !DISubroutineType(types: !782)
!782 = !{!45, !203}
!783 = !DISubprogram(name: "getopt_long", scope: !144, file: !144, line: 66, type: !784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!784 = !DISubroutineType(types: !785)
!785 = !{!45, !45, !786, !50, !788, !149}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!789 = !DISubprogram(name: "sync", scope: !790, file: !790, line: 1005, type: !204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!790 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!791 = !DISubprogram(name: "open", scope: !792, file: !792, line: 181, type: !793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!792 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!793 = !DISubroutineType(types: !794)
!794 = !{!45, !50, !45, null}
!795 = !DISubprogram(name: "fdatasync", scope: !790, file: !790, line: 1150, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!796 = !DISubroutineType(types: !797)
!797 = !{!45, !45}
!798 = !DISubprogram(name: "fsync", scope: !790, file: !790, line: 989, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!799 = !DISubprogram(name: "syncfs", scope: !790, file: !790, line: 995, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!800 = !DISubprogram(name: "close", scope: !790, file: !790, line: 358, type: !796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!801 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !161, file: !161, line: 50, type: !469, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !802)
!802 = !{!803}
!803 = !DILocalVariable(name: "file", arg: 1, scope: !801, file: !161, line: 50, type: !50)
!804 = !DILocation(line: 0, scope: !801)
!805 = !DILocation(line: 52, column: 13, scope: !801)
!806 = !DILocation(line: 53, column: 1, scope: !801)
!807 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !161, file: !161, line: 87, type: !808, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !810)
!808 = !DISubroutineType(types: !809)
!809 = !{null, !67}
!810 = !{!811}
!811 = !DILocalVariable(name: "ignore", arg: 1, scope: !807, file: !161, line: 87, type: !67)
!812 = !DILocation(line: 0, scope: !807)
!813 = !DILocation(line: 89, column: 16, scope: !807)
!814 = !{!815, !815, i64 0}
!815 = !{!"_Bool", !458, i64 0}
!816 = !DILocation(line: 90, column: 1, scope: !807)
!817 = distinct !DISubprogram(name: "close_stdout", scope: !161, file: !161, line: 116, type: !204, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !160, retainedNodes: !818)
!818 = !{!819}
!819 = !DILocalVariable(name: "write_error", scope: !820, file: !161, line: 121, type: !50)
!820 = distinct !DILexicalBlock(scope: !821, file: !161, line: 120, column: 5)
!821 = distinct !DILexicalBlock(scope: !817, file: !161, line: 118, column: 7)
!822 = !DILocation(line: 118, column: 21, scope: !821)
!823 = !DILocation(line: 118, column: 7, scope: !821)
!824 = !DILocation(line: 118, column: 29, scope: !821)
!825 = !DILocation(line: 119, column: 7, scope: !821)
!826 = !DILocation(line: 119, column: 12, scope: !821)
!827 = !{i8 0, i8 2}
!828 = !DILocation(line: 119, column: 25, scope: !821)
!829 = !DILocation(line: 119, column: 28, scope: !821)
!830 = !DILocation(line: 119, column: 34, scope: !821)
!831 = !DILocation(line: 118, column: 7, scope: !817)
!832 = !DILocation(line: 121, column: 33, scope: !820)
!833 = !DILocation(line: 0, scope: !820)
!834 = !DILocation(line: 122, column: 11, scope: !835)
!835 = distinct !DILexicalBlock(scope: !820, file: !161, line: 122, column: 11)
!836 = !DILocation(line: 0, scope: !835)
!837 = !DILocation(line: 122, column: 11, scope: !820)
!838 = !DILocation(line: 123, column: 9, scope: !835)
!839 = !DILocation(line: 126, column: 9, scope: !835)
!840 = !DILocation(line: 128, column: 14, scope: !820)
!841 = !DILocation(line: 128, column: 7, scope: !820)
!842 = !DILocation(line: 133, column: 42, scope: !843)
!843 = distinct !DILexicalBlock(scope: !817, file: !161, line: 133, column: 7)
!844 = !DILocation(line: 133, column: 28, scope: !843)
!845 = !DILocation(line: 133, column: 50, scope: !843)
!846 = !DILocation(line: 133, column: 7, scope: !817)
!847 = !DILocation(line: 134, column: 12, scope: !843)
!848 = !DILocation(line: 134, column: 5, scope: !843)
!849 = !DILocation(line: 135, column: 1, scope: !817)
!850 = distinct !DISubprogram(name: "verror", scope: !168, file: !168, line: 251, type: !851, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{null, !45, !45, !50, !176}
!853 = !{!854, !855, !856, !857}
!854 = !DILocalVariable(name: "status", arg: 1, scope: !850, file: !168, line: 251, type: !45)
!855 = !DILocalVariable(name: "errnum", arg: 2, scope: !850, file: !168, line: 251, type: !45)
!856 = !DILocalVariable(name: "message", arg: 3, scope: !850, file: !168, line: 251, type: !50)
!857 = !DILocalVariable(name: "args", arg: 4, scope: !850, file: !168, line: 251, type: !176)
!858 = !DILocation(line: 0, scope: !850)
!859 = !DILocation(line: 251, column: 1, scope: !850)
!860 = !DILocation(line: 261, column: 3, scope: !850)
!861 = !DILocation(line: 265, column: 7, scope: !862)
!862 = distinct !DILexicalBlock(scope: !850, file: !168, line: 265, column: 7)
!863 = !DILocation(line: 265, column: 7, scope: !850)
!864 = !DILocation(line: 266, column: 5, scope: !862)
!865 = !DILocation(line: 272, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !862, file: !168, line: 268, column: 5)
!867 = !DILocation(line: 276, column: 3, scope: !850)
!868 = !{i64 0, i64 8, !456, i64 8, i64 8, !456, i64 16, i64 8, !456, i64 24, i64 4, !544, i64 28, i64 4, !544}
!869 = !DILocation(line: 282, column: 1, scope: !850)
!870 = distinct !DISubprogram(name: "flush_stdout", scope: !168, file: !168, line: 163, type: !204, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !871)
!871 = !{!872}
!872 = !DILocalVariable(name: "stdout_fd", scope: !870, file: !168, line: 166, type: !45)
!873 = !DILocation(line: 0, scope: !870)
!874 = !DILocalVariable(name: "fd", arg: 1, scope: !875, file: !168, line: 145, type: !45)
!875 = distinct !DISubprogram(name: "is_open", scope: !168, file: !168, line: 145, type: !796, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !876)
!876 = !{!874}
!877 = !DILocation(line: 0, scope: !875, inlinedAt: !878)
!878 = distinct !DILocation(line: 182, column: 25, scope: !879)
!879 = distinct !DILexicalBlock(scope: !870, file: !168, line: 182, column: 7)
!880 = !DILocation(line: 157, column: 15, scope: !875, inlinedAt: !878)
!881 = !DILocation(line: 182, column: 25, scope: !879)
!882 = !DILocation(line: 182, column: 7, scope: !870)
!883 = !DILocation(line: 184, column: 5, scope: !879)
!884 = !DILocation(line: 185, column: 1, scope: !870)
!885 = distinct !DISubprogram(name: "error_tail", scope: !168, file: !168, line: 219, type: !851, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !886)
!886 = !{!887, !888, !889, !890}
!887 = !DILocalVariable(name: "status", arg: 1, scope: !885, file: !168, line: 219, type: !45)
!888 = !DILocalVariable(name: "errnum", arg: 2, scope: !885, file: !168, line: 219, type: !45)
!889 = !DILocalVariable(name: "message", arg: 3, scope: !885, file: !168, line: 219, type: !50)
!890 = !DILocalVariable(name: "args", arg: 4, scope: !885, file: !168, line: 219, type: !176)
!891 = !DILocation(line: 0, scope: !885)
!892 = !DILocation(line: 219, column: 1, scope: !885)
!893 = !DILocation(line: 229, column: 13, scope: !885)
!894 = !DILocation(line: 229, column: 3, scope: !885)
!895 = !DILocalVariable(name: "__stream", arg: 1, scope: !896, file: !897, line: 132, type: !900)
!896 = distinct !DISubprogram(name: "vfprintf", scope: !897, file: !897, line: 132, type: !898, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !935)
!897 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!898 = !DISubroutineType(types: !899)
!899 = !{!45, !900, !540, !178}
!900 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !903)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !903, file: !84, line: 51, baseType: !45, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !903, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !903, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !903, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !903, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !903, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !903, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !903, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !903, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !903, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !903, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !903, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !903, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !903, file: !84, line: 70, baseType: !919, size: 64, offset: 832)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !903, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !903, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !903, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !903, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !903, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !903, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !903, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !903, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !903, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !903, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !903, file: !84, line: 93, baseType: !919, size: 64, offset: 1344)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !903, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !903, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !903, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !903, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!935 = !{!895, !936, !937}
!936 = !DILocalVariable(name: "__fmt", arg: 2, scope: !896, file: !897, line: 133, type: !540)
!937 = !DILocalVariable(name: "__ap", arg: 3, scope: !896, file: !897, line: 133, type: !178)
!938 = !DILocation(line: 0, scope: !896, inlinedAt: !939)
!939 = distinct !DILocation(line: 229, column: 3, scope: !885)
!940 = !DILocation(line: 135, column: 10, scope: !896, inlinedAt: !939)
!941 = !{!942, !944}
!942 = distinct !{!942, !943, !"vfprintf.inline: argument 0"}
!943 = distinct !{!943, !"vfprintf.inline"}
!944 = distinct !{!944, !943, !"vfprintf.inline: argument 1"}
!945 = !DILocation(line: 232, column: 3, scope: !885)
!946 = !DILocation(line: 233, column: 7, scope: !947)
!947 = distinct !DILexicalBlock(scope: !885, file: !168, line: 233, column: 7)
!948 = !DILocation(line: 233, column: 7, scope: !885)
!949 = !DILocalVariable(name: "errnum", arg: 1, scope: !950, file: !168, line: 188, type: !45)
!950 = distinct !DISubprogram(name: "print_errno_message", scope: !168, file: !168, line: 188, type: !446, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !951)
!951 = !{!949, !952, !953}
!952 = !DILocalVariable(name: "s", scope: !950, file: !168, line: 190, type: !50)
!953 = !DILocalVariable(name: "errbuf", scope: !950, file: !168, line: 193, type: !954)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8192, elements: !955)
!955 = !{!956}
!956 = !DISubrange(count: 1024)
!957 = !DILocation(line: 0, scope: !950, inlinedAt: !958)
!958 = distinct !DILocation(line: 234, column: 5, scope: !947)
!959 = !DILocation(line: 193, column: 3, scope: !950, inlinedAt: !958)
!960 = !DILocation(line: 193, column: 8, scope: !950, inlinedAt: !958)
!961 = !DILocation(line: 195, column: 7, scope: !950, inlinedAt: !958)
!962 = !DILocation(line: 207, column: 9, scope: !963, inlinedAt: !958)
!963 = distinct !DILexicalBlock(scope: !950, file: !168, line: 207, column: 7)
!964 = !DILocation(line: 207, column: 7, scope: !950, inlinedAt: !958)
!965 = !DILocation(line: 208, column: 9, scope: !963, inlinedAt: !958)
!966 = !DILocation(line: 208, column: 5, scope: !963, inlinedAt: !958)
!967 = !DILocation(line: 214, column: 3, scope: !950, inlinedAt: !958)
!968 = !DILocation(line: 216, column: 1, scope: !950, inlinedAt: !958)
!969 = !DILocation(line: 234, column: 5, scope: !947)
!970 = !DILocation(line: 238, column: 3, scope: !885)
!971 = !DILocalVariable(name: "__c", arg: 1, scope: !972, file: !973, line: 101, type: !45)
!972 = distinct !DISubprogram(name: "putc_unlocked", scope: !973, file: !973, line: 101, type: !974, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !976)
!973 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!974 = !DISubroutineType(types: !975)
!975 = !{!45, !45, !901}
!976 = !{!971, !977}
!977 = !DILocalVariable(name: "__stream", arg: 2, scope: !972, file: !973, line: 101, type: !901)
!978 = !DILocation(line: 0, scope: !972, inlinedAt: !979)
!979 = distinct !DILocation(line: 238, column: 3, scope: !885)
!980 = !DILocation(line: 103, column: 10, scope: !972, inlinedAt: !979)
!981 = !{!982, !457, i64 40}
!982 = !{!"_IO_FILE", !545, i64 0, !457, i64 8, !457, i64 16, !457, i64 24, !457, i64 32, !457, i64 40, !457, i64 48, !457, i64 56, !457, i64 64, !457, i64 72, !457, i64 80, !457, i64 88, !457, i64 96, !457, i64 104, !545, i64 112, !545, i64 116, !983, i64 120, !579, i64 128, !458, i64 130, !458, i64 131, !457, i64 136, !983, i64 144, !457, i64 152, !457, i64 160, !457, i64 168, !457, i64 176, !983, i64 184, !545, i64 192, !458, i64 196}
!983 = !{!"long", !458, i64 0}
!984 = !{!982, !457, i64 48}
!985 = !{!"branch_weights", i32 2000, i32 1}
!986 = !DILocation(line: 240, column: 3, scope: !885)
!987 = !DILocation(line: 241, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !885, file: !168, line: 241, column: 7)
!989 = !DILocation(line: 241, column: 7, scope: !885)
!990 = !DILocation(line: 242, column: 5, scope: !988)
!991 = !DILocation(line: 243, column: 1, scope: !885)
!992 = !DISubprogram(name: "strerror_r", scope: !993, file: !993, line: 444, type: !994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!993 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!994 = !DISubroutineType(types: !995)
!995 = !{!42, !45, !42, !47}
!996 = !DISubprogram(name: "fflush_unlocked", scope: !177, file: !177, line: 239, type: !997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!997 = !DISubroutineType(types: !998)
!998 = !{!45, !901}
!999 = !DISubprogram(name: "fcntl", scope: !792, file: !792, line: 149, type: !1000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!45, !45, !45, null}
!1002 = distinct !DISubprogram(name: "error", scope: !168, file: !168, line: 285, type: !1003, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !1005)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !45, !45, !50, null}
!1005 = !{!1006, !1007, !1008, !1009}
!1006 = !DILocalVariable(name: "status", arg: 1, scope: !1002, file: !168, line: 285, type: !45)
!1007 = !DILocalVariable(name: "errnum", arg: 2, scope: !1002, file: !168, line: 285, type: !45)
!1008 = !DILocalVariable(name: "message", arg: 3, scope: !1002, file: !168, line: 285, type: !50)
!1009 = !DILocalVariable(name: "ap", scope: !1002, file: !168, line: 287, type: !176)
!1010 = !DILocation(line: 0, scope: !1002)
!1011 = !DILocation(line: 287, column: 3, scope: !1002)
!1012 = !DILocation(line: 287, column: 11, scope: !1002)
!1013 = !DILocation(line: 288, column: 3, scope: !1002)
!1014 = !DILocation(line: 289, column: 3, scope: !1002)
!1015 = !DILocation(line: 290, column: 3, scope: !1002)
!1016 = !DILocation(line: 291, column: 1, scope: !1002)
!1017 = !DILocation(line: 0, scope: !173)
!1018 = !DILocation(line: 298, column: 1, scope: !173)
!1019 = !DILocation(line: 302, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !173, file: !168, line: 302, column: 7)
!1021 = !DILocation(line: 302, column: 7, scope: !173)
!1022 = !DILocation(line: 307, column: 11, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !168, line: 307, column: 11)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !168, line: 303, column: 5)
!1025 = !DILocation(line: 307, column: 27, scope: !1023)
!1026 = !DILocation(line: 308, column: 11, scope: !1023)
!1027 = !DILocation(line: 308, column: 28, scope: !1023)
!1028 = !DILocation(line: 308, column: 25, scope: !1023)
!1029 = !DILocation(line: 309, column: 15, scope: !1023)
!1030 = !DILocation(line: 309, column: 33, scope: !1023)
!1031 = !DILocation(line: 310, column: 19, scope: !1023)
!1032 = !DILocation(line: 311, column: 22, scope: !1023)
!1033 = !DILocation(line: 311, column: 56, scope: !1023)
!1034 = !DILocation(line: 307, column: 11, scope: !1024)
!1035 = !DILocation(line: 316, column: 21, scope: !1024)
!1036 = !DILocation(line: 317, column: 23, scope: !1024)
!1037 = !DILocation(line: 318, column: 5, scope: !1024)
!1038 = !DILocation(line: 327, column: 3, scope: !173)
!1039 = !DILocation(line: 331, column: 7, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !173, file: !168, line: 331, column: 7)
!1041 = !DILocation(line: 331, column: 7, scope: !173)
!1042 = !DILocation(line: 332, column: 5, scope: !1040)
!1043 = !DILocation(line: 338, column: 7, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !168, line: 334, column: 5)
!1045 = !DILocation(line: 346, column: 3, scope: !173)
!1046 = !DILocation(line: 350, column: 3, scope: !173)
!1047 = !DILocation(line: 356, column: 1, scope: !173)
!1048 = distinct !DISubprogram(name: "error_at_line", scope: !168, file: !168, line: 359, type: !1049, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !167, retainedNodes: !1051)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !45, !45, !50, !6, !50, null}
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057}
!1052 = !DILocalVariable(name: "status", arg: 1, scope: !1048, file: !168, line: 359, type: !45)
!1053 = !DILocalVariable(name: "errnum", arg: 2, scope: !1048, file: !168, line: 359, type: !45)
!1054 = !DILocalVariable(name: "file_name", arg: 3, scope: !1048, file: !168, line: 359, type: !50)
!1055 = !DILocalVariable(name: "line_number", arg: 4, scope: !1048, file: !168, line: 360, type: !6)
!1056 = !DILocalVariable(name: "message", arg: 5, scope: !1048, file: !168, line: 360, type: !50)
!1057 = !DILocalVariable(name: "ap", scope: !1048, file: !168, line: 362, type: !176)
!1058 = !DILocation(line: 0, scope: !1048)
!1059 = !DILocation(line: 362, column: 3, scope: !1048)
!1060 = !DILocation(line: 362, column: 11, scope: !1048)
!1061 = !DILocation(line: 363, column: 3, scope: !1048)
!1062 = !DILocation(line: 364, column: 3, scope: !1048)
!1063 = !DILocation(line: 366, column: 3, scope: !1048)
!1064 = !DILocation(line: 367, column: 1, scope: !1048)
!1065 = distinct !DISubprogram(name: "rpl_fcntl", scope: !209, file: !209, line: 202, type: !1000, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1066)
!1066 = !{!1067, !1068, !1069, !1080, !1081, !1084, !1086, !1090}
!1067 = !DILocalVariable(name: "fd", arg: 1, scope: !1065, file: !209, line: 202, type: !45)
!1068 = !DILocalVariable(name: "action", arg: 2, scope: !1065, file: !209, line: 202, type: !45)
!1069 = !DILocalVariable(name: "arg", scope: !1065, file: !209, line: 208, type: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !179, line: 14, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1072, baseType: !1073)
!1072 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !183, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1073, file: !1072, line: 208, baseType: !44, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1073, file: !1072, line: 208, baseType: !44, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1073, file: !1072, line: 208, baseType: !44, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1073, file: !1072, line: 208, baseType: !45, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1073, file: !1072, line: 208, baseType: !45, size: 32, offset: 224)
!1080 = !DILocalVariable(name: "result", scope: !1065, file: !209, line: 211, type: !45)
!1081 = !DILocalVariable(name: "target", scope: !1082, file: !209, line: 216, type: !45)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !209, line: 215, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1065, file: !209, line: 213, column: 5)
!1084 = !DILocalVariable(name: "target", scope: !1085, file: !209, line: 223, type: !45)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !209, line: 222, column: 7)
!1086 = !DILocalVariable(name: "x", scope: !1087, file: !209, line: 418, type: !45)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !209, line: 417, column: 13)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !209, line: 261, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1083, file: !209, line: 258, column: 7)
!1090 = !DILocalVariable(name: "p", scope: !1091, file: !209, line: 426, type: !44)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !209, line: 425, column: 13)
!1092 = !DILocation(line: 0, scope: !1065)
!1093 = !DILocation(line: 208, column: 3, scope: !1065)
!1094 = !DILocation(line: 208, column: 11, scope: !1065)
!1095 = !DILocation(line: 209, column: 3, scope: !1065)
!1096 = !DILocation(line: 212, column: 3, scope: !1065)
!1097 = !DILocation(line: 216, column: 22, scope: !1082)
!1098 = !DILocation(line: 0, scope: !1082)
!1099 = !DILocalVariable(name: "fd", arg: 1, scope: !1100, file: !209, line: 444, type: !45)
!1100 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !209, file: !209, line: 444, type: !210, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1101)
!1101 = !{!1099, !1102, !1103}
!1102 = !DILocalVariable(name: "target", arg: 2, scope: !1100, file: !209, line: 444, type: !45)
!1103 = !DILocalVariable(name: "result", scope: !1100, file: !209, line: 446, type: !45)
!1104 = !DILocation(line: 0, scope: !1100, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 217, column: 18, scope: !1082)
!1106 = !DILocation(line: 479, column: 12, scope: !1100, inlinedAt: !1105)
!1107 = !DILocation(line: 223, column: 22, scope: !1085)
!1108 = !DILocation(line: 0, scope: !1085)
!1109 = !DILocation(line: 0, scope: !208, inlinedAt: !1110)
!1110 = distinct !DILocation(line: 224, column: 18, scope: !1085)
!1111 = !DILocation(line: 507, column: 12, scope: !1112, inlinedAt: !1110)
!1112 = distinct !DILexicalBlock(scope: !208, file: !209, line: 507, column: 7)
!1113 = !DILocation(line: 507, column: 9, scope: !1112, inlinedAt: !1110)
!1114 = !DILocation(line: 507, column: 7, scope: !208, inlinedAt: !1110)
!1115 = !DILocation(line: 509, column: 16, scope: !1116, inlinedAt: !1110)
!1116 = distinct !DILexicalBlock(scope: !1112, file: !209, line: 508, column: 5)
!1117 = !DILocation(line: 510, column: 13, scope: !1118, inlinedAt: !1110)
!1118 = distinct !DILexicalBlock(scope: !1116, file: !209, line: 510, column: 11)
!1119 = !DILocation(line: 510, column: 23, scope: !1118, inlinedAt: !1110)
!1120 = !DILocation(line: 510, column: 26, scope: !1118, inlinedAt: !1110)
!1121 = !DILocation(line: 510, column: 32, scope: !1118, inlinedAt: !1110)
!1122 = !DILocation(line: 510, column: 11, scope: !1116, inlinedAt: !1110)
!1123 = !DILocation(line: 512, column: 30, scope: !1124, inlinedAt: !1110)
!1124 = distinct !DILexicalBlock(scope: !1118, file: !209, line: 511, column: 9)
!1125 = !DILocation(line: 528, column: 19, scope: !220, inlinedAt: !1110)
!1126 = !DILocation(line: 0, scope: !1100, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 520, column: 20, scope: !1128, inlinedAt: !1110)
!1128 = distinct !DILexicalBlock(scope: !1118, file: !209, line: 519, column: 9)
!1129 = !DILocation(line: 479, column: 12, scope: !1100, inlinedAt: !1127)
!1130 = !DILocation(line: 521, column: 22, scope: !1131, inlinedAt: !1110)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !209, line: 521, column: 15)
!1132 = !DILocation(line: 521, column: 15, scope: !1128, inlinedAt: !1110)
!1133 = !DILocation(line: 522, column: 32, scope: !1131, inlinedAt: !1110)
!1134 = !DILocation(line: 522, column: 13, scope: !1131, inlinedAt: !1110)
!1135 = !DILocation(line: 0, scope: !1100, inlinedAt: !1136)
!1136 = distinct !DILocation(line: 527, column: 14, scope: !1112, inlinedAt: !1110)
!1137 = !DILocation(line: 479, column: 12, scope: !1100, inlinedAt: !1136)
!1138 = !DILocation(line: 0, scope: !1112, inlinedAt: !1110)
!1139 = !DILocation(line: 528, column: 9, scope: !220, inlinedAt: !1110)
!1140 = !DILocation(line: 530, column: 19, scope: !219, inlinedAt: !1110)
!1141 = !DILocation(line: 0, scope: !219, inlinedAt: !1110)
!1142 = !DILocation(line: 531, column: 17, scope: !223, inlinedAt: !1110)
!1143 = !DILocation(line: 531, column: 21, scope: !223, inlinedAt: !1110)
!1144 = !DILocation(line: 531, column: 54, scope: !223, inlinedAt: !1110)
!1145 = !DILocation(line: 531, column: 24, scope: !223, inlinedAt: !1110)
!1146 = !DILocation(line: 531, column: 68, scope: !223, inlinedAt: !1110)
!1147 = !DILocation(line: 531, column: 11, scope: !219, inlinedAt: !1110)
!1148 = !DILocation(line: 533, column: 29, scope: !222, inlinedAt: !1110)
!1149 = !DILocation(line: 0, scope: !222, inlinedAt: !1110)
!1150 = !DILocation(line: 534, column: 11, scope: !222, inlinedAt: !1110)
!1151 = !DILocation(line: 535, column: 17, scope: !222, inlinedAt: !1110)
!1152 = !DILocation(line: 537, column: 9, scope: !222, inlinedAt: !1110)
!1153 = !DILocation(line: 329, column: 22, scope: !1088)
!1154 = !DILocation(line: 330, column: 13, scope: !1088)
!1155 = !DILocation(line: 418, column: 23, scope: !1087)
!1156 = !DILocation(line: 0, scope: !1087)
!1157 = !DILocation(line: 419, column: 24, scope: !1087)
!1158 = !DILocation(line: 421, column: 13, scope: !1088)
!1159 = !DILocation(line: 426, column: 25, scope: !1091)
!1160 = !DILocation(line: 0, scope: !1091)
!1161 = !DILocation(line: 427, column: 24, scope: !1091)
!1162 = !DILocation(line: 429, column: 13, scope: !1088)
!1163 = !DILocation(line: 0, scope: !1083)
!1164 = !DILocation(line: 438, column: 3, scope: !1065)
!1165 = !DILocation(line: 441, column: 1, scope: !1065)
!1166 = !DILocation(line: 440, column: 3, scope: !1065)
!1167 = distinct !DISubprogram(name: "getprogname", scope: !372, file: !372, line: 54, type: !1168, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !371, retainedNodes: !536)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!50}
!1170 = !DILocation(line: 58, column: 10, scope: !1167)
!1171 = !DILocation(line: 58, column: 3, scope: !1167)
!1172 = distinct !DISubprogram(name: "set_program_name", scope: !227, file: !227, line: 37, type: !469, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1173)
!1173 = !{!1174, !1175, !1176}
!1174 = !DILocalVariable(name: "argv0", arg: 1, scope: !1172, file: !227, line: 37, type: !50)
!1175 = !DILocalVariable(name: "slash", scope: !1172, file: !227, line: 44, type: !50)
!1176 = !DILocalVariable(name: "base", scope: !1172, file: !227, line: 45, type: !50)
!1177 = !DILocation(line: 0, scope: !1172)
!1178 = !DILocation(line: 44, column: 23, scope: !1172)
!1179 = !DILocation(line: 45, column: 22, scope: !1172)
!1180 = !DILocation(line: 46, column: 17, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1172, file: !227, line: 46, column: 7)
!1182 = !DILocation(line: 46, column: 9, scope: !1181)
!1183 = !DILocation(line: 46, column: 25, scope: !1181)
!1184 = !DILocation(line: 46, column: 40, scope: !1181)
!1185 = !DILocalVariable(name: "__s1", arg: 1, scope: !1186, file: !494, line: 974, type: !662)
!1186 = distinct !DISubprogram(name: "memeq", scope: !494, file: !494, line: 974, type: !1187, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !226, retainedNodes: !1189)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!67, !662, !662, !47}
!1189 = !{!1185, !1190, !1191}
!1190 = !DILocalVariable(name: "__s2", arg: 2, scope: !1186, file: !494, line: 974, type: !662)
!1191 = !DILocalVariable(name: "__n", arg: 3, scope: !1186, file: !494, line: 974, type: !47)
!1192 = !DILocation(line: 0, scope: !1186, inlinedAt: !1193)
!1193 = distinct !DILocation(line: 46, column: 28, scope: !1181)
!1194 = !DILocation(line: 976, column: 11, scope: !1186, inlinedAt: !1193)
!1195 = !DILocation(line: 976, column: 10, scope: !1186, inlinedAt: !1193)
!1196 = !DILocation(line: 46, column: 7, scope: !1172)
!1197 = !DILocation(line: 49, column: 11, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !227, line: 49, column: 11)
!1199 = distinct !DILexicalBlock(scope: !1181, file: !227, line: 47, column: 5)
!1200 = !DILocation(line: 49, column: 36, scope: !1198)
!1201 = !DILocation(line: 49, column: 11, scope: !1199)
!1202 = !DILocation(line: 65, column: 16, scope: !1172)
!1203 = !DILocation(line: 71, column: 27, scope: !1172)
!1204 = !DILocation(line: 74, column: 33, scope: !1172)
!1205 = !DILocation(line: 76, column: 1, scope: !1172)
!1206 = !DILocation(line: 0, scope: !232)
!1207 = !DILocation(line: 40, column: 29, scope: !232)
!1208 = !DILocation(line: 41, column: 19, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !232, file: !233, line: 41, column: 7)
!1210 = !DILocation(line: 41, column: 7, scope: !232)
!1211 = !DILocation(line: 47, column: 3, scope: !232)
!1212 = !DILocation(line: 48, column: 3, scope: !232)
!1213 = !DILocation(line: 48, column: 13, scope: !232)
!1214 = !DILocalVariable(name: "ps", arg: 1, scope: !1215, file: !1216, line: 1135, type: !1219)
!1215 = distinct !DISubprogram(name: "mbszero", scope: !1216, file: !1216, line: 1135, type: !1217, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1220)
!1216 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1220 = !{!1214}
!1221 = !DILocation(line: 0, scope: !1215, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 48, column: 18, scope: !232)
!1223 = !DILocalVariable(name: "__dest", arg: 1, scope: !1224, file: !1225, line: 57, type: !44)
!1224 = distinct !DISubprogram(name: "memset", scope: !1225, file: !1225, line: 57, type: !1226, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !236, retainedNodes: !1228)
!1225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!44, !44, !45, !47}
!1228 = !{!1223, !1229, !1230}
!1229 = !DILocalVariable(name: "__ch", arg: 2, scope: !1224, file: !1225, line: 57, type: !45)
!1230 = !DILocalVariable(name: "__len", arg: 3, scope: !1224, file: !1225, line: 57, type: !47)
!1231 = !DILocation(line: 0, scope: !1224, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 1137, column: 3, scope: !1215, inlinedAt: !1222)
!1233 = !DILocation(line: 59, column: 10, scope: !1224, inlinedAt: !1232)
!1234 = !DILocation(line: 49, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !232, file: !233, line: 49, column: 7)
!1236 = !DILocation(line: 49, column: 39, scope: !1235)
!1237 = !DILocation(line: 49, column: 44, scope: !1235)
!1238 = !DILocation(line: 54, column: 1, scope: !232)
!1239 = !DISubprogram(name: "mbrtoc32", scope: !244, file: !244, line: 57, type: !1240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!47, !1242, !540, !47, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1243)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1219)
!1245 = distinct !DISubprogram(name: "clone_quoting_options", scope: !269, file: !269, line: 113, type: !1246, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1249)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!1248, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!1249 = !{!1250, !1251, !1252}
!1250 = !DILocalVariable(name: "o", arg: 1, scope: !1245, file: !269, line: 113, type: !1248)
!1251 = !DILocalVariable(name: "saved_errno", scope: !1245, file: !269, line: 115, type: !45)
!1252 = !DILocalVariable(name: "p", scope: !1245, file: !269, line: 116, type: !1248)
!1253 = !DILocation(line: 0, scope: !1245)
!1254 = !DILocation(line: 115, column: 21, scope: !1245)
!1255 = !DILocation(line: 116, column: 40, scope: !1245)
!1256 = !DILocation(line: 116, column: 31, scope: !1245)
!1257 = !DILocation(line: 118, column: 9, scope: !1245)
!1258 = !DILocation(line: 119, column: 3, scope: !1245)
!1259 = distinct !DISubprogram(name: "get_quoting_style", scope: !269, file: !269, line: 124, type: !1260, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1264)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!27, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!1264 = !{!1265}
!1265 = !DILocalVariable(name: "o", arg: 1, scope: !1259, file: !269, line: 124, type: !1262)
!1266 = !DILocation(line: 0, scope: !1259)
!1267 = !DILocation(line: 126, column: 11, scope: !1259)
!1268 = !DILocation(line: 126, column: 46, scope: !1259)
!1269 = !{!1270, !458, i64 0}
!1270 = !{!"quoting_options", !458, i64 0, !545, i64 4, !458, i64 8, !457, i64 40, !457, i64 48}
!1271 = !DILocation(line: 126, column: 3, scope: !1259)
!1272 = distinct !DISubprogram(name: "set_quoting_style", scope: !269, file: !269, line: 132, type: !1273, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1275)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{null, !1248, !27}
!1275 = !{!1276, !1277}
!1276 = !DILocalVariable(name: "o", arg: 1, scope: !1272, file: !269, line: 132, type: !1248)
!1277 = !DILocalVariable(name: "s", arg: 2, scope: !1272, file: !269, line: 132, type: !27)
!1278 = !DILocation(line: 0, scope: !1272)
!1279 = !DILocation(line: 134, column: 4, scope: !1272)
!1280 = !DILocation(line: 134, column: 39, scope: !1272)
!1281 = !DILocation(line: 134, column: 45, scope: !1272)
!1282 = !DILocation(line: 135, column: 1, scope: !1272)
!1283 = distinct !DISubprogram(name: "set_char_quoting", scope: !269, file: !269, line: 143, type: !1284, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1286)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!45, !1248, !43, !45}
!1286 = !{!1287, !1288, !1289, !1290, !1291, !1293, !1294}
!1287 = !DILocalVariable(name: "o", arg: 1, scope: !1283, file: !269, line: 143, type: !1248)
!1288 = !DILocalVariable(name: "c", arg: 2, scope: !1283, file: !269, line: 143, type: !43)
!1289 = !DILocalVariable(name: "i", arg: 3, scope: !1283, file: !269, line: 143, type: !45)
!1290 = !DILocalVariable(name: "uc", scope: !1283, file: !269, line: 145, type: !52)
!1291 = !DILocalVariable(name: "p", scope: !1283, file: !269, line: 146, type: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!1293 = !DILocalVariable(name: "shift", scope: !1283, file: !269, line: 148, type: !45)
!1294 = !DILocalVariable(name: "r", scope: !1283, file: !269, line: 149, type: !6)
!1295 = !DILocation(line: 0, scope: !1283)
!1296 = !DILocation(line: 147, column: 6, scope: !1283)
!1297 = !DILocation(line: 147, column: 62, scope: !1283)
!1298 = !DILocation(line: 147, column: 57, scope: !1283)
!1299 = !DILocation(line: 148, column: 15, scope: !1283)
!1300 = !DILocation(line: 149, column: 21, scope: !1283)
!1301 = !DILocation(line: 149, column: 24, scope: !1283)
!1302 = !DILocation(line: 149, column: 34, scope: !1283)
!1303 = !DILocation(line: 150, column: 13, scope: !1283)
!1304 = !DILocation(line: 150, column: 19, scope: !1283)
!1305 = !DILocation(line: 150, column: 24, scope: !1283)
!1306 = !DILocation(line: 150, column: 6, scope: !1283)
!1307 = !DILocation(line: 151, column: 3, scope: !1283)
!1308 = distinct !DISubprogram(name: "set_quoting_flags", scope: !269, file: !269, line: 159, type: !1309, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!45, !1248, !45}
!1311 = !{!1312, !1313, !1314}
!1312 = !DILocalVariable(name: "o", arg: 1, scope: !1308, file: !269, line: 159, type: !1248)
!1313 = !DILocalVariable(name: "i", arg: 2, scope: !1308, file: !269, line: 159, type: !45)
!1314 = !DILocalVariable(name: "r", scope: !1308, file: !269, line: 163, type: !45)
!1315 = !DILocation(line: 0, scope: !1308)
!1316 = !DILocation(line: 161, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1308, file: !269, line: 161, column: 7)
!1318 = !DILocation(line: 161, column: 7, scope: !1308)
!1319 = !DILocation(line: 163, column: 14, scope: !1308)
!1320 = !{!1270, !545, i64 4}
!1321 = !DILocation(line: 164, column: 12, scope: !1308)
!1322 = !DILocation(line: 165, column: 3, scope: !1308)
!1323 = distinct !DISubprogram(name: "set_custom_quoting", scope: !269, file: !269, line: 169, type: !1324, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1326)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{null, !1248, !50, !50}
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(name: "o", arg: 1, scope: !1323, file: !269, line: 169, type: !1248)
!1328 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1323, file: !269, line: 170, type: !50)
!1329 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1323, file: !269, line: 170, type: !50)
!1330 = !DILocation(line: 0, scope: !1323)
!1331 = !DILocation(line: 172, column: 8, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1323, file: !269, line: 172, column: 7)
!1333 = !DILocation(line: 172, column: 7, scope: !1323)
!1334 = !DILocation(line: 174, column: 6, scope: !1323)
!1335 = !DILocation(line: 174, column: 12, scope: !1323)
!1336 = !DILocation(line: 175, column: 8, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1323, file: !269, line: 175, column: 7)
!1338 = !DILocation(line: 175, column: 19, scope: !1337)
!1339 = !DILocation(line: 176, column: 5, scope: !1337)
!1340 = !DILocation(line: 177, column: 6, scope: !1323)
!1341 = !DILocation(line: 177, column: 17, scope: !1323)
!1342 = !{!1270, !457, i64 40}
!1343 = !DILocation(line: 178, column: 6, scope: !1323)
!1344 = !DILocation(line: 178, column: 18, scope: !1323)
!1345 = !{!1270, !457, i64 48}
!1346 = !DILocation(line: 179, column: 1, scope: !1323)
!1347 = distinct !DISubprogram(name: "quotearg_buffer", scope: !269, file: !269, line: 774, type: !1348, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!47, !42, !47, !50, !47, !1262}
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358}
!1351 = !DILocalVariable(name: "buffer", arg: 1, scope: !1347, file: !269, line: 774, type: !42)
!1352 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1347, file: !269, line: 774, type: !47)
!1353 = !DILocalVariable(name: "arg", arg: 3, scope: !1347, file: !269, line: 775, type: !50)
!1354 = !DILocalVariable(name: "argsize", arg: 4, scope: !1347, file: !269, line: 775, type: !47)
!1355 = !DILocalVariable(name: "o", arg: 5, scope: !1347, file: !269, line: 776, type: !1262)
!1356 = !DILocalVariable(name: "p", scope: !1347, file: !269, line: 778, type: !1262)
!1357 = !DILocalVariable(name: "saved_errno", scope: !1347, file: !269, line: 779, type: !45)
!1358 = !DILocalVariable(name: "r", scope: !1347, file: !269, line: 780, type: !47)
!1359 = !DILocation(line: 0, scope: !1347)
!1360 = !DILocation(line: 778, column: 37, scope: !1347)
!1361 = !DILocation(line: 779, column: 21, scope: !1347)
!1362 = !DILocation(line: 781, column: 43, scope: !1347)
!1363 = !DILocation(line: 781, column: 53, scope: !1347)
!1364 = !DILocation(line: 781, column: 60, scope: !1347)
!1365 = !DILocation(line: 782, column: 43, scope: !1347)
!1366 = !DILocation(line: 782, column: 58, scope: !1347)
!1367 = !DILocation(line: 780, column: 14, scope: !1347)
!1368 = !DILocation(line: 783, column: 9, scope: !1347)
!1369 = !DILocation(line: 784, column: 3, scope: !1347)
!1370 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !269, file: !269, line: 251, type: !1371, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1375)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!47, !42, !47, !50, !47, !27, !45, !1373, !50, !50}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1400, !1402, !1405, !1406, !1407, !1408, !1411, !1412, !1415, !1419, !1420, !1428, !1431, !1432, !1434, !1435, !1436, !1437}
!1376 = !DILocalVariable(name: "buffer", arg: 1, scope: !1370, file: !269, line: 251, type: !42)
!1377 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1370, file: !269, line: 251, type: !47)
!1378 = !DILocalVariable(name: "arg", arg: 3, scope: !1370, file: !269, line: 252, type: !50)
!1379 = !DILocalVariable(name: "argsize", arg: 4, scope: !1370, file: !269, line: 252, type: !47)
!1380 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1370, file: !269, line: 253, type: !27)
!1381 = !DILocalVariable(name: "flags", arg: 6, scope: !1370, file: !269, line: 253, type: !45)
!1382 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1370, file: !269, line: 254, type: !1373)
!1383 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1370, file: !269, line: 255, type: !50)
!1384 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1370, file: !269, line: 256, type: !50)
!1385 = !DILocalVariable(name: "unibyte_locale", scope: !1370, file: !269, line: 258, type: !67)
!1386 = !DILocalVariable(name: "len", scope: !1370, file: !269, line: 260, type: !47)
!1387 = !DILocalVariable(name: "orig_buffersize", scope: !1370, file: !269, line: 261, type: !47)
!1388 = !DILocalVariable(name: "quote_string", scope: !1370, file: !269, line: 262, type: !50)
!1389 = !DILocalVariable(name: "quote_string_len", scope: !1370, file: !269, line: 263, type: !47)
!1390 = !DILocalVariable(name: "backslash_escapes", scope: !1370, file: !269, line: 264, type: !67)
!1391 = !DILocalVariable(name: "elide_outer_quotes", scope: !1370, file: !269, line: 265, type: !67)
!1392 = !DILocalVariable(name: "encountered_single_quote", scope: !1370, file: !269, line: 266, type: !67)
!1393 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1370, file: !269, line: 267, type: !67)
!1394 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1370, file: !269, line: 309, type: !67)
!1395 = !DILocalVariable(name: "lq", scope: !1396, file: !269, line: 361, type: !50)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !269, line: 361, column: 11)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !269, line: 360, column: 13)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !269, line: 333, column: 7)
!1399 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 312, column: 5)
!1400 = !DILocalVariable(name: "i", scope: !1401, file: !269, line: 395, type: !47)
!1401 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 395, column: 3)
!1402 = !DILocalVariable(name: "is_right_quote", scope: !1403, file: !269, line: 397, type: !67)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !269, line: 396, column: 5)
!1404 = distinct !DILexicalBlock(scope: !1401, file: !269, line: 395, column: 3)
!1405 = !DILocalVariable(name: "escaping", scope: !1403, file: !269, line: 398, type: !67)
!1406 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1403, file: !269, line: 399, type: !67)
!1407 = !DILocalVariable(name: "c", scope: !1403, file: !269, line: 417, type: !52)
!1408 = !DILocalVariable(name: "m", scope: !1409, file: !269, line: 598, type: !47)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 596, column: 11)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 419, column: 9)
!1411 = !DILocalVariable(name: "printable", scope: !1409, file: !269, line: 600, type: !67)
!1412 = !DILocalVariable(name: "mbs", scope: !1413, file: !269, line: 609, type: !314)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !269, line: 608, column: 15)
!1414 = distinct !DILexicalBlock(scope: !1409, file: !269, line: 602, column: 17)
!1415 = !DILocalVariable(name: "w", scope: !1416, file: !269, line: 618, type: !243)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !269, line: 617, column: 19)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !269, line: 616, column: 17)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !269, line: 616, column: 17)
!1419 = !DILocalVariable(name: "bytes", scope: !1416, file: !269, line: 619, type: !47)
!1420 = !DILocalVariable(name: "j", scope: !1421, file: !269, line: 648, type: !47)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !269, line: 648, column: 29)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !269, line: 647, column: 27)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !269, line: 645, column: 29)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !269, line: 636, column: 23)
!1425 = distinct !DILexicalBlock(scope: !1426, file: !269, line: 628, column: 30)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !269, line: 623, column: 30)
!1427 = distinct !DILexicalBlock(scope: !1416, file: !269, line: 621, column: 25)
!1428 = !DILocalVariable(name: "ilim", scope: !1429, file: !269, line: 674, type: !47)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !269, line: 671, column: 15)
!1430 = distinct !DILexicalBlock(scope: !1409, file: !269, line: 670, column: 17)
!1431 = !DILabel(scope: !1370, name: "process_input", file: !269, line: 308)
!1432 = !DILabel(scope: !1433, name: "c_and_shell_escape", file: !269, line: 502)
!1433 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 478, column: 9)
!1434 = !DILabel(scope: !1433, name: "c_escape", file: !269, line: 507)
!1435 = !DILabel(scope: !1403, name: "store_escape", file: !269, line: 709)
!1436 = !DILabel(scope: !1403, name: "store_c", file: !269, line: 712)
!1437 = !DILabel(scope: !1370, name: "force_outer_quoting_style", file: !269, line: 753)
!1438 = !DILocation(line: 0, scope: !1370)
!1439 = !DILocation(line: 258, column: 25, scope: !1370)
!1440 = !DILocation(line: 258, column: 36, scope: !1370)
!1441 = !DILocation(line: 267, column: 3, scope: !1370)
!1442 = !DILocation(line: 261, column: 10, scope: !1370)
!1443 = !DILocation(line: 262, column: 15, scope: !1370)
!1444 = !DILocation(line: 263, column: 10, scope: !1370)
!1445 = !DILocation(line: 308, column: 2, scope: !1370)
!1446 = !DILocation(line: 311, column: 3, scope: !1370)
!1447 = !DILocation(line: 318, column: 11, scope: !1399)
!1448 = !DILocation(line: 319, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !269, line: 319, column: 9)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !269, line: 319, column: 9)
!1451 = distinct !DILexicalBlock(scope: !1399, file: !269, line: 318, column: 11)
!1452 = !DILocation(line: 319, column: 9, scope: !1450)
!1453 = !DILocation(line: 0, scope: !305, inlinedAt: !1454)
!1454 = distinct !DILocation(line: 357, column: 26, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !269, line: 335, column: 11)
!1456 = distinct !DILexicalBlock(scope: !1398, file: !269, line: 334, column: 13)
!1457 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1454)
!1458 = !DILocation(line: 201, column: 19, scope: !1459, inlinedAt: !1454)
!1459 = distinct !DILexicalBlock(scope: !305, file: !269, line: 201, column: 7)
!1460 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1454)
!1461 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1454)
!1462 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1454)
!1463 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1454)
!1464 = !DILocalVariable(name: "ps", arg: 1, scope: !1465, file: !1216, line: 1135, type: !1468)
!1465 = distinct !DISubprogram(name: "mbszero", scope: !1216, file: !1216, line: 1135, type: !1466, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1469)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{null, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!1469 = !{!1464}
!1470 = !DILocation(line: 0, scope: !1465, inlinedAt: !1471)
!1471 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1454)
!1472 = !DILocalVariable(name: "__dest", arg: 1, scope: !1473, file: !1225, line: 57, type: !44)
!1473 = distinct !DISubprogram(name: "memset", scope: !1225, file: !1225, line: 57, type: !1226, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1474)
!1474 = !{!1472, !1475, !1476}
!1475 = !DILocalVariable(name: "__ch", arg: 2, scope: !1473, file: !1225, line: 57, type: !45)
!1476 = !DILocalVariable(name: "__len", arg: 3, scope: !1473, file: !1225, line: 57, type: !47)
!1477 = !DILocation(line: 0, scope: !1473, inlinedAt: !1478)
!1478 = distinct !DILocation(line: 1137, column: 3, scope: !1465, inlinedAt: !1471)
!1479 = !DILocation(line: 59, column: 10, scope: !1473, inlinedAt: !1478)
!1480 = !DILocation(line: 231, column: 7, scope: !1481, inlinedAt: !1454)
!1481 = distinct !DILexicalBlock(scope: !305, file: !269, line: 231, column: 7)
!1482 = !DILocation(line: 231, column: 40, scope: !1481, inlinedAt: !1454)
!1483 = !DILocation(line: 231, column: 45, scope: !1481, inlinedAt: !1454)
!1484 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1454)
!1485 = !DILocation(line: 0, scope: !305, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 358, column: 27, scope: !1455)
!1487 = !DILocation(line: 199, column: 29, scope: !305, inlinedAt: !1486)
!1488 = !DILocation(line: 201, column: 19, scope: !1459, inlinedAt: !1486)
!1489 = !DILocation(line: 201, column: 7, scope: !305, inlinedAt: !1486)
!1490 = !DILocation(line: 229, column: 3, scope: !305, inlinedAt: !1486)
!1491 = !DILocation(line: 230, column: 3, scope: !305, inlinedAt: !1486)
!1492 = !DILocation(line: 230, column: 13, scope: !305, inlinedAt: !1486)
!1493 = !DILocation(line: 0, scope: !1465, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 230, column: 18, scope: !305, inlinedAt: !1486)
!1495 = !DILocation(line: 0, scope: !1473, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 1137, column: 3, scope: !1465, inlinedAt: !1494)
!1497 = !DILocation(line: 59, column: 10, scope: !1473, inlinedAt: !1496)
!1498 = !DILocation(line: 231, column: 7, scope: !1481, inlinedAt: !1486)
!1499 = !DILocation(line: 231, column: 40, scope: !1481, inlinedAt: !1486)
!1500 = !DILocation(line: 231, column: 45, scope: !1481, inlinedAt: !1486)
!1501 = !DILocation(line: 235, column: 1, scope: !305, inlinedAt: !1486)
!1502 = !DILocation(line: 360, column: 13, scope: !1398)
!1503 = !DILocation(line: 0, scope: !1396)
!1504 = !DILocation(line: 361, column: 45, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1396, file: !269, line: 361, column: 11)
!1506 = !DILocation(line: 361, column: 11, scope: !1396)
!1507 = !DILocation(line: 362, column: 13, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !269, line: 362, column: 13)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !269, line: 362, column: 13)
!1510 = !DILocation(line: 362, column: 13, scope: !1509)
!1511 = !DILocation(line: 361, column: 52, scope: !1505)
!1512 = distinct !{!1512, !1506, !1513, !510}
!1513 = !DILocation(line: 362, column: 13, scope: !1396)
!1514 = !DILocation(line: 260, column: 10, scope: !1370)
!1515 = !DILocation(line: 365, column: 28, scope: !1398)
!1516 = !DILocation(line: 367, column: 7, scope: !1399)
!1517 = !DILocation(line: 370, column: 7, scope: !1399)
!1518 = !DILocation(line: 376, column: 11, scope: !1399)
!1519 = !DILocation(line: 381, column: 11, scope: !1399)
!1520 = !DILocation(line: 382, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !269, line: 382, column: 9)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !269, line: 382, column: 9)
!1523 = distinct !DILexicalBlock(scope: !1399, file: !269, line: 381, column: 11)
!1524 = !DILocation(line: 382, column: 9, scope: !1522)
!1525 = !DILocation(line: 389, column: 7, scope: !1399)
!1526 = !DILocation(line: 392, column: 7, scope: !1399)
!1527 = !DILocation(line: 0, scope: !1401)
!1528 = !DILocation(line: 395, column: 8, scope: !1401)
!1529 = !DILocation(line: 395, column: 34, scope: !1404)
!1530 = !DILocation(line: 395, column: 26, scope: !1404)
!1531 = !DILocation(line: 395, column: 48, scope: !1404)
!1532 = !DILocation(line: 395, column: 55, scope: !1404)
!1533 = !DILocation(line: 395, column: 3, scope: !1401)
!1534 = !DILocation(line: 395, column: 67, scope: !1404)
!1535 = !DILocation(line: 0, scope: !1403)
!1536 = !DILocation(line: 402, column: 11, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 401, column: 11)
!1538 = !DILocation(line: 404, column: 17, scope: !1537)
!1539 = !DILocation(line: 405, column: 39, scope: !1537)
!1540 = !DILocation(line: 409, column: 32, scope: !1537)
!1541 = !DILocation(line: 405, column: 19, scope: !1537)
!1542 = !DILocation(line: 405, column: 15, scope: !1537)
!1543 = !DILocation(line: 410, column: 11, scope: !1537)
!1544 = !DILocation(line: 410, column: 25, scope: !1537)
!1545 = !DILocalVariable(name: "__s1", arg: 1, scope: !1546, file: !494, line: 974, type: !662)
!1546 = distinct !DISubprogram(name: "memeq", scope: !494, file: !494, line: 974, type: !1187, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1547)
!1547 = !{!1545, !1548, !1549}
!1548 = !DILocalVariable(name: "__s2", arg: 2, scope: !1546, file: !494, line: 974, type: !662)
!1549 = !DILocalVariable(name: "__n", arg: 3, scope: !1546, file: !494, line: 974, type: !47)
!1550 = !DILocation(line: 0, scope: !1546, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 410, column: 14, scope: !1537)
!1552 = !DILocation(line: 976, column: 11, scope: !1546, inlinedAt: !1551)
!1553 = !DILocation(line: 976, column: 10, scope: !1546, inlinedAt: !1551)
!1554 = !DILocation(line: 401, column: 11, scope: !1403)
!1555 = !DILocation(line: 417, column: 25, scope: !1403)
!1556 = !DILocation(line: 418, column: 7, scope: !1403)
!1557 = !DILocation(line: 421, column: 15, scope: !1410)
!1558 = !DILocation(line: 423, column: 15, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !269, line: 423, column: 15)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !269, line: 422, column: 13)
!1561 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 421, column: 15)
!1562 = !DILocation(line: 423, column: 15, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1559, file: !269, line: 423, column: 15)
!1564 = !DILocation(line: 423, column: 15, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !269, line: 423, column: 15)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !269, line: 423, column: 15)
!1567 = distinct !DILexicalBlock(scope: !1563, file: !269, line: 423, column: 15)
!1568 = !DILocation(line: 423, column: 15, scope: !1566)
!1569 = !DILocation(line: 423, column: 15, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1571, file: !269, line: 423, column: 15)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !269, line: 423, column: 15)
!1572 = !DILocation(line: 423, column: 15, scope: !1571)
!1573 = !DILocation(line: 423, column: 15, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !269, line: 423, column: 15)
!1575 = distinct !DILexicalBlock(scope: !1567, file: !269, line: 423, column: 15)
!1576 = !DILocation(line: 423, column: 15, scope: !1575)
!1577 = !DILocation(line: 423, column: 15, scope: !1567)
!1578 = !DILocation(line: 423, column: 15, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !269, line: 423, column: 15)
!1580 = distinct !DILexicalBlock(scope: !1559, file: !269, line: 423, column: 15)
!1581 = !DILocation(line: 423, column: 15, scope: !1580)
!1582 = !DILocation(line: 431, column: 19, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1560, file: !269, line: 430, column: 19)
!1584 = !DILocation(line: 431, column: 24, scope: !1583)
!1585 = !DILocation(line: 431, column: 28, scope: !1583)
!1586 = !DILocation(line: 431, column: 38, scope: !1583)
!1587 = !DILocation(line: 431, column: 48, scope: !1583)
!1588 = !DILocation(line: 431, column: 59, scope: !1583)
!1589 = !DILocation(line: 433, column: 19, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !269, line: 433, column: 19)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !269, line: 433, column: 19)
!1592 = distinct !DILexicalBlock(scope: !1583, file: !269, line: 432, column: 17)
!1593 = !DILocation(line: 433, column: 19, scope: !1591)
!1594 = !DILocation(line: 434, column: 19, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !269, line: 434, column: 19)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !269, line: 434, column: 19)
!1597 = !DILocation(line: 434, column: 19, scope: !1596)
!1598 = !DILocation(line: 435, column: 17, scope: !1592)
!1599 = !DILocation(line: 442, column: 20, scope: !1561)
!1600 = !DILocation(line: 447, column: 11, scope: !1410)
!1601 = !DILocation(line: 450, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 448, column: 13)
!1603 = !DILocation(line: 456, column: 19, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1602, file: !269, line: 455, column: 19)
!1605 = !DILocation(line: 456, column: 24, scope: !1604)
!1606 = !DILocation(line: 456, column: 28, scope: !1604)
!1607 = !DILocation(line: 456, column: 38, scope: !1604)
!1608 = !DILocation(line: 456, column: 47, scope: !1604)
!1609 = !DILocation(line: 456, column: 41, scope: !1604)
!1610 = !DILocation(line: 456, column: 52, scope: !1604)
!1611 = !DILocation(line: 455, column: 19, scope: !1602)
!1612 = !DILocation(line: 457, column: 25, scope: !1604)
!1613 = !DILocation(line: 457, column: 17, scope: !1604)
!1614 = !DILocation(line: 464, column: 25, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1604, file: !269, line: 458, column: 19)
!1616 = !DILocation(line: 468, column: 21, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !269, line: 468, column: 21)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !269, line: 468, column: 21)
!1619 = !DILocation(line: 468, column: 21, scope: !1618)
!1620 = !DILocation(line: 469, column: 21, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !269, line: 469, column: 21)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !269, line: 469, column: 21)
!1623 = !DILocation(line: 469, column: 21, scope: !1622)
!1624 = !DILocation(line: 470, column: 21, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !269, line: 470, column: 21)
!1626 = distinct !DILexicalBlock(scope: !1615, file: !269, line: 470, column: 21)
!1627 = !DILocation(line: 470, column: 21, scope: !1626)
!1628 = !DILocation(line: 471, column: 21, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !269, line: 471, column: 21)
!1630 = distinct !DILexicalBlock(scope: !1615, file: !269, line: 471, column: 21)
!1631 = !DILocation(line: 471, column: 21, scope: !1630)
!1632 = !DILocation(line: 472, column: 21, scope: !1615)
!1633 = !DILocation(line: 482, column: 33, scope: !1433)
!1634 = !DILocation(line: 483, column: 33, scope: !1433)
!1635 = !DILocation(line: 485, column: 33, scope: !1433)
!1636 = !DILocation(line: 486, column: 33, scope: !1433)
!1637 = !DILocation(line: 487, column: 33, scope: !1433)
!1638 = !DILocation(line: 490, column: 17, scope: !1433)
!1639 = !DILocation(line: 492, column: 21, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !269, line: 491, column: 15)
!1641 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 490, column: 17)
!1642 = !DILocation(line: 499, column: 35, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 499, column: 17)
!1644 = !DILocation(line: 499, column: 57, scope: !1643)
!1645 = !DILocation(line: 0, scope: !1433)
!1646 = !DILocation(line: 502, column: 11, scope: !1433)
!1647 = !DILocation(line: 504, column: 17, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1433, file: !269, line: 503, column: 17)
!1649 = !DILocation(line: 507, column: 11, scope: !1433)
!1650 = !DILocation(line: 508, column: 17, scope: !1433)
!1651 = !DILocation(line: 517, column: 15, scope: !1410)
!1652 = !DILocation(line: 517, column: 40, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 517, column: 15)
!1654 = !DILocation(line: 517, column: 47, scope: !1653)
!1655 = !DILocation(line: 517, column: 18, scope: !1653)
!1656 = !DILocation(line: 521, column: 17, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 521, column: 15)
!1658 = !DILocation(line: 521, column: 15, scope: !1410)
!1659 = !DILocation(line: 525, column: 11, scope: !1410)
!1660 = !DILocation(line: 537, column: 15, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 536, column: 15)
!1662 = !DILocation(line: 536, column: 15, scope: !1410)
!1663 = !DILocation(line: 544, column: 15, scope: !1410)
!1664 = !DILocation(line: 546, column: 19, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !269, line: 545, column: 13)
!1666 = distinct !DILexicalBlock(scope: !1410, file: !269, line: 544, column: 15)
!1667 = !DILocation(line: 549, column: 19, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !269, line: 549, column: 19)
!1669 = !DILocation(line: 549, column: 30, scope: !1668)
!1670 = !DILocation(line: 558, column: 15, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1672, file: !269, line: 558, column: 15)
!1672 = distinct !DILexicalBlock(scope: !1665, file: !269, line: 558, column: 15)
!1673 = !DILocation(line: 558, column: 15, scope: !1672)
!1674 = !DILocation(line: 559, column: 15, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !269, line: 559, column: 15)
!1676 = distinct !DILexicalBlock(scope: !1665, file: !269, line: 559, column: 15)
!1677 = !DILocation(line: 559, column: 15, scope: !1676)
!1678 = !DILocation(line: 560, column: 15, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !269, line: 560, column: 15)
!1680 = distinct !DILexicalBlock(scope: !1665, file: !269, line: 560, column: 15)
!1681 = !DILocation(line: 560, column: 15, scope: !1680)
!1682 = !DILocation(line: 562, column: 13, scope: !1665)
!1683 = !DILocation(line: 602, column: 17, scope: !1409)
!1684 = !DILocation(line: 0, scope: !1409)
!1685 = !DILocation(line: 605, column: 29, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1414, file: !269, line: 603, column: 15)
!1687 = !DILocation(line: 605, column: 41, scope: !1686)
!1688 = !DILocation(line: 670, column: 23, scope: !1430)
!1689 = !DILocation(line: 609, column: 17, scope: !1413)
!1690 = !DILocation(line: 609, column: 27, scope: !1413)
!1691 = !DILocation(line: 0, scope: !1465, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 609, column: 32, scope: !1413)
!1693 = !DILocation(line: 0, scope: !1473, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 1137, column: 3, scope: !1465, inlinedAt: !1692)
!1695 = !DILocation(line: 59, column: 10, scope: !1473, inlinedAt: !1694)
!1696 = !DILocation(line: 613, column: 29, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1413, file: !269, line: 613, column: 21)
!1698 = !DILocation(line: 613, column: 21, scope: !1413)
!1699 = !DILocation(line: 614, column: 29, scope: !1697)
!1700 = !DILocation(line: 614, column: 19, scope: !1697)
!1701 = !DILocation(line: 618, column: 21, scope: !1416)
!1702 = !DILocation(line: 620, column: 54, scope: !1416)
!1703 = !DILocation(line: 0, scope: !1416)
!1704 = !DILocation(line: 619, column: 36, scope: !1416)
!1705 = !DILocation(line: 621, column: 25, scope: !1416)
!1706 = !DILocation(line: 631, column: 38, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1425, file: !269, line: 629, column: 23)
!1708 = !DILocation(line: 631, column: 48, scope: !1707)
!1709 = !DILocation(line: 665, column: 19, scope: !1417)
!1710 = !DILocation(line: 666, column: 15, scope: !1414)
!1711 = !DILocation(line: 626, column: 25, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1426, file: !269, line: 624, column: 23)
!1713 = !DILocation(line: 631, column: 51, scope: !1707)
!1714 = !DILocation(line: 631, column: 25, scope: !1707)
!1715 = !DILocation(line: 632, column: 28, scope: !1707)
!1716 = !DILocation(line: 631, column: 34, scope: !1707)
!1717 = distinct !{!1717, !1714, !1715, !510}
!1718 = !DILocation(line: 646, column: 29, scope: !1423)
!1719 = !DILocation(line: 0, scope: !1421)
!1720 = !DILocation(line: 649, column: 49, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1421, file: !269, line: 648, column: 29)
!1722 = !DILocation(line: 649, column: 39, scope: !1721)
!1723 = !DILocation(line: 649, column: 31, scope: !1721)
!1724 = !DILocation(line: 648, column: 60, scope: !1721)
!1725 = !DILocation(line: 648, column: 50, scope: !1721)
!1726 = !DILocation(line: 648, column: 29, scope: !1421)
!1727 = distinct !{!1727, !1726, !1728, !510}
!1728 = !DILocation(line: 654, column: 33, scope: !1421)
!1729 = !DILocation(line: 657, column: 43, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1424, file: !269, line: 657, column: 29)
!1731 = !DILocalVariable(name: "wc", arg: 1, scope: !1732, file: !1733, line: 865, type: !1736)
!1732 = distinct !DISubprogram(name: "c32isprint", scope: !1733, file: !1733, line: 865, type: !1734, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1738)
!1733 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!45, !1736}
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1737, line: 20, baseType: !6)
!1737 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1738 = !{!1731}
!1739 = !DILocation(line: 0, scope: !1732, inlinedAt: !1740)
!1740 = distinct !DILocation(line: 657, column: 31, scope: !1730)
!1741 = !DILocation(line: 871, column: 10, scope: !1732, inlinedAt: !1740)
!1742 = !DILocation(line: 657, column: 31, scope: !1730)
!1743 = !DILocation(line: 664, column: 23, scope: !1416)
!1744 = !DILocation(line: 753, column: 2, scope: !1370)
!1745 = !DILocation(line: 756, column: 51, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 756, column: 7)
!1747 = !DILocation(line: 670, column: 19, scope: !1430)
!1748 = !DILocation(line: 670, column: 45, scope: !1430)
!1749 = !DILocation(line: 674, column: 33, scope: !1429)
!1750 = !DILocation(line: 0, scope: !1429)
!1751 = !DILocation(line: 676, column: 17, scope: !1429)
!1752 = !DILocation(line: 398, column: 12, scope: !1403)
!1753 = !DILocation(line: 678, column: 43, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !269, line: 678, column: 25)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !269, line: 677, column: 19)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !269, line: 676, column: 17)
!1757 = distinct !DILexicalBlock(scope: !1429, file: !269, line: 676, column: 17)
!1758 = !DILocation(line: 680, column: 25, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !269, line: 680, column: 25)
!1760 = distinct !DILexicalBlock(scope: !1754, file: !269, line: 679, column: 23)
!1761 = !DILocation(line: 680, column: 25, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !269, line: 680, column: 25)
!1763 = !DILocation(line: 680, column: 25, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !269, line: 680, column: 25)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !269, line: 680, column: 25)
!1766 = distinct !DILexicalBlock(scope: !1762, file: !269, line: 680, column: 25)
!1767 = !DILocation(line: 680, column: 25, scope: !1765)
!1768 = !DILocation(line: 680, column: 25, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !269, line: 680, column: 25)
!1770 = distinct !DILexicalBlock(scope: !1766, file: !269, line: 680, column: 25)
!1771 = !DILocation(line: 680, column: 25, scope: !1770)
!1772 = !DILocation(line: 680, column: 25, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !269, line: 680, column: 25)
!1774 = distinct !DILexicalBlock(scope: !1766, file: !269, line: 680, column: 25)
!1775 = !DILocation(line: 680, column: 25, scope: !1774)
!1776 = !DILocation(line: 680, column: 25, scope: !1766)
!1777 = !DILocation(line: 680, column: 25, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !269, line: 680, column: 25)
!1779 = distinct !DILexicalBlock(scope: !1759, file: !269, line: 680, column: 25)
!1780 = !DILocation(line: 680, column: 25, scope: !1779)
!1781 = !DILocation(line: 681, column: 25, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !269, line: 681, column: 25)
!1783 = distinct !DILexicalBlock(scope: !1760, file: !269, line: 681, column: 25)
!1784 = !DILocation(line: 681, column: 25, scope: !1783)
!1785 = !DILocation(line: 682, column: 25, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !269, line: 682, column: 25)
!1787 = distinct !DILexicalBlock(scope: !1760, file: !269, line: 682, column: 25)
!1788 = !DILocation(line: 682, column: 25, scope: !1787)
!1789 = !DILocation(line: 683, column: 38, scope: !1760)
!1790 = !DILocation(line: 683, column: 33, scope: !1760)
!1791 = !DILocation(line: 684, column: 23, scope: !1760)
!1792 = !DILocation(line: 685, column: 30, scope: !1754)
!1793 = !DILocation(line: 687, column: 25, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !269, line: 687, column: 25)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !269, line: 687, column: 25)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !269, line: 686, column: 23)
!1797 = distinct !DILexicalBlock(scope: !1754, file: !269, line: 685, column: 30)
!1798 = !DILocation(line: 687, column: 25, scope: !1795)
!1799 = !DILocation(line: 689, column: 23, scope: !1796)
!1800 = !DILocation(line: 690, column: 35, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1755, file: !269, line: 690, column: 25)
!1802 = !DILocation(line: 690, column: 30, scope: !1801)
!1803 = !DILocation(line: 690, column: 25, scope: !1755)
!1804 = !DILocation(line: 692, column: 21, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !269, line: 692, column: 21)
!1806 = distinct !DILexicalBlock(scope: !1755, file: !269, line: 692, column: 21)
!1807 = !DILocation(line: 692, column: 21, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !269, line: 692, column: 21)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !269, line: 692, column: 21)
!1810 = distinct !DILexicalBlock(scope: !1805, file: !269, line: 692, column: 21)
!1811 = !DILocation(line: 692, column: 21, scope: !1809)
!1812 = !DILocation(line: 692, column: 21, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1814, file: !269, line: 692, column: 21)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !269, line: 692, column: 21)
!1815 = !DILocation(line: 692, column: 21, scope: !1814)
!1816 = !DILocation(line: 692, column: 21, scope: !1810)
!1817 = !DILocation(line: 0, scope: !1755)
!1818 = !DILocation(line: 693, column: 21, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !269, line: 693, column: 21)
!1820 = distinct !DILexicalBlock(scope: !1755, file: !269, line: 693, column: 21)
!1821 = !DILocation(line: 693, column: 21, scope: !1820)
!1822 = !DILocation(line: 694, column: 25, scope: !1755)
!1823 = !DILocation(line: 676, column: 17, scope: !1756)
!1824 = distinct !{!1824, !1825, !1826}
!1825 = !DILocation(line: 676, column: 17, scope: !1757)
!1826 = !DILocation(line: 695, column: 19, scope: !1757)
!1827 = !DILocation(line: 409, column: 30, scope: !1537)
!1828 = !DILocation(line: 702, column: 34, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 702, column: 11)
!1830 = !DILocation(line: 704, column: 14, scope: !1829)
!1831 = !DILocation(line: 705, column: 14, scope: !1829)
!1832 = !DILocation(line: 705, column: 35, scope: !1829)
!1833 = !DILocation(line: 705, column: 17, scope: !1829)
!1834 = !DILocation(line: 705, column: 47, scope: !1829)
!1835 = !DILocation(line: 705, column: 65, scope: !1829)
!1836 = !DILocation(line: 706, column: 11, scope: !1829)
!1837 = !DILocation(line: 702, column: 11, scope: !1403)
!1838 = !DILocation(line: 395, column: 15, scope: !1401)
!1839 = !DILocation(line: 709, column: 5, scope: !1403)
!1840 = !DILocation(line: 710, column: 7, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 710, column: 7)
!1842 = !DILocation(line: 710, column: 7, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1841, file: !269, line: 710, column: 7)
!1844 = !DILocation(line: 710, column: 7, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !269, line: 710, column: 7)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !269, line: 710, column: 7)
!1847 = distinct !DILexicalBlock(scope: !1843, file: !269, line: 710, column: 7)
!1848 = !DILocation(line: 710, column: 7, scope: !1846)
!1849 = !DILocation(line: 710, column: 7, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !269, line: 710, column: 7)
!1851 = distinct !DILexicalBlock(scope: !1847, file: !269, line: 710, column: 7)
!1852 = !DILocation(line: 710, column: 7, scope: !1851)
!1853 = !DILocation(line: 710, column: 7, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !269, line: 710, column: 7)
!1855 = distinct !DILexicalBlock(scope: !1847, file: !269, line: 710, column: 7)
!1856 = !DILocation(line: 710, column: 7, scope: !1855)
!1857 = !DILocation(line: 710, column: 7, scope: !1847)
!1858 = !DILocation(line: 710, column: 7, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !269, line: 710, column: 7)
!1860 = distinct !DILexicalBlock(scope: !1841, file: !269, line: 710, column: 7)
!1861 = !DILocation(line: 710, column: 7, scope: !1860)
!1862 = !DILocation(line: 712, column: 5, scope: !1403)
!1863 = !DILocation(line: 713, column: 7, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !269, line: 713, column: 7)
!1865 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 713, column: 7)
!1866 = !DILocation(line: 417, column: 21, scope: !1403)
!1867 = !DILocation(line: 713, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1869, file: !269, line: 713, column: 7)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !269, line: 713, column: 7)
!1870 = distinct !DILexicalBlock(scope: !1864, file: !269, line: 713, column: 7)
!1871 = !DILocation(line: 713, column: 7, scope: !1869)
!1872 = !DILocation(line: 713, column: 7, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !269, line: 713, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1870, file: !269, line: 713, column: 7)
!1875 = !DILocation(line: 713, column: 7, scope: !1874)
!1876 = !DILocation(line: 713, column: 7, scope: !1870)
!1877 = !DILocation(line: 714, column: 7, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !269, line: 714, column: 7)
!1879 = distinct !DILexicalBlock(scope: !1403, file: !269, line: 714, column: 7)
!1880 = !DILocation(line: 714, column: 7, scope: !1879)
!1881 = !DILocation(line: 716, column: 11, scope: !1403)
!1882 = !DILocation(line: 718, column: 5, scope: !1404)
!1883 = !DILocation(line: 395, column: 82, scope: !1404)
!1884 = !DILocation(line: 395, column: 3, scope: !1404)
!1885 = distinct !{!1885, !1533, !1886, !510}
!1886 = !DILocation(line: 718, column: 5, scope: !1401)
!1887 = !DILocation(line: 720, column: 11, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 720, column: 7)
!1889 = !DILocation(line: 720, column: 16, scope: !1888)
!1890 = !DILocation(line: 728, column: 51, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 728, column: 7)
!1892 = !DILocation(line: 731, column: 11, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1891, file: !269, line: 730, column: 5)
!1894 = !DILocation(line: 732, column: 16, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1893, file: !269, line: 731, column: 11)
!1896 = !DILocation(line: 732, column: 9, scope: !1895)
!1897 = !DILocation(line: 736, column: 18, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !269, line: 736, column: 16)
!1899 = !DILocation(line: 736, column: 29, scope: !1898)
!1900 = !DILocation(line: 745, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 745, column: 7)
!1902 = !DILocation(line: 745, column: 20, scope: !1901)
!1903 = !DILocation(line: 746, column: 12, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1905, file: !269, line: 746, column: 5)
!1905 = distinct !DILexicalBlock(scope: !1901, file: !269, line: 746, column: 5)
!1906 = !DILocation(line: 746, column: 5, scope: !1905)
!1907 = !DILocation(line: 747, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !269, line: 747, column: 7)
!1909 = distinct !DILexicalBlock(scope: !1904, file: !269, line: 747, column: 7)
!1910 = !DILocation(line: 747, column: 7, scope: !1909)
!1911 = !DILocation(line: 746, column: 39, scope: !1904)
!1912 = distinct !{!1912, !1906, !1913, !510}
!1913 = !DILocation(line: 747, column: 7, scope: !1905)
!1914 = !DILocation(line: 749, column: 11, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1370, file: !269, line: 749, column: 7)
!1916 = !DILocation(line: 749, column: 7, scope: !1370)
!1917 = !DILocation(line: 750, column: 5, scope: !1915)
!1918 = !DILocation(line: 750, column: 17, scope: !1915)
!1919 = !DILocation(line: 756, column: 21, scope: !1746)
!1920 = !DILocation(line: 760, column: 42, scope: !1370)
!1921 = !DILocation(line: 758, column: 10, scope: !1370)
!1922 = !DILocation(line: 758, column: 3, scope: !1370)
!1923 = !DILocation(line: 762, column: 1, scope: !1370)
!1924 = !DISubprogram(name: "iswprint", scope: !1925, file: !1925, line: 120, type: !1734, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!1925 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1926 = distinct !DISubprogram(name: "quotearg_alloc", scope: !269, file: !269, line: 788, type: !1927, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1929)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!42, !50, !47, !1262}
!1929 = !{!1930, !1931, !1932}
!1930 = !DILocalVariable(name: "arg", arg: 1, scope: !1926, file: !269, line: 788, type: !50)
!1931 = !DILocalVariable(name: "argsize", arg: 2, scope: !1926, file: !269, line: 788, type: !47)
!1932 = !DILocalVariable(name: "o", arg: 3, scope: !1926, file: !269, line: 789, type: !1262)
!1933 = !DILocation(line: 0, scope: !1926)
!1934 = !DILocalVariable(name: "arg", arg: 1, scope: !1935, file: !269, line: 801, type: !50)
!1935 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !269, file: !269, line: 801, type: !1936, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1938)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!42, !50, !47, !387, !1262}
!1938 = !{!1934, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946}
!1939 = !DILocalVariable(name: "argsize", arg: 2, scope: !1935, file: !269, line: 801, type: !47)
!1940 = !DILocalVariable(name: "size", arg: 3, scope: !1935, file: !269, line: 801, type: !387)
!1941 = !DILocalVariable(name: "o", arg: 4, scope: !1935, file: !269, line: 802, type: !1262)
!1942 = !DILocalVariable(name: "p", scope: !1935, file: !269, line: 804, type: !1262)
!1943 = !DILocalVariable(name: "saved_errno", scope: !1935, file: !269, line: 805, type: !45)
!1944 = !DILocalVariable(name: "flags", scope: !1935, file: !269, line: 807, type: !45)
!1945 = !DILocalVariable(name: "bufsize", scope: !1935, file: !269, line: 808, type: !47)
!1946 = !DILocalVariable(name: "buf", scope: !1935, file: !269, line: 812, type: !42)
!1947 = !DILocation(line: 0, scope: !1935, inlinedAt: !1948)
!1948 = distinct !DILocation(line: 791, column: 10, scope: !1926)
!1949 = !DILocation(line: 804, column: 37, scope: !1935, inlinedAt: !1948)
!1950 = !DILocation(line: 805, column: 21, scope: !1935, inlinedAt: !1948)
!1951 = !DILocation(line: 807, column: 18, scope: !1935, inlinedAt: !1948)
!1952 = !DILocation(line: 807, column: 24, scope: !1935, inlinedAt: !1948)
!1953 = !DILocation(line: 808, column: 72, scope: !1935, inlinedAt: !1948)
!1954 = !DILocation(line: 809, column: 53, scope: !1935, inlinedAt: !1948)
!1955 = !DILocation(line: 810, column: 49, scope: !1935, inlinedAt: !1948)
!1956 = !DILocation(line: 811, column: 49, scope: !1935, inlinedAt: !1948)
!1957 = !DILocation(line: 808, column: 20, scope: !1935, inlinedAt: !1948)
!1958 = !DILocation(line: 811, column: 62, scope: !1935, inlinedAt: !1948)
!1959 = !DILocation(line: 812, column: 15, scope: !1935, inlinedAt: !1948)
!1960 = !DILocation(line: 813, column: 60, scope: !1935, inlinedAt: !1948)
!1961 = !DILocation(line: 815, column: 32, scope: !1935, inlinedAt: !1948)
!1962 = !DILocation(line: 815, column: 47, scope: !1935, inlinedAt: !1948)
!1963 = !DILocation(line: 813, column: 3, scope: !1935, inlinedAt: !1948)
!1964 = !DILocation(line: 816, column: 9, scope: !1935, inlinedAt: !1948)
!1965 = !DILocation(line: 791, column: 3, scope: !1926)
!1966 = !DILocation(line: 0, scope: !1935)
!1967 = !DILocation(line: 804, column: 37, scope: !1935)
!1968 = !DILocation(line: 805, column: 21, scope: !1935)
!1969 = !DILocation(line: 807, column: 18, scope: !1935)
!1970 = !DILocation(line: 807, column: 27, scope: !1935)
!1971 = !DILocation(line: 807, column: 24, scope: !1935)
!1972 = !DILocation(line: 808, column: 72, scope: !1935)
!1973 = !DILocation(line: 809, column: 53, scope: !1935)
!1974 = !DILocation(line: 810, column: 49, scope: !1935)
!1975 = !DILocation(line: 811, column: 49, scope: !1935)
!1976 = !DILocation(line: 808, column: 20, scope: !1935)
!1977 = !DILocation(line: 811, column: 62, scope: !1935)
!1978 = !DILocation(line: 812, column: 15, scope: !1935)
!1979 = !DILocation(line: 813, column: 60, scope: !1935)
!1980 = !DILocation(line: 815, column: 32, scope: !1935)
!1981 = !DILocation(line: 815, column: 47, scope: !1935)
!1982 = !DILocation(line: 813, column: 3, scope: !1935)
!1983 = !DILocation(line: 816, column: 9, scope: !1935)
!1984 = !DILocation(line: 817, column: 7, scope: !1935)
!1985 = !DILocation(line: 818, column: 11, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1935, file: !269, line: 817, column: 7)
!1987 = !{!983, !983, i64 0}
!1988 = !DILocation(line: 818, column: 5, scope: !1986)
!1989 = !DILocation(line: 819, column: 3, scope: !1935)
!1990 = distinct !DISubprogram(name: "quotearg_free", scope: !269, file: !269, line: 837, type: !204, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !1991)
!1991 = !{!1992, !1993}
!1992 = !DILocalVariable(name: "sv", scope: !1990, file: !269, line: 839, type: !328)
!1993 = !DILocalVariable(name: "i", scope: !1994, file: !269, line: 840, type: !45)
!1994 = distinct !DILexicalBlock(scope: !1990, file: !269, line: 840, column: 3)
!1995 = !DILocation(line: 839, column: 24, scope: !1990)
!1996 = !DILocation(line: 0, scope: !1990)
!1997 = !DILocation(line: 0, scope: !1994)
!1998 = !DILocation(line: 840, column: 21, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !269, line: 840, column: 3)
!2000 = !DILocation(line: 840, column: 3, scope: !1994)
!2001 = !DILocation(line: 842, column: 13, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1990, file: !269, line: 842, column: 7)
!2003 = !{!2004, !457, i64 8}
!2004 = !{!"slotvec", !983, i64 0, !457, i64 8}
!2005 = !DILocation(line: 842, column: 17, scope: !2002)
!2006 = !DILocation(line: 842, column: 7, scope: !1990)
!2007 = !DILocation(line: 841, column: 17, scope: !1999)
!2008 = !DILocation(line: 841, column: 5, scope: !1999)
!2009 = !DILocation(line: 840, column: 32, scope: !1999)
!2010 = distinct !{!2010, !2000, !2011, !510}
!2011 = !DILocation(line: 841, column: 20, scope: !1994)
!2012 = !DILocation(line: 844, column: 7, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2002, file: !269, line: 843, column: 5)
!2014 = !DILocation(line: 845, column: 21, scope: !2013)
!2015 = !{!2004, !983, i64 0}
!2016 = !DILocation(line: 846, column: 20, scope: !2013)
!2017 = !DILocation(line: 847, column: 5, scope: !2013)
!2018 = !DILocation(line: 848, column: 10, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1990, file: !269, line: 848, column: 7)
!2020 = !DILocation(line: 848, column: 7, scope: !1990)
!2021 = !DILocation(line: 850, column: 13, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2019, file: !269, line: 849, column: 5)
!2023 = !DILocation(line: 850, column: 7, scope: !2022)
!2024 = !DILocation(line: 851, column: 15, scope: !2022)
!2025 = !DILocation(line: 852, column: 5, scope: !2022)
!2026 = !DILocation(line: 853, column: 10, scope: !1990)
!2027 = !DILocation(line: 854, column: 1, scope: !1990)
!2028 = distinct !DISubprogram(name: "quotearg_n", scope: !269, file: !269, line: 919, type: !652, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2029)
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "n", arg: 1, scope: !2028, file: !269, line: 919, type: !45)
!2031 = !DILocalVariable(name: "arg", arg: 2, scope: !2028, file: !269, line: 919, type: !50)
!2032 = !DILocation(line: 0, scope: !2028)
!2033 = !DILocation(line: 921, column: 10, scope: !2028)
!2034 = !DILocation(line: 921, column: 3, scope: !2028)
!2035 = distinct !DISubprogram(name: "quotearg_n_options", scope: !269, file: !269, line: 866, type: !2036, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!42, !45, !50, !47, !1262}
!2038 = !{!2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2049, !2050, !2052, !2053, !2054}
!2039 = !DILocalVariable(name: "n", arg: 1, scope: !2035, file: !269, line: 866, type: !45)
!2040 = !DILocalVariable(name: "arg", arg: 2, scope: !2035, file: !269, line: 866, type: !50)
!2041 = !DILocalVariable(name: "argsize", arg: 3, scope: !2035, file: !269, line: 866, type: !47)
!2042 = !DILocalVariable(name: "options", arg: 4, scope: !2035, file: !269, line: 867, type: !1262)
!2043 = !DILocalVariable(name: "saved_errno", scope: !2035, file: !269, line: 869, type: !45)
!2044 = !DILocalVariable(name: "sv", scope: !2035, file: !269, line: 871, type: !328)
!2045 = !DILocalVariable(name: "nslots_max", scope: !2035, file: !269, line: 873, type: !45)
!2046 = !DILocalVariable(name: "preallocated", scope: !2047, file: !269, line: 879, type: !67)
!2047 = distinct !DILexicalBlock(scope: !2048, file: !269, line: 878, column: 5)
!2048 = distinct !DILexicalBlock(scope: !2035, file: !269, line: 877, column: 7)
!2049 = !DILocalVariable(name: "new_nslots", scope: !2047, file: !269, line: 880, type: !400)
!2050 = !DILocalVariable(name: "size", scope: !2051, file: !269, line: 891, type: !47)
!2051 = distinct !DILexicalBlock(scope: !2035, file: !269, line: 890, column: 3)
!2052 = !DILocalVariable(name: "val", scope: !2051, file: !269, line: 892, type: !42)
!2053 = !DILocalVariable(name: "flags", scope: !2051, file: !269, line: 894, type: !45)
!2054 = !DILocalVariable(name: "qsize", scope: !2051, file: !269, line: 895, type: !47)
!2055 = !DILocation(line: 0, scope: !2035)
!2056 = !DILocation(line: 869, column: 21, scope: !2035)
!2057 = !DILocation(line: 871, column: 24, scope: !2035)
!2058 = !DILocation(line: 874, column: 17, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2035, file: !269, line: 874, column: 7)
!2060 = !DILocation(line: 875, column: 5, scope: !2059)
!2061 = !DILocation(line: 877, column: 7, scope: !2048)
!2062 = !DILocation(line: 877, column: 14, scope: !2048)
!2063 = !DILocation(line: 877, column: 7, scope: !2035)
!2064 = !DILocation(line: 879, column: 31, scope: !2047)
!2065 = !DILocation(line: 0, scope: !2047)
!2066 = !DILocation(line: 880, column: 7, scope: !2047)
!2067 = !DILocation(line: 880, column: 26, scope: !2047)
!2068 = !DILocation(line: 880, column: 13, scope: !2047)
!2069 = !DILocation(line: 882, column: 31, scope: !2047)
!2070 = !DILocation(line: 883, column: 33, scope: !2047)
!2071 = !DILocation(line: 883, column: 42, scope: !2047)
!2072 = !DILocation(line: 883, column: 31, scope: !2047)
!2073 = !DILocation(line: 882, column: 22, scope: !2047)
!2074 = !DILocation(line: 882, column: 15, scope: !2047)
!2075 = !DILocation(line: 884, column: 11, scope: !2047)
!2076 = !DILocation(line: 885, column: 15, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2047, file: !269, line: 884, column: 11)
!2078 = !{i64 0, i64 8, !1987, i64 8, i64 8, !456}
!2079 = !DILocation(line: 885, column: 9, scope: !2077)
!2080 = !DILocation(line: 886, column: 20, scope: !2047)
!2081 = !DILocation(line: 886, column: 18, scope: !2047)
!2082 = !DILocation(line: 886, column: 15, scope: !2047)
!2083 = !DILocation(line: 886, column: 32, scope: !2047)
!2084 = !DILocation(line: 886, column: 43, scope: !2047)
!2085 = !DILocation(line: 886, column: 53, scope: !2047)
!2086 = !DILocation(line: 0, scope: !1473, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 886, column: 7, scope: !2047)
!2088 = !DILocation(line: 59, column: 10, scope: !1473, inlinedAt: !2087)
!2089 = !DILocation(line: 887, column: 16, scope: !2047)
!2090 = !DILocation(line: 887, column: 14, scope: !2047)
!2091 = !DILocation(line: 888, column: 5, scope: !2048)
!2092 = !DILocation(line: 888, column: 5, scope: !2047)
!2093 = !DILocation(line: 891, column: 19, scope: !2051)
!2094 = !DILocation(line: 891, column: 25, scope: !2051)
!2095 = !DILocation(line: 0, scope: !2051)
!2096 = !DILocation(line: 892, column: 23, scope: !2051)
!2097 = !DILocation(line: 894, column: 26, scope: !2051)
!2098 = !DILocation(line: 894, column: 32, scope: !2051)
!2099 = !DILocation(line: 896, column: 55, scope: !2051)
!2100 = !DILocation(line: 897, column: 46, scope: !2051)
!2101 = !DILocation(line: 898, column: 55, scope: !2051)
!2102 = !DILocation(line: 899, column: 55, scope: !2051)
!2103 = !DILocation(line: 895, column: 20, scope: !2051)
!2104 = !DILocation(line: 901, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2051, file: !269, line: 901, column: 9)
!2106 = !DILocation(line: 901, column: 9, scope: !2051)
!2107 = !DILocation(line: 903, column: 35, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !269, line: 902, column: 7)
!2109 = !DILocation(line: 903, column: 20, scope: !2108)
!2110 = !DILocation(line: 904, column: 17, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !269, line: 904, column: 13)
!2112 = !DILocation(line: 904, column: 13, scope: !2108)
!2113 = !DILocation(line: 905, column: 11, scope: !2111)
!2114 = !DILocation(line: 906, column: 27, scope: !2108)
!2115 = !DILocation(line: 906, column: 19, scope: !2108)
!2116 = !DILocation(line: 907, column: 69, scope: !2108)
!2117 = !DILocation(line: 909, column: 44, scope: !2108)
!2118 = !DILocation(line: 910, column: 44, scope: !2108)
!2119 = !DILocation(line: 907, column: 9, scope: !2108)
!2120 = !DILocation(line: 911, column: 7, scope: !2108)
!2121 = !DILocation(line: 913, column: 11, scope: !2051)
!2122 = !DILocation(line: 914, column: 5, scope: !2051)
!2123 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !269, file: !269, line: 925, type: !2124, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!42, !45, !50, !47}
!2126 = !{!2127, !2128, !2129}
!2127 = !DILocalVariable(name: "n", arg: 1, scope: !2123, file: !269, line: 925, type: !45)
!2128 = !DILocalVariable(name: "arg", arg: 2, scope: !2123, file: !269, line: 925, type: !50)
!2129 = !DILocalVariable(name: "argsize", arg: 3, scope: !2123, file: !269, line: 925, type: !47)
!2130 = !DILocation(line: 0, scope: !2123)
!2131 = !DILocation(line: 927, column: 10, scope: !2123)
!2132 = !DILocation(line: 927, column: 3, scope: !2123)
!2133 = distinct !DISubprogram(name: "quotearg", scope: !269, file: !269, line: 931, type: !656, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2134)
!2134 = !{!2135}
!2135 = !DILocalVariable(name: "arg", arg: 1, scope: !2133, file: !269, line: 931, type: !50)
!2136 = !DILocation(line: 0, scope: !2133)
!2137 = !DILocation(line: 0, scope: !2028, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 933, column: 10, scope: !2133)
!2139 = !DILocation(line: 921, column: 10, scope: !2028, inlinedAt: !2138)
!2140 = !DILocation(line: 933, column: 3, scope: !2133)
!2141 = distinct !DISubprogram(name: "quotearg_mem", scope: !269, file: !269, line: 937, type: !2142, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2144)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!42, !50, !47}
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "arg", arg: 1, scope: !2141, file: !269, line: 937, type: !50)
!2146 = !DILocalVariable(name: "argsize", arg: 2, scope: !2141, file: !269, line: 937, type: !47)
!2147 = !DILocation(line: 0, scope: !2141)
!2148 = !DILocation(line: 0, scope: !2123, inlinedAt: !2149)
!2149 = distinct !DILocation(line: 939, column: 10, scope: !2141)
!2150 = !DILocation(line: 927, column: 10, scope: !2123, inlinedAt: !2149)
!2151 = !DILocation(line: 939, column: 3, scope: !2141)
!2152 = distinct !DISubprogram(name: "quotearg_n_style", scope: !269, file: !269, line: 943, type: !2153, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2155)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!42, !45, !27, !50}
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DILocalVariable(name: "n", arg: 1, scope: !2152, file: !269, line: 943, type: !45)
!2157 = !DILocalVariable(name: "s", arg: 2, scope: !2152, file: !269, line: 943, type: !27)
!2158 = !DILocalVariable(name: "arg", arg: 3, scope: !2152, file: !269, line: 943, type: !50)
!2159 = !DILocalVariable(name: "o", scope: !2152, file: !269, line: 945, type: !1263)
!2160 = !DILocation(line: 0, scope: !2152)
!2161 = !DILocation(line: 945, column: 3, scope: !2152)
!2162 = !DILocation(line: 945, column: 32, scope: !2152)
!2163 = !{!2164}
!2164 = distinct !{!2164, !2165, !"quoting_options_from_style: argument 0"}
!2165 = distinct !{!2165, !"quoting_options_from_style"}
!2166 = !DILocation(line: 945, column: 36, scope: !2152)
!2167 = !DILocalVariable(name: "style", arg: 1, scope: !2168, file: !269, line: 183, type: !27)
!2168 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !269, file: !269, line: 183, type: !2169, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!286, !27}
!2171 = !{!2167, !2172}
!2172 = !DILocalVariable(name: "o", scope: !2168, file: !269, line: 185, type: !286)
!2173 = !DILocation(line: 0, scope: !2168, inlinedAt: !2174)
!2174 = distinct !DILocation(line: 945, column: 36, scope: !2152)
!2175 = !DILocation(line: 185, column: 26, scope: !2168, inlinedAt: !2174)
!2176 = !DILocation(line: 186, column: 13, scope: !2177, inlinedAt: !2174)
!2177 = distinct !DILexicalBlock(scope: !2168, file: !269, line: 186, column: 7)
!2178 = !DILocation(line: 186, column: 7, scope: !2168, inlinedAt: !2174)
!2179 = !DILocation(line: 187, column: 5, scope: !2177, inlinedAt: !2174)
!2180 = !DILocation(line: 188, column: 5, scope: !2168, inlinedAt: !2174)
!2181 = !DILocation(line: 188, column: 11, scope: !2168, inlinedAt: !2174)
!2182 = !DILocation(line: 946, column: 10, scope: !2152)
!2183 = !DILocation(line: 947, column: 1, scope: !2152)
!2184 = !DILocation(line: 946, column: 3, scope: !2152)
!2185 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !269, file: !269, line: 950, type: !2186, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2188)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!42, !45, !27, !50, !47}
!2188 = !{!2189, !2190, !2191, !2192, !2193}
!2189 = !DILocalVariable(name: "n", arg: 1, scope: !2185, file: !269, line: 950, type: !45)
!2190 = !DILocalVariable(name: "s", arg: 2, scope: !2185, file: !269, line: 950, type: !27)
!2191 = !DILocalVariable(name: "arg", arg: 3, scope: !2185, file: !269, line: 951, type: !50)
!2192 = !DILocalVariable(name: "argsize", arg: 4, scope: !2185, file: !269, line: 951, type: !47)
!2193 = !DILocalVariable(name: "o", scope: !2185, file: !269, line: 953, type: !1263)
!2194 = !DILocation(line: 0, scope: !2185)
!2195 = !DILocation(line: 953, column: 3, scope: !2185)
!2196 = !DILocation(line: 953, column: 32, scope: !2185)
!2197 = !{!2198}
!2198 = distinct !{!2198, !2199, !"quoting_options_from_style: argument 0"}
!2199 = distinct !{!2199, !"quoting_options_from_style"}
!2200 = !DILocation(line: 953, column: 36, scope: !2185)
!2201 = !DILocation(line: 0, scope: !2168, inlinedAt: !2202)
!2202 = distinct !DILocation(line: 953, column: 36, scope: !2185)
!2203 = !DILocation(line: 185, column: 26, scope: !2168, inlinedAt: !2202)
!2204 = !DILocation(line: 186, column: 13, scope: !2177, inlinedAt: !2202)
!2205 = !DILocation(line: 186, column: 7, scope: !2168, inlinedAt: !2202)
!2206 = !DILocation(line: 187, column: 5, scope: !2177, inlinedAt: !2202)
!2207 = !DILocation(line: 188, column: 5, scope: !2168, inlinedAt: !2202)
!2208 = !DILocation(line: 188, column: 11, scope: !2168, inlinedAt: !2202)
!2209 = !DILocation(line: 954, column: 10, scope: !2185)
!2210 = !DILocation(line: 955, column: 1, scope: !2185)
!2211 = !DILocation(line: 954, column: 3, scope: !2185)
!2212 = distinct !DISubprogram(name: "quotearg_style", scope: !269, file: !269, line: 958, type: !2213, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!42, !27, !50}
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "s", arg: 1, scope: !2212, file: !269, line: 958, type: !27)
!2217 = !DILocalVariable(name: "arg", arg: 2, scope: !2212, file: !269, line: 958, type: !50)
!2218 = !DILocation(line: 0, scope: !2212)
!2219 = !DILocation(line: 0, scope: !2152, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 960, column: 10, scope: !2212)
!2221 = !DILocation(line: 945, column: 3, scope: !2152, inlinedAt: !2220)
!2222 = !DILocation(line: 945, column: 32, scope: !2152, inlinedAt: !2220)
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"quoting_options_from_style: argument 0"}
!2225 = distinct !{!2225, !"quoting_options_from_style"}
!2226 = !DILocation(line: 945, column: 36, scope: !2152, inlinedAt: !2220)
!2227 = !DILocation(line: 0, scope: !2168, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 945, column: 36, scope: !2152, inlinedAt: !2220)
!2229 = !DILocation(line: 185, column: 26, scope: !2168, inlinedAt: !2228)
!2230 = !DILocation(line: 186, column: 13, scope: !2177, inlinedAt: !2228)
!2231 = !DILocation(line: 186, column: 7, scope: !2168, inlinedAt: !2228)
!2232 = !DILocation(line: 187, column: 5, scope: !2177, inlinedAt: !2228)
!2233 = !DILocation(line: 188, column: 5, scope: !2168, inlinedAt: !2228)
!2234 = !DILocation(line: 188, column: 11, scope: !2168, inlinedAt: !2228)
!2235 = !DILocation(line: 946, column: 10, scope: !2152, inlinedAt: !2220)
!2236 = !DILocation(line: 947, column: 1, scope: !2152, inlinedAt: !2220)
!2237 = !DILocation(line: 960, column: 3, scope: !2212)
!2238 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !269, file: !269, line: 964, type: !2239, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!42, !27, !50, !47}
!2241 = !{!2242, !2243, !2244}
!2242 = !DILocalVariable(name: "s", arg: 1, scope: !2238, file: !269, line: 964, type: !27)
!2243 = !DILocalVariable(name: "arg", arg: 2, scope: !2238, file: !269, line: 964, type: !50)
!2244 = !DILocalVariable(name: "argsize", arg: 3, scope: !2238, file: !269, line: 964, type: !47)
!2245 = !DILocation(line: 0, scope: !2238)
!2246 = !DILocation(line: 0, scope: !2185, inlinedAt: !2247)
!2247 = distinct !DILocation(line: 966, column: 10, scope: !2238)
!2248 = !DILocation(line: 953, column: 3, scope: !2185, inlinedAt: !2247)
!2249 = !DILocation(line: 953, column: 32, scope: !2185, inlinedAt: !2247)
!2250 = !{!2251}
!2251 = distinct !{!2251, !2252, !"quoting_options_from_style: argument 0"}
!2252 = distinct !{!2252, !"quoting_options_from_style"}
!2253 = !DILocation(line: 953, column: 36, scope: !2185, inlinedAt: !2247)
!2254 = !DILocation(line: 0, scope: !2168, inlinedAt: !2255)
!2255 = distinct !DILocation(line: 953, column: 36, scope: !2185, inlinedAt: !2247)
!2256 = !DILocation(line: 185, column: 26, scope: !2168, inlinedAt: !2255)
!2257 = !DILocation(line: 186, column: 13, scope: !2177, inlinedAt: !2255)
!2258 = !DILocation(line: 186, column: 7, scope: !2168, inlinedAt: !2255)
!2259 = !DILocation(line: 187, column: 5, scope: !2177, inlinedAt: !2255)
!2260 = !DILocation(line: 188, column: 5, scope: !2168, inlinedAt: !2255)
!2261 = !DILocation(line: 188, column: 11, scope: !2168, inlinedAt: !2255)
!2262 = !DILocation(line: 954, column: 10, scope: !2185, inlinedAt: !2247)
!2263 = !DILocation(line: 955, column: 1, scope: !2185, inlinedAt: !2247)
!2264 = !DILocation(line: 966, column: 3, scope: !2238)
!2265 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !269, file: !269, line: 970, type: !2266, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!42, !50, !47, !43}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "arg", arg: 1, scope: !2265, file: !269, line: 970, type: !50)
!2270 = !DILocalVariable(name: "argsize", arg: 2, scope: !2265, file: !269, line: 970, type: !47)
!2271 = !DILocalVariable(name: "ch", arg: 3, scope: !2265, file: !269, line: 970, type: !43)
!2272 = !DILocalVariable(name: "options", scope: !2265, file: !269, line: 972, type: !286)
!2273 = !DILocation(line: 0, scope: !2265)
!2274 = !DILocation(line: 972, column: 3, scope: !2265)
!2275 = !DILocation(line: 972, column: 26, scope: !2265)
!2276 = !DILocation(line: 973, column: 13, scope: !2265)
!2277 = !{i64 0, i64 4, !553, i64 4, i64 4, !544, i64 8, i64 32, !553, i64 40, i64 8, !456, i64 48, i64 8, !456}
!2278 = !DILocation(line: 0, scope: !1283, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 974, column: 3, scope: !2265)
!2280 = !DILocation(line: 147, column: 62, scope: !1283, inlinedAt: !2279)
!2281 = !DILocation(line: 147, column: 57, scope: !1283, inlinedAt: !2279)
!2282 = !DILocation(line: 148, column: 15, scope: !1283, inlinedAt: !2279)
!2283 = !DILocation(line: 149, column: 21, scope: !1283, inlinedAt: !2279)
!2284 = !DILocation(line: 149, column: 24, scope: !1283, inlinedAt: !2279)
!2285 = !DILocation(line: 149, column: 34, scope: !1283, inlinedAt: !2279)
!2286 = !DILocation(line: 150, column: 19, scope: !1283, inlinedAt: !2279)
!2287 = !DILocation(line: 150, column: 24, scope: !1283, inlinedAt: !2279)
!2288 = !DILocation(line: 150, column: 6, scope: !1283, inlinedAt: !2279)
!2289 = !DILocation(line: 975, column: 10, scope: !2265)
!2290 = !DILocation(line: 976, column: 1, scope: !2265)
!2291 = !DILocation(line: 975, column: 3, scope: !2265)
!2292 = distinct !DISubprogram(name: "quotearg_char", scope: !269, file: !269, line: 979, type: !2293, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!42, !50, !43}
!2295 = !{!2296, !2297}
!2296 = !DILocalVariable(name: "arg", arg: 1, scope: !2292, file: !269, line: 979, type: !50)
!2297 = !DILocalVariable(name: "ch", arg: 2, scope: !2292, file: !269, line: 979, type: !43)
!2298 = !DILocation(line: 0, scope: !2292)
!2299 = !DILocation(line: 0, scope: !2265, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 981, column: 10, scope: !2292)
!2301 = !DILocation(line: 972, column: 3, scope: !2265, inlinedAt: !2300)
!2302 = !DILocation(line: 972, column: 26, scope: !2265, inlinedAt: !2300)
!2303 = !DILocation(line: 973, column: 13, scope: !2265, inlinedAt: !2300)
!2304 = !DILocation(line: 0, scope: !1283, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 974, column: 3, scope: !2265, inlinedAt: !2300)
!2306 = !DILocation(line: 147, column: 62, scope: !1283, inlinedAt: !2305)
!2307 = !DILocation(line: 147, column: 57, scope: !1283, inlinedAt: !2305)
!2308 = !DILocation(line: 148, column: 15, scope: !1283, inlinedAt: !2305)
!2309 = !DILocation(line: 149, column: 21, scope: !1283, inlinedAt: !2305)
!2310 = !DILocation(line: 149, column: 24, scope: !1283, inlinedAt: !2305)
!2311 = !DILocation(line: 149, column: 34, scope: !1283, inlinedAt: !2305)
!2312 = !DILocation(line: 150, column: 19, scope: !1283, inlinedAt: !2305)
!2313 = !DILocation(line: 150, column: 24, scope: !1283, inlinedAt: !2305)
!2314 = !DILocation(line: 150, column: 6, scope: !1283, inlinedAt: !2305)
!2315 = !DILocation(line: 975, column: 10, scope: !2265, inlinedAt: !2300)
!2316 = !DILocation(line: 976, column: 1, scope: !2265, inlinedAt: !2300)
!2317 = !DILocation(line: 981, column: 3, scope: !2292)
!2318 = distinct !DISubprogram(name: "quotearg_colon", scope: !269, file: !269, line: 985, type: !656, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2319)
!2319 = !{!2320}
!2320 = !DILocalVariable(name: "arg", arg: 1, scope: !2318, file: !269, line: 985, type: !50)
!2321 = !DILocation(line: 0, scope: !2318)
!2322 = !DILocation(line: 0, scope: !2292, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 987, column: 10, scope: !2318)
!2324 = !DILocation(line: 0, scope: !2265, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 981, column: 10, scope: !2292, inlinedAt: !2323)
!2326 = !DILocation(line: 972, column: 3, scope: !2265, inlinedAt: !2325)
!2327 = !DILocation(line: 972, column: 26, scope: !2265, inlinedAt: !2325)
!2328 = !DILocation(line: 973, column: 13, scope: !2265, inlinedAt: !2325)
!2329 = !DILocation(line: 0, scope: !1283, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 974, column: 3, scope: !2265, inlinedAt: !2325)
!2331 = !DILocation(line: 147, column: 57, scope: !1283, inlinedAt: !2330)
!2332 = !DILocation(line: 149, column: 21, scope: !1283, inlinedAt: !2330)
!2333 = !DILocation(line: 150, column: 6, scope: !1283, inlinedAt: !2330)
!2334 = !DILocation(line: 975, column: 10, scope: !2265, inlinedAt: !2325)
!2335 = !DILocation(line: 976, column: 1, scope: !2265, inlinedAt: !2325)
!2336 = !DILocation(line: 987, column: 3, scope: !2318)
!2337 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !269, file: !269, line: 991, type: !2142, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2338)
!2338 = !{!2339, !2340}
!2339 = !DILocalVariable(name: "arg", arg: 1, scope: !2337, file: !269, line: 991, type: !50)
!2340 = !DILocalVariable(name: "argsize", arg: 2, scope: !2337, file: !269, line: 991, type: !47)
!2341 = !DILocation(line: 0, scope: !2337)
!2342 = !DILocation(line: 0, scope: !2265, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 993, column: 10, scope: !2337)
!2344 = !DILocation(line: 972, column: 3, scope: !2265, inlinedAt: !2343)
!2345 = !DILocation(line: 972, column: 26, scope: !2265, inlinedAt: !2343)
!2346 = !DILocation(line: 973, column: 13, scope: !2265, inlinedAt: !2343)
!2347 = !DILocation(line: 0, scope: !1283, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 974, column: 3, scope: !2265, inlinedAt: !2343)
!2349 = !DILocation(line: 147, column: 57, scope: !1283, inlinedAt: !2348)
!2350 = !DILocation(line: 149, column: 21, scope: !1283, inlinedAt: !2348)
!2351 = !DILocation(line: 150, column: 6, scope: !1283, inlinedAt: !2348)
!2352 = !DILocation(line: 975, column: 10, scope: !2265, inlinedAt: !2343)
!2353 = !DILocation(line: 976, column: 1, scope: !2265, inlinedAt: !2343)
!2354 = !DILocation(line: 993, column: 3, scope: !2337)
!2355 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !269, file: !269, line: 997, type: !2153, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2356)
!2356 = !{!2357, !2358, !2359, !2360}
!2357 = !DILocalVariable(name: "n", arg: 1, scope: !2355, file: !269, line: 997, type: !45)
!2358 = !DILocalVariable(name: "s", arg: 2, scope: !2355, file: !269, line: 997, type: !27)
!2359 = !DILocalVariable(name: "arg", arg: 3, scope: !2355, file: !269, line: 997, type: !50)
!2360 = !DILocalVariable(name: "options", scope: !2355, file: !269, line: 999, type: !286)
!2361 = !DILocation(line: 0, scope: !2355)
!2362 = !DILocation(line: 999, column: 3, scope: !2355)
!2363 = !DILocation(line: 999, column: 26, scope: !2355)
!2364 = !DILocation(line: 0, scope: !2168, inlinedAt: !2365)
!2365 = distinct !DILocation(line: 1000, column: 13, scope: !2355)
!2366 = !DILocation(line: 186, column: 13, scope: !2177, inlinedAt: !2365)
!2367 = !DILocation(line: 186, column: 7, scope: !2168, inlinedAt: !2365)
!2368 = !DILocation(line: 187, column: 5, scope: !2177, inlinedAt: !2365)
!2369 = !{!2370}
!2370 = distinct !{!2370, !2371, !"quoting_options_from_style: argument 0"}
!2371 = distinct !{!2371, !"quoting_options_from_style"}
!2372 = !DILocation(line: 1000, column: 13, scope: !2355)
!2373 = !DILocation(line: 0, scope: !1283, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 1001, column: 3, scope: !2355)
!2375 = !DILocation(line: 147, column: 57, scope: !1283, inlinedAt: !2374)
!2376 = !DILocation(line: 149, column: 21, scope: !1283, inlinedAt: !2374)
!2377 = !DILocation(line: 150, column: 6, scope: !1283, inlinedAt: !2374)
!2378 = !DILocation(line: 1002, column: 10, scope: !2355)
!2379 = !DILocation(line: 1003, column: 1, scope: !2355)
!2380 = !DILocation(line: 1002, column: 3, scope: !2355)
!2381 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !269, file: !269, line: 1006, type: !2382, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2384)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!42, !45, !50, !50, !50}
!2384 = !{!2385, !2386, !2387, !2388}
!2385 = !DILocalVariable(name: "n", arg: 1, scope: !2381, file: !269, line: 1006, type: !45)
!2386 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2381, file: !269, line: 1006, type: !50)
!2387 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2381, file: !269, line: 1007, type: !50)
!2388 = !DILocalVariable(name: "arg", arg: 4, scope: !2381, file: !269, line: 1007, type: !50)
!2389 = !DILocation(line: 0, scope: !2381)
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2391, file: !269, line: 1014, type: !45)
!2391 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !269, file: !269, line: 1014, type: !2392, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!42, !45, !50, !50, !50, !47}
!2394 = !{!2390, !2395, !2396, !2397, !2398, !2399}
!2395 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2391, file: !269, line: 1014, type: !50)
!2396 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2391, file: !269, line: 1015, type: !50)
!2397 = !DILocalVariable(name: "arg", arg: 4, scope: !2391, file: !269, line: 1016, type: !50)
!2398 = !DILocalVariable(name: "argsize", arg: 5, scope: !2391, file: !269, line: 1016, type: !47)
!2399 = !DILocalVariable(name: "o", scope: !2391, file: !269, line: 1018, type: !286)
!2400 = !DILocation(line: 0, scope: !2391, inlinedAt: !2401)
!2401 = distinct !DILocation(line: 1009, column: 10, scope: !2381)
!2402 = !DILocation(line: 1018, column: 3, scope: !2391, inlinedAt: !2401)
!2403 = !DILocation(line: 1018, column: 26, scope: !2391, inlinedAt: !2401)
!2404 = !DILocation(line: 1018, column: 30, scope: !2391, inlinedAt: !2401)
!2405 = !DILocation(line: 0, scope: !1323, inlinedAt: !2406)
!2406 = distinct !DILocation(line: 1019, column: 3, scope: !2391, inlinedAt: !2401)
!2407 = !DILocation(line: 174, column: 6, scope: !1323, inlinedAt: !2406)
!2408 = !DILocation(line: 174, column: 12, scope: !1323, inlinedAt: !2406)
!2409 = !DILocation(line: 175, column: 8, scope: !1337, inlinedAt: !2406)
!2410 = !DILocation(line: 175, column: 19, scope: !1337, inlinedAt: !2406)
!2411 = !DILocation(line: 176, column: 5, scope: !1337, inlinedAt: !2406)
!2412 = !DILocation(line: 177, column: 6, scope: !1323, inlinedAt: !2406)
!2413 = !DILocation(line: 177, column: 17, scope: !1323, inlinedAt: !2406)
!2414 = !DILocation(line: 178, column: 6, scope: !1323, inlinedAt: !2406)
!2415 = !DILocation(line: 178, column: 18, scope: !1323, inlinedAt: !2406)
!2416 = !DILocation(line: 1020, column: 10, scope: !2391, inlinedAt: !2401)
!2417 = !DILocation(line: 1021, column: 1, scope: !2391, inlinedAt: !2401)
!2418 = !DILocation(line: 1009, column: 3, scope: !2381)
!2419 = !DILocation(line: 0, scope: !2391)
!2420 = !DILocation(line: 1018, column: 3, scope: !2391)
!2421 = !DILocation(line: 1018, column: 26, scope: !2391)
!2422 = !DILocation(line: 1018, column: 30, scope: !2391)
!2423 = !DILocation(line: 0, scope: !1323, inlinedAt: !2424)
!2424 = distinct !DILocation(line: 1019, column: 3, scope: !2391)
!2425 = !DILocation(line: 174, column: 6, scope: !1323, inlinedAt: !2424)
!2426 = !DILocation(line: 174, column: 12, scope: !1323, inlinedAt: !2424)
!2427 = !DILocation(line: 175, column: 8, scope: !1337, inlinedAt: !2424)
!2428 = !DILocation(line: 175, column: 19, scope: !1337, inlinedAt: !2424)
!2429 = !DILocation(line: 176, column: 5, scope: !1337, inlinedAt: !2424)
!2430 = !DILocation(line: 177, column: 6, scope: !1323, inlinedAt: !2424)
!2431 = !DILocation(line: 177, column: 17, scope: !1323, inlinedAt: !2424)
!2432 = !DILocation(line: 178, column: 6, scope: !1323, inlinedAt: !2424)
!2433 = !DILocation(line: 178, column: 18, scope: !1323, inlinedAt: !2424)
!2434 = !DILocation(line: 1020, column: 10, scope: !2391)
!2435 = !DILocation(line: 1021, column: 1, scope: !2391)
!2436 = !DILocation(line: 1020, column: 3, scope: !2391)
!2437 = distinct !DISubprogram(name: "quotearg_custom", scope: !269, file: !269, line: 1024, type: !2438, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2440)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!42, !50, !50, !50}
!2440 = !{!2441, !2442, !2443}
!2441 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2437, file: !269, line: 1024, type: !50)
!2442 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2437, file: !269, line: 1024, type: !50)
!2443 = !DILocalVariable(name: "arg", arg: 3, scope: !2437, file: !269, line: 1025, type: !50)
!2444 = !DILocation(line: 0, scope: !2437)
!2445 = !DILocation(line: 0, scope: !2381, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 1027, column: 10, scope: !2437)
!2447 = !DILocation(line: 0, scope: !2391, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 1009, column: 10, scope: !2381, inlinedAt: !2446)
!2449 = !DILocation(line: 1018, column: 3, scope: !2391, inlinedAt: !2448)
!2450 = !DILocation(line: 1018, column: 26, scope: !2391, inlinedAt: !2448)
!2451 = !DILocation(line: 1018, column: 30, scope: !2391, inlinedAt: !2448)
!2452 = !DILocation(line: 0, scope: !1323, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 1019, column: 3, scope: !2391, inlinedAt: !2448)
!2454 = !DILocation(line: 174, column: 6, scope: !1323, inlinedAt: !2453)
!2455 = !DILocation(line: 174, column: 12, scope: !1323, inlinedAt: !2453)
!2456 = !DILocation(line: 175, column: 8, scope: !1337, inlinedAt: !2453)
!2457 = !DILocation(line: 175, column: 19, scope: !1337, inlinedAt: !2453)
!2458 = !DILocation(line: 176, column: 5, scope: !1337, inlinedAt: !2453)
!2459 = !DILocation(line: 177, column: 6, scope: !1323, inlinedAt: !2453)
!2460 = !DILocation(line: 177, column: 17, scope: !1323, inlinedAt: !2453)
!2461 = !DILocation(line: 178, column: 6, scope: !1323, inlinedAt: !2453)
!2462 = !DILocation(line: 178, column: 18, scope: !1323, inlinedAt: !2453)
!2463 = !DILocation(line: 1020, column: 10, scope: !2391, inlinedAt: !2448)
!2464 = !DILocation(line: 1021, column: 1, scope: !2391, inlinedAt: !2448)
!2465 = !DILocation(line: 1027, column: 3, scope: !2437)
!2466 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !269, file: !269, line: 1031, type: !2467, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2469)
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!42, !50, !50, !50, !47}
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2466, file: !269, line: 1031, type: !50)
!2471 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2466, file: !269, line: 1031, type: !50)
!2472 = !DILocalVariable(name: "arg", arg: 3, scope: !2466, file: !269, line: 1032, type: !50)
!2473 = !DILocalVariable(name: "argsize", arg: 4, scope: !2466, file: !269, line: 1032, type: !47)
!2474 = !DILocation(line: 0, scope: !2466)
!2475 = !DILocation(line: 0, scope: !2391, inlinedAt: !2476)
!2476 = distinct !DILocation(line: 1034, column: 10, scope: !2466)
!2477 = !DILocation(line: 1018, column: 3, scope: !2391, inlinedAt: !2476)
!2478 = !DILocation(line: 1018, column: 26, scope: !2391, inlinedAt: !2476)
!2479 = !DILocation(line: 1018, column: 30, scope: !2391, inlinedAt: !2476)
!2480 = !DILocation(line: 0, scope: !1323, inlinedAt: !2481)
!2481 = distinct !DILocation(line: 1019, column: 3, scope: !2391, inlinedAt: !2476)
!2482 = !DILocation(line: 174, column: 6, scope: !1323, inlinedAt: !2481)
!2483 = !DILocation(line: 174, column: 12, scope: !1323, inlinedAt: !2481)
!2484 = !DILocation(line: 175, column: 8, scope: !1337, inlinedAt: !2481)
!2485 = !DILocation(line: 175, column: 19, scope: !1337, inlinedAt: !2481)
!2486 = !DILocation(line: 176, column: 5, scope: !1337, inlinedAt: !2481)
!2487 = !DILocation(line: 177, column: 6, scope: !1323, inlinedAt: !2481)
!2488 = !DILocation(line: 177, column: 17, scope: !1323, inlinedAt: !2481)
!2489 = !DILocation(line: 178, column: 6, scope: !1323, inlinedAt: !2481)
!2490 = !DILocation(line: 178, column: 18, scope: !1323, inlinedAt: !2481)
!2491 = !DILocation(line: 1020, column: 10, scope: !2391, inlinedAt: !2476)
!2492 = !DILocation(line: 1021, column: 1, scope: !2391, inlinedAt: !2476)
!2493 = !DILocation(line: 1034, column: 3, scope: !2466)
!2494 = distinct !DISubprogram(name: "quote_n_mem", scope: !269, file: !269, line: 1049, type: !2495, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2497)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{!50, !45, !50, !47}
!2497 = !{!2498, !2499, !2500}
!2498 = !DILocalVariable(name: "n", arg: 1, scope: !2494, file: !269, line: 1049, type: !45)
!2499 = !DILocalVariable(name: "arg", arg: 2, scope: !2494, file: !269, line: 1049, type: !50)
!2500 = !DILocalVariable(name: "argsize", arg: 3, scope: !2494, file: !269, line: 1049, type: !47)
!2501 = !DILocation(line: 0, scope: !2494)
!2502 = !DILocation(line: 1051, column: 10, scope: !2494)
!2503 = !DILocation(line: 1051, column: 3, scope: !2494)
!2504 = distinct !DISubprogram(name: "quote_mem", scope: !269, file: !269, line: 1055, type: !2505, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2507)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{!50, !50, !47}
!2507 = !{!2508, !2509}
!2508 = !DILocalVariable(name: "arg", arg: 1, scope: !2504, file: !269, line: 1055, type: !50)
!2509 = !DILocalVariable(name: "argsize", arg: 2, scope: !2504, file: !269, line: 1055, type: !47)
!2510 = !DILocation(line: 0, scope: !2504)
!2511 = !DILocation(line: 0, scope: !2494, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 1057, column: 10, scope: !2504)
!2513 = !DILocation(line: 1051, column: 10, scope: !2494, inlinedAt: !2512)
!2514 = !DILocation(line: 1057, column: 3, scope: !2504)
!2515 = distinct !DISubprogram(name: "quote_n", scope: !269, file: !269, line: 1061, type: !2516, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!50, !45, !50}
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "n", arg: 1, scope: !2515, file: !269, line: 1061, type: !45)
!2520 = !DILocalVariable(name: "arg", arg: 2, scope: !2515, file: !269, line: 1061, type: !50)
!2521 = !DILocation(line: 0, scope: !2515)
!2522 = !DILocation(line: 0, scope: !2494, inlinedAt: !2523)
!2523 = distinct !DILocation(line: 1063, column: 10, scope: !2515)
!2524 = !DILocation(line: 1051, column: 10, scope: !2494, inlinedAt: !2523)
!2525 = !DILocation(line: 1063, column: 3, scope: !2515)
!2526 = distinct !DISubprogram(name: "quote", scope: !269, file: !269, line: 1067, type: !2527, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !268, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!50, !50}
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "arg", arg: 1, scope: !2526, file: !269, line: 1067, type: !50)
!2531 = !DILocation(line: 0, scope: !2526)
!2532 = !DILocation(line: 0, scope: !2515, inlinedAt: !2533)
!2533 = distinct !DILocation(line: 1069, column: 10, scope: !2526)
!2534 = !DILocation(line: 0, scope: !2494, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 1063, column: 10, scope: !2515, inlinedAt: !2533)
!2536 = !DILocation(line: 1051, column: 10, scope: !2494, inlinedAt: !2535)
!2537 = !DILocation(line: 1069, column: 3, scope: !2526)
!2538 = distinct !DISubprogram(name: "version_etc_arn", scope: !374, file: !374, line: 61, type: !2539, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2576)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !2541, !50, !50, !50, !2575, !47}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !2543)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !2544)
!2544 = !{!2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2543, file: !84, line: 51, baseType: !45, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2543, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2543, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2543, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2543, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2543, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2543, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2543, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2543, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2543, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2543, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2543, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2543, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2543, file: !84, line: 70, baseType: !2559, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2543, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2543, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2543, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2543, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2543, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2543, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2543, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2543, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2543, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2543, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2543, file: !84, line: 93, baseType: !2559, size: 64, offset: 1344)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2543, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2543, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2543, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2543, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582}
!2577 = !DILocalVariable(name: "stream", arg: 1, scope: !2538, file: !374, line: 61, type: !2541)
!2578 = !DILocalVariable(name: "command_name", arg: 2, scope: !2538, file: !374, line: 62, type: !50)
!2579 = !DILocalVariable(name: "package", arg: 3, scope: !2538, file: !374, line: 62, type: !50)
!2580 = !DILocalVariable(name: "version", arg: 4, scope: !2538, file: !374, line: 63, type: !50)
!2581 = !DILocalVariable(name: "authors", arg: 5, scope: !2538, file: !374, line: 64, type: !2575)
!2582 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2538, file: !374, line: 64, type: !47)
!2583 = !DILocation(line: 0, scope: !2538)
!2584 = !DILocation(line: 66, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2538, file: !374, line: 66, column: 7)
!2586 = !DILocation(line: 66, column: 7, scope: !2538)
!2587 = !DILocation(line: 67, column: 5, scope: !2585)
!2588 = !DILocation(line: 69, column: 5, scope: !2585)
!2589 = !DILocation(line: 83, column: 3, scope: !2538)
!2590 = !DILocation(line: 85, column: 3, scope: !2538)
!2591 = !DILocation(line: 88, column: 3, scope: !2538)
!2592 = !DILocation(line: 95, column: 3, scope: !2538)
!2593 = !DILocation(line: 97, column: 3, scope: !2538)
!2594 = !DILocation(line: 105, column: 7, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2538, file: !374, line: 98, column: 5)
!2596 = !DILocation(line: 106, column: 7, scope: !2595)
!2597 = !DILocation(line: 109, column: 7, scope: !2595)
!2598 = !DILocation(line: 110, column: 7, scope: !2595)
!2599 = !DILocation(line: 113, column: 7, scope: !2595)
!2600 = !DILocation(line: 115, column: 7, scope: !2595)
!2601 = !DILocation(line: 120, column: 7, scope: !2595)
!2602 = !DILocation(line: 122, column: 7, scope: !2595)
!2603 = !DILocation(line: 127, column: 7, scope: !2595)
!2604 = !DILocation(line: 129, column: 7, scope: !2595)
!2605 = !DILocation(line: 134, column: 7, scope: !2595)
!2606 = !DILocation(line: 137, column: 7, scope: !2595)
!2607 = !DILocation(line: 142, column: 7, scope: !2595)
!2608 = !DILocation(line: 145, column: 7, scope: !2595)
!2609 = !DILocation(line: 150, column: 7, scope: !2595)
!2610 = !DILocation(line: 154, column: 7, scope: !2595)
!2611 = !DILocation(line: 159, column: 7, scope: !2595)
!2612 = !DILocation(line: 163, column: 7, scope: !2595)
!2613 = !DILocation(line: 170, column: 7, scope: !2595)
!2614 = !DILocation(line: 174, column: 7, scope: !2595)
!2615 = !DILocation(line: 176, column: 1, scope: !2538)
!2616 = distinct !DISubprogram(name: "version_etc_ar", scope: !374, file: !374, line: 183, type: !2617, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{null, !2541, !50, !50, !50, !2575}
!2619 = !{!2620, !2621, !2622, !2623, !2624, !2625}
!2620 = !DILocalVariable(name: "stream", arg: 1, scope: !2616, file: !374, line: 183, type: !2541)
!2621 = !DILocalVariable(name: "command_name", arg: 2, scope: !2616, file: !374, line: 184, type: !50)
!2622 = !DILocalVariable(name: "package", arg: 3, scope: !2616, file: !374, line: 184, type: !50)
!2623 = !DILocalVariable(name: "version", arg: 4, scope: !2616, file: !374, line: 185, type: !50)
!2624 = !DILocalVariable(name: "authors", arg: 5, scope: !2616, file: !374, line: 185, type: !2575)
!2625 = !DILocalVariable(name: "n_authors", scope: !2616, file: !374, line: 187, type: !47)
!2626 = !DILocation(line: 0, scope: !2616)
!2627 = !DILocation(line: 189, column: 8, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2616, file: !374, line: 189, column: 3)
!2629 = !DILocation(line: 0, scope: !2628)
!2630 = !DILocation(line: 189, column: 23, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !374, line: 189, column: 3)
!2632 = !DILocation(line: 189, column: 3, scope: !2628)
!2633 = !DILocation(line: 189, column: 52, scope: !2631)
!2634 = distinct !{!2634, !2632, !2635, !510}
!2635 = !DILocation(line: 190, column: 5, scope: !2628)
!2636 = !DILocation(line: 191, column: 3, scope: !2616)
!2637 = !DILocation(line: 192, column: 1, scope: !2616)
!2638 = distinct !DISubprogram(name: "version_etc_va", scope: !374, file: !374, line: 199, type: !2639, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2652)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2541, !50, !50, !50, !2641}
!2641 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !177, line: 52, baseType: !2642)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !179, line: 32, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2644, baseType: !2645)
!2644 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !183, size: 256, elements: !2646)
!2646 = !{!2647, !2648, !2649, !2650, !2651}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2645, file: !2644, line: 192, baseType: !44, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2645, file: !2644, line: 192, baseType: !44, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2645, file: !2644, line: 192, baseType: !44, size: 64, offset: 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2645, file: !2644, line: 192, baseType: !45, size: 32, offset: 192)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2645, file: !2644, line: 192, baseType: !45, size: 32, offset: 224)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2653 = !DILocalVariable(name: "stream", arg: 1, scope: !2638, file: !374, line: 199, type: !2541)
!2654 = !DILocalVariable(name: "command_name", arg: 2, scope: !2638, file: !374, line: 200, type: !50)
!2655 = !DILocalVariable(name: "package", arg: 3, scope: !2638, file: !374, line: 200, type: !50)
!2656 = !DILocalVariable(name: "version", arg: 4, scope: !2638, file: !374, line: 201, type: !50)
!2657 = !DILocalVariable(name: "authors", arg: 5, scope: !2638, file: !374, line: 201, type: !2641)
!2658 = !DILocalVariable(name: "n_authors", scope: !2638, file: !374, line: 203, type: !47)
!2659 = !DILocalVariable(name: "authtab", scope: !2638, file: !374, line: 204, type: !2660)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 640, elements: !282)
!2661 = !DILocation(line: 0, scope: !2638)
!2662 = !DILocation(line: 201, column: 46, scope: !2638)
!2663 = !DILocation(line: 204, column: 3, scope: !2638)
!2664 = !DILocation(line: 204, column: 15, scope: !2638)
!2665 = !DILocation(line: 208, column: 35, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2667, file: !374, line: 206, column: 3)
!2667 = distinct !DILexicalBlock(scope: !2638, file: !374, line: 206, column: 3)
!2668 = !DILocation(line: 208, column: 14, scope: !2666)
!2669 = !DILocation(line: 208, column: 33, scope: !2666)
!2670 = !DILocation(line: 208, column: 67, scope: !2666)
!2671 = !DILocation(line: 206, column: 3, scope: !2667)
!2672 = !DILocation(line: 0, scope: !2667)
!2673 = !DILocation(line: 211, column: 3, scope: !2638)
!2674 = !DILocation(line: 213, column: 1, scope: !2638)
!2675 = distinct !DISubprogram(name: "version_etc", scope: !374, file: !374, line: 230, type: !2676, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2678)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{null, !2541, !50, !50, !50, null}
!2678 = !{!2679, !2680, !2681, !2682, !2683}
!2679 = !DILocalVariable(name: "stream", arg: 1, scope: !2675, file: !374, line: 230, type: !2541)
!2680 = !DILocalVariable(name: "command_name", arg: 2, scope: !2675, file: !374, line: 231, type: !50)
!2681 = !DILocalVariable(name: "package", arg: 3, scope: !2675, file: !374, line: 231, type: !50)
!2682 = !DILocalVariable(name: "version", arg: 4, scope: !2675, file: !374, line: 232, type: !50)
!2683 = !DILocalVariable(name: "authors", scope: !2675, file: !374, line: 234, type: !2641)
!2684 = !DILocation(line: 0, scope: !2675)
!2685 = !DILocation(line: 234, column: 3, scope: !2675)
!2686 = !DILocation(line: 234, column: 11, scope: !2675)
!2687 = !DILocation(line: 235, column: 3, scope: !2675)
!2688 = !DILocation(line: 236, column: 3, scope: !2675)
!2689 = !DILocation(line: 237, column: 3, scope: !2675)
!2690 = !DILocation(line: 238, column: 1, scope: !2675)
!2691 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !374, file: !374, line: 241, type: !204, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !536)
!2692 = !DILocation(line: 243, column: 3, scope: !2691)
!2693 = !DILocation(line: 248, column: 3, scope: !2691)
!2694 = !DILocation(line: 254, column: 3, scope: !2691)
!2695 = !DILocation(line: 259, column: 3, scope: !2691)
!2696 = !DILocation(line: 261, column: 1, scope: !2691)
!2697 = distinct !DISubprogram(name: "xnrealloc", scope: !2698, file: !2698, line: 147, type: !2699, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2701)
!2698 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!44, !44, !47, !47}
!2701 = !{!2702, !2703, !2704}
!2702 = !DILocalVariable(name: "p", arg: 1, scope: !2697, file: !2698, line: 147, type: !44)
!2703 = !DILocalVariable(name: "n", arg: 2, scope: !2697, file: !2698, line: 147, type: !47)
!2704 = !DILocalVariable(name: "s", arg: 3, scope: !2697, file: !2698, line: 147, type: !47)
!2705 = !DILocation(line: 0, scope: !2697)
!2706 = !DILocalVariable(name: "p", arg: 1, scope: !2707, file: !381, line: 83, type: !44)
!2707 = distinct !DISubprogram(name: "xreallocarray", scope: !381, file: !381, line: 83, type: !2699, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2708)
!2708 = !{!2706, !2709, !2710}
!2709 = !DILocalVariable(name: "n", arg: 2, scope: !2707, file: !381, line: 83, type: !47)
!2710 = !DILocalVariable(name: "s", arg: 3, scope: !2707, file: !381, line: 83, type: !47)
!2711 = !DILocation(line: 0, scope: !2707, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 149, column: 10, scope: !2697)
!2713 = !DILocation(line: 85, column: 25, scope: !2707, inlinedAt: !2712)
!2714 = !DILocalVariable(name: "p", arg: 1, scope: !2715, file: !381, line: 37, type: !44)
!2715 = distinct !DISubprogram(name: "check_nonnull", scope: !381, file: !381, line: 37, type: !2716, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!44, !44}
!2718 = !{!2714}
!2719 = !DILocation(line: 0, scope: !2715, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 85, column: 10, scope: !2707, inlinedAt: !2712)
!2721 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2720)
!2722 = distinct !DILexicalBlock(scope: !2715, file: !381, line: 39, column: 7)
!2723 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2720)
!2724 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2720)
!2725 = !DILocation(line: 149, column: 3, scope: !2697)
!2726 = !DILocation(line: 0, scope: !2707)
!2727 = !DILocation(line: 85, column: 25, scope: !2707)
!2728 = !DILocation(line: 0, scope: !2715, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 85, column: 10, scope: !2707)
!2730 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2729)
!2731 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2729)
!2732 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2729)
!2733 = !DILocation(line: 85, column: 3, scope: !2707)
!2734 = distinct !DISubprogram(name: "xmalloc", scope: !381, file: !381, line: 47, type: !2735, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2737)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!44, !47}
!2737 = !{!2738}
!2738 = !DILocalVariable(name: "s", arg: 1, scope: !2734, file: !381, line: 47, type: !47)
!2739 = !DILocation(line: 0, scope: !2734)
!2740 = !DILocation(line: 49, column: 25, scope: !2734)
!2741 = !DILocation(line: 0, scope: !2715, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 49, column: 10, scope: !2734)
!2743 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2742)
!2744 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2742)
!2745 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2742)
!2746 = !DILocation(line: 49, column: 3, scope: !2734)
!2747 = distinct !DISubprogram(name: "ximalloc", scope: !381, file: !381, line: 53, type: !2748, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!44, !400}
!2750 = !{!2751}
!2751 = !DILocalVariable(name: "s", arg: 1, scope: !2747, file: !381, line: 53, type: !400)
!2752 = !DILocation(line: 0, scope: !2747)
!2753 = !DILocalVariable(name: "s", arg: 1, scope: !2754, file: !2755, line: 55, type: !400)
!2754 = distinct !DISubprogram(name: "imalloc", scope: !2755, file: !2755, line: 55, type: !2748, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2756)
!2755 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2756 = !{!2753}
!2757 = !DILocation(line: 0, scope: !2754, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 55, column: 25, scope: !2747)
!2759 = !DILocation(line: 57, column: 26, scope: !2754, inlinedAt: !2758)
!2760 = !DILocation(line: 0, scope: !2715, inlinedAt: !2761)
!2761 = distinct !DILocation(line: 55, column: 10, scope: !2747)
!2762 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2761)
!2763 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2761)
!2764 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2761)
!2765 = !DILocation(line: 55, column: 3, scope: !2747)
!2766 = distinct !DISubprogram(name: "xcharalloc", scope: !381, file: !381, line: 59, type: !2767, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2769)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!42, !47}
!2769 = !{!2770}
!2770 = !DILocalVariable(name: "n", arg: 1, scope: !2766, file: !381, line: 59, type: !47)
!2771 = !DILocation(line: 0, scope: !2766)
!2772 = !DILocation(line: 0, scope: !2734, inlinedAt: !2773)
!2773 = distinct !DILocation(line: 61, column: 10, scope: !2766)
!2774 = !DILocation(line: 49, column: 25, scope: !2734, inlinedAt: !2773)
!2775 = !DILocation(line: 0, scope: !2715, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 49, column: 10, scope: !2734, inlinedAt: !2773)
!2777 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2776)
!2778 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2776)
!2779 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2776)
!2780 = !DILocation(line: 61, column: 3, scope: !2766)
!2781 = distinct !DISubprogram(name: "xrealloc", scope: !381, file: !381, line: 68, type: !2782, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2784)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!44, !44, !47}
!2784 = !{!2785, !2786}
!2785 = !DILocalVariable(name: "p", arg: 1, scope: !2781, file: !381, line: 68, type: !44)
!2786 = !DILocalVariable(name: "s", arg: 2, scope: !2781, file: !381, line: 68, type: !47)
!2787 = !DILocation(line: 0, scope: !2781)
!2788 = !DILocalVariable(name: "ptr", arg: 1, scope: !2789, file: !2790, line: 2057, type: !44)
!2789 = distinct !DISubprogram(name: "rpl_realloc", scope: !2790, file: !2790, line: 2057, type: !2782, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2791)
!2790 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!2791 = !{!2788, !2792}
!2792 = !DILocalVariable(name: "size", arg: 2, scope: !2789, file: !2790, line: 2057, type: !47)
!2793 = !DILocation(line: 0, scope: !2789, inlinedAt: !2794)
!2794 = distinct !DILocation(line: 70, column: 25, scope: !2781)
!2795 = !DILocation(line: 2059, column: 24, scope: !2789, inlinedAt: !2794)
!2796 = !DILocation(line: 2059, column: 10, scope: !2789, inlinedAt: !2794)
!2797 = !DILocation(line: 0, scope: !2715, inlinedAt: !2798)
!2798 = distinct !DILocation(line: 70, column: 10, scope: !2781)
!2799 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2798)
!2800 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2798)
!2801 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2798)
!2802 = !DILocation(line: 70, column: 3, scope: !2781)
!2803 = distinct !DISubprogram(name: "xirealloc", scope: !381, file: !381, line: 74, type: !2804, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!44, !44, !400}
!2806 = !{!2807, !2808}
!2807 = !DILocalVariable(name: "p", arg: 1, scope: !2803, file: !381, line: 74, type: !44)
!2808 = !DILocalVariable(name: "s", arg: 2, scope: !2803, file: !381, line: 74, type: !400)
!2809 = !DILocation(line: 0, scope: !2803)
!2810 = !DILocalVariable(name: "p", arg: 1, scope: !2811, file: !2755, line: 66, type: !44)
!2811 = distinct !DISubprogram(name: "irealloc", scope: !2755, file: !2755, line: 66, type: !2804, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2812)
!2812 = !{!2810, !2813}
!2813 = !DILocalVariable(name: "s", arg: 2, scope: !2811, file: !2755, line: 66, type: !400)
!2814 = !DILocation(line: 0, scope: !2811, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 76, column: 25, scope: !2803)
!2816 = !DILocation(line: 0, scope: !2789, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 68, column: 26, scope: !2811, inlinedAt: !2815)
!2818 = !DILocation(line: 2059, column: 24, scope: !2789, inlinedAt: !2817)
!2819 = !DILocation(line: 2059, column: 10, scope: !2789, inlinedAt: !2817)
!2820 = !DILocation(line: 0, scope: !2715, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 76, column: 10, scope: !2803)
!2822 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2821)
!2823 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2821)
!2824 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2821)
!2825 = !DILocation(line: 76, column: 3, scope: !2803)
!2826 = distinct !DISubprogram(name: "xireallocarray", scope: !381, file: !381, line: 89, type: !2827, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2829)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!44, !44, !400, !400}
!2829 = !{!2830, !2831, !2832}
!2830 = !DILocalVariable(name: "p", arg: 1, scope: !2826, file: !381, line: 89, type: !44)
!2831 = !DILocalVariable(name: "n", arg: 2, scope: !2826, file: !381, line: 89, type: !400)
!2832 = !DILocalVariable(name: "s", arg: 3, scope: !2826, file: !381, line: 89, type: !400)
!2833 = !DILocation(line: 0, scope: !2826)
!2834 = !DILocalVariable(name: "p", arg: 1, scope: !2835, file: !2755, line: 98, type: !44)
!2835 = distinct !DISubprogram(name: "ireallocarray", scope: !2755, file: !2755, line: 98, type: !2827, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2836)
!2836 = !{!2834, !2837, !2838}
!2837 = !DILocalVariable(name: "n", arg: 2, scope: !2835, file: !2755, line: 98, type: !400)
!2838 = !DILocalVariable(name: "s", arg: 3, scope: !2835, file: !2755, line: 98, type: !400)
!2839 = !DILocation(line: 0, scope: !2835, inlinedAt: !2840)
!2840 = distinct !DILocation(line: 91, column: 25, scope: !2826)
!2841 = !DILocation(line: 101, column: 13, scope: !2835, inlinedAt: !2840)
!2842 = !DILocation(line: 0, scope: !2715, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 91, column: 10, scope: !2826)
!2844 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2843)
!2845 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2843)
!2846 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2843)
!2847 = !DILocation(line: 91, column: 3, scope: !2826)
!2848 = distinct !DISubprogram(name: "xnmalloc", scope: !381, file: !381, line: 98, type: !2849, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!44, !47, !47}
!2851 = !{!2852, !2853}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !381, line: 98, type: !47)
!2853 = !DILocalVariable(name: "s", arg: 2, scope: !2848, file: !381, line: 98, type: !47)
!2854 = !DILocation(line: 0, scope: !2848)
!2855 = !DILocation(line: 0, scope: !2707, inlinedAt: !2856)
!2856 = distinct !DILocation(line: 100, column: 10, scope: !2848)
!2857 = !DILocation(line: 85, column: 25, scope: !2707, inlinedAt: !2856)
!2858 = !DILocation(line: 0, scope: !2715, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 85, column: 10, scope: !2707, inlinedAt: !2856)
!2860 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2859)
!2861 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2859)
!2862 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2859)
!2863 = !DILocation(line: 100, column: 3, scope: !2848)
!2864 = distinct !DISubprogram(name: "xinmalloc", scope: !381, file: !381, line: 104, type: !2865, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2867)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!44, !400, !400}
!2867 = !{!2868, !2869}
!2868 = !DILocalVariable(name: "n", arg: 1, scope: !2864, file: !381, line: 104, type: !400)
!2869 = !DILocalVariable(name: "s", arg: 2, scope: !2864, file: !381, line: 104, type: !400)
!2870 = !DILocation(line: 0, scope: !2864)
!2871 = !DILocation(line: 0, scope: !2826, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 106, column: 10, scope: !2864)
!2873 = !DILocation(line: 0, scope: !2835, inlinedAt: !2874)
!2874 = distinct !DILocation(line: 91, column: 25, scope: !2826, inlinedAt: !2872)
!2875 = !DILocation(line: 101, column: 13, scope: !2835, inlinedAt: !2874)
!2876 = !DILocation(line: 0, scope: !2715, inlinedAt: !2877)
!2877 = distinct !DILocation(line: 91, column: 10, scope: !2826, inlinedAt: !2872)
!2878 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2877)
!2879 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2877)
!2880 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2877)
!2881 = !DILocation(line: 106, column: 3, scope: !2864)
!2882 = distinct !DISubprogram(name: "x2realloc", scope: !381, file: !381, line: 116, type: !2883, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2885)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!44, !44, !387}
!2885 = !{!2886, !2887}
!2886 = !DILocalVariable(name: "p", arg: 1, scope: !2882, file: !381, line: 116, type: !44)
!2887 = !DILocalVariable(name: "ps", arg: 2, scope: !2882, file: !381, line: 116, type: !387)
!2888 = !DILocation(line: 0, scope: !2882)
!2889 = !DILocation(line: 0, scope: !384, inlinedAt: !2890)
!2890 = distinct !DILocation(line: 118, column: 10, scope: !2882)
!2891 = !DILocation(line: 178, column: 14, scope: !384, inlinedAt: !2890)
!2892 = !DILocation(line: 180, column: 9, scope: !2893, inlinedAt: !2890)
!2893 = distinct !DILexicalBlock(scope: !384, file: !381, line: 180, column: 7)
!2894 = !DILocation(line: 180, column: 7, scope: !384, inlinedAt: !2890)
!2895 = !DILocation(line: 182, column: 13, scope: !2896, inlinedAt: !2890)
!2896 = distinct !DILexicalBlock(scope: !2897, file: !381, line: 182, column: 11)
!2897 = distinct !DILexicalBlock(scope: !2893, file: !381, line: 181, column: 5)
!2898 = !DILocation(line: 182, column: 11, scope: !2897, inlinedAt: !2890)
!2899 = !DILocation(line: 197, column: 11, scope: !2900, inlinedAt: !2890)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !381, line: 197, column: 11)
!2901 = distinct !DILexicalBlock(scope: !2893, file: !381, line: 195, column: 5)
!2902 = !DILocation(line: 197, column: 11, scope: !2901, inlinedAt: !2890)
!2903 = !DILocation(line: 198, column: 9, scope: !2900, inlinedAt: !2890)
!2904 = !DILocation(line: 0, scope: !2707, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 201, column: 7, scope: !384, inlinedAt: !2890)
!2906 = !DILocation(line: 85, column: 25, scope: !2707, inlinedAt: !2905)
!2907 = !DILocation(line: 0, scope: !2715, inlinedAt: !2908)
!2908 = distinct !DILocation(line: 85, column: 10, scope: !2707, inlinedAt: !2905)
!2909 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2908)
!2910 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2908)
!2911 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2908)
!2912 = !DILocation(line: 202, column: 7, scope: !384, inlinedAt: !2890)
!2913 = !DILocation(line: 118, column: 3, scope: !2882)
!2914 = !DILocation(line: 0, scope: !384)
!2915 = !DILocation(line: 178, column: 14, scope: !384)
!2916 = !DILocation(line: 180, column: 9, scope: !2893)
!2917 = !DILocation(line: 180, column: 7, scope: !384)
!2918 = !DILocation(line: 182, column: 13, scope: !2896)
!2919 = !DILocation(line: 182, column: 11, scope: !2897)
!2920 = !DILocation(line: 190, column: 30, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2896, file: !381, line: 183, column: 9)
!2922 = !DILocation(line: 191, column: 16, scope: !2921)
!2923 = !DILocation(line: 191, column: 13, scope: !2921)
!2924 = !DILocation(line: 192, column: 9, scope: !2921)
!2925 = !DILocation(line: 197, column: 11, scope: !2900)
!2926 = !DILocation(line: 197, column: 11, scope: !2901)
!2927 = !DILocation(line: 198, column: 9, scope: !2900)
!2928 = !DILocation(line: 0, scope: !2707, inlinedAt: !2929)
!2929 = distinct !DILocation(line: 201, column: 7, scope: !384)
!2930 = !DILocation(line: 85, column: 25, scope: !2707, inlinedAt: !2929)
!2931 = !DILocation(line: 0, scope: !2715, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 85, column: 10, scope: !2707, inlinedAt: !2929)
!2933 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2932)
!2934 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2932)
!2935 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2932)
!2936 = !DILocation(line: 202, column: 7, scope: !384)
!2937 = !DILocation(line: 203, column: 3, scope: !384)
!2938 = !DILocation(line: 0, scope: !396)
!2939 = !DILocation(line: 230, column: 14, scope: !396)
!2940 = !DILocation(line: 238, column: 7, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !396, file: !381, line: 238, column: 7)
!2942 = !DILocation(line: 238, column: 7, scope: !396)
!2943 = !DILocation(line: 240, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !396, file: !381, line: 240, column: 7)
!2945 = !DILocation(line: 240, column: 18, scope: !2944)
!2946 = !DILocation(line: 253, column: 8, scope: !396)
!2947 = !DILocation(line: 258, column: 27, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2949, file: !381, line: 257, column: 5)
!2949 = distinct !DILexicalBlock(scope: !396, file: !381, line: 256, column: 7)
!2950 = !DILocation(line: 259, column: 32, scope: !2948)
!2951 = !DILocation(line: 260, column: 5, scope: !2948)
!2952 = !DILocation(line: 262, column: 9, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !396, file: !381, line: 262, column: 7)
!2954 = !DILocation(line: 262, column: 7, scope: !396)
!2955 = !DILocation(line: 263, column: 9, scope: !2953)
!2956 = !DILocation(line: 263, column: 5, scope: !2953)
!2957 = !DILocation(line: 264, column: 9, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !396, file: !381, line: 264, column: 7)
!2959 = !DILocation(line: 264, column: 14, scope: !2958)
!2960 = !DILocation(line: 265, column: 7, scope: !2958)
!2961 = !DILocation(line: 265, column: 11, scope: !2958)
!2962 = !DILocation(line: 266, column: 11, scope: !2958)
!2963 = !DILocation(line: 266, column: 26, scope: !2958)
!2964 = !DILocation(line: 267, column: 14, scope: !2958)
!2965 = !DILocation(line: 264, column: 7, scope: !396)
!2966 = !DILocation(line: 268, column: 5, scope: !2958)
!2967 = !DILocation(line: 0, scope: !2781, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 269, column: 8, scope: !396)
!2969 = !DILocation(line: 0, scope: !2789, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 70, column: 25, scope: !2781, inlinedAt: !2968)
!2971 = !DILocation(line: 2059, column: 24, scope: !2789, inlinedAt: !2970)
!2972 = !DILocation(line: 2059, column: 10, scope: !2789, inlinedAt: !2970)
!2973 = !DILocation(line: 0, scope: !2715, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 70, column: 10, scope: !2781, inlinedAt: !2968)
!2975 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2974)
!2976 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2974)
!2977 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2974)
!2978 = !DILocation(line: 270, column: 7, scope: !396)
!2979 = !DILocation(line: 271, column: 3, scope: !396)
!2980 = distinct !DISubprogram(name: "xzalloc", scope: !381, file: !381, line: 279, type: !2735, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2981)
!2981 = !{!2982}
!2982 = !DILocalVariable(name: "s", arg: 1, scope: !2980, file: !381, line: 279, type: !47)
!2983 = !DILocation(line: 0, scope: !2980)
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2985, file: !381, line: 294, type: !47)
!2985 = distinct !DISubprogram(name: "xcalloc", scope: !381, file: !381, line: 294, type: !2849, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2986)
!2986 = !{!2984, !2987}
!2987 = !DILocalVariable(name: "s", arg: 2, scope: !2985, file: !381, line: 294, type: !47)
!2988 = !DILocation(line: 0, scope: !2985, inlinedAt: !2989)
!2989 = distinct !DILocation(line: 281, column: 10, scope: !2980)
!2990 = !DILocation(line: 296, column: 25, scope: !2985, inlinedAt: !2989)
!2991 = !DILocation(line: 0, scope: !2715, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 296, column: 10, scope: !2985, inlinedAt: !2989)
!2993 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !2992)
!2994 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !2992)
!2995 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !2992)
!2996 = !DILocation(line: 281, column: 3, scope: !2980)
!2997 = !DILocation(line: 0, scope: !2985)
!2998 = !DILocation(line: 296, column: 25, scope: !2985)
!2999 = !DILocation(line: 0, scope: !2715, inlinedAt: !3000)
!3000 = distinct !DILocation(line: 296, column: 10, scope: !2985)
!3001 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3000)
!3002 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3000)
!3003 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3000)
!3004 = !DILocation(line: 296, column: 3, scope: !2985)
!3005 = distinct !DISubprogram(name: "xizalloc", scope: !381, file: !381, line: 285, type: !2748, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3006)
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "s", arg: 1, scope: !3005, file: !381, line: 285, type: !400)
!3008 = !DILocation(line: 0, scope: !3005)
!3009 = !DILocalVariable(name: "n", arg: 1, scope: !3010, file: !381, line: 300, type: !400)
!3010 = distinct !DISubprogram(name: "xicalloc", scope: !381, file: !381, line: 300, type: !2865, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3011)
!3011 = !{!3009, !3012}
!3012 = !DILocalVariable(name: "s", arg: 2, scope: !3010, file: !381, line: 300, type: !400)
!3013 = !DILocation(line: 0, scope: !3010, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 287, column: 10, scope: !3005)
!3015 = !DILocalVariable(name: "n", arg: 1, scope: !3016, file: !2755, line: 77, type: !400)
!3016 = distinct !DISubprogram(name: "icalloc", scope: !2755, file: !2755, line: 77, type: !2865, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3017)
!3017 = !{!3015, !3018}
!3018 = !DILocalVariable(name: "s", arg: 2, scope: !3016, file: !2755, line: 77, type: !400)
!3019 = !DILocation(line: 0, scope: !3016, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 302, column: 25, scope: !3010, inlinedAt: !3014)
!3021 = !DILocation(line: 91, column: 10, scope: !3016, inlinedAt: !3020)
!3022 = !DILocation(line: 0, scope: !2715, inlinedAt: !3023)
!3023 = distinct !DILocation(line: 302, column: 10, scope: !3010, inlinedAt: !3014)
!3024 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3023)
!3025 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3023)
!3026 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3023)
!3027 = !DILocation(line: 287, column: 3, scope: !3005)
!3028 = !DILocation(line: 0, scope: !3010)
!3029 = !DILocation(line: 0, scope: !3016, inlinedAt: !3030)
!3030 = distinct !DILocation(line: 302, column: 25, scope: !3010)
!3031 = !DILocation(line: 91, column: 10, scope: !3016, inlinedAt: !3030)
!3032 = !DILocation(line: 0, scope: !2715, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 302, column: 10, scope: !3010)
!3034 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3033)
!3035 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3033)
!3036 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3033)
!3037 = !DILocation(line: 302, column: 3, scope: !3010)
!3038 = distinct !DISubprogram(name: "xmemdup", scope: !381, file: !381, line: 310, type: !3039, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3041)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!44, !662, !47}
!3041 = !{!3042, !3043}
!3042 = !DILocalVariable(name: "p", arg: 1, scope: !3038, file: !381, line: 310, type: !662)
!3043 = !DILocalVariable(name: "s", arg: 2, scope: !3038, file: !381, line: 310, type: !47)
!3044 = !DILocation(line: 0, scope: !3038)
!3045 = !DILocation(line: 0, scope: !2734, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 312, column: 18, scope: !3038)
!3047 = !DILocation(line: 49, column: 25, scope: !2734, inlinedAt: !3046)
!3048 = !DILocation(line: 0, scope: !2715, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 49, column: 10, scope: !2734, inlinedAt: !3046)
!3050 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3049)
!3052 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3049)
!3053 = !DILocalVariable(name: "__dest", arg: 1, scope: !3054, file: !1225, line: 26, type: !3057)
!3054 = distinct !DISubprogram(name: "memcpy", scope: !1225, file: !1225, line: 26, type: !3055, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3058)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!44, !3057, !661, !47}
!3057 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!3058 = !{!3053, !3059, !3060}
!3059 = !DILocalVariable(name: "__src", arg: 2, scope: !3054, file: !1225, line: 26, type: !661)
!3060 = !DILocalVariable(name: "__len", arg: 3, scope: !3054, file: !1225, line: 26, type: !47)
!3061 = !DILocation(line: 0, scope: !3054, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 312, column: 10, scope: !3038)
!3063 = !DILocation(line: 29, column: 10, scope: !3054, inlinedAt: !3062)
!3064 = !DILocation(line: 312, column: 3, scope: !3038)
!3065 = distinct !DISubprogram(name: "ximemdup", scope: !381, file: !381, line: 316, type: !3066, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{!44, !662, !400}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "p", arg: 1, scope: !3065, file: !381, line: 316, type: !662)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !381, line: 316, type: !400)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 0, scope: !2747, inlinedAt: !3073)
!3073 = distinct !DILocation(line: 318, column: 18, scope: !3065)
!3074 = !DILocation(line: 0, scope: !2754, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 55, column: 25, scope: !2747, inlinedAt: !3073)
!3076 = !DILocation(line: 57, column: 26, scope: !2754, inlinedAt: !3075)
!3077 = !DILocation(line: 0, scope: !2715, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 55, column: 10, scope: !2747, inlinedAt: !3073)
!3079 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3078)
!3080 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3078)
!3081 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3078)
!3082 = !DILocation(line: 0, scope: !3054, inlinedAt: !3083)
!3083 = distinct !DILocation(line: 318, column: 10, scope: !3065)
!3084 = !DILocation(line: 29, column: 10, scope: !3054, inlinedAt: !3083)
!3085 = !DILocation(line: 318, column: 3, scope: !3065)
!3086 = distinct !DISubprogram(name: "ximemdup0", scope: !381, file: !381, line: 325, type: !3087, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!42, !662, !400}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "p", arg: 1, scope: !3086, file: !381, line: 325, type: !662)
!3091 = !DILocalVariable(name: "s", arg: 2, scope: !3086, file: !381, line: 325, type: !400)
!3092 = !DILocalVariable(name: "result", scope: !3086, file: !381, line: 327, type: !42)
!3093 = !DILocation(line: 0, scope: !3086)
!3094 = !DILocation(line: 327, column: 30, scope: !3086)
!3095 = !DILocation(line: 0, scope: !2747, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 327, column: 18, scope: !3086)
!3097 = !DILocation(line: 0, scope: !2754, inlinedAt: !3098)
!3098 = distinct !DILocation(line: 55, column: 25, scope: !2747, inlinedAt: !3096)
!3099 = !DILocation(line: 57, column: 26, scope: !2754, inlinedAt: !3098)
!3100 = !DILocation(line: 0, scope: !2715, inlinedAt: !3101)
!3101 = distinct !DILocation(line: 55, column: 10, scope: !2747, inlinedAt: !3096)
!3102 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3101)
!3103 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3101)
!3104 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3101)
!3105 = !DILocation(line: 328, column: 3, scope: !3086)
!3106 = !DILocation(line: 328, column: 13, scope: !3086)
!3107 = !DILocation(line: 0, scope: !3054, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 329, column: 10, scope: !3086)
!3109 = !DILocation(line: 29, column: 10, scope: !3054, inlinedAt: !3108)
!3110 = !DILocation(line: 329, column: 3, scope: !3086)
!3111 = distinct !DISubprogram(name: "xstrdup", scope: !381, file: !381, line: 335, type: !656, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3112)
!3112 = !{!3113}
!3113 = !DILocalVariable(name: "string", arg: 1, scope: !3111, file: !381, line: 335, type: !50)
!3114 = !DILocation(line: 0, scope: !3111)
!3115 = !DILocation(line: 337, column: 27, scope: !3111)
!3116 = !DILocation(line: 337, column: 43, scope: !3111)
!3117 = !DILocation(line: 0, scope: !3038, inlinedAt: !3118)
!3118 = distinct !DILocation(line: 337, column: 10, scope: !3111)
!3119 = !DILocation(line: 0, scope: !2734, inlinedAt: !3120)
!3120 = distinct !DILocation(line: 312, column: 18, scope: !3038, inlinedAt: !3118)
!3121 = !DILocation(line: 49, column: 25, scope: !2734, inlinedAt: !3120)
!3122 = !DILocation(line: 0, scope: !2715, inlinedAt: !3123)
!3123 = distinct !DILocation(line: 49, column: 10, scope: !2734, inlinedAt: !3120)
!3124 = !DILocation(line: 39, column: 8, scope: !2722, inlinedAt: !3123)
!3125 = !DILocation(line: 39, column: 7, scope: !2715, inlinedAt: !3123)
!3126 = !DILocation(line: 40, column: 5, scope: !2722, inlinedAt: !3123)
!3127 = !DILocation(line: 0, scope: !3054, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 312, column: 10, scope: !3038, inlinedAt: !3118)
!3129 = !DILocation(line: 29, column: 10, scope: !3054, inlinedAt: !3128)
!3130 = !DILocation(line: 337, column: 3, scope: !3111)
!3131 = distinct !DISubprogram(name: "xalloc_die", scope: !415, file: !415, line: 32, type: !204, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3132)
!3132 = !{!3133}
!3133 = !DILocalVariable(name: "__errstatus", scope: !3134, file: !415, line: 34, type: !3135)
!3134 = distinct !DILexicalBlock(scope: !3131, file: !415, line: 34, column: 3)
!3135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!3136 = !DILocation(line: 34, column: 3, scope: !3134)
!3137 = !DILocation(line: 0, scope: !3134)
!3138 = !DILocation(line: 40, column: 3, scope: !3131)
!3139 = distinct !DISubprogram(name: "close_stream", scope: !417, file: !417, line: 55, type: !3140, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3176)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!45, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3144)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3144, file: !84, line: 51, baseType: !45, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3144, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3144, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3144, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3144, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3144, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3144, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3144, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3144, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3144, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3144, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3144, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3144, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3144, file: !84, line: 70, baseType: !3160, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3144, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3144, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3144, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3144, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3144, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3144, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3144, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3144, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3144, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3144, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3144, file: !84, line: 93, baseType: !3160, size: 64, offset: 1344)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3144, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3144, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3144, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3144, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3176 = !{!3177, !3178, !3180, !3181}
!3177 = !DILocalVariable(name: "stream", arg: 1, scope: !3139, file: !417, line: 55, type: !3142)
!3178 = !DILocalVariable(name: "some_pending", scope: !3139, file: !417, line: 57, type: !3179)
!3179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!3180 = !DILocalVariable(name: "prev_fail", scope: !3139, file: !417, line: 58, type: !3179)
!3181 = !DILocalVariable(name: "fclose_fail", scope: !3139, file: !417, line: 59, type: !3179)
!3182 = !DILocation(line: 0, scope: !3139)
!3183 = !DILocation(line: 57, column: 30, scope: !3139)
!3184 = !DILocalVariable(name: "__stream", arg: 1, scope: !3185, file: !973, line: 135, type: !3142)
!3185 = distinct !DISubprogram(name: "ferror_unlocked", scope: !973, file: !973, line: 135, type: !3140, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3186)
!3186 = !{!3184}
!3187 = !DILocation(line: 0, scope: !3185, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 58, column: 27, scope: !3139)
!3189 = !DILocation(line: 137, column: 10, scope: !3185, inlinedAt: !3188)
!3190 = !{!982, !545, i64 0}
!3191 = !DILocation(line: 58, column: 43, scope: !3139)
!3192 = !DILocation(line: 59, column: 29, scope: !3139)
!3193 = !DILocation(line: 59, column: 45, scope: !3139)
!3194 = !DILocation(line: 69, column: 17, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3139, file: !417, line: 69, column: 7)
!3196 = !DILocation(line: 57, column: 50, scope: !3139)
!3197 = !DILocation(line: 69, column: 33, scope: !3195)
!3198 = !DILocation(line: 69, column: 53, scope: !3195)
!3199 = !DILocation(line: 69, column: 59, scope: !3195)
!3200 = !DILocation(line: 69, column: 7, scope: !3139)
!3201 = !DILocation(line: 71, column: 11, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !417, line: 70, column: 5)
!3203 = !DILocation(line: 72, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3202, file: !417, line: 71, column: 11)
!3205 = !DILocation(line: 72, column: 15, scope: !3204)
!3206 = !DILocation(line: 77, column: 1, scope: !3139)
!3207 = distinct !DISubprogram(name: "rpl_fclose", scope: !419, file: !419, line: 58, type: !3208, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3244)
!3208 = !DISubroutineType(types: !3209)
!3209 = !{!45, !3210}
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3212)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3213)
!3213 = !{!3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3212, file: !84, line: 51, baseType: !45, size: 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3212, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3212, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3212, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3212, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3212, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3212, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3212, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3212, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3212, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3212, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3212, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3212, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3212, file: !84, line: 70, baseType: !3228, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3212, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3212, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3212, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3212, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3212, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3212, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3212, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3212, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3212, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3212, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3212, file: !84, line: 93, baseType: !3228, size: 64, offset: 1344)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3212, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3212, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3212, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3212, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3244 = !{!3245, !3246, !3247, !3248}
!3245 = !DILocalVariable(name: "fp", arg: 1, scope: !3207, file: !419, line: 58, type: !3210)
!3246 = !DILocalVariable(name: "saved_errno", scope: !3207, file: !419, line: 60, type: !45)
!3247 = !DILocalVariable(name: "fd", scope: !3207, file: !419, line: 63, type: !45)
!3248 = !DILocalVariable(name: "result", scope: !3207, file: !419, line: 74, type: !45)
!3249 = !DILocation(line: 0, scope: !3207)
!3250 = !DILocation(line: 63, column: 12, scope: !3207)
!3251 = !DILocation(line: 64, column: 10, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3207, file: !419, line: 64, column: 7)
!3253 = !DILocation(line: 64, column: 7, scope: !3207)
!3254 = !DILocation(line: 65, column: 12, scope: !3252)
!3255 = !DILocation(line: 65, column: 5, scope: !3252)
!3256 = !DILocation(line: 70, column: 9, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3207, file: !419, line: 70, column: 7)
!3258 = !DILocation(line: 70, column: 23, scope: !3257)
!3259 = !DILocation(line: 70, column: 33, scope: !3257)
!3260 = !DILocation(line: 70, column: 26, scope: !3257)
!3261 = !DILocation(line: 70, column: 59, scope: !3257)
!3262 = !DILocation(line: 71, column: 7, scope: !3257)
!3263 = !DILocation(line: 71, column: 10, scope: !3257)
!3264 = !DILocation(line: 70, column: 7, scope: !3207)
!3265 = !DILocation(line: 100, column: 12, scope: !3207)
!3266 = !DILocation(line: 105, column: 7, scope: !3207)
!3267 = !DILocation(line: 72, column: 19, scope: !3257)
!3268 = !DILocation(line: 105, column: 19, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3207, file: !419, line: 105, column: 7)
!3270 = !DILocation(line: 107, column: 13, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3269, file: !419, line: 106, column: 5)
!3272 = !DILocation(line: 109, column: 5, scope: !3271)
!3273 = !DILocation(line: 112, column: 1, scope: !3207)
!3274 = !DISubprogram(name: "fileno", scope: !177, file: !177, line: 809, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3275 = !DISubprogram(name: "fclose", scope: !177, file: !177, line: 178, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3276 = !DISubprogram(name: "lseek", scope: !790, file: !790, line: 339, type: !3277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!106, !45, !106, !45}
!3279 = distinct !DISubprogram(name: "rpl_fflush", scope: !421, file: !421, line: 130, type: !3280, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !3316)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!45, !3282}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3284)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3284, file: !84, line: 51, baseType: !45, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3284, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3284, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3284, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3284, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3284, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3284, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3284, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3284, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3284, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3284, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3284, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3284, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3284, file: !84, line: 70, baseType: !3300, size: 64, offset: 832)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3284, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3284, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3284, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3284, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3284, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3284, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3284, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3284, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3284, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3284, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3284, file: !84, line: 93, baseType: !3300, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3284, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3284, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3284, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3284, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3316 = !{!3317}
!3317 = !DILocalVariable(name: "stream", arg: 1, scope: !3279, file: !421, line: 130, type: !3282)
!3318 = !DILocation(line: 0, scope: !3279)
!3319 = !DILocation(line: 151, column: 14, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3279, file: !421, line: 151, column: 7)
!3321 = !DILocation(line: 151, column: 22, scope: !3320)
!3322 = !DILocation(line: 151, column: 27, scope: !3320)
!3323 = !DILocation(line: 151, column: 7, scope: !3279)
!3324 = !DILocation(line: 152, column: 12, scope: !3320)
!3325 = !DILocation(line: 152, column: 5, scope: !3320)
!3326 = !DILocalVariable(name: "fp", arg: 1, scope: !3327, file: !421, line: 42, type: !3282)
!3327 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !421, file: !421, line: 42, type: !3328, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !420, retainedNodes: !3330)
!3328 = !DISubroutineType(types: !3329)
!3329 = !{null, !3282}
!3330 = !{!3326}
!3331 = !DILocation(line: 0, scope: !3327, inlinedAt: !3332)
!3332 = distinct !DILocation(line: 157, column: 3, scope: !3279)
!3333 = !DILocation(line: 44, column: 12, scope: !3334, inlinedAt: !3332)
!3334 = distinct !DILexicalBlock(scope: !3327, file: !421, line: 44, column: 7)
!3335 = !DILocation(line: 44, column: 19, scope: !3334, inlinedAt: !3332)
!3336 = !DILocation(line: 44, column: 7, scope: !3327, inlinedAt: !3332)
!3337 = !DILocation(line: 46, column: 5, scope: !3334, inlinedAt: !3332)
!3338 = !DILocation(line: 159, column: 10, scope: !3279)
!3339 = !DILocation(line: 159, column: 3, scope: !3279)
!3340 = !DILocation(line: 236, column: 1, scope: !3279)
!3341 = !DISubprogram(name: "fflush", scope: !177, file: !177, line: 230, type: !3280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3342 = distinct !DISubprogram(name: "rpl_fseeko", scope: !423, file: !423, line: 28, type: !3343, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !422, retainedNodes: !3380)
!3343 = !DISubroutineType(types: !3344)
!3344 = !{!45, !3345, !3379, !45}
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !3347)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !3348)
!3348 = !{!3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3347, file: !84, line: 51, baseType: !45, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3347, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3347, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3347, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3347, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3347, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3347, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3347, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3347, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3347, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3347, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3347, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3347, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3347, file: !84, line: 70, baseType: !3363, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3347, file: !84, line: 72, baseType: !45, size: 32, offset: 896)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3347, file: !84, line: 73, baseType: !45, size: 32, offset: 928)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3347, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3347, file: !84, line: 77, baseType: !46, size: 16, offset: 1024)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3347, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3347, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3347, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3347, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3347, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3347, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3347, file: !84, line: 93, baseType: !3363, size: 64, offset: 1344)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3347, file: !84, line: 94, baseType: !44, size: 64, offset: 1408)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3347, file: !84, line: 95, baseType: !47, size: 64, offset: 1472)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3347, file: !84, line: 96, baseType: !45, size: 32, offset: 1536)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3347, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!3379 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !177, line: 63, baseType: !106)
!3380 = !{!3381, !3382, !3383, !3384}
!3381 = !DILocalVariable(name: "fp", arg: 1, scope: !3342, file: !423, line: 28, type: !3345)
!3382 = !DILocalVariable(name: "offset", arg: 2, scope: !3342, file: !423, line: 28, type: !3379)
!3383 = !DILocalVariable(name: "whence", arg: 3, scope: !3342, file: !423, line: 28, type: !45)
!3384 = !DILocalVariable(name: "pos", scope: !3385, file: !423, line: 123, type: !3379)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !423, line: 119, column: 5)
!3386 = distinct !DILexicalBlock(scope: !3342, file: !423, line: 55, column: 7)
!3387 = !DILocation(line: 0, scope: !3342)
!3388 = !DILocation(line: 55, column: 12, scope: !3386)
!3389 = !{!982, !457, i64 16}
!3390 = !DILocation(line: 55, column: 33, scope: !3386)
!3391 = !{!982, !457, i64 8}
!3392 = !DILocation(line: 55, column: 25, scope: !3386)
!3393 = !DILocation(line: 56, column: 7, scope: !3386)
!3394 = !DILocation(line: 56, column: 15, scope: !3386)
!3395 = !DILocation(line: 56, column: 37, scope: !3386)
!3396 = !{!982, !457, i64 32}
!3397 = !DILocation(line: 56, column: 29, scope: !3386)
!3398 = !DILocation(line: 57, column: 7, scope: !3386)
!3399 = !DILocation(line: 57, column: 15, scope: !3386)
!3400 = !{!982, !457, i64 72}
!3401 = !DILocation(line: 57, column: 29, scope: !3386)
!3402 = !DILocation(line: 55, column: 7, scope: !3342)
!3403 = !DILocation(line: 123, column: 26, scope: !3385)
!3404 = !DILocation(line: 123, column: 19, scope: !3385)
!3405 = !DILocation(line: 0, scope: !3385)
!3406 = !DILocation(line: 124, column: 15, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3385, file: !423, line: 124, column: 11)
!3408 = !DILocation(line: 124, column: 11, scope: !3385)
!3409 = !DILocation(line: 135, column: 12, scope: !3385)
!3410 = !DILocation(line: 135, column: 19, scope: !3385)
!3411 = !DILocation(line: 136, column: 12, scope: !3385)
!3412 = !DILocation(line: 136, column: 20, scope: !3385)
!3413 = !{!982, !983, i64 144}
!3414 = !DILocation(line: 167, column: 7, scope: !3385)
!3415 = !DILocation(line: 169, column: 10, scope: !3342)
!3416 = !DILocation(line: 169, column: 3, scope: !3342)
!3417 = !DILocation(line: 170, column: 1, scope: !3342)
!3418 = !DISubprogram(name: "fseeko", scope: !177, file: !177, line: 736, type: !3419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!45, !3345, !106, !45}
!3421 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !358, file: !358, line: 100, type: !3422, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3425)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!47, !1243, !50, !47, !3424}
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!3425 = !{!3426, !3427, !3428, !3429, !3430}
!3426 = !DILocalVariable(name: "pwc", arg: 1, scope: !3421, file: !358, line: 100, type: !1243)
!3427 = !DILocalVariable(name: "s", arg: 2, scope: !3421, file: !358, line: 100, type: !50)
!3428 = !DILocalVariable(name: "n", arg: 3, scope: !3421, file: !358, line: 100, type: !47)
!3429 = !DILocalVariable(name: "ps", arg: 4, scope: !3421, file: !358, line: 100, type: !3424)
!3430 = !DILocalVariable(name: "ret", scope: !3421, file: !358, line: 130, type: !47)
!3431 = !DILocation(line: 0, scope: !3421)
!3432 = !DILocation(line: 105, column: 9, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3421, file: !358, line: 105, column: 7)
!3434 = !DILocation(line: 105, column: 7, scope: !3421)
!3435 = !DILocation(line: 117, column: 10, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3421, file: !358, line: 117, column: 7)
!3437 = !DILocation(line: 117, column: 7, scope: !3421)
!3438 = !DILocation(line: 130, column: 16, scope: !3421)
!3439 = !DILocation(line: 135, column: 11, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3421, file: !358, line: 135, column: 7)
!3441 = !DILocation(line: 135, column: 25, scope: !3440)
!3442 = !DILocation(line: 135, column: 30, scope: !3440)
!3443 = !DILocation(line: 135, column: 7, scope: !3421)
!3444 = !DILocalVariable(name: "ps", arg: 1, scope: !3445, file: !1216, line: 1135, type: !3424)
!3445 = distinct !DISubprogram(name: "mbszero", scope: !1216, file: !1216, line: 1135, type: !3446, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3448)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !3424}
!3448 = !{!3444}
!3449 = !DILocation(line: 0, scope: !3445, inlinedAt: !3450)
!3450 = distinct !DILocation(line: 137, column: 5, scope: !3440)
!3451 = !DILocalVariable(name: "__dest", arg: 1, scope: !3452, file: !1225, line: 57, type: !44)
!3452 = distinct !DISubprogram(name: "memset", scope: !1225, file: !1225, line: 57, type: !1226, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !357, retainedNodes: !3453)
!3453 = !{!3451, !3454, !3455}
!3454 = !DILocalVariable(name: "__ch", arg: 2, scope: !3452, file: !1225, line: 57, type: !45)
!3455 = !DILocalVariable(name: "__len", arg: 3, scope: !3452, file: !1225, line: 57, type: !47)
!3456 = !DILocation(line: 0, scope: !3452, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1137, column: 3, scope: !3445, inlinedAt: !3450)
!3458 = !DILocation(line: 59, column: 10, scope: !3452, inlinedAt: !3457)
!3459 = !DILocation(line: 137, column: 5, scope: !3440)
!3460 = !DILocation(line: 138, column: 11, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3421, file: !358, line: 138, column: 7)
!3462 = !DILocation(line: 138, column: 7, scope: !3421)
!3463 = !DILocation(line: 139, column: 5, scope: !3461)
!3464 = !DILocation(line: 143, column: 26, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3421, file: !358, line: 143, column: 7)
!3466 = !DILocation(line: 143, column: 41, scope: !3465)
!3467 = !DILocation(line: 143, column: 7, scope: !3421)
!3468 = !DILocation(line: 145, column: 15, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !358, line: 145, column: 11)
!3470 = distinct !DILexicalBlock(scope: !3465, file: !358, line: 144, column: 5)
!3471 = !DILocation(line: 145, column: 11, scope: !3470)
!3472 = !DILocation(line: 146, column: 32, scope: !3469)
!3473 = !DILocation(line: 146, column: 16, scope: !3469)
!3474 = !DILocation(line: 146, column: 14, scope: !3469)
!3475 = !DILocation(line: 146, column: 9, scope: !3469)
!3476 = !DILocation(line: 286, column: 1, scope: !3421)
!3477 = !DISubprogram(name: "mbsinit", scope: !3478, file: !3478, line: 293, type: !3479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !536)
!3478 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!45, !3481}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!3483 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !425, file: !425, line: 27, type: !2699, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3484)
!3484 = !{!3485, !3486, !3487, !3488}
!3485 = !DILocalVariable(name: "ptr", arg: 1, scope: !3483, file: !425, line: 27, type: !44)
!3486 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3483, file: !425, line: 27, type: !47)
!3487 = !DILocalVariable(name: "size", arg: 3, scope: !3483, file: !425, line: 27, type: !47)
!3488 = !DILocalVariable(name: "nbytes", scope: !3483, file: !425, line: 29, type: !47)
!3489 = !DILocation(line: 0, scope: !3483)
!3490 = !DILocation(line: 30, column: 7, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3483, file: !425, line: 30, column: 7)
!3492 = !DILocalVariable(name: "ptr", arg: 1, scope: !3493, file: !2790, line: 2057, type: !44)
!3493 = distinct !DISubprogram(name: "rpl_realloc", scope: !2790, file: !2790, line: 2057, type: !2782, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3494)
!3494 = !{!3492, !3495}
!3495 = !DILocalVariable(name: "size", arg: 2, scope: !3493, file: !2790, line: 2057, type: !47)
!3496 = !DILocation(line: 0, scope: !3493, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 37, column: 10, scope: !3483)
!3498 = !DILocation(line: 2059, column: 24, scope: !3493, inlinedAt: !3497)
!3499 = !DILocation(line: 2059, column: 10, scope: !3493, inlinedAt: !3497)
!3500 = !DILocation(line: 37, column: 3, scope: !3483)
!3501 = !DILocation(line: 32, column: 7, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3491, file: !425, line: 31, column: 5)
!3503 = !DILocation(line: 32, column: 13, scope: !3502)
!3504 = !DILocation(line: 33, column: 7, scope: !3502)
!3505 = !DILocation(line: 38, column: 1, scope: !3483)
!3506 = distinct !DISubprogram(name: "hard_locale", scope: !428, file: !428, line: 28, type: !3507, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3509)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!67, !45}
!3509 = !{!3510, !3511}
!3510 = !DILocalVariable(name: "category", arg: 1, scope: !3506, file: !428, line: 28, type: !45)
!3511 = !DILocalVariable(name: "locale", scope: !3506, file: !428, line: 30, type: !3512)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 2056, elements: !3513)
!3513 = !{!3514}
!3514 = !DISubrange(count: 257)
!3515 = !DILocation(line: 0, scope: !3506)
!3516 = !DILocation(line: 30, column: 3, scope: !3506)
!3517 = !DILocation(line: 30, column: 8, scope: !3506)
!3518 = !DILocation(line: 32, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3506, file: !428, line: 32, column: 7)
!3520 = !DILocation(line: 32, column: 7, scope: !3506)
!3521 = !DILocalVariable(name: "__s1", arg: 1, scope: !3522, file: !494, line: 1359, type: !50)
!3522 = distinct !DISubprogram(name: "streq", scope: !494, file: !494, line: 1359, type: !495, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3523)
!3523 = !{!3521, !3524}
!3524 = !DILocalVariable(name: "__s2", arg: 2, scope: !3522, file: !494, line: 1359, type: !50)
!3525 = !DILocation(line: 0, scope: !3522, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 35, column: 9, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3506, file: !428, line: 35, column: 7)
!3528 = !DILocation(line: 1361, column: 11, scope: !3522, inlinedAt: !3526)
!3529 = !DILocation(line: 1361, column: 10, scope: !3522, inlinedAt: !3526)
!3530 = !DILocation(line: 35, column: 29, scope: !3527)
!3531 = !DILocation(line: 0, scope: !3522, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 35, column: 32, scope: !3527)
!3533 = !DILocation(line: 1361, column: 11, scope: !3522, inlinedAt: !3532)
!3534 = !DILocation(line: 1361, column: 10, scope: !3522, inlinedAt: !3532)
!3535 = !DILocation(line: 35, column: 7, scope: !3506)
!3536 = !DILocation(line: 46, column: 3, scope: !3506)
!3537 = !DILocation(line: 47, column: 1, scope: !3506)
!3538 = distinct !DISubprogram(name: "setlocale_null_r", scope: !430, file: !430, line: 154, type: !3539, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !3541)
!3539 = !DISubroutineType(types: !3540)
!3540 = !{!45, !45, !42, !47}
!3541 = !{!3542, !3543, !3544}
!3542 = !DILocalVariable(name: "category", arg: 1, scope: !3538, file: !430, line: 154, type: !45)
!3543 = !DILocalVariable(name: "buf", arg: 2, scope: !3538, file: !430, line: 154, type: !42)
!3544 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3538, file: !430, line: 154, type: !47)
!3545 = !DILocation(line: 0, scope: !3538)
!3546 = !DILocation(line: 159, column: 10, scope: !3538)
!3547 = !DILocation(line: 159, column: 3, scope: !3538)
!3548 = distinct !DISubprogram(name: "setlocale_null", scope: !430, file: !430, line: 186, type: !3549, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !3551)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!50, !45}
!3551 = !{!3552}
!3552 = !DILocalVariable(name: "category", arg: 1, scope: !3548, file: !430, line: 186, type: !45)
!3553 = !DILocation(line: 0, scope: !3548)
!3554 = !DILocation(line: 189, column: 10, scope: !3548)
!3555 = !DILocation(line: 189, column: 3, scope: !3548)
!3556 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !432, file: !432, line: 35, type: !3549, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !3557)
!3557 = !{!3558, !3559}
!3558 = !DILocalVariable(name: "category", arg: 1, scope: !3556, file: !432, line: 35, type: !45)
!3559 = !DILocalVariable(name: "result", scope: !3556, file: !432, line: 37, type: !50)
!3560 = !DILocation(line: 0, scope: !3556)
!3561 = !DILocation(line: 37, column: 24, scope: !3556)
!3562 = !DILocation(line: 62, column: 3, scope: !3556)
!3563 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !432, file: !432, line: 66, type: !3539, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569}
!3565 = !DILocalVariable(name: "category", arg: 1, scope: !3563, file: !432, line: 66, type: !45)
!3566 = !DILocalVariable(name: "buf", arg: 2, scope: !3563, file: !432, line: 66, type: !42)
!3567 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3563, file: !432, line: 66, type: !47)
!3568 = !DILocalVariable(name: "result", scope: !3563, file: !432, line: 111, type: !50)
!3569 = !DILocalVariable(name: "length", scope: !3570, file: !432, line: 125, type: !47)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !432, line: 124, column: 5)
!3571 = distinct !DILexicalBlock(scope: !3563, file: !432, line: 113, column: 7)
!3572 = !DILocation(line: 0, scope: !3563)
!3573 = !DILocation(line: 0, scope: !3556, inlinedAt: !3574)
!3574 = distinct !DILocation(line: 111, column: 24, scope: !3563)
!3575 = !DILocation(line: 37, column: 24, scope: !3556, inlinedAt: !3574)
!3576 = !DILocation(line: 113, column: 14, scope: !3571)
!3577 = !DILocation(line: 113, column: 7, scope: !3563)
!3578 = !DILocation(line: 116, column: 19, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !432, line: 116, column: 11)
!3580 = distinct !DILexicalBlock(scope: !3571, file: !432, line: 114, column: 5)
!3581 = !DILocation(line: 116, column: 11, scope: !3580)
!3582 = !DILocation(line: 120, column: 16, scope: !3579)
!3583 = !DILocation(line: 120, column: 9, scope: !3579)
!3584 = !DILocation(line: 125, column: 23, scope: !3570)
!3585 = !DILocation(line: 0, scope: !3570)
!3586 = !DILocation(line: 126, column: 18, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3570, file: !432, line: 126, column: 11)
!3588 = !DILocation(line: 126, column: 11, scope: !3570)
!3589 = !DILocation(line: 128, column: 39, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3587, file: !432, line: 127, column: 9)
!3591 = !DILocalVariable(name: "__dest", arg: 1, scope: !3592, file: !1225, line: 26, type: !3057)
!3592 = distinct !DISubprogram(name: "memcpy", scope: !1225, file: !1225, line: 26, type: !3055, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !3593)
!3593 = !{!3591, !3594, !3595}
!3594 = !DILocalVariable(name: "__src", arg: 2, scope: !3592, file: !1225, line: 26, type: !661)
!3595 = !DILocalVariable(name: "__len", arg: 3, scope: !3592, file: !1225, line: 26, type: !47)
!3596 = !DILocation(line: 0, scope: !3592, inlinedAt: !3597)
!3597 = distinct !DILocation(line: 128, column: 11, scope: !3590)
!3598 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3597)
!3599 = !DILocation(line: 129, column: 11, scope: !3590)
!3600 = !DILocation(line: 133, column: 23, scope: !3601)
!3601 = distinct !DILexicalBlock(scope: !3602, file: !432, line: 133, column: 15)
!3602 = distinct !DILexicalBlock(scope: !3587, file: !432, line: 132, column: 9)
!3603 = !DILocation(line: 133, column: 15, scope: !3602)
!3604 = !DILocation(line: 138, column: 44, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3601, file: !432, line: 134, column: 13)
!3606 = !DILocation(line: 0, scope: !3592, inlinedAt: !3607)
!3607 = distinct !DILocation(line: 138, column: 15, scope: !3605)
!3608 = !DILocation(line: 29, column: 10, scope: !3592, inlinedAt: !3607)
!3609 = !DILocation(line: 139, column: 15, scope: !3605)
!3610 = !DILocation(line: 139, column: 32, scope: !3605)
!3611 = !DILocation(line: 140, column: 13, scope: !3605)
!3612 = !DILocation(line: 0, scope: !3571)
!3613 = !DILocation(line: 145, column: 1, scope: !3563)
