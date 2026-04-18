; ModuleID = 'src/mkfifo.bc'
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
%struct.selabel_handle = type opaque
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Usage: %s [OPTION]... NAME...\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Create named pipes (FIFOs) with the given NAMEs.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"cannot create fifo %s\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !48
@.str.23 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.43 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.51 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), align 8, !dbg !147
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !152
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !157
@.str.28 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.29 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.30 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !159
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.32 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !195
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !165
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !191
@.str.1.38 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.40 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.39 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !193
@.str.4.33 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.34 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.35 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !200
@.str.62 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.63 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !206
@.str.66 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.67 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.68 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.69 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.70 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.71 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.72 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.73 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.74 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.75 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.67, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.68, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.69, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.70, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.73, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.74, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.75, i32 0, i32 0), i8* null], align 8, !dbg !242
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !254
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !272
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !302
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !309
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !274
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !311
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !260
@.str.10.78 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.76 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.79 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.77 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !279
@.str.84 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.85 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.86 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.87 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.88 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.89 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.90 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.91 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.92 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.93 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.94 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.95 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.96 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.97 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.98 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.99 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.100 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.105 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.109 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.110 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.111 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !317
@exit_failure = dso_local global i32 1, align 4, !dbg !325
@.str.128 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.127 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !331
@.str.144 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.145 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !432 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = icmp eq i32 %0, 0, !dbg !438
  br i1 %3, label %9, label %4, !dbg !440

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !441, !tbaa !443
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !441
  %7 = load i8*, i8** @program_name, align 8, !dbg !441, !tbaa !443
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !441
  br label %58, !dbg !441

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !447
  %11 = load i8*, i8** @program_name, align 8, !dbg !447, !tbaa !443
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !447
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !449
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !449, !tbaa !443
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !449
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !450
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !450, !tbaa !443
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #32, !dbg !450
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !454
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !454
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !455
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !455
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !456
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !456
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #32, !dbg !457
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !457
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #32, !dbg !458
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !458
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !459, metadata !DIExpression()) #32, !dbg !478
  %24 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !480
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %24) #32, !dbg !480
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !464, metadata !DIExpression()) #32, !dbg !481
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %24, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !481
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !473, metadata !DIExpression()) #32, !dbg !478
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !474, metadata !DIExpression()) #32, !dbg !478
  %25 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !482
  call void @llvm.dbg.value(metadata %struct.infomap* %25, metadata !474, metadata !DIExpression()) #32, !dbg !478
  br label %26, !dbg !483

26:                                               ; preds = %31, %9
  %27 = phi i8* [ %34, %31 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %28 = phi %struct.infomap* [ %32, %31 ], [ %25, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %28, metadata !474, metadata !DIExpression()) #32, !dbg !478
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !491
  call void @llvm.dbg.value(metadata i8* %27, metadata !490, metadata !DIExpression()) #32, !dbg !491
  %29 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %27) #33, !dbg !493
  %30 = icmp eq i32 %29, 0, !dbg !494
  br i1 %30, label %36, label %31, !dbg !483

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.infomap, %struct.infomap* %28, i64 1, !dbg !495
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !474, metadata !DIExpression()) #32, !dbg !478
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 0, !dbg !496
  %34 = load i8*, i8** %33, align 8, !dbg !496, !tbaa !497
  %35 = icmp eq i8* %34, null, !dbg !499
  br i1 %35, label %36, label %26, !dbg !500, !llvm.loop !501

36:                                               ; preds = %31, %26
  %37 = phi %struct.infomap* [ %28, %26 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 1, !dbg !503
  %39 = load i8*, i8** %38, align 8, !dbg !503, !tbaa !505
  %40 = icmp eq i8* %39, null, !dbg !506
  %41 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %39, !dbg !507
  call void @llvm.dbg.value(metadata i8* %41, metadata !473, metadata !DIExpression()) #32, !dbg !478
  tail call void @emit_bug_reporting_address() #32, !dbg !508
  %42 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !509
  call void @llvm.dbg.value(metadata i8* %42, metadata !476, metadata !DIExpression()) #32, !dbg !478
  %43 = icmp eq i8* %42, null, !dbg !510
  br i1 %43, label %51, label %44, !dbg !512

44:                                               ; preds = %36
  %45 = tail call i32 @strncmp(i8* noundef nonnull %42, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #33, !dbg !513
  %46 = icmp eq i32 %45, 0, !dbg !513
  br i1 %46, label %51, label %47, !dbg !514

47:                                               ; preds = %44
  %48 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #32, !dbg !515
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515, !tbaa !443
  %50 = tail call i32 @fputs_unlocked(i8* noundef %48, %struct._IO_FILE* noundef %49) #32, !dbg !515
  br label %51, !dbg !517

51:                                               ; preds = %36, %44, %47
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !477, metadata !DIExpression()) #32, !dbg !478
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #32, !dbg !520
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %52, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !520
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #32, !dbg !521
  %55 = icmp eq i8* %41, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !521
  %56 = select i1 %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), !dbg !521
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %54, i8* noundef %41, i8* noundef %56) #32, !dbg !521
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %24) #32, !dbg !522
  br label %58

58:                                               ; preds = %51, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !523
  unreachable, !dbg !523
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !524 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !528 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !50 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !55, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %0, metadata !56, metadata !DIExpression()), !dbg !533
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !534, !tbaa !535
  %3 = icmp eq i32 %2, -1, !dbg !537
  br i1 %3, label %4, label %16, !dbg !538

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #32, !dbg !539
  call void @llvm.dbg.value(metadata i8* %5, metadata !57, metadata !DIExpression()), !dbg !540
  %6 = icmp eq i8* %5, null, !dbg !541
  br i1 %6, label %14, label %7, !dbg !542

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !543, !tbaa !544
  %9 = icmp eq i8 %8, 0, !dbg !543
  br i1 %9, label %14, label %10, !dbg !545

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !484, metadata !DIExpression()) #32, !dbg !546
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !546
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #33, !dbg !548
  %12 = icmp eq i32 %11, 0, !dbg !549
  %13 = zext i1 %12 to i32, !dbg !545
  br label %14, !dbg !545

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !550, !tbaa !535
  br label %16, !dbg !551

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !552
  %18 = icmp eq i32 %17, 0, !dbg !552
  br i1 %18, label %22, label %19, !dbg !554

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !555, !tbaa !443
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !555
  br label %121, !dbg !557

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !60, metadata !DIExpression()), !dbg !533
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #33, !dbg !558
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !559
  call void @llvm.dbg.value(metadata i8* %24, metadata !62, metadata !DIExpression()), !dbg !533
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !560
  call void @llvm.dbg.value(metadata i8* %25, metadata !63, metadata !DIExpression()), !dbg !533
  %26 = icmp eq i8* %25, null, !dbg !561
  br i1 %26, label %53, label %27, !dbg !562

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !563
  br i1 %28, label %53, label %29, !dbg !564

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !64, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 0, metadata !68, metadata !DIExpression()), !dbg !565
  %30 = icmp ult i8* %24, %25, !dbg !566
  br i1 %30, label %31, label %53, !dbg !567

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !533
  %33 = load i16*, i16** %32, align 8, !tbaa !443
  br label %34, !dbg !567

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !64, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.value(metadata i64 %36, metadata !68, metadata !DIExpression()), !dbg !565
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !568
  call void @llvm.dbg.value(metadata i8* %37, metadata !64, metadata !DIExpression()), !dbg !565
  %38 = load i8, i8* %35, align 1, !dbg !568, !tbaa !544
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !568
  %41 = load i16, i16* %40, align 2, !dbg !568, !tbaa !569
  %42 = lshr i16 %41, 13, !dbg !571
  %43 = and i16 %42, 1, !dbg !571
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !572
  call void @llvm.dbg.value(metadata i64 %45, metadata !68, metadata !DIExpression()), !dbg !565
  %46 = icmp ult i8* %37, %25, !dbg !566
  %47 = icmp ult i64 %45, 2, !dbg !573
  %48 = select i1 %46, i1 %47, i1 false, !dbg !573
  br i1 %48, label %34, label %49, !dbg !567, !llvm.loop !574

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !575
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !577
  %52 = xor i1 %50, true, !dbg !577
  br label %53, !dbg !577

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !533
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %54, metadata !63, metadata !DIExpression()), !dbg !533
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #33, !dbg !578
  call void @llvm.dbg.value(metadata i64 %56, metadata !69, metadata !DIExpression()), !dbg !533
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !579
  call void @llvm.dbg.value(metadata i8* %57, metadata !70, metadata !DIExpression()), !dbg !533
  br label %58, !dbg !580

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !533
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.value(metadata i8* %59, metadata !70, metadata !DIExpression()), !dbg !533
  %61 = load i8, i8* %59, align 1, !dbg !581, !tbaa !544
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !582

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !583
  %64 = load i8, i8* %63, align 1, !dbg !586, !tbaa !544
  %65 = icmp ne i8 %64, 45, !dbg !587
  %66 = select i1 %65, i1 %60, i1 false, !dbg !588
  br label %67, !dbg !588

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !60, metadata !DIExpression()), !dbg !533
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !589
  %70 = load i16*, i16** %69, align 8, !dbg !589, !tbaa !443
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !589
  %73 = load i16, i16* %72, align 2, !dbg !589, !tbaa !569
  %74 = and i16 %73, 8192, !dbg !589
  %75 = icmp eq i16 %74, 0, !dbg !589
  br i1 %75, label %89, label %76, !dbg !591

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !592
  br i1 %77, label %91, label %78, !dbg !595

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !596
  %80 = load i8, i8* %79, align 1, !dbg !596, !tbaa !544
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !596
  %83 = load i16, i16* %82, align 2, !dbg !596, !tbaa !569
  %84 = and i16 %83, 8192, !dbg !596
  %85 = icmp eq i16 %84, 0, !dbg !596
  br i1 %85, label %86, label %91, !dbg !597

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !598
  br i1 %88, label %89, label %91, !dbg !598

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !600
  call void @llvm.dbg.value(metadata i8* %90, metadata !70, metadata !DIExpression()), !dbg !533
  br label %58, !dbg !580, !llvm.loop !601

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !603
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !603, !tbaa !443
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !603
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !490, metadata !DIExpression()) #32, !dbg !604
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !606
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !608
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !610
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !612
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !614
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !616
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !618
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !620
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !484, metadata !DIExpression()) #32, !dbg !622
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !130, metadata !DIExpression()), !dbg !533
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 noundef 6) #33, !dbg !624
  %96 = icmp eq i32 %95, 0, !dbg !624
  br i1 %96, label %100, label %97, !dbg !626

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i64 noundef 9) #33, !dbg !627
  %99 = icmp eq i32 %98, 0, !dbg !627
  br i1 %99, label %100, label %103, !dbg !628

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !629
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !629
  br label %106, !dbg !631

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !632
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !632
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !443
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !634
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !443
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !635
  %111 = ptrtoint i8* %59 to i64, !dbg !636
  %112 = sub i64 %111, %92, !dbg !636
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !443
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !636
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !637, !tbaa !443
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !637
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !638, !tbaa !443
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !638
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !639, !tbaa !443
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !639
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !640
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
declare !dbg !641 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !645 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !649 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !655 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !660, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8** %1, metadata !661, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !662, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !663, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata %struct.selabel_handle* null, metadata !664, metadata !DIExpression()), !dbg !684
  %3 = load i8*, i8** %1, align 8, !dbg !685, !tbaa !443
  tail call void @set_program_name(i8* noundef %3) #32, !dbg !686
  %4 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #32, !dbg !687
  %5 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0)) #32, !dbg !688
  %6 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #32, !dbg !689
  %7 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !690
  br label %8, !dbg !691

8:                                                ; preds = %12, %2
  %9 = phi i8* [ %13, %12 ], [ null, %2 ]
  br label %10, !dbg !691

10:                                               ; preds = %19, %8
  call void @llvm.dbg.value(metadata i8* %9, metadata !662, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i8* null, metadata !663, metadata !DIExpression()), !dbg !684
  %11 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !692
  call void @llvm.dbg.value(metadata i32 %11, metadata !668, metadata !DIExpression()), !dbg !684
  switch i32 %11, label %25 [
    i32 -1, label %26
    i32 109, label %12
    i32 90, label %14
    i32 -2, label %20
    i32 -3, label %21
  ], !dbg !691

12:                                               ; preds = %10
  %13 = load i8*, i8** @optarg, align 8, !dbg !693, !tbaa !443
  call void @llvm.dbg.value(metadata i8* %13, metadata !662, metadata !DIExpression()), !dbg !684
  br label %8, !dbg !696, !llvm.loop !697

14:                                               ; preds = %10
  %15 = load i8*, i8** @optarg, align 8, !dbg !699, !tbaa !443
  %16 = icmp eq i8* %15, null, !dbg !699
  br i1 %16, label %19, label %17, !dbg !703

17:                                               ; preds = %14
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 noundef 5) #32, !dbg !704
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %18) #32, !dbg !704
  br label %19, !dbg !706

19:                                               ; preds = %17, %14
  br label %10, !dbg !684, !llvm.loop !697

20:                                               ; preds = %10
  tail call void @usage(i32 noundef 0) #36, !dbg !707
  unreachable, !dbg !707

21:                                               ; preds = %10
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !708, !tbaa !443
  %23 = load i8*, i8** @Version, align 8, !dbg !708, !tbaa !443
  %24 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #32, !dbg !708
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %22, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* noundef %23, i8* noundef %24, i8* noundef null) #32, !dbg !708
  tail call void @exit(i32 noundef 0) #34, !dbg !708
  unreachable, !dbg !708

25:                                               ; preds = %10
  tail call void @usage(i32 noundef 1) #36, !dbg !709
  unreachable, !dbg !709

26:                                               ; preds = %10
  %27 = load i32, i32* @optind, align 4, !dbg !710, !tbaa !535
  %28 = icmp eq i32 %27, %0, !dbg !712
  br i1 %28, label %29, label %31, !dbg !713

29:                                               ; preds = %26
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #32, !dbg !714
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %30) #32, !dbg !714
  tail call void @usage(i32 noundef 1) #36, !dbg !716
  unreachable, !dbg !716

31:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i32 438, metadata !672, metadata !DIExpression()), !dbg !684
  %32 = icmp eq i8* %9, null, !dbg !717
  br i1 %32, label %48, label %33, !dbg !718

33:                                               ; preds = %31
  %34 = tail call noalias %struct.mode_change* @mode_compile(i8* noundef nonnull %9) #32, !dbg !719
  call void @llvm.dbg.value(metadata %struct.mode_change* %34, metadata !676, metadata !DIExpression()), !dbg !720
  %35 = icmp eq %struct.mode_change* %34, null, !dbg !721
  br i1 %35, label %36, label %38, !dbg !723

36:                                               ; preds = %33
  %37 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #32, !dbg !724
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %37) #32, !dbg !724
  unreachable, !dbg !724

38:                                               ; preds = %33
  %39 = tail call i32 @umask(i32 noundef 0) #32, !dbg !725
  call void @llvm.dbg.value(metadata i32 %39, metadata !682, metadata !DIExpression()), !dbg !720
  %40 = tail call i32 @umask(i32 noundef %39) #32, !dbg !726
  %41 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %39, %struct.mode_change* noundef nonnull %34, i32* noundef null) #33, !dbg !727
  call void @llvm.dbg.value(metadata i32 %41, metadata !672, metadata !DIExpression()), !dbg !684
  %42 = bitcast %struct.mode_change* %34 to i8*, !dbg !728
  tail call void @free(i8* noundef %42) #32, !dbg !729
  %43 = icmp ult i32 %41, 512, !dbg !730
  br i1 %43, label %44, label %46, !dbg !732

44:                                               ; preds = %38
  %45 = load i32, i32* @optind, align 4, !dbg !733, !tbaa !535
  br label %48, !dbg !732

46:                                               ; preds = %38
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !736
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %47) #32, !dbg !736
  unreachable, !dbg !736

48:                                               ; preds = %44, %31
  %49 = phi i32 [ %27, %31 ], [ %45, %44 ], !dbg !733
  %50 = phi i32 [ 438, %31 ], [ %41, %44 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %50, metadata !672, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.value(metadata i32 0, metadata !683, metadata !DIExpression()), !dbg !684
  %51 = icmp slt i32 %49, %0, !dbg !737
  br i1 %51, label %52, label %83, !dbg !738

52:                                               ; preds = %48, %78
  %53 = phi i32 [ %81, %78 ], [ %49, %48 ]
  %54 = phi i32 [ %79, %78 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i32 %54, metadata !683, metadata !DIExpression()), !dbg !684
  %55 = sext i32 %53 to i64, !dbg !739
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !739
  %57 = load i8*, i8** %56, align 8, !dbg !739, !tbaa !443
  %58 = tail call i32 @mkfifo(i8* noundef %57, i32 noundef %50) #32, !dbg !742
  %59 = icmp eq i32 %58, 0, !dbg !743
  br i1 %59, label %60, label %68, !dbg !744

60:                                               ; preds = %52
  br i1 %32, label %78, label %61, !dbg !745

61:                                               ; preds = %60
  %62 = load i32, i32* @optind, align 4, !dbg !747, !tbaa !535
  %63 = sext i32 %62 to i64, !dbg !748
  %64 = getelementptr inbounds i8*, i8** %1, i64 %63, !dbg !748
  %65 = load i8*, i8** %64, align 8, !dbg !748, !tbaa !443
  %66 = tail call i32 @lchmod(i8* noundef %65, i32 noundef %50) #32, !dbg !749
  %67 = icmp eq i32 %66, 0, !dbg !750
  br i1 %67, label %78, label %68, !dbg !751

68:                                               ; preds = %61, %52
  %69 = phi i8* [ getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), %52 ], [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), %61 ]
  %70 = tail call i32* @__errno_location() #35, !dbg !752
  %71 = load i32, i32* %70, align 4, !dbg !752, !tbaa !535
  %72 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %69, i32 noundef 5) #32, !dbg !752
  %73 = load i32, i32* @optind, align 4, !dbg !752, !tbaa !535
  %74 = sext i32 %73 to i64, !dbg !752
  %75 = getelementptr inbounds i8*, i8** %1, i64 %74, !dbg !752
  %76 = load i8*, i8** %75, align 8, !dbg !752, !tbaa !443
  %77 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %76) #32, !dbg !752
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %71, i8* noundef %72, i8* noundef %77) #32, !dbg !752
  br label %78, !dbg !753

78:                                               ; preds = %68, %61, %60
  %79 = phi i32 [ %54, %61 ], [ %54, %60 ], [ 1, %68 ], !dbg !684
  call void @llvm.dbg.value(metadata i32 %79, metadata !683, metadata !DIExpression()), !dbg !684
  %80 = load i32, i32* @optind, align 4, !dbg !753, !tbaa !535
  %81 = add nsw i32 %80, 1, !dbg !753
  store i32 %81, i32* @optind, align 4, !dbg !753, !tbaa !535
  %82 = icmp slt i32 %81, %0, !dbg !737
  br i1 %82, label %52, label %83, !dbg !738, !llvm.loop !754

83:                                               ; preds = %78, %48
  %84 = phi i32 [ 0, %48 ], [ %79, %78 ], !dbg !684
  ret i32 %84, !dbg !756
}

; Function Attrs: nounwind
declare !dbg !757 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !760 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !761 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !764 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !770 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare !dbg !774 i32 @mkfifo(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !777 i32 @lchmod(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !778 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !780, metadata !DIExpression()), !dbg !781
  store i8* %0, i8** @file_name, align 8, !dbg !782, !tbaa !443
  ret void, !dbg !783
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !784 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !788, metadata !DIExpression()), !dbg !789
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !790, !tbaa !791
  ret void, !dbg !793
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !794 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !799, !tbaa !443
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !800
  %3 = icmp eq i32 %2, 0, !dbg !801
  br i1 %3, label %22, label %4, !dbg !802

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !803, !tbaa !791, !range !804
  %6 = icmp eq i8 %5, 0, !dbg !803
  br i1 %6, label %11, label %7, !dbg !805

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !806
  %9 = load i32, i32* %8, align 4, !dbg !806, !tbaa !535
  %10 = icmp eq i32 %9, 32, !dbg !807
  br i1 %10, label %22, label %11, !dbg !808

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.29, i64 0, i64 0), i32 noundef 5) #32, !dbg !809
  call void @llvm.dbg.value(metadata i8* %12, metadata !796, metadata !DIExpression()), !dbg !810
  %13 = load i8*, i8** @file_name, align 8, !dbg !811, !tbaa !443
  %14 = icmp eq i8* %13, null, !dbg !811
  %15 = tail call i32* @__errno_location() #35, !dbg !813
  %16 = load i32, i32* %15, align 4, !dbg !813, !tbaa !535
  br i1 %14, label %19, label %17, !dbg !814

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !815
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.30, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !815
  br label %20, !dbg !815

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.31, i64 0, i64 0), i8* noundef %12) #32, !dbg !816
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !817, !tbaa !535
  tail call void @_exit(i32 noundef %21) #34, !dbg !818
  unreachable, !dbg !818

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !819, !tbaa !443
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !821
  %25 = icmp eq i32 %24, 0, !dbg !822
  br i1 %25, label %28, label %26, !dbg !823

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !824, !tbaa !535
  tail call void @_exit(i32 noundef %27) #34, !dbg !825
  unreachable, !dbg !825

28:                                               ; preds = %22
  ret void, !dbg !826
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !827 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !831, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i32 %1, metadata !832, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i8* %2, metadata !833, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !834, metadata !DIExpression()), !dbg !836
  tail call fastcc void @flush_stdout(), !dbg !837
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !838, !tbaa !443
  %7 = icmp eq void ()* %6, null, !dbg !838
  br i1 %7, label %9, label %8, !dbg !840

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !841
  br label %13, !dbg !841

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !842, !tbaa !443
  %11 = tail call i8* @getprogname() #33, !dbg !842
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8* noundef %11) #32, !dbg !842
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !844
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !844
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !844, !tbaa.struct !845
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !844
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !844
  ret void, !dbg !846
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !847 {
  call void @llvm.dbg.value(metadata i32 1, metadata !849, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i32 1, metadata !851, metadata !DIExpression()) #32, !dbg !856
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !859
  %2 = icmp slt i32 %1, 0, !dbg !860
  br i1 %2, label %6, label %3, !dbg !861

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !862, !tbaa !443
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !862
  br label %6, !dbg !862

6:                                                ; preds = %3, %0
  ret void, !dbg !863
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !864 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !866, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i32 %1, metadata !867, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.value(metadata i8* %2, metadata !868, metadata !DIExpression()), !dbg !870
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !869, metadata !DIExpression()), !dbg !871
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !872, !tbaa !443
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !873
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !874, metadata !DIExpression()) #32, !dbg !917
  call void @llvm.dbg.value(metadata i8* %2, metadata !915, metadata !DIExpression()) #32, !dbg !917
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !919
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !919, !noalias !920
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !919
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !919
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !919, !noalias !920
  %11 = load i32, i32* @error_message_count, align 4, !dbg !924, !tbaa !535
  %12 = add i32 %11, 1, !dbg !924
  store i32 %12, i32* @error_message_count, align 4, !dbg !924, !tbaa !535
  %13 = icmp eq i32 %1, 0, !dbg !925
  br i1 %13, label %24, label %14, !dbg !927

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !928, metadata !DIExpression()) #32, !dbg !936
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !938
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !938
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !932, metadata !DIExpression()) #32, !dbg !939
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !940
  call void @llvm.dbg.value(metadata i8* %16, metadata !931, metadata !DIExpression()) #32, !dbg !936
  %17 = icmp eq i8* %16, null, !dbg !941
  br i1 %17, label %18, label %20, !dbg !943

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.33, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.34, i64 0, i64 0), i32 noundef 5) #32, !dbg !944
  call void @llvm.dbg.value(metadata i8* %19, metadata !931, metadata !DIExpression()) #32, !dbg !936
  br label %20, !dbg !945

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !936
  call void @llvm.dbg.value(metadata i8* %21, metadata !931, metadata !DIExpression()) #32, !dbg !936
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !946, !tbaa !443
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.35, i64 0, i64 0), i8* noundef %21) #32, !dbg !946
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !947
  br label %24, !dbg !948

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !949, !tbaa !443
  call void @llvm.dbg.value(metadata i32 10, metadata !950, metadata !DIExpression()) #32, !dbg !957
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !956, metadata !DIExpression()) #32, !dbg !957
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !959
  %27 = load i8*, i8** %26, align 8, !dbg !959, !tbaa !960
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !959
  %29 = load i8*, i8** %28, align 8, !dbg !959, !tbaa !963
  %30 = icmp ult i8* %27, %29, !dbg !959
  br i1 %30, label %33, label %31, !dbg !959, !prof !964

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !959
  br label %35, !dbg !959

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !959
  store i8* %34, i8** %26, align 8, !dbg !959, !tbaa !960
  store i8 10, i8* %27, align 1, !dbg !959, !tbaa !544
  br label %35, !dbg !959

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !965, !tbaa !443
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !965
  %38 = icmp eq i32 %0, 0, !dbg !966
  br i1 %38, label %40, label %39, !dbg !968

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !969
  unreachable, !dbg !969

40:                                               ; preds = %35
  ret void, !dbg !970
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !971 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !975 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !978 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !982 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !986, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %1, metadata !987, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %2, metadata !988, metadata !DIExpression()), !dbg !990
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !991
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !991
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !989, metadata !DIExpression()), !dbg !992
  call void @llvm.va_start(i8* nonnull %6), !dbg !993
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !994
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !994, !tbaa.struct !845
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !994
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !994
  call void @llvm.va_end(i8* nonnull %6), !dbg !995
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !996
  ret void, !dbg !996
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !167 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !185, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %1, metadata !186, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8* %2, metadata !187, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i32 %3, metadata !188, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.value(metadata i8* %4, metadata !189, metadata !DIExpression()), !dbg !997
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !190, metadata !DIExpression()), !dbg !998
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !999, !tbaa !535
  %9 = icmp eq i32 %8, 0, !dbg !999
  br i1 %9, label %24, label %10, !dbg !1001

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1002, !tbaa !535
  %12 = icmp eq i32 %11, %3, !dbg !1005
  br i1 %12, label %13, label %23, !dbg !1006

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1007, !tbaa !443
  %15 = icmp eq i8* %14, %2, !dbg !1008
  br i1 %15, label %39, label %16, !dbg !1009

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1010
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1011
  br i1 %19, label %20, label %23, !dbg !1011

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1012
  %22 = icmp eq i32 %21, 0, !dbg !1013
  br i1 %22, label %39, label %23, !dbg !1014

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1015, !tbaa !443
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1016, !tbaa !535
  br label %24, !dbg !1017

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1018
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1019, !tbaa !443
  %26 = icmp eq void ()* %25, null, !dbg !1019
  br i1 %26, label %28, label %27, !dbg !1021

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1022
  br label %32, !dbg !1022

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1023, !tbaa !443
  %30 = tail call i8* @getprogname() #33, !dbg !1023
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.38, i64 0, i64 0), i8* noundef %30) #32, !dbg !1023
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1025, !tbaa !443
  %34 = icmp eq i8* %2, null, !dbg !1025
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.39, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.40, i64 0, i64 0), !dbg !1025
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1025
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1026
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1026
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1026
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1026, !tbaa.struct !845
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1026
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1026
  br label %39, !dbg !1027

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1027
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1028 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1032, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %1, metadata !1033, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %2, metadata !1034, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %3, metadata !1035, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i8* %4, metadata !1036, metadata !DIExpression()), !dbg !1038
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1039
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1039
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1037, metadata !DIExpression()), !dbg !1040
  call void @llvm.va_start(i8* nonnull %8), !dbg !1041
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1042
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1042
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1042, !tbaa.struct !845
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1042
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1042
  call void @llvm.va_end(i8* nonnull %8), !dbg !1043
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1044
  ret void, !dbg !1044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1045 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1048, !tbaa !443
  ret i8* %1, !dbg !1049
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) local_unnamed_addr #12 !dbg !1050 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1062, metadata !DIExpression()), !dbg !1092
  %2 = load i8, i8* %0, align 1, !dbg !1093, !tbaa !544
  %3 = and i8 %2, -8, !dbg !1094
  %4 = icmp eq i8 %3, 48, !dbg !1094
  br i1 %4, label %5, label %39, !dbg !1094

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1095
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1097
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1097
  call void @llvm.dbg.value(metadata i8* %8, metadata !1063, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %7, metadata !1066, metadata !DIExpression()), !dbg !1097
  %9 = shl i32 %7, 3, !dbg !1098
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1099
  call void @llvm.dbg.value(metadata i8* %10, metadata !1063, metadata !DIExpression()), !dbg !1097
  %11 = zext i8 %6 to i32, !dbg !1095
  %12 = add i32 %9, -48, !dbg !1100
  %13 = add i32 %12, %11, !dbg !1101
  call void @llvm.dbg.value(metadata i32 %13, metadata !1066, metadata !DIExpression()), !dbg !1097
  %14 = icmp ugt i32 %13, 4095, !dbg !1102
  br i1 %14, label %142, label %15, !dbg !1104

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1105, !tbaa !544
  %17 = and i8 %16, -8, !dbg !1106
  %18 = icmp eq i8 %17, 48, !dbg !1106
  br i1 %18, label %5, label %19, !dbg !1106, !llvm.loop !1107

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1110
  br i1 %20, label %21, label %142, !dbg !1112

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1067, metadata !DIExpression()), !dbg !1097
  %22 = ptrtoint i8* %10 to i64, !dbg !1113
  %23 = ptrtoint i8* %0 to i64, !dbg !1113
  %24 = sub i64 %22, %23, !dbg !1113
  %25 = icmp slt i64 %24, 5, !dbg !1114
  %26 = and i32 %13, 3072, !dbg !1115
  %27 = or i32 %26, 1023, !dbg !1115
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1115
  call void @llvm.dbg.value(metadata i32 %28, metadata !1068, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %13, metadata !1116, metadata !DIExpression()) #32, !dbg !1123
  call void @llvm.dbg.value(metadata i32 %28, metadata !1121, metadata !DIExpression()) #32, !dbg !1123
  %29 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1125
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1125
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1122, metadata !DIExpression()) #32, !dbg !1123
  store i8 61, i8* %29, align 4, !dbg !1126, !tbaa !1127
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1129
  store i8 1, i8* %31, align 1, !dbg !1130, !tbaa !1131
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1132
  %33 = bitcast i8* %32 to i32*, !dbg !1132
  store i32 4095, i32* %33, align 4, !dbg !1133, !tbaa !1134
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1135
  %35 = bitcast i8* %34 to i32*, !dbg !1135
  store i32 %13, i32* %35, align 4, !dbg !1136, !tbaa !1137
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1138
  %37 = bitcast i8* %36 to i32*, !dbg !1138
  store i32 %28, i32* %37, align 4, !dbg !1139, !tbaa !1140
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1141
  store i8 0, i8* %38, align 1, !dbg !1142, !tbaa !1131
  br label %142, !dbg !1143

39:                                               ; preds = %1, %47
  %40 = phi i8 [ %51, %47 ], [ %2, %1 ], !dbg !1144
  %41 = phi i64 [ %49, %47 ], [ 1, %1 ], !dbg !1146
  %42 = phi i8* [ %50, %47 ], [ %0, %1 ], !dbg !1147
  call void @llvm.dbg.value(metadata i8* %42, metadata !1072, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.value(metadata i64 %41, metadata !1070, metadata !DIExpression()), !dbg !1146
  switch i8 %40, label %46 [
    i8 0, label %43
    i8 61, label %47
    i8 43, label %47
    i8 45, label %47
  ], !dbg !1148

43:                                               ; preds = %39
  %44 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %41, i64 noundef 16) #39, !dbg !1149
  %45 = bitcast i8* %44 to %struct.mode_change*, !dbg !1149
  call void @llvm.dbg.value(metadata %struct.mode_change* %45, metadata !1069, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 0, metadata !1074, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %0, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %52, !dbg !1150

46:                                               ; preds = %39
  br label %47, !dbg !1151

47:                                               ; preds = %39, %39, %39, %46
  %48 = phi i64 [ 0, %46 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %49 = add i64 %48, %41, !dbg !1152
  call void @llvm.dbg.value(metadata i64 %49, metadata !1070, metadata !DIExpression()), !dbg !1146
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1153
  call void @llvm.dbg.value(metadata i8* %50, metadata !1072, metadata !DIExpression()), !dbg !1147
  %51 = load i8, i8* %50, align 1, !dbg !1144, !tbaa !544
  br label %39, !dbg !1154, !llvm.loop !1155

52:                                               ; preds = %137, %43
  %53 = phi i64 [ 0, %43 ], [ %125, %137 ], !dbg !1157
  %54 = phi i8* [ %0, %43 ], [ %138, %137 ], !dbg !1158
  call void @llvm.dbg.value(metadata i32 undef, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %54, metadata !1075, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %53, metadata !1074, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i32 0, metadata !1076, metadata !DIExpression()), !dbg !1160
  br label %55, !dbg !1161

55:                                               ; preds = %63, %52
  %56 = phi i8* [ %54, %52 ], [ %66, %63 ], !dbg !1158
  %57 = phi i32 [ 0, %52 ], [ %65, %63 ], !dbg !1160
  call void @llvm.dbg.value(metadata i32 %57, metadata !1076, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* %56, metadata !1075, metadata !DIExpression()), !dbg !1092
  %58 = load i8, i8* %56, align 1, !dbg !1162, !tbaa !544
  switch i8 %58, label %141 [
    i8 117, label %63
    i8 103, label %60
    i8 111, label %61
    i8 97, label %62
    i8 61, label %59
    i8 43, label %59
    i8 45, label %59
  ], !dbg !1165

59:                                               ; preds = %55, %55, %55
  br label %67, !dbg !1166

60:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1160
  br label %63, !dbg !1167

61:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1160
  br label %63, !dbg !1169

62:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1076, metadata !DIExpression()), !dbg !1160
  br label %63, !dbg !1170

63:                                               ; preds = %55, %60, %61, %62
  %64 = phi i32 [ 1080, %60 ], [ 519, %61 ], [ 4095, %62 ], [ 2496, %55 ]
  %65 = or i32 %57, %64, !dbg !1171
  call void @llvm.dbg.value(metadata i32 %65, metadata !1076, metadata !DIExpression()), !dbg !1160
  %66 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1172
  call void @llvm.dbg.value(metadata i8* %66, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %55, !dbg !1173, !llvm.loop !1174

67:                                               ; preds = %136, %59
  %68 = phi i8 [ %58, %59 ], [ %135, %136 ], !dbg !1177
  %69 = phi i64 [ %53, %59 ], [ %125, %136 ], !dbg !1092
  %70 = phi i8* [ %56, %59 ], [ %119, %136 ], !dbg !1158
  %71 = phi i32 [ %57, %59 ], [ %120, %136 ], !dbg !1178
  call void @llvm.dbg.value(metadata i32 undef, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %71, metadata !1076, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* %70, metadata !1075, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %69, metadata !1074, metadata !DIExpression()), !dbg !1092
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1179
  call void @llvm.dbg.value(metadata i8* %72, metadata !1075, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8 %68, metadata !1080, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 0, metadata !1083, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 3, metadata !1084, metadata !DIExpression()), !dbg !1159
  %73 = load i8, i8* %72, align 1, !dbg !1180, !tbaa !544
  switch i8 %73, label %98 [
    i8 48, label %74
    i8 49, label %74
    i8 50, label %74
    i8 51, label %74
    i8 52, label %74
    i8 53, label %74
    i8 54, label %74
    i8 55, label %74
    i8 117, label %92
    i8 103, label %94
    i8 111, label %96
  ], !dbg !1166

74:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  br label %75, !dbg !1181

75:                                               ; preds = %74, %85
  %76 = phi i8 [ %86, %85 ], [ %73, %74 ], !dbg !1182
  %77 = phi i8* [ %80, %85 ], [ %72, %74 ], !dbg !1159
  %78 = phi i32 [ %83, %85 ], [ 0, %74 ], !dbg !1184
  call void @llvm.dbg.value(metadata i32 %78, metadata !1085, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8* %77, metadata !1075, metadata !DIExpression()), !dbg !1092
  %79 = shl i32 %78, 3, !dbg !1185
  %80 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1186
  call void @llvm.dbg.value(metadata i8* %80, metadata !1075, metadata !DIExpression()), !dbg !1092
  %81 = zext i8 %76 to i32, !dbg !1182
  %82 = add i32 %79, -48, !dbg !1187
  %83 = add i32 %82, %81, !dbg !1188
  call void @llvm.dbg.value(metadata i32 %83, metadata !1085, metadata !DIExpression()), !dbg !1184
  %84 = icmp ugt i32 %83, 4095, !dbg !1189
  br i1 %84, label %141, label %85, !dbg !1191

85:                                               ; preds = %75
  %86 = load i8, i8* %80, align 1, !dbg !1192, !tbaa !544
  %87 = and i8 %86, -8, !dbg !1193
  %88 = icmp eq i8 %87, 48, !dbg !1193
  br i1 %88, label %75, label %89, !dbg !1193, !llvm.loop !1194

89:                                               ; preds = %85
  %90 = icmp eq i32 %71, 0, !dbg !1196
  br i1 %90, label %91, label %141, !dbg !1198

91:                                               ; preds = %89
  switch i8 %86, label %141 [
    i8 0, label %118
    i8 44, label %118
  ], !dbg !1199

92:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 448, metadata !1082, metadata !DIExpression()), !dbg !1159
  %93 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1200
  call void @llvm.dbg.value(metadata i8* %93, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %118, !dbg !1201

94:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 56, metadata !1082, metadata !DIExpression()), !dbg !1159
  %95 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1202
  call void @llvm.dbg.value(metadata i8* %95, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %118, !dbg !1203

96:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 7, metadata !1082, metadata !DIExpression()), !dbg !1159
  %97 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1204
  call void @llvm.dbg.value(metadata i8* %97, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %118, !dbg !1205

98:                                               ; preds = %67, %113
  %99 = phi i8 [ %117, %113 ], [ %73, %67 ], !dbg !1206
  %100 = phi i8* [ %116, %113 ], [ %72, %67 ], !dbg !1159
  %101 = phi i32 [ %114, %113 ], [ 0, %67 ], !dbg !1209
  %102 = phi i8 [ %115, %113 ], [ 1, %67 ], !dbg !1210
  call void @llvm.dbg.value(metadata i8 %102, metadata !1084, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %101, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %100, metadata !1075, metadata !DIExpression()), !dbg !1092
  switch i8 %99, label %118 [
    i8 114, label %103
    i8 119, label %105
    i8 120, label %107
    i8 88, label %113
    i8 115, label %109
    i8 116, label %111
  ], !dbg !1211

103:                                              ; preds = %98
  %104 = or i32 %101, 292, !dbg !1212
  call void @llvm.dbg.value(metadata i32 %104, metadata !1082, metadata !DIExpression()), !dbg !1159
  br label %113, !dbg !1214

105:                                              ; preds = %98
  %106 = or i32 %101, 146, !dbg !1215
  call void @llvm.dbg.value(metadata i32 %106, metadata !1082, metadata !DIExpression()), !dbg !1159
  br label %113, !dbg !1216

107:                                              ; preds = %98
  %108 = or i32 %101, 73, !dbg !1217
  call void @llvm.dbg.value(metadata i32 %108, metadata !1082, metadata !DIExpression()), !dbg !1159
  br label %113, !dbg !1218

109:                                              ; preds = %98
  %110 = or i32 %101, 3072, !dbg !1219
  call void @llvm.dbg.value(metadata i32 %110, metadata !1082, metadata !DIExpression()), !dbg !1159
  br label %113, !dbg !1220

111:                                              ; preds = %98
  %112 = or i32 %101, 512, !dbg !1221
  call void @llvm.dbg.value(metadata i32 %112, metadata !1082, metadata !DIExpression()), !dbg !1159
  br label %113, !dbg !1222

113:                                              ; preds = %98, %103, %105, %107, %109, %111
  %114 = phi i32 [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %101, %98 ], !dbg !1209
  %115 = phi i8 [ %102, %111 ], [ %102, %109 ], [ %102, %107 ], [ %102, %105 ], [ %102, %103 ], [ 2, %98 ], !dbg !1209
  call void @llvm.dbg.value(metadata i8 %115, metadata !1084, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %114, metadata !1082, metadata !DIExpression()), !dbg !1159
  %116 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1223
  call void @llvm.dbg.value(metadata i8* %116, metadata !1075, metadata !DIExpression()), !dbg !1092
  %117 = load i8, i8* %116, align 1, !dbg !1206, !tbaa !544
  br label %98, !dbg !1224, !llvm.loop !1225

118:                                              ; preds = %98, %91, %91, %96, %94, %92
  %119 = phi i8* [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %80, %91 ], [ %80, %91 ], [ %100, %98 ], !dbg !1159
  %120 = phi i32 [ %71, %96 ], [ %71, %94 ], [ %71, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ %71, %98 ], !dbg !1178
  %121 = phi i32 [ 7, %96 ], [ 56, %94 ], [ 448, %92 ], [ %83, %91 ], [ %83, %91 ], [ %101, %98 ]
  %122 = phi i1 [ true, %96 ], [ true, %94 ], [ true, %92 ], [ false, %91 ], [ false, %91 ], [ true, %98 ], !dbg !1228
  %123 = phi i32 [ 0, %96 ], [ 0, %94 ], [ 0, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ 0, %98 ], !dbg !1228
  %124 = phi i8 [ 3, %96 ], [ 3, %94 ], [ 3, %92 ], [ 1, %91 ], [ 1, %91 ], [ %102, %98 ], !dbg !1159
  call void @llvm.dbg.value(metadata i8 %124, metadata !1084, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %123, metadata !1083, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %121, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %120, metadata !1076, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* %119, metadata !1075, metadata !DIExpression()), !dbg !1092
  %125 = add i64 %69, 1, !dbg !1229
  call void @llvm.dbg.value(metadata i64 %125, metadata !1074, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata !DIArgList(%struct.mode_change* %45, i64 %69), metadata !1088, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1159
  %126 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 0, !dbg !1230
  store i8 %68, i8* %126, align 4, !dbg !1231, !tbaa !1127
  %127 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 1, !dbg !1232
  store i8 %124, i8* %127, align 1, !dbg !1233, !tbaa !1131
  %128 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 2, !dbg !1234
  store i32 %120, i32* %128, align 4, !dbg !1235, !tbaa !1134
  %129 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 3, !dbg !1236
  store i32 %121, i32* %129, align 4, !dbg !1237, !tbaa !1137
  %130 = icmp eq i32 %120, 0, !dbg !1238
  %131 = select i1 %130, i32 -1, i32 %120, !dbg !1238
  %132 = and i32 %131, %121, !dbg !1238
  %133 = select i1 %122, i32 %132, i32 %123, !dbg !1238
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 4, !dbg !1239
  store i32 %133, i32* %134, align 4, !dbg !1240, !tbaa !1140
  call void @llvm.dbg.value(metadata i32 undef, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i32 %71, metadata !1076, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8* %80, metadata !1075, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %69, metadata !1074, metadata !DIExpression()), !dbg !1092
  %135 = load i8, i8* %119, align 1, !dbg !1241, !tbaa !544
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1242

136:                                              ; preds = %118, %118, %118
  br label %67, !dbg !1159

137:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 undef, metadata !1082, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8* %119, metadata !1075, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i64 %125, metadata !1074, metadata !DIExpression()), !dbg !1092
  %138 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1243
  call void @llvm.dbg.value(metadata i8* %138, metadata !1075, metadata !DIExpression()), !dbg !1092
  br label %52, !dbg !1244, !llvm.loop !1245

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %125, i32 1, !dbg !1248
  store i8 0, i8* %140, align 1, !dbg !1251, !tbaa !1131
  br label %142, !dbg !1252

141:                                              ; preds = %55, %89, %91, %118, %75
  call void @llvm.dbg.label(metadata !1091), !dbg !1253
  tail call void @free(i8* noundef nonnull %44) #32, !dbg !1254
  br label %142, !dbg !1255

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi %struct.mode_change* [ %30, %21 ], [ null, %19 ], [ null, %141 ], [ %45, %139 ], [ null, %5 ]
  ret %struct.mode_change* %143, !dbg !1256
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !1257 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1259, metadata !DIExpression()), !dbg !1295
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1296
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1296
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1260, metadata !DIExpression()), !dbg !1297
  %4 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #32, !dbg !1298
  %5 = icmp eq i32 %4, 0, !dbg !1300
  br i1 %5, label %6, label %19, !dbg !1301

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1302
  %8 = load i32, i32* %7, align 8, !dbg !1302, !tbaa !1303
  call void @llvm.dbg.value(metadata i32 %8, metadata !1116, metadata !DIExpression()) #32, !dbg !1306
  call void @llvm.dbg.value(metadata i32 4095, metadata !1121, metadata !DIExpression()) #32, !dbg !1306
  %9 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1308
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1308
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1122, metadata !DIExpression()) #32, !dbg !1306
  store i8 61, i8* %9, align 4, !dbg !1309, !tbaa !1127
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1310
  store i8 1, i8* %11, align 1, !dbg !1311, !tbaa !1131
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1312
  %13 = bitcast i8* %12 to i32*, !dbg !1312
  store i32 4095, i32* %13, align 4, !dbg !1313, !tbaa !1134
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1314
  %15 = bitcast i8* %14 to i32*, !dbg !1314
  store i32 %8, i32* %15, align 4, !dbg !1315, !tbaa !1137
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1316
  %17 = bitcast i8* %16 to i32*, !dbg !1316
  store i32 4095, i32* %17, align 4, !dbg !1317, !tbaa !1140
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1318
  store i8 0, i8* %18, align 1, !dbg !1319, !tbaa !1131
  br label %19, !dbg !1320

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1295
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1321
  ret %struct.mode_change* %20, !dbg !1321
}

; Function Attrs: nofree nounwind
declare !dbg !1322 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* nocapture noundef readonly %3, i32* noundef writeonly %4) local_unnamed_addr #18 !dbg !1327 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1334, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i1 %1, metadata !1335, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %2, metadata !1336, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1337, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32* %4, metadata !1338, metadata !DIExpression()), !dbg !1350
  %6 = and i32 %0, 4095, !dbg !1351
  call void @llvm.dbg.value(metadata i32 %6, metadata !1339, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 0, metadata !1340, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1337, metadata !DIExpression()), !dbg !1350
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1352
  %8 = load i8, i8* %7, align 1, !dbg !1352, !tbaa !1131
  %9 = icmp eq i8 %8, 0, !dbg !1353
  br i1 %9, label %79, label %10, !dbg !1354

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1354

14:                                               ; preds = %10, %72
  %15 = phi i8 [ %8, %10 ], [ %77, %72 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %75, %72 ]
  %17 = phi i32 [ %6, %10 ], [ %74, %72 ]
  %18 = phi i32 [ 0, %10 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1337, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %17, metadata !1339, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %18, metadata !1340, metadata !DIExpression()), !dbg !1350
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1355
  %20 = load i32, i32* %19, align 4, !dbg !1355, !tbaa !1134
  call void @llvm.dbg.value(metadata i32 %20, metadata !1341, metadata !DIExpression()), !dbg !1356
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1357
  %22 = load i32, i32* %21, align 4, !dbg !1357, !tbaa !1140
  %23 = xor i32 %22, -1, !dbg !1358
  %24 = and i32 %11, %23, !dbg !1359
  call void @llvm.dbg.value(metadata i32 %24, metadata !1345, metadata !DIExpression()), !dbg !1356
  %25 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1360
  %26 = load i32, i32* %25, align 4, !dbg !1360, !tbaa !1137
  call void @llvm.dbg.value(metadata i32 %26, metadata !1346, metadata !DIExpression()), !dbg !1356
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1361

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1362
  call void @llvm.dbg.value(metadata i32 %28, metadata !1346, metadata !DIExpression()), !dbg !1356
  %29 = and i32 %28, 292, !dbg !1364
  %30 = icmp eq i32 %29, 0, !dbg !1365
  %31 = select i1 %30, i32 0, i32 292, !dbg !1365
  %32 = and i32 %28, 146, !dbg !1366
  %33 = icmp eq i32 %32, 0, !dbg !1367
  %34 = select i1 %33, i32 0, i32 146, !dbg !1367
  %35 = and i32 %28, 73, !dbg !1368
  %36 = icmp eq i32 %35, 0, !dbg !1369
  %37 = select i1 %36, i32 0, i32 73, !dbg !1369
  %38 = or i32 %34, %28, !dbg !1370
  %39 = or i32 %38, %31, !dbg !1371
  %40 = or i32 %39, %37, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %40, metadata !1346, metadata !DIExpression()), !dbg !1356
  br label %47, !dbg !1373

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1374
  %43 = or i32 %42, %12, !dbg !1376
  %44 = icmp eq i32 %43, 0, !dbg !1376
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1377
  br label %47, !dbg !1377

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1356
  call void @llvm.dbg.value(metadata i32 %48, metadata !1346, metadata !DIExpression()), !dbg !1356
  %49 = icmp eq i32 %20, 0, !dbg !1378
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1378
  %51 = xor i32 %24, -1, !dbg !1379
  %52 = and i32 %50, %51, !dbg !1380
  %53 = and i32 %52, %48, !dbg !1381
  call void @llvm.dbg.value(metadata i32 %53, metadata !1346, metadata !DIExpression()), !dbg !1356
  %54 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1382
  %55 = load i8, i8* %54, align 4, !dbg !1382, !tbaa !1127
  switch i8 %55, label %72 [
    i8 61, label %56
    i8 43, label %65
    i8 45, label %68
  ], !dbg !1383

56:                                               ; preds = %47
  %57 = xor i32 %20, -1, !dbg !1384
  %58 = select i1 %49, i32 0, i32 %57, !dbg !1384
  %59 = or i32 %58, %24, !dbg !1385
  call void @llvm.dbg.value(metadata i32 %59, metadata !1347, metadata !DIExpression()), !dbg !1386
  %60 = and i32 %59, 4095, !dbg !1387
  %61 = xor i32 %60, 4095, !dbg !1387
  %62 = or i32 %61, %18, !dbg !1388
  call void @llvm.dbg.value(metadata i32 %62, metadata !1340, metadata !DIExpression()), !dbg !1350
  %63 = and i32 %59, %17, !dbg !1389
  %64 = or i32 %53, %63, !dbg !1390
  call void @llvm.dbg.value(metadata i32 %64, metadata !1339, metadata !DIExpression()), !dbg !1350
  br label %72

65:                                               ; preds = %47
  %66 = or i32 %53, %18, !dbg !1391
  call void @llvm.dbg.value(metadata i32 %66, metadata !1340, metadata !DIExpression()), !dbg !1350
  %67 = or i32 %53, %17, !dbg !1392
  call void @llvm.dbg.value(metadata i32 %67, metadata !1339, metadata !DIExpression()), !dbg !1350
  br label %72, !dbg !1393

68:                                               ; preds = %47
  %69 = or i32 %53, %18, !dbg !1394
  call void @llvm.dbg.value(metadata i32 %69, metadata !1340, metadata !DIExpression()), !dbg !1350
  %70 = xor i32 %53, -1, !dbg !1395
  %71 = and i32 %17, %70, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %71, metadata !1339, metadata !DIExpression()), !dbg !1350
  br label %72, !dbg !1397

72:                                               ; preds = %47, %68, %65, %56
  %73 = phi i32 [ %18, %47 ], [ %69, %68 ], [ %66, %65 ], [ %62, %56 ], !dbg !1350
  %74 = phi i32 [ %17, %47 ], [ %71, %68 ], [ %67, %65 ], [ %64, %56 ], !dbg !1350
  call void @llvm.dbg.value(metadata i32 %74, metadata !1339, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.value(metadata i32 %73, metadata !1340, metadata !DIExpression()), !dbg !1350
  %75 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1398
  call void @llvm.dbg.value(metadata %struct.mode_change* %75, metadata !1337, metadata !DIExpression()), !dbg !1350
  %76 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1352
  %77 = load i8, i8* %76, align 1, !dbg !1352, !tbaa !1131
  %78 = icmp eq i8 %77, 0, !dbg !1353
  br i1 %78, label %79, label %14, !dbg !1354, !llvm.loop !1399

79:                                               ; preds = %72, %5
  %80 = phi i32 [ 0, %5 ], [ %73, %72 ], !dbg !1401
  %81 = phi i32 [ %6, %5 ], [ %74, %72 ], !dbg !1402
  %82 = icmp eq i32* %4, null, !dbg !1403
  br i1 %82, label %84, label %83, !dbg !1405

83:                                               ; preds = %79
  store i32 %80, i32* %4, align 4, !dbg !1406, !tbaa !535
  br label %84, !dbg !1407

84:                                               ; preds = %83, %79
  ret i32 %81, !dbg !1408
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1409 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1411, metadata !DIExpression()), !dbg !1414
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1415
  call void @llvm.dbg.value(metadata i8* %2, metadata !1412, metadata !DIExpression()), !dbg !1414
  %3 = icmp eq i8* %2, null, !dbg !1416
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1416
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1416
  call void @llvm.dbg.value(metadata i8* %5, metadata !1413, metadata !DIExpression()), !dbg !1414
  %6 = ptrtoint i8* %5 to i64, !dbg !1417
  %7 = ptrtoint i8* %0 to i64, !dbg !1417
  %8 = sub i64 %6, %7, !dbg !1417
  %9 = icmp sgt i64 %8, 6, !dbg !1419
  br i1 %9, label %10, label %19, !dbg !1420

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1421
  call void @llvm.dbg.value(metadata i8* %11, metadata !1422, metadata !DIExpression()) #32, !dbg !1429
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), metadata !1427, metadata !DIExpression()) #32, !dbg !1429
  call void @llvm.dbg.value(metadata i64 7, metadata !1428, metadata !DIExpression()) #32, !dbg !1429
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i64 0, i64 0), i64 7) #32, !dbg !1431
  %13 = icmp eq i32 %12, 0, !dbg !1432
  br i1 %13, label %14, label %19, !dbg !1433

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1411, metadata !DIExpression()), !dbg !1414
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.63, i64 0, i64 0), i64 noundef 3) #33, !dbg !1434
  %16 = icmp eq i32 %15, 0, !dbg !1437
  %17 = select i1 %16, i64 3, i64 0, !dbg !1438
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1438
  br label %19, !dbg !1438

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1414
  call void @llvm.dbg.value(metadata i8* %21, metadata !1413, metadata !DIExpression()), !dbg !1414
  call void @llvm.dbg.value(metadata i8* %20, metadata !1411, metadata !DIExpression()), !dbg !1414
  store i8* %20, i8** @program_name, align 8, !dbg !1439, !tbaa !443
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1440, !tbaa !443
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1441, !tbaa !443
  ret void, !dbg !1442
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !208 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !215, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata i8* %1, metadata !216, metadata !DIExpression()), !dbg !1443
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1444
  call void @llvm.dbg.value(metadata i8* %5, metadata !217, metadata !DIExpression()), !dbg !1443
  %6 = icmp eq i8* %5, %0, !dbg !1445
  br i1 %6, label %7, label %17, !dbg !1447

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1448
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1448
  %10 = bitcast i64* %4 to i8*, !dbg !1449
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1449
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !223, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1451, metadata !DIExpression()) #32, !dbg !1458
  call void @llvm.dbg.value(metadata i8* %10, metadata !1460, metadata !DIExpression()) #32, !dbg !1468
  call void @llvm.dbg.value(metadata i32 0, metadata !1466, metadata !DIExpression()) #32, !dbg !1468
  call void @llvm.dbg.value(metadata i64 8, metadata !1467, metadata !DIExpression()) #32, !dbg !1468
  store i64 0, i64* %4, align 8, !dbg !1470
  call void @llvm.dbg.value(metadata i32* %3, metadata !218, metadata !DIExpression(DW_OP_deref)), !dbg !1443
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1471
  %12 = icmp eq i64 %11, 2, !dbg !1473
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !218, metadata !DIExpression()), !dbg !1443
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1474
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1443
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1475
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1475
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1443
  ret i8* %18, !dbg !1475
}

; Function Attrs: nounwind
declare !dbg !1476 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1482 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1487, metadata !DIExpression()), !dbg !1490
  %2 = tail call i32* @__errno_location() #35, !dbg !1491
  %3 = load i32, i32* %2, align 4, !dbg !1491, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %3, metadata !1488, metadata !DIExpression()), !dbg !1490
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1492
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1492
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1492
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1493
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1493
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1489, metadata !DIExpression()), !dbg !1490
  store i32 %3, i32* %2, align 4, !dbg !1494, !tbaa !535
  ret %struct.quoting_options* %8, !dbg !1495
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1496 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1502, metadata !DIExpression()), !dbg !1503
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1504
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1504
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1505
  %5 = load i32, i32* %4, align 8, !dbg !1505, !tbaa !1506
  ret i32 %5, !dbg !1508
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1509 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1513, metadata !DIExpression()), !dbg !1515
  call void @llvm.dbg.value(metadata i32 %1, metadata !1514, metadata !DIExpression()), !dbg !1515
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1516
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1516
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1517
  store i32 %1, i32* %5, align 8, !dbg !1518, !tbaa !1506
  ret void, !dbg !1519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1520 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1524, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %2, metadata !1526, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()), !dbg !1532
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1533
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1533
  %6 = lshr i8 %1, 5, !dbg !1534
  %7 = zext i8 %6 to i64, !dbg !1534
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1535
  call void @llvm.dbg.value(metadata i32* %8, metadata !1528, metadata !DIExpression()), !dbg !1532
  %9 = and i8 %1, 31, !dbg !1536
  %10 = zext i8 %9 to i32, !dbg !1536
  call void @llvm.dbg.value(metadata i32 %10, metadata !1530, metadata !DIExpression()), !dbg !1532
  %11 = load i32, i32* %8, align 4, !dbg !1537, !tbaa !535
  %12 = lshr i32 %11, %10, !dbg !1538
  %13 = and i32 %12, 1, !dbg !1539
  call void @llvm.dbg.value(metadata i32 %13, metadata !1531, metadata !DIExpression()), !dbg !1532
  %14 = and i32 %2, 1, !dbg !1540
  %15 = xor i32 %13, %14, !dbg !1541
  %16 = shl i32 %15, %10, !dbg !1542
  %17 = xor i32 %16, %11, !dbg !1543
  store i32 %17, i32* %8, align 4, !dbg !1543, !tbaa !535
  ret i32 %13, !dbg !1544
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1545 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1549, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i32 %1, metadata !1550, metadata !DIExpression()), !dbg !1552
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1553
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1555
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1549, metadata !DIExpression()), !dbg !1552
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1556
  %6 = load i32, i32* %5, align 4, !dbg !1556, !tbaa !1557
  call void @llvm.dbg.value(metadata i32 %6, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 %1, i32* %5, align 4, !dbg !1558, !tbaa !1557
  ret i32 %6, !dbg !1559
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1560 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1564, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %1, metadata !1565, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression()), !dbg !1567
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1568
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1564, metadata !DIExpression()), !dbg !1567
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1571
  store i32 10, i32* %6, align 8, !dbg !1572, !tbaa !1506
  %7 = icmp ne i8* %1, null, !dbg !1573
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1575
  br i1 %9, label %11, label %10, !dbg !1575

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1576
  unreachable, !dbg !1576

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1577
  store i8* %1, i8** %12, align 8, !dbg !1578, !tbaa !1579
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1580
  store i8* %2, i8** %13, align 8, !dbg !1581, !tbaa !1582
  ret void, !dbg !1583
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1584 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1588, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %1, metadata !1589, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i8* %2, metadata !1590, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i64 %3, metadata !1591, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1592, metadata !DIExpression()), !dbg !1596
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1597
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1597
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1593, metadata !DIExpression()), !dbg !1596
  %8 = tail call i32* @__errno_location() #35, !dbg !1598
  %9 = load i32, i32* %8, align 4, !dbg !1598, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %9, metadata !1594, metadata !DIExpression()), !dbg !1596
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1599
  %11 = load i32, i32* %10, align 8, !dbg !1599, !tbaa !1506
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1600
  %13 = load i32, i32* %12, align 4, !dbg !1600, !tbaa !1557
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1601
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1602
  %16 = load i8*, i8** %15, align 8, !dbg !1602, !tbaa !1579
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1603
  %18 = load i8*, i8** %17, align 8, !dbg !1603, !tbaa !1582
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1604
  call void @llvm.dbg.value(metadata i64 %19, metadata !1595, metadata !DIExpression()), !dbg !1596
  store i32 %9, i32* %8, align 4, !dbg !1605, !tbaa !535
  ret i64 %19, !dbg !1606
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1607 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1613, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %1, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %2, metadata !1615, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %3, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %4, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %5, metadata !1618, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32* %6, metadata !1619, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %7, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %8, metadata !1621, metadata !DIExpression()), !dbg !1675
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1676
  %18 = icmp eq i64 %17, 1, !dbg !1677
  call void @llvm.dbg.value(metadata i1 %18, metadata !1622, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* null, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %5, metadata !1628, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1630, metadata !DIExpression()), !dbg !1675
  %19 = and i32 %5, 2, !dbg !1678
  %20 = icmp ne i32 %19, 0, !dbg !1678
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
  br label %36, !dbg !1678

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1679
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1680
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1681
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %43, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %42, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %41, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %40, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %39, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %38, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %37, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1668), !dbg !1682
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
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
  ], !dbg !1683

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1675
  br label %111, !dbg !1684

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 5, metadata !1617, metadata !DIExpression()), !dbg !1675
  br i1 %45, label %111, label %51, !dbg !1684

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1685
  br i1 %52, label %111, label %53, !dbg !1689

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1685, !tbaa !544
  br label %111, !dbg !1685

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1690
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1690
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), i32 noundef 5) #32, !dbg !1694
  call void @llvm.dbg.value(metadata i8* %55, metadata !287, metadata !DIExpression()) #32, !dbg !1690
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.76, i64 0, i64 0), !dbg !1695
  br i1 %56, label %57, label %66, !dbg !1697

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1698
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1699
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !289, metadata !DIExpression()) #32, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1701, metadata !DIExpression()) #32, !dbg !1707
  call void @llvm.dbg.value(metadata i8* %23, metadata !1709, metadata !DIExpression()) #32, !dbg !1714
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()) #32, !dbg !1714
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()) #32, !dbg !1714
  store i64 0, i64* %13, align 8, !dbg !1716
  call void @llvm.dbg.value(metadata i32* %12, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1690
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1717
  %59 = icmp eq i64 %58, 3, !dbg !1719
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !288, metadata !DIExpression()) #32, !dbg !1690
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1720
  %63 = icmp eq i32 %37, 9, !dbg !1720
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1720
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1720
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1721
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1721
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1690
  call void @llvm.dbg.value(metadata i8* %67, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), metadata !285, metadata !DIExpression()) #32, !dbg !1722
  call void @llvm.dbg.value(metadata i32 %37, metadata !286, metadata !DIExpression()) #32, !dbg !1722
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.77, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), i32 noundef 5) #32, !dbg !1724
  call void @llvm.dbg.value(metadata i8* %68, metadata !287, metadata !DIExpression()) #32, !dbg !1722
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1725
  br i1 %69, label %70, label %79, !dbg !1726

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1727
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1728
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !289, metadata !DIExpression()) #32, !dbg !1729
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1701, metadata !DIExpression()) #32, !dbg !1730
  call void @llvm.dbg.value(metadata i8* %26, metadata !1709, metadata !DIExpression()) #32, !dbg !1732
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()) #32, !dbg !1732
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()) #32, !dbg !1732
  store i64 0, i64* %11, align 8, !dbg !1734
  call void @llvm.dbg.value(metadata i32* %10, metadata !288, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1722
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1735
  %72 = icmp eq i64 %71, 3, !dbg !1736
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !288, metadata !DIExpression()) #32, !dbg !1722
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1737
  %76 = icmp eq i32 %37, 9, !dbg !1737
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), !dbg !1737
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1737
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1738
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1738
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %80, metadata !1620, metadata !DIExpression()), !dbg !1675
  br i1 %45, label %97, label %82, !dbg !1739

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1632, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 0, metadata !1623, metadata !DIExpression()), !dbg !1675
  %83 = load i8, i8* %80, align 1, !dbg !1741, !tbaa !544
  %84 = icmp eq i8 %83, 0, !dbg !1743
  br i1 %84, label %97, label %85, !dbg !1743

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1632, metadata !DIExpression()), !dbg !1740
  call void @llvm.dbg.value(metadata i64 %88, metadata !1623, metadata !DIExpression()), !dbg !1675
  %89 = icmp ult i64 %88, %48, !dbg !1744
  br i1 %89, label %90, label %92, !dbg !1747

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1744
  store i8 %86, i8* %91, align 1, !dbg !1744, !tbaa !544
  br label %92, !dbg !1744

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1747
  call void @llvm.dbg.value(metadata i64 %93, metadata !1623, metadata !DIExpression()), !dbg !1675
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1748
  call void @llvm.dbg.value(metadata i8* %94, metadata !1632, metadata !DIExpression()), !dbg !1740
  %95 = load i8, i8* %94, align 1, !dbg !1741, !tbaa !544
  %96 = icmp eq i8 %95, 0, !dbg !1743
  br i1 %96, label %97, label %85, !dbg !1743, !llvm.loop !1749

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %98, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %81, metadata !1625, metadata !DIExpression()), !dbg !1675
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %99, metadata !1626, metadata !DIExpression()), !dbg !1675
  br label %111, !dbg !1753

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1627, metadata !DIExpression()), !dbg !1675
  br label %102, !dbg !1754

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  br i1 %45, label %102, label %105, !dbg !1755

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 2, metadata !1617, metadata !DIExpression()), !dbg !1675
  br label %111, !dbg !1756

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 2, metadata !1617, metadata !DIExpression()), !dbg !1675
  br i1 %45, label %111, label %105, !dbg !1756

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1757
  br i1 %107, label %111, label %108, !dbg !1761

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1757, !tbaa !544
  br label %111, !dbg !1757

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1628, metadata !DIExpression()), !dbg !1675
  br label %111, !dbg !1762

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1763
  unreachable, !dbg !1763

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1751
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.78, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.79, i64 0, i64 0), %102 ], !dbg !1675
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1675
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1628, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1627, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %117, metadata !1626, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %116, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %115, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %114, metadata !1621, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8* %113, metadata !1620, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i32 %112, metadata !1617, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 0, metadata !1637, metadata !DIExpression()), !dbg !1764
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
  br label %132, !dbg !1765

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1751
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1679
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1764
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %139, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %135, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %134, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %133, metadata !1616, metadata !DIExpression()), !dbg !1675
  %141 = icmp eq i64 %133, -1, !dbg !1766
  br i1 %141, label %142, label %146, !dbg !1767

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1768
  %144 = load i8, i8* %143, align 1, !dbg !1768, !tbaa !544
  %145 = icmp eq i8 %144, 0, !dbg !1769
  br i1 %145, label %596, label %148, !dbg !1770

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1771
  br i1 %147, label %596, label %148, !dbg !1770

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 0, metadata !1643, metadata !DIExpression()), !dbg !1772
  br i1 %123, label %149, label %163, !dbg !1773

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1775
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1776
  br i1 %151, label %152, label %154, !dbg !1776

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1777
  call void @llvm.dbg.value(metadata i64 %153, metadata !1616, metadata !DIExpression()), !dbg !1675
  br label %154, !dbg !1778

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1778
  call void @llvm.dbg.value(metadata i64 %155, metadata !1616, metadata !DIExpression()), !dbg !1675
  %156 = icmp ugt i64 %150, %155, !dbg !1779
  br i1 %156, label %163, label %157, !dbg !1780

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1781
  call void @llvm.dbg.value(metadata i8* %158, metadata !1782, metadata !DIExpression()) #32, !dbg !1787
  call void @llvm.dbg.value(metadata i8* %116, metadata !1785, metadata !DIExpression()) #32, !dbg !1787
  call void @llvm.dbg.value(metadata i64 %117, metadata !1786, metadata !DIExpression()) #32, !dbg !1787
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1789
  %160 = icmp ne i32 %159, 0, !dbg !1790
  %161 = or i1 %160, %125, !dbg !1791
  %162 = xor i1 %160, true, !dbg !1791
  br i1 %161, label %163, label %647, !dbg !1791

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %164, metadata !1616, metadata !DIExpression()), !dbg !1675
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1792
  %167 = load i8, i8* %166, align 1, !dbg !1792, !tbaa !544
  call void @llvm.dbg.value(metadata i8 %167, metadata !1644, metadata !DIExpression()), !dbg !1772
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
  ], !dbg !1793

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1794

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1795

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1772
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1799
  br i1 %171, label %188, label %172, !dbg !1799

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1801
  br i1 %173, label %174, label %176, !dbg !1805

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1801
  store i8 39, i8* %175, align 1, !dbg !1801, !tbaa !544
  br label %176, !dbg !1801

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1805
  call void @llvm.dbg.value(metadata i64 %177, metadata !1623, metadata !DIExpression()), !dbg !1675
  %178 = icmp ult i64 %177, %140, !dbg !1806
  br i1 %178, label %179, label %181, !dbg !1809

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1806
  store i8 36, i8* %180, align 1, !dbg !1806, !tbaa !544
  br label %181, !dbg !1806

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1809
  call void @llvm.dbg.value(metadata i64 %182, metadata !1623, metadata !DIExpression()), !dbg !1675
  %183 = icmp ult i64 %182, %140, !dbg !1810
  br i1 %183, label %184, label %186, !dbg !1813

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1810
  store i8 39, i8* %185, align 1, !dbg !1810, !tbaa !544
  br label %186, !dbg !1810

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1813
  call void @llvm.dbg.value(metadata i64 %187, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %188, !dbg !1814

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1675
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %189, metadata !1623, metadata !DIExpression()), !dbg !1675
  %191 = icmp ult i64 %189, %140, !dbg !1815
  br i1 %191, label %192, label %194, !dbg !1818

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1815
  store i8 92, i8* %193, align 1, !dbg !1815, !tbaa !544
  br label %194, !dbg !1815

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1818
  call void @llvm.dbg.value(metadata i64 %195, metadata !1623, metadata !DIExpression()), !dbg !1675
  br i1 %120, label %196, label %499, !dbg !1819

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1821
  %198 = icmp ult i64 %197, %164, !dbg !1822
  br i1 %198, label %199, label %456, !dbg !1823

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1824
  %201 = load i8, i8* %200, align 1, !dbg !1824, !tbaa !544
  %202 = add i8 %201, -48, !dbg !1825
  %203 = icmp ult i8 %202, 10, !dbg !1825
  br i1 %203, label %204, label %456, !dbg !1825

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1826
  br i1 %205, label %206, label %208, !dbg !1830

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1826
  store i8 48, i8* %207, align 1, !dbg !1826, !tbaa !544
  br label %208, !dbg !1826

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1830
  call void @llvm.dbg.value(metadata i64 %209, metadata !1623, metadata !DIExpression()), !dbg !1675
  %210 = icmp ult i64 %209, %140, !dbg !1831
  br i1 %210, label %211, label %213, !dbg !1834

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1831
  store i8 48, i8* %212, align 1, !dbg !1831, !tbaa !544
  br label %213, !dbg !1831

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1834
  call void @llvm.dbg.value(metadata i64 %214, metadata !1623, metadata !DIExpression()), !dbg !1675
  br label %456, !dbg !1835

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1836

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1837

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1838

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1840

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1842
  %221 = icmp ult i64 %220, %164, !dbg !1843
  br i1 %221, label %222, label %456, !dbg !1844

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1845
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1846
  %225 = load i8, i8* %224, align 1, !dbg !1846, !tbaa !544
  %226 = icmp eq i8 %225, 63, !dbg !1847
  br i1 %226, label %227, label %456, !dbg !1848

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1849
  %229 = load i8, i8* %228, align 1, !dbg !1849, !tbaa !544
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
  ], !dbg !1850

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1851

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %220, metadata !1637, metadata !DIExpression()), !dbg !1764
  %232 = icmp ult i64 %134, %140, !dbg !1853
  br i1 %232, label %233, label %235, !dbg !1856

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1853
  store i8 63, i8* %234, align 1, !dbg !1853, !tbaa !544
  br label %235, !dbg !1853

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1856
  call void @llvm.dbg.value(metadata i64 %236, metadata !1623, metadata !DIExpression()), !dbg !1675
  %237 = icmp ult i64 %236, %140, !dbg !1857
  br i1 %237, label %238, label %240, !dbg !1860

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1857
  store i8 34, i8* %239, align 1, !dbg !1857, !tbaa !544
  br label %240, !dbg !1857

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %241, metadata !1623, metadata !DIExpression()), !dbg !1675
  %242 = icmp ult i64 %241, %140, !dbg !1861
  br i1 %242, label %243, label %245, !dbg !1864

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1861
  store i8 34, i8* %244, align 1, !dbg !1861, !tbaa !544
  br label %245, !dbg !1861

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %246, metadata !1623, metadata !DIExpression()), !dbg !1675
  %247 = icmp ult i64 %246, %140, !dbg !1865
  br i1 %247, label %248, label %250, !dbg !1868

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1865
  store i8 63, i8* %249, align 1, !dbg !1865, !tbaa !544
  br label %250, !dbg !1865

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %251, metadata !1623, metadata !DIExpression()), !dbg !1675
  br label %456, !dbg !1869

252:                                              ; preds = %163
  br label %263, !dbg !1870

253:                                              ; preds = %163
  br label %263, !dbg !1871

254:                                              ; preds = %163
  br label %261, !dbg !1872

255:                                              ; preds = %163
  br label %261, !dbg !1873

256:                                              ; preds = %163
  br label %263, !dbg !1874

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !1875

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !1876

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !1879

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !1881

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !1882
  call void @llvm.dbg.label(metadata !1669), !dbg !1883
  br i1 %128, label %263, label %638, !dbg !1884

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !1882
  call void @llvm.dbg.label(metadata !1671), !dbg !1886
  br i1 %118, label %510, label %467, !dbg !1887

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !1888

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !1889, !tbaa !544
  %268 = icmp eq i8 %267, 0, !dbg !1891
  br i1 %268, label %269, label %456, !dbg !1892

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !1893
  br i1 %270, label %271, label %456, !dbg !1895

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1772
  br label %272, !dbg !1896

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1643, metadata !DIExpression()), !dbg !1772
  br i1 %126, label %274, label %456, !dbg !1897

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !1899

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1643, metadata !DIExpression()), !dbg !1772
  br i1 %126, label %276, label %456, !dbg !1900

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !1901

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !1904
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !1906
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !1906
  %282 = select i1 %280, i64 %140, i64 0, !dbg !1906
  call void @llvm.dbg.value(metadata i64 %282, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %281, metadata !1624, metadata !DIExpression()), !dbg !1675
  %283 = icmp ult i64 %134, %282, !dbg !1907
  br i1 %283, label %284, label %286, !dbg !1910

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1907
  store i8 39, i8* %285, align 1, !dbg !1907, !tbaa !544
  br label %286, !dbg !1907

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %287, metadata !1623, metadata !DIExpression()), !dbg !1675
  %288 = icmp ult i64 %287, %282, !dbg !1911
  br i1 %288, label %289, label %291, !dbg !1914

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !1911
  store i8 92, i8* %290, align 1, !dbg !1911, !tbaa !544
  br label %291, !dbg !1911

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !1914
  call void @llvm.dbg.value(metadata i64 %292, metadata !1623, metadata !DIExpression()), !dbg !1675
  %293 = icmp ult i64 %292, %282, !dbg !1915
  br i1 %293, label %294, label %296, !dbg !1918

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !1915
  store i8 39, i8* %295, align 1, !dbg !1915, !tbaa !544
  br label %296, !dbg !1915

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %297, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %456, !dbg !1919

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !1920

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1645, metadata !DIExpression()), !dbg !1921
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !1922
  %301 = load i16*, i16** %300, align 8, !dbg !1922, !tbaa !443
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !1922
  %304 = load i16, i16* %303, align 2, !dbg !1922, !tbaa !569
  %305 = and i16 %304, 16384, !dbg !1922
  %306 = icmp ne i16 %305, 0, !dbg !1924
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %349, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %312, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i1 %350, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  br label %352, !dbg !1925

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1926
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1649, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1701, metadata !DIExpression()) #32, !dbg !1928
  call void @llvm.dbg.value(metadata i8* %32, metadata !1709, metadata !DIExpression()) #32, !dbg !1930
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()) #32, !dbg !1930
  call void @llvm.dbg.value(metadata i64 8, metadata !1713, metadata !DIExpression()) #32, !dbg !1930
  store i64 0, i64* %14, align 8, !dbg !1932
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 1, metadata !1648, metadata !DIExpression()), !dbg !1921
  %308 = icmp eq i64 %164, -1, !dbg !1933
  br i1 %308, label %309, label %311, !dbg !1935

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1936
  call void @llvm.dbg.value(metadata i64 %310, metadata !1616, metadata !DIExpression()), !dbg !1675
  br label %311, !dbg !1937

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1772
  call void @llvm.dbg.value(metadata i64 %312, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1938
  %313 = sub i64 %312, %139, !dbg !1939
  call void @llvm.dbg.value(metadata i32* %16, metadata !1652, metadata !DIExpression(DW_OP_deref)), !dbg !1940
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !1941
  call void @llvm.dbg.value(metadata i64 %314, metadata !1656, metadata !DIExpression()), !dbg !1940
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !1942

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  %316 = icmp ugt i64 %312, %139, !dbg !1943
  br i1 %316, label %319, label %317, !dbg !1945

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %349, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %312, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i1 %350, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  br label %352, !dbg !1925

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1921
  br label %346, !dbg !1948

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1645, metadata !DIExpression()), !dbg !1921
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !1950
  %323 = load i8, i8* %322, align 1, !dbg !1950, !tbaa !544
  %324 = icmp eq i8 %323, 0, !dbg !1945
  br i1 %324, label %348, label %325, !dbg !1951

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !1952
  call void @llvm.dbg.value(metadata i64 %326, metadata !1645, metadata !DIExpression()), !dbg !1921
  %327 = add i64 %326, %139, !dbg !1953
  %328 = icmp eq i64 %326, %313, !dbg !1943
  br i1 %328, label %348, label %319, !dbg !1945, !llvm.loop !1954

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !1955
  call void @llvm.dbg.value(metadata i64 1, metadata !1657, metadata !DIExpression()), !dbg !1956
  br i1 %331, label %332, label %340, !dbg !1955

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1657, metadata !DIExpression()), !dbg !1956
  %334 = add i64 %333, %139, !dbg !1957
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !1959
  %336 = load i8, i8* %335, align 1, !dbg !1959, !tbaa !544
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !1960

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %338, metadata !1657, metadata !DIExpression()), !dbg !1956
  %339 = icmp eq i64 %338, %314, !dbg !1962
  br i1 %339, label %340, label %332, !dbg !1963, !llvm.loop !1964

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !1966, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %341, metadata !1652, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i32 %341, metadata !1968, metadata !DIExpression()) #32, !dbg !1976
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !1978
  %343 = icmp ne i32 %342, 0, !dbg !1979
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %314, metadata !1645, metadata !DIExpression()), !dbg !1921
  br label %348, !dbg !1980

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1947
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %345 = select i1 %118, i32 4, i32 2, !dbg !1982
  br label %643, !dbg !1982

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %349, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %312, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i1 %350, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  br label %352, !dbg !1925

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1648, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 0, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !1947
  call void @llvm.dbg.value(metadata i64 %349, metadata !1645, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %312, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i1 %350, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  %351 = icmp ugt i64 %349, 1, !dbg !1984
  br i1 %351, label %357, label %352, !dbg !1925

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !1985
  br i1 %356, label %456, label %357, !dbg !1985

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %361, metadata !1665, metadata !DIExpression()), !dbg !1987
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !1988

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1675
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1764
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !1989
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1772
  call void @llvm.dbg.value(metadata i8 %369, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %368, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %366, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %364, metadata !1623, metadata !DIExpression()), !dbg !1675
  br i1 %362, label %414, label %370, !dbg !1990

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !1995

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1772
  %372 = select i1 %120, i1 true, i1 %365, !dbg !1998
  br i1 %372, label %389, label %373, !dbg !1998

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2000
  br i1 %374, label %375, label %377, !dbg !2004

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2000
  store i8 39, i8* %376, align 1, !dbg !2000, !tbaa !544
  br label %377, !dbg !2000

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2004
  call void @llvm.dbg.value(metadata i64 %378, metadata !1623, metadata !DIExpression()), !dbg !1675
  %379 = icmp ult i64 %378, %140, !dbg !2005
  br i1 %379, label %380, label %382, !dbg !2008

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2005
  store i8 36, i8* %381, align 1, !dbg !2005, !tbaa !544
  br label %382, !dbg !2005

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2008
  call void @llvm.dbg.value(metadata i64 %383, metadata !1623, metadata !DIExpression()), !dbg !1675
  %384 = icmp ult i64 %383, %140, !dbg !2009
  br i1 %384, label %385, label %387, !dbg !2012

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2009
  store i8 39, i8* %386, align 1, !dbg !2009, !tbaa !544
  br label %387, !dbg !2009

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2012
  call void @llvm.dbg.value(metadata i64 %388, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %389, !dbg !2013

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1675
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %390, metadata !1623, metadata !DIExpression()), !dbg !1675
  %392 = icmp ult i64 %390, %140, !dbg !2014
  br i1 %392, label %393, label %395, !dbg !2017

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2014
  store i8 92, i8* %394, align 1, !dbg !2014, !tbaa !544
  br label %395, !dbg !2014

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64 %396, metadata !1623, metadata !DIExpression()), !dbg !1675
  %397 = icmp ult i64 %396, %140, !dbg !2018
  br i1 %397, label %398, label %402, !dbg !2021

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2018
  %400 = or i8 %399, 48, !dbg !2018
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2018
  store i8 %400, i8* %401, align 1, !dbg !2018, !tbaa !544
  br label %402, !dbg !2018

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2021
  call void @llvm.dbg.value(metadata i64 %403, metadata !1623, metadata !DIExpression()), !dbg !1675
  %404 = icmp ult i64 %403, %140, !dbg !2022
  br i1 %404, label %405, label %410, !dbg !2025

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2022
  %407 = and i8 %406, 7, !dbg !2022
  %408 = or i8 %407, 48, !dbg !2022
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2022
  store i8 %408, i8* %409, align 1, !dbg !2022, !tbaa !544
  br label %410, !dbg !2022

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2025
  call void @llvm.dbg.value(metadata i64 %411, metadata !1623, metadata !DIExpression()), !dbg !1675
  %412 = and i8 %369, 7, !dbg !2026
  %413 = or i8 %412, 48, !dbg !2027
  call void @llvm.dbg.value(metadata i8 %413, metadata !1644, metadata !DIExpression()), !dbg !1772
  br label %421, !dbg !2028

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2029

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2030
  br i1 %416, label %417, label %419, !dbg !2035

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2030
  store i8 92, i8* %418, align 1, !dbg !2030, !tbaa !544
  br label %419, !dbg !2030

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2035
  call void @llvm.dbg.value(metadata i64 %420, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1772
  br label %421, !dbg !2036

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1675
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1772
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1772
  call void @llvm.dbg.value(metadata i8 %426, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %425, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %422, metadata !1623, metadata !DIExpression()), !dbg !1675
  %427 = add i64 %366, 1, !dbg !2037
  %428 = icmp ugt i64 %361, %427, !dbg !2039
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2040

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2041
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2041
  br i1 %432, label %433, label %444, !dbg !2041

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2044
  br i1 %434, label %435, label %437, !dbg !2048

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2044
  store i8 39, i8* %436, align 1, !dbg !2044, !tbaa !544
  br label %437, !dbg !2044

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %438, metadata !1623, metadata !DIExpression()), !dbg !1675
  %439 = icmp ult i64 %438, %140, !dbg !2049
  br i1 %439, label %440, label %442, !dbg !2052

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2049
  store i8 39, i8* %441, align 1, !dbg !2049, !tbaa !544
  br label %442, !dbg !2049

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2052
  call void @llvm.dbg.value(metadata i64 %443, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %444, !dbg !2053

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2054
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %445, metadata !1623, metadata !DIExpression()), !dbg !1675
  %447 = icmp ult i64 %445, %140, !dbg !2055
  br i1 %447, label %448, label %450, !dbg !2058

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2055
  store i8 %426, i8* %449, align 1, !dbg !2055, !tbaa !544
  br label %450, !dbg !2055

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2058
  call void @llvm.dbg.value(metadata i64 %451, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %427, metadata !1637, metadata !DIExpression()), !dbg !1764
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2059
  %453 = load i8, i8* %452, align 1, !dbg !2059, !tbaa !544
  call void @llvm.dbg.value(metadata i8 %453, metadata !1644, metadata !DIExpression()), !dbg !1772
  br label %363, !dbg !2060, !llvm.loop !2061

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i1 %358, metadata !1643, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1772
  call void @llvm.dbg.value(metadata i8 %425, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %366, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %422, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %360, metadata !1616, metadata !DIExpression()), !dbg !1675
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2064
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1675
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1679
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1764
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1772
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %465, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1639, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %462, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %459, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %458, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %457, metadata !1616, metadata !DIExpression()), !dbg !1675
  br i1 %121, label %478, label %467, !dbg !2065

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
  br i1 %131, label %479, label %499, !dbg !2067

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2068

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
  %490 = lshr i8 %481, 5, !dbg !2069
  %491 = zext i8 %490 to i64, !dbg !2069
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2070
  %493 = load i32, i32* %492, align 4, !dbg !2070, !tbaa !535
  %494 = and i8 %481, 31, !dbg !2071
  %495 = zext i8 %494 to i32, !dbg !2071
  %496 = shl nuw i32 1, %495, !dbg !2072
  %497 = and i32 %493, %496, !dbg !2072
  %498 = icmp eq i32 %497, 0, !dbg !2072
  br i1 %498, label %499, label %510, !dbg !2073

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
  br i1 %165, label %510, label %546, !dbg !2074

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2064
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1675
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1679
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2075
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1772
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %518, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %516, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %513, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %512, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %511, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1672), !dbg !2076
  br i1 %119, label %638, label %520, !dbg !2077

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1642, metadata !DIExpression()), !dbg !1772
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2079
  br i1 %521, label %538, label %522, !dbg !2079

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2081
  br i1 %523, label %524, label %526, !dbg !2085

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2081
  store i8 39, i8* %525, align 1, !dbg !2081, !tbaa !544
  br label %526, !dbg !2081

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2085
  call void @llvm.dbg.value(metadata i64 %527, metadata !1623, metadata !DIExpression()), !dbg !1675
  %528 = icmp ult i64 %527, %519, !dbg !2086
  br i1 %528, label %529, label %531, !dbg !2089

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2086
  store i8 36, i8* %530, align 1, !dbg !2086, !tbaa !544
  br label %531, !dbg !2086

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %532, metadata !1623, metadata !DIExpression()), !dbg !1675
  %533 = icmp ult i64 %532, %519, !dbg !2090
  br i1 %533, label %534, label %536, !dbg !2093

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2090
  store i8 39, i8* %535, align 1, !dbg !2090, !tbaa !544
  br label %536, !dbg !2090

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2093
  call void @llvm.dbg.value(metadata i64 %537, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 1, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %538, !dbg !2094

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1772
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %539, metadata !1623, metadata !DIExpression()), !dbg !1675
  %541 = icmp ult i64 %539, %519, !dbg !2095
  br i1 %541, label %542, label %544, !dbg !2098

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2095
  store i8 92, i8* %543, align 1, !dbg !2095, !tbaa !544
  br label %544, !dbg !2095

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i64 %556, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %555, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %552, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %549, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %548, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %547, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1673), !dbg !2099
  br label %570, !dbg !2100

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2064
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1675
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1679
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2075
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2103
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 %555, metadata !1644, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1643, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 poison, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i64 %552, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %549, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %548, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %547, metadata !1616, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.label(metadata !1673), !dbg !2099
  %557 = xor i1 %551, true, !dbg !2100
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2100
  br i1 %558, label %570, label %559, !dbg !2100

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2104
  br i1 %560, label %561, label %563, !dbg !2108

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2104
  store i8 39, i8* %562, align 1, !dbg !2104, !tbaa !544
  br label %563, !dbg !2104

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2108
  call void @llvm.dbg.value(metadata i64 %564, metadata !1623, metadata !DIExpression()), !dbg !1675
  %565 = icmp ult i64 %564, %556, !dbg !2109
  br i1 %565, label %566, label %568, !dbg !2112

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2109
  store i8 39, i8* %567, align 1, !dbg !2109, !tbaa !544
  br label %568, !dbg !2109

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2112
  call void @llvm.dbg.value(metadata i64 %569, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1631, metadata !DIExpression()), !dbg !1675
  br label %570, !dbg !2113

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1772
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %578, metadata !1623, metadata !DIExpression()), !dbg !1675
  %580 = icmp ult i64 %578, %571, !dbg !2114
  br i1 %580, label %581, label %583, !dbg !2117

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2114
  store i8 %572, i8* %582, align 1, !dbg !2114, !tbaa !544
  br label %583, !dbg !2114

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i64 %584, metadata !1623, metadata !DIExpression()), !dbg !1675
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2118
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  br label %586, !dbg !2119

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2064
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1675
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1679
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2075
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %593, metadata !1637, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 poison, metadata !1631, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %589, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %588, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %587, metadata !1616, metadata !DIExpression()), !dbg !1675
  %595 = add i64 %593, 1, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %595, metadata !1637, metadata !DIExpression()), !dbg !1764
  br label %132, !dbg !2121, !llvm.loop !2122

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1614, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1630, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 poison, metadata !1629, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 undef, metadata !1624, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 undef, metadata !1623, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 undef, metadata !1616, metadata !DIExpression()), !dbg !1675
  %597 = icmp eq i64 %134, 0, !dbg !2124
  %598 = and i1 %126, %597, !dbg !2126
  %599 = and i1 %598, %119, !dbg !2126
  br i1 %599, label %638, label %600, !dbg !2126

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2127
  %602 = or i1 %119, %601, !dbg !2127
  %603 = xor i1 %136, true, !dbg !2127
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2127
  br i1 %604, label %612, label %605, !dbg !2127

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2129

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2131
  br label %653, !dbg !2133

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2134
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2136
  br i1 %611, label %36, label %612, !dbg !2136

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2137
  %615 = or i1 %614, %613, !dbg !2139
  br i1 %615, label %631, label %616, !dbg !2139

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %134, metadata !1623, metadata !DIExpression()), !dbg !1675
  %617 = load i8, i8* %116, align 1, !dbg !2140, !tbaa !544
  %618 = icmp eq i8 %617, 0, !dbg !2143
  br i1 %618, label %631, label %619, !dbg !2143

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1625, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i64 %622, metadata !1623, metadata !DIExpression()), !dbg !1675
  %623 = icmp ult i64 %622, %140, !dbg !2144
  br i1 %623, label %624, label %626, !dbg !2147

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2144
  store i8 %620, i8* %625, align 1, !dbg !2144, !tbaa !544
  br label %626, !dbg !2144

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %627, metadata !1623, metadata !DIExpression()), !dbg !1675
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2148
  call void @llvm.dbg.value(metadata i8* %628, metadata !1625, metadata !DIExpression()), !dbg !1675
  %629 = load i8, i8* %628, align 1, !dbg !2140, !tbaa !544
  %630 = icmp eq i8 %629, 0, !dbg !2143
  br i1 %630, label %631, label %619, !dbg !2143, !llvm.loop !2149

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1751
  call void @llvm.dbg.value(metadata i64 %632, metadata !1623, metadata !DIExpression()), !dbg !1675
  %633 = icmp ult i64 %632, %140, !dbg !2151
  br i1 %633, label %634, label %653, !dbg !2153

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2154
  store i8 0, i8* %635, align 1, !dbg !2155, !tbaa !544
  br label %653, !dbg !2154

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %637 = icmp eq i32 %112, 2, !dbg !2156
  br i1 %637, label %643, label %647, !dbg !1982

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1674), !dbg !1981
  %641 = icmp eq i32 %112, 2, !dbg !2156
  %642 = select i1 %118, i32 4, i32 2, !dbg !1982
  br i1 %641, label %643, label %647, !dbg !1982

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !1982

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1617, metadata !DIExpression()), !dbg !1675
  %651 = and i32 %5, -3, !dbg !2157
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2158
  br label %653, !dbg !2159

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2160
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2161 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2163 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2167, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i64 %1, metadata !2168, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2169, metadata !DIExpression()), !dbg !2170
  call void @llvm.dbg.value(metadata i8* %0, metadata !2171, metadata !DIExpression()) #32, !dbg !2184
  call void @llvm.dbg.value(metadata i64 %1, metadata !2176, metadata !DIExpression()) #32, !dbg !2184
  call void @llvm.dbg.value(metadata i64* null, metadata !2177, metadata !DIExpression()) #32, !dbg !2184
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2178, metadata !DIExpression()) #32, !dbg !2184
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2186
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2186
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2179, metadata !DIExpression()) #32, !dbg !2184
  %6 = tail call i32* @__errno_location() #35, !dbg !2187
  %7 = load i32, i32* %6, align 4, !dbg !2187, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %7, metadata !2180, metadata !DIExpression()) #32, !dbg !2184
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2188
  %9 = load i32, i32* %8, align 4, !dbg !2188, !tbaa !1557
  %10 = or i32 %9, 1, !dbg !2189
  call void @llvm.dbg.value(metadata i32 %10, metadata !2181, metadata !DIExpression()) #32, !dbg !2184
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2190
  %12 = load i32, i32* %11, align 8, !dbg !2190, !tbaa !1506
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2191
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2192
  %15 = load i8*, i8** %14, align 8, !dbg !2192, !tbaa !1579
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2193
  %17 = load i8*, i8** %16, align 8, !dbg !2193, !tbaa !1582
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2194
  %19 = add i64 %18, 1, !dbg !2195
  call void @llvm.dbg.value(metadata i64 %19, metadata !2182, metadata !DIExpression()) #32, !dbg !2184
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2196
  call void @llvm.dbg.value(metadata i8* %20, metadata !2183, metadata !DIExpression()) #32, !dbg !2184
  %21 = load i32, i32* %11, align 8, !dbg !2197, !tbaa !1506
  %22 = load i8*, i8** %14, align 8, !dbg !2198, !tbaa !1579
  %23 = load i8*, i8** %16, align 8, !dbg !2199, !tbaa !1582
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2200
  store i32 %7, i32* %6, align 4, !dbg !2201, !tbaa !535
  ret i8* %20, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2172 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2171, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %1, metadata !2176, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i64* %2, metadata !2177, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2178, metadata !DIExpression()), !dbg !2203
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2204
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2204
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2179, metadata !DIExpression()), !dbg !2203
  %7 = tail call i32* @__errno_location() #35, !dbg !2205
  %8 = load i32, i32* %7, align 4, !dbg !2205, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %8, metadata !2180, metadata !DIExpression()), !dbg !2203
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2206
  %10 = load i32, i32* %9, align 4, !dbg !2206, !tbaa !1557
  %11 = icmp eq i64* %2, null, !dbg !2207
  %12 = zext i1 %11 to i32, !dbg !2207
  %13 = or i32 %10, %12, !dbg !2208
  call void @llvm.dbg.value(metadata i32 %13, metadata !2181, metadata !DIExpression()), !dbg !2203
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2209
  %15 = load i32, i32* %14, align 8, !dbg !2209, !tbaa !1506
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2210
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2211
  %18 = load i8*, i8** %17, align 8, !dbg !2211, !tbaa !1579
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2212
  %20 = load i8*, i8** %19, align 8, !dbg !2212, !tbaa !1582
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2213
  %22 = add i64 %21, 1, !dbg !2214
  call void @llvm.dbg.value(metadata i64 %22, metadata !2182, metadata !DIExpression()), !dbg !2203
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2215
  call void @llvm.dbg.value(metadata i8* %23, metadata !2183, metadata !DIExpression()), !dbg !2203
  %24 = load i32, i32* %14, align 8, !dbg !2216, !tbaa !1506
  %25 = load i8*, i8** %17, align 8, !dbg !2217, !tbaa !1579
  %26 = load i8*, i8** %19, align 8, !dbg !2218, !tbaa !1582
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2219
  store i32 %8, i32* %7, align 4, !dbg !2220, !tbaa !535
  br i1 %11, label %29, label %28, !dbg !2221

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2222, !tbaa !2224
  br label %29, !dbg !2225

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2226
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2227 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2232, !tbaa !443
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2229, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2234
  %2 = load i32, i32* @nslots, align 4, !tbaa !535
  call void @llvm.dbg.value(metadata i32 1, metadata !2230, metadata !DIExpression()), !dbg !2234
  %3 = icmp sgt i32 %2, 1, !dbg !2235
  br i1 %3, label %4, label %6, !dbg !2237

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2235
  br label %10, !dbg !2237

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2238
  %8 = load i8*, i8** %7, align 8, !dbg !2238, !tbaa !2240
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2242
  br i1 %9, label %17, label %16, !dbg !2243

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2230, metadata !DIExpression()), !dbg !2234
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2244
  %13 = load i8*, i8** %12, align 8, !dbg !2244, !tbaa !2240
  tail call void @free(i8* noundef %13) #32, !dbg !2245
  %14 = add nuw nsw i64 %11, 1, !dbg !2246
  call void @llvm.dbg.value(metadata i64 %14, metadata !2230, metadata !DIExpression()), !dbg !2234
  %15 = icmp eq i64 %14, %5, !dbg !2235
  br i1 %15, label %6, label %10, !dbg !2237, !llvm.loop !2247

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2249
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2251, !tbaa !2252
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2253, !tbaa !2240
  br label %17, !dbg !2254

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2255
  br i1 %18, label %21, label %19, !dbg !2257

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2258
  tail call void @free(i8* noundef %20) #32, !dbg !2260
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2261, !tbaa !443
  br label %21, !dbg !2262

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2263, !tbaa !535
  ret void, !dbg !2264
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2265 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2267, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata i8* %1, metadata !2268, metadata !DIExpression()), !dbg !2269
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2270
  ret i8* %3, !dbg !2271
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2272 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2276, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i8* %1, metadata !2277, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i64 %2, metadata !2278, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2279, metadata !DIExpression()), !dbg !2292
  %6 = tail call i32* @__errno_location() #35, !dbg !2293
  %7 = load i32, i32* %6, align 4, !dbg !2293, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %7, metadata !2280, metadata !DIExpression()), !dbg !2292
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2294, !tbaa !443
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2281, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2282, metadata !DIExpression()), !dbg !2292
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2295
  br i1 %9, label %10, label %11, !dbg !2295

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2297
  unreachable, !dbg !2297

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2298, !tbaa !535
  %13 = icmp sgt i32 %12, %0, !dbg !2299
  br i1 %13, label %36, label %14, !dbg !2300

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2301
  call void @llvm.dbg.value(metadata i1 %15, metadata !2283, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2302
  %16 = bitcast i64* %5 to i8*, !dbg !2303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2303
  %17 = sext i32 %12 to i64, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %17, metadata !2286, metadata !DIExpression()), !dbg !2302
  store i64 %17, i64* %5, align 8, !dbg !2305, !tbaa !2224
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2306
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2306
  %20 = add nuw nsw i32 %0, 1, !dbg !2307
  %21 = sub i32 %20, %12, !dbg !2308
  %22 = sext i32 %21 to i64, !dbg !2309
  call void @llvm.dbg.value(metadata i64* %5, metadata !2286, metadata !DIExpression(DW_OP_deref)), !dbg !2302
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2310
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2310
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2281, metadata !DIExpression()), !dbg !2292
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2311, !tbaa !443
  br i1 %15, label %25, label %26, !dbg !2312

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2313, !tbaa.struct !2315
  br label %26, !dbg !2316

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2317, !tbaa !535
  %28 = sext i32 %27 to i64, !dbg !2318
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2318
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2319
  %31 = load i64, i64* %5, align 8, !dbg !2320, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %31, metadata !2286, metadata !DIExpression()), !dbg !2302
  %32 = sub nsw i64 %31, %28, !dbg !2321
  %33 = shl i64 %32, 4, !dbg !2322
  call void @llvm.dbg.value(metadata i8* %30, metadata !1709, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.dbg.value(metadata i64 %33, metadata !1713, metadata !DIExpression()) #32, !dbg !2323
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2325
  %34 = load i64, i64* %5, align 8, !dbg !2326, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %34, metadata !2286, metadata !DIExpression()), !dbg !2302
  %35 = trunc i64 %34 to i32, !dbg !2326
  store i32 %35, i32* @nslots, align 4, !dbg !2327, !tbaa !535
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2328
  br label %36, !dbg !2329

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2292
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2281, metadata !DIExpression()), !dbg !2292
  %38 = zext i32 %0 to i64, !dbg !2330
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2331
  %40 = load i64, i64* %39, align 8, !dbg !2331, !tbaa !2252
  call void @llvm.dbg.value(metadata i64 %40, metadata !2287, metadata !DIExpression()), !dbg !2332
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2333
  %42 = load i8*, i8** %41, align 8, !dbg !2333, !tbaa !2240
  call void @llvm.dbg.value(metadata i8* %42, metadata !2289, metadata !DIExpression()), !dbg !2332
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2334
  %44 = load i32, i32* %43, align 4, !dbg !2334, !tbaa !1557
  %45 = or i32 %44, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %45, metadata !2290, metadata !DIExpression()), !dbg !2332
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2336
  %47 = load i32, i32* %46, align 8, !dbg !2336, !tbaa !1506
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2337
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2338
  %50 = load i8*, i8** %49, align 8, !dbg !2338, !tbaa !1579
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2339
  %52 = load i8*, i8** %51, align 8, !dbg !2339, !tbaa !1582
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2340
  call void @llvm.dbg.value(metadata i64 %53, metadata !2291, metadata !DIExpression()), !dbg !2332
  %54 = icmp ugt i64 %40, %53, !dbg !2341
  br i1 %54, label %65, label %55, !dbg !2343

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %56, metadata !2287, metadata !DIExpression()), !dbg !2332
  store i64 %56, i64* %39, align 8, !dbg !2346, !tbaa !2252
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2347
  br i1 %57, label %59, label %58, !dbg !2349

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2350
  br label %59, !dbg !2350

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2351
  call void @llvm.dbg.value(metadata i8* %60, metadata !2289, metadata !DIExpression()), !dbg !2332
  store i8* %60, i8** %41, align 8, !dbg !2352, !tbaa !2240
  %61 = load i32, i32* %46, align 8, !dbg !2353, !tbaa !1506
  %62 = load i8*, i8** %49, align 8, !dbg !2354, !tbaa !1579
  %63 = load i8*, i8** %51, align 8, !dbg !2355, !tbaa !1582
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2356
  br label %65, !dbg !2357

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2332
  call void @llvm.dbg.value(metadata i8* %66, metadata !2289, metadata !DIExpression()), !dbg !2332
  store i32 %7, i32* %6, align 4, !dbg !2358, !tbaa !535
  ret i8* %66, !dbg !2359
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2360 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2364, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i64 %2, metadata !2366, metadata !DIExpression()), !dbg !2367
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2368
  ret i8* %4, !dbg !2369
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2370 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2372, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 0, metadata !2267, metadata !DIExpression()) #32, !dbg !2374
  call void @llvm.dbg.value(metadata i8* %0, metadata !2268, metadata !DIExpression()) #32, !dbg !2374
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2376
  ret i8* %2, !dbg !2377
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2378 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2382, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i64 %1, metadata !2383, metadata !DIExpression()), !dbg !2384
  call void @llvm.dbg.value(metadata i32 0, metadata !2364, metadata !DIExpression()) #32, !dbg !2385
  call void @llvm.dbg.value(metadata i8* %0, metadata !2365, metadata !DIExpression()) #32, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %1, metadata !2366, metadata !DIExpression()) #32, !dbg !2385
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2387
  ret i8* %3, !dbg !2388
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2389 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2393, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i32 %1, metadata !2394, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8* %2, metadata !2395, metadata !DIExpression()), !dbg !2397
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2398
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2398
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2396, metadata !DIExpression()), !dbg !2399
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2400), !dbg !2403
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()) #32, !dbg !2410
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2409, metadata !DIExpression()) #32, !dbg !2412
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2412, !alias.scope !2400
  %6 = icmp eq i32 %1, 10, !dbg !2413
  br i1 %6, label %7, label %8, !dbg !2415

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2416, !noalias !2400
  unreachable, !dbg !2416

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2417
  store i32 %1, i32* %9, align 8, !dbg !2418, !tbaa !1506, !alias.scope !2400
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2420
  ret i8* %10, !dbg !2421
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2422 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i32 %1, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %2, metadata !2428, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i64 %3, metadata !2429, metadata !DIExpression()), !dbg !2431
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2432
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2430, metadata !DIExpression()), !dbg !2433
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434), !dbg !2437
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()) #32, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2409, metadata !DIExpression()) #32, !dbg !2440
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2440, !alias.scope !2434
  %7 = icmp eq i32 %1, 10, !dbg !2441
  br i1 %7, label %8, label %9, !dbg !2442

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2443, !noalias !2434
  unreachable, !dbg !2443

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2444
  store i32 %1, i32* %10, align 8, !dbg !2445, !tbaa !1506, !alias.scope !2434
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2446
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2447
  ret i8* %11, !dbg !2448
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2449 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2453, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !2454, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i32 0, metadata !2393, metadata !DIExpression()) #32, !dbg !2456
  call void @llvm.dbg.value(metadata i32 %0, metadata !2394, metadata !DIExpression()) #32, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %1, metadata !2395, metadata !DIExpression()) #32, !dbg !2456
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2458
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2458
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2396, metadata !DIExpression()) #32, !dbg !2459
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460) #32, !dbg !2463
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()) #32, !dbg !2464
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2409, metadata !DIExpression()) #32, !dbg !2466
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2466, !alias.scope !2460
  %5 = icmp eq i32 %0, 10, !dbg !2467
  br i1 %5, label %6, label %7, !dbg !2468

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2469, !noalias !2460
  unreachable, !dbg !2469

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2470
  store i32 %0, i32* %8, align 8, !dbg !2471, !tbaa !1506, !alias.scope !2460
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2472
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2473
  ret i8* %9, !dbg !2474
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2475 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2479, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i8* %1, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i64 %2, metadata !2481, metadata !DIExpression()), !dbg !2482
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #32, !dbg !2483
  call void @llvm.dbg.value(metadata i32 %0, metadata !2427, metadata !DIExpression()) #32, !dbg !2483
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()) #32, !dbg !2483
  call void @llvm.dbg.value(metadata i64 %2, metadata !2429, metadata !DIExpression()) #32, !dbg !2483
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2485
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2485
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2430, metadata !DIExpression()) #32, !dbg !2486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487) #32, !dbg !2490
  call void @llvm.dbg.value(metadata i32 %0, metadata !2404, metadata !DIExpression()) #32, !dbg !2491
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2409, metadata !DIExpression()) #32, !dbg !2493
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2493, !alias.scope !2487
  %6 = icmp eq i32 %0, 10, !dbg !2494
  br i1 %6, label %7, label %8, !dbg !2495

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2496, !noalias !2487
  unreachable, !dbg !2496

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2497
  store i32 %0, i32* %9, align 8, !dbg !2498, !tbaa !1506, !alias.scope !2487
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2499
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2500
  ret i8* %10, !dbg !2501
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2502 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i64 %1, metadata !2507, metadata !DIExpression()), !dbg !2510
  call void @llvm.dbg.value(metadata i8 %2, metadata !2508, metadata !DIExpression()), !dbg !2510
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2511
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2511
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2509, metadata !DIExpression()), !dbg !2512
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2513, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1524, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %2, metadata !1525, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2515
  call void @llvm.dbg.value(metadata i8 %2, metadata !1527, metadata !DIExpression()), !dbg !2515
  %6 = lshr i8 %2, 5, !dbg !2517
  %7 = zext i8 %6 to i64, !dbg !2517
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2518
  call void @llvm.dbg.value(metadata i32* %8, metadata !1528, metadata !DIExpression()), !dbg !2515
  %9 = and i8 %2, 31, !dbg !2519
  %10 = zext i8 %9 to i32, !dbg !2519
  call void @llvm.dbg.value(metadata i32 %10, metadata !1530, metadata !DIExpression()), !dbg !2515
  %11 = load i32, i32* %8, align 4, !dbg !2520, !tbaa !535
  %12 = lshr i32 %11, %10, !dbg !2521
  %13 = and i32 %12, 1, !dbg !2522
  call void @llvm.dbg.value(metadata i32 %13, metadata !1531, metadata !DIExpression()), !dbg !2515
  %14 = xor i32 %13, 1, !dbg !2523
  %15 = shl i32 %14, %10, !dbg !2524
  %16 = xor i32 %15, %11, !dbg !2525
  store i32 %16, i32* %8, align 4, !dbg !2525, !tbaa !535
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2526
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2527
  ret i8* %17, !dbg !2528
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2529 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %1, metadata !2534, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()) #32, !dbg !2536
  call void @llvm.dbg.value(metadata i64 -1, metadata !2507, metadata !DIExpression()) #32, !dbg !2536
  call void @llvm.dbg.value(metadata i8 %1, metadata !2508, metadata !DIExpression()) #32, !dbg !2536
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2538
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2538
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2509, metadata !DIExpression()) #32, !dbg !2539
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2540, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1524, metadata !DIExpression()) #32, !dbg !2541
  call void @llvm.dbg.value(metadata i8 %1, metadata !1525, metadata !DIExpression()) #32, !dbg !2541
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()) #32, !dbg !2541
  call void @llvm.dbg.value(metadata i8 %1, metadata !1527, metadata !DIExpression()) #32, !dbg !2541
  %5 = lshr i8 %1, 5, !dbg !2543
  %6 = zext i8 %5 to i64, !dbg !2543
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2544
  call void @llvm.dbg.value(metadata i32* %7, metadata !1528, metadata !DIExpression()) #32, !dbg !2541
  %8 = and i8 %1, 31, !dbg !2545
  %9 = zext i8 %8 to i32, !dbg !2545
  call void @llvm.dbg.value(metadata i32 %9, metadata !1530, metadata !DIExpression()) #32, !dbg !2541
  %10 = load i32, i32* %7, align 4, !dbg !2546, !tbaa !535
  %11 = lshr i32 %10, %9, !dbg !2547
  %12 = and i32 %11, 1, !dbg !2548
  call void @llvm.dbg.value(metadata i32 %12, metadata !1531, metadata !DIExpression()) #32, !dbg !2541
  %13 = xor i32 %12, 1, !dbg !2549
  %14 = shl i32 %13, %9, !dbg !2550
  %15 = xor i32 %14, %10, !dbg !2551
  store i32 %15, i32* %7, align 4, !dbg !2551, !tbaa !535
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2552
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2553
  ret i8* %16, !dbg !2554
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2555 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %0, metadata !2533, metadata !DIExpression()) #32, !dbg !2559
  call void @llvm.dbg.value(metadata i8 58, metadata !2534, metadata !DIExpression()) #32, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()) #32, !dbg !2561
  call void @llvm.dbg.value(metadata i64 -1, metadata !2507, metadata !DIExpression()) #32, !dbg !2561
  call void @llvm.dbg.value(metadata i8 58, metadata !2508, metadata !DIExpression()) #32, !dbg !2561
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2563
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2563
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2509, metadata !DIExpression()) #32, !dbg !2564
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2565, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1524, metadata !DIExpression()) #32, !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()) #32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()) #32, !dbg !2566
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()) #32, !dbg !2566
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2568
  call void @llvm.dbg.value(metadata i32* %4, metadata !1528, metadata !DIExpression()) #32, !dbg !2566
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()) #32, !dbg !2566
  %5 = load i32, i32* %4, align 4, !dbg !2569, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %5, metadata !1531, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2566
  %6 = or i32 %5, 67108864, !dbg !2570
  store i32 %6, i32* %4, align 4, !dbg !2570, !tbaa !535
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2572
  ret i8* %7, !dbg !2573
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2574 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2576, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i64 %1, metadata !2577, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %0, metadata !2506, metadata !DIExpression()) #32, !dbg !2579
  call void @llvm.dbg.value(metadata i64 %1, metadata !2507, metadata !DIExpression()) #32, !dbg !2579
  call void @llvm.dbg.value(metadata i8 58, metadata !2508, metadata !DIExpression()) #32, !dbg !2579
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2581
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2581
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2509, metadata !DIExpression()) #32, !dbg !2582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2583, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1524, metadata !DIExpression()) #32, !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()) #32, !dbg !2584
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()) #32, !dbg !2584
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()) #32, !dbg !2584
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2586
  call void @llvm.dbg.value(metadata i32* %5, metadata !1528, metadata !DIExpression()) #32, !dbg !2584
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()) #32, !dbg !2584
  %6 = load i32, i32* %5, align 4, !dbg !2587, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %6, metadata !1531, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2584
  %7 = or i32 %6, 67108864, !dbg !2588
  store i32 %7, i32* %5, align 4, !dbg !2588, !tbaa !535
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2589
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2590
  ret i8* %8, !dbg !2591
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2592 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2594, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i32 %1, metadata !2595, metadata !DIExpression()), !dbg !2598
  call void @llvm.dbg.value(metadata i8* %2, metadata !2596, metadata !DIExpression()), !dbg !2598
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2599
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2599
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2597, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()) #32, !dbg !2601
  call void @llvm.dbg.value(metadata i32 0, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2601
  %6 = icmp eq i32 %1, 10, !dbg !2603
  br i1 %6, label %7, label %8, !dbg !2604

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2605, !noalias !2606
  unreachable, !dbg !2605

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2409, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2601
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2609
  store i32 %1, i32* %9, align 8, !dbg !2609, !tbaa.struct !2514
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2609
  %11 = bitcast i32* %10 to i8*, !dbg !2609
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2609
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1524, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 58, metadata !1525, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 1, metadata !1526, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i8 58, metadata !1527, metadata !DIExpression()), !dbg !2610
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2612
  call void @llvm.dbg.value(metadata i32* %12, metadata !1528, metadata !DIExpression()), !dbg !2610
  call void @llvm.dbg.value(metadata i32 26, metadata !1530, metadata !DIExpression()), !dbg !2610
  %13 = load i32, i32* %12, align 4, !dbg !2613, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %13, metadata !1531, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2610
  %14 = or i32 %13, 67108864, !dbg !2614
  store i32 %14, i32* %12, align 4, !dbg !2614, !tbaa !535
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2615
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2616
  ret i8* %15, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2618 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2622, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %1, metadata !2623, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %2, metadata !2624, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i8* %3, metadata !2625, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %2, metadata !2633, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i8* %3, metadata !2634, metadata !DIExpression()) #32, !dbg !2637
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()) #32, !dbg !2637
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2639
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2639
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2636, metadata !DIExpression()) #32, !dbg !2640
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2641, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1564, metadata !DIExpression()) #32, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !1565, metadata !DIExpression()) #32, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression()) #32, !dbg !2642
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1564, metadata !DIExpression()) #32, !dbg !2642
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2644
  store i32 10, i32* %7, align 8, !dbg !2645, !tbaa !1506
  %8 = icmp ne i8* %1, null, !dbg !2646
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2647
  br i1 %10, label %12, label %11, !dbg !2647

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2648
  unreachable, !dbg !2648

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2649
  store i8* %1, i8** %13, align 8, !dbg !2650, !tbaa !1579
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2651
  store i8* %2, i8** %14, align 8, !dbg !2652, !tbaa !1582
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2653
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2654
  ret i8* %15, !dbg !2655
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2628 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2627, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %1, metadata !2632, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %2, metadata !2633, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i8* %3, metadata !2634, metadata !DIExpression()), !dbg !2656
  call void @llvm.dbg.value(metadata i64 %4, metadata !2635, metadata !DIExpression()), !dbg !2656
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2657
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2657
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2636, metadata !DIExpression()), !dbg !2658
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2659, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1564, metadata !DIExpression()) #32, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %1, metadata !1565, metadata !DIExpression()) #32, !dbg !2660
  call void @llvm.dbg.value(metadata i8* %2, metadata !1566, metadata !DIExpression()) #32, !dbg !2660
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1564, metadata !DIExpression()) #32, !dbg !2660
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2662
  store i32 10, i32* %8, align 8, !dbg !2663, !tbaa !1506
  %9 = icmp ne i8* %1, null, !dbg !2664
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2665
  br i1 %11, label %13, label %12, !dbg !2665

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2666
  unreachable, !dbg !2666

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2667
  store i8* %1, i8** %14, align 8, !dbg !2668, !tbaa !1579
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2669
  store i8* %2, i8** %15, align 8, !dbg !2670, !tbaa !1582
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2671
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2672
  ret i8* %16, !dbg !2673
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2674 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2678, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %1, metadata !2679, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i8* %2, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.value(metadata i32 0, metadata !2622, metadata !DIExpression()) #32, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %0, metadata !2623, metadata !DIExpression()) #32, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %1, metadata !2624, metadata !DIExpression()) #32, !dbg !2682
  call void @llvm.dbg.value(metadata i8* %2, metadata !2625, metadata !DIExpression()) #32, !dbg !2682
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %1, metadata !2633, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i8* %2, metadata !2634, metadata !DIExpression()) #32, !dbg !2684
  call void @llvm.dbg.value(metadata i64 -1, metadata !2635, metadata !DIExpression()) #32, !dbg !2684
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2686
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2686
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2636, metadata !DIExpression()) #32, !dbg !2687
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2688, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1564, metadata !DIExpression()) #32, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %0, metadata !1565, metadata !DIExpression()) #32, !dbg !2689
  call void @llvm.dbg.value(metadata i8* %1, metadata !1566, metadata !DIExpression()) #32, !dbg !2689
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1564, metadata !DIExpression()) #32, !dbg !2689
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2691
  store i32 10, i32* %6, align 8, !dbg !2692, !tbaa !1506
  %7 = icmp ne i8* %0, null, !dbg !2693
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2694
  br i1 %9, label %11, label %10, !dbg !2694

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2695
  unreachable, !dbg !2695

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2696
  store i8* %0, i8** %12, align 8, !dbg !2697, !tbaa !1579
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2698
  store i8* %1, i8** %13, align 8, !dbg !2699, !tbaa !1582
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2701
  ret i8* %14, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2703 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2707, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %1, metadata !2708, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i8* %2, metadata !2709, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 %3, metadata !2710, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 0, metadata !2627, metadata !DIExpression()) #32, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %0, metadata !2632, metadata !DIExpression()) #32, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %1, metadata !2633, metadata !DIExpression()) #32, !dbg !2712
  call void @llvm.dbg.value(metadata i8* %2, metadata !2634, metadata !DIExpression()) #32, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %3, metadata !2635, metadata !DIExpression()) #32, !dbg !2712
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2714
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2714
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2636, metadata !DIExpression()) #32, !dbg !2715
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2716, !tbaa.struct !2514
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1564, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %0, metadata !1565, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !1566, metadata !DIExpression()) #32, !dbg !2717
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1564, metadata !DIExpression()) #32, !dbg !2717
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2719
  store i32 10, i32* %7, align 8, !dbg !2720, !tbaa !1506
  %8 = icmp ne i8* %0, null, !dbg !2721
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2722
  br i1 %10, label %12, label %11, !dbg !2722

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2723
  unreachable, !dbg !2723

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2724
  store i8* %0, i8** %13, align 8, !dbg !2725, !tbaa !1579
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2726
  store i8* %1, i8** %14, align 8, !dbg !2727, !tbaa !1582
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2728
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2729
  ret i8* %15, !dbg !2730
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2731 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()), !dbg !2738
  call void @llvm.dbg.value(metadata i64 %2, metadata !2737, metadata !DIExpression()), !dbg !2738
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2739
  ret i8* %4, !dbg !2740
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2741 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2745, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i64 %1, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression()) #32, !dbg !2748
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()) #32, !dbg !2748
  call void @llvm.dbg.value(metadata i64 %1, metadata !2737, metadata !DIExpression()) #32, !dbg !2748
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2750
  ret i8* %3, !dbg !2751
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2752 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i8* %1, metadata !2757, metadata !DIExpression()), !dbg !2758
  call void @llvm.dbg.value(metadata i32 %0, metadata !2735, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i8* %1, metadata !2736, metadata !DIExpression()) #32, !dbg !2759
  call void @llvm.dbg.value(metadata i64 -1, metadata !2737, metadata !DIExpression()) #32, !dbg !2759
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2761
  ret i8* %3, !dbg !2762
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2763 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2767, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #32, !dbg !2769
  call void @llvm.dbg.value(metadata i8* %0, metadata !2757, metadata !DIExpression()) #32, !dbg !2769
  call void @llvm.dbg.value(metadata i32 0, metadata !2735, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %0, metadata !2736, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i64 -1, metadata !2737, metadata !DIExpression()) #32, !dbg !2771
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2773
  ret i8* %2, !dbg !2774
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2775 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2814, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %1, metadata !2815, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %2, metadata !2816, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8* %3, metadata !2817, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i8** %4, metadata !2818, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.value(metadata i64 %5, metadata !2819, metadata !DIExpression()), !dbg !2820
  %7 = icmp eq i8* %1, null, !dbg !2821
  br i1 %7, label %10, label %8, !dbg !2823

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2824
  br label %12, !dbg !2824

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.85, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2825
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.87, i64 0, i64 0), i32 noundef 5) #32, !dbg !2826
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2826
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2827
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.89, i64 0, i64 0), i32 noundef 5) #32, !dbg !2828
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.90, i64 0, i64 0)) #32, !dbg !2828
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2829
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
  ], !dbg !2830

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !2831
  %21 = load i8*, i8** %4, align 8, !dbg !2831, !tbaa !443
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2831
  br label %147, !dbg !2833

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.92, i64 0, i64 0), i32 noundef 5) #32, !dbg !2834
  %25 = load i8*, i8** %4, align 8, !dbg !2834, !tbaa !443
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2834
  %27 = load i8*, i8** %26, align 8, !dbg !2834, !tbaa !443
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2834
  br label %147, !dbg !2835

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.93, i64 0, i64 0), i32 noundef 5) #32, !dbg !2836
  %31 = load i8*, i8** %4, align 8, !dbg !2836, !tbaa !443
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2836
  %33 = load i8*, i8** %32, align 8, !dbg !2836, !tbaa !443
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2836
  %35 = load i8*, i8** %34, align 8, !dbg !2836, !tbaa !443
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2836
  br label %147, !dbg !2837

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.94, i64 0, i64 0), i32 noundef 5) #32, !dbg !2838
  %39 = load i8*, i8** %4, align 8, !dbg !2838, !tbaa !443
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2838
  %41 = load i8*, i8** %40, align 8, !dbg !2838, !tbaa !443
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2838
  %43 = load i8*, i8** %42, align 8, !dbg !2838, !tbaa !443
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2838
  %45 = load i8*, i8** %44, align 8, !dbg !2838, !tbaa !443
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2838
  br label %147, !dbg !2839

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.95, i64 0, i64 0), i32 noundef 5) #32, !dbg !2840
  %49 = load i8*, i8** %4, align 8, !dbg !2840, !tbaa !443
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2840
  %51 = load i8*, i8** %50, align 8, !dbg !2840, !tbaa !443
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2840
  %53 = load i8*, i8** %52, align 8, !dbg !2840, !tbaa !443
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2840
  %55 = load i8*, i8** %54, align 8, !dbg !2840, !tbaa !443
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2840
  %57 = load i8*, i8** %56, align 8, !dbg !2840, !tbaa !443
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2840
  br label %147, !dbg !2841

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.96, i64 0, i64 0), i32 noundef 5) #32, !dbg !2842
  %61 = load i8*, i8** %4, align 8, !dbg !2842, !tbaa !443
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2842
  %63 = load i8*, i8** %62, align 8, !dbg !2842, !tbaa !443
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2842
  %65 = load i8*, i8** %64, align 8, !dbg !2842, !tbaa !443
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2842
  %67 = load i8*, i8** %66, align 8, !dbg !2842, !tbaa !443
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2842
  %69 = load i8*, i8** %68, align 8, !dbg !2842, !tbaa !443
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2842
  %71 = load i8*, i8** %70, align 8, !dbg !2842, !tbaa !443
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2842
  br label %147, !dbg !2843

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.97, i64 0, i64 0), i32 noundef 5) #32, !dbg !2844
  %75 = load i8*, i8** %4, align 8, !dbg !2844, !tbaa !443
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2844
  %77 = load i8*, i8** %76, align 8, !dbg !2844, !tbaa !443
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2844
  %79 = load i8*, i8** %78, align 8, !dbg !2844, !tbaa !443
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2844
  %81 = load i8*, i8** %80, align 8, !dbg !2844, !tbaa !443
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2844
  %83 = load i8*, i8** %82, align 8, !dbg !2844, !tbaa !443
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2844
  %85 = load i8*, i8** %84, align 8, !dbg !2844, !tbaa !443
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2844
  %87 = load i8*, i8** %86, align 8, !dbg !2844, !tbaa !443
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2844
  br label %147, !dbg !2845

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.98, i64 0, i64 0), i32 noundef 5) #32, !dbg !2846
  %91 = load i8*, i8** %4, align 8, !dbg !2846, !tbaa !443
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2846
  %93 = load i8*, i8** %92, align 8, !dbg !2846, !tbaa !443
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2846
  %95 = load i8*, i8** %94, align 8, !dbg !2846, !tbaa !443
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2846
  %97 = load i8*, i8** %96, align 8, !dbg !2846, !tbaa !443
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2846
  %99 = load i8*, i8** %98, align 8, !dbg !2846, !tbaa !443
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2846
  %101 = load i8*, i8** %100, align 8, !dbg !2846, !tbaa !443
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2846
  %103 = load i8*, i8** %102, align 8, !dbg !2846, !tbaa !443
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2846
  %105 = load i8*, i8** %104, align 8, !dbg !2846, !tbaa !443
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2846
  br label %147, !dbg !2847

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.99, i64 0, i64 0), i32 noundef 5) #32, !dbg !2848
  %109 = load i8*, i8** %4, align 8, !dbg !2848, !tbaa !443
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2848
  %111 = load i8*, i8** %110, align 8, !dbg !2848, !tbaa !443
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2848
  %113 = load i8*, i8** %112, align 8, !dbg !2848, !tbaa !443
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2848
  %115 = load i8*, i8** %114, align 8, !dbg !2848, !tbaa !443
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2848
  %117 = load i8*, i8** %116, align 8, !dbg !2848, !tbaa !443
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2848
  %119 = load i8*, i8** %118, align 8, !dbg !2848, !tbaa !443
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2848
  %121 = load i8*, i8** %120, align 8, !dbg !2848, !tbaa !443
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2848
  %123 = load i8*, i8** %122, align 8, !dbg !2848, !tbaa !443
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2848
  %125 = load i8*, i8** %124, align 8, !dbg !2848, !tbaa !443
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2848
  br label %147, !dbg !2849

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.100, i64 0, i64 0), i32 noundef 5) #32, !dbg !2850
  %129 = load i8*, i8** %4, align 8, !dbg !2850, !tbaa !443
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2850
  %131 = load i8*, i8** %130, align 8, !dbg !2850, !tbaa !443
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2850
  %133 = load i8*, i8** %132, align 8, !dbg !2850, !tbaa !443
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2850
  %135 = load i8*, i8** %134, align 8, !dbg !2850, !tbaa !443
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2850
  %137 = load i8*, i8** %136, align 8, !dbg !2850, !tbaa !443
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2850
  %139 = load i8*, i8** %138, align 8, !dbg !2850, !tbaa !443
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2850
  %141 = load i8*, i8** %140, align 8, !dbg !2850, !tbaa !443
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2850
  %143 = load i8*, i8** %142, align 8, !dbg !2850, !tbaa !443
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2850
  %145 = load i8*, i8** %144, align 8, !dbg !2850, !tbaa !443
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2850
  br label %147, !dbg !2851

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2852
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2853 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2857, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %1, metadata !2858, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %2, metadata !2859, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8* %3, metadata !2860, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i8** %4, metadata !2861, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.value(metadata i64 0, metadata !2862, metadata !DIExpression()), !dbg !2863
  br label %6, !dbg !2864

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2866
  call void @llvm.dbg.value(metadata i64 %7, metadata !2862, metadata !DIExpression()), !dbg !2863
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2867
  %9 = load i8*, i8** %8, align 8, !dbg !2867, !tbaa !443
  %10 = icmp eq i8* %9, null, !dbg !2869
  %11 = add i64 %7, 1, !dbg !2870
  call void @llvm.dbg.value(metadata i64 %11, metadata !2862, metadata !DIExpression()), !dbg !2863
  br i1 %10, label %12, label %6, !dbg !2869, !llvm.loop !2871

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !2873
  ret void, !dbg !2874
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !2875 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2890, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %1, metadata !2891, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %2, metadata !2892, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %3, metadata !2893, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !2894, metadata !DIExpression()), !dbg !2899
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2900
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2900
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2896, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 0, metadata !2895, metadata !DIExpression()), !dbg !2898
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !2895, metadata !DIExpression()), !dbg !2898
  %11 = load i32, i32* %8, align 8, !dbg !2902
  %12 = icmp sgt i32 %11, -1, !dbg !2902
  br i1 %12, label %20, label %13, !dbg !2902

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !2902
  store i32 %14, i32* %8, align 8, !dbg !2902
  %15 = icmp ult i32 %11, -7, !dbg !2902
  br i1 %15, label %16, label %20, !dbg !2902

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !2902
  %18 = sext i32 %11 to i64, !dbg !2902
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !2902
  br label %24, !dbg !2902

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !2902
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !2902
  store i8* %23, i8** %10, align 8, !dbg !2902
  br label %24, !dbg !2902

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !2902
  %28 = load i8*, i8** %27, align 8, !dbg !2902
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2905
  store i8* %28, i8** %29, align 8, !dbg !2906, !tbaa !443
  %30 = icmp eq i8* %28, null, !dbg !2907
  br i1 %30, label %210, label %31, !dbg !2908

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 1, metadata !2895, metadata !DIExpression()), !dbg !2898
  %32 = icmp sgt i32 %25, -1, !dbg !2902
  br i1 %32, label %40, label %33, !dbg !2902

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !2902
  store i32 %34, i32* %8, align 8, !dbg !2902
  %35 = icmp ult i32 %25, -7, !dbg !2902
  br i1 %35, label %36, label %40, !dbg !2902

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !2902
  %38 = sext i32 %25 to i64, !dbg !2902
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !2902
  br label %44, !dbg !2902

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !2902
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !2902
  store i8* %43, i8** %10, align 8, !dbg !2902
  br label %44, !dbg !2902

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !2902
  %48 = load i8*, i8** %47, align 8, !dbg !2902
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2905
  store i8* %48, i8** %49, align 8, !dbg !2906, !tbaa !443
  %50 = icmp eq i8* %48, null, !dbg !2907
  br i1 %50, label %210, label %51, !dbg !2908

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 2, metadata !2895, metadata !DIExpression()), !dbg !2898
  %52 = icmp sgt i32 %45, -1, !dbg !2902
  br i1 %52, label %60, label %53, !dbg !2902

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !2902
  store i32 %54, i32* %8, align 8, !dbg !2902
  %55 = icmp ult i32 %45, -7, !dbg !2902
  br i1 %55, label %56, label %60, !dbg !2902

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !2902
  %58 = sext i32 %45 to i64, !dbg !2902
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2902
  br label %64, !dbg !2902

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !2902
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !2902
  store i8* %63, i8** %10, align 8, !dbg !2902
  br label %64, !dbg !2902

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !2902
  %68 = load i8*, i8** %67, align 8, !dbg !2902
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2905
  store i8* %68, i8** %69, align 8, !dbg !2906, !tbaa !443
  %70 = icmp eq i8* %68, null, !dbg !2907
  br i1 %70, label %210, label %71, !dbg !2908

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 3, metadata !2895, metadata !DIExpression()), !dbg !2898
  %72 = icmp sgt i32 %65, -1, !dbg !2902
  br i1 %72, label %80, label %73, !dbg !2902

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !2902
  store i32 %74, i32* %8, align 8, !dbg !2902
  %75 = icmp ult i32 %65, -7, !dbg !2902
  br i1 %75, label %76, label %80, !dbg !2902

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !2902
  %78 = sext i32 %65 to i64, !dbg !2902
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !2902
  br label %84, !dbg !2902

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !2902
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !2902
  store i8* %83, i8** %10, align 8, !dbg !2902
  br label %84, !dbg !2902

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !2902
  %88 = load i8*, i8** %87, align 8, !dbg !2902
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2905
  store i8* %88, i8** %89, align 8, !dbg !2906, !tbaa !443
  %90 = icmp eq i8* %88, null, !dbg !2907
  br i1 %90, label %210, label %91, !dbg !2908

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 4, metadata !2895, metadata !DIExpression()), !dbg !2898
  %92 = icmp sgt i32 %85, -1, !dbg !2902
  br i1 %92, label %100, label %93, !dbg !2902

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !2902
  store i32 %94, i32* %8, align 8, !dbg !2902
  %95 = icmp ult i32 %85, -7, !dbg !2902
  br i1 %95, label %96, label %100, !dbg !2902

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !2902
  %98 = sext i32 %85 to i64, !dbg !2902
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !2902
  br label %104, !dbg !2902

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !2902
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !2902
  store i8* %103, i8** %10, align 8, !dbg !2902
  br label %104, !dbg !2902

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !2902
  %108 = load i8*, i8** %107, align 8, !dbg !2902
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2905
  store i8* %108, i8** %109, align 8, !dbg !2906, !tbaa !443
  %110 = icmp eq i8* %108, null, !dbg !2907
  br i1 %110, label %210, label %111, !dbg !2908

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 5, metadata !2895, metadata !DIExpression()), !dbg !2898
  %112 = icmp sgt i32 %105, -1, !dbg !2902
  br i1 %112, label %120, label %113, !dbg !2902

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !2902
  store i32 %114, i32* %8, align 8, !dbg !2902
  %115 = icmp ult i32 %105, -7, !dbg !2902
  br i1 %115, label %116, label %120, !dbg !2902

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !2902
  %118 = sext i32 %105 to i64, !dbg !2902
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !2902
  br label %124, !dbg !2902

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !2902
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !2902
  store i8* %123, i8** %10, align 8, !dbg !2902
  br label %124, !dbg !2902

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !2902
  %128 = load i8*, i8** %127, align 8, !dbg !2902
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2905
  store i8* %128, i8** %129, align 8, !dbg !2906, !tbaa !443
  %130 = icmp eq i8* %128, null, !dbg !2907
  br i1 %130, label %210, label %131, !dbg !2908

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 6, metadata !2895, metadata !DIExpression()), !dbg !2898
  %132 = icmp sgt i32 %125, -1, !dbg !2902
  br i1 %132, label %140, label %133, !dbg !2902

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !2902
  store i32 %134, i32* %8, align 8, !dbg !2902
  %135 = icmp ult i32 %125, -7, !dbg !2902
  br i1 %135, label %136, label %140, !dbg !2902

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !2902
  %138 = sext i32 %125 to i64, !dbg !2902
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !2902
  br label %144, !dbg !2902

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !2902
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !2902
  store i8* %143, i8** %10, align 8, !dbg !2902
  br label %144, !dbg !2902

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !2902
  %148 = load i8*, i8** %147, align 8, !dbg !2902
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2905
  store i8* %148, i8** %149, align 8, !dbg !2906, !tbaa !443
  %150 = icmp eq i8* %148, null, !dbg !2907
  br i1 %150, label %210, label %151, !dbg !2908

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 7, metadata !2895, metadata !DIExpression()), !dbg !2898
  %152 = icmp sgt i32 %145, -1, !dbg !2902
  br i1 %152, label %160, label %153, !dbg !2902

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !2902
  store i32 %154, i32* %8, align 8, !dbg !2902
  %155 = icmp ult i32 %145, -7, !dbg !2902
  br i1 %155, label %156, label %160, !dbg !2902

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !2902
  %158 = sext i32 %145 to i64, !dbg !2902
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !2902
  br label %164, !dbg !2902

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !2902
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !2902
  store i8* %163, i8** %10, align 8, !dbg !2902
  br label %164, !dbg !2902

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !2902
  %168 = load i8*, i8** %167, align 8, !dbg !2902
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2905
  store i8* %168, i8** %169, align 8, !dbg !2906, !tbaa !443
  %170 = icmp eq i8* %168, null, !dbg !2907
  br i1 %170, label %210, label %171, !dbg !2908

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 8, metadata !2895, metadata !DIExpression()), !dbg !2898
  %172 = icmp sgt i32 %165, -1, !dbg !2902
  br i1 %172, label %180, label %173, !dbg !2902

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !2902
  store i32 %174, i32* %8, align 8, !dbg !2902
  %175 = icmp ult i32 %165, -7, !dbg !2902
  br i1 %175, label %176, label %180, !dbg !2902

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !2902
  %178 = sext i32 %165 to i64, !dbg !2902
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !2902
  br label %184, !dbg !2902

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !2902
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !2902
  store i8* %183, i8** %10, align 8, !dbg !2902
  br label %184, !dbg !2902

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !2902
  %188 = load i8*, i8** %187, align 8, !dbg !2902
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2905
  store i8* %188, i8** %189, align 8, !dbg !2906, !tbaa !443
  %190 = icmp eq i8* %188, null, !dbg !2907
  br i1 %190, label %210, label %191, !dbg !2908

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !2895, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i64 9, metadata !2895, metadata !DIExpression()), !dbg !2898
  %192 = icmp sgt i32 %185, -1, !dbg !2902
  br i1 %192, label %200, label %193, !dbg !2902

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !2902
  store i32 %194, i32* %8, align 8, !dbg !2902
  %195 = icmp ult i32 %185, -7, !dbg !2902
  br i1 %195, label %196, label %200, !dbg !2902

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !2902
  %198 = sext i32 %185 to i64, !dbg !2902
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !2902
  br label %203, !dbg !2902

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !2902
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !2902
  store i8* %202, i8** %10, align 8, !dbg !2902
  br label %203, !dbg !2902

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !2902
  %206 = load i8*, i8** %205, align 8, !dbg !2902
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2905
  store i8* %206, i8** %207, align 8, !dbg !2906, !tbaa !443
  %208 = icmp eq i8* %206, null, !dbg !2907
  %209 = select i1 %208, i64 9, i64 10, !dbg !2908
  br label %210, !dbg !2908

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !2909
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !2910
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !2911
  ret void, !dbg !2911
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !2912 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2916, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %1, metadata !2917, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %2, metadata !2918, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.value(metadata i8* %3, metadata !2919, metadata !DIExpression()), !dbg !2921
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2922
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2922
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !2920, metadata !DIExpression()), !dbg !2923
  call void @llvm.va_start(i8* nonnull %7), !dbg !2924
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2925
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2925
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !2925, !tbaa.struct !845
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !2925
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !2925
  call void @llvm.va_end(i8* nonnull %7), !dbg !2926
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !2927
  ret void, !dbg !2927
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !2928 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2929, !tbaa !443
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.88, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !2929
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2930
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.106, i64 0, i64 0)) #32, !dbg !2930
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2931
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.109, i64 0, i64 0)) #32, !dbg !2931
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.86, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2932
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.111, i64 0, i64 0)) #32, !dbg !2932
  ret void, !dbg !2933
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !2934 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2939, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %1, metadata !2940, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i64 %2, metadata !2941, metadata !DIExpression()), !dbg !2942
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()) #32, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()) #32, !dbg !2948
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2950
  call void @llvm.dbg.value(metadata i8* %4, metadata !2951, metadata !DIExpression()) #32, !dbg !2956
  %5 = icmp eq i8* %4, null, !dbg !2958
  br i1 %5, label %6, label %7, !dbg !2960

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2961
  unreachable, !dbg !2961

7:                                                ; preds = %3
  ret i8* %4, !dbg !2962
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !2944 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %1, metadata !2946, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()), !dbg !2963
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !2964
  call void @llvm.dbg.value(metadata i8* %4, metadata !2951, metadata !DIExpression()) #32, !dbg !2965
  %5 = icmp eq i8* %4, null, !dbg !2967
  br i1 %5, label %6, label %7, !dbg !2968

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !2969
  unreachable, !dbg !2969

7:                                                ; preds = %3
  ret i8* %4, !dbg !2970
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2971 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()), !dbg !2976
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #32, !dbg !2978
  %3 = icmp eq i8* %2, null, !dbg !2980
  br i1 %3, label %4, label %5, !dbg !2981

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !2982
  unreachable, !dbg !2982

5:                                                ; preds = %1
  ret i8* %2, !dbg !2983
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !2984 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata i64 %0, metadata !2990, metadata !DIExpression()) #32, !dbg !2994
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !2996
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #32, !dbg !2997
  %3 = icmp eq i8* %2, null, !dbg !2999
  br i1 %3, label %4, label %5, !dbg !3000

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3001
  unreachable, !dbg !3001

5:                                                ; preds = %1
  ret i8* %2, !dbg !3002
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3003 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %0, metadata !2975, metadata !DIExpression()) #32, !dbg !3009
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #32, !dbg !3012
  %3 = icmp eq i8* %2, null, !dbg !3014
  br i1 %3, label %4, label %5, !dbg !3015

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3016
  unreachable, !dbg !3016

5:                                                ; preds = %1
  ret i8* %2, !dbg !3017
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3022, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3023, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #32, !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()) #32, !dbg !3030
  %3 = icmp eq i64 %1, 0, !dbg !3032
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3032
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3033
  call void @llvm.dbg.value(metadata i8* %5, metadata !2951, metadata !DIExpression()) #32, !dbg !3034
  %6 = icmp eq i8* %5, null, !dbg !3036
  br i1 %6, label %7, label %8, !dbg !3037

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3038
  unreachable, !dbg !3038

8:                                                ; preds = %2
  ret i8* %5, !dbg !3039
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %1, metadata !3045, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i8* %0, metadata !3047, metadata !DIExpression()) #32, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %1, metadata !3050, metadata !DIExpression()) #32, !dbg !3051
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #32, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()) #32, !dbg !3053
  %3 = icmp eq i64 %1, 0, !dbg !3055
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3055
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %5, metadata !2951, metadata !DIExpression()) #32, !dbg !3057
  %6 = icmp eq i8* %5, null, !dbg !3059
  br i1 %6, label %7, label %8, !dbg !3060

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3061
  unreachable, !dbg !3061

8:                                                ; preds = %2
  ret i8* %5, !dbg !3062
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3063 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %1, metadata !3068, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i64 %2, metadata !3069, metadata !DIExpression()), !dbg !3070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3071, metadata !DIExpression()) #32, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3074, metadata !DIExpression()) #32, !dbg !3076
  call void @llvm.dbg.value(metadata i64 %2, metadata !3075, metadata !DIExpression()) #32, !dbg !3076
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3078
  call void @llvm.dbg.value(metadata i8* %4, metadata !2951, metadata !DIExpression()) #32, !dbg !3079
  %5 = icmp eq i8* %4, null, !dbg !3081
  br i1 %5, label %6, label %7, !dbg !3082

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3083
  unreachable, !dbg !3083

7:                                                ; preds = %3
  ret i8* %4, !dbg !3084
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3085 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3089, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i64 %1, metadata !3090, metadata !DIExpression()), !dbg !3091
  call void @llvm.dbg.value(metadata i8* null, metadata !2943, metadata !DIExpression()) #32, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %0, metadata !2946, metadata !DIExpression()) #32, !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !2947, metadata !DIExpression()) #32, !dbg !3092
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3094
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3095
  %4 = icmp eq i8* %3, null, !dbg !3097
  br i1 %4, label %5, label %6, !dbg !3098

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3099
  unreachable, !dbg !3099

6:                                                ; preds = %2
  ret i8* %3, !dbg !3100
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3101 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3105, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i64 %1, metadata !3106, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i8* null, metadata !3067, metadata !DIExpression()) #32, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %0, metadata !3068, metadata !DIExpression()) #32, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()) #32, !dbg !3108
  call void @llvm.dbg.value(metadata i8* null, metadata !3071, metadata !DIExpression()) #32, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %0, metadata !3074, metadata !DIExpression()) #32, !dbg !3110
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()) #32, !dbg !3110
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3113
  %4 = icmp eq i8* %3, null, !dbg !3115
  br i1 %4, label %5, label %6, !dbg !3116

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3117
  unreachable, !dbg !3117

6:                                                ; preds = %2
  ret i8* %3, !dbg !3118
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3123, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i64* %1, metadata !3124, metadata !DIExpression()), !dbg !3125
  call void @llvm.dbg.value(metadata i8* %0, metadata !376, metadata !DIExpression()) #32, !dbg !3126
  call void @llvm.dbg.value(metadata i64* %1, metadata !377, metadata !DIExpression()) #32, !dbg !3126
  call void @llvm.dbg.value(metadata i64 1, metadata !378, metadata !DIExpression()) #32, !dbg !3126
  %3 = load i64, i64* %1, align 8, !dbg !3128, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %3, metadata !379, metadata !DIExpression()) #32, !dbg !3126
  %4 = icmp eq i8* %0, null, !dbg !3129
  br i1 %4, label %5, label %8, !dbg !3131

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3132
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3135
  br label %15, !dbg !3135

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3136
  %10 = add nuw i64 %9, 1, !dbg !3136
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3136
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3136
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3136
  call void @llvm.dbg.value(metadata i64 %13, metadata !379, metadata !DIExpression()) #32, !dbg !3126
  br i1 %12, label %14, label %15, !dbg !3139

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3140
  unreachable, !dbg !3140

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3126
  call void @llvm.dbg.value(metadata i64 %16, metadata !379, metadata !DIExpression()) #32, !dbg !3126
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #32, !dbg !3141
  call void @llvm.dbg.value(metadata i64 %16, metadata !2946, metadata !DIExpression()) #32, !dbg !3141
  call void @llvm.dbg.value(metadata i64 1, metadata !2947, metadata !DIExpression()) #32, !dbg !3141
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %17, metadata !2951, metadata !DIExpression()) #32, !dbg !3144
  %18 = icmp eq i8* %17, null, !dbg !3146
  br i1 %18, label %19, label %20, !dbg !3147

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3148
  unreachable, !dbg !3148

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !376, metadata !DIExpression()) #32, !dbg !3126
  store i64 %16, i64* %1, align 8, !dbg !3149, !tbaa !2224
  ret i8* %17, !dbg !3150
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !371 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !376, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64* %1, metadata !377, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !378, metadata !DIExpression()), !dbg !3151
  %4 = load i64, i64* %1, align 8, !dbg !3152, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %4, metadata !379, metadata !DIExpression()), !dbg !3151
  %5 = icmp eq i8* %0, null, !dbg !3153
  br i1 %5, label %6, label %13, !dbg !3154

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3155
  br i1 %7, label %8, label %20, !dbg !3156

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %9, metadata !379, metadata !DIExpression()), !dbg !3151
  %10 = icmp ugt i64 %2, 128, !dbg !3159
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3160
  call void @llvm.dbg.value(metadata i64 %12, metadata !379, metadata !DIExpression()), !dbg !3151
  br label %20, !dbg !3161

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3162
  %15 = add nuw i64 %14, 1, !dbg !3162
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3162
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3162
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3162
  call void @llvm.dbg.value(metadata i64 %18, metadata !379, metadata !DIExpression()), !dbg !3151
  br i1 %17, label %19, label %20, !dbg !3163

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3164
  unreachable, !dbg !3164

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3151
  call void @llvm.dbg.value(metadata i64 %21, metadata !379, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8* %0, metadata !2943, metadata !DIExpression()) #32, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %21, metadata !2946, metadata !DIExpression()) #32, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %2, metadata !2947, metadata !DIExpression()) #32, !dbg !3165
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3167
  call void @llvm.dbg.value(metadata i8* %22, metadata !2951, metadata !DIExpression()) #32, !dbg !3168
  %23 = icmp eq i8* %22, null, !dbg !3170
  br i1 %23, label %24, label %25, !dbg !3171

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3172
  unreachable, !dbg !3172

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !376, metadata !DIExpression()), !dbg !3151
  store i64 %21, i64* %1, align 8, !dbg !3173, !tbaa !2224
  ret i8* %22, !dbg !3174
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !383 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !391, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64* %1, metadata !392, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %2, metadata !393, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %3, metadata !394, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %4, metadata !395, metadata !DIExpression()), !dbg !3175
  %6 = load i64, i64* %1, align 8, !dbg !3176, !tbaa !2224
  call void @llvm.dbg.value(metadata i64 %6, metadata !396, metadata !DIExpression()), !dbg !3175
  %7 = ashr i64 %6, 1, !dbg !3177
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3177
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3177
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %10, metadata !397, metadata !DIExpression()), !dbg !3175
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3179
  call void @llvm.dbg.value(metadata i64 %11, metadata !397, metadata !DIExpression()), !dbg !3175
  %12 = icmp sgt i64 %3, -1, !dbg !3180
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3182
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %15, metadata !397, metadata !DIExpression()), !dbg !3175
  %16 = icmp slt i64 %4, 0, !dbg !3183
  br i1 %16, label %17, label %30, !dbg !3183

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3183
  br i1 %18, label %19, label %24, !dbg !3183

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3183
  %21 = udiv i64 9223372036854775807, %20, !dbg !3183
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3183
  br i1 %23, label %46, label %43, !dbg !3183

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3183
  br i1 %25, label %43, label %26, !dbg !3183

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3183
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3183
  %29 = icmp ult i64 %28, %15, !dbg !3183
  br i1 %29, label %46, label %43, !dbg !3183

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3183
  br i1 %31, label %43, label %32, !dbg !3183

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3183
  br i1 %33, label %34, label %40, !dbg !3183

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3183
  br i1 %35, label %43, label %36, !dbg !3183

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3183
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3183
  %39 = icmp ult i64 %38, %4, !dbg !3183
  br i1 %39, label %46, label %43, !dbg !3183

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3183
  %42 = icmp ult i64 %41, %15, !dbg !3183
  br i1 %42, label %46, label %43, !dbg !3183

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3175
  %44 = mul i64 %15, %4, !dbg !3183
  call void @llvm.dbg.value(metadata i64 %44, metadata !398, metadata !DIExpression()), !dbg !3175
  %45 = icmp slt i64 %44, 128, !dbg !3183
  br i1 %45, label %46, label %52, !dbg !3183

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !399, metadata !DIExpression()), !dbg !3175
  %48 = sdiv i64 %47, %4, !dbg !3184
  call void @llvm.dbg.value(metadata i64 %48, metadata !397, metadata !DIExpression()), !dbg !3175
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3187
  call void @llvm.dbg.value(metadata i64 %51, metadata !398, metadata !DIExpression()), !dbg !3175
  br label %52, !dbg !3188

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3175
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3175
  call void @llvm.dbg.value(metadata i64 %54, metadata !398, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %53, metadata !397, metadata !DIExpression()), !dbg !3175
  %55 = icmp eq i8* %0, null, !dbg !3189
  br i1 %55, label %56, label %57, !dbg !3191

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3192, !tbaa !2224
  br label %57, !dbg !3193

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3194
  %59 = icmp slt i64 %58, %2, !dbg !3196
  br i1 %59, label %60, label %97, !dbg !3197

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3198
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3198
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3198
  call void @llvm.dbg.value(metadata i64 %63, metadata !397, metadata !DIExpression()), !dbg !3175
  br i1 %62, label %96, label %64, !dbg !3199

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3200
  br i1 %66, label %96, label %67, !dbg !3200

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3201

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3201
  br i1 %69, label %70, label %75, !dbg !3201

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3201
  %72 = udiv i64 9223372036854775807, %71, !dbg !3201
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3201
  br i1 %74, label %96, label %94, !dbg !3201

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3201
  br i1 %76, label %94, label %77, !dbg !3201

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3201
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3201
  %80 = icmp ult i64 %79, %63, !dbg !3201
  br i1 %80, label %96, label %94, !dbg !3201

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3201
  br i1 %82, label %94, label %83, !dbg !3201

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3201
  br i1 %84, label %85, label %91, !dbg !3201

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3201
  br i1 %86, label %94, label %87, !dbg !3201

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3201
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3201
  %90 = icmp ult i64 %89, %4, !dbg !3201
  br i1 %90, label %96, label %94, !dbg !3201

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3201
  %93 = icmp ult i64 %92, %63, !dbg !3201
  br i1 %93, label %96, label %94, !dbg !3201

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !398, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3175
  %95 = mul i64 %63, %4, !dbg !3201
  call void @llvm.dbg.value(metadata i64 %95, metadata !398, metadata !DIExpression()), !dbg !3175
  br label %97, !dbg !3202

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3203
  unreachable, !dbg !3203

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3175
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3175
  call void @llvm.dbg.value(metadata i64 %99, metadata !398, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %98, metadata !397, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %0, metadata !3022, metadata !DIExpression()) #32, !dbg !3204
  call void @llvm.dbg.value(metadata i64 %99, metadata !3023, metadata !DIExpression()) #32, !dbg !3204
  call void @llvm.dbg.value(metadata i8* %0, metadata !3025, metadata !DIExpression()) #32, !dbg !3206
  call void @llvm.dbg.value(metadata i64 %99, metadata !3029, metadata !DIExpression()) #32, !dbg !3206
  %100 = icmp eq i64 %99, 0, !dbg !3208
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3208
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3209
  call void @llvm.dbg.value(metadata i8* %102, metadata !2951, metadata !DIExpression()) #32, !dbg !3210
  %103 = icmp eq i8* %102, null, !dbg !3212
  br i1 %103, label %104, label %105, !dbg !3213

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3214
  unreachable, !dbg !3214

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !391, metadata !DIExpression()), !dbg !3175
  store i64 %98, i64* %1, align 8, !dbg !3215, !tbaa !2224
  ret i8* %102, !dbg !3216
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3217 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()) #32, !dbg !3225
  call void @llvm.dbg.value(metadata i64 1, metadata !3224, metadata !DIExpression()) #32, !dbg !3225
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3227
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #32, !dbg !3228
  %3 = icmp eq i8* %2, null, !dbg !3230
  br i1 %3, label %4, label %5, !dbg !3231

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3232
  unreachable, !dbg !3232

5:                                                ; preds = %1
  ret i8* %2, !dbg !3233
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3222 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3221, metadata !DIExpression()), !dbg !3234
  call void @llvm.dbg.value(metadata i64 %1, metadata !3224, metadata !DIExpression()), !dbg !3234
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3235
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3236
  %4 = icmp eq i8* %3, null, !dbg !3238
  br i1 %4, label %5, label %6, !dbg !3239

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3240
  unreachable, !dbg !3240

6:                                                ; preds = %2
  ret i8* %3, !dbg !3241
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3242 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()) #32, !dbg !3250
  call void @llvm.dbg.value(metadata i64 1, metadata !3249, metadata !DIExpression()) #32, !dbg !3250
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #32, !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()) #32, !dbg !3256
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #32, !dbg !3256
  call void @llvm.dbg.value(metadata i64 1, metadata !3255, metadata !DIExpression()) #32, !dbg !3256
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3258
  call void @llvm.dbg.value(metadata i8* %2, metadata !2951, metadata !DIExpression()) #32, !dbg !3259
  %3 = icmp eq i8* %2, null, !dbg !3261
  br i1 %3, label %4, label %5, !dbg !3262

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3263
  unreachable, !dbg !3263

5:                                                ; preds = %1
  ret i8* %2, !dbg !3264
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3247 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3246, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3249, metadata !DIExpression()), !dbg !3265
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #32, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()) #32, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %0, metadata !3252, metadata !DIExpression()) #32, !dbg !3266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3255, metadata !DIExpression()) #32, !dbg !3266
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3268
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3269
  %4 = icmp eq i8* %3, null, !dbg !3271
  br i1 %4, label %5, label %6, !dbg !3272

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3273
  unreachable, !dbg !3273

6:                                                ; preds = %2
  ret i8* %3, !dbg !3274
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3275 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3279, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !3280, metadata !DIExpression()), !dbg !3281
  call void @llvm.dbg.value(metadata i64 %1, metadata !2975, metadata !DIExpression()) #32, !dbg !3282
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3284
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3285
  %4 = icmp eq i8* %3, null, !dbg !3287
  br i1 %4, label %5, label %6, !dbg !3288

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3289
  unreachable, !dbg !3289

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3290, metadata !DIExpression()) #32, !dbg !3298
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()) #32, !dbg !3298
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()) #32, !dbg !3298
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3300
  ret i8* %3, !dbg !3301
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3302 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !3307, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i64 %1, metadata !2988, metadata !DIExpression()) #32, !dbg !3309
  call void @llvm.dbg.value(metadata i64 %1, metadata !2990, metadata !DIExpression()) #32, !dbg !3311
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3313
  call void @llvm.dbg.value(metadata i8* %3, metadata !2951, metadata !DIExpression()) #32, !dbg !3314
  %4 = icmp eq i8* %3, null, !dbg !3316
  br i1 %4, label %5, label %6, !dbg !3317

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3318
  unreachable, !dbg !3318

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3290, metadata !DIExpression()) #32, !dbg !3319
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()) #32, !dbg !3319
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()) #32, !dbg !3319
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3321
  ret i8* %3, !dbg !3322
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3323 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3327, metadata !DIExpression()), !dbg !3330
  call void @llvm.dbg.value(metadata i64 %1, metadata !3328, metadata !DIExpression()), !dbg !3330
  %3 = add nsw i64 %1, 1, !dbg !3331
  call void @llvm.dbg.value(metadata i64 %3, metadata !2988, metadata !DIExpression()) #32, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %3, metadata !2990, metadata !DIExpression()) #32, !dbg !3334
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3336
  call void @llvm.dbg.value(metadata i8* %4, metadata !2951, metadata !DIExpression()) #32, !dbg !3337
  %5 = icmp eq i8* %4, null, !dbg !3339
  br i1 %5, label %6, label %7, !dbg !3340

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3341
  unreachable, !dbg !3341

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3329, metadata !DIExpression()), !dbg !3330
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3342
  store i8 0, i8* %8, align 1, !dbg !3343, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %4, metadata !3290, metadata !DIExpression()) #32, !dbg !3344
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()) #32, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %1, metadata !3297, metadata !DIExpression()) #32, !dbg !3344
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3346
  ret i8* %4, !dbg !3347
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3348 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3350, metadata !DIExpression()), !dbg !3351
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3352
  %3 = add i64 %2, 1, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3279, metadata !DIExpression()) #32, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %3, metadata !3280, metadata !DIExpression()) #32, !dbg !3354
  call void @llvm.dbg.value(metadata i64 %3, metadata !2975, metadata !DIExpression()) #32, !dbg !3356
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3358
  call void @llvm.dbg.value(metadata i8* %4, metadata !2951, metadata !DIExpression()) #32, !dbg !3359
  %5 = icmp eq i8* %4, null, !dbg !3361
  br i1 %5, label %6, label %7, !dbg !3362

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3363
  unreachable, !dbg !3363

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3290, metadata !DIExpression()) #32, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %0, metadata !3296, metadata !DIExpression()) #32, !dbg !3364
  call void @llvm.dbg.value(metadata i64 %3, metadata !3297, metadata !DIExpression()) #32, !dbg !3364
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3366
  ret i8* %4, !dbg !3367
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3368 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3373, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %1, metadata !3370, metadata !DIExpression()), !dbg !3374
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.126, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.127, i64 0, i64 0), i32 noundef 5) #32, !dbg !3373
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i64 0, i64 0), i8* noundef %2) #32, !dbg !3373
  %3 = icmp eq i32 %1, 0, !dbg !3373
  tail call void @llvm.assume(i1 %3), !dbg !3373
  tail call void @abort() #34, !dbg !3375
  unreachable, !dbg !3375
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3376 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3414, metadata !DIExpression()), !dbg !3419
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3420
  call void @llvm.dbg.value(metadata i1 undef, metadata !3415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3421, metadata !DIExpression()), !dbg !3424
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3426
  %4 = load i32, i32* %3, align 8, !dbg !3426, !tbaa !3427
  %5 = and i32 %4, 32, !dbg !3428
  %6 = icmp eq i32 %5, 0, !dbg !3428
  call void @llvm.dbg.value(metadata i1 %6, metadata !3417, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3429
  %8 = icmp eq i32 %7, 0, !dbg !3430
  call void @llvm.dbg.value(metadata i1 %8, metadata !3418, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  br i1 %6, label %9, label %19, !dbg !3431

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3433
  call void @llvm.dbg.value(metadata i1 %10, metadata !3415, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3419
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3434
  %12 = xor i1 %8, true, !dbg !3434
  %13 = sext i1 %12 to i32, !dbg !3434
  br i1 %11, label %22, label %14, !dbg !3434

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3435
  %16 = load i32, i32* %15, align 4, !dbg !3435, !tbaa !535
  %17 = icmp ne i32 %16, 9, !dbg !3436
  %18 = sext i1 %17 to i32, !dbg !3437
  br label %22, !dbg !3437

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3438

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3440
  store i32 0, i32* %21, align 4, !dbg !3442, !tbaa !535
  br label %22, !dbg !3440

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3419
  ret i32 %23, !dbg !3443
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3444 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3482, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3483, metadata !DIExpression()), !dbg !3486
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3487
  call void @llvm.dbg.value(metadata i32 %2, metadata !3484, metadata !DIExpression()), !dbg !3486
  %3 = icmp slt i32 %2, 0, !dbg !3488
  br i1 %3, label %4, label %6, !dbg !3490

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3491
  br label %24, !dbg !3492

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3493
  %8 = icmp eq i32 %7, 0, !dbg !3493
  br i1 %8, label %13, label %9, !dbg !3495

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3496
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3497
  %12 = icmp eq i64 %11, -1, !dbg !3498
  br i1 %12, label %16, label %13, !dbg !3499

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3500
  %15 = icmp eq i32 %14, 0, !dbg !3500
  br i1 %15, label %16, label %18, !dbg !3501

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3483, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %21, metadata !3485, metadata !DIExpression()), !dbg !3486
  br label %24, !dbg !3503

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3504
  %20 = load i32, i32* %19, align 4, !dbg !3504, !tbaa !535
  call void @llvm.dbg.value(metadata i32 %20, metadata !3483, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata i32 0, metadata !3485, metadata !DIExpression()), !dbg !3486
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3502
  call void @llvm.dbg.value(metadata i32 %21, metadata !3485, metadata !DIExpression()), !dbg !3486
  %22 = icmp eq i32 %20, 0, !dbg !3505
  br i1 %22, label %24, label %23, !dbg !3503

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3507, !tbaa !535
  call void @llvm.dbg.value(metadata i32 -1, metadata !3485, metadata !DIExpression()), !dbg !3486
  br label %24, !dbg !3509

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3486
  ret i32 %25, !dbg !3510
}

; Function Attrs: nofree nounwind
declare !dbg !3511 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3512 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3513 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3517 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3555, metadata !DIExpression()), !dbg !3556
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3557
  br i1 %2, label %6, label %3, !dbg !3559

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3560
  %5 = icmp eq i32 %4, 0, !dbg !3560
  br i1 %5, label %6, label %8, !dbg !3561

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3562
  br label %17, !dbg !3563

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3564, metadata !DIExpression()) #32, !dbg !3569
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3571
  %10 = load i32, i32* %9, align 8, !dbg !3571, !tbaa !3427
  %11 = and i32 %10, 256, !dbg !3573
  %12 = icmp eq i32 %11, 0, !dbg !3573
  br i1 %12, label %15, label %13, !dbg !3574

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3575
  br label %15, !dbg !3575

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3576
  br label %17, !dbg !3577

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3556
  ret i32 %18, !dbg !3578
}

; Function Attrs: nofree nounwind
declare !dbg !3579 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3580 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3619, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i64 %1, metadata !3620, metadata !DIExpression()), !dbg !3625
  call void @llvm.dbg.value(metadata i32 %2, metadata !3621, metadata !DIExpression()), !dbg !3625
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3626
  %5 = load i8*, i8** %4, align 8, !dbg !3626, !tbaa !3627
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3628
  %7 = load i8*, i8** %6, align 8, !dbg !3628, !tbaa !3629
  %8 = icmp eq i8* %5, %7, !dbg !3630
  br i1 %8, label %9, label %28, !dbg !3631

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3632
  %11 = load i8*, i8** %10, align 8, !dbg !3632, !tbaa !960
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3633
  %13 = load i8*, i8** %12, align 8, !dbg !3633, !tbaa !3634
  %14 = icmp eq i8* %11, %13, !dbg !3635
  br i1 %14, label %15, label %28, !dbg !3636

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3637
  %17 = load i8*, i8** %16, align 8, !dbg !3637, !tbaa !3638
  %18 = icmp eq i8* %17, null, !dbg !3639
  br i1 %18, label %19, label %28, !dbg !3640

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3641
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %21, metadata !3622, metadata !DIExpression()), !dbg !3643
  %22 = icmp eq i64 %21, -1, !dbg !3644
  br i1 %22, label %30, label %23, !dbg !3646

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3647
  %25 = load i32, i32* %24, align 8, !dbg !3648, !tbaa !3427
  %26 = and i32 %25, -17, !dbg !3648
  store i32 %26, i32* %24, align 8, !dbg !3648, !tbaa !3427
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3649
  store i64 %21, i64* %27, align 8, !dbg !3650, !tbaa !3651
  br label %30, !dbg !3652

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3653
  br label %30, !dbg !3654

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3625
  ret i32 %31, !dbg !3655
}

; Function Attrs: nofree nounwind
declare !dbg !3656 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3659 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3664, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %1, metadata !3665, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i64 %2, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3667, metadata !DIExpression()), !dbg !3669
  %5 = icmp eq i8* %1, null, !dbg !3670
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3672
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.139, i64 0, i64 0), i8* %1, !dbg !3672
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %8, metadata !3666, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i8* %7, metadata !3665, metadata !DIExpression()), !dbg !3669
  call void @llvm.dbg.value(metadata i32* %6, metadata !3664, metadata !DIExpression()), !dbg !3669
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3673
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !3675
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3667, metadata !DIExpression()), !dbg !3669
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !3676
  call void @llvm.dbg.value(metadata i64 %11, metadata !3668, metadata !DIExpression()), !dbg !3669
  %12 = icmp ult i64 %11, -3, !dbg !3677
  br i1 %12, label %13, label %18, !dbg !3679

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !3680
  %15 = icmp eq i32 %14, 0, !dbg !3680
  br i1 %15, label %16, label %30, !dbg !3681

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3682, metadata !DIExpression()) #32, !dbg !3687
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3689, metadata !DIExpression()) #32, !dbg !3694
  call void @llvm.dbg.value(metadata i32 0, metadata !3692, metadata !DIExpression()) #32, !dbg !3694
  call void @llvm.dbg.value(metadata i64 8, metadata !3693, metadata !DIExpression()) #32, !dbg !3694
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !3696
  store i64 0, i64* %17, align 1, !dbg !3696
  br label %30, !dbg !3697

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !3698
  br i1 %19, label %20, label %21, !dbg !3700

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !3701
  unreachable, !dbg !3701

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !3702

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !3704
  br i1 %24, label %30, label %25, !dbg !3705

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !3706
  br i1 %26, label %30, label %27, !dbg !3709

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !3710, !tbaa !544
  %29 = zext i8 %28 to i32, !dbg !3711
  store i32 %29, i32* %6, align 4, !dbg !3712, !tbaa !535
  br label %30, !dbg !3713

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3669
  ret i64 %31, !dbg !3714
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !3715 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !3721 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3723, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %1, metadata !3724, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i64 %2, metadata !3725, metadata !DIExpression()), !dbg !3727
  %4 = icmp eq i64 %2, 0, !dbg !3728
  br i1 %4, label %8, label %5, !dbg !3728

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !3728
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3728
  br i1 %7, label %13, label %8, !dbg !3728

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3727
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3727
  %9 = mul i64 %2, %1, !dbg !3728
  call void @llvm.dbg.value(metadata i64 %9, metadata !3726, metadata !DIExpression()), !dbg !3727
  call void @llvm.dbg.value(metadata i8* %0, metadata !3730, metadata !DIExpression()) #32, !dbg !3734
  call void @llvm.dbg.value(metadata i64 %9, metadata !3733, metadata !DIExpression()) #32, !dbg !3734
  %10 = icmp eq i64 %9, 0, !dbg !3736
  %11 = select i1 %10, i64 1, i64 %9, !dbg !3736
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !3737
  br label %15, !dbg !3738

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !3726, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3727
  %14 = tail call i32* @__errno_location() #35, !dbg !3739
  store i32 12, i32* %14, align 4, !dbg !3741, !tbaa !535
  br label %15, !dbg !3742

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !3727
  ret i8* %16, !dbg !3743
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !3744 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !3748, metadata !DIExpression()), !dbg !3753
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !3754
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3754
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !3749, metadata !DIExpression()), !dbg !3755
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !3756
  %5 = icmp eq i32 %4, 0, !dbg !3756
  br i1 %5, label %6, label %13, !dbg !3758

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !3759, metadata !DIExpression()) #32, !dbg !3763
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), metadata !3762, metadata !DIExpression()) #32, !dbg !3763
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.144, i64 0, i64 0), i64 2), !dbg !3766
  %8 = icmp eq i32 %7, 0, !dbg !3767
  br i1 %8, label %12, label %9, !dbg !3768

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !3759, metadata !DIExpression()) #32, !dbg !3769
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), metadata !3762, metadata !DIExpression()) #32, !dbg !3769
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.145, i64 0, i64 0), i64 6), !dbg !3771
  %11 = icmp eq i32 %10, 0, !dbg !3772
  br i1 %11, label %12, label %13, !dbg !3773

12:                                               ; preds = %9, %6
  br label %13, !dbg !3774

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !3753
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !3775
  ret i1 %14, !dbg !3775
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3780, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i8* %1, metadata !3781, metadata !DIExpression()), !dbg !3783
  call void @llvm.dbg.value(metadata i64 %2, metadata !3782, metadata !DIExpression()), !dbg !3783
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !3784
  ret i32 %4, !dbg !3785
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !3786 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3790, metadata !DIExpression()), !dbg !3791
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !3792
  ret i8* %2, !dbg !3793
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !3794 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()), !dbg !3798
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3799
  call void @llvm.dbg.value(metadata i8* %2, metadata !3797, metadata !DIExpression()), !dbg !3798
  ret i8* %2, !dbg !3800
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3801 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3803, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i8* %1, metadata !3804, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i64 %2, metadata !3805, metadata !DIExpression()), !dbg !3810
  call void @llvm.dbg.value(metadata i32 %0, metadata !3796, metadata !DIExpression()) #32, !dbg !3811
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %4, metadata !3797, metadata !DIExpression()) #32, !dbg !3811
  call void @llvm.dbg.value(metadata i8* %4, metadata !3806, metadata !DIExpression()), !dbg !3810
  %5 = icmp eq i8* %4, null, !dbg !3814
  br i1 %5, label %6, label %9, !dbg !3815

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !3816
  br i1 %7, label %19, label %8, !dbg !3819

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !3820, !tbaa !544
  br label %19, !dbg !3821

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !3822
  call void @llvm.dbg.value(metadata i64 %10, metadata !3807, metadata !DIExpression()), !dbg !3823
  %11 = icmp ult i64 %10, %2, !dbg !3824
  br i1 %11, label %12, label %14, !dbg !3826

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !3827
  call void @llvm.dbg.value(metadata i8* %1, metadata !3829, metadata !DIExpression()) #32, !dbg !3834
  call void @llvm.dbg.value(metadata i8* %4, metadata !3832, metadata !DIExpression()) #32, !dbg !3834
  call void @llvm.dbg.value(metadata i64 %13, metadata !3833, metadata !DIExpression()) #32, !dbg !3834
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !3836
  br label %19, !dbg !3837

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !3838
  br i1 %15, label %19, label %16, !dbg !3841

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !3842
  call void @llvm.dbg.value(metadata i8* %1, metadata !3829, metadata !DIExpression()) #32, !dbg !3844
  call void @llvm.dbg.value(metadata i8* %4, metadata !3832, metadata !DIExpression()) #32, !dbg !3844
  call void @llvm.dbg.value(metadata i64 %17, metadata !3833, metadata !DIExpression()) #32, !dbg !3844
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !3846
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !3847
  store i8 0, i8* %18, align 1, !dbg !3848, !tbaa !544
  br label %19, !dbg !3849

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !3850
  ret i32 %20, !dbg !3851
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
attributes #24 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind }
attributes #33 = { nounwind readonly willreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind readnone willreturn }
attributes #36 = { noreturn }
attributes #37 = { cold }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(0,1) }
attributes #40 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !347, !149, !154, !161, !327, !349, !351, !202, !212, !244, !360, !319, !367, !401, !403, !405, !407, !409, !333, !411, !414, !416, !418}
!llvm.ident = !{!420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420, !420}
!llvm.module.flags = !{!421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 36, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !47, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkfifo.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0ee63ed749703cce6fd462844f0b7c3f")
!4 = !{!5, !20}
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
!35 = !{!36, !38, !39, !40, !41, !44, !46}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48, !0}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !50, file: !51, line: 575, type: !39, isLocal: true, isDefinition: true)
!50 = distinct !DISubprogram(name: "oputs_", scope: !51, file: !51, line: 573, type: !52, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!51 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!52 = !DISubroutineType(types: !53)
!53 = !{null, !44, !44}
!54 = !{!55, !56, !57, !60, !62, !63, !64, !68, !69, !70, !71, !73, !129, !130, !131, !133, !134}
!55 = !DILocalVariable(name: "program", arg: 1, scope: !50, file: !51, line: 573, type: !44)
!56 = !DILocalVariable(name: "option", arg: 2, scope: !50, file: !51, line: 573, type: !44)
!57 = !DILocalVariable(name: "term", scope: !58, file: !51, line: 585, type: !44)
!58 = distinct !DILexicalBlock(scope: !59, file: !51, line: 582, column: 5)
!59 = distinct !DILexicalBlock(scope: !50, file: !51, line: 581, column: 7)
!60 = !DILocalVariable(name: "double_space", scope: !50, file: !51, line: 594, type: !61)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DILocalVariable(name: "first_word", scope: !50, file: !51, line: 595, type: !44)
!63 = !DILocalVariable(name: "option_text", scope: !50, file: !51, line: 596, type: !44)
!64 = !DILocalVariable(name: "s", scope: !65, file: !51, line: 608, type: !44)
!65 = distinct !DILexicalBlock(scope: !66, file: !51, line: 605, column: 5)
!66 = distinct !DILexicalBlock(scope: !67, file: !51, line: 604, column: 12)
!67 = distinct !DILexicalBlock(scope: !50, file: !51, line: 597, column: 7)
!68 = !DILocalVariable(name: "spaces", scope: !65, file: !51, line: 609, type: !41)
!69 = !DILocalVariable(name: "anchor_len", scope: !50, file: !51, line: 620, type: !41)
!70 = !DILocalVariable(name: "desc_text", scope: !50, file: !51, line: 625, type: !44)
!71 = !DILocalVariable(name: "__ptr", scope: !72, file: !51, line: 644, type: !44)
!72 = distinct !DILexicalBlock(scope: !50, file: !51, line: 644, column: 3)
!73 = !DILocalVariable(name: "__stream", scope: !72, file: !51, line: 644, type: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !77)
!76 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !79)
!78 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !95, !97, !98, !99, !103, !104, !106, !110, !113, !115, !118, !121, !122, !123, !124, !125}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !77, file: !78, line: 51, baseType: !39, size: 32)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !77, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !77, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !77, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !77, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !77, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !77, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !77, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !77, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !77, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !77, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !77, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !77, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !78, line: 36, flags: DIFlagFwdDecl)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !77, file: !78, line: 70, baseType: !96, size: 64, offset: 832)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !77, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !77, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !77, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !101, line: 152, baseType: !102)
!101 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !77, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !77, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!105 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !77, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 1)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !77, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !78, line: 43, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !77, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !101, line: 153, baseType: !102)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !77, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !78, line: 37, flags: DIFlagFwdDecl)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !77, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !78, line: 38, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !77, file: !78, line: 93, baseType: !96, size: 64, offset: 1344)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !77, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !77, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !77, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !77, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 160, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DILocalVariable(name: "__cnt", scope: !72, file: !51, line: 644, type: !41)
!130 = !DILocalVariable(name: "url_program", scope: !50, file: !51, line: 648, type: !44)
!131 = !DILocalVariable(name: "__ptr", scope: !132, file: !51, line: 686, type: !44)
!132 = distinct !DILexicalBlock(scope: !50, file: !51, line: 686, column: 3)
!133 = !DILocalVariable(name: "__stream", scope: !132, file: !51, line: 686, type: !74)
!134 = !DILocalVariable(name: "__cnt", scope: !132, file: !51, line: 686, type: !41)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1280, elements: !145)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !138, line: 50, size: 256, elements: !139)
!138 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!139 = !{!140, !141, !142, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 52, baseType: !44, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !137, file: !138, line: 55, baseType: !39, size: 32, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !137, file: !138, line: 56, baseType: !143, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !137, file: !138, line: 57, baseType: !39, size: 32, offset: 192)
!145 = !{!146}
!146 = !DISubrange(count: 5)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(name: "Version", scope: !149, file: !150, line: 3, type: !44, isLocal: false, isDefinition: true)
!149 = distinct !DICompileUnit(language: DW_LANG_C99, file: !150, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !151, splitDebugInlining: false, nameTableKind: None)
!150 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!151 = !{!147}
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "file_name", scope: !154, file: !155, line: 45, type: !44, isLocal: true, isDefinition: true)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !156, splitDebugInlining: false, nameTableKind: None)
!155 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!156 = !{!152, !157}
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !154, file: !155, line: 55, type: !61, isLocal: true, isDefinition: true)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !161, file: !162, line: 66, type: !197, isLocal: false, isDefinition: true)
!161 = distinct !DICompileUnit(language: DW_LANG_C99, file: !162, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !163, globals: !164, splitDebugInlining: false, nameTableKind: None)
!162 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!163 = !{!38, !46}
!164 = !{!165, !191, !159, !193, !195}
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "old_file_name", scope: !167, file: !162, line: 304, type: !44, isLocal: true, isDefinition: true)
!167 = distinct !DISubprogram(name: "verror_at_line", scope: !162, file: !162, line: 298, type: !168, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !184)
!168 = !DISubroutineType(types: !169)
!169 = !{null, !39, !39, !44, !7, !44, !170}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !175, baseType: !176)
!175 = !DIFile(filename: "lib/error.c", directory: "/src")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !178)
!177 = !DINamespace(name: "std", scope: null)
!178 = !{!179, !180, !181, !182, !183}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !176, file: !175, baseType: !38, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !176, file: !175, baseType: !38, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !176, file: !175, baseType: !38, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !176, file: !175, baseType: !39, size: 32, offset: 192)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !176, file: !175, baseType: !39, size: 32, offset: 224)
!184 = !{!185, !186, !187, !188, !189, !190}
!185 = !DILocalVariable(name: "status", arg: 1, scope: !167, file: !162, line: 298, type: !39)
!186 = !DILocalVariable(name: "errnum", arg: 2, scope: !167, file: !162, line: 298, type: !39)
!187 = !DILocalVariable(name: "file_name", arg: 3, scope: !167, file: !162, line: 298, type: !44)
!188 = !DILocalVariable(name: "line_number", arg: 4, scope: !167, file: !162, line: 298, type: !7)
!189 = !DILocalVariable(name: "message", arg: 5, scope: !167, file: !162, line: 298, type: !44)
!190 = !DILocalVariable(name: "args", arg: 6, scope: !167, file: !162, line: 298, type: !170)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "old_line_number", scope: !167, file: !162, line: 305, type: !7, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(name: "error_message_count", scope: !161, file: !162, line: 69, type: !7, isLocal: false, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !161, file: !162, line: 295, type: !39, isLocal: false, isDefinition: true)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "program_name", scope: !202, file: !203, line: 31, type: !44, isLocal: false, isDefinition: true)
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !204, globals: !205, splitDebugInlining: false, nameTableKind: None)
!203 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!204 = !{!36}
!205 = !{!200}
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "utf07FF", scope: !208, file: !209, line: 46, type: !239, isLocal: true, isDefinition: true)
!208 = distinct !DISubprogram(name: "proper_name_lite", scope: !209, file: !209, line: 38, type: !210, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !214)
!209 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!210 = !DISubroutineType(types: !211)
!211 = !{!44, !44, !44}
!212 = distinct !DICompileUnit(language: DW_LANG_C99, file: !209, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !213, splitDebugInlining: false, nameTableKind: None)
!213 = !{!206}
!214 = !{!215, !216, !217, !218, !223}
!215 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !208, file: !209, line: 38, type: !44)
!216 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !208, file: !209, line: 38, type: !44)
!217 = !DILocalVariable(name: "translation", scope: !208, file: !209, line: 40, type: !44)
!218 = !DILocalVariable(name: "w", scope: !208, file: !209, line: 47, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !220, line: 37, baseType: !221)
!220 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !101, line: 57, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !101, line: 42, baseType: !7)
!223 = !DILocalVariable(name: "mbs", scope: !208, file: !209, line: 48, type: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !226)
!225 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !228)
!227 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !228, file: !227, line: 15, baseType: !39, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !228, file: !227, line: 20, baseType: !232, size: 32, offset: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !228, file: !227, line: 16, size: 32, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !232, file: !227, line: 18, baseType: !7, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !232, file: !227, line: 19, baseType: !236, size: 32)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 4)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 16, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 2)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !244, file: !245, line: 76, type: !313, isLocal: false, isDefinition: true)
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !245, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !246, retainedTypes: !252, globals: !253, splitDebugInlining: false, nameTableKind: None)
!245 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!246 = !{!5, !247, !20}
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 254, baseType: !7, size: 32, elements: !248)
!248 = !{!249, !250, !251}
!249 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!250 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!251 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!252 = !{!39, !40, !41}
!253 = !{!242, !254, !260, !272, !274, !279, !302, !309, !311}
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !244, file: !245, line: 92, type: !256, isLocal: false, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 320, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!258 = !{!259}
!259 = !DISubrange(count: 10)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !244, file: !245, line: 1040, type: !262, isLocal: false, isDefinition: true)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !245, line: 56, size: 448, elements: !263)
!263 = !{!264, !265, !266, !270, !271}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !262, file: !245, line: 59, baseType: !5, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !262, file: !245, line: 62, baseType: !39, size: 32, offset: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !262, file: !245, line: 66, baseType: !267, size: 256, offset: 64)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 8)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !262, file: !245, line: 69, baseType: !44, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !262, file: !245, line: 72, baseType: !44, size: 64, offset: 384)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !244, file: !245, line: 107, type: !262, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "slot0", scope: !244, file: !245, line: 831, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2048, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 256)
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "quote", scope: !281, file: !245, line: 228, type: !300, isLocal: true, isDefinition: true)
!281 = distinct !DISubprogram(name: "gettext_quote", scope: !245, file: !245, line: 197, type: !282, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !284)
!282 = !DISubroutineType(types: !283)
!283 = !{!44, !44, !5}
!284 = !{!285, !286, !287, !288, !289}
!285 = !DILocalVariable(name: "msgid", arg: 1, scope: !281, file: !245, line: 197, type: !44)
!286 = !DILocalVariable(name: "s", arg: 2, scope: !281, file: !245, line: 197, type: !5)
!287 = !DILocalVariable(name: "translation", scope: !281, file: !245, line: 199, type: !44)
!288 = !DILocalVariable(name: "w", scope: !281, file: !245, line: 229, type: !219)
!289 = !DILocalVariable(name: "mbs", scope: !281, file: !245, line: 230, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !292, file: !227, line: 15, baseType: !39, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !292, file: !227, line: 20, baseType: !296, size: 32, offset: 32)
!296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !292, file: !227, line: 16, size: 32, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !296, file: !227, line: 18, baseType: !7, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !296, file: !227, line: 19, baseType: !236, size: 32)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, elements: !301)
!301 = !{!241, !238}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "slotvec", scope: !244, file: !245, line: 834, type: !304, isLocal: true, isDefinition: true)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !245, line: 823, size: 128, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !305, file: !245, line: 825, baseType: !41, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !305, file: !245, line: 826, baseType: !36, size: 64, offset: 64)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "nslots", scope: !244, file: !245, line: 832, type: !39, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(name: "slotvec0", scope: !244, file: !245, line: 833, type: !305, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 704, elements: !315)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!315 = !{!316}
!316 = !DISubrange(count: 11)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !319, file: !320, line: 26, type: !322, isLocal: false, isDefinition: true)
!319 = distinct !DICompileUnit(language: DW_LANG_C99, file: !320, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !321, splitDebugInlining: false, nameTableKind: None)
!320 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!321 = !{!317}
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 376, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 47)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "exit_failure", scope: !327, file: !328, line: 24, type: !330, isLocal: false, isDefinition: true)
!327 = distinct !DICompileUnit(language: DW_LANG_C99, file: !328, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !329, splitDebugInlining: false, nameTableKind: None)
!328 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!329 = !{!325}
!330 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(name: "internal_state", scope: !333, file: !334, line: 97, type: !337, isLocal: true, isDefinition: true)
!333 = distinct !DICompileUnit(language: DW_LANG_C99, file: !334, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !335, globals: !336, splitDebugInlining: false, nameTableKind: None)
!334 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!335 = !{!38, !41, !46}
!336 = !{!331}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !225, line: 6, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !227, line: 21, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 13, size: 64, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !339, file: !227, line: 15, baseType: !39, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !339, file: !227, line: 20, baseType: !343, size: 32, offset: 32)
!343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !339, file: !227, line: 16, size: 32, elements: !344)
!344 = !{!345, !346}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !343, file: !227, line: 18, baseType: !7, size: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !343, file: !227, line: 19, baseType: !236, size: 32)
!347 = distinct !DICompileUnit(language: DW_LANG_C99, file: !348, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!348 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!351 = distinct !DICompileUnit(language: DW_LANG_C99, file: !352, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !353, splitDebugInlining: false, nameTableKind: None)
!352 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!353 = !{!354}
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !352, line: 78, baseType: !7, size: 32, elements: !355)
!355 = !{!356, !357, !358, !359}
!356 = !DIEnumerator(name: "MODE_DONE", value: 0)
!357 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!358 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!359 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !362, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!362 = !{!363}
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !361, line: 40, baseType: !7, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!366 = !{!38}
!367 = distinct !DICompileUnit(language: DW_LANG_C99, file: !368, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !369, retainedTypes: !400, splitDebugInlining: false, nameTableKind: None)
!368 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!369 = !{!370, !382}
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !371, file: !368, line: 188, baseType: !7, size: 32, elements: !380)
!371 = distinct !DISubprogram(name: "x2nrealloc", scope: !368, file: !368, line: 176, type: !372, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !375)
!372 = !DISubroutineType(types: !373)
!373 = !{!38, !38, !374, !41}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!375 = !{!376, !377, !378, !379}
!376 = !DILocalVariable(name: "p", arg: 1, scope: !371, file: !368, line: 176, type: !38)
!377 = !DILocalVariable(name: "pn", arg: 2, scope: !371, file: !368, line: 176, type: !374)
!378 = !DILocalVariable(name: "s", arg: 3, scope: !371, file: !368, line: 176, type: !41)
!379 = !DILocalVariable(name: "n", scope: !371, file: !368, line: 178, type: !41)
!380 = !{!381}
!381 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!382 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !383, file: !368, line: 228, baseType: !7, size: 32, elements: !380)
!383 = distinct !DISubprogram(name: "xpalloc", scope: !368, file: !368, line: 223, type: !384, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !390)
!384 = !DISubroutineType(types: !385)
!385 = !{!38, !38, !386, !387, !389, !387}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !388, line: 130, baseType: !389)
!388 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !42, line: 35, baseType: !102)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399}
!391 = !DILocalVariable(name: "pa", arg: 1, scope: !383, file: !368, line: 223, type: !38)
!392 = !DILocalVariable(name: "pn", arg: 2, scope: !383, file: !368, line: 223, type: !386)
!393 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !383, file: !368, line: 223, type: !387)
!394 = !DILocalVariable(name: "n_max", arg: 4, scope: !383, file: !368, line: 223, type: !389)
!395 = !DILocalVariable(name: "s", arg: 5, scope: !383, file: !368, line: 223, type: !387)
!396 = !DILocalVariable(name: "n0", scope: !383, file: !368, line: 230, type: !387)
!397 = !DILocalVariable(name: "n", scope: !383, file: !368, line: 237, type: !387)
!398 = !DILocalVariable(name: "nbytes", scope: !383, file: !368, line: 248, type: !387)
!399 = !DILocalVariable(name: "adjusted_nbytes", scope: !383, file: !368, line: 252, type: !387)
!400 = !{!36, !38, !61, !102, !43}
!401 = distinct !DICompileUnit(language: DW_LANG_C99, file: !402, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!402 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!403 = distinct !DICompileUnit(language: DW_LANG_C99, file: !404, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!404 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!405 = distinct !DICompileUnit(language: DW_LANG_C99, file: !406, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!406 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!407 = distinct !DICompileUnit(language: DW_LANG_C99, file: !408, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!408 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!409 = distinct !DICompileUnit(language: DW_LANG_C99, file: !410, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!411 = distinct !DICompileUnit(language: DW_LANG_C99, file: !412, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!412 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!413 = !{!61, !43, !38}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!418 = distinct !DICompileUnit(language: DW_LANG_C99, file: !419, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !366, splitDebugInlining: false, nameTableKind: None)
!419 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!420 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!421 = !{i32 7, !"Dwarf Version", i32 5}
!422 = !{i32 2, !"Debug Info Version", i32 3}
!423 = !{i32 1, !"wchar_size", i32 4}
!424 = !{i32 1, !"branch-target-enforcement", i32 0}
!425 = !{i32 1, !"sign-return-address", i32 0}
!426 = !{i32 1, !"sign-return-address-all", i32 0}
!427 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!428 = !{i32 7, !"PIC Level", i32 2}
!429 = !{i32 7, !"PIE Level", i32 2}
!430 = !{i32 7, !"uwtable", i32 1}
!431 = !{i32 7, !"frame-pointer", i32 1}
!432 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 46, type: !433, scopeLine: 47, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !39}
!435 = !{!436}
!436 = !DILocalVariable(name: "status", arg: 1, scope: !432, file: !3, line: 46, type: !39)
!437 = !DILocation(line: 0, scope: !432)
!438 = !DILocation(line: 48, column: 14, scope: !439)
!439 = distinct !DILexicalBlock(scope: !432, file: !3, line: 48, column: 7)
!440 = !DILocation(line: 48, column: 7, scope: !432)
!441 = !DILocation(line: 49, column: 5, scope: !442)
!442 = distinct !DILexicalBlock(scope: !439, file: !3, line: 49, column: 5)
!443 = !{!444, !444, i64 0}
!444 = !{!"any pointer", !445, i64 0}
!445 = !{!"omnipotent char", !446, i64 0}
!446 = !{!"Simple C/C++ TBAA"}
!447 = !DILocation(line: 52, column: 7, scope: !448)
!448 = distinct !DILexicalBlock(scope: !439, file: !3, line: 51, column: 5)
!449 = !DILocation(line: 53, column: 7, scope: !448)
!450 = !DILocation(line: 736, column: 3, scope: !451, inlinedAt: !453)
!451 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !51, file: !51, line: 734, type: !198, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !452)
!452 = !{}
!453 = distinct !DILocation(line: 57, column: 7, scope: !448)
!454 = !DILocation(line: 59, column: 7, scope: !448)
!455 = !DILocation(line: 63, column: 7, scope: !448)
!456 = !DILocation(line: 67, column: 7, scope: !448)
!457 = !DILocation(line: 72, column: 7, scope: !448)
!458 = !DILocation(line: 73, column: 7, scope: !448)
!459 = !DILocalVariable(name: "program", arg: 1, scope: !460, file: !51, line: 836, type: !44)
!460 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !51, file: !51, line: 836, type: !461, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !44}
!463 = !{!459, !464, !473, !474, !476, !477}
!464 = !DILocalVariable(name: "infomap", scope: !460, file: !51, line: 838, type: !465)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 896, elements: !471)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !460, file: !51, line: 838, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !467, file: !51, line: 838, baseType: !44, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !467, file: !51, line: 838, baseType: !44, size: 64, offset: 64)
!471 = !{!472}
!472 = !DISubrange(count: 7)
!473 = !DILocalVariable(name: "node", scope: !460, file: !51, line: 848, type: !44)
!474 = !DILocalVariable(name: "map_prog", scope: !460, file: !51, line: 849, type: !475)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!476 = !DILocalVariable(name: "lc_messages", scope: !460, file: !51, line: 861, type: !44)
!477 = !DILocalVariable(name: "url_program", scope: !460, file: !51, line: 874, type: !44)
!478 = !DILocation(line: 0, scope: !460, inlinedAt: !479)
!479 = distinct !DILocation(line: 74, column: 7, scope: !448)
!480 = !DILocation(line: 838, column: 3, scope: !460, inlinedAt: !479)
!481 = !DILocation(line: 838, column: 67, scope: !460, inlinedAt: !479)
!482 = !DILocation(line: 849, column: 36, scope: !460, inlinedAt: !479)
!483 = !DILocation(line: 851, column: 3, scope: !460, inlinedAt: !479)
!484 = !DILocalVariable(name: "__s1", arg: 1, scope: !485, file: !486, line: 1359, type: !44)
!485 = distinct !DISubprogram(name: "streq", scope: !486, file: !486, line: 1359, type: !487, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!486 = !DIFile(filename: "./lib/string.h", directory: "/src")
!487 = !DISubroutineType(types: !488)
!488 = !{!61, !44, !44}
!489 = !{!484, !490}
!490 = !DILocalVariable(name: "__s2", arg: 2, scope: !485, file: !486, line: 1359, type: !44)
!491 = !DILocation(line: 0, scope: !485, inlinedAt: !492)
!492 = distinct !DILocation(line: 851, column: 33, scope: !460, inlinedAt: !479)
!493 = !DILocation(line: 1361, column: 11, scope: !485, inlinedAt: !492)
!494 = !DILocation(line: 1361, column: 10, scope: !485, inlinedAt: !492)
!495 = !DILocation(line: 852, column: 13, scope: !460, inlinedAt: !479)
!496 = !DILocation(line: 851, column: 20, scope: !460, inlinedAt: !479)
!497 = !{!498, !444, i64 0}
!498 = !{!"infomap", !444, i64 0, !444, i64 8}
!499 = !DILocation(line: 851, column: 10, scope: !460, inlinedAt: !479)
!500 = !DILocation(line: 851, column: 28, scope: !460, inlinedAt: !479)
!501 = distinct !{!501, !483, !495, !502}
!502 = !{!"llvm.loop.mustprogress"}
!503 = !DILocation(line: 854, column: 17, scope: !504, inlinedAt: !479)
!504 = distinct !DILexicalBlock(scope: !460, file: !51, line: 854, column: 7)
!505 = !{!498, !444, i64 8}
!506 = !DILocation(line: 854, column: 7, scope: !504, inlinedAt: !479)
!507 = !DILocation(line: 854, column: 7, scope: !460, inlinedAt: !479)
!508 = !DILocation(line: 857, column: 3, scope: !460, inlinedAt: !479)
!509 = !DILocation(line: 861, column: 29, scope: !460, inlinedAt: !479)
!510 = !DILocation(line: 862, column: 7, scope: !511, inlinedAt: !479)
!511 = distinct !DILexicalBlock(scope: !460, file: !51, line: 862, column: 7)
!512 = !DILocation(line: 862, column: 19, scope: !511, inlinedAt: !479)
!513 = !DILocation(line: 862, column: 22, scope: !511, inlinedAt: !479)
!514 = !DILocation(line: 862, column: 7, scope: !460, inlinedAt: !479)
!515 = !DILocation(line: 868, column: 7, scope: !516, inlinedAt: !479)
!516 = distinct !DILexicalBlock(scope: !511, file: !51, line: 863, column: 5)
!517 = !DILocation(line: 870, column: 5, scope: !516, inlinedAt: !479)
!518 = !DILocation(line: 0, scope: !485, inlinedAt: !519)
!519 = distinct !DILocation(line: 874, column: 29, scope: !460, inlinedAt: !479)
!520 = !DILocation(line: 875, column: 3, scope: !460, inlinedAt: !479)
!521 = !DILocation(line: 877, column: 3, scope: !460, inlinedAt: !479)
!522 = !DILocation(line: 879, column: 1, scope: !460, inlinedAt: !479)
!523 = !DILocation(line: 76, column: 3, scope: !432)
!524 = !DISubprogram(name: "dcgettext", scope: !525, file: !525, line: 51, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!525 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!526 = !DISubroutineType(types: !527)
!527 = !{!36, !44, !44, !39}
!528 = !DISubprogram(name: "fputs_unlocked", scope: !171, file: !171, line: 691, type: !529, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!529 = !DISubroutineType(types: !530)
!530 = !{!39, !531, !532}
!531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!532 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!533 = !DILocation(line: 0, scope: !50)
!534 = !DILocation(line: 581, column: 7, scope: !59)
!535 = !{!536, !536, i64 0}
!536 = !{!"int", !445, i64 0}
!537 = !DILocation(line: 581, column: 19, scope: !59)
!538 = !DILocation(line: 581, column: 7, scope: !50)
!539 = !DILocation(line: 585, column: 26, scope: !58)
!540 = !DILocation(line: 0, scope: !58)
!541 = !DILocation(line: 586, column: 23, scope: !58)
!542 = !DILocation(line: 586, column: 28, scope: !58)
!543 = !DILocation(line: 586, column: 32, scope: !58)
!544 = !{!445, !445, i64 0}
!545 = !DILocation(line: 586, column: 38, scope: !58)
!546 = !DILocation(line: 0, scope: !485, inlinedAt: !547)
!547 = distinct !DILocation(line: 586, column: 41, scope: !58)
!548 = !DILocation(line: 1361, column: 11, scope: !485, inlinedAt: !547)
!549 = !DILocation(line: 1361, column: 10, scope: !485, inlinedAt: !547)
!550 = !DILocation(line: 586, column: 19, scope: !58)
!551 = !DILocation(line: 587, column: 5, scope: !58)
!552 = !DILocation(line: 588, column: 7, scope: !553)
!553 = distinct !DILexicalBlock(scope: !50, file: !51, line: 588, column: 7)
!554 = !DILocation(line: 588, column: 7, scope: !50)
!555 = !DILocation(line: 590, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !51, line: 589, column: 5)
!557 = !DILocation(line: 591, column: 7, scope: !556)
!558 = !DILocation(line: 595, column: 37, scope: !50)
!559 = !DILocation(line: 595, column: 35, scope: !50)
!560 = !DILocation(line: 596, column: 29, scope: !50)
!561 = !DILocation(line: 597, column: 8, scope: !67)
!562 = !DILocation(line: 597, column: 7, scope: !50)
!563 = !DILocation(line: 604, column: 24, scope: !66)
!564 = !DILocation(line: 604, column: 12, scope: !67)
!565 = !DILocation(line: 0, scope: !65)
!566 = !DILocation(line: 610, column: 16, scope: !65)
!567 = !DILocation(line: 610, column: 7, scope: !65)
!568 = !DILocation(line: 611, column: 21, scope: !65)
!569 = !{!570, !570, i64 0}
!570 = !{!"short", !445, i64 0}
!571 = !DILocation(line: 611, column: 19, scope: !65)
!572 = !DILocation(line: 611, column: 16, scope: !65)
!573 = !DILocation(line: 610, column: 30, scope: !65)
!574 = distinct !{!574, !567, !568, !502}
!575 = !DILocation(line: 612, column: 18, scope: !576)
!576 = distinct !DILexicalBlock(scope: !65, file: !51, line: 612, column: 11)
!577 = !DILocation(line: 612, column: 11, scope: !65)
!578 = !DILocation(line: 620, column: 23, scope: !50)
!579 = !DILocation(line: 625, column: 39, scope: !50)
!580 = !DILocation(line: 626, column: 3, scope: !50)
!581 = !DILocation(line: 626, column: 10, scope: !50)
!582 = !DILocation(line: 626, column: 21, scope: !50)
!583 = !DILocation(line: 628, column: 44, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !51, line: 628, column: 11)
!585 = distinct !DILexicalBlock(scope: !50, file: !51, line: 627, column: 5)
!586 = !DILocation(line: 628, column: 32, scope: !584)
!587 = !DILocation(line: 628, column: 49, scope: !584)
!588 = !DILocation(line: 628, column: 11, scope: !585)
!589 = !DILocation(line: 630, column: 11, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !51, line: 630, column: 11)
!591 = !DILocation(line: 630, column: 11, scope: !585)
!592 = !DILocation(line: 632, column: 26, scope: !593)
!593 = distinct !DILexicalBlock(scope: !594, file: !51, line: 632, column: 15)
!594 = distinct !DILexicalBlock(scope: !590, file: !51, line: 631, column: 9)
!595 = !DILocation(line: 632, column: 34, scope: !593)
!596 = !DILocation(line: 632, column: 37, scope: !593)
!597 = !DILocation(line: 632, column: 15, scope: !594)
!598 = !DILocation(line: 636, column: 29, scope: !599)
!599 = distinct !DILexicalBlock(scope: !594, file: !51, line: 636, column: 15)
!600 = !DILocation(line: 640, column: 16, scope: !585)
!601 = distinct !{!601, !580, !602, !502}
!602 = !DILocation(line: 641, column: 5, scope: !50)
!603 = !DILocation(line: 644, column: 3, scope: !50)
!604 = !DILocation(line: 0, scope: !485, inlinedAt: !605)
!605 = distinct !DILocation(line: 648, column: 31, scope: !50)
!606 = !DILocation(line: 0, scope: !485, inlinedAt: !607)
!607 = distinct !DILocation(line: 649, column: 31, scope: !50)
!608 = !DILocation(line: 0, scope: !485, inlinedAt: !609)
!609 = distinct !DILocation(line: 650, column: 31, scope: !50)
!610 = !DILocation(line: 0, scope: !485, inlinedAt: !611)
!611 = distinct !DILocation(line: 651, column: 31, scope: !50)
!612 = !DILocation(line: 0, scope: !485, inlinedAt: !613)
!613 = distinct !DILocation(line: 652, column: 31, scope: !50)
!614 = !DILocation(line: 0, scope: !485, inlinedAt: !615)
!615 = distinct !DILocation(line: 653, column: 31, scope: !50)
!616 = !DILocation(line: 0, scope: !485, inlinedAt: !617)
!617 = distinct !DILocation(line: 654, column: 31, scope: !50)
!618 = !DILocation(line: 0, scope: !485, inlinedAt: !619)
!619 = distinct !DILocation(line: 655, column: 31, scope: !50)
!620 = !DILocation(line: 0, scope: !485, inlinedAt: !621)
!621 = distinct !DILocation(line: 656, column: 31, scope: !50)
!622 = !DILocation(line: 0, scope: !485, inlinedAt: !623)
!623 = distinct !DILocation(line: 657, column: 31, scope: !50)
!624 = !DILocation(line: 663, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !50, file: !51, line: 663, column: 7)
!626 = !DILocation(line: 664, column: 7, scope: !625)
!627 = !DILocation(line: 664, column: 10, scope: !625)
!628 = !DILocation(line: 663, column: 7, scope: !50)
!629 = !DILocation(line: 669, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !625, file: !51, line: 665, column: 5)
!631 = !DILocation(line: 671, column: 5, scope: !630)
!632 = !DILocation(line: 676, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !625, file: !51, line: 673, column: 5)
!634 = !DILocation(line: 679, column: 3, scope: !50)
!635 = !DILocation(line: 683, column: 3, scope: !50)
!636 = !DILocation(line: 686, column: 3, scope: !50)
!637 = !DILocation(line: 688, column: 3, scope: !50)
!638 = !DILocation(line: 691, column: 3, scope: !50)
!639 = !DILocation(line: 695, column: 3, scope: !50)
!640 = !DILocation(line: 696, column: 1, scope: !50)
!641 = !DISubprogram(name: "setlocale", scope: !642, file: !642, line: 122, type: !643, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!642 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!643 = !DISubroutineType(types: !644)
!644 = !{!36, !39, !44}
!645 = !DISubprogram(name: "getenv", scope: !646, file: !646, line: 641, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!646 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!647 = !DISubroutineType(types: !648)
!648 = !{!36, !44}
!649 = !DISubprogram(name: "fwrite_unlocked", scope: !171, file: !171, line: 704, type: !650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!650 = !DISubroutineType(types: !651)
!651 = !{!41, !652, !41, !41, !532}
!652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!655 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 80, type: !656, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!656 = !DISubroutineType(types: !657)
!657 = !{!39, !39, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!659 = !{!660, !661, !662, !663, !664, !668, !669, !672, !676, !682, !683}
!660 = !DILocalVariable(name: "argc", arg: 1, scope: !655, file: !3, line: 80, type: !39)
!661 = !DILocalVariable(name: "argv", arg: 2, scope: !655, file: !3, line: 80, type: !658)
!662 = !DILocalVariable(name: "specified_mode", scope: !655, file: !3, line: 82, type: !44)
!663 = !DILocalVariable(name: "scontext", scope: !655, file: !3, line: 83, type: !44)
!664 = !DILocalVariable(name: "set_security_context", scope: !655, file: !3, line: 84, type: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !667, line: 53, flags: DIFlagFwdDecl)
!667 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!668 = !DILocalVariable(name: "optc", scope: !655, file: !3, line: 94, type: !39)
!669 = !DILocalVariable(name: "ret", scope: !670, file: !3, line: 142, type: !39)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 141, column: 5)
!671 = distinct !DILexicalBlock(scope: !655, file: !3, line: 140, column: 7)
!672 = !DILocalVariable(name: "newmode", scope: !655, file: !3, line: 154, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !674, line: 69, baseType: !675)
!674 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !101, line: 150, baseType: !7)
!676 = !DILocalVariable(name: "change", scope: !677, file: !3, line: 157, type: !679)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 156, column: 5)
!678 = distinct !DILexicalBlock(scope: !655, file: !3, line: 155, column: 7)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !681, line: 35, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!682 = !DILocalVariable(name: "umask_value", scope: !677, file: !3, line: 160, type: !673)
!683 = !DILocalVariable(name: "exit_status", scope: !655, file: !3, line: 169, type: !39)
!684 = !DILocation(line: 0, scope: !655)
!685 = !DILocation(line: 87, column: 21, scope: !655)
!686 = !DILocation(line: 87, column: 3, scope: !655)
!687 = !DILocation(line: 88, column: 3, scope: !655)
!688 = !DILocation(line: 89, column: 3, scope: !655)
!689 = !DILocation(line: 90, column: 3, scope: !655)
!690 = !DILocation(line: 92, column: 3, scope: !655)
!691 = !DILocation(line: 95, column: 3, scope: !655)
!692 = !DILocation(line: 95, column: 18, scope: !655)
!693 = !DILocation(line: 100, column: 28, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 98, column: 9)
!695 = distinct !DILexicalBlock(scope: !655, file: !3, line: 96, column: 5)
!696 = !DILocation(line: 101, column: 11, scope: !694)
!697 = distinct !{!697, !691, !698, !502}
!698 = !DILocation(line: 132, column: 5, scope: !655)
!699 = !DILocation(line: 120, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 120, column: 20)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 108, column: 20)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 103, column: 15)
!703 = !DILocation(line: 120, column: 20, scope: !701)
!704 = !DILocation(line: 122, column: 15, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !3, line: 121, column: 13)
!706 = !DILocation(line: 125, column: 13, scope: !705)
!707 = !DILocation(line: 127, column: 9, scope: !694)
!708 = !DILocation(line: 128, column: 9, scope: !694)
!709 = !DILocation(line: 130, column: 11, scope: !694)
!710 = !DILocation(line: 134, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !655, file: !3, line: 134, column: 7)
!712 = !DILocation(line: 134, column: 14, scope: !711)
!713 = !DILocation(line: 134, column: 7, scope: !655)
!714 = !DILocation(line: 136, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 135, column: 5)
!716 = !DILocation(line: 137, column: 7, scope: !715)
!717 = !DILocation(line: 155, column: 7, scope: !678)
!718 = !DILocation(line: 155, column: 7, scope: !655)
!719 = !DILocation(line: 157, column: 36, scope: !677)
!720 = !DILocation(line: 0, scope: !677)
!721 = !DILocation(line: 158, column: 12, scope: !722)
!722 = distinct !DILexicalBlock(scope: !677, file: !3, line: 158, column: 11)
!723 = !DILocation(line: 158, column: 11, scope: !677)
!724 = !DILocation(line: 159, column: 9, scope: !722)
!725 = !DILocation(line: 160, column: 28, scope: !677)
!726 = !DILocation(line: 161, column: 7, scope: !677)
!727 = !DILocation(line: 162, column: 17, scope: !677)
!728 = !DILocation(line: 163, column: 13, scope: !677)
!729 = !DILocation(line: 163, column: 7, scope: !677)
!730 = !DILocation(line: 164, column: 19, scope: !731)
!731 = distinct !DILexicalBlock(scope: !677, file: !3, line: 164, column: 11)
!732 = !DILocation(line: 164, column: 11, scope: !677)
!733 = !DILocation(line: 170, column: 10, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !3, line: 170, column: 3)
!735 = distinct !DILexicalBlock(scope: !655, file: !3, line: 170, column: 3)
!736 = !DILocation(line: 165, column: 9, scope: !731)
!737 = !DILocation(line: 170, column: 17, scope: !734)
!738 = !DILocation(line: 170, column: 3, scope: !735)
!739 = !DILocation(line: 174, column: 19, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 174, column: 11)
!741 = distinct !DILexicalBlock(scope: !734, file: !3, line: 171, column: 5)
!742 = !DILocation(line: 174, column: 11, scope: !740)
!743 = !DILocation(line: 174, column: 42, scope: !740)
!744 = !DILocation(line: 174, column: 11, scope: !741)
!745 = !DILocation(line: 179, column: 31, scope: !746)
!746 = distinct !DILexicalBlock(scope: !740, file: !3, line: 179, column: 16)
!747 = !DILocation(line: 179, column: 47, scope: !746)
!748 = !DILocation(line: 179, column: 42, scope: !746)
!749 = !DILocation(line: 179, column: 34, scope: !746)
!750 = !DILocation(line: 179, column: 65, scope: !746)
!751 = !DILocation(line: 179, column: 16, scope: !740)
!752 = !DILocation(line: 0, scope: !740)
!753 = !DILocation(line: 170, column: 25, scope: !734)
!754 = distinct !{!754, !738, !755, !502}
!755 = !DILocation(line: 185, column: 5, scope: !735)
!756 = !DILocation(line: 187, column: 3, scope: !655)
!757 = !DISubprogram(name: "bindtextdomain", scope: !525, file: !525, line: 86, type: !758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!758 = !DISubroutineType(types: !759)
!759 = !{!36, !44, !44}
!760 = !DISubprogram(name: "textdomain", scope: !525, file: !525, line: 82, type: !647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!761 = !DISubprogram(name: "atexit", scope: !646, file: !646, line: 602, type: !762, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!762 = !DISubroutineType(types: !763)
!763 = !{!39, !197}
!764 = !DISubprogram(name: "getopt_long", scope: !138, file: !138, line: 66, type: !765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!765 = !DISubroutineType(types: !766)
!766 = !{!39, !39, !767, !44, !769, !143}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!770 = !DISubprogram(name: "umask", scope: !771, file: !771, line: 380, type: !772, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!771 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!772 = !DISubroutineType(types: !773)
!773 = !{!675, !675}
!774 = !DISubprogram(name: "mkfifo", scope: !771, file: !771, line: 418, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!775 = !DISubroutineType(types: !776)
!776 = !{!39, !44, !675}
!777 = !DISubprogram(name: "lchmod", scope: !771, file: !771, line: 359, type: !775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!778 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !155, file: !155, line: 50, type: !461, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !779)
!779 = !{!780}
!780 = !DILocalVariable(name: "file", arg: 1, scope: !778, file: !155, line: 50, type: !44)
!781 = !DILocation(line: 0, scope: !778)
!782 = !DILocation(line: 52, column: 13, scope: !778)
!783 = !DILocation(line: 53, column: 1, scope: !778)
!784 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !155, file: !155, line: 87, type: !785, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{null, !61}
!787 = !{!788}
!788 = !DILocalVariable(name: "ignore", arg: 1, scope: !784, file: !155, line: 87, type: !61)
!789 = !DILocation(line: 0, scope: !784)
!790 = !DILocation(line: 89, column: 16, scope: !784)
!791 = !{!792, !792, i64 0}
!792 = !{!"_Bool", !445, i64 0}
!793 = !DILocation(line: 90, column: 1, scope: !784)
!794 = distinct !DISubprogram(name: "close_stdout", scope: !155, file: !155, line: 116, type: !198, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !154, retainedNodes: !795)
!795 = !{!796}
!796 = !DILocalVariable(name: "write_error", scope: !797, file: !155, line: 121, type: !44)
!797 = distinct !DILexicalBlock(scope: !798, file: !155, line: 120, column: 5)
!798 = distinct !DILexicalBlock(scope: !794, file: !155, line: 118, column: 7)
!799 = !DILocation(line: 118, column: 21, scope: !798)
!800 = !DILocation(line: 118, column: 7, scope: !798)
!801 = !DILocation(line: 118, column: 29, scope: !798)
!802 = !DILocation(line: 119, column: 7, scope: !798)
!803 = !DILocation(line: 119, column: 12, scope: !798)
!804 = !{i8 0, i8 2}
!805 = !DILocation(line: 119, column: 25, scope: !798)
!806 = !DILocation(line: 119, column: 28, scope: !798)
!807 = !DILocation(line: 119, column: 34, scope: !798)
!808 = !DILocation(line: 118, column: 7, scope: !794)
!809 = !DILocation(line: 121, column: 33, scope: !797)
!810 = !DILocation(line: 0, scope: !797)
!811 = !DILocation(line: 122, column: 11, scope: !812)
!812 = distinct !DILexicalBlock(scope: !797, file: !155, line: 122, column: 11)
!813 = !DILocation(line: 0, scope: !812)
!814 = !DILocation(line: 122, column: 11, scope: !797)
!815 = !DILocation(line: 123, column: 9, scope: !812)
!816 = !DILocation(line: 126, column: 9, scope: !812)
!817 = !DILocation(line: 128, column: 14, scope: !797)
!818 = !DILocation(line: 128, column: 7, scope: !797)
!819 = !DILocation(line: 133, column: 42, scope: !820)
!820 = distinct !DILexicalBlock(scope: !794, file: !155, line: 133, column: 7)
!821 = !DILocation(line: 133, column: 28, scope: !820)
!822 = !DILocation(line: 133, column: 50, scope: !820)
!823 = !DILocation(line: 133, column: 7, scope: !794)
!824 = !DILocation(line: 134, column: 12, scope: !820)
!825 = !DILocation(line: 134, column: 5, scope: !820)
!826 = !DILocation(line: 135, column: 1, scope: !794)
!827 = distinct !DISubprogram(name: "verror", scope: !162, file: !162, line: 251, type: !828, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !830)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !39, !39, !44, !170}
!830 = !{!831, !832, !833, !834}
!831 = !DILocalVariable(name: "status", arg: 1, scope: !827, file: !162, line: 251, type: !39)
!832 = !DILocalVariable(name: "errnum", arg: 2, scope: !827, file: !162, line: 251, type: !39)
!833 = !DILocalVariable(name: "message", arg: 3, scope: !827, file: !162, line: 251, type: !44)
!834 = !DILocalVariable(name: "args", arg: 4, scope: !827, file: !162, line: 251, type: !170)
!835 = !DILocation(line: 0, scope: !827)
!836 = !DILocation(line: 251, column: 1, scope: !827)
!837 = !DILocation(line: 261, column: 3, scope: !827)
!838 = !DILocation(line: 265, column: 7, scope: !839)
!839 = distinct !DILexicalBlock(scope: !827, file: !162, line: 265, column: 7)
!840 = !DILocation(line: 265, column: 7, scope: !827)
!841 = !DILocation(line: 266, column: 5, scope: !839)
!842 = !DILocation(line: 272, column: 7, scope: !843)
!843 = distinct !DILexicalBlock(scope: !839, file: !162, line: 268, column: 5)
!844 = !DILocation(line: 276, column: 3, scope: !827)
!845 = !{i64 0, i64 8, !443, i64 8, i64 8, !443, i64 16, i64 8, !443, i64 24, i64 4, !535, i64 28, i64 4, !535}
!846 = !DILocation(line: 282, column: 1, scope: !827)
!847 = distinct !DISubprogram(name: "flush_stdout", scope: !162, file: !162, line: 163, type: !198, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !848)
!848 = !{!849}
!849 = !DILocalVariable(name: "stdout_fd", scope: !847, file: !162, line: 166, type: !39)
!850 = !DILocation(line: 0, scope: !847)
!851 = !DILocalVariable(name: "fd", arg: 1, scope: !852, file: !162, line: 145, type: !39)
!852 = distinct !DISubprogram(name: "is_open", scope: !162, file: !162, line: 145, type: !853, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!39, !39}
!855 = !{!851}
!856 = !DILocation(line: 0, scope: !852, inlinedAt: !857)
!857 = distinct !DILocation(line: 182, column: 25, scope: !858)
!858 = distinct !DILexicalBlock(scope: !847, file: !162, line: 182, column: 7)
!859 = !DILocation(line: 157, column: 15, scope: !852, inlinedAt: !857)
!860 = !DILocation(line: 182, column: 25, scope: !858)
!861 = !DILocation(line: 182, column: 7, scope: !847)
!862 = !DILocation(line: 184, column: 5, scope: !858)
!863 = !DILocation(line: 185, column: 1, scope: !847)
!864 = distinct !DISubprogram(name: "error_tail", scope: !162, file: !162, line: 219, type: !828, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !865)
!865 = !{!866, !867, !868, !869}
!866 = !DILocalVariable(name: "status", arg: 1, scope: !864, file: !162, line: 219, type: !39)
!867 = !DILocalVariable(name: "errnum", arg: 2, scope: !864, file: !162, line: 219, type: !39)
!868 = !DILocalVariable(name: "message", arg: 3, scope: !864, file: !162, line: 219, type: !44)
!869 = !DILocalVariable(name: "args", arg: 4, scope: !864, file: !162, line: 219, type: !170)
!870 = !DILocation(line: 0, scope: !864)
!871 = !DILocation(line: 219, column: 1, scope: !864)
!872 = !DILocation(line: 229, column: 13, scope: !864)
!873 = !DILocation(line: 229, column: 3, scope: !864)
!874 = !DILocalVariable(name: "__stream", arg: 1, scope: !875, file: !876, line: 132, type: !879)
!875 = distinct !DISubprogram(name: "vfprintf", scope: !876, file: !876, line: 132, type: !877, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !914)
!876 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!877 = !DISubroutineType(types: !878)
!878 = !{!39, !879, !531, !172}
!879 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !880)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !882)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !883)
!883 = !{!884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !882, file: !78, line: 51, baseType: !39, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !882, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !882, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !882, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !882, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !882, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !882, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !882, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !882, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !882, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !882, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !882, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !882, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !882, file: !78, line: 70, baseType: !898, size: 64, offset: 832)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !882, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !882, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !882, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !882, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !882, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !882, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !882, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !882, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !882, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !882, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !882, file: !78, line: 93, baseType: !898, size: 64, offset: 1344)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !882, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !882, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !882, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !882, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!914 = !{!874, !915, !916}
!915 = !DILocalVariable(name: "__fmt", arg: 2, scope: !875, file: !876, line: 133, type: !531)
!916 = !DILocalVariable(name: "__ap", arg: 3, scope: !875, file: !876, line: 133, type: !172)
!917 = !DILocation(line: 0, scope: !875, inlinedAt: !918)
!918 = distinct !DILocation(line: 229, column: 3, scope: !864)
!919 = !DILocation(line: 135, column: 10, scope: !875, inlinedAt: !918)
!920 = !{!921, !923}
!921 = distinct !{!921, !922, !"vfprintf.inline: argument 0"}
!922 = distinct !{!922, !"vfprintf.inline"}
!923 = distinct !{!923, !922, !"vfprintf.inline: argument 1"}
!924 = !DILocation(line: 232, column: 3, scope: !864)
!925 = !DILocation(line: 233, column: 7, scope: !926)
!926 = distinct !DILexicalBlock(scope: !864, file: !162, line: 233, column: 7)
!927 = !DILocation(line: 233, column: 7, scope: !864)
!928 = !DILocalVariable(name: "errnum", arg: 1, scope: !929, file: !162, line: 188, type: !39)
!929 = distinct !DISubprogram(name: "print_errno_message", scope: !162, file: !162, line: 188, type: !433, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !930)
!930 = !{!928, !931, !932}
!931 = !DILocalVariable(name: "s", scope: !929, file: !162, line: 190, type: !44)
!932 = !DILocalVariable(name: "errbuf", scope: !929, file: !162, line: 193, type: !933)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8192, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 1024)
!936 = !DILocation(line: 0, scope: !929, inlinedAt: !937)
!937 = distinct !DILocation(line: 234, column: 5, scope: !926)
!938 = !DILocation(line: 193, column: 3, scope: !929, inlinedAt: !937)
!939 = !DILocation(line: 193, column: 8, scope: !929, inlinedAt: !937)
!940 = !DILocation(line: 195, column: 7, scope: !929, inlinedAt: !937)
!941 = !DILocation(line: 207, column: 9, scope: !942, inlinedAt: !937)
!942 = distinct !DILexicalBlock(scope: !929, file: !162, line: 207, column: 7)
!943 = !DILocation(line: 207, column: 7, scope: !929, inlinedAt: !937)
!944 = !DILocation(line: 208, column: 9, scope: !942, inlinedAt: !937)
!945 = !DILocation(line: 208, column: 5, scope: !942, inlinedAt: !937)
!946 = !DILocation(line: 214, column: 3, scope: !929, inlinedAt: !937)
!947 = !DILocation(line: 216, column: 1, scope: !929, inlinedAt: !937)
!948 = !DILocation(line: 234, column: 5, scope: !926)
!949 = !DILocation(line: 238, column: 3, scope: !864)
!950 = !DILocalVariable(name: "__c", arg: 1, scope: !951, file: !952, line: 101, type: !39)
!951 = distinct !DISubprogram(name: "putc_unlocked", scope: !952, file: !952, line: 101, type: !953, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !955)
!952 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!953 = !DISubroutineType(types: !954)
!954 = !{!39, !39, !880}
!955 = !{!950, !956}
!956 = !DILocalVariable(name: "__stream", arg: 2, scope: !951, file: !952, line: 101, type: !880)
!957 = !DILocation(line: 0, scope: !951, inlinedAt: !958)
!958 = distinct !DILocation(line: 238, column: 3, scope: !864)
!959 = !DILocation(line: 103, column: 10, scope: !951, inlinedAt: !958)
!960 = !{!961, !444, i64 40}
!961 = !{!"_IO_FILE", !536, i64 0, !444, i64 8, !444, i64 16, !444, i64 24, !444, i64 32, !444, i64 40, !444, i64 48, !444, i64 56, !444, i64 64, !444, i64 72, !444, i64 80, !444, i64 88, !444, i64 96, !444, i64 104, !536, i64 112, !536, i64 116, !962, i64 120, !570, i64 128, !445, i64 130, !445, i64 131, !444, i64 136, !962, i64 144, !444, i64 152, !444, i64 160, !444, i64 168, !444, i64 176, !962, i64 184, !536, i64 192, !445, i64 196}
!962 = !{!"long", !445, i64 0}
!963 = !{!961, !444, i64 48}
!964 = !{!"branch_weights", i32 2000, i32 1}
!965 = !DILocation(line: 240, column: 3, scope: !864)
!966 = !DILocation(line: 241, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !864, file: !162, line: 241, column: 7)
!968 = !DILocation(line: 241, column: 7, scope: !864)
!969 = !DILocation(line: 242, column: 5, scope: !967)
!970 = !DILocation(line: 243, column: 1, scope: !864)
!971 = !DISubprogram(name: "strerror_r", scope: !972, file: !972, line: 444, type: !973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!972 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!973 = !DISubroutineType(types: !974)
!974 = !{!36, !39, !36, !41}
!975 = !DISubprogram(name: "fflush_unlocked", scope: !171, file: !171, line: 239, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!976 = !DISubroutineType(types: !977)
!977 = !{!39, !880}
!978 = !DISubprogram(name: "fcntl", scope: !979, file: !979, line: 149, type: !980, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!979 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!980 = !DISubroutineType(types: !981)
!981 = !{!39, !39, !39, null}
!982 = distinct !DISubprogram(name: "error", scope: !162, file: !162, line: 285, type: !983, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !985)
!983 = !DISubroutineType(types: !984)
!984 = !{null, !39, !39, !44, null}
!985 = !{!986, !987, !988, !989}
!986 = !DILocalVariable(name: "status", arg: 1, scope: !982, file: !162, line: 285, type: !39)
!987 = !DILocalVariable(name: "errnum", arg: 2, scope: !982, file: !162, line: 285, type: !39)
!988 = !DILocalVariable(name: "message", arg: 3, scope: !982, file: !162, line: 285, type: !44)
!989 = !DILocalVariable(name: "ap", scope: !982, file: !162, line: 287, type: !170)
!990 = !DILocation(line: 0, scope: !982)
!991 = !DILocation(line: 287, column: 3, scope: !982)
!992 = !DILocation(line: 287, column: 11, scope: !982)
!993 = !DILocation(line: 288, column: 3, scope: !982)
!994 = !DILocation(line: 289, column: 3, scope: !982)
!995 = !DILocation(line: 290, column: 3, scope: !982)
!996 = !DILocation(line: 291, column: 1, scope: !982)
!997 = !DILocation(line: 0, scope: !167)
!998 = !DILocation(line: 298, column: 1, scope: !167)
!999 = !DILocation(line: 302, column: 7, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !167, file: !162, line: 302, column: 7)
!1001 = !DILocation(line: 302, column: 7, scope: !167)
!1002 = !DILocation(line: 307, column: 11, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1004, file: !162, line: 307, column: 11)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !162, line: 303, column: 5)
!1005 = !DILocation(line: 307, column: 27, scope: !1003)
!1006 = !DILocation(line: 308, column: 11, scope: !1003)
!1007 = !DILocation(line: 308, column: 28, scope: !1003)
!1008 = !DILocation(line: 308, column: 25, scope: !1003)
!1009 = !DILocation(line: 309, column: 15, scope: !1003)
!1010 = !DILocation(line: 309, column: 33, scope: !1003)
!1011 = !DILocation(line: 310, column: 19, scope: !1003)
!1012 = !DILocation(line: 311, column: 22, scope: !1003)
!1013 = !DILocation(line: 311, column: 56, scope: !1003)
!1014 = !DILocation(line: 307, column: 11, scope: !1004)
!1015 = !DILocation(line: 316, column: 21, scope: !1004)
!1016 = !DILocation(line: 317, column: 23, scope: !1004)
!1017 = !DILocation(line: 318, column: 5, scope: !1004)
!1018 = !DILocation(line: 327, column: 3, scope: !167)
!1019 = !DILocation(line: 331, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !167, file: !162, line: 331, column: 7)
!1021 = !DILocation(line: 331, column: 7, scope: !167)
!1022 = !DILocation(line: 332, column: 5, scope: !1020)
!1023 = !DILocation(line: 338, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1020, file: !162, line: 334, column: 5)
!1025 = !DILocation(line: 346, column: 3, scope: !167)
!1026 = !DILocation(line: 350, column: 3, scope: !167)
!1027 = !DILocation(line: 356, column: 1, scope: !167)
!1028 = distinct !DISubprogram(name: "error_at_line", scope: !162, file: !162, line: 359, type: !1029, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !161, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !39, !39, !44, !7, !44, null}
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037}
!1032 = !DILocalVariable(name: "status", arg: 1, scope: !1028, file: !162, line: 359, type: !39)
!1033 = !DILocalVariable(name: "errnum", arg: 2, scope: !1028, file: !162, line: 359, type: !39)
!1034 = !DILocalVariable(name: "file_name", arg: 3, scope: !1028, file: !162, line: 359, type: !44)
!1035 = !DILocalVariable(name: "line_number", arg: 4, scope: !1028, file: !162, line: 360, type: !7)
!1036 = !DILocalVariable(name: "message", arg: 5, scope: !1028, file: !162, line: 360, type: !44)
!1037 = !DILocalVariable(name: "ap", scope: !1028, file: !162, line: 362, type: !170)
!1038 = !DILocation(line: 0, scope: !1028)
!1039 = !DILocation(line: 362, column: 3, scope: !1028)
!1040 = !DILocation(line: 362, column: 11, scope: !1028)
!1041 = !DILocation(line: 363, column: 3, scope: !1028)
!1042 = !DILocation(line: 364, column: 3, scope: !1028)
!1043 = !DILocation(line: 366, column: 3, scope: !1028)
!1044 = !DILocation(line: 367, column: 1, scope: !1028)
!1045 = distinct !DISubprogram(name: "getprogname", scope: !350, file: !350, line: 54, type: !1046, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !349, retainedNodes: !452)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!44}
!1048 = !DILocation(line: 58, column: 10, scope: !1045)
!1049 = !DILocation(line: 58, column: 3, scope: !1045)
!1050 = distinct !DISubprogram(name: "mode_compile", scope: !352, file: !352, line: 134, type: !1051, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1061)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !44}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !352, line: 98, size: 128, elements: !1055)
!1055 = !{!1056, !1057, !1058, !1059, !1060}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1054, file: !352, line: 100, baseType: !37, size: 8)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1054, file: !352, line: 101, baseType: !37, size: 8, offset: 8)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1054, file: !352, line: 102, baseType: !673, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1054, file: !352, line: 103, baseType: !673, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1054, file: !352, line: 104, baseType: !673, size: 32, offset: 96)
!1061 = !{!1062, !1063, !1066, !1067, !1068, !1069, !1070, !1072, !1074, !1075, !1076, !1080, !1082, !1083, !1084, !1085, !1088, !1089, !1090, !1091}
!1062 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1050, file: !352, line: 134, type: !44)
!1063 = !DILocalVariable(name: "p", scope: !1064, file: !352, line: 138, type: !44)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !352, line: 137, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1050, file: !352, line: 136, column: 7)
!1066 = !DILocalVariable(name: "octal_mode", scope: !1064, file: !352, line: 139, type: !7)
!1067 = !DILocalVariable(name: "mode", scope: !1064, file: !352, line: 140, type: !673)
!1068 = !DILocalVariable(name: "mentioned", scope: !1064, file: !352, line: 141, type: !673)
!1069 = !DILocalVariable(name: "mc", scope: !1050, file: !352, line: 163, type: !1053)
!1070 = !DILocalVariable(name: "needed", scope: !1071, file: !352, line: 167, type: !41)
!1071 = distinct !DILexicalBlock(scope: !1050, file: !352, line: 166, column: 3)
!1072 = !DILocalVariable(name: "p", scope: !1073, file: !352, line: 168, type: !44)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !352, line: 168, column: 5)
!1074 = !DILocalVariable(name: "used", scope: !1050, file: !352, line: 175, type: !41)
!1075 = !DILocalVariable(name: "p", scope: !1050, file: !352, line: 176, type: !44)
!1076 = !DILocalVariable(name: "affected", scope: !1077, file: !352, line: 180, type: !673)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !352, line: 178, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !352, line: 177, column: 3)
!1079 = distinct !DILexicalBlock(scope: !1050, file: !352, line: 177, column: 3)
!1080 = !DILocalVariable(name: "op", scope: !1081, file: !352, line: 207, type: !37)
!1081 = distinct !DILexicalBlock(scope: !1077, file: !352, line: 206, column: 9)
!1082 = !DILocalVariable(name: "value", scope: !1081, file: !352, line: 208, type: !673)
!1083 = !DILocalVariable(name: "mentioned", scope: !1081, file: !352, line: 209, type: !673)
!1084 = !DILocalVariable(name: "flag", scope: !1081, file: !352, line: 210, type: !37)
!1085 = !DILocalVariable(name: "octal_mode", scope: !1086, file: !352, line: 217, type: !7)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !352, line: 216, column: 15)
!1087 = distinct !DILexicalBlock(scope: !1081, file: !352, line: 213, column: 13)
!1088 = !DILocalVariable(name: "change", scope: !1081, file: !352, line: 287, type: !1053)
!1089 = !DILabel(scope: !1077, name: "no_more_affected", file: !352, line: 203)
!1090 = !DILabel(scope: !1087, name: "no_more_values", file: !352, line: 284)
!1091 = !DILabel(scope: !1050, name: "invalid", file: !352, line: 308)
!1092 = !DILocation(line: 0, scope: !1050)
!1093 = !DILocation(line: 136, column: 14, scope: !1065)
!1094 = !DILocation(line: 136, column: 27, scope: !1065)
!1095 = !DILocation(line: 146, column: 41, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1064, file: !352, line: 145, column: 9)
!1097 = !DILocation(line: 0, scope: !1064)
!1098 = !DILocation(line: 146, column: 26, scope: !1096)
!1099 = !DILocation(line: 146, column: 43, scope: !1096)
!1100 = !DILocation(line: 146, column: 39, scope: !1096)
!1101 = !DILocation(line: 146, column: 46, scope: !1096)
!1102 = !DILocation(line: 147, column: 20, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1096, file: !352, line: 147, column: 15)
!1104 = !DILocation(line: 147, column: 15, scope: !1096)
!1105 = !DILocation(line: 150, column: 21, scope: !1064)
!1106 = !DILocation(line: 150, column: 24, scope: !1064)
!1107 = distinct !{!1107, !1108, !1109, !502}
!1108 = !DILocation(line: 144, column: 7, scope: !1064)
!1109 = !DILocation(line: 150, column: 35, scope: !1064)
!1110 = !DILocation(line: 152, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1064, file: !352, line: 152, column: 11)
!1112 = !DILocation(line: 152, column: 11, scope: !1064)
!1113 = !DILocation(line: 156, column: 22, scope: !1064)
!1114 = !DILocation(line: 156, column: 36, scope: !1064)
!1115 = !DILocation(line: 156, column: 20, scope: !1064)
!1116 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1117, file: !352, line: 112, type: !673)
!1117 = distinct !DISubprogram(name: "make_node_op_equals", scope: !352, file: !352, line: 112, type: !1118, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1120)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!1053, !673, !673}
!1120 = !{!1116, !1121, !1122}
!1121 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1117, file: !352, line: 112, type: !673)
!1122 = !DILocalVariable(name: "p", scope: !1117, file: !352, line: 114, type: !1053)
!1123 = !DILocation(line: 0, scope: !1117, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 159, column: 14, scope: !1064)
!1125 = !DILocation(line: 114, column: 27, scope: !1117, inlinedAt: !1124)
!1126 = !DILocation(line: 115, column: 9, scope: !1117, inlinedAt: !1124)
!1127 = !{!1128, !445, i64 0}
!1128 = !{!"mode_change", !445, i64 0, !445, i64 1, !536, i64 4, !536, i64 8, !536, i64 12}
!1129 = !DILocation(line: 116, column: 6, scope: !1117, inlinedAt: !1124)
!1130 = !DILocation(line: 116, column: 11, scope: !1117, inlinedAt: !1124)
!1131 = !{!1128, !445, i64 1}
!1132 = !DILocation(line: 117, column: 6, scope: !1117, inlinedAt: !1124)
!1133 = !DILocation(line: 117, column: 15, scope: !1117, inlinedAt: !1124)
!1134 = !{!1128, !536, i64 4}
!1135 = !DILocation(line: 118, column: 6, scope: !1117, inlinedAt: !1124)
!1136 = !DILocation(line: 118, column: 12, scope: !1117, inlinedAt: !1124)
!1137 = !{!1128, !536, i64 8}
!1138 = !DILocation(line: 119, column: 6, scope: !1117, inlinedAt: !1124)
!1139 = !DILocation(line: 119, column: 16, scope: !1117, inlinedAt: !1124)
!1140 = !{!1128, !536, i64 12}
!1141 = !DILocation(line: 120, column: 8, scope: !1117, inlinedAt: !1124)
!1142 = !DILocation(line: 120, column: 13, scope: !1117, inlinedAt: !1124)
!1143 = !DILocation(line: 159, column: 7, scope: !1064)
!1144 = !DILocation(line: 168, column: 39, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1073, file: !352, line: 168, column: 5)
!1146 = !DILocation(line: 0, scope: !1071)
!1147 = !DILocation(line: 0, scope: !1073)
!1148 = !DILocation(line: 168, column: 5, scope: !1073)
!1149 = !DILocation(line: 170, column: 10, scope: !1071)
!1150 = !DILocation(line: 177, column: 8, scope: !1079)
!1151 = !DILocation(line: 169, column: 41, scope: !1145)
!1152 = !DILocation(line: 169, column: 14, scope: !1145)
!1153 = !DILocation(line: 168, column: 44, scope: !1145)
!1154 = !DILocation(line: 168, column: 5, scope: !1145)
!1155 = distinct !{!1155, !1148, !1156, !502}
!1156 = !DILocation(line: 169, column: 53, scope: !1073)
!1157 = !DILocation(line: 175, column: 10, scope: !1050)
!1158 = !DILocation(line: 0, scope: !1079)
!1159 = !DILocation(line: 0, scope: !1081)
!1160 = !DILocation(line: 0, scope: !1077)
!1161 = !DILocation(line: 183, column: 7, scope: !1077)
!1162 = !DILocation(line: 184, column: 17, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !352, line: 183, column: 7)
!1164 = distinct !DILexicalBlock(scope: !1077, file: !352, line: 183, column: 7)
!1165 = !DILocation(line: 184, column: 9, scope: !1163)
!1166 = !DILocation(line: 212, column: 11, scope: !1081)
!1167 = !DILocation(line: 193, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1163, file: !352, line: 185, column: 11)
!1169 = !DILocation(line: 196, column: 13, scope: !1168)
!1170 = !DILocation(line: 199, column: 13, scope: !1168)
!1171 = !DILocation(line: 0, scope: !1168)
!1172 = !DILocation(line: 183, column: 16, scope: !1163)
!1173 = !DILocation(line: 183, column: 7, scope: !1163)
!1174 = distinct !{!1174, !1175, !1176}
!1175 = !DILocation(line: 183, column: 7, scope: !1164)
!1176 = !DILocation(line: 202, column: 11, scope: !1164)
!1177 = !DILocation(line: 207, column: 21, scope: !1081)
!1178 = !DILocation(line: 180, column: 14, scope: !1077)
!1179 = !DILocation(line: 207, column: 23, scope: !1081)
!1180 = !DILocation(line: 212, column: 19, scope: !1081)
!1181 = !DILocation(line: 219, column: 17, scope: !1086)
!1182 = !DILocation(line: 221, column: 51, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1086, file: !352, line: 220, column: 19)
!1184 = !DILocation(line: 0, scope: !1086)
!1185 = !DILocation(line: 221, column: 36, scope: !1183)
!1186 = !DILocation(line: 221, column: 53, scope: !1183)
!1187 = !DILocation(line: 221, column: 49, scope: !1183)
!1188 = !DILocation(line: 221, column: 56, scope: !1183)
!1189 = !DILocation(line: 222, column: 30, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1183, file: !352, line: 222, column: 25)
!1191 = !DILocation(line: 222, column: 25, scope: !1183)
!1192 = !DILocation(line: 225, column: 31, scope: !1086)
!1193 = !DILocation(line: 225, column: 34, scope: !1086)
!1194 = distinct !{!1194, !1181, !1195, !502}
!1195 = !DILocation(line: 225, column: 45, scope: !1086)
!1196 = !DILocation(line: 227, column: 21, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1086, file: !352, line: 227, column: 21)
!1198 = !DILocation(line: 227, column: 30, scope: !1197)
!1199 = !DILocation(line: 227, column: 37, scope: !1197)
!1200 = !DILocation(line: 239, column: 16, scope: !1087)
!1201 = !DILocation(line: 240, column: 15, scope: !1087)
!1202 = !DILocation(line: 245, column: 16, scope: !1087)
!1203 = !DILocation(line: 246, column: 15, scope: !1087)
!1204 = !DILocation(line: 251, column: 16, scope: !1087)
!1205 = !DILocation(line: 252, column: 15, scope: !1087)
!1206 = !DILocation(line: 259, column: 25, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !352, line: 258, column: 15)
!1208 = distinct !DILexicalBlock(scope: !1087, file: !352, line: 258, column: 15)
!1209 = !DILocation(line: 0, scope: !1087)
!1210 = !DILocation(line: 256, column: 20, scope: !1087)
!1211 = !DILocation(line: 259, column: 17, scope: !1207)
!1212 = !DILocation(line: 262, column: 27, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !352, line: 260, column: 19)
!1214 = !DILocation(line: 263, column: 21, scope: !1213)
!1215 = !DILocation(line: 265, column: 27, scope: !1213)
!1216 = !DILocation(line: 266, column: 21, scope: !1213)
!1217 = !DILocation(line: 268, column: 27, scope: !1213)
!1218 = !DILocation(line: 269, column: 21, scope: !1213)
!1219 = !DILocation(line: 275, column: 27, scope: !1213)
!1220 = !DILocation(line: 276, column: 21, scope: !1213)
!1221 = !DILocation(line: 279, column: 27, scope: !1213)
!1222 = !DILocation(line: 280, column: 21, scope: !1213)
!1223 = !DILocation(line: 258, column: 24, scope: !1207)
!1224 = !DILocation(line: 258, column: 15, scope: !1207)
!1225 = distinct !{!1225, !1226, !1227}
!1226 = !DILocation(line: 258, column: 15, scope: !1208)
!1227 = !DILocation(line: 283, column: 19, scope: !1208)
!1228 = !DILocation(line: 209, column: 18, scope: !1081)
!1229 = !DILocation(line: 288, column: 28, scope: !1081)
!1230 = !DILocation(line: 289, column: 19, scope: !1081)
!1231 = !DILocation(line: 289, column: 22, scope: !1081)
!1232 = !DILocation(line: 290, column: 19, scope: !1081)
!1233 = !DILocation(line: 290, column: 24, scope: !1081)
!1234 = !DILocation(line: 291, column: 19, scope: !1081)
!1235 = !DILocation(line: 291, column: 28, scope: !1081)
!1236 = !DILocation(line: 292, column: 19, scope: !1081)
!1237 = !DILocation(line: 292, column: 25, scope: !1081)
!1238 = !DILocation(line: 294, column: 14, scope: !1081)
!1239 = !DILocation(line: 293, column: 19, scope: !1081)
!1240 = !DILocation(line: 293, column: 29, scope: !1081)
!1241 = !DILocation(line: 296, column: 14, scope: !1077)
!1242 = !DILocation(line: 296, column: 24, scope: !1077)
!1243 = !DILocation(line: 177, column: 28, scope: !1078)
!1244 = !DILocation(line: 177, column: 3, scope: !1078)
!1245 = distinct !{!1245, !1246, !1247}
!1246 = !DILocation(line: 177, column: 3, scope: !1079)
!1247 = !DILocation(line: 300, column: 5, scope: !1079)
!1248 = !DILocation(line: 304, column: 16, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !352, line: 303, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1050, file: !352, line: 302, column: 7)
!1251 = !DILocation(line: 304, column: 21, scope: !1249)
!1252 = !DILocation(line: 305, column: 7, scope: !1249)
!1253 = !DILocation(line: 308, column: 1, scope: !1050)
!1254 = !DILocation(line: 309, column: 3, scope: !1050)
!1255 = !DILocation(line: 310, column: 3, scope: !1050)
!1256 = !DILocation(line: 311, column: 1, scope: !1050)
!1257 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !352, file: !352, line: 317, type: !1051, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1258)
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1257, file: !352, line: 317, type: !44)
!1260 = !DILocalVariable(name: "ref_stats", scope: !1257, file: !352, line: 319, type: !1261)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1262, line: 44, size: 1024, elements: !1263)
!1262 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1263 = !{!1264, !1266, !1268, !1269, !1271, !1273, !1275, !1276, !1277, !1278, !1280, !1281, !1283, !1291, !1292, !1293}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1261, file: !1262, line: 46, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !101, line: 145, baseType: !43)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1261, file: !1262, line: 47, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !101, line: 148, baseType: !43)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1261, file: !1262, line: 48, baseType: !675, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1261, file: !1262, line: 49, baseType: !1270, size: 32, offset: 160)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !101, line: 151, baseType: !7)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1261, file: !1262, line: 50, baseType: !1272, size: 32, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !101, line: 146, baseType: !7)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1261, file: !1262, line: 51, baseType: !1274, size: 32, offset: 224)
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !101, line: 147, baseType: !7)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1261, file: !1262, line: 52, baseType: !1265, size: 64, offset: 256)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1261, file: !1262, line: 53, baseType: !1265, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1261, file: !1262, line: 54, baseType: !100, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1261, file: !1262, line: 55, baseType: !1279, size: 32, offset: 448)
!1279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !101, line: 175, baseType: !39)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1261, file: !1262, line: 56, baseType: !39, size: 32, offset: 480)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1261, file: !1262, line: 57, baseType: !1282, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !101, line: 180, baseType: !102)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1261, file: !1262, line: 65, baseType: !1284, size: 128, offset: 576)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1285, line: 11, size: 128, elements: !1286)
!1285 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1286 = !{!1287, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1284, file: !1285, line: 16, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !101, line: 160, baseType: !102)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1284, file: !1285, line: 21, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !101, line: 197, baseType: !102)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1261, file: !1262, line: 66, baseType: !1284, size: 128, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1261, file: !1262, line: 67, baseType: !1284, size: 128, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1261, file: !1262, line: 79, baseType: !1294, size: 64, offset: 960)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 64, elements: !240)
!1295 = !DILocation(line: 0, scope: !1257)
!1296 = !DILocation(line: 319, column: 3, scope: !1257)
!1297 = !DILocation(line: 319, column: 15, scope: !1257)
!1298 = !DILocation(line: 321, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1257, file: !352, line: 321, column: 7)
!1300 = !DILocation(line: 321, column: 35, scope: !1299)
!1301 = !DILocation(line: 321, column: 7, scope: !1257)
!1302 = !DILocation(line: 323, column: 41, scope: !1257)
!1303 = !{!1304, !536, i64 16}
!1304 = !{!"stat", !962, i64 0, !962, i64 8, !536, i64 16, !536, i64 20, !536, i64 24, !536, i64 28, !962, i64 32, !962, i64 40, !962, i64 48, !536, i64 56, !536, i64 60, !962, i64 64, !1305, i64 72, !1305, i64 88, !1305, i64 104, !445, i64 120}
!1305 = !{!"timespec", !962, i64 0, !962, i64 8}
!1306 = !DILocation(line: 0, scope: !1117, inlinedAt: !1307)
!1307 = distinct !DILocation(line: 323, column: 10, scope: !1257)
!1308 = !DILocation(line: 114, column: 27, scope: !1117, inlinedAt: !1307)
!1309 = !DILocation(line: 115, column: 9, scope: !1117, inlinedAt: !1307)
!1310 = !DILocation(line: 116, column: 6, scope: !1117, inlinedAt: !1307)
!1311 = !DILocation(line: 116, column: 11, scope: !1117, inlinedAt: !1307)
!1312 = !DILocation(line: 117, column: 6, scope: !1117, inlinedAt: !1307)
!1313 = !DILocation(line: 117, column: 15, scope: !1117, inlinedAt: !1307)
!1314 = !DILocation(line: 118, column: 6, scope: !1117, inlinedAt: !1307)
!1315 = !DILocation(line: 118, column: 12, scope: !1117, inlinedAt: !1307)
!1316 = !DILocation(line: 119, column: 6, scope: !1117, inlinedAt: !1307)
!1317 = !DILocation(line: 119, column: 16, scope: !1117, inlinedAt: !1307)
!1318 = !DILocation(line: 120, column: 8, scope: !1117, inlinedAt: !1307)
!1319 = !DILocation(line: 120, column: 13, scope: !1117, inlinedAt: !1307)
!1320 = !DILocation(line: 323, column: 3, scope: !1257)
!1321 = !DILocation(line: 324, column: 1, scope: !1257)
!1322 = !DISubprogram(name: "stat", scope: !771, file: !771, line: 205, type: !1323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{!39, !531, !1325}
!1325 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1326)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1327 = distinct !DISubprogram(name: "mode_adjust", scope: !352, file: !352, line: 340, type: !1328, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !351, retainedNodes: !1333)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!673, !673, !61, !673, !1330, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1054)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!1333 = !{!1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1345, !1346, !1347}
!1334 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1327, file: !352, line: 340, type: !673)
!1335 = !DILocalVariable(name: "dir", arg: 2, scope: !1327, file: !352, line: 340, type: !61)
!1336 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1327, file: !352, line: 340, type: !673)
!1337 = !DILocalVariable(name: "changes", arg: 4, scope: !1327, file: !352, line: 341, type: !1330)
!1338 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1327, file: !352, line: 341, type: !1332)
!1339 = !DILocalVariable(name: "newmode", scope: !1327, file: !352, line: 344, type: !673)
!1340 = !DILocalVariable(name: "mode_bits", scope: !1327, file: !352, line: 347, type: !673)
!1341 = !DILocalVariable(name: "affected", scope: !1342, file: !352, line: 351, type: !673)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !352, line: 350, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !352, line: 349, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1327, file: !352, line: 349, column: 3)
!1345 = !DILocalVariable(name: "omit_change", scope: !1342, file: !352, line: 352, type: !673)
!1346 = !DILocalVariable(name: "value", scope: !1342, file: !352, line: 354, type: !673)
!1347 = !DILocalVariable(name: "preserved", scope: !1348, file: !352, line: 394, type: !673)
!1348 = distinct !DILexicalBlock(scope: !1349, file: !352, line: 393, column: 11)
!1349 = distinct !DILexicalBlock(scope: !1342, file: !352, line: 388, column: 9)
!1350 = !DILocation(line: 0, scope: !1327)
!1351 = !DILocation(line: 344, column: 28, scope: !1327)
!1352 = !DILocation(line: 349, column: 19, scope: !1343)
!1353 = !DILocation(line: 349, column: 24, scope: !1343)
!1354 = !DILocation(line: 349, column: 3, scope: !1344)
!1355 = !DILocation(line: 351, column: 34, scope: !1342)
!1356 = !DILocation(line: 0, scope: !1342)
!1357 = !DILocation(line: 353, column: 52, scope: !1342)
!1358 = !DILocation(line: 353, column: 41, scope: !1342)
!1359 = !DILocation(line: 353, column: 39, scope: !1342)
!1360 = !DILocation(line: 354, column: 31, scope: !1342)
!1361 = !DILocation(line: 356, column: 7, scope: !1342)
!1362 = !DILocation(line: 363, column: 17, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1342, file: !352, line: 357, column: 9)
!1364 = !DILocation(line: 366, column: 28, scope: !1363)
!1365 = !DILocation(line: 366, column: 22, scope: !1363)
!1366 = !DILocation(line: 368, column: 30, scope: !1363)
!1367 = !DILocation(line: 368, column: 24, scope: !1363)
!1368 = !DILocation(line: 370, column: 30, scope: !1363)
!1369 = !DILocation(line: 370, column: 24, scope: !1363)
!1370 = !DILocation(line: 368, column: 21, scope: !1363)
!1371 = !DILocation(line: 370, column: 21, scope: !1363)
!1372 = !DILocation(line: 366, column: 17, scope: !1363)
!1373 = !DILocation(line: 372, column: 11, scope: !1363)
!1374 = !DILocation(line: 377, column: 24, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1363, file: !352, line: 377, column: 15)
!1376 = !DILocation(line: 377, column: 57, scope: !1375)
!1377 = !DILocation(line: 377, column: 15, scope: !1363)
!1378 = !DILocation(line: 385, column: 17, scope: !1342)
!1379 = !DILocation(line: 385, column: 55, scope: !1342)
!1380 = !DILocation(line: 385, column: 53, scope: !1342)
!1381 = !DILocation(line: 385, column: 13, scope: !1342)
!1382 = !DILocation(line: 387, column: 24, scope: !1342)
!1383 = !DILocation(line: 387, column: 7, scope: !1342)
!1384 = !DILocation(line: 394, column: 33, scope: !1348)
!1385 = !DILocation(line: 394, column: 59, scope: !1348)
!1386 = !DILocation(line: 0, scope: !1348)
!1387 = !DILocation(line: 395, column: 42, scope: !1348)
!1388 = !DILocation(line: 395, column: 23, scope: !1348)
!1389 = !DILocation(line: 396, column: 32, scope: !1348)
!1390 = !DILocation(line: 396, column: 45, scope: !1348)
!1391 = !DILocation(line: 401, column: 21, scope: !1349)
!1392 = !DILocation(line: 402, column: 19, scope: !1349)
!1393 = !DILocation(line: 403, column: 11, scope: !1349)
!1394 = !DILocation(line: 406, column: 21, scope: !1349)
!1395 = !DILocation(line: 407, column: 22, scope: !1349)
!1396 = !DILocation(line: 407, column: 19, scope: !1349)
!1397 = !DILocation(line: 408, column: 11, scope: !1349)
!1398 = !DILocation(line: 349, column: 45, scope: !1343)
!1399 = distinct !{!1399, !1354, !1400, !502}
!1400 = !DILocation(line: 410, column: 5, scope: !1344)
!1401 = !DILocation(line: 347, column: 10, scope: !1327)
!1402 = !DILocation(line: 344, column: 10, scope: !1327)
!1403 = !DILocation(line: 412, column: 7, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1327, file: !352, line: 412, column: 7)
!1405 = !DILocation(line: 412, column: 7, scope: !1327)
!1406 = !DILocation(line: 413, column: 17, scope: !1404)
!1407 = !DILocation(line: 413, column: 5, scope: !1404)
!1408 = !DILocation(line: 414, column: 3, scope: !1327)
!1409 = distinct !DISubprogram(name: "set_program_name", scope: !203, file: !203, line: 37, type: !461, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1410)
!1410 = !{!1411, !1412, !1413}
!1411 = !DILocalVariable(name: "argv0", arg: 1, scope: !1409, file: !203, line: 37, type: !44)
!1412 = !DILocalVariable(name: "slash", scope: !1409, file: !203, line: 44, type: !44)
!1413 = !DILocalVariable(name: "base", scope: !1409, file: !203, line: 45, type: !44)
!1414 = !DILocation(line: 0, scope: !1409)
!1415 = !DILocation(line: 44, column: 23, scope: !1409)
!1416 = !DILocation(line: 45, column: 22, scope: !1409)
!1417 = !DILocation(line: 46, column: 17, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1409, file: !203, line: 46, column: 7)
!1419 = !DILocation(line: 46, column: 9, scope: !1418)
!1420 = !DILocation(line: 46, column: 25, scope: !1418)
!1421 = !DILocation(line: 46, column: 40, scope: !1418)
!1422 = !DILocalVariable(name: "__s1", arg: 1, scope: !1423, file: !486, line: 974, type: !653)
!1423 = distinct !DISubprogram(name: "memeq", scope: !486, file: !486, line: 974, type: !1424, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !202, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!61, !653, !653, !41}
!1426 = !{!1422, !1427, !1428}
!1427 = !DILocalVariable(name: "__s2", arg: 2, scope: !1423, file: !486, line: 974, type: !653)
!1428 = !DILocalVariable(name: "__n", arg: 3, scope: !1423, file: !486, line: 974, type: !41)
!1429 = !DILocation(line: 0, scope: !1423, inlinedAt: !1430)
!1430 = distinct !DILocation(line: 46, column: 28, scope: !1418)
!1431 = !DILocation(line: 976, column: 11, scope: !1423, inlinedAt: !1430)
!1432 = !DILocation(line: 976, column: 10, scope: !1423, inlinedAt: !1430)
!1433 = !DILocation(line: 46, column: 7, scope: !1409)
!1434 = !DILocation(line: 49, column: 11, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !203, line: 49, column: 11)
!1436 = distinct !DILexicalBlock(scope: !1418, file: !203, line: 47, column: 5)
!1437 = !DILocation(line: 49, column: 36, scope: !1435)
!1438 = !DILocation(line: 49, column: 11, scope: !1436)
!1439 = !DILocation(line: 65, column: 16, scope: !1409)
!1440 = !DILocation(line: 71, column: 27, scope: !1409)
!1441 = !DILocation(line: 74, column: 33, scope: !1409)
!1442 = !DILocation(line: 76, column: 1, scope: !1409)
!1443 = !DILocation(line: 0, scope: !208)
!1444 = !DILocation(line: 40, column: 29, scope: !208)
!1445 = !DILocation(line: 41, column: 19, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !208, file: !209, line: 41, column: 7)
!1447 = !DILocation(line: 41, column: 7, scope: !208)
!1448 = !DILocation(line: 47, column: 3, scope: !208)
!1449 = !DILocation(line: 48, column: 3, scope: !208)
!1450 = !DILocation(line: 48, column: 13, scope: !208)
!1451 = !DILocalVariable(name: "ps", arg: 1, scope: !1452, file: !1453, line: 1135, type: !1456)
!1452 = distinct !DISubprogram(name: "mbszero", scope: !1453, file: !1453, line: 1135, type: !1454, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1457)
!1453 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1454 = !DISubroutineType(types: !1455)
!1455 = !{null, !1456}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1457 = !{!1451}
!1458 = !DILocation(line: 0, scope: !1452, inlinedAt: !1459)
!1459 = distinct !DILocation(line: 48, column: 18, scope: !208)
!1460 = !DILocalVariable(name: "__dest", arg: 1, scope: !1461, file: !1462, line: 57, type: !38)
!1461 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1463, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !212, retainedNodes: !1465)
!1462 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!38, !38, !39, !41}
!1465 = !{!1460, !1466, !1467}
!1466 = !DILocalVariable(name: "__ch", arg: 2, scope: !1461, file: !1462, line: 57, type: !39)
!1467 = !DILocalVariable(name: "__len", arg: 3, scope: !1461, file: !1462, line: 57, type: !41)
!1468 = !DILocation(line: 0, scope: !1461, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 1137, column: 3, scope: !1452, inlinedAt: !1459)
!1470 = !DILocation(line: 59, column: 10, scope: !1461, inlinedAt: !1469)
!1471 = !DILocation(line: 49, column: 7, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !208, file: !209, line: 49, column: 7)
!1473 = !DILocation(line: 49, column: 39, scope: !1472)
!1474 = !DILocation(line: 49, column: 44, scope: !1472)
!1475 = !DILocation(line: 54, column: 1, scope: !208)
!1476 = !DISubprogram(name: "mbrtoc32", scope: !220, file: !220, line: 57, type: !1477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!41, !1479, !531, !41, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1456)
!1482 = distinct !DISubprogram(name: "clone_quoting_options", scope: !245, file: !245, line: 113, type: !1483, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1486)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!1485, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1486 = !{!1487, !1488, !1489}
!1487 = !DILocalVariable(name: "o", arg: 1, scope: !1482, file: !245, line: 113, type: !1485)
!1488 = !DILocalVariable(name: "saved_errno", scope: !1482, file: !245, line: 115, type: !39)
!1489 = !DILocalVariable(name: "p", scope: !1482, file: !245, line: 116, type: !1485)
!1490 = !DILocation(line: 0, scope: !1482)
!1491 = !DILocation(line: 115, column: 21, scope: !1482)
!1492 = !DILocation(line: 116, column: 40, scope: !1482)
!1493 = !DILocation(line: 116, column: 31, scope: !1482)
!1494 = !DILocation(line: 118, column: 9, scope: !1482)
!1495 = !DILocation(line: 119, column: 3, scope: !1482)
!1496 = distinct !DISubprogram(name: "get_quoting_style", scope: !245, file: !245, line: 124, type: !1497, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1501)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!5, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "o", arg: 1, scope: !1496, file: !245, line: 124, type: !1499)
!1503 = !DILocation(line: 0, scope: !1496)
!1504 = !DILocation(line: 126, column: 11, scope: !1496)
!1505 = !DILocation(line: 126, column: 46, scope: !1496)
!1506 = !{!1507, !445, i64 0}
!1507 = !{!"quoting_options", !445, i64 0, !536, i64 4, !445, i64 8, !444, i64 40, !444, i64 48}
!1508 = !DILocation(line: 126, column: 3, scope: !1496)
!1509 = distinct !DISubprogram(name: "set_quoting_style", scope: !245, file: !245, line: 132, type: !1510, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !1485, !5}
!1512 = !{!1513, !1514}
!1513 = !DILocalVariable(name: "o", arg: 1, scope: !1509, file: !245, line: 132, type: !1485)
!1514 = !DILocalVariable(name: "s", arg: 2, scope: !1509, file: !245, line: 132, type: !5)
!1515 = !DILocation(line: 0, scope: !1509)
!1516 = !DILocation(line: 134, column: 4, scope: !1509)
!1517 = !DILocation(line: 134, column: 39, scope: !1509)
!1518 = !DILocation(line: 134, column: 45, scope: !1509)
!1519 = !DILocation(line: 135, column: 1, scope: !1509)
!1520 = distinct !DISubprogram(name: "set_char_quoting", scope: !245, file: !245, line: 143, type: !1521, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!39, !1485, !37, !39}
!1523 = !{!1524, !1525, !1526, !1527, !1528, !1530, !1531}
!1524 = !DILocalVariable(name: "o", arg: 1, scope: !1520, file: !245, line: 143, type: !1485)
!1525 = !DILocalVariable(name: "c", arg: 2, scope: !1520, file: !245, line: 143, type: !37)
!1526 = !DILocalVariable(name: "i", arg: 3, scope: !1520, file: !245, line: 143, type: !39)
!1527 = !DILocalVariable(name: "uc", scope: !1520, file: !245, line: 145, type: !46)
!1528 = !DILocalVariable(name: "p", scope: !1520, file: !245, line: 146, type: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1530 = !DILocalVariable(name: "shift", scope: !1520, file: !245, line: 148, type: !39)
!1531 = !DILocalVariable(name: "r", scope: !1520, file: !245, line: 149, type: !7)
!1532 = !DILocation(line: 0, scope: !1520)
!1533 = !DILocation(line: 147, column: 6, scope: !1520)
!1534 = !DILocation(line: 147, column: 62, scope: !1520)
!1535 = !DILocation(line: 147, column: 57, scope: !1520)
!1536 = !DILocation(line: 148, column: 15, scope: !1520)
!1537 = !DILocation(line: 149, column: 21, scope: !1520)
!1538 = !DILocation(line: 149, column: 24, scope: !1520)
!1539 = !DILocation(line: 149, column: 34, scope: !1520)
!1540 = !DILocation(line: 150, column: 13, scope: !1520)
!1541 = !DILocation(line: 150, column: 19, scope: !1520)
!1542 = !DILocation(line: 150, column: 24, scope: !1520)
!1543 = !DILocation(line: 150, column: 6, scope: !1520)
!1544 = !DILocation(line: 151, column: 3, scope: !1520)
!1545 = distinct !DISubprogram(name: "set_quoting_flags", scope: !245, file: !245, line: 159, type: !1546, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!39, !1485, !39}
!1548 = !{!1549, !1550, !1551}
!1549 = !DILocalVariable(name: "o", arg: 1, scope: !1545, file: !245, line: 159, type: !1485)
!1550 = !DILocalVariable(name: "i", arg: 2, scope: !1545, file: !245, line: 159, type: !39)
!1551 = !DILocalVariable(name: "r", scope: !1545, file: !245, line: 163, type: !39)
!1552 = !DILocation(line: 0, scope: !1545)
!1553 = !DILocation(line: 161, column: 8, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1545, file: !245, line: 161, column: 7)
!1555 = !DILocation(line: 161, column: 7, scope: !1545)
!1556 = !DILocation(line: 163, column: 14, scope: !1545)
!1557 = !{!1507, !536, i64 4}
!1558 = !DILocation(line: 164, column: 12, scope: !1545)
!1559 = !DILocation(line: 165, column: 3, scope: !1545)
!1560 = distinct !DISubprogram(name: "set_custom_quoting", scope: !245, file: !245, line: 169, type: !1561, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1563)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1485, !44, !44}
!1563 = !{!1564, !1565, !1566}
!1564 = !DILocalVariable(name: "o", arg: 1, scope: !1560, file: !245, line: 169, type: !1485)
!1565 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1560, file: !245, line: 170, type: !44)
!1566 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1560, file: !245, line: 170, type: !44)
!1567 = !DILocation(line: 0, scope: !1560)
!1568 = !DILocation(line: 172, column: 8, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !245, line: 172, column: 7)
!1570 = !DILocation(line: 172, column: 7, scope: !1560)
!1571 = !DILocation(line: 174, column: 6, scope: !1560)
!1572 = !DILocation(line: 174, column: 12, scope: !1560)
!1573 = !DILocation(line: 175, column: 8, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1560, file: !245, line: 175, column: 7)
!1575 = !DILocation(line: 175, column: 19, scope: !1574)
!1576 = !DILocation(line: 176, column: 5, scope: !1574)
!1577 = !DILocation(line: 177, column: 6, scope: !1560)
!1578 = !DILocation(line: 177, column: 17, scope: !1560)
!1579 = !{!1507, !444, i64 40}
!1580 = !DILocation(line: 178, column: 6, scope: !1560)
!1581 = !DILocation(line: 178, column: 18, scope: !1560)
!1582 = !{!1507, !444, i64 48}
!1583 = !DILocation(line: 179, column: 1, scope: !1560)
!1584 = distinct !DISubprogram(name: "quotearg_buffer", scope: !245, file: !245, line: 774, type: !1585, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1587)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!41, !36, !41, !44, !41, !1499}
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1588 = !DILocalVariable(name: "buffer", arg: 1, scope: !1584, file: !245, line: 774, type: !36)
!1589 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1584, file: !245, line: 774, type: !41)
!1590 = !DILocalVariable(name: "arg", arg: 3, scope: !1584, file: !245, line: 775, type: !44)
!1591 = !DILocalVariable(name: "argsize", arg: 4, scope: !1584, file: !245, line: 775, type: !41)
!1592 = !DILocalVariable(name: "o", arg: 5, scope: !1584, file: !245, line: 776, type: !1499)
!1593 = !DILocalVariable(name: "p", scope: !1584, file: !245, line: 778, type: !1499)
!1594 = !DILocalVariable(name: "saved_errno", scope: !1584, file: !245, line: 779, type: !39)
!1595 = !DILocalVariable(name: "r", scope: !1584, file: !245, line: 780, type: !41)
!1596 = !DILocation(line: 0, scope: !1584)
!1597 = !DILocation(line: 778, column: 37, scope: !1584)
!1598 = !DILocation(line: 779, column: 21, scope: !1584)
!1599 = !DILocation(line: 781, column: 43, scope: !1584)
!1600 = !DILocation(line: 781, column: 53, scope: !1584)
!1601 = !DILocation(line: 781, column: 60, scope: !1584)
!1602 = !DILocation(line: 782, column: 43, scope: !1584)
!1603 = !DILocation(line: 782, column: 58, scope: !1584)
!1604 = !DILocation(line: 780, column: 14, scope: !1584)
!1605 = !DILocation(line: 783, column: 9, scope: !1584)
!1606 = !DILocation(line: 784, column: 3, scope: !1584)
!1607 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !245, file: !245, line: 251, type: !1608, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1612)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!41, !36, !41, !44, !41, !5, !39, !1610, !44, !44}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1612 = !{!1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1637, !1639, !1642, !1643, !1644, !1645, !1648, !1649, !1652, !1656, !1657, !1665, !1668, !1669, !1671, !1672, !1673, !1674}
!1613 = !DILocalVariable(name: "buffer", arg: 1, scope: !1607, file: !245, line: 251, type: !36)
!1614 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1607, file: !245, line: 251, type: !41)
!1615 = !DILocalVariable(name: "arg", arg: 3, scope: !1607, file: !245, line: 252, type: !44)
!1616 = !DILocalVariable(name: "argsize", arg: 4, scope: !1607, file: !245, line: 252, type: !41)
!1617 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1607, file: !245, line: 253, type: !5)
!1618 = !DILocalVariable(name: "flags", arg: 6, scope: !1607, file: !245, line: 253, type: !39)
!1619 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1607, file: !245, line: 254, type: !1610)
!1620 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1607, file: !245, line: 255, type: !44)
!1621 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1607, file: !245, line: 256, type: !44)
!1622 = !DILocalVariable(name: "unibyte_locale", scope: !1607, file: !245, line: 258, type: !61)
!1623 = !DILocalVariable(name: "len", scope: !1607, file: !245, line: 260, type: !41)
!1624 = !DILocalVariable(name: "orig_buffersize", scope: !1607, file: !245, line: 261, type: !41)
!1625 = !DILocalVariable(name: "quote_string", scope: !1607, file: !245, line: 262, type: !44)
!1626 = !DILocalVariable(name: "quote_string_len", scope: !1607, file: !245, line: 263, type: !41)
!1627 = !DILocalVariable(name: "backslash_escapes", scope: !1607, file: !245, line: 264, type: !61)
!1628 = !DILocalVariable(name: "elide_outer_quotes", scope: !1607, file: !245, line: 265, type: !61)
!1629 = !DILocalVariable(name: "encountered_single_quote", scope: !1607, file: !245, line: 266, type: !61)
!1630 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1607, file: !245, line: 267, type: !61)
!1631 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1607, file: !245, line: 309, type: !61)
!1632 = !DILocalVariable(name: "lq", scope: !1633, file: !245, line: 361, type: !44)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !245, line: 361, column: 11)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !245, line: 360, column: 13)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !245, line: 333, column: 7)
!1636 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 312, column: 5)
!1637 = !DILocalVariable(name: "i", scope: !1638, file: !245, line: 395, type: !41)
!1638 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 395, column: 3)
!1639 = !DILocalVariable(name: "is_right_quote", scope: !1640, file: !245, line: 397, type: !61)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !245, line: 396, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1638, file: !245, line: 395, column: 3)
!1642 = !DILocalVariable(name: "escaping", scope: !1640, file: !245, line: 398, type: !61)
!1643 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1640, file: !245, line: 399, type: !61)
!1644 = !DILocalVariable(name: "c", scope: !1640, file: !245, line: 417, type: !46)
!1645 = !DILocalVariable(name: "m", scope: !1646, file: !245, line: 598, type: !41)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 596, column: 11)
!1647 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 419, column: 9)
!1648 = !DILocalVariable(name: "printable", scope: !1646, file: !245, line: 600, type: !61)
!1649 = !DILocalVariable(name: "mbs", scope: !1650, file: !245, line: 609, type: !290)
!1650 = distinct !DILexicalBlock(scope: !1651, file: !245, line: 608, column: 15)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !245, line: 602, column: 17)
!1652 = !DILocalVariable(name: "w", scope: !1653, file: !245, line: 618, type: !219)
!1653 = distinct !DILexicalBlock(scope: !1654, file: !245, line: 617, column: 19)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !245, line: 616, column: 17)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !245, line: 616, column: 17)
!1656 = !DILocalVariable(name: "bytes", scope: !1653, file: !245, line: 619, type: !41)
!1657 = !DILocalVariable(name: "j", scope: !1658, file: !245, line: 648, type: !41)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !245, line: 648, column: 29)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !245, line: 647, column: 27)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !245, line: 645, column: 29)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !245, line: 636, column: 23)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !245, line: 628, column: 30)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !245, line: 623, column: 30)
!1664 = distinct !DILexicalBlock(scope: !1653, file: !245, line: 621, column: 25)
!1665 = !DILocalVariable(name: "ilim", scope: !1666, file: !245, line: 674, type: !41)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !245, line: 671, column: 15)
!1667 = distinct !DILexicalBlock(scope: !1646, file: !245, line: 670, column: 17)
!1668 = !DILabel(scope: !1607, name: "process_input", file: !245, line: 308)
!1669 = !DILabel(scope: !1670, name: "c_and_shell_escape", file: !245, line: 502)
!1670 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 478, column: 9)
!1671 = !DILabel(scope: !1670, name: "c_escape", file: !245, line: 507)
!1672 = !DILabel(scope: !1640, name: "store_escape", file: !245, line: 709)
!1673 = !DILabel(scope: !1640, name: "store_c", file: !245, line: 712)
!1674 = !DILabel(scope: !1607, name: "force_outer_quoting_style", file: !245, line: 753)
!1675 = !DILocation(line: 0, scope: !1607)
!1676 = !DILocation(line: 258, column: 25, scope: !1607)
!1677 = !DILocation(line: 258, column: 36, scope: !1607)
!1678 = !DILocation(line: 267, column: 3, scope: !1607)
!1679 = !DILocation(line: 261, column: 10, scope: !1607)
!1680 = !DILocation(line: 262, column: 15, scope: !1607)
!1681 = !DILocation(line: 263, column: 10, scope: !1607)
!1682 = !DILocation(line: 308, column: 2, scope: !1607)
!1683 = !DILocation(line: 311, column: 3, scope: !1607)
!1684 = !DILocation(line: 318, column: 11, scope: !1636)
!1685 = !DILocation(line: 319, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !245, line: 319, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !245, line: 319, column: 9)
!1688 = distinct !DILexicalBlock(scope: !1636, file: !245, line: 318, column: 11)
!1689 = !DILocation(line: 319, column: 9, scope: !1687)
!1690 = !DILocation(line: 0, scope: !281, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 357, column: 26, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !245, line: 335, column: 11)
!1693 = distinct !DILexicalBlock(scope: !1635, file: !245, line: 334, column: 13)
!1694 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1691)
!1695 = !DILocation(line: 201, column: 19, scope: !1696, inlinedAt: !1691)
!1696 = distinct !DILexicalBlock(scope: !281, file: !245, line: 201, column: 7)
!1697 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1691)
!1698 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1691)
!1699 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1691)
!1700 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1691)
!1701 = !DILocalVariable(name: "ps", arg: 1, scope: !1702, file: !1453, line: 1135, type: !1705)
!1702 = distinct !DISubprogram(name: "mbszero", scope: !1453, file: !1453, line: 1135, type: !1703, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1706)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{null, !1705}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!1706 = !{!1701}
!1707 = !DILocation(line: 0, scope: !1702, inlinedAt: !1708)
!1708 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1691)
!1709 = !DILocalVariable(name: "__dest", arg: 1, scope: !1710, file: !1462, line: 57, type: !38)
!1710 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1463, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1711)
!1711 = !{!1709, !1712, !1713}
!1712 = !DILocalVariable(name: "__ch", arg: 2, scope: !1710, file: !1462, line: 57, type: !39)
!1713 = !DILocalVariable(name: "__len", arg: 3, scope: !1710, file: !1462, line: 57, type: !41)
!1714 = !DILocation(line: 0, scope: !1710, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1708)
!1716 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1715)
!1717 = !DILocation(line: 231, column: 7, scope: !1718, inlinedAt: !1691)
!1718 = distinct !DILexicalBlock(scope: !281, file: !245, line: 231, column: 7)
!1719 = !DILocation(line: 231, column: 40, scope: !1718, inlinedAt: !1691)
!1720 = !DILocation(line: 231, column: 45, scope: !1718, inlinedAt: !1691)
!1721 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1691)
!1722 = !DILocation(line: 0, scope: !281, inlinedAt: !1723)
!1723 = distinct !DILocation(line: 358, column: 27, scope: !1692)
!1724 = !DILocation(line: 199, column: 29, scope: !281, inlinedAt: !1723)
!1725 = !DILocation(line: 201, column: 19, scope: !1696, inlinedAt: !1723)
!1726 = !DILocation(line: 201, column: 7, scope: !281, inlinedAt: !1723)
!1727 = !DILocation(line: 229, column: 3, scope: !281, inlinedAt: !1723)
!1728 = !DILocation(line: 230, column: 3, scope: !281, inlinedAt: !1723)
!1729 = !DILocation(line: 230, column: 13, scope: !281, inlinedAt: !1723)
!1730 = !DILocation(line: 0, scope: !1702, inlinedAt: !1731)
!1731 = distinct !DILocation(line: 230, column: 18, scope: !281, inlinedAt: !1723)
!1732 = !DILocation(line: 0, scope: !1710, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1731)
!1734 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1733)
!1735 = !DILocation(line: 231, column: 7, scope: !1718, inlinedAt: !1723)
!1736 = !DILocation(line: 231, column: 40, scope: !1718, inlinedAt: !1723)
!1737 = !DILocation(line: 231, column: 45, scope: !1718, inlinedAt: !1723)
!1738 = !DILocation(line: 235, column: 1, scope: !281, inlinedAt: !1723)
!1739 = !DILocation(line: 360, column: 13, scope: !1635)
!1740 = !DILocation(line: 0, scope: !1633)
!1741 = !DILocation(line: 361, column: 45, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1633, file: !245, line: 361, column: 11)
!1743 = !DILocation(line: 361, column: 11, scope: !1633)
!1744 = !DILocation(line: 362, column: 13, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !245, line: 362, column: 13)
!1746 = distinct !DILexicalBlock(scope: !1742, file: !245, line: 362, column: 13)
!1747 = !DILocation(line: 362, column: 13, scope: !1746)
!1748 = !DILocation(line: 361, column: 52, scope: !1742)
!1749 = distinct !{!1749, !1743, !1750, !502}
!1750 = !DILocation(line: 362, column: 13, scope: !1633)
!1751 = !DILocation(line: 260, column: 10, scope: !1607)
!1752 = !DILocation(line: 365, column: 28, scope: !1635)
!1753 = !DILocation(line: 367, column: 7, scope: !1636)
!1754 = !DILocation(line: 370, column: 7, scope: !1636)
!1755 = !DILocation(line: 376, column: 11, scope: !1636)
!1756 = !DILocation(line: 381, column: 11, scope: !1636)
!1757 = !DILocation(line: 382, column: 9, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !245, line: 382, column: 9)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !245, line: 382, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1636, file: !245, line: 381, column: 11)
!1761 = !DILocation(line: 382, column: 9, scope: !1759)
!1762 = !DILocation(line: 389, column: 7, scope: !1636)
!1763 = !DILocation(line: 392, column: 7, scope: !1636)
!1764 = !DILocation(line: 0, scope: !1638)
!1765 = !DILocation(line: 395, column: 8, scope: !1638)
!1766 = !DILocation(line: 395, column: 34, scope: !1641)
!1767 = !DILocation(line: 395, column: 26, scope: !1641)
!1768 = !DILocation(line: 395, column: 48, scope: !1641)
!1769 = !DILocation(line: 395, column: 55, scope: !1641)
!1770 = !DILocation(line: 395, column: 3, scope: !1638)
!1771 = !DILocation(line: 395, column: 67, scope: !1641)
!1772 = !DILocation(line: 0, scope: !1640)
!1773 = !DILocation(line: 402, column: 11, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 401, column: 11)
!1775 = !DILocation(line: 404, column: 17, scope: !1774)
!1776 = !DILocation(line: 405, column: 39, scope: !1774)
!1777 = !DILocation(line: 409, column: 32, scope: !1774)
!1778 = !DILocation(line: 405, column: 19, scope: !1774)
!1779 = !DILocation(line: 405, column: 15, scope: !1774)
!1780 = !DILocation(line: 410, column: 11, scope: !1774)
!1781 = !DILocation(line: 410, column: 25, scope: !1774)
!1782 = !DILocalVariable(name: "__s1", arg: 1, scope: !1783, file: !486, line: 974, type: !653)
!1783 = distinct !DISubprogram(name: "memeq", scope: !486, file: !486, line: 974, type: !1424, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1784)
!1784 = !{!1782, !1785, !1786}
!1785 = !DILocalVariable(name: "__s2", arg: 2, scope: !1783, file: !486, line: 974, type: !653)
!1786 = !DILocalVariable(name: "__n", arg: 3, scope: !1783, file: !486, line: 974, type: !41)
!1787 = !DILocation(line: 0, scope: !1783, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 410, column: 14, scope: !1774)
!1789 = !DILocation(line: 976, column: 11, scope: !1783, inlinedAt: !1788)
!1790 = !DILocation(line: 976, column: 10, scope: !1783, inlinedAt: !1788)
!1791 = !DILocation(line: 401, column: 11, scope: !1640)
!1792 = !DILocation(line: 417, column: 25, scope: !1640)
!1793 = !DILocation(line: 418, column: 7, scope: !1640)
!1794 = !DILocation(line: 421, column: 15, scope: !1647)
!1795 = !DILocation(line: 423, column: 15, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !245, line: 423, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !245, line: 422, column: 13)
!1798 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 421, column: 15)
!1799 = !DILocation(line: 423, column: 15, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !1796, file: !245, line: 423, column: 15)
!1801 = !DILocation(line: 423, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !245, line: 423, column: 15)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !245, line: 423, column: 15)
!1804 = distinct !DILexicalBlock(scope: !1800, file: !245, line: 423, column: 15)
!1805 = !DILocation(line: 423, column: 15, scope: !1803)
!1806 = !DILocation(line: 423, column: 15, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !245, line: 423, column: 15)
!1808 = distinct !DILexicalBlock(scope: !1804, file: !245, line: 423, column: 15)
!1809 = !DILocation(line: 423, column: 15, scope: !1808)
!1810 = !DILocation(line: 423, column: 15, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !245, line: 423, column: 15)
!1812 = distinct !DILexicalBlock(scope: !1804, file: !245, line: 423, column: 15)
!1813 = !DILocation(line: 423, column: 15, scope: !1812)
!1814 = !DILocation(line: 423, column: 15, scope: !1804)
!1815 = !DILocation(line: 423, column: 15, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !245, line: 423, column: 15)
!1817 = distinct !DILexicalBlock(scope: !1796, file: !245, line: 423, column: 15)
!1818 = !DILocation(line: 423, column: 15, scope: !1817)
!1819 = !DILocation(line: 431, column: 19, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1797, file: !245, line: 430, column: 19)
!1821 = !DILocation(line: 431, column: 24, scope: !1820)
!1822 = !DILocation(line: 431, column: 28, scope: !1820)
!1823 = !DILocation(line: 431, column: 38, scope: !1820)
!1824 = !DILocation(line: 431, column: 48, scope: !1820)
!1825 = !DILocation(line: 431, column: 59, scope: !1820)
!1826 = !DILocation(line: 433, column: 19, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1828, file: !245, line: 433, column: 19)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !245, line: 433, column: 19)
!1829 = distinct !DILexicalBlock(scope: !1820, file: !245, line: 432, column: 17)
!1830 = !DILocation(line: 433, column: 19, scope: !1828)
!1831 = !DILocation(line: 434, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !245, line: 434, column: 19)
!1833 = distinct !DILexicalBlock(scope: !1829, file: !245, line: 434, column: 19)
!1834 = !DILocation(line: 434, column: 19, scope: !1833)
!1835 = !DILocation(line: 435, column: 17, scope: !1829)
!1836 = !DILocation(line: 442, column: 20, scope: !1798)
!1837 = !DILocation(line: 447, column: 11, scope: !1647)
!1838 = !DILocation(line: 450, column: 19, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 448, column: 13)
!1840 = !DILocation(line: 456, column: 19, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1839, file: !245, line: 455, column: 19)
!1842 = !DILocation(line: 456, column: 24, scope: !1841)
!1843 = !DILocation(line: 456, column: 28, scope: !1841)
!1844 = !DILocation(line: 456, column: 38, scope: !1841)
!1845 = !DILocation(line: 456, column: 47, scope: !1841)
!1846 = !DILocation(line: 456, column: 41, scope: !1841)
!1847 = !DILocation(line: 456, column: 52, scope: !1841)
!1848 = !DILocation(line: 455, column: 19, scope: !1839)
!1849 = !DILocation(line: 457, column: 25, scope: !1841)
!1850 = !DILocation(line: 457, column: 17, scope: !1841)
!1851 = !DILocation(line: 464, column: 25, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1841, file: !245, line: 458, column: 19)
!1853 = !DILocation(line: 468, column: 21, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !245, line: 468, column: 21)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !245, line: 468, column: 21)
!1856 = !DILocation(line: 468, column: 21, scope: !1855)
!1857 = !DILocation(line: 469, column: 21, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !245, line: 469, column: 21)
!1859 = distinct !DILexicalBlock(scope: !1852, file: !245, line: 469, column: 21)
!1860 = !DILocation(line: 469, column: 21, scope: !1859)
!1861 = !DILocation(line: 470, column: 21, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !245, line: 470, column: 21)
!1863 = distinct !DILexicalBlock(scope: !1852, file: !245, line: 470, column: 21)
!1864 = !DILocation(line: 470, column: 21, scope: !1863)
!1865 = !DILocation(line: 471, column: 21, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !245, line: 471, column: 21)
!1867 = distinct !DILexicalBlock(scope: !1852, file: !245, line: 471, column: 21)
!1868 = !DILocation(line: 471, column: 21, scope: !1867)
!1869 = !DILocation(line: 472, column: 21, scope: !1852)
!1870 = !DILocation(line: 482, column: 33, scope: !1670)
!1871 = !DILocation(line: 483, column: 33, scope: !1670)
!1872 = !DILocation(line: 485, column: 33, scope: !1670)
!1873 = !DILocation(line: 486, column: 33, scope: !1670)
!1874 = !DILocation(line: 487, column: 33, scope: !1670)
!1875 = !DILocation(line: 490, column: 17, scope: !1670)
!1876 = !DILocation(line: 492, column: 21, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !245, line: 491, column: 15)
!1878 = distinct !DILexicalBlock(scope: !1670, file: !245, line: 490, column: 17)
!1879 = !DILocation(line: 499, column: 35, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1670, file: !245, line: 499, column: 17)
!1881 = !DILocation(line: 499, column: 57, scope: !1880)
!1882 = !DILocation(line: 0, scope: !1670)
!1883 = !DILocation(line: 502, column: 11, scope: !1670)
!1884 = !DILocation(line: 504, column: 17, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1670, file: !245, line: 503, column: 17)
!1886 = !DILocation(line: 507, column: 11, scope: !1670)
!1887 = !DILocation(line: 508, column: 17, scope: !1670)
!1888 = !DILocation(line: 517, column: 15, scope: !1647)
!1889 = !DILocation(line: 517, column: 40, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 517, column: 15)
!1891 = !DILocation(line: 517, column: 47, scope: !1890)
!1892 = !DILocation(line: 517, column: 18, scope: !1890)
!1893 = !DILocation(line: 521, column: 17, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 521, column: 15)
!1895 = !DILocation(line: 521, column: 15, scope: !1647)
!1896 = !DILocation(line: 525, column: 11, scope: !1647)
!1897 = !DILocation(line: 537, column: 15, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 536, column: 15)
!1899 = !DILocation(line: 536, column: 15, scope: !1647)
!1900 = !DILocation(line: 544, column: 15, scope: !1647)
!1901 = !DILocation(line: 546, column: 19, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !1903, file: !245, line: 545, column: 13)
!1903 = distinct !DILexicalBlock(scope: !1647, file: !245, line: 544, column: 15)
!1904 = !DILocation(line: 549, column: 19, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1902, file: !245, line: 549, column: 19)
!1906 = !DILocation(line: 549, column: 30, scope: !1905)
!1907 = !DILocation(line: 558, column: 15, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !245, line: 558, column: 15)
!1909 = distinct !DILexicalBlock(scope: !1902, file: !245, line: 558, column: 15)
!1910 = !DILocation(line: 558, column: 15, scope: !1909)
!1911 = !DILocation(line: 559, column: 15, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1913, file: !245, line: 559, column: 15)
!1913 = distinct !DILexicalBlock(scope: !1902, file: !245, line: 559, column: 15)
!1914 = !DILocation(line: 559, column: 15, scope: !1913)
!1915 = !DILocation(line: 560, column: 15, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !245, line: 560, column: 15)
!1917 = distinct !DILexicalBlock(scope: !1902, file: !245, line: 560, column: 15)
!1918 = !DILocation(line: 560, column: 15, scope: !1917)
!1919 = !DILocation(line: 562, column: 13, scope: !1902)
!1920 = !DILocation(line: 602, column: 17, scope: !1646)
!1921 = !DILocation(line: 0, scope: !1646)
!1922 = !DILocation(line: 605, column: 29, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1651, file: !245, line: 603, column: 15)
!1924 = !DILocation(line: 605, column: 41, scope: !1923)
!1925 = !DILocation(line: 670, column: 23, scope: !1667)
!1926 = !DILocation(line: 609, column: 17, scope: !1650)
!1927 = !DILocation(line: 609, column: 27, scope: !1650)
!1928 = !DILocation(line: 0, scope: !1702, inlinedAt: !1929)
!1929 = distinct !DILocation(line: 609, column: 32, scope: !1650)
!1930 = !DILocation(line: 0, scope: !1710, inlinedAt: !1931)
!1931 = distinct !DILocation(line: 1137, column: 3, scope: !1702, inlinedAt: !1929)
!1932 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !1931)
!1933 = !DILocation(line: 613, column: 29, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1650, file: !245, line: 613, column: 21)
!1935 = !DILocation(line: 613, column: 21, scope: !1650)
!1936 = !DILocation(line: 614, column: 29, scope: !1934)
!1937 = !DILocation(line: 614, column: 19, scope: !1934)
!1938 = !DILocation(line: 618, column: 21, scope: !1653)
!1939 = !DILocation(line: 620, column: 54, scope: !1653)
!1940 = !DILocation(line: 0, scope: !1653)
!1941 = !DILocation(line: 619, column: 36, scope: !1653)
!1942 = !DILocation(line: 621, column: 25, scope: !1653)
!1943 = !DILocation(line: 631, column: 38, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1662, file: !245, line: 629, column: 23)
!1945 = !DILocation(line: 631, column: 48, scope: !1944)
!1946 = !DILocation(line: 665, column: 19, scope: !1654)
!1947 = !DILocation(line: 666, column: 15, scope: !1651)
!1948 = !DILocation(line: 626, column: 25, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1663, file: !245, line: 624, column: 23)
!1950 = !DILocation(line: 631, column: 51, scope: !1944)
!1951 = !DILocation(line: 631, column: 25, scope: !1944)
!1952 = !DILocation(line: 632, column: 28, scope: !1944)
!1953 = !DILocation(line: 631, column: 34, scope: !1944)
!1954 = distinct !{!1954, !1951, !1952, !502}
!1955 = !DILocation(line: 646, column: 29, scope: !1660)
!1956 = !DILocation(line: 0, scope: !1658)
!1957 = !DILocation(line: 649, column: 49, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1658, file: !245, line: 648, column: 29)
!1959 = !DILocation(line: 649, column: 39, scope: !1958)
!1960 = !DILocation(line: 649, column: 31, scope: !1958)
!1961 = !DILocation(line: 648, column: 60, scope: !1958)
!1962 = !DILocation(line: 648, column: 50, scope: !1958)
!1963 = !DILocation(line: 648, column: 29, scope: !1658)
!1964 = distinct !{!1964, !1963, !1965, !502}
!1965 = !DILocation(line: 654, column: 33, scope: !1658)
!1966 = !DILocation(line: 657, column: 43, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1661, file: !245, line: 657, column: 29)
!1968 = !DILocalVariable(name: "wc", arg: 1, scope: !1969, file: !1970, line: 865, type: !1973)
!1969 = distinct !DISubprogram(name: "c32isprint", scope: !1970, file: !1970, line: 865, type: !1971, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !1975)
!1970 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!39, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1974, line: 20, baseType: !7)
!1974 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1975 = !{!1968}
!1976 = !DILocation(line: 0, scope: !1969, inlinedAt: !1977)
!1977 = distinct !DILocation(line: 657, column: 31, scope: !1967)
!1978 = !DILocation(line: 871, column: 10, scope: !1969, inlinedAt: !1977)
!1979 = !DILocation(line: 657, column: 31, scope: !1967)
!1980 = !DILocation(line: 664, column: 23, scope: !1653)
!1981 = !DILocation(line: 753, column: 2, scope: !1607)
!1982 = !DILocation(line: 756, column: 51, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 756, column: 7)
!1984 = !DILocation(line: 670, column: 19, scope: !1667)
!1985 = !DILocation(line: 670, column: 45, scope: !1667)
!1986 = !DILocation(line: 674, column: 33, scope: !1666)
!1987 = !DILocation(line: 0, scope: !1666)
!1988 = !DILocation(line: 676, column: 17, scope: !1666)
!1989 = !DILocation(line: 398, column: 12, scope: !1640)
!1990 = !DILocation(line: 678, column: 43, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 678, column: 25)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !245, line: 677, column: 19)
!1993 = distinct !DILexicalBlock(scope: !1994, file: !245, line: 676, column: 17)
!1994 = distinct !DILexicalBlock(scope: !1666, file: !245, line: 676, column: 17)
!1995 = !DILocation(line: 680, column: 25, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !245, line: 680, column: 25)
!1997 = distinct !DILexicalBlock(scope: !1991, file: !245, line: 679, column: 23)
!1998 = !DILocation(line: 680, column: 25, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1996, file: !245, line: 680, column: 25)
!2000 = !DILocation(line: 680, column: 25, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !245, line: 680, column: 25)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !245, line: 680, column: 25)
!2003 = distinct !DILexicalBlock(scope: !1999, file: !245, line: 680, column: 25)
!2004 = !DILocation(line: 680, column: 25, scope: !2002)
!2005 = !DILocation(line: 680, column: 25, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !245, line: 680, column: 25)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !245, line: 680, column: 25)
!2008 = !DILocation(line: 680, column: 25, scope: !2007)
!2009 = !DILocation(line: 680, column: 25, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2011, file: !245, line: 680, column: 25)
!2011 = distinct !DILexicalBlock(scope: !2003, file: !245, line: 680, column: 25)
!2012 = !DILocation(line: 680, column: 25, scope: !2011)
!2013 = !DILocation(line: 680, column: 25, scope: !2003)
!2014 = !DILocation(line: 680, column: 25, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !245, line: 680, column: 25)
!2016 = distinct !DILexicalBlock(scope: !1996, file: !245, line: 680, column: 25)
!2017 = !DILocation(line: 680, column: 25, scope: !2016)
!2018 = !DILocation(line: 681, column: 25, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2020, file: !245, line: 681, column: 25)
!2020 = distinct !DILexicalBlock(scope: !1997, file: !245, line: 681, column: 25)
!2021 = !DILocation(line: 681, column: 25, scope: !2020)
!2022 = !DILocation(line: 682, column: 25, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !245, line: 682, column: 25)
!2024 = distinct !DILexicalBlock(scope: !1997, file: !245, line: 682, column: 25)
!2025 = !DILocation(line: 682, column: 25, scope: !2024)
!2026 = !DILocation(line: 683, column: 38, scope: !1997)
!2027 = !DILocation(line: 683, column: 33, scope: !1997)
!2028 = !DILocation(line: 684, column: 23, scope: !1997)
!2029 = !DILocation(line: 685, column: 30, scope: !1991)
!2030 = !DILocation(line: 687, column: 25, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2032, file: !245, line: 687, column: 25)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !245, line: 687, column: 25)
!2033 = distinct !DILexicalBlock(scope: !2034, file: !245, line: 686, column: 23)
!2034 = distinct !DILexicalBlock(scope: !1991, file: !245, line: 685, column: 30)
!2035 = !DILocation(line: 687, column: 25, scope: !2032)
!2036 = !DILocation(line: 689, column: 23, scope: !2033)
!2037 = !DILocation(line: 690, column: 35, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 690, column: 25)
!2039 = !DILocation(line: 690, column: 30, scope: !2038)
!2040 = !DILocation(line: 690, column: 25, scope: !1992)
!2041 = !DILocation(line: 692, column: 21, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !245, line: 692, column: 21)
!2043 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 692, column: 21)
!2044 = !DILocation(line: 692, column: 21, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !245, line: 692, column: 21)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !245, line: 692, column: 21)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !245, line: 692, column: 21)
!2048 = !DILocation(line: 692, column: 21, scope: !2046)
!2049 = !DILocation(line: 692, column: 21, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !245, line: 692, column: 21)
!2051 = distinct !DILexicalBlock(scope: !2047, file: !245, line: 692, column: 21)
!2052 = !DILocation(line: 692, column: 21, scope: !2051)
!2053 = !DILocation(line: 692, column: 21, scope: !2047)
!2054 = !DILocation(line: 0, scope: !1992)
!2055 = !DILocation(line: 693, column: 21, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2057, file: !245, line: 693, column: 21)
!2057 = distinct !DILexicalBlock(scope: !1992, file: !245, line: 693, column: 21)
!2058 = !DILocation(line: 693, column: 21, scope: !2057)
!2059 = !DILocation(line: 694, column: 25, scope: !1992)
!2060 = !DILocation(line: 676, column: 17, scope: !1993)
!2061 = distinct !{!2061, !2062, !2063}
!2062 = !DILocation(line: 676, column: 17, scope: !1994)
!2063 = !DILocation(line: 695, column: 19, scope: !1994)
!2064 = !DILocation(line: 409, column: 30, scope: !1774)
!2065 = !DILocation(line: 702, column: 34, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 702, column: 11)
!2067 = !DILocation(line: 704, column: 14, scope: !2066)
!2068 = !DILocation(line: 705, column: 14, scope: !2066)
!2069 = !DILocation(line: 705, column: 35, scope: !2066)
!2070 = !DILocation(line: 705, column: 17, scope: !2066)
!2071 = !DILocation(line: 705, column: 47, scope: !2066)
!2072 = !DILocation(line: 705, column: 65, scope: !2066)
!2073 = !DILocation(line: 706, column: 11, scope: !2066)
!2074 = !DILocation(line: 702, column: 11, scope: !1640)
!2075 = !DILocation(line: 395, column: 15, scope: !1638)
!2076 = !DILocation(line: 709, column: 5, scope: !1640)
!2077 = !DILocation(line: 710, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 710, column: 7)
!2079 = !DILocation(line: 710, column: 7, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2078, file: !245, line: 710, column: 7)
!2081 = !DILocation(line: 710, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !245, line: 710, column: 7)
!2083 = distinct !DILexicalBlock(scope: !2084, file: !245, line: 710, column: 7)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !245, line: 710, column: 7)
!2085 = !DILocation(line: 710, column: 7, scope: !2083)
!2086 = !DILocation(line: 710, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !245, line: 710, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2084, file: !245, line: 710, column: 7)
!2089 = !DILocation(line: 710, column: 7, scope: !2088)
!2090 = !DILocation(line: 710, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !245, line: 710, column: 7)
!2092 = distinct !DILexicalBlock(scope: !2084, file: !245, line: 710, column: 7)
!2093 = !DILocation(line: 710, column: 7, scope: !2092)
!2094 = !DILocation(line: 710, column: 7, scope: !2084)
!2095 = !DILocation(line: 710, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2097, file: !245, line: 710, column: 7)
!2097 = distinct !DILexicalBlock(scope: !2078, file: !245, line: 710, column: 7)
!2098 = !DILocation(line: 710, column: 7, scope: !2097)
!2099 = !DILocation(line: 712, column: 5, scope: !1640)
!2100 = !DILocation(line: 713, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !245, line: 713, column: 7)
!2102 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 713, column: 7)
!2103 = !DILocation(line: 417, column: 21, scope: !1640)
!2104 = !DILocation(line: 713, column: 7, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !245, line: 713, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !245, line: 713, column: 7)
!2107 = distinct !DILexicalBlock(scope: !2101, file: !245, line: 713, column: 7)
!2108 = !DILocation(line: 713, column: 7, scope: !2106)
!2109 = !DILocation(line: 713, column: 7, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !245, line: 713, column: 7)
!2111 = distinct !DILexicalBlock(scope: !2107, file: !245, line: 713, column: 7)
!2112 = !DILocation(line: 713, column: 7, scope: !2111)
!2113 = !DILocation(line: 713, column: 7, scope: !2107)
!2114 = !DILocation(line: 714, column: 7, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !245, line: 714, column: 7)
!2116 = distinct !DILexicalBlock(scope: !1640, file: !245, line: 714, column: 7)
!2117 = !DILocation(line: 714, column: 7, scope: !2116)
!2118 = !DILocation(line: 716, column: 11, scope: !1640)
!2119 = !DILocation(line: 718, column: 5, scope: !1641)
!2120 = !DILocation(line: 395, column: 82, scope: !1641)
!2121 = !DILocation(line: 395, column: 3, scope: !1641)
!2122 = distinct !{!2122, !1770, !2123, !502}
!2123 = !DILocation(line: 718, column: 5, scope: !1638)
!2124 = !DILocation(line: 720, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 720, column: 7)
!2126 = !DILocation(line: 720, column: 16, scope: !2125)
!2127 = !DILocation(line: 728, column: 51, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 728, column: 7)
!2129 = !DILocation(line: 731, column: 11, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2128, file: !245, line: 730, column: 5)
!2131 = !DILocation(line: 732, column: 16, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2130, file: !245, line: 731, column: 11)
!2133 = !DILocation(line: 732, column: 9, scope: !2132)
!2134 = !DILocation(line: 736, column: 18, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2132, file: !245, line: 736, column: 16)
!2136 = !DILocation(line: 736, column: 29, scope: !2135)
!2137 = !DILocation(line: 745, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 745, column: 7)
!2139 = !DILocation(line: 745, column: 20, scope: !2138)
!2140 = !DILocation(line: 746, column: 12, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !245, line: 746, column: 5)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !245, line: 746, column: 5)
!2143 = !DILocation(line: 746, column: 5, scope: !2142)
!2144 = !DILocation(line: 747, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !245, line: 747, column: 7)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !245, line: 747, column: 7)
!2147 = !DILocation(line: 747, column: 7, scope: !2146)
!2148 = !DILocation(line: 746, column: 39, scope: !2141)
!2149 = distinct !{!2149, !2143, !2150, !502}
!2150 = !DILocation(line: 747, column: 7, scope: !2142)
!2151 = !DILocation(line: 749, column: 11, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1607, file: !245, line: 749, column: 7)
!2153 = !DILocation(line: 749, column: 7, scope: !1607)
!2154 = !DILocation(line: 750, column: 5, scope: !2152)
!2155 = !DILocation(line: 750, column: 17, scope: !2152)
!2156 = !DILocation(line: 756, column: 21, scope: !1983)
!2157 = !DILocation(line: 760, column: 42, scope: !1607)
!2158 = !DILocation(line: 758, column: 10, scope: !1607)
!2159 = !DILocation(line: 758, column: 3, scope: !1607)
!2160 = !DILocation(line: 762, column: 1, scope: !1607)
!2161 = !DISubprogram(name: "iswprint", scope: !2162, file: !2162, line: 120, type: !1971, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!2162 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2163 = distinct !DISubprogram(name: "quotearg_alloc", scope: !245, file: !245, line: 788, type: !2164, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2166)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!36, !44, !41, !1499}
!2166 = !{!2167, !2168, !2169}
!2167 = !DILocalVariable(name: "arg", arg: 1, scope: !2163, file: !245, line: 788, type: !44)
!2168 = !DILocalVariable(name: "argsize", arg: 2, scope: !2163, file: !245, line: 788, type: !41)
!2169 = !DILocalVariable(name: "o", arg: 3, scope: !2163, file: !245, line: 789, type: !1499)
!2170 = !DILocation(line: 0, scope: !2163)
!2171 = !DILocalVariable(name: "arg", arg: 1, scope: !2172, file: !245, line: 801, type: !44)
!2172 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !245, file: !245, line: 801, type: !2173, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2175)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!36, !44, !41, !374, !1499}
!2175 = !{!2171, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183}
!2176 = !DILocalVariable(name: "argsize", arg: 2, scope: !2172, file: !245, line: 801, type: !41)
!2177 = !DILocalVariable(name: "size", arg: 3, scope: !2172, file: !245, line: 801, type: !374)
!2178 = !DILocalVariable(name: "o", arg: 4, scope: !2172, file: !245, line: 802, type: !1499)
!2179 = !DILocalVariable(name: "p", scope: !2172, file: !245, line: 804, type: !1499)
!2180 = !DILocalVariable(name: "saved_errno", scope: !2172, file: !245, line: 805, type: !39)
!2181 = !DILocalVariable(name: "flags", scope: !2172, file: !245, line: 807, type: !39)
!2182 = !DILocalVariable(name: "bufsize", scope: !2172, file: !245, line: 808, type: !41)
!2183 = !DILocalVariable(name: "buf", scope: !2172, file: !245, line: 812, type: !36)
!2184 = !DILocation(line: 0, scope: !2172, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 791, column: 10, scope: !2163)
!2186 = !DILocation(line: 804, column: 37, scope: !2172, inlinedAt: !2185)
!2187 = !DILocation(line: 805, column: 21, scope: !2172, inlinedAt: !2185)
!2188 = !DILocation(line: 807, column: 18, scope: !2172, inlinedAt: !2185)
!2189 = !DILocation(line: 807, column: 24, scope: !2172, inlinedAt: !2185)
!2190 = !DILocation(line: 808, column: 72, scope: !2172, inlinedAt: !2185)
!2191 = !DILocation(line: 809, column: 53, scope: !2172, inlinedAt: !2185)
!2192 = !DILocation(line: 810, column: 49, scope: !2172, inlinedAt: !2185)
!2193 = !DILocation(line: 811, column: 49, scope: !2172, inlinedAt: !2185)
!2194 = !DILocation(line: 808, column: 20, scope: !2172, inlinedAt: !2185)
!2195 = !DILocation(line: 811, column: 62, scope: !2172, inlinedAt: !2185)
!2196 = !DILocation(line: 812, column: 15, scope: !2172, inlinedAt: !2185)
!2197 = !DILocation(line: 813, column: 60, scope: !2172, inlinedAt: !2185)
!2198 = !DILocation(line: 815, column: 32, scope: !2172, inlinedAt: !2185)
!2199 = !DILocation(line: 815, column: 47, scope: !2172, inlinedAt: !2185)
!2200 = !DILocation(line: 813, column: 3, scope: !2172, inlinedAt: !2185)
!2201 = !DILocation(line: 816, column: 9, scope: !2172, inlinedAt: !2185)
!2202 = !DILocation(line: 791, column: 3, scope: !2163)
!2203 = !DILocation(line: 0, scope: !2172)
!2204 = !DILocation(line: 804, column: 37, scope: !2172)
!2205 = !DILocation(line: 805, column: 21, scope: !2172)
!2206 = !DILocation(line: 807, column: 18, scope: !2172)
!2207 = !DILocation(line: 807, column: 27, scope: !2172)
!2208 = !DILocation(line: 807, column: 24, scope: !2172)
!2209 = !DILocation(line: 808, column: 72, scope: !2172)
!2210 = !DILocation(line: 809, column: 53, scope: !2172)
!2211 = !DILocation(line: 810, column: 49, scope: !2172)
!2212 = !DILocation(line: 811, column: 49, scope: !2172)
!2213 = !DILocation(line: 808, column: 20, scope: !2172)
!2214 = !DILocation(line: 811, column: 62, scope: !2172)
!2215 = !DILocation(line: 812, column: 15, scope: !2172)
!2216 = !DILocation(line: 813, column: 60, scope: !2172)
!2217 = !DILocation(line: 815, column: 32, scope: !2172)
!2218 = !DILocation(line: 815, column: 47, scope: !2172)
!2219 = !DILocation(line: 813, column: 3, scope: !2172)
!2220 = !DILocation(line: 816, column: 9, scope: !2172)
!2221 = !DILocation(line: 817, column: 7, scope: !2172)
!2222 = !DILocation(line: 818, column: 11, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2172, file: !245, line: 817, column: 7)
!2224 = !{!962, !962, i64 0}
!2225 = !DILocation(line: 818, column: 5, scope: !2223)
!2226 = !DILocation(line: 819, column: 3, scope: !2172)
!2227 = distinct !DISubprogram(name: "quotearg_free", scope: !245, file: !245, line: 837, type: !198, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2228)
!2228 = !{!2229, !2230}
!2229 = !DILocalVariable(name: "sv", scope: !2227, file: !245, line: 839, type: !304)
!2230 = !DILocalVariable(name: "i", scope: !2231, file: !245, line: 840, type: !39)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !245, line: 840, column: 3)
!2232 = !DILocation(line: 839, column: 24, scope: !2227)
!2233 = !DILocation(line: 0, scope: !2227)
!2234 = !DILocation(line: 0, scope: !2231)
!2235 = !DILocation(line: 840, column: 21, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2231, file: !245, line: 840, column: 3)
!2237 = !DILocation(line: 840, column: 3, scope: !2231)
!2238 = !DILocation(line: 842, column: 13, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2227, file: !245, line: 842, column: 7)
!2240 = !{!2241, !444, i64 8}
!2241 = !{!"slotvec", !962, i64 0, !444, i64 8}
!2242 = !DILocation(line: 842, column: 17, scope: !2239)
!2243 = !DILocation(line: 842, column: 7, scope: !2227)
!2244 = !DILocation(line: 841, column: 17, scope: !2236)
!2245 = !DILocation(line: 841, column: 5, scope: !2236)
!2246 = !DILocation(line: 840, column: 32, scope: !2236)
!2247 = distinct !{!2247, !2237, !2248, !502}
!2248 = !DILocation(line: 841, column: 20, scope: !2231)
!2249 = !DILocation(line: 844, column: 7, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2239, file: !245, line: 843, column: 5)
!2251 = !DILocation(line: 845, column: 21, scope: !2250)
!2252 = !{!2241, !962, i64 0}
!2253 = !DILocation(line: 846, column: 20, scope: !2250)
!2254 = !DILocation(line: 847, column: 5, scope: !2250)
!2255 = !DILocation(line: 848, column: 10, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2227, file: !245, line: 848, column: 7)
!2257 = !DILocation(line: 848, column: 7, scope: !2227)
!2258 = !DILocation(line: 850, column: 13, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2256, file: !245, line: 849, column: 5)
!2260 = !DILocation(line: 850, column: 7, scope: !2259)
!2261 = !DILocation(line: 851, column: 15, scope: !2259)
!2262 = !DILocation(line: 852, column: 5, scope: !2259)
!2263 = !DILocation(line: 853, column: 10, scope: !2227)
!2264 = !DILocation(line: 854, column: 1, scope: !2227)
!2265 = distinct !DISubprogram(name: "quotearg_n", scope: !245, file: !245, line: 919, type: !643, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2266)
!2266 = !{!2267, !2268}
!2267 = !DILocalVariable(name: "n", arg: 1, scope: !2265, file: !245, line: 919, type: !39)
!2268 = !DILocalVariable(name: "arg", arg: 2, scope: !2265, file: !245, line: 919, type: !44)
!2269 = !DILocation(line: 0, scope: !2265)
!2270 = !DILocation(line: 921, column: 10, scope: !2265)
!2271 = !DILocation(line: 921, column: 3, scope: !2265)
!2272 = distinct !DISubprogram(name: "quotearg_n_options", scope: !245, file: !245, line: 866, type: !2273, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2275)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!36, !39, !44, !41, !1499}
!2275 = !{!2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2286, !2287, !2289, !2290, !2291}
!2276 = !DILocalVariable(name: "n", arg: 1, scope: !2272, file: !245, line: 866, type: !39)
!2277 = !DILocalVariable(name: "arg", arg: 2, scope: !2272, file: !245, line: 866, type: !44)
!2278 = !DILocalVariable(name: "argsize", arg: 3, scope: !2272, file: !245, line: 866, type: !41)
!2279 = !DILocalVariable(name: "options", arg: 4, scope: !2272, file: !245, line: 867, type: !1499)
!2280 = !DILocalVariable(name: "saved_errno", scope: !2272, file: !245, line: 869, type: !39)
!2281 = !DILocalVariable(name: "sv", scope: !2272, file: !245, line: 871, type: !304)
!2282 = !DILocalVariable(name: "nslots_max", scope: !2272, file: !245, line: 873, type: !39)
!2283 = !DILocalVariable(name: "preallocated", scope: !2284, file: !245, line: 879, type: !61)
!2284 = distinct !DILexicalBlock(scope: !2285, file: !245, line: 878, column: 5)
!2285 = distinct !DILexicalBlock(scope: !2272, file: !245, line: 877, column: 7)
!2286 = !DILocalVariable(name: "new_nslots", scope: !2284, file: !245, line: 880, type: !387)
!2287 = !DILocalVariable(name: "size", scope: !2288, file: !245, line: 891, type: !41)
!2288 = distinct !DILexicalBlock(scope: !2272, file: !245, line: 890, column: 3)
!2289 = !DILocalVariable(name: "val", scope: !2288, file: !245, line: 892, type: !36)
!2290 = !DILocalVariable(name: "flags", scope: !2288, file: !245, line: 894, type: !39)
!2291 = !DILocalVariable(name: "qsize", scope: !2288, file: !245, line: 895, type: !41)
!2292 = !DILocation(line: 0, scope: !2272)
!2293 = !DILocation(line: 869, column: 21, scope: !2272)
!2294 = !DILocation(line: 871, column: 24, scope: !2272)
!2295 = !DILocation(line: 874, column: 17, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2272, file: !245, line: 874, column: 7)
!2297 = !DILocation(line: 875, column: 5, scope: !2296)
!2298 = !DILocation(line: 877, column: 7, scope: !2285)
!2299 = !DILocation(line: 877, column: 14, scope: !2285)
!2300 = !DILocation(line: 877, column: 7, scope: !2272)
!2301 = !DILocation(line: 879, column: 31, scope: !2284)
!2302 = !DILocation(line: 0, scope: !2284)
!2303 = !DILocation(line: 880, column: 7, scope: !2284)
!2304 = !DILocation(line: 880, column: 26, scope: !2284)
!2305 = !DILocation(line: 880, column: 13, scope: !2284)
!2306 = !DILocation(line: 882, column: 31, scope: !2284)
!2307 = !DILocation(line: 883, column: 33, scope: !2284)
!2308 = !DILocation(line: 883, column: 42, scope: !2284)
!2309 = !DILocation(line: 883, column: 31, scope: !2284)
!2310 = !DILocation(line: 882, column: 22, scope: !2284)
!2311 = !DILocation(line: 882, column: 15, scope: !2284)
!2312 = !DILocation(line: 884, column: 11, scope: !2284)
!2313 = !DILocation(line: 885, column: 15, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2284, file: !245, line: 884, column: 11)
!2315 = !{i64 0, i64 8, !2224, i64 8, i64 8, !443}
!2316 = !DILocation(line: 885, column: 9, scope: !2314)
!2317 = !DILocation(line: 886, column: 20, scope: !2284)
!2318 = !DILocation(line: 886, column: 18, scope: !2284)
!2319 = !DILocation(line: 886, column: 15, scope: !2284)
!2320 = !DILocation(line: 886, column: 32, scope: !2284)
!2321 = !DILocation(line: 886, column: 43, scope: !2284)
!2322 = !DILocation(line: 886, column: 53, scope: !2284)
!2323 = !DILocation(line: 0, scope: !1710, inlinedAt: !2324)
!2324 = distinct !DILocation(line: 886, column: 7, scope: !2284)
!2325 = !DILocation(line: 59, column: 10, scope: !1710, inlinedAt: !2324)
!2326 = !DILocation(line: 887, column: 16, scope: !2284)
!2327 = !DILocation(line: 887, column: 14, scope: !2284)
!2328 = !DILocation(line: 888, column: 5, scope: !2285)
!2329 = !DILocation(line: 888, column: 5, scope: !2284)
!2330 = !DILocation(line: 891, column: 19, scope: !2288)
!2331 = !DILocation(line: 891, column: 25, scope: !2288)
!2332 = !DILocation(line: 0, scope: !2288)
!2333 = !DILocation(line: 892, column: 23, scope: !2288)
!2334 = !DILocation(line: 894, column: 26, scope: !2288)
!2335 = !DILocation(line: 894, column: 32, scope: !2288)
!2336 = !DILocation(line: 896, column: 55, scope: !2288)
!2337 = !DILocation(line: 897, column: 46, scope: !2288)
!2338 = !DILocation(line: 898, column: 55, scope: !2288)
!2339 = !DILocation(line: 899, column: 55, scope: !2288)
!2340 = !DILocation(line: 895, column: 20, scope: !2288)
!2341 = !DILocation(line: 901, column: 14, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2288, file: !245, line: 901, column: 9)
!2343 = !DILocation(line: 901, column: 9, scope: !2288)
!2344 = !DILocation(line: 903, column: 35, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2342, file: !245, line: 902, column: 7)
!2346 = !DILocation(line: 903, column: 20, scope: !2345)
!2347 = !DILocation(line: 904, column: 17, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2345, file: !245, line: 904, column: 13)
!2349 = !DILocation(line: 904, column: 13, scope: !2345)
!2350 = !DILocation(line: 905, column: 11, scope: !2348)
!2351 = !DILocation(line: 906, column: 27, scope: !2345)
!2352 = !DILocation(line: 906, column: 19, scope: !2345)
!2353 = !DILocation(line: 907, column: 69, scope: !2345)
!2354 = !DILocation(line: 909, column: 44, scope: !2345)
!2355 = !DILocation(line: 910, column: 44, scope: !2345)
!2356 = !DILocation(line: 907, column: 9, scope: !2345)
!2357 = !DILocation(line: 911, column: 7, scope: !2345)
!2358 = !DILocation(line: 913, column: 11, scope: !2288)
!2359 = !DILocation(line: 914, column: 5, scope: !2288)
!2360 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !245, file: !245, line: 925, type: !2361, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2363)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!36, !39, !44, !41}
!2363 = !{!2364, !2365, !2366}
!2364 = !DILocalVariable(name: "n", arg: 1, scope: !2360, file: !245, line: 925, type: !39)
!2365 = !DILocalVariable(name: "arg", arg: 2, scope: !2360, file: !245, line: 925, type: !44)
!2366 = !DILocalVariable(name: "argsize", arg: 3, scope: !2360, file: !245, line: 925, type: !41)
!2367 = !DILocation(line: 0, scope: !2360)
!2368 = !DILocation(line: 927, column: 10, scope: !2360)
!2369 = !DILocation(line: 927, column: 3, scope: !2360)
!2370 = distinct !DISubprogram(name: "quotearg", scope: !245, file: !245, line: 931, type: !647, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2371)
!2371 = !{!2372}
!2372 = !DILocalVariable(name: "arg", arg: 1, scope: !2370, file: !245, line: 931, type: !44)
!2373 = !DILocation(line: 0, scope: !2370)
!2374 = !DILocation(line: 0, scope: !2265, inlinedAt: !2375)
!2375 = distinct !DILocation(line: 933, column: 10, scope: !2370)
!2376 = !DILocation(line: 921, column: 10, scope: !2265, inlinedAt: !2375)
!2377 = !DILocation(line: 933, column: 3, scope: !2370)
!2378 = distinct !DISubprogram(name: "quotearg_mem", scope: !245, file: !245, line: 937, type: !2379, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2381)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{!36, !44, !41}
!2381 = !{!2382, !2383}
!2382 = !DILocalVariable(name: "arg", arg: 1, scope: !2378, file: !245, line: 937, type: !44)
!2383 = !DILocalVariable(name: "argsize", arg: 2, scope: !2378, file: !245, line: 937, type: !41)
!2384 = !DILocation(line: 0, scope: !2378)
!2385 = !DILocation(line: 0, scope: !2360, inlinedAt: !2386)
!2386 = distinct !DILocation(line: 939, column: 10, scope: !2378)
!2387 = !DILocation(line: 927, column: 10, scope: !2360, inlinedAt: !2386)
!2388 = !DILocation(line: 939, column: 3, scope: !2378)
!2389 = distinct !DISubprogram(name: "quotearg_n_style", scope: !245, file: !245, line: 943, type: !2390, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2392)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!36, !39, !5, !44}
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DILocalVariable(name: "n", arg: 1, scope: !2389, file: !245, line: 943, type: !39)
!2394 = !DILocalVariable(name: "s", arg: 2, scope: !2389, file: !245, line: 943, type: !5)
!2395 = !DILocalVariable(name: "arg", arg: 3, scope: !2389, file: !245, line: 943, type: !44)
!2396 = !DILocalVariable(name: "o", scope: !2389, file: !245, line: 945, type: !1500)
!2397 = !DILocation(line: 0, scope: !2389)
!2398 = !DILocation(line: 945, column: 3, scope: !2389)
!2399 = !DILocation(line: 945, column: 32, scope: !2389)
!2400 = !{!2401}
!2401 = distinct !{!2401, !2402, !"quoting_options_from_style: argument 0"}
!2402 = distinct !{!2402, !"quoting_options_from_style"}
!2403 = !DILocation(line: 945, column: 36, scope: !2389)
!2404 = !DILocalVariable(name: "style", arg: 1, scope: !2405, file: !245, line: 183, type: !5)
!2405 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !245, file: !245, line: 183, type: !2406, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!262, !5}
!2408 = !{!2404, !2409}
!2409 = !DILocalVariable(name: "o", scope: !2405, file: !245, line: 185, type: !262)
!2410 = !DILocation(line: 0, scope: !2405, inlinedAt: !2411)
!2411 = distinct !DILocation(line: 945, column: 36, scope: !2389)
!2412 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2411)
!2413 = !DILocation(line: 186, column: 13, scope: !2414, inlinedAt: !2411)
!2414 = distinct !DILexicalBlock(scope: !2405, file: !245, line: 186, column: 7)
!2415 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2411)
!2416 = !DILocation(line: 187, column: 5, scope: !2414, inlinedAt: !2411)
!2417 = !DILocation(line: 188, column: 5, scope: !2405, inlinedAt: !2411)
!2418 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2411)
!2419 = !DILocation(line: 946, column: 10, scope: !2389)
!2420 = !DILocation(line: 947, column: 1, scope: !2389)
!2421 = !DILocation(line: 946, column: 3, scope: !2389)
!2422 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !245, file: !245, line: 950, type: !2423, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!36, !39, !5, !44, !41}
!2425 = !{!2426, !2427, !2428, !2429, !2430}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !245, line: 950, type: !39)
!2427 = !DILocalVariable(name: "s", arg: 2, scope: !2422, file: !245, line: 950, type: !5)
!2428 = !DILocalVariable(name: "arg", arg: 3, scope: !2422, file: !245, line: 951, type: !44)
!2429 = !DILocalVariable(name: "argsize", arg: 4, scope: !2422, file: !245, line: 951, type: !41)
!2430 = !DILocalVariable(name: "o", scope: !2422, file: !245, line: 953, type: !1500)
!2431 = !DILocation(line: 0, scope: !2422)
!2432 = !DILocation(line: 953, column: 3, scope: !2422)
!2433 = !DILocation(line: 953, column: 32, scope: !2422)
!2434 = !{!2435}
!2435 = distinct !{!2435, !2436, !"quoting_options_from_style: argument 0"}
!2436 = distinct !{!2436, !"quoting_options_from_style"}
!2437 = !DILocation(line: 953, column: 36, scope: !2422)
!2438 = !DILocation(line: 0, scope: !2405, inlinedAt: !2439)
!2439 = distinct !DILocation(line: 953, column: 36, scope: !2422)
!2440 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2439)
!2441 = !DILocation(line: 186, column: 13, scope: !2414, inlinedAt: !2439)
!2442 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2439)
!2443 = !DILocation(line: 187, column: 5, scope: !2414, inlinedAt: !2439)
!2444 = !DILocation(line: 188, column: 5, scope: !2405, inlinedAt: !2439)
!2445 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2439)
!2446 = !DILocation(line: 954, column: 10, scope: !2422)
!2447 = !DILocation(line: 955, column: 1, scope: !2422)
!2448 = !DILocation(line: 954, column: 3, scope: !2422)
!2449 = distinct !DISubprogram(name: "quotearg_style", scope: !245, file: !245, line: 958, type: !2450, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2452)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!36, !5, !44}
!2452 = !{!2453, !2454}
!2453 = !DILocalVariable(name: "s", arg: 1, scope: !2449, file: !245, line: 958, type: !5)
!2454 = !DILocalVariable(name: "arg", arg: 2, scope: !2449, file: !245, line: 958, type: !44)
!2455 = !DILocation(line: 0, scope: !2449)
!2456 = !DILocation(line: 0, scope: !2389, inlinedAt: !2457)
!2457 = distinct !DILocation(line: 960, column: 10, scope: !2449)
!2458 = !DILocation(line: 945, column: 3, scope: !2389, inlinedAt: !2457)
!2459 = !DILocation(line: 945, column: 32, scope: !2389, inlinedAt: !2457)
!2460 = !{!2461}
!2461 = distinct !{!2461, !2462, !"quoting_options_from_style: argument 0"}
!2462 = distinct !{!2462, !"quoting_options_from_style"}
!2463 = !DILocation(line: 945, column: 36, scope: !2389, inlinedAt: !2457)
!2464 = !DILocation(line: 0, scope: !2405, inlinedAt: !2465)
!2465 = distinct !DILocation(line: 945, column: 36, scope: !2389, inlinedAt: !2457)
!2466 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2465)
!2467 = !DILocation(line: 186, column: 13, scope: !2414, inlinedAt: !2465)
!2468 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2465)
!2469 = !DILocation(line: 187, column: 5, scope: !2414, inlinedAt: !2465)
!2470 = !DILocation(line: 188, column: 5, scope: !2405, inlinedAt: !2465)
!2471 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2465)
!2472 = !DILocation(line: 946, column: 10, scope: !2389, inlinedAt: !2457)
!2473 = !DILocation(line: 947, column: 1, scope: !2389, inlinedAt: !2457)
!2474 = !DILocation(line: 960, column: 3, scope: !2449)
!2475 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !245, file: !245, line: 964, type: !2476, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2478)
!2476 = !DISubroutineType(types: !2477)
!2477 = !{!36, !5, !44, !41}
!2478 = !{!2479, !2480, !2481}
!2479 = !DILocalVariable(name: "s", arg: 1, scope: !2475, file: !245, line: 964, type: !5)
!2480 = !DILocalVariable(name: "arg", arg: 2, scope: !2475, file: !245, line: 964, type: !44)
!2481 = !DILocalVariable(name: "argsize", arg: 3, scope: !2475, file: !245, line: 964, type: !41)
!2482 = !DILocation(line: 0, scope: !2475)
!2483 = !DILocation(line: 0, scope: !2422, inlinedAt: !2484)
!2484 = distinct !DILocation(line: 966, column: 10, scope: !2475)
!2485 = !DILocation(line: 953, column: 3, scope: !2422, inlinedAt: !2484)
!2486 = !DILocation(line: 953, column: 32, scope: !2422, inlinedAt: !2484)
!2487 = !{!2488}
!2488 = distinct !{!2488, !2489, !"quoting_options_from_style: argument 0"}
!2489 = distinct !{!2489, !"quoting_options_from_style"}
!2490 = !DILocation(line: 953, column: 36, scope: !2422, inlinedAt: !2484)
!2491 = !DILocation(line: 0, scope: !2405, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 953, column: 36, scope: !2422, inlinedAt: !2484)
!2493 = !DILocation(line: 185, column: 26, scope: !2405, inlinedAt: !2492)
!2494 = !DILocation(line: 186, column: 13, scope: !2414, inlinedAt: !2492)
!2495 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2492)
!2496 = !DILocation(line: 187, column: 5, scope: !2414, inlinedAt: !2492)
!2497 = !DILocation(line: 188, column: 5, scope: !2405, inlinedAt: !2492)
!2498 = !DILocation(line: 188, column: 11, scope: !2405, inlinedAt: !2492)
!2499 = !DILocation(line: 954, column: 10, scope: !2422, inlinedAt: !2484)
!2500 = !DILocation(line: 955, column: 1, scope: !2422, inlinedAt: !2484)
!2501 = !DILocation(line: 966, column: 3, scope: !2475)
!2502 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !245, file: !245, line: 970, type: !2503, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2505)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!36, !44, !41, !37}
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DILocalVariable(name: "arg", arg: 1, scope: !2502, file: !245, line: 970, type: !44)
!2507 = !DILocalVariable(name: "argsize", arg: 2, scope: !2502, file: !245, line: 970, type: !41)
!2508 = !DILocalVariable(name: "ch", arg: 3, scope: !2502, file: !245, line: 970, type: !37)
!2509 = !DILocalVariable(name: "options", scope: !2502, file: !245, line: 972, type: !262)
!2510 = !DILocation(line: 0, scope: !2502)
!2511 = !DILocation(line: 972, column: 3, scope: !2502)
!2512 = !DILocation(line: 972, column: 26, scope: !2502)
!2513 = !DILocation(line: 973, column: 13, scope: !2502)
!2514 = !{i64 0, i64 4, !544, i64 4, i64 4, !535, i64 8, i64 32, !544, i64 40, i64 8, !443, i64 48, i64 8, !443}
!2515 = !DILocation(line: 0, scope: !1520, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 974, column: 3, scope: !2502)
!2517 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2516)
!2518 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2516)
!2519 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2516)
!2520 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2516)
!2521 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2516)
!2522 = !DILocation(line: 149, column: 34, scope: !1520, inlinedAt: !2516)
!2523 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2516)
!2524 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2516)
!2525 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2516)
!2526 = !DILocation(line: 975, column: 10, scope: !2502)
!2527 = !DILocation(line: 976, column: 1, scope: !2502)
!2528 = !DILocation(line: 975, column: 3, scope: !2502)
!2529 = distinct !DISubprogram(name: "quotearg_char", scope: !245, file: !245, line: 979, type: !2530, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2532)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!36, !44, !37}
!2532 = !{!2533, !2534}
!2533 = !DILocalVariable(name: "arg", arg: 1, scope: !2529, file: !245, line: 979, type: !44)
!2534 = !DILocalVariable(name: "ch", arg: 2, scope: !2529, file: !245, line: 979, type: !37)
!2535 = !DILocation(line: 0, scope: !2529)
!2536 = !DILocation(line: 0, scope: !2502, inlinedAt: !2537)
!2537 = distinct !DILocation(line: 981, column: 10, scope: !2529)
!2538 = !DILocation(line: 972, column: 3, scope: !2502, inlinedAt: !2537)
!2539 = !DILocation(line: 972, column: 26, scope: !2502, inlinedAt: !2537)
!2540 = !DILocation(line: 973, column: 13, scope: !2502, inlinedAt: !2537)
!2541 = !DILocation(line: 0, scope: !1520, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 974, column: 3, scope: !2502, inlinedAt: !2537)
!2543 = !DILocation(line: 147, column: 62, scope: !1520, inlinedAt: !2542)
!2544 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2542)
!2545 = !DILocation(line: 148, column: 15, scope: !1520, inlinedAt: !2542)
!2546 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2542)
!2547 = !DILocation(line: 149, column: 24, scope: !1520, inlinedAt: !2542)
!2548 = !DILocation(line: 149, column: 34, scope: !1520, inlinedAt: !2542)
!2549 = !DILocation(line: 150, column: 19, scope: !1520, inlinedAt: !2542)
!2550 = !DILocation(line: 150, column: 24, scope: !1520, inlinedAt: !2542)
!2551 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2542)
!2552 = !DILocation(line: 975, column: 10, scope: !2502, inlinedAt: !2537)
!2553 = !DILocation(line: 976, column: 1, scope: !2502, inlinedAt: !2537)
!2554 = !DILocation(line: 981, column: 3, scope: !2529)
!2555 = distinct !DISubprogram(name: "quotearg_colon", scope: !245, file: !245, line: 985, type: !647, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2556)
!2556 = !{!2557}
!2557 = !DILocalVariable(name: "arg", arg: 1, scope: !2555, file: !245, line: 985, type: !44)
!2558 = !DILocation(line: 0, scope: !2555)
!2559 = !DILocation(line: 0, scope: !2529, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 987, column: 10, scope: !2555)
!2561 = !DILocation(line: 0, scope: !2502, inlinedAt: !2562)
!2562 = distinct !DILocation(line: 981, column: 10, scope: !2529, inlinedAt: !2560)
!2563 = !DILocation(line: 972, column: 3, scope: !2502, inlinedAt: !2562)
!2564 = !DILocation(line: 972, column: 26, scope: !2502, inlinedAt: !2562)
!2565 = !DILocation(line: 973, column: 13, scope: !2502, inlinedAt: !2562)
!2566 = !DILocation(line: 0, scope: !1520, inlinedAt: !2567)
!2567 = distinct !DILocation(line: 974, column: 3, scope: !2502, inlinedAt: !2562)
!2568 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2567)
!2569 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2567)
!2570 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2567)
!2571 = !DILocation(line: 975, column: 10, scope: !2502, inlinedAt: !2562)
!2572 = !DILocation(line: 976, column: 1, scope: !2502, inlinedAt: !2562)
!2573 = !DILocation(line: 987, column: 3, scope: !2555)
!2574 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !245, file: !245, line: 991, type: !2379, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2575)
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "arg", arg: 1, scope: !2574, file: !245, line: 991, type: !44)
!2577 = !DILocalVariable(name: "argsize", arg: 2, scope: !2574, file: !245, line: 991, type: !41)
!2578 = !DILocation(line: 0, scope: !2574)
!2579 = !DILocation(line: 0, scope: !2502, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 993, column: 10, scope: !2574)
!2581 = !DILocation(line: 972, column: 3, scope: !2502, inlinedAt: !2580)
!2582 = !DILocation(line: 972, column: 26, scope: !2502, inlinedAt: !2580)
!2583 = !DILocation(line: 973, column: 13, scope: !2502, inlinedAt: !2580)
!2584 = !DILocation(line: 0, scope: !1520, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 974, column: 3, scope: !2502, inlinedAt: !2580)
!2586 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2585)
!2587 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2585)
!2588 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2585)
!2589 = !DILocation(line: 975, column: 10, scope: !2502, inlinedAt: !2580)
!2590 = !DILocation(line: 976, column: 1, scope: !2502, inlinedAt: !2580)
!2591 = !DILocation(line: 993, column: 3, scope: !2574)
!2592 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !245, file: !245, line: 997, type: !2390, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2593)
!2593 = !{!2594, !2595, !2596, !2597}
!2594 = !DILocalVariable(name: "n", arg: 1, scope: !2592, file: !245, line: 997, type: !39)
!2595 = !DILocalVariable(name: "s", arg: 2, scope: !2592, file: !245, line: 997, type: !5)
!2596 = !DILocalVariable(name: "arg", arg: 3, scope: !2592, file: !245, line: 997, type: !44)
!2597 = !DILocalVariable(name: "options", scope: !2592, file: !245, line: 999, type: !262)
!2598 = !DILocation(line: 0, scope: !2592)
!2599 = !DILocation(line: 999, column: 3, scope: !2592)
!2600 = !DILocation(line: 999, column: 26, scope: !2592)
!2601 = !DILocation(line: 0, scope: !2405, inlinedAt: !2602)
!2602 = distinct !DILocation(line: 1000, column: 13, scope: !2592)
!2603 = !DILocation(line: 186, column: 13, scope: !2414, inlinedAt: !2602)
!2604 = !DILocation(line: 186, column: 7, scope: !2405, inlinedAt: !2602)
!2605 = !DILocation(line: 187, column: 5, scope: !2414, inlinedAt: !2602)
!2606 = !{!2607}
!2607 = distinct !{!2607, !2608, !"quoting_options_from_style: argument 0"}
!2608 = distinct !{!2608, !"quoting_options_from_style"}
!2609 = !DILocation(line: 1000, column: 13, scope: !2592)
!2610 = !DILocation(line: 0, scope: !1520, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1001, column: 3, scope: !2592)
!2612 = !DILocation(line: 147, column: 57, scope: !1520, inlinedAt: !2611)
!2613 = !DILocation(line: 149, column: 21, scope: !1520, inlinedAt: !2611)
!2614 = !DILocation(line: 150, column: 6, scope: !1520, inlinedAt: !2611)
!2615 = !DILocation(line: 1002, column: 10, scope: !2592)
!2616 = !DILocation(line: 1003, column: 1, scope: !2592)
!2617 = !DILocation(line: 1002, column: 3, scope: !2592)
!2618 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !245, file: !245, line: 1006, type: !2619, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!36, !39, !44, !44, !44}
!2621 = !{!2622, !2623, !2624, !2625}
!2622 = !DILocalVariable(name: "n", arg: 1, scope: !2618, file: !245, line: 1006, type: !39)
!2623 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2618, file: !245, line: 1006, type: !44)
!2624 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2618, file: !245, line: 1007, type: !44)
!2625 = !DILocalVariable(name: "arg", arg: 4, scope: !2618, file: !245, line: 1007, type: !44)
!2626 = !DILocation(line: 0, scope: !2618)
!2627 = !DILocalVariable(name: "n", arg: 1, scope: !2628, file: !245, line: 1014, type: !39)
!2628 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !245, file: !245, line: 1014, type: !2629, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2631)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!36, !39, !44, !44, !44, !41}
!2631 = !{!2627, !2632, !2633, !2634, !2635, !2636}
!2632 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2628, file: !245, line: 1014, type: !44)
!2633 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2628, file: !245, line: 1015, type: !44)
!2634 = !DILocalVariable(name: "arg", arg: 4, scope: !2628, file: !245, line: 1016, type: !44)
!2635 = !DILocalVariable(name: "argsize", arg: 5, scope: !2628, file: !245, line: 1016, type: !41)
!2636 = !DILocalVariable(name: "o", scope: !2628, file: !245, line: 1018, type: !262)
!2637 = !DILocation(line: 0, scope: !2628, inlinedAt: !2638)
!2638 = distinct !DILocation(line: 1009, column: 10, scope: !2618)
!2639 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2638)
!2640 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2638)
!2641 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2638)
!2642 = !DILocation(line: 0, scope: !1560, inlinedAt: !2643)
!2643 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2638)
!2644 = !DILocation(line: 174, column: 6, scope: !1560, inlinedAt: !2643)
!2645 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2643)
!2646 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2643)
!2647 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2643)
!2648 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2643)
!2649 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2643)
!2650 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2643)
!2651 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2643)
!2652 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2643)
!2653 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2638)
!2654 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2638)
!2655 = !DILocation(line: 1009, column: 3, scope: !2618)
!2656 = !DILocation(line: 0, scope: !2628)
!2657 = !DILocation(line: 1018, column: 3, scope: !2628)
!2658 = !DILocation(line: 1018, column: 26, scope: !2628)
!2659 = !DILocation(line: 1018, column: 30, scope: !2628)
!2660 = !DILocation(line: 0, scope: !1560, inlinedAt: !2661)
!2661 = distinct !DILocation(line: 1019, column: 3, scope: !2628)
!2662 = !DILocation(line: 174, column: 6, scope: !1560, inlinedAt: !2661)
!2663 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2661)
!2664 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2661)
!2665 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2661)
!2666 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2661)
!2667 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2661)
!2668 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2661)
!2669 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2661)
!2670 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2661)
!2671 = !DILocation(line: 1020, column: 10, scope: !2628)
!2672 = !DILocation(line: 1021, column: 1, scope: !2628)
!2673 = !DILocation(line: 1020, column: 3, scope: !2628)
!2674 = distinct !DISubprogram(name: "quotearg_custom", scope: !245, file: !245, line: 1024, type: !2675, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!36, !44, !44, !44}
!2677 = !{!2678, !2679, !2680}
!2678 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2674, file: !245, line: 1024, type: !44)
!2679 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2674, file: !245, line: 1024, type: !44)
!2680 = !DILocalVariable(name: "arg", arg: 3, scope: !2674, file: !245, line: 1025, type: !44)
!2681 = !DILocation(line: 0, scope: !2674)
!2682 = !DILocation(line: 0, scope: !2618, inlinedAt: !2683)
!2683 = distinct !DILocation(line: 1027, column: 10, scope: !2674)
!2684 = !DILocation(line: 0, scope: !2628, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1009, column: 10, scope: !2618, inlinedAt: !2683)
!2686 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2685)
!2687 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2685)
!2688 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2685)
!2689 = !DILocation(line: 0, scope: !1560, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2685)
!2691 = !DILocation(line: 174, column: 6, scope: !1560, inlinedAt: !2690)
!2692 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2690)
!2693 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2690)
!2694 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2690)
!2695 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2690)
!2696 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2690)
!2697 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2690)
!2698 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2690)
!2699 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2690)
!2700 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2685)
!2701 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2685)
!2702 = !DILocation(line: 1027, column: 3, scope: !2674)
!2703 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !245, file: !245, line: 1031, type: !2704, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2706)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!36, !44, !44, !44, !41}
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2703, file: !245, line: 1031, type: !44)
!2708 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2703, file: !245, line: 1031, type: !44)
!2709 = !DILocalVariable(name: "arg", arg: 3, scope: !2703, file: !245, line: 1032, type: !44)
!2710 = !DILocalVariable(name: "argsize", arg: 4, scope: !2703, file: !245, line: 1032, type: !41)
!2711 = !DILocation(line: 0, scope: !2703)
!2712 = !DILocation(line: 0, scope: !2628, inlinedAt: !2713)
!2713 = distinct !DILocation(line: 1034, column: 10, scope: !2703)
!2714 = !DILocation(line: 1018, column: 3, scope: !2628, inlinedAt: !2713)
!2715 = !DILocation(line: 1018, column: 26, scope: !2628, inlinedAt: !2713)
!2716 = !DILocation(line: 1018, column: 30, scope: !2628, inlinedAt: !2713)
!2717 = !DILocation(line: 0, scope: !1560, inlinedAt: !2718)
!2718 = distinct !DILocation(line: 1019, column: 3, scope: !2628, inlinedAt: !2713)
!2719 = !DILocation(line: 174, column: 6, scope: !1560, inlinedAt: !2718)
!2720 = !DILocation(line: 174, column: 12, scope: !1560, inlinedAt: !2718)
!2721 = !DILocation(line: 175, column: 8, scope: !1574, inlinedAt: !2718)
!2722 = !DILocation(line: 175, column: 19, scope: !1574, inlinedAt: !2718)
!2723 = !DILocation(line: 176, column: 5, scope: !1574, inlinedAt: !2718)
!2724 = !DILocation(line: 177, column: 6, scope: !1560, inlinedAt: !2718)
!2725 = !DILocation(line: 177, column: 17, scope: !1560, inlinedAt: !2718)
!2726 = !DILocation(line: 178, column: 6, scope: !1560, inlinedAt: !2718)
!2727 = !DILocation(line: 178, column: 18, scope: !1560, inlinedAt: !2718)
!2728 = !DILocation(line: 1020, column: 10, scope: !2628, inlinedAt: !2713)
!2729 = !DILocation(line: 1021, column: 1, scope: !2628, inlinedAt: !2713)
!2730 = !DILocation(line: 1034, column: 3, scope: !2703)
!2731 = distinct !DISubprogram(name: "quote_n_mem", scope: !245, file: !245, line: 1049, type: !2732, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2734)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!44, !39, !44, !41}
!2734 = !{!2735, !2736, !2737}
!2735 = !DILocalVariable(name: "n", arg: 1, scope: !2731, file: !245, line: 1049, type: !39)
!2736 = !DILocalVariable(name: "arg", arg: 2, scope: !2731, file: !245, line: 1049, type: !44)
!2737 = !DILocalVariable(name: "argsize", arg: 3, scope: !2731, file: !245, line: 1049, type: !41)
!2738 = !DILocation(line: 0, scope: !2731)
!2739 = !DILocation(line: 1051, column: 10, scope: !2731)
!2740 = !DILocation(line: 1051, column: 3, scope: !2731)
!2741 = distinct !DISubprogram(name: "quote_mem", scope: !245, file: !245, line: 1055, type: !2742, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2744)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!44, !44, !41}
!2744 = !{!2745, !2746}
!2745 = !DILocalVariable(name: "arg", arg: 1, scope: !2741, file: !245, line: 1055, type: !44)
!2746 = !DILocalVariable(name: "argsize", arg: 2, scope: !2741, file: !245, line: 1055, type: !41)
!2747 = !DILocation(line: 0, scope: !2741)
!2748 = !DILocation(line: 0, scope: !2731, inlinedAt: !2749)
!2749 = distinct !DILocation(line: 1057, column: 10, scope: !2741)
!2750 = !DILocation(line: 1051, column: 10, scope: !2731, inlinedAt: !2749)
!2751 = !DILocation(line: 1057, column: 3, scope: !2741)
!2752 = distinct !DISubprogram(name: "quote_n", scope: !245, file: !245, line: 1061, type: !2753, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2755)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!44, !39, !44}
!2755 = !{!2756, !2757}
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !245, line: 1061, type: !39)
!2757 = !DILocalVariable(name: "arg", arg: 2, scope: !2752, file: !245, line: 1061, type: !44)
!2758 = !DILocation(line: 0, scope: !2752)
!2759 = !DILocation(line: 0, scope: !2731, inlinedAt: !2760)
!2760 = distinct !DILocation(line: 1063, column: 10, scope: !2752)
!2761 = !DILocation(line: 1051, column: 10, scope: !2731, inlinedAt: !2760)
!2762 = !DILocation(line: 1063, column: 3, scope: !2752)
!2763 = distinct !DISubprogram(name: "quote", scope: !245, file: !245, line: 1067, type: !2764, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2766)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!44, !44}
!2766 = !{!2767}
!2767 = !DILocalVariable(name: "arg", arg: 1, scope: !2763, file: !245, line: 1067, type: !44)
!2768 = !DILocation(line: 0, scope: !2763)
!2769 = !DILocation(line: 0, scope: !2752, inlinedAt: !2770)
!2770 = distinct !DILocation(line: 1069, column: 10, scope: !2763)
!2771 = !DILocation(line: 0, scope: !2731, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1063, column: 10, scope: !2752, inlinedAt: !2770)
!2773 = !DILocation(line: 1051, column: 10, scope: !2731, inlinedAt: !2772)
!2774 = !DILocation(line: 1069, column: 3, scope: !2763)
!2775 = distinct !DISubprogram(name: "version_etc_arn", scope: !361, file: !361, line: 61, type: !2776, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2813)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2778, !44, !44, !44, !2812, !41}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !2781)
!2781 = !{!2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2780, file: !78, line: 51, baseType: !39, size: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2780, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2780, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2780, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2780, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2780, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2780, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2780, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2780, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2780, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2780, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2780, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2780, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2780, file: !78, line: 70, baseType: !2796, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2780, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2780, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2780, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2780, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2780, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2780, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2780, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2780, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2780, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2780, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2780, file: !78, line: 93, baseType: !2796, size: 64, offset: 1344)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2780, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2780, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2780, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2780, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!2813 = !{!2814, !2815, !2816, !2817, !2818, !2819}
!2814 = !DILocalVariable(name: "stream", arg: 1, scope: !2775, file: !361, line: 61, type: !2778)
!2815 = !DILocalVariable(name: "command_name", arg: 2, scope: !2775, file: !361, line: 62, type: !44)
!2816 = !DILocalVariable(name: "package", arg: 3, scope: !2775, file: !361, line: 62, type: !44)
!2817 = !DILocalVariable(name: "version", arg: 4, scope: !2775, file: !361, line: 63, type: !44)
!2818 = !DILocalVariable(name: "authors", arg: 5, scope: !2775, file: !361, line: 64, type: !2812)
!2819 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2775, file: !361, line: 64, type: !41)
!2820 = !DILocation(line: 0, scope: !2775)
!2821 = !DILocation(line: 66, column: 7, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2775, file: !361, line: 66, column: 7)
!2823 = !DILocation(line: 66, column: 7, scope: !2775)
!2824 = !DILocation(line: 67, column: 5, scope: !2822)
!2825 = !DILocation(line: 69, column: 5, scope: !2822)
!2826 = !DILocation(line: 83, column: 3, scope: !2775)
!2827 = !DILocation(line: 85, column: 3, scope: !2775)
!2828 = !DILocation(line: 88, column: 3, scope: !2775)
!2829 = !DILocation(line: 95, column: 3, scope: !2775)
!2830 = !DILocation(line: 97, column: 3, scope: !2775)
!2831 = !DILocation(line: 105, column: 7, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2775, file: !361, line: 98, column: 5)
!2833 = !DILocation(line: 106, column: 7, scope: !2832)
!2834 = !DILocation(line: 109, column: 7, scope: !2832)
!2835 = !DILocation(line: 110, column: 7, scope: !2832)
!2836 = !DILocation(line: 113, column: 7, scope: !2832)
!2837 = !DILocation(line: 115, column: 7, scope: !2832)
!2838 = !DILocation(line: 120, column: 7, scope: !2832)
!2839 = !DILocation(line: 122, column: 7, scope: !2832)
!2840 = !DILocation(line: 127, column: 7, scope: !2832)
!2841 = !DILocation(line: 129, column: 7, scope: !2832)
!2842 = !DILocation(line: 134, column: 7, scope: !2832)
!2843 = !DILocation(line: 137, column: 7, scope: !2832)
!2844 = !DILocation(line: 142, column: 7, scope: !2832)
!2845 = !DILocation(line: 145, column: 7, scope: !2832)
!2846 = !DILocation(line: 150, column: 7, scope: !2832)
!2847 = !DILocation(line: 154, column: 7, scope: !2832)
!2848 = !DILocation(line: 159, column: 7, scope: !2832)
!2849 = !DILocation(line: 163, column: 7, scope: !2832)
!2850 = !DILocation(line: 170, column: 7, scope: !2832)
!2851 = !DILocation(line: 174, column: 7, scope: !2832)
!2852 = !DILocation(line: 176, column: 1, scope: !2775)
!2853 = distinct !DISubprogram(name: "version_etc_ar", scope: !361, file: !361, line: 183, type: !2854, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2778, !44, !44, !44, !2812}
!2856 = !{!2857, !2858, !2859, !2860, !2861, !2862}
!2857 = !DILocalVariable(name: "stream", arg: 1, scope: !2853, file: !361, line: 183, type: !2778)
!2858 = !DILocalVariable(name: "command_name", arg: 2, scope: !2853, file: !361, line: 184, type: !44)
!2859 = !DILocalVariable(name: "package", arg: 3, scope: !2853, file: !361, line: 184, type: !44)
!2860 = !DILocalVariable(name: "version", arg: 4, scope: !2853, file: !361, line: 185, type: !44)
!2861 = !DILocalVariable(name: "authors", arg: 5, scope: !2853, file: !361, line: 185, type: !2812)
!2862 = !DILocalVariable(name: "n_authors", scope: !2853, file: !361, line: 187, type: !41)
!2863 = !DILocation(line: 0, scope: !2853)
!2864 = !DILocation(line: 189, column: 8, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2853, file: !361, line: 189, column: 3)
!2866 = !DILocation(line: 0, scope: !2865)
!2867 = !DILocation(line: 189, column: 23, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2865, file: !361, line: 189, column: 3)
!2869 = !DILocation(line: 189, column: 3, scope: !2865)
!2870 = !DILocation(line: 189, column: 52, scope: !2868)
!2871 = distinct !{!2871, !2869, !2872, !502}
!2872 = !DILocation(line: 190, column: 5, scope: !2865)
!2873 = !DILocation(line: 191, column: 3, scope: !2853)
!2874 = !DILocation(line: 192, column: 1, scope: !2853)
!2875 = distinct !DISubprogram(name: "version_etc_va", scope: !361, file: !361, line: 199, type: !2876, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2889)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !2778, !44, !44, !44, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !171, line: 52, baseType: !2879)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !173, line: 32, baseType: !2880)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2881, baseType: !2882)
!2881 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !177, size: 256, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2887, !2888}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !2882, file: !2881, line: 192, baseType: !38, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !2882, file: !2881, line: 192, baseType: !38, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !2882, file: !2881, line: 192, baseType: !38, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !2882, file: !2881, line: 192, baseType: !39, size: 32, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !2882, file: !2881, line: 192, baseType: !39, size: 32, offset: 224)
!2889 = !{!2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2890 = !DILocalVariable(name: "stream", arg: 1, scope: !2875, file: !361, line: 199, type: !2778)
!2891 = !DILocalVariable(name: "command_name", arg: 2, scope: !2875, file: !361, line: 200, type: !44)
!2892 = !DILocalVariable(name: "package", arg: 3, scope: !2875, file: !361, line: 200, type: !44)
!2893 = !DILocalVariable(name: "version", arg: 4, scope: !2875, file: !361, line: 201, type: !44)
!2894 = !DILocalVariable(name: "authors", arg: 5, scope: !2875, file: !361, line: 201, type: !2878)
!2895 = !DILocalVariable(name: "n_authors", scope: !2875, file: !361, line: 203, type: !41)
!2896 = !DILocalVariable(name: "authtab", scope: !2875, file: !361, line: 204, type: !2897)
!2897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 640, elements: !258)
!2898 = !DILocation(line: 0, scope: !2875)
!2899 = !DILocation(line: 201, column: 46, scope: !2875)
!2900 = !DILocation(line: 204, column: 3, scope: !2875)
!2901 = !DILocation(line: 204, column: 15, scope: !2875)
!2902 = !DILocation(line: 208, column: 35, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !361, line: 206, column: 3)
!2904 = distinct !DILexicalBlock(scope: !2875, file: !361, line: 206, column: 3)
!2905 = !DILocation(line: 208, column: 14, scope: !2903)
!2906 = !DILocation(line: 208, column: 33, scope: !2903)
!2907 = !DILocation(line: 208, column: 67, scope: !2903)
!2908 = !DILocation(line: 206, column: 3, scope: !2904)
!2909 = !DILocation(line: 0, scope: !2904)
!2910 = !DILocation(line: 211, column: 3, scope: !2875)
!2911 = !DILocation(line: 213, column: 1, scope: !2875)
!2912 = distinct !DISubprogram(name: "version_etc", scope: !361, file: !361, line: 230, type: !2913, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !2915)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{null, !2778, !44, !44, !44, null}
!2915 = !{!2916, !2917, !2918, !2919, !2920}
!2916 = !DILocalVariable(name: "stream", arg: 1, scope: !2912, file: !361, line: 230, type: !2778)
!2917 = !DILocalVariable(name: "command_name", arg: 2, scope: !2912, file: !361, line: 231, type: !44)
!2918 = !DILocalVariable(name: "package", arg: 3, scope: !2912, file: !361, line: 231, type: !44)
!2919 = !DILocalVariable(name: "version", arg: 4, scope: !2912, file: !361, line: 232, type: !44)
!2920 = !DILocalVariable(name: "authors", scope: !2912, file: !361, line: 234, type: !2878)
!2921 = !DILocation(line: 0, scope: !2912)
!2922 = !DILocation(line: 234, column: 3, scope: !2912)
!2923 = !DILocation(line: 234, column: 11, scope: !2912)
!2924 = !DILocation(line: 235, column: 3, scope: !2912)
!2925 = !DILocation(line: 236, column: 3, scope: !2912)
!2926 = !DILocation(line: 237, column: 3, scope: !2912)
!2927 = !DILocation(line: 238, column: 1, scope: !2912)
!2928 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !361, file: !361, line: 241, type: !198, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !452)
!2929 = !DILocation(line: 243, column: 3, scope: !2928)
!2930 = !DILocation(line: 248, column: 3, scope: !2928)
!2931 = !DILocation(line: 254, column: 3, scope: !2928)
!2932 = !DILocation(line: 259, column: 3, scope: !2928)
!2933 = !DILocation(line: 261, column: 1, scope: !2928)
!2934 = distinct !DISubprogram(name: "xnrealloc", scope: !2935, file: !2935, line: 147, type: !2936, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2938)
!2935 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!38, !38, !41, !41}
!2938 = !{!2939, !2940, !2941}
!2939 = !DILocalVariable(name: "p", arg: 1, scope: !2934, file: !2935, line: 147, type: !38)
!2940 = !DILocalVariable(name: "n", arg: 2, scope: !2934, file: !2935, line: 147, type: !41)
!2941 = !DILocalVariable(name: "s", arg: 3, scope: !2934, file: !2935, line: 147, type: !41)
!2942 = !DILocation(line: 0, scope: !2934)
!2943 = !DILocalVariable(name: "p", arg: 1, scope: !2944, file: !368, line: 83, type: !38)
!2944 = distinct !DISubprogram(name: "xreallocarray", scope: !368, file: !368, line: 83, type: !2936, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2945)
!2945 = !{!2943, !2946, !2947}
!2946 = !DILocalVariable(name: "n", arg: 2, scope: !2944, file: !368, line: 83, type: !41)
!2947 = !DILocalVariable(name: "s", arg: 3, scope: !2944, file: !368, line: 83, type: !41)
!2948 = !DILocation(line: 0, scope: !2944, inlinedAt: !2949)
!2949 = distinct !DILocation(line: 149, column: 10, scope: !2934)
!2950 = !DILocation(line: 85, column: 25, scope: !2944, inlinedAt: !2949)
!2951 = !DILocalVariable(name: "p", arg: 1, scope: !2952, file: !368, line: 37, type: !38)
!2952 = distinct !DISubprogram(name: "check_nonnull", scope: !368, file: !368, line: 37, type: !2953, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2955)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!38, !38}
!2955 = !{!2951}
!2956 = !DILocation(line: 0, scope: !2952, inlinedAt: !2957)
!2957 = distinct !DILocation(line: 85, column: 10, scope: !2944, inlinedAt: !2949)
!2958 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !2957)
!2959 = distinct !DILexicalBlock(scope: !2952, file: !368, line: 39, column: 7)
!2960 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !2957)
!2961 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !2957)
!2962 = !DILocation(line: 149, column: 3, scope: !2934)
!2963 = !DILocation(line: 0, scope: !2944)
!2964 = !DILocation(line: 85, column: 25, scope: !2944)
!2965 = !DILocation(line: 0, scope: !2952, inlinedAt: !2966)
!2966 = distinct !DILocation(line: 85, column: 10, scope: !2944)
!2967 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !2966)
!2968 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !2966)
!2969 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !2966)
!2970 = !DILocation(line: 85, column: 3, scope: !2944)
!2971 = distinct !DISubprogram(name: "xmalloc", scope: !368, file: !368, line: 47, type: !2972, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2974)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!38, !41}
!2974 = !{!2975}
!2975 = !DILocalVariable(name: "s", arg: 1, scope: !2971, file: !368, line: 47, type: !41)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocation(line: 49, column: 25, scope: !2971)
!2978 = !DILocation(line: 0, scope: !2952, inlinedAt: !2979)
!2979 = distinct !DILocation(line: 49, column: 10, scope: !2971)
!2980 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !2979)
!2981 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !2979)
!2982 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !2979)
!2983 = !DILocation(line: 49, column: 3, scope: !2971)
!2984 = distinct !DISubprogram(name: "ximalloc", scope: !368, file: !368, line: 53, type: !2985, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2987)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!38, !387}
!2987 = !{!2988}
!2988 = !DILocalVariable(name: "s", arg: 1, scope: !2984, file: !368, line: 53, type: !387)
!2989 = !DILocation(line: 0, scope: !2984)
!2990 = !DILocalVariable(name: "s", arg: 1, scope: !2991, file: !2992, line: 55, type: !387)
!2991 = distinct !DISubprogram(name: "imalloc", scope: !2992, file: !2992, line: 55, type: !2985, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !2993)
!2992 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!2993 = !{!2990}
!2994 = !DILocation(line: 0, scope: !2991, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 55, column: 25, scope: !2984)
!2996 = !DILocation(line: 57, column: 26, scope: !2991, inlinedAt: !2995)
!2997 = !DILocation(line: 0, scope: !2952, inlinedAt: !2998)
!2998 = distinct !DILocation(line: 55, column: 10, scope: !2984)
!2999 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !2998)
!3000 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !2998)
!3001 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !2998)
!3002 = !DILocation(line: 55, column: 3, scope: !2984)
!3003 = distinct !DISubprogram(name: "xcharalloc", scope: !368, file: !368, line: 59, type: !3004, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!36, !41}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "n", arg: 1, scope: !3003, file: !368, line: 59, type: !41)
!3008 = !DILocation(line: 0, scope: !3003)
!3009 = !DILocation(line: 0, scope: !2971, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 61, column: 10, scope: !3003)
!3011 = !DILocation(line: 49, column: 25, scope: !2971, inlinedAt: !3010)
!3012 = !DILocation(line: 0, scope: !2952, inlinedAt: !3013)
!3013 = distinct !DILocation(line: 49, column: 10, scope: !2971, inlinedAt: !3010)
!3014 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3013)
!3015 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3013)
!3016 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3013)
!3017 = !DILocation(line: 61, column: 3, scope: !3003)
!3018 = distinct !DISubprogram(name: "xrealloc", scope: !368, file: !368, line: 68, type: !3019, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3021)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!38, !38, !41}
!3021 = !{!3022, !3023}
!3022 = !DILocalVariable(name: "p", arg: 1, scope: !3018, file: !368, line: 68, type: !38)
!3023 = !DILocalVariable(name: "s", arg: 2, scope: !3018, file: !368, line: 68, type: !41)
!3024 = !DILocation(line: 0, scope: !3018)
!3025 = !DILocalVariable(name: "ptr", arg: 1, scope: !3026, file: !3027, line: 2057, type: !38)
!3026 = distinct !DISubprogram(name: "rpl_realloc", scope: !3027, file: !3027, line: 2057, type: !3019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3028)
!3027 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3028 = !{!3025, !3029}
!3029 = !DILocalVariable(name: "size", arg: 2, scope: !3026, file: !3027, line: 2057, type: !41)
!3030 = !DILocation(line: 0, scope: !3026, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 70, column: 25, scope: !3018)
!3032 = !DILocation(line: 2059, column: 24, scope: !3026, inlinedAt: !3031)
!3033 = !DILocation(line: 2059, column: 10, scope: !3026, inlinedAt: !3031)
!3034 = !DILocation(line: 0, scope: !2952, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 70, column: 10, scope: !3018)
!3036 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3035)
!3037 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3035)
!3038 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3035)
!3039 = !DILocation(line: 70, column: 3, scope: !3018)
!3040 = distinct !DISubprogram(name: "xirealloc", scope: !368, file: !368, line: 74, type: !3041, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!38, !38, !387}
!3043 = !{!3044, !3045}
!3044 = !DILocalVariable(name: "p", arg: 1, scope: !3040, file: !368, line: 74, type: !38)
!3045 = !DILocalVariable(name: "s", arg: 2, scope: !3040, file: !368, line: 74, type: !387)
!3046 = !DILocation(line: 0, scope: !3040)
!3047 = !DILocalVariable(name: "p", arg: 1, scope: !3048, file: !2992, line: 66, type: !38)
!3048 = distinct !DISubprogram(name: "irealloc", scope: !2992, file: !2992, line: 66, type: !3041, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3049)
!3049 = !{!3047, !3050}
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3048, file: !2992, line: 66, type: !387)
!3051 = !DILocation(line: 0, scope: !3048, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 76, column: 25, scope: !3040)
!3053 = !DILocation(line: 0, scope: !3026, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 68, column: 26, scope: !3048, inlinedAt: !3052)
!3055 = !DILocation(line: 2059, column: 24, scope: !3026, inlinedAt: !3054)
!3056 = !DILocation(line: 2059, column: 10, scope: !3026, inlinedAt: !3054)
!3057 = !DILocation(line: 0, scope: !2952, inlinedAt: !3058)
!3058 = distinct !DILocation(line: 76, column: 10, scope: !3040)
!3059 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3058)
!3060 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3058)
!3061 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3058)
!3062 = !DILocation(line: 76, column: 3, scope: !3040)
!3063 = distinct !DISubprogram(name: "xireallocarray", scope: !368, file: !368, line: 89, type: !3064, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!38, !38, !387, !387}
!3066 = !{!3067, !3068, !3069}
!3067 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !368, line: 89, type: !38)
!3068 = !DILocalVariable(name: "n", arg: 2, scope: !3063, file: !368, line: 89, type: !387)
!3069 = !DILocalVariable(name: "s", arg: 3, scope: !3063, file: !368, line: 89, type: !387)
!3070 = !DILocation(line: 0, scope: !3063)
!3071 = !DILocalVariable(name: "p", arg: 1, scope: !3072, file: !2992, line: 98, type: !38)
!3072 = distinct !DISubprogram(name: "ireallocarray", scope: !2992, file: !2992, line: 98, type: !3064, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3073)
!3073 = !{!3071, !3074, !3075}
!3074 = !DILocalVariable(name: "n", arg: 2, scope: !3072, file: !2992, line: 98, type: !387)
!3075 = !DILocalVariable(name: "s", arg: 3, scope: !3072, file: !2992, line: 98, type: !387)
!3076 = !DILocation(line: 0, scope: !3072, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 91, column: 25, scope: !3063)
!3078 = !DILocation(line: 101, column: 13, scope: !3072, inlinedAt: !3077)
!3079 = !DILocation(line: 0, scope: !2952, inlinedAt: !3080)
!3080 = distinct !DILocation(line: 91, column: 10, scope: !3063)
!3081 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3080)
!3082 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3080)
!3083 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3080)
!3084 = !DILocation(line: 91, column: 3, scope: !3063)
!3085 = distinct !DISubprogram(name: "xnmalloc", scope: !368, file: !368, line: 98, type: !3086, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3088)
!3086 = !DISubroutineType(types: !3087)
!3087 = !{!38, !41, !41}
!3088 = !{!3089, !3090}
!3089 = !DILocalVariable(name: "n", arg: 1, scope: !3085, file: !368, line: 98, type: !41)
!3090 = !DILocalVariable(name: "s", arg: 2, scope: !3085, file: !368, line: 98, type: !41)
!3091 = !DILocation(line: 0, scope: !3085)
!3092 = !DILocation(line: 0, scope: !2944, inlinedAt: !3093)
!3093 = distinct !DILocation(line: 100, column: 10, scope: !3085)
!3094 = !DILocation(line: 85, column: 25, scope: !2944, inlinedAt: !3093)
!3095 = !DILocation(line: 0, scope: !2952, inlinedAt: !3096)
!3096 = distinct !DILocation(line: 85, column: 10, scope: !2944, inlinedAt: !3093)
!3097 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3096)
!3098 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3096)
!3099 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3096)
!3100 = !DILocation(line: 100, column: 3, scope: !3085)
!3101 = distinct !DISubprogram(name: "xinmalloc", scope: !368, file: !368, line: 104, type: !3102, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3104)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!38, !387, !387}
!3104 = !{!3105, !3106}
!3105 = !DILocalVariable(name: "n", arg: 1, scope: !3101, file: !368, line: 104, type: !387)
!3106 = !DILocalVariable(name: "s", arg: 2, scope: !3101, file: !368, line: 104, type: !387)
!3107 = !DILocation(line: 0, scope: !3101)
!3108 = !DILocation(line: 0, scope: !3063, inlinedAt: !3109)
!3109 = distinct !DILocation(line: 106, column: 10, scope: !3101)
!3110 = !DILocation(line: 0, scope: !3072, inlinedAt: !3111)
!3111 = distinct !DILocation(line: 91, column: 25, scope: !3063, inlinedAt: !3109)
!3112 = !DILocation(line: 101, column: 13, scope: !3072, inlinedAt: !3111)
!3113 = !DILocation(line: 0, scope: !2952, inlinedAt: !3114)
!3114 = distinct !DILocation(line: 91, column: 10, scope: !3063, inlinedAt: !3109)
!3115 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3114)
!3116 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3114)
!3117 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3114)
!3118 = !DILocation(line: 106, column: 3, scope: !3101)
!3119 = distinct !DISubprogram(name: "x2realloc", scope: !368, file: !368, line: 116, type: !3120, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!38, !38, !374}
!3122 = !{!3123, !3124}
!3123 = !DILocalVariable(name: "p", arg: 1, scope: !3119, file: !368, line: 116, type: !38)
!3124 = !DILocalVariable(name: "ps", arg: 2, scope: !3119, file: !368, line: 116, type: !374)
!3125 = !DILocation(line: 0, scope: !3119)
!3126 = !DILocation(line: 0, scope: !371, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 118, column: 10, scope: !3119)
!3128 = !DILocation(line: 178, column: 14, scope: !371, inlinedAt: !3127)
!3129 = !DILocation(line: 180, column: 9, scope: !3130, inlinedAt: !3127)
!3130 = distinct !DILexicalBlock(scope: !371, file: !368, line: 180, column: 7)
!3131 = !DILocation(line: 180, column: 7, scope: !371, inlinedAt: !3127)
!3132 = !DILocation(line: 182, column: 13, scope: !3133, inlinedAt: !3127)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !368, line: 182, column: 11)
!3134 = distinct !DILexicalBlock(scope: !3130, file: !368, line: 181, column: 5)
!3135 = !DILocation(line: 182, column: 11, scope: !3134, inlinedAt: !3127)
!3136 = !DILocation(line: 197, column: 11, scope: !3137, inlinedAt: !3127)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !368, line: 197, column: 11)
!3138 = distinct !DILexicalBlock(scope: !3130, file: !368, line: 195, column: 5)
!3139 = !DILocation(line: 197, column: 11, scope: !3138, inlinedAt: !3127)
!3140 = !DILocation(line: 198, column: 9, scope: !3137, inlinedAt: !3127)
!3141 = !DILocation(line: 0, scope: !2944, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 201, column: 7, scope: !371, inlinedAt: !3127)
!3143 = !DILocation(line: 85, column: 25, scope: !2944, inlinedAt: !3142)
!3144 = !DILocation(line: 0, scope: !2952, inlinedAt: !3145)
!3145 = distinct !DILocation(line: 85, column: 10, scope: !2944, inlinedAt: !3142)
!3146 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3145)
!3147 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3145)
!3148 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3145)
!3149 = !DILocation(line: 202, column: 7, scope: !371, inlinedAt: !3127)
!3150 = !DILocation(line: 118, column: 3, scope: !3119)
!3151 = !DILocation(line: 0, scope: !371)
!3152 = !DILocation(line: 178, column: 14, scope: !371)
!3153 = !DILocation(line: 180, column: 9, scope: !3130)
!3154 = !DILocation(line: 180, column: 7, scope: !371)
!3155 = !DILocation(line: 182, column: 13, scope: !3133)
!3156 = !DILocation(line: 182, column: 11, scope: !3134)
!3157 = !DILocation(line: 190, column: 30, scope: !3158)
!3158 = distinct !DILexicalBlock(scope: !3133, file: !368, line: 183, column: 9)
!3159 = !DILocation(line: 191, column: 16, scope: !3158)
!3160 = !DILocation(line: 191, column: 13, scope: !3158)
!3161 = !DILocation(line: 192, column: 9, scope: !3158)
!3162 = !DILocation(line: 197, column: 11, scope: !3137)
!3163 = !DILocation(line: 197, column: 11, scope: !3138)
!3164 = !DILocation(line: 198, column: 9, scope: !3137)
!3165 = !DILocation(line: 0, scope: !2944, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 201, column: 7, scope: !371)
!3167 = !DILocation(line: 85, column: 25, scope: !2944, inlinedAt: !3166)
!3168 = !DILocation(line: 0, scope: !2952, inlinedAt: !3169)
!3169 = distinct !DILocation(line: 85, column: 10, scope: !2944, inlinedAt: !3166)
!3170 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3169)
!3171 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3169)
!3172 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3169)
!3173 = !DILocation(line: 202, column: 7, scope: !371)
!3174 = !DILocation(line: 203, column: 3, scope: !371)
!3175 = !DILocation(line: 0, scope: !383)
!3176 = !DILocation(line: 230, column: 14, scope: !383)
!3177 = !DILocation(line: 238, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !383, file: !368, line: 238, column: 7)
!3179 = !DILocation(line: 238, column: 7, scope: !383)
!3180 = !DILocation(line: 240, column: 9, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !383, file: !368, line: 240, column: 7)
!3182 = !DILocation(line: 240, column: 18, scope: !3181)
!3183 = !DILocation(line: 253, column: 8, scope: !383)
!3184 = !DILocation(line: 258, column: 27, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !368, line: 257, column: 5)
!3186 = distinct !DILexicalBlock(scope: !383, file: !368, line: 256, column: 7)
!3187 = !DILocation(line: 259, column: 32, scope: !3185)
!3188 = !DILocation(line: 260, column: 5, scope: !3185)
!3189 = !DILocation(line: 262, column: 9, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !383, file: !368, line: 262, column: 7)
!3191 = !DILocation(line: 262, column: 7, scope: !383)
!3192 = !DILocation(line: 263, column: 9, scope: !3190)
!3193 = !DILocation(line: 263, column: 5, scope: !3190)
!3194 = !DILocation(line: 264, column: 9, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !383, file: !368, line: 264, column: 7)
!3196 = !DILocation(line: 264, column: 14, scope: !3195)
!3197 = !DILocation(line: 265, column: 7, scope: !3195)
!3198 = !DILocation(line: 265, column: 11, scope: !3195)
!3199 = !DILocation(line: 266, column: 11, scope: !3195)
!3200 = !DILocation(line: 266, column: 26, scope: !3195)
!3201 = !DILocation(line: 267, column: 14, scope: !3195)
!3202 = !DILocation(line: 264, column: 7, scope: !383)
!3203 = !DILocation(line: 268, column: 5, scope: !3195)
!3204 = !DILocation(line: 0, scope: !3018, inlinedAt: !3205)
!3205 = distinct !DILocation(line: 269, column: 8, scope: !383)
!3206 = !DILocation(line: 0, scope: !3026, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 70, column: 25, scope: !3018, inlinedAt: !3205)
!3208 = !DILocation(line: 2059, column: 24, scope: !3026, inlinedAt: !3207)
!3209 = !DILocation(line: 2059, column: 10, scope: !3026, inlinedAt: !3207)
!3210 = !DILocation(line: 0, scope: !2952, inlinedAt: !3211)
!3211 = distinct !DILocation(line: 70, column: 10, scope: !3018, inlinedAt: !3205)
!3212 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3211)
!3213 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3211)
!3214 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3211)
!3215 = !DILocation(line: 270, column: 7, scope: !383)
!3216 = !DILocation(line: 271, column: 3, scope: !383)
!3217 = distinct !DISubprogram(name: "xzalloc", scope: !368, file: !368, line: 279, type: !2972, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3218)
!3218 = !{!3219}
!3219 = !DILocalVariable(name: "s", arg: 1, scope: !3217, file: !368, line: 279, type: !41)
!3220 = !DILocation(line: 0, scope: !3217)
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3222, file: !368, line: 294, type: !41)
!3222 = distinct !DISubprogram(name: "xcalloc", scope: !368, file: !368, line: 294, type: !3086, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3223)
!3223 = !{!3221, !3224}
!3224 = !DILocalVariable(name: "s", arg: 2, scope: !3222, file: !368, line: 294, type: !41)
!3225 = !DILocation(line: 0, scope: !3222, inlinedAt: !3226)
!3226 = distinct !DILocation(line: 281, column: 10, scope: !3217)
!3227 = !DILocation(line: 296, column: 25, scope: !3222, inlinedAt: !3226)
!3228 = !DILocation(line: 0, scope: !2952, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 296, column: 10, scope: !3222, inlinedAt: !3226)
!3230 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3229)
!3231 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3229)
!3232 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3229)
!3233 = !DILocation(line: 281, column: 3, scope: !3217)
!3234 = !DILocation(line: 0, scope: !3222)
!3235 = !DILocation(line: 296, column: 25, scope: !3222)
!3236 = !DILocation(line: 0, scope: !2952, inlinedAt: !3237)
!3237 = distinct !DILocation(line: 296, column: 10, scope: !3222)
!3238 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3237)
!3239 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3237)
!3240 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3237)
!3241 = !DILocation(line: 296, column: 3, scope: !3222)
!3242 = distinct !DISubprogram(name: "xizalloc", scope: !368, file: !368, line: 285, type: !2985, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3243)
!3243 = !{!3244}
!3244 = !DILocalVariable(name: "s", arg: 1, scope: !3242, file: !368, line: 285, type: !387)
!3245 = !DILocation(line: 0, scope: !3242)
!3246 = !DILocalVariable(name: "n", arg: 1, scope: !3247, file: !368, line: 300, type: !387)
!3247 = distinct !DISubprogram(name: "xicalloc", scope: !368, file: !368, line: 300, type: !3102, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3248)
!3248 = !{!3246, !3249}
!3249 = !DILocalVariable(name: "s", arg: 2, scope: !3247, file: !368, line: 300, type: !387)
!3250 = !DILocation(line: 0, scope: !3247, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 287, column: 10, scope: !3242)
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3253, file: !2992, line: 77, type: !387)
!3253 = distinct !DISubprogram(name: "icalloc", scope: !2992, file: !2992, line: 77, type: !3102, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3254)
!3254 = !{!3252, !3255}
!3255 = !DILocalVariable(name: "s", arg: 2, scope: !3253, file: !2992, line: 77, type: !387)
!3256 = !DILocation(line: 0, scope: !3253, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 302, column: 25, scope: !3247, inlinedAt: !3251)
!3258 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3257)
!3259 = !DILocation(line: 0, scope: !2952, inlinedAt: !3260)
!3260 = distinct !DILocation(line: 302, column: 10, scope: !3247, inlinedAt: !3251)
!3261 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3260)
!3262 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3260)
!3263 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3260)
!3264 = !DILocation(line: 287, column: 3, scope: !3242)
!3265 = !DILocation(line: 0, scope: !3247)
!3266 = !DILocation(line: 0, scope: !3253, inlinedAt: !3267)
!3267 = distinct !DILocation(line: 302, column: 25, scope: !3247)
!3268 = !DILocation(line: 91, column: 10, scope: !3253, inlinedAt: !3267)
!3269 = !DILocation(line: 0, scope: !2952, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 302, column: 10, scope: !3247)
!3271 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3270)
!3272 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3270)
!3273 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3270)
!3274 = !DILocation(line: 302, column: 3, scope: !3247)
!3275 = distinct !DISubprogram(name: "xmemdup", scope: !368, file: !368, line: 310, type: !3276, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3278)
!3276 = !DISubroutineType(types: !3277)
!3277 = !{!38, !653, !41}
!3278 = !{!3279, !3280}
!3279 = !DILocalVariable(name: "p", arg: 1, scope: !3275, file: !368, line: 310, type: !653)
!3280 = !DILocalVariable(name: "s", arg: 2, scope: !3275, file: !368, line: 310, type: !41)
!3281 = !DILocation(line: 0, scope: !3275)
!3282 = !DILocation(line: 0, scope: !2971, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 312, column: 18, scope: !3275)
!3284 = !DILocation(line: 49, column: 25, scope: !2971, inlinedAt: !3283)
!3285 = !DILocation(line: 0, scope: !2952, inlinedAt: !3286)
!3286 = distinct !DILocation(line: 49, column: 10, scope: !2971, inlinedAt: !3283)
!3287 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3286)
!3288 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3286)
!3289 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3286)
!3290 = !DILocalVariable(name: "__dest", arg: 1, scope: !3291, file: !1462, line: 26, type: !3294)
!3291 = distinct !DISubprogram(name: "memcpy", scope: !1462, file: !1462, line: 26, type: !3292, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3295)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!38, !3294, !652, !41}
!3294 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!3295 = !{!3290, !3296, !3297}
!3296 = !DILocalVariable(name: "__src", arg: 2, scope: !3291, file: !1462, line: 26, type: !652)
!3297 = !DILocalVariable(name: "__len", arg: 3, scope: !3291, file: !1462, line: 26, type: !41)
!3298 = !DILocation(line: 0, scope: !3291, inlinedAt: !3299)
!3299 = distinct !DILocation(line: 312, column: 10, scope: !3275)
!3300 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3299)
!3301 = !DILocation(line: 312, column: 3, scope: !3275)
!3302 = distinct !DISubprogram(name: "ximemdup", scope: !368, file: !368, line: 316, type: !3303, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3305)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!38, !653, !387}
!3305 = !{!3306, !3307}
!3306 = !DILocalVariable(name: "p", arg: 1, scope: !3302, file: !368, line: 316, type: !653)
!3307 = !DILocalVariable(name: "s", arg: 2, scope: !3302, file: !368, line: 316, type: !387)
!3308 = !DILocation(line: 0, scope: !3302)
!3309 = !DILocation(line: 0, scope: !2984, inlinedAt: !3310)
!3310 = distinct !DILocation(line: 318, column: 18, scope: !3302)
!3311 = !DILocation(line: 0, scope: !2991, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 55, column: 25, scope: !2984, inlinedAt: !3310)
!3313 = !DILocation(line: 57, column: 26, scope: !2991, inlinedAt: !3312)
!3314 = !DILocation(line: 0, scope: !2952, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 55, column: 10, scope: !2984, inlinedAt: !3310)
!3316 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3315)
!3317 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3315)
!3318 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3315)
!3319 = !DILocation(line: 0, scope: !3291, inlinedAt: !3320)
!3320 = distinct !DILocation(line: 318, column: 10, scope: !3302)
!3321 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3320)
!3322 = !DILocation(line: 318, column: 3, scope: !3302)
!3323 = distinct !DISubprogram(name: "ximemdup0", scope: !368, file: !368, line: 325, type: !3324, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3326)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!36, !653, !387}
!3326 = !{!3327, !3328, !3329}
!3327 = !DILocalVariable(name: "p", arg: 1, scope: !3323, file: !368, line: 325, type: !653)
!3328 = !DILocalVariable(name: "s", arg: 2, scope: !3323, file: !368, line: 325, type: !387)
!3329 = !DILocalVariable(name: "result", scope: !3323, file: !368, line: 327, type: !36)
!3330 = !DILocation(line: 0, scope: !3323)
!3331 = !DILocation(line: 327, column: 30, scope: !3323)
!3332 = !DILocation(line: 0, scope: !2984, inlinedAt: !3333)
!3333 = distinct !DILocation(line: 327, column: 18, scope: !3323)
!3334 = !DILocation(line: 0, scope: !2991, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 55, column: 25, scope: !2984, inlinedAt: !3333)
!3336 = !DILocation(line: 57, column: 26, scope: !2991, inlinedAt: !3335)
!3337 = !DILocation(line: 0, scope: !2952, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 55, column: 10, scope: !2984, inlinedAt: !3333)
!3339 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3338)
!3340 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3338)
!3341 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3338)
!3342 = !DILocation(line: 328, column: 3, scope: !3323)
!3343 = !DILocation(line: 328, column: 13, scope: !3323)
!3344 = !DILocation(line: 0, scope: !3291, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 329, column: 10, scope: !3323)
!3346 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3345)
!3347 = !DILocation(line: 329, column: 3, scope: !3323)
!3348 = distinct !DISubprogram(name: "xstrdup", scope: !368, file: !368, line: 335, type: !647, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !367, retainedNodes: !3349)
!3349 = !{!3350}
!3350 = !DILocalVariable(name: "string", arg: 1, scope: !3348, file: !368, line: 335, type: !44)
!3351 = !DILocation(line: 0, scope: !3348)
!3352 = !DILocation(line: 337, column: 27, scope: !3348)
!3353 = !DILocation(line: 337, column: 43, scope: !3348)
!3354 = !DILocation(line: 0, scope: !3275, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 337, column: 10, scope: !3348)
!3356 = !DILocation(line: 0, scope: !2971, inlinedAt: !3357)
!3357 = distinct !DILocation(line: 312, column: 18, scope: !3275, inlinedAt: !3355)
!3358 = !DILocation(line: 49, column: 25, scope: !2971, inlinedAt: !3357)
!3359 = !DILocation(line: 0, scope: !2952, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 49, column: 10, scope: !2971, inlinedAt: !3357)
!3361 = !DILocation(line: 39, column: 8, scope: !2959, inlinedAt: !3360)
!3362 = !DILocation(line: 39, column: 7, scope: !2952, inlinedAt: !3360)
!3363 = !DILocation(line: 40, column: 5, scope: !2959, inlinedAt: !3360)
!3364 = !DILocation(line: 0, scope: !3291, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 312, column: 10, scope: !3275, inlinedAt: !3355)
!3366 = !DILocation(line: 29, column: 10, scope: !3291, inlinedAt: !3365)
!3367 = !DILocation(line: 337, column: 3, scope: !3348)
!3368 = distinct !DISubprogram(name: "xalloc_die", scope: !402, file: !402, line: 32, type: !198, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !401, retainedNodes: !3369)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "__errstatus", scope: !3371, file: !402, line: 34, type: !3372)
!3371 = distinct !DILexicalBlock(scope: !3368, file: !402, line: 34, column: 3)
!3372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!3373 = !DILocation(line: 34, column: 3, scope: !3371)
!3374 = !DILocation(line: 0, scope: !3371)
!3375 = !DILocation(line: 40, column: 3, scope: !3368)
!3376 = distinct !DISubprogram(name: "close_stream", scope: !404, file: !404, line: 55, type: !3377, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3413)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!39, !3379}
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3381)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3382)
!3382 = !{!3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3381, file: !78, line: 51, baseType: !39, size: 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3381, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3381, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3381, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3381, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3381, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3381, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3381, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3381, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3381, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3381, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3381, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3381, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3381, file: !78, line: 70, baseType: !3397, size: 64, offset: 832)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3381, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3381, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3381, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3381, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3381, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3381, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3381, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3381, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3381, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3381, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3381, file: !78, line: 93, baseType: !3397, size: 64, offset: 1344)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3381, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3381, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3381, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3381, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3413 = !{!3414, !3415, !3417, !3418}
!3414 = !DILocalVariable(name: "stream", arg: 1, scope: !3376, file: !404, line: 55, type: !3379)
!3415 = !DILocalVariable(name: "some_pending", scope: !3376, file: !404, line: 57, type: !3416)
!3416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3417 = !DILocalVariable(name: "prev_fail", scope: !3376, file: !404, line: 58, type: !3416)
!3418 = !DILocalVariable(name: "fclose_fail", scope: !3376, file: !404, line: 59, type: !3416)
!3419 = !DILocation(line: 0, scope: !3376)
!3420 = !DILocation(line: 57, column: 30, scope: !3376)
!3421 = !DILocalVariable(name: "__stream", arg: 1, scope: !3422, file: !952, line: 135, type: !3379)
!3422 = distinct !DISubprogram(name: "ferror_unlocked", scope: !952, file: !952, line: 135, type: !3377, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !403, retainedNodes: !3423)
!3423 = !{!3421}
!3424 = !DILocation(line: 0, scope: !3422, inlinedAt: !3425)
!3425 = distinct !DILocation(line: 58, column: 27, scope: !3376)
!3426 = !DILocation(line: 137, column: 10, scope: !3422, inlinedAt: !3425)
!3427 = !{!961, !536, i64 0}
!3428 = !DILocation(line: 58, column: 43, scope: !3376)
!3429 = !DILocation(line: 59, column: 29, scope: !3376)
!3430 = !DILocation(line: 59, column: 45, scope: !3376)
!3431 = !DILocation(line: 69, column: 17, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3376, file: !404, line: 69, column: 7)
!3433 = !DILocation(line: 57, column: 50, scope: !3376)
!3434 = !DILocation(line: 69, column: 33, scope: !3432)
!3435 = !DILocation(line: 69, column: 53, scope: !3432)
!3436 = !DILocation(line: 69, column: 59, scope: !3432)
!3437 = !DILocation(line: 69, column: 7, scope: !3376)
!3438 = !DILocation(line: 71, column: 11, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3432, file: !404, line: 70, column: 5)
!3440 = !DILocation(line: 72, column: 9, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3439, file: !404, line: 71, column: 11)
!3442 = !DILocation(line: 72, column: 15, scope: !3441)
!3443 = !DILocation(line: 77, column: 1, scope: !3376)
!3444 = distinct !DISubprogram(name: "rpl_fclose", scope: !406, file: !406, line: 58, type: !3445, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !405, retainedNodes: !3481)
!3445 = !DISubroutineType(types: !3446)
!3446 = !{!39, !3447}
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3449)
!3449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3450)
!3450 = !{!3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3449, file: !78, line: 51, baseType: !39, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3449, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3449, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3449, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3449, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3449, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3449, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3449, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3449, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3449, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3449, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3449, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3449, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3449, file: !78, line: 70, baseType: !3465, size: 64, offset: 832)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3449, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3449, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3449, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3449, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3449, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3449, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3449, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3449, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3449, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3449, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3449, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3449, file: !78, line: 93, baseType: !3465, size: 64, offset: 1344)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3449, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3449, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3449, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3449, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3481 = !{!3482, !3483, !3484, !3485}
!3482 = !DILocalVariable(name: "fp", arg: 1, scope: !3444, file: !406, line: 58, type: !3447)
!3483 = !DILocalVariable(name: "saved_errno", scope: !3444, file: !406, line: 60, type: !39)
!3484 = !DILocalVariable(name: "fd", scope: !3444, file: !406, line: 63, type: !39)
!3485 = !DILocalVariable(name: "result", scope: !3444, file: !406, line: 74, type: !39)
!3486 = !DILocation(line: 0, scope: !3444)
!3487 = !DILocation(line: 63, column: 12, scope: !3444)
!3488 = !DILocation(line: 64, column: 10, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3444, file: !406, line: 64, column: 7)
!3490 = !DILocation(line: 64, column: 7, scope: !3444)
!3491 = !DILocation(line: 65, column: 12, scope: !3489)
!3492 = !DILocation(line: 65, column: 5, scope: !3489)
!3493 = !DILocation(line: 70, column: 9, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3444, file: !406, line: 70, column: 7)
!3495 = !DILocation(line: 70, column: 23, scope: !3494)
!3496 = !DILocation(line: 70, column: 33, scope: !3494)
!3497 = !DILocation(line: 70, column: 26, scope: !3494)
!3498 = !DILocation(line: 70, column: 59, scope: !3494)
!3499 = !DILocation(line: 71, column: 7, scope: !3494)
!3500 = !DILocation(line: 71, column: 10, scope: !3494)
!3501 = !DILocation(line: 70, column: 7, scope: !3444)
!3502 = !DILocation(line: 100, column: 12, scope: !3444)
!3503 = !DILocation(line: 105, column: 7, scope: !3444)
!3504 = !DILocation(line: 72, column: 19, scope: !3494)
!3505 = !DILocation(line: 105, column: 19, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3444, file: !406, line: 105, column: 7)
!3507 = !DILocation(line: 107, column: 13, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3506, file: !406, line: 106, column: 5)
!3509 = !DILocation(line: 109, column: 5, scope: !3508)
!3510 = !DILocation(line: 112, column: 1, scope: !3444)
!3511 = !DISubprogram(name: "fileno", scope: !171, file: !171, line: 809, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3512 = !DISubprogram(name: "fclose", scope: !171, file: !171, line: 178, type: !3445, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3513 = !DISubprogram(name: "lseek", scope: !3514, file: !3514, line: 339, type: !3515, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3514 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!100, !39, !100, !39}
!3517 = distinct !DISubprogram(name: "rpl_fflush", scope: !408, file: !408, line: 130, type: !3518, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3554)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!39, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3522)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3523)
!3523 = !{!3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3522, file: !78, line: 51, baseType: !39, size: 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3522, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3522, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3522, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3522, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3522, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3522, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3522, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3522, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3522, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3522, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3522, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3522, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3522, file: !78, line: 70, baseType: !3538, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3522, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3522, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3522, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3522, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3522, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3522, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3522, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3522, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3522, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3522, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3522, file: !78, line: 93, baseType: !3538, size: 64, offset: 1344)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3522, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3522, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3522, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3522, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3554 = !{!3555}
!3555 = !DILocalVariable(name: "stream", arg: 1, scope: !3517, file: !408, line: 130, type: !3520)
!3556 = !DILocation(line: 0, scope: !3517)
!3557 = !DILocation(line: 151, column: 14, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3517, file: !408, line: 151, column: 7)
!3559 = !DILocation(line: 151, column: 22, scope: !3558)
!3560 = !DILocation(line: 151, column: 27, scope: !3558)
!3561 = !DILocation(line: 151, column: 7, scope: !3517)
!3562 = !DILocation(line: 152, column: 12, scope: !3558)
!3563 = !DILocation(line: 152, column: 5, scope: !3558)
!3564 = !DILocalVariable(name: "fp", arg: 1, scope: !3565, file: !408, line: 42, type: !3520)
!3565 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !408, file: !408, line: 42, type: !3566, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !407, retainedNodes: !3568)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{null, !3520}
!3568 = !{!3564}
!3569 = !DILocation(line: 0, scope: !3565, inlinedAt: !3570)
!3570 = distinct !DILocation(line: 157, column: 3, scope: !3517)
!3571 = !DILocation(line: 44, column: 12, scope: !3572, inlinedAt: !3570)
!3572 = distinct !DILexicalBlock(scope: !3565, file: !408, line: 44, column: 7)
!3573 = !DILocation(line: 44, column: 19, scope: !3572, inlinedAt: !3570)
!3574 = !DILocation(line: 44, column: 7, scope: !3565, inlinedAt: !3570)
!3575 = !DILocation(line: 46, column: 5, scope: !3572, inlinedAt: !3570)
!3576 = !DILocation(line: 159, column: 10, scope: !3517)
!3577 = !DILocation(line: 159, column: 3, scope: !3517)
!3578 = !DILocation(line: 236, column: 1, scope: !3517)
!3579 = !DISubprogram(name: "fflush", scope: !171, file: !171, line: 230, type: !3518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3580 = distinct !DISubprogram(name: "rpl_fseeko", scope: !410, file: !410, line: 28, type: !3581, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !3618)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!39, !3583, !3617, !39}
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !76, line: 7, baseType: !3585)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !78, line: 49, size: 1728, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3585, file: !78, line: 51, baseType: !39, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3585, file: !78, line: 54, baseType: !36, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3585, file: !78, line: 55, baseType: !36, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3585, file: !78, line: 56, baseType: !36, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3585, file: !78, line: 57, baseType: !36, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3585, file: !78, line: 58, baseType: !36, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3585, file: !78, line: 59, baseType: !36, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3585, file: !78, line: 60, baseType: !36, size: 64, offset: 448)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3585, file: !78, line: 61, baseType: !36, size: 64, offset: 512)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3585, file: !78, line: 64, baseType: !36, size: 64, offset: 576)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3585, file: !78, line: 65, baseType: !36, size: 64, offset: 640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3585, file: !78, line: 66, baseType: !36, size: 64, offset: 704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3585, file: !78, line: 68, baseType: !93, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3585, file: !78, line: 70, baseType: !3601, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3585, file: !78, line: 72, baseType: !39, size: 32, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3585, file: !78, line: 73, baseType: !39, size: 32, offset: 928)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3585, file: !78, line: 74, baseType: !100, size: 64, offset: 960)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3585, file: !78, line: 77, baseType: !40, size: 16, offset: 1024)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3585, file: !78, line: 78, baseType: !105, size: 8, offset: 1040)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3585, file: !78, line: 79, baseType: !107, size: 8, offset: 1048)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3585, file: !78, line: 81, baseType: !111, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3585, file: !78, line: 89, baseType: !114, size: 64, offset: 1152)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3585, file: !78, line: 91, baseType: !116, size: 64, offset: 1216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3585, file: !78, line: 92, baseType: !119, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3585, file: !78, line: 93, baseType: !3601, size: 64, offset: 1344)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3585, file: !78, line: 94, baseType: !38, size: 64, offset: 1408)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3585, file: !78, line: 95, baseType: !41, size: 64, offset: 1472)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3585, file: !78, line: 96, baseType: !39, size: 32, offset: 1536)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3585, file: !78, line: 98, baseType: !126, size: 160, offset: 1568)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !171, line: 63, baseType: !100)
!3618 = !{!3619, !3620, !3621, !3622}
!3619 = !DILocalVariable(name: "fp", arg: 1, scope: !3580, file: !410, line: 28, type: !3583)
!3620 = !DILocalVariable(name: "offset", arg: 2, scope: !3580, file: !410, line: 28, type: !3617)
!3621 = !DILocalVariable(name: "whence", arg: 3, scope: !3580, file: !410, line: 28, type: !39)
!3622 = !DILocalVariable(name: "pos", scope: !3623, file: !410, line: 123, type: !3617)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !410, line: 119, column: 5)
!3624 = distinct !DILexicalBlock(scope: !3580, file: !410, line: 55, column: 7)
!3625 = !DILocation(line: 0, scope: !3580)
!3626 = !DILocation(line: 55, column: 12, scope: !3624)
!3627 = !{!961, !444, i64 16}
!3628 = !DILocation(line: 55, column: 33, scope: !3624)
!3629 = !{!961, !444, i64 8}
!3630 = !DILocation(line: 55, column: 25, scope: !3624)
!3631 = !DILocation(line: 56, column: 7, scope: !3624)
!3632 = !DILocation(line: 56, column: 15, scope: !3624)
!3633 = !DILocation(line: 56, column: 37, scope: !3624)
!3634 = !{!961, !444, i64 32}
!3635 = !DILocation(line: 56, column: 29, scope: !3624)
!3636 = !DILocation(line: 57, column: 7, scope: !3624)
!3637 = !DILocation(line: 57, column: 15, scope: !3624)
!3638 = !{!961, !444, i64 72}
!3639 = !DILocation(line: 57, column: 29, scope: !3624)
!3640 = !DILocation(line: 55, column: 7, scope: !3580)
!3641 = !DILocation(line: 123, column: 26, scope: !3623)
!3642 = !DILocation(line: 123, column: 19, scope: !3623)
!3643 = !DILocation(line: 0, scope: !3623)
!3644 = !DILocation(line: 124, column: 15, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3623, file: !410, line: 124, column: 11)
!3646 = !DILocation(line: 124, column: 11, scope: !3623)
!3647 = !DILocation(line: 135, column: 12, scope: !3623)
!3648 = !DILocation(line: 135, column: 19, scope: !3623)
!3649 = !DILocation(line: 136, column: 12, scope: !3623)
!3650 = !DILocation(line: 136, column: 20, scope: !3623)
!3651 = !{!961, !962, i64 144}
!3652 = !DILocation(line: 167, column: 7, scope: !3623)
!3653 = !DILocation(line: 169, column: 10, scope: !3580)
!3654 = !DILocation(line: 169, column: 3, scope: !3580)
!3655 = !DILocation(line: 170, column: 1, scope: !3580)
!3656 = !DISubprogram(name: "fseeko", scope: !171, file: !171, line: 736, type: !3657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!39, !3583, !100, !39}
!3659 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !334, file: !334, line: 100, type: !3660, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3663)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!41, !1480, !44, !41, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3663 = !{!3664, !3665, !3666, !3667, !3668}
!3664 = !DILocalVariable(name: "pwc", arg: 1, scope: !3659, file: !334, line: 100, type: !1480)
!3665 = !DILocalVariable(name: "s", arg: 2, scope: !3659, file: !334, line: 100, type: !44)
!3666 = !DILocalVariable(name: "n", arg: 3, scope: !3659, file: !334, line: 100, type: !41)
!3667 = !DILocalVariable(name: "ps", arg: 4, scope: !3659, file: !334, line: 100, type: !3662)
!3668 = !DILocalVariable(name: "ret", scope: !3659, file: !334, line: 130, type: !41)
!3669 = !DILocation(line: 0, scope: !3659)
!3670 = !DILocation(line: 105, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3659, file: !334, line: 105, column: 7)
!3672 = !DILocation(line: 105, column: 7, scope: !3659)
!3673 = !DILocation(line: 117, column: 10, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3659, file: !334, line: 117, column: 7)
!3675 = !DILocation(line: 117, column: 7, scope: !3659)
!3676 = !DILocation(line: 130, column: 16, scope: !3659)
!3677 = !DILocation(line: 135, column: 11, scope: !3678)
!3678 = distinct !DILexicalBlock(scope: !3659, file: !334, line: 135, column: 7)
!3679 = !DILocation(line: 135, column: 25, scope: !3678)
!3680 = !DILocation(line: 135, column: 30, scope: !3678)
!3681 = !DILocation(line: 135, column: 7, scope: !3659)
!3682 = !DILocalVariable(name: "ps", arg: 1, scope: !3683, file: !1453, line: 1135, type: !3662)
!3683 = distinct !DISubprogram(name: "mbszero", scope: !1453, file: !1453, line: 1135, type: !3684, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3686)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{null, !3662}
!3686 = !{!3682}
!3687 = !DILocation(line: 0, scope: !3683, inlinedAt: !3688)
!3688 = distinct !DILocation(line: 137, column: 5, scope: !3678)
!3689 = !DILocalVariable(name: "__dest", arg: 1, scope: !3690, file: !1462, line: 57, type: !38)
!3690 = distinct !DISubprogram(name: "memset", scope: !1462, file: !1462, line: 57, type: !1463, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !333, retainedNodes: !3691)
!3691 = !{!3689, !3692, !3693}
!3692 = !DILocalVariable(name: "__ch", arg: 2, scope: !3690, file: !1462, line: 57, type: !39)
!3693 = !DILocalVariable(name: "__len", arg: 3, scope: !3690, file: !1462, line: 57, type: !41)
!3694 = !DILocation(line: 0, scope: !3690, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 1137, column: 3, scope: !3683, inlinedAt: !3688)
!3696 = !DILocation(line: 59, column: 10, scope: !3690, inlinedAt: !3695)
!3697 = !DILocation(line: 137, column: 5, scope: !3678)
!3698 = !DILocation(line: 138, column: 11, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3659, file: !334, line: 138, column: 7)
!3700 = !DILocation(line: 138, column: 7, scope: !3659)
!3701 = !DILocation(line: 139, column: 5, scope: !3699)
!3702 = !DILocation(line: 143, column: 26, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3659, file: !334, line: 143, column: 7)
!3704 = !DILocation(line: 143, column: 41, scope: !3703)
!3705 = !DILocation(line: 143, column: 7, scope: !3659)
!3706 = !DILocation(line: 145, column: 15, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3708, file: !334, line: 145, column: 11)
!3708 = distinct !DILexicalBlock(scope: !3703, file: !334, line: 144, column: 5)
!3709 = !DILocation(line: 145, column: 11, scope: !3708)
!3710 = !DILocation(line: 146, column: 32, scope: !3707)
!3711 = !DILocation(line: 146, column: 16, scope: !3707)
!3712 = !DILocation(line: 146, column: 14, scope: !3707)
!3713 = !DILocation(line: 146, column: 9, scope: !3707)
!3714 = !DILocation(line: 286, column: 1, scope: !3659)
!3715 = !DISubprogram(name: "mbsinit", scope: !3716, file: !3716, line: 293, type: !3717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !452)
!3716 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!39, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!3721 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !412, file: !412, line: 27, type: !2936, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3722)
!3722 = !{!3723, !3724, !3725, !3726}
!3723 = !DILocalVariable(name: "ptr", arg: 1, scope: !3721, file: !412, line: 27, type: !38)
!3724 = !DILocalVariable(name: "nmemb", arg: 2, scope: !3721, file: !412, line: 27, type: !41)
!3725 = !DILocalVariable(name: "size", arg: 3, scope: !3721, file: !412, line: 27, type: !41)
!3726 = !DILocalVariable(name: "nbytes", scope: !3721, file: !412, line: 29, type: !41)
!3727 = !DILocation(line: 0, scope: !3721)
!3728 = !DILocation(line: 30, column: 7, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3721, file: !412, line: 30, column: 7)
!3730 = !DILocalVariable(name: "ptr", arg: 1, scope: !3731, file: !3027, line: 2057, type: !38)
!3731 = distinct !DISubprogram(name: "rpl_realloc", scope: !3027, file: !3027, line: 2057, type: !3019, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !411, retainedNodes: !3732)
!3732 = !{!3730, !3733}
!3733 = !DILocalVariable(name: "size", arg: 2, scope: !3731, file: !3027, line: 2057, type: !41)
!3734 = !DILocation(line: 0, scope: !3731, inlinedAt: !3735)
!3735 = distinct !DILocation(line: 37, column: 10, scope: !3721)
!3736 = !DILocation(line: 2059, column: 24, scope: !3731, inlinedAt: !3735)
!3737 = !DILocation(line: 2059, column: 10, scope: !3731, inlinedAt: !3735)
!3738 = !DILocation(line: 37, column: 3, scope: !3721)
!3739 = !DILocation(line: 32, column: 7, scope: !3740)
!3740 = distinct !DILexicalBlock(scope: !3729, file: !412, line: 31, column: 5)
!3741 = !DILocation(line: 32, column: 13, scope: !3740)
!3742 = !DILocation(line: 33, column: 7, scope: !3740)
!3743 = !DILocation(line: 38, column: 1, scope: !3721)
!3744 = distinct !DISubprogram(name: "hard_locale", scope: !415, file: !415, line: 28, type: !3745, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!61, !39}
!3747 = !{!3748, !3749}
!3748 = !DILocalVariable(name: "category", arg: 1, scope: !3744, file: !415, line: 28, type: !39)
!3749 = !DILocalVariable(name: "locale", scope: !3744, file: !415, line: 30, type: !3750)
!3750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 2056, elements: !3751)
!3751 = !{!3752}
!3752 = !DISubrange(count: 257)
!3753 = !DILocation(line: 0, scope: !3744)
!3754 = !DILocation(line: 30, column: 3, scope: !3744)
!3755 = !DILocation(line: 30, column: 8, scope: !3744)
!3756 = !DILocation(line: 32, column: 7, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3744, file: !415, line: 32, column: 7)
!3758 = !DILocation(line: 32, column: 7, scope: !3744)
!3759 = !DILocalVariable(name: "__s1", arg: 1, scope: !3760, file: !486, line: 1359, type: !44)
!3760 = distinct !DISubprogram(name: "streq", scope: !486, file: !486, line: 1359, type: !487, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3761)
!3761 = !{!3759, !3762}
!3762 = !DILocalVariable(name: "__s2", arg: 2, scope: !3760, file: !486, line: 1359, type: !44)
!3763 = !DILocation(line: 0, scope: !3760, inlinedAt: !3764)
!3764 = distinct !DILocation(line: 35, column: 9, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3744, file: !415, line: 35, column: 7)
!3766 = !DILocation(line: 1361, column: 11, scope: !3760, inlinedAt: !3764)
!3767 = !DILocation(line: 1361, column: 10, scope: !3760, inlinedAt: !3764)
!3768 = !DILocation(line: 35, column: 29, scope: !3765)
!3769 = !DILocation(line: 0, scope: !3760, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 35, column: 32, scope: !3765)
!3771 = !DILocation(line: 1361, column: 11, scope: !3760, inlinedAt: !3770)
!3772 = !DILocation(line: 1361, column: 10, scope: !3760, inlinedAt: !3770)
!3773 = !DILocation(line: 35, column: 7, scope: !3744)
!3774 = !DILocation(line: 46, column: 3, scope: !3744)
!3775 = !DILocation(line: 47, column: 1, scope: !3744)
!3776 = distinct !DISubprogram(name: "setlocale_null_r", scope: !417, file: !417, line: 154, type: !3777, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3779)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!39, !39, !36, !41}
!3779 = !{!3780, !3781, !3782}
!3780 = !DILocalVariable(name: "category", arg: 1, scope: !3776, file: !417, line: 154, type: !39)
!3781 = !DILocalVariable(name: "buf", arg: 2, scope: !3776, file: !417, line: 154, type: !36)
!3782 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3776, file: !417, line: 154, type: !41)
!3783 = !DILocation(line: 0, scope: !3776)
!3784 = !DILocation(line: 159, column: 10, scope: !3776)
!3785 = !DILocation(line: 159, column: 3, scope: !3776)
!3786 = distinct !DISubprogram(name: "setlocale_null", scope: !417, file: !417, line: 186, type: !3787, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3789)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!44, !39}
!3789 = !{!3790}
!3790 = !DILocalVariable(name: "category", arg: 1, scope: !3786, file: !417, line: 186, type: !39)
!3791 = !DILocation(line: 0, scope: !3786)
!3792 = !DILocation(line: 189, column: 10, scope: !3786)
!3793 = !DILocation(line: 189, column: 3, scope: !3786)
!3794 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !419, file: !419, line: 35, type: !3787, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3795)
!3795 = !{!3796, !3797}
!3796 = !DILocalVariable(name: "category", arg: 1, scope: !3794, file: !419, line: 35, type: !39)
!3797 = !DILocalVariable(name: "result", scope: !3794, file: !419, line: 37, type: !44)
!3798 = !DILocation(line: 0, scope: !3794)
!3799 = !DILocation(line: 37, column: 24, scope: !3794)
!3800 = !DILocation(line: 62, column: 3, scope: !3794)
!3801 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !419, file: !419, line: 66, type: !3777, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3802)
!3802 = !{!3803, !3804, !3805, !3806, !3807}
!3803 = !DILocalVariable(name: "category", arg: 1, scope: !3801, file: !419, line: 66, type: !39)
!3804 = !DILocalVariable(name: "buf", arg: 2, scope: !3801, file: !419, line: 66, type: !36)
!3805 = !DILocalVariable(name: "bufsize", arg: 3, scope: !3801, file: !419, line: 66, type: !41)
!3806 = !DILocalVariable(name: "result", scope: !3801, file: !419, line: 111, type: !44)
!3807 = !DILocalVariable(name: "length", scope: !3808, file: !419, line: 125, type: !41)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !419, line: 124, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3801, file: !419, line: 113, column: 7)
!3810 = !DILocation(line: 0, scope: !3801)
!3811 = !DILocation(line: 0, scope: !3794, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 111, column: 24, scope: !3801)
!3813 = !DILocation(line: 37, column: 24, scope: !3794, inlinedAt: !3812)
!3814 = !DILocation(line: 113, column: 14, scope: !3809)
!3815 = !DILocation(line: 113, column: 7, scope: !3801)
!3816 = !DILocation(line: 116, column: 19, scope: !3817)
!3817 = distinct !DILexicalBlock(scope: !3818, file: !419, line: 116, column: 11)
!3818 = distinct !DILexicalBlock(scope: !3809, file: !419, line: 114, column: 5)
!3819 = !DILocation(line: 116, column: 11, scope: !3818)
!3820 = !DILocation(line: 120, column: 16, scope: !3817)
!3821 = !DILocation(line: 120, column: 9, scope: !3817)
!3822 = !DILocation(line: 125, column: 23, scope: !3808)
!3823 = !DILocation(line: 0, scope: !3808)
!3824 = !DILocation(line: 126, column: 18, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3808, file: !419, line: 126, column: 11)
!3826 = !DILocation(line: 126, column: 11, scope: !3808)
!3827 = !DILocation(line: 128, column: 39, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3825, file: !419, line: 127, column: 9)
!3829 = !DILocalVariable(name: "__dest", arg: 1, scope: !3830, file: !1462, line: 26, type: !3294)
!3830 = distinct !DISubprogram(name: "memcpy", scope: !1462, file: !1462, line: 26, type: !3292, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !418, retainedNodes: !3831)
!3831 = !{!3829, !3832, !3833}
!3832 = !DILocalVariable(name: "__src", arg: 2, scope: !3830, file: !1462, line: 26, type: !652)
!3833 = !DILocalVariable(name: "__len", arg: 3, scope: !3830, file: !1462, line: 26, type: !41)
!3834 = !DILocation(line: 0, scope: !3830, inlinedAt: !3835)
!3835 = distinct !DILocation(line: 128, column: 11, scope: !3828)
!3836 = !DILocation(line: 29, column: 10, scope: !3830, inlinedAt: !3835)
!3837 = !DILocation(line: 129, column: 11, scope: !3828)
!3838 = !DILocation(line: 133, column: 23, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !419, line: 133, column: 15)
!3840 = distinct !DILexicalBlock(scope: !3825, file: !419, line: 132, column: 9)
!3841 = !DILocation(line: 133, column: 15, scope: !3840)
!3842 = !DILocation(line: 138, column: 44, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !419, line: 134, column: 13)
!3844 = !DILocation(line: 0, scope: !3830, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 138, column: 15, scope: !3843)
!3846 = !DILocation(line: 29, column: 10, scope: !3830, inlinedAt: !3845)
!3847 = !DILocation(line: 139, column: 15, scope: !3843)
!3848 = !DILocation(line: 139, column: 32, scope: !3843)
!3849 = !DILocation(line: 140, column: 13, scope: !3843)
!3850 = !DILocation(line: 0, scope: !3809)
!3851 = !DILocation(line: 145, column: 1, scope: !3801)
