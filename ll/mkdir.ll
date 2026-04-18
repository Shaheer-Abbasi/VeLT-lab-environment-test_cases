; ModuleID = 'src/mkdir.bc'
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
%struct.savewd = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.mkdir_options = type { i32 (i8*, i8*, i8*)*, i32, i32, i32, i32, %struct.selabel_handle*, i8* }
%struct.selabel_handle = type opaque
%struct.mode_change = type { i8, i8, i32, i32, i32 }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }
%struct.stat = type { i64, i64, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, %struct.timespec, %struct.timespec, %struct.timespec, [2 x i32] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Usage: %s [OPTION]... DIRECTORY...\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Create the DIRECTORY(ies), if they do not already exist.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mkdir\00", align 1
@.str.4 = private unnamed_addr constant [75 x i8] c"  -m, --mode=MODE\0A         set file mode (as in chmod), not a=rwx - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [142 x i8] c"  -p, --parents\0A         no error if existing, make parent directories as needed,\0A         with their file modes unaffected by any -m option\0A\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"  -v, --verbose\0A         print a message for each created directory\0A\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"  -Z\0A         set SELinux security context of each created directory\0A         to the default type\0A\00", align 1
@.str.8 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"pm:vZ\00", align 1
@longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.15 = private unnamed_addr constant [21 x i8] c"created directory %s\00", align 1
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"invalid mode %s\00", align 1
@.str.22 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !74
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
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.53 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.54 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.56 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"parents\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), align 8, !dbg !172
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !177
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !182
@.str.31 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !184
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.35 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !220
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !190
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !216
@.str.1.41 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.43 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.42 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !218
@.str.4.36 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.37 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.38 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.65 = private unnamed_addr constant [15 x i8] c"cannot stat %s\00", align 1
@.str.2.66 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3.67 = private unnamed_addr constant [32 x i8] c"cannot change permissions of %s\00", align 1
@.str.4.68 = private unnamed_addr constant [42 x i8] c"cannot change owner and permissions of %s\00", align 1
@.str.5.69 = private unnamed_addr constant [27 x i8] c"cannot create directory %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !225
@.str.78 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.79 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !231
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
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.83, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.84, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.85, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.86, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.87, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.88, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.89, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.90, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.91, i32 0, i32 0), i8* null], align 8, !dbg !267
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !279
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !297
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !327
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !334
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !299
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !336
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !285
@.str.10.94 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.92 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.95 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.93 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !304
@.str.107 = private unnamed_addr constant [19 x i8] c"wd->val.child == 0\00", align 1
@.str.1.106 = private unnamed_addr constant [13 x i8] c"lib/savewd.c\00", align 1
@__PRETTY_FUNCTION__.savewd_chdir = private unnamed_addr constant [60 x i8] c"int savewd_chdir(struct savewd *, const char *, int, int *)\00", align 1
@.str.2.105 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.3.108 = private unnamed_addr constant [28 x i8] c"(*__errno_location ()) == 4\00", align 1
@__PRETTY_FUNCTION__.savewd_restore = private unnamed_addr constant [41 x i8] c"int savewd_restore(struct savewd *, int)\00", align 1
@.str.4.109 = private unnamed_addr constant [18 x i8] c"wd->val.child < 0\00", align 1
@__PRETTY_FUNCTION__.savewd_finish = private unnamed_addr constant [36 x i8] c"void savewd_finish(struct savewd *)\00", align 1
@.str.5.104 = private unnamed_addr constant [2 x i8] c".\00", align 1
@__PRETTY_FUNCTION__.savewd_save = private unnamed_addr constant [35 x i8] c"_Bool savewd_save(struct savewd *)\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.113 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.114 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.115 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.116 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.117 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.118 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.119 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.120 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.121 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.122 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.123 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.124 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.125 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.126 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.127 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.128 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.133 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.134 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.135 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.136 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.137 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.138 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.139 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !342
@exit_failure = dso_local global i32 1, align 4, !dbg !350
@.str.156 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.154 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.155 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.169 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.savewd zeroinitializer, align 4, !dbg !356
@.str.180 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.181 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec = internal unnamed_addr global i32 0, align 4, !dbg !372

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !533 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !537, metadata !DIExpression()), !dbg !538
  %3 = icmp eq i32 %0, 0, !dbg !539
  br i1 %3, label %9, label %4, !dbg !541

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !542, !tbaa !544
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #35, !dbg !542
  %7 = load i8*, i8** @program_name, align 8, !dbg !542, !tbaa !544
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #35, !dbg !542
  br label %60, !dbg !542

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #35, !dbg !548
  %11 = load i8*, i8** @program_name, align 8, !dbg !548, !tbaa !544
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #35, !dbg !548
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #35, !dbg !550
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !550, !tbaa !544
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !550
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #35, !dbg !551
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !551, !tbaa !544
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #35, !dbg !551
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #35, !dbg !555
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !555
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([142 x i8], [142 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #35, !dbg !556
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !556
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #35, !dbg !557
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !557
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([99 x i8], [99 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #35, !dbg !558
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !558
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #35, !dbg !559
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !559
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #35, !dbg !560
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !560
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #35, !dbg !561
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !561
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !562, metadata !DIExpression()) #35, !dbg !579
  %26 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !581
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %26) #35, !dbg !581
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !567, metadata !DIExpression()) #35, !dbg !582
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %26, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #35, !dbg !582
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !574, metadata !DIExpression()) #35, !dbg !579
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !575, metadata !DIExpression()) #35, !dbg !579
  %27 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !583
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !575, metadata !DIExpression()) #35, !dbg !579
  br label %28, !dbg !584

28:                                               ; preds = %33, %9
  %29 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), %9 ]
  %30 = phi %struct.infomap* [ %34, %33 ], [ %27, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !575, metadata !DIExpression()) #35, !dbg !579
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !592
  call void @llvm.dbg.value(metadata i8* %29, metadata !591, metadata !DIExpression()) #35, !dbg !592
  %31 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %29) #36, !dbg !594
  %32 = icmp eq i32 %31, 0, !dbg !595
  br i1 %32, label %38, label %33, !dbg !584

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 1, !dbg !596
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !575, metadata !DIExpression()) #35, !dbg !579
  %35 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 0, i32 0, !dbg !597
  %36 = load i8*, i8** %35, align 8, !dbg !597, !tbaa !598
  %37 = icmp eq i8* %36, null, !dbg !600
  br i1 %37, label %38, label %28, !dbg !601, !llvm.loop !602

38:                                               ; preds = %33, %28
  %39 = phi %struct.infomap* [ %30, %28 ], [ %34, %33 ]
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %39, i64 0, i32 1, !dbg !604
  %41 = load i8*, i8** %40, align 8, !dbg !604, !tbaa !606
  %42 = icmp eq i8* %41, null, !dbg !607
  %43 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %41, !dbg !608
  call void @llvm.dbg.value(metadata i8* %43, metadata !574, metadata !DIExpression()) #35, !dbg !579
  tail call void @emit_bug_reporting_address() #35, !dbg !609
  %44 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #35, !dbg !610
  call void @llvm.dbg.value(metadata i8* %44, metadata !577, metadata !DIExpression()) #35, !dbg !579
  %45 = icmp eq i8* %44, null, !dbg !611
  br i1 %45, label %53, label %46, !dbg !613

46:                                               ; preds = %38
  %47 = tail call i32 @strncmp(i8* noundef nonnull %44, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 noundef 3) #36, !dbg !614
  %48 = icmp eq i32 %47, 0, !dbg !614
  br i1 %48, label %53, label %49, !dbg !615

49:                                               ; preds = %46
  %50 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.54, i64 0, i64 0), i32 noundef 5) #35, !dbg !616
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !616, !tbaa !544
  %52 = tail call i32 @fputs_unlocked(i8* noundef %50, %struct._IO_FILE* noundef %51) #35, !dbg !616
  br label %53, !dbg !618

53:                                               ; preds = %38, %46, %49
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !591, metadata !DIExpression()) #35, !dbg !619
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !578, metadata !DIExpression()) #35, !dbg !579
  %54 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #35, !dbg !621
  %55 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %54, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #35, !dbg !621
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #35, !dbg !622
  %57 = icmp eq i8* %43, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !622
  %58 = select i1 %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), !dbg !622
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef %43, i8* noundef %58) #35, !dbg !622
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %26) #35, !dbg !623
  br label %60

60:                                               ; preds = %53, %4
  tail call void @exit(i32 noundef %0) #37, !dbg !624
  unreachable, !dbg !624
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !625 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !629 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !76 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !81, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i8* %0, metadata !82, metadata !DIExpression()), !dbg !634
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !635, !tbaa !636
  %3 = icmp eq i32 %2, -1, !dbg !638
  br i1 %3, label %4, label %16, !dbg !639

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)) #35, !dbg !640
  call void @llvm.dbg.value(metadata i8* %5, metadata !83, metadata !DIExpression()), !dbg !641
  %6 = icmp eq i8* %5, null, !dbg !642
  br i1 %6, label %14, label %7, !dbg !643

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !644, !tbaa !645
  %9 = icmp eq i8 %8, 0, !dbg !644
  br i1 %9, label %14, label %10, !dbg !646

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !585, metadata !DIExpression()) #35, !dbg !647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), metadata !591, metadata !DIExpression()) #35, !dbg !647
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #36, !dbg !649
  %12 = icmp eq i32 %11, 0, !dbg !650
  %13 = zext i1 %12 to i32, !dbg !646
  br label %14, !dbg !646

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !651, !tbaa !636
  br label %16, !dbg !652

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !653
  %18 = icmp eq i32 %17, 0, !dbg !653
  br i1 %18, label %22, label %19, !dbg !655

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !656, !tbaa !544
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !656
  br label %121, !dbg !658

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !86, metadata !DIExpression()), !dbg !634
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0)) #36, !dbg !659
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !660
  call void @llvm.dbg.value(metadata i8* %24, metadata !88, metadata !DIExpression()), !dbg !634
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #36, !dbg !661
  call void @llvm.dbg.value(metadata i8* %25, metadata !89, metadata !DIExpression()), !dbg !634
  %26 = icmp eq i8* %25, null, !dbg !662
  br i1 %26, label %53, label %27, !dbg !663

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !664
  br i1 %28, label %53, label %29, !dbg !665

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !90, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()), !dbg !666
  %30 = icmp ult i8* %24, %25, !dbg !667
  br i1 %30, label %31, label %53, !dbg !668

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #38, !dbg !634
  %33 = load i16*, i16** %32, align 8, !tbaa !544
  br label %34, !dbg !668

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !90, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata i64 %36, metadata !94, metadata !DIExpression()), !dbg !666
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !669
  call void @llvm.dbg.value(metadata i8* %37, metadata !90, metadata !DIExpression()), !dbg !666
  %38 = load i8, i8* %35, align 1, !dbg !669, !tbaa !645
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !669
  %41 = load i16, i16* %40, align 2, !dbg !669, !tbaa !670
  %42 = lshr i16 %41, 13, !dbg !672
  %43 = and i16 %42, 1, !dbg !672
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !673
  call void @llvm.dbg.value(metadata i64 %45, metadata !94, metadata !DIExpression()), !dbg !666
  %46 = icmp ult i8* %37, %25, !dbg !667
  %47 = icmp ult i64 %45, 2, !dbg !674
  %48 = select i1 %46, i1 %47, i1 false, !dbg !674
  br i1 %48, label %34, label %49, !dbg !668, !llvm.loop !675

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !676
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !678
  %52 = xor i1 %50, true, !dbg !678
  br label %53, !dbg !678

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !634
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !86, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i8* %54, metadata !89, metadata !DIExpression()), !dbg !634
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0)) #36, !dbg !679
  call void @llvm.dbg.value(metadata i64 %56, metadata !95, metadata !DIExpression()), !dbg !634
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !680
  call void @llvm.dbg.value(metadata i8* %57, metadata !96, metadata !DIExpression()), !dbg !634
  br label %58, !dbg !681

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !634
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !86, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.value(metadata i8* %59, metadata !96, metadata !DIExpression()), !dbg !634
  %61 = load i8, i8* %59, align 1, !dbg !682, !tbaa !645
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !683

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !684
  %64 = load i8, i8* %63, align 1, !dbg !687, !tbaa !645
  %65 = icmp ne i8 %64, 45, !dbg !688
  %66 = select i1 %65, i1 %60, i1 false, !dbg !689
  br label %67, !dbg !689

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !86, metadata !DIExpression()), !dbg !634
  %69 = tail call i16** @__ctype_b_loc() #38, !dbg !690
  %70 = load i16*, i16** %69, align 8, !dbg !690, !tbaa !544
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !690
  %73 = load i16, i16* %72, align 2, !dbg !690, !tbaa !670
  %74 = and i16 %73, 8192, !dbg !690
  %75 = icmp eq i16 %74, 0, !dbg !690
  br i1 %75, label %89, label %76, !dbg !692

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !693
  br i1 %77, label %91, label %78, !dbg !696

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !697
  %80 = load i8, i8* %79, align 1, !dbg !697, !tbaa !645
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !697
  %83 = load i16, i16* %82, align 2, !dbg !697, !tbaa !670
  %84 = and i16 %83, 8192, !dbg !697
  %85 = icmp eq i16 %84, 0, !dbg !697
  br i1 %85, label %86, label %91, !dbg !698

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !699
  br i1 %88, label %89, label %91, !dbg !699

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !701
  call void @llvm.dbg.value(metadata i8* %90, metadata !96, metadata !DIExpression()), !dbg !634
  br label %58, !dbg !681, !llvm.loop !702

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !704
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !704, !tbaa !544
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !704
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0), metadata !591, metadata !DIExpression()) #35, !dbg !705
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !707
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !709
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !711
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !713
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !715
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !717
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !719
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !721
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !585, metadata !DIExpression()) #35, !dbg !723
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !155, metadata !DIExpression()), !dbg !634
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i64 noundef 6) #36, !dbg !725
  %96 = icmp eq i32 %95, 0, !dbg !725
  br i1 %96, label %100, label %97, !dbg !727

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i64 noundef 9) #36, !dbg !728
  %99 = icmp eq i32 %98, 0, !dbg !728
  br i1 %99, label %100, label %103, !dbg !729

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !730
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.42, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #35, !dbg !730
  br label %106, !dbg !732

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !733
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #35, !dbg !733
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !544
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !735
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !736, !tbaa !544
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !736
  %111 = ptrtoint i8* %59 to i64, !dbg !737
  %112 = sub i64 %111, %92, !dbg !737
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !737, !tbaa !544
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !737
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !738, !tbaa !544
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !738
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !544
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !739
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !544
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !740
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !741
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
declare !dbg !742 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !746 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !750 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !756 {
  %3 = alloca %struct.mkdir_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !761, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8** %1, metadata !762, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8* null, metadata !763, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8* null, metadata !765, metadata !DIExpression()), !dbg !794
  %4 = bitcast %struct.mkdir_options* %3 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #35, !dbg !795
  call void @llvm.dbg.declare(metadata %struct.mkdir_options* %3, metadata !766, metadata !DIExpression()), !dbg !796
  %5 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 0, !dbg !797
  %6 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 3, !dbg !798
  store i32 511, i32* %6, align 8, !dbg !799, !tbaa !800
  %7 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 4, !dbg !802
  %8 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 6, !dbg !803
  %9 = bitcast i32* %7 to i8*, !dbg !804
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(12) %9, i8 0, i64 12, i1 false), !dbg !805
  %10 = load i8*, i8** %1, align 8, !dbg !804, !tbaa !544
  tail call void @set_program_name(i8* noundef %10) #35, !dbg !806
  %11 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)) #35, !dbg !807
  %12 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0)) #35, !dbg !808
  %13 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0)) #35, !dbg !809
  %14 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #35, !dbg !810
  br label %15, !dbg !811

15:                                               ; preds = %25, %2
  %16 = phi i1 [ false, %2 ], [ true, %25 ]
  %17 = phi i32 (i8*, i8*, i8*)* [ null, %2 ], [ @make_ancestor, %25 ]
  %18 = phi i8* [ null, %2 ], [ %21, %25 ]
  %19 = phi i8* [ null, %2 ], [ %24, %25 ]
  br label %20, !dbg !811

20:                                               ; preds = %15, %29
  %21 = phi i8* [ %18, %15 ], [ %30, %29 ]
  %22 = phi i8* [ %19, %15 ], [ %24, %29 ]
  br label %23, !dbg !811

23:                                               ; preds = %20, %27
  %24 = phi i8* [ %22, %20 ], [ %28, %27 ]
  br label %25, !dbg !811

25:                                               ; preds = %36, %23
  call void @llvm.dbg.value(metadata i8* %24, metadata !763, metadata !DIExpression()), !dbg !794
  call void @llvm.dbg.value(metadata i8* null, metadata !765, metadata !DIExpression()), !dbg !794
  %26 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #35, !dbg !812
  call void @llvm.dbg.value(metadata i32 %26, metadata !764, metadata !DIExpression()), !dbg !794
  switch i32 %26, label %42 [
    i32 -1, label %43
    i32 112, label %15
    i32 109, label %27
    i32 118, label %29
    i32 90, label %31
    i32 -2, label %37
    i32 -3, label %38
  ], !dbg !811, !llvm.loop !813

27:                                               ; preds = %25
  %28 = load i8*, i8** @optarg, align 8, !dbg !815, !tbaa !544
  call void @llvm.dbg.value(metadata i8* %28, metadata !763, metadata !DIExpression()), !dbg !794
  br label %23, !dbg !818, !llvm.loop !813

29:                                               ; preds = %25
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #35, !dbg !819
  br label %20, !dbg !820, !llvm.loop !813

31:                                               ; preds = %25
  %32 = load i8*, i8** @optarg, align 8, !dbg !821, !tbaa !544
  %33 = icmp eq i8* %32, null, !dbg !821
  br i1 %33, label %36, label %34, !dbg !825

34:                                               ; preds = %31
  %35 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #35, !dbg !826
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %35) #35, !dbg !826
  br label %36, !dbg !828

36:                                               ; preds = %34, %31
  br label %25, !dbg !794, !llvm.loop !813

37:                                               ; preds = %25
  tail call void @usage(i32 noundef 0) #39, !dbg !829
  unreachable, !dbg !829

38:                                               ; preds = %25
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !830, !tbaa !544
  %40 = load i8*, i8** @Version, align 8, !dbg !830, !tbaa !544
  %41 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #35, !dbg !830
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %39, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* noundef %40, i8* noundef %41, i8* noundef null) #35, !dbg !830
  tail call void @exit(i32 noundef 0) #37, !dbg !830
  unreachable, !dbg !830

42:                                               ; preds = %25
  tail call void @usage(i32 noundef 1) #39, !dbg !831
  unreachable, !dbg !831

43:                                               ; preds = %25
  store i8* %21, i8** %8, align 8, !dbg !832, !tbaa !833
  store i32 (i8*, i8*, i8*)* %17, i32 (i8*, i8*, i8*)** %5, align 8, !dbg !834, !tbaa !835
  %44 = load i32, i32* @optind, align 4, !dbg !836, !tbaa !636
  %45 = icmp eq i32 %44, %0, !dbg !838
  br i1 %45, label %46, label %48, !dbg !839

46:                                               ; preds = %43
  %47 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #35, !dbg !840
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %47) #35, !dbg !840
  tail call void @usage(i32 noundef 1) #39, !dbg !842
  unreachable, !dbg !842

48:                                               ; preds = %43
  %49 = icmp ne i8* %24, null
  %50 = select i1 %16, i1 true, i1 %49, !dbg !843
  br i1 %50, label %51, label %73, !dbg !843

51:                                               ; preds = %48
  %52 = tail call i32 @umask(i32 noundef 0) #35, !dbg !844
  call void @llvm.dbg.value(metadata i32 %52, metadata !785, metadata !DIExpression()), !dbg !845
  %53 = and i32 %52, -193, !dbg !846
  %54 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 1, !dbg !847
  store i32 %53, i32* %54, align 8, !dbg !848, !tbaa !849
  br i1 %49, label %55, label %67, !dbg !850

55:                                               ; preds = %51
  %56 = tail call noalias %struct.mode_change* @mode_compile(i8* noundef nonnull %24) #35, !dbg !851
  call void @llvm.dbg.value(metadata %struct.mode_change* %56, metadata !788, metadata !DIExpression()), !dbg !852
  %57 = icmp eq %struct.mode_change* %56, null, !dbg !853
  br i1 %57, label %58, label %61, !dbg !855

58:                                               ; preds = %55
  %59 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #35, !dbg !856
  %60 = tail call i8* @quote(i8* noundef nonnull %24) #35, !dbg !856
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %59, i8* noundef %60) #35, !dbg !856
  unreachable, !dbg !856

61:                                               ; preds = %55
  %62 = call i32 @mode_adjust(i32 noundef 511, i1 noundef true, i32 noundef %52, %struct.mode_change* noundef nonnull %56, i32* noundef nonnull %7) #36, !dbg !857
  store i32 %62, i32* %6, align 8, !dbg !858, !tbaa !800
  %63 = xor i32 %62, -1, !dbg !859
  %64 = and i32 %52, %63, !dbg !860
  %65 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !861
  store i32 %64, i32* %65, align 4, !dbg !862, !tbaa !863
  %66 = bitcast %struct.mode_change* %56 to i8*, !dbg !864
  call void @free(i8* noundef %66) #35, !dbg !865
  br label %69, !dbg !866

67:                                               ; preds = %51
  store i32 511, i32* %6, align 8, !dbg !867, !tbaa !800
  %68 = getelementptr inbounds %struct.mkdir_options, %struct.mkdir_options* %3, i64 0, i32 2, !dbg !869
  store i32 %52, i32* %68, align 4, !dbg !870, !tbaa !863
  br label %69

69:                                               ; preds = %67, %61
  %70 = phi i32 [ %52, %67 ], [ %64, %61 ], !dbg !871
  %71 = call i32 @umask(i32 noundef %70) #35, !dbg !872
  %72 = load i32, i32* @optind, align 4, !dbg !873, !tbaa !636
  br label %73, !dbg !874

73:                                               ; preds = %48, %69
  %74 = phi i32 [ %44, %48 ], [ %72, %69 ], !dbg !873
  %75 = sub nsw i32 %0, %74, !dbg !875
  %76 = sext i32 %74 to i64, !dbg !876
  %77 = getelementptr inbounds i8*, i8** %1, i64 %76, !dbg !876
  %78 = call i32 @savewd_process_files(i32 noundef %75, i8** noundef nonnull %77, i32 (i8*, %struct.savewd*, i8*)* noundef nonnull @process_dir, i8* noundef nonnull %4) #35, !dbg !877
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #35, !dbg !878
  ret i32 %78, !dbg !879
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: nounwind
declare !dbg !880 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !883 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !884 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @make_ancestor(i8* noundef %0, i8* nocapture noundef readonly %1, i8* nocapture noundef readonly %2) #12 !dbg !887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !889, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %1, metadata !890, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %2, metadata !891, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %2, metadata !892, metadata !DIExpression()), !dbg !899
  %4 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !900
  %5 = bitcast i8* %4 to %struct.selabel_handle**, !dbg !900
  %6 = load %struct.selabel_handle*, %struct.selabel_handle** %5, align 8, !dbg !900, !tbaa !902
  %7 = icmp eq %struct.selabel_handle* %6, null, !dbg !903
  br i1 %7, label %10, label %8, !dbg !904

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct.selabel_handle* undef, metadata !905, metadata !DIExpression()) #35, !dbg !913
  call void @llvm.dbg.value(metadata i8* undef, metadata !911, metadata !DIExpression()) #35, !dbg !913
  call void @llvm.dbg.value(metadata i32 undef, metadata !912, metadata !DIExpression()) #35, !dbg !913
  %9 = tail call i32* @__errno_location() #38, !dbg !915
  store i32 95, i32* %9, align 4, !dbg !916, !tbaa !636
  br label %10, !dbg !917

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !918
  %12 = bitcast i8* %11 to i32*, !dbg !918
  %13 = load i32, i32* %12, align 8, !dbg !918, !tbaa !849
  %14 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !920
  %15 = bitcast i8* %14 to i32*, !dbg !920
  %16 = load i32, i32* %15, align 4, !dbg !920, !tbaa !863
  %17 = icmp eq i32 %13, %16, !dbg !921
  br i1 %17, label %20, label %18, !dbg !922

18:                                               ; preds = %10
  %19 = tail call i32 @umask(i32 noundef %13) #35, !dbg !923
  br label %20, !dbg !923

20:                                               ; preds = %18, %10
  %21 = tail call i32 @mkdir(i8* noundef %1, i32 noundef 511) #35, !dbg !924
  call void @llvm.dbg.value(metadata i32 %21, metadata !895, metadata !DIExpression()), !dbg !899
  %22 = load i32, i32* %12, align 8, !dbg !925, !tbaa !849
  %23 = load i32, i32* %15, align 4, !dbg !926, !tbaa !863
  %24 = icmp eq i32 %22, %23, !dbg !927
  br i1 %24, label %29, label %25, !dbg !928

25:                                               ; preds = %20
  %26 = tail call i32* @__errno_location() #38, !dbg !929
  %27 = load i32, i32* %26, align 4, !dbg !929, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %27, metadata !896, metadata !DIExpression()), !dbg !930
  %28 = tail call i32 @umask(i32 noundef %23) #35, !dbg !931
  store i32 %27, i32* %26, align 4, !dbg !932, !tbaa !636
  br label %29, !dbg !933

29:                                               ; preds = %25, %20
  %30 = icmp eq i32 %21, 0, !dbg !934
  br i1 %30, label %31, label %42, !dbg !936

31:                                               ; preds = %29
  %32 = load i32, i32* %12, align 8, !dbg !937, !tbaa !849
  %33 = lshr i32 %32, 8, !dbg !939
  %34 = and i32 %33, 1, !dbg !939
  call void @llvm.dbg.value(metadata i32 %34, metadata !895, metadata !DIExpression()), !dbg !899
  call void @llvm.dbg.value(metadata i8* %0, metadata !940, metadata !DIExpression()) #35, !dbg !947
  call void @llvm.dbg.value(metadata i8* %2, metadata !945, metadata !DIExpression()) #35, !dbg !947
  call void @llvm.dbg.value(metadata i8* %2, metadata !946, metadata !DIExpression()) #35, !dbg !947
  %35 = getelementptr inbounds i8, i8* %2, i64 32, !dbg !949
  %36 = bitcast i8* %35 to i8**, !dbg !949
  %37 = load i8*, i8** %36, align 8, !dbg !949, !tbaa !833
  %38 = icmp eq i8* %37, null, !dbg !951
  br i1 %38, label %42, label %39, !dbg !952

39:                                               ; preds = %31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !953, !tbaa !544
  %41 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %0) #35, !dbg !954
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %40, i8* noundef nonnull %37, i8* noundef %41) #35, !dbg !955
  br label %42, !dbg !955

42:                                               ; preds = %39, %31, %29
  %43 = phi i32 [ %21, %29 ], [ %34, %31 ], [ %34, %39 ], !dbg !899
  call void @llvm.dbg.value(metadata i32 %43, metadata !895, metadata !DIExpression()), !dbg !899
  ret i32 %43, !dbg !956
}

; Function Attrs: nounwind
declare !dbg !957 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !963 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal i32 @process_dir(i8* noundef %0, %struct.savewd* noundef %1, i8* noundef %2) #12 !dbg !967 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !972, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !973, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i8* %2, metadata !974, metadata !DIExpression()), !dbg !977
  call void @llvm.dbg.value(metadata i8* %2, metadata !975, metadata !DIExpression()), !dbg !977
  %4 = getelementptr inbounds i8, i8* %2, i64 24, !dbg !978
  %5 = bitcast i8* %4 to %struct.selabel_handle**, !dbg !978
  %6 = load %struct.selabel_handle*, %struct.selabel_handle** %5, align 8, !dbg !978, !tbaa !902
  %7 = icmp ne %struct.selabel_handle* %6, null, !dbg !980
  %8 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**
  %9 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %8, align 8, !dbg !977, !tbaa !835
  %10 = icmp eq i32 (i8*, i8*, i8*)* %9, null
  %11 = select i1 %7, i1 %10, i1 false, !dbg !981
  call void @llvm.dbg.value(metadata i8* %2, metadata !975, metadata !DIExpression()), !dbg !977
  br i1 %11, label %12, label %14, !dbg !981

12:                                               ; preds = %3
  call void @llvm.dbg.value(metadata %struct.selabel_handle* undef, metadata !905, metadata !DIExpression()) #35, !dbg !982
  call void @llvm.dbg.value(metadata i8* undef, metadata !911, metadata !DIExpression()) #35, !dbg !982
  call void @llvm.dbg.value(metadata i32 undef, metadata !912, metadata !DIExpression()) #35, !dbg !982
  %13 = tail call i32* @__errno_location() #38, !dbg !986
  store i32 95, i32* %13, align 4, !dbg !987, !tbaa !636
  br label %14, !dbg !988

14:                                               ; preds = %3, %12
  %15 = phi i32 (i8*, i8*, i8*)* [ null, %12 ], [ %9, %3 ], !dbg !989
  %16 = bitcast i8* %2 to i32 (i8*, i8*, i8*)**, !dbg !989
  %17 = getelementptr inbounds i8, i8* %2, i64 16, !dbg !990
  %18 = bitcast i8* %17 to i32*, !dbg !990
  %19 = load i32, i32* %18, align 8, !dbg !990, !tbaa !800
  %20 = getelementptr inbounds i8, i8* %2, i64 20, !dbg !991
  %21 = bitcast i8* %20 to i32*, !dbg !991
  %22 = load i32, i32* %21, align 4, !dbg !991, !tbaa !992
  %23 = tail call i1 @make_dir_parents(i8* noundef %0, %struct.savewd* noundef %1, i32 (i8*, i8*, i8*)* noundef %15, i8* noundef nonnull %2, i32 noundef %19, void (i8*, i8*)* noundef nonnull @announce_mkdir, i32 noundef %22, i32 noundef -1, i32 noundef -1, i1 noundef true) #35, !dbg !993
  call void @llvm.dbg.value(metadata i32 undef, metadata !976, metadata !DIExpression()), !dbg !977
  br i1 %23, label %24, label %32, !dbg !994

24:                                               ; preds = %14
  %25 = load %struct.selabel_handle*, %struct.selabel_handle** %5, align 8, !dbg !996, !tbaa !902
  %26 = icmp eq %struct.selabel_handle* %25, null, !dbg !997
  br i1 %26, label %32, label %27, !dbg !998

27:                                               ; preds = %24
  %28 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %16, align 8, !dbg !999, !tbaa !835
  %29 = icmp eq i32 (i8*, i8*, i8*)* %28, null, !dbg !1000
  br i1 %29, label %32, label %30, !dbg !1001

30:                                               ; preds = %27
  call void @llvm.dbg.value(metadata %struct.selabel_handle* undef, metadata !1002, metadata !DIExpression()) #35, !dbg !1009
  call void @llvm.dbg.value(metadata i8* undef, metadata !1007, metadata !DIExpression()) #35, !dbg !1009
  call void @llvm.dbg.value(metadata i1 undef, metadata !1008, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !1009
  %31 = tail call i32* @__errno_location() #38, !dbg !1013
  store i32 95, i32* %31, align 4, !dbg !1014, !tbaa !636
  br label %32, !dbg !1015

32:                                               ; preds = %30, %27, %24, %14
  %33 = xor i1 %23, true, !dbg !993
  %34 = zext i1 %33 to i32, !dbg !993
  call void @llvm.dbg.value(metadata i32 %34, metadata !976, metadata !DIExpression()), !dbg !977
  ret i32 %34, !dbg !1016
}

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal void @announce_mkdir(i8* noundef %0, i8* nocapture noundef readonly %1) #12 !dbg !941 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !940, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %1, metadata !945, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i8* %1, metadata !946, metadata !DIExpression()), !dbg !1017
  %3 = getelementptr inbounds i8, i8* %1, i64 32, !dbg !1018
  %4 = bitcast i8* %3 to i8**, !dbg !1018
  %5 = load i8*, i8** %4, align 8, !dbg !1018, !tbaa !833
  %6 = icmp eq i8* %5, null, !dbg !1019
  br i1 %6, label %10, label %7, !dbg !1020

7:                                                ; preds = %2
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1021, !tbaa !544
  %9 = tail call i8* @quotearg_style(i32 noundef 4, i8* noundef %0) #35, !dbg !1022
  tail call void (%struct._IO_FILE*, i8*, ...) @prog_fprintf(%struct._IO_FILE* noundef %8, i8* noundef nonnull %5, i8* noundef %9) #35, !dbg !1023
  br label %10, !dbg !1023

10:                                               ; preds = %7, %2
  ret void, !dbg !1024
}

; Function Attrs: nofree nounwind
declare !dbg !1025 noundef i32 @mkdir(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @prog_fprintf(%struct._IO_FILE* noundef nonnull %0, i8* noundef nonnull %1, ...) local_unnamed_addr #12 !dbg !1028 {
  %3 = alloca %"struct.std::__va_list", align 8
  %4 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1066, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i8* %1, metadata !1067, metadata !DIExpression()), !dbg !1080
  %5 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1081
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #35, !dbg !1081
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1068, metadata !DIExpression()), !dbg !1082
  %6 = load i8*, i8** @program_name, align 8, !dbg !1083, !tbaa !544
  %7 = tail call i32 @fputs_unlocked(i8* noundef %6, %struct._IO_FILE* noundef nonnull %0), !dbg !1083
  %8 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), %struct._IO_FILE* noundef nonnull %0), !dbg !1084
  call void @llvm.va_start(i8* nonnull %5), !dbg !1085
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1086, metadata !DIExpression()) #35, !dbg !1095
  call void @llvm.dbg.value(metadata i8* %1, metadata !1093, metadata !DIExpression()) #35, !dbg !1095
  %9 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1097
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1097, !noalias !1098
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !1097
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef nonnull %0, i32 noundef 1, i8* noundef nonnull %1, %"struct.std::__va_list"* noundef nonnull %3) #35, !dbg !1097
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1097, !noalias !1098
  call void @llvm.va_end(i8* nonnull %5), !dbg !1102
  call void @llvm.dbg.value(metadata i32 10, metadata !1103, metadata !DIExpression()) #35, !dbg !1110
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1109, metadata !DIExpression()) #35, !dbg !1110
  %11 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1112
  %12 = load i8*, i8** %11, align 8, !dbg !1112, !tbaa !1113
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1112
  %14 = load i8*, i8** %13, align 8, !dbg !1112, !tbaa !1116
  %15 = icmp ult i8* %12, %14, !dbg !1112
  br i1 %15, label %18, label %16, !dbg !1112, !prof !1117

16:                                               ; preds = %2
  %17 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %0, i32 noundef 10) #35, !dbg !1112
  br label %20, !dbg !1112

18:                                               ; preds = %2
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1112
  store i8* %19, i8** %11, align 8, !dbg !1112, !tbaa !1113
  store i8 10, i8* %12, align 1, !dbg !1112, !tbaa !645
  br label %20, !dbg !1112

20:                                               ; preds = %16, %18
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #35, !dbg !1118
  ret void, !dbg !1118
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #15

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #15

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #16 !dbg !1119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1121, metadata !DIExpression()), !dbg !1122
  store i8* %0, i8** @file_name, align 8, !dbg !1123, !tbaa !544
  ret void, !dbg !1124
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #16 !dbg !1125 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1129, metadata !DIExpression()), !dbg !1130
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1131, !tbaa !1132
  ret void, !dbg !1134
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !1135 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1140, !tbaa !544
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #35, !dbg !1141
  %3 = icmp eq i32 %2, 0, !dbg !1142
  br i1 %3, label %22, label %4, !dbg !1143

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1144, !tbaa !1132, !range !1145
  %6 = icmp eq i8 %5, 0, !dbg !1144
  br i1 %6, label %11, label %7, !dbg !1146

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #38, !dbg !1147
  %9 = load i32, i32* %8, align 4, !dbg !1147, !tbaa !636
  %10 = icmp eq i32 %9, 32, !dbg !1148
  br i1 %10, label %22, label %11, !dbg !1149

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.32, i64 0, i64 0), i32 noundef 5) #35, !dbg !1150
  call void @llvm.dbg.value(metadata i8* %12, metadata !1137, metadata !DIExpression()), !dbg !1151
  %13 = load i8*, i8** @file_name, align 8, !dbg !1152, !tbaa !544
  %14 = icmp eq i8* %13, null, !dbg !1152
  %15 = tail call i32* @__errno_location() #38, !dbg !1154
  %16 = load i32, i32* %15, align 4, !dbg !1154, !tbaa !636
  br i1 %14, label %19, label %17, !dbg !1155

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #35, !dbg !1156
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.33, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #35, !dbg !1156
  br label %20, !dbg !1156

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.34, i64 0, i64 0), i8* noundef %12) #35, !dbg !1157
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1158, !tbaa !636
  tail call void @_exit(i32 noundef %21) #37, !dbg !1159
  unreachable, !dbg !1159

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1160, !tbaa !544
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #35, !dbg !1162
  %25 = icmp eq i32 %24, 0, !dbg !1163
  br i1 %25, label %28, label %26, !dbg !1164

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1165, !tbaa !636
  tail call void @_exit(i32 noundef %27) #37, !dbg !1166
  unreachable, !dbg !1166

28:                                               ; preds = %22
  ret void, !dbg !1167
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #18 !dbg !1168 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1172, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i32 %1, metadata !1173, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8* %2, metadata !1174, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1175, metadata !DIExpression()), !dbg !1177
  tail call fastcc void @flush_stdout(), !dbg !1178
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1179, !tbaa !544
  %7 = icmp eq void ()* %6, null, !dbg !1179
  br i1 %7, label %9, label %8, !dbg !1181

8:                                                ; preds = %4
  tail call void %6() #35, !dbg !1182
  br label %13, !dbg !1182

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1183, !tbaa !544
  %11 = tail call i8* @getprogname() #36, !dbg !1183
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8* noundef %11) #35, !dbg !1183
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1185
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1185
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1185
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1185, !tbaa.struct !1186
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1185
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #35, !dbg !1185
  ret void, !dbg !1187
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !1188 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1190, metadata !DIExpression()), !dbg !1191
  call void @llvm.dbg.value(metadata i32 1, metadata !1192, metadata !DIExpression()) #35, !dbg !1197
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #35, !dbg !1200
  %2 = icmp slt i32 %1, 0, !dbg !1201
  br i1 %2, label %6, label %3, !dbg !1202

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1203, !tbaa !544
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #35, !dbg !1203
  br label %6, !dbg !1203

6:                                                ; preds = %3, %0
  ret void, !dbg !1204
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !1205 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1207, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i32 %1, metadata !1208, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8* %2, metadata !1209, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1210, metadata !DIExpression()), !dbg !1212
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1213, !tbaa !544
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1214
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1215, metadata !DIExpression()) #35, !dbg !1257
  call void @llvm.dbg.value(metadata i8* %2, metadata !1255, metadata !DIExpression()) #35, !dbg !1257
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1259
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1259, !noalias !1260
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1259
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #35, !dbg !1259
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1259, !noalias !1260
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1264, !tbaa !636
  %12 = add i32 %11, 1, !dbg !1264
  store i32 %12, i32* @error_message_count, align 4, !dbg !1264, !tbaa !636
  %13 = icmp eq i32 %1, 0, !dbg !1265
  br i1 %13, label %24, label %14, !dbg !1267

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1268, metadata !DIExpression()) #35, !dbg !1276
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1278
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1278
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1272, metadata !DIExpression()) #35, !dbg !1279
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #35, !dbg !1280
  call void @llvm.dbg.value(metadata i8* %16, metadata !1271, metadata !DIExpression()) #35, !dbg !1276
  %17 = icmp eq i8* %16, null, !dbg !1281
  br i1 %17, label %18, label %20, !dbg !1283

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.36, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.37, i64 0, i64 0), i32 noundef 5) #35, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %19, metadata !1271, metadata !DIExpression()) #35, !dbg !1276
  br label %20, !dbg !1285

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1276
  call void @llvm.dbg.value(metadata i8* %21, metadata !1271, metadata !DIExpression()) #35, !dbg !1276
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1286, !tbaa !544
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.38, i64 0, i64 0), i8* noundef %21) #35, !dbg !1286
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #35, !dbg !1287
  br label %24, !dbg !1288

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1289, !tbaa !544
  call void @llvm.dbg.value(metadata i32 10, metadata !1290, metadata !DIExpression()) #35, !dbg !1296
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1295, metadata !DIExpression()) #35, !dbg !1296
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1298
  %27 = load i8*, i8** %26, align 8, !dbg !1298, !tbaa !1113
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1298
  %29 = load i8*, i8** %28, align 8, !dbg !1298, !tbaa !1116
  %30 = icmp ult i8* %27, %29, !dbg !1298
  br i1 %30, label %33, label %31, !dbg !1298, !prof !1117

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #35, !dbg !1298
  br label %35, !dbg !1298

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1298
  store i8* %34, i8** %26, align 8, !dbg !1298, !tbaa !1113
  store i8 10, i8* %27, align 1, !dbg !1298, !tbaa !645
  br label %35, !dbg !1298

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1299, !tbaa !544
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #35, !dbg !1299
  %38 = icmp eq i32 %0, 0, !dbg !1300
  br i1 %38, label %40, label %39, !dbg !1302

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #37, !dbg !1303
  unreachable, !dbg !1303

40:                                               ; preds = %35
  ret void, !dbg !1304
}

; Function Attrs: nounwind
declare !dbg !1305 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1309 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1312 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1316 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1320, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i32 %1, metadata !1321, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i8* %2, metadata !1322, metadata !DIExpression()), !dbg !1324
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1325
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1325
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1323, metadata !DIExpression()), !dbg !1326
  call void @llvm.va_start(i8* nonnull %6), !dbg !1327
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1328
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1328
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1328, !tbaa.struct !1186
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #40, !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !1328
  call void @llvm.va_end(i8* nonnull %6), !dbg !1329
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #35, !dbg !1330
  ret void, !dbg !1330
}

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #18 !dbg !192 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !210, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %1, metadata !211, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %2, metadata !212, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i32 %3, metadata !213, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.value(metadata i8* %4, metadata !214, metadata !DIExpression()), !dbg !1331
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !215, metadata !DIExpression()), !dbg !1332
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1333, !tbaa !636
  %9 = icmp eq i32 %8, 0, !dbg !1333
  br i1 %9, label %24, label %10, !dbg !1335

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1336, !tbaa !636
  %12 = icmp eq i32 %11, %3, !dbg !1339
  br i1 %12, label %13, label %23, !dbg !1340

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1341, !tbaa !544
  %15 = icmp eq i8* %14, %2, !dbg !1342
  br i1 %15, label %39, label %16, !dbg !1343

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1344
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1345
  br i1 %19, label %20, label %23, !dbg !1345

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #36, !dbg !1346
  %22 = icmp eq i32 %21, 0, !dbg !1347
  br i1 %22, label %39, label %23, !dbg !1348

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1349, !tbaa !544
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1350, !tbaa !636
  br label %24, !dbg !1351

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1352
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1353, !tbaa !544
  %26 = icmp eq void ()* %25, null, !dbg !1353
  br i1 %26, label %28, label %27, !dbg !1355

27:                                               ; preds = %24
  tail call void %25() #35, !dbg !1356
  br label %32, !dbg !1356

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1357, !tbaa !544
  %30 = tail call i8* @getprogname() #36, !dbg !1357
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.41, i64 0, i64 0), i8* noundef %30) #35, !dbg !1357
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1359, !tbaa !544
  %34 = icmp eq i8* %2, null, !dbg !1359
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.42, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.43, i64 0, i64 0), !dbg !1359
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #35, !dbg !1359
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1360
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1360
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1360
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1360, !tbaa.struct !1186
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1360
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #35, !dbg !1360
  br label %39, !dbg !1361

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1361
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1362 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1366, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %1, metadata !1367, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %2, metadata !1368, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %3, metadata !1369, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8* %4, metadata !1370, metadata !DIExpression()), !dbg !1372
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1373
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1373
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1371, metadata !DIExpression()), !dbg !1374
  call void @llvm.va_start(i8* nonnull %8), !dbg !1375
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1376
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1376
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1376, !tbaa.struct !1186
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #40, !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #35, !dbg !1376
  call void @llvm.va_end(i8* nonnull %8), !dbg !1377
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !1378
  ret void, !dbg !1378
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #19 !dbg !1379 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1382, !tbaa !544
  ret i8* %1, !dbg !1383
}

; Function Attrs: nounwind uwtable
define dso_local i1 @make_dir_parents(i8* noundef %0, %struct.savewd* noundef %1, i32 (i8*, i8*, i8*)* noundef %2, i8* noundef %3, i32 noundef %4, void (i8*, i8*)* nocapture noundef readonly %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef %9) local_unnamed_addr #12 !dbg !1384 {
  %11 = alloca %struct.stat, align 8
  %12 = alloca [2 x i32], align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1390, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1391, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !1392, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i8* %3, metadata !1393, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %4, metadata !1394, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata void (i8*, i8*)* %5, metadata !1395, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %6, metadata !1396, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %7, metadata !1397, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %8, metadata !1398, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i1 %9, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1459
  %13 = load i8, i8* %0, align 1, !dbg !1460, !tbaa !645
  %14 = icmp eq i8 %13, 47, !dbg !1460
  br i1 %14, label %23, label %15, !dbg !1460

15:                                               ; preds = %10
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !1461, metadata !DIExpression()), !dbg !1468
  %16 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 0, !dbg !1470
  %17 = load i32, i32* %16, align 4, !dbg !1470, !tbaa !1471
  %18 = icmp ult i32 %17, 4, !dbg !1473
  br i1 %18, label %23, label %19, !dbg !1474

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.savewd, %struct.savewd* %1, i64 0, i32 1, i32 0, !dbg !1475
  %21 = load i32, i32* %20, align 4, !dbg !1475, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %21, metadata !1400, metadata !DIExpression()), !dbg !1459
  %22 = icmp eq i32 %21, 0, !dbg !1476
  br i1 %22, label %23, label %123, !dbg !1477

23:                                               ; preds = %15, %10, %19
  call void @llvm.dbg.value(metadata i32 2, metadata !1401, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i64 0, metadata !1404, metadata !DIExpression()), !dbg !1478
  %24 = icmp eq i32 (i8*, i8*, i8*)* %2, null, !dbg !1479
  br i1 %24, label %33, label %25, !dbg !1481

25:                                               ; preds = %23
  %26 = tail call i64 @mkancesdirs(i8* noundef nonnull %0, %struct.savewd* noundef %1, i32 (i8*, i8*, i8*)* noundef nonnull %2, i8* noundef %3) #35, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %26, metadata !1404, metadata !DIExpression()), !dbg !1478
  %27 = icmp slt i64 %26, 0, !dbg !1484
  br i1 %27, label %28, label %33, !dbg !1486

28:                                               ; preds = %25
  %29 = icmp eq i64 %26, -1, !dbg !1487
  br i1 %29, label %30, label %127, !dbg !1490

30:                                               ; preds = %28
  %31 = tail call i32* @__errno_location() #38, !dbg !1491
  %32 = load i32, i32* %31, align 4, !dbg !1491, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %32, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i64 -1, metadata !1404, metadata !DIExpression()), !dbg !1478
  br label %123, !dbg !1492

33:                                               ; preds = %25, %23
  %34 = phi i64 [ 0, %23 ], [ %26, %25 ]
  call void @llvm.dbg.value(metadata i32 %32, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i64 -1, metadata !1404, metadata !DIExpression()), !dbg !1478
  %35 = and i32 %8, %7, !dbg !1493
  %36 = icmp eq i32 %35, -1, !dbg !1493
  call void @llvm.dbg.value(metadata i1 %36, metadata !1405, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  %37 = and i32 %6, 3072, !dbg !1495
  %38 = and i32 %4, 512, !dbg !1496
  %39 = or i32 %37, %38, !dbg !1497
  call void @llvm.dbg.value(metadata i1 undef, metadata !1408, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1494
  call void @llvm.dbg.value(metadata i32 %4, metadata !1409, metadata !DIExpression()), !dbg !1494
  %40 = and i32 %4, -64, !dbg !1498
  %41 = icmp eq i32 %39, 0, !dbg !1498
  %42 = and i32 %4, -19, !dbg !1498
  %43 = select i1 %41, i32 %4, i32 %42, !dbg !1498
  %44 = select i1 %36, i32 %43, i32 %40, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %44, metadata !1409, metadata !DIExpression()), !dbg !1494
  %45 = getelementptr inbounds i8, i8* %0, i64 %34, !dbg !1499
  %46 = tail call i32 @mkdir(i8* noundef nonnull %45, i32 noundef %44) #35, !dbg !1500
  %47 = icmp eq i32 %46, 0, !dbg !1501
  br i1 %47, label %48, label %54, !dbg !1502

48:                                               ; preds = %33
  %49 = and i32 %4, 511, !dbg !1503
  %50 = and i32 %49, %6, !dbg !1504
  call void @llvm.dbg.value(metadata i1 undef, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1505
  tail call void %5(i8* noundef nonnull %0, i8* noundef %3) #35, !dbg !1506
  %51 = or i32 %39, %50, !dbg !1507
  %52 = icmp eq i32 %51, 0, !dbg !1507
  %53 = and i1 %52, %36, !dbg !1507
  call void @llvm.dbg.value(metadata i32 %56, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 2, metadata !1401, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 -1, metadata !1409, metadata !DIExpression()), !dbg !1494
  call void @llvm.dbg.value(metadata i1 %9, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1459
  br i1 %53, label %127, label %79, !dbg !1508

54:                                               ; preds = %33
  %55 = tail call i32* @__errno_location() #38, !dbg !1509
  %56 = load i32, i32* %55, align 4, !dbg !1509, !tbaa !636
  call void @llvm.dbg.value(metadata i1 %9, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1459
  call void @llvm.dbg.value(metadata i32 %56, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.dbg.value(metadata i32 2, metadata !1401, metadata !DIExpression()), !dbg !1478
  call void @llvm.dbg.value(metadata i32 -1, metadata !1409, metadata !DIExpression()), !dbg !1494
  switch i32 %56, label %57 [
    i32 20, label %123
    i32 2, label %123
  ], !dbg !1511

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i1 %9, metadata !1399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1459
  br i1 %9, label %58, label %79, !dbg !1508

58:                                               ; preds = %57
  %59 = icmp eq i32 %56, 0, !dbg !1512
  br i1 %59, label %127, label %60, !dbg !1514

60:                                               ; preds = %58
  br i1 %24, label %123, label %61, !dbg !1515

61:                                               ; preds = %60
  %62 = bitcast %struct.stat* %11 to i8*, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %62) #35, !dbg !1516
  call void @llvm.dbg.declare(metadata %struct.stat* %11, metadata !1413, metadata !DIExpression()), !dbg !1517
  %63 = call i32 @stat(i8* noundef nonnull %45, %struct.stat* noundef nonnull %11) #35, !dbg !1518
  %64 = icmp eq i32 %63, 0, !dbg !1520
  br i1 %64, label %65, label %70, !dbg !1521

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %11, i64 0, i32 2, !dbg !1522
  %67 = load i32, i32* %66, align 8, !dbg !1522, !tbaa !1525
  %68 = and i32 %67, 61440, !dbg !1522
  %69 = icmp eq i32 %68, 16384, !dbg !1522
  br i1 %69, label %77, label %78, !dbg !1528

70:                                               ; preds = %61
  %71 = icmp eq i32 %56, 17, !dbg !1529
  br i1 %71, label %72, label %78, !dbg !1531

72:                                               ; preds = %70
  %73 = load i32, i32* %55, align 4, !dbg !1532, !tbaa !636
  switch i32 %73, label %74 [
    i32 2, label %78
    i32 20, label %78
  ], !dbg !1533

74:                                               ; preds = %72
  %75 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.65, i64 0, i64 0), i32 noundef 5) #35, !dbg !1534
  %76 = tail call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1534
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %73, i8* noundef %75, i8* noundef %76) #35, !dbg !1534
  br label %77, !dbg !1536

77:                                               ; preds = %74, %65
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %62) #35, !dbg !1537
  br label %127

78:                                               ; preds = %65, %70, %72, %72
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %62) #35, !dbg !1537
  br label %123

79:                                               ; preds = %48, %57
  %80 = phi i32 [ %44, %48 ], [ -1, %57 ]
  %81 = phi i32 [ 3, %48 ], [ 2, %57 ]
  %82 = phi i32 [ 0, %48 ], [ %56, %57 ]
  %83 = bitcast [2 x i32]* %12 to i8*, !dbg !1538
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %83) #35, !dbg !1538
  call void @llvm.dbg.declare(metadata [2 x i32]* %12, metadata !1451, metadata !DIExpression()), !dbg !1539
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0, !dbg !1540
  %85 = call i32 @savewd_chdir(%struct.savewd* noundef %1, i8* noundef nonnull %45, i32 noundef %81, i32* noundef nonnull %84) #35, !dbg !1541
  call void @llvm.dbg.value(metadata i32 %85, metadata !1453, metadata !DIExpression()), !dbg !1542
  %86 = icmp slt i32 %85, -1, !dbg !1543
  br i1 %86, label %121, label %87, !dbg !1544

87:                                               ; preds = %79
  %88 = icmp eq i32 %85, 0, !dbg !1545
  br i1 %88, label %93, label %89, !dbg !1546

89:                                               ; preds = %87
  %90 = tail call i32* @__errno_location() #38, !dbg !1547
  %91 = load i32, i32* %90, align 4, !dbg !1547, !tbaa !636
  %92 = icmp eq i32 %91, 13, !dbg !1548
  br i1 %92, label %93, label %112, !dbg !1549

93:                                               ; preds = %89, %87
  %94 = phi i8* [ %45, %89 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.66, i64 0, i64 0), %87 ], !dbg !1550
  call void @llvm.dbg.value(metadata i1 %88, metadata !1454, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1550
  call void @llvm.dbg.value(metadata i8* %94, metadata !1458, metadata !DIExpression()), !dbg !1550
  %95 = load i32, i32* %84, align 4, !dbg !1551, !tbaa !636
  %96 = call i32 @dirchownmod(i32 noundef %95, i8* noundef %94, i32 noundef %80, i32 noundef %7, i32 noundef %8, i32 noundef %4, i32 noundef %6) #35, !dbg !1553
  %97 = icmp eq i32 %96, 0, !dbg !1554
  br i1 %97, label %121, label %98, !dbg !1555

98:                                               ; preds = %93
  %99 = icmp eq i32 %82, 0, !dbg !1556
  br i1 %99, label %100, label %102, !dbg !1558

100:                                              ; preds = %98
  %101 = tail call i32* @__errno_location() #38, !dbg !1559
  br label %106, !dbg !1558

102:                                              ; preds = %98
  br i1 %24, label %119, label %103, !dbg !1561

103:                                              ; preds = %102
  %104 = tail call i32* @__errno_location() #38, !dbg !1562
  %105 = load i32, i32* %104, align 4, !dbg !1562, !tbaa !636
  switch i32 %105, label %106 [
    i32 2, label %119
    i32 20, label %119
  ], !dbg !1563

106:                                              ; preds = %100, %103
  %107 = phi i32* [ %101, %100 ], [ %104, %103 ], !dbg !1559
  %108 = load i32, i32* %107, align 4, !dbg !1559, !tbaa !636
  %109 = select i1 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3.67, i64 0, i64 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4.68, i64 0, i64 0), !dbg !1559
  %110 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef %109, i32 noundef 5) #35, !dbg !1559
  %111 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1559
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %108, i8* noundef %110, i8* noundef %111) #35, !dbg !1559
  br label %121, !dbg !1564

112:                                              ; preds = %89
  %113 = icmp eq i32 %82, 0, !dbg !1565
  %114 = select i1 %113, i32 %91, i32 %82, !dbg !1568
  call void @llvm.dbg.value(metadata i32 %114, metadata !1400, metadata !DIExpression()), !dbg !1459
  %115 = load i32, i32* %84, align 4, !dbg !1569, !tbaa !636
  %116 = icmp sgt i32 %115, -1, !dbg !1571
  br i1 %116, label %117, label %119, !dbg !1572

117:                                              ; preds = %112
  %118 = call i32 @close(i32 noundef %115) #35, !dbg !1573
  br label %119, !dbg !1573

119:                                              ; preds = %117, %112, %103, %103, %102
  %120 = phi i32 [ %114, %112 ], [ %114, %117 ], [ %82, %103 ], [ %82, %103 ], [ %82, %102 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #35, !dbg !1574
  br label %123

121:                                              ; preds = %106, %93, %79
  %122 = phi i1 [ true, %79 ], [ false, %106 ], [ true, %93 ], !dbg !1575
  call void @llvm.dbg.value(metadata i32 undef, metadata !1400, metadata !DIExpression()), !dbg !1459
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %83) #35, !dbg !1574
  br label %127

123:                                              ; preds = %60, %54, %54, %78, %119, %30, %19
  %124 = phi i32 [ %21, %19 ], [ %32, %30 ], [ %120, %119 ], [ %56, %54 ], [ %56, %60 ], [ %56, %78 ], [ %56, %54 ], !dbg !1576
  call void @llvm.dbg.value(metadata i32 %124, metadata !1400, metadata !DIExpression()), !dbg !1459
  %125 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.64, i64 0, i64 0), i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5.69, i64 0, i64 0), i32 noundef 5) #35, !dbg !1577
  %126 = call i8* @quote(i8* noundef nonnull %0) #35, !dbg !1577
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %124, i8* noundef %125, i8* noundef %126) #35, !dbg !1577
  br label %127, !dbg !1578

127:                                              ; preds = %48, %58, %77, %121, %28, %123
  %128 = phi i1 [ false, %123 ], [ %64, %77 ], [ true, %58 ], [ %122, %121 ], [ true, %28 ], [ true, %48 ], !dbg !1459
  ret i1 %128, !dbg !1579
}

; Function Attrs: nofree nounwind
declare !dbg !1580 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

declare !dbg !1585 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) local_unnamed_addr #12 !dbg !1587 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1599, metadata !DIExpression()), !dbg !1629
  %2 = load i8, i8* %0, align 1, !dbg !1630, !tbaa !645
  %3 = and i8 %2, -8, !dbg !1631
  %4 = icmp eq i8 %3, 48, !dbg !1631
  br i1 %4, label %5, label %39, !dbg !1631

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1632
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1634
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1634
  call void @llvm.dbg.value(metadata i8* %8, metadata !1600, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %7, metadata !1603, metadata !DIExpression()), !dbg !1634
  %9 = shl i32 %7, 3, !dbg !1635
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1636
  call void @llvm.dbg.value(metadata i8* %10, metadata !1600, metadata !DIExpression()), !dbg !1634
  %11 = zext i8 %6 to i32, !dbg !1632
  %12 = add i32 %9, -48, !dbg !1637
  %13 = add i32 %12, %11, !dbg !1638
  call void @llvm.dbg.value(metadata i32 %13, metadata !1603, metadata !DIExpression()), !dbg !1634
  %14 = icmp ugt i32 %13, 4095, !dbg !1639
  br i1 %14, label %142, label %15, !dbg !1641

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1642, !tbaa !645
  %17 = and i8 %16, -8, !dbg !1643
  %18 = icmp eq i8 %17, 48, !dbg !1643
  br i1 %18, label %5, label %19, !dbg !1643, !llvm.loop !1644

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1647
  br i1 %20, label %21, label %142, !dbg !1649

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1604, metadata !DIExpression()), !dbg !1634
  %22 = ptrtoint i8* %10 to i64, !dbg !1650
  %23 = ptrtoint i8* %0 to i64, !dbg !1650
  %24 = sub i64 %22, %23, !dbg !1650
  %25 = icmp slt i64 %24, 5, !dbg !1651
  %26 = and i32 %13, 3072, !dbg !1652
  %27 = or i32 %26, 1023, !dbg !1652
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1652
  call void @llvm.dbg.value(metadata i32 %28, metadata !1605, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i32 %13, metadata !1653, metadata !DIExpression()) #35, !dbg !1660
  call void @llvm.dbg.value(metadata i32 %28, metadata !1658, metadata !DIExpression()) #35, !dbg !1660
  %29 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #41, !dbg !1662
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1662
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1659, metadata !DIExpression()) #35, !dbg !1660
  store i8 61, i8* %29, align 4, !dbg !1663, !tbaa !1664
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1666
  store i8 1, i8* %31, align 1, !dbg !1667, !tbaa !1668
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1669
  %33 = bitcast i8* %32 to i32*, !dbg !1669
  store i32 4095, i32* %33, align 4, !dbg !1670, !tbaa !1671
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1672
  %35 = bitcast i8* %34 to i32*, !dbg !1672
  store i32 %13, i32* %35, align 4, !dbg !1673, !tbaa !1674
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1675
  %37 = bitcast i8* %36 to i32*, !dbg !1675
  store i32 %28, i32* %37, align 4, !dbg !1676, !tbaa !1677
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1678
  store i8 0, i8* %38, align 1, !dbg !1679, !tbaa !1668
  br label %142, !dbg !1680

39:                                               ; preds = %1, %47
  %40 = phi i8 [ %51, %47 ], [ %2, %1 ], !dbg !1681
  %41 = phi i64 [ %49, %47 ], [ 1, %1 ], !dbg !1683
  %42 = phi i8* [ %50, %47 ], [ %0, %1 ], !dbg !1684
  call void @llvm.dbg.value(metadata i8* %42, metadata !1609, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %41, metadata !1607, metadata !DIExpression()), !dbg !1683
  switch i8 %40, label %46 [
    i8 0, label %43
    i8 61, label %47
    i8 43, label %47
    i8 45, label %47
  ], !dbg !1685

43:                                               ; preds = %39
  %44 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %41, i64 noundef 16) #42, !dbg !1686
  %45 = bitcast i8* %44 to %struct.mode_change*, !dbg !1686
  call void @llvm.dbg.value(metadata %struct.mode_change* %45, metadata !1606, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 0, metadata !1611, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8* %0, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %52, !dbg !1687

46:                                               ; preds = %39
  br label %47, !dbg !1688

47:                                               ; preds = %39, %39, %39, %46
  %48 = phi i64 [ 0, %46 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %49 = add i64 %48, %41, !dbg !1689
  call void @llvm.dbg.value(metadata i64 %49, metadata !1607, metadata !DIExpression()), !dbg !1683
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1690
  call void @llvm.dbg.value(metadata i8* %50, metadata !1609, metadata !DIExpression()), !dbg !1684
  %51 = load i8, i8* %50, align 1, !dbg !1681, !tbaa !645
  br label %39, !dbg !1691, !llvm.loop !1692

52:                                               ; preds = %137, %43
  %53 = phi i64 [ 0, %43 ], [ %125, %137 ], !dbg !1694
  %54 = phi i8* [ %0, %43 ], [ %138, %137 ], !dbg !1695
  call void @llvm.dbg.value(metadata i32 undef, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %54, metadata !1612, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %53, metadata !1611, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i32 0, metadata !1613, metadata !DIExpression()), !dbg !1697
  br label %55, !dbg !1698

55:                                               ; preds = %63, %52
  %56 = phi i8* [ %54, %52 ], [ %66, %63 ], !dbg !1695
  %57 = phi i32 [ 0, %52 ], [ %65, %63 ], !dbg !1697
  call void @llvm.dbg.value(metadata i32 %57, metadata !1613, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %56, metadata !1612, metadata !DIExpression()), !dbg !1629
  %58 = load i8, i8* %56, align 1, !dbg !1699, !tbaa !645
  switch i8 %58, label %141 [
    i8 117, label %63
    i8 103, label %60
    i8 111, label %61
    i8 97, label %62
    i8 61, label %59
    i8 43, label %59
    i8 45, label %59
  ], !dbg !1702

59:                                               ; preds = %55, %55, %55
  br label %67, !dbg !1703

60:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1613, metadata !DIExpression()), !dbg !1697
  br label %63, !dbg !1704

61:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1613, metadata !DIExpression()), !dbg !1697
  br label %63, !dbg !1706

62:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1613, metadata !DIExpression()), !dbg !1697
  br label %63, !dbg !1707

63:                                               ; preds = %55, %60, %61, %62
  %64 = phi i32 [ 1080, %60 ], [ 519, %61 ], [ 4095, %62 ], [ 2496, %55 ]
  %65 = or i32 %57, %64, !dbg !1708
  call void @llvm.dbg.value(metadata i32 %65, metadata !1613, metadata !DIExpression()), !dbg !1697
  %66 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %66, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %55, !dbg !1710, !llvm.loop !1711

67:                                               ; preds = %136, %59
  %68 = phi i8 [ %58, %59 ], [ %135, %136 ], !dbg !1714
  %69 = phi i64 [ %53, %59 ], [ %125, %136 ], !dbg !1629
  %70 = phi i8* [ %56, %59 ], [ %119, %136 ], !dbg !1695
  %71 = phi i32 [ %57, %59 ], [ %120, %136 ], !dbg !1715
  call void @llvm.dbg.value(metadata i32 undef, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %71, metadata !1613, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %70, metadata !1612, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %69, metadata !1611, metadata !DIExpression()), !dbg !1629
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %72, metadata !1612, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 %68, metadata !1617, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 0, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8 3, metadata !1621, metadata !DIExpression()), !dbg !1696
  %73 = load i8, i8* %72, align 1, !dbg !1717, !tbaa !645
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
  ], !dbg !1703

74:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  br label %75, !dbg !1718

75:                                               ; preds = %74, %85
  %76 = phi i8 [ %86, %85 ], [ %73, %74 ], !dbg !1719
  %77 = phi i8* [ %80, %85 ], [ %72, %74 ], !dbg !1696
  %78 = phi i32 [ %83, %85 ], [ 0, %74 ], !dbg !1721
  call void @llvm.dbg.value(metadata i32 %78, metadata !1622, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.value(metadata i8* %77, metadata !1612, metadata !DIExpression()), !dbg !1629
  %79 = shl i32 %78, 3, !dbg !1722
  %80 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1723
  call void @llvm.dbg.value(metadata i8* %80, metadata !1612, metadata !DIExpression()), !dbg !1629
  %81 = zext i8 %76 to i32, !dbg !1719
  %82 = add i32 %79, -48, !dbg !1724
  %83 = add i32 %82, %81, !dbg !1725
  call void @llvm.dbg.value(metadata i32 %83, metadata !1622, metadata !DIExpression()), !dbg !1721
  %84 = icmp ugt i32 %83, 4095, !dbg !1726
  br i1 %84, label %141, label %85, !dbg !1728

85:                                               ; preds = %75
  %86 = load i8, i8* %80, align 1, !dbg !1729, !tbaa !645
  %87 = and i8 %86, -8, !dbg !1730
  %88 = icmp eq i8 %87, 48, !dbg !1730
  br i1 %88, label %75, label %89, !dbg !1730, !llvm.loop !1731

89:                                               ; preds = %85
  %90 = icmp eq i32 %71, 0, !dbg !1733
  br i1 %90, label %91, label %141, !dbg !1735

91:                                               ; preds = %89
  switch i8 %86, label %141 [
    i8 0, label %118
    i8 44, label %118
  ], !dbg !1736

92:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 448, metadata !1619, metadata !DIExpression()), !dbg !1696
  %93 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1737
  call void @llvm.dbg.value(metadata i8* %93, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %118, !dbg !1738

94:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 56, metadata !1619, metadata !DIExpression()), !dbg !1696
  %95 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1739
  call void @llvm.dbg.value(metadata i8* %95, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %118, !dbg !1740

96:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 7, metadata !1619, metadata !DIExpression()), !dbg !1696
  %97 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1741
  call void @llvm.dbg.value(metadata i8* %97, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %118, !dbg !1742

98:                                               ; preds = %67, %113
  %99 = phi i8 [ %117, %113 ], [ %73, %67 ], !dbg !1743
  %100 = phi i8* [ %116, %113 ], [ %72, %67 ], !dbg !1696
  %101 = phi i32 [ %114, %113 ], [ 0, %67 ], !dbg !1746
  %102 = phi i8 [ %115, %113 ], [ 1, %67 ], !dbg !1747
  call void @llvm.dbg.value(metadata i8 %102, metadata !1621, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %101, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %100, metadata !1612, metadata !DIExpression()), !dbg !1629
  switch i8 %99, label %118 [
    i8 114, label %103
    i8 119, label %105
    i8 120, label %107
    i8 88, label %113
    i8 115, label %109
    i8 116, label %111
  ], !dbg !1748

103:                                              ; preds = %98
  %104 = or i32 %101, 292, !dbg !1749
  call void @llvm.dbg.value(metadata i32 %104, metadata !1619, metadata !DIExpression()), !dbg !1696
  br label %113, !dbg !1751

105:                                              ; preds = %98
  %106 = or i32 %101, 146, !dbg !1752
  call void @llvm.dbg.value(metadata i32 %106, metadata !1619, metadata !DIExpression()), !dbg !1696
  br label %113, !dbg !1753

107:                                              ; preds = %98
  %108 = or i32 %101, 73, !dbg !1754
  call void @llvm.dbg.value(metadata i32 %108, metadata !1619, metadata !DIExpression()), !dbg !1696
  br label %113, !dbg !1755

109:                                              ; preds = %98
  %110 = or i32 %101, 3072, !dbg !1756
  call void @llvm.dbg.value(metadata i32 %110, metadata !1619, metadata !DIExpression()), !dbg !1696
  br label %113, !dbg !1757

111:                                              ; preds = %98
  %112 = or i32 %101, 512, !dbg !1758
  call void @llvm.dbg.value(metadata i32 %112, metadata !1619, metadata !DIExpression()), !dbg !1696
  br label %113, !dbg !1759

113:                                              ; preds = %98, %103, %105, %107, %109, %111
  %114 = phi i32 [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %101, %98 ], !dbg !1746
  %115 = phi i8 [ %102, %111 ], [ %102, %109 ], [ %102, %107 ], [ %102, %105 ], [ %102, %103 ], [ 2, %98 ], !dbg !1746
  call void @llvm.dbg.value(metadata i8 %115, metadata !1621, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %114, metadata !1619, metadata !DIExpression()), !dbg !1696
  %116 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1760
  call void @llvm.dbg.value(metadata i8* %116, metadata !1612, metadata !DIExpression()), !dbg !1629
  %117 = load i8, i8* %116, align 1, !dbg !1743, !tbaa !645
  br label %98, !dbg !1761, !llvm.loop !1762

118:                                              ; preds = %98, %91, %91, %96, %94, %92
  %119 = phi i8* [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %80, %91 ], [ %80, %91 ], [ %100, %98 ], !dbg !1696
  %120 = phi i32 [ %71, %96 ], [ %71, %94 ], [ %71, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ %71, %98 ], !dbg !1715
  %121 = phi i32 [ 7, %96 ], [ 56, %94 ], [ 448, %92 ], [ %83, %91 ], [ %83, %91 ], [ %101, %98 ]
  %122 = phi i1 [ true, %96 ], [ true, %94 ], [ true, %92 ], [ false, %91 ], [ false, %91 ], [ true, %98 ], !dbg !1765
  %123 = phi i32 [ 0, %96 ], [ 0, %94 ], [ 0, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ 0, %98 ], !dbg !1765
  %124 = phi i8 [ 3, %96 ], [ 3, %94 ], [ 3, %92 ], [ 1, %91 ], [ 1, %91 ], [ %102, %98 ], !dbg !1696
  call void @llvm.dbg.value(metadata i8 %124, metadata !1621, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %123, metadata !1620, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %121, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %120, metadata !1613, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %119, metadata !1612, metadata !DIExpression()), !dbg !1629
  %125 = add i64 %69, 1, !dbg !1766
  call void @llvm.dbg.value(metadata i64 %125, metadata !1611, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata !DIArgList(%struct.mode_change* %45, i64 %69), metadata !1625, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1696
  %126 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 0, !dbg !1767
  store i8 %68, i8* %126, align 4, !dbg !1768, !tbaa !1664
  %127 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 1, !dbg !1769
  store i8 %124, i8* %127, align 1, !dbg !1770, !tbaa !1668
  %128 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 2, !dbg !1771
  store i32 %120, i32* %128, align 4, !dbg !1772, !tbaa !1671
  %129 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 3, !dbg !1773
  store i32 %121, i32* %129, align 4, !dbg !1774, !tbaa !1674
  %130 = icmp eq i32 %120, 0, !dbg !1775
  %131 = select i1 %130, i32 -1, i32 %120, !dbg !1775
  %132 = and i32 %131, %121, !dbg !1775
  %133 = select i1 %122, i32 %132, i32 %123, !dbg !1775
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 4, !dbg !1776
  store i32 %133, i32* %134, align 4, !dbg !1777, !tbaa !1677
  call void @llvm.dbg.value(metadata i32 undef, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i32 %71, metadata !1613, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %80, metadata !1612, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %69, metadata !1611, metadata !DIExpression()), !dbg !1629
  %135 = load i8, i8* %119, align 1, !dbg !1778, !tbaa !645
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1779

136:                                              ; preds = %118, %118, %118
  br label %67, !dbg !1696

137:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 undef, metadata !1619, metadata !DIExpression()), !dbg !1696
  call void @llvm.dbg.value(metadata i8* %119, metadata !1612, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i64 %125, metadata !1611, metadata !DIExpression()), !dbg !1629
  %138 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1780
  call void @llvm.dbg.value(metadata i8* %138, metadata !1612, metadata !DIExpression()), !dbg !1629
  br label %52, !dbg !1781, !llvm.loop !1782

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %125, i32 1, !dbg !1785
  store i8 0, i8* %140, align 1, !dbg !1788, !tbaa !1668
  br label %142, !dbg !1789

141:                                              ; preds = %55, %89, %91, %118, %75
  call void @llvm.dbg.label(metadata !1628), !dbg !1790
  tail call void @free(i8* noundef nonnull %44) #35, !dbg !1791
  br label %142, !dbg !1792

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi %struct.mode_change* [ %30, %21 ], [ null, %19 ], [ null, %141 ], [ %45, %139 ], [ null, %5 ]
  ret %struct.mode_change* %143, !dbg !1793
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !1794 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1796, metadata !DIExpression()), !dbg !1820
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1821
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1821
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1797, metadata !DIExpression()), !dbg !1822
  %4 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #35, !dbg !1823
  %5 = icmp eq i32 %4, 0, !dbg !1825
  br i1 %5, label %6, label %19, !dbg !1826

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1827
  %8 = load i32, i32* %7, align 8, !dbg !1827, !tbaa !1525
  call void @llvm.dbg.value(metadata i32 %8, metadata !1653, metadata !DIExpression()) #35, !dbg !1828
  call void @llvm.dbg.value(metadata i32 4095, metadata !1658, metadata !DIExpression()) #35, !dbg !1828
  %9 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #41, !dbg !1830
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1659, metadata !DIExpression()) #35, !dbg !1828
  store i8 61, i8* %9, align 4, !dbg !1831, !tbaa !1664
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1832
  store i8 1, i8* %11, align 1, !dbg !1833, !tbaa !1668
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1834
  %13 = bitcast i8* %12 to i32*, !dbg !1834
  store i32 4095, i32* %13, align 4, !dbg !1835, !tbaa !1671
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1836
  %15 = bitcast i8* %14 to i32*, !dbg !1836
  store i32 %8, i32* %15, align 4, !dbg !1837, !tbaa !1674
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1838
  %17 = bitcast i8* %16 to i32*, !dbg !1838
  store i32 4095, i32* %17, align 4, !dbg !1839, !tbaa !1677
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1840
  store i8 0, i8* %18, align 1, !dbg !1841, !tbaa !1668
  br label %19, !dbg !1842

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1820
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #35, !dbg !1843
  ret %struct.mode_change* %20, !dbg !1843
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* nocapture noundef readonly %3, i32* noundef writeonly %4) local_unnamed_addr #19 !dbg !1844 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1851, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i1 %1, metadata !1852, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %2, metadata !1853, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1854, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32* %4, metadata !1855, metadata !DIExpression()), !dbg !1867
  %6 = and i32 %0, 4095, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %6, metadata !1856, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 0, metadata !1857, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1854, metadata !DIExpression()), !dbg !1867
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1869
  %8 = load i8, i8* %7, align 1, !dbg !1869, !tbaa !1668
  %9 = icmp eq i8 %8, 0, !dbg !1870
  br i1 %9, label %79, label %10, !dbg !1871

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1871

14:                                               ; preds = %10, %72
  %15 = phi i8 [ %8, %10 ], [ %77, %72 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %75, %72 ]
  %17 = phi i32 [ %6, %10 ], [ %74, %72 ]
  %18 = phi i32 [ 0, %10 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1854, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %17, metadata !1856, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %18, metadata !1857, metadata !DIExpression()), !dbg !1867
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1872
  %20 = load i32, i32* %19, align 4, !dbg !1872, !tbaa !1671
  call void @llvm.dbg.value(metadata i32 %20, metadata !1858, metadata !DIExpression()), !dbg !1873
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1874
  %22 = load i32, i32* %21, align 4, !dbg !1874, !tbaa !1677
  %23 = xor i32 %22, -1, !dbg !1875
  %24 = and i32 %11, %23, !dbg !1876
  call void @llvm.dbg.value(metadata i32 %24, metadata !1862, metadata !DIExpression()), !dbg !1873
  %25 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1877
  %26 = load i32, i32* %25, align 4, !dbg !1877, !tbaa !1674
  call void @llvm.dbg.value(metadata i32 %26, metadata !1863, metadata !DIExpression()), !dbg !1873
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1878

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %28, metadata !1863, metadata !DIExpression()), !dbg !1873
  %29 = and i32 %28, 292, !dbg !1881
  %30 = icmp eq i32 %29, 0, !dbg !1882
  %31 = select i1 %30, i32 0, i32 292, !dbg !1882
  %32 = and i32 %28, 146, !dbg !1883
  %33 = icmp eq i32 %32, 0, !dbg !1884
  %34 = select i1 %33, i32 0, i32 146, !dbg !1884
  %35 = and i32 %28, 73, !dbg !1885
  %36 = icmp eq i32 %35, 0, !dbg !1886
  %37 = select i1 %36, i32 0, i32 73, !dbg !1886
  %38 = or i32 %34, %28, !dbg !1887
  %39 = or i32 %38, %31, !dbg !1888
  %40 = or i32 %39, %37, !dbg !1889
  call void @llvm.dbg.value(metadata i32 %40, metadata !1863, metadata !DIExpression()), !dbg !1873
  br label %47, !dbg !1890

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1891
  %43 = or i32 %42, %12, !dbg !1893
  %44 = icmp eq i32 %43, 0, !dbg !1893
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1894
  br label %47, !dbg !1894

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1873
  call void @llvm.dbg.value(metadata i32 %48, metadata !1863, metadata !DIExpression()), !dbg !1873
  %49 = icmp eq i32 %20, 0, !dbg !1895
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1895
  %51 = xor i32 %24, -1, !dbg !1896
  %52 = and i32 %50, %51, !dbg !1897
  %53 = and i32 %52, %48, !dbg !1898
  call void @llvm.dbg.value(metadata i32 %53, metadata !1863, metadata !DIExpression()), !dbg !1873
  %54 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1899
  %55 = load i8, i8* %54, align 4, !dbg !1899, !tbaa !1664
  switch i8 %55, label %72 [
    i8 61, label %56
    i8 43, label %65
    i8 45, label %68
  ], !dbg !1900

56:                                               ; preds = %47
  %57 = xor i32 %20, -1, !dbg !1901
  %58 = select i1 %49, i32 0, i32 %57, !dbg !1901
  %59 = or i32 %58, %24, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %59, metadata !1864, metadata !DIExpression()), !dbg !1903
  %60 = and i32 %59, 4095, !dbg !1904
  %61 = xor i32 %60, 4095, !dbg !1904
  %62 = or i32 %61, %18, !dbg !1905
  call void @llvm.dbg.value(metadata i32 %62, metadata !1857, metadata !DIExpression()), !dbg !1867
  %63 = and i32 %59, %17, !dbg !1906
  %64 = or i32 %53, %63, !dbg !1907
  call void @llvm.dbg.value(metadata i32 %64, metadata !1856, metadata !DIExpression()), !dbg !1867
  br label %72

65:                                               ; preds = %47
  %66 = or i32 %53, %18, !dbg !1908
  call void @llvm.dbg.value(metadata i32 %66, metadata !1857, metadata !DIExpression()), !dbg !1867
  %67 = or i32 %53, %17, !dbg !1909
  call void @llvm.dbg.value(metadata i32 %67, metadata !1856, metadata !DIExpression()), !dbg !1867
  br label %72, !dbg !1910

68:                                               ; preds = %47
  %69 = or i32 %53, %18, !dbg !1911
  call void @llvm.dbg.value(metadata i32 %69, metadata !1857, metadata !DIExpression()), !dbg !1867
  %70 = xor i32 %53, -1, !dbg !1912
  %71 = and i32 %17, %70, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %71, metadata !1856, metadata !DIExpression()), !dbg !1867
  br label %72, !dbg !1914

72:                                               ; preds = %47, %68, %65, %56
  %73 = phi i32 [ %18, %47 ], [ %69, %68 ], [ %66, %65 ], [ %62, %56 ], !dbg !1867
  %74 = phi i32 [ %17, %47 ], [ %71, %68 ], [ %67, %65 ], [ %64, %56 ], !dbg !1867
  call void @llvm.dbg.value(metadata i32 %74, metadata !1856, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata i32 %73, metadata !1857, metadata !DIExpression()), !dbg !1867
  %75 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1915
  call void @llvm.dbg.value(metadata %struct.mode_change* %75, metadata !1854, metadata !DIExpression()), !dbg !1867
  %76 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1869
  %77 = load i8, i8* %76, align 1, !dbg !1869, !tbaa !1668
  %78 = icmp eq i8 %77, 0, !dbg !1870
  br i1 %78, label %79, label %14, !dbg !1871, !llvm.loop !1916

79:                                               ; preds = %72, %5
  %80 = phi i32 [ 0, %5 ], [ %73, %72 ], !dbg !1918
  %81 = phi i32 [ %6, %5 ], [ %74, %72 ], !dbg !1919
  %82 = icmp eq i32* %4, null, !dbg !1920
  br i1 %82, label %84, label %83, !dbg !1922

83:                                               ; preds = %79
  store i32 %80, i32* %4, align 4, !dbg !1923, !tbaa !636
  br label %84, !dbg !1924

84:                                               ; preds = %83, %79
  ret i32 %81, !dbg !1925
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #20 !dbg !1926 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1928, metadata !DIExpression()), !dbg !1931
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #36, !dbg !1932
  call void @llvm.dbg.value(metadata i8* %2, metadata !1929, metadata !DIExpression()), !dbg !1931
  %3 = icmp eq i8* %2, null, !dbg !1933
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1933
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1933
  call void @llvm.dbg.value(metadata i8* %5, metadata !1930, metadata !DIExpression()), !dbg !1931
  %6 = ptrtoint i8* %5 to i64, !dbg !1934
  %7 = ptrtoint i8* %0 to i64, !dbg !1934
  %8 = sub i64 %6, %7, !dbg !1934
  %9 = icmp sgt i64 %8, 6, !dbg !1936
  br i1 %9, label %10, label %19, !dbg !1937

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1938
  call void @llvm.dbg.value(metadata i8* %11, metadata !1939, metadata !DIExpression()) #35, !dbg !1946
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), metadata !1944, metadata !DIExpression()) #35, !dbg !1946
  call void @llvm.dbg.value(metadata i64 7, metadata !1945, metadata !DIExpression()) #35, !dbg !1946
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i64 0, i64 0), i64 7) #35, !dbg !1948
  %13 = icmp eq i32 %12, 0, !dbg !1949
  br i1 %13, label %14, label %19, !dbg !1950

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1928, metadata !DIExpression()), !dbg !1931
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.79, i64 0, i64 0), i64 noundef 3) #36, !dbg !1951
  %16 = icmp eq i32 %15, 0, !dbg !1954
  %17 = select i1 %16, i64 3, i64 0, !dbg !1955
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1955
  br label %19, !dbg !1955

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1931
  call void @llvm.dbg.value(metadata i8* %21, metadata !1930, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %20, metadata !1928, metadata !DIExpression()), !dbg !1931
  store i8* %20, i8** @program_name, align 8, !dbg !1956, !tbaa !544
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1957, !tbaa !544
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1958, !tbaa !544
  ret void, !dbg !1959
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !233 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !240, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8* %1, metadata !241, metadata !DIExpression()), !dbg !1960
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #35, !dbg !1961
  call void @llvm.dbg.value(metadata i8* %5, metadata !242, metadata !DIExpression()), !dbg !1960
  %6 = icmp eq i8* %5, %0, !dbg !1962
  br i1 %6, label %7, label %17, !dbg !1964

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.savewd*
  %9 = bitcast i32* %3 to i8*, !dbg !1965
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1965
  %10 = bitcast i64* %4 to i8*, !dbg !1966
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1966
  call void @llvm.dbg.declare(metadata %struct.savewd* %8, metadata !248, metadata !DIExpression()), !dbg !1967
  call void @llvm.dbg.value(metadata %struct.savewd* %8, metadata !1968, metadata !DIExpression()) #35, !dbg !1975
  call void @llvm.dbg.value(metadata i8* %10, metadata !1977, metadata !DIExpression()) #35, !dbg !1985
  call void @llvm.dbg.value(metadata i32 0, metadata !1983, metadata !DIExpression()) #35, !dbg !1985
  call void @llvm.dbg.value(metadata i64 8, metadata !1984, metadata !DIExpression()) #35, !dbg !1985
  store i64 0, i64* %4, align 8, !dbg !1987
  call void @llvm.dbg.value(metadata i32* %3, metadata !243, metadata !DIExpression(DW_OP_deref)), !dbg !1960
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.savewd* noundef nonnull %8) #35, !dbg !1988
  %12 = icmp eq i64 %11, 2, !dbg !1990
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !243, metadata !DIExpression()), !dbg !1960
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1991
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1960
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #35, !dbg !1992
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #35, !dbg !1992
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1960
  ret i8* %18, !dbg !1992
}

; Function Attrs: nounwind
declare !dbg !1993 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.savewd* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1999 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2004, metadata !DIExpression()), !dbg !2007
  %2 = tail call i32* @__errno_location() #38, !dbg !2008
  %3 = load i32, i32* %2, align 4, !dbg !2008, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %3, metadata !2005, metadata !DIExpression()), !dbg !2007
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2009
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2009
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2009
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #43, !dbg !2010
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2006, metadata !DIExpression()), !dbg !2007
  store i32 %3, i32* %2, align 4, !dbg !2011, !tbaa !636
  ret %struct.quoting_options* %8, !dbg !2012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #19 !dbg !2013 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2019, metadata !DIExpression()), !dbg !2020
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2021
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2021
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2022
  %5 = load i32, i32* %4, align 8, !dbg !2022, !tbaa !2023
  ret i32 %5, !dbg !2025
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #16 !dbg !2026 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata i32 %1, metadata !2031, metadata !DIExpression()), !dbg !2032
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2033
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2033
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2034
  store i32 %1, i32* %5, align 8, !dbg !2035, !tbaa !2023
  ret void, !dbg !2036
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #22 !dbg !2037 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2041, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 %1, metadata !2042, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i32 %2, metadata !2043, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i8 %1, metadata !2044, metadata !DIExpression()), !dbg !2049
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2050
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2050
  %6 = lshr i8 %1, 5, !dbg !2051
  %7 = zext i8 %6 to i64, !dbg !2051
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2052
  call void @llvm.dbg.value(metadata i32* %8, metadata !2045, metadata !DIExpression()), !dbg !2049
  %9 = and i8 %1, 31, !dbg !2053
  %10 = zext i8 %9 to i32, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %10, metadata !2047, metadata !DIExpression()), !dbg !2049
  %11 = load i32, i32* %8, align 4, !dbg !2054, !tbaa !636
  %12 = lshr i32 %11, %10, !dbg !2055
  %13 = and i32 %12, 1, !dbg !2056
  call void @llvm.dbg.value(metadata i32 %13, metadata !2048, metadata !DIExpression()), !dbg !2049
  %14 = and i32 %2, 1, !dbg !2057
  %15 = xor i32 %13, %14, !dbg !2058
  %16 = shl i32 %15, %10, !dbg !2059
  %17 = xor i32 %16, %11, !dbg !2060
  store i32 %17, i32* %8, align 4, !dbg !2060, !tbaa !636
  ret i32 %13, !dbg !2061
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #22 !dbg !2062 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2066, metadata !DIExpression()), !dbg !2069
  call void @llvm.dbg.value(metadata i32 %1, metadata !2067, metadata !DIExpression()), !dbg !2069
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2070
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2072
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2066, metadata !DIExpression()), !dbg !2069
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2073
  %6 = load i32, i32* %5, align 4, !dbg !2073, !tbaa !2074
  call void @llvm.dbg.value(metadata i32 %6, metadata !2068, metadata !DIExpression()), !dbg !2069
  store i32 %1, i32* %5, align 4, !dbg !2075, !tbaa !2074
  ret i32 %6, !dbg !2076
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2077 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2081, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %1, metadata !2082, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8* %2, metadata !2083, metadata !DIExpression()), !dbg !2084
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2085
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2087
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()), !dbg !2084
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2088
  store i32 10, i32* %6, align 8, !dbg !2089, !tbaa !2023
  %7 = icmp ne i8* %1, null, !dbg !2090
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2092
  br i1 %9, label %11, label %10, !dbg !2092

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !2093
  unreachable, !dbg !2093

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2094
  store i8* %1, i8** %12, align 8, !dbg !2095, !tbaa !2096
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2097
  store i8* %2, i8** %13, align 8, !dbg !2098, !tbaa !2099
  ret void, !dbg !2100
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !2101 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2105, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %1, metadata !2106, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %2, metadata !2107, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i64 %3, metadata !2108, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2109, metadata !DIExpression()), !dbg !2113
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2114
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2114
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2110, metadata !DIExpression()), !dbg !2113
  %8 = tail call i32* @__errno_location() #38, !dbg !2115
  %9 = load i32, i32* %8, align 4, !dbg !2115, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %9, metadata !2111, metadata !DIExpression()), !dbg !2113
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2116
  %11 = load i32, i32* %10, align 8, !dbg !2116, !tbaa !2023
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2117
  %13 = load i32, i32* %12, align 4, !dbg !2117, !tbaa !2074
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2118
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2119
  %16 = load i8*, i8** %15, align 8, !dbg !2119, !tbaa !2096
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2120
  %18 = load i8*, i8** %17, align 8, !dbg !2120, !tbaa !2099
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2121
  call void @llvm.dbg.value(metadata i64 %19, metadata !2112, metadata !DIExpression()), !dbg !2113
  store i32 %9, i32* %8, align 4, !dbg !2122, !tbaa !636
  ret i64 %19, !dbg !2123
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !2124 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.savewd*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2130, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %1, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %2, metadata !2132, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %3, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %4, metadata !2134, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %5, metadata !2135, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32* %6, metadata !2136, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %7, metadata !2137, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %8, metadata !2138, metadata !DIExpression()), !dbg !2192
  %17 = tail call i64 @__ctype_get_mb_cur_max() #35, !dbg !2193
  %18 = icmp eq i64 %17, 1, !dbg !2194
  call void @llvm.dbg.value(metadata i1 %18, metadata !2139, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* null, metadata !2142, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2143, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %5, metadata !2145, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2147, metadata !DIExpression()), !dbg !2192
  %19 = and i32 %5, 2, !dbg !2195
  %20 = icmp ne i32 %19, 0, !dbg !2195
  %21 = bitcast i64* %13 to %struct.savewd*
  %22 = bitcast i32* %12 to i8*
  %23 = bitcast i64* %13 to i8*
  %24 = bitcast i64* %11 to %struct.savewd*
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
  br label %36, !dbg !2195

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2196
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2197
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2198
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %43, metadata !2143, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %42, metadata !2142, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %41, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %40, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %39, metadata !2138, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %38, metadata !2137, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %37, metadata !2134, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2185), !dbg !2199
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2192
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
  ], !dbg !2200

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 5, metadata !2134, metadata !DIExpression()), !dbg !2192
  br label %111, !dbg !2201

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 5, metadata !2134, metadata !DIExpression()), !dbg !2192
  br i1 %45, label %111, label %51, !dbg !2201

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2202
  br i1 %52, label %111, label %53, !dbg !2206

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2202, !tbaa !645
  br label %111, !dbg !2202

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), metadata !310, metadata !DIExpression()) #35, !dbg !2207
  call void @llvm.dbg.value(metadata i32 %37, metadata !311, metadata !DIExpression()) #35, !dbg !2207
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), i32 noundef 5) #35, !dbg !2211
  call void @llvm.dbg.value(metadata i8* %55, metadata !312, metadata !DIExpression()) #35, !dbg !2207
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.92, i64 0, i64 0), !dbg !2212
  br i1 %56, label %57, label %66, !dbg !2214

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2215
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2216
  call void @llvm.dbg.declare(metadata %struct.savewd* %21, metadata !314, metadata !DIExpression()) #35, !dbg !2217
  call void @llvm.dbg.value(metadata %struct.savewd* %21, metadata !2218, metadata !DIExpression()) #35, !dbg !2224
  call void @llvm.dbg.value(metadata i8* %23, metadata !2226, metadata !DIExpression()) #35, !dbg !2231
  call void @llvm.dbg.value(metadata i32 0, metadata !2229, metadata !DIExpression()) #35, !dbg !2231
  call void @llvm.dbg.value(metadata i64 8, metadata !2230, metadata !DIExpression()) #35, !dbg !2231
  store i64 0, i64* %13, align 8, !dbg !2233
  call void @llvm.dbg.value(metadata i32* %12, metadata !313, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2207
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.savewd* noundef nonnull %21) #35, !dbg !2234
  %59 = icmp eq i64 %58, 3, !dbg !2236
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !313, metadata !DIExpression()) #35, !dbg !2207
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2237
  %63 = icmp eq i32 %37, 9, !dbg !2237
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2237
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2237
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #35, !dbg !2238
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #35, !dbg !2238
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2207
  call void @llvm.dbg.value(metadata i8* %67, metadata !2137, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), metadata !310, metadata !DIExpression()) #35, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %37, metadata !311, metadata !DIExpression()) #35, !dbg !2239
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.93, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), i32 noundef 5) #35, !dbg !2241
  call void @llvm.dbg.value(metadata i8* %68, metadata !312, metadata !DIExpression()) #35, !dbg !2239
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2242
  br i1 %69, label %70, label %79, !dbg !2243

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2244
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct.savewd* %24, metadata !314, metadata !DIExpression()) #35, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.savewd* %24, metadata !2218, metadata !DIExpression()) #35, !dbg !2247
  call void @llvm.dbg.value(metadata i8* %26, metadata !2226, metadata !DIExpression()) #35, !dbg !2249
  call void @llvm.dbg.value(metadata i32 0, metadata !2229, metadata !DIExpression()) #35, !dbg !2249
  call void @llvm.dbg.value(metadata i64 8, metadata !2230, metadata !DIExpression()) #35, !dbg !2249
  store i64 0, i64* %11, align 8, !dbg !2251
  call void @llvm.dbg.value(metadata i32* %10, metadata !313, metadata !DIExpression(DW_OP_deref)) #35, !dbg !2239
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.savewd* noundef nonnull %24) #35, !dbg !2252
  %72 = icmp eq i64 %71, 3, !dbg !2253
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !313, metadata !DIExpression()) #35, !dbg !2239
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2254
  %76 = icmp eq i32 %37, 9, !dbg !2254
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), !dbg !2254
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #35, !dbg !2255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #35, !dbg !2255
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2138, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %80, metadata !2137, metadata !DIExpression()), !dbg !2192
  br i1 %45, label %97, label %82, !dbg !2256

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2149, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 0, metadata !2140, metadata !DIExpression()), !dbg !2192
  %83 = load i8, i8* %80, align 1, !dbg !2258, !tbaa !645
  %84 = icmp eq i8 %83, 0, !dbg !2260
  br i1 %84, label %97, label %85, !dbg !2260

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2149, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i64 %88, metadata !2140, metadata !DIExpression()), !dbg !2192
  %89 = icmp ult i64 %88, %48, !dbg !2261
  br i1 %89, label %90, label %92, !dbg !2264

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2261
  store i8 %86, i8* %91, align 1, !dbg !2261, !tbaa !645
  br label %92, !dbg !2261

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2264
  call void @llvm.dbg.value(metadata i64 %93, metadata !2140, metadata !DIExpression()), !dbg !2192
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2265
  call void @llvm.dbg.value(metadata i8* %94, metadata !2149, metadata !DIExpression()), !dbg !2257
  %95 = load i8, i8* %94, align 1, !dbg !2258, !tbaa !645
  %96 = icmp eq i8 %95, 0, !dbg !2260
  br i1 %96, label %97, label %85, !dbg !2260, !llvm.loop !2266

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2268
  call void @llvm.dbg.value(metadata i64 %98, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %81, metadata !2142, metadata !DIExpression()), !dbg !2192
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #36, !dbg !2269
  call void @llvm.dbg.value(metadata i64 %99, metadata !2143, metadata !DIExpression()), !dbg !2192
  br label %111, !dbg !2270

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2144, metadata !DIExpression()), !dbg !2192
  br label %102, !dbg !2271

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2192
  br i1 %45, label %102, label %105, !dbg !2272

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 2, metadata !2134, metadata !DIExpression()), !dbg !2192
  br label %111, !dbg !2273

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 2, metadata !2134, metadata !DIExpression()), !dbg !2192
  br i1 %45, label %111, label %105, !dbg !2273

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2274
  br i1 %107, label %111, label %108, !dbg !2278

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2274, !tbaa !645
  br label %111, !dbg !2274

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2145, metadata !DIExpression()), !dbg !2192
  br label %111, !dbg !2279

110:                                              ; preds = %36
  call void @abort() #37, !dbg !2280
  unreachable, !dbg !2280

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2268
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.94, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.95, i64 0, i64 0), %102 ], !dbg !2192
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2192
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2145, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2144, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %117, metadata !2143, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %116, metadata !2142, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %115, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %114, metadata !2138, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8* %113, metadata !2137, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i32 %112, metadata !2134, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 0, metadata !2154, metadata !DIExpression()), !dbg !2281
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
  br label %132, !dbg !2282

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2268
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2196
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2281
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %139, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %135, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %134, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %133, metadata !2133, metadata !DIExpression()), !dbg !2192
  %141 = icmp eq i64 %133, -1, !dbg !2283
  br i1 %141, label %142, label %146, !dbg !2284

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2285
  %144 = load i8, i8* %143, align 1, !dbg !2285, !tbaa !645
  %145 = icmp eq i8 %144, 0, !dbg !2286
  br i1 %145, label %596, label %148, !dbg !2287

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2288
  br i1 %147, label %596, label %148, !dbg !2287

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 0, metadata !2160, metadata !DIExpression()), !dbg !2289
  br i1 %123, label %149, label %163, !dbg !2290

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2292
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2293
  br i1 %151, label %152, label %154, !dbg !2293

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2294
  call void @llvm.dbg.value(metadata i64 %153, metadata !2133, metadata !DIExpression()), !dbg !2192
  br label %154, !dbg !2295

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2295
  call void @llvm.dbg.value(metadata i64 %155, metadata !2133, metadata !DIExpression()), !dbg !2192
  %156 = icmp ugt i64 %150, %155, !dbg !2296
  br i1 %156, label %163, label %157, !dbg !2297

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2298
  call void @llvm.dbg.value(metadata i8* %158, metadata !2299, metadata !DIExpression()) #35, !dbg !2304
  call void @llvm.dbg.value(metadata i8* %116, metadata !2302, metadata !DIExpression()) #35, !dbg !2304
  call void @llvm.dbg.value(metadata i64 %117, metadata !2303, metadata !DIExpression()) #35, !dbg !2304
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #35, !dbg !2306
  %160 = icmp ne i32 %159, 0, !dbg !2307
  %161 = or i1 %160, %125, !dbg !2308
  %162 = xor i1 %160, true, !dbg !2308
  br i1 %161, label %163, label %647, !dbg !2308

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %164, metadata !2133, metadata !DIExpression()), !dbg !2192
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2309
  %167 = load i8, i8* %166, align 1, !dbg !2309, !tbaa !645
  call void @llvm.dbg.value(metadata i8 %167, metadata !2161, metadata !DIExpression()), !dbg !2289
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
  ], !dbg !2310

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2311

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2312

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2159, metadata !DIExpression()), !dbg !2289
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2316
  br i1 %171, label %188, label %172, !dbg !2316

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2318
  br i1 %173, label %174, label %176, !dbg !2322

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2318
  store i8 39, i8* %175, align 1, !dbg !2318, !tbaa !645
  br label %176, !dbg !2318

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %177, metadata !2140, metadata !DIExpression()), !dbg !2192
  %178 = icmp ult i64 %177, %140, !dbg !2323
  br i1 %178, label %179, label %181, !dbg !2326

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2323
  store i8 36, i8* %180, align 1, !dbg !2323, !tbaa !645
  br label %181, !dbg !2323

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2326
  call void @llvm.dbg.value(metadata i64 %182, metadata !2140, metadata !DIExpression()), !dbg !2192
  %183 = icmp ult i64 %182, %140, !dbg !2327
  br i1 %183, label %184, label %186, !dbg !2330

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2327
  store i8 39, i8* %185, align 1, !dbg !2327, !tbaa !645
  br label %186, !dbg !2327

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2330
  call void @llvm.dbg.value(metadata i64 %187, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %188, !dbg !2331

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2192
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %189, metadata !2140, metadata !DIExpression()), !dbg !2192
  %191 = icmp ult i64 %189, %140, !dbg !2332
  br i1 %191, label %192, label %194, !dbg !2335

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2332
  store i8 92, i8* %193, align 1, !dbg !2332, !tbaa !645
  br label %194, !dbg !2332

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2335
  call void @llvm.dbg.value(metadata i64 %195, metadata !2140, metadata !DIExpression()), !dbg !2192
  br i1 %120, label %196, label %499, !dbg !2336

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2338
  %198 = icmp ult i64 %197, %164, !dbg !2339
  br i1 %198, label %199, label %456, !dbg !2340

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2341
  %201 = load i8, i8* %200, align 1, !dbg !2341, !tbaa !645
  %202 = add i8 %201, -48, !dbg !2342
  %203 = icmp ult i8 %202, 10, !dbg !2342
  br i1 %203, label %204, label %456, !dbg !2342

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2343
  br i1 %205, label %206, label %208, !dbg !2347

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2343
  store i8 48, i8* %207, align 1, !dbg !2343, !tbaa !645
  br label %208, !dbg !2343

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2347
  call void @llvm.dbg.value(metadata i64 %209, metadata !2140, metadata !DIExpression()), !dbg !2192
  %210 = icmp ult i64 %209, %140, !dbg !2348
  br i1 %210, label %211, label %213, !dbg !2351

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2348
  store i8 48, i8* %212, align 1, !dbg !2348, !tbaa !645
  br label %213, !dbg !2348

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2351
  call void @llvm.dbg.value(metadata i64 %214, metadata !2140, metadata !DIExpression()), !dbg !2192
  br label %456, !dbg !2352

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2353

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2354

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2355

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2357

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2359
  %221 = icmp ult i64 %220, %164, !dbg !2360
  br i1 %221, label %222, label %456, !dbg !2361

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2362
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2363
  %225 = load i8, i8* %224, align 1, !dbg !2363, !tbaa !645
  %226 = icmp eq i8 %225, 63, !dbg !2364
  br i1 %226, label %227, label %456, !dbg !2365

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2366
  %229 = load i8, i8* %228, align 1, !dbg !2366, !tbaa !645
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
  ], !dbg !2367

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2368

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %220, metadata !2154, metadata !DIExpression()), !dbg !2281
  %232 = icmp ult i64 %134, %140, !dbg !2370
  br i1 %232, label %233, label %235, !dbg !2373

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2370
  store i8 63, i8* %234, align 1, !dbg !2370, !tbaa !645
  br label %235, !dbg !2370

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2373
  call void @llvm.dbg.value(metadata i64 %236, metadata !2140, metadata !DIExpression()), !dbg !2192
  %237 = icmp ult i64 %236, %140, !dbg !2374
  br i1 %237, label %238, label %240, !dbg !2377

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2374
  store i8 34, i8* %239, align 1, !dbg !2374, !tbaa !645
  br label %240, !dbg !2374

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2377
  call void @llvm.dbg.value(metadata i64 %241, metadata !2140, metadata !DIExpression()), !dbg !2192
  %242 = icmp ult i64 %241, %140, !dbg !2378
  br i1 %242, label %243, label %245, !dbg !2381

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2378
  store i8 34, i8* %244, align 1, !dbg !2378, !tbaa !645
  br label %245, !dbg !2378

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2381
  call void @llvm.dbg.value(metadata i64 %246, metadata !2140, metadata !DIExpression()), !dbg !2192
  %247 = icmp ult i64 %246, %140, !dbg !2382
  br i1 %247, label %248, label %250, !dbg !2385

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2382
  store i8 63, i8* %249, align 1, !dbg !2382, !tbaa !645
  br label %250, !dbg !2382

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2385
  call void @llvm.dbg.value(metadata i64 %251, metadata !2140, metadata !DIExpression()), !dbg !2192
  br label %456, !dbg !2386

252:                                              ; preds = %163
  br label %263, !dbg !2387

253:                                              ; preds = %163
  br label %263, !dbg !2388

254:                                              ; preds = %163
  br label %261, !dbg !2389

255:                                              ; preds = %163
  br label %261, !dbg !2390

256:                                              ; preds = %163
  br label %263, !dbg !2391

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2392

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2393

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2396

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2398

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2399
  call void @llvm.dbg.label(metadata !2186), !dbg !2400
  br i1 %128, label %263, label %638, !dbg !2401

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2399
  call void @llvm.dbg.label(metadata !2188), !dbg !2403
  br i1 %118, label %510, label %467, !dbg !2404

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2405

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2406, !tbaa !645
  %268 = icmp eq i8 %267, 0, !dbg !2408
  br i1 %268, label %269, label %456, !dbg !2409

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2410
  br i1 %270, label %271, label %456, !dbg !2412

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2160, metadata !DIExpression()), !dbg !2289
  br label %272, !dbg !2413

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2160, metadata !DIExpression()), !dbg !2289
  br i1 %126, label %274, label %456, !dbg !2414

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2416

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2160, metadata !DIExpression()), !dbg !2289
  br i1 %126, label %276, label %456, !dbg !2417

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2418

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2421
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2423
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2423
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2423
  call void @llvm.dbg.value(metadata i64 %282, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %281, metadata !2141, metadata !DIExpression()), !dbg !2192
  %283 = icmp ult i64 %134, %282, !dbg !2424
  br i1 %283, label %284, label %286, !dbg !2427

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2424
  store i8 39, i8* %285, align 1, !dbg !2424, !tbaa !645
  br label %286, !dbg !2424

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2427
  call void @llvm.dbg.value(metadata i64 %287, metadata !2140, metadata !DIExpression()), !dbg !2192
  %288 = icmp ult i64 %287, %282, !dbg !2428
  br i1 %288, label %289, label %291, !dbg !2431

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2428
  store i8 92, i8* %290, align 1, !dbg !2428, !tbaa !645
  br label %291, !dbg !2428

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2431
  call void @llvm.dbg.value(metadata i64 %292, metadata !2140, metadata !DIExpression()), !dbg !2192
  %293 = icmp ult i64 %292, %282, !dbg !2432
  br i1 %293, label %294, label %296, !dbg !2435

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2432
  store i8 39, i8* %295, align 1, !dbg !2432, !tbaa !645
  br label %296, !dbg !2432

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2435
  call void @llvm.dbg.value(metadata i64 %297, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %456, !dbg !2436

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2437

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2162, metadata !DIExpression()), !dbg !2438
  %300 = tail call i16** @__ctype_b_loc() #38, !dbg !2439
  %301 = load i16*, i16** %300, align 8, !dbg !2439, !tbaa !544
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2439
  %304 = load i16, i16* %303, align 2, !dbg !2439, !tbaa !670
  %305 = and i16 %304, 16384, !dbg !2439
  %306 = icmp ne i16 %305, 0, !dbg !2441
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %349, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %312, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i1 %350, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  br label %352, !dbg !2442

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2443
  call void @llvm.dbg.declare(metadata %struct.savewd* %15, metadata !2166, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.value(metadata %struct.savewd* %15, metadata !2218, metadata !DIExpression()) #35, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %32, metadata !2226, metadata !DIExpression()) #35, !dbg !2447
  call void @llvm.dbg.value(metadata i32 0, metadata !2229, metadata !DIExpression()) #35, !dbg !2447
  call void @llvm.dbg.value(metadata i64 8, metadata !2230, metadata !DIExpression()) #35, !dbg !2447
  store i64 0, i64* %14, align 8, !dbg !2449
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i8 1, metadata !2165, metadata !DIExpression()), !dbg !2438
  %308 = icmp eq i64 %164, -1, !dbg !2450
  br i1 %308, label %309, label %311, !dbg !2452

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #36, !dbg !2453
  call void @llvm.dbg.value(metadata i64 %310, metadata !2133, metadata !DIExpression()), !dbg !2192
  br label %311, !dbg !2454

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2289
  call void @llvm.dbg.value(metadata i64 %312, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2455
  %313 = sub i64 %312, %139, !dbg !2456
  call void @llvm.dbg.value(metadata i32* %16, metadata !2169, metadata !DIExpression(DW_OP_deref)), !dbg !2457
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.savewd* noundef nonnull %15) #35, !dbg !2458
  call void @llvm.dbg.value(metadata i64 %314, metadata !2173, metadata !DIExpression()), !dbg !2457
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2459

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  %316 = icmp ugt i64 %312, %139, !dbg !2460
  br i1 %316, label %319, label %317, !dbg !2462

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %349, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %312, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i1 %350, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  br label %352, !dbg !2442

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2165, metadata !DIExpression()), !dbg !2438
  br label %346, !dbg !2465

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2162, metadata !DIExpression()), !dbg !2438
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2467
  %323 = load i8, i8* %322, align 1, !dbg !2467, !tbaa !645
  %324 = icmp eq i8 %323, 0, !dbg !2462
  br i1 %324, label %348, label %325, !dbg !2468

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2469
  call void @llvm.dbg.value(metadata i64 %326, metadata !2162, metadata !DIExpression()), !dbg !2438
  %327 = add i64 %326, %139, !dbg !2470
  %328 = icmp eq i64 %326, %313, !dbg !2460
  br i1 %328, label %348, label %319, !dbg !2462, !llvm.loop !2471

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2472
  call void @llvm.dbg.value(metadata i64 1, metadata !2174, metadata !DIExpression()), !dbg !2473
  br i1 %331, label %332, label %340, !dbg !2472

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2174, metadata !DIExpression()), !dbg !2473
  %334 = add i64 %333, %139, !dbg !2474
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2476
  %336 = load i8, i8* %335, align 1, !dbg !2476, !tbaa !645
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2477

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2478
  call void @llvm.dbg.value(metadata i64 %338, metadata !2174, metadata !DIExpression()), !dbg !2473
  %339 = icmp eq i64 %338, %314, !dbg !2479
  br i1 %339, label %340, label %332, !dbg !2480, !llvm.loop !2481

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2483, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %341, metadata !2169, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata i32 %341, metadata !2485, metadata !DIExpression()) #35, !dbg !2493
  %342 = call i32 @iswprint(i32 noundef %341) #35, !dbg !2495
  %343 = icmp ne i32 %342, 0, !dbg !2496
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %314, metadata !2162, metadata !DIExpression()), !dbg !2438
  br label %348, !dbg !2497

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2464
  call void @llvm.dbg.label(metadata !2191), !dbg !2498
  %345 = select i1 %118, i32 4, i32 2, !dbg !2499
  br label %643, !dbg !2499

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %349, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %312, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i1 %350, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  br label %352, !dbg !2442

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2165, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 0, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #35, !dbg !2463
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #35, !dbg !2464
  call void @llvm.dbg.value(metadata i64 %349, metadata !2162, metadata !DIExpression()), !dbg !2438
  call void @llvm.dbg.value(metadata i64 %312, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i1 %350, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  %351 = icmp ugt i64 %349, 1, !dbg !2501
  br i1 %351, label %357, label %352, !dbg !2442

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2502
  br i1 %356, label %456, label %357, !dbg !2502

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2503
  call void @llvm.dbg.value(metadata i64 %361, metadata !2182, metadata !DIExpression()), !dbg !2504
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2505

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2192
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2281
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2506
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2289
  call void @llvm.dbg.value(metadata i8 %369, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %368, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %366, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %364, metadata !2140, metadata !DIExpression()), !dbg !2192
  br i1 %362, label %414, label %370, !dbg !2507

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2512

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2159, metadata !DIExpression()), !dbg !2289
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2515
  br i1 %372, label %389, label %373, !dbg !2515

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2517
  br i1 %374, label %375, label %377, !dbg !2521

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2517
  store i8 39, i8* %376, align 1, !dbg !2517, !tbaa !645
  br label %377, !dbg !2517

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i64 %378, metadata !2140, metadata !DIExpression()), !dbg !2192
  %379 = icmp ult i64 %378, %140, !dbg !2522
  br i1 %379, label %380, label %382, !dbg !2525

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2522
  store i8 36, i8* %381, align 1, !dbg !2522, !tbaa !645
  br label %382, !dbg !2522

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2525
  call void @llvm.dbg.value(metadata i64 %383, metadata !2140, metadata !DIExpression()), !dbg !2192
  %384 = icmp ult i64 %383, %140, !dbg !2526
  br i1 %384, label %385, label %387, !dbg !2529

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2526
  store i8 39, i8* %386, align 1, !dbg !2526, !tbaa !645
  br label %387, !dbg !2526

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %388, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %389, !dbg !2530

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2192
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %390, metadata !2140, metadata !DIExpression()), !dbg !2192
  %392 = icmp ult i64 %390, %140, !dbg !2531
  br i1 %392, label %393, label %395, !dbg !2534

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2531
  store i8 92, i8* %394, align 1, !dbg !2531, !tbaa !645
  br label %395, !dbg !2531

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2534
  call void @llvm.dbg.value(metadata i64 %396, metadata !2140, metadata !DIExpression()), !dbg !2192
  %397 = icmp ult i64 %396, %140, !dbg !2535
  br i1 %397, label %398, label %402, !dbg !2538

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2535
  %400 = or i8 %399, 48, !dbg !2535
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2535
  store i8 %400, i8* %401, align 1, !dbg !2535, !tbaa !645
  br label %402, !dbg !2535

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2538
  call void @llvm.dbg.value(metadata i64 %403, metadata !2140, metadata !DIExpression()), !dbg !2192
  %404 = icmp ult i64 %403, %140, !dbg !2539
  br i1 %404, label %405, label %410, !dbg !2542

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2539
  %407 = and i8 %406, 7, !dbg !2539
  %408 = or i8 %407, 48, !dbg !2539
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2539
  store i8 %408, i8* %409, align 1, !dbg !2539, !tbaa !645
  br label %410, !dbg !2539

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %411, metadata !2140, metadata !DIExpression()), !dbg !2192
  %412 = and i8 %369, 7, !dbg !2543
  %413 = or i8 %412, 48, !dbg !2544
  call void @llvm.dbg.value(metadata i8 %413, metadata !2161, metadata !DIExpression()), !dbg !2289
  br label %421, !dbg !2545

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2546

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2547
  br i1 %416, label %417, label %419, !dbg !2552

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2547
  store i8 92, i8* %418, align 1, !dbg !2547, !tbaa !645
  br label %419, !dbg !2547

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %420, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2289
  br label %421, !dbg !2553

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2192
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2289
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2289
  call void @llvm.dbg.value(metadata i8 %426, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %425, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %422, metadata !2140, metadata !DIExpression()), !dbg !2192
  %427 = add i64 %366, 1, !dbg !2554
  %428 = icmp ugt i64 %361, %427, !dbg !2556
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2557

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2558
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2558
  br i1 %432, label %433, label %444, !dbg !2558

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2561
  br i1 %434, label %435, label %437, !dbg !2565

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2561
  store i8 39, i8* %436, align 1, !dbg !2561, !tbaa !645
  br label %437, !dbg !2561

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %438, metadata !2140, metadata !DIExpression()), !dbg !2192
  %439 = icmp ult i64 %438, %140, !dbg !2566
  br i1 %439, label %440, label %442, !dbg !2569

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2566
  store i8 39, i8* %441, align 1, !dbg !2566, !tbaa !645
  br label %442, !dbg !2566

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2569
  call void @llvm.dbg.value(metadata i64 %443, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %444, !dbg !2570

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2571
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %445, metadata !2140, metadata !DIExpression()), !dbg !2192
  %447 = icmp ult i64 %445, %140, !dbg !2572
  br i1 %447, label %448, label %450, !dbg !2575

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2572
  store i8 %426, i8* %449, align 1, !dbg !2572, !tbaa !645
  br label %450, !dbg !2572

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2575
  call void @llvm.dbg.value(metadata i64 %451, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %427, metadata !2154, metadata !DIExpression()), !dbg !2281
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2576
  %453 = load i8, i8* %452, align 1, !dbg !2576, !tbaa !645
  call void @llvm.dbg.value(metadata i8 %453, metadata !2161, metadata !DIExpression()), !dbg !2289
  br label %363, !dbg !2577, !llvm.loop !2578

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i1 %358, metadata !2160, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2289
  call void @llvm.dbg.value(metadata i8 %425, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %366, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %422, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %360, metadata !2133, metadata !DIExpression()), !dbg !2192
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2581
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2192
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2196
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2281
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2289
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %465, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2156, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %462, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %459, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %458, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %457, metadata !2133, metadata !DIExpression()), !dbg !2192
  br i1 %121, label %478, label %467, !dbg !2582

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
  br i1 %131, label %479, label %499, !dbg !2584

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2585

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
  %490 = lshr i8 %481, 5, !dbg !2586
  %491 = zext i8 %490 to i64, !dbg !2586
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2587
  %493 = load i32, i32* %492, align 4, !dbg !2587, !tbaa !636
  %494 = and i8 %481, 31, !dbg !2588
  %495 = zext i8 %494 to i32, !dbg !2588
  %496 = shl nuw i32 1, %495, !dbg !2589
  %497 = and i32 %493, %496, !dbg !2589
  %498 = icmp eq i32 %497, 0, !dbg !2589
  br i1 %498, label %499, label %510, !dbg !2590

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
  br i1 %165, label %510, label %546, !dbg !2591

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2581
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2192
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2196
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2592
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2289
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %518, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %516, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %513, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %512, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %511, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2189), !dbg !2593
  br i1 %119, label %638, label %520, !dbg !2594

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2159, metadata !DIExpression()), !dbg !2289
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2596
  br i1 %521, label %538, label %522, !dbg !2596

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2598
  br i1 %523, label %524, label %526, !dbg !2602

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2598
  store i8 39, i8* %525, align 1, !dbg !2598, !tbaa !645
  br label %526, !dbg !2598

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2602
  call void @llvm.dbg.value(metadata i64 %527, metadata !2140, metadata !DIExpression()), !dbg !2192
  %528 = icmp ult i64 %527, %519, !dbg !2603
  br i1 %528, label %529, label %531, !dbg !2606

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2603
  store i8 36, i8* %530, align 1, !dbg !2603, !tbaa !645
  br label %531, !dbg !2603

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2606
  call void @llvm.dbg.value(metadata i64 %532, metadata !2140, metadata !DIExpression()), !dbg !2192
  %533 = icmp ult i64 %532, %519, !dbg !2607
  br i1 %533, label %534, label %536, !dbg !2610

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2607
  store i8 39, i8* %535, align 1, !dbg !2607, !tbaa !645
  br label %536, !dbg !2607

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2610
  call void @llvm.dbg.value(metadata i64 %537, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 1, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %538, !dbg !2611

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2289
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %539, metadata !2140, metadata !DIExpression()), !dbg !2192
  %541 = icmp ult i64 %539, %519, !dbg !2612
  br i1 %541, label %542, label %544, !dbg !2615

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2612
  store i8 92, i8* %543, align 1, !dbg !2612, !tbaa !645
  br label %544, !dbg !2612

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2615
  call void @llvm.dbg.value(metadata i64 %556, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %555, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %552, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %549, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %548, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %547, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2190), !dbg !2616
  br label %570, !dbg !2617

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2581
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2192
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2196
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2592
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2620
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 %555, metadata !2161, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2160, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i8 poison, metadata !2159, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i64 %552, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %549, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %548, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %547, metadata !2133, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.label(metadata !2190), !dbg !2616
  %557 = xor i1 %551, true, !dbg !2617
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2617
  br i1 %558, label %570, label %559, !dbg !2617

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2621
  br i1 %560, label %561, label %563, !dbg !2625

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2621
  store i8 39, i8* %562, align 1, !dbg !2621, !tbaa !645
  br label %563, !dbg !2621

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2625
  call void @llvm.dbg.value(metadata i64 %564, metadata !2140, metadata !DIExpression()), !dbg !2192
  %565 = icmp ult i64 %564, %556, !dbg !2626
  br i1 %565, label %566, label %568, !dbg !2629

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2626
  store i8 39, i8* %567, align 1, !dbg !2626, !tbaa !645
  br label %568, !dbg !2626

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2629
  call void @llvm.dbg.value(metadata i64 %569, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 0, metadata !2148, metadata !DIExpression()), !dbg !2192
  br label %570, !dbg !2630

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2289
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %578, metadata !2140, metadata !DIExpression()), !dbg !2192
  %580 = icmp ult i64 %578, %571, !dbg !2631
  br i1 %580, label %581, label %583, !dbg !2634

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2631
  store i8 %572, i8* %582, align 1, !dbg !2631, !tbaa !645
  br label %583, !dbg !2631

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2634
  call void @llvm.dbg.value(metadata i64 %584, metadata !2140, metadata !DIExpression()), !dbg !2192
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2635
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2192
  br label %586, !dbg !2636

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2581
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2192
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2196
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2592
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %593, metadata !2154, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8 poison, metadata !2148, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %589, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %588, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %587, metadata !2133, metadata !DIExpression()), !dbg !2192
  %595 = add i64 %593, 1, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %595, metadata !2154, metadata !DIExpression()), !dbg !2281
  br label %132, !dbg !2638, !llvm.loop !2639

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2131, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2147, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i8 poison, metadata !2146, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 undef, metadata !2141, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 undef, metadata !2140, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 undef, metadata !2133, metadata !DIExpression()), !dbg !2192
  %597 = icmp eq i64 %134, 0, !dbg !2641
  %598 = and i1 %126, %597, !dbg !2643
  %599 = and i1 %598, %119, !dbg !2643
  br i1 %599, label %638, label %600, !dbg !2643

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2644
  %602 = or i1 %119, %601, !dbg !2644
  %603 = xor i1 %136, true, !dbg !2644
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2644
  br i1 %604, label %612, label %605, !dbg !2644

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2646

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2648
  br label %653, !dbg !2650

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2651
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2653
  br i1 %611, label %36, label %612, !dbg !2653

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2654
  %615 = or i1 %614, %613, !dbg !2656
  br i1 %615, label %631, label %616, !dbg !2656

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2142, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %134, metadata !2140, metadata !DIExpression()), !dbg !2192
  %617 = load i8, i8* %116, align 1, !dbg !2657, !tbaa !645
  %618 = icmp eq i8 %617, 0, !dbg !2660
  br i1 %618, label %631, label %619, !dbg !2660

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2142, metadata !DIExpression()), !dbg !2192
  call void @llvm.dbg.value(metadata i64 %622, metadata !2140, metadata !DIExpression()), !dbg !2192
  %623 = icmp ult i64 %622, %140, !dbg !2661
  br i1 %623, label %624, label %626, !dbg !2664

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2661
  store i8 %620, i8* %625, align 1, !dbg !2661, !tbaa !645
  br label %626, !dbg !2661

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2664
  call void @llvm.dbg.value(metadata i64 %627, metadata !2140, metadata !DIExpression()), !dbg !2192
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2665
  call void @llvm.dbg.value(metadata i8* %628, metadata !2142, metadata !DIExpression()), !dbg !2192
  %629 = load i8, i8* %628, align 1, !dbg !2657, !tbaa !645
  %630 = icmp eq i8 %629, 0, !dbg !2660
  br i1 %630, label %631, label %619, !dbg !2660, !llvm.loop !2666

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2268
  call void @llvm.dbg.value(metadata i64 %632, metadata !2140, metadata !DIExpression()), !dbg !2192
  %633 = icmp ult i64 %632, %140, !dbg !2668
  br i1 %633, label %634, label %653, !dbg !2670

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2671
  store i8 0, i8* %635, align 1, !dbg !2672, !tbaa !645
  br label %653, !dbg !2671

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2191), !dbg !2498
  %637 = icmp eq i32 %112, 2, !dbg !2673
  br i1 %637, label %643, label %647, !dbg !2499

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2191), !dbg !2498
  %641 = icmp eq i32 %112, 2, !dbg !2673
  %642 = select i1 %118, i32 4, i32 2, !dbg !2499
  br i1 %641, label %643, label %647, !dbg !2499

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2499

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2134, metadata !DIExpression()), !dbg !2192
  %651 = and i32 %5, -3, !dbg !2674
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2675
  br label %653, !dbg !2676

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2677
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2678 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2680 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2684, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %1, metadata !2685, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2688, metadata !DIExpression()) #35, !dbg !2701
  call void @llvm.dbg.value(metadata i64 %1, metadata !2693, metadata !DIExpression()) #35, !dbg !2701
  call void @llvm.dbg.value(metadata i64* null, metadata !2694, metadata !DIExpression()) #35, !dbg !2701
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2695, metadata !DIExpression()) #35, !dbg !2701
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2703
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2696, metadata !DIExpression()) #35, !dbg !2701
  %6 = tail call i32* @__errno_location() #38, !dbg !2704
  %7 = load i32, i32* %6, align 4, !dbg !2704, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %7, metadata !2697, metadata !DIExpression()) #35, !dbg !2701
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2705
  %9 = load i32, i32* %8, align 4, !dbg !2705, !tbaa !2074
  %10 = or i32 %9, 1, !dbg !2706
  call void @llvm.dbg.value(metadata i32 %10, metadata !2698, metadata !DIExpression()) #35, !dbg !2701
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2707
  %12 = load i32, i32* %11, align 8, !dbg !2707, !tbaa !2023
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2708
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2709
  %15 = load i8*, i8** %14, align 8, !dbg !2709, !tbaa !2096
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2710
  %17 = load i8*, i8** %16, align 8, !dbg !2710, !tbaa !2099
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #35, !dbg !2711
  %19 = add i64 %18, 1, !dbg !2712
  call void @llvm.dbg.value(metadata i64 %19, metadata !2699, metadata !DIExpression()) #35, !dbg !2701
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #41, !dbg !2713
  call void @llvm.dbg.value(metadata i8* %20, metadata !2700, metadata !DIExpression()) #35, !dbg !2701
  %21 = load i32, i32* %11, align 8, !dbg !2714, !tbaa !2023
  %22 = load i8*, i8** %14, align 8, !dbg !2715, !tbaa !2096
  %23 = load i8*, i8** %16, align 8, !dbg !2716, !tbaa !2099
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #35, !dbg !2717
  store i32 %7, i32* %6, align 4, !dbg !2718, !tbaa !636
  ret i8* %20, !dbg !2719
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2689 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2688, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64 %1, metadata !2693, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i64* %2, metadata !2694, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2695, metadata !DIExpression()), !dbg !2720
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2721
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2721
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2696, metadata !DIExpression()), !dbg !2720
  %7 = tail call i32* @__errno_location() #38, !dbg !2722
  %8 = load i32, i32* %7, align 4, !dbg !2722, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %8, metadata !2697, metadata !DIExpression()), !dbg !2720
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2723
  %10 = load i32, i32* %9, align 4, !dbg !2723, !tbaa !2074
  %11 = icmp eq i64* %2, null, !dbg !2724
  %12 = zext i1 %11 to i32, !dbg !2724
  %13 = or i32 %10, %12, !dbg !2725
  call void @llvm.dbg.value(metadata i32 %13, metadata !2698, metadata !DIExpression()), !dbg !2720
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2726
  %15 = load i32, i32* %14, align 8, !dbg !2726, !tbaa !2023
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2727
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2728
  %18 = load i8*, i8** %17, align 8, !dbg !2728, !tbaa !2096
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2729
  %20 = load i8*, i8** %19, align 8, !dbg !2729, !tbaa !2099
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2730
  %22 = add i64 %21, 1, !dbg !2731
  call void @llvm.dbg.value(metadata i64 %22, metadata !2699, metadata !DIExpression()), !dbg !2720
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #41, !dbg !2732
  call void @llvm.dbg.value(metadata i8* %23, metadata !2700, metadata !DIExpression()), !dbg !2720
  %24 = load i32, i32* %14, align 8, !dbg !2733, !tbaa !2023
  %25 = load i8*, i8** %17, align 8, !dbg !2734, !tbaa !2096
  %26 = load i8*, i8** %19, align 8, !dbg !2735, !tbaa !2099
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2736
  store i32 %8, i32* %7, align 4, !dbg !2737, !tbaa !636
  br i1 %11, label %29, label %28, !dbg !2738

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2739, !tbaa !2741
  br label %29, !dbg !2742

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2743
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2744 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2749, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2746, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 1, metadata !2747, metadata !DIExpression()), !dbg !2751
  %2 = load i32, i32* @nslots, align 4, !tbaa !636
  call void @llvm.dbg.value(metadata i32 1, metadata !2747, metadata !DIExpression()), !dbg !2751
  %3 = icmp sgt i32 %2, 1, !dbg !2752
  br i1 %3, label %4, label %6, !dbg !2754

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2752
  br label %10, !dbg !2754

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2755
  %8 = load i8*, i8** %7, align 8, !dbg !2755, !tbaa !2757
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2759
  br i1 %9, label %17, label %16, !dbg !2760

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2747, metadata !DIExpression()), !dbg !2751
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2761
  %13 = load i8*, i8** %12, align 8, !dbg !2761, !tbaa !2757
  tail call void @free(i8* noundef %13) #35, !dbg !2762
  %14 = add nuw nsw i64 %11, 1, !dbg !2763
  call void @llvm.dbg.value(metadata i64 %14, metadata !2747, metadata !DIExpression()), !dbg !2751
  %15 = icmp eq i64 %14, %5, !dbg !2752
  br i1 %15, label %6, label %10, !dbg !2754, !llvm.loop !2764

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #35, !dbg !2766
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2768, !tbaa !2769
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2770, !tbaa !2757
  br label %17, !dbg !2771

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2772
  br i1 %18, label %21, label %19, !dbg !2774

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2775
  tail call void @free(i8* noundef %20) #35, !dbg !2777
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2778, !tbaa !544
  br label %21, !dbg !2779

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2780, !tbaa !636
  ret void, !dbg !2781
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2782 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2784, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %1, metadata !2785, metadata !DIExpression()), !dbg !2786
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2787
  ret i8* %3, !dbg !2788
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2789 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2793, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %1, metadata !2794, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i64 %2, metadata !2795, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2796, metadata !DIExpression()), !dbg !2809
  %6 = tail call i32* @__errno_location() #38, !dbg !2810
  %7 = load i32, i32* %6, align 4, !dbg !2810, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %7, metadata !2797, metadata !DIExpression()), !dbg !2809
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2811, !tbaa !544
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2798, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2799, metadata !DIExpression()), !dbg !2809
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2812
  br i1 %9, label %10, label %11, !dbg !2812

10:                                               ; preds = %4
  tail call void @abort() #37, !dbg !2814
  unreachable, !dbg !2814

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2815, !tbaa !636
  %13 = icmp sgt i32 %12, %0, !dbg !2816
  br i1 %13, label %36, label %14, !dbg !2817

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2818
  call void @llvm.dbg.value(metadata i1 %15, metadata !2800, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2819
  %16 = bitcast i64* %5 to i8*, !dbg !2820
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2820
  %17 = sext i32 %12 to i64, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %17, metadata !2803, metadata !DIExpression()), !dbg !2819
  store i64 %17, i64* %5, align 8, !dbg !2822, !tbaa !2741
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2823
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2823
  %20 = add nuw nsw i32 %0, 1, !dbg !2824
  %21 = sub i32 %20, %12, !dbg !2825
  %22 = sext i32 %21 to i64, !dbg !2826
  call void @llvm.dbg.value(metadata i64* %5, metadata !2803, metadata !DIExpression(DW_OP_deref)), !dbg !2819
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #35, !dbg !2827
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2827
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2798, metadata !DIExpression()), !dbg !2809
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2828, !tbaa !544
  br i1 %15, label %25, label %26, !dbg !2829

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2830, !tbaa.struct !2832
  br label %26, !dbg !2833

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2834, !tbaa !636
  %28 = sext i32 %27 to i64, !dbg !2835
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2835
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2836
  %31 = load i64, i64* %5, align 8, !dbg !2837, !tbaa !2741
  call void @llvm.dbg.value(metadata i64 %31, metadata !2803, metadata !DIExpression()), !dbg !2819
  %32 = sub nsw i64 %31, %28, !dbg !2838
  %33 = shl i64 %32, 4, !dbg !2839
  call void @llvm.dbg.value(metadata i8* %30, metadata !2226, metadata !DIExpression()) #35, !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2229, metadata !DIExpression()) #35, !dbg !2840
  call void @llvm.dbg.value(metadata i64 %33, metadata !2230, metadata !DIExpression()) #35, !dbg !2840
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #35, !dbg !2842
  %34 = load i64, i64* %5, align 8, !dbg !2843, !tbaa !2741
  call void @llvm.dbg.value(metadata i64 %34, metadata !2803, metadata !DIExpression()), !dbg !2819
  %35 = trunc i64 %34 to i32, !dbg !2843
  store i32 %35, i32* @nslots, align 4, !dbg !2844, !tbaa !636
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #35, !dbg !2845
  br label %36, !dbg !2846

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2809
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2798, metadata !DIExpression()), !dbg !2809
  %38 = zext i32 %0 to i64, !dbg !2847
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2848
  %40 = load i64, i64* %39, align 8, !dbg !2848, !tbaa !2769
  call void @llvm.dbg.value(metadata i64 %40, metadata !2804, metadata !DIExpression()), !dbg !2849
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2850
  %42 = load i8*, i8** %41, align 8, !dbg !2850, !tbaa !2757
  call void @llvm.dbg.value(metadata i8* %42, metadata !2806, metadata !DIExpression()), !dbg !2849
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2851
  %44 = load i32, i32* %43, align 4, !dbg !2851, !tbaa !2074
  %45 = or i32 %44, 1, !dbg !2852
  call void @llvm.dbg.value(metadata i32 %45, metadata !2807, metadata !DIExpression()), !dbg !2849
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2853
  %47 = load i32, i32* %46, align 8, !dbg !2853, !tbaa !2023
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2854
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2855
  %50 = load i8*, i8** %49, align 8, !dbg !2855, !tbaa !2096
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2856
  %52 = load i8*, i8** %51, align 8, !dbg !2856, !tbaa !2099
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %53, metadata !2808, metadata !DIExpression()), !dbg !2849
  %54 = icmp ugt i64 %40, %53, !dbg !2858
  br i1 %54, label %65, label %55, !dbg !2860

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2861
  call void @llvm.dbg.value(metadata i64 %56, metadata !2804, metadata !DIExpression()), !dbg !2849
  store i64 %56, i64* %39, align 8, !dbg !2863, !tbaa !2769
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2864
  br i1 %57, label %59, label %58, !dbg !2866

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #35, !dbg !2867
  br label %59, !dbg !2867

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #41, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %60, metadata !2806, metadata !DIExpression()), !dbg !2849
  store i8* %60, i8** %41, align 8, !dbg !2869, !tbaa !2757
  %61 = load i32, i32* %46, align 8, !dbg !2870, !tbaa !2023
  %62 = load i8*, i8** %49, align 8, !dbg !2871, !tbaa !2096
  %63 = load i8*, i8** %51, align 8, !dbg !2872, !tbaa !2099
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2873
  br label %65, !dbg !2874

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2849
  call void @llvm.dbg.value(metadata i8* %66, metadata !2806, metadata !DIExpression()), !dbg !2849
  store i32 %7, i32* %6, align 4, !dbg !2875, !tbaa !636
  ret i8* %66, !dbg !2876
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2877 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2881, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i8* %1, metadata !2882, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 %2, metadata !2883, metadata !DIExpression()), !dbg !2884
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2885
  ret i8* %4, !dbg !2886
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2887 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2889, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i32 0, metadata !2784, metadata !DIExpression()) #35, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %0, metadata !2785, metadata !DIExpression()) #35, !dbg !2891
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2893
  ret i8* %2, !dbg !2894
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2899, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i64 %1, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.value(metadata i32 0, metadata !2881, metadata !DIExpression()) #35, !dbg !2902
  call void @llvm.dbg.value(metadata i8* %0, metadata !2882, metadata !DIExpression()) #35, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %1, metadata !2883, metadata !DIExpression()) #35, !dbg !2902
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #35, !dbg !2904
  ret i8* %3, !dbg !2905
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2906 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2910, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i32 %1, metadata !2911, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i8* %2, metadata !2912, metadata !DIExpression()), !dbg !2914
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2915
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2915
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2913, metadata !DIExpression()), !dbg !2916
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2917), !dbg !2920
  call void @llvm.dbg.value(metadata i32 %1, metadata !2921, metadata !DIExpression()) #35, !dbg !2927
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2926, metadata !DIExpression()) #35, !dbg !2929
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !2929, !alias.scope !2917
  %6 = icmp eq i32 %1, 10, !dbg !2930
  br i1 %6, label %7, label %8, !dbg !2932

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !2933, !noalias !2917
  unreachable, !dbg !2933

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2934
  store i32 %1, i32* %9, align 8, !dbg !2935, !tbaa !2023, !alias.scope !2917
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2936
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !2937
  ret i8* %10, !dbg !2938
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2939 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2943, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i32 %1, metadata !2944, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()), !dbg !2948
  call void @llvm.dbg.value(metadata i64 %3, metadata !2946, metadata !DIExpression()), !dbg !2948
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2949
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2949
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2947, metadata !DIExpression()), !dbg !2950
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2951), !dbg !2954
  call void @llvm.dbg.value(metadata i32 %1, metadata !2921, metadata !DIExpression()) #35, !dbg !2955
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2926, metadata !DIExpression()) #35, !dbg !2957
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #35, !dbg !2957, !alias.scope !2951
  %7 = icmp eq i32 %1, 10, !dbg !2958
  br i1 %7, label %8, label %9, !dbg !2959

8:                                                ; preds = %4
  tail call void @abort() #37, !dbg !2960, !noalias !2951
  unreachable, !dbg !2960

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2961
  store i32 %1, i32* %10, align 8, !dbg !2962, !tbaa !2023, !alias.scope !2951
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2963
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !2964
  ret i8* %11, !dbg !2965
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2966 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2970, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i8* %1, metadata !2971, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i32 0, metadata !2910, metadata !DIExpression()) #35, !dbg !2973
  call void @llvm.dbg.value(metadata i32 %0, metadata !2911, metadata !DIExpression()) #35, !dbg !2973
  call void @llvm.dbg.value(metadata i8* %1, metadata !2912, metadata !DIExpression()) #35, !dbg !2973
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2975
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2975
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2913, metadata !DIExpression()) #35, !dbg !2976
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977) #35, !dbg !2980
  call void @llvm.dbg.value(metadata i32 %0, metadata !2921, metadata !DIExpression()) #35, !dbg !2981
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2926, metadata !DIExpression()) #35, !dbg !2983
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #35, !dbg !2983, !alias.scope !2977
  %5 = icmp eq i32 %0, 10, !dbg !2984
  br i1 %5, label %6, label %7, !dbg !2985

6:                                                ; preds = %2
  tail call void @abort() #37, !dbg !2986, !noalias !2977
  unreachable, !dbg !2986

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2987
  store i32 %0, i32* %8, align 8, !dbg !2988, !tbaa !2023, !alias.scope !2977
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !2989
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !2990
  ret i8* %9, !dbg !2991
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2992 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2996, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i8* %1, metadata !2997, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %2, metadata !2998, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i32 0, metadata !2943, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i32 %0, metadata !2944, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i8* %1, metadata !2945, metadata !DIExpression()) #35, !dbg !3000
  call void @llvm.dbg.value(metadata i64 %2, metadata !2946, metadata !DIExpression()) #35, !dbg !3000
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3002
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2947, metadata !DIExpression()) #35, !dbg !3003
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3004) #35, !dbg !3007
  call void @llvm.dbg.value(metadata i32 %0, metadata !2921, metadata !DIExpression()) #35, !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2926, metadata !DIExpression()) #35, !dbg !3010
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #35, !dbg !3010, !alias.scope !3004
  %6 = icmp eq i32 %0, 10, !dbg !3011
  br i1 %6, label %7, label %8, !dbg !3012

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3013, !noalias !3004
  unreachable, !dbg !3013

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3014
  store i32 %0, i32* %9, align 8, !dbg !3015, !tbaa !2023, !alias.scope !3004
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3016
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3017
  ret i8* %10, !dbg !3018
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !3019 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8 %2, metadata !3025, metadata !DIExpression()), !dbg !3027
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3028
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3028
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3026, metadata !DIExpression()), !dbg !3029
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3030, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2041, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %2, metadata !2042, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %2, metadata !2044, metadata !DIExpression()), !dbg !3032
  %6 = lshr i8 %2, 5, !dbg !3034
  %7 = zext i8 %6 to i64, !dbg !3034
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3035
  call void @llvm.dbg.value(metadata i32* %8, metadata !2045, metadata !DIExpression()), !dbg !3032
  %9 = and i8 %2, 31, !dbg !3036
  %10 = zext i8 %9 to i32, !dbg !3036
  call void @llvm.dbg.value(metadata i32 %10, metadata !2047, metadata !DIExpression()), !dbg !3032
  %11 = load i32, i32* %8, align 4, !dbg !3037, !tbaa !636
  %12 = lshr i32 %11, %10, !dbg !3038
  %13 = and i32 %12, 1, !dbg !3039
  call void @llvm.dbg.value(metadata i32 %13, metadata !2048, metadata !DIExpression()), !dbg !3032
  %14 = xor i32 %13, 1, !dbg !3040
  %15 = shl i32 %14, %10, !dbg !3041
  %16 = xor i32 %15, %11, !dbg !3042
  store i32 %16, i32* %8, align 4, !dbg !3042, !tbaa !636
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3043
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3044
  ret i8* %17, !dbg !3045
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !3046 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8 %1, metadata !3051, metadata !DIExpression()), !dbg !3052
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()) #35, !dbg !3053
  call void @llvm.dbg.value(metadata i64 -1, metadata !3024, metadata !DIExpression()) #35, !dbg !3053
  call void @llvm.dbg.value(metadata i8 %1, metadata !3025, metadata !DIExpression()) #35, !dbg !3053
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3055
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3055
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3026, metadata !DIExpression()) #35, !dbg !3056
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3057, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2041, metadata !DIExpression()) #35, !dbg !3058
  call void @llvm.dbg.value(metadata i8 %1, metadata !2042, metadata !DIExpression()) #35, !dbg !3058
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()) #35, !dbg !3058
  call void @llvm.dbg.value(metadata i8 %1, metadata !2044, metadata !DIExpression()) #35, !dbg !3058
  %5 = lshr i8 %1, 5, !dbg !3060
  %6 = zext i8 %5 to i64, !dbg !3060
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3061
  call void @llvm.dbg.value(metadata i32* %7, metadata !2045, metadata !DIExpression()) #35, !dbg !3058
  %8 = and i8 %1, 31, !dbg !3062
  %9 = zext i8 %8 to i32, !dbg !3062
  call void @llvm.dbg.value(metadata i32 %9, metadata !2047, metadata !DIExpression()) #35, !dbg !3058
  %10 = load i32, i32* %7, align 4, !dbg !3063, !tbaa !636
  %11 = lshr i32 %10, %9, !dbg !3064
  %12 = and i32 %11, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i32 %12, metadata !2048, metadata !DIExpression()) #35, !dbg !3058
  %13 = xor i32 %12, 1, !dbg !3066
  %14 = shl i32 %13, %9, !dbg !3067
  %15 = xor i32 %14, %10, !dbg !3068
  store i32 %15, i32* %7, align 4, !dbg !3068, !tbaa !636
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3069
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3070
  ret i8* %16, !dbg !3071
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !3072 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3074, metadata !DIExpression()), !dbg !3075
  call void @llvm.dbg.value(metadata i8* %0, metadata !3050, metadata !DIExpression()) #35, !dbg !3076
  call void @llvm.dbg.value(metadata i8 58, metadata !3051, metadata !DIExpression()) #35, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()) #35, !dbg !3078
  call void @llvm.dbg.value(metadata i64 -1, metadata !3024, metadata !DIExpression()) #35, !dbg !3078
  call void @llvm.dbg.value(metadata i8 58, metadata !3025, metadata !DIExpression()) #35, !dbg !3078
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3080
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3080
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3026, metadata !DIExpression()) #35, !dbg !3081
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3082, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2041, metadata !DIExpression()) #35, !dbg !3083
  call void @llvm.dbg.value(metadata i8 58, metadata !2042, metadata !DIExpression()) #35, !dbg !3083
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()) #35, !dbg !3083
  call void @llvm.dbg.value(metadata i8 58, metadata !2044, metadata !DIExpression()) #35, !dbg !3083
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3085
  call void @llvm.dbg.value(metadata i32* %4, metadata !2045, metadata !DIExpression()) #35, !dbg !3083
  call void @llvm.dbg.value(metadata i32 26, metadata !2047, metadata !DIExpression()) #35, !dbg !3083
  %5 = load i32, i32* %4, align 4, !dbg !3086, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %5, metadata !2048, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3083
  %6 = or i32 %5, 67108864, !dbg !3087
  store i32 %6, i32* %4, align 4, !dbg !3087, !tbaa !636
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #35, !dbg !3088
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #35, !dbg !3089
  ret i8* %7, !dbg !3090
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3091 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3093, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.value(metadata i8* %0, metadata !3023, metadata !DIExpression()) #35, !dbg !3096
  call void @llvm.dbg.value(metadata i64 %1, metadata !3024, metadata !DIExpression()) #35, !dbg !3096
  call void @llvm.dbg.value(metadata i8 58, metadata !3025, metadata !DIExpression()) #35, !dbg !3096
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3098
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3098
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3026, metadata !DIExpression()) #35, !dbg !3099
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #35, !dbg !3100, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2041, metadata !DIExpression()) #35, !dbg !3101
  call void @llvm.dbg.value(metadata i8 58, metadata !2042, metadata !DIExpression()) #35, !dbg !3101
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()) #35, !dbg !3101
  call void @llvm.dbg.value(metadata i8 58, metadata !2044, metadata !DIExpression()) #35, !dbg !3101
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3103
  call void @llvm.dbg.value(metadata i32* %5, metadata !2045, metadata !DIExpression()) #35, !dbg !3101
  call void @llvm.dbg.value(metadata i32 26, metadata !2047, metadata !DIExpression()) #35, !dbg !3101
  %6 = load i32, i32* %5, align 4, !dbg !3104, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %6, metadata !2048, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #35, !dbg !3101
  %7 = or i32 %6, 67108864, !dbg !3105
  store i32 %7, i32* %5, align 4, !dbg !3105, !tbaa !636
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #35, !dbg !3106
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #35, !dbg !3107
  ret i8* %8, !dbg !3108
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3109 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3111, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i32 %1, metadata !3112, metadata !DIExpression()), !dbg !3115
  call void @llvm.dbg.value(metadata i8* %2, metadata !3113, metadata !DIExpression()), !dbg !3115
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3116
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3116
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3114, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.value(metadata i32 %1, metadata !2921, metadata !DIExpression()) #35, !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !2926, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3118
  %6 = icmp eq i32 %1, 10, !dbg !3120
  br i1 %6, label %7, label %8, !dbg !3121

7:                                                ; preds = %3
  tail call void @abort() #37, !dbg !3122, !noalias !3123
  unreachable, !dbg !3122

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2926, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3118
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3126
  store i32 %1, i32* %9, align 8, !dbg !3126, !tbaa.struct !3031
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3126
  %11 = bitcast i32* %10 to i8*, !dbg !3126
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3126
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2041, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8 58, metadata !2042, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 1, metadata !2043, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i8 58, metadata !2044, metadata !DIExpression()), !dbg !3127
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3129
  call void @llvm.dbg.value(metadata i32* %12, metadata !2045, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.value(metadata i32 26, metadata !2047, metadata !DIExpression()), !dbg !3127
  %13 = load i32, i32* %12, align 4, !dbg !3130, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %13, metadata !2048, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3127
  %14 = or i32 %13, 67108864, !dbg !3131
  store i32 %14, i32* %12, align 4, !dbg !3131, !tbaa !636
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3132
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3133
  ret i8* %15, !dbg !3134
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3135 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3139, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %1, metadata !3140, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %2, metadata !3141, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i8* %3, metadata !3142, metadata !DIExpression()), !dbg !3143
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()) #35, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %1, metadata !3149, metadata !DIExpression()) #35, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %2, metadata !3150, metadata !DIExpression()) #35, !dbg !3154
  call void @llvm.dbg.value(metadata i8* %3, metadata !3151, metadata !DIExpression()) #35, !dbg !3154
  call void @llvm.dbg.value(metadata i64 -1, metadata !3152, metadata !DIExpression()) #35, !dbg !3154
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3156
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3156
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3153, metadata !DIExpression()) #35, !dbg !3157
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3158, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()) #35, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %1, metadata !2082, metadata !DIExpression()) #35, !dbg !3159
  call void @llvm.dbg.value(metadata i8* %2, metadata !2083, metadata !DIExpression()) #35, !dbg !3159
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()) #35, !dbg !3159
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3161
  store i32 10, i32* %7, align 8, !dbg !3162, !tbaa !2023
  %8 = icmp ne i8* %1, null, !dbg !3163
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3164
  br i1 %10, label %12, label %11, !dbg !3164

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3165
  unreachable, !dbg !3165

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3166
  store i8* %1, i8** %13, align 8, !dbg !3167, !tbaa !2096
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3168
  store i8* %2, i8** %14, align 8, !dbg !3169, !tbaa !2099
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3170
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3171
  ret i8* %15, !dbg !3172
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !3145 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3144, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %1, metadata !3149, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %2, metadata !3150, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %3, metadata !3151, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i64 %4, metadata !3152, metadata !DIExpression()), !dbg !3173
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3174
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3174
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3153, metadata !DIExpression()), !dbg !3175
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3176, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2081, metadata !DIExpression()) #35, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %1, metadata !2082, metadata !DIExpression()) #35, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %2, metadata !2083, metadata !DIExpression()) #35, !dbg !3177
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2081, metadata !DIExpression()) #35, !dbg !3177
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3179
  store i32 10, i32* %8, align 8, !dbg !3180, !tbaa !2023
  %9 = icmp ne i8* %1, null, !dbg !3181
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3182
  br i1 %11, label %13, label %12, !dbg !3182

12:                                               ; preds = %5
  tail call void @abort() #37, !dbg !3183
  unreachable, !dbg !3183

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3184
  store i8* %1, i8** %14, align 8, !dbg !3185, !tbaa !2096
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3186
  store i8* %2, i8** %15, align 8, !dbg !3187, !tbaa !2099
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3188
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #35, !dbg !3189
  ret i8* %16, !dbg !3190
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !3191 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3195, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %1, metadata !3196, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i8* %2, metadata !3197, metadata !DIExpression()), !dbg !3198
  call void @llvm.dbg.value(metadata i32 0, metadata !3139, metadata !DIExpression()) #35, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3140, metadata !DIExpression()) #35, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %1, metadata !3141, metadata !DIExpression()) #35, !dbg !3199
  call void @llvm.dbg.value(metadata i8* %2, metadata !3142, metadata !DIExpression()) #35, !dbg !3199
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()) #35, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()) #35, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %1, metadata !3150, metadata !DIExpression()) #35, !dbg !3201
  call void @llvm.dbg.value(metadata i8* %2, metadata !3151, metadata !DIExpression()) #35, !dbg !3201
  call void @llvm.dbg.value(metadata i64 -1, metadata !3152, metadata !DIExpression()) #35, !dbg !3201
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3203
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3203
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3153, metadata !DIExpression()) #35, !dbg !3204
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3205, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2081, metadata !DIExpression()) #35, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %0, metadata !2082, metadata !DIExpression()) #35, !dbg !3206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2083, metadata !DIExpression()) #35, !dbg !3206
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2081, metadata !DIExpression()) #35, !dbg !3206
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3208
  store i32 10, i32* %6, align 8, !dbg !3209, !tbaa !2023
  %7 = icmp ne i8* %0, null, !dbg !3210
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3211
  br i1 %9, label %11, label %10, !dbg !3211

10:                                               ; preds = %3
  tail call void @abort() #37, !dbg !3212
  unreachable, !dbg !3212

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3213
  store i8* %0, i8** %12, align 8, !dbg !3214, !tbaa !2096
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3215
  store i8* %1, i8** %13, align 8, !dbg !3216, !tbaa !2099
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #35, !dbg !3217
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #35, !dbg !3218
  ret i8* %14, !dbg !3219
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !3220 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %1, metadata !3225, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i8* %2, metadata !3226, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i64 %3, metadata !3227, metadata !DIExpression()), !dbg !3228
  call void @llvm.dbg.value(metadata i32 0, metadata !3144, metadata !DIExpression()) #35, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %0, metadata !3149, metadata !DIExpression()) #35, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %1, metadata !3150, metadata !DIExpression()) #35, !dbg !3229
  call void @llvm.dbg.value(metadata i8* %2, metadata !3151, metadata !DIExpression()) #35, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %3, metadata !3152, metadata !DIExpression()) #35, !dbg !3229
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3231
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3231
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3153, metadata !DIExpression()) #35, !dbg !3232
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #35, !dbg !3233, !tbaa.struct !3031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()) #35, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %0, metadata !2082, metadata !DIExpression()) #35, !dbg !3234
  call void @llvm.dbg.value(metadata i8* %1, metadata !2083, metadata !DIExpression()) #35, !dbg !3234
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2081, metadata !DIExpression()) #35, !dbg !3234
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3236
  store i32 10, i32* %7, align 8, !dbg !3237, !tbaa !2023
  %8 = icmp ne i8* %0, null, !dbg !3238
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3239
  br i1 %10, label %12, label %11, !dbg !3239

11:                                               ; preds = %4
  tail call void @abort() #37, !dbg !3240
  unreachable, !dbg !3240

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3241
  store i8* %0, i8** %13, align 8, !dbg !3242, !tbaa !2096
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3243
  store i8* %1, i8** %14, align 8, !dbg !3244, !tbaa !2099
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #35, !dbg !3245
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #35, !dbg !3246
  ret i8* %15, !dbg !3247
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !3248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* %1, metadata !3253, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i64 %2, metadata !3254, metadata !DIExpression()), !dbg !3255
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3256
  ret i8* %4, !dbg !3257
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3258 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3262, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i64 %1, metadata !3263, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.dbg.value(metadata i8* %0, metadata !3253, metadata !DIExpression()) #35, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %1, metadata !3254, metadata !DIExpression()) #35, !dbg !3265
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3267
  ret i8* %3, !dbg !3268
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !3269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3273, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i8* %1, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()) #35, !dbg !3276
  call void @llvm.dbg.value(metadata i8* %1, metadata !3253, metadata !DIExpression()) #35, !dbg !3276
  call void @llvm.dbg.value(metadata i64 -1, metadata !3254, metadata !DIExpression()) #35, !dbg !3276
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3278
  ret i8* %3, !dbg !3279
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !3280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3284, metadata !DIExpression()), !dbg !3285
  call void @llvm.dbg.value(metadata i32 0, metadata !3273, metadata !DIExpression()) #35, !dbg !3286
  call void @llvm.dbg.value(metadata i8* %0, metadata !3274, metadata !DIExpression()) #35, !dbg !3286
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i8* %0, metadata !3253, metadata !DIExpression()) #35, !dbg !3288
  call void @llvm.dbg.value(metadata i64 -1, metadata !3254, metadata !DIExpression()) #35, !dbg !3288
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #35, !dbg !3290
  ret i8* %2, !dbg !3291
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @savewd_init(%struct.savewd* nocapture noundef writeonly %0) local_unnamed_addr #24 !dbg !3292 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3297, metadata !DIExpression()), !dbg !3298
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3299
  store i32 0, i32* %2, align 4, !dbg !3300, !tbaa !1471
  ret void, !dbg !3301
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @savewd_errno(%struct.savewd* nocapture noundef readonly %0) local_unnamed_addr #25 !dbg !3302 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3308, metadata !DIExpression()), !dbg !3309
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3310
  %3 = load i32, i32* %2, align 4, !dbg !3310, !tbaa !1471
  %4 = icmp ult i32 %3, 4, !dbg !3311
  br i1 %4, label %8, label %5, !dbg !3312

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3313
  %7 = load i32, i32* %6, align 4, !dbg !3313, !tbaa !645
  br label %8, !dbg !3312

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ], !dbg !3312
  ret i32 %9, !dbg !3314
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_chdir(%struct.savewd* nocapture noundef %0, i8* noundef %1, i32 noundef %2, i32* noundef writeonly %3) local_unnamed_addr #12 !dbg !3315 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3319, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3320, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %2, metadata !3321, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32* %3, metadata !3322, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 -1, metadata !3323, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 0, metadata !3324, metadata !DIExpression()), !dbg !3328
  %5 = icmp eq i32* %3, null, !dbg !3329
  %6 = and i32 %2, 1
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %5, %7, !dbg !3331
  br i1 %8, label %27, label %9, !dbg !3331

9:                                                ; preds = %4
  %10 = shl i32 %2, 15, !dbg !3332
  %11 = and i32 %10, 32768, !dbg !3332
  %12 = or i32 %11, 18688, !dbg !3334
  %13 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef %1, i32 noundef %12) #35, !dbg !3335
  call void @llvm.dbg.value(metadata i32 %13, metadata !3323, metadata !DIExpression()), !dbg !3328
  br i1 %5, label %18, label %14, !dbg !3336

14:                                               ; preds = %9
  store i32 %13, i32* %3, align 4, !dbg !3337, !tbaa !636
  %15 = tail call i32* @__errno_location() #38, !dbg !3340
  %16 = load i32, i32* %15, align 4, !dbg !3340, !tbaa !636
  %17 = getelementptr inbounds i32, i32* %3, i64 1, !dbg !3341
  store i32 %16, i32* %17, align 4, !dbg !3342, !tbaa !636
  br label %18, !dbg !3343

18:                                               ; preds = %14, %9
  %19 = icmp slt i32 %13, 0, !dbg !3344
  br i1 %19, label %20, label %24, !dbg !3346

20:                                               ; preds = %18
  %21 = tail call i32* @__errno_location() #38, !dbg !3347
  %22 = load i32, i32* %21, align 4, !dbg !3347, !tbaa !636
  %23 = icmp eq i32 %22, 13, !dbg !3348
  call void @llvm.dbg.value(metadata i32 undef, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %13, metadata !3323, metadata !DIExpression()), !dbg !3328
  br i1 %23, label %27, label %86, !dbg !3349

24:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 undef, metadata !3324, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %13, metadata !3323, metadata !DIExpression()), !dbg !3328
  %25 = and i32 %2, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %75, !dbg !3351

27:                                               ; preds = %20, %4, %24
  %28 = phi i32 [ %13, %24 ], [ -1, %4 ], [ %13, %20 ]
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3352, metadata !DIExpression()) #35, !dbg !3361
  %29 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3365
  %30 = load i32, i32* %29, align 4, !dbg !3365, !tbaa !1471
  switch i32 %30, label %56 [
    i32 0, label %31
    i32 3, label %43
    i32 1, label %57
    i32 2, label %57
    i32 4, label %57
    i32 5, label %57
  ], !dbg !3366

31:                                               ; preds = %27
  %32 = tail call i32 (i8*, i32, ...) @open_safer(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.104, i64 0, i64 0), i32 noundef 0) #35, !dbg !3367
  call void @llvm.dbg.value(metadata i32 %32, metadata !3357, metadata !DIExpression()) #35, !dbg !3368
  %33 = icmp sgt i32 %32, -1, !dbg !3369
  br i1 %33, label %34, label %36, !dbg !3371

34:                                               ; preds = %31
  store i32 1, i32* %29, align 4, !dbg !3372, !tbaa !1471
  %35 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3374
  store i32 %32, i32* %35, align 4, !dbg !3375, !tbaa !645
  br label %57, !dbg !3376

36:                                               ; preds = %31
  %37 = tail call i32* @__errno_location() #38, !dbg !3377
  %38 = load i32, i32* %37, align 4, !dbg !3377, !tbaa !636
  call void @llvm.dbg.value(metadata i1 undef, metadata !3360, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #35, !dbg !3368
  switch i32 %38, label %39 [
    i32 116, label %41
    i32 13, label %41
  ], !dbg !3378

39:                                               ; preds = %36
  store i32 4, i32* %29, align 4, !dbg !3379, !tbaa !1471
  %40 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3382
  store i32 %38, i32* %40, align 4, !dbg !3383, !tbaa !645
  br label %57, !dbg !3384

41:                                               ; preds = %36, %36
  %42 = bitcast %struct.savewd* %0 to <2 x i32>*, !dbg !3385
  store <2 x i32> <i32 3, i32 -1>, <2 x i32>* %42, align 4, !dbg !3385, !tbaa !645
  br label %47, !dbg !3386

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %45 = load i32, i32* %44, align 4, !dbg !3387, !tbaa !645
  %46 = icmp slt i32 %45, 0, !dbg !3366
  br i1 %46, label %47, label %57, !dbg !3386

47:                                               ; preds = %43, %41
  %48 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3387
  %49 = tail call i32 @fork() #35, !dbg !3389
  store i32 %49, i32* %48, align 4, !dbg !3391, !tbaa !645
  %50 = icmp eq i32 %49, 0, !dbg !3392
  br i1 %50, label %57, label %51, !dbg !3394

51:                                               ; preds = %47
  %52 = icmp sgt i32 %49, 0, !dbg !3395
  br i1 %52, label %75, label %53, !dbg !3398

53:                                               ; preds = %51
  store i32 4, i32* %29, align 4, !dbg !3399, !tbaa !1471
  %54 = tail call i32* @__errno_location() #38, !dbg !3400
  %55 = load i32, i32* %54, align 4, !dbg !3400, !tbaa !636
  store i32 %55, i32* %48, align 4, !dbg !3401, !tbaa !645
  br label %57, !dbg !3402

56:                                               ; preds = %27
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 106, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.savewd_save, i64 0, i64 0)) #37, !dbg !3403
  unreachable, !dbg !3403

57:                                               ; preds = %27, %27, %27, %27, %43, %53, %47, %34, %39
  %58 = icmp slt i32 %28, 0, !dbg !3406
  br i1 %58, label %59, label %61, !dbg !3408

59:                                               ; preds = %57
  %60 = tail call i32 @chdir(i8* noundef %1) #35, !dbg !3409
  br label %63, !dbg !3408

61:                                               ; preds = %57
  %62 = tail call i32 @fchdir(i32 noundef %28) #35, !dbg !3410
  br label %63, !dbg !3408

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ], !dbg !3408
  call void @llvm.dbg.value(metadata i32 %64, metadata !3324, metadata !DIExpression()), !dbg !3328
  %65 = icmp eq i32 %64, 0, !dbg !3411
  br i1 %65, label %66, label %75, !dbg !3413

66:                                               ; preds = %63
  %67 = load i32, i32* %29, align 4, !dbg !3414, !tbaa !1471
  switch i32 %67, label %74 [
    i32 1, label %68
    i32 4, label %75
    i32 2, label %75
    i32 5, label %75
    i32 3, label %69
  ], !dbg !3415

68:                                               ; preds = %66
  store i32 2, i32* %29, align 4, !dbg !3416, !tbaa !1471
  br label %75, !dbg !3418

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3419
  %71 = load i32, i32* %70, align 4, !dbg !3419, !tbaa !645
  %72 = icmp eq i32 %71, 0, !dbg !3419
  br i1 %72, label %75, label %73, !dbg !3422

73:                                               ; preds = %69
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 162, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #37, !dbg !3419
  unreachable, !dbg !3419

74:                                               ; preds = %66
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @__PRETTY_FUNCTION__.savewd_chdir, i64 0, i64 0)) #37, !dbg !3423
  unreachable, !dbg !3423

75:                                               ; preds = %51, %24, %68, %66, %66, %66, %69, %63
  %76 = phi i32 [ %28, %69 ], [ %28, %66 ], [ %28, %66 ], [ %28, %66 ], [ %28, %68 ], [ %28, %63 ], [ %13, %24 ], [ %28, %51 ]
  %77 = phi i32 [ 0, %69 ], [ 0, %66 ], [ 0, %66 ], [ 0, %66 ], [ 0, %68 ], [ %64, %63 ], [ 0, %24 ], [ -2, %51 ], !dbg !3328
  %78 = phi i32* [ %3, %69 ], [ %3, %66 ], [ %3, %66 ], [ %3, %66 ], [ %3, %68 ], [ %3, %63 ], [ %3, %24 ], [ null, %51 ]
  call void @llvm.dbg.value(metadata i32* %78, metadata !3322, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i32 %77, metadata !3324, metadata !DIExpression()), !dbg !3328
  %79 = icmp slt i32 %76, 0, !dbg !3426
  %80 = icmp ne i32* %78, null
  %81 = or i1 %79, %80, !dbg !3427
  br i1 %81, label %86, label %82, !dbg !3427

82:                                               ; preds = %75
  %83 = tail call i32* @__errno_location() #38, !dbg !3428
  %84 = load i32, i32* %83, align 4, !dbg !3428, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %84, metadata !3325, metadata !DIExpression()), !dbg !3429
  %85 = tail call i32 @close(i32 noundef %76) #35, !dbg !3430
  store i32 %84, i32* %83, align 4, !dbg !3431, !tbaa !636
  br label %86, !dbg !3432

86:                                               ; preds = %20, %82, %75
  %87 = phi i32 [ %77, %82 ], [ %77, %75 ], [ -1, %20 ]
  ret i32 %87, !dbg !3433
}

; Function Attrs: nofree nounwind
declare !dbg !3434 i32 @fork() local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !3437 i32 @chdir(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3440 i32 @fchdir(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_restore(%struct.savewd* nocapture noundef %0, i32 noundef %1) local_unnamed_addr #12 !dbg !3441 {
  %3 = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3445, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 %1, metadata !3446, metadata !DIExpression()), !dbg !3456
  %4 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3457
  %5 = load i32, i32* %4, align 4, !dbg !3457, !tbaa !1471
  switch i32 %5, label %52 [
    i32 0, label %53
    i32 1, label %53
    i32 2, label %10
    i32 4, label %6
    i32 3, label %24
  ], !dbg !3458

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0
  %8 = load i32, i32* %7, align 4, !dbg !3459, !tbaa !645
  %9 = tail call i32* @__errno_location() #38, !dbg !3460
  br label %21, !dbg !3458

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3461
  %12 = load i32, i32* %11, align 4, !dbg !3461, !tbaa !645
  %13 = tail call i32 @fchdir(i32 noundef %12) #35, !dbg !3462
  %14 = icmp eq i32 %13, 0, !dbg !3463
  br i1 %14, label %15, label %16, !dbg !3464

15:                                               ; preds = %10
  store i32 1, i32* %4, align 4, !dbg !3465, !tbaa !1471
  br label %53, !dbg !3467

16:                                               ; preds = %10
  %17 = tail call i32* @__errno_location() #38, !dbg !3468
  %18 = load i32, i32* %17, align 4, !dbg !3468, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %18, metadata !3447, metadata !DIExpression()), !dbg !3469
  %19 = load i32, i32* %11, align 4, !dbg !3470, !tbaa !645
  %20 = tail call i32 @close(i32 noundef %19) #35, !dbg !3471
  store i32 4, i32* %4, align 4, !dbg !3472, !tbaa !1471
  store i32 %18, i32* %11, align 4, !dbg !3473, !tbaa !645
  br label %21, !dbg !3474

21:                                               ; preds = %6, %16
  %22 = phi i32* [ %9, %6 ], [ %17, %16 ], !dbg !3460
  %23 = phi i32 [ %8, %6 ], [ %18, %16 ], !dbg !3459
  store i32 %23, i32* %22, align 4, !dbg !3475, !tbaa !636
  br label %53, !dbg !3476

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3477
  %26 = load i32, i32* %25, align 4, !dbg !3477, !tbaa !645
  call void @llvm.dbg.value(metadata i32 %26, metadata !3451, metadata !DIExpression()), !dbg !3478
  %27 = icmp eq i32 %26, 0, !dbg !3479
  br i1 %27, label %28, label %29, !dbg !3481

28:                                               ; preds = %24
  tail call void @_exit(i32 noundef %1) #37, !dbg !3482
  unreachable, !dbg !3482

29:                                               ; preds = %24
  %30 = icmp sgt i32 %26, 0, !dbg !3483
  br i1 %30, label %31, label %53, !dbg !3484

31:                                               ; preds = %29
  %32 = bitcast i32* %3 to i8*, !dbg !3485
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #35, !dbg !3485
  br label %33, !dbg !3486

33:                                               ; preds = %36, %31
  call void @llvm.dbg.value(metadata i32* %3, metadata !3453, metadata !DIExpression(DW_OP_deref)), !dbg !3487
  %34 = call i32 @waitpid(i32 noundef %26, i32* noundef nonnull %3, i32 noundef 0) #35, !dbg !3488
  %35 = icmp slt i32 %34, 0, !dbg !3489
  br i1 %35, label %36, label %41, !dbg !3486

36:                                               ; preds = %33
  %37 = tail call i32* @__errno_location() #38, !dbg !3490
  %38 = load i32, i32* %37, align 4, !dbg !3490, !tbaa !636
  %39 = icmp eq i32 %38, 4, !dbg !3490
  br i1 %39, label %33, label %40, !dbg !3493, !llvm.loop !3494

40:                                               ; preds = %36
  call void @__assert_fail(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3.108, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 223, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #37, !dbg !3490
  unreachable, !dbg !3490

41:                                               ; preds = %33
  store i32 -1, i32* %25, align 4, !dbg !3496, !tbaa !645
  %42 = load i32, i32* %3, align 4, !dbg !3497, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %42, metadata !3453, metadata !DIExpression()), !dbg !3487
  %43 = and i32 %42, 127, !dbg !3497
  %44 = icmp eq i32 %43, 0, !dbg !3497
  br i1 %44, label %48, label %45, !dbg !3499

45:                                               ; preds = %41
  %46 = call i32 @raise(i32 noundef %43) #35, !dbg !3500
  %47 = load i32, i32* %3, align 4, !dbg !3501, !tbaa !636
  br label %48, !dbg !3500

48:                                               ; preds = %41, %45
  %49 = phi i32 [ %42, %41 ], [ %47, %45 ], !dbg !3501
  call void @llvm.dbg.value(metadata i32 %49, metadata !3453, metadata !DIExpression()), !dbg !3487
  %50 = lshr i32 %49, 8, !dbg !3501
  %51 = and i32 %50, 255, !dbg !3501
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #35, !dbg !3502
  br label %53

52:                                               ; preds = %2
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 233, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.savewd_restore, i64 0, i64 0)) #37, !dbg !3503
  unreachable, !dbg !3503

53:                                               ; preds = %15, %2, %2, %29, %48, %21
  %54 = phi i32 [ %51, %48 ], [ -1, %21 ], [ 0, %29 ], [ 0, %2 ], [ 0, %2 ], [ 0, %15 ], !dbg !3456
  ret i32 %54, !dbg !3506
}

declare !dbg !3507 i32 @waitpid(i32 noundef, i32* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !3511 i32 @raise(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @savewd_finish(%struct.savewd* nocapture noundef %0) local_unnamed_addr #12 !dbg !3513 {
  call void @llvm.dbg.value(metadata %struct.savewd* %0, metadata !3515, metadata !DIExpression()), !dbg !3516
  %2 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 0, !dbg !3517
  %3 = load i32, i32* %2, align 4, !dbg !3517, !tbaa !1471
  switch i32 %3, label %15 [
    i32 4, label %18
    i32 1, label %4
    i32 2, label %4
    i32 0, label %8
    i32 3, label %10
  ], !dbg !3518

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3519
  %6 = load i32, i32* %5, align 4, !dbg !3519, !tbaa !645
  %7 = tail call i32 @close(i32 noundef %6) #35, !dbg !3521
  br label %8, !dbg !3521

8:                                                ; preds = %1, %4
  %9 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3522
  br label %16, !dbg !3523

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.savewd, %struct.savewd* %0, i64 0, i32 1, i32 0, !dbg !3524
  %12 = load i32, i32* %11, align 4, !dbg !3524, !tbaa !645
  %13 = icmp slt i32 %12, 0, !dbg !3524
  br i1 %13, label %16, label %14, !dbg !3527

14:                                               ; preds = %10
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #37, !dbg !3524
  unreachable, !dbg !3524

15:                                               ; preds = %1
  tail call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #37, !dbg !3528
  unreachable, !dbg !3528

16:                                               ; preds = %10, %8
  %17 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32 0, i32* %17, align 4, !dbg !3531, !tbaa !645
  br label %18, !dbg !3532

18:                                               ; preds = %16, %1
  store i32 5, i32* %2, align 4, !dbg !3532, !tbaa !1471
  ret void, !dbg !3533
}

; Function Attrs: nounwind uwtable
define dso_local i32 @savewd_process_files(i32 noundef %0, i8** nocapture noundef readonly %1, i32 (i8*, %struct.savewd*, i8*)* nocapture noundef readonly %2, i8* noundef %3) local_unnamed_addr #12 !dbg !3534 {
  %5 = alloca %struct.savewd, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8** %1, metadata !3542, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 (i8*, %struct.savewd*, i8*)* %2, metadata !3543, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i8* %3, metadata !3544, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3547, metadata !DIExpression()), !dbg !3562
  %6 = bitcast %struct.savewd* %5 to i8*, !dbg !3563
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #35, !dbg !3563
  call void @llvm.dbg.declare(metadata %struct.savewd* %5, metadata !3548, metadata !DIExpression()), !dbg !3564
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3297, metadata !DIExpression()), !dbg !3565
  %7 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 0, !dbg !3567
  store i32 0, i32* %7, align 4, !dbg !3568, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %0, metadata !3546, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3562
  %8 = zext i32 %0 to i64, !dbg !3569
  br label %9, !dbg !3569

9:                                                ; preds = %14, %4
  %10 = phi i64 [ %11, %14 ], [ %8, %4 ]
  %11 = add nsw i64 %10, -1, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %11, metadata !3546, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3562
  %12 = trunc i64 %10 to i32, !dbg !3572
  %13 = icmp sgt i32 %12, 0, !dbg !3572
  br i1 %13, label %14, label %64, !dbg !3574

14:                                               ; preds = %9
  call void @llvm.dbg.value(metadata i64 %11, metadata !3546, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3562
  %15 = and i64 %11, 4294967295, !dbg !3575
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !3575
  %17 = load i8*, i8** %16, align 8, !dbg !3575, !tbaa !544
  %18 = load i8, i8* %17, align 1, !dbg !3575, !tbaa !645
  %19 = icmp eq i8 %18, 47, !dbg !3575
  br i1 %19, label %9, label %20, !dbg !3577, !llvm.loop !3578

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata i32 0, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3547, metadata !DIExpression()), !dbg !3562
  %21 = and i64 %10, 4294967294, !dbg !3580
  %22 = icmp eq i64 %21, 0, !dbg !3580
  br i1 %22, label %64, label %23, !dbg !3581

23:                                               ; preds = %20
  %24 = trunc i64 %11 to i32, !dbg !3571
  %25 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0
  %26 = call i32 @llvm.smax.i32(i32 %24, i32 1), !dbg !3581
  %27 = zext i32 %26 to i64, !dbg !3580
  br label %28, !dbg !3581

28:                                               ; preds = %57, %23
  %29 = phi i32 [ undef, %23 ], [ %58, %57 ]
  %30 = phi i32 [ 0, %23 ], [ %56, %57 ], !dbg !3582
  %31 = phi i64 [ 0, %23 ], [ %44, %57 ]
  %32 = phi i32 [ 0, %23 ], [ %54, %57 ]
  call void @llvm.dbg.value(metadata i64 %31, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %32, metadata !3547, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3587, metadata !DIExpression()), !dbg !3589
  %33 = icmp eq i32 %30, 3, !dbg !3590
  %34 = icmp sgt i32 %29, 0
  %35 = select i1 %33, i1 %34, i1 false, !dbg !3591
  br i1 %35, label %42, label %36, !dbg !3591

36:                                               ; preds = %28
  %37 = getelementptr inbounds i8*, i8** %1, i64 %31, !dbg !3592
  %38 = load i8*, i8** %37, align 8, !dbg !3592, !tbaa !544
  %39 = call i32 %2(i8* noundef %38, %struct.savewd* noundef nonnull %5, i8* noundef %3) #35, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %39, metadata !3549, metadata !DIExpression()), !dbg !3594
  %40 = icmp slt i32 %32, %39, !dbg !3595
  %41 = select i1 %40, i32 %39, i32 %32, !dbg !3597
  call void @llvm.dbg.value(metadata i32 %41, metadata !3547, metadata !DIExpression()), !dbg !3562
  br label %42, !dbg !3598

42:                                               ; preds = %28, %36
  %43 = phi i32 [ %41, %36 ], [ %32, %28 ], !dbg !3562
  call void @llvm.dbg.value(metadata i32 %43, metadata !3547, metadata !DIExpression()), !dbg !3562
  %44 = add nuw nsw i64 %31, 1, !dbg !3599
  %45 = getelementptr inbounds i8*, i8** %1, i64 %44, !dbg !3599
  %46 = load i8*, i8** %45, align 8, !dbg !3599, !tbaa !544
  %47 = load i8, i8* %46, align 1, !dbg !3599, !tbaa !645
  %48 = icmp eq i8 %47, 47, !dbg !3599
  br i1 %48, label %53, label %49, !dbg !3600

49:                                               ; preds = %42
  %50 = call i32 @savewd_restore(%struct.savewd* noundef nonnull %5, i32 noundef %43), !dbg !3601
  call void @llvm.dbg.value(metadata i32 %50, metadata !3555, metadata !DIExpression()), !dbg !3602
  %51 = icmp slt i32 %43, %50, !dbg !3603
  %52 = select i1 %51, i32 %50, i32 %43, !dbg !3605
  call void @llvm.dbg.value(metadata i32 %52, metadata !3547, metadata !DIExpression()), !dbg !3562
  br label %53, !dbg !3606

53:                                               ; preds = %42, %49
  %54 = phi i32 [ %43, %42 ], [ %52, %49 ], !dbg !3562
  call void @llvm.dbg.value(metadata i64 %44, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %54, metadata !3547, metadata !DIExpression()), !dbg !3562
  %55 = icmp eq i64 %44, %27, !dbg !3580
  %56 = load i32, i32* %7, align 4, !dbg !3562, !tbaa !1471
  br i1 %55, label %59, label %57, !dbg !3581, !llvm.loop !3607

57:                                               ; preds = %53
  %58 = load i32, i32* %25, align 4
  br label %28, !dbg !3581

59:                                               ; preds = %53
  call void @llvm.dbg.value(metadata %struct.savewd* %5, metadata !3515, metadata !DIExpression()) #35, !dbg !3609
  switch i32 %56, label %73 [
    i32 4, label %78
    i32 1, label %60
    i32 2, label %60
    i32 0, label %64
    i32 3, label %68
  ], !dbg !3611

60:                                               ; preds = %59, %59
  %61 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3612
  %62 = load i32, i32* %61, align 4, !dbg !3612, !tbaa !645
  %63 = call i32 @close(i32 noundef %62) #35, !dbg !3613
  br label %64, !dbg !3613

64:                                               ; preds = %9, %20, %60, %59
  %65 = phi i32 [ %26, %60 ], [ %26, %59 ], [ 0, %20 ], [ 0, %9 ]
  %66 = phi i32 [ %54, %60 ], [ %54, %59 ], [ 0, %20 ], [ 0, %9 ]
  %67 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3614
  br label %74, !dbg !3615

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.savewd, %struct.savewd* %5, i64 0, i32 1, i32 0, !dbg !3616
  %70 = load i32, i32* %69, align 4, !dbg !3616, !tbaa !645
  %71 = icmp slt i32 %70, 0, !dbg !3616
  br i1 %71, label %74, label %72, !dbg !3617

72:                                               ; preds = %68
  call void @__assert_fail(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4.109, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 256, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #37, !dbg !3616
  unreachable, !dbg !3616

73:                                               ; preds = %59
  call void @__assert_fail(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2.105, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1.106, i64 0, i64 0), i32 noundef 261, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.savewd_finish, i64 0, i64 0)) #37, !dbg !3618
  unreachable, !dbg !3618

74:                                               ; preds = %68, %64
  %75 = phi i32 [ %65, %64 ], [ %26, %68 ]
  %76 = phi i32 [ %66, %64 ], [ %54, %68 ]
  %77 = phi i32* [ %67, %64 ], [ %69, %68 ]
  store i32 0, i32* %77, align 4, !dbg !3619, !tbaa !645
  br label %78, !dbg !3620

78:                                               ; preds = %59, %74
  %79 = phi i32 [ %26, %59 ], [ %75, %74 ]
  %80 = phi i32 [ %54, %59 ], [ %76, %74 ]
  store i32 5, i32* %7, align 4, !dbg !3620, !tbaa !1471
  call void @llvm.dbg.value(metadata i32 %26, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %54, metadata !3547, metadata !DIExpression()), !dbg !3562
  %81 = icmp slt i32 %79, %0, !dbg !3621
  br i1 %81, label %82, label %94, !dbg !3622

82:                                               ; preds = %78
  %83 = zext i32 %79 to i64, !dbg !3622
  br label %84, !dbg !3622

84:                                               ; preds = %82, %84
  %85 = phi i64 [ %83, %82 ], [ %92, %84 ]
  %86 = phi i32 [ %80, %82 ], [ %91, %84 ]
  call void @llvm.dbg.value(metadata i64 %85, metadata !3545, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.value(metadata i32 %86, metadata !3547, metadata !DIExpression()), !dbg !3562
  %87 = getelementptr inbounds i8*, i8** %1, i64 %85, !dbg !3623
  %88 = load i8*, i8** %87, align 8, !dbg !3623, !tbaa !544
  %89 = call i32 %2(i8* noundef %88, %struct.savewd* noundef nonnull %5, i8* noundef %3) #35, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %89, metadata !3558, metadata !DIExpression()), !dbg !3625
  %90 = icmp slt i32 %86, %89, !dbg !3626
  %91 = select i1 %90, i32 %89, i32 %86, !dbg !3628
  call void @llvm.dbg.value(metadata i32 %91, metadata !3547, metadata !DIExpression()), !dbg !3562
  %92 = add nuw nsw i64 %85, 1, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %92, metadata !3545, metadata !DIExpression()), !dbg !3562
  %93 = icmp eq i64 %92, %8
  br i1 %93, label %94, label %84, !dbg !3622, !llvm.loop !3630

94:                                               ; preds = %84, %78
  %95 = phi i32 [ %80, %78 ], [ %91, %84 ], !dbg !3562
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #35, !dbg !3632
  ret i32 %95, !dbg !3633
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !3634 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3673, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %1, metadata !3674, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %2, metadata !3675, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %3, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8** %4, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %5, metadata !3678, metadata !DIExpression()), !dbg !3679
  %7 = icmp eq i8* %1, null, !dbg !3680
  br i1 %7, label %10, label %8, !dbg !3682

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #35, !dbg !3683
  br label %12, !dbg !3683

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.113, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #35, !dbg !3684
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.115, i64 0, i64 0), i32 noundef 5) #35, !dbg !3685
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #35, !dbg !3685
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3686
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.117, i64 0, i64 0), i32 noundef 5) #35, !dbg !3687
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.118, i64 0, i64 0)) #35, !dbg !3687
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3688
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
  ], !dbg !3689

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.119, i64 0, i64 0), i32 noundef 5) #35, !dbg !3690
  %21 = load i8*, i8** %4, align 8, !dbg !3690, !tbaa !544
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #35, !dbg !3690
  br label %147, !dbg !3692

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.120, i64 0, i64 0), i32 noundef 5) #35, !dbg !3693
  %25 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !544
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3693
  %27 = load i8*, i8** %26, align 8, !dbg !3693, !tbaa !544
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #35, !dbg !3693
  br label %147, !dbg !3694

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.121, i64 0, i64 0), i32 noundef 5) #35, !dbg !3695
  %31 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !544
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3695
  %33 = load i8*, i8** %32, align 8, !dbg !3695, !tbaa !544
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3695
  %35 = load i8*, i8** %34, align 8, !dbg !3695, !tbaa !544
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #35, !dbg !3695
  br label %147, !dbg !3696

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.122, i64 0, i64 0), i32 noundef 5) #35, !dbg !3697
  %39 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !544
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %41 = load i8*, i8** %40, align 8, !dbg !3697, !tbaa !544
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3697
  %43 = load i8*, i8** %42, align 8, !dbg !3697, !tbaa !544
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3697
  %45 = load i8*, i8** %44, align 8, !dbg !3697, !tbaa !544
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #35, !dbg !3697
  br label %147, !dbg !3698

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.123, i64 0, i64 0), i32 noundef 5) #35, !dbg !3699
  %49 = load i8*, i8** %4, align 8, !dbg !3699, !tbaa !544
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3699
  %51 = load i8*, i8** %50, align 8, !dbg !3699, !tbaa !544
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3699
  %53 = load i8*, i8** %52, align 8, !dbg !3699, !tbaa !544
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3699
  %55 = load i8*, i8** %54, align 8, !dbg !3699, !tbaa !544
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3699
  %57 = load i8*, i8** %56, align 8, !dbg !3699, !tbaa !544
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #35, !dbg !3699
  br label %147, !dbg !3700

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.124, i64 0, i64 0), i32 noundef 5) #35, !dbg !3701
  %61 = load i8*, i8** %4, align 8, !dbg !3701, !tbaa !544
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3701
  %63 = load i8*, i8** %62, align 8, !dbg !3701, !tbaa !544
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3701
  %65 = load i8*, i8** %64, align 8, !dbg !3701, !tbaa !544
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3701
  %67 = load i8*, i8** %66, align 8, !dbg !3701, !tbaa !544
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3701
  %69 = load i8*, i8** %68, align 8, !dbg !3701, !tbaa !544
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3701
  %71 = load i8*, i8** %70, align 8, !dbg !3701, !tbaa !544
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #35, !dbg !3701
  br label %147, !dbg !3702

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.125, i64 0, i64 0), i32 noundef 5) #35, !dbg !3703
  %75 = load i8*, i8** %4, align 8, !dbg !3703, !tbaa !544
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3703
  %77 = load i8*, i8** %76, align 8, !dbg !3703, !tbaa !544
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3703
  %79 = load i8*, i8** %78, align 8, !dbg !3703, !tbaa !544
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3703
  %81 = load i8*, i8** %80, align 8, !dbg !3703, !tbaa !544
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3703
  %83 = load i8*, i8** %82, align 8, !dbg !3703, !tbaa !544
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3703
  %85 = load i8*, i8** %84, align 8, !dbg !3703, !tbaa !544
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3703
  %87 = load i8*, i8** %86, align 8, !dbg !3703, !tbaa !544
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #35, !dbg !3703
  br label %147, !dbg !3704

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.126, i64 0, i64 0), i32 noundef 5) #35, !dbg !3705
  %91 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !544
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3705
  %93 = load i8*, i8** %92, align 8, !dbg !3705, !tbaa !544
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3705
  %95 = load i8*, i8** %94, align 8, !dbg !3705, !tbaa !544
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3705
  %97 = load i8*, i8** %96, align 8, !dbg !3705, !tbaa !544
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3705
  %99 = load i8*, i8** %98, align 8, !dbg !3705, !tbaa !544
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3705
  %101 = load i8*, i8** %100, align 8, !dbg !3705, !tbaa !544
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3705
  %103 = load i8*, i8** %102, align 8, !dbg !3705, !tbaa !544
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3705
  %105 = load i8*, i8** %104, align 8, !dbg !3705, !tbaa !544
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #35, !dbg !3705
  br label %147, !dbg !3706

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.127, i64 0, i64 0), i32 noundef 5) #35, !dbg !3707
  %109 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !544
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %111 = load i8*, i8** %110, align 8, !dbg !3707, !tbaa !544
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3707
  %113 = load i8*, i8** %112, align 8, !dbg !3707, !tbaa !544
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3707
  %115 = load i8*, i8** %114, align 8, !dbg !3707, !tbaa !544
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3707
  %117 = load i8*, i8** %116, align 8, !dbg !3707, !tbaa !544
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3707
  %119 = load i8*, i8** %118, align 8, !dbg !3707, !tbaa !544
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3707
  %121 = load i8*, i8** %120, align 8, !dbg !3707, !tbaa !544
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3707
  %123 = load i8*, i8** %122, align 8, !dbg !3707, !tbaa !544
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3707
  %125 = load i8*, i8** %124, align 8, !dbg !3707, !tbaa !544
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #35, !dbg !3707
  br label %147, !dbg !3708

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.128, i64 0, i64 0), i32 noundef 5) #35, !dbg !3709
  %129 = load i8*, i8** %4, align 8, !dbg !3709, !tbaa !544
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3709
  %131 = load i8*, i8** %130, align 8, !dbg !3709, !tbaa !544
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3709
  %133 = load i8*, i8** %132, align 8, !dbg !3709, !tbaa !544
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3709
  %135 = load i8*, i8** %134, align 8, !dbg !3709, !tbaa !544
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3709
  %137 = load i8*, i8** %136, align 8, !dbg !3709, !tbaa !544
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3709
  %139 = load i8*, i8** %138, align 8, !dbg !3709, !tbaa !544
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3709
  %141 = load i8*, i8** %140, align 8, !dbg !3709, !tbaa !544
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3709
  %143 = load i8*, i8** %142, align 8, !dbg !3709, !tbaa !544
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3709
  %145 = load i8*, i8** %144, align 8, !dbg !3709, !tbaa !544
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #35, !dbg !3709
  br label %147, !dbg !3710

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !3712 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3716, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8* %1, metadata !3717, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8* %2, metadata !3718, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8* %3, metadata !3719, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i8** %4, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.value(metadata i64 0, metadata !3721, metadata !DIExpression()), !dbg !3722
  br label %6, !dbg !3723

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3725
  call void @llvm.dbg.value(metadata i64 %7, metadata !3721, metadata !DIExpression()), !dbg !3722
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3726
  %9 = load i8*, i8** %8, align 8, !dbg !3726, !tbaa !544
  %10 = icmp eq i8* %9, null, !dbg !3728
  %11 = add i64 %7, 1, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %11, metadata !3721, metadata !DIExpression()), !dbg !3722
  br i1 %10, label %12, label %6, !dbg !3728, !llvm.loop !3730

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3732
  ret void, !dbg !3733
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3734 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3749, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %1, metadata !3750, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %2, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %3, metadata !3752, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3753, metadata !DIExpression()), !dbg !3758
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3759
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3759
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3755, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3754, metadata !DIExpression()), !dbg !3757
  %11 = load i32, i32* %8, align 8, !dbg !3761
  %12 = icmp sgt i32 %11, -1, !dbg !3761
  br i1 %12, label %20, label %13, !dbg !3761

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3761
  store i32 %14, i32* %8, align 8, !dbg !3761
  %15 = icmp ult i32 %11, -7, !dbg !3761
  br i1 %15, label %16, label %20, !dbg !3761

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3761
  %18 = sext i32 %11 to i64, !dbg !3761
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3761
  br label %24, !dbg !3761

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3761
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3761
  store i8* %23, i8** %10, align 8, !dbg !3761
  br label %24, !dbg !3761

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3761
  %28 = load i8*, i8** %27, align 8, !dbg !3761
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3764
  store i8* %28, i8** %29, align 8, !dbg !3765, !tbaa !544
  %30 = icmp eq i8* %28, null, !dbg !3766
  br i1 %30, label %210, label %31, !dbg !3767

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 1, metadata !3754, metadata !DIExpression()), !dbg !3757
  %32 = icmp sgt i32 %25, -1, !dbg !3761
  br i1 %32, label %40, label %33, !dbg !3761

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3761
  store i32 %34, i32* %8, align 8, !dbg !3761
  %35 = icmp ult i32 %25, -7, !dbg !3761
  br i1 %35, label %36, label %40, !dbg !3761

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3761
  %38 = sext i32 %25 to i64, !dbg !3761
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3761
  br label %44, !dbg !3761

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3761
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3761
  store i8* %43, i8** %10, align 8, !dbg !3761
  br label %44, !dbg !3761

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3761
  %48 = load i8*, i8** %47, align 8, !dbg !3761
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3764
  store i8* %48, i8** %49, align 8, !dbg !3765, !tbaa !544
  %50 = icmp eq i8* %48, null, !dbg !3766
  br i1 %50, label %210, label %51, !dbg !3767

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 2, metadata !3754, metadata !DIExpression()), !dbg !3757
  %52 = icmp sgt i32 %45, -1, !dbg !3761
  br i1 %52, label %60, label %53, !dbg !3761

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3761
  store i32 %54, i32* %8, align 8, !dbg !3761
  %55 = icmp ult i32 %45, -7, !dbg !3761
  br i1 %55, label %56, label %60, !dbg !3761

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3761
  %58 = sext i32 %45 to i64, !dbg !3761
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3761
  br label %64, !dbg !3761

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3761
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3761
  store i8* %63, i8** %10, align 8, !dbg !3761
  br label %64, !dbg !3761

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3761
  %68 = load i8*, i8** %67, align 8, !dbg !3761
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3764
  store i8* %68, i8** %69, align 8, !dbg !3765, !tbaa !544
  %70 = icmp eq i8* %68, null, !dbg !3766
  br i1 %70, label %210, label %71, !dbg !3767

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 3, metadata !3754, metadata !DIExpression()), !dbg !3757
  %72 = icmp sgt i32 %65, -1, !dbg !3761
  br i1 %72, label %80, label %73, !dbg !3761

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3761
  store i32 %74, i32* %8, align 8, !dbg !3761
  %75 = icmp ult i32 %65, -7, !dbg !3761
  br i1 %75, label %76, label %80, !dbg !3761

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3761
  %78 = sext i32 %65 to i64, !dbg !3761
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3761
  br label %84, !dbg !3761

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3761
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3761
  store i8* %83, i8** %10, align 8, !dbg !3761
  br label %84, !dbg !3761

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3761
  %88 = load i8*, i8** %87, align 8, !dbg !3761
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3764
  store i8* %88, i8** %89, align 8, !dbg !3765, !tbaa !544
  %90 = icmp eq i8* %88, null, !dbg !3766
  br i1 %90, label %210, label %91, !dbg !3767

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 4, metadata !3754, metadata !DIExpression()), !dbg !3757
  %92 = icmp sgt i32 %85, -1, !dbg !3761
  br i1 %92, label %100, label %93, !dbg !3761

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3761
  store i32 %94, i32* %8, align 8, !dbg !3761
  %95 = icmp ult i32 %85, -7, !dbg !3761
  br i1 %95, label %96, label %100, !dbg !3761

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3761
  %98 = sext i32 %85 to i64, !dbg !3761
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3761
  br label %104, !dbg !3761

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3761
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3761
  store i8* %103, i8** %10, align 8, !dbg !3761
  br label %104, !dbg !3761

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3761
  %108 = load i8*, i8** %107, align 8, !dbg !3761
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3764
  store i8* %108, i8** %109, align 8, !dbg !3765, !tbaa !544
  %110 = icmp eq i8* %108, null, !dbg !3766
  br i1 %110, label %210, label %111, !dbg !3767

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 5, metadata !3754, metadata !DIExpression()), !dbg !3757
  %112 = icmp sgt i32 %105, -1, !dbg !3761
  br i1 %112, label %120, label %113, !dbg !3761

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3761
  store i32 %114, i32* %8, align 8, !dbg !3761
  %115 = icmp ult i32 %105, -7, !dbg !3761
  br i1 %115, label %116, label %120, !dbg !3761

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3761
  %118 = sext i32 %105 to i64, !dbg !3761
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3761
  br label %124, !dbg !3761

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3761
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3761
  store i8* %123, i8** %10, align 8, !dbg !3761
  br label %124, !dbg !3761

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3761
  %128 = load i8*, i8** %127, align 8, !dbg !3761
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3764
  store i8* %128, i8** %129, align 8, !dbg !3765, !tbaa !544
  %130 = icmp eq i8* %128, null, !dbg !3766
  br i1 %130, label %210, label %131, !dbg !3767

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 6, metadata !3754, metadata !DIExpression()), !dbg !3757
  %132 = icmp sgt i32 %125, -1, !dbg !3761
  br i1 %132, label %140, label %133, !dbg !3761

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3761
  store i32 %134, i32* %8, align 8, !dbg !3761
  %135 = icmp ult i32 %125, -7, !dbg !3761
  br i1 %135, label %136, label %140, !dbg !3761

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3761
  %138 = sext i32 %125 to i64, !dbg !3761
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3761
  br label %144, !dbg !3761

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3761
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3761
  store i8* %143, i8** %10, align 8, !dbg !3761
  br label %144, !dbg !3761

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3761
  %148 = load i8*, i8** %147, align 8, !dbg !3761
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3764
  store i8* %148, i8** %149, align 8, !dbg !3765, !tbaa !544
  %150 = icmp eq i8* %148, null, !dbg !3766
  br i1 %150, label %210, label %151, !dbg !3767

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 7, metadata !3754, metadata !DIExpression()), !dbg !3757
  %152 = icmp sgt i32 %145, -1, !dbg !3761
  br i1 %152, label %160, label %153, !dbg !3761

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3761
  store i32 %154, i32* %8, align 8, !dbg !3761
  %155 = icmp ult i32 %145, -7, !dbg !3761
  br i1 %155, label %156, label %160, !dbg !3761

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3761
  %158 = sext i32 %145 to i64, !dbg !3761
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3761
  br label %164, !dbg !3761

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3761
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3761
  store i8* %163, i8** %10, align 8, !dbg !3761
  br label %164, !dbg !3761

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3761
  %168 = load i8*, i8** %167, align 8, !dbg !3761
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3764
  store i8* %168, i8** %169, align 8, !dbg !3765, !tbaa !544
  %170 = icmp eq i8* %168, null, !dbg !3766
  br i1 %170, label %210, label %171, !dbg !3767

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 8, metadata !3754, metadata !DIExpression()), !dbg !3757
  %172 = icmp sgt i32 %165, -1, !dbg !3761
  br i1 %172, label %180, label %173, !dbg !3761

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3761
  store i32 %174, i32* %8, align 8, !dbg !3761
  %175 = icmp ult i32 %165, -7, !dbg !3761
  br i1 %175, label %176, label %180, !dbg !3761

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3761
  %178 = sext i32 %165 to i64, !dbg !3761
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3761
  br label %184, !dbg !3761

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3761
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3761
  store i8* %183, i8** %10, align 8, !dbg !3761
  br label %184, !dbg !3761

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3761
  %188 = load i8*, i8** %187, align 8, !dbg !3761
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3764
  store i8* %188, i8** %189, align 8, !dbg !3765, !tbaa !544
  %190 = icmp eq i8* %188, null, !dbg !3766
  br i1 %190, label %210, label %191, !dbg !3767

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3754, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i64 9, metadata !3754, metadata !DIExpression()), !dbg !3757
  %192 = icmp sgt i32 %185, -1, !dbg !3761
  br i1 %192, label %200, label %193, !dbg !3761

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3761
  store i32 %194, i32* %8, align 8, !dbg !3761
  %195 = icmp ult i32 %185, -7, !dbg !3761
  br i1 %195, label %196, label %200, !dbg !3761

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3761
  %198 = sext i32 %185 to i64, !dbg !3761
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3761
  br label %203, !dbg !3761

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3761
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3761
  store i8* %202, i8** %10, align 8, !dbg !3761
  br label %203, !dbg !3761

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3761
  %206 = load i8*, i8** %205, align 8, !dbg !3761
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3764
  store i8* %206, i8** %207, align 8, !dbg !3765, !tbaa !544
  %208 = icmp eq i8* %206, null, !dbg !3766
  %209 = select i1 %208, i64 9, i64 10, !dbg !3767
  br label %210, !dbg !3767

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3768
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3769
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #35, !dbg !3770
  ret void, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3771 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %2, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3778, metadata !DIExpression()), !dbg !3780
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3781
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3781
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3779, metadata !DIExpression()), !dbg !3782
  call void @llvm.va_start(i8* nonnull %7), !dbg !3783
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3784, !tbaa.struct !1186
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #35, !dbg !3784
  call void @llvm.va_end(i8* nonnull %7), !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !3786
  ret void, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3787 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3788, !tbaa !544
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.116, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3788
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.133, i64 0, i64 0), i32 noundef 5) #35, !dbg !3789
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.134, i64 0, i64 0)) #35, !dbg !3789
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.135, i64 0, i64 0), i32 noundef 5) #35, !dbg !3790
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.136, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.137, i64 0, i64 0)) #35, !dbg !3790
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.114, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.138, i64 0, i64 0), i32 noundef 5) #35, !dbg !3791
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.139, i64 0, i64 0)) #35, !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !3793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3798, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3799, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #35, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()) #35, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()) #35, !dbg !3807
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #35, !dbg !3815
  %5 = icmp eq i8* %4, null, !dbg !3817
  br i1 %5, label %6, label %7, !dbg !3819

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3820
  unreachable, !dbg !3820

7:                                                ; preds = %3
  ret i8* %4, !dbg !3821
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3822
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #35, !dbg !3824
  %5 = icmp eq i8* %4, null, !dbg !3826
  br i1 %5, label %6, label %7, !dbg !3827

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3828
  unreachable, !dbg !3828

7:                                                ; preds = %3
  ret i8* %4, !dbg !3829
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3830 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()), !dbg !3835
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #35, !dbg !3837
  %3 = icmp eq i8* %2, null, !dbg !3839
  br i1 %3, label %4, label %5, !dbg !3840

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3841
  unreachable, !dbg !3841

5:                                                ; preds = %1
  ret i8* %2, !dbg !3842
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3843 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()), !dbg !3848
  call void @llvm.dbg.value(metadata i64 %0, metadata !3849, metadata !DIExpression()) #35, !dbg !3853
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3855
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #35, !dbg !3856
  %3 = icmp eq i8* %2, null, !dbg !3858
  br i1 %3, label %4, label %5, !dbg !3859

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3860
  unreachable, !dbg !3860

5:                                                ; preds = %1
  ret i8* %2, !dbg !3861
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !3862 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3866, metadata !DIExpression()), !dbg !3867
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()) #35, !dbg !3868
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #35, !dbg !3870
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #35, !dbg !3871
  %3 = icmp eq i8* %2, null, !dbg !3873
  br i1 %3, label %4, label %5, !dbg !3874

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !3875
  unreachable, !dbg !3875

5:                                                ; preds = %1
  ret i8* %2, !dbg !3876
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3877 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i64 %1, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.value(metadata i8* %0, metadata !3884, metadata !DIExpression()) #35, !dbg !3889
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()) #35, !dbg !3889
  %3 = icmp eq i64 %1, 0, !dbg !3891
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3891
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3892
  call void @llvm.dbg.value(metadata i8* %5, metadata !3810, metadata !DIExpression()) #35, !dbg !3893
  %6 = icmp eq i8* %5, null, !dbg !3895
  br i1 %6, label %7, label %8, !dbg !3896

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3897
  unreachable, !dbg !3897

8:                                                ; preds = %2
  ret i8* %5, !dbg !3898
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !3899 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i64 %1, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @llvm.dbg.value(metadata i8* %0, metadata !3906, metadata !DIExpression()) #35, !dbg !3910
  call void @llvm.dbg.value(metadata i64 %1, metadata !3909, metadata !DIExpression()) #35, !dbg !3910
  call void @llvm.dbg.value(metadata i8* %0, metadata !3884, metadata !DIExpression()) #35, !dbg !3912
  call void @llvm.dbg.value(metadata i64 %1, metadata !3888, metadata !DIExpression()) #35, !dbg !3912
  %3 = icmp eq i64 %1, 0, !dbg !3914
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3914
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #35, !dbg !3915
  call void @llvm.dbg.value(metadata i8* %5, metadata !3810, metadata !DIExpression()) #35, !dbg !3916
  %6 = icmp eq i8* %5, null, !dbg !3918
  br i1 %6, label %7, label %8, !dbg !3919

7:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3920
  unreachable, !dbg !3920

8:                                                ; preds = %2
  ret i8* %5, !dbg !3921
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !3922 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3926, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %1, metadata !3927, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i64 %2, metadata !3928, metadata !DIExpression()), !dbg !3929
  call void @llvm.dbg.value(metadata i8* %0, metadata !3930, metadata !DIExpression()) #35, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %1, metadata !3933, metadata !DIExpression()) #35, !dbg !3935
  call void @llvm.dbg.value(metadata i64 %2, metadata !3934, metadata !DIExpression()) #35, !dbg !3935
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #35, !dbg !3937
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #35, !dbg !3938
  %5 = icmp eq i8* %4, null, !dbg !3940
  br i1 %5, label %6, label %7, !dbg !3941

6:                                                ; preds = %3
  tail call void @xalloc_die() #37, !dbg !3942
  unreachable, !dbg !3942

7:                                                ; preds = %3
  ret i8* %4, !dbg !3943
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3944 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3948, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %1, metadata !3949, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i8* null, metadata !3802, metadata !DIExpression()) #35, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()) #35, !dbg !3951
  call void @llvm.dbg.value(metadata i64 %1, metadata !3806, metadata !DIExpression()) #35, !dbg !3951
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3953
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !3954
  %4 = icmp eq i8* %3, null, !dbg !3956
  br i1 %4, label %5, label %6, !dbg !3957

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3958
  unreachable, !dbg !3958

6:                                                ; preds = %2
  ret i8* %3, !dbg !3959
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !3960 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 %1, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i8* null, metadata !3926, metadata !DIExpression()) #35, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %0, metadata !3927, metadata !DIExpression()) #35, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %1, metadata !3928, metadata !DIExpression()) #35, !dbg !3967
  call void @llvm.dbg.value(metadata i8* null, metadata !3930, metadata !DIExpression()) #35, !dbg !3969
  call void @llvm.dbg.value(metadata i64 %0, metadata !3933, metadata !DIExpression()) #35, !dbg !3969
  call void @llvm.dbg.value(metadata i64 %1, metadata !3934, metadata !DIExpression()) #35, !dbg !3969
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #35, !dbg !3971
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !3972
  %4 = icmp eq i8* %3, null, !dbg !3974
  br i1 %4, label %5, label %6, !dbg !3975

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !3976
  unreachable, !dbg !3976

6:                                                ; preds = %2
  ret i8* %3, !dbg !3977
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3978 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3982, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i64* %1, metadata !3983, metadata !DIExpression()), !dbg !3984
  call void @llvm.dbg.value(metadata i8* %0, metadata !453, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64* %1, metadata !454, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i64 1, metadata !455, metadata !DIExpression()) #35, !dbg !3985
  %3 = load i64, i64* %1, align 8, !dbg !3987, !tbaa !2741
  call void @llvm.dbg.value(metadata i64 %3, metadata !456, metadata !DIExpression()) #35, !dbg !3985
  %4 = icmp eq i8* %0, null, !dbg !3988
  br i1 %4, label %5, label %8, !dbg !3990

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3991
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3994
  br label %15, !dbg !3994

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3995
  %10 = add nuw i64 %9, 1, !dbg !3995
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #35, !dbg !3995
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3995
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3995
  call void @llvm.dbg.value(metadata i64 %13, metadata !456, metadata !DIExpression()) #35, !dbg !3985
  br i1 %12, label %14, label %15, !dbg !3998

14:                                               ; preds = %8
  tail call void @xalloc_die() #37, !dbg !3999
  unreachable, !dbg !3999

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3985
  call void @llvm.dbg.value(metadata i64 %16, metadata !456, metadata !DIExpression()) #35, !dbg !3985
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #35, !dbg !4000
  call void @llvm.dbg.value(metadata i64 %16, metadata !3805, metadata !DIExpression()) #35, !dbg !4000
  call void @llvm.dbg.value(metadata i64 1, metadata !3806, metadata !DIExpression()) #35, !dbg !4000
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #35, !dbg !4002
  call void @llvm.dbg.value(metadata i8* %17, metadata !3810, metadata !DIExpression()) #35, !dbg !4003
  %18 = icmp eq i8* %17, null, !dbg !4005
  br i1 %18, label %19, label %20, !dbg !4006

19:                                               ; preds = %15
  tail call void @xalloc_die() #37, !dbg !4007
  unreachable, !dbg !4007

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !453, metadata !DIExpression()) #35, !dbg !3985
  store i64 %16, i64* %1, align 8, !dbg !4008, !tbaa !2741
  ret i8* %17, !dbg !4009
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !448 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !453, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64* %1, metadata !454, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i64 %2, metadata !455, metadata !DIExpression()), !dbg !4010
  %4 = load i64, i64* %1, align 8, !dbg !4011, !tbaa !2741
  call void @llvm.dbg.value(metadata i64 %4, metadata !456, metadata !DIExpression()), !dbg !4010
  %5 = icmp eq i8* %0, null, !dbg !4012
  br i1 %5, label %6, label %13, !dbg !4013

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4014
  br i1 %7, label %8, label %20, !dbg !4015

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %9, metadata !456, metadata !DIExpression()), !dbg !4010
  %10 = icmp ugt i64 %2, 128, !dbg !4018
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4019
  call void @llvm.dbg.value(metadata i64 %12, metadata !456, metadata !DIExpression()), !dbg !4010
  br label %20, !dbg !4020

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4021
  %15 = add nuw i64 %14, 1, !dbg !4021
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4021
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4021
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %18, metadata !456, metadata !DIExpression()), !dbg !4010
  br i1 %17, label %19, label %20, !dbg !4022

19:                                               ; preds = %13
  tail call void @xalloc_die() #37, !dbg !4023
  unreachable, !dbg !4023

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4010
  call void @llvm.dbg.value(metadata i64 %21, metadata !456, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #35, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %21, metadata !3805, metadata !DIExpression()) #35, !dbg !4024
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()) #35, !dbg !4024
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #35, !dbg !4026
  call void @llvm.dbg.value(metadata i8* %22, metadata !3810, metadata !DIExpression()) #35, !dbg !4027
  %23 = icmp eq i8* %22, null, !dbg !4029
  br i1 %23, label %24, label %25, !dbg !4030

24:                                               ; preds = %20
  tail call void @xalloc_die() #37, !dbg !4031
  unreachable, !dbg !4031

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !453, metadata !DIExpression()), !dbg !4010
  store i64 %21, i64* %1, align 8, !dbg !4032, !tbaa !2741
  ret i8* %22, !dbg !4033
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !460 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !468, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64* %1, metadata !469, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %2, metadata !470, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %3, metadata !471, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %4, metadata !472, metadata !DIExpression()), !dbg !4034
  %6 = load i64, i64* %1, align 8, !dbg !4035, !tbaa !2741
  call void @llvm.dbg.value(metadata i64 %6, metadata !473, metadata !DIExpression()), !dbg !4034
  %7 = ashr i64 %6, 1, !dbg !4036
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4036
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4036
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4036
  call void @llvm.dbg.value(metadata i64 %10, metadata !474, metadata !DIExpression()), !dbg !4034
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %11, metadata !474, metadata !DIExpression()), !dbg !4034
  %12 = icmp sgt i64 %3, -1, !dbg !4039
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4041
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4041
  call void @llvm.dbg.value(metadata i64 %15, metadata !474, metadata !DIExpression()), !dbg !4034
  %16 = icmp slt i64 %4, 0, !dbg !4042
  br i1 %16, label %17, label %30, !dbg !4042

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4042
  br i1 %18, label %19, label %24, !dbg !4042

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4042
  %21 = udiv i64 9223372036854775807, %20, !dbg !4042
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4042
  br i1 %23, label %46, label %43, !dbg !4042

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4042
  br i1 %25, label %43, label %26, !dbg !4042

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4042
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4042
  %29 = icmp ult i64 %28, %15, !dbg !4042
  br i1 %29, label %46, label %43, !dbg !4042

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4042
  br i1 %31, label %43, label %32, !dbg !4042

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4042
  br i1 %33, label %34, label %40, !dbg !4042

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4042
  br i1 %35, label %43, label %36, !dbg !4042

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4042
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4042
  %39 = icmp ult i64 %38, %4, !dbg !4042
  br i1 %39, label %46, label %43, !dbg !4042

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4042
  %42 = icmp ult i64 %41, %15, !dbg !4042
  br i1 %42, label %46, label %43, !dbg !4042

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4034
  %44 = mul i64 %15, %4, !dbg !4042
  call void @llvm.dbg.value(metadata i64 %44, metadata !475, metadata !DIExpression()), !dbg !4034
  %45 = icmp slt i64 %44, 128, !dbg !4042
  br i1 %45, label %46, label %52, !dbg !4042

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !476, metadata !DIExpression()), !dbg !4034
  %48 = sdiv i64 %47, %4, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %48, metadata !474, metadata !DIExpression()), !dbg !4034
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4046
  call void @llvm.dbg.value(metadata i64 %51, metadata !475, metadata !DIExpression()), !dbg !4034
  br label %52, !dbg !4047

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4034
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4034
  call void @llvm.dbg.value(metadata i64 %54, metadata !475, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %53, metadata !474, metadata !DIExpression()), !dbg !4034
  %55 = icmp eq i8* %0, null, !dbg !4048
  br i1 %55, label %56, label %57, !dbg !4050

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4051, !tbaa !2741
  br label %57, !dbg !4052

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4053
  %59 = icmp slt i64 %58, %2, !dbg !4055
  br i1 %59, label %60, label %97, !dbg !4056

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4057
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4057
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %63, metadata !474, metadata !DIExpression()), !dbg !4034
  br i1 %62, label %96, label %64, !dbg !4058

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4059
  br i1 %66, label %96, label %67, !dbg !4059

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4060

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4060
  br i1 %69, label %70, label %75, !dbg !4060

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4060
  %72 = udiv i64 9223372036854775807, %71, !dbg !4060
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4060
  br i1 %74, label %96, label %94, !dbg !4060

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4060
  br i1 %76, label %94, label %77, !dbg !4060

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4060
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4060
  %80 = icmp ult i64 %79, %63, !dbg !4060
  br i1 %80, label %96, label %94, !dbg !4060

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4060
  br i1 %82, label %94, label %83, !dbg !4060

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4060
  br i1 %84, label %85, label %91, !dbg !4060

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4060
  br i1 %86, label %94, label %87, !dbg !4060

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4060
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4060
  %90 = icmp ult i64 %89, %4, !dbg !4060
  br i1 %90, label %96, label %94, !dbg !4060

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4060
  %93 = icmp ult i64 %92, %63, !dbg !4060
  br i1 %93, label %96, label %94, !dbg !4060

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !475, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4034
  %95 = mul i64 %63, %4, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %95, metadata !475, metadata !DIExpression()), !dbg !4034
  br label %97, !dbg !4061

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #37, !dbg !4062
  unreachable, !dbg !4062

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4034
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4034
  call void @llvm.dbg.value(metadata i64 %99, metadata !475, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i64 %98, metadata !474, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #35, !dbg !4063
  call void @llvm.dbg.value(metadata i64 %99, metadata !3882, metadata !DIExpression()) #35, !dbg !4063
  call void @llvm.dbg.value(metadata i8* %0, metadata !3884, metadata !DIExpression()) #35, !dbg !4065
  call void @llvm.dbg.value(metadata i64 %99, metadata !3888, metadata !DIExpression()) #35, !dbg !4065
  %100 = icmp eq i64 %99, 0, !dbg !4067
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4067
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #35, !dbg !4068
  call void @llvm.dbg.value(metadata i8* %102, metadata !3810, metadata !DIExpression()) #35, !dbg !4069
  %103 = icmp eq i8* %102, null, !dbg !4071
  br i1 %103, label %104, label %105, !dbg !4072

104:                                              ; preds = %97
  tail call void @xalloc_die() #37, !dbg !4073
  unreachable, !dbg !4073

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !468, metadata !DIExpression()), !dbg !4034
  store i64 %98, i64* %1, align 8, !dbg !4074, !tbaa !2741
  ret i8* %102, !dbg !4075
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4076 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i64 %0, metadata !4080, metadata !DIExpression()) #35, !dbg !4084
  call void @llvm.dbg.value(metadata i64 1, metadata !4083, metadata !DIExpression()) #35, !dbg !4084
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4086
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #35, !dbg !4087
  %3 = icmp eq i8* %2, null, !dbg !4089
  br i1 %3, label %4, label %5, !dbg !4090

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4091
  unreachable, !dbg !4091

5:                                                ; preds = %1
  ret i8* %2, !dbg !4092
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4081 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4080, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.value(metadata i64 %1, metadata !4083, metadata !DIExpression()), !dbg !4093
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4094
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !4095
  %4 = icmp eq i8* %3, null, !dbg !4097
  br i1 %4, label %5, label %6, !dbg !4098

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4099
  unreachable, !dbg !4099

6:                                                ; preds = %2
  ret i8* %3, !dbg !4100
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4101 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4103, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 %0, metadata !4105, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i64 1, metadata !4108, metadata !DIExpression()) #35, !dbg !4109
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()) #35, !dbg !4115
  call void @llvm.dbg.value(metadata i64 1, metadata !4114, metadata !DIExpression()) #35, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()) #35, !dbg !4115
  call void @llvm.dbg.value(metadata i64 1, metadata !4114, metadata !DIExpression()) #35, !dbg !4115
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #35, !dbg !4117
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #35, !dbg !4118
  %3 = icmp eq i8* %2, null, !dbg !4120
  br i1 %3, label %4, label %5, !dbg !4121

4:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4122
  unreachable, !dbg !4122

5:                                                ; preds = %1
  ret i8* %2, !dbg !4123
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4106 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4105, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %1, metadata !4108, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()) #35, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()) #35, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %0, metadata !4111, metadata !DIExpression()) #35, !dbg !4125
  call void @llvm.dbg.value(metadata i64 %1, metadata !4114, metadata !DIExpression()) #35, !dbg !4125
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #35, !dbg !4127
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !4128
  %4 = icmp eq i8* %3, null, !dbg !4130
  br i1 %4, label %5, label %6, !dbg !4131

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4132
  unreachable, !dbg !4132

6:                                                ; preds = %2
  ret i8* %3, !dbg !4133
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4138, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %1, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()) #35, !dbg !4141
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4143
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !4144
  %4 = icmp eq i8* %3, null, !dbg !4146
  br i1 %4, label %5, label %6, !dbg !4147

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4148
  unreachable, !dbg !4148

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4149, metadata !DIExpression()) #35, !dbg !4157
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4157
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()) #35, !dbg !4157
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4159
  ret i8* %3, !dbg !4160
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4165, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %1, metadata !4166, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()) #35, !dbg !4168
  call void @llvm.dbg.value(metadata i64 %1, metadata !3849, metadata !DIExpression()) #35, !dbg !4170
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #35, !dbg !4172
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #35, !dbg !4173
  %4 = icmp eq i8* %3, null, !dbg !4175
  br i1 %4, label %5, label %6, !dbg !4176

5:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4177
  unreachable, !dbg !4177

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4149, metadata !DIExpression()) #35, !dbg !4178
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4178
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()) #35, !dbg !4178
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4180
  ret i8* %3, !dbg !4181
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !4182 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4186, metadata !DIExpression()), !dbg !4189
  call void @llvm.dbg.value(metadata i64 %1, metadata !4187, metadata !DIExpression()), !dbg !4189
  %3 = add nsw i64 %1, 1, !dbg !4190
  call void @llvm.dbg.value(metadata i64 %3, metadata !3847, metadata !DIExpression()) #35, !dbg !4191
  call void @llvm.dbg.value(metadata i64 %3, metadata !3849, metadata !DIExpression()) #35, !dbg !4193
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4195
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #35, !dbg !4196
  %5 = icmp eq i8* %4, null, !dbg !4198
  br i1 %5, label %6, label %7, !dbg !4199

6:                                                ; preds = %2
  tail call void @xalloc_die() #37, !dbg !4200
  unreachable, !dbg !4200

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4188, metadata !DIExpression()), !dbg !4189
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4201
  store i8 0, i8* %8, align 1, !dbg !4202, !tbaa !645
  call void @llvm.dbg.value(metadata i8* %4, metadata !4149, metadata !DIExpression()) #35, !dbg !4203
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4203
  call void @llvm.dbg.value(metadata i64 %1, metadata !4156, metadata !DIExpression()) #35, !dbg !4203
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #35, !dbg !4205
  ret i8* %4, !dbg !4206
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !4207 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4209, metadata !DIExpression()), !dbg !4210
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #36, !dbg !4211
  %3 = add i64 %2, 1, !dbg !4212
  call void @llvm.dbg.value(metadata i8* %0, metadata !4138, metadata !DIExpression()) #35, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %3, metadata !4139, metadata !DIExpression()) #35, !dbg !4213
  call void @llvm.dbg.value(metadata i64 %3, metadata !3834, metadata !DIExpression()) #35, !dbg !4215
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #35, !dbg !4217
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #35, !dbg !4218
  %5 = icmp eq i8* %4, null, !dbg !4220
  br i1 %5, label %6, label %7, !dbg !4221

6:                                                ; preds = %1
  tail call void @xalloc_die() #37, !dbg !4222
  unreachable, !dbg !4222

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4149, metadata !DIExpression()) #35, !dbg !4223
  call void @llvm.dbg.value(metadata i8* %0, metadata !4155, metadata !DIExpression()) #35, !dbg !4223
  call void @llvm.dbg.value(metadata i64 %3, metadata !4156, metadata !DIExpression()) #35, !dbg !4223
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #35, !dbg !4225
  ret i8* %4, !dbg !4226
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4227 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4232, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %1, metadata !4229, metadata !DIExpression()), !dbg !4233
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.154, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.155, i64 0, i64 0), i32 noundef 5) #35, !dbg !4232
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.156, i64 0, i64 0), i8* noundef %2) #35, !dbg !4232
  %3 = icmp eq i32 %1, 0, !dbg !4232
  tail call void @llvm.assume(i1 %3), !dbg !4232
  tail call void @abort() #37, !dbg !4234
  unreachable, !dbg !4234
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4235 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4273, metadata !DIExpression()), !dbg !4278
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #35, !dbg !4279
  call void @llvm.dbg.value(metadata i1 undef, metadata !4274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4278
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4280, metadata !DIExpression()), !dbg !4283
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4285
  %4 = load i32, i32* %3, align 8, !dbg !4285, !tbaa !4286
  %5 = and i32 %4, 32, !dbg !4287
  %6 = icmp eq i32 %5, 0, !dbg !4287
  call void @llvm.dbg.value(metadata i1 %6, metadata !4276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4278
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #35, !dbg !4288
  %8 = icmp eq i32 %7, 0, !dbg !4289
  call void @llvm.dbg.value(metadata i1 %8, metadata !4277, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4278
  br i1 %6, label %9, label %19, !dbg !4290

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4292
  call void @llvm.dbg.value(metadata i1 %10, metadata !4274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4278
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4293
  %12 = xor i1 %8, true, !dbg !4293
  %13 = sext i1 %12 to i32, !dbg !4293
  br i1 %11, label %22, label %14, !dbg !4293

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #38, !dbg !4294
  %16 = load i32, i32* %15, align 4, !dbg !4294, !tbaa !636
  %17 = icmp ne i32 %16, 9, !dbg !4295
  %18 = sext i1 %17 to i32, !dbg !4296
  br label %22, !dbg !4296

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4297

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #38, !dbg !4299
  store i32 0, i32* %21, align 4, !dbg !4301, !tbaa !636
  br label %22, !dbg !4299

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4278
  ret i32 %23, !dbg !4302
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !4303 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4341, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4342, metadata !DIExpression()), !dbg !4345
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4346
  call void @llvm.dbg.value(metadata i32 %2, metadata !4343, metadata !DIExpression()), !dbg !4345
  %3 = icmp slt i32 %2, 0, !dbg !4347
  br i1 %3, label %4, label %6, !dbg !4349

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4350
  br label %24, !dbg !4351

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4352
  %8 = icmp eq i32 %7, 0, !dbg !4352
  br i1 %8, label %13, label %9, !dbg !4354

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4355
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #35, !dbg !4356
  %12 = icmp eq i64 %11, -1, !dbg !4357
  br i1 %12, label %16, label %13, !dbg !4358

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4359
  %15 = icmp eq i32 %14, 0, !dbg !4359
  br i1 %15, label %16, label %18, !dbg !4360

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4344, metadata !DIExpression()), !dbg !4345
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4361
  call void @llvm.dbg.value(metadata i32 %21, metadata !4344, metadata !DIExpression()), !dbg !4345
  br label %24, !dbg !4362

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #38, !dbg !4363
  %20 = load i32, i32* %19, align 4, !dbg !4363, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %20, metadata !4342, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4344, metadata !DIExpression()), !dbg !4345
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !4361
  call void @llvm.dbg.value(metadata i32 %21, metadata !4344, metadata !DIExpression()), !dbg !4345
  %22 = icmp eq i32 %20, 0, !dbg !4364
  br i1 %22, label %24, label %23, !dbg !4362

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !4366, !tbaa !636
  call void @llvm.dbg.value(metadata i32 -1, metadata !4344, metadata !DIExpression()), !dbg !4345
  br label %24, !dbg !4368

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4345
  ret i32 %25, !dbg !4369
}

; Function Attrs: nofree nounwind
declare !dbg !4370 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4371 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4372 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @open_safer(i8* nocapture noundef readonly %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4375 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4379, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 %1, metadata !4380, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.value(metadata i32 0, metadata !4381, metadata !DIExpression()), !dbg !4395
  %4 = and i32 %1, 64, !dbg !4396
  %5 = icmp eq i32 %4, 0, !dbg !4396
  br i1 %5, label %27, label %6, !dbg !4397

6:                                                ; preds = %2
  %7 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !4398
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4398
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4382, metadata !DIExpression()), !dbg !4399
  call void @llvm.va_start(i8* nonnull %7), !dbg !4400
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !4401
  %9 = load i32, i32* %8, align 8, !dbg !4401
  %10 = icmp sgt i32 %9, -1, !dbg !4401
  br i1 %10, label %19, label %11, !dbg !4401

11:                                               ; preds = %6
  %12 = add nsw i32 %9, 8, !dbg !4401
  store i32 %12, i32* %8, align 8, !dbg !4401
  %13 = icmp ult i32 %9, -7, !dbg !4401
  br i1 %13, label %14, label %19, !dbg !4401

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !4401
  %16 = load i8*, i8** %15, align 8, !dbg !4401
  %17 = sext i32 %9 to i64, !dbg !4401
  %18 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !4401
  br label %23, !dbg !4401

19:                                               ; preds = %11, %6
  %20 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !4401
  %21 = load i8*, i8** %20, align 8, !dbg !4401
  %22 = getelementptr inbounds i8, i8* %21, i64 8, !dbg !4401
  store i8* %22, i8** %20, align 8, !dbg !4401
  br label %23, !dbg !4401

23:                                               ; preds = %19, %14
  %24 = phi i8* [ %18, %14 ], [ %21, %19 ]
  %25 = bitcast i8* %24 to i32*, !dbg !4401
  %26 = load i32, i32* %25, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %26, metadata !4381, metadata !DIExpression()), !dbg !4395
  call void @llvm.va_end(i8* nonnull %7), !dbg !4402
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #35, !dbg !4403
  br label %27, !dbg !4404

27:                                               ; preds = %23, %2
  %28 = phi i32 [ %26, %23 ], [ 0, %2 ], !dbg !4395
  call void @llvm.dbg.value(metadata i32 %28, metadata !4381, metadata !DIExpression()), !dbg !4395
  %29 = call i32 (i8*, i32, ...) @open(i8* noundef %0, i32 noundef %1, i32 noundef %28) #35, !dbg !4405
  %30 = call i32 @fd_safer(i32 noundef %29) #35, !dbg !4406
  ret i32 %30, !dbg !4407
}

; Function Attrs: nofree
declare !dbg !4408 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #32

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !4409 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4447, metadata !DIExpression()), !dbg !4448
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !4449
  br i1 %2, label %6, label %3, !dbg !4451

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4452
  %5 = icmp eq i32 %4, 0, !dbg !4452
  br i1 %5, label %6, label %8, !dbg !4453

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !4454
  br label %17, !dbg !4455

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4456, metadata !DIExpression()) #35, !dbg !4461
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4463
  %10 = load i32, i32* %9, align 8, !dbg !4463, !tbaa !4286
  %11 = and i32 %10, 256, !dbg !4465
  %12 = icmp eq i32 %11, 0, !dbg !4465
  br i1 %12, label %15, label %13, !dbg !4466

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #35, !dbg !4467
  br label %15, !dbg !4467

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !4468
  br label %17, !dbg !4469

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !4448
  ret i32 %18, !dbg !4470
}

; Function Attrs: nofree nounwind
declare !dbg !4471 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !4472 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4511, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i64 %1, metadata !4512, metadata !DIExpression()), !dbg !4517
  call void @llvm.dbg.value(metadata i32 %2, metadata !4513, metadata !DIExpression()), !dbg !4517
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !4518
  %5 = load i8*, i8** %4, align 8, !dbg !4518, !tbaa !4519
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !4520
  %7 = load i8*, i8** %6, align 8, !dbg !4520, !tbaa !4521
  %8 = icmp eq i8* %5, %7, !dbg !4522
  br i1 %8, label %9, label %28, !dbg !4523

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !4524
  %11 = load i8*, i8** %10, align 8, !dbg !4524, !tbaa !1113
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !4525
  %13 = load i8*, i8** %12, align 8, !dbg !4525, !tbaa !4526
  %14 = icmp eq i8* %11, %13, !dbg !4527
  br i1 %14, label %15, label %28, !dbg !4528

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !4529
  %17 = load i8*, i8** %16, align 8, !dbg !4529, !tbaa !4530
  %18 = icmp eq i8* %17, null, !dbg !4531
  br i1 %18, label %19, label %28, !dbg !4532

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #35, !dbg !4533
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #35, !dbg !4534
  call void @llvm.dbg.value(metadata i64 %21, metadata !4514, metadata !DIExpression()), !dbg !4535
  %22 = icmp eq i64 %21, -1, !dbg !4536
  br i1 %22, label %30, label %23, !dbg !4538

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4539
  %25 = load i32, i32* %24, align 8, !dbg !4540, !tbaa !4286
  %26 = and i32 %25, -17, !dbg !4540
  store i32 %26, i32* %24, align 8, !dbg !4540, !tbaa !4286
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !4541
  store i64 %21, i64* %27, align 8, !dbg !4542, !tbaa !4543
  br label %30, !dbg !4544

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !4545
  br label %30, !dbg !4546

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !4517
  ret i32 %31, !dbg !4547
}

; Function Attrs: nofree nounwind
declare !dbg !4548 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.savewd* noundef %3) local_unnamed_addr #12 !dbg !4551 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4556, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i8* %1, metadata !4557, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i64 %2, metadata !4558, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata %struct.savewd* %3, metadata !4559, metadata !DIExpression()), !dbg !4561
  %5 = icmp eq i8* %1, null, !dbg !4562
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4564
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.169, i64 0, i64 0), i8* %1, !dbg !4564
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4564
  call void @llvm.dbg.value(metadata i64 %8, metadata !4558, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i8* %7, metadata !4557, metadata !DIExpression()), !dbg !4561
  call void @llvm.dbg.value(metadata i32* %6, metadata !4556, metadata !DIExpression()), !dbg !4561
  %9 = icmp eq %struct.savewd* %3, null, !dbg !4565
  %10 = select i1 %9, %struct.savewd* @internal_state, %struct.savewd* %3, !dbg !4567
  call void @llvm.dbg.value(metadata %struct.savewd* %10, metadata !4559, metadata !DIExpression()), !dbg !4561
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.savewd* noundef %10) #35, !dbg !4568
  call void @llvm.dbg.value(metadata i64 %11, metadata !4560, metadata !DIExpression()), !dbg !4561
  %12 = icmp ult i64 %11, -3, !dbg !4569
  br i1 %12, label %13, label %18, !dbg !4571

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.savewd* noundef %10) #36, !dbg !4572
  %15 = icmp eq i32 %14, 0, !dbg !4572
  br i1 %15, label %16, label %30, !dbg !4573

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.savewd* %10, metadata !4574, metadata !DIExpression()) #35, !dbg !4579
  call void @llvm.dbg.value(metadata %struct.savewd* %10, metadata !4581, metadata !DIExpression()) #35, !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4584, metadata !DIExpression()) #35, !dbg !4586
  call void @llvm.dbg.value(metadata i64 8, metadata !4585, metadata !DIExpression()) #35, !dbg !4586
  %17 = bitcast %struct.savewd* %10 to i64*, !dbg !4588
  store i64 0, i64* %17, align 1, !dbg !4588
  br label %30, !dbg !4589

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4590
  br i1 %19, label %20, label %21, !dbg !4592

20:                                               ; preds = %18
  tail call void @abort() #37, !dbg !4593
  unreachable, !dbg !4593

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4594

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #35, !dbg !4596
  br i1 %24, label %30, label %25, !dbg !4597

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4598
  br i1 %26, label %30, label %27, !dbg !4601

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4602, !tbaa !645
  %29 = zext i8 %28 to i32, !dbg !4603
  store i32 %29, i32* %6, align 4, !dbg !4604, !tbaa !636
  br label %30, !dbg !4605

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4561
  ret i64 %31, !dbg !4606
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4607 i32 @mbsinit(%struct.savewd* noundef) local_unnamed_addr #33

; Function Attrs: nounwind uwtable
define dso_local i64 @mkancesdirs(i8* noundef %0, %struct.savewd* noundef %1, i32 (i8*, i8*, i8*)* nocapture noundef readonly %2, i8* noundef %3) local_unnamed_addr #12 !dbg !4613 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4618, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata %struct.savewd* %1, metadata !4619, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 (i8*, i8*, i8*)* %2, metadata !4620, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %3, metadata !4621, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* null, metadata !4622, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %0, metadata !4623, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %0, metadata !4624, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8 0, metadata !4626, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8 poison, metadata !4626, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %0, metadata !4624, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4635
  %5 = load i8, i8* %0, align 1, !dbg !4636, !tbaa !645
  call void @llvm.dbg.value(metadata i8 %5, metadata !4625, metadata !DIExpression()), !dbg !4635
  %6 = icmp eq i8 %5, 0, !dbg !4637
  br i1 %6, label %77, label %7, !dbg !4637

7:                                                ; preds = %4, %71
  %8 = phi i8 [ %72, %71 ], [ %5, %4 ]
  %9 = phi i8* [ %13, %71 ], [ %0, %4 ]
  %10 = phi i1 [ %75, %71 ], [ false, %4 ]
  %11 = phi i8* [ %74, %71 ], [ null, %4 ]
  %12 = phi i8* [ %73, %71 ], [ %0, %4 ]
  %13 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4638
  call void @llvm.dbg.value(metadata i8* %11, metadata !4622, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %12, metadata !4623, metadata !DIExpression()), !dbg !4635
  %14 = load i8, i8* %13, align 1, !dbg !4639, !tbaa !645
  %15 = icmp eq i8 %14, 47, !dbg !4639
  %16 = icmp eq i8 %8, 47, !dbg !4640
  br i1 %15, label %17, label %19, !dbg !4641

17:                                               ; preds = %7
  %18 = select i1 %16, i8* %11, i8* %13, !dbg !4642
  br label %71, !dbg !4642

19:                                               ; preds = %7
  br i1 %16, label %20, label %71, !dbg !4644

20:                                               ; preds = %19
  %21 = icmp ne i8 %14, 0, !dbg !4645
  %22 = icmp ne i8* %11, null
  %23 = select i1 %21, i1 %22, i1 false, !dbg !4646
  br i1 %23, label %24, label %67, !dbg !4646

24:                                               ; preds = %20
  %25 = ptrtoint i8* %11 to i64, !dbg !4647
  %26 = ptrtoint i8* %12 to i64, !dbg !4647
  %27 = sub i64 %25, %26, !dbg !4647
  %28 = icmp eq i64 %27, 1, !dbg !4648
  br i1 %28, label %29, label %33, !dbg !4649

29:                                               ; preds = %24
  %30 = load i8, i8* %12, align 1, !dbg !4650, !tbaa !645
  %31 = icmp eq i8 %30, 46, !dbg !4651
  br i1 %31, label %67, label %32, !dbg !4652

32:                                               ; preds = %29
  store i8 0, i8* %11, align 1, !dbg !4653, !tbaa !645
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4654
  br label %42, !dbg !4655

33:                                               ; preds = %24
  store i8 0, i8* %11, align 1, !dbg !4653, !tbaa !645
  call void @llvm.dbg.value(metadata i32 0, metadata !4627, metadata !DIExpression()), !dbg !4654
  %34 = icmp eq i64 %27, 2, !dbg !4657
  br i1 %34, label %35, label %42, !dbg !4655

35:                                               ; preds = %33
  %36 = load i8, i8* %12, align 1, !dbg !4658, !tbaa !645
  %37 = icmp eq i8 %36, 46, !dbg !4659
  br i1 %37, label %38, label %42, !dbg !4660

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4661
  %40 = load i8, i8* %39, align 1, !dbg !4661, !tbaa !645
  %41 = icmp eq i8 %40, 46, !dbg !4662
  br i1 %41, label %50, label %42, !dbg !4663

42:                                               ; preds = %32, %38, %35, %33
  %43 = tail call i32 %2(i8* noundef nonnull %0, i8* noundef %12, i8* noundef %3) #35, !dbg !4664
  %44 = icmp slt i32 %43, 0, !dbg !4666
  br i1 %44, label %45, label %48, !dbg !4667

45:                                               ; preds = %42
  %46 = tail call i32* @__errno_location() #38, !dbg !4668
  %47 = load i32, i32* %46, align 4, !dbg !4668, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %47, metadata !4627, metadata !DIExpression()), !dbg !4654
  call void @llvm.dbg.value(metadata i8 poison, metadata !4626, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 0, metadata !4633, metadata !DIExpression()), !dbg !4654
  br i1 %10, label %48, label %50, !dbg !4669

48:                                               ; preds = %42, %45
  %49 = phi i32 [ %47, %45 ], [ 0, %42 ]
  br label %50, !dbg !4669

50:                                               ; preds = %38, %45, %48
  %51 = phi i32 [ %49, %48 ], [ %47, %45 ], [ 0, %38 ]
  %52 = phi i1 [ true, %48 ], [ false, %45 ], [ false, %38 ]
  %53 = phi i32 [ 1, %48 ], [ 0, %45 ], [ 0, %38 ]
  call void @llvm.dbg.value(metadata i32 %53, metadata !4633, metadata !DIExpression()), !dbg !4654
  %54 = tail call i32 @savewd_chdir(%struct.savewd* noundef %1, i8* noundef %12, i32 noundef %53, i32* noundef null) #35, !dbg !4670
  call void @llvm.dbg.value(metadata i32 %54, metadata !4634, metadata !DIExpression()), !dbg !4654
  %55 = icmp eq i32 %54, -1, !dbg !4671
  br i1 %55, label %58, label %56, !dbg !4673

56:                                               ; preds = %50
  store i8 47, i8* %11, align 1, !dbg !4674, !tbaa !645
  %57 = icmp eq i32 %54, 0, !dbg !4675
  br i1 %57, label %67, label %58, !dbg !4677

58:                                               ; preds = %50, %56
  %59 = icmp eq i32 %51, 0, !dbg !4678
  br i1 %59, label %65, label %60, !dbg !4681

60:                                               ; preds = %58
  %61 = tail call i32* @__errno_location() #38, !dbg !4682
  %62 = load i32, i32* %61, align 4, !dbg !4682, !tbaa !636
  %63 = icmp eq i32 %62, 2, !dbg !4683
  br i1 %63, label %64, label %65, !dbg !4684

64:                                               ; preds = %60
  store i32 %51, i32* %61, align 4, !dbg !4685, !tbaa !636
  br label %65, !dbg !4686

65:                                               ; preds = %58, %60, %64
  %66 = sext i32 %54 to i64, !dbg !4687
  br label %82

67:                                               ; preds = %20, %29, %56
  %68 = phi i8* [ %13, %56 ], [ %13, %29 ], [ %12, %20 ]
  %69 = phi i1 [ %52, %56 ], [ %10, %29 ], [ %10, %20 ]
  %70 = load i8, i8* %13, align 1, !dbg !4636, !tbaa !645
  br label %71, !dbg !4636

71:                                               ; preds = %67, %17, %19
  %72 = phi i8 [ %70, %67 ], [ 47, %17 ], [ %14, %19 ], !dbg !4636
  %73 = phi i8* [ %68, %67 ], [ %12, %17 ], [ %12, %19 ], !dbg !4635
  %74 = phi i8* [ %11, %67 ], [ %18, %17 ], [ %11, %19 ], !dbg !4635
  %75 = phi i1 [ %69, %67 ], [ %10, %17 ], [ %10, %19 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !4626, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %74, metadata !4622, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %73, metadata !4623, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i8* %13, metadata !4624, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4635
  call void @llvm.dbg.value(metadata i8 %72, metadata !4625, metadata !DIExpression()), !dbg !4635
  %76 = icmp eq i8 %72, 0, !dbg !4637
  br i1 %76, label %77, label %7, !dbg !4637, !llvm.loop !4688

77:                                               ; preds = %71, %4
  %78 = phi i8* [ %0, %4 ], [ %73, %71 ], !dbg !4690
  %79 = ptrtoint i8* %78 to i64, !dbg !4691
  %80 = ptrtoint i8* %0 to i64, !dbg !4691
  %81 = sub i64 %79, %80, !dbg !4691
  br label %82, !dbg !4692

82:                                               ; preds = %65, %77
  %83 = phi i64 [ %66, %65 ], [ %81, %77 ], !dbg !4635
  ret i64 %83, !dbg !4693
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dirchownmod(i32 noundef %0, i8* noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #12 !dbg !4694 {
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4698, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i8* %1, metadata !4699, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %2, metadata !4700, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %3, metadata !4701, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %4, metadata !4702, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %5, metadata !4703, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 %6, metadata !4704, metadata !DIExpression()), !dbg !4743
  %9 = bitcast %struct.stat* %8 to i8*, !dbg !4744
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %9) #35, !dbg !4744
  call void @llvm.dbg.declare(metadata %struct.stat* %8, metadata !4705, metadata !DIExpression()), !dbg !4745
  %10 = icmp slt i32 %0, 0, !dbg !4746
  br i1 %10, label %11, label %13, !dbg !4747

11:                                               ; preds = %7
  %12 = call i32 @stat(i8* noundef %1, %struct.stat* noundef nonnull %8) #35, !dbg !4748
  br label %15, !dbg !4747

13:                                               ; preds = %7
  %14 = call i32 @fstat(i32 noundef %0, %struct.stat* noundef nonnull %8) #35, !dbg !4749
  br label %15, !dbg !4747

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ], !dbg !4747
  call void @llvm.dbg.value(metadata i32 %16, metadata !4728, metadata !DIExpression()), !dbg !4743
  %17 = icmp eq i32 %16, 0, !dbg !4750
  br i1 %17, label %18, label %75, !dbg !4751

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 2, !dbg !4752
  %20 = load i32, i32* %19, align 8, !dbg !4752, !tbaa !1525
  call void @llvm.dbg.value(metadata i32 %20, metadata !4729, metadata !DIExpression()), !dbg !4753
  %21 = and i32 %20, 61440, !dbg !4754
  %22 = icmp eq i32 %21, 16384, !dbg !4754
  br i1 %22, label %25, label %23, !dbg !4755

23:                                               ; preds = %18
  %24 = tail call i32* @__errno_location() #38, !dbg !4756
  store i32 20, i32* %24, align 4, !dbg !4758, !tbaa !636
  call void @llvm.dbg.value(metadata i32 -1, metadata !4728, metadata !DIExpression()), !dbg !4743
  br label %75, !dbg !4759

25:                                               ; preds = %18
  call void @llvm.dbg.value(metadata i32 0, metadata !4732, metadata !DIExpression()), !dbg !4760
  %26 = icmp eq i32 %3, -1, !dbg !4761
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, %3
  %30 = select i1 %26, i1 true, i1 %29, !dbg !4763
  br i1 %30, label %31, label %37, !dbg !4763

31:                                               ; preds = %25
  %32 = icmp eq i32 %4, -1, !dbg !4764
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, %4
  %36 = select i1 %32, i1 true, i1 %35, !dbg !4765
  br i1 %36, label %55, label %37, !dbg !4765

37:                                               ; preds = %31, %25
  %38 = icmp sgt i32 %0, -1, !dbg !4766
  br i1 %38, label %39, label %41, !dbg !4768

39:                                               ; preds = %37
  %40 = tail call i32 @fchown(i32 noundef %0, i32 noundef %3, i32 noundef %4) #35, !dbg !4769
  br label %47, !dbg !4768

41:                                               ; preds = %37
  %42 = icmp eq i32 %2, -1, !dbg !4770
  br i1 %42, label %45, label %43, !dbg !4771

43:                                               ; preds = %41
  %44 = tail call i32 @lchown(i8* noundef %1, i32 noundef %3, i32 noundef %4) #35, !dbg !4772
  br label %47, !dbg !4771

45:                                               ; preds = %41
  %46 = tail call i32 @chown(i8* noundef %1, i32 noundef %3, i32 noundef %4) #35, !dbg !4773
  br label %47, !dbg !4771

47:                                               ; preds = %43, %45, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ], [ %46, %45 ], !dbg !4768
  call void @llvm.dbg.value(metadata i32 %48, metadata !4728, metadata !DIExpression()), !dbg !4743
  %49 = icmp eq i32 %48, 0, !dbg !4774
  br i1 %49, label %50, label %75, !dbg !4776

50:                                               ; preds = %47
  %51 = and i32 %20, 73, !dbg !4777
  %52 = icmp eq i32 %51, 0, !dbg !4777
  %53 = and i32 %20, 3072
  %54 = select i1 %52, i32 0, i32 %53, !dbg !4778
  br label %55, !dbg !4778

55:                                               ; preds = %31, %50
  %56 = phi i32 [ %54, %50 ], [ 0, %31 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4728, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i32 undef, metadata !4732, metadata !DIExpression()), !dbg !4760
  %57 = xor i32 %20, %5, !dbg !4779
  %58 = or i32 %56, %57, !dbg !4780
  %59 = and i32 %58, %6, !dbg !4781
  %60 = icmp eq i32 %59, 0, !dbg !4781
  br i1 %60, label %75, label %61, !dbg !4782

61:                                               ; preds = %55
  %62 = and i32 %6, 4095, !dbg !4783
  %63 = xor i32 %62, 4095, !dbg !4783
  %64 = and i32 %63, %20, !dbg !4784
  %65 = or i32 %64, %5, !dbg !4785
  call void @llvm.dbg.value(metadata i32 %65, metadata !4735, metadata !DIExpression()), !dbg !4786
  %66 = icmp sgt i32 %0, -1, !dbg !4787
  br i1 %66, label %67, label %69, !dbg !4788

67:                                               ; preds = %61
  %68 = tail call i32 @fchmod(i32 noundef %0, i32 noundef %65) #35, !dbg !4789
  call void @llvm.dbg.value(metadata i32 %76, metadata !4728, metadata !DIExpression()), !dbg !4743
  br label %78, !dbg !4790

69:                                               ; preds = %61
  %70 = icmp eq i32 %2, -1, !dbg !4791
  br i1 %70, label %73, label %71, !dbg !4792

71:                                               ; preds = %69
  %72 = tail call i32 @lchmod(i8* noundef %1, i32 noundef %65) #35, !dbg !4793
  br label %87, !dbg !4792

73:                                               ; preds = %69
  %74 = tail call i32 @chmod(i8* noundef %1, i32 noundef %65) #35, !dbg !4794
  br label %87, !dbg !4792

75:                                               ; preds = %47, %23, %55, %15
  %76 = phi i32 [ %16, %15 ], [ -1, %23 ], [ 0, %55 ], [ %48, %47 ], !dbg !4743
  call void @llvm.dbg.value(metadata i32 %76, metadata !4728, metadata !DIExpression()), !dbg !4743
  %77 = icmp sgt i32 %0, -1, !dbg !4795
  br i1 %77, label %78, label %87, !dbg !4790

78:                                               ; preds = %67, %75
  %79 = phi i32 [ %68, %67 ], [ %76, %75 ]
  %80 = icmp eq i32 %79, 0, !dbg !4796
  br i1 %80, label %81, label %83, !dbg !4797

81:                                               ; preds = %78
  %82 = tail call i32 @close(i32 noundef %0) #35, !dbg !4798
  call void @llvm.dbg.value(metadata i32 %82, metadata !4728, metadata !DIExpression()), !dbg !4743
  br label %87, !dbg !4799

83:                                               ; preds = %78
  %84 = tail call i32* @__errno_location() #38, !dbg !4800
  %85 = load i32, i32* %84, align 4, !dbg !4800, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %85, metadata !4738, metadata !DIExpression()), !dbg !4801
  %86 = tail call i32 @close(i32 noundef %0) #35, !dbg !4802
  store i32 %85, i32* %84, align 4, !dbg !4803, !tbaa !636
  br label %87

87:                                               ; preds = %71, %73, %81, %83, %75
  %88 = phi i32 [ %82, %81 ], [ %79, %83 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], !dbg !4743
  call void @llvm.dbg.value(metadata i32 %88, metadata !4728, metadata !DIExpression()), !dbg !4743
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %9) #35, !dbg !4804
  ret i32 %88, !dbg !4805
}

; Function Attrs: nofree nounwind
declare !dbg !4806 noundef i32 @fstat(i32 noundef, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4810 i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4813 noundef i32 @lchown(i8* nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4816 noundef i32 @chown(i8* nocapture noundef readonly, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4817 i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4820 i32 @lchmod(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !4821 noundef i32 @chmod(i8* nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #34 !dbg !4822 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4824, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %1, metadata !4825, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i64 %2, metadata !4826, metadata !DIExpression()), !dbg !4828
  %4 = icmp eq i64 %2, 0, !dbg !4829
  br i1 %4, label %8, label %5, !dbg !4829

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4829
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4829
  br i1 %7, label %13, label %8, !dbg !4829

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4827, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4828
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4827, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4828
  %9 = mul i64 %2, %1, !dbg !4829
  call void @llvm.dbg.value(metadata i64 %9, metadata !4827, metadata !DIExpression()), !dbg !4828
  call void @llvm.dbg.value(metadata i8* %0, metadata !4831, metadata !DIExpression()) #35, !dbg !4835
  call void @llvm.dbg.value(metadata i64 %9, metadata !4834, metadata !DIExpression()) #35, !dbg !4835
  %10 = icmp eq i64 %9, 0, !dbg !4837
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4837
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #35, !dbg !4838
  br label %15, !dbg !4839

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4827, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4828
  %14 = tail call i32* @__errno_location() #38, !dbg !4840
  store i32 12, i32* %14, align 4, !dbg !4842, !tbaa !636
  br label %15, !dbg !4843

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4828
  ret i8* %16, !dbg !4844
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fd_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !4845 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4847, metadata !DIExpression()), !dbg !4852
  %2 = icmp ult i32 %0, 3, !dbg !4853
  br i1 %2, label %3, label %8, !dbg !4853

3:                                                ; preds = %1
  %4 = tail call i32 @dup_safer(i32 noundef %0) #35, !dbg !4854
  call void @llvm.dbg.value(metadata i32 %4, metadata !4848, metadata !DIExpression()), !dbg !4855
  %5 = tail call i32* @__errno_location() #38, !dbg !4856
  %6 = load i32, i32* %5, align 4, !dbg !4856, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %6, metadata !4851, metadata !DIExpression()), !dbg !4855
  %7 = tail call i32 @close(i32 noundef %0) #35, !dbg !4857
  store i32 %6, i32* %5, align 4, !dbg !4858, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %4, metadata !4847, metadata !DIExpression()), !dbg !4852
  br label %8, !dbg !4859

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %4, %3 ], [ %0, %1 ]
  call void @llvm.dbg.value(metadata i32 %9, metadata !4847, metadata !DIExpression()), !dbg !4852
  ret i32 %9, !dbg !4860
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4861 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4865, metadata !DIExpression()), !dbg !4870
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4871
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4871
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4866, metadata !DIExpression()), !dbg !4872
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #35, !dbg !4873
  %5 = icmp eq i32 %4, 0, !dbg !4873
  br i1 %5, label %6, label %13, !dbg !4875

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4876, metadata !DIExpression()) #35, !dbg !4880
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i64 0, i64 0), metadata !4879, metadata !DIExpression()) #35, !dbg !4880
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.180, i64 0, i64 0), i64 2), !dbg !4883
  %8 = icmp eq i32 %7, 0, !dbg !4884
  br i1 %8, label %12, label %9, !dbg !4885

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4876, metadata !DIExpression()) #35, !dbg !4886
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), metadata !4879, metadata !DIExpression()) #35, !dbg !4886
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.181, i64 0, i64 0), i64 6), !dbg !4888
  %11 = icmp eq i32 %10, 0, !dbg !4889
  br i1 %11, label %12, label %13, !dbg !4890

12:                                               ; preds = %9, %6
  br label %13, !dbg !4891

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4870
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #35, !dbg !4892
  ret i1 %14, !dbg !4892
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4897, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i8* %1, metadata !4898, metadata !DIExpression()), !dbg !4900
  call void @llvm.dbg.value(metadata i64 %2, metadata !4899, metadata !DIExpression()), !dbg !4900
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #35, !dbg !4901
  ret i32 %4, !dbg !4902
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4903 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4907, metadata !DIExpression()), !dbg !4908
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #35, !dbg !4909
  ret i8* %2, !dbg !4910
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4911 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4913, metadata !DIExpression()), !dbg !4915
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4916
  call void @llvm.dbg.value(metadata i8* %2, metadata !4914, metadata !DIExpression()), !dbg !4915
  ret i8* %2, !dbg !4917
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4918 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4920, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i8* %1, metadata !4921, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %2, metadata !4922, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i32 %0, metadata !4913, metadata !DIExpression()) #35, !dbg !4928
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #35, !dbg !4930
  call void @llvm.dbg.value(metadata i8* %4, metadata !4914, metadata !DIExpression()) #35, !dbg !4928
  call void @llvm.dbg.value(metadata i8* %4, metadata !4923, metadata !DIExpression()), !dbg !4927
  %5 = icmp eq i8* %4, null, !dbg !4931
  br i1 %5, label %6, label %9, !dbg !4932

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4933
  br i1 %7, label %19, label %8, !dbg !4936

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4937, !tbaa !645
  br label %19, !dbg !4938

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #36, !dbg !4939
  call void @llvm.dbg.value(metadata i64 %10, metadata !4924, metadata !DIExpression()), !dbg !4940
  %11 = icmp ult i64 %10, %2, !dbg !4941
  br i1 %11, label %12, label %14, !dbg !4943

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4944
  call void @llvm.dbg.value(metadata i8* %1, metadata !4946, metadata !DIExpression()) #35, !dbg !4951
  call void @llvm.dbg.value(metadata i8* %4, metadata !4949, metadata !DIExpression()) #35, !dbg !4951
  call void @llvm.dbg.value(metadata i64 %13, metadata !4950, metadata !DIExpression()) #35, !dbg !4951
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #35, !dbg !4953
  br label %19, !dbg !4954

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4955
  br i1 %15, label %19, label %16, !dbg !4958

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4959
  call void @llvm.dbg.value(metadata i8* %1, metadata !4946, metadata !DIExpression()) #35, !dbg !4961
  call void @llvm.dbg.value(metadata i8* %4, metadata !4949, metadata !DIExpression()) #35, !dbg !4961
  call void @llvm.dbg.value(metadata i64 %17, metadata !4950, metadata !DIExpression()) #35, !dbg !4961
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #35, !dbg !4963
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4964
  store i8 0, i8* %18, align 1, !dbg !4965, !tbaa !645
  br label %19, !dbg !4966

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4967
  ret i32 %20, !dbg !4968
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dup_safer(i32 noundef %0) local_unnamed_addr #12 !dbg !4969 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4971, metadata !DIExpression()), !dbg !4972
  %2 = tail call i32 (i32, i32, ...) @rpl_fcntl(i32 noundef %0, i32 noundef 0, i32 noundef 3) #35, !dbg !4973
  ret i32 %2, !dbg !4974
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fcntl(i32 noundef %0, i32 noundef %1, ...) local_unnamed_addr #12 !dbg !4975 {
  %3 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4977, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata i32 %1, metadata !4978, metadata !DIExpression()), !dbg !5002
  %4 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !5003
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #35, !dbg !5003
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !4979, metadata !DIExpression()), !dbg !5004
  call void @llvm.va_start(i8* nonnull %4), !dbg !5005
  call void @llvm.dbg.value(metadata i32 -1, metadata !4990, metadata !DIExpression()), !dbg !5002
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
  ], !dbg !5006

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !5007
  %7 = load i32, i32* %6, align 8, !dbg !5007
  %8 = icmp sgt i32 %7, -1, !dbg !5007
  br i1 %8, label %17, label %9, !dbg !5007

9:                                                ; preds = %5
  %10 = add nsw i32 %7, 8, !dbg !5007
  store i32 %10, i32* %6, align 8, !dbg !5007
  %11 = icmp ult i32 %7, -7, !dbg !5007
  br i1 %11, label %12, label %17, !dbg !5007

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !5007
  %14 = load i8*, i8** %13, align 8, !dbg !5007
  %15 = sext i32 %7 to i64, !dbg !5007
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !5007
  br label %21, !dbg !5007

17:                                               ; preds = %9, %5
  %18 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !5007
  %19 = load i8*, i8** %18, align 8, !dbg !5007
  %20 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !5007
  store i8* %20, i8** %18, align 8, !dbg !5007
  br label %21, !dbg !5007

21:                                               ; preds = %17, %12
  %22 = phi i8* [ %16, %12 ], [ %19, %17 ]
  %23 = bitcast i8* %22 to i32*, !dbg !5007
  %24 = load i32, i32* %23, align 8, !dbg !5007
  call void @llvm.dbg.value(metadata i32 %24, metadata !4991, metadata !DIExpression()), !dbg !5008
  call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()) #35, !dbg !5014
  call void @llvm.dbg.value(metadata i32 %24, metadata !5012, metadata !DIExpression()) #35, !dbg !5014
  %25 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %24) #35, !dbg !5016
  call void @llvm.dbg.value(metadata i32 %25, metadata !5013, metadata !DIExpression()) #35, !dbg !5014
  call void @llvm.dbg.value(metadata i32 %25, metadata !4990, metadata !DIExpression()), !dbg !5002
  br label %124

26:                                               ; preds = %2
  %27 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !5017
  %28 = load i32, i32* %27, align 8, !dbg !5017
  %29 = icmp sgt i32 %28, -1, !dbg !5017
  br i1 %29, label %38, label %30, !dbg !5017

30:                                               ; preds = %26
  %31 = add nsw i32 %28, 8, !dbg !5017
  store i32 %31, i32* %27, align 8, !dbg !5017
  %32 = icmp ult i32 %28, -7, !dbg !5017
  br i1 %32, label %33, label %38, !dbg !5017

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !5017
  %35 = load i8*, i8** %34, align 8, !dbg !5017
  %36 = sext i32 %28 to i64, !dbg !5017
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !5017
  br label %42, !dbg !5017

38:                                               ; preds = %30, %26
  %39 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !5017
  %40 = load i8*, i8** %39, align 8, !dbg !5017
  %41 = getelementptr inbounds i8, i8* %40, i64 8, !dbg !5017
  store i8* %41, i8** %39, align 8, !dbg !5017
  br label %42, !dbg !5017

42:                                               ; preds = %38, %33
  %43 = phi i8* [ %37, %33 ], [ %40, %38 ]
  %44 = bitcast i8* %43 to i32*, !dbg !5017
  %45 = load i32, i32* %44, align 8, !dbg !5017
  call void @llvm.dbg.value(metadata i32 %45, metadata !4994, metadata !DIExpression()), !dbg !5018
  call void @llvm.dbg.value(metadata i32 %0, metadata !381, metadata !DIExpression()) #35, !dbg !5019
  call void @llvm.dbg.value(metadata i32 %45, metadata !382, metadata !DIExpression()) #35, !dbg !5019
  %46 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5021, !tbaa !636
  %47 = icmp sgt i32 %46, -1, !dbg !5023
  br i1 %47, label %48, label %60, !dbg !5024

48:                                               ; preds = %42
  %49 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 1030, i32 noundef %45) #35, !dbg !5025
  call void @llvm.dbg.value(metadata i32 %49, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  %50 = icmp sgt i32 %49, -1, !dbg !5027
  br i1 %50, label %55, label %51, !dbg !5029

51:                                               ; preds = %48
  %52 = tail call i32* @__errno_location() #38, !dbg !5030
  %53 = load i32, i32* %52, align 4, !dbg !5030, !tbaa !636
  %54 = icmp eq i32 %53, 22, !dbg !5031
  br i1 %54, label %56, label %55, !dbg !5032

55:                                               ; preds = %51, %48
  store i32 1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5033, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %66, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  br label %124, !dbg !5035

56:                                               ; preds = %51
  call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()) #35, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %45, metadata !5012, metadata !DIExpression()) #35, !dbg !5036
  %57 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !5039
  call void @llvm.dbg.value(metadata i32 %57, metadata !5013, metadata !DIExpression()) #35, !dbg !5036
  call void @llvm.dbg.value(metadata i32 %57, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  %58 = icmp sgt i32 %57, -1, !dbg !5040
  br i1 %58, label %59, label %124, !dbg !5042

59:                                               ; preds = %56
  store i32 -1, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4, !dbg !5043, !tbaa !636
  br label %64, !dbg !5044

60:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i32 %0, metadata !5009, metadata !DIExpression()) #35, !dbg !5045
  call void @llvm.dbg.value(metadata i32 %45, metadata !5012, metadata !DIExpression()) #35, !dbg !5045
  %61 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef 0, i32 noundef %45) #35, !dbg !5047
  call void @llvm.dbg.value(metadata i32 %61, metadata !5013, metadata !DIExpression()) #35, !dbg !5045
  call void @llvm.dbg.value(metadata i32 %61, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  %62 = load i32, i32* @rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec, align 4
  %63 = icmp eq i32 %62, -1
  br label %64

64:                                               ; preds = %60, %59
  %65 = phi i1 [ true, %59 ], [ %63, %60 ]
  %66 = phi i32 [ %57, %59 ], [ %61, %60 ], !dbg !5048
  call void @llvm.dbg.value(metadata i32 %66, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  %67 = icmp sgt i32 %66, -1, !dbg !5049
  %68 = select i1 %67, i1 %65, i1 false, !dbg !5035
  br i1 %68, label %69, label %124, !dbg !5035

69:                                               ; preds = %64
  %70 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 1) #35, !dbg !5050
  call void @llvm.dbg.value(metadata i32 %70, metadata !384, metadata !DIExpression()) #35, !dbg !5051
  %71 = icmp slt i32 %70, 0, !dbg !5052
  br i1 %71, label %76, label %72, !dbg !5053

72:                                               ; preds = %69
  %73 = or i32 %70, 1, !dbg !5054
  %74 = call i32 (i32, i32, ...) @fcntl(i32 noundef %66, i32 noundef 2, i32 noundef %73) #35, !dbg !5055
  %75 = icmp eq i32 %74, -1, !dbg !5056
  br i1 %75, label %76, label %124, !dbg !5057

76:                                               ; preds = %72, %69
  %77 = tail call i32* @__errno_location() #38, !dbg !5058
  %78 = load i32, i32* %77, align 4, !dbg !5058, !tbaa !636
  call void @llvm.dbg.value(metadata i32 %78, metadata !387, metadata !DIExpression()) #35, !dbg !5059
  %79 = call i32 @close(i32 noundef %66) #35, !dbg !5060
  store i32 %78, i32* %77, align 4, !dbg !5061, !tbaa !636
  call void @llvm.dbg.value(metadata i32 -1, metadata !383, metadata !DIExpression()) #35, !dbg !5019
  br label %124, !dbg !5062

80:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %81 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1) #35, !dbg !5063
  call void @llvm.dbg.value(metadata i32 %81, metadata !4990, metadata !DIExpression()), !dbg !5002
  br label %124, !dbg !5064

82:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %83 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !5065
  %84 = load i32, i32* %83, align 8, !dbg !5065
  %85 = icmp sgt i32 %84, -1, !dbg !5065
  br i1 %85, label %94, label %86, !dbg !5065

86:                                               ; preds = %82
  %87 = add nsw i32 %84, 8, !dbg !5065
  store i32 %87, i32* %83, align 8, !dbg !5065
  %88 = icmp ult i32 %84, -7, !dbg !5065
  br i1 %88, label %89, label %94, !dbg !5065

89:                                               ; preds = %86
  %90 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !5065
  %91 = load i8*, i8** %90, align 8, !dbg !5065
  %92 = sext i32 %84 to i64, !dbg !5065
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !5065
  br label %98, !dbg !5065

94:                                               ; preds = %86, %82
  %95 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !5065
  %96 = load i8*, i8** %95, align 8, !dbg !5065
  %97 = getelementptr inbounds i8, i8* %96, i64 8, !dbg !5065
  store i8* %97, i8** %95, align 8, !dbg !5065
  br label %98, !dbg !5065

98:                                               ; preds = %94, %89
  %99 = phi i8* [ %93, %89 ], [ %96, %94 ]
  %100 = bitcast i8* %99 to i32*, !dbg !5065
  %101 = load i32, i32* %100, align 8, !dbg !5065
  call void @llvm.dbg.value(metadata i32 %101, metadata !4996, metadata !DIExpression()), !dbg !5066
  %102 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i32 noundef %101) #35, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %102, metadata !4990, metadata !DIExpression()), !dbg !5002
  br label %124, !dbg !5068

103:                                              ; preds = %2
  %104 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 3, !dbg !5069
  %105 = load i32, i32* %104, align 8, !dbg !5069
  %106 = icmp sgt i32 %105, -1, !dbg !5069
  br i1 %106, label %115, label %107, !dbg !5069

107:                                              ; preds = %103
  %108 = add nsw i32 %105, 8, !dbg !5069
  store i32 %108, i32* %104, align 8, !dbg !5069
  %109 = icmp ult i32 %105, -7, !dbg !5069
  br i1 %109, label %110, label %115, !dbg !5069

110:                                              ; preds = %107
  %111 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 1, !dbg !5069
  %112 = load i8*, i8** %111, align 8, !dbg !5069
  %113 = sext i32 %105 to i64, !dbg !5069
  %114 = getelementptr inbounds i8, i8* %112, i64 %113, !dbg !5069
  br label %119, !dbg !5069

115:                                              ; preds = %107, %103
  %116 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %3, i64 0, i32 0, !dbg !5069
  %117 = load i8*, i8** %116, align 8, !dbg !5069
  %118 = getelementptr inbounds i8, i8* %117, i64 8, !dbg !5069
  store i8* %118, i8** %116, align 8, !dbg !5069
  br label %119, !dbg !5069

119:                                              ; preds = %115, %110
  %120 = phi i8* [ %114, %110 ], [ %117, %115 ]
  %121 = bitcast i8* %120 to i8**, !dbg !5069
  %122 = load i8*, i8** %121, align 8, !dbg !5069
  call void @llvm.dbg.value(metadata i8* %122, metadata !5000, metadata !DIExpression()), !dbg !5070
  %123 = call i32 (i32, i32, ...) @fcntl(i32 noundef %0, i32 noundef %1, i8* noundef %122) #35, !dbg !5071
  call void @llvm.dbg.value(metadata i32 %123, metadata !4990, metadata !DIExpression()), !dbg !5002
  br label %124, !dbg !5072

124:                                              ; preds = %76, %72, %64, %56, %55, %80, %98, %119, %21
  %125 = phi i32 [ %123, %119 ], [ %102, %98 ], [ %81, %80 ], [ %25, %21 ], [ %66, %64 ], [ -1, %76 ], [ %66, %72 ], [ %57, %56 ], [ %49, %55 ], !dbg !5073
  call void @llvm.dbg.value(metadata i32 %125, metadata !4990, metadata !DIExpression()), !dbg !5002
  call void @llvm.va_end(i8* nonnull %4), !dbg !5074
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #35, !dbg !5075
  ret i32 %125, !dbg !5076
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
attributes #15 = { nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn }
attributes #22 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { inlinehint mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #28 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #29 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { nounwind }
attributes #36 = { nounwind readonly willreturn }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind readnone willreturn }
attributes #39 = { noreturn }
attributes #40 = { cold }
attributes #41 = { nounwind allocsize(0) }
attributes #42 = { nounwind allocsize(0,1) }
attributes #43 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !390, !393, !174, !179, !186, !352, !395, !397, !415, !227, !237, !269, !424, !437, !344, !444, !478, !480, !482, !484, !486, !488, !358, !490, !503, !508, !511, !513, !515, !517, !519, !378}
!llvm.ident = !{!521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521, !521}
!llvm.module.flags = !{!522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 39, type: !160, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !58, globals: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mkdir.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d793d15b84a01608d40780cfd3f61f54")
!4 = !{!5, !29, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 45, baseType: !21, size: 32, elements: !22)
!6 = !DIFile(filename: "./lib/savewd.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ad4dd1c19e06c974b5c544edb9d47f86")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 42, size: 64, elements: !8)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !7, file: !6, line: 73, baseType: !5, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !7, file: !6, line: 81, baseType: !11, size: 32, offset: 32)
!11 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !7, file: !6, line: 76, size: 32, elements: !12)
!12 = !{!13, !15, !16}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !11, file: !6, line: 78, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !11, file: !6, line: 79, baseType: !14, size: 32)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !11, file: !6, line: 80, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !18, line: 97, baseType: !19)
!18 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !20, line: 154, baseType: !14)
!20 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DIEnumerator(name: "INITIAL_STATE", value: 0)
!24 = !DIEnumerator(name: "FD_STATE", value: 1)
!25 = !DIEnumerator(name: "FD_POST_CHDIR_STATE", value: 2)
!26 = !DIEnumerator(name: "FORKING_STATE", value: 3)
!27 = !DIEnumerator(name: "ERROR_STATE", value: 4)
!28 = !DIEnumerator(name: "FINAL_STATE", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 46, baseType: !21, size: 32, elements: !31)
!30 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!32 = !DIEnumerator(name: "_ISupper", value: 256)
!33 = !DIEnumerator(name: "_ISlower", value: 512)
!34 = !DIEnumerator(name: "_ISalpha", value: 1024)
!35 = !DIEnumerator(name: "_ISdigit", value: 2048)
!36 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!37 = !DIEnumerator(name: "_ISspace", value: 8192)
!38 = !DIEnumerator(name: "_ISprint", value: 16384)
!39 = !DIEnumerator(name: "_ISgraph", value: 32768)
!40 = !DIEnumerator(name: "_ISblank", value: 1)
!41 = !DIEnumerator(name: "_IScntrl", value: 2)
!42 = !DIEnumerator(name: "_ISpunct", value: 4)
!43 = !DIEnumerator(name: "_ISalnum", value: 8)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !45, line: 42, baseType: !21, size: 32, elements: !46)
!45 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!47 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!48 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!49 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!50 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!51 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!52 = !DIEnumerator(name: "c_quoting_style", value: 5)
!53 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!54 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!55 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!56 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!57 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!58 = !{!59, !61, !14, !62, !63, !66, !68, !69, !71}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 46, baseType: !65)
!64 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!65 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!68 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !18, line: 79, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !20, line: 146, baseType: !21)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !18, line: 64, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !20, line: 147, baseType: !21)
!73 = !{!74, !0}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !76, file: !77, line: 575, type: !14, isLocal: true, isDefinition: true)
!76 = distinct !DISubprogram(name: "oputs_", scope: !77, file: !77, line: 573, type: !78, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !80)
!77 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!78 = !DISubroutineType(types: !79)
!79 = !{null, !66, !66}
!80 = !{!81, !82, !83, !86, !88, !89, !90, !94, !95, !96, !97, !99, !154, !155, !156, !158, !159}
!81 = !DILocalVariable(name: "program", arg: 1, scope: !76, file: !77, line: 573, type: !66)
!82 = !DILocalVariable(name: "option", arg: 2, scope: !76, file: !77, line: 573, type: !66)
!83 = !DILocalVariable(name: "term", scope: !84, file: !77, line: 585, type: !66)
!84 = distinct !DILexicalBlock(scope: !85, file: !77, line: 582, column: 5)
!85 = distinct !DILexicalBlock(scope: !76, file: !77, line: 581, column: 7)
!86 = !DILocalVariable(name: "double_space", scope: !76, file: !77, line: 594, type: !87)
!87 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!88 = !DILocalVariable(name: "first_word", scope: !76, file: !77, line: 595, type: !66)
!89 = !DILocalVariable(name: "option_text", scope: !76, file: !77, line: 596, type: !66)
!90 = !DILocalVariable(name: "s", scope: !91, file: !77, line: 608, type: !66)
!91 = distinct !DILexicalBlock(scope: !92, file: !77, line: 605, column: 5)
!92 = distinct !DILexicalBlock(scope: !93, file: !77, line: 604, column: 12)
!93 = distinct !DILexicalBlock(scope: !76, file: !77, line: 597, column: 7)
!94 = !DILocalVariable(name: "spaces", scope: !91, file: !77, line: 609, type: !63)
!95 = !DILocalVariable(name: "anchor_len", scope: !76, file: !77, line: 620, type: !63)
!96 = !DILocalVariable(name: "desc_text", scope: !76, file: !77, line: 625, type: !66)
!97 = !DILocalVariable(name: "__ptr", scope: !98, file: !77, line: 644, type: !66)
!98 = distinct !DILexicalBlock(scope: !76, file: !77, line: 644, column: 3)
!99 = !DILocalVariable(name: "__stream", scope: !98, file: !77, line: 644, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !103)
!102 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !105)
!104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !121, !123, !124, !125, !128, !129, !131, !135, !138, !140, !143, !146, !147, !148, !149, !150}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !103, file: !104, line: 51, baseType: !14, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !103, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !103, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !103, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !103, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !103, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !103, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !103, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !103, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !103, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !103, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !103, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !103, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !104, line: 36, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !103, file: !104, line: 70, baseType: !122, size: 64, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !103, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !103, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !103, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 152, baseType: !127)
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !103, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !103, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !103, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !103, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !104, line: 43, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !103, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 153, baseType: !127)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !103, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !104, line: 37, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !103, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !104, line: 38, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !103, file: !104, line: 93, baseType: !122, size: 64, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !103, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !103, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !103, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !103, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 160, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !DILocalVariable(name: "__cnt", scope: !98, file: !77, line: 644, type: !63)
!155 = !DILocalVariable(name: "url_program", scope: !76, file: !77, line: 648, type: !66)
!156 = !DILocalVariable(name: "__ptr", scope: !157, file: !77, line: 686, type: !66)
!157 = distinct !DILexicalBlock(scope: !76, file: !77, line: 686, column: 3)
!158 = !DILocalVariable(name: "__stream", scope: !157, file: !77, line: 686, type: !100)
!159 = !DILocalVariable(name: "__cnt", scope: !157, file: !77, line: 686, type: !63)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1792, elements: !170)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !163, line: 50, size: 256, elements: !164)
!163 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!164 = !{!165, !166, !167, !169}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !162, file: !163, line: 52, baseType: !66, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !162, file: !163, line: 55, baseType: !14, size: 32, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !162, file: !163, line: 56, baseType: !168, size: 64, offset: 128)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !162, file: !163, line: 57, baseType: !14, size: 32, offset: 192)
!170 = !{!171}
!171 = !DISubrange(count: 7)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "Version", scope: !174, file: !175, line: 3, type: !66, isLocal: false, isDefinition: true)
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !176, splitDebugInlining: false, nameTableKind: None)
!175 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!176 = !{!172}
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "file_name", scope: !179, file: !180, line: 45, type: !66, isLocal: true, isDefinition: true)
!179 = distinct !DICompileUnit(language: DW_LANG_C99, file: !180, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !181, splitDebugInlining: false, nameTableKind: None)
!180 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!181 = !{!177, !182}
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !179, file: !180, line: 55, type: !87, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !186, file: !187, line: 66, type: !222, isLocal: false, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !188, globals: !189, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!188 = !{!61, !68}
!189 = !{!190, !216, !184, !218, !220}
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(name: "old_file_name", scope: !192, file: !187, line: 304, type: !66, isLocal: true, isDefinition: true)
!192 = distinct !DISubprogram(name: "verror_at_line", scope: !187, file: !187, line: 298, type: !193, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !209)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !14, !14, !66, !21, !66, !195}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !196, line: 52, baseType: !197)
!196 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !198, line: 32, baseType: !199)
!198 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !200, baseType: !201)
!200 = !DIFile(filename: "lib/error.c", directory: "/src")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !202, size: 256, elements: !203)
!202 = !DINamespace(name: "std", scope: null)
!203 = !{!204, !205, !206, !207, !208}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !201, file: !200, baseType: !61, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !201, file: !200, baseType: !61, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !201, file: !200, baseType: !61, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !201, file: !200, baseType: !14, size: 32, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !201, file: !200, baseType: !14, size: 32, offset: 224)
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DILocalVariable(name: "status", arg: 1, scope: !192, file: !187, line: 298, type: !14)
!211 = !DILocalVariable(name: "errnum", arg: 2, scope: !192, file: !187, line: 298, type: !14)
!212 = !DILocalVariable(name: "file_name", arg: 3, scope: !192, file: !187, line: 298, type: !66)
!213 = !DILocalVariable(name: "line_number", arg: 4, scope: !192, file: !187, line: 298, type: !21)
!214 = !DILocalVariable(name: "message", arg: 5, scope: !192, file: !187, line: 298, type: !66)
!215 = !DILocalVariable(name: "args", arg: 6, scope: !192, file: !187, line: 298, type: !195)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(name: "old_line_number", scope: !192, file: !187, line: 305, type: !21, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "error_message_count", scope: !186, file: !187, line: 69, type: !21, isLocal: false, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !186, file: !187, line: 295, type: !14, isLocal: false, isDefinition: true)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null}
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "program_name", scope: !227, file: !228, line: 31, type: !66, isLocal: false, isDefinition: true)
!227 = distinct !DICompileUnit(language: DW_LANG_C99, file: !228, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !229, globals: !230, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!229 = !{!59}
!230 = !{!225}
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "utf07FF", scope: !233, file: !234, line: 46, type: !264, isLocal: true, isDefinition: true)
!233 = distinct !DISubprogram(name: "proper_name_lite", scope: !234, file: !234, line: 38, type: !235, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !239)
!234 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!235 = !DISubroutineType(types: !236)
!236 = !{!66, !66, !66}
!237 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !238, splitDebugInlining: false, nameTableKind: None)
!238 = !{!231}
!239 = !{!240, !241, !242, !243, !248}
!240 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !233, file: !234, line: 38, type: !66)
!241 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !233, file: !234, line: 38, type: !66)
!242 = !DILocalVariable(name: "translation", scope: !233, file: !234, line: 40, type: !66)
!243 = !DILocalVariable(name: "w", scope: !233, file: !234, line: 47, type: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !245, line: 37, baseType: !246)
!245 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !20, line: 57, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !20, line: 42, baseType: !21)
!248 = !DILocalVariable(name: "mbs", scope: !233, file: !234, line: 48, type: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !250, line: 6, baseType: !251)
!250 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !252, line: 21, baseType: !253)
!252 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 13, size: 64, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !253, file: !252, line: 15, baseType: !14, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !253, file: !252, line: 20, baseType: !257, size: 32, offset: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !253, file: !252, line: 16, size: 32, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !257, file: !252, line: 18, baseType: !21, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !257, file: !252, line: 19, baseType: !261, size: 32)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 32, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 4)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 16, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 2)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !269, file: !270, line: 76, type: !338, isLocal: false, isDefinition: true)
!269 = distinct !DICompileUnit(language: DW_LANG_C99, file: !270, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !271, retainedTypes: !277, globals: !278, splitDebugInlining: false, nameTableKind: None)
!270 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!271 = !{!44, !272, !29}
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !45, line: 254, baseType: !21, size: 32, elements: !273)
!273 = !{!274, !275, !276}
!274 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!275 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!276 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!277 = !{!14, !62, !63}
!278 = !{!267, !279, !285, !297, !299, !304, !327, !334, !336}
!279 = !DIGlobalVariableExpression(var: !280, expr: !DIExpression())
!280 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !269, file: !270, line: 92, type: !281, isLocal: false, isDefinition: true)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !282, size: 320, elements: !283)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!283 = !{!284}
!284 = !DISubrange(count: 10)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !269, file: !270, line: 1040, type: !287, isLocal: false, isDefinition: true)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !270, line: 56, size: 448, elements: !288)
!288 = !{!289, !290, !291, !295, !296}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !287, file: !270, line: 59, baseType: !44, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !287, file: !270, line: 62, baseType: !14, size: 32, offset: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !287, file: !270, line: 66, baseType: !292, size: 256, offset: 64)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 256, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 8)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !287, file: !270, line: 69, baseType: !66, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !287, file: !270, line: 72, baseType: !66, size: 64, offset: 384)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !269, file: !270, line: 107, type: !287, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "slot0", scope: !269, file: !270, line: 831, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2048, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 256)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "quote", scope: !306, file: !270, line: 228, type: !325, isLocal: true, isDefinition: true)
!306 = distinct !DISubprogram(name: "gettext_quote", scope: !270, file: !270, line: 197, type: !307, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !309)
!307 = !DISubroutineType(types: !308)
!308 = !{!66, !66, !44}
!309 = !{!310, !311, !312, !313, !314}
!310 = !DILocalVariable(name: "msgid", arg: 1, scope: !306, file: !270, line: 197, type: !66)
!311 = !DILocalVariable(name: "s", arg: 2, scope: !306, file: !270, line: 197, type: !44)
!312 = !DILocalVariable(name: "translation", scope: !306, file: !270, line: 199, type: !66)
!313 = !DILocalVariable(name: "w", scope: !306, file: !270, line: 229, type: !244)
!314 = !DILocalVariable(name: "mbs", scope: !306, file: !270, line: 230, type: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !250, line: 6, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !252, line: 21, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 13, size: 64, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !317, file: !252, line: 15, baseType: !14, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !317, file: !252, line: 20, baseType: !321, size: 32, offset: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !317, file: !252, line: 16, size: 32, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !321, file: !252, line: 18, baseType: !21, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !321, file: !252, line: 19, baseType: !261, size: 32)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 64, elements: !326)
!326 = !{!266, !263}
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "slotvec", scope: !269, file: !270, line: 834, type: !329, isLocal: true, isDefinition: true)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !270, line: 823, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !330, file: !270, line: 825, baseType: !63, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !330, file: !270, line: 826, baseType: !59, size: 64, offset: 64)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(name: "nslots", scope: !269, file: !270, line: 832, type: !14, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "slotvec0", scope: !269, file: !270, line: 833, type: !330, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 704, elements: !340)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!340 = !{!341}
!341 = !DISubrange(count: 11)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !344, file: !345, line: 26, type: !347, isLocal: false, isDefinition: true)
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !346, splitDebugInlining: false, nameTableKind: None)
!345 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!346 = !{!342}
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 376, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 47)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(name: "exit_failure", scope: !352, file: !353, line: 24, type: !355, isLocal: false, isDefinition: true)
!352 = distinct !DICompileUnit(language: DW_LANG_C99, file: !353, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !354, splitDebugInlining: false, nameTableKind: None)
!353 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!354 = !{!350}
!355 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "internal_state", scope: !358, file: !359, line: 97, type: !362, isLocal: true, isDefinition: true)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !360, globals: !361, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!360 = !{!61, !63, !68}
!361 = !{!356}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !250, line: 6, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !252, line: 21, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 13, size: 64, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !364, file: !252, line: 15, baseType: !14, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !364, file: !252, line: 20, baseType: !368, size: 32, offset: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !252, line: 16, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !368, file: !252, line: 18, baseType: !21, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !368, file: !252, line: 19, baseType: !261, size: 32)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "have_dupfd_cloexec", scope: !374, file: !375, line: 506, type: !14, isLocal: true, isDefinition: true)
!374 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD_CLOEXEC", scope: !375, file: !375, line: 485, type: !376, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !380)
!375 = !DIFile(filename: "lib/fcntl.c", directory: "/src", checksumkind: CSK_MD5, checksum: "bc4606a0e1e86be6126be7481cbd2f8d")
!376 = !DISubroutineType(types: !377)
!377 = !{!14, !14, !14}
!378 = distinct !DICompileUnit(language: DW_LANG_C99, file: !375, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !379, splitDebugInlining: false, nameTableKind: None)
!379 = !{!372}
!380 = !{!381, !382, !383, !384, !387}
!381 = !DILocalVariable(name: "fd", arg: 1, scope: !374, file: !375, line: 485, type: !14)
!382 = !DILocalVariable(name: "target", arg: 2, scope: !374, file: !375, line: 485, type: !14)
!383 = !DILocalVariable(name: "result", scope: !374, file: !375, line: 487, type: !14)
!384 = !DILocalVariable(name: "flags", scope: !385, file: !375, line: 530, type: !14)
!385 = distinct !DILexicalBlock(scope: !386, file: !375, line: 529, column: 5)
!386 = distinct !DILexicalBlock(scope: !374, file: !375, line: 528, column: 7)
!387 = !DILocalVariable(name: "saved_errno", scope: !388, file: !375, line: 533, type: !14)
!388 = distinct !DILexicalBlock(scope: !389, file: !375, line: 532, column: 9)
!389 = distinct !DILexicalBlock(scope: !385, file: !375, line: 531, column: 11)
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !392, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "8f170eec0f5223b6ba3ae07aa753e06a")
!392 = !{!68}
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !399, retainedTypes: !414, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/mkdir-p.c", directory: "/src", checksumkind: CSK_MD5, checksum: "35fabba6c7fba2a5201f9ea7f8c0e0d1")
!399 = !{!400, !410}
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !401, file: !6, line: 45, baseType: !21, size: 32, elements: !22)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 42, size: 64, elements: !402)
!402 = !{!403, !404}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !401, file: !6, line: 73, baseType: !400, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !401, file: !6, line: 81, baseType: !405, size: 32, offset: 32)
!405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !401, file: !6, line: 76, size: 32, elements: !406)
!406 = !{!407, !408, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !405, file: !6, line: 78, baseType: !14, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !405, file: !6, line: 79, baseType: !14, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !405, file: !6, line: 80, baseType: !17, size: 32)
!410 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 93, baseType: !21, size: 32, elements: !411)
!411 = !{!412, !413}
!412 = !DIEnumerator(name: "SAVEWD_CHDIR_NOFOLLOW", value: 1)
!413 = !DIEnumerator(name: "SAVEWD_CHDIR_SKIP_READABLE", value: 2)
!414 = !{!69, !71}
!415 = distinct !DICompileUnit(language: DW_LANG_C99, file: !416, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !417, splitDebugInlining: false, nameTableKind: None)
!416 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!417 = !{!418}
!418 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !416, line: 78, baseType: !21, size: 32, elements: !419)
!419 = !{!420, !421, !422, !423}
!420 = !DIEnumerator(name: "MODE_DONE", value: 0)
!421 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!422 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!423 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!424 = distinct !DICompileUnit(language: DW_LANG_C99, file: !425, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !426, splitDebugInlining: false, nameTableKind: None)
!425 = !DIFile(filename: "lib/savewd.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0cafd16d007fc7abd1f9bf11434952af")
!426 = !{!427, !410}
!427 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !428, file: !6, line: 45, baseType: !21, size: 32, elements: !22)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 42, size: 64, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !428, file: !6, line: 73, baseType: !427, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !428, file: !6, line: 81, baseType: !432, size: 32, offset: 32)
!432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !6, line: 76, size: 32, elements: !433)
!433 = !{!434, !435, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !432, file: !6, line: 78, baseType: !14, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !432, file: !6, line: 79, baseType: !14, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !432, file: !6, line: 80, baseType: !17, size: 32)
!437 = distinct !DICompileUnit(language: DW_LANG_C99, file: !438, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !439, retainedTypes: !443, splitDebugInlining: false, nameTableKind: None)
!438 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!439 = !{!440}
!440 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !438, line: 40, baseType: !21, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!443 = !{!61}
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !446, retainedTypes: !477, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!446 = !{!447, !459}
!447 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !448, file: !445, line: 188, baseType: !21, size: 32, elements: !457)
!448 = distinct !DISubprogram(name: "x2nrealloc", scope: !445, file: !445, line: 176, type: !449, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !452)
!449 = !DISubroutineType(types: !450)
!450 = !{!61, !61, !451, !63}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!452 = !{!453, !454, !455, !456}
!453 = !DILocalVariable(name: "p", arg: 1, scope: !448, file: !445, line: 176, type: !61)
!454 = !DILocalVariable(name: "pn", arg: 2, scope: !448, file: !445, line: 176, type: !451)
!455 = !DILocalVariable(name: "s", arg: 3, scope: !448, file: !445, line: 176, type: !63)
!456 = !DILocalVariable(name: "n", scope: !448, file: !445, line: 178, type: !63)
!457 = !{!458}
!458 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !460, file: !445, line: 228, baseType: !21, size: 32, elements: !457)
!460 = distinct !DISubprogram(name: "xpalloc", scope: !445, file: !445, line: 223, type: !461, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !467)
!461 = !DISubroutineType(types: !462)
!462 = !{!61, !61, !463, !464, !466, !464}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !465, line: 130, baseType: !466)
!465 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !64, line: 35, baseType: !127)
!467 = !{!468, !469, !470, !471, !472, !473, !474, !475, !476}
!468 = !DILocalVariable(name: "pa", arg: 1, scope: !460, file: !445, line: 223, type: !61)
!469 = !DILocalVariable(name: "pn", arg: 2, scope: !460, file: !445, line: 223, type: !463)
!470 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !460, file: !445, line: 223, type: !464)
!471 = !DILocalVariable(name: "n_max", arg: 4, scope: !460, file: !445, line: 223, type: !466)
!472 = !DILocalVariable(name: "s", arg: 5, scope: !460, file: !445, line: 223, type: !464)
!473 = !DILocalVariable(name: "n0", scope: !460, file: !445, line: 230, type: !464)
!474 = !DILocalVariable(name: "n", scope: !460, file: !445, line: 237, type: !464)
!475 = !DILocalVariable(name: "nbytes", scope: !460, file: !445, line: 248, type: !464)
!476 = !DILocalVariable(name: "adjusted_nbytes", scope: !460, file: !445, line: 252, type: !464)
!477 = !{!59, !61, !87, !127, !65}
!478 = distinct !DICompileUnit(language: DW_LANG_C99, file: !479, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!479 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!480 = distinct !DICompileUnit(language: DW_LANG_C99, file: !481, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!481 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!482 = distinct !DICompileUnit(language: DW_LANG_C99, file: !483, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!483 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!484 = distinct !DICompileUnit(language: DW_LANG_C99, file: !485, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!485 = !DIFile(filename: "lib/open-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "84efcad54206a8ffedf254f32134ee9c")
!486 = distinct !DICompileUnit(language: DW_LANG_C99, file: !487, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !443, splitDebugInlining: false, nameTableKind: None)
!487 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!488 = distinct !DICompileUnit(language: DW_LANG_C99, file: !489, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !443, splitDebugInlining: false, nameTableKind: None)
!489 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!490 = distinct !DICompileUnit(language: DW_LANG_C99, file: !491, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !492, splitDebugInlining: false, nameTableKind: None)
!491 = !DIFile(filename: "lib/mkancesdirs.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c6b54240f33d18f510b92d67eeccd60e")
!492 = !{!493, !410}
!493 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !494, file: !6, line: 45, baseType: !21, size: 32, elements: !22)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "savewd", file: !6, line: 42, size: 64, elements: !495)
!495 = !{!496, !497}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !494, file: !6, line: 73, baseType: !493, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !494, file: !6, line: 81, baseType: !498, size: 32, offset: 32)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !494, file: !6, line: 76, size: 32, elements: !499)
!499 = !{!500, !501, !502}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !498, file: !6, line: 78, baseType: !14, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "errnum", scope: !498, file: !6, line: 79, baseType: !14, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !498, file: !6, line: 80, baseType: !17, size: 32)
!503 = distinct !DICompileUnit(language: DW_LANG_C99, file: !504, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !505, splitDebugInlining: false, nameTableKind: None)
!504 = !DIFile(filename: "lib/dirchownmod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "b1a0bf6d4e9295f75572be521597aa1e")
!505 = !{!69, !71, !506}
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !18, line: 69, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !20, line: 150, baseType: !21)
!508 = distinct !DICompileUnit(language: DW_LANG_C99, file: !509, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !510, splitDebugInlining: false, nameTableKind: None)
!509 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!510 = !{!87, !65, !61}
!511 = distinct !DICompileUnit(language: DW_LANG_C99, file: !512, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!512 = !DIFile(filename: "lib/fd-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "12c3310fb811f6ed0e0fb7e99c1b995b")
!513 = distinct !DICompileUnit(language: DW_LANG_C99, file: !514, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!514 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!515 = distinct !DICompileUnit(language: DW_LANG_C99, file: !516, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!516 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!517 = distinct !DICompileUnit(language: DW_LANG_C99, file: !518, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !443, splitDebugInlining: false, nameTableKind: None)
!518 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!519 = distinct !DICompileUnit(language: DW_LANG_C99, file: !520, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!520 = !DIFile(filename: "lib/dup-safer.c", directory: "/src", checksumkind: CSK_MD5, checksum: "aa6a1c772a9b9ef0682764f116d6de11")
!521 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!522 = !{i32 7, !"Dwarf Version", i32 5}
!523 = !{i32 2, !"Debug Info Version", i32 3}
!524 = !{i32 1, !"wchar_size", i32 4}
!525 = !{i32 1, !"branch-target-enforcement", i32 0}
!526 = !{i32 1, !"sign-return-address", i32 0}
!527 = !{i32 1, !"sign-return-address-all", i32 0}
!528 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!529 = !{i32 7, !"PIC Level", i32 2}
!530 = !{i32 7, !"PIE Level", i32 2}
!531 = !{i32 7, !"uwtable", i32 1}
!532 = !{i32 7, !"frame-pointer", i32 1}
!533 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !534, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !14}
!536 = !{!537}
!537 = !DILocalVariable(name: "status", arg: 1, scope: !533, file: !3, line: 51, type: !14)
!538 = !DILocation(line: 0, scope: !533)
!539 = !DILocation(line: 53, column: 14, scope: !540)
!540 = distinct !DILexicalBlock(scope: !533, file: !3, line: 53, column: 7)
!541 = !DILocation(line: 53, column: 7, scope: !533)
!542 = !DILocation(line: 54, column: 5, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !3, line: 54, column: 5)
!544 = !{!545, !545, i64 0}
!545 = !{!"any pointer", !546, i64 0}
!546 = !{!"omnipotent char", !547, i64 0}
!547 = !{!"Simple C/C++ TBAA"}
!548 = !DILocation(line: 57, column: 7, scope: !549)
!549 = distinct !DILexicalBlock(scope: !540, file: !3, line: 56, column: 5)
!550 = !DILocation(line: 58, column: 7, scope: !549)
!551 = !DILocation(line: 736, column: 3, scope: !552, inlinedAt: !554)
!552 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !77, file: !77, line: 734, type: !223, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!553 = !{}
!554 = distinct !DILocation(line: 62, column: 7, scope: !549)
!555 = !DILocation(line: 64, column: 7, scope: !549)
!556 = !DILocation(line: 68, column: 7, scope: !549)
!557 = !DILocation(line: 73, column: 7, scope: !549)
!558 = !DILocation(line: 77, column: 7, scope: !549)
!559 = !DILocation(line: 82, column: 7, scope: !549)
!560 = !DILocation(line: 87, column: 7, scope: !549)
!561 = !DILocation(line: 88, column: 7, scope: !549)
!562 = !DILocalVariable(name: "program", arg: 1, scope: !563, file: !77, line: 836, type: !66)
!563 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !77, file: !77, line: 836, type: !564, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !66}
!566 = !{!562, !567, !574, !575, !577, !578}
!567 = !DILocalVariable(name: "infomap", scope: !563, file: !77, line: 838, type: !568)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 896, elements: !170)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !563, file: !77, line: 838, size: 128, elements: !571)
!571 = !{!572, !573}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !570, file: !77, line: 838, baseType: !66, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !570, file: !77, line: 838, baseType: !66, size: 64, offset: 64)
!574 = !DILocalVariable(name: "node", scope: !563, file: !77, line: 848, type: !66)
!575 = !DILocalVariable(name: "map_prog", scope: !563, file: !77, line: 849, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!577 = !DILocalVariable(name: "lc_messages", scope: !563, file: !77, line: 861, type: !66)
!578 = !DILocalVariable(name: "url_program", scope: !563, file: !77, line: 874, type: !66)
!579 = !DILocation(line: 0, scope: !563, inlinedAt: !580)
!580 = distinct !DILocation(line: 89, column: 7, scope: !549)
!581 = !DILocation(line: 838, column: 3, scope: !563, inlinedAt: !580)
!582 = !DILocation(line: 838, column: 67, scope: !563, inlinedAt: !580)
!583 = !DILocation(line: 849, column: 36, scope: !563, inlinedAt: !580)
!584 = !DILocation(line: 851, column: 3, scope: !563, inlinedAt: !580)
!585 = !DILocalVariable(name: "__s1", arg: 1, scope: !586, file: !587, line: 1359, type: !66)
!586 = distinct !DISubprogram(name: "streq", scope: !587, file: !587, line: 1359, type: !588, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !590)
!587 = !DIFile(filename: "./lib/string.h", directory: "/src")
!588 = !DISubroutineType(types: !589)
!589 = !{!87, !66, !66}
!590 = !{!585, !591}
!591 = !DILocalVariable(name: "__s2", arg: 2, scope: !586, file: !587, line: 1359, type: !66)
!592 = !DILocation(line: 0, scope: !586, inlinedAt: !593)
!593 = distinct !DILocation(line: 851, column: 33, scope: !563, inlinedAt: !580)
!594 = !DILocation(line: 1361, column: 11, scope: !586, inlinedAt: !593)
!595 = !DILocation(line: 1361, column: 10, scope: !586, inlinedAt: !593)
!596 = !DILocation(line: 852, column: 13, scope: !563, inlinedAt: !580)
!597 = !DILocation(line: 851, column: 20, scope: !563, inlinedAt: !580)
!598 = !{!599, !545, i64 0}
!599 = !{!"infomap", !545, i64 0, !545, i64 8}
!600 = !DILocation(line: 851, column: 10, scope: !563, inlinedAt: !580)
!601 = !DILocation(line: 851, column: 28, scope: !563, inlinedAt: !580)
!602 = distinct !{!602, !584, !596, !603}
!603 = !{!"llvm.loop.mustprogress"}
!604 = !DILocation(line: 854, column: 17, scope: !605, inlinedAt: !580)
!605 = distinct !DILexicalBlock(scope: !563, file: !77, line: 854, column: 7)
!606 = !{!599, !545, i64 8}
!607 = !DILocation(line: 854, column: 7, scope: !605, inlinedAt: !580)
!608 = !DILocation(line: 854, column: 7, scope: !563, inlinedAt: !580)
!609 = !DILocation(line: 857, column: 3, scope: !563, inlinedAt: !580)
!610 = !DILocation(line: 861, column: 29, scope: !563, inlinedAt: !580)
!611 = !DILocation(line: 862, column: 7, scope: !612, inlinedAt: !580)
!612 = distinct !DILexicalBlock(scope: !563, file: !77, line: 862, column: 7)
!613 = !DILocation(line: 862, column: 19, scope: !612, inlinedAt: !580)
!614 = !DILocation(line: 862, column: 22, scope: !612, inlinedAt: !580)
!615 = !DILocation(line: 862, column: 7, scope: !563, inlinedAt: !580)
!616 = !DILocation(line: 868, column: 7, scope: !617, inlinedAt: !580)
!617 = distinct !DILexicalBlock(scope: !612, file: !77, line: 863, column: 5)
!618 = !DILocation(line: 870, column: 5, scope: !617, inlinedAt: !580)
!619 = !DILocation(line: 0, scope: !586, inlinedAt: !620)
!620 = distinct !DILocation(line: 874, column: 29, scope: !563, inlinedAt: !580)
!621 = !DILocation(line: 875, column: 3, scope: !563, inlinedAt: !580)
!622 = !DILocation(line: 877, column: 3, scope: !563, inlinedAt: !580)
!623 = !DILocation(line: 879, column: 1, scope: !563, inlinedAt: !580)
!624 = !DILocation(line: 91, column: 3, scope: !533)
!625 = !DISubprogram(name: "dcgettext", scope: !626, file: !626, line: 51, type: !627, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!626 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!627 = !DISubroutineType(types: !628)
!628 = !{!59, !66, !66, !14}
!629 = !DISubprogram(name: "fputs_unlocked", scope: !196, file: !196, line: 691, type: !630, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!630 = !DISubroutineType(types: !631)
!631 = !{!14, !632, !633}
!632 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!633 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!634 = !DILocation(line: 0, scope: !76)
!635 = !DILocation(line: 581, column: 7, scope: !85)
!636 = !{!637, !637, i64 0}
!637 = !{!"int", !546, i64 0}
!638 = !DILocation(line: 581, column: 19, scope: !85)
!639 = !DILocation(line: 581, column: 7, scope: !76)
!640 = !DILocation(line: 585, column: 26, scope: !84)
!641 = !DILocation(line: 0, scope: !84)
!642 = !DILocation(line: 586, column: 23, scope: !84)
!643 = !DILocation(line: 586, column: 28, scope: !84)
!644 = !DILocation(line: 586, column: 32, scope: !84)
!645 = !{!546, !546, i64 0}
!646 = !DILocation(line: 586, column: 38, scope: !84)
!647 = !DILocation(line: 0, scope: !586, inlinedAt: !648)
!648 = distinct !DILocation(line: 586, column: 41, scope: !84)
!649 = !DILocation(line: 1361, column: 11, scope: !586, inlinedAt: !648)
!650 = !DILocation(line: 1361, column: 10, scope: !586, inlinedAt: !648)
!651 = !DILocation(line: 586, column: 19, scope: !84)
!652 = !DILocation(line: 587, column: 5, scope: !84)
!653 = !DILocation(line: 588, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !76, file: !77, line: 588, column: 7)
!655 = !DILocation(line: 588, column: 7, scope: !76)
!656 = !DILocation(line: 590, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !654, file: !77, line: 589, column: 5)
!658 = !DILocation(line: 591, column: 7, scope: !657)
!659 = !DILocation(line: 595, column: 37, scope: !76)
!660 = !DILocation(line: 595, column: 35, scope: !76)
!661 = !DILocation(line: 596, column: 29, scope: !76)
!662 = !DILocation(line: 597, column: 8, scope: !93)
!663 = !DILocation(line: 597, column: 7, scope: !76)
!664 = !DILocation(line: 604, column: 24, scope: !92)
!665 = !DILocation(line: 604, column: 12, scope: !93)
!666 = !DILocation(line: 0, scope: !91)
!667 = !DILocation(line: 610, column: 16, scope: !91)
!668 = !DILocation(line: 610, column: 7, scope: !91)
!669 = !DILocation(line: 611, column: 21, scope: !91)
!670 = !{!671, !671, i64 0}
!671 = !{!"short", !546, i64 0}
!672 = !DILocation(line: 611, column: 19, scope: !91)
!673 = !DILocation(line: 611, column: 16, scope: !91)
!674 = !DILocation(line: 610, column: 30, scope: !91)
!675 = distinct !{!675, !668, !669, !603}
!676 = !DILocation(line: 612, column: 18, scope: !677)
!677 = distinct !DILexicalBlock(scope: !91, file: !77, line: 612, column: 11)
!678 = !DILocation(line: 612, column: 11, scope: !91)
!679 = !DILocation(line: 620, column: 23, scope: !76)
!680 = !DILocation(line: 625, column: 39, scope: !76)
!681 = !DILocation(line: 626, column: 3, scope: !76)
!682 = !DILocation(line: 626, column: 10, scope: !76)
!683 = !DILocation(line: 626, column: 21, scope: !76)
!684 = !DILocation(line: 628, column: 44, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !77, line: 628, column: 11)
!686 = distinct !DILexicalBlock(scope: !76, file: !77, line: 627, column: 5)
!687 = !DILocation(line: 628, column: 32, scope: !685)
!688 = !DILocation(line: 628, column: 49, scope: !685)
!689 = !DILocation(line: 628, column: 11, scope: !686)
!690 = !DILocation(line: 630, column: 11, scope: !691)
!691 = distinct !DILexicalBlock(scope: !686, file: !77, line: 630, column: 11)
!692 = !DILocation(line: 630, column: 11, scope: !686)
!693 = !DILocation(line: 632, column: 26, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !77, line: 632, column: 15)
!695 = distinct !DILexicalBlock(scope: !691, file: !77, line: 631, column: 9)
!696 = !DILocation(line: 632, column: 34, scope: !694)
!697 = !DILocation(line: 632, column: 37, scope: !694)
!698 = !DILocation(line: 632, column: 15, scope: !695)
!699 = !DILocation(line: 636, column: 29, scope: !700)
!700 = distinct !DILexicalBlock(scope: !695, file: !77, line: 636, column: 15)
!701 = !DILocation(line: 640, column: 16, scope: !686)
!702 = distinct !{!702, !681, !703, !603}
!703 = !DILocation(line: 641, column: 5, scope: !76)
!704 = !DILocation(line: 644, column: 3, scope: !76)
!705 = !DILocation(line: 0, scope: !586, inlinedAt: !706)
!706 = distinct !DILocation(line: 648, column: 31, scope: !76)
!707 = !DILocation(line: 0, scope: !586, inlinedAt: !708)
!708 = distinct !DILocation(line: 649, column: 31, scope: !76)
!709 = !DILocation(line: 0, scope: !586, inlinedAt: !710)
!710 = distinct !DILocation(line: 650, column: 31, scope: !76)
!711 = !DILocation(line: 0, scope: !586, inlinedAt: !712)
!712 = distinct !DILocation(line: 651, column: 31, scope: !76)
!713 = !DILocation(line: 0, scope: !586, inlinedAt: !714)
!714 = distinct !DILocation(line: 652, column: 31, scope: !76)
!715 = !DILocation(line: 0, scope: !586, inlinedAt: !716)
!716 = distinct !DILocation(line: 653, column: 31, scope: !76)
!717 = !DILocation(line: 0, scope: !586, inlinedAt: !718)
!718 = distinct !DILocation(line: 654, column: 31, scope: !76)
!719 = !DILocation(line: 0, scope: !586, inlinedAt: !720)
!720 = distinct !DILocation(line: 655, column: 31, scope: !76)
!721 = !DILocation(line: 0, scope: !586, inlinedAt: !722)
!722 = distinct !DILocation(line: 656, column: 31, scope: !76)
!723 = !DILocation(line: 0, scope: !586, inlinedAt: !724)
!724 = distinct !DILocation(line: 657, column: 31, scope: !76)
!725 = !DILocation(line: 663, column: 7, scope: !726)
!726 = distinct !DILexicalBlock(scope: !76, file: !77, line: 663, column: 7)
!727 = !DILocation(line: 664, column: 7, scope: !726)
!728 = !DILocation(line: 664, column: 10, scope: !726)
!729 = !DILocation(line: 663, column: 7, scope: !76)
!730 = !DILocation(line: 669, column: 7, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !77, line: 665, column: 5)
!732 = !DILocation(line: 671, column: 5, scope: !731)
!733 = !DILocation(line: 676, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !726, file: !77, line: 673, column: 5)
!735 = !DILocation(line: 679, column: 3, scope: !76)
!736 = !DILocation(line: 683, column: 3, scope: !76)
!737 = !DILocation(line: 686, column: 3, scope: !76)
!738 = !DILocation(line: 688, column: 3, scope: !76)
!739 = !DILocation(line: 691, column: 3, scope: !76)
!740 = !DILocation(line: 695, column: 3, scope: !76)
!741 = !DILocation(line: 696, column: 1, scope: !76)
!742 = !DISubprogram(name: "setlocale", scope: !743, file: !743, line: 122, type: !744, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!743 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!744 = !DISubroutineType(types: !745)
!745 = !{!59, !14, !66}
!746 = !DISubprogram(name: "getenv", scope: !747, file: !747, line: 641, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!747 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!748 = !DISubroutineType(types: !749)
!749 = !{!59, !66}
!750 = !DISubprogram(name: "fwrite_unlocked", scope: !196, file: !196, line: 704, type: !751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!751 = !DISubroutineType(types: !752)
!752 = !{!63, !753, !63, !63, !633}
!753 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!756 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 202, type: !757, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !760)
!757 = !DISubroutineType(types: !758)
!758 = !{!14, !14, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!760 = !{!761, !762, !763, !764, !765, !766, !782, !785, !788}
!761 = !DILocalVariable(name: "argc", arg: 1, scope: !756, file: !3, line: 202, type: !14)
!762 = !DILocalVariable(name: "argv", arg: 2, scope: !756, file: !3, line: 202, type: !759)
!763 = !DILocalVariable(name: "specified_mode", scope: !756, file: !3, line: 204, type: !66)
!764 = !DILocalVariable(name: "optc", scope: !756, file: !3, line: 205, type: !14)
!765 = !DILocalVariable(name: "scontext", scope: !756, file: !3, line: 206, type: !66)
!766 = !DILocalVariable(name: "options", scope: !756, file: !3, line: 207, type: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mkdir_options", file: !3, line: 95, size: 320, elements: !768)
!768 = !{!769, !773, !774, !775, !776, !777, !781}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "make_ancestor_function", scope: !767, file: !3, line: 99, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!14, !66, !66, !61}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "umask_ancestor", scope: !767, file: !3, line: 102, baseType: !506, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "umask_self", scope: !767, file: !3, line: 105, baseType: !506, size: 32, offset: 96)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !767, file: !3, line: 108, baseType: !506, size: 32, offset: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mode_bits", scope: !767, file: !3, line: 111, baseType: !506, size: 32, offset: 160)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "set_security_context", scope: !767, file: !3, line: 114, baseType: !778, size: 64, offset: 192)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !780, line: 53, flags: DIFlagFwdDecl)
!780 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!781 = !DIDerivedType(tag: DW_TAG_member, name: "created_directory_format", scope: !767, file: !3, line: 117, baseType: !66, size: 64, offset: 256)
!782 = !DILocalVariable(name: "ret", scope: !783, file: !3, line: 279, type: !14)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 278, column: 5)
!784 = distinct !DILexicalBlock(scope: !756, file: !3, line: 277, column: 7)
!785 = !DILocalVariable(name: "umask_value", scope: !786, file: !3, line: 294, type: !506)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 293, column: 5)
!787 = distinct !DILexicalBlock(scope: !756, file: !3, line: 292, column: 7)
!788 = !DILocalVariable(name: "change", scope: !789, file: !3, line: 299, type: !791)
!789 = distinct !DILexicalBlock(scope: !790, file: !3, line: 298, column: 9)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 297, column: 11)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !793, line: 35, flags: DIFlagFwdDecl)
!793 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!794 = !DILocation(line: 0, scope: !756)
!795 = !DILocation(line: 207, column: 3, scope: !756)
!796 = !DILocation(line: 207, column: 24, scope: !756)
!797 = !DILocation(line: 209, column: 11, scope: !756)
!798 = !DILocation(line: 210, column: 11, scope: !756)
!799 = !DILocation(line: 210, column: 16, scope: !756)
!800 = !{!801, !637, i64 16}
!801 = !{!"mkdir_options", !545, i64 0, !637, i64 8, !637, i64 12, !637, i64 16, !637, i64 20, !545, i64 24, !545, i64 32}
!802 = !DILocation(line: 211, column: 11, scope: !756)
!803 = !DILocation(line: 212, column: 11, scope: !756)
!804 = !DILocation(line: 216, column: 21, scope: !756)
!805 = !DILocation(line: 212, column: 36, scope: !756)
!806 = !DILocation(line: 216, column: 3, scope: !756)
!807 = !DILocation(line: 217, column: 3, scope: !756)
!808 = !DILocation(line: 218, column: 3, scope: !756)
!809 = !DILocation(line: 219, column: 3, scope: !756)
!810 = !DILocation(line: 221, column: 3, scope: !756)
!811 = !DILocation(line: 223, column: 3, scope: !756)
!812 = !DILocation(line: 223, column: 18, scope: !756)
!813 = distinct !{!813, !811, !814, !603}
!814 = !DILocation(line: 266, column: 5, scope: !756)
!815 = !DILocation(line: 231, column: 28, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 226, column: 9)
!817 = distinct !DILexicalBlock(scope: !756, file: !3, line: 224, column: 5)
!818 = !DILocation(line: 232, column: 11, scope: !816)
!819 = !DILocation(line: 234, column: 46, scope: !816)
!820 = !DILocation(line: 235, column: 11, scope: !816)
!821 = !DILocation(line: 254, column: 20, scope: !822)
!822 = distinct !DILexicalBlock(scope: !823, file: !3, line: 254, column: 20)
!823 = distinct !DILexicalBlock(scope: !824, file: !3, line: 242, column: 20)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 237, column: 15)
!825 = !DILocation(line: 254, column: 20, scope: !823)
!826 = !DILocation(line: 256, column: 15, scope: !827)
!827 = distinct !DILexicalBlock(scope: !822, file: !3, line: 255, column: 13)
!828 = !DILocation(line: 259, column: 13, scope: !827)
!829 = !DILocation(line: 261, column: 9, scope: !816)
!830 = !DILocation(line: 262, column: 9, scope: !816)
!831 = !DILocation(line: 264, column: 11, scope: !816)
!832 = !DILocation(line: 234, column: 44, scope: !816)
!833 = !{!801, !545, i64 32}
!834 = !DILocation(line: 228, column: 42, scope: !816)
!835 = !{!801, !545, i64 0}
!836 = !DILocation(line: 268, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !756, file: !3, line: 268, column: 7)
!838 = !DILocation(line: 268, column: 14, scope: !837)
!839 = !DILocation(line: 268, column: 7, scope: !756)
!840 = !DILocation(line: 270, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 269, column: 5)
!842 = !DILocation(line: 271, column: 7, scope: !841)
!843 = !DILocation(line: 292, column: 38, scope: !787)
!844 = !DILocation(line: 294, column: 28, scope: !786)
!845 = !DILocation(line: 0, scope: !786)
!846 = !DILocation(line: 295, column: 44, scope: !786)
!847 = !DILocation(line: 295, column: 15, scope: !786)
!848 = !DILocation(line: 295, column: 30, scope: !786)
!849 = !{!801, !637, i64 8}
!850 = !DILocation(line: 297, column: 11, scope: !786)
!851 = !DILocation(line: 299, column: 40, scope: !789)
!852 = !DILocation(line: 0, scope: !789)
!853 = !DILocation(line: 300, column: 16, scope: !854)
!854 = distinct !DILexicalBlock(scope: !789, file: !3, line: 300, column: 15)
!855 = !DILocation(line: 300, column: 15, scope: !789)
!856 = !DILocation(line: 301, column: 13, scope: !854)
!857 = !DILocation(line: 303, column: 26, scope: !789)
!858 = !DILocation(line: 303, column: 24, scope: !789)
!859 = !DILocation(line: 305, column: 46, scope: !789)
!860 = !DILocation(line: 305, column: 44, scope: !789)
!861 = !DILocation(line: 305, column: 19, scope: !789)
!862 = !DILocation(line: 305, column: 30, scope: !789)
!863 = !{!801, !637, i64 12}
!864 = !DILocation(line: 306, column: 17, scope: !789)
!865 = !DILocation(line: 306, column: 11, scope: !789)
!866 = !DILocation(line: 307, column: 9, scope: !789)
!867 = !DILocation(line: 310, column: 24, scope: !868)
!868 = distinct !DILexicalBlock(scope: !790, file: !3, line: 309, column: 9)
!869 = !DILocation(line: 311, column: 19, scope: !868)
!870 = !DILocation(line: 311, column: 30, scope: !868)
!871 = !DILocation(line: 314, column: 22, scope: !786)
!872 = !DILocation(line: 314, column: 7, scope: !786)
!873 = !DILocation(line: 317, column: 39, scope: !756)
!874 = !DILocation(line: 315, column: 5, scope: !786)
!875 = !DILocation(line: 317, column: 37, scope: !756)
!876 = !DILocation(line: 317, column: 52, scope: !756)
!877 = !DILocation(line: 317, column: 10, scope: !756)
!878 = !DILocation(line: 319, column: 1, scope: !756)
!879 = !DILocation(line: 317, column: 3, scope: !756)
!880 = !DISubprogram(name: "bindtextdomain", scope: !626, file: !626, line: 86, type: !881, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!881 = !DISubroutineType(types: !882)
!882 = !{!59, !66, !66}
!883 = !DISubprogram(name: "textdomain", scope: !626, file: !626, line: 82, type: !748, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!884 = !DISubprogram(name: "atexit", scope: !747, file: !747, line: 602, type: !885, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!885 = !DISubroutineType(types: !886)
!886 = !{!14, !222}
!887 = distinct !DISubprogram(name: "make_ancestor", scope: !3, file: !3, line: 135, type: !771, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !888)
!888 = !{!889, !890, !891, !892, !895, !896}
!889 = !DILocalVariable(name: "dir", arg: 1, scope: !887, file: !3, line: 135, type: !66)
!890 = !DILocalVariable(name: "component", arg: 2, scope: !887, file: !3, line: 135, type: !66)
!891 = !DILocalVariable(name: "options", arg: 3, scope: !887, file: !3, line: 135, type: !61)
!892 = !DILocalVariable(name: "o", scope: !887, file: !3, line: 137, type: !893)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!895 = !DILocalVariable(name: "r", scope: !887, file: !3, line: 147, type: !14)
!896 = !DILocalVariable(name: "mkdir_errno", scope: !897, file: !3, line: 150, type: !14)
!897 = distinct !DILexicalBlock(scope: !898, file: !3, line: 149, column: 5)
!898 = distinct !DILexicalBlock(scope: !887, file: !3, line: 148, column: 7)
!899 = !DILocation(line: 0, scope: !887)
!900 = !DILocation(line: 139, column: 10, scope: !901)
!901 = distinct !DILexicalBlock(scope: !887, file: !3, line: 139, column: 7)
!902 = !{!801, !545, i64 24}
!903 = !DILocation(line: 139, column: 7, scope: !901)
!904 = !DILocation(line: 140, column: 7, scope: !901)
!905 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !906, file: !907, line: 49, type: !778)
!906 = distinct !DISubprogram(name: "defaultcon", scope: !907, file: !907, line: 49, type: !908, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !910)
!907 = !DIFile(filename: "src/selinux.h", directory: "/src", checksumkind: CSK_MD5, checksum: "13efa93c67c6cc8e1be8195655a2b752")
!908 = !DISubroutineType(types: !909)
!909 = !{!14, !778, !66, !506}
!910 = !{!905, !911, !912}
!911 = !DILocalVariable(name: "path", arg: 2, scope: !906, file: !907, line: 50, type: !66)
!912 = !DILocalVariable(name: "mode", arg: 3, scope: !906, file: !907, line: 50, type: !506)
!913 = !DILocation(line: 0, scope: !906, inlinedAt: !914)
!914 = distinct !DILocation(line: 140, column: 10, scope: !901)
!915 = !DILocation(line: 51, column: 3, scope: !906, inlinedAt: !914)
!916 = !DILocation(line: 51, column: 9, scope: !906, inlinedAt: !914)
!917 = !DILocation(line: 139, column: 7, scope: !887)
!918 = !DILocation(line: 145, column: 10, scope: !919)
!919 = distinct !DILexicalBlock(scope: !887, file: !3, line: 145, column: 7)
!920 = !DILocation(line: 145, column: 31, scope: !919)
!921 = !DILocation(line: 145, column: 25, scope: !919)
!922 = !DILocation(line: 145, column: 7, scope: !887)
!923 = !DILocation(line: 146, column: 5, scope: !919)
!924 = !DILocation(line: 147, column: 11, scope: !887)
!925 = !DILocation(line: 148, column: 10, scope: !898)
!926 = !DILocation(line: 148, column: 31, scope: !898)
!927 = !DILocation(line: 148, column: 25, scope: !898)
!928 = !DILocation(line: 148, column: 7, scope: !887)
!929 = !DILocation(line: 150, column: 25, scope: !897)
!930 = !DILocation(line: 0, scope: !897)
!931 = !DILocation(line: 151, column: 7, scope: !897)
!932 = !DILocation(line: 152, column: 13, scope: !897)
!933 = !DILocation(line: 153, column: 5, scope: !897)
!934 = !DILocation(line: 154, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !887, file: !3, line: 154, column: 7)
!936 = !DILocation(line: 154, column: 7, scope: !887)
!937 = !DILocation(line: 156, column: 15, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !3, line: 155, column: 5)
!939 = !DILocation(line: 156, column: 41, scope: !938)
!940 = !DILocalVariable(name: "dir", arg: 1, scope: !941, file: !3, line: 122, type: !66)
!941 = distinct !DISubprogram(name: "announce_mkdir", scope: !3, file: !3, line: 122, type: !942, scopeLine: 123, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !944)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !66, !61}
!944 = !{!940, !945, !946}
!945 = !DILocalVariable(name: "options", arg: 2, scope: !941, file: !3, line: 122, type: !61)
!946 = !DILocalVariable(name: "o", scope: !941, file: !3, line: 124, type: !893)
!947 = !DILocation(line: 0, scope: !941, inlinedAt: !948)
!948 = distinct !DILocation(line: 157, column: 7, scope: !938)
!949 = !DILocation(line: 125, column: 10, scope: !950, inlinedAt: !948)
!950 = distinct !DILexicalBlock(scope: !941, file: !3, line: 125, column: 7)
!951 = !DILocation(line: 125, column: 7, scope: !950, inlinedAt: !948)
!952 = !DILocation(line: 125, column: 7, scope: !941, inlinedAt: !948)
!953 = !DILocation(line: 126, column: 19, scope: !950, inlinedAt: !948)
!954 = !DILocation(line: 126, column: 56, scope: !950, inlinedAt: !948)
!955 = !DILocation(line: 126, column: 5, scope: !950, inlinedAt: !948)
!956 = !DILocation(line: 159, column: 3, scope: !887)
!957 = !DISubprogram(name: "getopt_long", scope: !163, file: !163, line: 66, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!958 = !DISubroutineType(types: !959)
!959 = !{!14, !14, !960, !66, !962, !168}
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!963 = !DISubprogram(name: "umask", scope: !964, file: !964, line: 380, type: !965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!964 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!965 = !DISubroutineType(types: !966)
!966 = !{!507, !507}
!967 = distinct !DISubprogram(name: "process_dir", scope: !3, file: !3, line: 164, type: !968, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !971)
!968 = !DISubroutineType(types: !969)
!969 = !{!14, !59, !970, !61}
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!971 = !{!972, !973, !974, !975, !976}
!972 = !DILocalVariable(name: "dir", arg: 1, scope: !967, file: !3, line: 164, type: !59)
!973 = !DILocalVariable(name: "wd", arg: 2, scope: !967, file: !3, line: 164, type: !970)
!974 = !DILocalVariable(name: "options", arg: 3, scope: !967, file: !3, line: 164, type: !61)
!975 = !DILocalVariable(name: "o", scope: !967, file: !3, line: 166, type: !893)
!976 = !DILocalVariable(name: "ret", scope: !967, file: !3, line: 178, type: !14)
!977 = !DILocation(line: 0, scope: !967)
!978 = !DILocation(line: 169, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !967, file: !3, line: 169, column: 7)
!980 = !DILocation(line: 169, column: 7, scope: !979)
!981 = !DILocation(line: 169, column: 7, scope: !967)
!982 = !DILocation(line: 0, scope: !906, inlinedAt: !983)
!983 = distinct !DILocation(line: 172, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 171, column: 11)
!985 = distinct !DILexicalBlock(scope: !979, file: !3, line: 170, column: 5)
!986 = !DILocation(line: 51, column: 3, scope: !906, inlinedAt: !983)
!987 = !DILocation(line: 51, column: 9, scope: !906, inlinedAt: !983)
!988 = !DILocation(line: 171, column: 11, scope: !985)
!989 = !DILocation(line: 178, column: 44, scope: !967)
!990 = !DILocation(line: 179, column: 35, scope: !967)
!991 = !DILocation(line: 180, column: 35, scope: !967)
!992 = !{!801, !637, i64 20}
!993 = !DILocation(line: 178, column: 14, scope: !967)
!994 = !DILocation(line: 189, column: 27, scope: !995)
!995 = distinct !DILexicalBlock(scope: !967, file: !3, line: 189, column: 7)
!996 = !DILocation(line: 189, column: 33, scope: !995)
!997 = !DILocation(line: 189, column: 30, scope: !995)
!998 = !DILocation(line: 190, column: 7, scope: !995)
!999 = !DILocation(line: 190, column: 13, scope: !995)
!1000 = !DILocation(line: 190, column: 10, scope: !995)
!1001 = !DILocation(line: 189, column: 7, scope: !967)
!1002 = !DILocalVariable(name: "selabel_handle", arg: 1, scope: !1003, file: !907, line: 44, type: !778)
!1003 = distinct !DISubprogram(name: "restorecon", scope: !907, file: !907, line: 44, type: !1004, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!87, !778, !66, !87}
!1006 = !{!1002, !1007, !1008}
!1007 = !DILocalVariable(name: "path", arg: 2, scope: !1003, file: !907, line: 45, type: !66)
!1008 = !DILocalVariable(name: "recurse", arg: 3, scope: !1003, file: !907, line: 45, type: !87)
!1009 = !DILocation(line: 0, scope: !1003, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 192, column: 13, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 192, column: 11)
!1012 = distinct !DILexicalBlock(scope: !995, file: !3, line: 191, column: 5)
!1013 = !DILocation(line: 46, column: 3, scope: !1003, inlinedAt: !1010)
!1014 = !DILocation(line: 46, column: 9, scope: !1003, inlinedAt: !1010)
!1015 = !DILocation(line: 192, column: 11, scope: !1012)
!1016 = !DILocation(line: 198, column: 3, scope: !967)
!1017 = !DILocation(line: 0, scope: !941)
!1018 = !DILocation(line: 125, column: 10, scope: !950)
!1019 = !DILocation(line: 125, column: 7, scope: !950)
!1020 = !DILocation(line: 125, column: 7, scope: !941)
!1021 = !DILocation(line: 126, column: 19, scope: !950)
!1022 = !DILocation(line: 126, column: 56, scope: !950)
!1023 = !DILocation(line: 126, column: 5, scope: !950)
!1024 = !DILocation(line: 127, column: 1, scope: !941)
!1025 = !DISubprogram(name: "mkdir", scope: !964, file: !964, line: 389, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!14, !66, !507}
!1028 = distinct !DISubprogram(name: "prog_fprintf", scope: !391, file: !391, line: 28, type: !1029, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1065)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{null, !1031, !66, null}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1033, file: !104, line: 51, baseType: !14, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1033, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1033, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1033, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1033, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1033, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1033, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1033, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1033, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1033, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1033, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1033, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1033, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1033, file: !104, line: 70, baseType: !1049, size: 64, offset: 832)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1033, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1033, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1033, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1033, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1033, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1033, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1033, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1033, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1033, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1033, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1033, file: !104, line: 93, baseType: !1049, size: 64, offset: 1344)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1033, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1033, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1033, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1033, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!1065 = !{!1066, !1067, !1068}
!1066 = !DILocalVariable(name: "fp", arg: 1, scope: !1028, file: !391, line: 28, type: !1031)
!1067 = !DILocalVariable(name: "fmt", arg: 2, scope: !1028, file: !391, line: 28, type: !66)
!1068 = !DILocalVariable(name: "ap", scope: !1028, file: !391, line: 30, type: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !196, line: 52, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !198, line: 32, baseType: !1071)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1072, baseType: !1073)
!1072 = !DIFile(filename: "src/prog-fprintf.c", directory: "/src")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !202, size: 256, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1073, file: !1072, line: 30, baseType: !61, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1073, file: !1072, line: 30, baseType: !61, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1073, file: !1072, line: 30, baseType: !61, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1073, file: !1072, line: 30, baseType: !14, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1073, file: !1072, line: 30, baseType: !14, size: 32, offset: 224)
!1080 = !DILocation(line: 0, scope: !1028)
!1081 = !DILocation(line: 30, column: 3, scope: !1028)
!1082 = !DILocation(line: 30, column: 11, scope: !1028)
!1083 = !DILocation(line: 31, column: 3, scope: !1028)
!1084 = !DILocation(line: 32, column: 3, scope: !1028)
!1085 = !DILocation(line: 33, column: 3, scope: !1028)
!1086 = !DILocalVariable(name: "__stream", arg: 1, scope: !1087, file: !1088, line: 132, type: !1091)
!1087 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 132, type: !1089, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1092)
!1088 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!14, !1091, !632, !1070}
!1091 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1031)
!1092 = !{!1086, !1093, !1094}
!1093 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1087, file: !1088, line: 133, type: !632)
!1094 = !DILocalVariable(name: "__ap", arg: 3, scope: !1087, file: !1088, line: 133, type: !1070)
!1095 = !DILocation(line: 0, scope: !1087, inlinedAt: !1096)
!1096 = distinct !DILocation(line: 34, column: 3, scope: !1028)
!1097 = !DILocation(line: 135, column: 10, scope: !1087, inlinedAt: !1096)
!1098 = !{!1099, !1101}
!1099 = distinct !{!1099, !1100, !"vfprintf.inline: argument 0"}
!1100 = distinct !{!1100, !"vfprintf.inline"}
!1101 = distinct !{!1101, !1100, !"vfprintf.inline: argument 1"}
!1102 = !DILocation(line: 35, column: 3, scope: !1028)
!1103 = !DILocalVariable(name: "__c", arg: 1, scope: !1104, file: !1105, line: 91, type: !14)
!1104 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1105, file: !1105, line: 91, type: !1106, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !1108)
!1105 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!14, !14, !1031}
!1108 = !{!1103, !1109}
!1109 = !DILocalVariable(name: "__stream", arg: 2, scope: !1104, file: !1105, line: 91, type: !1031)
!1110 = !DILocation(line: 0, scope: !1104, inlinedAt: !1111)
!1111 = distinct !DILocation(line: 36, column: 3, scope: !1028)
!1112 = !DILocation(line: 93, column: 10, scope: !1104, inlinedAt: !1111)
!1113 = !{!1114, !545, i64 40}
!1114 = !{!"_IO_FILE", !637, i64 0, !545, i64 8, !545, i64 16, !545, i64 24, !545, i64 32, !545, i64 40, !545, i64 48, !545, i64 56, !545, i64 64, !545, i64 72, !545, i64 80, !545, i64 88, !545, i64 96, !545, i64 104, !637, i64 112, !637, i64 116, !1115, i64 120, !671, i64 128, !546, i64 130, !546, i64 131, !545, i64 136, !1115, i64 144, !545, i64 152, !545, i64 160, !545, i64 168, !545, i64 176, !1115, i64 184, !637, i64 192, !546, i64 196}
!1115 = !{!"long", !546, i64 0}
!1116 = !{!1114, !545, i64 48}
!1117 = !{!"branch_weights", i32 2000, i32 1}
!1118 = !DILocation(line: 37, column: 1, scope: !1028)
!1119 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !180, file: !180, line: 50, type: !564, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1120)
!1120 = !{!1121}
!1121 = !DILocalVariable(name: "file", arg: 1, scope: !1119, file: !180, line: 50, type: !66)
!1122 = !DILocation(line: 0, scope: !1119)
!1123 = !DILocation(line: 52, column: 13, scope: !1119)
!1124 = !DILocation(line: 53, column: 1, scope: !1119)
!1125 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !180, file: !180, line: 87, type: !1126, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !87}
!1128 = !{!1129}
!1129 = !DILocalVariable(name: "ignore", arg: 1, scope: !1125, file: !180, line: 87, type: !87)
!1130 = !DILocation(line: 0, scope: !1125)
!1131 = !DILocation(line: 89, column: 16, scope: !1125)
!1132 = !{!1133, !1133, i64 0}
!1133 = !{!"_Bool", !546, i64 0}
!1134 = !DILocation(line: 90, column: 1, scope: !1125)
!1135 = distinct !DISubprogram(name: "close_stdout", scope: !180, file: !180, line: 116, type: !223, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !179, retainedNodes: !1136)
!1136 = !{!1137}
!1137 = !DILocalVariable(name: "write_error", scope: !1138, file: !180, line: 121, type: !66)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !180, line: 120, column: 5)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !180, line: 118, column: 7)
!1140 = !DILocation(line: 118, column: 21, scope: !1139)
!1141 = !DILocation(line: 118, column: 7, scope: !1139)
!1142 = !DILocation(line: 118, column: 29, scope: !1139)
!1143 = !DILocation(line: 119, column: 7, scope: !1139)
!1144 = !DILocation(line: 119, column: 12, scope: !1139)
!1145 = !{i8 0, i8 2}
!1146 = !DILocation(line: 119, column: 25, scope: !1139)
!1147 = !DILocation(line: 119, column: 28, scope: !1139)
!1148 = !DILocation(line: 119, column: 34, scope: !1139)
!1149 = !DILocation(line: 118, column: 7, scope: !1135)
!1150 = !DILocation(line: 121, column: 33, scope: !1138)
!1151 = !DILocation(line: 0, scope: !1138)
!1152 = !DILocation(line: 122, column: 11, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1138, file: !180, line: 122, column: 11)
!1154 = !DILocation(line: 0, scope: !1153)
!1155 = !DILocation(line: 122, column: 11, scope: !1138)
!1156 = !DILocation(line: 123, column: 9, scope: !1153)
!1157 = !DILocation(line: 126, column: 9, scope: !1153)
!1158 = !DILocation(line: 128, column: 14, scope: !1138)
!1159 = !DILocation(line: 128, column: 7, scope: !1138)
!1160 = !DILocation(line: 133, column: 42, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1135, file: !180, line: 133, column: 7)
!1162 = !DILocation(line: 133, column: 28, scope: !1161)
!1163 = !DILocation(line: 133, column: 50, scope: !1161)
!1164 = !DILocation(line: 133, column: 7, scope: !1135)
!1165 = !DILocation(line: 134, column: 12, scope: !1161)
!1166 = !DILocation(line: 134, column: 5, scope: !1161)
!1167 = !DILocation(line: 135, column: 1, scope: !1135)
!1168 = distinct !DISubprogram(name: "verror", scope: !187, file: !187, line: 251, type: !1169, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !14, !14, !66, !195}
!1171 = !{!1172, !1173, !1174, !1175}
!1172 = !DILocalVariable(name: "status", arg: 1, scope: !1168, file: !187, line: 251, type: !14)
!1173 = !DILocalVariable(name: "errnum", arg: 2, scope: !1168, file: !187, line: 251, type: !14)
!1174 = !DILocalVariable(name: "message", arg: 3, scope: !1168, file: !187, line: 251, type: !66)
!1175 = !DILocalVariable(name: "args", arg: 4, scope: !1168, file: !187, line: 251, type: !195)
!1176 = !DILocation(line: 0, scope: !1168)
!1177 = !DILocation(line: 251, column: 1, scope: !1168)
!1178 = !DILocation(line: 261, column: 3, scope: !1168)
!1179 = !DILocation(line: 265, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1168, file: !187, line: 265, column: 7)
!1181 = !DILocation(line: 265, column: 7, scope: !1168)
!1182 = !DILocation(line: 266, column: 5, scope: !1180)
!1183 = !DILocation(line: 272, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !187, line: 268, column: 5)
!1185 = !DILocation(line: 276, column: 3, scope: !1168)
!1186 = !{i64 0, i64 8, !544, i64 8, i64 8, !544, i64 16, i64 8, !544, i64 24, i64 4, !636, i64 28, i64 4, !636}
!1187 = !DILocation(line: 282, column: 1, scope: !1168)
!1188 = distinct !DISubprogram(name: "flush_stdout", scope: !187, file: !187, line: 163, type: !223, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1189)
!1189 = !{!1190}
!1190 = !DILocalVariable(name: "stdout_fd", scope: !1188, file: !187, line: 166, type: !14)
!1191 = !DILocation(line: 0, scope: !1188)
!1192 = !DILocalVariable(name: "fd", arg: 1, scope: !1193, file: !187, line: 145, type: !14)
!1193 = distinct !DISubprogram(name: "is_open", scope: !187, file: !187, line: 145, type: !1194, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!14, !14}
!1196 = !{!1192}
!1197 = !DILocation(line: 0, scope: !1193, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 182, column: 25, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1188, file: !187, line: 182, column: 7)
!1200 = !DILocation(line: 157, column: 15, scope: !1193, inlinedAt: !1198)
!1201 = !DILocation(line: 182, column: 25, scope: !1199)
!1202 = !DILocation(line: 182, column: 7, scope: !1188)
!1203 = !DILocation(line: 184, column: 5, scope: !1199)
!1204 = !DILocation(line: 185, column: 1, scope: !1188)
!1205 = distinct !DISubprogram(name: "error_tail", scope: !187, file: !187, line: 219, type: !1169, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1206)
!1206 = !{!1207, !1208, !1209, !1210}
!1207 = !DILocalVariable(name: "status", arg: 1, scope: !1205, file: !187, line: 219, type: !14)
!1208 = !DILocalVariable(name: "errnum", arg: 2, scope: !1205, file: !187, line: 219, type: !14)
!1209 = !DILocalVariable(name: "message", arg: 3, scope: !1205, file: !187, line: 219, type: !66)
!1210 = !DILocalVariable(name: "args", arg: 4, scope: !1205, file: !187, line: 219, type: !195)
!1211 = !DILocation(line: 0, scope: !1205)
!1212 = !DILocation(line: 219, column: 1, scope: !1205)
!1213 = !DILocation(line: 229, column: 13, scope: !1205)
!1214 = !DILocation(line: 229, column: 3, scope: !1205)
!1215 = !DILocalVariable(name: "__stream", arg: 1, scope: !1216, file: !1088, line: 132, type: !1219)
!1216 = distinct !DISubprogram(name: "vfprintf", scope: !1088, file: !1088, line: 132, type: !1217, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1254)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!14, !1219, !632, !197}
!1219 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !1222)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1222, file: !104, line: 51, baseType: !14, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1222, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1222, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1222, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1222, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1222, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1222, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1222, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1222, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1222, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1222, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1222, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1222, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1222, file: !104, line: 70, baseType: !1238, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1222, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1222, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1222, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1222, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1222, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1222, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1222, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1222, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1222, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1222, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1222, file: !104, line: 93, baseType: !1238, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1222, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1222, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1222, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1222, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!1254 = !{!1215, !1255, !1256}
!1255 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1216, file: !1088, line: 133, type: !632)
!1256 = !DILocalVariable(name: "__ap", arg: 3, scope: !1216, file: !1088, line: 133, type: !197)
!1257 = !DILocation(line: 0, scope: !1216, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 229, column: 3, scope: !1205)
!1259 = !DILocation(line: 135, column: 10, scope: !1216, inlinedAt: !1258)
!1260 = !{!1261, !1263}
!1261 = distinct !{!1261, !1262, !"vfprintf.inline: argument 0"}
!1262 = distinct !{!1262, !"vfprintf.inline"}
!1263 = distinct !{!1263, !1262, !"vfprintf.inline: argument 1"}
!1264 = !DILocation(line: 232, column: 3, scope: !1205)
!1265 = !DILocation(line: 233, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 233, column: 7)
!1267 = !DILocation(line: 233, column: 7, scope: !1205)
!1268 = !DILocalVariable(name: "errnum", arg: 1, scope: !1269, file: !187, line: 188, type: !14)
!1269 = distinct !DISubprogram(name: "print_errno_message", scope: !187, file: !187, line: 188, type: !534, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1270)
!1270 = !{!1268, !1271, !1272}
!1271 = !DILocalVariable(name: "s", scope: !1269, file: !187, line: 190, type: !66)
!1272 = !DILocalVariable(name: "errbuf", scope: !1269, file: !187, line: 193, type: !1273)
!1273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 8192, elements: !1274)
!1274 = !{!1275}
!1275 = !DISubrange(count: 1024)
!1276 = !DILocation(line: 0, scope: !1269, inlinedAt: !1277)
!1277 = distinct !DILocation(line: 234, column: 5, scope: !1266)
!1278 = !DILocation(line: 193, column: 3, scope: !1269, inlinedAt: !1277)
!1279 = !DILocation(line: 193, column: 8, scope: !1269, inlinedAt: !1277)
!1280 = !DILocation(line: 195, column: 7, scope: !1269, inlinedAt: !1277)
!1281 = !DILocation(line: 207, column: 9, scope: !1282, inlinedAt: !1277)
!1282 = distinct !DILexicalBlock(scope: !1269, file: !187, line: 207, column: 7)
!1283 = !DILocation(line: 207, column: 7, scope: !1269, inlinedAt: !1277)
!1284 = !DILocation(line: 208, column: 9, scope: !1282, inlinedAt: !1277)
!1285 = !DILocation(line: 208, column: 5, scope: !1282, inlinedAt: !1277)
!1286 = !DILocation(line: 214, column: 3, scope: !1269, inlinedAt: !1277)
!1287 = !DILocation(line: 216, column: 1, scope: !1269, inlinedAt: !1277)
!1288 = !DILocation(line: 234, column: 5, scope: !1266)
!1289 = !DILocation(line: 238, column: 3, scope: !1205)
!1290 = !DILocalVariable(name: "__c", arg: 1, scope: !1291, file: !1105, line: 101, type: !14)
!1291 = distinct !DISubprogram(name: "putc_unlocked", scope: !1105, file: !1105, line: 101, type: !1292, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1294)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!14, !14, !1220}
!1294 = !{!1290, !1295}
!1295 = !DILocalVariable(name: "__stream", arg: 2, scope: !1291, file: !1105, line: 101, type: !1220)
!1296 = !DILocation(line: 0, scope: !1291, inlinedAt: !1297)
!1297 = distinct !DILocation(line: 238, column: 3, scope: !1205)
!1298 = !DILocation(line: 103, column: 10, scope: !1291, inlinedAt: !1297)
!1299 = !DILocation(line: 240, column: 3, scope: !1205)
!1300 = !DILocation(line: 241, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1205, file: !187, line: 241, column: 7)
!1302 = !DILocation(line: 241, column: 7, scope: !1205)
!1303 = !DILocation(line: 242, column: 5, scope: !1301)
!1304 = !DILocation(line: 243, column: 1, scope: !1205)
!1305 = !DISubprogram(name: "strerror_r", scope: !1306, file: !1306, line: 444, type: !1307, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1306 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!59, !14, !59, !63}
!1309 = !DISubprogram(name: "fflush_unlocked", scope: !196, file: !196, line: 239, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!14, !1220}
!1312 = !DISubprogram(name: "fcntl", scope: !1313, file: !1313, line: 149, type: !1314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1313 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!14, !14, !14, null}
!1316 = distinct !DISubprogram(name: "error", scope: !187, file: !187, line: 285, type: !1317, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{null, !14, !14, !66, null}
!1319 = !{!1320, !1321, !1322, !1323}
!1320 = !DILocalVariable(name: "status", arg: 1, scope: !1316, file: !187, line: 285, type: !14)
!1321 = !DILocalVariable(name: "errnum", arg: 2, scope: !1316, file: !187, line: 285, type: !14)
!1322 = !DILocalVariable(name: "message", arg: 3, scope: !1316, file: !187, line: 285, type: !66)
!1323 = !DILocalVariable(name: "ap", scope: !1316, file: !187, line: 287, type: !195)
!1324 = !DILocation(line: 0, scope: !1316)
!1325 = !DILocation(line: 287, column: 3, scope: !1316)
!1326 = !DILocation(line: 287, column: 11, scope: !1316)
!1327 = !DILocation(line: 288, column: 3, scope: !1316)
!1328 = !DILocation(line: 289, column: 3, scope: !1316)
!1329 = !DILocation(line: 290, column: 3, scope: !1316)
!1330 = !DILocation(line: 291, column: 1, scope: !1316)
!1331 = !DILocation(line: 0, scope: !192)
!1332 = !DILocation(line: 298, column: 1, scope: !192)
!1333 = !DILocation(line: 302, column: 7, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !192, file: !187, line: 302, column: 7)
!1335 = !DILocation(line: 302, column: 7, scope: !192)
!1336 = !DILocation(line: 307, column: 11, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !187, line: 307, column: 11)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !187, line: 303, column: 5)
!1339 = !DILocation(line: 307, column: 27, scope: !1337)
!1340 = !DILocation(line: 308, column: 11, scope: !1337)
!1341 = !DILocation(line: 308, column: 28, scope: !1337)
!1342 = !DILocation(line: 308, column: 25, scope: !1337)
!1343 = !DILocation(line: 309, column: 15, scope: !1337)
!1344 = !DILocation(line: 309, column: 33, scope: !1337)
!1345 = !DILocation(line: 310, column: 19, scope: !1337)
!1346 = !DILocation(line: 311, column: 22, scope: !1337)
!1347 = !DILocation(line: 311, column: 56, scope: !1337)
!1348 = !DILocation(line: 307, column: 11, scope: !1338)
!1349 = !DILocation(line: 316, column: 21, scope: !1338)
!1350 = !DILocation(line: 317, column: 23, scope: !1338)
!1351 = !DILocation(line: 318, column: 5, scope: !1338)
!1352 = !DILocation(line: 327, column: 3, scope: !192)
!1353 = !DILocation(line: 331, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !192, file: !187, line: 331, column: 7)
!1355 = !DILocation(line: 331, column: 7, scope: !192)
!1356 = !DILocation(line: 332, column: 5, scope: !1354)
!1357 = !DILocation(line: 338, column: 7, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1354, file: !187, line: 334, column: 5)
!1359 = !DILocation(line: 346, column: 3, scope: !192)
!1360 = !DILocation(line: 350, column: 3, scope: !192)
!1361 = !DILocation(line: 356, column: 1, scope: !192)
!1362 = distinct !DISubprogram(name: "error_at_line", scope: !187, file: !187, line: 359, type: !1363, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1365)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{null, !14, !14, !66, !21, !66, null}
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371}
!1366 = !DILocalVariable(name: "status", arg: 1, scope: !1362, file: !187, line: 359, type: !14)
!1367 = !DILocalVariable(name: "errnum", arg: 2, scope: !1362, file: !187, line: 359, type: !14)
!1368 = !DILocalVariable(name: "file_name", arg: 3, scope: !1362, file: !187, line: 359, type: !66)
!1369 = !DILocalVariable(name: "line_number", arg: 4, scope: !1362, file: !187, line: 360, type: !21)
!1370 = !DILocalVariable(name: "message", arg: 5, scope: !1362, file: !187, line: 360, type: !66)
!1371 = !DILocalVariable(name: "ap", scope: !1362, file: !187, line: 362, type: !195)
!1372 = !DILocation(line: 0, scope: !1362)
!1373 = !DILocation(line: 362, column: 3, scope: !1362)
!1374 = !DILocation(line: 362, column: 11, scope: !1362)
!1375 = !DILocation(line: 363, column: 3, scope: !1362)
!1376 = !DILocation(line: 364, column: 3, scope: !1362)
!1377 = !DILocation(line: 366, column: 3, scope: !1362)
!1378 = !DILocation(line: 367, column: 1, scope: !1362)
!1379 = distinct !DISubprogram(name: "getprogname", scope: !396, file: !396, line: 54, type: !1380, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !553)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!66}
!1382 = !DILocation(line: 58, column: 10, scope: !1379)
!1383 = !DILocation(line: 58, column: 3, scope: !1379)
!1384 = distinct !DISubprogram(name: "make_dir_parents", scope: !398, file: !398, line: 85, type: !1385, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1389)
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!87, !59, !1387, !770, !61, !506, !1388, !506, !69, !71, !87}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1404, !1405, !1408, !1409, !1410, !1413, !1451, !1453, !1454, !1458}
!1390 = !DILocalVariable(name: "dir", arg: 1, scope: !1384, file: !398, line: 85, type: !59)
!1391 = !DILocalVariable(name: "wd", arg: 2, scope: !1384, file: !398, line: 86, type: !1387)
!1392 = !DILocalVariable(name: "make_ancestor", arg: 3, scope: !1384, file: !398, line: 87, type: !770)
!1393 = !DILocalVariable(name: "options", arg: 4, scope: !1384, file: !398, line: 88, type: !61)
!1394 = !DILocalVariable(name: "mode", arg: 5, scope: !1384, file: !398, line: 89, type: !506)
!1395 = !DILocalVariable(name: "announce", arg: 6, scope: !1384, file: !398, line: 90, type: !1388)
!1396 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !1384, file: !398, line: 91, type: !506)
!1397 = !DILocalVariable(name: "owner", arg: 8, scope: !1384, file: !398, line: 92, type: !69)
!1398 = !DILocalVariable(name: "group", arg: 9, scope: !1384, file: !398, line: 93, type: !71)
!1399 = !DILocalVariable(name: "preserve_existing", arg: 10, scope: !1384, file: !398, line: 94, type: !87)
!1400 = !DILocalVariable(name: "mkdir_errno", scope: !1384, file: !398, line: 96, type: !14)
!1401 = !DILocalVariable(name: "savewd_chdir_options", scope: !1402, file: !398, line: 100, type: !14)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !398, line: 99, column: 5)
!1403 = distinct !DILexicalBlock(scope: !1384, file: !398, line: 98, column: 7)
!1404 = !DILocalVariable(name: "prefix_len", scope: !1402, file: !398, line: 102, type: !466)
!1405 = !DILocalVariable(name: "keep_owner", scope: !1406, file: !398, line: 121, type: !87)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !398, line: 115, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !398, line: 114, column: 11)
!1408 = !DILocalVariable(name: "keep_special_mode_bits", scope: !1406, file: !398, line: 122, type: !87)
!1409 = !DILocalVariable(name: "mkdir_mode", scope: !1406, file: !398, line: 124, type: !506)
!1410 = !DILocalVariable(name: "umask_must_be_ok", scope: !1411, file: !398, line: 134, type: !87)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !398, line: 131, column: 13)
!1412 = distinct !DILexicalBlock(scope: !1406, file: !398, line: 130, column: 15)
!1413 = !DILocalVariable(name: "st", scope: !1414, file: !398, line: 155, type: !1419)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !398, line: 154, column: 17)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !398, line: 153, column: 19)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !398, line: 150, column: 13)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !398, line: 149, column: 20)
!1418 = distinct !DILexicalBlock(scope: !1406, file: !398, line: 147, column: 15)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1420, line: 44, size: 1024, elements: !1421)
!1420 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1421 = !{!1422, !1424, !1426, !1427, !1429, !1430, !1431, !1432, !1433, !1434, !1436, !1437, !1439, !1447, !1448, !1449}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1419, file: !1420, line: 46, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !20, line: 145, baseType: !65)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1419, file: !1420, line: 47, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !20, line: 148, baseType: !65)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1419, file: !1420, line: 48, baseType: !507, size: 32, offset: 128)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1419, file: !1420, line: 49, baseType: !1428, size: 32, offset: 160)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !20, line: 151, baseType: !21)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1419, file: !1420, line: 50, baseType: !70, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1419, file: !1420, line: 51, baseType: !72, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1419, file: !1420, line: 52, baseType: !1423, size: 64, offset: 256)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1419, file: !1420, line: 53, baseType: !1423, size: 64, offset: 320)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1419, file: !1420, line: 54, baseType: !126, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1419, file: !1420, line: 55, baseType: !1435, size: 32, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !20, line: 175, baseType: !14)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1419, file: !1420, line: 56, baseType: !14, size: 32, offset: 480)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1419, file: !1420, line: 57, baseType: !1438, size: 64, offset: 512)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !20, line: 180, baseType: !127)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1419, file: !1420, line: 65, baseType: !1440, size: 128, offset: 576)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1441, line: 11, size: 128, elements: !1442)
!1441 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1442 = !{!1443, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1440, file: !1441, line: 16, baseType: !1444, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 160, baseType: !127)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1440, file: !1441, line: 21, baseType: !1446, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 197, baseType: !127)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1419, file: !1420, line: 66, baseType: !1440, size: 128, offset: 704)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1419, file: !1420, line: 67, baseType: !1440, size: 128, offset: 832)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1419, file: !1420, line: 79, baseType: !1450, size: 64, offset: 960)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !265)
!1451 = !DILocalVariable(name: "open_result", scope: !1452, file: !398, line: 171, type: !1450)
!1452 = distinct !DILexicalBlock(scope: !1417, file: !398, line: 170, column: 13)
!1453 = !DILocalVariable(name: "chdir_result", scope: !1452, file: !398, line: 172, type: !14)
!1454 = !DILocalVariable(name: "chdir_ok", scope: !1455, file: !398, line: 179, type: !87)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !398, line: 178, column: 17)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !398, line: 177, column: 24)
!1457 = distinct !DILexicalBlock(scope: !1452, file: !398, line: 175, column: 19)
!1458 = !DILocalVariable(name: "subdir", scope: !1455, file: !398, line: 180, type: !66)
!1459 = !DILocation(line: 0, scope: !1384)
!1460 = !DILocation(line: 96, column: 22, scope: !1384)
!1461 = !DILocalVariable(name: "wd", arg: 1, scope: !1462, file: !6, line: 131, type: !1465)
!1462 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 131, type: !1463, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !1467)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!14, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!1467 = !{!1461}
!1468 = !DILocation(line: 0, scope: !1462, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 96, column: 56, scope: !1384)
!1470 = !DILocation(line: 133, column: 14, scope: !1462, inlinedAt: !1469)
!1471 = !{!1472, !546, i64 0}
!1472 = !{!"savewd", !546, i64 0, !546, i64 4}
!1473 = !DILocation(line: 133, column: 20, scope: !1462, inlinedAt: !1469)
!1474 = !DILocation(line: 133, column: 10, scope: !1462, inlinedAt: !1469)
!1475 = !DILocation(line: 133, column: 48, scope: !1462, inlinedAt: !1469)
!1476 = !DILocation(line: 98, column: 19, scope: !1403)
!1477 = !DILocation(line: 98, column: 7, scope: !1384)
!1478 = !DILocation(line: 0, scope: !1402)
!1479 = !DILocation(line: 103, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1402, file: !398, line: 103, column: 11)
!1481 = !DILocation(line: 103, column: 11, scope: !1402)
!1482 = !DILocation(line: 105, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1480, file: !398, line: 104, column: 9)
!1484 = !DILocation(line: 106, column: 26, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1483, file: !398, line: 106, column: 15)
!1486 = !DILocation(line: 106, column: 15, scope: !1483)
!1487 = !DILocation(line: 108, column: 30, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !398, line: 108, column: 19)
!1489 = distinct !DILexicalBlock(scope: !1485, file: !398, line: 107, column: 13)
!1490 = !DILocation(line: 108, column: 19, scope: !1489)
!1491 = !DILocation(line: 110, column: 29, scope: !1489)
!1492 = !DILocation(line: 114, column: 11, scope: !1402)
!1493 = !DILocation(line: 121, column: 49, scope: !1406)
!1494 = !DILocation(line: 0, scope: !1406)
!1495 = !DILocation(line: 123, column: 25, scope: !1406)
!1496 = !DILocation(line: 123, column: 56, scope: !1406)
!1497 = !DILocation(line: 123, column: 48, scope: !1406)
!1498 = !DILocation(line: 125, column: 15, scope: !1406)
!1499 = !DILocation(line: 130, column: 26, scope: !1412)
!1500 = !DILocation(line: 130, column: 15, scope: !1412)
!1501 = !DILocation(line: 130, column: 52, scope: !1412)
!1502 = !DILocation(line: 130, column: 15, scope: !1406)
!1503 = !DILocation(line: 134, column: 45, scope: !1411)
!1504 = !DILocation(line: 134, column: 57, scope: !1411)
!1505 = !DILocation(line: 0, scope: !1411)
!1506 = !DILocation(line: 136, column: 15, scope: !1411)
!1507 = !DILocation(line: 138, column: 36, scope: !1411)
!1508 = !DILocation(line: 149, column: 20, scope: !1418)
!1509 = !DILocation(line: 143, column: 29, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1412, file: !398, line: 142, column: 13)
!1511 = !DILocation(line: 147, column: 37, scope: !1418)
!1512 = !DILocation(line: 151, column: 31, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1416, file: !398, line: 151, column: 19)
!1514 = !DILocation(line: 151, column: 19, scope: !1416)
!1515 = !DILocation(line: 153, column: 19, scope: !1416)
!1516 = !DILocation(line: 155, column: 19, scope: !1414)
!1517 = !DILocation(line: 155, column: 31, scope: !1414)
!1518 = !DILocation(line: 156, column: 23, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1414, file: !398, line: 156, column: 23)
!1520 = !DILocation(line: 156, column: 52, scope: !1519)
!1521 = !DILocation(line: 156, column: 23, scope: !1414)
!1522 = !DILocation(line: 158, column: 27, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !398, line: 158, column: 27)
!1524 = distinct !DILexicalBlock(scope: !1519, file: !398, line: 157, column: 21)
!1525 = !{!1526, !637, i64 16}
!1526 = !{!"stat", !1115, i64 0, !1115, i64 8, !637, i64 16, !637, i64 20, !637, i64 24, !637, i64 28, !1115, i64 32, !1115, i64 40, !1115, i64 48, !637, i64 56, !637, i64 60, !1115, i64 64, !1527, i64 72, !1527, i64 88, !1527, i64 104, !546, i64 120}
!1527 = !{!"timespec", !1115, i64 0, !1115, i64 8}
!1528 = !DILocation(line: 158, column: 27, scope: !1524)
!1529 = !DILocation(line: 161, column: 40, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1519, file: !398, line: 161, column: 28)
!1531 = !DILocation(line: 162, column: 28, scope: !1530)
!1532 = !DILocation(line: 162, column: 31, scope: !1530)
!1533 = !DILocation(line: 162, column: 47, scope: !1530)
!1534 = !DILocation(line: 164, column: 23, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1530, file: !398, line: 163, column: 21)
!1536 = !DILocation(line: 165, column: 23, scope: !1535)
!1537 = !DILocation(line: 167, column: 17, scope: !1415)
!1538 = !DILocation(line: 171, column: 15, scope: !1452)
!1539 = !DILocation(line: 171, column: 19, scope: !1452)
!1540 = !DILocation(line: 174, column: 53, scope: !1452)
!1541 = !DILocation(line: 173, column: 17, scope: !1452)
!1542 = !DILocation(line: 0, scope: !1452)
!1543 = !DILocation(line: 175, column: 32, scope: !1457)
!1544 = !DILocation(line: 175, column: 19, scope: !1452)
!1545 = !DILocation(line: 177, column: 37, scope: !1456)
!1546 = !DILocation(line: 177, column: 42, scope: !1456)
!1547 = !DILocation(line: 177, column: 45, scope: !1456)
!1548 = !DILocation(line: 177, column: 51, scope: !1456)
!1549 = !DILocation(line: 177, column: 24, scope: !1457)
!1550 = !DILocation(line: 0, scope: !1455)
!1551 = !DILocation(line: 181, column: 36, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1455, file: !398, line: 181, column: 23)
!1553 = !DILocation(line: 181, column: 23, scope: !1552)
!1554 = !DILocation(line: 183, column: 23, scope: !1552)
!1555 = !DILocation(line: 181, column: 23, scope: !1455)
!1556 = !DILocation(line: 186, column: 35, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1455, file: !398, line: 186, column: 23)
!1558 = !DILocation(line: 187, column: 23, scope: !1557)
!1559 = !DILocation(line: 189, column: 23, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1557, file: !398, line: 188, column: 21)
!1561 = !DILocation(line: 187, column: 41, scope: !1557)
!1562 = !DILocation(line: 187, column: 44, scope: !1557)
!1563 = !DILocation(line: 187, column: 60, scope: !1557)
!1564 = !DILocation(line: 194, column: 23, scope: !1560)
!1565 = !DILocation(line: 199, column: 35, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !398, line: 199, column: 23)
!1567 = distinct !DILexicalBlock(scope: !1456, file: !398, line: 198, column: 17)
!1568 = !DILocation(line: 199, column: 23, scope: !1567)
!1569 = !DILocation(line: 201, column: 28, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !398, line: 201, column: 23)
!1571 = !DILocation(line: 201, column: 25, scope: !1570)
!1572 = !DILocation(line: 201, column: 23, scope: !1567)
!1573 = !DILocation(line: 202, column: 21, scope: !1570)
!1574 = !DILocation(line: 204, column: 13, scope: !1417)
!1575 = !DILocation(line: 0, scope: !1457)
!1576 = !DILocation(line: 96, column: 7, scope: !1384)
!1577 = !DILocation(line: 208, column: 3, scope: !1384)
!1578 = !DILocation(line: 209, column: 3, scope: !1384)
!1579 = !DILocation(line: 210, column: 1, scope: !1384)
!1580 = !DISubprogram(name: "stat", scope: !964, file: !964, line: 205, type: !1581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!14, !632, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1585 = !DISubprogram(name: "close", scope: !1586, file: !1586, line: 358, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1586 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!1587 = distinct !DISubprogram(name: "mode_compile", scope: !416, file: !416, line: 134, type: !1588, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1598)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!1590, !66}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !416, line: 98, size: 128, elements: !1592)
!1592 = !{!1593, !1594, !1595, !1596, !1597}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1591, file: !416, line: 100, baseType: !60, size: 8)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1591, file: !416, line: 101, baseType: !60, size: 8, offset: 8)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1591, file: !416, line: 102, baseType: !506, size: 32, offset: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1591, file: !416, line: 103, baseType: !506, size: 32, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1591, file: !416, line: 104, baseType: !506, size: 32, offset: 96)
!1598 = !{!1599, !1600, !1603, !1604, !1605, !1606, !1607, !1609, !1611, !1612, !1613, !1617, !1619, !1620, !1621, !1622, !1625, !1626, !1627, !1628}
!1599 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1587, file: !416, line: 134, type: !66)
!1600 = !DILocalVariable(name: "p", scope: !1601, file: !416, line: 138, type: !66)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !416, line: 137, column: 5)
!1602 = distinct !DILexicalBlock(scope: !1587, file: !416, line: 136, column: 7)
!1603 = !DILocalVariable(name: "octal_mode", scope: !1601, file: !416, line: 139, type: !21)
!1604 = !DILocalVariable(name: "mode", scope: !1601, file: !416, line: 140, type: !506)
!1605 = !DILocalVariable(name: "mentioned", scope: !1601, file: !416, line: 141, type: !506)
!1606 = !DILocalVariable(name: "mc", scope: !1587, file: !416, line: 163, type: !1590)
!1607 = !DILocalVariable(name: "needed", scope: !1608, file: !416, line: 167, type: !63)
!1608 = distinct !DILexicalBlock(scope: !1587, file: !416, line: 166, column: 3)
!1609 = !DILocalVariable(name: "p", scope: !1610, file: !416, line: 168, type: !66)
!1610 = distinct !DILexicalBlock(scope: !1608, file: !416, line: 168, column: 5)
!1611 = !DILocalVariable(name: "used", scope: !1587, file: !416, line: 175, type: !63)
!1612 = !DILocalVariable(name: "p", scope: !1587, file: !416, line: 176, type: !66)
!1613 = !DILocalVariable(name: "affected", scope: !1614, file: !416, line: 180, type: !506)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !416, line: 178, column: 5)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !416, line: 177, column: 3)
!1616 = distinct !DILexicalBlock(scope: !1587, file: !416, line: 177, column: 3)
!1617 = !DILocalVariable(name: "op", scope: !1618, file: !416, line: 207, type: !60)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !416, line: 206, column: 9)
!1619 = !DILocalVariable(name: "value", scope: !1618, file: !416, line: 208, type: !506)
!1620 = !DILocalVariable(name: "mentioned", scope: !1618, file: !416, line: 209, type: !506)
!1621 = !DILocalVariable(name: "flag", scope: !1618, file: !416, line: 210, type: !60)
!1622 = !DILocalVariable(name: "octal_mode", scope: !1623, file: !416, line: 217, type: !21)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !416, line: 216, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !416, line: 213, column: 13)
!1625 = !DILocalVariable(name: "change", scope: !1618, file: !416, line: 287, type: !1590)
!1626 = !DILabel(scope: !1614, name: "no_more_affected", file: !416, line: 203)
!1627 = !DILabel(scope: !1624, name: "no_more_values", file: !416, line: 284)
!1628 = !DILabel(scope: !1587, name: "invalid", file: !416, line: 308)
!1629 = !DILocation(line: 0, scope: !1587)
!1630 = !DILocation(line: 136, column: 14, scope: !1602)
!1631 = !DILocation(line: 136, column: 27, scope: !1602)
!1632 = !DILocation(line: 146, column: 41, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1601, file: !416, line: 145, column: 9)
!1634 = !DILocation(line: 0, scope: !1601)
!1635 = !DILocation(line: 146, column: 26, scope: !1633)
!1636 = !DILocation(line: 146, column: 43, scope: !1633)
!1637 = !DILocation(line: 146, column: 39, scope: !1633)
!1638 = !DILocation(line: 146, column: 46, scope: !1633)
!1639 = !DILocation(line: 147, column: 20, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !416, line: 147, column: 15)
!1641 = !DILocation(line: 147, column: 15, scope: !1633)
!1642 = !DILocation(line: 150, column: 21, scope: !1601)
!1643 = !DILocation(line: 150, column: 24, scope: !1601)
!1644 = distinct !{!1644, !1645, !1646, !603}
!1645 = !DILocation(line: 144, column: 7, scope: !1601)
!1646 = !DILocation(line: 150, column: 35, scope: !1601)
!1647 = !DILocation(line: 152, column: 11, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1601, file: !416, line: 152, column: 11)
!1649 = !DILocation(line: 152, column: 11, scope: !1601)
!1650 = !DILocation(line: 156, column: 22, scope: !1601)
!1651 = !DILocation(line: 156, column: 36, scope: !1601)
!1652 = !DILocation(line: 156, column: 20, scope: !1601)
!1653 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1654, file: !416, line: 112, type: !506)
!1654 = distinct !DISubprogram(name: "make_node_op_equals", scope: !416, file: !416, line: 112, type: !1655, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1657)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!1590, !506, !506}
!1657 = !{!1653, !1658, !1659}
!1658 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1654, file: !416, line: 112, type: !506)
!1659 = !DILocalVariable(name: "p", scope: !1654, file: !416, line: 114, type: !1590)
!1660 = !DILocation(line: 0, scope: !1654, inlinedAt: !1661)
!1661 = distinct !DILocation(line: 159, column: 14, scope: !1601)
!1662 = !DILocation(line: 114, column: 27, scope: !1654, inlinedAt: !1661)
!1663 = !DILocation(line: 115, column: 9, scope: !1654, inlinedAt: !1661)
!1664 = !{!1665, !546, i64 0}
!1665 = !{!"mode_change", !546, i64 0, !546, i64 1, !637, i64 4, !637, i64 8, !637, i64 12}
!1666 = !DILocation(line: 116, column: 6, scope: !1654, inlinedAt: !1661)
!1667 = !DILocation(line: 116, column: 11, scope: !1654, inlinedAt: !1661)
!1668 = !{!1665, !546, i64 1}
!1669 = !DILocation(line: 117, column: 6, scope: !1654, inlinedAt: !1661)
!1670 = !DILocation(line: 117, column: 15, scope: !1654, inlinedAt: !1661)
!1671 = !{!1665, !637, i64 4}
!1672 = !DILocation(line: 118, column: 6, scope: !1654, inlinedAt: !1661)
!1673 = !DILocation(line: 118, column: 12, scope: !1654, inlinedAt: !1661)
!1674 = !{!1665, !637, i64 8}
!1675 = !DILocation(line: 119, column: 6, scope: !1654, inlinedAt: !1661)
!1676 = !DILocation(line: 119, column: 16, scope: !1654, inlinedAt: !1661)
!1677 = !{!1665, !637, i64 12}
!1678 = !DILocation(line: 120, column: 8, scope: !1654, inlinedAt: !1661)
!1679 = !DILocation(line: 120, column: 13, scope: !1654, inlinedAt: !1661)
!1680 = !DILocation(line: 159, column: 7, scope: !1601)
!1681 = !DILocation(line: 168, column: 39, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1610, file: !416, line: 168, column: 5)
!1683 = !DILocation(line: 0, scope: !1608)
!1684 = !DILocation(line: 0, scope: !1610)
!1685 = !DILocation(line: 168, column: 5, scope: !1610)
!1686 = !DILocation(line: 170, column: 10, scope: !1608)
!1687 = !DILocation(line: 177, column: 8, scope: !1616)
!1688 = !DILocation(line: 169, column: 41, scope: !1682)
!1689 = !DILocation(line: 169, column: 14, scope: !1682)
!1690 = !DILocation(line: 168, column: 44, scope: !1682)
!1691 = !DILocation(line: 168, column: 5, scope: !1682)
!1692 = distinct !{!1692, !1685, !1693, !603}
!1693 = !DILocation(line: 169, column: 53, scope: !1610)
!1694 = !DILocation(line: 175, column: 10, scope: !1587)
!1695 = !DILocation(line: 0, scope: !1616)
!1696 = !DILocation(line: 0, scope: !1618)
!1697 = !DILocation(line: 0, scope: !1614)
!1698 = !DILocation(line: 183, column: 7, scope: !1614)
!1699 = !DILocation(line: 184, column: 17, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !416, line: 183, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1614, file: !416, line: 183, column: 7)
!1702 = !DILocation(line: 184, column: 9, scope: !1700)
!1703 = !DILocation(line: 212, column: 11, scope: !1618)
!1704 = !DILocation(line: 193, column: 13, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1700, file: !416, line: 185, column: 11)
!1706 = !DILocation(line: 196, column: 13, scope: !1705)
!1707 = !DILocation(line: 199, column: 13, scope: !1705)
!1708 = !DILocation(line: 0, scope: !1705)
!1709 = !DILocation(line: 183, column: 16, scope: !1700)
!1710 = !DILocation(line: 183, column: 7, scope: !1700)
!1711 = distinct !{!1711, !1712, !1713}
!1712 = !DILocation(line: 183, column: 7, scope: !1701)
!1713 = !DILocation(line: 202, column: 11, scope: !1701)
!1714 = !DILocation(line: 207, column: 21, scope: !1618)
!1715 = !DILocation(line: 180, column: 14, scope: !1614)
!1716 = !DILocation(line: 207, column: 23, scope: !1618)
!1717 = !DILocation(line: 212, column: 19, scope: !1618)
!1718 = !DILocation(line: 219, column: 17, scope: !1623)
!1719 = !DILocation(line: 221, column: 51, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1623, file: !416, line: 220, column: 19)
!1721 = !DILocation(line: 0, scope: !1623)
!1722 = !DILocation(line: 221, column: 36, scope: !1720)
!1723 = !DILocation(line: 221, column: 53, scope: !1720)
!1724 = !DILocation(line: 221, column: 49, scope: !1720)
!1725 = !DILocation(line: 221, column: 56, scope: !1720)
!1726 = !DILocation(line: 222, column: 30, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1720, file: !416, line: 222, column: 25)
!1728 = !DILocation(line: 222, column: 25, scope: !1720)
!1729 = !DILocation(line: 225, column: 31, scope: !1623)
!1730 = !DILocation(line: 225, column: 34, scope: !1623)
!1731 = distinct !{!1731, !1718, !1732, !603}
!1732 = !DILocation(line: 225, column: 45, scope: !1623)
!1733 = !DILocation(line: 227, column: 21, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1623, file: !416, line: 227, column: 21)
!1735 = !DILocation(line: 227, column: 30, scope: !1734)
!1736 = !DILocation(line: 227, column: 37, scope: !1734)
!1737 = !DILocation(line: 239, column: 16, scope: !1624)
!1738 = !DILocation(line: 240, column: 15, scope: !1624)
!1739 = !DILocation(line: 245, column: 16, scope: !1624)
!1740 = !DILocation(line: 246, column: 15, scope: !1624)
!1741 = !DILocation(line: 251, column: 16, scope: !1624)
!1742 = !DILocation(line: 252, column: 15, scope: !1624)
!1743 = !DILocation(line: 259, column: 25, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !416, line: 258, column: 15)
!1745 = distinct !DILexicalBlock(scope: !1624, file: !416, line: 258, column: 15)
!1746 = !DILocation(line: 0, scope: !1624)
!1747 = !DILocation(line: 256, column: 20, scope: !1624)
!1748 = !DILocation(line: 259, column: 17, scope: !1744)
!1749 = !DILocation(line: 262, column: 27, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1744, file: !416, line: 260, column: 19)
!1751 = !DILocation(line: 263, column: 21, scope: !1750)
!1752 = !DILocation(line: 265, column: 27, scope: !1750)
!1753 = !DILocation(line: 266, column: 21, scope: !1750)
!1754 = !DILocation(line: 268, column: 27, scope: !1750)
!1755 = !DILocation(line: 269, column: 21, scope: !1750)
!1756 = !DILocation(line: 275, column: 27, scope: !1750)
!1757 = !DILocation(line: 276, column: 21, scope: !1750)
!1758 = !DILocation(line: 279, column: 27, scope: !1750)
!1759 = !DILocation(line: 280, column: 21, scope: !1750)
!1760 = !DILocation(line: 258, column: 24, scope: !1744)
!1761 = !DILocation(line: 258, column: 15, scope: !1744)
!1762 = distinct !{!1762, !1763, !1764}
!1763 = !DILocation(line: 258, column: 15, scope: !1745)
!1764 = !DILocation(line: 283, column: 19, scope: !1745)
!1765 = !DILocation(line: 209, column: 18, scope: !1618)
!1766 = !DILocation(line: 288, column: 28, scope: !1618)
!1767 = !DILocation(line: 289, column: 19, scope: !1618)
!1768 = !DILocation(line: 289, column: 22, scope: !1618)
!1769 = !DILocation(line: 290, column: 19, scope: !1618)
!1770 = !DILocation(line: 290, column: 24, scope: !1618)
!1771 = !DILocation(line: 291, column: 19, scope: !1618)
!1772 = !DILocation(line: 291, column: 28, scope: !1618)
!1773 = !DILocation(line: 292, column: 19, scope: !1618)
!1774 = !DILocation(line: 292, column: 25, scope: !1618)
!1775 = !DILocation(line: 294, column: 14, scope: !1618)
!1776 = !DILocation(line: 293, column: 19, scope: !1618)
!1777 = !DILocation(line: 293, column: 29, scope: !1618)
!1778 = !DILocation(line: 296, column: 14, scope: !1614)
!1779 = !DILocation(line: 296, column: 24, scope: !1614)
!1780 = !DILocation(line: 177, column: 28, scope: !1615)
!1781 = !DILocation(line: 177, column: 3, scope: !1615)
!1782 = distinct !{!1782, !1783, !1784}
!1783 = !DILocation(line: 177, column: 3, scope: !1616)
!1784 = !DILocation(line: 300, column: 5, scope: !1616)
!1785 = !DILocation(line: 304, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !416, line: 303, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1587, file: !416, line: 302, column: 7)
!1788 = !DILocation(line: 304, column: 21, scope: !1786)
!1789 = !DILocation(line: 305, column: 7, scope: !1786)
!1790 = !DILocation(line: 308, column: 1, scope: !1587)
!1791 = !DILocation(line: 309, column: 3, scope: !1587)
!1792 = !DILocation(line: 310, column: 3, scope: !1587)
!1793 = !DILocation(line: 311, column: 1, scope: !1587)
!1794 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !416, file: !416, line: 317, type: !1588, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1795)
!1795 = !{!1796, !1797}
!1796 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1794, file: !416, line: 317, type: !66)
!1797 = !DILocalVariable(name: "ref_stats", scope: !1794, file: !416, line: 319, type: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1420, line: 44, size: 1024, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1817, !1818, !1819}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1798, file: !1420, line: 46, baseType: !1423, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1798, file: !1420, line: 47, baseType: !1425, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1798, file: !1420, line: 48, baseType: !507, size: 32, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1798, file: !1420, line: 49, baseType: !1428, size: 32, offset: 160)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1798, file: !1420, line: 50, baseType: !70, size: 32, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1798, file: !1420, line: 51, baseType: !72, size: 32, offset: 224)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1798, file: !1420, line: 52, baseType: !1423, size: 64, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1798, file: !1420, line: 53, baseType: !1423, size: 64, offset: 320)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1798, file: !1420, line: 54, baseType: !126, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1798, file: !1420, line: 55, baseType: !1435, size: 32, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1798, file: !1420, line: 56, baseType: !14, size: 32, offset: 480)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1798, file: !1420, line: 57, baseType: !1438, size: 64, offset: 512)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1798, file: !1420, line: 65, baseType: !1813, size: 128, offset: 576)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1441, line: 11, size: 128, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1813, file: !1441, line: 16, baseType: !1444, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1813, file: !1441, line: 21, baseType: !1446, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1798, file: !1420, line: 66, baseType: !1813, size: 128, offset: 704)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1798, file: !1420, line: 67, baseType: !1813, size: 128, offset: 832)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1798, file: !1420, line: 79, baseType: !1450, size: 64, offset: 960)
!1820 = !DILocation(line: 0, scope: !1794)
!1821 = !DILocation(line: 319, column: 3, scope: !1794)
!1822 = !DILocation(line: 319, column: 15, scope: !1794)
!1823 = !DILocation(line: 321, column: 7, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1794, file: !416, line: 321, column: 7)
!1825 = !DILocation(line: 321, column: 35, scope: !1824)
!1826 = !DILocation(line: 321, column: 7, scope: !1794)
!1827 = !DILocation(line: 323, column: 41, scope: !1794)
!1828 = !DILocation(line: 0, scope: !1654, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 323, column: 10, scope: !1794)
!1830 = !DILocation(line: 114, column: 27, scope: !1654, inlinedAt: !1829)
!1831 = !DILocation(line: 115, column: 9, scope: !1654, inlinedAt: !1829)
!1832 = !DILocation(line: 116, column: 6, scope: !1654, inlinedAt: !1829)
!1833 = !DILocation(line: 116, column: 11, scope: !1654, inlinedAt: !1829)
!1834 = !DILocation(line: 117, column: 6, scope: !1654, inlinedAt: !1829)
!1835 = !DILocation(line: 117, column: 15, scope: !1654, inlinedAt: !1829)
!1836 = !DILocation(line: 118, column: 6, scope: !1654, inlinedAt: !1829)
!1837 = !DILocation(line: 118, column: 12, scope: !1654, inlinedAt: !1829)
!1838 = !DILocation(line: 119, column: 6, scope: !1654, inlinedAt: !1829)
!1839 = !DILocation(line: 119, column: 16, scope: !1654, inlinedAt: !1829)
!1840 = !DILocation(line: 120, column: 8, scope: !1654, inlinedAt: !1829)
!1841 = !DILocation(line: 120, column: 13, scope: !1654, inlinedAt: !1829)
!1842 = !DILocation(line: 323, column: 3, scope: !1794)
!1843 = !DILocation(line: 324, column: 1, scope: !1794)
!1844 = distinct !DISubprogram(name: "mode_adjust", scope: !416, file: !416, line: 340, type: !1845, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !415, retainedNodes: !1850)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!506, !506, !87, !506, !1847, !1849}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1862, !1863, !1864}
!1851 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1844, file: !416, line: 340, type: !506)
!1852 = !DILocalVariable(name: "dir", arg: 2, scope: !1844, file: !416, line: 340, type: !87)
!1853 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1844, file: !416, line: 340, type: !506)
!1854 = !DILocalVariable(name: "changes", arg: 4, scope: !1844, file: !416, line: 341, type: !1847)
!1855 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1844, file: !416, line: 341, type: !1849)
!1856 = !DILocalVariable(name: "newmode", scope: !1844, file: !416, line: 344, type: !506)
!1857 = !DILocalVariable(name: "mode_bits", scope: !1844, file: !416, line: 347, type: !506)
!1858 = !DILocalVariable(name: "affected", scope: !1859, file: !416, line: 351, type: !506)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !416, line: 350, column: 5)
!1860 = distinct !DILexicalBlock(scope: !1861, file: !416, line: 349, column: 3)
!1861 = distinct !DILexicalBlock(scope: !1844, file: !416, line: 349, column: 3)
!1862 = !DILocalVariable(name: "omit_change", scope: !1859, file: !416, line: 352, type: !506)
!1863 = !DILocalVariable(name: "value", scope: !1859, file: !416, line: 354, type: !506)
!1864 = !DILocalVariable(name: "preserved", scope: !1865, file: !416, line: 394, type: !506)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !416, line: 393, column: 11)
!1866 = distinct !DILexicalBlock(scope: !1859, file: !416, line: 388, column: 9)
!1867 = !DILocation(line: 0, scope: !1844)
!1868 = !DILocation(line: 344, column: 28, scope: !1844)
!1869 = !DILocation(line: 349, column: 19, scope: !1860)
!1870 = !DILocation(line: 349, column: 24, scope: !1860)
!1871 = !DILocation(line: 349, column: 3, scope: !1861)
!1872 = !DILocation(line: 351, column: 34, scope: !1859)
!1873 = !DILocation(line: 0, scope: !1859)
!1874 = !DILocation(line: 353, column: 52, scope: !1859)
!1875 = !DILocation(line: 353, column: 41, scope: !1859)
!1876 = !DILocation(line: 353, column: 39, scope: !1859)
!1877 = !DILocation(line: 354, column: 31, scope: !1859)
!1878 = !DILocation(line: 356, column: 7, scope: !1859)
!1879 = !DILocation(line: 363, column: 17, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1859, file: !416, line: 357, column: 9)
!1881 = !DILocation(line: 366, column: 28, scope: !1880)
!1882 = !DILocation(line: 366, column: 22, scope: !1880)
!1883 = !DILocation(line: 368, column: 30, scope: !1880)
!1884 = !DILocation(line: 368, column: 24, scope: !1880)
!1885 = !DILocation(line: 370, column: 30, scope: !1880)
!1886 = !DILocation(line: 370, column: 24, scope: !1880)
!1887 = !DILocation(line: 368, column: 21, scope: !1880)
!1888 = !DILocation(line: 370, column: 21, scope: !1880)
!1889 = !DILocation(line: 366, column: 17, scope: !1880)
!1890 = !DILocation(line: 372, column: 11, scope: !1880)
!1891 = !DILocation(line: 377, column: 24, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1880, file: !416, line: 377, column: 15)
!1893 = !DILocation(line: 377, column: 57, scope: !1892)
!1894 = !DILocation(line: 377, column: 15, scope: !1880)
!1895 = !DILocation(line: 385, column: 17, scope: !1859)
!1896 = !DILocation(line: 385, column: 55, scope: !1859)
!1897 = !DILocation(line: 385, column: 53, scope: !1859)
!1898 = !DILocation(line: 385, column: 13, scope: !1859)
!1899 = !DILocation(line: 387, column: 24, scope: !1859)
!1900 = !DILocation(line: 387, column: 7, scope: !1859)
!1901 = !DILocation(line: 394, column: 33, scope: !1865)
!1902 = !DILocation(line: 394, column: 59, scope: !1865)
!1903 = !DILocation(line: 0, scope: !1865)
!1904 = !DILocation(line: 395, column: 42, scope: !1865)
!1905 = !DILocation(line: 395, column: 23, scope: !1865)
!1906 = !DILocation(line: 396, column: 32, scope: !1865)
!1907 = !DILocation(line: 396, column: 45, scope: !1865)
!1908 = !DILocation(line: 401, column: 21, scope: !1866)
!1909 = !DILocation(line: 402, column: 19, scope: !1866)
!1910 = !DILocation(line: 403, column: 11, scope: !1866)
!1911 = !DILocation(line: 406, column: 21, scope: !1866)
!1912 = !DILocation(line: 407, column: 22, scope: !1866)
!1913 = !DILocation(line: 407, column: 19, scope: !1866)
!1914 = !DILocation(line: 408, column: 11, scope: !1866)
!1915 = !DILocation(line: 349, column: 45, scope: !1860)
!1916 = distinct !{!1916, !1871, !1917, !603}
!1917 = !DILocation(line: 410, column: 5, scope: !1861)
!1918 = !DILocation(line: 347, column: 10, scope: !1844)
!1919 = !DILocation(line: 344, column: 10, scope: !1844)
!1920 = !DILocation(line: 412, column: 7, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1844, file: !416, line: 412, column: 7)
!1922 = !DILocation(line: 412, column: 7, scope: !1844)
!1923 = !DILocation(line: 413, column: 17, scope: !1921)
!1924 = !DILocation(line: 413, column: 5, scope: !1921)
!1925 = !DILocation(line: 414, column: 3, scope: !1844)
!1926 = distinct !DISubprogram(name: "set_program_name", scope: !228, file: !228, line: 37, type: !564, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1927)
!1927 = !{!1928, !1929, !1930}
!1928 = !DILocalVariable(name: "argv0", arg: 1, scope: !1926, file: !228, line: 37, type: !66)
!1929 = !DILocalVariable(name: "slash", scope: !1926, file: !228, line: 44, type: !66)
!1930 = !DILocalVariable(name: "base", scope: !1926, file: !228, line: 45, type: !66)
!1931 = !DILocation(line: 0, scope: !1926)
!1932 = !DILocation(line: 44, column: 23, scope: !1926)
!1933 = !DILocation(line: 45, column: 22, scope: !1926)
!1934 = !DILocation(line: 46, column: 17, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1926, file: !228, line: 46, column: 7)
!1936 = !DILocation(line: 46, column: 9, scope: !1935)
!1937 = !DILocation(line: 46, column: 25, scope: !1935)
!1938 = !DILocation(line: 46, column: 40, scope: !1935)
!1939 = !DILocalVariable(name: "__s1", arg: 1, scope: !1940, file: !587, line: 974, type: !754)
!1940 = distinct !DISubprogram(name: "memeq", scope: !587, file: !587, line: 974, type: !1941, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !1943)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!87, !754, !754, !63}
!1943 = !{!1939, !1944, !1945}
!1944 = !DILocalVariable(name: "__s2", arg: 2, scope: !1940, file: !587, line: 974, type: !754)
!1945 = !DILocalVariable(name: "__n", arg: 3, scope: !1940, file: !587, line: 974, type: !63)
!1946 = !DILocation(line: 0, scope: !1940, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 46, column: 28, scope: !1935)
!1948 = !DILocation(line: 976, column: 11, scope: !1940, inlinedAt: !1947)
!1949 = !DILocation(line: 976, column: 10, scope: !1940, inlinedAt: !1947)
!1950 = !DILocation(line: 46, column: 7, scope: !1926)
!1951 = !DILocation(line: 49, column: 11, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1953, file: !228, line: 49, column: 11)
!1953 = distinct !DILexicalBlock(scope: !1935, file: !228, line: 47, column: 5)
!1954 = !DILocation(line: 49, column: 36, scope: !1952)
!1955 = !DILocation(line: 49, column: 11, scope: !1953)
!1956 = !DILocation(line: 65, column: 16, scope: !1926)
!1957 = !DILocation(line: 71, column: 27, scope: !1926)
!1958 = !DILocation(line: 74, column: 33, scope: !1926)
!1959 = !DILocation(line: 76, column: 1, scope: !1926)
!1960 = !DILocation(line: 0, scope: !233)
!1961 = !DILocation(line: 40, column: 29, scope: !233)
!1962 = !DILocation(line: 41, column: 19, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !233, file: !234, line: 41, column: 7)
!1964 = !DILocation(line: 41, column: 7, scope: !233)
!1965 = !DILocation(line: 47, column: 3, scope: !233)
!1966 = !DILocation(line: 48, column: 3, scope: !233)
!1967 = !DILocation(line: 48, column: 13, scope: !233)
!1968 = !DILocalVariable(name: "ps", arg: 1, scope: !1969, file: !1970, line: 1135, type: !1973)
!1969 = distinct !DISubprogram(name: "mbszero", scope: !1970, file: !1970, line: 1135, type: !1971, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !1974)
!1970 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1971 = !DISubroutineType(types: !1972)
!1972 = !{null, !1973}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1974 = !{!1968}
!1975 = !DILocation(line: 0, scope: !1969, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 48, column: 18, scope: !233)
!1977 = !DILocalVariable(name: "__dest", arg: 1, scope: !1978, file: !1979, line: 57, type: !61)
!1978 = distinct !DISubprogram(name: "memset", scope: !1979, file: !1979, line: 57, type: !1980, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !237, retainedNodes: !1982)
!1979 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!61, !61, !14, !63}
!1982 = !{!1977, !1983, !1984}
!1983 = !DILocalVariable(name: "__ch", arg: 2, scope: !1978, file: !1979, line: 57, type: !14)
!1984 = !DILocalVariable(name: "__len", arg: 3, scope: !1978, file: !1979, line: 57, type: !63)
!1985 = !DILocation(line: 0, scope: !1978, inlinedAt: !1986)
!1986 = distinct !DILocation(line: 1137, column: 3, scope: !1969, inlinedAt: !1976)
!1987 = !DILocation(line: 59, column: 10, scope: !1978, inlinedAt: !1986)
!1988 = !DILocation(line: 49, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !233, file: !234, line: 49, column: 7)
!1990 = !DILocation(line: 49, column: 39, scope: !1989)
!1991 = !DILocation(line: 49, column: 44, scope: !1989)
!1992 = !DILocation(line: 54, column: 1, scope: !233)
!1993 = !DISubprogram(name: "mbrtoc32", scope: !245, file: !245, line: 57, type: !1994, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!63, !1996, !632, !63, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1997)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1973)
!1999 = distinct !DISubprogram(name: "clone_quoting_options", scope: !270, file: !270, line: 113, type: !2000, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2003)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{!2002, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!2003 = !{!2004, !2005, !2006}
!2004 = !DILocalVariable(name: "o", arg: 1, scope: !1999, file: !270, line: 113, type: !2002)
!2005 = !DILocalVariable(name: "saved_errno", scope: !1999, file: !270, line: 115, type: !14)
!2006 = !DILocalVariable(name: "p", scope: !1999, file: !270, line: 116, type: !2002)
!2007 = !DILocation(line: 0, scope: !1999)
!2008 = !DILocation(line: 115, column: 21, scope: !1999)
!2009 = !DILocation(line: 116, column: 40, scope: !1999)
!2010 = !DILocation(line: 116, column: 31, scope: !1999)
!2011 = !DILocation(line: 118, column: 9, scope: !1999)
!2012 = !DILocation(line: 119, column: 3, scope: !1999)
!2013 = distinct !DISubprogram(name: "get_quoting_style", scope: !270, file: !270, line: 124, type: !2014, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2018)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!44, !2016}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "o", arg: 1, scope: !2013, file: !270, line: 124, type: !2016)
!2020 = !DILocation(line: 0, scope: !2013)
!2021 = !DILocation(line: 126, column: 11, scope: !2013)
!2022 = !DILocation(line: 126, column: 46, scope: !2013)
!2023 = !{!2024, !546, i64 0}
!2024 = !{!"quoting_options", !546, i64 0, !637, i64 4, !546, i64 8, !545, i64 40, !545, i64 48}
!2025 = !DILocation(line: 126, column: 3, scope: !2013)
!2026 = distinct !DISubprogram(name: "set_quoting_style", scope: !270, file: !270, line: 132, type: !2027, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !2002, !44}
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "o", arg: 1, scope: !2026, file: !270, line: 132, type: !2002)
!2031 = !DILocalVariable(name: "s", arg: 2, scope: !2026, file: !270, line: 132, type: !44)
!2032 = !DILocation(line: 0, scope: !2026)
!2033 = !DILocation(line: 134, column: 4, scope: !2026)
!2034 = !DILocation(line: 134, column: 39, scope: !2026)
!2035 = !DILocation(line: 134, column: 45, scope: !2026)
!2036 = !DILocation(line: 135, column: 1, scope: !2026)
!2037 = distinct !DISubprogram(name: "set_char_quoting", scope: !270, file: !270, line: 143, type: !2038, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2040)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!14, !2002, !60, !14}
!2040 = !{!2041, !2042, !2043, !2044, !2045, !2047, !2048}
!2041 = !DILocalVariable(name: "o", arg: 1, scope: !2037, file: !270, line: 143, type: !2002)
!2042 = !DILocalVariable(name: "c", arg: 2, scope: !2037, file: !270, line: 143, type: !60)
!2043 = !DILocalVariable(name: "i", arg: 3, scope: !2037, file: !270, line: 143, type: !14)
!2044 = !DILocalVariable(name: "uc", scope: !2037, file: !270, line: 145, type: !68)
!2045 = !DILocalVariable(name: "p", scope: !2037, file: !270, line: 146, type: !2046)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!2047 = !DILocalVariable(name: "shift", scope: !2037, file: !270, line: 148, type: !14)
!2048 = !DILocalVariable(name: "r", scope: !2037, file: !270, line: 149, type: !21)
!2049 = !DILocation(line: 0, scope: !2037)
!2050 = !DILocation(line: 147, column: 6, scope: !2037)
!2051 = !DILocation(line: 147, column: 62, scope: !2037)
!2052 = !DILocation(line: 147, column: 57, scope: !2037)
!2053 = !DILocation(line: 148, column: 15, scope: !2037)
!2054 = !DILocation(line: 149, column: 21, scope: !2037)
!2055 = !DILocation(line: 149, column: 24, scope: !2037)
!2056 = !DILocation(line: 149, column: 34, scope: !2037)
!2057 = !DILocation(line: 150, column: 13, scope: !2037)
!2058 = !DILocation(line: 150, column: 19, scope: !2037)
!2059 = !DILocation(line: 150, column: 24, scope: !2037)
!2060 = !DILocation(line: 150, column: 6, scope: !2037)
!2061 = !DILocation(line: 151, column: 3, scope: !2037)
!2062 = distinct !DISubprogram(name: "set_quoting_flags", scope: !270, file: !270, line: 159, type: !2063, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2065)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!14, !2002, !14}
!2065 = !{!2066, !2067, !2068}
!2066 = !DILocalVariable(name: "o", arg: 1, scope: !2062, file: !270, line: 159, type: !2002)
!2067 = !DILocalVariable(name: "i", arg: 2, scope: !2062, file: !270, line: 159, type: !14)
!2068 = !DILocalVariable(name: "r", scope: !2062, file: !270, line: 163, type: !14)
!2069 = !DILocation(line: 0, scope: !2062)
!2070 = !DILocation(line: 161, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2062, file: !270, line: 161, column: 7)
!2072 = !DILocation(line: 161, column: 7, scope: !2062)
!2073 = !DILocation(line: 163, column: 14, scope: !2062)
!2074 = !{!2024, !637, i64 4}
!2075 = !DILocation(line: 164, column: 12, scope: !2062)
!2076 = !DILocation(line: 165, column: 3, scope: !2062)
!2077 = distinct !DISubprogram(name: "set_custom_quoting", scope: !270, file: !270, line: 169, type: !2078, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !2002, !66, !66}
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "o", arg: 1, scope: !2077, file: !270, line: 169, type: !2002)
!2082 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2077, file: !270, line: 170, type: !66)
!2083 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2077, file: !270, line: 170, type: !66)
!2084 = !DILocation(line: 0, scope: !2077)
!2085 = !DILocation(line: 172, column: 8, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2077, file: !270, line: 172, column: 7)
!2087 = !DILocation(line: 172, column: 7, scope: !2077)
!2088 = !DILocation(line: 174, column: 6, scope: !2077)
!2089 = !DILocation(line: 174, column: 12, scope: !2077)
!2090 = !DILocation(line: 175, column: 8, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2077, file: !270, line: 175, column: 7)
!2092 = !DILocation(line: 175, column: 19, scope: !2091)
!2093 = !DILocation(line: 176, column: 5, scope: !2091)
!2094 = !DILocation(line: 177, column: 6, scope: !2077)
!2095 = !DILocation(line: 177, column: 17, scope: !2077)
!2096 = !{!2024, !545, i64 40}
!2097 = !DILocation(line: 178, column: 6, scope: !2077)
!2098 = !DILocation(line: 178, column: 18, scope: !2077)
!2099 = !{!2024, !545, i64 48}
!2100 = !DILocation(line: 179, column: 1, scope: !2077)
!2101 = distinct !DISubprogram(name: "quotearg_buffer", scope: !270, file: !270, line: 774, type: !2102, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!63, !59, !63, !66, !63, !2016}
!2104 = !{!2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2105 = !DILocalVariable(name: "buffer", arg: 1, scope: !2101, file: !270, line: 774, type: !59)
!2106 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2101, file: !270, line: 774, type: !63)
!2107 = !DILocalVariable(name: "arg", arg: 3, scope: !2101, file: !270, line: 775, type: !66)
!2108 = !DILocalVariable(name: "argsize", arg: 4, scope: !2101, file: !270, line: 775, type: !63)
!2109 = !DILocalVariable(name: "o", arg: 5, scope: !2101, file: !270, line: 776, type: !2016)
!2110 = !DILocalVariable(name: "p", scope: !2101, file: !270, line: 778, type: !2016)
!2111 = !DILocalVariable(name: "saved_errno", scope: !2101, file: !270, line: 779, type: !14)
!2112 = !DILocalVariable(name: "r", scope: !2101, file: !270, line: 780, type: !63)
!2113 = !DILocation(line: 0, scope: !2101)
!2114 = !DILocation(line: 778, column: 37, scope: !2101)
!2115 = !DILocation(line: 779, column: 21, scope: !2101)
!2116 = !DILocation(line: 781, column: 43, scope: !2101)
!2117 = !DILocation(line: 781, column: 53, scope: !2101)
!2118 = !DILocation(line: 781, column: 60, scope: !2101)
!2119 = !DILocation(line: 782, column: 43, scope: !2101)
!2120 = !DILocation(line: 782, column: 58, scope: !2101)
!2121 = !DILocation(line: 780, column: 14, scope: !2101)
!2122 = !DILocation(line: 783, column: 9, scope: !2101)
!2123 = !DILocation(line: 784, column: 3, scope: !2101)
!2124 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !270, file: !270, line: 251, type: !2125, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2129)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!63, !59, !63, !66, !63, !44, !14, !2127, !66, !66}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2154, !2156, !2159, !2160, !2161, !2162, !2165, !2166, !2169, !2173, !2174, !2182, !2185, !2186, !2188, !2189, !2190, !2191}
!2130 = !DILocalVariable(name: "buffer", arg: 1, scope: !2124, file: !270, line: 251, type: !59)
!2131 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2124, file: !270, line: 251, type: !63)
!2132 = !DILocalVariable(name: "arg", arg: 3, scope: !2124, file: !270, line: 252, type: !66)
!2133 = !DILocalVariable(name: "argsize", arg: 4, scope: !2124, file: !270, line: 252, type: !63)
!2134 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2124, file: !270, line: 253, type: !44)
!2135 = !DILocalVariable(name: "flags", arg: 6, scope: !2124, file: !270, line: 253, type: !14)
!2136 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2124, file: !270, line: 254, type: !2127)
!2137 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2124, file: !270, line: 255, type: !66)
!2138 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2124, file: !270, line: 256, type: !66)
!2139 = !DILocalVariable(name: "unibyte_locale", scope: !2124, file: !270, line: 258, type: !87)
!2140 = !DILocalVariable(name: "len", scope: !2124, file: !270, line: 260, type: !63)
!2141 = !DILocalVariable(name: "orig_buffersize", scope: !2124, file: !270, line: 261, type: !63)
!2142 = !DILocalVariable(name: "quote_string", scope: !2124, file: !270, line: 262, type: !66)
!2143 = !DILocalVariable(name: "quote_string_len", scope: !2124, file: !270, line: 263, type: !63)
!2144 = !DILocalVariable(name: "backslash_escapes", scope: !2124, file: !270, line: 264, type: !87)
!2145 = !DILocalVariable(name: "elide_outer_quotes", scope: !2124, file: !270, line: 265, type: !87)
!2146 = !DILocalVariable(name: "encountered_single_quote", scope: !2124, file: !270, line: 266, type: !87)
!2147 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2124, file: !270, line: 267, type: !87)
!2148 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2124, file: !270, line: 309, type: !87)
!2149 = !DILocalVariable(name: "lq", scope: !2150, file: !270, line: 361, type: !66)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !270, line: 361, column: 11)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !270, line: 360, column: 13)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !270, line: 333, column: 7)
!2153 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 312, column: 5)
!2154 = !DILocalVariable(name: "i", scope: !2155, file: !270, line: 395, type: !63)
!2155 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 395, column: 3)
!2156 = !DILocalVariable(name: "is_right_quote", scope: !2157, file: !270, line: 397, type: !87)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !270, line: 396, column: 5)
!2158 = distinct !DILexicalBlock(scope: !2155, file: !270, line: 395, column: 3)
!2159 = !DILocalVariable(name: "escaping", scope: !2157, file: !270, line: 398, type: !87)
!2160 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2157, file: !270, line: 399, type: !87)
!2161 = !DILocalVariable(name: "c", scope: !2157, file: !270, line: 417, type: !68)
!2162 = !DILocalVariable(name: "m", scope: !2163, file: !270, line: 598, type: !63)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 596, column: 11)
!2164 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 419, column: 9)
!2165 = !DILocalVariable(name: "printable", scope: !2163, file: !270, line: 600, type: !87)
!2166 = !DILocalVariable(name: "mbs", scope: !2167, file: !270, line: 609, type: !315)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !270, line: 608, column: 15)
!2168 = distinct !DILexicalBlock(scope: !2163, file: !270, line: 602, column: 17)
!2169 = !DILocalVariable(name: "w", scope: !2170, file: !270, line: 618, type: !244)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !270, line: 617, column: 19)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !270, line: 616, column: 17)
!2172 = distinct !DILexicalBlock(scope: !2167, file: !270, line: 616, column: 17)
!2173 = !DILocalVariable(name: "bytes", scope: !2170, file: !270, line: 619, type: !63)
!2174 = !DILocalVariable(name: "j", scope: !2175, file: !270, line: 648, type: !63)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !270, line: 648, column: 29)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !270, line: 647, column: 27)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !270, line: 645, column: 29)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !270, line: 636, column: 23)
!2179 = distinct !DILexicalBlock(scope: !2180, file: !270, line: 628, column: 30)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !270, line: 623, column: 30)
!2181 = distinct !DILexicalBlock(scope: !2170, file: !270, line: 621, column: 25)
!2182 = !DILocalVariable(name: "ilim", scope: !2183, file: !270, line: 674, type: !63)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !270, line: 671, column: 15)
!2184 = distinct !DILexicalBlock(scope: !2163, file: !270, line: 670, column: 17)
!2185 = !DILabel(scope: !2124, name: "process_input", file: !270, line: 308)
!2186 = !DILabel(scope: !2187, name: "c_and_shell_escape", file: !270, line: 502)
!2187 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 478, column: 9)
!2188 = !DILabel(scope: !2187, name: "c_escape", file: !270, line: 507)
!2189 = !DILabel(scope: !2157, name: "store_escape", file: !270, line: 709)
!2190 = !DILabel(scope: !2157, name: "store_c", file: !270, line: 712)
!2191 = !DILabel(scope: !2124, name: "force_outer_quoting_style", file: !270, line: 753)
!2192 = !DILocation(line: 0, scope: !2124)
!2193 = !DILocation(line: 258, column: 25, scope: !2124)
!2194 = !DILocation(line: 258, column: 36, scope: !2124)
!2195 = !DILocation(line: 267, column: 3, scope: !2124)
!2196 = !DILocation(line: 261, column: 10, scope: !2124)
!2197 = !DILocation(line: 262, column: 15, scope: !2124)
!2198 = !DILocation(line: 263, column: 10, scope: !2124)
!2199 = !DILocation(line: 308, column: 2, scope: !2124)
!2200 = !DILocation(line: 311, column: 3, scope: !2124)
!2201 = !DILocation(line: 318, column: 11, scope: !2153)
!2202 = !DILocation(line: 319, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !270, line: 319, column: 9)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !270, line: 319, column: 9)
!2205 = distinct !DILexicalBlock(scope: !2153, file: !270, line: 318, column: 11)
!2206 = !DILocation(line: 319, column: 9, scope: !2204)
!2207 = !DILocation(line: 0, scope: !306, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 357, column: 26, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !270, line: 335, column: 11)
!2210 = distinct !DILexicalBlock(scope: !2152, file: !270, line: 334, column: 13)
!2211 = !DILocation(line: 199, column: 29, scope: !306, inlinedAt: !2208)
!2212 = !DILocation(line: 201, column: 19, scope: !2213, inlinedAt: !2208)
!2213 = distinct !DILexicalBlock(scope: !306, file: !270, line: 201, column: 7)
!2214 = !DILocation(line: 201, column: 7, scope: !306, inlinedAt: !2208)
!2215 = !DILocation(line: 229, column: 3, scope: !306, inlinedAt: !2208)
!2216 = !DILocation(line: 230, column: 3, scope: !306, inlinedAt: !2208)
!2217 = !DILocation(line: 230, column: 13, scope: !306, inlinedAt: !2208)
!2218 = !DILocalVariable(name: "ps", arg: 1, scope: !2219, file: !1970, line: 1135, type: !2222)
!2219 = distinct !DISubprogram(name: "mbszero", scope: !1970, file: !1970, line: 1135, type: !2220, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2223)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !2222}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!2223 = !{!2218}
!2224 = !DILocation(line: 0, scope: !2219, inlinedAt: !2225)
!2225 = distinct !DILocation(line: 230, column: 18, scope: !306, inlinedAt: !2208)
!2226 = !DILocalVariable(name: "__dest", arg: 1, scope: !2227, file: !1979, line: 57, type: !61)
!2227 = distinct !DISubprogram(name: "memset", scope: !1979, file: !1979, line: 57, type: !1980, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2228)
!2228 = !{!2226, !2229, !2230}
!2229 = !DILocalVariable(name: "__ch", arg: 2, scope: !2227, file: !1979, line: 57, type: !14)
!2230 = !DILocalVariable(name: "__len", arg: 3, scope: !2227, file: !1979, line: 57, type: !63)
!2231 = !DILocation(line: 0, scope: !2227, inlinedAt: !2232)
!2232 = distinct !DILocation(line: 1137, column: 3, scope: !2219, inlinedAt: !2225)
!2233 = !DILocation(line: 59, column: 10, scope: !2227, inlinedAt: !2232)
!2234 = !DILocation(line: 231, column: 7, scope: !2235, inlinedAt: !2208)
!2235 = distinct !DILexicalBlock(scope: !306, file: !270, line: 231, column: 7)
!2236 = !DILocation(line: 231, column: 40, scope: !2235, inlinedAt: !2208)
!2237 = !DILocation(line: 231, column: 45, scope: !2235, inlinedAt: !2208)
!2238 = !DILocation(line: 235, column: 1, scope: !306, inlinedAt: !2208)
!2239 = !DILocation(line: 0, scope: !306, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 358, column: 27, scope: !2209)
!2241 = !DILocation(line: 199, column: 29, scope: !306, inlinedAt: !2240)
!2242 = !DILocation(line: 201, column: 19, scope: !2213, inlinedAt: !2240)
!2243 = !DILocation(line: 201, column: 7, scope: !306, inlinedAt: !2240)
!2244 = !DILocation(line: 229, column: 3, scope: !306, inlinedAt: !2240)
!2245 = !DILocation(line: 230, column: 3, scope: !306, inlinedAt: !2240)
!2246 = !DILocation(line: 230, column: 13, scope: !306, inlinedAt: !2240)
!2247 = !DILocation(line: 0, scope: !2219, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 230, column: 18, scope: !306, inlinedAt: !2240)
!2249 = !DILocation(line: 0, scope: !2227, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1137, column: 3, scope: !2219, inlinedAt: !2248)
!2251 = !DILocation(line: 59, column: 10, scope: !2227, inlinedAt: !2250)
!2252 = !DILocation(line: 231, column: 7, scope: !2235, inlinedAt: !2240)
!2253 = !DILocation(line: 231, column: 40, scope: !2235, inlinedAt: !2240)
!2254 = !DILocation(line: 231, column: 45, scope: !2235, inlinedAt: !2240)
!2255 = !DILocation(line: 235, column: 1, scope: !306, inlinedAt: !2240)
!2256 = !DILocation(line: 360, column: 13, scope: !2152)
!2257 = !DILocation(line: 0, scope: !2150)
!2258 = !DILocation(line: 361, column: 45, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2150, file: !270, line: 361, column: 11)
!2260 = !DILocation(line: 361, column: 11, scope: !2150)
!2261 = !DILocation(line: 362, column: 13, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2263, file: !270, line: 362, column: 13)
!2263 = distinct !DILexicalBlock(scope: !2259, file: !270, line: 362, column: 13)
!2264 = !DILocation(line: 362, column: 13, scope: !2263)
!2265 = !DILocation(line: 361, column: 52, scope: !2259)
!2266 = distinct !{!2266, !2260, !2267, !603}
!2267 = !DILocation(line: 362, column: 13, scope: !2150)
!2268 = !DILocation(line: 260, column: 10, scope: !2124)
!2269 = !DILocation(line: 365, column: 28, scope: !2152)
!2270 = !DILocation(line: 367, column: 7, scope: !2153)
!2271 = !DILocation(line: 370, column: 7, scope: !2153)
!2272 = !DILocation(line: 376, column: 11, scope: !2153)
!2273 = !DILocation(line: 381, column: 11, scope: !2153)
!2274 = !DILocation(line: 382, column: 9, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !270, line: 382, column: 9)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !270, line: 382, column: 9)
!2277 = distinct !DILexicalBlock(scope: !2153, file: !270, line: 381, column: 11)
!2278 = !DILocation(line: 382, column: 9, scope: !2276)
!2279 = !DILocation(line: 389, column: 7, scope: !2153)
!2280 = !DILocation(line: 392, column: 7, scope: !2153)
!2281 = !DILocation(line: 0, scope: !2155)
!2282 = !DILocation(line: 395, column: 8, scope: !2155)
!2283 = !DILocation(line: 395, column: 34, scope: !2158)
!2284 = !DILocation(line: 395, column: 26, scope: !2158)
!2285 = !DILocation(line: 395, column: 48, scope: !2158)
!2286 = !DILocation(line: 395, column: 55, scope: !2158)
!2287 = !DILocation(line: 395, column: 3, scope: !2155)
!2288 = !DILocation(line: 395, column: 67, scope: !2158)
!2289 = !DILocation(line: 0, scope: !2157)
!2290 = !DILocation(line: 402, column: 11, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 401, column: 11)
!2292 = !DILocation(line: 404, column: 17, scope: !2291)
!2293 = !DILocation(line: 405, column: 39, scope: !2291)
!2294 = !DILocation(line: 409, column: 32, scope: !2291)
!2295 = !DILocation(line: 405, column: 19, scope: !2291)
!2296 = !DILocation(line: 405, column: 15, scope: !2291)
!2297 = !DILocation(line: 410, column: 11, scope: !2291)
!2298 = !DILocation(line: 410, column: 25, scope: !2291)
!2299 = !DILocalVariable(name: "__s1", arg: 1, scope: !2300, file: !587, line: 974, type: !754)
!2300 = distinct !DISubprogram(name: "memeq", scope: !587, file: !587, line: 974, type: !1941, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2301)
!2301 = !{!2299, !2302, !2303}
!2302 = !DILocalVariable(name: "__s2", arg: 2, scope: !2300, file: !587, line: 974, type: !754)
!2303 = !DILocalVariable(name: "__n", arg: 3, scope: !2300, file: !587, line: 974, type: !63)
!2304 = !DILocation(line: 0, scope: !2300, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 410, column: 14, scope: !2291)
!2306 = !DILocation(line: 976, column: 11, scope: !2300, inlinedAt: !2305)
!2307 = !DILocation(line: 976, column: 10, scope: !2300, inlinedAt: !2305)
!2308 = !DILocation(line: 401, column: 11, scope: !2157)
!2309 = !DILocation(line: 417, column: 25, scope: !2157)
!2310 = !DILocation(line: 418, column: 7, scope: !2157)
!2311 = !DILocation(line: 421, column: 15, scope: !2164)
!2312 = !DILocation(line: 423, column: 15, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !270, line: 423, column: 15)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !270, line: 422, column: 13)
!2315 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 421, column: 15)
!2316 = !DILocation(line: 423, column: 15, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !270, line: 423, column: 15)
!2318 = !DILocation(line: 423, column: 15, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !270, line: 423, column: 15)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !270, line: 423, column: 15)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !270, line: 423, column: 15)
!2322 = !DILocation(line: 423, column: 15, scope: !2320)
!2323 = !DILocation(line: 423, column: 15, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !270, line: 423, column: 15)
!2325 = distinct !DILexicalBlock(scope: !2321, file: !270, line: 423, column: 15)
!2326 = !DILocation(line: 423, column: 15, scope: !2325)
!2327 = !DILocation(line: 423, column: 15, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !270, line: 423, column: 15)
!2329 = distinct !DILexicalBlock(scope: !2321, file: !270, line: 423, column: 15)
!2330 = !DILocation(line: 423, column: 15, scope: !2329)
!2331 = !DILocation(line: 423, column: 15, scope: !2321)
!2332 = !DILocation(line: 423, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !270, line: 423, column: 15)
!2334 = distinct !DILexicalBlock(scope: !2313, file: !270, line: 423, column: 15)
!2335 = !DILocation(line: 423, column: 15, scope: !2334)
!2336 = !DILocation(line: 431, column: 19, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2314, file: !270, line: 430, column: 19)
!2338 = !DILocation(line: 431, column: 24, scope: !2337)
!2339 = !DILocation(line: 431, column: 28, scope: !2337)
!2340 = !DILocation(line: 431, column: 38, scope: !2337)
!2341 = !DILocation(line: 431, column: 48, scope: !2337)
!2342 = !DILocation(line: 431, column: 59, scope: !2337)
!2343 = !DILocation(line: 433, column: 19, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2345, file: !270, line: 433, column: 19)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !270, line: 433, column: 19)
!2346 = distinct !DILexicalBlock(scope: !2337, file: !270, line: 432, column: 17)
!2347 = !DILocation(line: 433, column: 19, scope: !2345)
!2348 = !DILocation(line: 434, column: 19, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !270, line: 434, column: 19)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !270, line: 434, column: 19)
!2351 = !DILocation(line: 434, column: 19, scope: !2350)
!2352 = !DILocation(line: 435, column: 17, scope: !2346)
!2353 = !DILocation(line: 442, column: 20, scope: !2315)
!2354 = !DILocation(line: 447, column: 11, scope: !2164)
!2355 = !DILocation(line: 450, column: 19, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 448, column: 13)
!2357 = !DILocation(line: 456, column: 19, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2356, file: !270, line: 455, column: 19)
!2359 = !DILocation(line: 456, column: 24, scope: !2358)
!2360 = !DILocation(line: 456, column: 28, scope: !2358)
!2361 = !DILocation(line: 456, column: 38, scope: !2358)
!2362 = !DILocation(line: 456, column: 47, scope: !2358)
!2363 = !DILocation(line: 456, column: 41, scope: !2358)
!2364 = !DILocation(line: 456, column: 52, scope: !2358)
!2365 = !DILocation(line: 455, column: 19, scope: !2356)
!2366 = !DILocation(line: 457, column: 25, scope: !2358)
!2367 = !DILocation(line: 457, column: 17, scope: !2358)
!2368 = !DILocation(line: 464, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2358, file: !270, line: 458, column: 19)
!2370 = !DILocation(line: 468, column: 21, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2372, file: !270, line: 468, column: 21)
!2372 = distinct !DILexicalBlock(scope: !2369, file: !270, line: 468, column: 21)
!2373 = !DILocation(line: 468, column: 21, scope: !2372)
!2374 = !DILocation(line: 469, column: 21, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2376, file: !270, line: 469, column: 21)
!2376 = distinct !DILexicalBlock(scope: !2369, file: !270, line: 469, column: 21)
!2377 = !DILocation(line: 469, column: 21, scope: !2376)
!2378 = !DILocation(line: 470, column: 21, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !270, line: 470, column: 21)
!2380 = distinct !DILexicalBlock(scope: !2369, file: !270, line: 470, column: 21)
!2381 = !DILocation(line: 470, column: 21, scope: !2380)
!2382 = !DILocation(line: 471, column: 21, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !270, line: 471, column: 21)
!2384 = distinct !DILexicalBlock(scope: !2369, file: !270, line: 471, column: 21)
!2385 = !DILocation(line: 471, column: 21, scope: !2384)
!2386 = !DILocation(line: 472, column: 21, scope: !2369)
!2387 = !DILocation(line: 482, column: 33, scope: !2187)
!2388 = !DILocation(line: 483, column: 33, scope: !2187)
!2389 = !DILocation(line: 485, column: 33, scope: !2187)
!2390 = !DILocation(line: 486, column: 33, scope: !2187)
!2391 = !DILocation(line: 487, column: 33, scope: !2187)
!2392 = !DILocation(line: 490, column: 17, scope: !2187)
!2393 = !DILocation(line: 492, column: 21, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2395, file: !270, line: 491, column: 15)
!2395 = distinct !DILexicalBlock(scope: !2187, file: !270, line: 490, column: 17)
!2396 = !DILocation(line: 499, column: 35, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2187, file: !270, line: 499, column: 17)
!2398 = !DILocation(line: 499, column: 57, scope: !2397)
!2399 = !DILocation(line: 0, scope: !2187)
!2400 = !DILocation(line: 502, column: 11, scope: !2187)
!2401 = !DILocation(line: 504, column: 17, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2187, file: !270, line: 503, column: 17)
!2403 = !DILocation(line: 507, column: 11, scope: !2187)
!2404 = !DILocation(line: 508, column: 17, scope: !2187)
!2405 = !DILocation(line: 517, column: 15, scope: !2164)
!2406 = !DILocation(line: 517, column: 40, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 517, column: 15)
!2408 = !DILocation(line: 517, column: 47, scope: !2407)
!2409 = !DILocation(line: 517, column: 18, scope: !2407)
!2410 = !DILocation(line: 521, column: 17, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 521, column: 15)
!2412 = !DILocation(line: 521, column: 15, scope: !2164)
!2413 = !DILocation(line: 525, column: 11, scope: !2164)
!2414 = !DILocation(line: 537, column: 15, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 536, column: 15)
!2416 = !DILocation(line: 536, column: 15, scope: !2164)
!2417 = !DILocation(line: 544, column: 15, scope: !2164)
!2418 = !DILocation(line: 546, column: 19, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !270, line: 545, column: 13)
!2420 = distinct !DILexicalBlock(scope: !2164, file: !270, line: 544, column: 15)
!2421 = !DILocation(line: 549, column: 19, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2419, file: !270, line: 549, column: 19)
!2423 = !DILocation(line: 549, column: 30, scope: !2422)
!2424 = !DILocation(line: 558, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !270, line: 558, column: 15)
!2426 = distinct !DILexicalBlock(scope: !2419, file: !270, line: 558, column: 15)
!2427 = !DILocation(line: 558, column: 15, scope: !2426)
!2428 = !DILocation(line: 559, column: 15, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2430, file: !270, line: 559, column: 15)
!2430 = distinct !DILexicalBlock(scope: !2419, file: !270, line: 559, column: 15)
!2431 = !DILocation(line: 559, column: 15, scope: !2430)
!2432 = !DILocation(line: 560, column: 15, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !270, line: 560, column: 15)
!2434 = distinct !DILexicalBlock(scope: !2419, file: !270, line: 560, column: 15)
!2435 = !DILocation(line: 560, column: 15, scope: !2434)
!2436 = !DILocation(line: 562, column: 13, scope: !2419)
!2437 = !DILocation(line: 602, column: 17, scope: !2163)
!2438 = !DILocation(line: 0, scope: !2163)
!2439 = !DILocation(line: 605, column: 29, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2168, file: !270, line: 603, column: 15)
!2441 = !DILocation(line: 605, column: 41, scope: !2440)
!2442 = !DILocation(line: 670, column: 23, scope: !2184)
!2443 = !DILocation(line: 609, column: 17, scope: !2167)
!2444 = !DILocation(line: 609, column: 27, scope: !2167)
!2445 = !DILocation(line: 0, scope: !2219, inlinedAt: !2446)
!2446 = distinct !DILocation(line: 609, column: 32, scope: !2167)
!2447 = !DILocation(line: 0, scope: !2227, inlinedAt: !2448)
!2448 = distinct !DILocation(line: 1137, column: 3, scope: !2219, inlinedAt: !2446)
!2449 = !DILocation(line: 59, column: 10, scope: !2227, inlinedAt: !2448)
!2450 = !DILocation(line: 613, column: 29, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2167, file: !270, line: 613, column: 21)
!2452 = !DILocation(line: 613, column: 21, scope: !2167)
!2453 = !DILocation(line: 614, column: 29, scope: !2451)
!2454 = !DILocation(line: 614, column: 19, scope: !2451)
!2455 = !DILocation(line: 618, column: 21, scope: !2170)
!2456 = !DILocation(line: 620, column: 54, scope: !2170)
!2457 = !DILocation(line: 0, scope: !2170)
!2458 = !DILocation(line: 619, column: 36, scope: !2170)
!2459 = !DILocation(line: 621, column: 25, scope: !2170)
!2460 = !DILocation(line: 631, column: 38, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2179, file: !270, line: 629, column: 23)
!2462 = !DILocation(line: 631, column: 48, scope: !2461)
!2463 = !DILocation(line: 665, column: 19, scope: !2171)
!2464 = !DILocation(line: 666, column: 15, scope: !2168)
!2465 = !DILocation(line: 626, column: 25, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2180, file: !270, line: 624, column: 23)
!2467 = !DILocation(line: 631, column: 51, scope: !2461)
!2468 = !DILocation(line: 631, column: 25, scope: !2461)
!2469 = !DILocation(line: 632, column: 28, scope: !2461)
!2470 = !DILocation(line: 631, column: 34, scope: !2461)
!2471 = distinct !{!2471, !2468, !2469, !603}
!2472 = !DILocation(line: 646, column: 29, scope: !2177)
!2473 = !DILocation(line: 0, scope: !2175)
!2474 = !DILocation(line: 649, column: 49, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2175, file: !270, line: 648, column: 29)
!2476 = !DILocation(line: 649, column: 39, scope: !2475)
!2477 = !DILocation(line: 649, column: 31, scope: !2475)
!2478 = !DILocation(line: 648, column: 60, scope: !2475)
!2479 = !DILocation(line: 648, column: 50, scope: !2475)
!2480 = !DILocation(line: 648, column: 29, scope: !2175)
!2481 = distinct !{!2481, !2480, !2482, !603}
!2482 = !DILocation(line: 654, column: 33, scope: !2175)
!2483 = !DILocation(line: 657, column: 43, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2178, file: !270, line: 657, column: 29)
!2485 = !DILocalVariable(name: "wc", arg: 1, scope: !2486, file: !2487, line: 865, type: !2490)
!2486 = distinct !DISubprogram(name: "c32isprint", scope: !2487, file: !2487, line: 865, type: !2488, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2492)
!2487 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!14, !2490}
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2491, line: 20, baseType: !21)
!2491 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2492 = !{!2485}
!2493 = !DILocation(line: 0, scope: !2486, inlinedAt: !2494)
!2494 = distinct !DILocation(line: 657, column: 31, scope: !2484)
!2495 = !DILocation(line: 871, column: 10, scope: !2486, inlinedAt: !2494)
!2496 = !DILocation(line: 657, column: 31, scope: !2484)
!2497 = !DILocation(line: 664, column: 23, scope: !2170)
!2498 = !DILocation(line: 753, column: 2, scope: !2124)
!2499 = !DILocation(line: 756, column: 51, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 756, column: 7)
!2501 = !DILocation(line: 670, column: 19, scope: !2184)
!2502 = !DILocation(line: 670, column: 45, scope: !2184)
!2503 = !DILocation(line: 674, column: 33, scope: !2183)
!2504 = !DILocation(line: 0, scope: !2183)
!2505 = !DILocation(line: 676, column: 17, scope: !2183)
!2506 = !DILocation(line: 398, column: 12, scope: !2157)
!2507 = !DILocation(line: 678, column: 43, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !270, line: 678, column: 25)
!2509 = distinct !DILexicalBlock(scope: !2510, file: !270, line: 677, column: 19)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !270, line: 676, column: 17)
!2511 = distinct !DILexicalBlock(scope: !2183, file: !270, line: 676, column: 17)
!2512 = !DILocation(line: 680, column: 25, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !270, line: 680, column: 25)
!2514 = distinct !DILexicalBlock(scope: !2508, file: !270, line: 679, column: 23)
!2515 = !DILocation(line: 680, column: 25, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2513, file: !270, line: 680, column: 25)
!2517 = !DILocation(line: 680, column: 25, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !270, line: 680, column: 25)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !270, line: 680, column: 25)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !270, line: 680, column: 25)
!2521 = !DILocation(line: 680, column: 25, scope: !2519)
!2522 = !DILocation(line: 680, column: 25, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !270, line: 680, column: 25)
!2524 = distinct !DILexicalBlock(scope: !2520, file: !270, line: 680, column: 25)
!2525 = !DILocation(line: 680, column: 25, scope: !2524)
!2526 = !DILocation(line: 680, column: 25, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !270, line: 680, column: 25)
!2528 = distinct !DILexicalBlock(scope: !2520, file: !270, line: 680, column: 25)
!2529 = !DILocation(line: 680, column: 25, scope: !2528)
!2530 = !DILocation(line: 680, column: 25, scope: !2520)
!2531 = !DILocation(line: 680, column: 25, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !270, line: 680, column: 25)
!2533 = distinct !DILexicalBlock(scope: !2513, file: !270, line: 680, column: 25)
!2534 = !DILocation(line: 680, column: 25, scope: !2533)
!2535 = !DILocation(line: 681, column: 25, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2537, file: !270, line: 681, column: 25)
!2537 = distinct !DILexicalBlock(scope: !2514, file: !270, line: 681, column: 25)
!2538 = !DILocation(line: 681, column: 25, scope: !2537)
!2539 = !DILocation(line: 682, column: 25, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !270, line: 682, column: 25)
!2541 = distinct !DILexicalBlock(scope: !2514, file: !270, line: 682, column: 25)
!2542 = !DILocation(line: 682, column: 25, scope: !2541)
!2543 = !DILocation(line: 683, column: 38, scope: !2514)
!2544 = !DILocation(line: 683, column: 33, scope: !2514)
!2545 = !DILocation(line: 684, column: 23, scope: !2514)
!2546 = !DILocation(line: 685, column: 30, scope: !2508)
!2547 = !DILocation(line: 687, column: 25, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !270, line: 687, column: 25)
!2549 = distinct !DILexicalBlock(scope: !2550, file: !270, line: 687, column: 25)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !270, line: 686, column: 23)
!2551 = distinct !DILexicalBlock(scope: !2508, file: !270, line: 685, column: 30)
!2552 = !DILocation(line: 687, column: 25, scope: !2549)
!2553 = !DILocation(line: 689, column: 23, scope: !2550)
!2554 = !DILocation(line: 690, column: 35, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2509, file: !270, line: 690, column: 25)
!2556 = !DILocation(line: 690, column: 30, scope: !2555)
!2557 = !DILocation(line: 690, column: 25, scope: !2509)
!2558 = !DILocation(line: 692, column: 21, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2560, file: !270, line: 692, column: 21)
!2560 = distinct !DILexicalBlock(scope: !2509, file: !270, line: 692, column: 21)
!2561 = !DILocation(line: 692, column: 21, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !270, line: 692, column: 21)
!2563 = distinct !DILexicalBlock(scope: !2564, file: !270, line: 692, column: 21)
!2564 = distinct !DILexicalBlock(scope: !2559, file: !270, line: 692, column: 21)
!2565 = !DILocation(line: 692, column: 21, scope: !2563)
!2566 = !DILocation(line: 692, column: 21, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !270, line: 692, column: 21)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !270, line: 692, column: 21)
!2569 = !DILocation(line: 692, column: 21, scope: !2568)
!2570 = !DILocation(line: 692, column: 21, scope: !2564)
!2571 = !DILocation(line: 0, scope: !2509)
!2572 = !DILocation(line: 693, column: 21, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2574, file: !270, line: 693, column: 21)
!2574 = distinct !DILexicalBlock(scope: !2509, file: !270, line: 693, column: 21)
!2575 = !DILocation(line: 693, column: 21, scope: !2574)
!2576 = !DILocation(line: 694, column: 25, scope: !2509)
!2577 = !DILocation(line: 676, column: 17, scope: !2510)
!2578 = distinct !{!2578, !2579, !2580}
!2579 = !DILocation(line: 676, column: 17, scope: !2511)
!2580 = !DILocation(line: 695, column: 19, scope: !2511)
!2581 = !DILocation(line: 409, column: 30, scope: !2291)
!2582 = !DILocation(line: 702, column: 34, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 702, column: 11)
!2584 = !DILocation(line: 704, column: 14, scope: !2583)
!2585 = !DILocation(line: 705, column: 14, scope: !2583)
!2586 = !DILocation(line: 705, column: 35, scope: !2583)
!2587 = !DILocation(line: 705, column: 17, scope: !2583)
!2588 = !DILocation(line: 705, column: 47, scope: !2583)
!2589 = !DILocation(line: 705, column: 65, scope: !2583)
!2590 = !DILocation(line: 706, column: 11, scope: !2583)
!2591 = !DILocation(line: 702, column: 11, scope: !2157)
!2592 = !DILocation(line: 395, column: 15, scope: !2155)
!2593 = !DILocation(line: 709, column: 5, scope: !2157)
!2594 = !DILocation(line: 710, column: 7, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 710, column: 7)
!2596 = !DILocation(line: 710, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2595, file: !270, line: 710, column: 7)
!2598 = !DILocation(line: 710, column: 7, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2600, file: !270, line: 710, column: 7)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !270, line: 710, column: 7)
!2601 = distinct !DILexicalBlock(scope: !2597, file: !270, line: 710, column: 7)
!2602 = !DILocation(line: 710, column: 7, scope: !2600)
!2603 = !DILocation(line: 710, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !270, line: 710, column: 7)
!2605 = distinct !DILexicalBlock(scope: !2601, file: !270, line: 710, column: 7)
!2606 = !DILocation(line: 710, column: 7, scope: !2605)
!2607 = !DILocation(line: 710, column: 7, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !270, line: 710, column: 7)
!2609 = distinct !DILexicalBlock(scope: !2601, file: !270, line: 710, column: 7)
!2610 = !DILocation(line: 710, column: 7, scope: !2609)
!2611 = !DILocation(line: 710, column: 7, scope: !2601)
!2612 = !DILocation(line: 710, column: 7, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !270, line: 710, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2595, file: !270, line: 710, column: 7)
!2615 = !DILocation(line: 710, column: 7, scope: !2614)
!2616 = !DILocation(line: 712, column: 5, scope: !2157)
!2617 = !DILocation(line: 713, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !270, line: 713, column: 7)
!2619 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 713, column: 7)
!2620 = !DILocation(line: 417, column: 21, scope: !2157)
!2621 = !DILocation(line: 713, column: 7, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !270, line: 713, column: 7)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !270, line: 713, column: 7)
!2624 = distinct !DILexicalBlock(scope: !2618, file: !270, line: 713, column: 7)
!2625 = !DILocation(line: 713, column: 7, scope: !2623)
!2626 = !DILocation(line: 713, column: 7, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !270, line: 713, column: 7)
!2628 = distinct !DILexicalBlock(scope: !2624, file: !270, line: 713, column: 7)
!2629 = !DILocation(line: 713, column: 7, scope: !2628)
!2630 = !DILocation(line: 713, column: 7, scope: !2624)
!2631 = !DILocation(line: 714, column: 7, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2633, file: !270, line: 714, column: 7)
!2633 = distinct !DILexicalBlock(scope: !2157, file: !270, line: 714, column: 7)
!2634 = !DILocation(line: 714, column: 7, scope: !2633)
!2635 = !DILocation(line: 716, column: 11, scope: !2157)
!2636 = !DILocation(line: 718, column: 5, scope: !2158)
!2637 = !DILocation(line: 395, column: 82, scope: !2158)
!2638 = !DILocation(line: 395, column: 3, scope: !2158)
!2639 = distinct !{!2639, !2287, !2640, !603}
!2640 = !DILocation(line: 718, column: 5, scope: !2155)
!2641 = !DILocation(line: 720, column: 11, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 720, column: 7)
!2643 = !DILocation(line: 720, column: 16, scope: !2642)
!2644 = !DILocation(line: 728, column: 51, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 728, column: 7)
!2646 = !DILocation(line: 731, column: 11, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2645, file: !270, line: 730, column: 5)
!2648 = !DILocation(line: 732, column: 16, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2647, file: !270, line: 731, column: 11)
!2650 = !DILocation(line: 732, column: 9, scope: !2649)
!2651 = !DILocation(line: 736, column: 18, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2649, file: !270, line: 736, column: 16)
!2653 = !DILocation(line: 736, column: 29, scope: !2652)
!2654 = !DILocation(line: 745, column: 7, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 745, column: 7)
!2656 = !DILocation(line: 745, column: 20, scope: !2655)
!2657 = !DILocation(line: 746, column: 12, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !270, line: 746, column: 5)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !270, line: 746, column: 5)
!2660 = !DILocation(line: 746, column: 5, scope: !2659)
!2661 = !DILocation(line: 747, column: 7, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !270, line: 747, column: 7)
!2663 = distinct !DILexicalBlock(scope: !2658, file: !270, line: 747, column: 7)
!2664 = !DILocation(line: 747, column: 7, scope: !2663)
!2665 = !DILocation(line: 746, column: 39, scope: !2658)
!2666 = distinct !{!2666, !2660, !2667, !603}
!2667 = !DILocation(line: 747, column: 7, scope: !2659)
!2668 = !DILocation(line: 749, column: 11, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2124, file: !270, line: 749, column: 7)
!2670 = !DILocation(line: 749, column: 7, scope: !2124)
!2671 = !DILocation(line: 750, column: 5, scope: !2669)
!2672 = !DILocation(line: 750, column: 17, scope: !2669)
!2673 = !DILocation(line: 756, column: 21, scope: !2500)
!2674 = !DILocation(line: 760, column: 42, scope: !2124)
!2675 = !DILocation(line: 758, column: 10, scope: !2124)
!2676 = !DILocation(line: 758, column: 3, scope: !2124)
!2677 = !DILocation(line: 762, column: 1, scope: !2124)
!2678 = !DISubprogram(name: "iswprint", scope: !2679, file: !2679, line: 120, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!2679 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2680 = distinct !DISubprogram(name: "quotearg_alloc", scope: !270, file: !270, line: 788, type: !2681, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2683)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!59, !66, !63, !2016}
!2683 = !{!2684, !2685, !2686}
!2684 = !DILocalVariable(name: "arg", arg: 1, scope: !2680, file: !270, line: 788, type: !66)
!2685 = !DILocalVariable(name: "argsize", arg: 2, scope: !2680, file: !270, line: 788, type: !63)
!2686 = !DILocalVariable(name: "o", arg: 3, scope: !2680, file: !270, line: 789, type: !2016)
!2687 = !DILocation(line: 0, scope: !2680)
!2688 = !DILocalVariable(name: "arg", arg: 1, scope: !2689, file: !270, line: 801, type: !66)
!2689 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !270, file: !270, line: 801, type: !2690, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2692)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!59, !66, !63, !451, !2016}
!2692 = !{!2688, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700}
!2693 = !DILocalVariable(name: "argsize", arg: 2, scope: !2689, file: !270, line: 801, type: !63)
!2694 = !DILocalVariable(name: "size", arg: 3, scope: !2689, file: !270, line: 801, type: !451)
!2695 = !DILocalVariable(name: "o", arg: 4, scope: !2689, file: !270, line: 802, type: !2016)
!2696 = !DILocalVariable(name: "p", scope: !2689, file: !270, line: 804, type: !2016)
!2697 = !DILocalVariable(name: "saved_errno", scope: !2689, file: !270, line: 805, type: !14)
!2698 = !DILocalVariable(name: "flags", scope: !2689, file: !270, line: 807, type: !14)
!2699 = !DILocalVariable(name: "bufsize", scope: !2689, file: !270, line: 808, type: !63)
!2700 = !DILocalVariable(name: "buf", scope: !2689, file: !270, line: 812, type: !59)
!2701 = !DILocation(line: 0, scope: !2689, inlinedAt: !2702)
!2702 = distinct !DILocation(line: 791, column: 10, scope: !2680)
!2703 = !DILocation(line: 804, column: 37, scope: !2689, inlinedAt: !2702)
!2704 = !DILocation(line: 805, column: 21, scope: !2689, inlinedAt: !2702)
!2705 = !DILocation(line: 807, column: 18, scope: !2689, inlinedAt: !2702)
!2706 = !DILocation(line: 807, column: 24, scope: !2689, inlinedAt: !2702)
!2707 = !DILocation(line: 808, column: 72, scope: !2689, inlinedAt: !2702)
!2708 = !DILocation(line: 809, column: 53, scope: !2689, inlinedAt: !2702)
!2709 = !DILocation(line: 810, column: 49, scope: !2689, inlinedAt: !2702)
!2710 = !DILocation(line: 811, column: 49, scope: !2689, inlinedAt: !2702)
!2711 = !DILocation(line: 808, column: 20, scope: !2689, inlinedAt: !2702)
!2712 = !DILocation(line: 811, column: 62, scope: !2689, inlinedAt: !2702)
!2713 = !DILocation(line: 812, column: 15, scope: !2689, inlinedAt: !2702)
!2714 = !DILocation(line: 813, column: 60, scope: !2689, inlinedAt: !2702)
!2715 = !DILocation(line: 815, column: 32, scope: !2689, inlinedAt: !2702)
!2716 = !DILocation(line: 815, column: 47, scope: !2689, inlinedAt: !2702)
!2717 = !DILocation(line: 813, column: 3, scope: !2689, inlinedAt: !2702)
!2718 = !DILocation(line: 816, column: 9, scope: !2689, inlinedAt: !2702)
!2719 = !DILocation(line: 791, column: 3, scope: !2680)
!2720 = !DILocation(line: 0, scope: !2689)
!2721 = !DILocation(line: 804, column: 37, scope: !2689)
!2722 = !DILocation(line: 805, column: 21, scope: !2689)
!2723 = !DILocation(line: 807, column: 18, scope: !2689)
!2724 = !DILocation(line: 807, column: 27, scope: !2689)
!2725 = !DILocation(line: 807, column: 24, scope: !2689)
!2726 = !DILocation(line: 808, column: 72, scope: !2689)
!2727 = !DILocation(line: 809, column: 53, scope: !2689)
!2728 = !DILocation(line: 810, column: 49, scope: !2689)
!2729 = !DILocation(line: 811, column: 49, scope: !2689)
!2730 = !DILocation(line: 808, column: 20, scope: !2689)
!2731 = !DILocation(line: 811, column: 62, scope: !2689)
!2732 = !DILocation(line: 812, column: 15, scope: !2689)
!2733 = !DILocation(line: 813, column: 60, scope: !2689)
!2734 = !DILocation(line: 815, column: 32, scope: !2689)
!2735 = !DILocation(line: 815, column: 47, scope: !2689)
!2736 = !DILocation(line: 813, column: 3, scope: !2689)
!2737 = !DILocation(line: 816, column: 9, scope: !2689)
!2738 = !DILocation(line: 817, column: 7, scope: !2689)
!2739 = !DILocation(line: 818, column: 11, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2689, file: !270, line: 817, column: 7)
!2741 = !{!1115, !1115, i64 0}
!2742 = !DILocation(line: 818, column: 5, scope: !2740)
!2743 = !DILocation(line: 819, column: 3, scope: !2689)
!2744 = distinct !DISubprogram(name: "quotearg_free", scope: !270, file: !270, line: 837, type: !223, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2745)
!2745 = !{!2746, !2747}
!2746 = !DILocalVariable(name: "sv", scope: !2744, file: !270, line: 839, type: !329)
!2747 = !DILocalVariable(name: "i", scope: !2748, file: !270, line: 840, type: !14)
!2748 = distinct !DILexicalBlock(scope: !2744, file: !270, line: 840, column: 3)
!2749 = !DILocation(line: 839, column: 24, scope: !2744)
!2750 = !DILocation(line: 0, scope: !2744)
!2751 = !DILocation(line: 0, scope: !2748)
!2752 = !DILocation(line: 840, column: 21, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !270, line: 840, column: 3)
!2754 = !DILocation(line: 840, column: 3, scope: !2748)
!2755 = !DILocation(line: 842, column: 13, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2744, file: !270, line: 842, column: 7)
!2757 = !{!2758, !545, i64 8}
!2758 = !{!"slotvec", !1115, i64 0, !545, i64 8}
!2759 = !DILocation(line: 842, column: 17, scope: !2756)
!2760 = !DILocation(line: 842, column: 7, scope: !2744)
!2761 = !DILocation(line: 841, column: 17, scope: !2753)
!2762 = !DILocation(line: 841, column: 5, scope: !2753)
!2763 = !DILocation(line: 840, column: 32, scope: !2753)
!2764 = distinct !{!2764, !2754, !2765, !603}
!2765 = !DILocation(line: 841, column: 20, scope: !2748)
!2766 = !DILocation(line: 844, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2756, file: !270, line: 843, column: 5)
!2768 = !DILocation(line: 845, column: 21, scope: !2767)
!2769 = !{!2758, !1115, i64 0}
!2770 = !DILocation(line: 846, column: 20, scope: !2767)
!2771 = !DILocation(line: 847, column: 5, scope: !2767)
!2772 = !DILocation(line: 848, column: 10, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2744, file: !270, line: 848, column: 7)
!2774 = !DILocation(line: 848, column: 7, scope: !2744)
!2775 = !DILocation(line: 850, column: 13, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2773, file: !270, line: 849, column: 5)
!2777 = !DILocation(line: 850, column: 7, scope: !2776)
!2778 = !DILocation(line: 851, column: 15, scope: !2776)
!2779 = !DILocation(line: 852, column: 5, scope: !2776)
!2780 = !DILocation(line: 853, column: 10, scope: !2744)
!2781 = !DILocation(line: 854, column: 1, scope: !2744)
!2782 = distinct !DISubprogram(name: "quotearg_n", scope: !270, file: !270, line: 919, type: !744, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2783)
!2783 = !{!2784, !2785}
!2784 = !DILocalVariable(name: "n", arg: 1, scope: !2782, file: !270, line: 919, type: !14)
!2785 = !DILocalVariable(name: "arg", arg: 2, scope: !2782, file: !270, line: 919, type: !66)
!2786 = !DILocation(line: 0, scope: !2782)
!2787 = !DILocation(line: 921, column: 10, scope: !2782)
!2788 = !DILocation(line: 921, column: 3, scope: !2782)
!2789 = distinct !DISubprogram(name: "quotearg_n_options", scope: !270, file: !270, line: 866, type: !2790, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2792)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!59, !14, !66, !63, !2016}
!2792 = !{!2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2803, !2804, !2806, !2807, !2808}
!2793 = !DILocalVariable(name: "n", arg: 1, scope: !2789, file: !270, line: 866, type: !14)
!2794 = !DILocalVariable(name: "arg", arg: 2, scope: !2789, file: !270, line: 866, type: !66)
!2795 = !DILocalVariable(name: "argsize", arg: 3, scope: !2789, file: !270, line: 866, type: !63)
!2796 = !DILocalVariable(name: "options", arg: 4, scope: !2789, file: !270, line: 867, type: !2016)
!2797 = !DILocalVariable(name: "saved_errno", scope: !2789, file: !270, line: 869, type: !14)
!2798 = !DILocalVariable(name: "sv", scope: !2789, file: !270, line: 871, type: !329)
!2799 = !DILocalVariable(name: "nslots_max", scope: !2789, file: !270, line: 873, type: !14)
!2800 = !DILocalVariable(name: "preallocated", scope: !2801, file: !270, line: 879, type: !87)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !270, line: 878, column: 5)
!2802 = distinct !DILexicalBlock(scope: !2789, file: !270, line: 877, column: 7)
!2803 = !DILocalVariable(name: "new_nslots", scope: !2801, file: !270, line: 880, type: !464)
!2804 = !DILocalVariable(name: "size", scope: !2805, file: !270, line: 891, type: !63)
!2805 = distinct !DILexicalBlock(scope: !2789, file: !270, line: 890, column: 3)
!2806 = !DILocalVariable(name: "val", scope: !2805, file: !270, line: 892, type: !59)
!2807 = !DILocalVariable(name: "flags", scope: !2805, file: !270, line: 894, type: !14)
!2808 = !DILocalVariable(name: "qsize", scope: !2805, file: !270, line: 895, type: !63)
!2809 = !DILocation(line: 0, scope: !2789)
!2810 = !DILocation(line: 869, column: 21, scope: !2789)
!2811 = !DILocation(line: 871, column: 24, scope: !2789)
!2812 = !DILocation(line: 874, column: 17, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2789, file: !270, line: 874, column: 7)
!2814 = !DILocation(line: 875, column: 5, scope: !2813)
!2815 = !DILocation(line: 877, column: 7, scope: !2802)
!2816 = !DILocation(line: 877, column: 14, scope: !2802)
!2817 = !DILocation(line: 877, column: 7, scope: !2789)
!2818 = !DILocation(line: 879, column: 31, scope: !2801)
!2819 = !DILocation(line: 0, scope: !2801)
!2820 = !DILocation(line: 880, column: 7, scope: !2801)
!2821 = !DILocation(line: 880, column: 26, scope: !2801)
!2822 = !DILocation(line: 880, column: 13, scope: !2801)
!2823 = !DILocation(line: 882, column: 31, scope: !2801)
!2824 = !DILocation(line: 883, column: 33, scope: !2801)
!2825 = !DILocation(line: 883, column: 42, scope: !2801)
!2826 = !DILocation(line: 883, column: 31, scope: !2801)
!2827 = !DILocation(line: 882, column: 22, scope: !2801)
!2828 = !DILocation(line: 882, column: 15, scope: !2801)
!2829 = !DILocation(line: 884, column: 11, scope: !2801)
!2830 = !DILocation(line: 885, column: 15, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2801, file: !270, line: 884, column: 11)
!2832 = !{i64 0, i64 8, !2741, i64 8, i64 8, !544}
!2833 = !DILocation(line: 885, column: 9, scope: !2831)
!2834 = !DILocation(line: 886, column: 20, scope: !2801)
!2835 = !DILocation(line: 886, column: 18, scope: !2801)
!2836 = !DILocation(line: 886, column: 15, scope: !2801)
!2837 = !DILocation(line: 886, column: 32, scope: !2801)
!2838 = !DILocation(line: 886, column: 43, scope: !2801)
!2839 = !DILocation(line: 886, column: 53, scope: !2801)
!2840 = !DILocation(line: 0, scope: !2227, inlinedAt: !2841)
!2841 = distinct !DILocation(line: 886, column: 7, scope: !2801)
!2842 = !DILocation(line: 59, column: 10, scope: !2227, inlinedAt: !2841)
!2843 = !DILocation(line: 887, column: 16, scope: !2801)
!2844 = !DILocation(line: 887, column: 14, scope: !2801)
!2845 = !DILocation(line: 888, column: 5, scope: !2802)
!2846 = !DILocation(line: 888, column: 5, scope: !2801)
!2847 = !DILocation(line: 891, column: 19, scope: !2805)
!2848 = !DILocation(line: 891, column: 25, scope: !2805)
!2849 = !DILocation(line: 0, scope: !2805)
!2850 = !DILocation(line: 892, column: 23, scope: !2805)
!2851 = !DILocation(line: 894, column: 26, scope: !2805)
!2852 = !DILocation(line: 894, column: 32, scope: !2805)
!2853 = !DILocation(line: 896, column: 55, scope: !2805)
!2854 = !DILocation(line: 897, column: 46, scope: !2805)
!2855 = !DILocation(line: 898, column: 55, scope: !2805)
!2856 = !DILocation(line: 899, column: 55, scope: !2805)
!2857 = !DILocation(line: 895, column: 20, scope: !2805)
!2858 = !DILocation(line: 901, column: 14, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2805, file: !270, line: 901, column: 9)
!2860 = !DILocation(line: 901, column: 9, scope: !2805)
!2861 = !DILocation(line: 903, column: 35, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2859, file: !270, line: 902, column: 7)
!2863 = !DILocation(line: 903, column: 20, scope: !2862)
!2864 = !DILocation(line: 904, column: 17, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2862, file: !270, line: 904, column: 13)
!2866 = !DILocation(line: 904, column: 13, scope: !2862)
!2867 = !DILocation(line: 905, column: 11, scope: !2865)
!2868 = !DILocation(line: 906, column: 27, scope: !2862)
!2869 = !DILocation(line: 906, column: 19, scope: !2862)
!2870 = !DILocation(line: 907, column: 69, scope: !2862)
!2871 = !DILocation(line: 909, column: 44, scope: !2862)
!2872 = !DILocation(line: 910, column: 44, scope: !2862)
!2873 = !DILocation(line: 907, column: 9, scope: !2862)
!2874 = !DILocation(line: 911, column: 7, scope: !2862)
!2875 = !DILocation(line: 913, column: 11, scope: !2805)
!2876 = !DILocation(line: 914, column: 5, scope: !2805)
!2877 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !270, file: !270, line: 925, type: !2878, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!59, !14, !66, !63}
!2880 = !{!2881, !2882, !2883}
!2881 = !DILocalVariable(name: "n", arg: 1, scope: !2877, file: !270, line: 925, type: !14)
!2882 = !DILocalVariable(name: "arg", arg: 2, scope: !2877, file: !270, line: 925, type: !66)
!2883 = !DILocalVariable(name: "argsize", arg: 3, scope: !2877, file: !270, line: 925, type: !63)
!2884 = !DILocation(line: 0, scope: !2877)
!2885 = !DILocation(line: 927, column: 10, scope: !2877)
!2886 = !DILocation(line: 927, column: 3, scope: !2877)
!2887 = distinct !DISubprogram(name: "quotearg", scope: !270, file: !270, line: 931, type: !748, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2888)
!2888 = !{!2889}
!2889 = !DILocalVariable(name: "arg", arg: 1, scope: !2887, file: !270, line: 931, type: !66)
!2890 = !DILocation(line: 0, scope: !2887)
!2891 = !DILocation(line: 0, scope: !2782, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 933, column: 10, scope: !2887)
!2893 = !DILocation(line: 921, column: 10, scope: !2782, inlinedAt: !2892)
!2894 = !DILocation(line: 933, column: 3, scope: !2887)
!2895 = distinct !DISubprogram(name: "quotearg_mem", scope: !270, file: !270, line: 937, type: !2896, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2898)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!59, !66, !63}
!2898 = !{!2899, !2900}
!2899 = !DILocalVariable(name: "arg", arg: 1, scope: !2895, file: !270, line: 937, type: !66)
!2900 = !DILocalVariable(name: "argsize", arg: 2, scope: !2895, file: !270, line: 937, type: !63)
!2901 = !DILocation(line: 0, scope: !2895)
!2902 = !DILocation(line: 0, scope: !2877, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 939, column: 10, scope: !2895)
!2904 = !DILocation(line: 927, column: 10, scope: !2877, inlinedAt: !2903)
!2905 = !DILocation(line: 939, column: 3, scope: !2895)
!2906 = distinct !DISubprogram(name: "quotearg_n_style", scope: !270, file: !270, line: 943, type: !2907, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2909)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!59, !14, !44, !66}
!2909 = !{!2910, !2911, !2912, !2913}
!2910 = !DILocalVariable(name: "n", arg: 1, scope: !2906, file: !270, line: 943, type: !14)
!2911 = !DILocalVariable(name: "s", arg: 2, scope: !2906, file: !270, line: 943, type: !44)
!2912 = !DILocalVariable(name: "arg", arg: 3, scope: !2906, file: !270, line: 943, type: !66)
!2913 = !DILocalVariable(name: "o", scope: !2906, file: !270, line: 945, type: !2017)
!2914 = !DILocation(line: 0, scope: !2906)
!2915 = !DILocation(line: 945, column: 3, scope: !2906)
!2916 = !DILocation(line: 945, column: 32, scope: !2906)
!2917 = !{!2918}
!2918 = distinct !{!2918, !2919, !"quoting_options_from_style: argument 0"}
!2919 = distinct !{!2919, !"quoting_options_from_style"}
!2920 = !DILocation(line: 945, column: 36, scope: !2906)
!2921 = !DILocalVariable(name: "style", arg: 1, scope: !2922, file: !270, line: 183, type: !44)
!2922 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !270, file: !270, line: 183, type: !2923, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2925)
!2923 = !DISubroutineType(types: !2924)
!2924 = !{!287, !44}
!2925 = !{!2921, !2926}
!2926 = !DILocalVariable(name: "o", scope: !2922, file: !270, line: 185, type: !287)
!2927 = !DILocation(line: 0, scope: !2922, inlinedAt: !2928)
!2928 = distinct !DILocation(line: 945, column: 36, scope: !2906)
!2929 = !DILocation(line: 185, column: 26, scope: !2922, inlinedAt: !2928)
!2930 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !2928)
!2931 = distinct !DILexicalBlock(scope: !2922, file: !270, line: 186, column: 7)
!2932 = !DILocation(line: 186, column: 7, scope: !2922, inlinedAt: !2928)
!2933 = !DILocation(line: 187, column: 5, scope: !2931, inlinedAt: !2928)
!2934 = !DILocation(line: 188, column: 5, scope: !2922, inlinedAt: !2928)
!2935 = !DILocation(line: 188, column: 11, scope: !2922, inlinedAt: !2928)
!2936 = !DILocation(line: 946, column: 10, scope: !2906)
!2937 = !DILocation(line: 947, column: 1, scope: !2906)
!2938 = !DILocation(line: 946, column: 3, scope: !2906)
!2939 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !270, file: !270, line: 950, type: !2940, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2942)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!59, !14, !44, !66, !63}
!2942 = !{!2943, !2944, !2945, !2946, !2947}
!2943 = !DILocalVariable(name: "n", arg: 1, scope: !2939, file: !270, line: 950, type: !14)
!2944 = !DILocalVariable(name: "s", arg: 2, scope: !2939, file: !270, line: 950, type: !44)
!2945 = !DILocalVariable(name: "arg", arg: 3, scope: !2939, file: !270, line: 951, type: !66)
!2946 = !DILocalVariable(name: "argsize", arg: 4, scope: !2939, file: !270, line: 951, type: !63)
!2947 = !DILocalVariable(name: "o", scope: !2939, file: !270, line: 953, type: !2017)
!2948 = !DILocation(line: 0, scope: !2939)
!2949 = !DILocation(line: 953, column: 3, scope: !2939)
!2950 = !DILocation(line: 953, column: 32, scope: !2939)
!2951 = !{!2952}
!2952 = distinct !{!2952, !2953, !"quoting_options_from_style: argument 0"}
!2953 = distinct !{!2953, !"quoting_options_from_style"}
!2954 = !DILocation(line: 953, column: 36, scope: !2939)
!2955 = !DILocation(line: 0, scope: !2922, inlinedAt: !2956)
!2956 = distinct !DILocation(line: 953, column: 36, scope: !2939)
!2957 = !DILocation(line: 185, column: 26, scope: !2922, inlinedAt: !2956)
!2958 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !2956)
!2959 = !DILocation(line: 186, column: 7, scope: !2922, inlinedAt: !2956)
!2960 = !DILocation(line: 187, column: 5, scope: !2931, inlinedAt: !2956)
!2961 = !DILocation(line: 188, column: 5, scope: !2922, inlinedAt: !2956)
!2962 = !DILocation(line: 188, column: 11, scope: !2922, inlinedAt: !2956)
!2963 = !DILocation(line: 954, column: 10, scope: !2939)
!2964 = !DILocation(line: 955, column: 1, scope: !2939)
!2965 = !DILocation(line: 954, column: 3, scope: !2939)
!2966 = distinct !DISubprogram(name: "quotearg_style", scope: !270, file: !270, line: 958, type: !2967, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2969)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!59, !44, !66}
!2969 = !{!2970, !2971}
!2970 = !DILocalVariable(name: "s", arg: 1, scope: !2966, file: !270, line: 958, type: !44)
!2971 = !DILocalVariable(name: "arg", arg: 2, scope: !2966, file: !270, line: 958, type: !66)
!2972 = !DILocation(line: 0, scope: !2966)
!2973 = !DILocation(line: 0, scope: !2906, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 960, column: 10, scope: !2966)
!2975 = !DILocation(line: 945, column: 3, scope: !2906, inlinedAt: !2974)
!2976 = !DILocation(line: 945, column: 32, scope: !2906, inlinedAt: !2974)
!2977 = !{!2978}
!2978 = distinct !{!2978, !2979, !"quoting_options_from_style: argument 0"}
!2979 = distinct !{!2979, !"quoting_options_from_style"}
!2980 = !DILocation(line: 945, column: 36, scope: !2906, inlinedAt: !2974)
!2981 = !DILocation(line: 0, scope: !2922, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 945, column: 36, scope: !2906, inlinedAt: !2974)
!2983 = !DILocation(line: 185, column: 26, scope: !2922, inlinedAt: !2982)
!2984 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !2982)
!2985 = !DILocation(line: 186, column: 7, scope: !2922, inlinedAt: !2982)
!2986 = !DILocation(line: 187, column: 5, scope: !2931, inlinedAt: !2982)
!2987 = !DILocation(line: 188, column: 5, scope: !2922, inlinedAt: !2982)
!2988 = !DILocation(line: 188, column: 11, scope: !2922, inlinedAt: !2982)
!2989 = !DILocation(line: 946, column: 10, scope: !2906, inlinedAt: !2974)
!2990 = !DILocation(line: 947, column: 1, scope: !2906, inlinedAt: !2974)
!2991 = !DILocation(line: 960, column: 3, scope: !2966)
!2992 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !270, file: !270, line: 964, type: !2993, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !2995)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!59, !44, !66, !63}
!2995 = !{!2996, !2997, !2998}
!2996 = !DILocalVariable(name: "s", arg: 1, scope: !2992, file: !270, line: 964, type: !44)
!2997 = !DILocalVariable(name: "arg", arg: 2, scope: !2992, file: !270, line: 964, type: !66)
!2998 = !DILocalVariable(name: "argsize", arg: 3, scope: !2992, file: !270, line: 964, type: !63)
!2999 = !DILocation(line: 0, scope: !2992)
!3000 = !DILocation(line: 0, scope: !2939, inlinedAt: !3001)
!3001 = distinct !DILocation(line: 966, column: 10, scope: !2992)
!3002 = !DILocation(line: 953, column: 3, scope: !2939, inlinedAt: !3001)
!3003 = !DILocation(line: 953, column: 32, scope: !2939, inlinedAt: !3001)
!3004 = !{!3005}
!3005 = distinct !{!3005, !3006, !"quoting_options_from_style: argument 0"}
!3006 = distinct !{!3006, !"quoting_options_from_style"}
!3007 = !DILocation(line: 953, column: 36, scope: !2939, inlinedAt: !3001)
!3008 = !DILocation(line: 0, scope: !2922, inlinedAt: !3009)
!3009 = distinct !DILocation(line: 953, column: 36, scope: !2939, inlinedAt: !3001)
!3010 = !DILocation(line: 185, column: 26, scope: !2922, inlinedAt: !3009)
!3011 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !3009)
!3012 = !DILocation(line: 186, column: 7, scope: !2922, inlinedAt: !3009)
!3013 = !DILocation(line: 187, column: 5, scope: !2931, inlinedAt: !3009)
!3014 = !DILocation(line: 188, column: 5, scope: !2922, inlinedAt: !3009)
!3015 = !DILocation(line: 188, column: 11, scope: !2922, inlinedAt: !3009)
!3016 = !DILocation(line: 954, column: 10, scope: !2939, inlinedAt: !3001)
!3017 = !DILocation(line: 955, column: 1, scope: !2939, inlinedAt: !3001)
!3018 = !DILocation(line: 966, column: 3, scope: !2992)
!3019 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !270, file: !270, line: 970, type: !3020, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!59, !66, !63, !60}
!3022 = !{!3023, !3024, !3025, !3026}
!3023 = !DILocalVariable(name: "arg", arg: 1, scope: !3019, file: !270, line: 970, type: !66)
!3024 = !DILocalVariable(name: "argsize", arg: 2, scope: !3019, file: !270, line: 970, type: !63)
!3025 = !DILocalVariable(name: "ch", arg: 3, scope: !3019, file: !270, line: 970, type: !60)
!3026 = !DILocalVariable(name: "options", scope: !3019, file: !270, line: 972, type: !287)
!3027 = !DILocation(line: 0, scope: !3019)
!3028 = !DILocation(line: 972, column: 3, scope: !3019)
!3029 = !DILocation(line: 972, column: 26, scope: !3019)
!3030 = !DILocation(line: 973, column: 13, scope: !3019)
!3031 = !{i64 0, i64 4, !645, i64 4, i64 4, !636, i64 8, i64 32, !645, i64 40, i64 8, !544, i64 48, i64 8, !544}
!3032 = !DILocation(line: 0, scope: !2037, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 974, column: 3, scope: !3019)
!3034 = !DILocation(line: 147, column: 62, scope: !2037, inlinedAt: !3033)
!3035 = !DILocation(line: 147, column: 57, scope: !2037, inlinedAt: !3033)
!3036 = !DILocation(line: 148, column: 15, scope: !2037, inlinedAt: !3033)
!3037 = !DILocation(line: 149, column: 21, scope: !2037, inlinedAt: !3033)
!3038 = !DILocation(line: 149, column: 24, scope: !2037, inlinedAt: !3033)
!3039 = !DILocation(line: 149, column: 34, scope: !2037, inlinedAt: !3033)
!3040 = !DILocation(line: 150, column: 19, scope: !2037, inlinedAt: !3033)
!3041 = !DILocation(line: 150, column: 24, scope: !2037, inlinedAt: !3033)
!3042 = !DILocation(line: 150, column: 6, scope: !2037, inlinedAt: !3033)
!3043 = !DILocation(line: 975, column: 10, scope: !3019)
!3044 = !DILocation(line: 976, column: 1, scope: !3019)
!3045 = !DILocation(line: 975, column: 3, scope: !3019)
!3046 = distinct !DISubprogram(name: "quotearg_char", scope: !270, file: !270, line: 979, type: !3047, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!59, !66, !60}
!3049 = !{!3050, !3051}
!3050 = !DILocalVariable(name: "arg", arg: 1, scope: !3046, file: !270, line: 979, type: !66)
!3051 = !DILocalVariable(name: "ch", arg: 2, scope: !3046, file: !270, line: 979, type: !60)
!3052 = !DILocation(line: 0, scope: !3046)
!3053 = !DILocation(line: 0, scope: !3019, inlinedAt: !3054)
!3054 = distinct !DILocation(line: 981, column: 10, scope: !3046)
!3055 = !DILocation(line: 972, column: 3, scope: !3019, inlinedAt: !3054)
!3056 = !DILocation(line: 972, column: 26, scope: !3019, inlinedAt: !3054)
!3057 = !DILocation(line: 973, column: 13, scope: !3019, inlinedAt: !3054)
!3058 = !DILocation(line: 0, scope: !2037, inlinedAt: !3059)
!3059 = distinct !DILocation(line: 974, column: 3, scope: !3019, inlinedAt: !3054)
!3060 = !DILocation(line: 147, column: 62, scope: !2037, inlinedAt: !3059)
!3061 = !DILocation(line: 147, column: 57, scope: !2037, inlinedAt: !3059)
!3062 = !DILocation(line: 148, column: 15, scope: !2037, inlinedAt: !3059)
!3063 = !DILocation(line: 149, column: 21, scope: !2037, inlinedAt: !3059)
!3064 = !DILocation(line: 149, column: 24, scope: !2037, inlinedAt: !3059)
!3065 = !DILocation(line: 149, column: 34, scope: !2037, inlinedAt: !3059)
!3066 = !DILocation(line: 150, column: 19, scope: !2037, inlinedAt: !3059)
!3067 = !DILocation(line: 150, column: 24, scope: !2037, inlinedAt: !3059)
!3068 = !DILocation(line: 150, column: 6, scope: !2037, inlinedAt: !3059)
!3069 = !DILocation(line: 975, column: 10, scope: !3019, inlinedAt: !3054)
!3070 = !DILocation(line: 976, column: 1, scope: !3019, inlinedAt: !3054)
!3071 = !DILocation(line: 981, column: 3, scope: !3046)
!3072 = distinct !DISubprogram(name: "quotearg_colon", scope: !270, file: !270, line: 985, type: !748, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3073)
!3073 = !{!3074}
!3074 = !DILocalVariable(name: "arg", arg: 1, scope: !3072, file: !270, line: 985, type: !66)
!3075 = !DILocation(line: 0, scope: !3072)
!3076 = !DILocation(line: 0, scope: !3046, inlinedAt: !3077)
!3077 = distinct !DILocation(line: 987, column: 10, scope: !3072)
!3078 = !DILocation(line: 0, scope: !3019, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 981, column: 10, scope: !3046, inlinedAt: !3077)
!3080 = !DILocation(line: 972, column: 3, scope: !3019, inlinedAt: !3079)
!3081 = !DILocation(line: 972, column: 26, scope: !3019, inlinedAt: !3079)
!3082 = !DILocation(line: 973, column: 13, scope: !3019, inlinedAt: !3079)
!3083 = !DILocation(line: 0, scope: !2037, inlinedAt: !3084)
!3084 = distinct !DILocation(line: 974, column: 3, scope: !3019, inlinedAt: !3079)
!3085 = !DILocation(line: 147, column: 57, scope: !2037, inlinedAt: !3084)
!3086 = !DILocation(line: 149, column: 21, scope: !2037, inlinedAt: !3084)
!3087 = !DILocation(line: 150, column: 6, scope: !2037, inlinedAt: !3084)
!3088 = !DILocation(line: 975, column: 10, scope: !3019, inlinedAt: !3079)
!3089 = !DILocation(line: 976, column: 1, scope: !3019, inlinedAt: !3079)
!3090 = !DILocation(line: 987, column: 3, scope: !3072)
!3091 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !270, file: !270, line: 991, type: !2896, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3092)
!3092 = !{!3093, !3094}
!3093 = !DILocalVariable(name: "arg", arg: 1, scope: !3091, file: !270, line: 991, type: !66)
!3094 = !DILocalVariable(name: "argsize", arg: 2, scope: !3091, file: !270, line: 991, type: !63)
!3095 = !DILocation(line: 0, scope: !3091)
!3096 = !DILocation(line: 0, scope: !3019, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 993, column: 10, scope: !3091)
!3098 = !DILocation(line: 972, column: 3, scope: !3019, inlinedAt: !3097)
!3099 = !DILocation(line: 972, column: 26, scope: !3019, inlinedAt: !3097)
!3100 = !DILocation(line: 973, column: 13, scope: !3019, inlinedAt: !3097)
!3101 = !DILocation(line: 0, scope: !2037, inlinedAt: !3102)
!3102 = distinct !DILocation(line: 974, column: 3, scope: !3019, inlinedAt: !3097)
!3103 = !DILocation(line: 147, column: 57, scope: !2037, inlinedAt: !3102)
!3104 = !DILocation(line: 149, column: 21, scope: !2037, inlinedAt: !3102)
!3105 = !DILocation(line: 150, column: 6, scope: !2037, inlinedAt: !3102)
!3106 = !DILocation(line: 975, column: 10, scope: !3019, inlinedAt: !3097)
!3107 = !DILocation(line: 976, column: 1, scope: !3019, inlinedAt: !3097)
!3108 = !DILocation(line: 993, column: 3, scope: !3091)
!3109 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !270, file: !270, line: 997, type: !2907, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3110)
!3110 = !{!3111, !3112, !3113, !3114}
!3111 = !DILocalVariable(name: "n", arg: 1, scope: !3109, file: !270, line: 997, type: !14)
!3112 = !DILocalVariable(name: "s", arg: 2, scope: !3109, file: !270, line: 997, type: !44)
!3113 = !DILocalVariable(name: "arg", arg: 3, scope: !3109, file: !270, line: 997, type: !66)
!3114 = !DILocalVariable(name: "options", scope: !3109, file: !270, line: 999, type: !287)
!3115 = !DILocation(line: 0, scope: !3109)
!3116 = !DILocation(line: 999, column: 3, scope: !3109)
!3117 = !DILocation(line: 999, column: 26, scope: !3109)
!3118 = !DILocation(line: 0, scope: !2922, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 1000, column: 13, scope: !3109)
!3120 = !DILocation(line: 186, column: 13, scope: !2931, inlinedAt: !3119)
!3121 = !DILocation(line: 186, column: 7, scope: !2922, inlinedAt: !3119)
!3122 = !DILocation(line: 187, column: 5, scope: !2931, inlinedAt: !3119)
!3123 = !{!3124}
!3124 = distinct !{!3124, !3125, !"quoting_options_from_style: argument 0"}
!3125 = distinct !{!3125, !"quoting_options_from_style"}
!3126 = !DILocation(line: 1000, column: 13, scope: !3109)
!3127 = !DILocation(line: 0, scope: !2037, inlinedAt: !3128)
!3128 = distinct !DILocation(line: 1001, column: 3, scope: !3109)
!3129 = !DILocation(line: 147, column: 57, scope: !2037, inlinedAt: !3128)
!3130 = !DILocation(line: 149, column: 21, scope: !2037, inlinedAt: !3128)
!3131 = !DILocation(line: 150, column: 6, scope: !2037, inlinedAt: !3128)
!3132 = !DILocation(line: 1002, column: 10, scope: !3109)
!3133 = !DILocation(line: 1003, column: 1, scope: !3109)
!3134 = !DILocation(line: 1002, column: 3, scope: !3109)
!3135 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !270, file: !270, line: 1006, type: !3136, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3138)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!59, !14, !66, !66, !66}
!3138 = !{!3139, !3140, !3141, !3142}
!3139 = !DILocalVariable(name: "n", arg: 1, scope: !3135, file: !270, line: 1006, type: !14)
!3140 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3135, file: !270, line: 1006, type: !66)
!3141 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3135, file: !270, line: 1007, type: !66)
!3142 = !DILocalVariable(name: "arg", arg: 4, scope: !3135, file: !270, line: 1007, type: !66)
!3143 = !DILocation(line: 0, scope: !3135)
!3144 = !DILocalVariable(name: "n", arg: 1, scope: !3145, file: !270, line: 1014, type: !14)
!3145 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !270, file: !270, line: 1014, type: !3146, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3148)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!59, !14, !66, !66, !66, !63}
!3148 = !{!3144, !3149, !3150, !3151, !3152, !3153}
!3149 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3145, file: !270, line: 1014, type: !66)
!3150 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3145, file: !270, line: 1015, type: !66)
!3151 = !DILocalVariable(name: "arg", arg: 4, scope: !3145, file: !270, line: 1016, type: !66)
!3152 = !DILocalVariable(name: "argsize", arg: 5, scope: !3145, file: !270, line: 1016, type: !63)
!3153 = !DILocalVariable(name: "o", scope: !3145, file: !270, line: 1018, type: !287)
!3154 = !DILocation(line: 0, scope: !3145, inlinedAt: !3155)
!3155 = distinct !DILocation(line: 1009, column: 10, scope: !3135)
!3156 = !DILocation(line: 1018, column: 3, scope: !3145, inlinedAt: !3155)
!3157 = !DILocation(line: 1018, column: 26, scope: !3145, inlinedAt: !3155)
!3158 = !DILocation(line: 1018, column: 30, scope: !3145, inlinedAt: !3155)
!3159 = !DILocation(line: 0, scope: !2077, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 1019, column: 3, scope: !3145, inlinedAt: !3155)
!3161 = !DILocation(line: 174, column: 6, scope: !2077, inlinedAt: !3160)
!3162 = !DILocation(line: 174, column: 12, scope: !2077, inlinedAt: !3160)
!3163 = !DILocation(line: 175, column: 8, scope: !2091, inlinedAt: !3160)
!3164 = !DILocation(line: 175, column: 19, scope: !2091, inlinedAt: !3160)
!3165 = !DILocation(line: 176, column: 5, scope: !2091, inlinedAt: !3160)
!3166 = !DILocation(line: 177, column: 6, scope: !2077, inlinedAt: !3160)
!3167 = !DILocation(line: 177, column: 17, scope: !2077, inlinedAt: !3160)
!3168 = !DILocation(line: 178, column: 6, scope: !2077, inlinedAt: !3160)
!3169 = !DILocation(line: 178, column: 18, scope: !2077, inlinedAt: !3160)
!3170 = !DILocation(line: 1020, column: 10, scope: !3145, inlinedAt: !3155)
!3171 = !DILocation(line: 1021, column: 1, scope: !3145, inlinedAt: !3155)
!3172 = !DILocation(line: 1009, column: 3, scope: !3135)
!3173 = !DILocation(line: 0, scope: !3145)
!3174 = !DILocation(line: 1018, column: 3, scope: !3145)
!3175 = !DILocation(line: 1018, column: 26, scope: !3145)
!3176 = !DILocation(line: 1018, column: 30, scope: !3145)
!3177 = !DILocation(line: 0, scope: !2077, inlinedAt: !3178)
!3178 = distinct !DILocation(line: 1019, column: 3, scope: !3145)
!3179 = !DILocation(line: 174, column: 6, scope: !2077, inlinedAt: !3178)
!3180 = !DILocation(line: 174, column: 12, scope: !2077, inlinedAt: !3178)
!3181 = !DILocation(line: 175, column: 8, scope: !2091, inlinedAt: !3178)
!3182 = !DILocation(line: 175, column: 19, scope: !2091, inlinedAt: !3178)
!3183 = !DILocation(line: 176, column: 5, scope: !2091, inlinedAt: !3178)
!3184 = !DILocation(line: 177, column: 6, scope: !2077, inlinedAt: !3178)
!3185 = !DILocation(line: 177, column: 17, scope: !2077, inlinedAt: !3178)
!3186 = !DILocation(line: 178, column: 6, scope: !2077, inlinedAt: !3178)
!3187 = !DILocation(line: 178, column: 18, scope: !2077, inlinedAt: !3178)
!3188 = !DILocation(line: 1020, column: 10, scope: !3145)
!3189 = !DILocation(line: 1021, column: 1, scope: !3145)
!3190 = !DILocation(line: 1020, column: 3, scope: !3145)
!3191 = distinct !DISubprogram(name: "quotearg_custom", scope: !270, file: !270, line: 1024, type: !3192, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3194)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!59, !66, !66, !66}
!3194 = !{!3195, !3196, !3197}
!3195 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3191, file: !270, line: 1024, type: !66)
!3196 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3191, file: !270, line: 1024, type: !66)
!3197 = !DILocalVariable(name: "arg", arg: 3, scope: !3191, file: !270, line: 1025, type: !66)
!3198 = !DILocation(line: 0, scope: !3191)
!3199 = !DILocation(line: 0, scope: !3135, inlinedAt: !3200)
!3200 = distinct !DILocation(line: 1027, column: 10, scope: !3191)
!3201 = !DILocation(line: 0, scope: !3145, inlinedAt: !3202)
!3202 = distinct !DILocation(line: 1009, column: 10, scope: !3135, inlinedAt: !3200)
!3203 = !DILocation(line: 1018, column: 3, scope: !3145, inlinedAt: !3202)
!3204 = !DILocation(line: 1018, column: 26, scope: !3145, inlinedAt: !3202)
!3205 = !DILocation(line: 1018, column: 30, scope: !3145, inlinedAt: !3202)
!3206 = !DILocation(line: 0, scope: !2077, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 1019, column: 3, scope: !3145, inlinedAt: !3202)
!3208 = !DILocation(line: 174, column: 6, scope: !2077, inlinedAt: !3207)
!3209 = !DILocation(line: 174, column: 12, scope: !2077, inlinedAt: !3207)
!3210 = !DILocation(line: 175, column: 8, scope: !2091, inlinedAt: !3207)
!3211 = !DILocation(line: 175, column: 19, scope: !2091, inlinedAt: !3207)
!3212 = !DILocation(line: 176, column: 5, scope: !2091, inlinedAt: !3207)
!3213 = !DILocation(line: 177, column: 6, scope: !2077, inlinedAt: !3207)
!3214 = !DILocation(line: 177, column: 17, scope: !2077, inlinedAt: !3207)
!3215 = !DILocation(line: 178, column: 6, scope: !2077, inlinedAt: !3207)
!3216 = !DILocation(line: 178, column: 18, scope: !2077, inlinedAt: !3207)
!3217 = !DILocation(line: 1020, column: 10, scope: !3145, inlinedAt: !3202)
!3218 = !DILocation(line: 1021, column: 1, scope: !3145, inlinedAt: !3202)
!3219 = !DILocation(line: 1027, column: 3, scope: !3191)
!3220 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !270, file: !270, line: 1031, type: !3221, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3223)
!3221 = !DISubroutineType(types: !3222)
!3222 = !{!59, !66, !66, !66, !63}
!3223 = !{!3224, !3225, !3226, !3227}
!3224 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3220, file: !270, line: 1031, type: !66)
!3225 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3220, file: !270, line: 1031, type: !66)
!3226 = !DILocalVariable(name: "arg", arg: 3, scope: !3220, file: !270, line: 1032, type: !66)
!3227 = !DILocalVariable(name: "argsize", arg: 4, scope: !3220, file: !270, line: 1032, type: !63)
!3228 = !DILocation(line: 0, scope: !3220)
!3229 = !DILocation(line: 0, scope: !3145, inlinedAt: !3230)
!3230 = distinct !DILocation(line: 1034, column: 10, scope: !3220)
!3231 = !DILocation(line: 1018, column: 3, scope: !3145, inlinedAt: !3230)
!3232 = !DILocation(line: 1018, column: 26, scope: !3145, inlinedAt: !3230)
!3233 = !DILocation(line: 1018, column: 30, scope: !3145, inlinedAt: !3230)
!3234 = !DILocation(line: 0, scope: !2077, inlinedAt: !3235)
!3235 = distinct !DILocation(line: 1019, column: 3, scope: !3145, inlinedAt: !3230)
!3236 = !DILocation(line: 174, column: 6, scope: !2077, inlinedAt: !3235)
!3237 = !DILocation(line: 174, column: 12, scope: !2077, inlinedAt: !3235)
!3238 = !DILocation(line: 175, column: 8, scope: !2091, inlinedAt: !3235)
!3239 = !DILocation(line: 175, column: 19, scope: !2091, inlinedAt: !3235)
!3240 = !DILocation(line: 176, column: 5, scope: !2091, inlinedAt: !3235)
!3241 = !DILocation(line: 177, column: 6, scope: !2077, inlinedAt: !3235)
!3242 = !DILocation(line: 177, column: 17, scope: !2077, inlinedAt: !3235)
!3243 = !DILocation(line: 178, column: 6, scope: !2077, inlinedAt: !3235)
!3244 = !DILocation(line: 178, column: 18, scope: !2077, inlinedAt: !3235)
!3245 = !DILocation(line: 1020, column: 10, scope: !3145, inlinedAt: !3230)
!3246 = !DILocation(line: 1021, column: 1, scope: !3145, inlinedAt: !3230)
!3247 = !DILocation(line: 1034, column: 3, scope: !3220)
!3248 = distinct !DISubprogram(name: "quote_n_mem", scope: !270, file: !270, line: 1049, type: !3249, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!66, !14, !66, !63}
!3251 = !{!3252, !3253, !3254}
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !270, line: 1049, type: !14)
!3253 = !DILocalVariable(name: "arg", arg: 2, scope: !3248, file: !270, line: 1049, type: !66)
!3254 = !DILocalVariable(name: "argsize", arg: 3, scope: !3248, file: !270, line: 1049, type: !63)
!3255 = !DILocation(line: 0, scope: !3248)
!3256 = !DILocation(line: 1051, column: 10, scope: !3248)
!3257 = !DILocation(line: 1051, column: 3, scope: !3248)
!3258 = distinct !DISubprogram(name: "quote_mem", scope: !270, file: !270, line: 1055, type: !3259, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!66, !66, !63}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "arg", arg: 1, scope: !3258, file: !270, line: 1055, type: !66)
!3263 = !DILocalVariable(name: "argsize", arg: 2, scope: !3258, file: !270, line: 1055, type: !63)
!3264 = !DILocation(line: 0, scope: !3258)
!3265 = !DILocation(line: 0, scope: !3248, inlinedAt: !3266)
!3266 = distinct !DILocation(line: 1057, column: 10, scope: !3258)
!3267 = !DILocation(line: 1051, column: 10, scope: !3248, inlinedAt: !3266)
!3268 = !DILocation(line: 1057, column: 3, scope: !3258)
!3269 = distinct !DISubprogram(name: "quote_n", scope: !270, file: !270, line: 1061, type: !3270, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3272)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!66, !14, !66}
!3272 = !{!3273, !3274}
!3273 = !DILocalVariable(name: "n", arg: 1, scope: !3269, file: !270, line: 1061, type: !14)
!3274 = !DILocalVariable(name: "arg", arg: 2, scope: !3269, file: !270, line: 1061, type: !66)
!3275 = !DILocation(line: 0, scope: !3269)
!3276 = !DILocation(line: 0, scope: !3248, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1063, column: 10, scope: !3269)
!3278 = !DILocation(line: 1051, column: 10, scope: !3248, inlinedAt: !3277)
!3279 = !DILocation(line: 1063, column: 3, scope: !3269)
!3280 = distinct !DISubprogram(name: "quote", scope: !270, file: !270, line: 1067, type: !3281, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !269, retainedNodes: !3283)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!66, !66}
!3283 = !{!3284}
!3284 = !DILocalVariable(name: "arg", arg: 1, scope: !3280, file: !270, line: 1067, type: !66)
!3285 = !DILocation(line: 0, scope: !3280)
!3286 = !DILocation(line: 0, scope: !3269, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 1069, column: 10, scope: !3280)
!3288 = !DILocation(line: 0, scope: !3248, inlinedAt: !3289)
!3289 = distinct !DILocation(line: 1063, column: 10, scope: !3269, inlinedAt: !3287)
!3290 = !DILocation(line: 1051, column: 10, scope: !3248, inlinedAt: !3289)
!3291 = !DILocation(line: 1069, column: 3, scope: !3280)
!3292 = distinct !DISubprogram(name: "savewd_init", scope: !6, file: !6, line: 86, type: !3293, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3296)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !3295}
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!3296 = !{!3297}
!3297 = !DILocalVariable(name: "wd", arg: 1, scope: !3292, file: !6, line: 86, type: !3295)
!3298 = !DILocation(line: 0, scope: !3292)
!3299 = !DILocation(line: 88, column: 7, scope: !3292)
!3300 = !DILocation(line: 88, column: 13, scope: !3292)
!3301 = !DILocation(line: 89, column: 1, scope: !3292)
!3302 = distinct !DISubprogram(name: "savewd_errno", scope: !6, file: !6, line: 131, type: !3303, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3307)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!14, !3305}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!3307 = !{!3308}
!3308 = !DILocalVariable(name: "wd", arg: 1, scope: !3302, file: !6, line: 131, type: !3305)
!3309 = !DILocation(line: 0, scope: !3302)
!3310 = !DILocation(line: 133, column: 14, scope: !3302)
!3311 = !DILocation(line: 133, column: 20, scope: !3302)
!3312 = !DILocation(line: 133, column: 10, scope: !3302)
!3313 = !DILocation(line: 133, column: 48, scope: !3302)
!3314 = !DILocation(line: 133, column: 3, scope: !3302)
!3315 = distinct !DISubprogram(name: "savewd_chdir", scope: !425, file: !425, line: 113, type: !3316, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3318)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!14, !3295, !66, !14, !168}
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325}
!3319 = !DILocalVariable(name: "wd", arg: 1, scope: !3315, file: !425, line: 113, type: !3295)
!3320 = !DILocalVariable(name: "dir", arg: 2, scope: !3315, file: !425, line: 113, type: !66)
!3321 = !DILocalVariable(name: "options", arg: 3, scope: !3315, file: !425, line: 113, type: !14)
!3322 = !DILocalVariable(name: "open_result", arg: 4, scope: !3315, file: !425, line: 114, type: !168)
!3323 = !DILocalVariable(name: "fd", scope: !3315, file: !425, line: 116, type: !14)
!3324 = !DILocalVariable(name: "result", scope: !3315, file: !425, line: 117, type: !14)
!3325 = !DILocalVariable(name: "saved_errno", scope: !3326, file: !425, line: 173, type: !14)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !425, line: 172, column: 5)
!3327 = distinct !DILexicalBlock(scope: !3315, file: !425, line: 171, column: 7)
!3328 = !DILocation(line: 0, scope: !3315)
!3329 = !DILocation(line: 121, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3315, file: !425, line: 121, column: 7)
!3331 = !DILocation(line: 122, column: 7, scope: !3330)
!3332 = !DILocation(line: 126, column: 22, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !425, line: 123, column: 5)
!3334 = !DILocation(line: 126, column: 19, scope: !3333)
!3335 = !DILocation(line: 124, column: 12, scope: !3333)
!3336 = !DILocation(line: 128, column: 11, scope: !3333)
!3337 = !DILocation(line: 130, column: 26, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !425, line: 129, column: 9)
!3339 = distinct !DILexicalBlock(scope: !3333, file: !425, line: 128, column: 11)
!3340 = !DILocation(line: 131, column: 28, scope: !3338)
!3341 = !DILocation(line: 131, column: 11, scope: !3338)
!3342 = !DILocation(line: 131, column: 26, scope: !3338)
!3343 = !DILocation(line: 132, column: 9, scope: !3338)
!3344 = !DILocation(line: 134, column: 14, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3333, file: !425, line: 134, column: 11)
!3346 = !DILocation(line: 134, column: 18, scope: !3345)
!3347 = !DILocation(line: 134, column: 21, scope: !3345)
!3348 = !DILocation(line: 134, column: 27, scope: !3345)
!3349 = !DILocation(line: 138, column: 19, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3315, file: !425, line: 138, column: 7)
!3351 = !DILocation(line: 138, column: 33, scope: !3350)
!3352 = !DILocalVariable(name: "wd", arg: 1, scope: !3353, file: !425, line: 48, type: !3295)
!3353 = distinct !DISubprogram(name: "savewd_save", scope: !425, file: !425, line: 48, type: !3354, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3356)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!87, !3295}
!3356 = !{!3352, !3357, !3360}
!3357 = !DILocalVariable(name: "fd", scope: !3358, file: !425, line: 55, type: !14)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 54, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3353, file: !425, line: 51, column: 5)
!3360 = !DILocalVariable(name: "try_fork", scope: !3358, file: !425, line: 70, type: !87)
!3361 = !DILocation(line: 0, scope: !3353, inlinedAt: !3362)
!3362 = distinct !DILocation(line: 140, column: 11, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !425, line: 140, column: 11)
!3364 = distinct !DILexicalBlock(scope: !3350, file: !425, line: 139, column: 5)
!3365 = !DILocation(line: 50, column: 15, scope: !3353, inlinedAt: !3362)
!3366 = !DILocation(line: 50, column: 3, scope: !3353, inlinedAt: !3362)
!3367 = !DILocation(line: 55, column: 18, scope: !3358, inlinedAt: !3362)
!3368 = !DILocation(line: 0, scope: !3358, inlinedAt: !3362)
!3369 = !DILocation(line: 56, column: 15, scope: !3370, inlinedAt: !3362)
!3370 = distinct !DILexicalBlock(scope: !3358, file: !425, line: 56, column: 13)
!3371 = !DILocation(line: 56, column: 13, scope: !3358, inlinedAt: !3362)
!3372 = !DILocation(line: 58, column: 23, scope: !3373, inlinedAt: !3362)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !425, line: 57, column: 11)
!3374 = !DILocation(line: 59, column: 21, scope: !3373, inlinedAt: !3362)
!3375 = !DILocation(line: 59, column: 24, scope: !3373, inlinedAt: !3362)
!3376 = !DILocation(line: 60, column: 13, scope: !3373, inlinedAt: !3362)
!3377 = !DILocation(line: 70, column: 25, scope: !3358, inlinedAt: !3362)
!3378 = !DILocation(line: 72, column: 13, scope: !3358, inlinedAt: !3362)
!3379 = !DILocation(line: 74, column: 23, scope: !3380, inlinedAt: !3362)
!3380 = distinct !DILexicalBlock(scope: !3381, file: !425, line: 73, column: 11)
!3381 = distinct !DILexicalBlock(scope: !3358, file: !425, line: 72, column: 13)
!3382 = !DILocation(line: 75, column: 21, scope: !3380, inlinedAt: !3362)
!3383 = !DILocation(line: 75, column: 28, scope: !3380, inlinedAt: !3362)
!3384 = !DILocation(line: 76, column: 13, scope: !3380, inlinedAt: !3362)
!3385 = !DILocation(line: 79, column: 17, scope: !3359, inlinedAt: !3362)
!3386 = !DILocation(line: 83, column: 11, scope: !3359, inlinedAt: !3362)
!3387 = !DILocation(line: 83, column: 19, scope: !3388, inlinedAt: !3362)
!3388 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 83, column: 11)
!3389 = !DILocation(line: 88, column: 27, scope: !3390, inlinedAt: !3362)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !425, line: 84, column: 9)
!3391 = !DILocation(line: 88, column: 25, scope: !3390, inlinedAt: !3362)
!3392 = !DILocation(line: 89, column: 29, scope: !3393, inlinedAt: !3362)
!3393 = distinct !DILexicalBlock(scope: !3390, file: !425, line: 89, column: 15)
!3394 = !DILocation(line: 89, column: 15, scope: !3390, inlinedAt: !3362)
!3395 = !DILocation(line: 91, column: 21, scope: !3396, inlinedAt: !3362)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !425, line: 91, column: 19)
!3397 = distinct !DILexicalBlock(scope: !3393, file: !425, line: 90, column: 13)
!3398 = !DILocation(line: 91, column: 19, scope: !3397, inlinedAt: !3362)
!3399 = !DILocation(line: 93, column: 25, scope: !3397, inlinedAt: !3362)
!3400 = !DILocation(line: 94, column: 32, scope: !3397, inlinedAt: !3362)
!3401 = !DILocation(line: 94, column: 30, scope: !3397, inlinedAt: !3362)
!3402 = !DILocation(line: 95, column: 13, scope: !3397, inlinedAt: !3362)
!3403 = !DILocation(line: 106, column: 7, scope: !3404, inlinedAt: !3362)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !425, line: 106, column: 7)
!3405 = distinct !DILexicalBlock(scope: !3359, file: !425, line: 106, column: 7)
!3406 = !DILocation(line: 147, column: 24, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3363, file: !425, line: 146, column: 9)
!3408 = !DILocation(line: 147, column: 21, scope: !3407)
!3409 = !DILocation(line: 147, column: 30, scope: !3407)
!3410 = !DILocation(line: 147, column: 44, scope: !3407)
!3411 = !DILocation(line: 149, column: 22, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !425, line: 149, column: 15)
!3413 = !DILocation(line: 149, column: 15, scope: !3407)
!3414 = !DILocation(line: 150, column: 25, scope: !3412)
!3415 = !DILocation(line: 150, column: 13, scope: !3412)
!3416 = !DILocation(line: 153, column: 27, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3412, file: !425, line: 151, column: 15)
!3418 = !DILocation(line: 154, column: 17, scope: !3417)
!3419 = !DILocation(line: 162, column: 17, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !425, line: 162, column: 17)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !425, line: 162, column: 17)
!3422 = !DILocation(line: 162, column: 17, scope: !3421)
!3423 = !DILocation(line: 166, column: 17, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3425, file: !425, line: 166, column: 17)
!3425 = distinct !DILexicalBlock(scope: !3417, file: !425, line: 166, column: 17)
!3426 = !DILocation(line: 171, column: 9, scope: !3327)
!3427 = !DILocation(line: 171, column: 15, scope: !3327)
!3428 = !DILocation(line: 173, column: 25, scope: !3326)
!3429 = !DILocation(line: 0, scope: !3326)
!3430 = !DILocation(line: 174, column: 7, scope: !3326)
!3431 = !DILocation(line: 175, column: 13, scope: !3326)
!3432 = !DILocation(line: 176, column: 5, scope: !3326)
!3433 = !DILocation(line: 178, column: 3, scope: !3315)
!3434 = !DISubprogram(name: "fork", scope: !1586, file: !1586, line: 778, type: !3435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!19}
!3437 = !DISubprogram(name: "chdir", scope: !1586, file: !1586, line: 517, type: !3438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!14, !66}
!3440 = !DISubprogram(name: "fchdir", scope: !1586, file: !1586, line: 521, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3441 = distinct !DISubprogram(name: "savewd_restore", scope: !425, file: !425, line: 182, type: !3442, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3444)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!14, !3295, !14}
!3444 = !{!3445, !3446, !3447, !3451, !3453}
!3445 = !DILocalVariable(name: "wd", arg: 1, scope: !3441, file: !425, line: 182, type: !3295)
!3446 = !DILocalVariable(name: "status", arg: 2, scope: !3441, file: !425, line: 182, type: !14)
!3447 = !DILocalVariable(name: "chdir_errno", scope: !3448, file: !425, line: 201, type: !14)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !425, line: 200, column: 9)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !425, line: 194, column: 11)
!3450 = distinct !DILexicalBlock(scope: !3441, file: !425, line: 185, column: 5)
!3451 = !DILocalVariable(name: "child", scope: !3452, file: !425, line: 216, type: !17)
!3452 = distinct !DILexicalBlock(scope: !3450, file: !425, line: 215, column: 7)
!3453 = !DILocalVariable(name: "child_status", scope: !3454, file: !425, line: 221, type: !14)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !425, line: 220, column: 11)
!3455 = distinct !DILexicalBlock(scope: !3452, file: !425, line: 219, column: 13)
!3456 = !DILocation(line: 0, scope: !3441)
!3457 = !DILocation(line: 184, column: 15, scope: !3441)
!3458 = !DILocation(line: 184, column: 3, scope: !3441)
!3459 = !DILocation(line: 209, column: 23, scope: !3450)
!3460 = !DILocation(line: 209, column: 7, scope: !3450)
!3461 = !DILocation(line: 194, column: 27, scope: !3449)
!3462 = !DILocation(line: 194, column: 11, scope: !3449)
!3463 = !DILocation(line: 194, column: 31, scope: !3449)
!3464 = !DILocation(line: 194, column: 11, scope: !3450)
!3465 = !DILocation(line: 196, column: 21, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3449, file: !425, line: 195, column: 9)
!3467 = !DILocation(line: 197, column: 11, scope: !3466)
!3468 = !DILocation(line: 201, column: 29, scope: !3448)
!3469 = !DILocation(line: 0, scope: !3448)
!3470 = !DILocation(line: 202, column: 26, scope: !3448)
!3471 = !DILocation(line: 202, column: 11, scope: !3448)
!3472 = !DILocation(line: 203, column: 21, scope: !3448)
!3473 = !DILocation(line: 204, column: 26, scope: !3448)
!3474 = !DILocation(line: 194, column: 34, scope: !3449)
!3475 = !DILocation(line: 209, column: 13, scope: !3450)
!3476 = !DILocation(line: 210, column: 7, scope: !3450)
!3477 = !DILocation(line: 216, column: 31, scope: !3452)
!3478 = !DILocation(line: 0, scope: !3452)
!3479 = !DILocation(line: 217, column: 19, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3452, file: !425, line: 217, column: 13)
!3481 = !DILocation(line: 217, column: 13, scope: !3452)
!3482 = !DILocation(line: 218, column: 11, scope: !3480)
!3483 = !DILocation(line: 219, column: 15, scope: !3455)
!3484 = !DILocation(line: 219, column: 13, scope: !3452)
!3485 = !DILocation(line: 221, column: 13, scope: !3454)
!3486 = !DILocation(line: 222, column: 13, scope: !3454)
!3487 = !DILocation(line: 0, scope: !3454)
!3488 = !DILocation(line: 222, column: 20, scope: !3454)
!3489 = !DILocation(line: 222, column: 54, scope: !3454)
!3490 = !DILocation(line: 223, column: 15, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !425, line: 223, column: 15)
!3492 = distinct !DILexicalBlock(scope: !3454, file: !425, line: 223, column: 15)
!3493 = !DILocation(line: 223, column: 15, scope: !3492)
!3494 = distinct !{!3494, !3486, !3495, !603}
!3495 = !DILocation(line: 223, column: 15, scope: !3454)
!3496 = !DILocation(line: 224, column: 27, scope: !3454)
!3497 = !DILocation(line: 225, column: 19, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3454, file: !425, line: 225, column: 17)
!3499 = !DILocation(line: 225, column: 17, scope: !3454)
!3500 = !DILocation(line: 226, column: 15, scope: !3498)
!3501 = !DILocation(line: 227, column: 20, scope: !3454)
!3502 = !DILocation(line: 228, column: 11, scope: !3455)
!3503 = !DILocation(line: 233, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3505, file: !425, line: 233, column: 7)
!3505 = distinct !DILexicalBlock(scope: !3450, file: !425, line: 233, column: 7)
!3506 = !DILocation(line: 237, column: 1, scope: !3441)
!3507 = !DISubprogram(name: "waitpid", scope: !3508, file: !3508, line: 111, type: !3509, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3508 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/wait.h", directory: "", checksumkind: CSK_MD5, checksum: "f653fe63e16922d44e1c6e15caa2acb6")
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!19, !19, !168, !14}
!3511 = !DISubprogram(name: "raise", scope: !3512, file: !3512, line: 123, type: !1194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!3512 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!3513 = distinct !DISubprogram(name: "savewd_finish", scope: !425, file: !425, line: 240, type: !3293, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3514)
!3514 = !{!3515}
!3515 = !DILocalVariable(name: "wd", arg: 1, scope: !3513, file: !425, line: 240, type: !3295)
!3516 = !DILocation(line: 0, scope: !3513)
!3517 = !DILocation(line: 242, column: 15, scope: !3513)
!3518 = !DILocation(line: 242, column: 3, scope: !3513)
!3519 = !DILocation(line: 249, column: 22, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3513, file: !425, line: 243, column: 5)
!3521 = !DILocation(line: 249, column: 7, scope: !3520)
!3522 = !DILocation(line: 252, column: 15, scope: !3520)
!3523 = !DILocation(line: 253, column: 7, scope: !3520)
!3524 = !DILocation(line: 256, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !425, line: 256, column: 7)
!3526 = distinct !DILexicalBlock(scope: !3520, file: !425, line: 256, column: 7)
!3527 = !DILocation(line: 256, column: 7, scope: !3526)
!3528 = !DILocation(line: 261, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3530, file: !425, line: 261, column: 7)
!3530 = distinct !DILexicalBlock(scope: !3520, file: !425, line: 261, column: 7)
!3531 = !DILocation(line: 0, scope: !3520)
!3532 = !DILocation(line: 264, column: 13, scope: !3513)
!3533 = !DILocation(line: 265, column: 1, scope: !3513)
!3534 = distinct !DISubprogram(name: "savewd_process_files", scope: !425, file: !425, line: 284, type: !3535, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3540)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!14, !14, !759, !3537, !61}
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!14, !59, !3295, !61}
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3555, !3558}
!3541 = !DILocalVariable(name: "n_files", arg: 1, scope: !3534, file: !425, line: 284, type: !14)
!3542 = !DILocalVariable(name: "file", arg: 2, scope: !3534, file: !425, line: 284, type: !759)
!3543 = !DILocalVariable(name: "act", arg: 3, scope: !3534, file: !425, line: 285, type: !3537)
!3544 = !DILocalVariable(name: "options", arg: 4, scope: !3534, file: !425, line: 286, type: !61)
!3545 = !DILocalVariable(name: "i", scope: !3534, file: !425, line: 288, type: !14)
!3546 = !DILocalVariable(name: "last_relative", scope: !3534, file: !425, line: 289, type: !14)
!3547 = !DILocalVariable(name: "exit_status", scope: !3534, file: !425, line: 290, type: !14)
!3548 = !DILocalVariable(name: "wd", scope: !3534, file: !425, line: 291, type: !428)
!3549 = !DILocalVariable(name: "s", scope: !3550, file: !425, line: 302, type: !14)
!3550 = distinct !DILexicalBlock(scope: !3551, file: !425, line: 301, column: 9)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !425, line: 300, column: 11)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !425, line: 299, column: 5)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !425, line: 298, column: 3)
!3554 = distinct !DILexicalBlock(scope: !3534, file: !425, line: 298, column: 3)
!3555 = !DILocalVariable(name: "r", scope: !3556, file: !425, line: 309, type: !14)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !425, line: 308, column: 9)
!3557 = distinct !DILexicalBlock(scope: !3552, file: !425, line: 307, column: 11)
!3558 = !DILocalVariable(name: "s", scope: !3559, file: !425, line: 319, type: !14)
!3559 = distinct !DILexicalBlock(scope: !3560, file: !425, line: 318, column: 5)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !425, line: 317, column: 3)
!3561 = distinct !DILexicalBlock(scope: !3534, file: !425, line: 317, column: 3)
!3562 = !DILocation(line: 0, scope: !3534)
!3563 = !DILocation(line: 291, column: 3, scope: !3534)
!3564 = !DILocation(line: 291, column: 17, scope: !3534)
!3565 = !DILocation(line: 0, scope: !3292, inlinedAt: !3566)
!3566 = distinct !DILocation(line: 292, column: 3, scope: !3534)
!3567 = !DILocation(line: 88, column: 7, scope: !3292, inlinedAt: !3566)
!3568 = !DILocation(line: 88, column: 13, scope: !3292, inlinedAt: !3566)
!3569 = !DILocation(line: 294, column: 8, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3534, file: !425, line: 294, column: 3)
!3571 = !DILocation(line: 0, scope: !3570)
!3572 = !DILocation(line: 294, column: 39, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3570, file: !425, line: 294, column: 3)
!3574 = !DILocation(line: 294, column: 3, scope: !3570)
!3575 = !DILocation(line: 295, column: 11, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !425, line: 295, column: 9)
!3577 = !DILocation(line: 295, column: 9, scope: !3573)
!3578 = distinct !{!3578, !3574, !3579, !603}
!3579 = !DILocation(line: 296, column: 7, scope: !3570)
!3580 = !DILocation(line: 298, column: 12, scope: !3553)
!3581 = !DILocation(line: 298, column: 3, scope: !3554)
!3582 = !DILocation(line: 280, column: 14, scope: !3583, inlinedAt: !3588)
!3583 = distinct !DISubprogram(name: "savewd_delegating", scope: !425, file: !425, line: 278, type: !3584, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !424, retainedNodes: !3586)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!87, !3305}
!3586 = !{!3587}
!3587 = !DILocalVariable(name: "wd", arg: 1, scope: !3583, file: !425, line: 278, type: !3305)
!3588 = distinct !DILocation(line: 300, column: 13, scope: !3551)
!3589 = !DILocation(line: 0, scope: !3583, inlinedAt: !3588)
!3590 = !DILocation(line: 280, column: 20, scope: !3583, inlinedAt: !3588)
!3591 = !DILocation(line: 280, column: 37, scope: !3583, inlinedAt: !3588)
!3592 = !DILocation(line: 302, column: 24, scope: !3550)
!3593 = !DILocation(line: 302, column: 19, scope: !3550)
!3594 = !DILocation(line: 0, scope: !3550)
!3595 = !DILocation(line: 303, column: 27, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3550, file: !425, line: 303, column: 15)
!3597 = !DILocation(line: 303, column: 15, scope: !3550)
!3598 = !DILocation(line: 305, column: 9, scope: !3550)
!3599 = !DILocation(line: 307, column: 13, scope: !3557)
!3600 = !DILocation(line: 307, column: 11, scope: !3552)
!3601 = !DILocation(line: 309, column: 19, scope: !3556)
!3602 = !DILocation(line: 0, scope: !3556)
!3603 = !DILocation(line: 310, column: 27, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3556, file: !425, line: 310, column: 15)
!3605 = !DILocation(line: 310, column: 15, scope: !3556)
!3606 = !DILocation(line: 312, column: 9, scope: !3556)
!3607 = distinct !{!3607, !3581, !3608, !603}
!3608 = !DILocation(line: 313, column: 5, scope: !3554)
!3609 = !DILocation(line: 0, scope: !3513, inlinedAt: !3610)
!3610 = distinct !DILocation(line: 315, column: 3, scope: !3534)
!3611 = !DILocation(line: 242, column: 3, scope: !3513, inlinedAt: !3610)
!3612 = !DILocation(line: 249, column: 22, scope: !3520, inlinedAt: !3610)
!3613 = !DILocation(line: 249, column: 7, scope: !3520, inlinedAt: !3610)
!3614 = !DILocation(line: 252, column: 15, scope: !3520, inlinedAt: !3610)
!3615 = !DILocation(line: 253, column: 7, scope: !3520, inlinedAt: !3610)
!3616 = !DILocation(line: 256, column: 7, scope: !3525, inlinedAt: !3610)
!3617 = !DILocation(line: 256, column: 7, scope: !3526, inlinedAt: !3610)
!3618 = !DILocation(line: 261, column: 7, scope: !3529, inlinedAt: !3610)
!3619 = !DILocation(line: 0, scope: !3520, inlinedAt: !3610)
!3620 = !DILocation(line: 264, column: 13, scope: !3513, inlinedAt: !3610)
!3621 = !DILocation(line: 317, column: 12, scope: !3560)
!3622 = !DILocation(line: 317, column: 3, scope: !3561)
!3623 = !DILocation(line: 319, column: 20, scope: !3559)
!3624 = !DILocation(line: 319, column: 15, scope: !3559)
!3625 = !DILocation(line: 0, scope: !3559)
!3626 = !DILocation(line: 320, column: 23, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3559, file: !425, line: 320, column: 11)
!3628 = !DILocation(line: 320, column: 11, scope: !3559)
!3629 = !DILocation(line: 317, column: 24, scope: !3560)
!3630 = distinct !{!3630, !3622, !3631, !603}
!3631 = !DILocation(line: 322, column: 5, scope: !3561)
!3632 = !DILocation(line: 325, column: 1, scope: !3534)
!3633 = !DILocation(line: 324, column: 3, scope: !3534)
!3634 = distinct !DISubprogram(name: "version_etc_arn", scope: !438, file: !438, line: 61, type: !3635, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3672)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3637, !66, !66, !66, !3671, !63}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3639, file: !104, line: 51, baseType: !14, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3639, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3639, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3639, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3639, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3639, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3639, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3639, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3639, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3639, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3639, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3639, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3639, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3639, file: !104, line: 70, baseType: !3655, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3639, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3639, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3639, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3639, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3639, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3639, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3639, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3639, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3639, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3639, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3639, file: !104, line: 93, baseType: !3655, size: 64, offset: 1344)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3639, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3639, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3639, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3639, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678}
!3673 = !DILocalVariable(name: "stream", arg: 1, scope: !3634, file: !438, line: 61, type: !3637)
!3674 = !DILocalVariable(name: "command_name", arg: 2, scope: !3634, file: !438, line: 62, type: !66)
!3675 = !DILocalVariable(name: "package", arg: 3, scope: !3634, file: !438, line: 62, type: !66)
!3676 = !DILocalVariable(name: "version", arg: 4, scope: !3634, file: !438, line: 63, type: !66)
!3677 = !DILocalVariable(name: "authors", arg: 5, scope: !3634, file: !438, line: 64, type: !3671)
!3678 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3634, file: !438, line: 64, type: !63)
!3679 = !DILocation(line: 0, scope: !3634)
!3680 = !DILocation(line: 66, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3634, file: !438, line: 66, column: 7)
!3682 = !DILocation(line: 66, column: 7, scope: !3634)
!3683 = !DILocation(line: 67, column: 5, scope: !3681)
!3684 = !DILocation(line: 69, column: 5, scope: !3681)
!3685 = !DILocation(line: 83, column: 3, scope: !3634)
!3686 = !DILocation(line: 85, column: 3, scope: !3634)
!3687 = !DILocation(line: 88, column: 3, scope: !3634)
!3688 = !DILocation(line: 95, column: 3, scope: !3634)
!3689 = !DILocation(line: 97, column: 3, scope: !3634)
!3690 = !DILocation(line: 105, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3634, file: !438, line: 98, column: 5)
!3692 = !DILocation(line: 106, column: 7, scope: !3691)
!3693 = !DILocation(line: 109, column: 7, scope: !3691)
!3694 = !DILocation(line: 110, column: 7, scope: !3691)
!3695 = !DILocation(line: 113, column: 7, scope: !3691)
!3696 = !DILocation(line: 115, column: 7, scope: !3691)
!3697 = !DILocation(line: 120, column: 7, scope: !3691)
!3698 = !DILocation(line: 122, column: 7, scope: !3691)
!3699 = !DILocation(line: 127, column: 7, scope: !3691)
!3700 = !DILocation(line: 129, column: 7, scope: !3691)
!3701 = !DILocation(line: 134, column: 7, scope: !3691)
!3702 = !DILocation(line: 137, column: 7, scope: !3691)
!3703 = !DILocation(line: 142, column: 7, scope: !3691)
!3704 = !DILocation(line: 145, column: 7, scope: !3691)
!3705 = !DILocation(line: 150, column: 7, scope: !3691)
!3706 = !DILocation(line: 154, column: 7, scope: !3691)
!3707 = !DILocation(line: 159, column: 7, scope: !3691)
!3708 = !DILocation(line: 163, column: 7, scope: !3691)
!3709 = !DILocation(line: 170, column: 7, scope: !3691)
!3710 = !DILocation(line: 174, column: 7, scope: !3691)
!3711 = !DILocation(line: 176, column: 1, scope: !3634)
!3712 = distinct !DISubprogram(name: "version_etc_ar", scope: !438, file: !438, line: 183, type: !3713, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !3637, !66, !66, !66, !3671}
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721}
!3716 = !DILocalVariable(name: "stream", arg: 1, scope: !3712, file: !438, line: 183, type: !3637)
!3717 = !DILocalVariable(name: "command_name", arg: 2, scope: !3712, file: !438, line: 184, type: !66)
!3718 = !DILocalVariable(name: "package", arg: 3, scope: !3712, file: !438, line: 184, type: !66)
!3719 = !DILocalVariable(name: "version", arg: 4, scope: !3712, file: !438, line: 185, type: !66)
!3720 = !DILocalVariable(name: "authors", arg: 5, scope: !3712, file: !438, line: 185, type: !3671)
!3721 = !DILocalVariable(name: "n_authors", scope: !3712, file: !438, line: 187, type: !63)
!3722 = !DILocation(line: 0, scope: !3712)
!3723 = !DILocation(line: 189, column: 8, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3712, file: !438, line: 189, column: 3)
!3725 = !DILocation(line: 0, scope: !3724)
!3726 = !DILocation(line: 189, column: 23, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !438, line: 189, column: 3)
!3728 = !DILocation(line: 189, column: 3, scope: !3724)
!3729 = !DILocation(line: 189, column: 52, scope: !3727)
!3730 = distinct !{!3730, !3728, !3731, !603}
!3731 = !DILocation(line: 190, column: 5, scope: !3724)
!3732 = !DILocation(line: 191, column: 3, scope: !3712)
!3733 = !DILocation(line: 192, column: 1, scope: !3712)
!3734 = distinct !DISubprogram(name: "version_etc_va", scope: !438, file: !438, line: 199, type: !3735, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3748)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3637, !66, !66, !66, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !196, line: 52, baseType: !3738)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !198, line: 32, baseType: !3739)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3740, baseType: !3741)
!3740 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !202, size: 256, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3741, file: !3740, line: 192, baseType: !61, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3741, file: !3740, line: 192, baseType: !61, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3741, file: !3740, line: 192, baseType: !61, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3741, file: !3740, line: 192, baseType: !14, size: 32, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3741, file: !3740, line: 192, baseType: !14, size: 32, offset: 224)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3749 = !DILocalVariable(name: "stream", arg: 1, scope: !3734, file: !438, line: 199, type: !3637)
!3750 = !DILocalVariable(name: "command_name", arg: 2, scope: !3734, file: !438, line: 200, type: !66)
!3751 = !DILocalVariable(name: "package", arg: 3, scope: !3734, file: !438, line: 200, type: !66)
!3752 = !DILocalVariable(name: "version", arg: 4, scope: !3734, file: !438, line: 201, type: !66)
!3753 = !DILocalVariable(name: "authors", arg: 5, scope: !3734, file: !438, line: 201, type: !3737)
!3754 = !DILocalVariable(name: "n_authors", scope: !3734, file: !438, line: 203, type: !63)
!3755 = !DILocalVariable(name: "authtab", scope: !3734, file: !438, line: 204, type: !3756)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 640, elements: !283)
!3757 = !DILocation(line: 0, scope: !3734)
!3758 = !DILocation(line: 201, column: 46, scope: !3734)
!3759 = !DILocation(line: 204, column: 3, scope: !3734)
!3760 = !DILocation(line: 204, column: 15, scope: !3734)
!3761 = !DILocation(line: 208, column: 35, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !438, line: 206, column: 3)
!3763 = distinct !DILexicalBlock(scope: !3734, file: !438, line: 206, column: 3)
!3764 = !DILocation(line: 208, column: 14, scope: !3762)
!3765 = !DILocation(line: 208, column: 33, scope: !3762)
!3766 = !DILocation(line: 208, column: 67, scope: !3762)
!3767 = !DILocation(line: 206, column: 3, scope: !3763)
!3768 = !DILocation(line: 0, scope: !3763)
!3769 = !DILocation(line: 211, column: 3, scope: !3734)
!3770 = !DILocation(line: 213, column: 1, scope: !3734)
!3771 = distinct !DISubprogram(name: "version_etc", scope: !438, file: !438, line: 230, type: !3772, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3637, !66, !66, !66, null}
!3774 = !{!3775, !3776, !3777, !3778, !3779}
!3775 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !438, line: 230, type: !3637)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3771, file: !438, line: 231, type: !66)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3771, file: !438, line: 231, type: !66)
!3778 = !DILocalVariable(name: "version", arg: 4, scope: !3771, file: !438, line: 232, type: !66)
!3779 = !DILocalVariable(name: "authors", scope: !3771, file: !438, line: 234, type: !3737)
!3780 = !DILocation(line: 0, scope: !3771)
!3781 = !DILocation(line: 234, column: 3, scope: !3771)
!3782 = !DILocation(line: 234, column: 11, scope: !3771)
!3783 = !DILocation(line: 235, column: 3, scope: !3771)
!3784 = !DILocation(line: 236, column: 3, scope: !3771)
!3785 = !DILocation(line: 237, column: 3, scope: !3771)
!3786 = !DILocation(line: 238, column: 1, scope: !3771)
!3787 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !438, file: !438, line: 241, type: !223, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !437, retainedNodes: !553)
!3788 = !DILocation(line: 243, column: 3, scope: !3787)
!3789 = !DILocation(line: 248, column: 3, scope: !3787)
!3790 = !DILocation(line: 254, column: 3, scope: !3787)
!3791 = !DILocation(line: 259, column: 3, scope: !3787)
!3792 = !DILocation(line: 261, column: 1, scope: !3787)
!3793 = distinct !DISubprogram(name: "xnrealloc", scope: !3794, file: !3794, line: 147, type: !3795, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3797)
!3794 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!61, !61, !63, !63}
!3797 = !{!3798, !3799, !3800}
!3798 = !DILocalVariable(name: "p", arg: 1, scope: !3793, file: !3794, line: 147, type: !61)
!3799 = !DILocalVariable(name: "n", arg: 2, scope: !3793, file: !3794, line: 147, type: !63)
!3800 = !DILocalVariable(name: "s", arg: 3, scope: !3793, file: !3794, line: 147, type: !63)
!3801 = !DILocation(line: 0, scope: !3793)
!3802 = !DILocalVariable(name: "p", arg: 1, scope: !3803, file: !445, line: 83, type: !61)
!3803 = distinct !DISubprogram(name: "xreallocarray", scope: !445, file: !445, line: 83, type: !3795, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3804)
!3804 = !{!3802, !3805, !3806}
!3805 = !DILocalVariable(name: "n", arg: 2, scope: !3803, file: !445, line: 83, type: !63)
!3806 = !DILocalVariable(name: "s", arg: 3, scope: !3803, file: !445, line: 83, type: !63)
!3807 = !DILocation(line: 0, scope: !3803, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 149, column: 10, scope: !3793)
!3809 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !3808)
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3811, file: !445, line: 37, type: !61)
!3811 = distinct !DISubprogram(name: "check_nonnull", scope: !445, file: !445, line: 37, type: !3812, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!61, !61}
!3814 = !{!3810}
!3815 = !DILocation(line: 0, scope: !3811, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !3808)
!3817 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3816)
!3818 = distinct !DILexicalBlock(scope: !3811, file: !445, line: 39, column: 7)
!3819 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3816)
!3820 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3816)
!3821 = !DILocation(line: 149, column: 3, scope: !3793)
!3822 = !DILocation(line: 0, scope: !3803)
!3823 = !DILocation(line: 85, column: 25, scope: !3803)
!3824 = !DILocation(line: 0, scope: !3811, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 85, column: 10, scope: !3803)
!3826 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3825)
!3827 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3825)
!3828 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3825)
!3829 = !DILocation(line: 85, column: 3, scope: !3803)
!3830 = distinct !DISubprogram(name: "xmalloc", scope: !445, file: !445, line: 47, type: !3831, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!61, !63}
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "s", arg: 1, scope: !3830, file: !445, line: 47, type: !63)
!3835 = !DILocation(line: 0, scope: !3830)
!3836 = !DILocation(line: 49, column: 25, scope: !3830)
!3837 = !DILocation(line: 0, scope: !3811, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 49, column: 10, scope: !3830)
!3839 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3838)
!3840 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3838)
!3841 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3838)
!3842 = !DILocation(line: 49, column: 3, scope: !3830)
!3843 = distinct !DISubprogram(name: "ximalloc", scope: !445, file: !445, line: 53, type: !3844, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3846)
!3844 = !DISubroutineType(types: !3845)
!3845 = !{!61, !464}
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "s", arg: 1, scope: !3843, file: !445, line: 53, type: !464)
!3848 = !DILocation(line: 0, scope: !3843)
!3849 = !DILocalVariable(name: "s", arg: 1, scope: !3850, file: !3851, line: 55, type: !464)
!3850 = distinct !DISubprogram(name: "imalloc", scope: !3851, file: !3851, line: 55, type: !3844, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3852)
!3851 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3852 = !{!3849}
!3853 = !DILocation(line: 0, scope: !3850, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 55, column: 25, scope: !3843)
!3855 = !DILocation(line: 57, column: 26, scope: !3850, inlinedAt: !3854)
!3856 = !DILocation(line: 0, scope: !3811, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 55, column: 10, scope: !3843)
!3858 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3857)
!3859 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3857)
!3860 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3857)
!3861 = !DILocation(line: 55, column: 3, scope: !3843)
!3862 = distinct !DISubprogram(name: "xcharalloc", scope: !445, file: !445, line: 59, type: !3863, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3865)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!59, !63}
!3865 = !{!3866}
!3866 = !DILocalVariable(name: "n", arg: 1, scope: !3862, file: !445, line: 59, type: !63)
!3867 = !DILocation(line: 0, scope: !3862)
!3868 = !DILocation(line: 0, scope: !3830, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 61, column: 10, scope: !3862)
!3870 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !3869)
!3871 = !DILocation(line: 0, scope: !3811, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !3869)
!3873 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3872)
!3874 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3872)
!3875 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3872)
!3876 = !DILocation(line: 61, column: 3, scope: !3862)
!3877 = distinct !DISubprogram(name: "xrealloc", scope: !445, file: !445, line: 68, type: !3878, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3880)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!61, !61, !63}
!3880 = !{!3881, !3882}
!3881 = !DILocalVariable(name: "p", arg: 1, scope: !3877, file: !445, line: 68, type: !61)
!3882 = !DILocalVariable(name: "s", arg: 2, scope: !3877, file: !445, line: 68, type: !63)
!3883 = !DILocation(line: 0, scope: !3877)
!3884 = !DILocalVariable(name: "ptr", arg: 1, scope: !3885, file: !3886, line: 2057, type: !61)
!3885 = distinct !DISubprogram(name: "rpl_realloc", scope: !3886, file: !3886, line: 2057, type: !3878, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3887)
!3886 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3887 = !{!3884, !3888}
!3888 = !DILocalVariable(name: "size", arg: 2, scope: !3885, file: !3886, line: 2057, type: !63)
!3889 = !DILocation(line: 0, scope: !3885, inlinedAt: !3890)
!3890 = distinct !DILocation(line: 70, column: 25, scope: !3877)
!3891 = !DILocation(line: 2059, column: 24, scope: !3885, inlinedAt: !3890)
!3892 = !DILocation(line: 2059, column: 10, scope: !3885, inlinedAt: !3890)
!3893 = !DILocation(line: 0, scope: !3811, inlinedAt: !3894)
!3894 = distinct !DILocation(line: 70, column: 10, scope: !3877)
!3895 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3894)
!3896 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3894)
!3897 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3894)
!3898 = !DILocation(line: 70, column: 3, scope: !3877)
!3899 = distinct !DISubprogram(name: "xirealloc", scope: !445, file: !445, line: 74, type: !3900, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3902)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!61, !61, !464}
!3902 = !{!3903, !3904}
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3899, file: !445, line: 74, type: !61)
!3904 = !DILocalVariable(name: "s", arg: 2, scope: !3899, file: !445, line: 74, type: !464)
!3905 = !DILocation(line: 0, scope: !3899)
!3906 = !DILocalVariable(name: "p", arg: 1, scope: !3907, file: !3851, line: 66, type: !61)
!3907 = distinct !DISubprogram(name: "irealloc", scope: !3851, file: !3851, line: 66, type: !3900, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3908)
!3908 = !{!3906, !3909}
!3909 = !DILocalVariable(name: "s", arg: 2, scope: !3907, file: !3851, line: 66, type: !464)
!3910 = !DILocation(line: 0, scope: !3907, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 76, column: 25, scope: !3899)
!3912 = !DILocation(line: 0, scope: !3885, inlinedAt: !3913)
!3913 = distinct !DILocation(line: 68, column: 26, scope: !3907, inlinedAt: !3911)
!3914 = !DILocation(line: 2059, column: 24, scope: !3885, inlinedAt: !3913)
!3915 = !DILocation(line: 2059, column: 10, scope: !3885, inlinedAt: !3913)
!3916 = !DILocation(line: 0, scope: !3811, inlinedAt: !3917)
!3917 = distinct !DILocation(line: 76, column: 10, scope: !3899)
!3918 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3917)
!3919 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3917)
!3920 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3917)
!3921 = !DILocation(line: 76, column: 3, scope: !3899)
!3922 = distinct !DISubprogram(name: "xireallocarray", scope: !445, file: !445, line: 89, type: !3923, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3925)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!61, !61, !464, !464}
!3925 = !{!3926, !3927, !3928}
!3926 = !DILocalVariable(name: "p", arg: 1, scope: !3922, file: !445, line: 89, type: !61)
!3927 = !DILocalVariable(name: "n", arg: 2, scope: !3922, file: !445, line: 89, type: !464)
!3928 = !DILocalVariable(name: "s", arg: 3, scope: !3922, file: !445, line: 89, type: !464)
!3929 = !DILocation(line: 0, scope: !3922)
!3930 = !DILocalVariable(name: "p", arg: 1, scope: !3931, file: !3851, line: 98, type: !61)
!3931 = distinct !DISubprogram(name: "ireallocarray", scope: !3851, file: !3851, line: 98, type: !3923, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3932)
!3932 = !{!3930, !3933, !3934}
!3933 = !DILocalVariable(name: "n", arg: 2, scope: !3931, file: !3851, line: 98, type: !464)
!3934 = !DILocalVariable(name: "s", arg: 3, scope: !3931, file: !3851, line: 98, type: !464)
!3935 = !DILocation(line: 0, scope: !3931, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 91, column: 25, scope: !3922)
!3937 = !DILocation(line: 101, column: 13, scope: !3931, inlinedAt: !3936)
!3938 = !DILocation(line: 0, scope: !3811, inlinedAt: !3939)
!3939 = distinct !DILocation(line: 91, column: 10, scope: !3922)
!3940 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3939)
!3941 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3939)
!3942 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3939)
!3943 = !DILocation(line: 91, column: 3, scope: !3922)
!3944 = distinct !DISubprogram(name: "xnmalloc", scope: !445, file: !445, line: 98, type: !3945, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!61, !63, !63}
!3947 = !{!3948, !3949}
!3948 = !DILocalVariable(name: "n", arg: 1, scope: !3944, file: !445, line: 98, type: !63)
!3949 = !DILocalVariable(name: "s", arg: 2, scope: !3944, file: !445, line: 98, type: !63)
!3950 = !DILocation(line: 0, scope: !3944)
!3951 = !DILocation(line: 0, scope: !3803, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 100, column: 10, scope: !3944)
!3953 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !3952)
!3954 = !DILocation(line: 0, scope: !3811, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !3952)
!3956 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3955)
!3957 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3955)
!3958 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3955)
!3959 = !DILocation(line: 100, column: 3, scope: !3944)
!3960 = distinct !DISubprogram(name: "xinmalloc", scope: !445, file: !445, line: 104, type: !3961, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3963)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!61, !464, !464}
!3963 = !{!3964, !3965}
!3964 = !DILocalVariable(name: "n", arg: 1, scope: !3960, file: !445, line: 104, type: !464)
!3965 = !DILocalVariable(name: "s", arg: 2, scope: !3960, file: !445, line: 104, type: !464)
!3966 = !DILocation(line: 0, scope: !3960)
!3967 = !DILocation(line: 0, scope: !3922, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 106, column: 10, scope: !3960)
!3969 = !DILocation(line: 0, scope: !3931, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 91, column: 25, scope: !3922, inlinedAt: !3968)
!3971 = !DILocation(line: 101, column: 13, scope: !3931, inlinedAt: !3970)
!3972 = !DILocation(line: 0, scope: !3811, inlinedAt: !3973)
!3973 = distinct !DILocation(line: 91, column: 10, scope: !3922, inlinedAt: !3968)
!3974 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3973)
!3975 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3973)
!3976 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3973)
!3977 = !DILocation(line: 106, column: 3, scope: !3960)
!3978 = distinct !DISubprogram(name: "x2realloc", scope: !445, file: !445, line: 116, type: !3979, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !3981)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!61, !61, !451}
!3981 = !{!3982, !3983}
!3982 = !DILocalVariable(name: "p", arg: 1, scope: !3978, file: !445, line: 116, type: !61)
!3983 = !DILocalVariable(name: "ps", arg: 2, scope: !3978, file: !445, line: 116, type: !451)
!3984 = !DILocation(line: 0, scope: !3978)
!3985 = !DILocation(line: 0, scope: !448, inlinedAt: !3986)
!3986 = distinct !DILocation(line: 118, column: 10, scope: !3978)
!3987 = !DILocation(line: 178, column: 14, scope: !448, inlinedAt: !3986)
!3988 = !DILocation(line: 180, column: 9, scope: !3989, inlinedAt: !3986)
!3989 = distinct !DILexicalBlock(scope: !448, file: !445, line: 180, column: 7)
!3990 = !DILocation(line: 180, column: 7, scope: !448, inlinedAt: !3986)
!3991 = !DILocation(line: 182, column: 13, scope: !3992, inlinedAt: !3986)
!3992 = distinct !DILexicalBlock(scope: !3993, file: !445, line: 182, column: 11)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !445, line: 181, column: 5)
!3994 = !DILocation(line: 182, column: 11, scope: !3993, inlinedAt: !3986)
!3995 = !DILocation(line: 197, column: 11, scope: !3996, inlinedAt: !3986)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !445, line: 197, column: 11)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !445, line: 195, column: 5)
!3998 = !DILocation(line: 197, column: 11, scope: !3997, inlinedAt: !3986)
!3999 = !DILocation(line: 198, column: 9, scope: !3996, inlinedAt: !3986)
!4000 = !DILocation(line: 0, scope: !3803, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 201, column: 7, scope: !448, inlinedAt: !3986)
!4002 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !4001)
!4003 = !DILocation(line: 0, scope: !3811, inlinedAt: !4004)
!4004 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !4001)
!4005 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4004)
!4006 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4004)
!4007 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4004)
!4008 = !DILocation(line: 202, column: 7, scope: !448, inlinedAt: !3986)
!4009 = !DILocation(line: 118, column: 3, scope: !3978)
!4010 = !DILocation(line: 0, scope: !448)
!4011 = !DILocation(line: 178, column: 14, scope: !448)
!4012 = !DILocation(line: 180, column: 9, scope: !3989)
!4013 = !DILocation(line: 180, column: 7, scope: !448)
!4014 = !DILocation(line: 182, column: 13, scope: !3992)
!4015 = !DILocation(line: 182, column: 11, scope: !3993)
!4016 = !DILocation(line: 190, column: 30, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !3992, file: !445, line: 183, column: 9)
!4018 = !DILocation(line: 191, column: 16, scope: !4017)
!4019 = !DILocation(line: 191, column: 13, scope: !4017)
!4020 = !DILocation(line: 192, column: 9, scope: !4017)
!4021 = !DILocation(line: 197, column: 11, scope: !3996)
!4022 = !DILocation(line: 197, column: 11, scope: !3997)
!4023 = !DILocation(line: 198, column: 9, scope: !3996)
!4024 = !DILocation(line: 0, scope: !3803, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 201, column: 7, scope: !448)
!4026 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !4025)
!4027 = !DILocation(line: 0, scope: !3811, inlinedAt: !4028)
!4028 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !4025)
!4029 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4028)
!4030 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4028)
!4031 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4028)
!4032 = !DILocation(line: 202, column: 7, scope: !448)
!4033 = !DILocation(line: 203, column: 3, scope: !448)
!4034 = !DILocation(line: 0, scope: !460)
!4035 = !DILocation(line: 230, column: 14, scope: !460)
!4036 = !DILocation(line: 238, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !460, file: !445, line: 238, column: 7)
!4038 = !DILocation(line: 238, column: 7, scope: !460)
!4039 = !DILocation(line: 240, column: 9, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !460, file: !445, line: 240, column: 7)
!4041 = !DILocation(line: 240, column: 18, scope: !4040)
!4042 = !DILocation(line: 253, column: 8, scope: !460)
!4043 = !DILocation(line: 258, column: 27, scope: !4044)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !445, line: 257, column: 5)
!4045 = distinct !DILexicalBlock(scope: !460, file: !445, line: 256, column: 7)
!4046 = !DILocation(line: 259, column: 32, scope: !4044)
!4047 = !DILocation(line: 260, column: 5, scope: !4044)
!4048 = !DILocation(line: 262, column: 9, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !460, file: !445, line: 262, column: 7)
!4050 = !DILocation(line: 262, column: 7, scope: !460)
!4051 = !DILocation(line: 263, column: 9, scope: !4049)
!4052 = !DILocation(line: 263, column: 5, scope: !4049)
!4053 = !DILocation(line: 264, column: 9, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !460, file: !445, line: 264, column: 7)
!4055 = !DILocation(line: 264, column: 14, scope: !4054)
!4056 = !DILocation(line: 265, column: 7, scope: !4054)
!4057 = !DILocation(line: 265, column: 11, scope: !4054)
!4058 = !DILocation(line: 266, column: 11, scope: !4054)
!4059 = !DILocation(line: 266, column: 26, scope: !4054)
!4060 = !DILocation(line: 267, column: 14, scope: !4054)
!4061 = !DILocation(line: 264, column: 7, scope: !460)
!4062 = !DILocation(line: 268, column: 5, scope: !4054)
!4063 = !DILocation(line: 0, scope: !3877, inlinedAt: !4064)
!4064 = distinct !DILocation(line: 269, column: 8, scope: !460)
!4065 = !DILocation(line: 0, scope: !3885, inlinedAt: !4066)
!4066 = distinct !DILocation(line: 70, column: 25, scope: !3877, inlinedAt: !4064)
!4067 = !DILocation(line: 2059, column: 24, scope: !3885, inlinedAt: !4066)
!4068 = !DILocation(line: 2059, column: 10, scope: !3885, inlinedAt: !4066)
!4069 = !DILocation(line: 0, scope: !3811, inlinedAt: !4070)
!4070 = distinct !DILocation(line: 70, column: 10, scope: !3877, inlinedAt: !4064)
!4071 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4070)
!4072 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4070)
!4073 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4070)
!4074 = !DILocation(line: 270, column: 7, scope: !460)
!4075 = !DILocation(line: 271, column: 3, scope: !460)
!4076 = distinct !DISubprogram(name: "xzalloc", scope: !445, file: !445, line: 279, type: !3831, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4077)
!4077 = !{!4078}
!4078 = !DILocalVariable(name: "s", arg: 1, scope: !4076, file: !445, line: 279, type: !63)
!4079 = !DILocation(line: 0, scope: !4076)
!4080 = !DILocalVariable(name: "n", arg: 1, scope: !4081, file: !445, line: 294, type: !63)
!4081 = distinct !DISubprogram(name: "xcalloc", scope: !445, file: !445, line: 294, type: !3945, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4082)
!4082 = !{!4080, !4083}
!4083 = !DILocalVariable(name: "s", arg: 2, scope: !4081, file: !445, line: 294, type: !63)
!4084 = !DILocation(line: 0, scope: !4081, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 281, column: 10, scope: !4076)
!4086 = !DILocation(line: 296, column: 25, scope: !4081, inlinedAt: !4085)
!4087 = !DILocation(line: 0, scope: !3811, inlinedAt: !4088)
!4088 = distinct !DILocation(line: 296, column: 10, scope: !4081, inlinedAt: !4085)
!4089 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4088)
!4090 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4088)
!4091 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4088)
!4092 = !DILocation(line: 281, column: 3, scope: !4076)
!4093 = !DILocation(line: 0, scope: !4081)
!4094 = !DILocation(line: 296, column: 25, scope: !4081)
!4095 = !DILocation(line: 0, scope: !3811, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 296, column: 10, scope: !4081)
!4097 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4096)
!4098 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4096)
!4099 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4096)
!4100 = !DILocation(line: 296, column: 3, scope: !4081)
!4101 = distinct !DISubprogram(name: "xizalloc", scope: !445, file: !445, line: 285, type: !3844, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4102)
!4102 = !{!4103}
!4103 = !DILocalVariable(name: "s", arg: 1, scope: !4101, file: !445, line: 285, type: !464)
!4104 = !DILocation(line: 0, scope: !4101)
!4105 = !DILocalVariable(name: "n", arg: 1, scope: !4106, file: !445, line: 300, type: !464)
!4106 = distinct !DISubprogram(name: "xicalloc", scope: !445, file: !445, line: 300, type: !3961, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4107)
!4107 = !{!4105, !4108}
!4108 = !DILocalVariable(name: "s", arg: 2, scope: !4106, file: !445, line: 300, type: !464)
!4109 = !DILocation(line: 0, scope: !4106, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 287, column: 10, scope: !4101)
!4111 = !DILocalVariable(name: "n", arg: 1, scope: !4112, file: !3851, line: 77, type: !464)
!4112 = distinct !DISubprogram(name: "icalloc", scope: !3851, file: !3851, line: 77, type: !3961, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4113)
!4113 = !{!4111, !4114}
!4114 = !DILocalVariable(name: "s", arg: 2, scope: !4112, file: !3851, line: 77, type: !464)
!4115 = !DILocation(line: 0, scope: !4112, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 302, column: 25, scope: !4106, inlinedAt: !4110)
!4117 = !DILocation(line: 91, column: 10, scope: !4112, inlinedAt: !4116)
!4118 = !DILocation(line: 0, scope: !3811, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 302, column: 10, scope: !4106, inlinedAt: !4110)
!4120 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4119)
!4121 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4119)
!4122 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4119)
!4123 = !DILocation(line: 287, column: 3, scope: !4101)
!4124 = !DILocation(line: 0, scope: !4106)
!4125 = !DILocation(line: 0, scope: !4112, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 302, column: 25, scope: !4106)
!4127 = !DILocation(line: 91, column: 10, scope: !4112, inlinedAt: !4126)
!4128 = !DILocation(line: 0, scope: !3811, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 302, column: 10, scope: !4106)
!4130 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4129)
!4131 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4129)
!4132 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4129)
!4133 = !DILocation(line: 302, column: 3, scope: !4106)
!4134 = distinct !DISubprogram(name: "xmemdup", scope: !445, file: !445, line: 310, type: !4135, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!61, !754, !63}
!4137 = !{!4138, !4139}
!4138 = !DILocalVariable(name: "p", arg: 1, scope: !4134, file: !445, line: 310, type: !754)
!4139 = !DILocalVariable(name: "s", arg: 2, scope: !4134, file: !445, line: 310, type: !63)
!4140 = !DILocation(line: 0, scope: !4134)
!4141 = !DILocation(line: 0, scope: !3830, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 312, column: 18, scope: !4134)
!4143 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !4142)
!4144 = !DILocation(line: 0, scope: !3811, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !4142)
!4146 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4145)
!4147 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4145)
!4148 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4145)
!4149 = !DILocalVariable(name: "__dest", arg: 1, scope: !4150, file: !1979, line: 26, type: !4153)
!4150 = distinct !DISubprogram(name: "memcpy", scope: !1979, file: !1979, line: 26, type: !4151, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4154)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!61, !4153, !753, !63}
!4153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!4154 = !{!4149, !4155, !4156}
!4155 = !DILocalVariable(name: "__src", arg: 2, scope: !4150, file: !1979, line: 26, type: !753)
!4156 = !DILocalVariable(name: "__len", arg: 3, scope: !4150, file: !1979, line: 26, type: !63)
!4157 = !DILocation(line: 0, scope: !4150, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 312, column: 10, scope: !4134)
!4159 = !DILocation(line: 29, column: 10, scope: !4150, inlinedAt: !4158)
!4160 = !DILocation(line: 312, column: 3, scope: !4134)
!4161 = distinct !DISubprogram(name: "ximemdup", scope: !445, file: !445, line: 316, type: !4162, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4164)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{!61, !754, !464}
!4164 = !{!4165, !4166}
!4165 = !DILocalVariable(name: "p", arg: 1, scope: !4161, file: !445, line: 316, type: !754)
!4166 = !DILocalVariable(name: "s", arg: 2, scope: !4161, file: !445, line: 316, type: !464)
!4167 = !DILocation(line: 0, scope: !4161)
!4168 = !DILocation(line: 0, scope: !3843, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 318, column: 18, scope: !4161)
!4170 = !DILocation(line: 0, scope: !3850, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 55, column: 25, scope: !3843, inlinedAt: !4169)
!4172 = !DILocation(line: 57, column: 26, scope: !3850, inlinedAt: !4171)
!4173 = !DILocation(line: 0, scope: !3811, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 55, column: 10, scope: !3843, inlinedAt: !4169)
!4175 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4174)
!4176 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4174)
!4177 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4174)
!4178 = !DILocation(line: 0, scope: !4150, inlinedAt: !4179)
!4179 = distinct !DILocation(line: 318, column: 10, scope: !4161)
!4180 = !DILocation(line: 29, column: 10, scope: !4150, inlinedAt: !4179)
!4181 = !DILocation(line: 318, column: 3, scope: !4161)
!4182 = distinct !DISubprogram(name: "ximemdup0", scope: !445, file: !445, line: 325, type: !4183, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4185)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!59, !754, !464}
!4185 = !{!4186, !4187, !4188}
!4186 = !DILocalVariable(name: "p", arg: 1, scope: !4182, file: !445, line: 325, type: !754)
!4187 = !DILocalVariable(name: "s", arg: 2, scope: !4182, file: !445, line: 325, type: !464)
!4188 = !DILocalVariable(name: "result", scope: !4182, file: !445, line: 327, type: !59)
!4189 = !DILocation(line: 0, scope: !4182)
!4190 = !DILocation(line: 327, column: 30, scope: !4182)
!4191 = !DILocation(line: 0, scope: !3843, inlinedAt: !4192)
!4192 = distinct !DILocation(line: 327, column: 18, scope: !4182)
!4193 = !DILocation(line: 0, scope: !3850, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 55, column: 25, scope: !3843, inlinedAt: !4192)
!4195 = !DILocation(line: 57, column: 26, scope: !3850, inlinedAt: !4194)
!4196 = !DILocation(line: 0, scope: !3811, inlinedAt: !4197)
!4197 = distinct !DILocation(line: 55, column: 10, scope: !3843, inlinedAt: !4192)
!4198 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4197)
!4199 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4197)
!4200 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4197)
!4201 = !DILocation(line: 328, column: 3, scope: !4182)
!4202 = !DILocation(line: 328, column: 13, scope: !4182)
!4203 = !DILocation(line: 0, scope: !4150, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 329, column: 10, scope: !4182)
!4205 = !DILocation(line: 29, column: 10, scope: !4150, inlinedAt: !4204)
!4206 = !DILocation(line: 329, column: 3, scope: !4182)
!4207 = distinct !DISubprogram(name: "xstrdup", scope: !445, file: !445, line: 335, type: !748, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4208)
!4208 = !{!4209}
!4209 = !DILocalVariable(name: "string", arg: 1, scope: !4207, file: !445, line: 335, type: !66)
!4210 = !DILocation(line: 0, scope: !4207)
!4211 = !DILocation(line: 337, column: 27, scope: !4207)
!4212 = !DILocation(line: 337, column: 43, scope: !4207)
!4213 = !DILocation(line: 0, scope: !4134, inlinedAt: !4214)
!4214 = distinct !DILocation(line: 337, column: 10, scope: !4207)
!4215 = !DILocation(line: 0, scope: !3830, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 312, column: 18, scope: !4134, inlinedAt: !4214)
!4217 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !4216)
!4218 = !DILocation(line: 0, scope: !3811, inlinedAt: !4219)
!4219 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !4216)
!4220 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4219)
!4221 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4219)
!4222 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4219)
!4223 = !DILocation(line: 0, scope: !4150, inlinedAt: !4224)
!4224 = distinct !DILocation(line: 312, column: 10, scope: !4134, inlinedAt: !4214)
!4225 = !DILocation(line: 29, column: 10, scope: !4150, inlinedAt: !4224)
!4226 = !DILocation(line: 337, column: 3, scope: !4207)
!4227 = distinct !DISubprogram(name: "xalloc_die", scope: !479, file: !479, line: 32, type: !223, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !478, retainedNodes: !4228)
!4228 = !{!4229}
!4229 = !DILocalVariable(name: "__errstatus", scope: !4230, file: !479, line: 34, type: !4231)
!4230 = distinct !DILexicalBlock(scope: !4227, file: !479, line: 34, column: 3)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!4232 = !DILocation(line: 34, column: 3, scope: !4230)
!4233 = !DILocation(line: 0, scope: !4230)
!4234 = !DILocation(line: 40, column: 3, scope: !4227)
!4235 = distinct !DISubprogram(name: "close_stream", scope: !481, file: !481, line: 55, type: !4236, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !4272)
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!14, !4238}
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4240, file: !104, line: 51, baseType: !14, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4240, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4240, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4240, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4240, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4240, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4240, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4240, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4240, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4240, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4240, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4240, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4240, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4240, file: !104, line: 70, baseType: !4256, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4240, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4240, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4240, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4240, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4240, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4240, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4240, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4240, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4240, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4240, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4240, file: !104, line: 93, baseType: !4256, size: 64, offset: 1344)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4240, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4240, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4240, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4240, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4272 = !{!4273, !4274, !4276, !4277}
!4273 = !DILocalVariable(name: "stream", arg: 1, scope: !4235, file: !481, line: 55, type: !4238)
!4274 = !DILocalVariable(name: "some_pending", scope: !4235, file: !481, line: 57, type: !4275)
!4275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!4276 = !DILocalVariable(name: "prev_fail", scope: !4235, file: !481, line: 58, type: !4275)
!4277 = !DILocalVariable(name: "fclose_fail", scope: !4235, file: !481, line: 59, type: !4275)
!4278 = !DILocation(line: 0, scope: !4235)
!4279 = !DILocation(line: 57, column: 30, scope: !4235)
!4280 = !DILocalVariable(name: "__stream", arg: 1, scope: !4281, file: !1105, line: 135, type: !4238)
!4281 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1105, file: !1105, line: 135, type: !4236, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !480, retainedNodes: !4282)
!4282 = !{!4280}
!4283 = !DILocation(line: 0, scope: !4281, inlinedAt: !4284)
!4284 = distinct !DILocation(line: 58, column: 27, scope: !4235)
!4285 = !DILocation(line: 137, column: 10, scope: !4281, inlinedAt: !4284)
!4286 = !{!1114, !637, i64 0}
!4287 = !DILocation(line: 58, column: 43, scope: !4235)
!4288 = !DILocation(line: 59, column: 29, scope: !4235)
!4289 = !DILocation(line: 59, column: 45, scope: !4235)
!4290 = !DILocation(line: 69, column: 17, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4235, file: !481, line: 69, column: 7)
!4292 = !DILocation(line: 57, column: 50, scope: !4235)
!4293 = !DILocation(line: 69, column: 33, scope: !4291)
!4294 = !DILocation(line: 69, column: 53, scope: !4291)
!4295 = !DILocation(line: 69, column: 59, scope: !4291)
!4296 = !DILocation(line: 69, column: 7, scope: !4235)
!4297 = !DILocation(line: 71, column: 11, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4291, file: !481, line: 70, column: 5)
!4299 = !DILocation(line: 72, column: 9, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4298, file: !481, line: 71, column: 11)
!4301 = !DILocation(line: 72, column: 15, scope: !4300)
!4302 = !DILocation(line: 77, column: 1, scope: !4235)
!4303 = distinct !DISubprogram(name: "rpl_fclose", scope: !483, file: !483, line: 58, type: !4304, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !482, retainedNodes: !4340)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!14, !4306}
!4306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4308)
!4308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4309)
!4309 = !{!4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4308, file: !104, line: 51, baseType: !14, size: 32)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4308, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4308, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4308, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4308, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4308, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4308, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4308, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4308, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4308, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4308, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4308, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4308, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4308, file: !104, line: 70, baseType: !4324, size: 64, offset: 832)
!4324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4308, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4308, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4308, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4308, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4308, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4308, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4308, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4308, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4308, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4308, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4308, file: !104, line: 93, baseType: !4324, size: 64, offset: 1344)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4308, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4308, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4308, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4308, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4340 = !{!4341, !4342, !4343, !4344}
!4341 = !DILocalVariable(name: "fp", arg: 1, scope: !4303, file: !483, line: 58, type: !4306)
!4342 = !DILocalVariable(name: "saved_errno", scope: !4303, file: !483, line: 60, type: !14)
!4343 = !DILocalVariable(name: "fd", scope: !4303, file: !483, line: 63, type: !14)
!4344 = !DILocalVariable(name: "result", scope: !4303, file: !483, line: 74, type: !14)
!4345 = !DILocation(line: 0, scope: !4303)
!4346 = !DILocation(line: 63, column: 12, scope: !4303)
!4347 = !DILocation(line: 64, column: 10, scope: !4348)
!4348 = distinct !DILexicalBlock(scope: !4303, file: !483, line: 64, column: 7)
!4349 = !DILocation(line: 64, column: 7, scope: !4303)
!4350 = !DILocation(line: 65, column: 12, scope: !4348)
!4351 = !DILocation(line: 65, column: 5, scope: !4348)
!4352 = !DILocation(line: 70, column: 9, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4303, file: !483, line: 70, column: 7)
!4354 = !DILocation(line: 70, column: 23, scope: !4353)
!4355 = !DILocation(line: 70, column: 33, scope: !4353)
!4356 = !DILocation(line: 70, column: 26, scope: !4353)
!4357 = !DILocation(line: 70, column: 59, scope: !4353)
!4358 = !DILocation(line: 71, column: 7, scope: !4353)
!4359 = !DILocation(line: 71, column: 10, scope: !4353)
!4360 = !DILocation(line: 70, column: 7, scope: !4303)
!4361 = !DILocation(line: 100, column: 12, scope: !4303)
!4362 = !DILocation(line: 105, column: 7, scope: !4303)
!4363 = !DILocation(line: 72, column: 19, scope: !4353)
!4364 = !DILocation(line: 105, column: 19, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4303, file: !483, line: 105, column: 7)
!4366 = !DILocation(line: 107, column: 13, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4365, file: !483, line: 106, column: 5)
!4368 = !DILocation(line: 109, column: 5, scope: !4367)
!4369 = !DILocation(line: 112, column: 1, scope: !4303)
!4370 = !DISubprogram(name: "fileno", scope: !196, file: !196, line: 809, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4371 = !DISubprogram(name: "fclose", scope: !196, file: !196, line: 178, type: !4304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4372 = !DISubprogram(name: "lseek", scope: !1586, file: !1586, line: 339, type: !4373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!126, !14, !126, !14}
!4375 = distinct !DISubprogram(name: "open_safer", scope: !485, file: !485, line: 29, type: !4376, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !484, retainedNodes: !4378)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!14, !66, !14, null}
!4378 = !{!4379, !4380, !4381, !4382}
!4379 = !DILocalVariable(name: "file", arg: 1, scope: !4375, file: !485, line: 29, type: !66)
!4380 = !DILocalVariable(name: "flags", arg: 2, scope: !4375, file: !485, line: 29, type: !14)
!4381 = !DILocalVariable(name: "mode", scope: !4375, file: !485, line: 31, type: !506)
!4382 = !DILocalVariable(name: "ap", scope: !4383, file: !485, line: 35, type: !4385)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !485, line: 34, column: 5)
!4384 = distinct !DILexicalBlock(scope: !4375, file: !485, line: 33, column: 7)
!4385 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !198, line: 14, baseType: !4386)
!4386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4387, baseType: !4388)
!4387 = !DIFile(filename: "lib/open-safer.c", directory: "/src")
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !202, size: 256, elements: !4389)
!4389 = !{!4390, !4391, !4392, !4393, !4394}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4388, file: !4387, line: 35, baseType: !61, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4388, file: !4387, line: 35, baseType: !61, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4388, file: !4387, line: 35, baseType: !61, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4388, file: !4387, line: 35, baseType: !14, size: 32, offset: 192)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4388, file: !4387, line: 35, baseType: !14, size: 32, offset: 224)
!4395 = !DILocation(line: 0, scope: !4375)
!4396 = !DILocation(line: 33, column: 13, scope: !4384)
!4397 = !DILocation(line: 33, column: 7, scope: !4375)
!4398 = !DILocation(line: 35, column: 7, scope: !4383)
!4399 = !DILocation(line: 35, column: 15, scope: !4383)
!4400 = !DILocation(line: 36, column: 7, scope: !4383)
!4401 = !DILocation(line: 40, column: 14, scope: !4383)
!4402 = !DILocation(line: 42, column: 7, scope: !4383)
!4403 = !DILocation(line: 43, column: 5, scope: !4384)
!4404 = !DILocation(line: 43, column: 5, scope: !4383)
!4405 = !DILocation(line: 45, column: 20, scope: !4375)
!4406 = !DILocation(line: 45, column: 10, scope: !4375)
!4407 = !DILocation(line: 45, column: 3, scope: !4375)
!4408 = !DISubprogram(name: "open", scope: !1313, file: !1313, line: 181, type: !4376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4409 = distinct !DISubprogram(name: "rpl_fflush", scope: !487, file: !487, line: 130, type: !4410, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !4446)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!14, !4412}
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4414)
!4414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4415)
!4415 = !{!4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4414, file: !104, line: 51, baseType: !14, size: 32)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4414, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4414, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4414, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4414, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4414, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4414, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4414, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4414, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4414, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4414, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4414, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4414, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4414, file: !104, line: 70, baseType: !4430, size: 64, offset: 832)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4414, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4414, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4414, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4414, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4414, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4414, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4414, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4414, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4414, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4414, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4414, file: !104, line: 93, baseType: !4430, size: 64, offset: 1344)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4414, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4414, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4414, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4414, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4446 = !{!4447}
!4447 = !DILocalVariable(name: "stream", arg: 1, scope: !4409, file: !487, line: 130, type: !4412)
!4448 = !DILocation(line: 0, scope: !4409)
!4449 = !DILocation(line: 151, column: 14, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4409, file: !487, line: 151, column: 7)
!4451 = !DILocation(line: 151, column: 22, scope: !4450)
!4452 = !DILocation(line: 151, column: 27, scope: !4450)
!4453 = !DILocation(line: 151, column: 7, scope: !4409)
!4454 = !DILocation(line: 152, column: 12, scope: !4450)
!4455 = !DILocation(line: 152, column: 5, scope: !4450)
!4456 = !DILocalVariable(name: "fp", arg: 1, scope: !4457, file: !487, line: 42, type: !4412)
!4457 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !487, file: !487, line: 42, type: !4458, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !486, retainedNodes: !4460)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{null, !4412}
!4460 = !{!4456}
!4461 = !DILocation(line: 0, scope: !4457, inlinedAt: !4462)
!4462 = distinct !DILocation(line: 157, column: 3, scope: !4409)
!4463 = !DILocation(line: 44, column: 12, scope: !4464, inlinedAt: !4462)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !487, line: 44, column: 7)
!4465 = !DILocation(line: 44, column: 19, scope: !4464, inlinedAt: !4462)
!4466 = !DILocation(line: 44, column: 7, scope: !4457, inlinedAt: !4462)
!4467 = !DILocation(line: 46, column: 5, scope: !4464, inlinedAt: !4462)
!4468 = !DILocation(line: 159, column: 10, scope: !4409)
!4469 = !DILocation(line: 159, column: 3, scope: !4409)
!4470 = !DILocation(line: 236, column: 1, scope: !4409)
!4471 = !DISubprogram(name: "fflush", scope: !196, file: !196, line: 230, type: !4410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4472 = distinct !DISubprogram(name: "rpl_fseeko", scope: !489, file: !489, line: 28, type: !4473, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !488, retainedNodes: !4510)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!14, !4475, !4509, !14}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !102, line: 7, baseType: !4477)
!4477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !104, line: 49, size: 1728, elements: !4478)
!4478 = !{!4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4477, file: !104, line: 51, baseType: !14, size: 32)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4477, file: !104, line: 54, baseType: !59, size: 64, offset: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4477, file: !104, line: 55, baseType: !59, size: 64, offset: 128)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4477, file: !104, line: 56, baseType: !59, size: 64, offset: 192)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4477, file: !104, line: 57, baseType: !59, size: 64, offset: 256)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4477, file: !104, line: 58, baseType: !59, size: 64, offset: 320)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4477, file: !104, line: 59, baseType: !59, size: 64, offset: 384)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4477, file: !104, line: 60, baseType: !59, size: 64, offset: 448)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4477, file: !104, line: 61, baseType: !59, size: 64, offset: 512)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4477, file: !104, line: 64, baseType: !59, size: 64, offset: 576)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4477, file: !104, line: 65, baseType: !59, size: 64, offset: 640)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4477, file: !104, line: 66, baseType: !59, size: 64, offset: 704)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4477, file: !104, line: 68, baseType: !119, size: 64, offset: 768)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4477, file: !104, line: 70, baseType: !4493, size: 64, offset: 832)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4477, file: !104, line: 72, baseType: !14, size: 32, offset: 896)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4477, file: !104, line: 73, baseType: !14, size: 32, offset: 928)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4477, file: !104, line: 74, baseType: !126, size: 64, offset: 960)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4477, file: !104, line: 77, baseType: !62, size: 16, offset: 1024)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4477, file: !104, line: 78, baseType: !130, size: 8, offset: 1040)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4477, file: !104, line: 79, baseType: !132, size: 8, offset: 1048)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4477, file: !104, line: 81, baseType: !136, size: 64, offset: 1088)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4477, file: !104, line: 89, baseType: !139, size: 64, offset: 1152)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4477, file: !104, line: 91, baseType: !141, size: 64, offset: 1216)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4477, file: !104, line: 92, baseType: !144, size: 64, offset: 1280)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4477, file: !104, line: 93, baseType: !4493, size: 64, offset: 1344)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4477, file: !104, line: 94, baseType: !61, size: 64, offset: 1408)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4477, file: !104, line: 95, baseType: !63, size: 64, offset: 1472)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4477, file: !104, line: 96, baseType: !14, size: 32, offset: 1536)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4477, file: !104, line: 98, baseType: !151, size: 160, offset: 1568)
!4509 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !196, line: 63, baseType: !126)
!4510 = !{!4511, !4512, !4513, !4514}
!4511 = !DILocalVariable(name: "fp", arg: 1, scope: !4472, file: !489, line: 28, type: !4475)
!4512 = !DILocalVariable(name: "offset", arg: 2, scope: !4472, file: !489, line: 28, type: !4509)
!4513 = !DILocalVariable(name: "whence", arg: 3, scope: !4472, file: !489, line: 28, type: !14)
!4514 = !DILocalVariable(name: "pos", scope: !4515, file: !489, line: 123, type: !4509)
!4515 = distinct !DILexicalBlock(scope: !4516, file: !489, line: 119, column: 5)
!4516 = distinct !DILexicalBlock(scope: !4472, file: !489, line: 55, column: 7)
!4517 = !DILocation(line: 0, scope: !4472)
!4518 = !DILocation(line: 55, column: 12, scope: !4516)
!4519 = !{!1114, !545, i64 16}
!4520 = !DILocation(line: 55, column: 33, scope: !4516)
!4521 = !{!1114, !545, i64 8}
!4522 = !DILocation(line: 55, column: 25, scope: !4516)
!4523 = !DILocation(line: 56, column: 7, scope: !4516)
!4524 = !DILocation(line: 56, column: 15, scope: !4516)
!4525 = !DILocation(line: 56, column: 37, scope: !4516)
!4526 = !{!1114, !545, i64 32}
!4527 = !DILocation(line: 56, column: 29, scope: !4516)
!4528 = !DILocation(line: 57, column: 7, scope: !4516)
!4529 = !DILocation(line: 57, column: 15, scope: !4516)
!4530 = !{!1114, !545, i64 72}
!4531 = !DILocation(line: 57, column: 29, scope: !4516)
!4532 = !DILocation(line: 55, column: 7, scope: !4472)
!4533 = !DILocation(line: 123, column: 26, scope: !4515)
!4534 = !DILocation(line: 123, column: 19, scope: !4515)
!4535 = !DILocation(line: 0, scope: !4515)
!4536 = !DILocation(line: 124, column: 15, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4515, file: !489, line: 124, column: 11)
!4538 = !DILocation(line: 124, column: 11, scope: !4515)
!4539 = !DILocation(line: 135, column: 12, scope: !4515)
!4540 = !DILocation(line: 135, column: 19, scope: !4515)
!4541 = !DILocation(line: 136, column: 12, scope: !4515)
!4542 = !DILocation(line: 136, column: 20, scope: !4515)
!4543 = !{!1114, !1115, i64 144}
!4544 = !DILocation(line: 167, column: 7, scope: !4515)
!4545 = !DILocation(line: 169, column: 10, scope: !4472)
!4546 = !DILocation(line: 169, column: 3, scope: !4472)
!4547 = !DILocation(line: 170, column: 1, scope: !4472)
!4548 = !DISubprogram(name: "fseeko", scope: !196, file: !196, line: 736, type: !4549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!14, !4475, !126, !14}
!4551 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !359, file: !359, line: 100, type: !4552, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4555)
!4552 = !DISubroutineType(types: !4553)
!4553 = !{!63, !1997, !66, !63, !4554}
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!4555 = !{!4556, !4557, !4558, !4559, !4560}
!4556 = !DILocalVariable(name: "pwc", arg: 1, scope: !4551, file: !359, line: 100, type: !1997)
!4557 = !DILocalVariable(name: "s", arg: 2, scope: !4551, file: !359, line: 100, type: !66)
!4558 = !DILocalVariable(name: "n", arg: 3, scope: !4551, file: !359, line: 100, type: !63)
!4559 = !DILocalVariable(name: "ps", arg: 4, scope: !4551, file: !359, line: 100, type: !4554)
!4560 = !DILocalVariable(name: "ret", scope: !4551, file: !359, line: 130, type: !63)
!4561 = !DILocation(line: 0, scope: !4551)
!4562 = !DILocation(line: 105, column: 9, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4551, file: !359, line: 105, column: 7)
!4564 = !DILocation(line: 105, column: 7, scope: !4551)
!4565 = !DILocation(line: 117, column: 10, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !4551, file: !359, line: 117, column: 7)
!4567 = !DILocation(line: 117, column: 7, scope: !4551)
!4568 = !DILocation(line: 130, column: 16, scope: !4551)
!4569 = !DILocation(line: 135, column: 11, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4551, file: !359, line: 135, column: 7)
!4571 = !DILocation(line: 135, column: 25, scope: !4570)
!4572 = !DILocation(line: 135, column: 30, scope: !4570)
!4573 = !DILocation(line: 135, column: 7, scope: !4551)
!4574 = !DILocalVariable(name: "ps", arg: 1, scope: !4575, file: !1970, line: 1135, type: !4554)
!4575 = distinct !DISubprogram(name: "mbszero", scope: !1970, file: !1970, line: 1135, type: !4576, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4578)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{null, !4554}
!4578 = !{!4574}
!4579 = !DILocation(line: 0, scope: !4575, inlinedAt: !4580)
!4580 = distinct !DILocation(line: 137, column: 5, scope: !4570)
!4581 = !DILocalVariable(name: "__dest", arg: 1, scope: !4582, file: !1979, line: 57, type: !61)
!4582 = distinct !DISubprogram(name: "memset", scope: !1979, file: !1979, line: 57, type: !1980, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !358, retainedNodes: !4583)
!4583 = !{!4581, !4584, !4585}
!4584 = !DILocalVariable(name: "__ch", arg: 2, scope: !4582, file: !1979, line: 57, type: !14)
!4585 = !DILocalVariable(name: "__len", arg: 3, scope: !4582, file: !1979, line: 57, type: !63)
!4586 = !DILocation(line: 0, scope: !4582, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 1137, column: 3, scope: !4575, inlinedAt: !4580)
!4588 = !DILocation(line: 59, column: 10, scope: !4582, inlinedAt: !4587)
!4589 = !DILocation(line: 137, column: 5, scope: !4570)
!4590 = !DILocation(line: 138, column: 11, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4551, file: !359, line: 138, column: 7)
!4592 = !DILocation(line: 138, column: 7, scope: !4551)
!4593 = !DILocation(line: 139, column: 5, scope: !4591)
!4594 = !DILocation(line: 143, column: 26, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4551, file: !359, line: 143, column: 7)
!4596 = !DILocation(line: 143, column: 41, scope: !4595)
!4597 = !DILocation(line: 143, column: 7, scope: !4551)
!4598 = !DILocation(line: 145, column: 15, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4600, file: !359, line: 145, column: 11)
!4600 = distinct !DILexicalBlock(scope: !4595, file: !359, line: 144, column: 5)
!4601 = !DILocation(line: 145, column: 11, scope: !4600)
!4602 = !DILocation(line: 146, column: 32, scope: !4599)
!4603 = !DILocation(line: 146, column: 16, scope: !4599)
!4604 = !DILocation(line: 146, column: 14, scope: !4599)
!4605 = !DILocation(line: 146, column: 9, scope: !4599)
!4606 = !DILocation(line: 286, column: 1, scope: !4551)
!4607 = !DISubprogram(name: "mbsinit", scope: !4608, file: !4608, line: 293, type: !4609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4608 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!14, !4611}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!4613 = distinct !DISubprogram(name: "mkancesdirs", scope: !491, file: !491, line: 65, type: !4614, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !490, retainedNodes: !4617)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{!466, !59, !4616, !770, !61}
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!4617 = !{!4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4633, !4634}
!4618 = !DILocalVariable(name: "file", arg: 1, scope: !4613, file: !491, line: 65, type: !59)
!4619 = !DILocalVariable(name: "wd", arg: 2, scope: !4613, file: !491, line: 65, type: !4616)
!4620 = !DILocalVariable(name: "make_dir", arg: 3, scope: !4613, file: !491, line: 66, type: !770)
!4621 = !DILocalVariable(name: "make_dir_arg", arg: 4, scope: !4613, file: !491, line: 67, type: !61)
!4622 = !DILocalVariable(name: "sep", scope: !4613, file: !491, line: 72, type: !59)
!4623 = !DILocalVariable(name: "component", scope: !4613, file: !491, line: 76, type: !59)
!4624 = !DILocalVariable(name: "p", scope: !4613, file: !491, line: 78, type: !59)
!4625 = !DILocalVariable(name: "c", scope: !4613, file: !491, line: 79, type: !60)
!4626 = !DILocalVariable(name: "made_dir", scope: !4613, file: !491, line: 80, type: !87)
!4627 = !DILocalVariable(name: "make_dir_errno", scope: !4628, file: !491, line: 106, type: !14)
!4628 = distinct !DILexicalBlock(scope: !4629, file: !491, line: 99, column: 11)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !491, line: 98, column: 13)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !491, line: 95, column: 7)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !491, line: 94, column: 14)
!4632 = distinct !DILexicalBlock(scope: !4613, file: !491, line: 89, column: 9)
!4633 = !DILocalVariable(name: "savewd_chdir_options", scope: !4628, file: !491, line: 115, type: !14)
!4634 = !DILocalVariable(name: "chdir_result", scope: !4628, file: !491, line: 119, type: !14)
!4635 = !DILocation(line: 0, scope: !4613)
!4636 = !DILocation(line: 88, column: 15, scope: !4613)
!4637 = !DILocation(line: 88, column: 3, scope: !4613)
!4638 = !DILocation(line: 88, column: 17, scope: !4613)
!4639 = !DILocation(line: 89, column: 9, scope: !4632)
!4640 = !DILocation(line: 0, scope: !4632)
!4641 = !DILocation(line: 89, column: 9, scope: !4613)
!4642 = !DILocation(line: 91, column: 13, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4632, file: !491, line: 90, column: 7)
!4644 = !DILocation(line: 94, column: 26, scope: !4631)
!4645 = !DILocation(line: 94, column: 29, scope: !4631)
!4646 = !DILocation(line: 94, column: 32, scope: !4631)
!4647 = !DILocation(line: 98, column: 20, scope: !4629)
!4648 = !DILocation(line: 98, column: 32, scope: !4629)
!4649 = !DILocation(line: 98, column: 37, scope: !4629)
!4650 = !DILocation(line: 98, column: 40, scope: !4629)
!4651 = !DILocation(line: 98, column: 53, scope: !4629)
!4652 = !DILocation(line: 98, column: 13, scope: !4630)
!4653 = !DILocation(line: 102, column: 18, scope: !4628)
!4654 = !DILocation(line: 0, scope: !4628)
!4655 = !DILocation(line: 108, column: 17, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4628, file: !491, line: 107, column: 17)
!4657 = !DILocation(line: 107, column: 33, scope: !4656)
!4658 = !DILocation(line: 108, column: 20, scope: !4656)
!4659 = !DILocation(line: 108, column: 33, scope: !4656)
!4660 = !DILocation(line: 108, column: 40, scope: !4656)
!4661 = !DILocation(line: 108, column: 43, scope: !4656)
!4662 = !DILocation(line: 108, column: 56, scope: !4656)
!4663 = !DILocation(line: 107, column: 17, scope: !4628)
!4664 = !DILocation(line: 110, column: 22, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !4656, file: !491, line: 110, column: 22)
!4666 = !DILocation(line: 110, column: 63, scope: !4665)
!4667 = !DILocation(line: 110, column: 22, scope: !4656)
!4668 = !DILocation(line: 111, column: 32, scope: !4665)
!4669 = !DILocation(line: 116, column: 17, scope: !4628)
!4670 = !DILocation(line: 120, column: 15, scope: !4628)
!4671 = !DILocation(line: 124, column: 30, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4628, file: !491, line: 124, column: 17)
!4673 = !DILocation(line: 124, column: 17, scope: !4628)
!4674 = !DILocation(line: 125, column: 20, scope: !4672)
!4675 = !DILocation(line: 127, column: 30, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4628, file: !491, line: 127, column: 17)
!4677 = !DILocation(line: 127, column: 17, scope: !4628)
!4678 = !DILocation(line: 129, column: 36, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4680, file: !491, line: 129, column: 21)
!4680 = distinct !DILexicalBlock(scope: !4676, file: !491, line: 128, column: 15)
!4681 = !DILocation(line: 129, column: 41, scope: !4679)
!4682 = !DILocation(line: 129, column: 44, scope: !4679)
!4683 = !DILocation(line: 129, column: 50, scope: !4679)
!4684 = !DILocation(line: 129, column: 21, scope: !4680)
!4685 = !DILocation(line: 130, column: 25, scope: !4679)
!4686 = !DILocation(line: 130, column: 19, scope: !4679)
!4687 = !DILocation(line: 131, column: 24, scope: !4680)
!4688 = distinct !{!4688, !4637, !4689, !603}
!4689 = !DILocation(line: 136, column: 7, scope: !4613)
!4690 = !DILocation(line: 76, column: 9, scope: !4613)
!4691 = !DILocation(line: 138, column: 20, scope: !4613)
!4692 = !DILocation(line: 138, column: 3, scope: !4613)
!4693 = !DILocation(line: 139, column: 1, scope: !4613)
!4694 = distinct !DISubprogram(name: "dirchownmod", scope: !504, file: !504, line: 67, type: !4695, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !503, retainedNodes: !4697)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!14, !14, !66, !506, !69, !71, !506, !506}
!4697 = !{!4698, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4728, !4729, !4732, !4735, !4738}
!4698 = !DILocalVariable(name: "fd", arg: 1, scope: !4694, file: !504, line: 67, type: !14)
!4699 = !DILocalVariable(name: "dir", arg: 2, scope: !4694, file: !504, line: 67, type: !66)
!4700 = !DILocalVariable(name: "mkdir_mode", arg: 3, scope: !4694, file: !504, line: 67, type: !506)
!4701 = !DILocalVariable(name: "owner", arg: 4, scope: !4694, file: !504, line: 68, type: !69)
!4702 = !DILocalVariable(name: "group", arg: 5, scope: !4694, file: !504, line: 68, type: !71)
!4703 = !DILocalVariable(name: "mode", arg: 6, scope: !4694, file: !504, line: 69, type: !506)
!4704 = !DILocalVariable(name: "mode_bits", arg: 7, scope: !4694, file: !504, line: 69, type: !506)
!4705 = !DILocalVariable(name: "st", scope: !4694, file: !504, line: 71, type: !4706)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1420, line: 44, size: 1024, elements: !4707)
!4707 = !{!4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4725, !4726, !4727}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !4706, file: !1420, line: 46, baseType: !1423, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !4706, file: !1420, line: 47, baseType: !1425, size: 64, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !4706, file: !1420, line: 48, baseType: !507, size: 32, offset: 128)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !4706, file: !1420, line: 49, baseType: !1428, size: 32, offset: 160)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !4706, file: !1420, line: 50, baseType: !70, size: 32, offset: 192)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !4706, file: !1420, line: 51, baseType: !72, size: 32, offset: 224)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !4706, file: !1420, line: 52, baseType: !1423, size: 64, offset: 256)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !4706, file: !1420, line: 53, baseType: !1423, size: 64, offset: 320)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !4706, file: !1420, line: 54, baseType: !126, size: 64, offset: 384)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !4706, file: !1420, line: 55, baseType: !1435, size: 32, offset: 448)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !4706, file: !1420, line: 56, baseType: !14, size: 32, offset: 480)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !4706, file: !1420, line: 57, baseType: !1438, size: 64, offset: 512)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !4706, file: !1420, line: 65, baseType: !4721, size: 128, offset: 576)
!4721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1441, line: 11, size: 128, elements: !4722)
!4722 = !{!4723, !4724}
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4721, file: !1441, line: 16, baseType: !1444, size: 64)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4721, file: !1441, line: 21, baseType: !1446, size: 64, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !4706, file: !1420, line: 66, baseType: !4721, size: 128, offset: 704)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !4706, file: !1420, line: 67, baseType: !4721, size: 128, offset: 832)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !4706, file: !1420, line: 79, baseType: !1450, size: 64, offset: 960)
!4728 = !DILocalVariable(name: "result", scope: !4694, file: !504, line: 72, type: !14)
!4729 = !DILocalVariable(name: "dir_mode", scope: !4730, file: !504, line: 76, type: !506)
!4730 = distinct !DILexicalBlock(scope: !4731, file: !504, line: 75, column: 5)
!4731 = distinct !DILexicalBlock(scope: !4694, file: !504, line: 74, column: 7)
!4732 = !DILocalVariable(name: "indeterminate", scope: !4733, file: !504, line: 93, type: !506)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !504, line: 88, column: 9)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !504, line: 82, column: 11)
!4735 = !DILocalVariable(name: "chmod_mode", scope: !4736, file: !504, line: 123, type: !506)
!4736 = distinct !DILexicalBlock(scope: !4737, file: !504, line: 122, column: 13)
!4737 = distinct !DILexicalBlock(scope: !4733, file: !504, line: 121, column: 15)
!4738 = !DILocalVariable(name: "saved_errno", scope: !4739, file: !504, line: 140, type: !14)
!4739 = distinct !DILexicalBlock(scope: !4740, file: !504, line: 139, column: 9)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !504, line: 136, column: 11)
!4741 = distinct !DILexicalBlock(scope: !4742, file: !504, line: 135, column: 5)
!4742 = distinct !DILexicalBlock(scope: !4694, file: !504, line: 134, column: 7)
!4743 = !DILocation(line: 0, scope: !4694)
!4744 = !DILocation(line: 71, column: 3, scope: !4694)
!4745 = !DILocation(line: 71, column: 15, scope: !4694)
!4746 = !DILocation(line: 72, column: 20, scope: !4694)
!4747 = !DILocation(line: 72, column: 17, scope: !4694)
!4748 = !DILocation(line: 72, column: 26, scope: !4694)
!4749 = !DILocation(line: 72, column: 44, scope: !4694)
!4750 = !DILocation(line: 74, column: 14, scope: !4731)
!4751 = !DILocation(line: 74, column: 7, scope: !4694)
!4752 = !DILocation(line: 76, column: 28, scope: !4730)
!4753 = !DILocation(line: 0, scope: !4730)
!4754 = !DILocation(line: 82, column: 13, scope: !4734)
!4755 = !DILocation(line: 82, column: 11, scope: !4730)
!4756 = !DILocation(line: 84, column: 11, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4734, file: !504, line: 83, column: 9)
!4758 = !DILocation(line: 84, column: 17, scope: !4757)
!4759 = !DILocation(line: 86, column: 9, scope: !4757)
!4760 = !DILocation(line: 0, scope: !4733)
!4761 = !DILocation(line: 100, column: 22, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4733, file: !504, line: 100, column: 15)
!4763 = !DILocation(line: 100, column: 36, scope: !4762)
!4764 = !DILocation(line: 101, column: 25, scope: !4762)
!4765 = !DILocation(line: 101, column: 39, scope: !4762)
!4766 = !DILocation(line: 103, column: 42, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4762, file: !504, line: 102, column: 13)
!4768 = !DILocation(line: 103, column: 25, scope: !4767)
!4769 = !DILocation(line: 104, column: 27, scope: !4767)
!4770 = !DILocation(line: 105, column: 38, scope: !4767)
!4771 = !DILocation(line: 105, column: 27, scope: !4767)
!4772 = !DILocation(line: 106, column: 27, scope: !4767)
!4773 = !DILocation(line: 107, column: 27, scope: !4767)
!4774 = !DILocation(line: 114, column: 26, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4767, file: !504, line: 114, column: 19)
!4776 = !DILocation(line: 114, column: 31, scope: !4775)
!4777 = !DILocation(line: 114, column: 44, scope: !4775)
!4778 = !DILocation(line: 114, column: 19, scope: !4767)
!4779 = !DILocation(line: 121, column: 42, scope: !4737)
!4780 = !DILocation(line: 121, column: 50, scope: !4737)
!4781 = !DILocation(line: 121, column: 67, scope: !4737)
!4782 = !DILocation(line: 121, column: 15, scope: !4733)
!4783 = !DILocation(line: 124, column: 34, scope: !4736)
!4784 = !DILocation(line: 124, column: 52, scope: !4736)
!4785 = !DILocation(line: 124, column: 22, scope: !4736)
!4786 = !DILocation(line: 0, scope: !4736)
!4787 = !DILocation(line: 125, column: 42, scope: !4736)
!4788 = !DILocation(line: 125, column: 25, scope: !4736)
!4789 = !DILocation(line: 126, column: 27, scope: !4736)
!4790 = !DILocation(line: 134, column: 7, scope: !4694)
!4791 = !DILocation(line: 127, column: 38, scope: !4736)
!4792 = !DILocation(line: 127, column: 27, scope: !4736)
!4793 = !DILocation(line: 128, column: 27, scope: !4736)
!4794 = !DILocation(line: 129, column: 27, scope: !4736)
!4795 = !DILocation(line: 134, column: 9, scope: !4742)
!4796 = !DILocation(line: 136, column: 18, scope: !4740)
!4797 = !DILocation(line: 136, column: 11, scope: !4741)
!4798 = !DILocation(line: 137, column: 18, scope: !4740)
!4799 = !DILocation(line: 137, column: 9, scope: !4740)
!4800 = !DILocation(line: 140, column: 29, scope: !4739)
!4801 = !DILocation(line: 0, scope: !4739)
!4802 = !DILocation(line: 141, column: 11, scope: !4739)
!4803 = !DILocation(line: 142, column: 17, scope: !4739)
!4804 = !DILocation(line: 147, column: 1, scope: !4694)
!4805 = !DILocation(line: 146, column: 3, scope: !4694)
!4806 = !DISubprogram(name: "fstat", scope: !964, file: !964, line: 210, type: !4807, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!14, !14, !4809}
!4809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4810 = !DISubprogram(name: "fchown", scope: !1586, file: !1586, line: 498, type: !4811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4811 = !DISubroutineType(types: !4812)
!4812 = !{!14, !14, !70, !72}
!4813 = !DISubprogram(name: "lchown", scope: !1586, file: !1586, line: 503, type: !4814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4814 = !DISubroutineType(types: !4815)
!4815 = !{!14, !66, !70, !72}
!4816 = !DISubprogram(name: "chown", scope: !1586, file: !1586, line: 493, type: !4814, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4817 = !DISubprogram(name: "fchmod", scope: !964, file: !964, line: 365, type: !4818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!14, !14, !507}
!4820 = !DISubprogram(name: "lchmod", scope: !964, file: !964, line: 359, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4821 = !DISubprogram(name: "chmod", scope: !964, file: !964, line: 352, type: !1026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !553)
!4822 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !509, file: !509, line: 27, type: !3795, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4823)
!4823 = !{!4824, !4825, !4826, !4827}
!4824 = !DILocalVariable(name: "ptr", arg: 1, scope: !4822, file: !509, line: 27, type: !61)
!4825 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4822, file: !509, line: 27, type: !63)
!4826 = !DILocalVariable(name: "size", arg: 3, scope: !4822, file: !509, line: 27, type: !63)
!4827 = !DILocalVariable(name: "nbytes", scope: !4822, file: !509, line: 29, type: !63)
!4828 = !DILocation(line: 0, scope: !4822)
!4829 = !DILocation(line: 30, column: 7, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4822, file: !509, line: 30, column: 7)
!4831 = !DILocalVariable(name: "ptr", arg: 1, scope: !4832, file: !3886, line: 2057, type: !61)
!4832 = distinct !DISubprogram(name: "rpl_realloc", scope: !3886, file: !3886, line: 2057, type: !3878, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !508, retainedNodes: !4833)
!4833 = !{!4831, !4834}
!4834 = !DILocalVariable(name: "size", arg: 2, scope: !4832, file: !3886, line: 2057, type: !63)
!4835 = !DILocation(line: 0, scope: !4832, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 37, column: 10, scope: !4822)
!4837 = !DILocation(line: 2059, column: 24, scope: !4832, inlinedAt: !4836)
!4838 = !DILocation(line: 2059, column: 10, scope: !4832, inlinedAt: !4836)
!4839 = !DILocation(line: 37, column: 3, scope: !4822)
!4840 = !DILocation(line: 32, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4830, file: !509, line: 31, column: 5)
!4842 = !DILocation(line: 32, column: 13, scope: !4841)
!4843 = !DILocation(line: 33, column: 7, scope: !4841)
!4844 = !DILocation(line: 38, column: 1, scope: !4822)
!4845 = distinct !DISubprogram(name: "fd_safer", scope: !512, file: !512, line: 37, type: !1194, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !511, retainedNodes: !4846)
!4846 = !{!4847, !4848, !4851}
!4847 = !DILocalVariable(name: "fd", arg: 1, scope: !4845, file: !512, line: 37, type: !14)
!4848 = !DILocalVariable(name: "f", scope: !4849, file: !512, line: 41, type: !14)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !512, line: 40, column: 5)
!4850 = distinct !DILexicalBlock(scope: !4845, file: !512, line: 39, column: 7)
!4851 = !DILocalVariable(name: "saved_errno", scope: !4849, file: !512, line: 42, type: !14)
!4852 = !DILocation(line: 0, scope: !4845)
!4853 = !DILocation(line: 39, column: 26, scope: !4850)
!4854 = !DILocation(line: 41, column: 15, scope: !4849)
!4855 = !DILocation(line: 0, scope: !4849)
!4856 = !DILocation(line: 42, column: 25, scope: !4849)
!4857 = !DILocation(line: 43, column: 7, scope: !4849)
!4858 = !DILocation(line: 44, column: 13, scope: !4849)
!4859 = !DILocation(line: 46, column: 5, scope: !4849)
!4860 = !DILocation(line: 48, column: 3, scope: !4845)
!4861 = distinct !DISubprogram(name: "hard_locale", scope: !514, file: !514, line: 28, type: !4862, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4864)
!4862 = !DISubroutineType(types: !4863)
!4863 = !{!87, !14}
!4864 = !{!4865, !4866}
!4865 = !DILocalVariable(name: "category", arg: 1, scope: !4861, file: !514, line: 28, type: !14)
!4866 = !DILocalVariable(name: "locale", scope: !4861, file: !514, line: 30, type: !4867)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 2056, elements: !4868)
!4868 = !{!4869}
!4869 = !DISubrange(count: 257)
!4870 = !DILocation(line: 0, scope: !4861)
!4871 = !DILocation(line: 30, column: 3, scope: !4861)
!4872 = !DILocation(line: 30, column: 8, scope: !4861)
!4873 = !DILocation(line: 32, column: 7, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4861, file: !514, line: 32, column: 7)
!4875 = !DILocation(line: 32, column: 7, scope: !4861)
!4876 = !DILocalVariable(name: "__s1", arg: 1, scope: !4877, file: !587, line: 1359, type: !66)
!4877 = distinct !DISubprogram(name: "streq", scope: !587, file: !587, line: 1359, type: !588, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !513, retainedNodes: !4878)
!4878 = !{!4876, !4879}
!4879 = !DILocalVariable(name: "__s2", arg: 2, scope: !4877, file: !587, line: 1359, type: !66)
!4880 = !DILocation(line: 0, scope: !4877, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 35, column: 9, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4861, file: !514, line: 35, column: 7)
!4883 = !DILocation(line: 1361, column: 11, scope: !4877, inlinedAt: !4881)
!4884 = !DILocation(line: 1361, column: 10, scope: !4877, inlinedAt: !4881)
!4885 = !DILocation(line: 35, column: 29, scope: !4882)
!4886 = !DILocation(line: 0, scope: !4877, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 35, column: 32, scope: !4882)
!4888 = !DILocation(line: 1361, column: 11, scope: !4877, inlinedAt: !4887)
!4889 = !DILocation(line: 1361, column: 10, scope: !4877, inlinedAt: !4887)
!4890 = !DILocation(line: 35, column: 7, scope: !4861)
!4891 = !DILocation(line: 46, column: 3, scope: !4861)
!4892 = !DILocation(line: 47, column: 1, scope: !4861)
!4893 = distinct !DISubprogram(name: "setlocale_null_r", scope: !516, file: !516, line: 154, type: !4894, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4896)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!14, !14, !59, !63}
!4896 = !{!4897, !4898, !4899}
!4897 = !DILocalVariable(name: "category", arg: 1, scope: !4893, file: !516, line: 154, type: !14)
!4898 = !DILocalVariable(name: "buf", arg: 2, scope: !4893, file: !516, line: 154, type: !59)
!4899 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4893, file: !516, line: 154, type: !63)
!4900 = !DILocation(line: 0, scope: !4893)
!4901 = !DILocation(line: 159, column: 10, scope: !4893)
!4902 = !DILocation(line: 159, column: 3, scope: !4893)
!4903 = distinct !DISubprogram(name: "setlocale_null", scope: !516, file: !516, line: 186, type: !4904, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !515, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!66, !14}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "category", arg: 1, scope: !4903, file: !516, line: 186, type: !14)
!4908 = !DILocation(line: 0, scope: !4903)
!4909 = !DILocation(line: 189, column: 10, scope: !4903)
!4910 = !DILocation(line: 189, column: 3, scope: !4903)
!4911 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !518, file: !518, line: 35, type: !4904, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4912)
!4912 = !{!4913, !4914}
!4913 = !DILocalVariable(name: "category", arg: 1, scope: !4911, file: !518, line: 35, type: !14)
!4914 = !DILocalVariable(name: "result", scope: !4911, file: !518, line: 37, type: !66)
!4915 = !DILocation(line: 0, scope: !4911)
!4916 = !DILocation(line: 37, column: 24, scope: !4911)
!4917 = !DILocation(line: 62, column: 3, scope: !4911)
!4918 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !518, file: !518, line: 66, type: !4894, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924}
!4920 = !DILocalVariable(name: "category", arg: 1, scope: !4918, file: !518, line: 66, type: !14)
!4921 = !DILocalVariable(name: "buf", arg: 2, scope: !4918, file: !518, line: 66, type: !59)
!4922 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4918, file: !518, line: 66, type: !63)
!4923 = !DILocalVariable(name: "result", scope: !4918, file: !518, line: 111, type: !66)
!4924 = !DILocalVariable(name: "length", scope: !4925, file: !518, line: 125, type: !63)
!4925 = distinct !DILexicalBlock(scope: !4926, file: !518, line: 124, column: 5)
!4926 = distinct !DILexicalBlock(scope: !4918, file: !518, line: 113, column: 7)
!4927 = !DILocation(line: 0, scope: !4918)
!4928 = !DILocation(line: 0, scope: !4911, inlinedAt: !4929)
!4929 = distinct !DILocation(line: 111, column: 24, scope: !4918)
!4930 = !DILocation(line: 37, column: 24, scope: !4911, inlinedAt: !4929)
!4931 = !DILocation(line: 113, column: 14, scope: !4926)
!4932 = !DILocation(line: 113, column: 7, scope: !4918)
!4933 = !DILocation(line: 116, column: 19, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4935, file: !518, line: 116, column: 11)
!4935 = distinct !DILexicalBlock(scope: !4926, file: !518, line: 114, column: 5)
!4936 = !DILocation(line: 116, column: 11, scope: !4935)
!4937 = !DILocation(line: 120, column: 16, scope: !4934)
!4938 = !DILocation(line: 120, column: 9, scope: !4934)
!4939 = !DILocation(line: 125, column: 23, scope: !4925)
!4940 = !DILocation(line: 0, scope: !4925)
!4941 = !DILocation(line: 126, column: 18, scope: !4942)
!4942 = distinct !DILexicalBlock(scope: !4925, file: !518, line: 126, column: 11)
!4943 = !DILocation(line: 126, column: 11, scope: !4925)
!4944 = !DILocation(line: 128, column: 39, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4942, file: !518, line: 127, column: 9)
!4946 = !DILocalVariable(name: "__dest", arg: 1, scope: !4947, file: !1979, line: 26, type: !4153)
!4947 = distinct !DISubprogram(name: "memcpy", scope: !1979, file: !1979, line: 26, type: !4151, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !517, retainedNodes: !4948)
!4948 = !{!4946, !4949, !4950}
!4949 = !DILocalVariable(name: "__src", arg: 2, scope: !4947, file: !1979, line: 26, type: !753)
!4950 = !DILocalVariable(name: "__len", arg: 3, scope: !4947, file: !1979, line: 26, type: !63)
!4951 = !DILocation(line: 0, scope: !4947, inlinedAt: !4952)
!4952 = distinct !DILocation(line: 128, column: 11, scope: !4945)
!4953 = !DILocation(line: 29, column: 10, scope: !4947, inlinedAt: !4952)
!4954 = !DILocation(line: 129, column: 11, scope: !4945)
!4955 = !DILocation(line: 133, column: 23, scope: !4956)
!4956 = distinct !DILexicalBlock(scope: !4957, file: !518, line: 133, column: 15)
!4957 = distinct !DILexicalBlock(scope: !4942, file: !518, line: 132, column: 9)
!4958 = !DILocation(line: 133, column: 15, scope: !4957)
!4959 = !DILocation(line: 138, column: 44, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4956, file: !518, line: 134, column: 13)
!4961 = !DILocation(line: 0, scope: !4947, inlinedAt: !4962)
!4962 = distinct !DILocation(line: 138, column: 15, scope: !4960)
!4963 = !DILocation(line: 29, column: 10, scope: !4947, inlinedAt: !4962)
!4964 = !DILocation(line: 139, column: 15, scope: !4960)
!4965 = !DILocation(line: 139, column: 32, scope: !4960)
!4966 = !DILocation(line: 140, column: 13, scope: !4960)
!4967 = !DILocation(line: 0, scope: !4926)
!4968 = !DILocation(line: 145, column: 1, scope: !4918)
!4969 = distinct !DISubprogram(name: "dup_safer", scope: !520, file: !520, line: 31, type: !1194, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !519, retainedNodes: !4970)
!4970 = !{!4971}
!4971 = !DILocalVariable(name: "fd", arg: 1, scope: !4969, file: !520, line: 31, type: !14)
!4972 = !DILocation(line: 0, scope: !4969)
!4973 = !DILocation(line: 33, column: 10, scope: !4969)
!4974 = !DILocation(line: 33, column: 3, scope: !4969)
!4975 = distinct !DISubprogram(name: "rpl_fcntl", scope: !375, file: !375, line: 202, type: !1314, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !4976)
!4976 = !{!4977, !4978, !4979, !4990, !4991, !4994, !4996, !5000}
!4977 = !DILocalVariable(name: "fd", arg: 1, scope: !4975, file: !375, line: 202, type: !14)
!4978 = !DILocalVariable(name: "action", arg: 2, scope: !4975, file: !375, line: 202, type: !14)
!4979 = !DILocalVariable(name: "arg", scope: !4975, file: !375, line: 208, type: !4980)
!4980 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !198, line: 14, baseType: !4981)
!4981 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4982, baseType: !4983)
!4982 = !DIFile(filename: "lib/fcntl.c", directory: "/src")
!4983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !202, size: 256, elements: !4984)
!4984 = !{!4985, !4986, !4987, !4988, !4989}
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4983, file: !4982, line: 208, baseType: !61, size: 64)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4983, file: !4982, line: 208, baseType: !61, size: 64, offset: 64)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4983, file: !4982, line: 208, baseType: !61, size: 64, offset: 128)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4983, file: !4982, line: 208, baseType: !14, size: 32, offset: 192)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4983, file: !4982, line: 208, baseType: !14, size: 32, offset: 224)
!4990 = !DILocalVariable(name: "result", scope: !4975, file: !375, line: 211, type: !14)
!4991 = !DILocalVariable(name: "target", scope: !4992, file: !375, line: 216, type: !14)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !375, line: 215, column: 7)
!4993 = distinct !DILexicalBlock(scope: !4975, file: !375, line: 213, column: 5)
!4994 = !DILocalVariable(name: "target", scope: !4995, file: !375, line: 223, type: !14)
!4995 = distinct !DILexicalBlock(scope: !4993, file: !375, line: 222, column: 7)
!4996 = !DILocalVariable(name: "x", scope: !4997, file: !375, line: 418, type: !14)
!4997 = distinct !DILexicalBlock(scope: !4998, file: !375, line: 417, column: 13)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !375, line: 261, column: 11)
!4999 = distinct !DILexicalBlock(scope: !4993, file: !375, line: 258, column: 7)
!5000 = !DILocalVariable(name: "p", scope: !5001, file: !375, line: 426, type: !61)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !375, line: 425, column: 13)
!5002 = !DILocation(line: 0, scope: !4975)
!5003 = !DILocation(line: 208, column: 3, scope: !4975)
!5004 = !DILocation(line: 208, column: 11, scope: !4975)
!5005 = !DILocation(line: 209, column: 3, scope: !4975)
!5006 = !DILocation(line: 212, column: 3, scope: !4975)
!5007 = !DILocation(line: 216, column: 22, scope: !4992)
!5008 = !DILocation(line: 0, scope: !4992)
!5009 = !DILocalVariable(name: "fd", arg: 1, scope: !5010, file: !375, line: 444, type: !14)
!5010 = distinct !DISubprogram(name: "rpl_fcntl_DUPFD", scope: !375, file: !375, line: 444, type: !376, scopeLine: 445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !378, retainedNodes: !5011)
!5011 = !{!5009, !5012, !5013}
!5012 = !DILocalVariable(name: "target", arg: 2, scope: !5010, file: !375, line: 444, type: !14)
!5013 = !DILocalVariable(name: "result", scope: !5010, file: !375, line: 446, type: !14)
!5014 = !DILocation(line: 0, scope: !5010, inlinedAt: !5015)
!5015 = distinct !DILocation(line: 217, column: 18, scope: !4992)
!5016 = !DILocation(line: 479, column: 12, scope: !5010, inlinedAt: !5015)
!5017 = !DILocation(line: 223, column: 22, scope: !4995)
!5018 = !DILocation(line: 0, scope: !4995)
!5019 = !DILocation(line: 0, scope: !374, inlinedAt: !5020)
!5020 = distinct !DILocation(line: 224, column: 18, scope: !4995)
!5021 = !DILocation(line: 507, column: 12, scope: !5022, inlinedAt: !5020)
!5022 = distinct !DILexicalBlock(scope: !374, file: !375, line: 507, column: 7)
!5023 = !DILocation(line: 507, column: 9, scope: !5022, inlinedAt: !5020)
!5024 = !DILocation(line: 507, column: 7, scope: !374, inlinedAt: !5020)
!5025 = !DILocation(line: 509, column: 16, scope: !5026, inlinedAt: !5020)
!5026 = distinct !DILexicalBlock(scope: !5022, file: !375, line: 508, column: 5)
!5027 = !DILocation(line: 510, column: 13, scope: !5028, inlinedAt: !5020)
!5028 = distinct !DILexicalBlock(scope: !5026, file: !375, line: 510, column: 11)
!5029 = !DILocation(line: 510, column: 23, scope: !5028, inlinedAt: !5020)
!5030 = !DILocation(line: 510, column: 26, scope: !5028, inlinedAt: !5020)
!5031 = !DILocation(line: 510, column: 32, scope: !5028, inlinedAt: !5020)
!5032 = !DILocation(line: 510, column: 11, scope: !5026, inlinedAt: !5020)
!5033 = !DILocation(line: 512, column: 30, scope: !5034, inlinedAt: !5020)
!5034 = distinct !DILexicalBlock(scope: !5028, file: !375, line: 511, column: 9)
!5035 = !DILocation(line: 528, column: 19, scope: !386, inlinedAt: !5020)
!5036 = !DILocation(line: 0, scope: !5010, inlinedAt: !5037)
!5037 = distinct !DILocation(line: 520, column: 20, scope: !5038, inlinedAt: !5020)
!5038 = distinct !DILexicalBlock(scope: !5028, file: !375, line: 519, column: 9)
!5039 = !DILocation(line: 479, column: 12, scope: !5010, inlinedAt: !5037)
!5040 = !DILocation(line: 521, column: 22, scope: !5041, inlinedAt: !5020)
!5041 = distinct !DILexicalBlock(scope: !5038, file: !375, line: 521, column: 15)
!5042 = !DILocation(line: 521, column: 15, scope: !5038, inlinedAt: !5020)
!5043 = !DILocation(line: 522, column: 32, scope: !5041, inlinedAt: !5020)
!5044 = !DILocation(line: 522, column: 13, scope: !5041, inlinedAt: !5020)
!5045 = !DILocation(line: 0, scope: !5010, inlinedAt: !5046)
!5046 = distinct !DILocation(line: 527, column: 14, scope: !5022, inlinedAt: !5020)
!5047 = !DILocation(line: 479, column: 12, scope: !5010, inlinedAt: !5046)
!5048 = !DILocation(line: 0, scope: !5022, inlinedAt: !5020)
!5049 = !DILocation(line: 528, column: 9, scope: !386, inlinedAt: !5020)
!5050 = !DILocation(line: 530, column: 19, scope: !385, inlinedAt: !5020)
!5051 = !DILocation(line: 0, scope: !385, inlinedAt: !5020)
!5052 = !DILocation(line: 531, column: 17, scope: !389, inlinedAt: !5020)
!5053 = !DILocation(line: 531, column: 21, scope: !389, inlinedAt: !5020)
!5054 = !DILocation(line: 531, column: 54, scope: !389, inlinedAt: !5020)
!5055 = !DILocation(line: 531, column: 24, scope: !389, inlinedAt: !5020)
!5056 = !DILocation(line: 531, column: 68, scope: !389, inlinedAt: !5020)
!5057 = !DILocation(line: 531, column: 11, scope: !385, inlinedAt: !5020)
!5058 = !DILocation(line: 533, column: 29, scope: !388, inlinedAt: !5020)
!5059 = !DILocation(line: 0, scope: !388, inlinedAt: !5020)
!5060 = !DILocation(line: 534, column: 11, scope: !388, inlinedAt: !5020)
!5061 = !DILocation(line: 535, column: 17, scope: !388, inlinedAt: !5020)
!5062 = !DILocation(line: 537, column: 9, scope: !388, inlinedAt: !5020)
!5063 = !DILocation(line: 329, column: 22, scope: !4998)
!5064 = !DILocation(line: 330, column: 13, scope: !4998)
!5065 = !DILocation(line: 418, column: 23, scope: !4997)
!5066 = !DILocation(line: 0, scope: !4997)
!5067 = !DILocation(line: 419, column: 24, scope: !4997)
!5068 = !DILocation(line: 421, column: 13, scope: !4998)
!5069 = !DILocation(line: 426, column: 25, scope: !5001)
!5070 = !DILocation(line: 0, scope: !5001)
!5071 = !DILocation(line: 427, column: 24, scope: !5001)
!5072 = !DILocation(line: 429, column: 13, scope: !4998)
!5073 = !DILocation(line: 0, scope: !4993)
!5074 = !DILocation(line: 438, column: 3, scope: !4975)
!5075 = !DILocation(line: 441, column: 1, scope: !4975)
!5076 = !DILocation(line: 440, column: 3, scope: !4975)
