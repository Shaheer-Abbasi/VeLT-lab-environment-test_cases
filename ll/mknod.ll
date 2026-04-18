; ModuleID = 'src/mknod.bc'
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
@.str.1 = private unnamed_addr constant [47 x i8] c"Usage: %s [OPTION]... NAME TYPE [MAJOR MINOR]\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Create the special file NAME of the given TYPE.\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"mknod\00", align 1
@.str.4 = private unnamed_addr constant [79 x i8] c"  -m, --mode=MODE\0A         set file permission bits to MODE, not a=rw - umask\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"  -Z\0A         set the SELinux security context to default type\0A\00", align 1
@.str.6 = private unnamed_addr constant [127 x i8] c"      --context[=CTX]\0A         like -Z, or if CTX is specified then set the\0A         SELinux or SMACK security context to CTX\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [261 x i8] c"\0ABoth MAJOR and MINOR must be specified when TYPE is b, c, or u, and they\0Amust be omitted when TYPE is p.  If MAJOR or MINOR begins with 0x or 0X,\0Ait is interpreted as hexadecimal; otherwise, if it begins with 0, as octal;\0Aotherwise, as decimal.  TYPE may be:\0A\00", align 1
@.str.10 = private unnamed_addr constant [127 x i8] c"\0A  b      create a block (buffered) special file\0A  c, u   create a character (unbuffered) special file\0A  p      create a FIFO\0A\00", align 1
@.str.11 = private unnamed_addr constant [185 x i8] c"\0AYour shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"m:Z\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0), i32 2, i32* null, i32 90 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.16 = private unnamed_addr constant [73 x i8] c"warning: ignoring --context; it requires an SELinux/SMACK-enabled kernel\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"invalid mode\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"mode must specify only file permission bits\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.21 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"Special files require major and minor device numbers.\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"Fifos do not have major and minor device numbers.\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"invalid major device number %s\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"invalid minor device number %s\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"invalid device %s %s\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"invalid device type %s\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"cannot set permissions of %s\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !60
@.str.35 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.57 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.63 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.62, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.63, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.65 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.66 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.68 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !158
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !163
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !168
@.str.40 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.41 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.42 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.43 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !170
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.44 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !206
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !176
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !202
@.str.1.50 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.52 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.51 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !204
@.str.4.45 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.46 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.47 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !211
@.str.74 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.75 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !217
@.str.78 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.79 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.80 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.81 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.82 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.83 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.84 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.85 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.86 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.87 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.79, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.80, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.82, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.85, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.86, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.87, i32 0, i32 0), i8* null], align 8, !dbg !253
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !265
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !283
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !313
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !320
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !285
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !322
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !271
@.str.10.90 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.88 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.91 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.89 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !290
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
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !328
@exit_failure = dso_local global i32 1, align 4, !dbg !336
@.str.144 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.143 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.157 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !342
@.str.162 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.163 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !452 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !456, metadata !DIExpression()), !dbg !457
  %3 = icmp eq i32 %0, 0, !dbg !458
  br i1 %3, label %9, label %4, !dbg !460

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !463
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #32, !dbg !461
  %7 = load i8*, i8** @program_name, align 8, !dbg !461, !tbaa !463
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #32, !dbg !461
  br label %66, !dbg !461

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #32, !dbg !467
  %11 = load i8*, i8** @program_name, align 8, !dbg !467, !tbaa !463
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #32, !dbg !467
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #32, !dbg !469
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !469, !tbaa !463
  %15 = tail call i32 @fputs_unlocked(i8* noundef %13, %struct._IO_FILE* noundef %14), !dbg !469
  %16 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.34, i64 0, i64 0), i32 noundef 5) #32, !dbg !470
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !470, !tbaa !463
  %18 = tail call i32 @fputs_unlocked(i8* noundef %16, %struct._IO_FILE* noundef %17) #32, !dbg !470
  %19 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #32, !dbg !474
  tail call fastcc void @oputs_(i8* noundef %19), !dbg !474
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #32, !dbg !475
  tail call fastcc void @oputs_(i8* noundef %20), !dbg !475
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #32, !dbg !476
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !476
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #32, !dbg !477
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !477
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #32, !dbg !478
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !478
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([261 x i8], [261 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #32, !dbg !479
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !479, !tbaa !463
  %26 = tail call i32 @fputs_unlocked(i8* noundef %24, %struct._IO_FILE* noundef %25), !dbg !479
  %27 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([127 x i8], [127 x i8]* @.str.10, i64 0, i64 0), i32 noundef 5) #32, !dbg !480
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !480, !tbaa !463
  %29 = tail call i32 @fputs_unlocked(i8* noundef %27, %struct._IO_FILE* noundef %28), !dbg !480
  %30 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([185 x i8], [185 x i8]* @.str.11, i64 0, i64 0), i32 noundef 5) #32, !dbg !481
  %31 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %30, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !481
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !482, metadata !DIExpression()) #32, !dbg !501
  %32 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !503
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %32) #32, !dbg !503
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !487, metadata !DIExpression()) #32, !dbg !504
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %32, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #32, !dbg !504
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !496, metadata !DIExpression()) #32, !dbg !501
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !497, metadata !DIExpression()) #32, !dbg !501
  %33 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !505
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !497, metadata !DIExpression()) #32, !dbg !501
  br label %34, !dbg !506

34:                                               ; preds = %39, %9
  %35 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %9 ]
  %36 = phi %struct.infomap* [ %40, %39 ], [ %33, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !497, metadata !DIExpression()) #32, !dbg !501
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !514
  call void @llvm.dbg.value(metadata i8* %35, metadata !513, metadata !DIExpression()) #32, !dbg !514
  %37 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %35) #33, !dbg !516
  %38 = icmp eq i32 %37, 0, !dbg !517
  br i1 %38, label %44, label %39, !dbg !506

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 1, !dbg !518
  call void @llvm.dbg.value(metadata %struct.infomap* %40, metadata !497, metadata !DIExpression()) #32, !dbg !501
  %41 = getelementptr inbounds %struct.infomap, %struct.infomap* %40, i64 0, i32 0, !dbg !519
  %42 = load i8*, i8** %41, align 8, !dbg !519, !tbaa !520
  %43 = icmp eq i8* %42, null, !dbg !522
  br i1 %43, label %44, label %34, !dbg !523, !llvm.loop !524

44:                                               ; preds = %39, %34
  %45 = phi %struct.infomap* [ %36, %34 ], [ %40, %39 ]
  %46 = getelementptr inbounds %struct.infomap, %struct.infomap* %45, i64 0, i32 1, !dbg !526
  %47 = load i8*, i8** %46, align 8, !dbg !526, !tbaa !528
  %48 = icmp eq i8* %47, null, !dbg !529
  %49 = select i1 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %47, !dbg !530
  call void @llvm.dbg.value(metadata i8* %49, metadata !496, metadata !DIExpression()) #32, !dbg !501
  tail call void @emit_bug_reporting_address() #32, !dbg !531
  %50 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #32, !dbg !532
  call void @llvm.dbg.value(metadata i8* %50, metadata !499, metadata !DIExpression()) #32, !dbg !501
  %51 = icmp eq i8* %50, null, !dbg !533
  br i1 %51, label %59, label %52, !dbg !535

52:                                               ; preds = %44
  %53 = tail call i32 @strncmp(i8* noundef nonnull %50, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i64 0, i64 0), i64 noundef 3) #33, !dbg !536
  %54 = icmp eq i32 %53, 0, !dbg !536
  br i1 %54, label %59, label %55, !dbg !537

55:                                               ; preds = %52
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.66, i64 0, i64 0), i32 noundef 5) #32, !dbg !538
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538, !tbaa !463
  %58 = tail call i32 @fputs_unlocked(i8* noundef %56, %struct._IO_FILE* noundef %57) #32, !dbg !538
  br label %59, !dbg !540

59:                                               ; preds = %44, %52, %55
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !541
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !513, metadata !DIExpression()) #32, !dbg !541
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !500, metadata !DIExpression()) #32, !dbg !501
  %60 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i32 noundef 5) #32, !dbg !543
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %60, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)) #32, !dbg !543
  %62 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #32, !dbg !544
  %63 = icmp eq i8* %49, getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), !dbg !544
  %64 = select i1 %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0), !dbg !544
  %65 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %62, i8* noundef %49, i8* noundef %64) #32, !dbg !544
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %32) #32, !dbg !545
  br label %66

66:                                               ; preds = %59, %4
  tail call void @exit(i32 noundef %0) #34, !dbg !546
  unreachable, !dbg !546
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !547 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !551 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !62 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !67, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i8* %0, metadata !68, metadata !DIExpression()), !dbg !556
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !557, !tbaa !558
  %3 = icmp eq i32 %2, -1, !dbg !560
  br i1 %3, label %4, label %16, !dbg !561

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0)) #32, !dbg !562
  call void @llvm.dbg.value(metadata i8* %5, metadata !69, metadata !DIExpression()), !dbg !563
  %6 = icmp eq i8* %5, null, !dbg !564
  br i1 %6, label %14, label %7, !dbg !565

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !566, !tbaa !567
  %9 = icmp eq i8 %8, 0, !dbg !566
  br i1 %9, label %14, label %10, !dbg !568

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !507, metadata !DIExpression()) #32, !dbg !569
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), metadata !513, metadata !DIExpression()) #32, !dbg !569
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0)) #33, !dbg !571
  %12 = icmp eq i32 %11, 0, !dbg !572
  %13 = zext i1 %12 to i32, !dbg !568
  br label %14, !dbg !568

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !573, !tbaa !558
  br label %16, !dbg !574

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !575
  %18 = icmp eq i32 %17, 0, !dbg !575
  br i1 %18, label %22, label %19, !dbg !577

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !578, !tbaa !463
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !578
  br label %121, !dbg !580

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !72, metadata !DIExpression()), !dbg !556
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0)) #33, !dbg !581
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !582
  call void @llvm.dbg.value(metadata i8* %24, metadata !74, metadata !DIExpression()), !dbg !556
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #33, !dbg !583
  call void @llvm.dbg.value(metadata i8* %25, metadata !75, metadata !DIExpression()), !dbg !556
  %26 = icmp eq i8* %25, null, !dbg !584
  br i1 %26, label %53, label %27, !dbg !585

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !586
  br i1 %28, label %53, label %29, !dbg !587

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !76, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 0, metadata !80, metadata !DIExpression()), !dbg !588
  %30 = icmp ult i8* %24, %25, !dbg !589
  br i1 %30, label %31, label %53, !dbg !590

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #35, !dbg !556
  %33 = load i16*, i16** %32, align 8, !tbaa !463
  br label %34, !dbg !590

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !76, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.value(metadata i64 %36, metadata !80, metadata !DIExpression()), !dbg !588
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !591
  call void @llvm.dbg.value(metadata i8* %37, metadata !76, metadata !DIExpression()), !dbg !588
  %38 = load i8, i8* %35, align 1, !dbg !591, !tbaa !567
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !591
  %41 = load i16, i16* %40, align 2, !dbg !591, !tbaa !592
  %42 = lshr i16 %41, 13, !dbg !594
  %43 = and i16 %42, 1, !dbg !594
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !595
  call void @llvm.dbg.value(metadata i64 %45, metadata !80, metadata !DIExpression()), !dbg !588
  %46 = icmp ult i8* %37, %25, !dbg !589
  %47 = icmp ult i64 %45, 2, !dbg !596
  %48 = select i1 %46, i1 %47, i1 false, !dbg !596
  br i1 %48, label %34, label %49, !dbg !590, !llvm.loop !597

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !598
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !600
  %52 = xor i1 %50, true, !dbg !600
  br label %53, !dbg !600

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !556
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i8* %54, metadata !75, metadata !DIExpression()), !dbg !556
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)) #33, !dbg !601
  call void @llvm.dbg.value(metadata i64 %56, metadata !81, metadata !DIExpression()), !dbg !556
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !602
  call void @llvm.dbg.value(metadata i8* %57, metadata !82, metadata !DIExpression()), !dbg !556
  br label %58, !dbg !603

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !556
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.value(metadata i8* %59, metadata !82, metadata !DIExpression()), !dbg !556
  %61 = load i8, i8* %59, align 1, !dbg !604, !tbaa !567
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !605

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !606
  %64 = load i8, i8* %63, align 1, !dbg !609, !tbaa !567
  %65 = icmp ne i8 %64, 45, !dbg !610
  %66 = select i1 %65, i1 %60, i1 false, !dbg !611
  br label %67, !dbg !611

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !72, metadata !DIExpression()), !dbg !556
  %69 = tail call i16** @__ctype_b_loc() #35, !dbg !612
  %70 = load i16*, i16** %69, align 8, !dbg !612, !tbaa !463
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !612
  %73 = load i16, i16* %72, align 2, !dbg !612, !tbaa !592
  %74 = and i16 %73, 8192, !dbg !612
  %75 = icmp eq i16 %74, 0, !dbg !612
  br i1 %75, label %89, label %76, !dbg !614

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !615
  br i1 %77, label %91, label %78, !dbg !618

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !619
  %80 = load i8, i8* %79, align 1, !dbg !619, !tbaa !567
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !619
  %83 = load i16, i16* %82, align 2, !dbg !619, !tbaa !592
  %84 = and i16 %83, 8192, !dbg !619
  %85 = icmp eq i16 %84, 0, !dbg !619
  br i1 %85, label %86, label %91, !dbg !620

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !621
  br i1 %88, label %89, label %91, !dbg !621

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !623
  call void @llvm.dbg.value(metadata i8* %90, metadata !82, metadata !DIExpression()), !dbg !556
  br label %58, !dbg !603, !llvm.loop !624

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !626
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !626, !tbaa !463
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !626
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), metadata !513, metadata !DIExpression()) #32, !dbg !627
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !629
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !631
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !633
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !635
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !639
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !507, metadata !DIExpression()) #32, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), metadata !141, metadata !DIExpression()), !dbg !556
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), i64 noundef 6) #33, !dbg !647
  %96 = icmp eq i32 %95, 0, !dbg !647
  br i1 %96, label %100, label %97, !dbg !649

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i64 0, i64 0), i64 noundef 9) #33, !dbg !650
  %99 = icmp eq i32 %98, 0, !dbg !650
  br i1 %99, label %100, label %103, !dbg !651

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !652
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.55, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #32, !dbg !652
  br label %106, !dbg !654

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !655
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.57, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #32, !dbg !655
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !657, !tbaa !463
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !657
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !658, !tbaa !463
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !658
  %111 = ptrtoint i8* %59 to i64, !dbg !659
  %112 = sub i64 %111, %92, !dbg !659
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !659, !tbaa !463
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !659
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !660, !tbaa !463
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !660
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !661, !tbaa !463
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !661
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !662, !tbaa !463
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !662
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !663
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
declare !dbg !664 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !668 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !672 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #12 !dbg !678 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !683, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8** %1, metadata !684, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8* null, metadata !685, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8* null, metadata !686, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata %struct.selabel_handle* null, metadata !687, metadata !DIExpression()), !dbg !715
  %5 = load i8*, i8** %1, align 8, !dbg !716, !tbaa !463
  tail call void @set_program_name(i8* noundef %5) #32, !dbg !717
  %6 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !718
  %7 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0)) #32, !dbg !719
  %8 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0)) #32, !dbg !720
  %9 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #32, !dbg !721
  br label %10, !dbg !722

10:                                               ; preds = %14, %2
  %11 = phi i8* [ %15, %14 ], [ null, %2 ]
  br label %12, !dbg !722

12:                                               ; preds = %21, %10
  call void @llvm.dbg.value(metadata i8* %11, metadata !685, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.value(metadata i8* null, metadata !686, metadata !DIExpression()), !dbg !715
  %13 = tail call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* noundef null) #32, !dbg !723
  call void @llvm.dbg.value(metadata i32 %13, metadata !691, metadata !DIExpression()), !dbg !715
  switch i32 %13, label %27 [
    i32 -1, label %28
    i32 109, label %14
    i32 90, label %16
    i32 -2, label %22
    i32 -3, label %23
  ], !dbg !722

14:                                               ; preds = %12
  %15 = load i8*, i8** @optarg, align 8, !dbg !724, !tbaa !463
  call void @llvm.dbg.value(metadata i8* %15, metadata !685, metadata !DIExpression()), !dbg !715
  br label %10, !dbg !727, !llvm.loop !728

16:                                               ; preds = %12
  %17 = load i8*, i8** @optarg, align 8, !dbg !730, !tbaa !463
  %18 = icmp eq i8* %17, null, !dbg !730
  br i1 %18, label %21, label %19, !dbg !734

19:                                               ; preds = %16
  %20 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.16, i64 0, i64 0), i32 noundef 5) #32, !dbg !735
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %20) #32, !dbg !735
  br label %21, !dbg !737

21:                                               ; preds = %19, %16
  br label %12, !dbg !715, !llvm.loop !728

22:                                               ; preds = %12
  tail call void @usage(i32 noundef 0) #36, !dbg !738
  unreachable, !dbg !738

23:                                               ; preds = %12
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !739, !tbaa !463
  %25 = load i8*, i8** @Version, align 8, !dbg !739, !tbaa !463
  %26 = tail call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #32, !dbg !739
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %24, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* noundef %25, i8* noundef %26, i8* noundef null) #32, !dbg !739
  tail call void @exit(i32 noundef 0) #34, !dbg !739
  unreachable, !dbg !739

27:                                               ; preds = %12
  tail call void @usage(i32 noundef 1) #36, !dbg !740
  unreachable, !dbg !740

28:                                               ; preds = %12
  call void @llvm.dbg.value(metadata i32 438, metadata !692, metadata !DIExpression()), !dbg !715
  %29 = icmp eq i8* %11, null, !dbg !741
  br i1 %29, label %43, label %30, !dbg !742

30:                                               ; preds = %28
  %31 = tail call noalias %struct.mode_change* @mode_compile(i8* noundef nonnull %11) #32, !dbg !743
  call void @llvm.dbg.value(metadata %struct.mode_change* %31, metadata !695, metadata !DIExpression()), !dbg !744
  %32 = icmp eq %struct.mode_change* %31, null, !dbg !745
  br i1 %32, label %33, label %35, !dbg !747

33:                                               ; preds = %30
  %34 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 noundef 5) #32, !dbg !748
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %34) #32, !dbg !748
  unreachable, !dbg !748

35:                                               ; preds = %30
  %36 = tail call i32 @umask(i32 noundef 0) #32, !dbg !749
  call void @llvm.dbg.value(metadata i32 %36, metadata !701, metadata !DIExpression()), !dbg !744
  %37 = tail call i32 @umask(i32 noundef %36) #32, !dbg !750
  %38 = tail call i32 @mode_adjust(i32 noundef 438, i1 noundef false, i32 noundef %36, %struct.mode_change* noundef nonnull %31, i32* noundef null) #33, !dbg !751
  call void @llvm.dbg.value(metadata i32 %38, metadata !692, metadata !DIExpression()), !dbg !715
  %39 = bitcast %struct.mode_change* %31 to i8*, !dbg !752
  tail call void @free(i8* noundef %39) #32, !dbg !753
  %40 = icmp ult i32 %38, 512, !dbg !754
  br i1 %40, label %43, label %41, !dbg !756

41:                                               ; preds = %35
  %42 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0), i32 noundef 5) #32, !dbg !757
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %42) #32, !dbg !757
  unreachable, !dbg !757

43:                                               ; preds = %35, %28
  %44 = phi i32 [ 438, %28 ], [ %38, %35 ], !dbg !715
  call void @llvm.dbg.value(metadata i32 %44, metadata !692, metadata !DIExpression()), !dbg !715
  %45 = load i32, i32* @optind, align 4, !dbg !758, !tbaa !558
  %46 = icmp slt i32 %45, %0, !dbg !759
  br i1 %46, label %47, label %56, !dbg !760

47:                                               ; preds = %43
  %48 = add nsw i32 %45, 1, !dbg !761
  %49 = icmp slt i32 %48, %0, !dbg !762
  br i1 %49, label %50, label %57, !dbg !763

50:                                               ; preds = %47
  %51 = sext i32 %48 to i64, !dbg !764
  %52 = getelementptr inbounds i8*, i8** %1, i64 %51, !dbg !764
  %53 = load i8*, i8** %52, align 8, !dbg !764, !tbaa !463
  %54 = load i8, i8* %53, align 1, !dbg !764, !tbaa !567
  %55 = icmp eq i8 %54, 112, !dbg !765
  br i1 %55, label %56, label %57, !dbg !766

56:                                               ; preds = %43, %50
  br label %57, !dbg !766

57:                                               ; preds = %47, %50, %56
  %58 = phi i1 [ true, %56 ], [ false, %50 ], [ false, %47 ]
  %59 = phi i32 [ 2, %56 ], [ 4, %50 ], [ 4, %47 ]
  call void @llvm.dbg.value(metadata i32 %59, metadata !702, metadata !DIExpression()), !dbg !715
  %60 = sub nsw i32 %0, %45, !dbg !767
  %61 = icmp slt i32 %60, %59, !dbg !769
  br i1 %61, label %62, label %82, !dbg !770

62:                                               ; preds = %57
  br i1 %46, label %65, label %63, !dbg !771

63:                                               ; preds = %62
  %64 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 noundef 5) #32, !dbg !773
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %64) #32, !dbg !773
  br label %72, !dbg !773

65:                                               ; preds = %62
  %66 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #32, !dbg !775
  %67 = add nsw i32 %0, -1, !dbg !775
  %68 = sext i32 %67 to i64, !dbg !775
  %69 = getelementptr inbounds i8*, i8** %1, i64 %68, !dbg !775
  %70 = load i8*, i8** %69, align 8, !dbg !775, !tbaa !463
  %71 = tail call i8* @quote(i8* noundef %70) #32, !dbg !775
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %66, i8* noundef %71) #32, !dbg !775
  br label %72

72:                                               ; preds = %65, %63
  br i1 %58, label %81, label %73, !dbg !776

73:                                               ; preds = %72
  %74 = load i32, i32* @optind, align 4, !dbg !778, !tbaa !558
  %75 = sub nsw i32 %0, %74, !dbg !779
  %76 = icmp eq i32 %75, 2, !dbg !780
  br i1 %76, label %77, label %81, !dbg !781

77:                                               ; preds = %73
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !782, !tbaa !463
  %79 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i64 0, i64 0), i32 noundef 5) #32, !dbg !782
  %80 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %78, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %79) #32, !dbg !782
  br label %81, !dbg !782

81:                                               ; preds = %77, %73, %72
  tail call void @usage(i32 noundef 1) #36, !dbg !783
  unreachable, !dbg !783

82:                                               ; preds = %57
  %83 = icmp slt i32 %59, %60, !dbg !784
  br i1 %83, label %84, label %101, !dbg !786

84:                                               ; preds = %82
  %85 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32 noundef 5) #32, !dbg !787
  %86 = load i32, i32* @optind, align 4, !dbg !787, !tbaa !558
  %87 = add nsw i32 %86, %59, !dbg !787
  %88 = sext i32 %87 to i64, !dbg !787
  %89 = getelementptr inbounds i8*, i8** %1, i64 %88, !dbg !787
  %90 = load i8*, i8** %89, align 8, !dbg !787, !tbaa !463
  %91 = tail call i8* @quote(i8* noundef %90) #32, !dbg !787
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %85, i8* noundef %91) #32, !dbg !787
  br i1 %58, label %92, label %100, !dbg !789

92:                                               ; preds = %84
  %93 = load i32, i32* @optind, align 4, !dbg !791, !tbaa !558
  %94 = sub nsw i32 %0, %93, !dbg !792
  %95 = icmp eq i32 %94, 4, !dbg !793
  br i1 %95, label %96, label %100, !dbg !794

96:                                               ; preds = %92
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !795, !tbaa !463
  %98 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.26, i64 0, i64 0), i32 noundef 5) #32, !dbg !795
  %99 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %97, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* noundef %98) #32, !dbg !795
  br label %100, !dbg !795

100:                                              ; preds = %96, %92, %84
  tail call void @usage(i32 noundef 1) #36, !dbg !796
  unreachable, !dbg !796

101:                                              ; preds = %82
  %102 = add nsw i32 %45, 1, !dbg !797
  %103 = sext i32 %102 to i64, !dbg !798
  %104 = getelementptr inbounds i8*, i8** %1, i64 %103, !dbg !798
  %105 = load i8*, i8** %104, align 8, !dbg !798, !tbaa !463
  %106 = load i8, i8* %105, align 1, !dbg !798, !tbaa !567
  switch i8 %106, label %184 [
    i8 98, label %108
    i8 99, label %107
    i8 117, label %107
    i8 112, label %170
  ], !dbg !799

107:                                              ; preds = %101, %101
  call void @llvm.dbg.value(metadata i32 8192, metadata !706, metadata !DIExpression()), !dbg !715
  br label %108, !dbg !800

108:                                              ; preds = %101, %107
  %109 = phi i32 [ 8192, %107 ], [ 24576, %101 ], !dbg !801
  call void @llvm.dbg.value(metadata i32 %109, metadata !706, metadata !DIExpression()), !dbg !715
  call void @llvm.dbg.label(metadata !714), !dbg !802
  %110 = add nsw i32 %45, 2, !dbg !803
  %111 = sext i32 %110 to i64, !dbg !804
  %112 = getelementptr inbounds i8*, i8** %1, i64 %111, !dbg !804
  %113 = load i8*, i8** %112, align 8, !dbg !804, !tbaa !463
  call void @llvm.dbg.value(metadata i8* %113, metadata !707, metadata !DIExpression()), !dbg !805
  %114 = bitcast i64* %3 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %114) #32, !dbg !806
  call void @llvm.dbg.value(metadata i64* %3, metadata !710, metadata !DIExpression(DW_OP_deref)), !dbg !805
  %115 = call i32 @xstrtoumax(i8* noundef %113, i8** noundef null, i32 noundef 0, i64* noundef nonnull %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !807
  %116 = icmp eq i32 %115, 0, !dbg !809
  %117 = load i64, i64* %3, align 8
  %118 = icmp ult i64 %117, 4294967296
  %119 = select i1 %116, i1 %118, i1 false, !dbg !810
  call void @llvm.dbg.value(metadata i64 %117, metadata !710, metadata !DIExpression()), !dbg !805
  br i1 %119, label %123, label %120, !dbg !810

120:                                              ; preds = %108
  %121 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i32 noundef 5) #32, !dbg !811
  %122 = call i8* @quote(i8* noundef %113) #32, !dbg !811
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %121, i8* noundef %122) #32, !dbg !811
  unreachable, !dbg !811

123:                                              ; preds = %108
  %124 = load i32, i32* @optind, align 4, !dbg !812, !tbaa !558
  %125 = add nsw i32 %124, 3, !dbg !813
  %126 = sext i32 %125 to i64, !dbg !814
  %127 = getelementptr inbounds i8*, i8** %1, i64 %126, !dbg !814
  %128 = load i8*, i8** %127, align 8, !dbg !814, !tbaa !463
  call void @llvm.dbg.value(metadata i8* %128, metadata !711, metadata !DIExpression()), !dbg !805
  %129 = bitcast i64* %4 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %129) #32, !dbg !815
  call void @llvm.dbg.value(metadata i64* %4, metadata !712, metadata !DIExpression(DW_OP_deref)), !dbg !805
  %130 = call i32 @xstrtoumax(i8* noundef %128, i8** noundef null, i32 noundef 0, i64* noundef nonnull %4, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i64 0, i64 0)) #32, !dbg !816
  %131 = icmp eq i32 %130, 0, !dbg !818
  br i1 %131, label %132, label %135, !dbg !819

132:                                              ; preds = %123
  %133 = load i64, i64* %4, align 8, !dbg !820, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %133, metadata !712, metadata !DIExpression()), !dbg !805
  %134 = icmp ult i64 %133, 4294967296, !dbg !823
  br i1 %134, label %138, label %135, !dbg !824

135:                                              ; preds = %132, %123
  %136 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 noundef 5) #32, !dbg !825
  %137 = call i8* @quote(i8* noundef %128) #32, !dbg !825
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %136, i8* noundef %137) #32, !dbg !825
  unreachable, !dbg !825

138:                                              ; preds = %132
  %139 = load i64, i64* %3, align 8, !dbg !826, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %139, metadata !710, metadata !DIExpression()), !dbg !805
  call void @llvm.dbg.value(metadata i64 %139, metadata !827, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !835
  call void @llvm.dbg.value(metadata i64 %133, metadata !833, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !835
  %140 = shl i64 %139, 8, !dbg !837
  %141 = and i64 %140, 1048320, !dbg !837
  call void @llvm.dbg.value(metadata i64 %141, metadata !834, metadata !DIExpression()), !dbg !835
  %142 = shl i64 %139, 32, !dbg !837
  %143 = and i64 %142, -17592186044416, !dbg !837
  call void @llvm.dbg.value(metadata i64 undef, metadata !834, metadata !DIExpression()), !dbg !835
  %144 = and i64 %133, 255, !dbg !837
  call void @llvm.dbg.value(metadata i64 undef, metadata !834, metadata !DIExpression()), !dbg !835
  %145 = shl nuw nsw i64 %133, 12, !dbg !837
  %146 = and i64 %145, 17592184995840, !dbg !837
  %147 = or i64 %146, %144, !dbg !837
  %148 = or i64 %147, %141, !dbg !837
  %149 = or i64 %148, %143, !dbg !837
  call void @llvm.dbg.value(metadata i64 %149, metadata !834, metadata !DIExpression()), !dbg !835
  call void @llvm.dbg.value(metadata i64 %149, metadata !713, metadata !DIExpression()), !dbg !805
  %150 = icmp eq i64 %149, -1, !dbg !838
  br i1 %150, label %151, label %153, !dbg !840

151:                                              ; preds = %138
  %152 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0), i32 noundef 5) #32, !dbg !841
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %152, i8* noundef %113, i8* noundef %128) #32, !dbg !841
  unreachable, !dbg !841

153:                                              ; preds = %138
  %154 = load i32, i32* @optind, align 4, !dbg !842, !tbaa !558
  %155 = sext i32 %154 to i64, !dbg !844
  %156 = getelementptr inbounds i8*, i8** %1, i64 %155, !dbg !844
  %157 = load i8*, i8** %156, align 8, !dbg !844, !tbaa !463
  %158 = or i32 %109, %44, !dbg !845
  %159 = call i32 @rpl_mknod(i8* noundef %157, i32 noundef %158, i64 noundef %149) #32, !dbg !846
  %160 = icmp eq i32 %159, 0, !dbg !847
  br i1 %160, label %169, label %161, !dbg !848

161:                                              ; preds = %153
  %162 = tail call i32* @__errno_location() #35, !dbg !849
  %163 = load i32, i32* %162, align 4, !dbg !849, !tbaa !558
  %164 = load i32, i32* @optind, align 4, !dbg !849, !tbaa !558
  %165 = sext i32 %164 to i64, !dbg !849
  %166 = getelementptr inbounds i8*, i8** %1, i64 %165, !dbg !849
  %167 = load i8*, i8** %166, align 8, !dbg !849, !tbaa !463
  %168 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %167) #32, !dbg !849
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %163, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %168) #32, !dbg !849
  unreachable, !dbg !849

169:                                              ; preds = %153
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %129) #32, !dbg !850
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %114) #32, !dbg !850
  br label %192, !dbg !851

170:                                              ; preds = %101
  %171 = sext i32 %45 to i64, !dbg !852
  %172 = getelementptr inbounds i8*, i8** %1, i64 %171, !dbg !852
  %173 = load i8*, i8** %172, align 8, !dbg !852, !tbaa !463
  %174 = tail call i32 @mkfifo(i8* noundef %173, i32 noundef %44) #32, !dbg !854
  %175 = icmp eq i32 %174, 0, !dbg !855
  br i1 %175, label %192, label %176, !dbg !856

176:                                              ; preds = %170
  %177 = tail call i32* @__errno_location() #35, !dbg !857
  %178 = load i32, i32* %177, align 4, !dbg !857, !tbaa !558
  %179 = load i32, i32* @optind, align 4, !dbg !857, !tbaa !558
  %180 = sext i32 %179 to i64, !dbg !857
  %181 = getelementptr inbounds i8*, i8** %1, i64 %180, !dbg !857
  %182 = load i8*, i8** %181, align 8, !dbg !857, !tbaa !463
  %183 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %182) #32, !dbg !857
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %178, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* noundef %183) #32, !dbg !857
  unreachable, !dbg !857

184:                                              ; preds = %101
  %185 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0), i32 noundef 5) #32, !dbg !858
  %186 = load i32, i32* @optind, align 4, !dbg !858, !tbaa !558
  %187 = add nsw i32 %186, 1, !dbg !858
  %188 = sext i32 %187 to i64, !dbg !858
  %189 = getelementptr inbounds i8*, i8** %1, i64 %188, !dbg !858
  %190 = load i8*, i8** %189, align 8, !dbg !858, !tbaa !463
  %191 = tail call i8* @quote(i8* noundef %190) #32, !dbg !858
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %185, i8* noundef %191) #32, !dbg !858
  tail call void @usage(i32 noundef 1) #36, !dbg !859
  unreachable, !dbg !859

192:                                              ; preds = %170, %169
  br i1 %29, label %209, label %193, !dbg !860

193:                                              ; preds = %192
  %194 = load i32, i32* @optind, align 4, !dbg !862, !tbaa !558
  %195 = sext i32 %194 to i64, !dbg !863
  %196 = getelementptr inbounds i8*, i8** %1, i64 %195, !dbg !863
  %197 = load i8*, i8** %196, align 8, !dbg !863, !tbaa !463
  %198 = call i32 @lchmod(i8* noundef %197, i32 noundef %44) #32, !dbg !864
  %199 = icmp eq i32 %198, 0, !dbg !865
  br i1 %199, label %209, label %200, !dbg !866

200:                                              ; preds = %193
  %201 = tail call i32* @__errno_location() #35, !dbg !867
  %202 = load i32, i32* %201, align 4, !dbg !867, !tbaa !558
  %203 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i64 0, i64 0), i32 noundef 5) #32, !dbg !867
  %204 = load i32, i32* @optind, align 4, !dbg !867, !tbaa !558
  %205 = sext i32 %204 to i64, !dbg !867
  %206 = getelementptr inbounds i8*, i8** %1, i64 %205, !dbg !867
  %207 = load i8*, i8** %206, align 8, !dbg !867, !tbaa !463
  %208 = call i8* @quotearg_style(i32 noundef 4, i8* noundef %207) #32, !dbg !867
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %202, i8* noundef %203, i8* noundef %208) #32, !dbg !867
  unreachable, !dbg !867

209:                                              ; preds = %193, %192
  ret i32 0, !dbg !868
}

; Function Attrs: nounwind
declare !dbg !869 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !872 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !873 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !876 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !882 i32 @umask(i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: nounwind
declare !dbg !886 i32 @mkfifo(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !889 i32 @lchmod(i8* noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #14 !dbg !890 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !892, metadata !DIExpression()), !dbg !893
  store i8* %0, i8** @file_name, align 8, !dbg !894, !tbaa !463
  ret void, !dbg !895
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !896 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !900, metadata !DIExpression()), !dbg !901
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !902, !tbaa !903
  ret void, !dbg !905
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #12 !dbg !906 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !911, !tbaa !463
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #32, !dbg !912
  %3 = icmp eq i32 %2, 0, !dbg !913
  br i1 %3, label %22, label %4, !dbg !914

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !915, !tbaa !903, !range !916
  %6 = icmp eq i8 %5, 0, !dbg !915
  br i1 %6, label %11, label %7, !dbg !917

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #35, !dbg !918
  %9 = load i32, i32* %8, align 4, !dbg !918, !tbaa !558
  %10 = icmp eq i32 %9, 32, !dbg !919
  br i1 %10, label %22, label %11, !dbg !920

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.41, i64 0, i64 0), i32 noundef 5) #32, !dbg !921
  call void @llvm.dbg.value(metadata i8* %12, metadata !908, metadata !DIExpression()), !dbg !922
  %13 = load i8*, i8** @file_name, align 8, !dbg !923, !tbaa !463
  %14 = icmp eq i8* %13, null, !dbg !923
  %15 = tail call i32* @__errno_location() #35, !dbg !925
  %16 = load i32, i32* %15, align 4, !dbg !925, !tbaa !558
  br i1 %14, label %19, label %17, !dbg !926

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #32, !dbg !927
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.42, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #32, !dbg !927
  br label %20, !dbg !927

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.43, i64 0, i64 0), i8* noundef %12) #32, !dbg !928
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !929, !tbaa !558
  tail call void @_exit(i32 noundef %21) #34, !dbg !930
  unreachable, !dbg !930

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !931, !tbaa !463
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #32, !dbg !933
  %25 = icmp eq i32 %24, 0, !dbg !934
  br i1 %25, label %28, label %26, !dbg !935

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !936, !tbaa !558
  tail call void @_exit(i32 noundef %27) #34, !dbg !937
  unreachable, !dbg !937

28:                                               ; preds = %22
  ret void, !dbg !938
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !939 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !943, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i32 %1, metadata !944, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.value(metadata i8* %2, metadata !945, metadata !DIExpression()), !dbg !947
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !946, metadata !DIExpression()), !dbg !948
  tail call fastcc void @flush_stdout(), !dbg !949
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !950, !tbaa !463
  %7 = icmp eq void ()* %6, null, !dbg !950
  br i1 %7, label %9, label %8, !dbg !952

8:                                                ; preds = %4
  tail call void %6() #32, !dbg !953
  br label %13, !dbg !953

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !954, !tbaa !463
  %11 = tail call i8* @getprogname() #33, !dbg !954
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i8* noundef %11) #32, !dbg !954
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !956
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32, !dbg !956
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !956
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !956, !tbaa.struct !957
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !956
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32, !dbg !956
  ret void, !dbg !958
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #12 !dbg !959 {
  call void @llvm.dbg.value(metadata i32 1, metadata !961, metadata !DIExpression()), !dbg !962
  call void @llvm.dbg.value(metadata i32 1, metadata !963, metadata !DIExpression()) #32, !dbg !968
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #32, !dbg !971
  %2 = icmp slt i32 %1, 0, !dbg !972
  br i1 %2, label %6, label %3, !dbg !973

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !974, !tbaa !463
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #32, !dbg !974
  br label %6, !dbg !974

6:                                                ; preds = %3, %0
  ret void, !dbg !975
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #12 !dbg !976 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !978, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i32 %1, metadata !979, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.value(metadata i8* %2, metadata !980, metadata !DIExpression()), !dbg !982
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !981, metadata !DIExpression()), !dbg !983
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !984, !tbaa !463
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !985
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !986, metadata !DIExpression()) #32, !dbg !1029
  call void @llvm.dbg.value(metadata i8* %2, metadata !1027, metadata !DIExpression()) #32, !dbg !1029
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1031, !noalias !1032
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1031
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #32, !dbg !1031
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1031, !noalias !1032
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1036, !tbaa !558
  %12 = add i32 %11, 1, !dbg !1036
  store i32 %12, i32* @error_message_count, align 4, !dbg !1036, !tbaa !558
  %13 = icmp eq i32 %1, 0, !dbg !1037
  br i1 %13, label %24, label %14, !dbg !1039

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1040, metadata !DIExpression()) #32, !dbg !1048
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1050
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1050
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1044, metadata !DIExpression()) #32, !dbg !1051
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #32, !dbg !1052
  call void @llvm.dbg.value(metadata i8* %16, metadata !1043, metadata !DIExpression()) #32, !dbg !1048
  %17 = icmp eq i8* %16, null, !dbg !1053
  br i1 %17, label %18, label %20, !dbg !1055

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.46, i64 0, i64 0), i32 noundef 5) #32, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %19, metadata !1043, metadata !DIExpression()) #32, !dbg !1048
  br label %20, !dbg !1057

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1048
  call void @llvm.dbg.value(metadata i8* %21, metadata !1043, metadata !DIExpression()) #32, !dbg !1048
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1058, !tbaa !463
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.47, i64 0, i64 0), i8* noundef %21) #32, !dbg !1058
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #32, !dbg !1059
  br label %24, !dbg !1060

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1061, !tbaa !463
  call void @llvm.dbg.value(metadata i32 10, metadata !1062, metadata !DIExpression()) #32, !dbg !1069
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1068, metadata !DIExpression()) #32, !dbg !1069
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1071
  %27 = load i8*, i8** %26, align 8, !dbg !1071, !tbaa !1072
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1071
  %29 = load i8*, i8** %28, align 8, !dbg !1071, !tbaa !1074
  %30 = icmp ult i8* %27, %29, !dbg !1071
  br i1 %30, label %33, label %31, !dbg !1071, !prof !1075

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #32, !dbg !1071
  br label %35, !dbg !1071

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1071
  store i8* %34, i8** %26, align 8, !dbg !1071, !tbaa !1072
  store i8 10, i8* %27, align 1, !dbg !1071, !tbaa !567
  br label %35, !dbg !1071

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1076, !tbaa !463
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #32, !dbg !1076
  %38 = icmp eq i32 %0, 0, !dbg !1077
  br i1 %38, label %40, label %39, !dbg !1079

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #34, !dbg !1080
  unreachable, !dbg !1080

40:                                               ; preds = %35
  ret void, !dbg !1081
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1082 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !1086 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

declare !dbg !1089 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #12 !dbg !1093 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1097, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i32 %1, metadata !1098, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %2, metadata !1099, metadata !DIExpression()), !dbg !1101
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1102
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1102
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1100, metadata !DIExpression()), !dbg !1103
  call void @llvm.va_start(i8* nonnull %6), !dbg !1104
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1105
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1105
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1105, !tbaa.struct !957
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #37, !dbg !1105
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !1105
  call void @llvm.va_end(i8* nonnull %6), !dbg !1106
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #32, !dbg !1107
  ret void, !dbg !1107
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #17

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !178 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !196, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %1, metadata !197, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %2, metadata !198, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32 %3, metadata !199, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i8* %4, metadata !200, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !201, metadata !DIExpression()), !dbg !1109
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1110, !tbaa !558
  %9 = icmp eq i32 %8, 0, !dbg !1110
  br i1 %9, label %24, label %10, !dbg !1112

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1113, !tbaa !558
  %12 = icmp eq i32 %11, %3, !dbg !1116
  br i1 %12, label %13, label %23, !dbg !1117

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1118, !tbaa !463
  %15 = icmp eq i8* %14, %2, !dbg !1119
  br i1 %15, label %39, label %16, !dbg !1120

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1121
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1122
  br i1 %19, label %20, label %23, !dbg !1122

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #33, !dbg !1123
  %22 = icmp eq i32 %21, 0, !dbg !1124
  br i1 %22, label %39, label %23, !dbg !1125

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1126, !tbaa !463
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1127, !tbaa !558
  br label %24, !dbg !1128

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1129
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1130, !tbaa !463
  %26 = icmp eq void ()* %25, null, !dbg !1130
  br i1 %26, label %28, label %27, !dbg !1132

27:                                               ; preds = %24
  tail call void %25() #32, !dbg !1133
  br label %32, !dbg !1133

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1134, !tbaa !463
  %30 = tail call i8* @getprogname() #33, !dbg !1134
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.50, i64 0, i64 0), i8* noundef %30) #32, !dbg !1134
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1136, !tbaa !463
  %34 = icmp eq i8* %2, null, !dbg !1136
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.51, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.52, i64 0, i64 0), !dbg !1136
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #32, !dbg !1136
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1137
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1137
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1137
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1137, !tbaa.struct !957
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1137
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #32, !dbg !1137
  br label %39, !dbg !1138

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1138
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #12 !dbg !1139 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1143, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %1, metadata !1144, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i8* %2, metadata !1145, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i32 %3, metadata !1146, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.value(metadata i8* %4, metadata !1147, metadata !DIExpression()), !dbg !1149
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1150
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1150
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1148, metadata !DIExpression()), !dbg !1151
  call void @llvm.va_start(i8* nonnull %8), !dbg !1152
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1153
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1153
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1153, !tbaa.struct !957
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #37, !dbg !1153
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #32, !dbg !1153
  call void @llvm.va_end(i8* nonnull %8), !dbg !1154
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !1155
  ret void, !dbg !1155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #18 !dbg !1156 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !1159, !tbaa !463
  ret i8* %1, !dbg !1160
}

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_mknod(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !1161 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1165, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i32 %1, metadata !1166, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.value(metadata i64 %2, metadata !1167, metadata !DIExpression()), !dbg !1168
  %4 = and i32 %1, 61440, !dbg !1169
  %5 = icmp eq i32 %4, 4096, !dbg !1169
  %6 = icmp eq i64 %2, 0
  %7 = and i1 %5, %6, !dbg !1171
  br i1 %7, label %8, label %11, !dbg !1171

8:                                                ; preds = %3
  %9 = and i32 %1, -4097, !dbg !1172
  %10 = tail call i32 @mkfifo(i8* noundef nonnull %0, i32 noundef %9) #32, !dbg !1173
  br label %13, !dbg !1174

11:                                               ; preds = %3
  %12 = tail call i32 @mknod(i8* noundef nonnull %0, i32 noundef %1, i64 noundef %2) #32, !dbg !1175
  br label %13, !dbg !1176

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ %12, %11 ], !dbg !1168
  ret i32 %14, !dbg !1177
}

; Function Attrs: nounwind
declare !dbg !1178 i32 @mknod(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_compile(i8* noundef %0) local_unnamed_addr #12 !dbg !1181 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1193, metadata !DIExpression()), !dbg !1223
  %2 = load i8, i8* %0, align 1, !dbg !1224, !tbaa !567
  %3 = and i8 %2, -8, !dbg !1225
  %4 = icmp eq i8 %3, 48, !dbg !1225
  br i1 %4, label %5, label %39, !dbg !1225

5:                                                ; preds = %1, %15
  %6 = phi i8 [ %16, %15 ], [ %2, %1 ], !dbg !1226
  %7 = phi i32 [ %13, %15 ], [ 0, %1 ], !dbg !1228
  %8 = phi i8* [ %10, %15 ], [ %0, %1 ], !dbg !1228
  call void @llvm.dbg.value(metadata i8* %8, metadata !1194, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 %7, metadata !1197, metadata !DIExpression()), !dbg !1228
  %9 = shl i32 %7, 3, !dbg !1229
  %10 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !1230
  call void @llvm.dbg.value(metadata i8* %10, metadata !1194, metadata !DIExpression()), !dbg !1228
  %11 = zext i8 %6 to i32, !dbg !1226
  %12 = add i32 %9, -48, !dbg !1231
  %13 = add i32 %12, %11, !dbg !1232
  call void @llvm.dbg.value(metadata i32 %13, metadata !1197, metadata !DIExpression()), !dbg !1228
  %14 = icmp ugt i32 %13, 4095, !dbg !1233
  br i1 %14, label %142, label %15, !dbg !1235

15:                                               ; preds = %5
  %16 = load i8, i8* %10, align 1, !dbg !1236, !tbaa !567
  %17 = and i8 %16, -8, !dbg !1237
  %18 = icmp eq i8 %17, 48, !dbg !1237
  br i1 %18, label %5, label %19, !dbg !1237, !llvm.loop !1238

19:                                               ; preds = %15
  %20 = icmp eq i8 %16, 0, !dbg !1241
  br i1 %20, label %21, label %142, !dbg !1243

21:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i32 %13, metadata !1198, metadata !DIExpression()), !dbg !1228
  %22 = ptrtoint i8* %10 to i64, !dbg !1244
  %23 = ptrtoint i8* %0 to i64, !dbg !1244
  %24 = sub i64 %22, %23, !dbg !1244
  %25 = icmp slt i64 %24, 5, !dbg !1245
  %26 = and i32 %13, 3072, !dbg !1246
  %27 = or i32 %26, 1023, !dbg !1246
  %28 = select i1 %25, i32 %27, i32 4095, !dbg !1246
  call void @llvm.dbg.value(metadata i32 %28, metadata !1199, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i32 %13, metadata !1247, metadata !DIExpression()) #32, !dbg !1254
  call void @llvm.dbg.value(metadata i32 %28, metadata !1252, metadata !DIExpression()) #32, !dbg !1254
  %29 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1256
  %30 = bitcast i8* %29 to %struct.mode_change*, !dbg !1256
  call void @llvm.dbg.value(metadata %struct.mode_change* %30, metadata !1253, metadata !DIExpression()) #32, !dbg !1254
  store i8 61, i8* %29, align 4, !dbg !1257, !tbaa !1258
  %31 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1260
  store i8 1, i8* %31, align 1, !dbg !1261, !tbaa !1262
  %32 = getelementptr inbounds i8, i8* %29, i64 4, !dbg !1263
  %33 = bitcast i8* %32 to i32*, !dbg !1263
  store i32 4095, i32* %33, align 4, !dbg !1264, !tbaa !1265
  %34 = getelementptr inbounds i8, i8* %29, i64 8, !dbg !1266
  %35 = bitcast i8* %34 to i32*, !dbg !1266
  store i32 %13, i32* %35, align 4, !dbg !1267, !tbaa !1268
  %36 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1269
  %37 = bitcast i8* %36 to i32*, !dbg !1269
  store i32 %28, i32* %37, align 4, !dbg !1270, !tbaa !1271
  %38 = getelementptr inbounds i8, i8* %29, i64 17, !dbg !1272
  store i8 0, i8* %38, align 1, !dbg !1273, !tbaa !1262
  br label %142, !dbg !1274

39:                                               ; preds = %1, %47
  %40 = phi i8 [ %51, %47 ], [ %2, %1 ], !dbg !1275
  %41 = phi i64 [ %49, %47 ], [ 1, %1 ], !dbg !1277
  %42 = phi i8* [ %50, %47 ], [ %0, %1 ], !dbg !1278
  call void @llvm.dbg.value(metadata i8* %42, metadata !1203, metadata !DIExpression()), !dbg !1278
  call void @llvm.dbg.value(metadata i64 %41, metadata !1201, metadata !DIExpression()), !dbg !1277
  switch i8 %40, label %46 [
    i8 0, label %43
    i8 61, label %47
    i8 43, label %47
    i8 45, label %47
  ], !dbg !1279

43:                                               ; preds = %39
  %44 = tail call noalias nonnull i8* @xnmalloc(i64 noundef %41, i64 noundef 16) #39, !dbg !1280
  %45 = bitcast i8* %44 to %struct.mode_change*, !dbg !1280
  call void @llvm.dbg.value(metadata %struct.mode_change* %45, metadata !1200, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 0, metadata !1205, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8* %0, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %52, !dbg !1281

46:                                               ; preds = %39
  br label %47, !dbg !1282

47:                                               ; preds = %39, %39, %39, %46
  %48 = phi i64 [ 0, %46 ], [ 1, %39 ], [ 1, %39 ], [ 1, %39 ]
  %49 = add i64 %48, %41, !dbg !1283
  call void @llvm.dbg.value(metadata i64 %49, metadata !1201, metadata !DIExpression()), !dbg !1277
  %50 = getelementptr inbounds i8, i8* %42, i64 1, !dbg !1284
  call void @llvm.dbg.value(metadata i8* %50, metadata !1203, metadata !DIExpression()), !dbg !1278
  %51 = load i8, i8* %50, align 1, !dbg !1275, !tbaa !567
  br label %39, !dbg !1285, !llvm.loop !1286

52:                                               ; preds = %137, %43
  %53 = phi i64 [ 0, %43 ], [ %125, %137 ], !dbg !1288
  %54 = phi i8* [ %0, %43 ], [ %138, %137 ], !dbg !1289
  call void @llvm.dbg.value(metadata i32 undef, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %54, metadata !1206, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %53, metadata !1205, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i32 0, metadata !1207, metadata !DIExpression()), !dbg !1291
  br label %55, !dbg !1292

55:                                               ; preds = %63, %52
  %56 = phi i8* [ %54, %52 ], [ %66, %63 ], !dbg !1289
  %57 = phi i32 [ 0, %52 ], [ %65, %63 ], !dbg !1291
  call void @llvm.dbg.value(metadata i32 %57, metadata !1207, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %56, metadata !1206, metadata !DIExpression()), !dbg !1223
  %58 = load i8, i8* %56, align 1, !dbg !1293, !tbaa !567
  switch i8 %58, label %141 [
    i8 117, label %63
    i8 103, label %60
    i8 111, label %61
    i8 97, label %62
    i8 61, label %59
    i8 43, label %59
    i8 45, label %59
  ], !dbg !1296

59:                                               ; preds = %55, %55, %55
  br label %67, !dbg !1297

60:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1207, metadata !DIExpression()), !dbg !1291
  br label %63, !dbg !1298

61:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1207, metadata !DIExpression()), !dbg !1291
  br label %63, !dbg !1300

62:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i32 undef, metadata !1207, metadata !DIExpression()), !dbg !1291
  br label %63, !dbg !1301

63:                                               ; preds = %55, %60, %61, %62
  %64 = phi i32 [ 1080, %60 ], [ 519, %61 ], [ 4095, %62 ], [ 2496, %55 ]
  %65 = or i32 %57, %64, !dbg !1302
  call void @llvm.dbg.value(metadata i32 %65, metadata !1207, metadata !DIExpression()), !dbg !1291
  %66 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1303
  call void @llvm.dbg.value(metadata i8* %66, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %55, !dbg !1304, !llvm.loop !1305

67:                                               ; preds = %136, %59
  %68 = phi i8 [ %58, %59 ], [ %135, %136 ], !dbg !1308
  %69 = phi i64 [ %53, %59 ], [ %125, %136 ], !dbg !1223
  %70 = phi i8* [ %56, %59 ], [ %119, %136 ], !dbg !1289
  %71 = phi i32 [ %57, %59 ], [ %120, %136 ], !dbg !1309
  call void @llvm.dbg.value(metadata i32 undef, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %71, metadata !1207, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %70, metadata !1206, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %69, metadata !1205, metadata !DIExpression()), !dbg !1223
  %72 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !1310
  call void @llvm.dbg.value(metadata i8* %72, metadata !1206, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i8 %68, metadata !1211, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 0, metadata !1214, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8 3, metadata !1215, metadata !DIExpression()), !dbg !1290
  %73 = load i8, i8* %72, align 1, !dbg !1311, !tbaa !567
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
  ], !dbg !1297

74:                                               ; preds = %67, %67, %67, %67, %67, %67, %67, %67
  br label %75, !dbg !1312

75:                                               ; preds = %74, %85
  %76 = phi i8 [ %86, %85 ], [ %73, %74 ], !dbg !1313
  %77 = phi i8* [ %80, %85 ], [ %72, %74 ], !dbg !1290
  %78 = phi i32 [ %83, %85 ], [ 0, %74 ], !dbg !1315
  call void @llvm.dbg.value(metadata i32 %78, metadata !1216, metadata !DIExpression()), !dbg !1315
  call void @llvm.dbg.value(metadata i8* %77, metadata !1206, metadata !DIExpression()), !dbg !1223
  %79 = shl i32 %78, 3, !dbg !1316
  %80 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1317
  call void @llvm.dbg.value(metadata i8* %80, metadata !1206, metadata !DIExpression()), !dbg !1223
  %81 = zext i8 %76 to i32, !dbg !1313
  %82 = add i32 %79, -48, !dbg !1318
  %83 = add i32 %82, %81, !dbg !1319
  call void @llvm.dbg.value(metadata i32 %83, metadata !1216, metadata !DIExpression()), !dbg !1315
  %84 = icmp ugt i32 %83, 4095, !dbg !1320
  br i1 %84, label %141, label %85, !dbg !1322

85:                                               ; preds = %75
  %86 = load i8, i8* %80, align 1, !dbg !1323, !tbaa !567
  %87 = and i8 %86, -8, !dbg !1324
  %88 = icmp eq i8 %87, 48, !dbg !1324
  br i1 %88, label %75, label %89, !dbg !1324, !llvm.loop !1325

89:                                               ; preds = %85
  %90 = icmp eq i32 %71, 0, !dbg !1327
  br i1 %90, label %91, label %141, !dbg !1329

91:                                               ; preds = %89
  switch i8 %86, label %141 [
    i8 0, label %118
    i8 44, label %118
  ], !dbg !1330

92:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 448, metadata !1213, metadata !DIExpression()), !dbg !1290
  %93 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1331
  call void @llvm.dbg.value(metadata i8* %93, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %118, !dbg !1332

94:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 56, metadata !1213, metadata !DIExpression()), !dbg !1290
  %95 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1333
  call void @llvm.dbg.value(metadata i8* %95, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %118, !dbg !1334

96:                                               ; preds = %67
  call void @llvm.dbg.value(metadata i32 7, metadata !1213, metadata !DIExpression()), !dbg !1290
  %97 = getelementptr inbounds i8, i8* %70, i64 2, !dbg !1335
  call void @llvm.dbg.value(metadata i8* %97, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %118, !dbg !1336

98:                                               ; preds = %67, %113
  %99 = phi i8 [ %117, %113 ], [ %73, %67 ], !dbg !1337
  %100 = phi i8* [ %116, %113 ], [ %72, %67 ], !dbg !1290
  %101 = phi i32 [ %114, %113 ], [ 0, %67 ], !dbg !1340
  %102 = phi i8 [ %115, %113 ], [ 1, %67 ], !dbg !1341
  call void @llvm.dbg.value(metadata i8 %102, metadata !1215, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %101, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %100, metadata !1206, metadata !DIExpression()), !dbg !1223
  switch i8 %99, label %118 [
    i8 114, label %103
    i8 119, label %105
    i8 120, label %107
    i8 88, label %113
    i8 115, label %109
    i8 116, label %111
  ], !dbg !1342

103:                                              ; preds = %98
  %104 = or i32 %101, 292, !dbg !1343
  call void @llvm.dbg.value(metadata i32 %104, metadata !1213, metadata !DIExpression()), !dbg !1290
  br label %113, !dbg !1345

105:                                              ; preds = %98
  %106 = or i32 %101, 146, !dbg !1346
  call void @llvm.dbg.value(metadata i32 %106, metadata !1213, metadata !DIExpression()), !dbg !1290
  br label %113, !dbg !1347

107:                                              ; preds = %98
  %108 = or i32 %101, 73, !dbg !1348
  call void @llvm.dbg.value(metadata i32 %108, metadata !1213, metadata !DIExpression()), !dbg !1290
  br label %113, !dbg !1349

109:                                              ; preds = %98
  %110 = or i32 %101, 3072, !dbg !1350
  call void @llvm.dbg.value(metadata i32 %110, metadata !1213, metadata !DIExpression()), !dbg !1290
  br label %113, !dbg !1351

111:                                              ; preds = %98
  %112 = or i32 %101, 512, !dbg !1352
  call void @llvm.dbg.value(metadata i32 %112, metadata !1213, metadata !DIExpression()), !dbg !1290
  br label %113, !dbg !1353

113:                                              ; preds = %98, %103, %105, %107, %109, %111
  %114 = phi i32 [ %112, %111 ], [ %110, %109 ], [ %108, %107 ], [ %106, %105 ], [ %104, %103 ], [ %101, %98 ], !dbg !1340
  %115 = phi i8 [ %102, %111 ], [ %102, %109 ], [ %102, %107 ], [ %102, %105 ], [ %102, %103 ], [ 2, %98 ], !dbg !1340
  call void @llvm.dbg.value(metadata i8 %115, metadata !1215, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %114, metadata !1213, metadata !DIExpression()), !dbg !1290
  %116 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !1354
  call void @llvm.dbg.value(metadata i8* %116, metadata !1206, metadata !DIExpression()), !dbg !1223
  %117 = load i8, i8* %116, align 1, !dbg !1337, !tbaa !567
  br label %98, !dbg !1355, !llvm.loop !1356

118:                                              ; preds = %98, %91, %91, %96, %94, %92
  %119 = phi i8* [ %97, %96 ], [ %95, %94 ], [ %93, %92 ], [ %80, %91 ], [ %80, %91 ], [ %100, %98 ], !dbg !1290
  %120 = phi i32 [ %71, %96 ], [ %71, %94 ], [ %71, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ %71, %98 ], !dbg !1309
  %121 = phi i32 [ 7, %96 ], [ 56, %94 ], [ 448, %92 ], [ %83, %91 ], [ %83, %91 ], [ %101, %98 ]
  %122 = phi i1 [ true, %96 ], [ true, %94 ], [ true, %92 ], [ false, %91 ], [ false, %91 ], [ true, %98 ], !dbg !1359
  %123 = phi i32 [ 0, %96 ], [ 0, %94 ], [ 0, %92 ], [ 4095, %91 ], [ 4095, %91 ], [ 0, %98 ], !dbg !1359
  %124 = phi i8 [ 3, %96 ], [ 3, %94 ], [ 3, %92 ], [ 1, %91 ], [ 1, %91 ], [ %102, %98 ], !dbg !1290
  call void @llvm.dbg.value(metadata i8 %124, metadata !1215, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %123, metadata !1214, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %121, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %120, metadata !1207, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %119, metadata !1206, metadata !DIExpression()), !dbg !1223
  %125 = add i64 %69, 1, !dbg !1360
  call void @llvm.dbg.value(metadata i64 %125, metadata !1205, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata !DIArgList(%struct.mode_change* %45, i64 %69), metadata !1219, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 16, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1290
  %126 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 0, !dbg !1361
  store i8 %68, i8* %126, align 4, !dbg !1362, !tbaa !1258
  %127 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 1, !dbg !1363
  store i8 %124, i8* %127, align 1, !dbg !1364, !tbaa !1262
  %128 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 2, !dbg !1365
  store i32 %120, i32* %128, align 4, !dbg !1366, !tbaa !1265
  %129 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 3, !dbg !1367
  store i32 %121, i32* %129, align 4, !dbg !1368, !tbaa !1268
  %130 = icmp eq i32 %120, 0, !dbg !1369
  %131 = select i1 %130, i32 -1, i32 %120, !dbg !1369
  %132 = and i32 %131, %121, !dbg !1369
  %133 = select i1 %122, i32 %132, i32 %123, !dbg !1369
  %134 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %69, i32 4, !dbg !1370
  store i32 %133, i32* %134, align 4, !dbg !1371, !tbaa !1271
  call void @llvm.dbg.value(metadata i32 undef, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i32 %71, metadata !1207, metadata !DIExpression()), !dbg !1291
  call void @llvm.dbg.value(metadata i8* %80, metadata !1206, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %69, metadata !1205, metadata !DIExpression()), !dbg !1223
  %135 = load i8, i8* %119, align 1, !dbg !1372, !tbaa !567
  switch i8 %135, label %141 [
    i8 61, label %136
    i8 43, label %136
    i8 45, label %136
    i8 44, label %137
    i8 0, label %139
  ], !dbg !1373

136:                                              ; preds = %118, %118, %118
  br label %67, !dbg !1290

137:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i32 undef, metadata !1213, metadata !DIExpression()), !dbg !1290
  call void @llvm.dbg.value(metadata i8* %119, metadata !1206, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata i64 %125, metadata !1205, metadata !DIExpression()), !dbg !1223
  %138 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1374
  call void @llvm.dbg.value(metadata i8* %138, metadata !1206, metadata !DIExpression()), !dbg !1223
  br label %52, !dbg !1375, !llvm.loop !1376

139:                                              ; preds = %118
  %140 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %45, i64 %125, i32 1, !dbg !1379
  store i8 0, i8* %140, align 1, !dbg !1382, !tbaa !1262
  br label %142, !dbg !1383

141:                                              ; preds = %55, %89, %91, %118, %75
  call void @llvm.dbg.label(metadata !1222), !dbg !1384
  tail call void @free(i8* noundef nonnull %44) #32, !dbg !1385
  br label %142, !dbg !1386

142:                                              ; preds = %5, %139, %141, %21, %19
  %143 = phi %struct.mode_change* [ %30, %21 ], [ null, %19 ], [ null, %141 ], [ %45, %139 ], [ null, %5 ]
  ret %struct.mode_change* %143, !dbg !1387
}

; Function Attrs: nounwind uwtable
define dso_local noalias %struct.mode_change* @mode_create_from_ref(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !1388 {
  %2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !1390, metadata !DIExpression()), !dbg !1425
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !1426
  call void @llvm.lifetime.start.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1426
  call void @llvm.dbg.declare(metadata %struct.stat* %2, metadata !1391, metadata !DIExpression()), !dbg !1427
  %4 = call i32 @stat(i8* noundef %0, %struct.stat* noundef nonnull %2) #32, !dbg !1428
  %5 = icmp eq i32 %4, 0, !dbg !1430
  br i1 %5, label %6, label %19, !dbg !1431

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.stat, %struct.stat* %2, i64 0, i32 2, !dbg !1432
  %8 = load i32, i32* %7, align 8, !dbg !1432, !tbaa !1433
  call void @llvm.dbg.value(metadata i32 %8, metadata !1247, metadata !DIExpression()) #32, !dbg !1436
  call void @llvm.dbg.value(metadata i32 4095, metadata !1252, metadata !DIExpression()) #32, !dbg !1436
  %9 = tail call noalias nonnull i8* @xmalloc(i64 noundef 32) #38, !dbg !1438
  %10 = bitcast i8* %9 to %struct.mode_change*, !dbg !1438
  call void @llvm.dbg.value(metadata %struct.mode_change* %10, metadata !1253, metadata !DIExpression()) #32, !dbg !1436
  store i8 61, i8* %9, align 4, !dbg !1439, !tbaa !1258
  %11 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !1440
  store i8 1, i8* %11, align 1, !dbg !1441, !tbaa !1262
  %12 = getelementptr inbounds i8, i8* %9, i64 4, !dbg !1442
  %13 = bitcast i8* %12 to i32*, !dbg !1442
  store i32 4095, i32* %13, align 4, !dbg !1443, !tbaa !1265
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !1444
  %15 = bitcast i8* %14 to i32*, !dbg !1444
  store i32 %8, i32* %15, align 4, !dbg !1445, !tbaa !1268
  %16 = getelementptr inbounds i8, i8* %9, i64 12, !dbg !1446
  %17 = bitcast i8* %16 to i32*, !dbg !1446
  store i32 4095, i32* %17, align 4, !dbg !1447, !tbaa !1271
  %18 = getelementptr inbounds i8, i8* %9, i64 17, !dbg !1448
  store i8 0, i8* %18, align 1, !dbg !1449, !tbaa !1262
  br label %19, !dbg !1450

19:                                               ; preds = %1, %6
  %20 = phi %struct.mode_change* [ %10, %6 ], [ null, %1 ], !dbg !1425
  call void @llvm.lifetime.end.p0i8(i64 128, i8* nonnull %3) #32, !dbg !1451
  ret %struct.mode_change* %20, !dbg !1451
}

; Function Attrs: nofree nounwind
declare !dbg !1452 noundef i32 @stat(i8* nocapture noundef readonly, %struct.stat* nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @mode_adjust(i32 noundef %0, i1 noundef %1, i32 noundef %2, %struct.mode_change* nocapture noundef readonly %3, i32* noundef writeonly %4) local_unnamed_addr #18 !dbg !1457 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1464, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i1 %1, metadata !1465, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %2, metadata !1466, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1467, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32* %4, metadata !1468, metadata !DIExpression()), !dbg !1480
  %6 = and i32 %0, 4095, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %6, metadata !1469, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 0, metadata !1470, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata %struct.mode_change* %3, metadata !1467, metadata !DIExpression()), !dbg !1480
  %7 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %3, i64 0, i32 1, !dbg !1482
  %8 = load i8, i8* %7, align 1, !dbg !1482, !tbaa !1262
  %9 = icmp eq i8 %8, 0, !dbg !1483
  br i1 %9, label %79, label %10, !dbg !1484

10:                                               ; preds = %5
  %11 = select i1 %1, i32 3072, i32 0
  %12 = zext i1 %1 to i32
  %13 = xor i32 %2, -1
  br label %14, !dbg !1484

14:                                               ; preds = %10, %72
  %15 = phi i8 [ %8, %10 ], [ %77, %72 ]
  %16 = phi %struct.mode_change* [ %3, %10 ], [ %75, %72 ]
  %17 = phi i32 [ %6, %10 ], [ %74, %72 ]
  %18 = phi i32 [ 0, %10 ], [ %73, %72 ]
  call void @llvm.dbg.value(metadata %struct.mode_change* %16, metadata !1467, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %17, metadata !1469, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %18, metadata !1470, metadata !DIExpression()), !dbg !1480
  %19 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 2, !dbg !1485
  %20 = load i32, i32* %19, align 4, !dbg !1485, !tbaa !1265
  call void @llvm.dbg.value(metadata i32 %20, metadata !1471, metadata !DIExpression()), !dbg !1486
  %21 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 4, !dbg !1487
  %22 = load i32, i32* %21, align 4, !dbg !1487, !tbaa !1271
  %23 = xor i32 %22, -1, !dbg !1488
  %24 = and i32 %11, %23, !dbg !1489
  call void @llvm.dbg.value(metadata i32 %24, metadata !1475, metadata !DIExpression()), !dbg !1486
  %25 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 3, !dbg !1490
  %26 = load i32, i32* %25, align 4, !dbg !1490, !tbaa !1268
  call void @llvm.dbg.value(metadata i32 %26, metadata !1476, metadata !DIExpression()), !dbg !1486
  switch i8 %15, label %47 [
    i8 2, label %41
    i8 3, label %27
  ], !dbg !1491

27:                                               ; preds = %14
  %28 = and i32 %26, %17, !dbg !1492
  call void @llvm.dbg.value(metadata i32 %28, metadata !1476, metadata !DIExpression()), !dbg !1486
  %29 = and i32 %28, 292, !dbg !1494
  %30 = icmp eq i32 %29, 0, !dbg !1495
  %31 = select i1 %30, i32 0, i32 292, !dbg !1495
  %32 = and i32 %28, 146, !dbg !1496
  %33 = icmp eq i32 %32, 0, !dbg !1497
  %34 = select i1 %33, i32 0, i32 146, !dbg !1497
  %35 = and i32 %28, 73, !dbg !1498
  %36 = icmp eq i32 %35, 0, !dbg !1499
  %37 = select i1 %36, i32 0, i32 73, !dbg !1499
  %38 = or i32 %34, %28, !dbg !1500
  %39 = or i32 %38, %31, !dbg !1501
  %40 = or i32 %39, %37, !dbg !1502
  call void @llvm.dbg.value(metadata i32 %40, metadata !1476, metadata !DIExpression()), !dbg !1486
  br label %47, !dbg !1503

41:                                               ; preds = %14
  %42 = and i32 %17, 73, !dbg !1504
  %43 = or i32 %42, %12, !dbg !1506
  %44 = icmp eq i32 %43, 0, !dbg !1506
  %45 = or i32 %26, 73
  %46 = select i1 %44, i32 %26, i32 %45, !dbg !1507
  br label %47, !dbg !1507

47:                                               ; preds = %41, %14, %27
  %48 = phi i32 [ %26, %14 ], [ %40, %27 ], [ %46, %41 ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %48, metadata !1476, metadata !DIExpression()), !dbg !1486
  %49 = icmp eq i32 %20, 0, !dbg !1508
  %50 = select i1 %49, i32 %13, i32 %20, !dbg !1508
  %51 = xor i32 %24, -1, !dbg !1509
  %52 = and i32 %50, %51, !dbg !1510
  %53 = and i32 %52, %48, !dbg !1511
  call void @llvm.dbg.value(metadata i32 %53, metadata !1476, metadata !DIExpression()), !dbg !1486
  %54 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 0, i32 0, !dbg !1512
  %55 = load i8, i8* %54, align 4, !dbg !1512, !tbaa !1258
  switch i8 %55, label %72 [
    i8 61, label %56
    i8 43, label %65
    i8 45, label %68
  ], !dbg !1513

56:                                               ; preds = %47
  %57 = xor i32 %20, -1, !dbg !1514
  %58 = select i1 %49, i32 0, i32 %57, !dbg !1514
  %59 = or i32 %58, %24, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %59, metadata !1477, metadata !DIExpression()), !dbg !1516
  %60 = and i32 %59, 4095, !dbg !1517
  %61 = xor i32 %60, 4095, !dbg !1517
  %62 = or i32 %61, %18, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %62, metadata !1470, metadata !DIExpression()), !dbg !1480
  %63 = and i32 %59, %17, !dbg !1519
  %64 = or i32 %53, %63, !dbg !1520
  call void @llvm.dbg.value(metadata i32 %64, metadata !1469, metadata !DIExpression()), !dbg !1480
  br label %72

65:                                               ; preds = %47
  %66 = or i32 %53, %18, !dbg !1521
  call void @llvm.dbg.value(metadata i32 %66, metadata !1470, metadata !DIExpression()), !dbg !1480
  %67 = or i32 %53, %17, !dbg !1522
  call void @llvm.dbg.value(metadata i32 %67, metadata !1469, metadata !DIExpression()), !dbg !1480
  br label %72, !dbg !1523

68:                                               ; preds = %47
  %69 = or i32 %53, %18, !dbg !1524
  call void @llvm.dbg.value(metadata i32 %69, metadata !1470, metadata !DIExpression()), !dbg !1480
  %70 = xor i32 %53, -1, !dbg !1525
  %71 = and i32 %17, %70, !dbg !1526
  call void @llvm.dbg.value(metadata i32 %71, metadata !1469, metadata !DIExpression()), !dbg !1480
  br label %72, !dbg !1527

72:                                               ; preds = %47, %68, %65, %56
  %73 = phi i32 [ %18, %47 ], [ %69, %68 ], [ %66, %65 ], [ %62, %56 ], !dbg !1480
  %74 = phi i32 [ %17, %47 ], [ %71, %68 ], [ %67, %65 ], [ %64, %56 ], !dbg !1480
  call void @llvm.dbg.value(metadata i32 %74, metadata !1469, metadata !DIExpression()), !dbg !1480
  call void @llvm.dbg.value(metadata i32 %73, metadata !1470, metadata !DIExpression()), !dbg !1480
  %75 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, !dbg !1528
  call void @llvm.dbg.value(metadata %struct.mode_change* %75, metadata !1467, metadata !DIExpression()), !dbg !1480
  %76 = getelementptr inbounds %struct.mode_change, %struct.mode_change* %16, i64 1, i32 1, !dbg !1482
  %77 = load i8, i8* %76, align 1, !dbg !1482, !tbaa !1262
  %78 = icmp eq i8 %77, 0, !dbg !1483
  br i1 %78, label %79, label %14, !dbg !1484, !llvm.loop !1529

79:                                               ; preds = %72, %5
  %80 = phi i32 [ 0, %5 ], [ %73, %72 ], !dbg !1531
  %81 = phi i32 [ %6, %5 ], [ %74, %72 ], !dbg !1532
  %82 = icmp eq i32* %4, null, !dbg !1533
  br i1 %82, label %84, label %83, !dbg !1535

83:                                               ; preds = %79
  store i32 %80, i32* %4, align 4, !dbg !1536, !tbaa !558
  br label %84, !dbg !1537

84:                                               ; preds = %83, %79
  ret i32 %81, !dbg !1538
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #19 !dbg !1539 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1541, metadata !DIExpression()), !dbg !1544
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #33, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %2, metadata !1542, metadata !DIExpression()), !dbg !1544
  %3 = icmp eq i8* %2, null, !dbg !1546
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1546
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !1546
  call void @llvm.dbg.value(metadata i8* %5, metadata !1543, metadata !DIExpression()), !dbg !1544
  %6 = ptrtoint i8* %5 to i64, !dbg !1547
  %7 = ptrtoint i8* %0 to i64, !dbg !1547
  %8 = sub i64 %6, %7, !dbg !1547
  %9 = icmp sgt i64 %8, 6, !dbg !1549
  br i1 %9, label %10, label %19, !dbg !1550

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !1551
  call void @llvm.dbg.value(metadata i8* %11, metadata !1552, metadata !DIExpression()) #32, !dbg !1559
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), metadata !1557, metadata !DIExpression()) #32, !dbg !1559
  call void @llvm.dbg.value(metadata i64 7, metadata !1558, metadata !DIExpression()) #32, !dbg !1559
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i64 0, i64 0), i64 7) #32, !dbg !1561
  %13 = icmp eq i32 %12, 0, !dbg !1562
  br i1 %13, label %14, label %19, !dbg !1563

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !1541, metadata !DIExpression()), !dbg !1544
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.75, i64 0, i64 0), i64 noundef 3) #33, !dbg !1564
  %16 = icmp eq i32 %15, 0, !dbg !1567
  %17 = select i1 %16, i64 3, i64 0, !dbg !1568
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !1568
  br label %19, !dbg !1568

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %21, metadata !1543, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %20, metadata !1541, metadata !DIExpression()), !dbg !1544
  store i8* %20, i8** @program_name, align 8, !dbg !1569, !tbaa !463
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !1570, !tbaa !463
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !1571, !tbaa !463
  ret void, !dbg !1572
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #20

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #12 !dbg !219 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !226, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i8* %1, metadata !227, metadata !DIExpression()), !dbg !1573
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #32, !dbg !1574
  call void @llvm.dbg.value(metadata i8* %5, metadata !228, metadata !DIExpression()), !dbg !1573
  %6 = icmp eq i8* %5, %0, !dbg !1575
  br i1 %6, label %7, label %17, !dbg !1577

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !1578
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1578
  %10 = bitcast i64* %4 to i8*, !dbg !1579
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1579
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !234, metadata !DIExpression()), !dbg !1580
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !1581, metadata !DIExpression()) #32, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %10, metadata !1590, metadata !DIExpression()) #32, !dbg !1598
  call void @llvm.dbg.value(metadata i32 0, metadata !1596, metadata !DIExpression()) #32, !dbg !1598
  call void @llvm.dbg.value(metadata i64 8, metadata !1597, metadata !DIExpression()) #32, !dbg !1598
  store i64 0, i64* %4, align 8, !dbg !1600
  call void @llvm.dbg.value(metadata i32* %3, metadata !229, metadata !DIExpression(DW_OP_deref)), !dbg !1573
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #32, !dbg !1601
  %12 = icmp eq i64 %11, 2, !dbg !1603
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !229, metadata !DIExpression()), !dbg !1573
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1604
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !1573
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #32, !dbg !1605
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #32, !dbg !1605
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !1573
  ret i8* %18, !dbg !1605
}

; Function Attrs: nounwind
declare !dbg !1606 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #12 !dbg !1612 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1617, metadata !DIExpression()), !dbg !1620
  %2 = tail call i32* @__errno_location() #35, !dbg !1621
  %3 = load i32, i32* %2, align 4, !dbg !1621, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %3, metadata !1618, metadata !DIExpression()), !dbg !1620
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1622
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1622
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1622
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #40, !dbg !1623
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1623
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1619, metadata !DIExpression()), !dbg !1620
  store i32 %3, i32* %2, align 4, !dbg !1624, !tbaa !558
  ret %struct.quoting_options* %8, !dbg !1625
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #18 !dbg !1626 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1632, metadata !DIExpression()), !dbg !1633
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1634
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1634
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1635
  %5 = load i32, i32* %4, align 8, !dbg !1635, !tbaa !1636
  ret i32 %5, !dbg !1638
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #14 !dbg !1639 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1643, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i32 %1, metadata !1644, metadata !DIExpression()), !dbg !1645
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1646
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1646
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1647
  store i32 %1, i32* %5, align 8, !dbg !1648, !tbaa !1636
  ret void, !dbg !1649
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #21 !dbg !1650 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1654, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %1, metadata !1655, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i32 %2, metadata !1656, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()), !dbg !1662
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1663
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1663
  %6 = lshr i8 %1, 5, !dbg !1664
  %7 = zext i8 %6 to i64, !dbg !1664
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1665
  call void @llvm.dbg.value(metadata i32* %8, metadata !1658, metadata !DIExpression()), !dbg !1662
  %9 = and i8 %1, 31, !dbg !1666
  %10 = zext i8 %9 to i32, !dbg !1666
  call void @llvm.dbg.value(metadata i32 %10, metadata !1660, metadata !DIExpression()), !dbg !1662
  %11 = load i32, i32* %8, align 4, !dbg !1667, !tbaa !558
  %12 = lshr i32 %11, %10, !dbg !1668
  %13 = and i32 %12, 1, !dbg !1669
  call void @llvm.dbg.value(metadata i32 %13, metadata !1661, metadata !DIExpression()), !dbg !1662
  %14 = and i32 %2, 1, !dbg !1670
  %15 = xor i32 %13, %14, !dbg !1671
  %16 = shl i32 %15, %10, !dbg !1672
  %17 = xor i32 %16, %11, !dbg !1673
  store i32 %17, i32* %8, align 4, !dbg !1673, !tbaa !558
  ret i32 %13, !dbg !1674
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #21 !dbg !1675 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1679, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i32 %1, metadata !1680, metadata !DIExpression()), !dbg !1682
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1683
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1685
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1679, metadata !DIExpression()), !dbg !1682
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1686
  %6 = load i32, i32* %5, align 4, !dbg !1686, !tbaa !1687
  call void @llvm.dbg.value(metadata i32 %6, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 %1, i32* %5, align 4, !dbg !1688, !tbaa !1687
  ret i32 %6, !dbg !1689
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !1690 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %1, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i8* %2, metadata !1696, metadata !DIExpression()), !dbg !1697
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1698
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1700
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1694, metadata !DIExpression()), !dbg !1697
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1701
  store i32 10, i32* %6, align 8, !dbg !1702, !tbaa !1636
  %7 = icmp ne i8* %1, null, !dbg !1703
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !1705
  br i1 %9, label %11, label %10, !dbg !1705

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !1706
  unreachable, !dbg !1706

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1707
  store i8* %1, i8** %12, align 8, !dbg !1708, !tbaa !1709
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1710
  store i8* %2, i8** %13, align 8, !dbg !1711, !tbaa !1712
  ret void, !dbg !1713
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #12 !dbg !1714 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1718, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %1, metadata !1719, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8* %2, metadata !1720, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i64 %3, metadata !1721, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1722, metadata !DIExpression()), !dbg !1726
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1727
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1727
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1723, metadata !DIExpression()), !dbg !1726
  %8 = tail call i32* @__errno_location() #35, !dbg !1728
  %9 = load i32, i32* %8, align 4, !dbg !1728, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %9, metadata !1724, metadata !DIExpression()), !dbg !1726
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1729
  %11 = load i32, i32* %10, align 8, !dbg !1729, !tbaa !1636
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1730
  %13 = load i32, i32* %12, align 4, !dbg !1730, !tbaa !1687
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1731
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1732
  %16 = load i8*, i8** %15, align 8, !dbg !1732, !tbaa !1709
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1733
  %18 = load i8*, i8** %17, align 8, !dbg !1733, !tbaa !1712
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !1734
  call void @llvm.dbg.value(metadata i64 %19, metadata !1725, metadata !DIExpression()), !dbg !1726
  store i32 %9, i32* %8, align 4, !dbg !1735, !tbaa !558
  ret i64 %19, !dbg !1736
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #12 !dbg !1737 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1743, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %1, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %2, metadata !1745, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %3, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %4, metadata !1747, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %5, metadata !1748, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32* %6, metadata !1749, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %7, metadata !1750, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %8, metadata !1751, metadata !DIExpression()), !dbg !1805
  %17 = tail call i64 @__ctype_get_mb_cur_max() #32, !dbg !1806
  %18 = icmp eq i64 %17, 1, !dbg !1807
  call void @llvm.dbg.value(metadata i1 %18, metadata !1752, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1805
  call void @llvm.dbg.value(metadata i64 0, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 0, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* null, metadata !1755, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 0, metadata !1756, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %5, metadata !1758, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1760, metadata !DIExpression()), !dbg !1805
  %19 = and i32 %5, 2, !dbg !1808
  %20 = icmp ne i32 %19, 0, !dbg !1808
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
  br label %36, !dbg !1808

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !1809
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !1810
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !1811
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %43, metadata !1756, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %42, metadata !1755, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %41, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 0, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %40, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %39, metadata !1751, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %38, metadata !1750, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %37, metadata !1747, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.label(metadata !1798), !dbg !1812
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1805
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
  ], !dbg !1813

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 5, metadata !1747, metadata !DIExpression()), !dbg !1805
  br label %111, !dbg !1814

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 5, metadata !1747, metadata !DIExpression()), !dbg !1805
  br i1 %45, label %111, label %51, !dbg !1814

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !1815
  br i1 %52, label %111, label %53, !dbg !1819

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !1815, !tbaa !567
  br label %111, !dbg !1815

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), metadata !296, metadata !DIExpression()) #32, !dbg !1820
  call void @llvm.dbg.value(metadata i32 %37, metadata !297, metadata !DIExpression()) #32, !dbg !1820
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), i32 noundef 5) #32, !dbg !1824
  call void @llvm.dbg.value(metadata i8* %55, metadata !298, metadata !DIExpression()) #32, !dbg !1820
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.88, i64 0, i64 0), !dbg !1825
  br i1 %56, label %57, label %66, !dbg !1827

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1828
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1829
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !300, metadata !DIExpression()) #32, !dbg !1830
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !1831, metadata !DIExpression()) #32, !dbg !1837
  call void @llvm.dbg.value(metadata i8* %23, metadata !1839, metadata !DIExpression()) #32, !dbg !1844
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()) #32, !dbg !1844
  call void @llvm.dbg.value(metadata i64 8, metadata !1843, metadata !DIExpression()) #32, !dbg !1844
  store i64 0, i64* %13, align 8, !dbg !1846
  call void @llvm.dbg.value(metadata i32* %12, metadata !299, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1820
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #32, !dbg !1847
  %59 = icmp eq i64 %58, 3, !dbg !1849
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !299, metadata !DIExpression()) #32, !dbg !1820
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !1850
  %63 = icmp eq i32 %37, 9, !dbg !1850
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1850
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !1850
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #32, !dbg !1851
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !1820
  call void @llvm.dbg.value(metadata i8* %67, metadata !1750, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), metadata !296, metadata !DIExpression()) #32, !dbg !1852
  call void @llvm.dbg.value(metadata i32 %37, metadata !297, metadata !DIExpression()) #32, !dbg !1852
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.89, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), i32 noundef 5) #32, !dbg !1854
  call void @llvm.dbg.value(metadata i8* %68, metadata !298, metadata !DIExpression()) #32, !dbg !1852
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1855
  br i1 %69, label %70, label %79, !dbg !1856

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1857
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1858
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !300, metadata !DIExpression()) #32, !dbg !1859
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !1831, metadata !DIExpression()) #32, !dbg !1860
  call void @llvm.dbg.value(metadata i8* %26, metadata !1839, metadata !DIExpression()) #32, !dbg !1862
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()) #32, !dbg !1862
  call void @llvm.dbg.value(metadata i64 8, metadata !1843, metadata !DIExpression()) #32, !dbg !1862
  store i64 0, i64* %11, align 8, !dbg !1864
  call void @llvm.dbg.value(metadata i32* %10, metadata !299, metadata !DIExpression(DW_OP_deref)) #32, !dbg !1852
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #32, !dbg !1865
  %72 = icmp eq i64 %71, 3, !dbg !1866
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !299, metadata !DIExpression()) #32, !dbg !1852
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !1867
  %76 = icmp eq i32 %37, 9, !dbg !1867
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), !dbg !1867
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !1867
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #32, !dbg !1868
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #32, !dbg !1868
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !1751, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %80, metadata !1750, metadata !DIExpression()), !dbg !1805
  br i1 %45, label %97, label %82, !dbg !1869

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !1762, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 0, metadata !1753, metadata !DIExpression()), !dbg !1805
  %83 = load i8, i8* %80, align 1, !dbg !1871, !tbaa !567
  %84 = icmp eq i8 %83, 0, !dbg !1873
  br i1 %84, label %97, label %85, !dbg !1873

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !1762, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.value(metadata i64 %88, metadata !1753, metadata !DIExpression()), !dbg !1805
  %89 = icmp ult i64 %88, %48, !dbg !1874
  br i1 %89, label %90, label %92, !dbg !1877

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !1874
  store i8 %86, i8* %91, align 1, !dbg !1874, !tbaa !567
  br label %92, !dbg !1874

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %93, metadata !1753, metadata !DIExpression()), !dbg !1805
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !1878
  call void @llvm.dbg.value(metadata i8* %94, metadata !1762, metadata !DIExpression()), !dbg !1870
  %95 = load i8, i8* %94, align 1, !dbg !1871, !tbaa !567
  %96 = icmp eq i8 %95, 0, !dbg !1873
  br i1 %96, label %97, label %85, !dbg !1873, !llvm.loop !1879

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !1881
  call void @llvm.dbg.value(metadata i64 %98, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %81, metadata !1755, metadata !DIExpression()), !dbg !1805
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #33, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %99, metadata !1756, metadata !DIExpression()), !dbg !1805
  br label %111, !dbg !1883

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !1757, metadata !DIExpression()), !dbg !1805
  br label %102, !dbg !1884

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1805
  br i1 %45, label %102, label %105, !dbg !1885

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 2, metadata !1747, metadata !DIExpression()), !dbg !1805
  br label %111, !dbg !1886

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 2, metadata !1747, metadata !DIExpression()), !dbg !1805
  br i1 %45, label %111, label %105, !dbg !1886

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !1887
  br i1 %107, label %111, label %108, !dbg !1891

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !1887, !tbaa !567
  br label %111, !dbg !1887

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !1758, metadata !DIExpression()), !dbg !1805
  br label %111, !dbg !1892

110:                                              ; preds = %36
  call void @abort() #34, !dbg !1893
  unreachable, !dbg !1893

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !1881
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.90, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.91, i64 0, i64 0), %102 ], !dbg !1805
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !1805
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1758, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1757, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %117, metadata !1756, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %116, metadata !1755, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %115, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %114, metadata !1751, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8* %113, metadata !1750, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i32 %112, metadata !1747, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 0, metadata !1767, metadata !DIExpression()), !dbg !1894
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
  br label %132, !dbg !1895

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !1881
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !1809
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !1894
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %139, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %135, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %134, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %133, metadata !1746, metadata !DIExpression()), !dbg !1805
  %141 = icmp eq i64 %133, -1, !dbg !1896
  br i1 %141, label %142, label %146, !dbg !1897

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1898
  %144 = load i8, i8* %143, align 1, !dbg !1898, !tbaa !567
  %145 = icmp eq i8 %144, 0, !dbg !1899
  br i1 %145, label %596, label %148, !dbg !1900

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !1901
  br i1 %147, label %596, label %148, !dbg !1900

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 0, metadata !1773, metadata !DIExpression()), !dbg !1902
  br i1 %123, label %149, label %163, !dbg !1903

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !1905
  %151 = select i1 %141, i1 %124, i1 false, !dbg !1906
  br i1 %151, label %152, label %154, !dbg !1906

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !1907
  call void @llvm.dbg.value(metadata i64 %153, metadata !1746, metadata !DIExpression()), !dbg !1805
  br label %154, !dbg !1908

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !1908
  call void @llvm.dbg.value(metadata i64 %155, metadata !1746, metadata !DIExpression()), !dbg !1805
  %156 = icmp ugt i64 %150, %155, !dbg !1909
  br i1 %156, label %163, label %157, !dbg !1910

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1911
  call void @llvm.dbg.value(metadata i8* %158, metadata !1912, metadata !DIExpression()) #32, !dbg !1917
  call void @llvm.dbg.value(metadata i8* %116, metadata !1915, metadata !DIExpression()) #32, !dbg !1917
  call void @llvm.dbg.value(metadata i64 %117, metadata !1916, metadata !DIExpression()) #32, !dbg !1917
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #32, !dbg !1919
  %160 = icmp ne i32 %159, 0, !dbg !1920
  %161 = or i1 %160, %125, !dbg !1921
  %162 = xor i1 %160, true, !dbg !1921
  br i1 %161, label %163, label %647, !dbg !1921

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %164, metadata !1746, metadata !DIExpression()), !dbg !1805
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !1922
  %167 = load i8, i8* %166, align 1, !dbg !1922, !tbaa !567
  call void @llvm.dbg.value(metadata i8 %167, metadata !1774, metadata !DIExpression()), !dbg !1902
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
  ], !dbg !1923

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !1924

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !1925

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1902
  %171 = select i1 %120, i1 true, i1 %138, !dbg !1929
  br i1 %171, label %188, label %172, !dbg !1929

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !1931
  br i1 %173, label %174, label %176, !dbg !1935

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1931
  store i8 39, i8* %175, align 1, !dbg !1931, !tbaa !567
  br label %176, !dbg !1931

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %177, metadata !1753, metadata !DIExpression()), !dbg !1805
  %178 = icmp ult i64 %177, %140, !dbg !1936
  br i1 %178, label %179, label %181, !dbg !1939

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !1936
  store i8 36, i8* %180, align 1, !dbg !1936, !tbaa !567
  br label %181, !dbg !1936

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %182, metadata !1753, metadata !DIExpression()), !dbg !1805
  %183 = icmp ult i64 %182, %140, !dbg !1940
  br i1 %183, label %184, label %186, !dbg !1943

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !1940
  store i8 39, i8* %185, align 1, !dbg !1940, !tbaa !567
  br label %186, !dbg !1940

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %187, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %188, !dbg !1944

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !1805
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %189, metadata !1753, metadata !DIExpression()), !dbg !1805
  %191 = icmp ult i64 %189, %140, !dbg !1945
  br i1 %191, label %192, label %194, !dbg !1948

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !1945
  store i8 92, i8* %193, align 1, !dbg !1945, !tbaa !567
  br label %194, !dbg !1945

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %195, metadata !1753, metadata !DIExpression()), !dbg !1805
  br i1 %120, label %196, label %499, !dbg !1949

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !1951
  %198 = icmp ult i64 %197, %164, !dbg !1952
  br i1 %198, label %199, label %456, !dbg !1953

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !1954
  %201 = load i8, i8* %200, align 1, !dbg !1954, !tbaa !567
  %202 = add i8 %201, -48, !dbg !1955
  %203 = icmp ult i8 %202, 10, !dbg !1955
  br i1 %203, label %204, label %456, !dbg !1955

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !1956
  br i1 %205, label %206, label %208, !dbg !1960

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !1956
  store i8 48, i8* %207, align 1, !dbg !1956, !tbaa !567
  br label %208, !dbg !1956

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %209, metadata !1753, metadata !DIExpression()), !dbg !1805
  %210 = icmp ult i64 %209, %140, !dbg !1961
  br i1 %210, label %211, label %213, !dbg !1964

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !1961
  store i8 48, i8* %212, align 1, !dbg !1961, !tbaa !567
  br label %213, !dbg !1961

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !1964
  call void @llvm.dbg.value(metadata i64 %214, metadata !1753, metadata !DIExpression()), !dbg !1805
  br label %456, !dbg !1965

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !1966

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !1967

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !1968

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !1970

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !1972
  %221 = icmp ult i64 %220, %164, !dbg !1973
  br i1 %221, label %222, label %456, !dbg !1974

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !1975
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !1976
  %225 = load i8, i8* %224, align 1, !dbg !1976, !tbaa !567
  %226 = icmp eq i8 %225, 63, !dbg !1977
  br i1 %226, label %227, label %456, !dbg !1978

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !1979
  %229 = load i8, i8* %228, align 1, !dbg !1979, !tbaa !567
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
  ], !dbg !1980

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !1981

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %220, metadata !1767, metadata !DIExpression()), !dbg !1894
  %232 = icmp ult i64 %134, %140, !dbg !1983
  br i1 %232, label %233, label %235, !dbg !1986

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !1983
  store i8 63, i8* %234, align 1, !dbg !1983, !tbaa !567
  br label %235, !dbg !1983

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !1986
  call void @llvm.dbg.value(metadata i64 %236, metadata !1753, metadata !DIExpression()), !dbg !1805
  %237 = icmp ult i64 %236, %140, !dbg !1987
  br i1 %237, label %238, label %240, !dbg !1990

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !1987
  store i8 34, i8* %239, align 1, !dbg !1987, !tbaa !567
  br label %240, !dbg !1987

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !1990
  call void @llvm.dbg.value(metadata i64 %241, metadata !1753, metadata !DIExpression()), !dbg !1805
  %242 = icmp ult i64 %241, %140, !dbg !1991
  br i1 %242, label %243, label %245, !dbg !1994

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !1991
  store i8 34, i8* %244, align 1, !dbg !1991, !tbaa !567
  br label %245, !dbg !1991

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !1994
  call void @llvm.dbg.value(metadata i64 %246, metadata !1753, metadata !DIExpression()), !dbg !1805
  %247 = icmp ult i64 %246, %140, !dbg !1995
  br i1 %247, label %248, label %250, !dbg !1998

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !1995
  store i8 63, i8* %249, align 1, !dbg !1995, !tbaa !567
  br label %250, !dbg !1995

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !1998
  call void @llvm.dbg.value(metadata i64 %251, metadata !1753, metadata !DIExpression()), !dbg !1805
  br label %456, !dbg !1999

252:                                              ; preds = %163
  br label %263, !dbg !2000

253:                                              ; preds = %163
  br label %263, !dbg !2001

254:                                              ; preds = %163
  br label %261, !dbg !2002

255:                                              ; preds = %163
  br label %261, !dbg !2003

256:                                              ; preds = %163
  br label %263, !dbg !2004

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2005

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2006

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2009

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2011

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2012
  call void @llvm.dbg.label(metadata !1799), !dbg !2013
  br i1 %128, label %263, label %638, !dbg !2014

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2012
  call void @llvm.dbg.label(metadata !1801), !dbg !2016
  br i1 %118, label %510, label %467, !dbg !2017

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2018

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2019, !tbaa !567
  %268 = icmp eq i8 %267, 0, !dbg !2021
  br i1 %268, label %269, label %456, !dbg !2022

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2023
  br i1 %270, label %271, label %456, !dbg !2025

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1902
  br label %272, !dbg !2026

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !1773, metadata !DIExpression()), !dbg !1902
  br i1 %126, label %274, label %456, !dbg !2027

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2029

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1773, metadata !DIExpression()), !dbg !1902
  br i1 %126, label %276, label %456, !dbg !2030

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2031

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2034
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2036
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2036
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2036
  call void @llvm.dbg.value(metadata i64 %282, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %281, metadata !1754, metadata !DIExpression()), !dbg !1805
  %283 = icmp ult i64 %134, %282, !dbg !2037
  br i1 %283, label %284, label %286, !dbg !2040

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2037
  store i8 39, i8* %285, align 1, !dbg !2037, !tbaa !567
  br label %286, !dbg !2037

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2040
  call void @llvm.dbg.value(metadata i64 %287, metadata !1753, metadata !DIExpression()), !dbg !1805
  %288 = icmp ult i64 %287, %282, !dbg !2041
  br i1 %288, label %289, label %291, !dbg !2044

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2041
  store i8 92, i8* %290, align 1, !dbg !2041, !tbaa !567
  br label %291, !dbg !2041

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %292, metadata !1753, metadata !DIExpression()), !dbg !1805
  %293 = icmp ult i64 %292, %282, !dbg !2045
  br i1 %293, label %294, label %296, !dbg !2048

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2045
  store i8 39, i8* %295, align 1, !dbg !2045, !tbaa !567
  br label %296, !dbg !2045

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2048
  call void @llvm.dbg.value(metadata i64 %297, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %456, !dbg !2049

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2050

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !1775, metadata !DIExpression()), !dbg !2051
  %300 = tail call i16** @__ctype_b_loc() #35, !dbg !2052
  %301 = load i16*, i16** %300, align 8, !dbg !2052, !tbaa !463
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2052
  %304 = load i16, i16* %303, align 2, !dbg !2052, !tbaa !592
  %305 = and i16 %304, 16384, !dbg !2052
  %306 = icmp ne i16 %305, 0, !dbg !2054
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %349, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %312, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i1 %350, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %352, !dbg !2055

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #32, !dbg !2056
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !1779, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !1831, metadata !DIExpression()) #32, !dbg !2058
  call void @llvm.dbg.value(metadata i8* %32, metadata !1839, metadata !DIExpression()) #32, !dbg !2060
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()) #32, !dbg !2060
  call void @llvm.dbg.value(metadata i64 8, metadata !1843, metadata !DIExpression()) #32, !dbg !2060
  store i64 0, i64* %14, align 8, !dbg !2062
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8 1, metadata !1778, metadata !DIExpression()), !dbg !2051
  %308 = icmp eq i64 %164, -1, !dbg !2063
  br i1 %308, label %309, label %311, !dbg !2065

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #33, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %310, metadata !1746, metadata !DIExpression()), !dbg !1805
  br label %311, !dbg !2067

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !1902
  call void @llvm.dbg.value(metadata i64 %312, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #32, !dbg !2068
  %313 = sub i64 %312, %139, !dbg !2069
  call void @llvm.dbg.value(metadata i32* %16, metadata !1782, metadata !DIExpression(DW_OP_deref)), !dbg !2070
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #32, !dbg !2071
  call void @llvm.dbg.value(metadata i64 %314, metadata !1786, metadata !DIExpression()), !dbg !2070
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2072

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  %316 = icmp ugt i64 %312, %139, !dbg !2073
  br i1 %316, label %319, label %317, !dbg !2075

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %349, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %312, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i1 %350, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %352, !dbg !2055

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !1778, metadata !DIExpression()), !dbg !2051
  br label %346, !dbg !2078

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !1775, metadata !DIExpression()), !dbg !2051
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2080
  %323 = load i8, i8* %322, align 1, !dbg !2080, !tbaa !567
  %324 = icmp eq i8 %323, 0, !dbg !2075
  br i1 %324, label %348, label %325, !dbg !2081

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2082
  call void @llvm.dbg.value(metadata i64 %326, metadata !1775, metadata !DIExpression()), !dbg !2051
  %327 = add i64 %326, %139, !dbg !2083
  %328 = icmp eq i64 %326, %313, !dbg !2073
  br i1 %328, label %348, label %319, !dbg !2075, !llvm.loop !2084

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2085
  call void @llvm.dbg.value(metadata i64 1, metadata !1787, metadata !DIExpression()), !dbg !2086
  br i1 %331, label %332, label %340, !dbg !2085

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !1787, metadata !DIExpression()), !dbg !2086
  %334 = add i64 %333, %139, !dbg !2087
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2089
  %336 = load i8, i8* %335, align 1, !dbg !2089, !tbaa !567
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2090

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i64 %338, metadata !1787, metadata !DIExpression()), !dbg !2086
  %339 = icmp eq i64 %338, %314, !dbg !2092
  br i1 %339, label %340, label %332, !dbg !2093, !llvm.loop !2094

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2096, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %341, metadata !1782, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i32 %341, metadata !2098, metadata !DIExpression()) #32, !dbg !2106
  %342 = call i32 @iswprint(i32 noundef %341) #32, !dbg !2108
  %343 = icmp ne i32 %342, 0, !dbg !2109
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %314, metadata !1775, metadata !DIExpression()), !dbg !2051
  br label %348, !dbg !2110

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !2077
  call void @llvm.dbg.label(metadata !1804), !dbg !2111
  %345 = select i1 %118, i32 4, i32 2, !dbg !2112
  br label %643, !dbg !2112

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %349, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %312, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i1 %350, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  br label %352, !dbg !2055

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1778, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 0, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #32, !dbg !2076
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #32, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %349, metadata !1775, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i64 %312, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i1 %350, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  %351 = icmp ugt i64 %349, 1, !dbg !2114
  br i1 %351, label %357, label %352, !dbg !2055

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2115
  br i1 %356, label %456, label %357, !dbg !2115

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %361, metadata !1795, metadata !DIExpression()), !dbg !2117
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2118

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !1805
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !1894
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2119
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %369, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %368, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %366, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %364, metadata !1753, metadata !DIExpression()), !dbg !1805
  br i1 %362, label %414, label %370, !dbg !2120

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2125

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1902
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2128
  br i1 %372, label %389, label %373, !dbg !2128

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2130
  br i1 %374, label %375, label %377, !dbg !2134

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2130
  store i8 39, i8* %376, align 1, !dbg !2130, !tbaa !567
  br label %377, !dbg !2130

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2134
  call void @llvm.dbg.value(metadata i64 %378, metadata !1753, metadata !DIExpression()), !dbg !1805
  %379 = icmp ult i64 %378, %140, !dbg !2135
  br i1 %379, label %380, label %382, !dbg !2138

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2135
  store i8 36, i8* %381, align 1, !dbg !2135, !tbaa !567
  br label %382, !dbg !2135

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %383, metadata !1753, metadata !DIExpression()), !dbg !1805
  %384 = icmp ult i64 %383, %140, !dbg !2139
  br i1 %384, label %385, label %387, !dbg !2142

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2139
  store i8 39, i8* %386, align 1, !dbg !2139, !tbaa !567
  br label %387, !dbg !2139

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2142
  call void @llvm.dbg.value(metadata i64 %388, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %389, !dbg !2143

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !1805
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %390, metadata !1753, metadata !DIExpression()), !dbg !1805
  %392 = icmp ult i64 %390, %140, !dbg !2144
  br i1 %392, label %393, label %395, !dbg !2147

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2144
  store i8 92, i8* %394, align 1, !dbg !2144, !tbaa !567
  br label %395, !dbg !2144

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2147
  call void @llvm.dbg.value(metadata i64 %396, metadata !1753, metadata !DIExpression()), !dbg !1805
  %397 = icmp ult i64 %396, %140, !dbg !2148
  br i1 %397, label %398, label %402, !dbg !2151

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2148
  %400 = or i8 %399, 48, !dbg !2148
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2148
  store i8 %400, i8* %401, align 1, !dbg !2148, !tbaa !567
  br label %402, !dbg !2148

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %403, metadata !1753, metadata !DIExpression()), !dbg !1805
  %404 = icmp ult i64 %403, %140, !dbg !2152
  br i1 %404, label %405, label %410, !dbg !2155

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2152
  %407 = and i8 %406, 7, !dbg !2152
  %408 = or i8 %407, 48, !dbg !2152
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2152
  store i8 %408, i8* %409, align 1, !dbg !2152, !tbaa !567
  br label %410, !dbg !2152

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2155
  call void @llvm.dbg.value(metadata i64 %411, metadata !1753, metadata !DIExpression()), !dbg !1805
  %412 = and i8 %369, 7, !dbg !2156
  %413 = or i8 %412, 48, !dbg !2157
  call void @llvm.dbg.value(metadata i8 %413, metadata !1774, metadata !DIExpression()), !dbg !1902
  br label %421, !dbg !2158

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2159

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2160
  br i1 %416, label %417, label %419, !dbg !2165

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2160
  store i8 92, i8* %418, align 1, !dbg !2160, !tbaa !567
  br label %419, !dbg !2160

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2165
  call void @llvm.dbg.value(metadata i64 %420, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1902
  br label %421, !dbg !2166

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !1805
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !1902
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !1902
  call void @llvm.dbg.value(metadata i8 %426, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %425, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %422, metadata !1753, metadata !DIExpression()), !dbg !1805
  %427 = add i64 %366, 1, !dbg !2167
  %428 = icmp ugt i64 %361, %427, !dbg !2169
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2170

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2171
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2171
  br i1 %432, label %433, label %444, !dbg !2171

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2174
  br i1 %434, label %435, label %437, !dbg !2178

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2174
  store i8 39, i8* %436, align 1, !dbg !2174, !tbaa !567
  br label %437, !dbg !2174

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2178
  call void @llvm.dbg.value(metadata i64 %438, metadata !1753, metadata !DIExpression()), !dbg !1805
  %439 = icmp ult i64 %438, %140, !dbg !2179
  br i1 %439, label %440, label %442, !dbg !2182

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2179
  store i8 39, i8* %441, align 1, !dbg !2179, !tbaa !567
  br label %442, !dbg !2179

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2182
  call void @llvm.dbg.value(metadata i64 %443, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %444, !dbg !2183

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2184
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %445, metadata !1753, metadata !DIExpression()), !dbg !1805
  %447 = icmp ult i64 %445, %140, !dbg !2185
  br i1 %447, label %448, label %450, !dbg !2188

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2185
  store i8 %426, i8* %449, align 1, !dbg !2185, !tbaa !567
  br label %450, !dbg !2185

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2188
  call void @llvm.dbg.value(metadata i64 %451, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %427, metadata !1767, metadata !DIExpression()), !dbg !1894
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2189
  %453 = load i8, i8* %452, align 1, !dbg !2189, !tbaa !567
  call void @llvm.dbg.value(metadata i8 %453, metadata !1774, metadata !DIExpression()), !dbg !1902
  br label %363, !dbg !2190, !llvm.loop !2191

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i1 %358, metadata !1773, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1902
  call void @llvm.dbg.value(metadata i8 %425, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %366, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %422, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %360, metadata !1746, metadata !DIExpression()), !dbg !1805
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2194
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !1805
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !1809
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !1894
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !1902
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %465, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1773, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %462, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %459, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %458, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %457, metadata !1746, metadata !DIExpression()), !dbg !1805
  br i1 %121, label %478, label %467, !dbg !2195

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
  br i1 %131, label %479, label %499, !dbg !2197

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2198

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
  %490 = lshr i8 %481, 5, !dbg !2199
  %491 = zext i8 %490 to i64, !dbg !2199
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2200
  %493 = load i32, i32* %492, align 4, !dbg !2200, !tbaa !558
  %494 = and i8 %481, 31, !dbg !2201
  %495 = zext i8 %494 to i32, !dbg !2201
  %496 = shl nuw i32 1, %495, !dbg !2202
  %497 = and i32 %493, %496, !dbg !2202
  %498 = icmp eq i32 %497, 0, !dbg !2202
  br i1 %498, label %499, label %510, !dbg !2203

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
  br i1 %165, label %510, label %546, !dbg !2204

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2194
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !1805
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !1809
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2205
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !1902
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %518, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1773, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %516, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %513, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %512, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %511, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.label(metadata !1802), !dbg !2206
  br i1 %119, label %638, label %520, !dbg !2207

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !1772, metadata !DIExpression()), !dbg !1902
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2209
  br i1 %521, label %538, label %522, !dbg !2209

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2211
  br i1 %523, label %524, label %526, !dbg !2215

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2211
  store i8 39, i8* %525, align 1, !dbg !2211, !tbaa !567
  br label %526, !dbg !2211

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2215
  call void @llvm.dbg.value(metadata i64 %527, metadata !1753, metadata !DIExpression()), !dbg !1805
  %528 = icmp ult i64 %527, %519, !dbg !2216
  br i1 %528, label %529, label %531, !dbg !2219

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2216
  store i8 36, i8* %530, align 1, !dbg !2216, !tbaa !567
  br label %531, !dbg !2216

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2219
  call void @llvm.dbg.value(metadata i64 %532, metadata !1753, metadata !DIExpression()), !dbg !1805
  %533 = icmp ult i64 %532, %519, !dbg !2220
  br i1 %533, label %534, label %536, !dbg !2223

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2220
  store i8 39, i8* %535, align 1, !dbg !2220, !tbaa !567
  br label %536, !dbg !2220

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2223
  call void @llvm.dbg.value(metadata i64 %537, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 1, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %538, !dbg !2224

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !1902
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %539, metadata !1753, metadata !DIExpression()), !dbg !1805
  %541 = icmp ult i64 %539, %519, !dbg !2225
  br i1 %541, label %542, label %544, !dbg !2228

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2225
  store i8 92, i8* %543, align 1, !dbg !2225, !tbaa !567
  br label %544, !dbg !2225

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2228
  call void @llvm.dbg.value(metadata i64 %556, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %555, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1773, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %552, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %549, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %548, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %547, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.label(metadata !1803), !dbg !2229
  br label %570, !dbg !2230

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2194
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !1805
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !1809
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2205
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2233
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 %555, metadata !1774, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1773, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i8 poison, metadata !1772, metadata !DIExpression()), !dbg !1902
  call void @llvm.dbg.value(metadata i64 %552, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %549, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %548, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %547, metadata !1746, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.label(metadata !1803), !dbg !2229
  %557 = xor i1 %551, true, !dbg !2230
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2230
  br i1 %558, label %570, label %559, !dbg !2230

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2234
  br i1 %560, label %561, label %563, !dbg !2238

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2234
  store i8 39, i8* %562, align 1, !dbg !2234, !tbaa !567
  br label %563, !dbg !2234

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2238
  call void @llvm.dbg.value(metadata i64 %564, metadata !1753, metadata !DIExpression()), !dbg !1805
  %565 = icmp ult i64 %564, %556, !dbg !2239
  br i1 %565, label %566, label %568, !dbg !2242

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2239
  store i8 39, i8* %567, align 1, !dbg !2239, !tbaa !567
  br label %568, !dbg !2239

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2242
  call void @llvm.dbg.value(metadata i64 %569, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 0, metadata !1761, metadata !DIExpression()), !dbg !1805
  br label %570, !dbg !2243

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !1902
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %578, metadata !1753, metadata !DIExpression()), !dbg !1805
  %580 = icmp ult i64 %578, %571, !dbg !2244
  br i1 %580, label %581, label %583, !dbg !2247

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2244
  store i8 %572, i8* %582, align 1, !dbg !2244, !tbaa !567
  br label %583, !dbg !2244

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %584, metadata !1753, metadata !DIExpression()), !dbg !1805
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2248
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1805
  br label %586, !dbg !2249

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2194
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !1805
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !1809
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2205
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %593, metadata !1767, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 poison, metadata !1761, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %589, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %588, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %587, metadata !1746, metadata !DIExpression()), !dbg !1805
  %595 = add i64 %593, 1, !dbg !2250
  call void @llvm.dbg.value(metadata i64 %595, metadata !1767, metadata !DIExpression()), !dbg !1894
  br label %132, !dbg !2251, !llvm.loop !2252

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !1744, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1760, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 poison, metadata !1759, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 undef, metadata !1754, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 undef, metadata !1753, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 undef, metadata !1746, metadata !DIExpression()), !dbg !1805
  %597 = icmp eq i64 %134, 0, !dbg !2254
  %598 = and i1 %126, %597, !dbg !2256
  %599 = and i1 %598, %119, !dbg !2256
  br i1 %599, label %638, label %600, !dbg !2256

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2257
  %602 = or i1 %119, %601, !dbg !2257
  %603 = xor i1 %136, true, !dbg !2257
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2257
  br i1 %604, label %612, label %605, !dbg !2257

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2259

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2261
  br label %653, !dbg !2263

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2264
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2266
  br i1 %611, label %36, label %612, !dbg !2266

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2267
  %615 = or i1 %614, %613, !dbg !2269
  br i1 %615, label %631, label %616, !dbg !2269

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !1755, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %134, metadata !1753, metadata !DIExpression()), !dbg !1805
  %617 = load i8, i8* %116, align 1, !dbg !2270, !tbaa !567
  %618 = icmp eq i8 %617, 0, !dbg !2273
  br i1 %618, label %631, label %619, !dbg !2273

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !1755, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i64 %622, metadata !1753, metadata !DIExpression()), !dbg !1805
  %623 = icmp ult i64 %622, %140, !dbg !2274
  br i1 %623, label %624, label %626, !dbg !2277

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !2274
  store i8 %620, i8* %625, align 1, !dbg !2274, !tbaa !567
  br label %626, !dbg !2274

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !2277
  call void @llvm.dbg.value(metadata i64 %627, metadata !1753, metadata !DIExpression()), !dbg !1805
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !2278
  call void @llvm.dbg.value(metadata i8* %628, metadata !1755, metadata !DIExpression()), !dbg !1805
  %629 = load i8, i8* %628, align 1, !dbg !2270, !tbaa !567
  %630 = icmp eq i8 %629, 0, !dbg !2273
  br i1 %630, label %631, label %619, !dbg !2273, !llvm.loop !2279

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !1881
  call void @llvm.dbg.value(metadata i64 %632, metadata !1753, metadata !DIExpression()), !dbg !1805
  %633 = icmp ult i64 %632, %140, !dbg !2281
  br i1 %633, label %634, label %653, !dbg !2283

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !2284
  store i8 0, i8* %635, align 1, !dbg !2285, !tbaa !567
  br label %653, !dbg !2284

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !1804), !dbg !2111
  %637 = icmp eq i32 %112, 2, !dbg !2286
  br i1 %637, label %643, label %647, !dbg !2112

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !1804), !dbg !2111
  %641 = icmp eq i32 %112, 2, !dbg !2286
  %642 = select i1 %118, i32 4, i32 2, !dbg !2112
  br i1 %641, label %643, label %647, !dbg !2112

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2112

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !1747, metadata !DIExpression()), !dbg !1805
  %651 = and i32 %5, -3, !dbg !2287
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !2288
  br label %653, !dbg !2289

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !2290
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !2291 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #12 !dbg !2293 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2297, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i64 %1, metadata !2298, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2299, metadata !DIExpression()), !dbg !2300
  call void @llvm.dbg.value(metadata i8* %0, metadata !2301, metadata !DIExpression()) #32, !dbg !2314
  call void @llvm.dbg.value(metadata i64 %1, metadata !2306, metadata !DIExpression()) #32, !dbg !2314
  call void @llvm.dbg.value(metadata i64* null, metadata !2307, metadata !DIExpression()) #32, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2308, metadata !DIExpression()) #32, !dbg !2314
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2316
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2309, metadata !DIExpression()) #32, !dbg !2314
  %6 = tail call i32* @__errno_location() #35, !dbg !2317
  %7 = load i32, i32* %6, align 4, !dbg !2317, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %7, metadata !2310, metadata !DIExpression()) #32, !dbg !2314
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2318
  %9 = load i32, i32* %8, align 4, !dbg !2318, !tbaa !1687
  %10 = or i32 %9, 1, !dbg !2319
  call void @llvm.dbg.value(metadata i32 %10, metadata !2311, metadata !DIExpression()) #32, !dbg !2314
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2320
  %12 = load i32, i32* %11, align 8, !dbg !2320, !tbaa !1636
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2321
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2322
  %15 = load i8*, i8** %14, align 8, !dbg !2322, !tbaa !1709
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2323
  %17 = load i8*, i8** %16, align 8, !dbg !2323, !tbaa !1712
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #32, !dbg !2324
  %19 = add i64 %18, 1, !dbg !2325
  call void @llvm.dbg.value(metadata i64 %19, metadata !2312, metadata !DIExpression()) #32, !dbg !2314
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #38, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %20, metadata !2313, metadata !DIExpression()) #32, !dbg !2314
  %21 = load i32, i32* %11, align 8, !dbg !2327, !tbaa !1636
  %22 = load i8*, i8** %14, align 8, !dbg !2328, !tbaa !1709
  %23 = load i8*, i8** %16, align 8, !dbg !2329, !tbaa !1712
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #32, !dbg !2330
  store i32 %7, i32* %6, align 4, !dbg !2331, !tbaa !558
  ret i8* %20, !dbg !2332
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #12 !dbg !2302 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2301, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %1, metadata !2306, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64* %2, metadata !2307, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2308, metadata !DIExpression()), !dbg !2333
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2334
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2334
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2309, metadata !DIExpression()), !dbg !2333
  %7 = tail call i32* @__errno_location() #35, !dbg !2335
  %8 = load i32, i32* %7, align 4, !dbg !2335, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %8, metadata !2310, metadata !DIExpression()), !dbg !2333
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2336
  %10 = load i32, i32* %9, align 4, !dbg !2336, !tbaa !1687
  %11 = icmp eq i64* %2, null, !dbg !2337
  %12 = zext i1 %11 to i32, !dbg !2337
  %13 = or i32 %10, %12, !dbg !2338
  call void @llvm.dbg.value(metadata i32 %13, metadata !2311, metadata !DIExpression()), !dbg !2333
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2339
  %15 = load i32, i32* %14, align 8, !dbg !2339, !tbaa !1636
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2340
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2341
  %18 = load i8*, i8** %17, align 8, !dbg !2341, !tbaa !1709
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2342
  %20 = load i8*, i8** %19, align 8, !dbg !2342, !tbaa !1712
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !2343
  %22 = add i64 %21, 1, !dbg !2344
  call void @llvm.dbg.value(metadata i64 %22, metadata !2312, metadata !DIExpression()), !dbg !2333
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #38, !dbg !2345
  call void @llvm.dbg.value(metadata i8* %23, metadata !2313, metadata !DIExpression()), !dbg !2333
  %24 = load i32, i32* %14, align 8, !dbg !2346, !tbaa !1636
  %25 = load i8*, i8** %17, align 8, !dbg !2347, !tbaa !1709
  %26 = load i8*, i8** %19, align 8, !dbg !2348, !tbaa !1712
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !2349
  store i32 %8, i32* %7, align 4, !dbg !2350, !tbaa !558
  br i1 %11, label %29, label %28, !dbg !2351

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !2352, !tbaa !821
  br label %29, !dbg !2354

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !2355
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #12 !dbg !2356 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2361, !tbaa !463
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2358, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i32 1, metadata !2359, metadata !DIExpression()), !dbg !2363
  %2 = load i32, i32* @nslots, align 4, !tbaa !558
  call void @llvm.dbg.value(metadata i32 1, metadata !2359, metadata !DIExpression()), !dbg !2363
  %3 = icmp sgt i32 %2, 1, !dbg !2364
  br i1 %3, label %4, label %6, !dbg !2366

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !2364
  br label %10, !dbg !2366

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2367
  %8 = load i8*, i8** %7, align 8, !dbg !2367, !tbaa !2369
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2371
  br i1 %9, label %17, label %16, !dbg !2372

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !2359, metadata !DIExpression()), !dbg !2363
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !2373
  %13 = load i8*, i8** %12, align 8, !dbg !2373, !tbaa !2369
  tail call void @free(i8* noundef %13) #32, !dbg !2374
  %14 = add nuw nsw i64 %11, 1, !dbg !2375
  call void @llvm.dbg.value(metadata i64 %14, metadata !2359, metadata !DIExpression()), !dbg !2363
  %15 = icmp eq i64 %14, %5, !dbg !2364
  br i1 %15, label %6, label %10, !dbg !2366, !llvm.loop !2376

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #32, !dbg !2378
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2380, !tbaa !2381
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2382, !tbaa !2369
  br label %17, !dbg !2383

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2384
  br i1 %18, label %21, label %19, !dbg !2386

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2387
  tail call void @free(i8* noundef %20) #32, !dbg !2389
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2390, !tbaa !463
  br label %21, !dbg !2391

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !2392, !tbaa !558
  ret void, !dbg !2393
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2394 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2396, metadata !DIExpression()), !dbg !2398
  call void @llvm.dbg.value(metadata i8* %1, metadata !2397, metadata !DIExpression()), !dbg !2398
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2399
  ret i8* %3, !dbg !2400
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #12 !dbg !2401 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2405, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !2406, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i64 %2, metadata !2407, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2408, metadata !DIExpression()), !dbg !2421
  %6 = tail call i32* @__errno_location() #35, !dbg !2422
  %7 = load i32, i32* %6, align 4, !dbg !2422, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %7, metadata !2409, metadata !DIExpression()), !dbg !2421
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2423, !tbaa !463
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !2410, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !2411, metadata !DIExpression()), !dbg !2421
  %9 = icmp ugt i32 %0, 2147483646, !dbg !2424
  br i1 %9, label %10, label %11, !dbg !2424

10:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2426
  unreachable, !dbg !2426

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !2427, !tbaa !558
  %13 = icmp sgt i32 %12, %0, !dbg !2428
  br i1 %13, label %36, label %14, !dbg !2429

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !2430
  call void @llvm.dbg.value(metadata i1 %15, metadata !2412, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2431
  %16 = bitcast i64* %5 to i8*, !dbg !2432
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2432
  %17 = sext i32 %12 to i64, !dbg !2433
  call void @llvm.dbg.value(metadata i64 %17, metadata !2415, metadata !DIExpression()), !dbg !2431
  store i64 %17, i64* %5, align 8, !dbg !2434, !tbaa !821
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !2435
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2435
  %20 = add nuw nsw i32 %0, 1, !dbg !2436
  %21 = sub i32 %20, %12, !dbg !2437
  %22 = sext i32 %21 to i64, !dbg !2438
  call void @llvm.dbg.value(metadata i64* %5, metadata !2415, metadata !DIExpression(DW_OP_deref)), !dbg !2431
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #32, !dbg !2439
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2439
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2410, metadata !DIExpression()), !dbg !2421
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2440, !tbaa !463
  br i1 %15, label %25, label %26, !dbg !2441

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2442, !tbaa.struct !2444
  br label %26, !dbg !2445

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !2446, !tbaa !558
  %28 = sext i32 %27 to i64, !dbg !2447
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2447
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2448
  %31 = load i64, i64* %5, align 8, !dbg !2449, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %31, metadata !2415, metadata !DIExpression()), !dbg !2431
  %32 = sub nsw i64 %31, %28, !dbg !2450
  %33 = shl i64 %32, 4, !dbg !2451
  call void @llvm.dbg.value(metadata i8* %30, metadata !1839, metadata !DIExpression()) #32, !dbg !2452
  call void @llvm.dbg.value(metadata i32 0, metadata !1842, metadata !DIExpression()) #32, !dbg !2452
  call void @llvm.dbg.value(metadata i64 %33, metadata !1843, metadata !DIExpression()) #32, !dbg !2452
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #32, !dbg !2454
  %34 = load i64, i64* %5, align 8, !dbg !2455, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %34, metadata !2415, metadata !DIExpression()), !dbg !2431
  %35 = trunc i64 %34 to i32, !dbg !2455
  store i32 %35, i32* @nslots, align 4, !dbg !2456, !tbaa !558
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #32, !dbg !2457
  br label %36, !dbg !2458

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !2421
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !2410, metadata !DIExpression()), !dbg !2421
  %38 = zext i32 %0 to i64, !dbg !2459
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !2460
  %40 = load i64, i64* %39, align 8, !dbg !2460, !tbaa !2381
  call void @llvm.dbg.value(metadata i64 %40, metadata !2416, metadata !DIExpression()), !dbg !2461
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !2462
  %42 = load i8*, i8** %41, align 8, !dbg !2462, !tbaa !2369
  call void @llvm.dbg.value(metadata i8* %42, metadata !2418, metadata !DIExpression()), !dbg !2461
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2463
  %44 = load i32, i32* %43, align 4, !dbg !2463, !tbaa !1687
  %45 = or i32 %44, 1, !dbg !2464
  call void @llvm.dbg.value(metadata i32 %45, metadata !2419, metadata !DIExpression()), !dbg !2461
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2465
  %47 = load i32, i32* %46, align 8, !dbg !2465, !tbaa !1636
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2466
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2467
  %50 = load i8*, i8** %49, align 8, !dbg !2467, !tbaa !1709
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2468
  %52 = load i8*, i8** %51, align 8, !dbg !2468, !tbaa !1712
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !2469
  call void @llvm.dbg.value(metadata i64 %53, metadata !2420, metadata !DIExpression()), !dbg !2461
  %54 = icmp ugt i64 %40, %53, !dbg !2470
  br i1 %54, label %65, label %55, !dbg !2472

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !2473
  call void @llvm.dbg.value(metadata i64 %56, metadata !2416, metadata !DIExpression()), !dbg !2461
  store i64 %56, i64* %39, align 8, !dbg !2475, !tbaa !2381
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2476
  br i1 %57, label %59, label %58, !dbg !2478

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #32, !dbg !2479
  br label %59, !dbg !2479

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #38, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %60, metadata !2418, metadata !DIExpression()), !dbg !2461
  store i8* %60, i8** %41, align 8, !dbg !2481, !tbaa !2369
  %61 = load i32, i32* %46, align 8, !dbg !2482, !tbaa !1636
  %62 = load i8*, i8** %49, align 8, !dbg !2483, !tbaa !1709
  %63 = load i8*, i8** %51, align 8, !dbg !2484, !tbaa !1712
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !2485
  br label %65, !dbg !2486

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !2461
  call void @llvm.dbg.value(metadata i8* %66, metadata !2418, metadata !DIExpression()), !dbg !2461
  store i32 %7, i32* %6, align 4, !dbg !2487, !tbaa !558
  ret i8* %66, !dbg !2488
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #22

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2489 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i8* %1, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i64 %2, metadata !2495, metadata !DIExpression()), !dbg !2496
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !2497
  ret i8* %4, !dbg !2498
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #12 !dbg !2499 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2501, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i32 0, metadata !2396, metadata !DIExpression()) #32, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %0, metadata !2397, metadata !DIExpression()) #32, !dbg !2503
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2505
  ret i8* %2, !dbg !2506
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2507 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2511, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i64 %1, metadata !2512, metadata !DIExpression()), !dbg !2513
  call void @llvm.dbg.value(metadata i32 0, metadata !2493, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i8* %0, metadata !2494, metadata !DIExpression()) #32, !dbg !2514
  call void @llvm.dbg.value(metadata i64 %1, metadata !2495, metadata !DIExpression()) #32, !dbg !2514
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #32, !dbg !2516
  ret i8* %3, !dbg !2517
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2518 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2522, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i32 %1, metadata !2523, metadata !DIExpression()), !dbg !2526
  call void @llvm.dbg.value(metadata i8* %2, metadata !2524, metadata !DIExpression()), !dbg !2526
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2527
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2527
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2525, metadata !DIExpression()), !dbg !2528
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529), !dbg !2532
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()) #32, !dbg !2539
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2538, metadata !DIExpression()) #32, !dbg !2541
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2541, !alias.scope !2529
  %6 = icmp eq i32 %1, 10, !dbg !2542
  br i1 %6, label %7, label %8, !dbg !2544

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2545, !noalias !2529
  unreachable, !dbg !2545

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2546
  store i32 %1, i32* %9, align 8, !dbg !2547, !tbaa !1636, !alias.scope !2529
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2549
  ret i8* %10, !dbg !2550
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2551 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i32 %1, metadata !2556, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i8* %2, metadata !2557, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata i64 %3, metadata !2558, metadata !DIExpression()), !dbg !2560
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2561
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2561
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2559, metadata !DIExpression()), !dbg !2562
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2563), !dbg !2566
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()) #32, !dbg !2567
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2538, metadata !DIExpression()) #32, !dbg !2569
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #32, !dbg !2569, !alias.scope !2563
  %7 = icmp eq i32 %1, 10, !dbg !2570
  br i1 %7, label %8, label %9, !dbg !2571

8:                                                ; preds = %4
  tail call void @abort() #34, !dbg !2572, !noalias !2563
  unreachable, !dbg !2572

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2573
  store i32 %1, i32* %10, align 8, !dbg !2574, !tbaa !1636, !alias.scope !2563
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !2575
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2576
  ret i8* %11, !dbg !2577
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2578 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i8* %1, metadata !2583, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 0, metadata !2522, metadata !DIExpression()) #32, !dbg !2585
  call void @llvm.dbg.value(metadata i32 %0, metadata !2523, metadata !DIExpression()) #32, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2524, metadata !DIExpression()) #32, !dbg !2585
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2587
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2525, metadata !DIExpression()) #32, !dbg !2588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2589) #32, !dbg !2592
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()) #32, !dbg !2593
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2538, metadata !DIExpression()) #32, !dbg !2595
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #32, !dbg !2595, !alias.scope !2589
  %5 = icmp eq i32 %0, 10, !dbg !2596
  br i1 %5, label %6, label %7, !dbg !2597

6:                                                ; preds = %2
  tail call void @abort() #34, !dbg !2598, !noalias !2589
  unreachable, !dbg !2598

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2599
  store i32 %0, i32* %8, align 8, !dbg !2600, !tbaa !1636, !alias.scope !2589
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2601
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2602
  ret i8* %9, !dbg !2603
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2604 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i64 %2, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i32 %0, metadata !2556, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i8* %1, metadata !2557, metadata !DIExpression()) #32, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %2, metadata !2558, metadata !DIExpression()) #32, !dbg !2612
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2614
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2614
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2559, metadata !DIExpression()) #32, !dbg !2615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2616) #32, !dbg !2619
  call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()) #32, !dbg !2620
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2538, metadata !DIExpression()) #32, !dbg !2622
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #32, !dbg !2622, !alias.scope !2616
  %6 = icmp eq i32 %0, 10, !dbg !2623
  br i1 %6, label %7, label %8, !dbg !2624

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2625, !noalias !2616
  unreachable, !dbg !2625

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2626
  store i32 %0, i32* %9, align 8, !dbg !2627, !tbaa !1636, !alias.scope !2616
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2628
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2629
  ret i8* %10, !dbg !2630
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #12 !dbg !2631 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i8 %2, metadata !2637, metadata !DIExpression()), !dbg !2639
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2640
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2640
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2638, metadata !DIExpression()), !dbg !2641
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2642, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1654, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 %2, metadata !1655, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()), !dbg !2644
  call void @llvm.dbg.value(metadata i8 %2, metadata !1657, metadata !DIExpression()), !dbg !2644
  %6 = lshr i8 %2, 5, !dbg !2646
  %7 = zext i8 %6 to i64, !dbg !2646
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2647
  call void @llvm.dbg.value(metadata i32* %8, metadata !1658, metadata !DIExpression()), !dbg !2644
  %9 = and i8 %2, 31, !dbg !2648
  %10 = zext i8 %9 to i32, !dbg !2648
  call void @llvm.dbg.value(metadata i32 %10, metadata !1660, metadata !DIExpression()), !dbg !2644
  %11 = load i32, i32* %8, align 4, !dbg !2649, !tbaa !558
  %12 = lshr i32 %11, %10, !dbg !2650
  %13 = and i32 %12, 1, !dbg !2651
  call void @llvm.dbg.value(metadata i32 %13, metadata !1661, metadata !DIExpression()), !dbg !2644
  %14 = xor i32 %13, 1, !dbg !2652
  %15 = shl i32 %14, %10, !dbg !2653
  %16 = xor i32 %15, %11, !dbg !2654
  store i32 %16, i32* %8, align 4, !dbg !2654, !tbaa !558
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !2655
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2656
  ret i8* %17, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #12 !dbg !2658 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8 %1, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #32, !dbg !2665
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()) #32, !dbg !2665
  call void @llvm.dbg.value(metadata i8 %1, metadata !2637, metadata !DIExpression()) #32, !dbg !2665
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2667
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2667
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression()) #32, !dbg !2668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2669, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1654, metadata !DIExpression()) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %1, metadata !1655, metadata !DIExpression()) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()) #32, !dbg !2670
  call void @llvm.dbg.value(metadata i8 %1, metadata !1657, metadata !DIExpression()) #32, !dbg !2670
  %5 = lshr i8 %1, 5, !dbg !2672
  %6 = zext i8 %5 to i64, !dbg !2672
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2673
  call void @llvm.dbg.value(metadata i32* %7, metadata !1658, metadata !DIExpression()) #32, !dbg !2670
  %8 = and i8 %1, 31, !dbg !2674
  %9 = zext i8 %8 to i32, !dbg !2674
  call void @llvm.dbg.value(metadata i32 %9, metadata !1660, metadata !DIExpression()) #32, !dbg !2670
  %10 = load i32, i32* %7, align 4, !dbg !2675, !tbaa !558
  %11 = lshr i32 %10, %9, !dbg !2676
  %12 = and i32 %11, 1, !dbg !2677
  call void @llvm.dbg.value(metadata i32 %12, metadata !1661, metadata !DIExpression()) #32, !dbg !2670
  %13 = xor i32 %12, 1, !dbg !2678
  %14 = shl i32 %13, %9, !dbg !2679
  %15 = xor i32 %14, %10, !dbg !2680
  store i32 %15, i32* %7, align 4, !dbg !2680, !tbaa !558
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2681
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2682
  ret i8* %16, !dbg !2683
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #12 !dbg !2684 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i8* %0, metadata !2662, metadata !DIExpression()) #32, !dbg !2688
  call void @llvm.dbg.value(metadata i8 58, metadata !2663, metadata !DIExpression()) #32, !dbg !2688
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #32, !dbg !2690
  call void @llvm.dbg.value(metadata i64 -1, metadata !2636, metadata !DIExpression()) #32, !dbg !2690
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()) #32, !dbg !2690
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2692
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2692
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !2638, metadata !DIExpression()) #32, !dbg !2693
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2694, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1654, metadata !DIExpression()) #32, !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()) #32, !dbg !2695
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()) #32, !dbg !2695
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()) #32, !dbg !2695
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2697
  call void @llvm.dbg.value(metadata i32* %4, metadata !1658, metadata !DIExpression()) #32, !dbg !2695
  call void @llvm.dbg.value(metadata i32 26, metadata !1660, metadata !DIExpression()) #32, !dbg !2695
  %5 = load i32, i32* %4, align 4, !dbg !2698, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %5, metadata !1661, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2695
  %6 = or i32 %5, 67108864, !dbg !2699
  store i32 %6, i32* %4, align 4, !dbg !2699, !tbaa !558
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #32, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #32, !dbg !2701
  ret i8* %7, !dbg !2702
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2703 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2705, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i64 %1, metadata !2706, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i8* %0, metadata !2635, metadata !DIExpression()) #32, !dbg !2708
  call void @llvm.dbg.value(metadata i64 %1, metadata !2636, metadata !DIExpression()) #32, !dbg !2708
  call void @llvm.dbg.value(metadata i8 58, metadata !2637, metadata !DIExpression()) #32, !dbg !2708
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2710
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2710
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !2638, metadata !DIExpression()) #32, !dbg !2711
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #32, !dbg !2712, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1654, metadata !DIExpression()) #32, !dbg !2713
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()) #32, !dbg !2713
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()) #32, !dbg !2713
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()) #32, !dbg !2713
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2715
  call void @llvm.dbg.value(metadata i32* %5, metadata !1658, metadata !DIExpression()) #32, !dbg !2713
  call void @llvm.dbg.value(metadata i32 26, metadata !1660, metadata !DIExpression()) #32, !dbg !2713
  %6 = load i32, i32* %5, align 4, !dbg !2716, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %6, metadata !1661, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #32, !dbg !2713
  %7 = or i32 %6, 67108864, !dbg !2717
  store i32 %7, i32* %5, align 4, !dbg !2717, !tbaa !558
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #32, !dbg !2718
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #32, !dbg !2719
  ret i8* %8, !dbg !2720
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2721 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2723, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i32 %1, metadata !2724, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %2, metadata !2725, metadata !DIExpression()), !dbg !2727
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2728
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2726, metadata !DIExpression()), !dbg !2729
  call void @llvm.dbg.value(metadata i32 %1, metadata !2533, metadata !DIExpression()) #32, !dbg !2730
  call void @llvm.dbg.value(metadata i32 0, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2730
  %6 = icmp eq i32 %1, 10, !dbg !2732
  br i1 %6, label %7, label %8, !dbg !2733

7:                                                ; preds = %3
  tail call void @abort() #34, !dbg !2734, !noalias !2735
  unreachable, !dbg !2734

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2538, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2730
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2738
  store i32 %1, i32* %9, align 8, !dbg !2738, !tbaa.struct !2643
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2738
  %11 = bitcast i32* %10 to i8*, !dbg !2738
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !2738
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1654, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !1655, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 1, metadata !1656, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i8 58, metadata !1657, metadata !DIExpression()), !dbg !2739
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2741
  call void @llvm.dbg.value(metadata i32* %12, metadata !1658, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.value(metadata i32 26, metadata !1660, metadata !DIExpression()), !dbg !2739
  %13 = load i32, i32* %12, align 4, !dbg !2742, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %13, metadata !1661, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !2739
  %14 = or i32 %13, 67108864, !dbg !2743
  store i32 %14, i32* %12, align 4, !dbg !2743, !tbaa !558
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !2744
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2745
  ret i8* %15, !dbg !2746
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #12 !dbg !2747 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2751, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %1, metadata !2752, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %2, metadata !2753, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %3, metadata !2754, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()) #32, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %1, metadata !2761, metadata !DIExpression()) #32, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %2, metadata !2762, metadata !DIExpression()) #32, !dbg !2766
  call void @llvm.dbg.value(metadata i8* %3, metadata !2763, metadata !DIExpression()) #32, !dbg !2766
  call void @llvm.dbg.value(metadata i64 -1, metadata !2764, metadata !DIExpression()) #32, !dbg !2766
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2768
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2768
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2765, metadata !DIExpression()) #32, !dbg !2769
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2770, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1694, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %1, metadata !1695, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata i8* %2, metadata !1696, metadata !DIExpression()) #32, !dbg !2771
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1694, metadata !DIExpression()) #32, !dbg !2771
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2773
  store i32 10, i32* %7, align 8, !dbg !2774, !tbaa !1636
  %8 = icmp ne i8* %1, null, !dbg !2775
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !2776
  br i1 %10, label %12, label %11, !dbg !2776

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2777
  unreachable, !dbg !2777

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2778
  store i8* %1, i8** %13, align 8, !dbg !2779, !tbaa !1709
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2780
  store i8* %2, i8** %14, align 8, !dbg !2781, !tbaa !1712
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2783
  ret i8* %15, !dbg !2784
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !2757 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2756, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %1, metadata !2761, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2762, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %3, metadata !2763, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i64 %4, metadata !2764, metadata !DIExpression()), !dbg !2785
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2786
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !2765, metadata !DIExpression()), !dbg !2787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !2788, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1694, metadata !DIExpression()) #32, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %1, metadata !1695, metadata !DIExpression()) #32, !dbg !2789
  call void @llvm.dbg.value(metadata i8* %2, metadata !1696, metadata !DIExpression()) #32, !dbg !2789
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1694, metadata !DIExpression()) #32, !dbg !2789
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2791
  store i32 10, i32* %8, align 8, !dbg !2792, !tbaa !1636
  %9 = icmp ne i8* %1, null, !dbg !2793
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !2794
  br i1 %11, label %13, label %12, !dbg !2794

12:                                               ; preds = %5
  tail call void @abort() #34, !dbg !2795
  unreachable, !dbg !2795

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2796
  store i8* %1, i8** %14, align 8, !dbg !2797, !tbaa !1709
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2798
  store i8* %2, i8** %15, align 8, !dbg !2799, !tbaa !1712
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !2800
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #32, !dbg !2801
  ret i8* %16, !dbg !2802
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #12 !dbg !2803 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2807, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %1, metadata !2808, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i8* %2, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.value(metadata i32 0, metadata !2751, metadata !DIExpression()) #32, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %0, metadata !2752, metadata !DIExpression()) #32, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %1, metadata !2753, metadata !DIExpression()) #32, !dbg !2811
  call void @llvm.dbg.value(metadata i8* %2, metadata !2754, metadata !DIExpression()) #32, !dbg !2811
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #32, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %0, metadata !2761, metadata !DIExpression()) #32, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %1, metadata !2762, metadata !DIExpression()) #32, !dbg !2813
  call void @llvm.dbg.value(metadata i8* %2, metadata !2763, metadata !DIExpression()) #32, !dbg !2813
  call void @llvm.dbg.value(metadata i64 -1, metadata !2764, metadata !DIExpression()) #32, !dbg !2813
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2815
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2815
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !2765, metadata !DIExpression()) #32, !dbg !2816
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2817, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1694, metadata !DIExpression()) #32, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()) #32, !dbg !2818
  call void @llvm.dbg.value(metadata i8* %1, metadata !1696, metadata !DIExpression()) #32, !dbg !2818
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1694, metadata !DIExpression()) #32, !dbg !2818
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2820
  store i32 10, i32* %6, align 8, !dbg !2821, !tbaa !1636
  %7 = icmp ne i8* %0, null, !dbg !2822
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !2823
  br i1 %9, label %11, label %10, !dbg !2823

10:                                               ; preds = %3
  tail call void @abort() #34, !dbg !2824
  unreachable, !dbg !2824

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2825
  store i8* %0, i8** %12, align 8, !dbg !2826, !tbaa !1709
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2827
  store i8* %1, i8** %13, align 8, !dbg !2828, !tbaa !1712
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #32, !dbg !2829
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #32, !dbg !2830
  ret i8* %14, !dbg !2831
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #12 !dbg !2832 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2836, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i64 %3, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.value(metadata i32 0, metadata !2756, metadata !DIExpression()) #32, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %0, metadata !2761, metadata !DIExpression()) #32, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %1, metadata !2762, metadata !DIExpression()) #32, !dbg !2841
  call void @llvm.dbg.value(metadata i8* %2, metadata !2763, metadata !DIExpression()) #32, !dbg !2841
  call void @llvm.dbg.value(metadata i64 %3, metadata !2764, metadata !DIExpression()) #32, !dbg !2841
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2843
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2843
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !2765, metadata !DIExpression()) #32, !dbg !2844
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #32, !dbg !2845, !tbaa.struct !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1694, metadata !DIExpression()) #32, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %0, metadata !1695, metadata !DIExpression()) #32, !dbg !2846
  call void @llvm.dbg.value(metadata i8* %1, metadata !1696, metadata !DIExpression()) #32, !dbg !2846
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1694, metadata !DIExpression()) #32, !dbg !2846
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2848
  store i32 10, i32* %7, align 8, !dbg !2849, !tbaa !1636
  %8 = icmp ne i8* %0, null, !dbg !2850
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !2851
  br i1 %10, label %12, label %11, !dbg !2851

11:                                               ; preds = %4
  tail call void @abort() #34, !dbg !2852
  unreachable, !dbg !2852

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2853
  store i8* %0, i8** %13, align 8, !dbg !2854, !tbaa !1709
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2855
  store i8* %1, i8** %14, align 8, !dbg !2856, !tbaa !1712
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #32, !dbg !2857
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #32, !dbg !2858
  ret i8* %15, !dbg !2859
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !2860 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2867
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !2868
  ret i8* %4, !dbg !2869
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #12 !dbg !2870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2874, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %1, metadata !2875, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i32 0, metadata !2864, metadata !DIExpression()) #32, !dbg !2877
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #32, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %1, metadata !2866, metadata !DIExpression()) #32, !dbg !2877
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2879
  ret i8* %3, !dbg !2880
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #12 !dbg !2881 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2885, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i8* %1, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.value(metadata i32 %0, metadata !2864, metadata !DIExpression()) #32, !dbg !2888
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()) #32, !dbg !2888
  call void @llvm.dbg.value(metadata i64 -1, metadata !2866, metadata !DIExpression()) #32, !dbg !2888
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2890
  ret i8* %3, !dbg !2891
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #12 !dbg !2892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i32 0, metadata !2885, metadata !DIExpression()) #32, !dbg !2898
  call void @llvm.dbg.value(metadata i8* %0, metadata !2886, metadata !DIExpression()) #32, !dbg !2898
  call void @llvm.dbg.value(metadata i32 0, metadata !2864, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #32, !dbg !2900
  call void @llvm.dbg.value(metadata i64 -1, metadata !2866, metadata !DIExpression()) #32, !dbg !2900
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #32, !dbg !2902
  ret i8* %2, !dbg !2903
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #12 !dbg !2904 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2943, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8* %1, metadata !2944, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8* %3, metadata !2946, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i8** %4, metadata !2947, metadata !DIExpression()), !dbg !2949
  call void @llvm.dbg.value(metadata i64 %5, metadata !2948, metadata !DIExpression()), !dbg !2949
  %7 = icmp eq i8* %1, null, !dbg !2950
  br i1 %7, label %10, label %8, !dbg !2952

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #32, !dbg !2953
  br label %12, !dbg !2953

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.101, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #32, !dbg !2954
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.103, i64 0, i64 0), i32 noundef 5) #32, !dbg !2955
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #32, !dbg !2955
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2956
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.105, i64 0, i64 0), i32 noundef 5) #32, !dbg !2957
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.106, i64 0, i64 0)) #32, !dbg !2957
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !2958
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
  ], !dbg !2959

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.107, i64 0, i64 0), i32 noundef 5) #32, !dbg !2960
  %21 = load i8*, i8** %4, align 8, !dbg !2960, !tbaa !463
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #32, !dbg !2960
  br label %147, !dbg !2962

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.108, i64 0, i64 0), i32 noundef 5) #32, !dbg !2963
  %25 = load i8*, i8** %4, align 8, !dbg !2963, !tbaa !463
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2963
  %27 = load i8*, i8** %26, align 8, !dbg !2963, !tbaa !463
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #32, !dbg !2963
  br label %147, !dbg !2964

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.109, i64 0, i64 0), i32 noundef 5) #32, !dbg !2965
  %31 = load i8*, i8** %4, align 8, !dbg !2965, !tbaa !463
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2965
  %33 = load i8*, i8** %32, align 8, !dbg !2965, !tbaa !463
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2965
  %35 = load i8*, i8** %34, align 8, !dbg !2965, !tbaa !463
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #32, !dbg !2965
  br label %147, !dbg !2966

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.110, i64 0, i64 0), i32 noundef 5) #32, !dbg !2967
  %39 = load i8*, i8** %4, align 8, !dbg !2967, !tbaa !463
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2967
  %41 = load i8*, i8** %40, align 8, !dbg !2967, !tbaa !463
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2967
  %43 = load i8*, i8** %42, align 8, !dbg !2967, !tbaa !463
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2967
  %45 = load i8*, i8** %44, align 8, !dbg !2967, !tbaa !463
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #32, !dbg !2967
  br label %147, !dbg !2968

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.111, i64 0, i64 0), i32 noundef 5) #32, !dbg !2969
  %49 = load i8*, i8** %4, align 8, !dbg !2969, !tbaa !463
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2969
  %51 = load i8*, i8** %50, align 8, !dbg !2969, !tbaa !463
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2969
  %53 = load i8*, i8** %52, align 8, !dbg !2969, !tbaa !463
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2969
  %55 = load i8*, i8** %54, align 8, !dbg !2969, !tbaa !463
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2969
  %57 = load i8*, i8** %56, align 8, !dbg !2969, !tbaa !463
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #32, !dbg !2969
  br label %147, !dbg !2970

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.112, i64 0, i64 0), i32 noundef 5) #32, !dbg !2971
  %61 = load i8*, i8** %4, align 8, !dbg !2971, !tbaa !463
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2971
  %63 = load i8*, i8** %62, align 8, !dbg !2971, !tbaa !463
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2971
  %65 = load i8*, i8** %64, align 8, !dbg !2971, !tbaa !463
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2971
  %67 = load i8*, i8** %66, align 8, !dbg !2971, !tbaa !463
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2971
  %69 = load i8*, i8** %68, align 8, !dbg !2971, !tbaa !463
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2971
  %71 = load i8*, i8** %70, align 8, !dbg !2971, !tbaa !463
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #32, !dbg !2971
  br label %147, !dbg !2972

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.113, i64 0, i64 0), i32 noundef 5) #32, !dbg !2973
  %75 = load i8*, i8** %4, align 8, !dbg !2973, !tbaa !463
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2973
  %77 = load i8*, i8** %76, align 8, !dbg !2973, !tbaa !463
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2973
  %79 = load i8*, i8** %78, align 8, !dbg !2973, !tbaa !463
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2973
  %81 = load i8*, i8** %80, align 8, !dbg !2973, !tbaa !463
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2973
  %83 = load i8*, i8** %82, align 8, !dbg !2973, !tbaa !463
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2973
  %85 = load i8*, i8** %84, align 8, !dbg !2973, !tbaa !463
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2973
  %87 = load i8*, i8** %86, align 8, !dbg !2973, !tbaa !463
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #32, !dbg !2973
  br label %147, !dbg !2974

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.114, i64 0, i64 0), i32 noundef 5) #32, !dbg !2975
  %91 = load i8*, i8** %4, align 8, !dbg !2975, !tbaa !463
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2975
  %93 = load i8*, i8** %92, align 8, !dbg !2975, !tbaa !463
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2975
  %95 = load i8*, i8** %94, align 8, !dbg !2975, !tbaa !463
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2975
  %97 = load i8*, i8** %96, align 8, !dbg !2975, !tbaa !463
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2975
  %99 = load i8*, i8** %98, align 8, !dbg !2975, !tbaa !463
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2975
  %101 = load i8*, i8** %100, align 8, !dbg !2975, !tbaa !463
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2975
  %103 = load i8*, i8** %102, align 8, !dbg !2975, !tbaa !463
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2975
  %105 = load i8*, i8** %104, align 8, !dbg !2975, !tbaa !463
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #32, !dbg !2975
  br label %147, !dbg !2976

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.115, i64 0, i64 0), i32 noundef 5) #32, !dbg !2977
  %109 = load i8*, i8** %4, align 8, !dbg !2977, !tbaa !463
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2977
  %111 = load i8*, i8** %110, align 8, !dbg !2977, !tbaa !463
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2977
  %113 = load i8*, i8** %112, align 8, !dbg !2977, !tbaa !463
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2977
  %115 = load i8*, i8** %114, align 8, !dbg !2977, !tbaa !463
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2977
  %117 = load i8*, i8** %116, align 8, !dbg !2977, !tbaa !463
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2977
  %119 = load i8*, i8** %118, align 8, !dbg !2977, !tbaa !463
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2977
  %121 = load i8*, i8** %120, align 8, !dbg !2977, !tbaa !463
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2977
  %123 = load i8*, i8** %122, align 8, !dbg !2977, !tbaa !463
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2977
  %125 = load i8*, i8** %124, align 8, !dbg !2977, !tbaa !463
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #32, !dbg !2977
  br label %147, !dbg !2978

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.116, i64 0, i64 0), i32 noundef 5) #32, !dbg !2979
  %129 = load i8*, i8** %4, align 8, !dbg !2979, !tbaa !463
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2979
  %131 = load i8*, i8** %130, align 8, !dbg !2979, !tbaa !463
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2979
  %133 = load i8*, i8** %132, align 8, !dbg !2979, !tbaa !463
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2979
  %135 = load i8*, i8** %134, align 8, !dbg !2979, !tbaa !463
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2979
  %137 = load i8*, i8** %136, align 8, !dbg !2979, !tbaa !463
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2979
  %139 = load i8*, i8** %138, align 8, !dbg !2979, !tbaa !463
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2979
  %141 = load i8*, i8** %140, align 8, !dbg !2979, !tbaa !463
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2979
  %143 = load i8*, i8** %142, align 8, !dbg !2979, !tbaa !463
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2979
  %145 = load i8*, i8** %144, align 8, !dbg !2979, !tbaa !463
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #32, !dbg !2979
  br label %147, !dbg !2980

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !2981
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #12 !dbg !2982 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2986, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %1, metadata !2987, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %2, metadata !2988, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8* %3, metadata !2989, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i8** %4, metadata !2990, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata i64 0, metadata !2991, metadata !DIExpression()), !dbg !2992
  br label %6, !dbg !2993

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2995
  call void @llvm.dbg.value(metadata i64 %7, metadata !2991, metadata !DIExpression()), !dbg !2992
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2996
  %9 = load i8*, i8** %8, align 8, !dbg !2996, !tbaa !463
  %10 = icmp eq i8* %9, null, !dbg !2998
  %11 = add i64 %7, 1, !dbg !2999
  call void @llvm.dbg.value(metadata i64 %11, metadata !2991, metadata !DIExpression()), !dbg !2992
  br i1 %10, label %12, label %6, !dbg !2998, !llvm.loop !3000

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3002
  ret void, !dbg !3003
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #12 !dbg !3004 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3019, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %1, metadata !3020, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %2, metadata !3021, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i8* %3, metadata !3022, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3023, metadata !DIExpression()), !dbg !3028
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #32, !dbg !3029
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3025, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 0, metadata !3024, metadata !DIExpression()), !dbg !3027
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3024, metadata !DIExpression()), !dbg !3027
  %11 = load i32, i32* %8, align 8, !dbg !3031
  %12 = icmp sgt i32 %11, -1, !dbg !3031
  br i1 %12, label %20, label %13, !dbg !3031

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3031
  store i32 %14, i32* %8, align 8, !dbg !3031
  %15 = icmp ult i32 %11, -7, !dbg !3031
  br i1 %15, label %16, label %20, !dbg !3031

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3031
  %18 = sext i32 %11 to i64, !dbg !3031
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3031
  br label %24, !dbg !3031

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3031
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3031
  store i8* %23, i8** %10, align 8, !dbg !3031
  br label %24, !dbg !3031

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3031
  %28 = load i8*, i8** %27, align 8, !dbg !3031
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3034
  store i8* %28, i8** %29, align 8, !dbg !3035, !tbaa !463
  %30 = icmp eq i8* %28, null, !dbg !3036
  br i1 %30, label %210, label %31, !dbg !3037

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 1, metadata !3024, metadata !DIExpression()), !dbg !3027
  %32 = icmp sgt i32 %25, -1, !dbg !3031
  br i1 %32, label %40, label %33, !dbg !3031

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3031
  store i32 %34, i32* %8, align 8, !dbg !3031
  %35 = icmp ult i32 %25, -7, !dbg !3031
  br i1 %35, label %36, label %40, !dbg !3031

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3031
  %38 = sext i32 %25 to i64, !dbg !3031
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3031
  br label %44, !dbg !3031

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3031
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3031
  store i8* %43, i8** %10, align 8, !dbg !3031
  br label %44, !dbg !3031

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3031
  %48 = load i8*, i8** %47, align 8, !dbg !3031
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3034
  store i8* %48, i8** %49, align 8, !dbg !3035, !tbaa !463
  %50 = icmp eq i8* %48, null, !dbg !3036
  br i1 %50, label %210, label %51, !dbg !3037

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 2, metadata !3024, metadata !DIExpression()), !dbg !3027
  %52 = icmp sgt i32 %45, -1, !dbg !3031
  br i1 %52, label %60, label %53, !dbg !3031

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3031
  store i32 %54, i32* %8, align 8, !dbg !3031
  %55 = icmp ult i32 %45, -7, !dbg !3031
  br i1 %55, label %56, label %60, !dbg !3031

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3031
  %58 = sext i32 %45 to i64, !dbg !3031
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3031
  br label %64, !dbg !3031

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3031
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3031
  store i8* %63, i8** %10, align 8, !dbg !3031
  br label %64, !dbg !3031

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3031
  %68 = load i8*, i8** %67, align 8, !dbg !3031
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3034
  store i8* %68, i8** %69, align 8, !dbg !3035, !tbaa !463
  %70 = icmp eq i8* %68, null, !dbg !3036
  br i1 %70, label %210, label %71, !dbg !3037

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 3, metadata !3024, metadata !DIExpression()), !dbg !3027
  %72 = icmp sgt i32 %65, -1, !dbg !3031
  br i1 %72, label %80, label %73, !dbg !3031

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3031
  store i32 %74, i32* %8, align 8, !dbg !3031
  %75 = icmp ult i32 %65, -7, !dbg !3031
  br i1 %75, label %76, label %80, !dbg !3031

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3031
  %78 = sext i32 %65 to i64, !dbg !3031
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3031
  br label %84, !dbg !3031

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3031
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3031
  store i8* %83, i8** %10, align 8, !dbg !3031
  br label %84, !dbg !3031

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3031
  %88 = load i8*, i8** %87, align 8, !dbg !3031
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3034
  store i8* %88, i8** %89, align 8, !dbg !3035, !tbaa !463
  %90 = icmp eq i8* %88, null, !dbg !3036
  br i1 %90, label %210, label %91, !dbg !3037

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 4, metadata !3024, metadata !DIExpression()), !dbg !3027
  %92 = icmp sgt i32 %85, -1, !dbg !3031
  br i1 %92, label %100, label %93, !dbg !3031

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3031
  store i32 %94, i32* %8, align 8, !dbg !3031
  %95 = icmp ult i32 %85, -7, !dbg !3031
  br i1 %95, label %96, label %100, !dbg !3031

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3031
  %98 = sext i32 %85 to i64, !dbg !3031
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3031
  br label %104, !dbg !3031

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3031
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3031
  store i8* %103, i8** %10, align 8, !dbg !3031
  br label %104, !dbg !3031

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3031
  %108 = load i8*, i8** %107, align 8, !dbg !3031
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3034
  store i8* %108, i8** %109, align 8, !dbg !3035, !tbaa !463
  %110 = icmp eq i8* %108, null, !dbg !3036
  br i1 %110, label %210, label %111, !dbg !3037

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 5, metadata !3024, metadata !DIExpression()), !dbg !3027
  %112 = icmp sgt i32 %105, -1, !dbg !3031
  br i1 %112, label %120, label %113, !dbg !3031

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3031
  store i32 %114, i32* %8, align 8, !dbg !3031
  %115 = icmp ult i32 %105, -7, !dbg !3031
  br i1 %115, label %116, label %120, !dbg !3031

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3031
  %118 = sext i32 %105 to i64, !dbg !3031
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3031
  br label %124, !dbg !3031

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3031
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3031
  store i8* %123, i8** %10, align 8, !dbg !3031
  br label %124, !dbg !3031

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3031
  %128 = load i8*, i8** %127, align 8, !dbg !3031
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3034
  store i8* %128, i8** %129, align 8, !dbg !3035, !tbaa !463
  %130 = icmp eq i8* %128, null, !dbg !3036
  br i1 %130, label %210, label %131, !dbg !3037

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 6, metadata !3024, metadata !DIExpression()), !dbg !3027
  %132 = icmp sgt i32 %125, -1, !dbg !3031
  br i1 %132, label %140, label %133, !dbg !3031

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3031
  store i32 %134, i32* %8, align 8, !dbg !3031
  %135 = icmp ult i32 %125, -7, !dbg !3031
  br i1 %135, label %136, label %140, !dbg !3031

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3031
  %138 = sext i32 %125 to i64, !dbg !3031
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3031
  br label %144, !dbg !3031

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3031
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3031
  store i8* %143, i8** %10, align 8, !dbg !3031
  br label %144, !dbg !3031

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3031
  %148 = load i8*, i8** %147, align 8, !dbg !3031
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3034
  store i8* %148, i8** %149, align 8, !dbg !3035, !tbaa !463
  %150 = icmp eq i8* %148, null, !dbg !3036
  br i1 %150, label %210, label %151, !dbg !3037

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 7, metadata !3024, metadata !DIExpression()), !dbg !3027
  %152 = icmp sgt i32 %145, -1, !dbg !3031
  br i1 %152, label %160, label %153, !dbg !3031

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3031
  store i32 %154, i32* %8, align 8, !dbg !3031
  %155 = icmp ult i32 %145, -7, !dbg !3031
  br i1 %155, label %156, label %160, !dbg !3031

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3031
  %158 = sext i32 %145 to i64, !dbg !3031
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3031
  br label %164, !dbg !3031

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3031
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3031
  store i8* %163, i8** %10, align 8, !dbg !3031
  br label %164, !dbg !3031

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3031
  %168 = load i8*, i8** %167, align 8, !dbg !3031
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3034
  store i8* %168, i8** %169, align 8, !dbg !3035, !tbaa !463
  %170 = icmp eq i8* %168, null, !dbg !3036
  br i1 %170, label %210, label %171, !dbg !3037

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 8, metadata !3024, metadata !DIExpression()), !dbg !3027
  %172 = icmp sgt i32 %165, -1, !dbg !3031
  br i1 %172, label %180, label %173, !dbg !3031

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3031
  store i32 %174, i32* %8, align 8, !dbg !3031
  %175 = icmp ult i32 %165, -7, !dbg !3031
  br i1 %175, label %176, label %180, !dbg !3031

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3031
  %178 = sext i32 %165 to i64, !dbg !3031
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3031
  br label %184, !dbg !3031

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3031
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3031
  store i8* %183, i8** %10, align 8, !dbg !3031
  br label %184, !dbg !3031

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3031
  %188 = load i8*, i8** %187, align 8, !dbg !3031
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3034
  store i8* %188, i8** %189, align 8, !dbg !3035, !tbaa !463
  %190 = icmp eq i8* %188, null, !dbg !3036
  br i1 %190, label %210, label %191, !dbg !3037

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3024, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.value(metadata i64 9, metadata !3024, metadata !DIExpression()), !dbg !3027
  %192 = icmp sgt i32 %185, -1, !dbg !3031
  br i1 %192, label %200, label %193, !dbg !3031

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3031
  store i32 %194, i32* %8, align 8, !dbg !3031
  %195 = icmp ult i32 %185, -7, !dbg !3031
  br i1 %195, label %196, label %200, !dbg !3031

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3031
  %198 = sext i32 %185 to i64, !dbg !3031
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3031
  br label %203, !dbg !3031

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3031
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3031
  store i8* %202, i8** %10, align 8, !dbg !3031
  br label %203, !dbg !3031

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3031
  %206 = load i8*, i8** %205, align 8, !dbg !3031
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3034
  store i8* %206, i8** %207, align 8, !dbg !3035, !tbaa !463
  %208 = icmp eq i8* %206, null, !dbg !3036
  %209 = select i1 %208, i64 9, i64 10, !dbg !3037
  br label %210, !dbg !3037

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3038
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3039
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #32, !dbg !3040
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #12 !dbg !3041 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3045, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8* %1, metadata !3046, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8* %2, metadata !3047, metadata !DIExpression()), !dbg !3050
  call void @llvm.dbg.value(metadata i8* %3, metadata !3048, metadata !DIExpression()), !dbg !3050
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3051
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32, !dbg !3051
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3049, metadata !DIExpression()), !dbg !3052
  call void @llvm.va_start(i8* nonnull %7), !dbg !3053
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3054
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #32, !dbg !3054
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3054, !tbaa.struct !957
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3054
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #32, !dbg !3054
  call void @llvm.va_end(i8* nonnull %7), !dbg !3055
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32, !dbg !3056
  ret void, !dbg !3056
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #12 !dbg !3057 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3058, !tbaa !463
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.104, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3058
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.121, i64 0, i64 0), i32 noundef 5) #32, !dbg !3059
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.122, i64 0, i64 0)) #32, !dbg !3059
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.123, i64 0, i64 0), i32 noundef 5) #32, !dbg !3060
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.124, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.125, i64 0, i64 0)) #32, !dbg !3060
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.102, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.126, i64 0, i64 0), i32 noundef 5) #32, !dbg !3061
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.127, i64 0, i64 0)) #32, !dbg !3061
  ret void, !dbg !3062
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #24 !dbg !3063 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3068, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %1, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i64 %2, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #32, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()) #32, !dbg !3077
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()) #32, !dbg !3077
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3079
  call void @llvm.dbg.value(metadata i8* %4, metadata !3080, metadata !DIExpression()) #32, !dbg !3085
  %5 = icmp eq i8* %4, null, !dbg !3087
  br i1 %5, label %6, label %7, !dbg !3089

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3090
  unreachable, !dbg !3090

7:                                                ; preds = %3
  ret i8* %4, !dbg !3091
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3073 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %1, metadata !3075, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()), !dbg !3092
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3093
  call void @llvm.dbg.value(metadata i8* %4, metadata !3080, metadata !DIExpression()) #32, !dbg !3094
  %5 = icmp eq i8* %4, null, !dbg !3096
  br i1 %5, label %6, label %7, !dbg !3097

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3098
  unreachable, !dbg !3098

7:                                                ; preds = %3
  ret i8* %4, !dbg !3099
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3100 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3104, metadata !DIExpression()), !dbg !3105
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !3106
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()) #32, !dbg !3107
  %3 = icmp eq i8* %2, null, !dbg !3109
  br i1 %3, label %4, label %5, !dbg !3110

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3111
  unreachable, !dbg !3111

5:                                                ; preds = %1
  ret i8* %2, !dbg !3112
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3113 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3117, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i64 %0, metadata !3119, metadata !DIExpression()) #32, !dbg !3123
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()) #32, !dbg !3126
  %3 = icmp eq i8* %2, null, !dbg !3128
  br i1 %3, label %4, label %5, !dbg !3129

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3130
  unreachable, !dbg !3130

5:                                                ; preds = %1
  ret i8* %2, !dbg !3131
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3132 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.value(metadata i64 %0, metadata !3104, metadata !DIExpression()) #32, !dbg !3138
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #32, !dbg !3140
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()) #32, !dbg !3141
  %3 = icmp eq i8* %2, null, !dbg !3143
  br i1 %3, label %4, label %5, !dbg !3144

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3145
  unreachable, !dbg !3145

5:                                                ; preds = %1
  ret i8* %2, !dbg !3146
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3147 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3151, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i64 %1, metadata !3152, metadata !DIExpression()), !dbg !3153
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #32, !dbg !3159
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()) #32, !dbg !3159
  %3 = icmp eq i64 %1, 0, !dbg !3161
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3161
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3162
  call void @llvm.dbg.value(metadata i8* %5, metadata !3080, metadata !DIExpression()) #32, !dbg !3163
  %6 = icmp eq i8* %5, null, !dbg !3165
  br i1 %6, label %7, label %8, !dbg !3166

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3167
  unreachable, !dbg !3167

8:                                                ; preds = %2
  ret i8* %5, !dbg !3168
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3173, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i64 %1, metadata !3174, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8* %0, metadata !3176, metadata !DIExpression()) #32, !dbg !3180
  call void @llvm.dbg.value(metadata i64 %1, metadata !3179, metadata !DIExpression()) #32, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #32, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %1, metadata !3158, metadata !DIExpression()) #32, !dbg !3182
  %3 = icmp eq i64 %1, 0, !dbg !3184
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3184
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #32, !dbg !3185
  call void @llvm.dbg.value(metadata i8* %5, metadata !3080, metadata !DIExpression()) #32, !dbg !3186
  %6 = icmp eq i8* %5, null, !dbg !3188
  br i1 %6, label %7, label %8, !dbg !3189

7:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3190
  unreachable, !dbg !3190

8:                                                ; preds = %2
  ret i8* %5, !dbg !3191
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #25 !dbg !3192 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3196, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %1, metadata !3197, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %2, metadata !3198, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8* %0, metadata !3200, metadata !DIExpression()) #32, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %1, metadata !3203, metadata !DIExpression()) #32, !dbg !3205
  call void @llvm.dbg.value(metadata i64 %2, metadata !3204, metadata !DIExpression()) #32, !dbg !3205
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #32, !dbg !3207
  call void @llvm.dbg.value(metadata i8* %4, metadata !3080, metadata !DIExpression()) #32, !dbg !3208
  %5 = icmp eq i8* %4, null, !dbg !3210
  br i1 %5, label %6, label %7, !dbg !3211

6:                                                ; preds = %3
  tail call void @xalloc_die() #34, !dbg !3212
  unreachable, !dbg !3212

7:                                                ; preds = %3
  ret i8* %4, !dbg !3213
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3214 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3218, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i64 %1, metadata !3219, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* null, metadata !3072, metadata !DIExpression()) #32, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %0, metadata !3075, metadata !DIExpression()) #32, !dbg !3221
  call void @llvm.dbg.value(metadata i64 %1, metadata !3076, metadata !DIExpression()) #32, !dbg !3221
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3223
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3224
  %4 = icmp eq i8* %3, null, !dbg !3226
  br i1 %4, label %5, label %6, !dbg !3227

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3228
  unreachable, !dbg !3228

6:                                                ; preds = %2
  ret i8* %3, !dbg !3229
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3230 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i64 %1, metadata !3235, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i8* null, metadata !3196, metadata !DIExpression()) #32, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %0, metadata !3197, metadata !DIExpression()) #32, !dbg !3237
  call void @llvm.dbg.value(metadata i64 %1, metadata !3198, metadata !DIExpression()) #32, !dbg !3237
  call void @llvm.dbg.value(metadata i8* null, metadata !3200, metadata !DIExpression()) #32, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %0, metadata !3203, metadata !DIExpression()) #32, !dbg !3239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3204, metadata !DIExpression()) #32, !dbg !3239
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #32, !dbg !3241
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3242
  %4 = icmp eq i8* %3, null, !dbg !3244
  br i1 %4, label %5, label %6, !dbg !3245

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3246
  unreachable, !dbg !3246

6:                                                ; preds = %2
  ret i8* %3, !dbg !3247
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #12 !dbg !3248 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3252, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i64* %1, metadata !3253, metadata !DIExpression()), !dbg !3254
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()) #32, !dbg !3255
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()) #32, !dbg !3255
  call void @llvm.dbg.value(metadata i64 1, metadata !391, metadata !DIExpression()) #32, !dbg !3255
  %3 = load i64, i64* %1, align 8, !dbg !3257, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %3, metadata !392, metadata !DIExpression()) #32, !dbg !3255
  %4 = icmp eq i8* %0, null, !dbg !3258
  br i1 %4, label %5, label %8, !dbg !3260

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3261
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3264
  br label %15, !dbg !3264

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3265
  %10 = add nuw i64 %9, 1, !dbg !3265
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #32, !dbg !3265
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3265
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %13, metadata !392, metadata !DIExpression()) #32, !dbg !3255
  br i1 %12, label %14, label %15, !dbg !3268

14:                                               ; preds = %8
  tail call void @xalloc_die() #34, !dbg !3269
  unreachable, !dbg !3269

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3255
  call void @llvm.dbg.value(metadata i64 %16, metadata !392, metadata !DIExpression()) #32, !dbg !3255
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #32, !dbg !3270
  call void @llvm.dbg.value(metadata i64 %16, metadata !3075, metadata !DIExpression()) #32, !dbg !3270
  call void @llvm.dbg.value(metadata i64 1, metadata !3076, metadata !DIExpression()) #32, !dbg !3270
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #32, !dbg !3272
  call void @llvm.dbg.value(metadata i8* %17, metadata !3080, metadata !DIExpression()) #32, !dbg !3273
  %18 = icmp eq i8* %17, null, !dbg !3275
  br i1 %18, label %19, label %20, !dbg !3276

19:                                               ; preds = %15
  tail call void @xalloc_die() #34, !dbg !3277
  unreachable, !dbg !3277

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !389, metadata !DIExpression()) #32, !dbg !3255
  store i64 %16, i64* %1, align 8, !dbg !3278, !tbaa !821
  ret i8* %17, !dbg !3279
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #12 !dbg !384 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !389, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64* %1, metadata !390, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i64 %2, metadata !391, metadata !DIExpression()), !dbg !3280
  %4 = load i64, i64* %1, align 8, !dbg !3281, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %4, metadata !392, metadata !DIExpression()), !dbg !3280
  %5 = icmp eq i8* %0, null, !dbg !3282
  br i1 %5, label %6, label %13, !dbg !3283

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3284
  br i1 %7, label %8, label %20, !dbg !3285

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3286
  call void @llvm.dbg.value(metadata i64 %9, metadata !392, metadata !DIExpression()), !dbg !3280
  %10 = icmp ugt i64 %2, 128, !dbg !3288
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !3289
  call void @llvm.dbg.value(metadata i64 %12, metadata !392, metadata !DIExpression()), !dbg !3280
  br label %20, !dbg !3290

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !3291
  %15 = add nuw i64 %14, 1, !dbg !3291
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !3291
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !3291
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !3291
  call void @llvm.dbg.value(metadata i64 %18, metadata !392, metadata !DIExpression()), !dbg !3280
  br i1 %17, label %19, label %20, !dbg !3292

19:                                               ; preds = %13
  tail call void @xalloc_die() #34, !dbg !3293
  unreachable, !dbg !3293

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !3280
  call void @llvm.dbg.value(metadata i64 %21, metadata !392, metadata !DIExpression()), !dbg !3280
  call void @llvm.dbg.value(metadata i8* %0, metadata !3072, metadata !DIExpression()) #32, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %21, metadata !3075, metadata !DIExpression()) #32, !dbg !3294
  call void @llvm.dbg.value(metadata i64 %2, metadata !3076, metadata !DIExpression()) #32, !dbg !3294
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #32, !dbg !3296
  call void @llvm.dbg.value(metadata i8* %22, metadata !3080, metadata !DIExpression()) #32, !dbg !3297
  %23 = icmp eq i8* %22, null, !dbg !3299
  br i1 %23, label %24, label %25, !dbg !3300

24:                                               ; preds = %20
  tail call void @xalloc_die() #34, !dbg !3301
  unreachable, !dbg !3301

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !389, metadata !DIExpression()), !dbg !3280
  store i64 %21, i64* %1, align 8, !dbg !3302, !tbaa !821
  ret i8* %22, !dbg !3303
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #12 !dbg !396 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !404, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64* %1, metadata !405, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %2, metadata !406, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %3, metadata !407, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %4, metadata !408, metadata !DIExpression()), !dbg !3304
  %6 = load i64, i64* %1, align 8, !dbg !3305, !tbaa !821
  call void @llvm.dbg.value(metadata i64 %6, metadata !409, metadata !DIExpression()), !dbg !3304
  %7 = ashr i64 %6, 1, !dbg !3306
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !3306
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !3306
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !3306
  call void @llvm.dbg.value(metadata i64 %10, metadata !410, metadata !DIExpression()), !dbg !3304
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %11, metadata !410, metadata !DIExpression()), !dbg !3304
  %12 = icmp sgt i64 %3, -1, !dbg !3309
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !3311
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !3311
  call void @llvm.dbg.value(metadata i64 %15, metadata !410, metadata !DIExpression()), !dbg !3304
  %16 = icmp slt i64 %4, 0, !dbg !3312
  br i1 %16, label %17, label %30, !dbg !3312

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !3312
  br i1 %18, label %19, label %24, !dbg !3312

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !3312
  %21 = udiv i64 9223372036854775807, %20, !dbg !3312
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !3312
  br i1 %23, label %46, label %43, !dbg !3312

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !3312
  br i1 %25, label %43, label %26, !dbg !3312

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !3312
  %28 = udiv i64 -9223372036854775808, %27, !dbg !3312
  %29 = icmp ult i64 %28, %15, !dbg !3312
  br i1 %29, label %46, label %43, !dbg !3312

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !3312
  br i1 %31, label %43, label %32, !dbg !3312

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !3312
  br i1 %33, label %34, label %40, !dbg !3312

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !3312
  br i1 %35, label %43, label %36, !dbg !3312

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !3312
  %38 = udiv i64 -9223372036854775808, %37, !dbg !3312
  %39 = icmp ult i64 %38, %4, !dbg !3312
  br i1 %39, label %46, label %43, !dbg !3312

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !3312
  %42 = icmp ult i64 %41, %15, !dbg !3312
  br i1 %42, label %46, label %43, !dbg !3312

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3304
  %44 = mul i64 %15, %4, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %44, metadata !411, metadata !DIExpression()), !dbg !3304
  %45 = icmp slt i64 %44, 128, !dbg !3312
  br i1 %45, label %46, label %52, !dbg !3312

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !412, metadata !DIExpression()), !dbg !3304
  %48 = sdiv i64 %47, %4, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %48, metadata !410, metadata !DIExpression()), !dbg !3304
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !3316
  call void @llvm.dbg.value(metadata i64 %51, metadata !411, metadata !DIExpression()), !dbg !3304
  br label %52, !dbg !3317

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !3304
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !3304
  call void @llvm.dbg.value(metadata i64 %54, metadata !411, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %53, metadata !410, metadata !DIExpression()), !dbg !3304
  %55 = icmp eq i8* %0, null, !dbg !3318
  br i1 %55, label %56, label %57, !dbg !3320

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !3321, !tbaa !821
  br label %57, !dbg !3322

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !3323
  %59 = icmp slt i64 %58, %2, !dbg !3325
  br i1 %59, label %60, label %97, !dbg !3326

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !3327
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !3327
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !3327
  call void @llvm.dbg.value(metadata i64 %63, metadata !410, metadata !DIExpression()), !dbg !3304
  br i1 %62, label %96, label %64, !dbg !3328

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !3329
  br i1 %66, label %96, label %67, !dbg !3329

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !3330

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !3330
  br i1 %69, label %70, label %75, !dbg !3330

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !3330
  %72 = udiv i64 9223372036854775807, %71, !dbg !3330
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !3330
  br i1 %74, label %96, label %94, !dbg !3330

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !3330
  br i1 %76, label %94, label %77, !dbg !3330

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !3330
  %79 = udiv i64 -9223372036854775808, %78, !dbg !3330
  %80 = icmp ult i64 %79, %63, !dbg !3330
  br i1 %80, label %96, label %94, !dbg !3330

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !3330
  br i1 %82, label %94, label %83, !dbg !3330

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !3330
  br i1 %84, label %85, label %91, !dbg !3330

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !3330
  br i1 %86, label %94, label %87, !dbg !3330

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !3330
  %89 = udiv i64 -9223372036854775808, %88, !dbg !3330
  %90 = icmp ult i64 %89, %4, !dbg !3330
  br i1 %90, label %96, label %94, !dbg !3330

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !3330
  %93 = icmp ult i64 %92, %63, !dbg !3330
  br i1 %93, label %96, label %94, !dbg !3330

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !411, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !3304
  %95 = mul i64 %63, %4, !dbg !3330
  call void @llvm.dbg.value(metadata i64 %95, metadata !411, metadata !DIExpression()), !dbg !3304
  br label %97, !dbg !3331

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #34, !dbg !3332
  unreachable, !dbg !3332

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !3304
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !3304
  call void @llvm.dbg.value(metadata i64 %99, metadata !411, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i64 %98, metadata !410, metadata !DIExpression()), !dbg !3304
  call void @llvm.dbg.value(metadata i8* %0, metadata !3151, metadata !DIExpression()) #32, !dbg !3333
  call void @llvm.dbg.value(metadata i64 %99, metadata !3152, metadata !DIExpression()) #32, !dbg !3333
  call void @llvm.dbg.value(metadata i8* %0, metadata !3154, metadata !DIExpression()) #32, !dbg !3335
  call void @llvm.dbg.value(metadata i64 %99, metadata !3158, metadata !DIExpression()) #32, !dbg !3335
  %100 = icmp eq i64 %99, 0, !dbg !3337
  %101 = select i1 %100, i64 1, i64 %99, !dbg !3337
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #32, !dbg !3338
  call void @llvm.dbg.value(metadata i8* %102, metadata !3080, metadata !DIExpression()) #32, !dbg !3339
  %103 = icmp eq i8* %102, null, !dbg !3341
  br i1 %103, label %104, label %105, !dbg !3342

104:                                              ; preds = %97
  tail call void @xalloc_die() #34, !dbg !3343
  unreachable, !dbg !3343

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !404, metadata !DIExpression()), !dbg !3304
  store i64 %98, i64* %1, align 8, !dbg !3344, !tbaa !821
  ret i8* %102, !dbg !3345
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3346 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3348, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i64 %0, metadata !3350, metadata !DIExpression()) #32, !dbg !3354
  call void @llvm.dbg.value(metadata i64 1, metadata !3353, metadata !DIExpression()) #32, !dbg !3354
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3356
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()) #32, !dbg !3357
  %3 = icmp eq i8* %2, null, !dbg !3359
  br i1 %3, label %4, label %5, !dbg !3360

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3361
  unreachable, !dbg !3361

5:                                                ; preds = %1
  ret i8* %2, !dbg !3362
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3351 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3350, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.value(metadata i64 %1, metadata !3353, metadata !DIExpression()), !dbg !3363
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3364
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3365
  %4 = icmp eq i8* %3, null, !dbg !3367
  br i1 %4, label %5, label %6, !dbg !3368

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3369
  unreachable, !dbg !3369

6:                                                ; preds = %2
  ret i8* %3, !dbg !3370
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #26 !dbg !3371 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3373, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i64 %0, metadata !3375, metadata !DIExpression()) #32, !dbg !3379
  call void @llvm.dbg.value(metadata i64 1, metadata !3378, metadata !DIExpression()) #32, !dbg !3379
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()) #32, !dbg !3385
  call void @llvm.dbg.value(metadata i64 1, metadata !3384, metadata !DIExpression()) #32, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()) #32, !dbg !3385
  call void @llvm.dbg.value(metadata i64 1, metadata !3384, metadata !DIExpression()) #32, !dbg !3385
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #32, !dbg !3387
  call void @llvm.dbg.value(metadata i8* %2, metadata !3080, metadata !DIExpression()) #32, !dbg !3388
  %3 = icmp eq i8* %2, null, !dbg !3390
  br i1 %3, label %4, label %5, !dbg !3391

4:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3392
  unreachable, !dbg !3392

5:                                                ; preds = %1
  ret i8* %2, !dbg !3393
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #29 !dbg !3376 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3375, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %1, metadata !3378, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()) #32, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()) #32, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %0, metadata !3381, metadata !DIExpression()) #32, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %1, metadata !3384, metadata !DIExpression()) #32, !dbg !3395
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #32, !dbg !3397
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3398
  %4 = icmp eq i8* %3, null, !dbg !3400
  br i1 %4, label %5, label %6, !dbg !3401

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3402
  unreachable, !dbg !3402

6:                                                ; preds = %2
  ret i8* %3, !dbg !3403
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3404 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3409, metadata !DIExpression()), !dbg !3410
  call void @llvm.dbg.value(metadata i64 %1, metadata !3104, metadata !DIExpression()) #32, !dbg !3411
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3413
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3414
  %4 = icmp eq i8* %3, null, !dbg !3416
  br i1 %4, label %5, label %6, !dbg !3417

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3418
  unreachable, !dbg !3418

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3419, metadata !DIExpression()) #32, !dbg !3427
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()) #32, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()) #32, !dbg !3427
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3429
  ret i8* %3, !dbg !3430
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #28 !dbg !3431 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3117, metadata !DIExpression()) #32, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %1, metadata !3119, metadata !DIExpression()) #32, !dbg !3440
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #32, !dbg !3442
  call void @llvm.dbg.value(metadata i8* %3, metadata !3080, metadata !DIExpression()) #32, !dbg !3443
  %4 = icmp eq i8* %3, null, !dbg !3445
  br i1 %4, label %5, label %6, !dbg !3446

5:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3447
  unreachable, !dbg !3447

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !3419, metadata !DIExpression()) #32, !dbg !3448
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()) #32, !dbg !3448
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()) #32, !dbg !3448
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3450
  ret i8* %3, !dbg !3451
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #12 !dbg !3452 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3456, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i64 %1, metadata !3457, metadata !DIExpression()), !dbg !3459
  %3 = add nsw i64 %1, 1, !dbg !3460
  call void @llvm.dbg.value(metadata i64 %3, metadata !3117, metadata !DIExpression()) #32, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %3, metadata !3119, metadata !DIExpression()) #32, !dbg !3463
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3465
  call void @llvm.dbg.value(metadata i8* %4, metadata !3080, metadata !DIExpression()) #32, !dbg !3466
  %5 = icmp eq i8* %4, null, !dbg !3468
  br i1 %5, label %6, label %7, !dbg !3469

6:                                                ; preds = %2
  tail call void @xalloc_die() #34, !dbg !3470
  unreachable, !dbg !3470

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !3458, metadata !DIExpression()), !dbg !3459
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !3471
  store i8 0, i8* %8, align 1, !dbg !3472, !tbaa !567
  call void @llvm.dbg.value(metadata i8* %4, metadata !3419, metadata !DIExpression()) #32, !dbg !3473
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()) #32, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %1, metadata !3426, metadata !DIExpression()) #32, !dbg !3473
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #32, !dbg !3475
  ret i8* %4, !dbg !3476
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #12 !dbg !3477 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3479, metadata !DIExpression()), !dbg !3480
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #33, !dbg !3481
  %3 = add i64 %2, 1, !dbg !3482
  call void @llvm.dbg.value(metadata i8* %0, metadata !3408, metadata !DIExpression()) #32, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %3, metadata !3409, metadata !DIExpression()) #32, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %3, metadata !3104, metadata !DIExpression()) #32, !dbg !3485
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #32, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %4, metadata !3080, metadata !DIExpression()) #32, !dbg !3488
  %5 = icmp eq i8* %4, null, !dbg !3490
  br i1 %5, label %6, label %7, !dbg !3491

6:                                                ; preds = %1
  tail call void @xalloc_die() #34, !dbg !3492
  unreachable, !dbg !3492

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !3419, metadata !DIExpression()) #32, !dbg !3493
  call void @llvm.dbg.value(metadata i8* %0, metadata !3425, metadata !DIExpression()) #32, !dbg !3493
  call void @llvm.dbg.value(metadata i64 %3, metadata !3426, metadata !DIExpression()) #32, !dbg !3493
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #32, !dbg !3495
  ret i8* %4, !dbg !3496
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3497 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3502, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %1, metadata !3499, metadata !DIExpression()), !dbg !3503
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.142, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.143, i64 0, i64 0), i32 noundef 5) #32, !dbg !3502
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.144, i64 0, i64 0), i8* noundef %2) #32, !dbg !3502
  %3 = icmp eq i32 %1, 0, !dbg !3502
  tail call void @llvm.assume(i1 %3), !dbg !3502
  tail call void @abort() #34, !dbg !3504
  unreachable, !dbg !3504
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoumax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #12 !dbg !3505 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3512, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8** %1, metadata !3513, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 %2, metadata !3514, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64* %3, metadata !3515, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8* %4, metadata !3516, metadata !DIExpression()), !dbg !3530
  %7 = bitcast i8** %6 to i8*, !dbg !3531
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #32, !dbg !3531
  %8 = icmp eq i8** %1, null, !dbg !3532
  call void @llvm.dbg.value(metadata i8** %21, metadata !3518, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i8* %0, metadata !3519, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 undef, metadata !3522, metadata !DIExpression()), !dbg !3533
  %9 = tail call i16** @__ctype_b_loc() #35, !dbg !3530
  %10 = load i16*, i16** %9, align 8, !tbaa !463
  br label %11, !dbg !3534

11:                                               ; preds = %11, %5
  %12 = phi i8* [ %0, %5 ], [ %19, %11 ], !dbg !3533
  %13 = load i8, i8* %12, align 1, !dbg !3533, !tbaa !567
  call void @llvm.dbg.value(metadata i8 %13, metadata !3522, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8* %12, metadata !3519, metadata !DIExpression()), !dbg !3533
  %14 = zext i8 %13 to i64
  %15 = getelementptr inbounds i16, i16* %10, i64 %14, !dbg !3535
  %16 = load i16, i16* %15, align 2, !dbg !3535, !tbaa !592
  %17 = and i16 %16, 8192, !dbg !3535
  %18 = icmp eq i16 %17, 0, !dbg !3534
  %19 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %19, metadata !3519, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i8 undef, metadata !3522, metadata !DIExpression()), !dbg !3533
  br i1 %18, label %20, label %11, !dbg !3534, !llvm.loop !3537

20:                                               ; preds = %11
  %21 = select i1 %8, i8** %6, i8** %1, !dbg !3532
  %22 = icmp eq i8 %13, 45, !dbg !3539
  br i1 %22, label %23, label %24, !dbg !3541

23:                                               ; preds = %20
  store i8* %0, i8** %21, align 8, !dbg !3542, !tbaa !463
  br label %387

24:                                               ; preds = %20
  %25 = tail call i32* @__errno_location() #35, !dbg !3544
  store i32 0, i32* %25, align 4, !dbg !3545, !tbaa !558
  %26 = call i64 @strtoumax(i8* noundef %0, i8** noundef %21, i32 noundef %2) #32, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %26, metadata !3523, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i32 0, metadata !3524, metadata !DIExpression()), !dbg !3530
  %27 = load i8*, i8** %21, align 8, !dbg !3547, !tbaa !463
  %28 = icmp eq i8* %27, %0, !dbg !3549
  br i1 %28, label %29, label %38, !dbg !3550

29:                                               ; preds = %24
  %30 = icmp eq i8* %4, null, !dbg !3551
  br i1 %30, label %387, label %31, !dbg !3554

31:                                               ; preds = %29
  %32 = load i8, i8* %0, align 1, !dbg !3555, !tbaa !567
  %33 = icmp eq i8 %32, 0, !dbg !3555
  br i1 %33, label %387, label %34, !dbg !3556

34:                                               ; preds = %31
  %35 = zext i8 %32 to i32, !dbg !3555
  %36 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %35) #33, !dbg !3557
  %37 = icmp eq i8* %36, null, !dbg !3557
  br i1 %37, label %387, label %45, !dbg !3558

38:                                               ; preds = %24
  %39 = load i32, i32* %25, align 4, !dbg !3559, !tbaa !558
  switch i32 %39, label %387 [
    i32 0, label %41
    i32 34, label %40
  ], !dbg !3561

40:                                               ; preds = %38
  call void @llvm.dbg.value(metadata i32 1, metadata !3524, metadata !DIExpression()), !dbg !3530
  br label %41, !dbg !3562

41:                                               ; preds = %38, %40
  %42 = phi i32 [ 1, %40 ], [ %39, %38 ], !dbg !3530
  call void @llvm.dbg.value(metadata i32 %42, metadata !3524, metadata !DIExpression()), !dbg !3530
  %43 = icmp eq i8* %4, null, !dbg !3564
  br i1 %43, label %44, label %45, !dbg !3566

44:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i64 %26, metadata !3523, metadata !DIExpression()), !dbg !3530
  store i64 %26, i64* %3, align 8, !dbg !3567, !tbaa !821
  br label %387, !dbg !3569

45:                                               ; preds = %34, %41
  %46 = phi i32 [ %42, %41 ], [ 0, %34 ]
  %47 = phi i64 [ %26, %41 ], [ 1, %34 ]
  %48 = load i8, i8* %27, align 1, !dbg !3570, !tbaa !567
  %49 = icmp eq i8 %48, 0, !dbg !3571
  br i1 %49, label %384, label %50, !dbg !3572

50:                                               ; preds = %45
  %51 = zext i8 %48 to i32, !dbg !3570
  %52 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %51) #33, !dbg !3573
  %53 = icmp eq i8* %52, null, !dbg !3573
  br i1 %53, label %54, label %56, !dbg !3575

54:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 %26, metadata !3523, metadata !DIExpression()), !dbg !3530
  store i64 %47, i64* %3, align 8, !dbg !3576, !tbaa !821
  %55 = or i32 %46, 2, !dbg !3578
  br label %387, !dbg !3579

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i32 1024, metadata !3525, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 1, metadata !3528, metadata !DIExpression()), !dbg !3580
  switch i8 %48, label %69 [
    i8 69, label %57
    i8 71, label %57
    i8 103, label %57
    i8 107, label %57
    i8 75, label %57
    i8 77, label %57
    i8 109, label %57
    i8 80, label %57
    i8 81, label %57
    i8 82, label %57
    i8 84, label %57
    i8 116, label %57
    i8 89, label %57
    i8 90, label %57
  ], !dbg !3581

57:                                               ; preds = %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56, %56
  %58 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #33, !dbg !3582
  %59 = icmp eq i8* %58, null, !dbg !3582
  br i1 %59, label %69, label %60, !dbg !3585

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !3586
  %62 = load i8, i8* %61, align 1, !dbg !3586, !tbaa !567
  switch i8 %62, label %69 [
    i8 105, label %63
    i8 66, label %68
    i8 68, label %68
  ], !dbg !3587

63:                                               ; preds = %60
  %64 = getelementptr inbounds i8, i8* %27, i64 2, !dbg !3588
  %65 = load i8, i8* %64, align 1, !dbg !3588, !tbaa !567
  %66 = icmp eq i8 %65, 66, !dbg !3591
  %67 = select i1 %66, i64 3, i64 1, !dbg !3592
  br label %69, !dbg !3592

68:                                               ; preds = %60, %60
  call void @llvm.dbg.value(metadata i32 1000, metadata !3525, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 2, metadata !3528, metadata !DIExpression()), !dbg !3580
  br label %69, !dbg !3593

69:                                               ; preds = %63, %57, %60, %68, %56
  %70 = phi i64 [ 1024, %56 ], [ 1024, %60 ], [ 1000, %68 ], [ 1024, %57 ], [ 1024, %63 ]
  %71 = phi i64 [ 1, %56 ], [ 1, %60 ], [ 2, %68 ], [ 1, %57 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !3528, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i32 undef, metadata !3525, metadata !DIExpression()), !dbg !3580
  switch i8 %48, label %382 [
    i8 98, label %303
    i8 66, label %308
    i8 99, label %373
    i8 69, label %272
    i8 71, label %313
    i8 103, label %313
    i8 107, label %329
    i8 75, label %329
    i8 77, label %335
    i8 109, label %335
    i8 80, label %246
    i8 81, label %195
    i8 82, label %149
    i8 84, label %346
    i8 116, label %346
    i8 119, label %367
    i8 89, label %108
    i8 90, label %72
  ], !dbg !3594

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %73 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3615
  %74 = extractvalue { i64, i1 } %73, 1, !dbg !3615
  %75 = mul i64 %47, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %75, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %76 = select i1 %74, i64 -1, i64 %75, !dbg !3613
  call void @llvm.dbg.value(metadata i1 %74, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %74, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %77 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %76) #32, !dbg !3615
  %78 = extractvalue { i64, i1 } %77, 1, !dbg !3615
  %79 = mul i64 %76, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %79, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %80 = select i1 %78, i64 -1, i64 %79, !dbg !3613
  %81 = or i1 %74, %78, !dbg !3617
  call void @llvm.dbg.value(metadata i1 %81, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %81, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %82 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %80) #32, !dbg !3615
  %83 = extractvalue { i64, i1 } %82, 1, !dbg !3615
  %84 = mul i64 %80, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %84, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %85 = select i1 %83, i64 -1, i64 %84, !dbg !3613
  %86 = or i1 %81, %83, !dbg !3617
  call void @llvm.dbg.value(metadata i1 %86, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %86, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %87 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %85) #32, !dbg !3615
  %88 = extractvalue { i64, i1 } %87, 1, !dbg !3615
  %89 = mul i64 %85, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %89, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %90 = select i1 %88, i64 -1, i64 %89, !dbg !3613
  %91 = or i1 %86, %88, !dbg !3617
  call void @llvm.dbg.value(metadata i1 %91, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %91, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %92 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %90) #32, !dbg !3615
  %93 = extractvalue { i64, i1 } %92, 1, !dbg !3615
  %94 = mul i64 %90, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %94, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %95 = select i1 %93, i64 -1, i64 %94, !dbg !3613
  %96 = or i1 %91, %93, !dbg !3617
  call void @llvm.dbg.value(metadata i1 %96, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %96, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %97 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %95) #32, !dbg !3615
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !3615
  %99 = mul i64 %95, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %99, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %100 = select i1 %98, i64 -1, i64 %99, !dbg !3613
  %101 = or i1 %96, %98, !dbg !3617
  call void @llvm.dbg.value(metadata i1 %101, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i1 %101, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3613
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3613
  %102 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %100) #32, !dbg !3615
  %103 = extractvalue { i64, i1 } %102, 1, !dbg !3615
  %104 = mul i64 %100, %70, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %104, metadata !3612, metadata !DIExpression()) #32, !dbg !3613
  %105 = select i1 %103, i64 -1, i64 %104, !dbg !3613
  %106 = or i1 %101, %103, !dbg !3617
  %107 = zext i1 %106 to i32, !dbg !3617
  call void @llvm.dbg.value(metadata i32 %107, metadata !3595, metadata !DIExpression()) #32, !dbg !3603
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3603
  br label %373, !dbg !3618

108:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %109 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3623
  %110 = extractvalue { i64, i1 } %109, 1, !dbg !3623
  %111 = mul i64 %47, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %111, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %112 = select i1 %110, i64 -1, i64 %111, !dbg !3621
  call void @llvm.dbg.value(metadata i1 %110, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %110, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %113 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %112) #32, !dbg !3623
  %114 = extractvalue { i64, i1 } %113, 1, !dbg !3623
  %115 = mul i64 %112, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %115, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %116 = select i1 %114, i64 -1, i64 %115, !dbg !3621
  %117 = or i1 %110, %114, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %117, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %117, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %118 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %116) #32, !dbg !3623
  %119 = extractvalue { i64, i1 } %118, 1, !dbg !3623
  %120 = mul i64 %116, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %120, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %121 = select i1 %119, i64 -1, i64 %120, !dbg !3621
  %122 = or i1 %117, %119, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %122, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %122, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %123 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %121) #32, !dbg !3623
  %124 = extractvalue { i64, i1 } %123, 1, !dbg !3623
  %125 = mul i64 %121, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %125, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %126 = select i1 %124, i64 -1, i64 %125, !dbg !3621
  %127 = or i1 %122, %124, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %127, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %127, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %128 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %126) #32, !dbg !3623
  %129 = extractvalue { i64, i1 } %128, 1, !dbg !3623
  %130 = mul i64 %126, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %130, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %131 = select i1 %129, i64 -1, i64 %130, !dbg !3621
  %132 = or i1 %127, %129, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %132, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %132, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %133 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %131) #32, !dbg !3623
  %134 = extractvalue { i64, i1 } %133, 1, !dbg !3623
  %135 = mul i64 %131, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %135, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %136 = select i1 %134, i64 -1, i64 %135, !dbg !3621
  %137 = or i1 %132, %134, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %137, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %137, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %138 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %136) #32, !dbg !3623
  %139 = extractvalue { i64, i1 } %138, 1, !dbg !3623
  %140 = mul i64 %136, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %140, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %141 = select i1 %139, i64 -1, i64 %140, !dbg !3621
  %142 = or i1 %137, %139, !dbg !3624
  call void @llvm.dbg.value(metadata i1 %142, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i1 %142, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3621
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3621
  %143 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %141) #32, !dbg !3623
  %144 = extractvalue { i64, i1 } %143, 1, !dbg !3623
  %145 = mul i64 %141, %70, !dbg !3623
  call void @llvm.dbg.value(metadata i64 %145, metadata !3612, metadata !DIExpression()) #32, !dbg !3621
  %146 = select i1 %144, i64 -1, i64 %145, !dbg !3621
  %147 = or i1 %142, %144, !dbg !3624
  %148 = zext i1 %147 to i32, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %148, metadata !3595, metadata !DIExpression()) #32, !dbg !3619
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3619
  br label %373, !dbg !3618

149:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 9, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %150 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3629
  %151 = extractvalue { i64, i1 } %150, 1, !dbg !3629
  %152 = mul i64 %47, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %152, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %153 = select i1 %151, i64 -1, i64 %152, !dbg !3627
  call void @llvm.dbg.value(metadata i1 %151, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %151, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %154 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %153) #32, !dbg !3629
  %155 = extractvalue { i64, i1 } %154, 1, !dbg !3629
  %156 = mul i64 %153, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %156, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %157 = select i1 %155, i64 -1, i64 %156, !dbg !3627
  %158 = or i1 %151, %155, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %158, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %158, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %159 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %157) #32, !dbg !3629
  %160 = extractvalue { i64, i1 } %159, 1, !dbg !3629
  %161 = mul i64 %157, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %161, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %162 = select i1 %160, i64 -1, i64 %161, !dbg !3627
  %163 = or i1 %158, %160, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %163, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %163, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %164 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %162) #32, !dbg !3629
  %165 = extractvalue { i64, i1 } %164, 1, !dbg !3629
  %166 = mul i64 %162, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %166, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %167 = select i1 %165, i64 -1, i64 %166, !dbg !3627
  %168 = or i1 %163, %165, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %168, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %168, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %169 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %167) #32, !dbg !3629
  %170 = extractvalue { i64, i1 } %169, 1, !dbg !3629
  %171 = mul i64 %167, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %171, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %172 = select i1 %170, i64 -1, i64 %171, !dbg !3627
  %173 = or i1 %168, %170, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %173, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %173, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %174 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %172) #32, !dbg !3629
  %175 = extractvalue { i64, i1 } %174, 1, !dbg !3629
  %176 = mul i64 %172, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %176, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %177 = select i1 %175, i64 -1, i64 %176, !dbg !3627
  %178 = or i1 %173, %175, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %178, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %178, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %179 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %177) #32, !dbg !3629
  %180 = extractvalue { i64, i1 } %179, 1, !dbg !3629
  %181 = mul i64 %177, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %181, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %182 = select i1 %180, i64 -1, i64 %181, !dbg !3627
  %183 = or i1 %178, %180, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %183, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %183, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %184 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %182) #32, !dbg !3629
  %185 = extractvalue { i64, i1 } %184, 1, !dbg !3629
  %186 = mul i64 %182, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %186, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %187 = select i1 %185, i64 -1, i64 %186, !dbg !3627
  %188 = or i1 %183, %185, !dbg !3630
  call void @llvm.dbg.value(metadata i1 %188, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i1 %188, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3627
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3627
  %189 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %187) #32, !dbg !3629
  %190 = extractvalue { i64, i1 } %189, 1, !dbg !3629
  %191 = mul i64 %187, %70, !dbg !3629
  call void @llvm.dbg.value(metadata i64 %191, metadata !3612, metadata !DIExpression()) #32, !dbg !3627
  %192 = select i1 %190, i64 -1, i64 %191, !dbg !3627
  %193 = or i1 %188, %190, !dbg !3630
  %194 = zext i1 %193 to i32, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %194, metadata !3595, metadata !DIExpression()) #32, !dbg !3625
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3625
  br label %373, !dbg !3618

195:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 10, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 9, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %196 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3635
  %197 = extractvalue { i64, i1 } %196, 1, !dbg !3635
  %198 = mul i64 %47, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %198, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %199 = select i1 %197, i64 -1, i64 %198, !dbg !3633
  call void @llvm.dbg.value(metadata i1 %197, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 9, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %197, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 9, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %200 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %199) #32, !dbg !3635
  %201 = extractvalue { i64, i1 } %200, 1, !dbg !3635
  %202 = mul i64 %199, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %202, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %203 = select i1 %201, i64 -1, i64 %202, !dbg !3633
  %204 = or i1 %197, %201, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %204, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %204, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 8, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %205 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %203) #32, !dbg !3635
  %206 = extractvalue { i64, i1 } %205, 1, !dbg !3635
  %207 = mul i64 %203, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %207, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %208 = select i1 %206, i64 -1, i64 %207, !dbg !3633
  %209 = or i1 %204, %206, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %209, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %209, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 7, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %210 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %208) #32, !dbg !3635
  %211 = extractvalue { i64, i1 } %210, 1, !dbg !3635
  %212 = mul i64 %208, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %212, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %213 = select i1 %211, i64 -1, i64 %212, !dbg !3633
  %214 = or i1 %209, %211, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %214, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %214, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %215 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %213) #32, !dbg !3635
  %216 = extractvalue { i64, i1 } %215, 1, !dbg !3635
  %217 = mul i64 %213, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %217, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %218 = select i1 %216, i64 -1, i64 %217, !dbg !3633
  %219 = or i1 %214, %216, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %219, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %219, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %220 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %218) #32, !dbg !3635
  %221 = extractvalue { i64, i1 } %220, 1, !dbg !3635
  %222 = mul i64 %218, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %222, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %223 = select i1 %221, i64 -1, i64 %222, !dbg !3633
  %224 = or i1 %219, %221, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %224, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %224, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %225 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %223) #32, !dbg !3635
  %226 = extractvalue { i64, i1 } %225, 1, !dbg !3635
  %227 = mul i64 %223, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %227, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %228 = select i1 %226, i64 -1, i64 %227, !dbg !3633
  %229 = or i1 %224, %226, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %229, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %229, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %230 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %228) #32, !dbg !3635
  %231 = extractvalue { i64, i1 } %230, 1, !dbg !3635
  %232 = mul i64 %228, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %232, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %233 = select i1 %231, i64 -1, i64 %232, !dbg !3633
  %234 = or i1 %229, %231, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %234, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %234, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %235 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %233) #32, !dbg !3635
  %236 = extractvalue { i64, i1 } %235, 1, !dbg !3635
  %237 = mul i64 %233, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %237, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %238 = select i1 %236, i64 -1, i64 %237, !dbg !3633
  %239 = or i1 %234, %236, !dbg !3636
  call void @llvm.dbg.value(metadata i1 %239, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i1 %239, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3633
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3633
  %240 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %238) #32, !dbg !3635
  %241 = extractvalue { i64, i1 } %240, 1, !dbg !3635
  %242 = mul i64 %238, %70, !dbg !3635
  call void @llvm.dbg.value(metadata i64 %242, metadata !3612, metadata !DIExpression()) #32, !dbg !3633
  %243 = select i1 %241, i64 -1, i64 %242, !dbg !3633
  %244 = or i1 %239, %241, !dbg !3636
  %245 = zext i1 %244 to i32, !dbg !3636
  call void @llvm.dbg.value(metadata i32 %245, metadata !3595, metadata !DIExpression()) #32, !dbg !3631
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3631
  br label %373, !dbg !3618

246:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3639
  %247 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3641
  %248 = extractvalue { i64, i1 } %247, 1, !dbg !3641
  %249 = mul i64 %47, %70, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %249, metadata !3612, metadata !DIExpression()) #32, !dbg !3639
  %250 = select i1 %248, i64 -1, i64 %249, !dbg !3639
  call void @llvm.dbg.value(metadata i1 %248, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i1 %248, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3639
  %251 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %250) #32, !dbg !3641
  %252 = extractvalue { i64, i1 } %251, 1, !dbg !3641
  %253 = mul i64 %250, %70, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %253, metadata !3612, metadata !DIExpression()) #32, !dbg !3639
  %254 = select i1 %252, i64 -1, i64 %253, !dbg !3639
  %255 = or i1 %248, %252, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %255, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i1 %255, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3639
  %256 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %254) #32, !dbg !3641
  %257 = extractvalue { i64, i1 } %256, 1, !dbg !3641
  %258 = mul i64 %254, %70, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %258, metadata !3612, metadata !DIExpression()) #32, !dbg !3639
  %259 = select i1 %257, i64 -1, i64 %258, !dbg !3639
  %260 = or i1 %255, %257, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %260, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i1 %260, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3639
  %261 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %259) #32, !dbg !3641
  %262 = extractvalue { i64, i1 } %261, 1, !dbg !3641
  %263 = mul i64 %259, %70, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %263, metadata !3612, metadata !DIExpression()) #32, !dbg !3639
  %264 = select i1 %262, i64 -1, i64 %263, !dbg !3639
  %265 = or i1 %260, %262, !dbg !3642
  call void @llvm.dbg.value(metadata i1 %265, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i1 %265, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3639
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3639
  %266 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %264) #32, !dbg !3641
  %267 = extractvalue { i64, i1 } %266, 1, !dbg !3641
  %268 = mul i64 %264, %70, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %268, metadata !3612, metadata !DIExpression()) #32, !dbg !3639
  %269 = select i1 %267, i64 -1, i64 %268, !dbg !3639
  %270 = or i1 %265, %267, !dbg !3642
  %271 = zext i1 %270 to i32, !dbg !3642
  call void @llvm.dbg.value(metadata i32 %271, metadata !3595, metadata !DIExpression()) #32, !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3637
  br label %373, !dbg !3618

272:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 6, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %273 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3647
  %274 = extractvalue { i64, i1 } %273, 1, !dbg !3647
  %275 = mul i64 %47, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %275, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %276 = select i1 %274, i64 -1, i64 %275, !dbg !3645
  call void @llvm.dbg.value(metadata i1 %274, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %274, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 5, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %277 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %276) #32, !dbg !3647
  %278 = extractvalue { i64, i1 } %277, 1, !dbg !3647
  %279 = mul i64 %276, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %279, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %280 = select i1 %278, i64 -1, i64 %279, !dbg !3645
  %281 = or i1 %274, %278, !dbg !3648
  call void @llvm.dbg.value(metadata i1 %281, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %281, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %282 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %280) #32, !dbg !3647
  %283 = extractvalue { i64, i1 } %282, 1, !dbg !3647
  %284 = mul i64 %280, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %284, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %285 = select i1 %283, i64 -1, i64 %284, !dbg !3645
  %286 = or i1 %281, %283, !dbg !3648
  call void @llvm.dbg.value(metadata i1 %286, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %286, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %287 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %285) #32, !dbg !3647
  %288 = extractvalue { i64, i1 } %287, 1, !dbg !3647
  %289 = mul i64 %285, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %289, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %290 = select i1 %288, i64 -1, i64 %289, !dbg !3645
  %291 = or i1 %286, %288, !dbg !3648
  call void @llvm.dbg.value(metadata i1 %291, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %291, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %292 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %290) #32, !dbg !3647
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !3647
  %294 = mul i64 %290, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %294, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %295 = select i1 %293, i64 -1, i64 %294, !dbg !3645
  %296 = or i1 %291, %293, !dbg !3648
  call void @llvm.dbg.value(metadata i1 %296, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i1 %296, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3645
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3645
  %297 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %295) #32, !dbg !3647
  %298 = extractvalue { i64, i1 } %297, 1, !dbg !3647
  %299 = mul i64 %295, %70, !dbg !3647
  call void @llvm.dbg.value(metadata i64 %299, metadata !3612, metadata !DIExpression()) #32, !dbg !3645
  %300 = select i1 %298, i64 -1, i64 %299, !dbg !3645
  %301 = or i1 %296, %298, !dbg !3648
  %302 = zext i1 %301 to i32, !dbg !3648
  call void @llvm.dbg.value(metadata i32 %302, metadata !3595, metadata !DIExpression()) #32, !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3643
  br label %373, !dbg !3618

303:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3649
  call void @llvm.dbg.value(metadata i32 512, metadata !3611, metadata !DIExpression()) #32, !dbg !3649
  %304 = icmp ugt i64 %47, 36028797018963967, !dbg !3651
  %305 = shl i64 %47, 9, !dbg !3651
  call void @llvm.dbg.value(metadata i64 %305, metadata !3612, metadata !DIExpression()) #32, !dbg !3649
  %306 = select i1 %304, i64 -1, i64 %305, !dbg !3649
  %307 = zext i1 %304 to i32, !dbg !3649
  call void @llvm.dbg.value(metadata i32 %307, metadata !3529, metadata !DIExpression()), !dbg !3580
  br label %373, !dbg !3652

308:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3653
  call void @llvm.dbg.value(metadata i32 1024, metadata !3611, metadata !DIExpression()) #32, !dbg !3653
  %309 = icmp ugt i64 %47, 18014398509481983, !dbg !3655
  %310 = shl i64 %47, 10, !dbg !3655
  call void @llvm.dbg.value(metadata i64 %310, metadata !3612, metadata !DIExpression()) #32, !dbg !3653
  %311 = select i1 %309, i64 -1, i64 %310, !dbg !3653
  %312 = zext i1 %309 to i32, !dbg !3653
  call void @llvm.dbg.value(metadata i32 %312, metadata !3529, metadata !DIExpression()), !dbg !3580
  br label %373, !dbg !3656

313:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3600, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 undef, metadata !3601, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3659
  %314 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3661
  %315 = extractvalue { i64, i1 } %314, 1, !dbg !3661
  %316 = mul i64 %47, %70, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %316, metadata !3612, metadata !DIExpression()) #32, !dbg !3659
  %317 = select i1 %315, i64 -1, i64 %316, !dbg !3659
  call void @llvm.dbg.value(metadata i1 %315, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %315, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3659
  %318 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %317) #32, !dbg !3661
  %319 = extractvalue { i64, i1 } %318, 1, !dbg !3661
  %320 = mul i64 %317, %70, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %320, metadata !3612, metadata !DIExpression()) #32, !dbg !3659
  %321 = select i1 %319, i64 -1, i64 %320, !dbg !3659
  %322 = or i1 %315, %319, !dbg !3662
  call void @llvm.dbg.value(metadata i1 %322, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i1 %322, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3659
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3659
  %323 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %321) #32, !dbg !3661
  %324 = extractvalue { i64, i1 } %323, 1, !dbg !3661
  %325 = mul i64 %321, %70, !dbg !3661
  call void @llvm.dbg.value(metadata i64 %325, metadata !3612, metadata !DIExpression()) #32, !dbg !3659
  %326 = select i1 %324, i64 -1, i64 %325, !dbg !3659
  %327 = or i1 %322, %324, !dbg !3662
  %328 = zext i1 %327 to i32, !dbg !3662
  call void @llvm.dbg.value(metadata i32 %328, metadata !3595, metadata !DIExpression()) #32, !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3657
  br label %373, !dbg !3618

329:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3600, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 undef, metadata !3601, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 undef, metadata !3602, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 undef, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3665
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3665
  %330 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3667
  %331 = extractvalue { i64, i1 } %330, 1, !dbg !3667
  %332 = mul i64 %47, %70, !dbg !3667
  call void @llvm.dbg.value(metadata i64 %332, metadata !3612, metadata !DIExpression()) #32, !dbg !3665
  %333 = select i1 %331, i64 -1, i64 %332, !dbg !3665
  %334 = zext i1 %331 to i32, !dbg !3665
  call void @llvm.dbg.value(metadata i32 %334, metadata !3595, metadata !DIExpression()) #32, !dbg !3663
  call void @llvm.dbg.value(metadata i32 undef, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3663
  br label %373, !dbg !3618

335:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3600, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 undef, metadata !3601, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3670
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3670
  %336 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3672
  %337 = extractvalue { i64, i1 } %336, 1, !dbg !3672
  %338 = mul i64 %47, %70, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %338, metadata !3612, metadata !DIExpression()) #32, !dbg !3670
  %339 = select i1 %337, i64 -1, i64 %338, !dbg !3670
  call void @llvm.dbg.value(metadata i1 %337, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i1 %337, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3670
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3670
  %340 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %339) #32, !dbg !3672
  %341 = extractvalue { i64, i1 } %340, 1, !dbg !3672
  %342 = mul i64 %339, %70, !dbg !3672
  call void @llvm.dbg.value(metadata i64 %342, metadata !3612, metadata !DIExpression()) #32, !dbg !3670
  %343 = select i1 %341, i64 -1, i64 %342, !dbg !3670
  %344 = or i1 %337, %341, !dbg !3673
  %345 = zext i1 %344 to i32, !dbg !3673
  call void @llvm.dbg.value(metadata i32 %345, metadata !3595, metadata !DIExpression()) #32, !dbg !3668
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3668
  br label %373, !dbg !3618

346:                                              ; preds = %69, %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3600, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 undef, metadata !3601, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3595, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 4, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3676
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3676
  %347 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %47) #32, !dbg !3678
  %348 = extractvalue { i64, i1 } %347, 1, !dbg !3678
  %349 = mul i64 %47, %70, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %349, metadata !3612, metadata !DIExpression()) #32, !dbg !3676
  %350 = select i1 %348, i64 -1, i64 %349, !dbg !3676
  call void @llvm.dbg.value(metadata i1 %348, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %348, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 3, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3676
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3676
  %351 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %350) #32, !dbg !3678
  %352 = extractvalue { i64, i1 } %351, 1, !dbg !3678
  %353 = mul i64 %350, %70, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %353, metadata !3612, metadata !DIExpression()) #32, !dbg !3676
  %354 = select i1 %352, i64 -1, i64 %353, !dbg !3676
  %355 = or i1 %348, %352, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %355, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %355, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 2, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3676
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3676
  %356 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %354) #32, !dbg !3678
  %357 = extractvalue { i64, i1 } %356, 1, !dbg !3678
  %358 = mul i64 %354, %70, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %358, metadata !3612, metadata !DIExpression()) #32, !dbg !3676
  %359 = select i1 %357, i64 -1, i64 %358, !dbg !3676
  %360 = or i1 %355, %357, !dbg !3679
  call void @llvm.dbg.value(metadata i1 %360, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i1 %360, metadata !3595, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 1, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3676
  call void @llvm.dbg.value(metadata i32 undef, metadata !3611, metadata !DIExpression()) #32, !dbg !3676
  %361 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %70, i64 %359) #32, !dbg !3678
  %362 = extractvalue { i64, i1 } %361, 1, !dbg !3678
  %363 = mul i64 %359, %70, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %363, metadata !3612, metadata !DIExpression()) #32, !dbg !3676
  %364 = select i1 %362, i64 -1, i64 %363, !dbg !3676
  %365 = or i1 %360, %362, !dbg !3679
  %366 = zext i1 %365 to i32, !dbg !3679
  call void @llvm.dbg.value(metadata i32 %366, metadata !3595, metadata !DIExpression()) #32, !dbg !3674
  call void @llvm.dbg.value(metadata i32 0, metadata !3602, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)) #32, !dbg !3674
  br label %373, !dbg !3618

367:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64* undef, metadata !3606, metadata !DIExpression()) #32, !dbg !3680
  call void @llvm.dbg.value(metadata i32 2, metadata !3611, metadata !DIExpression()) #32, !dbg !3680
  %368 = shl i64 %47, 1, !dbg !3682
  call void @llvm.dbg.value(metadata i64 %368, metadata !3612, metadata !DIExpression()) #32, !dbg !3680
  %369 = icmp sgt i64 %47, -1, !dbg !3680
  %370 = select i1 %369, i64 %368, i64 -1, !dbg !3680
  %371 = lshr i64 %47, 63, !dbg !3680
  %372 = trunc i64 %371 to i32, !dbg !3680
  call void @llvm.dbg.value(metadata i32 %372, metadata !3529, metadata !DIExpression()), !dbg !3580
  br label %373, !dbg !3683

373:                                              ; preds = %72, %108, %346, %149, %195, %246, %335, %329, %313, %272, %303, %308, %367, %69
  %374 = phi i64 [ %370, %367 ], [ %47, %69 ], [ %311, %308 ], [ %306, %303 ], [ %300, %272 ], [ %326, %313 ], [ %333, %329 ], [ %343, %335 ], [ %269, %246 ], [ %243, %195 ], [ %192, %149 ], [ %364, %346 ], [ %146, %108 ], [ %105, %72 ], !dbg !3530
  %375 = phi i32 [ %372, %367 ], [ 0, %69 ], [ %312, %308 ], [ %307, %303 ], [ %302, %272 ], [ %328, %313 ], [ %334, %329 ], [ %345, %335 ], [ %271, %246 ], [ %245, %195 ], [ %194, %149 ], [ %366, %346 ], [ %148, %108 ], [ %107, %72 ], !dbg !3684
  call void @llvm.dbg.value(metadata i32 %375, metadata !3529, metadata !DIExpression()), !dbg !3580
  %376 = or i32 %375, %46, !dbg !3618
  call void @llvm.dbg.value(metadata i32 %376, metadata !3524, metadata !DIExpression()), !dbg !3530
  %377 = getelementptr inbounds i8, i8* %27, i64 %71, !dbg !3685
  store i8* %377, i8** %21, align 8, !dbg !3685, !tbaa !463
  %378 = load i8, i8* %377, align 1, !dbg !3686, !tbaa !567
  %379 = icmp eq i8 %378, 0, !dbg !3686
  %380 = or i32 %376, 2
  %381 = select i1 %379, i32 %376, i32 %380, !dbg !3688
  call void @llvm.dbg.value(metadata i32 %46, metadata !3524, metadata !DIExpression()), !dbg !3530
  br label %384

382:                                              ; preds = %69
  call void @llvm.dbg.value(metadata i64 %26, metadata !3523, metadata !DIExpression()), !dbg !3530
  store i64 %47, i64* %3, align 8, !dbg !3689, !tbaa !821
  %383 = or i32 %46, 2, !dbg !3690
  call void @llvm.dbg.value(metadata i32 %46, metadata !3524, metadata !DIExpression()), !dbg !3530
  br label %387

384:                                              ; preds = %373, %45
  %385 = phi i64 [ %47, %45 ], [ %374, %373 ], !dbg !3691
  %386 = phi i32 [ %46, %45 ], [ %381, %373 ], !dbg !3692
  call void @llvm.dbg.value(metadata i32 %386, metadata !3524, metadata !DIExpression()), !dbg !3530
  call void @llvm.dbg.value(metadata i64 %385, metadata !3523, metadata !DIExpression()), !dbg !3530
  store i64 %385, i64* %3, align 8, !dbg !3693, !tbaa !821
  br label %387, !dbg !3694

387:                                              ; preds = %44, %54, %384, %34, %31, %29, %38, %382, %23
  %388 = phi i32 [ 4, %23 ], [ %386, %384 ], [ %383, %382 ], [ %55, %54 ], [ %42, %44 ], [ 4, %34 ], [ 4, %31 ], [ 4, %29 ], [ 4, %38 ], !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #32, !dbg !3695
  ret i32 %388, !dbg !3695
}

; Function Attrs: nounwind
declare !dbg !3696 i64 @strtoumax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3701 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3739, metadata !DIExpression()), !dbg !3744
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #32, !dbg !3745
  call void @llvm.dbg.value(metadata i1 undef, metadata !3740, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3746, metadata !DIExpression()), !dbg !3749
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3751
  %4 = load i32, i32* %3, align 8, !dbg !3751, !tbaa !3752
  %5 = and i32 %4, 32, !dbg !3753
  %6 = icmp eq i32 %5, 0, !dbg !3753
  call void @llvm.dbg.value(metadata i1 %6, metadata !3742, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #32, !dbg !3754
  %8 = icmp eq i32 %7, 0, !dbg !3755
  call void @llvm.dbg.value(metadata i1 %8, metadata !3743, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  br i1 %6, label %9, label %19, !dbg !3756

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3758
  call void @llvm.dbg.value(metadata i1 %10, metadata !3740, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3744
  %11 = select i1 %8, i1 true, i1 %10, !dbg !3759
  %12 = xor i1 %8, true, !dbg !3759
  %13 = sext i1 %12 to i32, !dbg !3759
  br i1 %11, label %22, label %14, !dbg !3759

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #35, !dbg !3760
  %16 = load i32, i32* %15, align 4, !dbg !3760, !tbaa !558
  %17 = icmp ne i32 %16, 9, !dbg !3761
  %18 = sext i1 %17 to i32, !dbg !3762
  br label %22, !dbg !3762

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !3763

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #35, !dbg !3765
  store i32 0, i32* %21, align 4, !dbg !3767, !tbaa !558
  br label %22, !dbg !3765

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3744
  ret i32 %23, !dbg !3768
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #12 !dbg !3769 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3807, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3808, metadata !DIExpression()), !dbg !3811
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3812
  call void @llvm.dbg.value(metadata i32 %2, metadata !3809, metadata !DIExpression()), !dbg !3811
  %3 = icmp slt i32 %2, 0, !dbg !3813
  br i1 %3, label %4, label %6, !dbg !3815

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3816
  br label %24, !dbg !3817

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3818
  %8 = icmp eq i32 %7, 0, !dbg !3818
  br i1 %8, label %13, label %9, !dbg !3820

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3821
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #32, !dbg !3822
  %12 = icmp eq i64 %11, -1, !dbg !3823
  br i1 %12, label %16, label %13, !dbg !3824

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3825
  %15 = icmp eq i32 %14, 0, !dbg !3825
  br i1 %15, label %16, label %18, !dbg !3826

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3827
  call void @llvm.dbg.value(metadata i32 %21, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %24, !dbg !3828

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #35, !dbg !3829
  %20 = load i32, i32* %19, align 4, !dbg !3829, !tbaa !558
  call void @llvm.dbg.value(metadata i32 %20, metadata !3808, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 0, metadata !3810, metadata !DIExpression()), !dbg !3811
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !3827
  call void @llvm.dbg.value(metadata i32 %21, metadata !3810, metadata !DIExpression()), !dbg !3811
  %22 = icmp eq i32 %20, 0, !dbg !3830
  br i1 %22, label %24, label %23, !dbg !3828

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3832, !tbaa !558
  call void @llvm.dbg.value(metadata i32 -1, metadata !3810, metadata !DIExpression()), !dbg !3811
  br label %24, !dbg !3834

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3811
  ret i32 %25, !dbg !3835
}

; Function Attrs: nofree nounwind
declare !dbg !3836 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !3837 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !3838 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #12 !dbg !3842 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3880, metadata !DIExpression()), !dbg !3881
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3882
  br i1 %2, label %6, label %3, !dbg !3884

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3885
  %5 = icmp eq i32 %4, 0, !dbg !3885
  br i1 %5, label %6, label %8, !dbg !3886

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !3887
  br label %17, !dbg !3888

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3889, metadata !DIExpression()) #32, !dbg !3894
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3896
  %10 = load i32, i32* %9, align 8, !dbg !3896, !tbaa !3752
  %11 = and i32 %10, 256, !dbg !3898
  %12 = icmp eq i32 %11, 0, !dbg !3898
  br i1 %12, label %15, label %13, !dbg !3899

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #32, !dbg !3900
  br label %15, !dbg !3900

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !3901
  br label %17, !dbg !3902

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3881
  ret i32 %18, !dbg !3903
}

; Function Attrs: nofree nounwind
declare !dbg !3904 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #12 !dbg !3905 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3944, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i64 %1, metadata !3945, metadata !DIExpression()), !dbg !3950
  call void @llvm.dbg.value(metadata i32 %2, metadata !3946, metadata !DIExpression()), !dbg !3950
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3951
  %5 = load i8*, i8** %4, align 8, !dbg !3951, !tbaa !3952
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3953
  %7 = load i8*, i8** %6, align 8, !dbg !3953, !tbaa !3954
  %8 = icmp eq i8* %5, %7, !dbg !3955
  br i1 %8, label %9, label %28, !dbg !3956

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3957
  %11 = load i8*, i8** %10, align 8, !dbg !3957, !tbaa !1072
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3958
  %13 = load i8*, i8** %12, align 8, !dbg !3958, !tbaa !3959
  %14 = icmp eq i8* %11, %13, !dbg !3960
  br i1 %14, label %15, label %28, !dbg !3961

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3962
  %17 = load i8*, i8** %16, align 8, !dbg !3962, !tbaa !3963
  %18 = icmp eq i8* %17, null, !dbg !3964
  br i1 %18, label %19, label %28, !dbg !3965

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #32, !dbg !3966
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #32, !dbg !3967
  call void @llvm.dbg.value(metadata i64 %21, metadata !3947, metadata !DIExpression()), !dbg !3968
  %22 = icmp eq i64 %21, -1, !dbg !3969
  br i1 %22, label %30, label %23, !dbg !3971

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3972
  %25 = load i32, i32* %24, align 8, !dbg !3973, !tbaa !3752
  %26 = and i32 %25, -17, !dbg !3973
  store i32 %26, i32* %24, align 8, !dbg !3973, !tbaa !3752
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3974
  store i64 %21, i64* %27, align 8, !dbg !3975, !tbaa !3976
  br label %30, !dbg !3977

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !3978
  br label %30, !dbg !3979

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3950
  ret i32 %31, !dbg !3980
}

; Function Attrs: nofree nounwind
declare !dbg !3981 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #12 !dbg !3984 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !3989, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %1, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i64 %2, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3992, metadata !DIExpression()), !dbg !3994
  %5 = icmp eq i8* %1, null, !dbg !3995
  %6 = select i1 %5, i32* null, i32* %0, !dbg !3997
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.157, i64 0, i64 0), i8* %1, !dbg !3997
  %8 = select i1 %5, i64 1, i64 %2, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %8, metadata !3991, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i8* %7, metadata !3990, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.value(metadata i32* %6, metadata !3989, metadata !DIExpression()), !dbg !3994
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !3998
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4000
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !3992, metadata !DIExpression()), !dbg !3994
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #32, !dbg !4001
  call void @llvm.dbg.value(metadata i64 %11, metadata !3993, metadata !DIExpression()), !dbg !3994
  %12 = icmp ult i64 %11, -3, !dbg !4002
  br i1 %12, label %13, label %18, !dbg !4004

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #33, !dbg !4005
  %15 = icmp eq i32 %14, 0, !dbg !4005
  br i1 %15, label %16, label %30, !dbg !4006

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4007, metadata !DIExpression()) #32, !dbg !4012
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4014, metadata !DIExpression()) #32, !dbg !4019
  call void @llvm.dbg.value(metadata i32 0, metadata !4017, metadata !DIExpression()) #32, !dbg !4019
  call void @llvm.dbg.value(metadata i64 8, metadata !4018, metadata !DIExpression()) #32, !dbg !4019
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4021
  store i64 0, i64* %17, align 1, !dbg !4021
  br label %30, !dbg !4022

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4023
  br i1 %19, label %20, label %21, !dbg !4025

20:                                               ; preds = %18
  tail call void @abort() #34, !dbg !4026
  unreachable, !dbg !4026

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4027

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #32, !dbg !4029
  br i1 %24, label %30, label %25, !dbg !4030

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4031
  br i1 %26, label %30, label %27, !dbg !4034

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4035, !tbaa !567
  %29 = zext i8 %28 to i32, !dbg !4036
  store i32 %29, i32* %6, align 4, !dbg !4037, !tbaa !558
  br label %30, !dbg !4038

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !3994
  ret i64 %31, !dbg !4039
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4040 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #30

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4046 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4048, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %1, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i64 %2, metadata !4050, metadata !DIExpression()), !dbg !4052
  %4 = icmp eq i64 %2, 0, !dbg !4053
  br i1 %4, label %8, label %5, !dbg !4053

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4053
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4053
  br i1 %7, label %13, label %8, !dbg !4053

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  %9 = mul i64 %2, %1, !dbg !4053
  call void @llvm.dbg.value(metadata i64 %9, metadata !4051, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.value(metadata i8* %0, metadata !4055, metadata !DIExpression()) #32, !dbg !4059
  call void @llvm.dbg.value(metadata i64 %9, metadata !4058, metadata !DIExpression()) #32, !dbg !4059
  %10 = icmp eq i64 %9, 0, !dbg !4061
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4061
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #32, !dbg !4062
  br label %15, !dbg !4063

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4051, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4052
  %14 = tail call i32* @__errno_location() #35, !dbg !4064
  store i32 12, i32* %14, align 4, !dbg !4066, !tbaa !558
  br label %15, !dbg !4067

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4052
  ret i8* %16, !dbg !4068
}

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #12 !dbg !4069 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4073, metadata !DIExpression()), !dbg !4078
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4079
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #32, !dbg !4079
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4074, metadata !DIExpression()), !dbg !4080
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #32, !dbg !4081
  %5 = icmp eq i32 %4, 0, !dbg !4081
  br i1 %5, label %6, label %13, !dbg !4083

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4084, metadata !DIExpression()) #32, !dbg !4088
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0), metadata !4087, metadata !DIExpression()) #32, !dbg !4088
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.162, i64 0, i64 0), i64 2), !dbg !4091
  %8 = icmp eq i32 %7, 0, !dbg !4092
  br i1 %8, label %12, label %9, !dbg !4093

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4084, metadata !DIExpression()) #32, !dbg !4094
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), metadata !4087, metadata !DIExpression()) #32, !dbg !4094
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.163, i64 0, i64 0), i64 6), !dbg !4096
  %11 = icmp eq i32 %10, 0, !dbg !4097
  br i1 %11, label %12, label %13, !dbg !4098

12:                                               ; preds = %9, %6
  br label %13, !dbg !4099

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4078
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #32, !dbg !4100
  ret i1 %14, !dbg !4100
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4101 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4105, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i8* %1, metadata !4106, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.value(metadata i64 %2, metadata !4107, metadata !DIExpression()), !dbg !4108
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #32, !dbg !4109
  ret i32 %4, !dbg !4110
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #12 !dbg !4111 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4115, metadata !DIExpression()), !dbg !4116
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #32, !dbg !4117
  ret i8* %2, !dbg !4118
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #12 !dbg !4119 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4121, metadata !DIExpression()), !dbg !4123
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !4124
  call void @llvm.dbg.value(metadata i8* %2, metadata !4122, metadata !DIExpression()), !dbg !4123
  ret i8* %2, !dbg !4125
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #12 !dbg !4126 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4128, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i8* %1, metadata !4129, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i64 %2, metadata !4130, metadata !DIExpression()), !dbg !4135
  call void @llvm.dbg.value(metadata i32 %0, metadata !4121, metadata !DIExpression()) #32, !dbg !4136
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #32, !dbg !4138
  call void @llvm.dbg.value(metadata i8* %4, metadata !4122, metadata !DIExpression()) #32, !dbg !4136
  call void @llvm.dbg.value(metadata i8* %4, metadata !4131, metadata !DIExpression()), !dbg !4135
  %5 = icmp eq i8* %4, null, !dbg !4139
  br i1 %5, label %6, label %9, !dbg !4140

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4141
  br i1 %7, label %19, label %8, !dbg !4144

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4145, !tbaa !567
  br label %19, !dbg !4146

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #33, !dbg !4147
  call void @llvm.dbg.value(metadata i64 %10, metadata !4132, metadata !DIExpression()), !dbg !4148
  %11 = icmp ult i64 %10, %2, !dbg !4149
  br i1 %11, label %12, label %14, !dbg !4151

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4152
  call void @llvm.dbg.value(metadata i8* %1, metadata !4154, metadata !DIExpression()) #32, !dbg !4159
  call void @llvm.dbg.value(metadata i8* %4, metadata !4157, metadata !DIExpression()) #32, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %13, metadata !4158, metadata !DIExpression()) #32, !dbg !4159
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #32, !dbg !4161
  br label %19, !dbg !4162

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4163
  br i1 %15, label %19, label %16, !dbg !4166

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %1, metadata !4154, metadata !DIExpression()) #32, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %4, metadata !4157, metadata !DIExpression()) #32, !dbg !4169
  call void @llvm.dbg.value(metadata i64 %17, metadata !4158, metadata !DIExpression()) #32, !dbg !4169
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #32, !dbg !4171
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4172
  store i8 0, i8* %18, align 1, !dbg !4173, !tbaa !567
  br label %19, !dbg !4174

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4175
  ret i32 %20, !dbg !4176
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

!llvm.dbg.cu = !{!2, !358, !160, !165, !172, !338, !360, !362, !364, !213, !223, !255, !373, !330, !380, !414, !416, !423, !425, !427, !429, !344, !431, !434, !436, !438}
!llvm.ident = !{!440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440, !440}
!llvm.module.flags = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 37, type: !146, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !43, globals: !59, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "71829bff1470ae8ec88dbb00f89cc303")
!4 = !{!5, !14, !28}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !6, line: 30, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/xstrtol.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c0c36b5479e234e245bae53a387a6d92")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "LONGINT_OK", value: 0)
!10 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1)
!11 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2)
!12 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3)
!13 = !DIEnumerator(name: "LONGINT_INVALID", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !15, line: 42, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!17 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!18 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!19 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!20 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!21 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!22 = !DIEnumerator(name: "c_quoting_style", value: 5)
!23 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!24 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!25 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!26 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!27 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 46, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!31 = !DIEnumerator(name: "_ISupper", value: 256)
!32 = !DIEnumerator(name: "_ISlower", value: 512)
!33 = !DIEnumerator(name: "_ISalpha", value: 1024)
!34 = !DIEnumerator(name: "_ISdigit", value: 2048)
!35 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!36 = !DIEnumerator(name: "_ISspace", value: 8192)
!37 = !DIEnumerator(name: "_ISprint", value: 16384)
!38 = !DIEnumerator(name: "_ISgraph", value: 32768)
!39 = !DIEnumerator(name: "_ISblank", value: 1)
!40 = !DIEnumerator(name: "_IScntrl", value: 2)
!41 = !DIEnumerator(name: "_ISpunct", value: 4)
!42 = !DIEnumerator(name: "_ISalnum", value: 8)
!43 = !{!44, !46, !7, !47, !52, !53, !54, !56, !58, !49}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !48, line: 59, baseType: !49)
!48 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !50, line: 145, baseType: !51)
!50 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!51 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 46, baseType: !51)
!55 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!58 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!59 = !{!60, !0}
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !62, file: !63, line: 575, type: !52, isLocal: true, isDefinition: true)
!62 = distinct !DISubprogram(name: "oputs_", scope: !63, file: !63, line: 573, type: !64, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !66)
!63 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!64 = !DISubroutineType(types: !65)
!65 = !{null, !56, !56}
!66 = !{!67, !68, !69, !72, !74, !75, !76, !80, !81, !82, !83, !85, !140, !141, !142, !144, !145}
!67 = !DILocalVariable(name: "program", arg: 1, scope: !62, file: !63, line: 573, type: !56)
!68 = !DILocalVariable(name: "option", arg: 2, scope: !62, file: !63, line: 573, type: !56)
!69 = !DILocalVariable(name: "term", scope: !70, file: !63, line: 585, type: !56)
!70 = distinct !DILexicalBlock(scope: !71, file: !63, line: 582, column: 5)
!71 = distinct !DILexicalBlock(scope: !62, file: !63, line: 581, column: 7)
!72 = !DILocalVariable(name: "double_space", scope: !62, file: !63, line: 594, type: !73)
!73 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!74 = !DILocalVariable(name: "first_word", scope: !62, file: !63, line: 595, type: !56)
!75 = !DILocalVariable(name: "option_text", scope: !62, file: !63, line: 596, type: !56)
!76 = !DILocalVariable(name: "s", scope: !77, file: !63, line: 608, type: !56)
!77 = distinct !DILexicalBlock(scope: !78, file: !63, line: 605, column: 5)
!78 = distinct !DILexicalBlock(scope: !79, file: !63, line: 604, column: 12)
!79 = distinct !DILexicalBlock(scope: !62, file: !63, line: 597, column: 7)
!80 = !DILocalVariable(name: "spaces", scope: !77, file: !63, line: 609, type: !54)
!81 = !DILocalVariable(name: "anchor_len", scope: !62, file: !63, line: 620, type: !54)
!82 = !DILocalVariable(name: "desc_text", scope: !62, file: !63, line: 625, type: !56)
!83 = !DILocalVariable(name: "__ptr", scope: !84, file: !63, line: 644, type: !56)
!84 = distinct !DILexicalBlock(scope: !62, file: !63, line: 644, column: 3)
!85 = !DILocalVariable(name: "__stream", scope: !84, file: !63, line: 644, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !89)
!88 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !91)
!90 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !107, !109, !110, !111, !114, !115, !117, !121, !124, !126, !129, !132, !133, !134, !135, !136}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !89, file: !90, line: 51, baseType: !52, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !89, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !89, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !89, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !89, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !89, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !89, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !89, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !89, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !89, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !89, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !89, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !89, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !90, line: 36, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !89, file: !90, line: 70, baseType: !108, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !89, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !89, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !89, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !50, line: 152, baseType: !113)
!113 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !89, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !89, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!116 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !89, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 1)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !89, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !90, line: 43, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !89, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !50, line: 153, baseType: !113)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !89, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !90, line: 37, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !89, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !90, line: 38, flags: DIFlagFwdDecl)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !89, file: !90, line: 93, baseType: !108, size: 64, offset: 1344)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !89, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !89, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !89, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !89, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 20)
!140 = !DILocalVariable(name: "__cnt", scope: !84, file: !63, line: 644, type: !54)
!141 = !DILocalVariable(name: "url_program", scope: !62, file: !63, line: 648, type: !56)
!142 = !DILocalVariable(name: "__ptr", scope: !143, file: !63, line: 686, type: !56)
!143 = distinct !DILexicalBlock(scope: !62, file: !63, line: 686, column: 3)
!144 = !DILocalVariable(name: "__stream", scope: !143, file: !63, line: 686, type: !86)
!145 = !DILocalVariable(name: "__cnt", scope: !143, file: !63, line: 686, type: !54)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 1280, elements: !156)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !149, line: 50, size: 256, elements: !150)
!149 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!150 = !{!151, !152, !153, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !149, line: 52, baseType: !56, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !148, file: !149, line: 55, baseType: !52, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !148, file: !149, line: 56, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !148, file: !149, line: 57, baseType: !52, size: 32, offset: 192)
!156 = !{!157}
!157 = !DISubrange(count: 5)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "Version", scope: !160, file: !161, line: 3, type: !56, isLocal: false, isDefinition: true)
!160 = distinct !DICompileUnit(language: DW_LANG_C99, file: !161, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !162, splitDebugInlining: false, nameTableKind: None)
!161 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!162 = !{!158}
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "file_name", scope: !165, file: !166, line: 45, type: !56, isLocal: true, isDefinition: true)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !167, splitDebugInlining: false, nameTableKind: None)
!166 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!167 = !{!163, !168}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !165, file: !166, line: 55, type: !73, isLocal: true, isDefinition: true)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !172, file: !173, line: 66, type: !208, isLocal: false, isDefinition: true)
!172 = distinct !DICompileUnit(language: DW_LANG_C99, file: !173, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !174, globals: !175, splitDebugInlining: false, nameTableKind: None)
!173 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!174 = !{!46, !58}
!175 = !{!176, !202, !170, !204, !206}
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "old_file_name", scope: !178, file: !173, line: 304, type: !56, isLocal: true, isDefinition: true)
!178 = distinct !DISubprogram(name: "verror_at_line", scope: !173, file: !173, line: 298, type: !179, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !195)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !52, !52, !56, !7, !56, !181}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !182, line: 52, baseType: !183)
!182 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !184, line: 32, baseType: !185)
!184 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !186, baseType: !187)
!186 = !DIFile(filename: "lib/error.c", directory: "/src")
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !188, size: 256, elements: !189)
!188 = !DINamespace(name: "std", scope: null)
!189 = !{!190, !191, !192, !193, !194}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !187, file: !186, baseType: !46, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !187, file: !186, baseType: !46, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !187, file: !186, baseType: !46, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !187, file: !186, baseType: !52, size: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !187, file: !186, baseType: !52, size: 32, offset: 224)
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DILocalVariable(name: "status", arg: 1, scope: !178, file: !173, line: 298, type: !52)
!197 = !DILocalVariable(name: "errnum", arg: 2, scope: !178, file: !173, line: 298, type: !52)
!198 = !DILocalVariable(name: "file_name", arg: 3, scope: !178, file: !173, line: 298, type: !56)
!199 = !DILocalVariable(name: "line_number", arg: 4, scope: !178, file: !173, line: 298, type: !7)
!200 = !DILocalVariable(name: "message", arg: 5, scope: !178, file: !173, line: 298, type: !56)
!201 = !DILocalVariable(name: "args", arg: 6, scope: !178, file: !173, line: 298, type: !181)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "old_line_number", scope: !178, file: !173, line: 305, type: !7, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "error_message_count", scope: !172, file: !173, line: 69, type: !7, isLocal: false, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !172, file: !173, line: 295, type: !52, isLocal: false, isDefinition: true)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null}
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "program_name", scope: !213, file: !214, line: 31, type: !56, isLocal: false, isDefinition: true)
!213 = distinct !DICompileUnit(language: DW_LANG_C99, file: !214, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !215, globals: !216, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!215 = !{!44}
!216 = !{!211}
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "utf07FF", scope: !219, file: !220, line: 46, type: !250, isLocal: true, isDefinition: true)
!219 = distinct !DISubprogram(name: "proper_name_lite", scope: !220, file: !220, line: 38, type: !221, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !225)
!220 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!221 = !DISubroutineType(types: !222)
!222 = !{!56, !56, !56}
!223 = distinct !DICompileUnit(language: DW_LANG_C99, file: !220, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !224, splitDebugInlining: false, nameTableKind: None)
!224 = !{!217}
!225 = !{!226, !227, !228, !229, !234}
!226 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !219, file: !220, line: 38, type: !56)
!227 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !219, file: !220, line: 38, type: !56)
!228 = !DILocalVariable(name: "translation", scope: !219, file: !220, line: 40, type: !56)
!229 = !DILocalVariable(name: "w", scope: !219, file: !220, line: 47, type: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !231, line: 37, baseType: !232)
!231 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !50, line: 57, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !50, line: 42, baseType: !7)
!234 = !DILocalVariable(name: "mbs", scope: !219, file: !220, line: 48, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !237)
!236 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !239)
!238 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !239, file: !238, line: 15, baseType: !52, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !239, file: !238, line: 20, baseType: !243, size: 32, offset: 32)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !239, file: !238, line: 16, size: 32, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !243, file: !238, line: 18, baseType: !7, size: 32)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !243, file: !238, line: 19, baseType: !247, size: 32)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 32, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 4)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 16, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 2)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !255, file: !256, line: 76, type: !324, isLocal: false, isDefinition: true)
!255 = distinct !DICompileUnit(language: DW_LANG_C99, file: !256, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !257, retainedTypes: !263, globals: !264, splitDebugInlining: false, nameTableKind: None)
!256 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!257 = !{!14, !258, !28}
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 254, baseType: !7, size: 32, elements: !259)
!259 = !{!260, !261, !262}
!260 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!261 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!262 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!263 = !{!52, !53, !54}
!264 = !{!253, !265, !271, !283, !285, !290, !313, !320, !322}
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !255, file: !256, line: 92, type: !267, isLocal: false, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 320, elements: !269)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!269 = !{!270}
!270 = !DISubrange(count: 10)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !255, file: !256, line: 1040, type: !273, isLocal: false, isDefinition: true)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !256, line: 56, size: 448, elements: !274)
!274 = !{!275, !276, !277, !281, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !273, file: !256, line: 59, baseType: !14, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !256, line: 62, baseType: !52, size: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !273, file: !256, line: 66, baseType: !278, size: 256, offset: 64)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 8)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !273, file: !256, line: 69, baseType: !56, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !273, file: !256, line: 72, baseType: !56, size: 64, offset: 384)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !255, file: !256, line: 107, type: !273, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "slot0", scope: !255, file: !256, line: 831, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 256)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "quote", scope: !292, file: !256, line: 228, type: !311, isLocal: true, isDefinition: true)
!292 = distinct !DISubprogram(name: "gettext_quote", scope: !256, file: !256, line: 197, type: !293, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!56, !56, !14}
!295 = !{!296, !297, !298, !299, !300}
!296 = !DILocalVariable(name: "msgid", arg: 1, scope: !292, file: !256, line: 197, type: !56)
!297 = !DILocalVariable(name: "s", arg: 2, scope: !292, file: !256, line: 197, type: !14)
!298 = !DILocalVariable(name: "translation", scope: !292, file: !256, line: 199, type: !56)
!299 = !DILocalVariable(name: "w", scope: !292, file: !256, line: 229, type: !230)
!300 = !DILocalVariable(name: "mbs", scope: !292, file: !256, line: 230, type: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !303, file: !238, line: 15, baseType: !52, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !303, file: !238, line: 20, baseType: !307, size: 32, offset: 32)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !303, file: !238, line: 16, size: 32, elements: !308)
!308 = !{!309, !310}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !307, file: !238, line: 18, baseType: !7, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !307, file: !238, line: 19, baseType: !247, size: 32)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 64, elements: !312)
!312 = !{!252, !249}
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(name: "slotvec", scope: !255, file: !256, line: 834, type: !315, isLocal: true, isDefinition: true)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !256, line: 823, size: 128, elements: !317)
!317 = !{!318, !319}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !316, file: !256, line: 825, baseType: !54, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !316, file: !256, line: 826, baseType: !44, size: 64, offset: 64)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(name: "nslots", scope: !255, file: !256, line: 832, type: !52, isLocal: true, isDefinition: true)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "slotvec0", scope: !255, file: !256, line: 833, type: !316, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 704, elements: !326)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!326 = !{!327}
!327 = !DISubrange(count: 11)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !330, file: !331, line: 26, type: !333, isLocal: false, isDefinition: true)
!330 = distinct !DICompileUnit(language: DW_LANG_C99, file: !331, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !332, splitDebugInlining: false, nameTableKind: None)
!331 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!332 = !{!328}
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 376, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 47)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(name: "exit_failure", scope: !338, file: !339, line: 24, type: !341, isLocal: false, isDefinition: true)
!338 = distinct !DICompileUnit(language: DW_LANG_C99, file: !339, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !340, splitDebugInlining: false, nameTableKind: None)
!339 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!340 = !{!336}
!341 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !52)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(name: "internal_state", scope: !344, file: !345, line: 97, type: !348, isLocal: true, isDefinition: true)
!344 = distinct !DICompileUnit(language: DW_LANG_C99, file: !345, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !346, globals: !347, splitDebugInlining: false, nameTableKind: None)
!345 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!346 = !{!46, !54, !58}
!347 = !{!342}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !236, line: 6, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !238, line: 21, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 13, size: 64, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !350, file: !238, line: 15, baseType: !52, size: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !350, file: !238, line: 20, baseType: !354, size: 32, offset: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !350, file: !238, line: 16, size: 32, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !354, file: !238, line: 18, baseType: !7, size: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !354, file: !238, line: 19, baseType: !247, size: 32)
!358 = distinct !DICompileUnit(language: DW_LANG_C99, file: !359, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!359 = !DIFile(filename: "src/selinux.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f2fe0a2ae80ab081d56e5c6fc8b81c38")
!360 = distinct !DICompileUnit(language: DW_LANG_C99, file: !361, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!361 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/mknod.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a1171358cd5346ce916515df55db10ad")
!364 = distinct !DICompileUnit(language: DW_LANG_C99, file: !365, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !366, splitDebugInlining: false, nameTableKind: None)
!365 = !DIFile(filename: "lib/modechange.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d9d9323c1a974dc920f948d08984b73e")
!366 = !{!367}
!367 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !365, line: 78, baseType: !7, size: 32, elements: !368)
!368 = !{!369, !370, !371, !372}
!369 = !DIEnumerator(name: "MODE_DONE", value: 0)
!370 = !DIEnumerator(name: "MODE_ORDINARY_CHANGE", value: 1)
!371 = !DIEnumerator(name: "MODE_X_IF_ANY_X", value: 2)
!372 = !DIEnumerator(name: "MODE_COPY_EXISTING", value: 3)
!373 = distinct !DICompileUnit(language: DW_LANG_C99, file: !374, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !375, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!374 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!375 = !{!376}
!376 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !374, line: 40, baseType: !7, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!379 = !{!46}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !382, retainedTypes: !413, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!382 = !{!383, !395}
!383 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !384, file: !381, line: 188, baseType: !7, size: 32, elements: !393)
!384 = distinct !DISubprogram(name: "x2nrealloc", scope: !381, file: !381, line: 176, type: !385, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !388)
!385 = !DISubroutineType(types: !386)
!386 = !{!46, !46, !387, !54}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!388 = !{!389, !390, !391, !392}
!389 = !DILocalVariable(name: "p", arg: 1, scope: !384, file: !381, line: 176, type: !46)
!390 = !DILocalVariable(name: "pn", arg: 2, scope: !384, file: !381, line: 176, type: !387)
!391 = !DILocalVariable(name: "s", arg: 3, scope: !384, file: !381, line: 176, type: !54)
!392 = !DILocalVariable(name: "n", scope: !384, file: !381, line: 178, type: !54)
!393 = !{!394}
!394 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!395 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !396, file: !381, line: 228, baseType: !7, size: 32, elements: !393)
!396 = distinct !DISubprogram(name: "xpalloc", scope: !381, file: !381, line: 223, type: !397, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !403)
!397 = !DISubroutineType(types: !398)
!398 = !{!46, !46, !399, !400, !402, !400}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !401, line: 130, baseType: !402)
!401 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !55, line: 35, baseType: !113)
!403 = !{!404, !405, !406, !407, !408, !409, !410, !411, !412}
!404 = !DILocalVariable(name: "pa", arg: 1, scope: !396, file: !381, line: 223, type: !46)
!405 = !DILocalVariable(name: "pn", arg: 2, scope: !396, file: !381, line: 223, type: !399)
!406 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !396, file: !381, line: 223, type: !400)
!407 = !DILocalVariable(name: "n_max", arg: 4, scope: !396, file: !381, line: 223, type: !402)
!408 = !DILocalVariable(name: "s", arg: 5, scope: !396, file: !381, line: 223, type: !400)
!409 = !DILocalVariable(name: "n0", scope: !396, file: !381, line: 230, type: !400)
!410 = !DILocalVariable(name: "n", scope: !396, file: !381, line: 237, type: !400)
!411 = !DILocalVariable(name: "nbytes", scope: !396, file: !381, line: 248, type: !400)
!412 = !DILocalVariable(name: "adjusted_nbytes", scope: !396, file: !381, line: 252, type: !400)
!413 = !{!44, !46, !73, !113, !51}
!414 = distinct !DICompileUnit(language: DW_LANG_C99, file: !415, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!415 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!416 = distinct !DICompileUnit(language: DW_LANG_C99, file: !417, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !418, retainedTypes: !419, splitDebugInlining: false, nameTableKind: None)
!417 = !DIFile(filename: "lib/xstrtoumax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "54ffbccd458a53dd64c9445b3f0c9b17")
!418 = !{!5, !28}
!419 = !{!52, !53, !44, !73, !51, !420}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !421, line: 102, baseType: !422)
!421 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !50, line: 73, baseType: !51)
!423 = distinct !DICompileUnit(language: DW_LANG_C99, file: !424, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!424 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!425 = distinct !DICompileUnit(language: DW_LANG_C99, file: !426, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!426 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!427 = distinct !DICompileUnit(language: DW_LANG_C99, file: !428, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!428 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!429 = distinct !DICompileUnit(language: DW_LANG_C99, file: !430, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!430 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !433, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!433 = !{!73, !51, !46}
!434 = distinct !DICompileUnit(language: DW_LANG_C99, file: !435, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!435 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!436 = distinct !DICompileUnit(language: DW_LANG_C99, file: !437, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!437 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!438 = distinct !DICompileUnit(language: DW_LANG_C99, file: !439, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !379, splitDebugInlining: false, nameTableKind: None)
!439 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!440 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!441 = !{i32 7, !"Dwarf Version", i32 5}
!442 = !{i32 2, !"Debug Info Version", i32 3}
!443 = !{i32 1, !"wchar_size", i32 4}
!444 = !{i32 1, !"branch-target-enforcement", i32 0}
!445 = !{i32 1, !"sign-return-address", i32 0}
!446 = !{i32 1, !"sign-return-address-all", i32 0}
!447 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!448 = !{i32 7, !"PIC Level", i32 2}
!449 = !{i32 7, !"PIE Level", i32 2}
!450 = !{i32 7, !"uwtable", i32 1}
!451 = !{i32 7, !"frame-pointer", i32 1}
!452 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 47, type: !453, scopeLine: 48, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !52}
!455 = !{!456}
!456 = !DILocalVariable(name: "status", arg: 1, scope: !452, file: !3, line: 47, type: !52)
!457 = !DILocation(line: 0, scope: !452)
!458 = !DILocation(line: 49, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !3, line: 49, column: 7)
!460 = !DILocation(line: 49, column: 7, scope: !452)
!461 = !DILocation(line: 50, column: 5, scope: !462)
!462 = distinct !DILexicalBlock(scope: !459, file: !3, line: 50, column: 5)
!463 = !{!464, !464, i64 0}
!464 = !{!"any pointer", !465, i64 0}
!465 = !{!"omnipotent char", !466, i64 0}
!466 = !{!"Simple C/C++ TBAA"}
!467 = !DILocation(line: 53, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !459, file: !3, line: 52, column: 5)
!469 = !DILocation(line: 55, column: 7, scope: !468)
!470 = !DILocation(line: 736, column: 3, scope: !471, inlinedAt: !473)
!471 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !63, file: !63, line: 734, type: !209, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !472)
!472 = !{}
!473 = distinct !DILocation(line: 59, column: 7, scope: !468)
!474 = !DILocation(line: 61, column: 7, scope: !468)
!475 = !DILocation(line: 65, column: 7, scope: !468)
!476 = !DILocation(line: 69, column: 7, scope: !468)
!477 = !DILocation(line: 74, column: 7, scope: !468)
!478 = !DILocation(line: 75, column: 7, scope: !468)
!479 = !DILocation(line: 76, column: 7, scope: !468)
!480 = !DILocation(line: 83, column: 7, scope: !468)
!481 = !DILocation(line: 89, column: 7, scope: !468)
!482 = !DILocalVariable(name: "program", arg: 1, scope: !483, file: !63, line: 836, type: !56)
!483 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !63, file: !63, line: 836, type: !484, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !56}
!486 = !{!482, !487, !496, !497, !499, !500}
!487 = !DILocalVariable(name: "infomap", scope: !483, file: !63, line: 838, type: !488)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 896, elements: !494)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !483, file: !63, line: 838, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !490, file: !63, line: 838, baseType: !56, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !63, line: 838, baseType: !56, size: 64, offset: 64)
!494 = !{!495}
!495 = !DISubrange(count: 7)
!496 = !DILocalVariable(name: "node", scope: !483, file: !63, line: 848, type: !56)
!497 = !DILocalVariable(name: "map_prog", scope: !483, file: !63, line: 849, type: !498)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!499 = !DILocalVariable(name: "lc_messages", scope: !483, file: !63, line: 861, type: !56)
!500 = !DILocalVariable(name: "url_program", scope: !483, file: !63, line: 874, type: !56)
!501 = !DILocation(line: 0, scope: !483, inlinedAt: !502)
!502 = distinct !DILocation(line: 90, column: 7, scope: !468)
!503 = !DILocation(line: 838, column: 3, scope: !483, inlinedAt: !502)
!504 = !DILocation(line: 838, column: 67, scope: !483, inlinedAt: !502)
!505 = !DILocation(line: 849, column: 36, scope: !483, inlinedAt: !502)
!506 = !DILocation(line: 851, column: 3, scope: !483, inlinedAt: !502)
!507 = !DILocalVariable(name: "__s1", arg: 1, scope: !508, file: !509, line: 1359, type: !56)
!508 = distinct !DISubprogram(name: "streq", scope: !509, file: !509, line: 1359, type: !510, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!509 = !DIFile(filename: "./lib/string.h", directory: "/src")
!510 = !DISubroutineType(types: !511)
!511 = !{!73, !56, !56}
!512 = !{!507, !513}
!513 = !DILocalVariable(name: "__s2", arg: 2, scope: !508, file: !509, line: 1359, type: !56)
!514 = !DILocation(line: 0, scope: !508, inlinedAt: !515)
!515 = distinct !DILocation(line: 851, column: 33, scope: !483, inlinedAt: !502)
!516 = !DILocation(line: 1361, column: 11, scope: !508, inlinedAt: !515)
!517 = !DILocation(line: 1361, column: 10, scope: !508, inlinedAt: !515)
!518 = !DILocation(line: 852, column: 13, scope: !483, inlinedAt: !502)
!519 = !DILocation(line: 851, column: 20, scope: !483, inlinedAt: !502)
!520 = !{!521, !464, i64 0}
!521 = !{!"infomap", !464, i64 0, !464, i64 8}
!522 = !DILocation(line: 851, column: 10, scope: !483, inlinedAt: !502)
!523 = !DILocation(line: 851, column: 28, scope: !483, inlinedAt: !502)
!524 = distinct !{!524, !506, !518, !525}
!525 = !{!"llvm.loop.mustprogress"}
!526 = !DILocation(line: 854, column: 17, scope: !527, inlinedAt: !502)
!527 = distinct !DILexicalBlock(scope: !483, file: !63, line: 854, column: 7)
!528 = !{!521, !464, i64 8}
!529 = !DILocation(line: 854, column: 7, scope: !527, inlinedAt: !502)
!530 = !DILocation(line: 854, column: 7, scope: !483, inlinedAt: !502)
!531 = !DILocation(line: 857, column: 3, scope: !483, inlinedAt: !502)
!532 = !DILocation(line: 861, column: 29, scope: !483, inlinedAt: !502)
!533 = !DILocation(line: 862, column: 7, scope: !534, inlinedAt: !502)
!534 = distinct !DILexicalBlock(scope: !483, file: !63, line: 862, column: 7)
!535 = !DILocation(line: 862, column: 19, scope: !534, inlinedAt: !502)
!536 = !DILocation(line: 862, column: 22, scope: !534, inlinedAt: !502)
!537 = !DILocation(line: 862, column: 7, scope: !483, inlinedAt: !502)
!538 = !DILocation(line: 868, column: 7, scope: !539, inlinedAt: !502)
!539 = distinct !DILexicalBlock(scope: !534, file: !63, line: 863, column: 5)
!540 = !DILocation(line: 870, column: 5, scope: !539, inlinedAt: !502)
!541 = !DILocation(line: 0, scope: !508, inlinedAt: !542)
!542 = distinct !DILocation(line: 874, column: 29, scope: !483, inlinedAt: !502)
!543 = !DILocation(line: 875, column: 3, scope: !483, inlinedAt: !502)
!544 = !DILocation(line: 877, column: 3, scope: !483, inlinedAt: !502)
!545 = !DILocation(line: 879, column: 1, scope: !483, inlinedAt: !502)
!546 = !DILocation(line: 92, column: 3, scope: !452)
!547 = !DISubprogram(name: "dcgettext", scope: !548, file: !548, line: 51, type: !549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!548 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!549 = !DISubroutineType(types: !550)
!550 = !{!44, !56, !56, !52}
!551 = !DISubprogram(name: "fputs_unlocked", scope: !182, file: !182, line: 691, type: !552, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!552 = !DISubroutineType(types: !553)
!553 = !{!52, !554, !555}
!554 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!555 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!556 = !DILocation(line: 0, scope: !62)
!557 = !DILocation(line: 581, column: 7, scope: !71)
!558 = !{!559, !559, i64 0}
!559 = !{!"int", !465, i64 0}
!560 = !DILocation(line: 581, column: 19, scope: !71)
!561 = !DILocation(line: 581, column: 7, scope: !62)
!562 = !DILocation(line: 585, column: 26, scope: !70)
!563 = !DILocation(line: 0, scope: !70)
!564 = !DILocation(line: 586, column: 23, scope: !70)
!565 = !DILocation(line: 586, column: 28, scope: !70)
!566 = !DILocation(line: 586, column: 32, scope: !70)
!567 = !{!465, !465, i64 0}
!568 = !DILocation(line: 586, column: 38, scope: !70)
!569 = !DILocation(line: 0, scope: !508, inlinedAt: !570)
!570 = distinct !DILocation(line: 586, column: 41, scope: !70)
!571 = !DILocation(line: 1361, column: 11, scope: !508, inlinedAt: !570)
!572 = !DILocation(line: 1361, column: 10, scope: !508, inlinedAt: !570)
!573 = !DILocation(line: 586, column: 19, scope: !70)
!574 = !DILocation(line: 587, column: 5, scope: !70)
!575 = !DILocation(line: 588, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !62, file: !63, line: 588, column: 7)
!577 = !DILocation(line: 588, column: 7, scope: !62)
!578 = !DILocation(line: 590, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !576, file: !63, line: 589, column: 5)
!580 = !DILocation(line: 591, column: 7, scope: !579)
!581 = !DILocation(line: 595, column: 37, scope: !62)
!582 = !DILocation(line: 595, column: 35, scope: !62)
!583 = !DILocation(line: 596, column: 29, scope: !62)
!584 = !DILocation(line: 597, column: 8, scope: !79)
!585 = !DILocation(line: 597, column: 7, scope: !62)
!586 = !DILocation(line: 604, column: 24, scope: !78)
!587 = !DILocation(line: 604, column: 12, scope: !79)
!588 = !DILocation(line: 0, scope: !77)
!589 = !DILocation(line: 610, column: 16, scope: !77)
!590 = !DILocation(line: 610, column: 7, scope: !77)
!591 = !DILocation(line: 611, column: 21, scope: !77)
!592 = !{!593, !593, i64 0}
!593 = !{!"short", !465, i64 0}
!594 = !DILocation(line: 611, column: 19, scope: !77)
!595 = !DILocation(line: 611, column: 16, scope: !77)
!596 = !DILocation(line: 610, column: 30, scope: !77)
!597 = distinct !{!597, !590, !591, !525}
!598 = !DILocation(line: 612, column: 18, scope: !599)
!599 = distinct !DILexicalBlock(scope: !77, file: !63, line: 612, column: 11)
!600 = !DILocation(line: 612, column: 11, scope: !77)
!601 = !DILocation(line: 620, column: 23, scope: !62)
!602 = !DILocation(line: 625, column: 39, scope: !62)
!603 = !DILocation(line: 626, column: 3, scope: !62)
!604 = !DILocation(line: 626, column: 10, scope: !62)
!605 = !DILocation(line: 626, column: 21, scope: !62)
!606 = !DILocation(line: 628, column: 44, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !63, line: 628, column: 11)
!608 = distinct !DILexicalBlock(scope: !62, file: !63, line: 627, column: 5)
!609 = !DILocation(line: 628, column: 32, scope: !607)
!610 = !DILocation(line: 628, column: 49, scope: !607)
!611 = !DILocation(line: 628, column: 11, scope: !608)
!612 = !DILocation(line: 630, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !608, file: !63, line: 630, column: 11)
!614 = !DILocation(line: 630, column: 11, scope: !608)
!615 = !DILocation(line: 632, column: 26, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !63, line: 632, column: 15)
!617 = distinct !DILexicalBlock(scope: !613, file: !63, line: 631, column: 9)
!618 = !DILocation(line: 632, column: 34, scope: !616)
!619 = !DILocation(line: 632, column: 37, scope: !616)
!620 = !DILocation(line: 632, column: 15, scope: !617)
!621 = !DILocation(line: 636, column: 29, scope: !622)
!622 = distinct !DILexicalBlock(scope: !617, file: !63, line: 636, column: 15)
!623 = !DILocation(line: 640, column: 16, scope: !608)
!624 = distinct !{!624, !603, !625, !525}
!625 = !DILocation(line: 641, column: 5, scope: !62)
!626 = !DILocation(line: 644, column: 3, scope: !62)
!627 = !DILocation(line: 0, scope: !508, inlinedAt: !628)
!628 = distinct !DILocation(line: 648, column: 31, scope: !62)
!629 = !DILocation(line: 0, scope: !508, inlinedAt: !630)
!630 = distinct !DILocation(line: 649, column: 31, scope: !62)
!631 = !DILocation(line: 0, scope: !508, inlinedAt: !632)
!632 = distinct !DILocation(line: 650, column: 31, scope: !62)
!633 = !DILocation(line: 0, scope: !508, inlinedAt: !634)
!634 = distinct !DILocation(line: 651, column: 31, scope: !62)
!635 = !DILocation(line: 0, scope: !508, inlinedAt: !636)
!636 = distinct !DILocation(line: 652, column: 31, scope: !62)
!637 = !DILocation(line: 0, scope: !508, inlinedAt: !638)
!638 = distinct !DILocation(line: 653, column: 31, scope: !62)
!639 = !DILocation(line: 0, scope: !508, inlinedAt: !640)
!640 = distinct !DILocation(line: 654, column: 31, scope: !62)
!641 = !DILocation(line: 0, scope: !508, inlinedAt: !642)
!642 = distinct !DILocation(line: 655, column: 31, scope: !62)
!643 = !DILocation(line: 0, scope: !508, inlinedAt: !644)
!644 = distinct !DILocation(line: 656, column: 31, scope: !62)
!645 = !DILocation(line: 0, scope: !508, inlinedAt: !646)
!646 = distinct !DILocation(line: 657, column: 31, scope: !62)
!647 = !DILocation(line: 663, column: 7, scope: !648)
!648 = distinct !DILexicalBlock(scope: !62, file: !63, line: 663, column: 7)
!649 = !DILocation(line: 664, column: 7, scope: !648)
!650 = !DILocation(line: 664, column: 10, scope: !648)
!651 = !DILocation(line: 663, column: 7, scope: !62)
!652 = !DILocation(line: 669, column: 7, scope: !653)
!653 = distinct !DILexicalBlock(scope: !648, file: !63, line: 665, column: 5)
!654 = !DILocation(line: 671, column: 5, scope: !653)
!655 = !DILocation(line: 676, column: 7, scope: !656)
!656 = distinct !DILexicalBlock(scope: !648, file: !63, line: 673, column: 5)
!657 = !DILocation(line: 679, column: 3, scope: !62)
!658 = !DILocation(line: 683, column: 3, scope: !62)
!659 = !DILocation(line: 686, column: 3, scope: !62)
!660 = !DILocation(line: 688, column: 3, scope: !62)
!661 = !DILocation(line: 691, column: 3, scope: !62)
!662 = !DILocation(line: 695, column: 3, scope: !62)
!663 = !DILocation(line: 696, column: 1, scope: !62)
!664 = !DISubprogram(name: "setlocale", scope: !665, file: !665, line: 122, type: !666, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!665 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!666 = !DISubroutineType(types: !667)
!667 = !{!44, !52, !56}
!668 = !DISubprogram(name: "getenv", scope: !669, file: !669, line: 641, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!669 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!670 = !DISubroutineType(types: !671)
!671 = !{!44, !56}
!672 = !DISubprogram(name: "fwrite_unlocked", scope: !182, file: !182, line: 704, type: !673, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!673 = !DISubroutineType(types: !674)
!674 = !{!54, !675, !54, !54, !555}
!675 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!678 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 96, type: !679, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!679 = !DISubroutineType(types: !680)
!680 = !{!52, !52, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!682 = !{!683, !684, !685, !686, !687, !691, !692, !695, !701, !702, !703, !706, !707, !710, !711, !712, !713, !714}
!683 = !DILocalVariable(name: "argc", arg: 1, scope: !678, file: !3, line: 96, type: !52)
!684 = !DILocalVariable(name: "argv", arg: 2, scope: !678, file: !3, line: 96, type: !681)
!685 = !DILocalVariable(name: "specified_mode", scope: !678, file: !3, line: 98, type: !56)
!686 = !DILocalVariable(name: "scontext", scope: !678, file: !3, line: 99, type: !56)
!687 = !DILocalVariable(name: "set_security_context", scope: !678, file: !3, line: 100, type: !688)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DICompositeType(tag: DW_TAG_structure_type, name: "selabel_handle", file: !690, line: 53, flags: DIFlagFwdDecl)
!690 = !DIFile(filename: "./lib/selinux/label.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a430a70cff1d2c3fd1539e29c9e5e879")
!691 = !DILocalVariable(name: "optc", scope: !678, file: !3, line: 110, type: !52)
!692 = !DILocalVariable(name: "newmode", scope: !678, file: !3, line: 150, type: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !48, line: 69, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !50, line: 150, baseType: !7)
!695 = !DILocalVariable(name: "change", scope: !696, file: !3, line: 153, type: !698)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 152, column: 5)
!697 = distinct !DILexicalBlock(scope: !678, file: !3, line: 151, column: 7)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !700, line: 35, flags: DIFlagFwdDecl)
!700 = !DIFile(filename: "./lib/modechange.h", directory: "/src", checksumkind: CSK_MD5, checksum: "41f2efe3cfeccb00721320834728c24b")
!701 = !DILocalVariable(name: "umask_value", scope: !696, file: !3, line: 156, type: !693)
!702 = !DILocalVariable(name: "expected_operands", scope: !678, file: !3, line: 168, type: !52)
!703 = !DILocalVariable(name: "ret", scope: !704, file: !3, line: 196, type: !52)
!704 = distinct !DILexicalBlock(scope: !705, file: !3, line: 195, column: 5)
!705 = distinct !DILexicalBlock(scope: !678, file: !3, line: 194, column: 7)
!706 = !DILocalVariable(name: "node_type", scope: !678, file: !3, line: 211, type: !693)
!707 = !DILocalVariable(name: "s_major", scope: !708, file: !3, line: 233, type: !56)
!708 = distinct !DILexicalBlock(scope: !709, file: !3, line: 232, column: 7)
!709 = distinct !DILexicalBlock(scope: !678, file: !3, line: 213, column: 5)
!710 = !DILocalVariable(name: "i_major", scope: !708, file: !3, line: 234, type: !420)
!711 = !DILocalVariable(name: "s_minor", scope: !708, file: !3, line: 240, type: !56)
!712 = !DILocalVariable(name: "i_minor", scope: !708, file: !3, line: 241, type: !420)
!713 = !DILocalVariable(name: "device", scope: !708, file: !3, line: 247, type: !47)
!714 = !DILabel(scope: !709, name: "block_or_character", file: !3, line: 231)
!715 = !DILocation(line: 0, scope: !678)
!716 = !DILocation(line: 103, column: 21, scope: !678)
!717 = !DILocation(line: 103, column: 3, scope: !678)
!718 = !DILocation(line: 104, column: 3, scope: !678)
!719 = !DILocation(line: 105, column: 3, scope: !678)
!720 = !DILocation(line: 106, column: 3, scope: !678)
!721 = !DILocation(line: 108, column: 3, scope: !678)
!722 = !DILocation(line: 111, column: 3, scope: !678)
!723 = !DILocation(line: 111, column: 18, scope: !678)
!724 = !DILocation(line: 116, column: 28, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 114, column: 9)
!726 = distinct !DILexicalBlock(scope: !678, file: !3, line: 112, column: 5)
!727 = !DILocation(line: 117, column: 11, scope: !725)
!728 = distinct !{!728, !722, !729, !525}
!729 = !DILocation(line: 148, column: 5, scope: !678)
!730 = !DILocation(line: 136, column: 20, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !3, line: 136, column: 20)
!732 = distinct !DILexicalBlock(scope: !733, file: !3, line: 124, column: 20)
!733 = distinct !DILexicalBlock(scope: !725, file: !3, line: 119, column: 15)
!734 = !DILocation(line: 136, column: 20, scope: !732)
!735 = !DILocation(line: 138, column: 15, scope: !736)
!736 = distinct !DILexicalBlock(scope: !731, file: !3, line: 137, column: 13)
!737 = !DILocation(line: 141, column: 13, scope: !736)
!738 = !DILocation(line: 143, column: 9, scope: !725)
!739 = !DILocation(line: 144, column: 9, scope: !725)
!740 = !DILocation(line: 146, column: 11, scope: !725)
!741 = !DILocation(line: 151, column: 7, scope: !697)
!742 = !DILocation(line: 151, column: 7, scope: !678)
!743 = !DILocation(line: 153, column: 36, scope: !696)
!744 = !DILocation(line: 0, scope: !696)
!745 = !DILocation(line: 154, column: 12, scope: !746)
!746 = distinct !DILexicalBlock(scope: !696, file: !3, line: 154, column: 11)
!747 = !DILocation(line: 154, column: 11, scope: !696)
!748 = !DILocation(line: 155, column: 9, scope: !746)
!749 = !DILocation(line: 156, column: 28, scope: !696)
!750 = !DILocation(line: 157, column: 7, scope: !696)
!751 = !DILocation(line: 158, column: 17, scope: !696)
!752 = !DILocation(line: 159, column: 13, scope: !696)
!753 = !DILocation(line: 159, column: 7, scope: !696)
!754 = !DILocation(line: 160, column: 19, scope: !755)
!755 = distinct !DILexicalBlock(scope: !696, file: !3, line: 160, column: 11)
!756 = !DILocation(line: 160, column: 11, scope: !696)
!757 = !DILocation(line: 161, column: 9, scope: !755)
!758 = !DILocation(line: 168, column: 36, scope: !678)
!759 = !DILocation(line: 168, column: 33, scope: !678)
!760 = !DILocation(line: 169, column: 28, scope: !678)
!761 = !DILocation(line: 169, column: 39, scope: !678)
!762 = !DILocation(line: 169, column: 43, scope: !678)
!763 = !DILocation(line: 169, column: 50, scope: !678)
!764 = !DILocation(line: 169, column: 53, scope: !678)
!765 = !DILocation(line: 169, column: 73, scope: !678)
!766 = !DILocation(line: 168, column: 28, scope: !678)
!767 = !DILocation(line: 172, column: 12, scope: !768)
!768 = distinct !DILexicalBlock(scope: !678, file: !3, line: 172, column: 7)
!769 = !DILocation(line: 172, column: 21, scope: !768)
!770 = !DILocation(line: 172, column: 7, scope: !678)
!771 = !DILocation(line: 174, column: 11, scope: !772)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 173, column: 5)
!773 = !DILocation(line: 175, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 174, column: 11)
!775 = !DILocation(line: 177, column: 9, scope: !774)
!776 = !DILocation(line: 178, column: 34, scope: !777)
!777 = distinct !DILexicalBlock(scope: !772, file: !3, line: 178, column: 11)
!778 = !DILocation(line: 178, column: 44, scope: !777)
!779 = !DILocation(line: 178, column: 42, scope: !777)
!780 = !DILocation(line: 178, column: 51, scope: !777)
!781 = !DILocation(line: 178, column: 11, scope: !772)
!782 = !DILocation(line: 179, column: 9, scope: !777)
!783 = !DILocation(line: 181, column: 7, scope: !772)
!784 = !DILocation(line: 184, column: 25, scope: !785)
!785 = distinct !DILexicalBlock(scope: !678, file: !3, line: 184, column: 7)
!786 = !DILocation(line: 184, column: 7, scope: !678)
!787 = !DILocation(line: 186, column: 7, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !3, line: 185, column: 5)
!789 = !DILocation(line: 188, column: 34, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !3, line: 188, column: 11)
!791 = !DILocation(line: 188, column: 44, scope: !790)
!792 = !DILocation(line: 188, column: 42, scope: !790)
!793 = !DILocation(line: 188, column: 51, scope: !790)
!794 = !DILocation(line: 188, column: 11, scope: !788)
!795 = !DILocation(line: 189, column: 9, scope: !790)
!796 = !DILocation(line: 191, column: 7, scope: !788)
!797 = !DILocation(line: 212, column: 23, scope: !678)
!798 = !DILocation(line: 212, column: 11, scope: !678)
!799 = !DILocation(line: 212, column: 3, scope: !678)
!800 = !DILocation(line: 229, column: 7, scope: !709)
!801 = !DILocation(line: 0, scope: !709)
!802 = !DILocation(line: 231, column: 5, scope: !709)
!803 = !DILocation(line: 233, column: 43, scope: !708)
!804 = !DILocation(line: 233, column: 31, scope: !708)
!805 = !DILocation(line: 0, scope: !708)
!806 = !DILocation(line: 234, column: 9, scope: !708)
!807 = !DILocation(line: 235, column: 13, scope: !808)
!808 = distinct !DILexicalBlock(scope: !708, file: !3, line: 235, column: 13)
!809 = !DILocation(line: 235, column: 57, scope: !808)
!810 = !DILocation(line: 236, column: 13, scope: !808)
!811 = !DILocation(line: 237, column: 11, scope: !808)
!812 = !DILocation(line: 240, column: 36, scope: !708)
!813 = !DILocation(line: 240, column: 43, scope: !708)
!814 = !DILocation(line: 240, column: 31, scope: !708)
!815 = !DILocation(line: 241, column: 9, scope: !708)
!816 = !DILocation(line: 242, column: 13, scope: !817)
!817 = distinct !DILexicalBlock(scope: !708, file: !3, line: 242, column: 13)
!818 = !DILocation(line: 242, column: 57, scope: !817)
!819 = !DILocation(line: 243, column: 13, scope: !817)
!820 = !DILocation(line: 243, column: 16, scope: !817)
!821 = !{!822, !822, i64 0}
!822 = !{!"long", !465, i64 0}
!823 = !DILocation(line: 243, column: 24, scope: !817)
!824 = !DILocation(line: 242, column: 13, scope: !708)
!825 = !DILocation(line: 244, column: 11, scope: !817)
!826 = !DILocation(line: 247, column: 24, scope: !708)
!827 = !DILocalVariable(name: "__major", arg: 1, scope: !828, file: !829, line: 43, type: !7)
!828 = distinct !DISubprogram(name: "gnu_dev_makedev", scope: !829, file: !829, line: 43, type: !830, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !832)
!829 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/sysmacros.h", directory: "", checksumkind: CSK_MD5, checksum: "55fcf1d6b566cf23c756196786ec2d1a")
!830 = !DISubroutineType(types: !831)
!831 = !{!49, !7, !7}
!832 = !{!827, !833, !834}
!833 = !DILocalVariable(name: "__minor", arg: 2, scope: !828, file: !829, line: 43, type: !7)
!834 = !DILocalVariable(name: "__dev", scope: !828, file: !829, line: 43, type: !49)
!835 = !DILocation(line: 0, scope: !828, inlinedAt: !836)
!836 = distinct !DILocation(line: 247, column: 24, scope: !708)
!837 = !DILocation(line: 43, column: 1, scope: !828, inlinedAt: !836)
!838 = !DILocation(line: 249, column: 20, scope: !839)
!839 = distinct !DILexicalBlock(scope: !708, file: !3, line: 249, column: 13)
!840 = !DILocation(line: 249, column: 13, scope: !708)
!841 = !DILocation(line: 250, column: 11, scope: !839)
!842 = !DILocation(line: 257, column: 25, scope: !843)
!843 = distinct !DILexicalBlock(scope: !708, file: !3, line: 257, column: 13)
!844 = !DILocation(line: 257, column: 20, scope: !843)
!845 = !DILocation(line: 257, column: 42, scope: !843)
!846 = !DILocation(line: 257, column: 13, scope: !843)
!847 = !DILocation(line: 257, column: 63, scope: !843)
!848 = !DILocation(line: 257, column: 13, scope: !708)
!849 = !DILocation(line: 258, column: 11, scope: !843)
!850 = !DILocation(line: 259, column: 7, scope: !709)
!851 = !DILocation(line: 260, column: 7, scope: !709)
!852 = !DILocation(line: 265, column: 19, scope: !853)
!853 = distinct !DILexicalBlock(scope: !709, file: !3, line: 265, column: 11)
!854 = !DILocation(line: 265, column: 11, scope: !853)
!855 = !DILocation(line: 265, column: 42, scope: !853)
!856 = !DILocation(line: 265, column: 11, scope: !709)
!857 = !DILocation(line: 266, column: 9, scope: !853)
!858 = !DILocation(line: 270, column: 7, scope: !709)
!859 = !DILocation(line: 271, column: 7, scope: !709)
!860 = !DILocation(line: 274, column: 22, scope: !861)
!861 = distinct !DILexicalBlock(scope: !678, file: !3, line: 274, column: 7)
!862 = !DILocation(line: 274, column: 38, scope: !861)
!863 = !DILocation(line: 274, column: 33, scope: !861)
!864 = !DILocation(line: 274, column: 25, scope: !861)
!865 = !DILocation(line: 274, column: 56, scope: !861)
!866 = !DILocation(line: 274, column: 7, scope: !678)
!867 = !DILocation(line: 275, column: 5, scope: !861)
!868 = !DILocation(line: 278, column: 3, scope: !678)
!869 = !DISubprogram(name: "bindtextdomain", scope: !548, file: !548, line: 86, type: !870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!870 = !DISubroutineType(types: !871)
!871 = !{!44, !56, !56}
!872 = !DISubprogram(name: "textdomain", scope: !548, file: !548, line: 82, type: !670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!873 = !DISubprogram(name: "atexit", scope: !669, file: !669, line: 602, type: !874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!874 = !DISubroutineType(types: !875)
!875 = !{!52, !208}
!876 = !DISubprogram(name: "getopt_long", scope: !149, file: !149, line: 66, type: !877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!877 = !DISubroutineType(types: !878)
!878 = !{!52, !52, !879, !56, !881, !154}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!882 = !DISubprogram(name: "umask", scope: !883, file: !883, line: 380, type: !884, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!883 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!884 = !DISubroutineType(types: !885)
!885 = !{!694, !694}
!886 = !DISubprogram(name: "mkfifo", scope: !883, file: !883, line: 418, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!887 = !DISubroutineType(types: !888)
!888 = !{!52, !56, !694}
!889 = !DISubprogram(name: "lchmod", scope: !883, file: !883, line: 359, type: !887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!890 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !166, file: !166, line: 50, type: !484, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !891)
!891 = !{!892}
!892 = !DILocalVariable(name: "file", arg: 1, scope: !890, file: !166, line: 50, type: !56)
!893 = !DILocation(line: 0, scope: !890)
!894 = !DILocation(line: 52, column: 13, scope: !890)
!895 = !DILocation(line: 53, column: 1, scope: !890)
!896 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !166, file: !166, line: 87, type: !897, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !899)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !73}
!899 = !{!900}
!900 = !DILocalVariable(name: "ignore", arg: 1, scope: !896, file: !166, line: 87, type: !73)
!901 = !DILocation(line: 0, scope: !896)
!902 = !DILocation(line: 89, column: 16, scope: !896)
!903 = !{!904, !904, i64 0}
!904 = !{!"_Bool", !465, i64 0}
!905 = !DILocation(line: 90, column: 1, scope: !896)
!906 = distinct !DISubprogram(name: "close_stdout", scope: !166, file: !166, line: 116, type: !209, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !165, retainedNodes: !907)
!907 = !{!908}
!908 = !DILocalVariable(name: "write_error", scope: !909, file: !166, line: 121, type: !56)
!909 = distinct !DILexicalBlock(scope: !910, file: !166, line: 120, column: 5)
!910 = distinct !DILexicalBlock(scope: !906, file: !166, line: 118, column: 7)
!911 = !DILocation(line: 118, column: 21, scope: !910)
!912 = !DILocation(line: 118, column: 7, scope: !910)
!913 = !DILocation(line: 118, column: 29, scope: !910)
!914 = !DILocation(line: 119, column: 7, scope: !910)
!915 = !DILocation(line: 119, column: 12, scope: !910)
!916 = !{i8 0, i8 2}
!917 = !DILocation(line: 119, column: 25, scope: !910)
!918 = !DILocation(line: 119, column: 28, scope: !910)
!919 = !DILocation(line: 119, column: 34, scope: !910)
!920 = !DILocation(line: 118, column: 7, scope: !906)
!921 = !DILocation(line: 121, column: 33, scope: !909)
!922 = !DILocation(line: 0, scope: !909)
!923 = !DILocation(line: 122, column: 11, scope: !924)
!924 = distinct !DILexicalBlock(scope: !909, file: !166, line: 122, column: 11)
!925 = !DILocation(line: 0, scope: !924)
!926 = !DILocation(line: 122, column: 11, scope: !909)
!927 = !DILocation(line: 123, column: 9, scope: !924)
!928 = !DILocation(line: 126, column: 9, scope: !924)
!929 = !DILocation(line: 128, column: 14, scope: !909)
!930 = !DILocation(line: 128, column: 7, scope: !909)
!931 = !DILocation(line: 133, column: 42, scope: !932)
!932 = distinct !DILexicalBlock(scope: !906, file: !166, line: 133, column: 7)
!933 = !DILocation(line: 133, column: 28, scope: !932)
!934 = !DILocation(line: 133, column: 50, scope: !932)
!935 = !DILocation(line: 133, column: 7, scope: !906)
!936 = !DILocation(line: 134, column: 12, scope: !932)
!937 = !DILocation(line: 134, column: 5, scope: !932)
!938 = !DILocation(line: 135, column: 1, scope: !906)
!939 = distinct !DISubprogram(name: "verror", scope: !173, file: !173, line: 251, type: !940, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !942)
!940 = !DISubroutineType(types: !941)
!941 = !{null, !52, !52, !56, !181}
!942 = !{!943, !944, !945, !946}
!943 = !DILocalVariable(name: "status", arg: 1, scope: !939, file: !173, line: 251, type: !52)
!944 = !DILocalVariable(name: "errnum", arg: 2, scope: !939, file: !173, line: 251, type: !52)
!945 = !DILocalVariable(name: "message", arg: 3, scope: !939, file: !173, line: 251, type: !56)
!946 = !DILocalVariable(name: "args", arg: 4, scope: !939, file: !173, line: 251, type: !181)
!947 = !DILocation(line: 0, scope: !939)
!948 = !DILocation(line: 251, column: 1, scope: !939)
!949 = !DILocation(line: 261, column: 3, scope: !939)
!950 = !DILocation(line: 265, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !939, file: !173, line: 265, column: 7)
!952 = !DILocation(line: 265, column: 7, scope: !939)
!953 = !DILocation(line: 266, column: 5, scope: !951)
!954 = !DILocation(line: 272, column: 7, scope: !955)
!955 = distinct !DILexicalBlock(scope: !951, file: !173, line: 268, column: 5)
!956 = !DILocation(line: 276, column: 3, scope: !939)
!957 = !{i64 0, i64 8, !463, i64 8, i64 8, !463, i64 16, i64 8, !463, i64 24, i64 4, !558, i64 28, i64 4, !558}
!958 = !DILocation(line: 282, column: 1, scope: !939)
!959 = distinct !DISubprogram(name: "flush_stdout", scope: !173, file: !173, line: 163, type: !209, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !960)
!960 = !{!961}
!961 = !DILocalVariable(name: "stdout_fd", scope: !959, file: !173, line: 166, type: !52)
!962 = !DILocation(line: 0, scope: !959)
!963 = !DILocalVariable(name: "fd", arg: 1, scope: !964, file: !173, line: 145, type: !52)
!964 = distinct !DISubprogram(name: "is_open", scope: !173, file: !173, line: 145, type: !965, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!52, !52}
!967 = !{!963}
!968 = !DILocation(line: 0, scope: !964, inlinedAt: !969)
!969 = distinct !DILocation(line: 182, column: 25, scope: !970)
!970 = distinct !DILexicalBlock(scope: !959, file: !173, line: 182, column: 7)
!971 = !DILocation(line: 157, column: 15, scope: !964, inlinedAt: !969)
!972 = !DILocation(line: 182, column: 25, scope: !970)
!973 = !DILocation(line: 182, column: 7, scope: !959)
!974 = !DILocation(line: 184, column: 5, scope: !970)
!975 = !DILocation(line: 185, column: 1, scope: !959)
!976 = distinct !DISubprogram(name: "error_tail", scope: !173, file: !173, line: 219, type: !940, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !977)
!977 = !{!978, !979, !980, !981}
!978 = !DILocalVariable(name: "status", arg: 1, scope: !976, file: !173, line: 219, type: !52)
!979 = !DILocalVariable(name: "errnum", arg: 2, scope: !976, file: !173, line: 219, type: !52)
!980 = !DILocalVariable(name: "message", arg: 3, scope: !976, file: !173, line: 219, type: !56)
!981 = !DILocalVariable(name: "args", arg: 4, scope: !976, file: !173, line: 219, type: !181)
!982 = !DILocation(line: 0, scope: !976)
!983 = !DILocation(line: 219, column: 1, scope: !976)
!984 = !DILocation(line: 229, column: 13, scope: !976)
!985 = !DILocation(line: 229, column: 3, scope: !976)
!986 = !DILocalVariable(name: "__stream", arg: 1, scope: !987, file: !988, line: 132, type: !991)
!987 = distinct !DISubprogram(name: "vfprintf", scope: !988, file: !988, line: 132, type: !989, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1026)
!988 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!989 = !DISubroutineType(types: !990)
!990 = !{!52, !991, !554, !183}
!991 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !995)
!995 = !{!996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !994, file: !90, line: 51, baseType: !52, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !994, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !994, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !994, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !994, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !994, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !994, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !994, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !994, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !994, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !994, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !994, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !994, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !994, file: !90, line: 70, baseType: !1010, size: 64, offset: 832)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !994, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !994, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !994, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !994, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !994, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !994, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !994, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !994, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !994, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !994, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !994, file: !90, line: 93, baseType: !1010, size: 64, offset: 1344)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !994, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !994, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !994, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !994, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!1026 = !{!986, !1027, !1028}
!1027 = !DILocalVariable(name: "__fmt", arg: 2, scope: !987, file: !988, line: 133, type: !554)
!1028 = !DILocalVariable(name: "__ap", arg: 3, scope: !987, file: !988, line: 133, type: !183)
!1029 = !DILocation(line: 0, scope: !987, inlinedAt: !1030)
!1030 = distinct !DILocation(line: 229, column: 3, scope: !976)
!1031 = !DILocation(line: 135, column: 10, scope: !987, inlinedAt: !1030)
!1032 = !{!1033, !1035}
!1033 = distinct !{!1033, !1034, !"vfprintf.inline: argument 0"}
!1034 = distinct !{!1034, !"vfprintf.inline"}
!1035 = distinct !{!1035, !1034, !"vfprintf.inline: argument 1"}
!1036 = !DILocation(line: 232, column: 3, scope: !976)
!1037 = !DILocation(line: 233, column: 7, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !976, file: !173, line: 233, column: 7)
!1039 = !DILocation(line: 233, column: 7, scope: !976)
!1040 = !DILocalVariable(name: "errnum", arg: 1, scope: !1041, file: !173, line: 188, type: !52)
!1041 = distinct !DISubprogram(name: "print_errno_message", scope: !173, file: !173, line: 188, type: !453, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1042)
!1042 = !{!1040, !1043, !1044}
!1043 = !DILocalVariable(name: "s", scope: !1041, file: !173, line: 190, type: !56)
!1044 = !DILocalVariable(name: "errbuf", scope: !1041, file: !173, line: 193, type: !1045)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8192, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 1024)
!1048 = !DILocation(line: 0, scope: !1041, inlinedAt: !1049)
!1049 = distinct !DILocation(line: 234, column: 5, scope: !1038)
!1050 = !DILocation(line: 193, column: 3, scope: !1041, inlinedAt: !1049)
!1051 = !DILocation(line: 193, column: 8, scope: !1041, inlinedAt: !1049)
!1052 = !DILocation(line: 195, column: 7, scope: !1041, inlinedAt: !1049)
!1053 = !DILocation(line: 207, column: 9, scope: !1054, inlinedAt: !1049)
!1054 = distinct !DILexicalBlock(scope: !1041, file: !173, line: 207, column: 7)
!1055 = !DILocation(line: 207, column: 7, scope: !1041, inlinedAt: !1049)
!1056 = !DILocation(line: 208, column: 9, scope: !1054, inlinedAt: !1049)
!1057 = !DILocation(line: 208, column: 5, scope: !1054, inlinedAt: !1049)
!1058 = !DILocation(line: 214, column: 3, scope: !1041, inlinedAt: !1049)
!1059 = !DILocation(line: 216, column: 1, scope: !1041, inlinedAt: !1049)
!1060 = !DILocation(line: 234, column: 5, scope: !1038)
!1061 = !DILocation(line: 238, column: 3, scope: !976)
!1062 = !DILocalVariable(name: "__c", arg: 1, scope: !1063, file: !1064, line: 101, type: !52)
!1063 = distinct !DISubprogram(name: "putc_unlocked", scope: !1064, file: !1064, line: 101, type: !1065, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1067)
!1064 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!52, !52, !992}
!1067 = !{!1062, !1068}
!1068 = !DILocalVariable(name: "__stream", arg: 2, scope: !1063, file: !1064, line: 101, type: !992)
!1069 = !DILocation(line: 0, scope: !1063, inlinedAt: !1070)
!1070 = distinct !DILocation(line: 238, column: 3, scope: !976)
!1071 = !DILocation(line: 103, column: 10, scope: !1063, inlinedAt: !1070)
!1072 = !{!1073, !464, i64 40}
!1073 = !{!"_IO_FILE", !559, i64 0, !464, i64 8, !464, i64 16, !464, i64 24, !464, i64 32, !464, i64 40, !464, i64 48, !464, i64 56, !464, i64 64, !464, i64 72, !464, i64 80, !464, i64 88, !464, i64 96, !464, i64 104, !559, i64 112, !559, i64 116, !822, i64 120, !593, i64 128, !465, i64 130, !465, i64 131, !464, i64 136, !822, i64 144, !464, i64 152, !464, i64 160, !464, i64 168, !464, i64 176, !822, i64 184, !559, i64 192, !465, i64 196}
!1074 = !{!1073, !464, i64 48}
!1075 = !{!"branch_weights", i32 2000, i32 1}
!1076 = !DILocation(line: 240, column: 3, scope: !976)
!1077 = !DILocation(line: 241, column: 7, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !976, file: !173, line: 241, column: 7)
!1079 = !DILocation(line: 241, column: 7, scope: !976)
!1080 = !DILocation(line: 242, column: 5, scope: !1078)
!1081 = !DILocation(line: 243, column: 1, scope: !976)
!1082 = !DISubprogram(name: "strerror_r", scope: !1083, file: !1083, line: 444, type: !1084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1083 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!44, !52, !44, !54}
!1086 = !DISubprogram(name: "fflush_unlocked", scope: !182, file: !182, line: 239, type: !1087, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!52, !992}
!1089 = !DISubprogram(name: "fcntl", scope: !1090, file: !1090, line: 149, type: !1091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1090 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1091 = !DISubroutineType(types: !1092)
!1092 = !{!52, !52, !52, null}
!1093 = distinct !DISubprogram(name: "error", scope: !173, file: !173, line: 285, type: !1094, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{null, !52, !52, !56, null}
!1096 = !{!1097, !1098, !1099, !1100}
!1097 = !DILocalVariable(name: "status", arg: 1, scope: !1093, file: !173, line: 285, type: !52)
!1098 = !DILocalVariable(name: "errnum", arg: 2, scope: !1093, file: !173, line: 285, type: !52)
!1099 = !DILocalVariable(name: "message", arg: 3, scope: !1093, file: !173, line: 285, type: !56)
!1100 = !DILocalVariable(name: "ap", scope: !1093, file: !173, line: 287, type: !181)
!1101 = !DILocation(line: 0, scope: !1093)
!1102 = !DILocation(line: 287, column: 3, scope: !1093)
!1103 = !DILocation(line: 287, column: 11, scope: !1093)
!1104 = !DILocation(line: 288, column: 3, scope: !1093)
!1105 = !DILocation(line: 289, column: 3, scope: !1093)
!1106 = !DILocation(line: 290, column: 3, scope: !1093)
!1107 = !DILocation(line: 291, column: 1, scope: !1093)
!1108 = !DILocation(line: 0, scope: !178)
!1109 = !DILocation(line: 298, column: 1, scope: !178)
!1110 = !DILocation(line: 302, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !178, file: !173, line: 302, column: 7)
!1112 = !DILocation(line: 302, column: 7, scope: !178)
!1113 = !DILocation(line: 307, column: 11, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !173, line: 307, column: 11)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !173, line: 303, column: 5)
!1116 = !DILocation(line: 307, column: 27, scope: !1114)
!1117 = !DILocation(line: 308, column: 11, scope: !1114)
!1118 = !DILocation(line: 308, column: 28, scope: !1114)
!1119 = !DILocation(line: 308, column: 25, scope: !1114)
!1120 = !DILocation(line: 309, column: 15, scope: !1114)
!1121 = !DILocation(line: 309, column: 33, scope: !1114)
!1122 = !DILocation(line: 310, column: 19, scope: !1114)
!1123 = !DILocation(line: 311, column: 22, scope: !1114)
!1124 = !DILocation(line: 311, column: 56, scope: !1114)
!1125 = !DILocation(line: 307, column: 11, scope: !1115)
!1126 = !DILocation(line: 316, column: 21, scope: !1115)
!1127 = !DILocation(line: 317, column: 23, scope: !1115)
!1128 = !DILocation(line: 318, column: 5, scope: !1115)
!1129 = !DILocation(line: 327, column: 3, scope: !178)
!1130 = !DILocation(line: 331, column: 7, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !178, file: !173, line: 331, column: 7)
!1132 = !DILocation(line: 331, column: 7, scope: !178)
!1133 = !DILocation(line: 332, column: 5, scope: !1131)
!1134 = !DILocation(line: 338, column: 7, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1131, file: !173, line: 334, column: 5)
!1136 = !DILocation(line: 346, column: 3, scope: !178)
!1137 = !DILocation(line: 350, column: 3, scope: !178)
!1138 = !DILocation(line: 356, column: 1, scope: !178)
!1139 = distinct !DISubprogram(name: "error_at_line", scope: !173, file: !173, line: 359, type: !1140, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !172, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !52, !52, !56, !7, !56, null}
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1148}
!1143 = !DILocalVariable(name: "status", arg: 1, scope: !1139, file: !173, line: 359, type: !52)
!1144 = !DILocalVariable(name: "errnum", arg: 2, scope: !1139, file: !173, line: 359, type: !52)
!1145 = !DILocalVariable(name: "file_name", arg: 3, scope: !1139, file: !173, line: 359, type: !56)
!1146 = !DILocalVariable(name: "line_number", arg: 4, scope: !1139, file: !173, line: 360, type: !7)
!1147 = !DILocalVariable(name: "message", arg: 5, scope: !1139, file: !173, line: 360, type: !56)
!1148 = !DILocalVariable(name: "ap", scope: !1139, file: !173, line: 362, type: !181)
!1149 = !DILocation(line: 0, scope: !1139)
!1150 = !DILocation(line: 362, column: 3, scope: !1139)
!1151 = !DILocation(line: 362, column: 11, scope: !1139)
!1152 = !DILocation(line: 363, column: 3, scope: !1139)
!1153 = !DILocation(line: 364, column: 3, scope: !1139)
!1154 = !DILocation(line: 366, column: 3, scope: !1139)
!1155 = !DILocation(line: 367, column: 1, scope: !1139)
!1156 = distinct !DISubprogram(name: "getprogname", scope: !361, file: !361, line: 54, type: !1157, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !360, retainedNodes: !472)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!56}
!1159 = !DILocation(line: 58, column: 10, scope: !1156)
!1160 = !DILocation(line: 58, column: 3, scope: !1156)
!1161 = distinct !DISubprogram(name: "rpl_mknod", scope: !363, file: !363, line: 47, type: !1162, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !362, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!52, !56, !693, !47}
!1164 = !{!1165, !1166, !1167}
!1165 = !DILocalVariable(name: "name", arg: 1, scope: !1161, file: !363, line: 47, type: !56)
!1166 = !DILocalVariable(name: "mode", arg: 2, scope: !1161, file: !363, line: 47, type: !693)
!1167 = !DILocalVariable(name: "dev", arg: 3, scope: !1161, file: !363, line: 47, type: !47)
!1168 = !DILocation(line: 0, scope: !1161)
!1169 = !DILocation(line: 68, column: 7, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1161, file: !363, line: 68, column: 7)
!1171 = !DILocation(line: 68, column: 23, scope: !1170)
!1172 = !DILocation(line: 69, column: 31, scope: !1170)
!1173 = !DILocation(line: 69, column: 12, scope: !1170)
!1174 = !DILocation(line: 69, column: 5, scope: !1170)
!1175 = !DILocation(line: 71, column: 10, scope: !1161)
!1176 = !DILocation(line: 71, column: 3, scope: !1161)
!1177 = !DILocation(line: 72, column: 1, scope: !1161)
!1178 = !DISubprogram(name: "mknod", scope: !883, file: !883, line: 404, type: !1179, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!52, !56, !694, !49}
!1181 = distinct !DISubprogram(name: "mode_compile", scope: !365, file: !365, line: 134, type: !1182, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1192)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!1184, !56}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mode_change", file: !365, line: 98, size: 128, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1185, file: !365, line: 100, baseType: !45, size: 8)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !1185, file: !365, line: 101, baseType: !45, size: 8, offset: 8)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "affected", scope: !1185, file: !365, line: 102, baseType: !693, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1185, file: !365, line: 103, baseType: !693, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mentioned", scope: !1185, file: !365, line: 104, baseType: !693, size: 32, offset: 96)
!1192 = !{!1193, !1194, !1197, !1198, !1199, !1200, !1201, !1203, !1205, !1206, !1207, !1211, !1213, !1214, !1215, !1216, !1219, !1220, !1221, !1222}
!1193 = !DILocalVariable(name: "mode_string", arg: 1, scope: !1181, file: !365, line: 134, type: !56)
!1194 = !DILocalVariable(name: "p", scope: !1195, file: !365, line: 138, type: !56)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !365, line: 137, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1181, file: !365, line: 136, column: 7)
!1197 = !DILocalVariable(name: "octal_mode", scope: !1195, file: !365, line: 139, type: !7)
!1198 = !DILocalVariable(name: "mode", scope: !1195, file: !365, line: 140, type: !693)
!1199 = !DILocalVariable(name: "mentioned", scope: !1195, file: !365, line: 141, type: !693)
!1200 = !DILocalVariable(name: "mc", scope: !1181, file: !365, line: 163, type: !1184)
!1201 = !DILocalVariable(name: "needed", scope: !1202, file: !365, line: 167, type: !54)
!1202 = distinct !DILexicalBlock(scope: !1181, file: !365, line: 166, column: 3)
!1203 = !DILocalVariable(name: "p", scope: !1204, file: !365, line: 168, type: !56)
!1204 = distinct !DILexicalBlock(scope: !1202, file: !365, line: 168, column: 5)
!1205 = !DILocalVariable(name: "used", scope: !1181, file: !365, line: 175, type: !54)
!1206 = !DILocalVariable(name: "p", scope: !1181, file: !365, line: 176, type: !56)
!1207 = !DILocalVariable(name: "affected", scope: !1208, file: !365, line: 180, type: !693)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !365, line: 178, column: 5)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !365, line: 177, column: 3)
!1210 = distinct !DILexicalBlock(scope: !1181, file: !365, line: 177, column: 3)
!1211 = !DILocalVariable(name: "op", scope: !1212, file: !365, line: 207, type: !45)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !365, line: 206, column: 9)
!1213 = !DILocalVariable(name: "value", scope: !1212, file: !365, line: 208, type: !693)
!1214 = !DILocalVariable(name: "mentioned", scope: !1212, file: !365, line: 209, type: !693)
!1215 = !DILocalVariable(name: "flag", scope: !1212, file: !365, line: 210, type: !45)
!1216 = !DILocalVariable(name: "octal_mode", scope: !1217, file: !365, line: 217, type: !7)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !365, line: 216, column: 15)
!1218 = distinct !DILexicalBlock(scope: !1212, file: !365, line: 213, column: 13)
!1219 = !DILocalVariable(name: "change", scope: !1212, file: !365, line: 287, type: !1184)
!1220 = !DILabel(scope: !1208, name: "no_more_affected", file: !365, line: 203)
!1221 = !DILabel(scope: !1218, name: "no_more_values", file: !365, line: 284)
!1222 = !DILabel(scope: !1181, name: "invalid", file: !365, line: 308)
!1223 = !DILocation(line: 0, scope: !1181)
!1224 = !DILocation(line: 136, column: 14, scope: !1196)
!1225 = !DILocation(line: 136, column: 27, scope: !1196)
!1226 = !DILocation(line: 146, column: 41, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !365, line: 145, column: 9)
!1228 = !DILocation(line: 0, scope: !1195)
!1229 = !DILocation(line: 146, column: 26, scope: !1227)
!1230 = !DILocation(line: 146, column: 43, scope: !1227)
!1231 = !DILocation(line: 146, column: 39, scope: !1227)
!1232 = !DILocation(line: 146, column: 46, scope: !1227)
!1233 = !DILocation(line: 147, column: 20, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !365, line: 147, column: 15)
!1235 = !DILocation(line: 147, column: 15, scope: !1227)
!1236 = !DILocation(line: 150, column: 21, scope: !1195)
!1237 = !DILocation(line: 150, column: 24, scope: !1195)
!1238 = distinct !{!1238, !1239, !1240, !525}
!1239 = !DILocation(line: 144, column: 7, scope: !1195)
!1240 = !DILocation(line: 150, column: 35, scope: !1195)
!1241 = !DILocation(line: 152, column: 11, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1195, file: !365, line: 152, column: 11)
!1243 = !DILocation(line: 152, column: 11, scope: !1195)
!1244 = !DILocation(line: 156, column: 22, scope: !1195)
!1245 = !DILocation(line: 156, column: 36, scope: !1195)
!1246 = !DILocation(line: 156, column: 20, scope: !1195)
!1247 = !DILocalVariable(name: "new_mode", arg: 1, scope: !1248, file: !365, line: 112, type: !693)
!1248 = distinct !DISubprogram(name: "make_node_op_equals", scope: !365, file: !365, line: 112, type: !1249, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1251)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!1184, !693, !693}
!1251 = !{!1247, !1252, !1253}
!1252 = !DILocalVariable(name: "mentioned", arg: 2, scope: !1248, file: !365, line: 112, type: !693)
!1253 = !DILocalVariable(name: "p", scope: !1248, file: !365, line: 114, type: !1184)
!1254 = !DILocation(line: 0, scope: !1248, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 159, column: 14, scope: !1195)
!1256 = !DILocation(line: 114, column: 27, scope: !1248, inlinedAt: !1255)
!1257 = !DILocation(line: 115, column: 9, scope: !1248, inlinedAt: !1255)
!1258 = !{!1259, !465, i64 0}
!1259 = !{!"mode_change", !465, i64 0, !465, i64 1, !559, i64 4, !559, i64 8, !559, i64 12}
!1260 = !DILocation(line: 116, column: 6, scope: !1248, inlinedAt: !1255)
!1261 = !DILocation(line: 116, column: 11, scope: !1248, inlinedAt: !1255)
!1262 = !{!1259, !465, i64 1}
!1263 = !DILocation(line: 117, column: 6, scope: !1248, inlinedAt: !1255)
!1264 = !DILocation(line: 117, column: 15, scope: !1248, inlinedAt: !1255)
!1265 = !{!1259, !559, i64 4}
!1266 = !DILocation(line: 118, column: 6, scope: !1248, inlinedAt: !1255)
!1267 = !DILocation(line: 118, column: 12, scope: !1248, inlinedAt: !1255)
!1268 = !{!1259, !559, i64 8}
!1269 = !DILocation(line: 119, column: 6, scope: !1248, inlinedAt: !1255)
!1270 = !DILocation(line: 119, column: 16, scope: !1248, inlinedAt: !1255)
!1271 = !{!1259, !559, i64 12}
!1272 = !DILocation(line: 120, column: 8, scope: !1248, inlinedAt: !1255)
!1273 = !DILocation(line: 120, column: 13, scope: !1248, inlinedAt: !1255)
!1274 = !DILocation(line: 159, column: 7, scope: !1195)
!1275 = !DILocation(line: 168, column: 39, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1204, file: !365, line: 168, column: 5)
!1277 = !DILocation(line: 0, scope: !1202)
!1278 = !DILocation(line: 0, scope: !1204)
!1279 = !DILocation(line: 168, column: 5, scope: !1204)
!1280 = !DILocation(line: 170, column: 10, scope: !1202)
!1281 = !DILocation(line: 177, column: 8, scope: !1210)
!1282 = !DILocation(line: 169, column: 41, scope: !1276)
!1283 = !DILocation(line: 169, column: 14, scope: !1276)
!1284 = !DILocation(line: 168, column: 44, scope: !1276)
!1285 = !DILocation(line: 168, column: 5, scope: !1276)
!1286 = distinct !{!1286, !1279, !1287, !525}
!1287 = !DILocation(line: 169, column: 53, scope: !1204)
!1288 = !DILocation(line: 175, column: 10, scope: !1181)
!1289 = !DILocation(line: 0, scope: !1210)
!1290 = !DILocation(line: 0, scope: !1212)
!1291 = !DILocation(line: 0, scope: !1208)
!1292 = !DILocation(line: 183, column: 7, scope: !1208)
!1293 = !DILocation(line: 184, column: 17, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !365, line: 183, column: 7)
!1295 = distinct !DILexicalBlock(scope: !1208, file: !365, line: 183, column: 7)
!1296 = !DILocation(line: 184, column: 9, scope: !1294)
!1297 = !DILocation(line: 212, column: 11, scope: !1212)
!1298 = !DILocation(line: 193, column: 13, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1294, file: !365, line: 185, column: 11)
!1300 = !DILocation(line: 196, column: 13, scope: !1299)
!1301 = !DILocation(line: 199, column: 13, scope: !1299)
!1302 = !DILocation(line: 0, scope: !1299)
!1303 = !DILocation(line: 183, column: 16, scope: !1294)
!1304 = !DILocation(line: 183, column: 7, scope: !1294)
!1305 = distinct !{!1305, !1306, !1307}
!1306 = !DILocation(line: 183, column: 7, scope: !1295)
!1307 = !DILocation(line: 202, column: 11, scope: !1295)
!1308 = !DILocation(line: 207, column: 21, scope: !1212)
!1309 = !DILocation(line: 180, column: 14, scope: !1208)
!1310 = !DILocation(line: 207, column: 23, scope: !1212)
!1311 = !DILocation(line: 212, column: 19, scope: !1212)
!1312 = !DILocation(line: 219, column: 17, scope: !1217)
!1313 = !DILocation(line: 221, column: 51, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1217, file: !365, line: 220, column: 19)
!1315 = !DILocation(line: 0, scope: !1217)
!1316 = !DILocation(line: 221, column: 36, scope: !1314)
!1317 = !DILocation(line: 221, column: 53, scope: !1314)
!1318 = !DILocation(line: 221, column: 49, scope: !1314)
!1319 = !DILocation(line: 221, column: 56, scope: !1314)
!1320 = !DILocation(line: 222, column: 30, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1314, file: !365, line: 222, column: 25)
!1322 = !DILocation(line: 222, column: 25, scope: !1314)
!1323 = !DILocation(line: 225, column: 31, scope: !1217)
!1324 = !DILocation(line: 225, column: 34, scope: !1217)
!1325 = distinct !{!1325, !1312, !1326, !525}
!1326 = !DILocation(line: 225, column: 45, scope: !1217)
!1327 = !DILocation(line: 227, column: 21, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1217, file: !365, line: 227, column: 21)
!1329 = !DILocation(line: 227, column: 30, scope: !1328)
!1330 = !DILocation(line: 227, column: 37, scope: !1328)
!1331 = !DILocation(line: 239, column: 16, scope: !1218)
!1332 = !DILocation(line: 240, column: 15, scope: !1218)
!1333 = !DILocation(line: 245, column: 16, scope: !1218)
!1334 = !DILocation(line: 246, column: 15, scope: !1218)
!1335 = !DILocation(line: 251, column: 16, scope: !1218)
!1336 = !DILocation(line: 252, column: 15, scope: !1218)
!1337 = !DILocation(line: 259, column: 25, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !365, line: 258, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1218, file: !365, line: 258, column: 15)
!1340 = !DILocation(line: 0, scope: !1218)
!1341 = !DILocation(line: 256, column: 20, scope: !1218)
!1342 = !DILocation(line: 259, column: 17, scope: !1338)
!1343 = !DILocation(line: 262, column: 27, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1338, file: !365, line: 260, column: 19)
!1345 = !DILocation(line: 263, column: 21, scope: !1344)
!1346 = !DILocation(line: 265, column: 27, scope: !1344)
!1347 = !DILocation(line: 266, column: 21, scope: !1344)
!1348 = !DILocation(line: 268, column: 27, scope: !1344)
!1349 = !DILocation(line: 269, column: 21, scope: !1344)
!1350 = !DILocation(line: 275, column: 27, scope: !1344)
!1351 = !DILocation(line: 276, column: 21, scope: !1344)
!1352 = !DILocation(line: 279, column: 27, scope: !1344)
!1353 = !DILocation(line: 280, column: 21, scope: !1344)
!1354 = !DILocation(line: 258, column: 24, scope: !1338)
!1355 = !DILocation(line: 258, column: 15, scope: !1338)
!1356 = distinct !{!1356, !1357, !1358}
!1357 = !DILocation(line: 258, column: 15, scope: !1339)
!1358 = !DILocation(line: 283, column: 19, scope: !1339)
!1359 = !DILocation(line: 209, column: 18, scope: !1212)
!1360 = !DILocation(line: 288, column: 28, scope: !1212)
!1361 = !DILocation(line: 289, column: 19, scope: !1212)
!1362 = !DILocation(line: 289, column: 22, scope: !1212)
!1363 = !DILocation(line: 290, column: 19, scope: !1212)
!1364 = !DILocation(line: 290, column: 24, scope: !1212)
!1365 = !DILocation(line: 291, column: 19, scope: !1212)
!1366 = !DILocation(line: 291, column: 28, scope: !1212)
!1367 = !DILocation(line: 292, column: 19, scope: !1212)
!1368 = !DILocation(line: 292, column: 25, scope: !1212)
!1369 = !DILocation(line: 294, column: 14, scope: !1212)
!1370 = !DILocation(line: 293, column: 19, scope: !1212)
!1371 = !DILocation(line: 293, column: 29, scope: !1212)
!1372 = !DILocation(line: 296, column: 14, scope: !1208)
!1373 = !DILocation(line: 296, column: 24, scope: !1208)
!1374 = !DILocation(line: 177, column: 28, scope: !1209)
!1375 = !DILocation(line: 177, column: 3, scope: !1209)
!1376 = distinct !{!1376, !1377, !1378}
!1377 = !DILocation(line: 177, column: 3, scope: !1210)
!1378 = !DILocation(line: 300, column: 5, scope: !1210)
!1379 = !DILocation(line: 304, column: 16, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !365, line: 303, column: 5)
!1381 = distinct !DILexicalBlock(scope: !1181, file: !365, line: 302, column: 7)
!1382 = !DILocation(line: 304, column: 21, scope: !1380)
!1383 = !DILocation(line: 305, column: 7, scope: !1380)
!1384 = !DILocation(line: 308, column: 1, scope: !1181)
!1385 = !DILocation(line: 309, column: 3, scope: !1181)
!1386 = !DILocation(line: 310, column: 3, scope: !1181)
!1387 = !DILocation(line: 311, column: 1, scope: !1181)
!1388 = distinct !DISubprogram(name: "mode_create_from_ref", scope: !365, file: !365, line: 317, type: !1182, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1389)
!1389 = !{!1390, !1391}
!1390 = !DILocalVariable(name: "ref_file", arg: 1, scope: !1388, file: !365, line: 317, type: !56)
!1391 = !DILocalVariable(name: "ref_stats", scope: !1388, file: !365, line: 319, type: !1392)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1393, line: 44, size: 1024, elements: !1394)
!1393 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1394 = !{!1395, !1396, !1398, !1399, !1401, !1403, !1405, !1406, !1407, !1408, !1410, !1411, !1413, !1421, !1422, !1423}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1392, file: !1393, line: 46, baseType: !49, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1392, file: !1393, line: 47, baseType: !1397, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !50, line: 148, baseType: !51)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1392, file: !1393, line: 48, baseType: !694, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1392, file: !1393, line: 49, baseType: !1400, size: 32, offset: 160)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !50, line: 151, baseType: !7)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1392, file: !1393, line: 50, baseType: !1402, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !50, line: 146, baseType: !7)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1392, file: !1393, line: 51, baseType: !1404, size: 32, offset: 224)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !50, line: 147, baseType: !7)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1392, file: !1393, line: 52, baseType: !49, size: 64, offset: 256)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1392, file: !1393, line: 53, baseType: !49, size: 64, offset: 320)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1392, file: !1393, line: 54, baseType: !112, size: 64, offset: 384)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1392, file: !1393, line: 55, baseType: !1409, size: 32, offset: 448)
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !50, line: 175, baseType: !52)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1392, file: !1393, line: 56, baseType: !52, size: 32, offset: 480)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1392, file: !1393, line: 57, baseType: !1412, size: 64, offset: 512)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !50, line: 180, baseType: !113)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1392, file: !1393, line: 65, baseType: !1414, size: 128, offset: 576)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1415, line: 11, size: 128, elements: !1416)
!1415 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1416 = !{!1417, !1419}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1414, file: !1415, line: 16, baseType: !1418, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !50, line: 160, baseType: !113)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1414, file: !1415, line: 21, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !50, line: 197, baseType: !113)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1392, file: !1393, line: 66, baseType: !1414, size: 128, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1392, file: !1393, line: 67, baseType: !1414, size: 128, offset: 832)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1392, file: !1393, line: 79, baseType: !1424, size: 64, offset: 960)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, elements: !251)
!1425 = !DILocation(line: 0, scope: !1388)
!1426 = !DILocation(line: 319, column: 3, scope: !1388)
!1427 = !DILocation(line: 319, column: 15, scope: !1388)
!1428 = !DILocation(line: 321, column: 7, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1388, file: !365, line: 321, column: 7)
!1430 = !DILocation(line: 321, column: 35, scope: !1429)
!1431 = !DILocation(line: 321, column: 7, scope: !1388)
!1432 = !DILocation(line: 323, column: 41, scope: !1388)
!1433 = !{!1434, !559, i64 16}
!1434 = !{!"stat", !822, i64 0, !822, i64 8, !559, i64 16, !559, i64 20, !559, i64 24, !559, i64 28, !822, i64 32, !822, i64 40, !822, i64 48, !559, i64 56, !559, i64 60, !822, i64 64, !1435, i64 72, !1435, i64 88, !1435, i64 104, !465, i64 120}
!1435 = !{!"timespec", !822, i64 0, !822, i64 8}
!1436 = !DILocation(line: 0, scope: !1248, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 323, column: 10, scope: !1388)
!1438 = !DILocation(line: 114, column: 27, scope: !1248, inlinedAt: !1437)
!1439 = !DILocation(line: 115, column: 9, scope: !1248, inlinedAt: !1437)
!1440 = !DILocation(line: 116, column: 6, scope: !1248, inlinedAt: !1437)
!1441 = !DILocation(line: 116, column: 11, scope: !1248, inlinedAt: !1437)
!1442 = !DILocation(line: 117, column: 6, scope: !1248, inlinedAt: !1437)
!1443 = !DILocation(line: 117, column: 15, scope: !1248, inlinedAt: !1437)
!1444 = !DILocation(line: 118, column: 6, scope: !1248, inlinedAt: !1437)
!1445 = !DILocation(line: 118, column: 12, scope: !1248, inlinedAt: !1437)
!1446 = !DILocation(line: 119, column: 6, scope: !1248, inlinedAt: !1437)
!1447 = !DILocation(line: 119, column: 16, scope: !1248, inlinedAt: !1437)
!1448 = !DILocation(line: 120, column: 8, scope: !1248, inlinedAt: !1437)
!1449 = !DILocation(line: 120, column: 13, scope: !1248, inlinedAt: !1437)
!1450 = !DILocation(line: 323, column: 3, scope: !1388)
!1451 = !DILocation(line: 324, column: 1, scope: !1388)
!1452 = !DISubprogram(name: "stat", scope: !883, file: !883, line: 205, type: !1453, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!52, !554, !1455}
!1455 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1457 = distinct !DISubprogram(name: "mode_adjust", scope: !365, file: !365, line: 340, type: !1458, scopeLine: 342, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !364, retainedNodes: !1463)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!693, !693, !73, !693, !1460, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1475, !1476, !1477}
!1464 = !DILocalVariable(name: "oldmode", arg: 1, scope: !1457, file: !365, line: 340, type: !693)
!1465 = !DILocalVariable(name: "dir", arg: 2, scope: !1457, file: !365, line: 340, type: !73)
!1466 = !DILocalVariable(name: "umask_value", arg: 3, scope: !1457, file: !365, line: 340, type: !693)
!1467 = !DILocalVariable(name: "changes", arg: 4, scope: !1457, file: !365, line: 341, type: !1460)
!1468 = !DILocalVariable(name: "pmode_bits", arg: 5, scope: !1457, file: !365, line: 341, type: !1462)
!1469 = !DILocalVariable(name: "newmode", scope: !1457, file: !365, line: 344, type: !693)
!1470 = !DILocalVariable(name: "mode_bits", scope: !1457, file: !365, line: 347, type: !693)
!1471 = !DILocalVariable(name: "affected", scope: !1472, file: !365, line: 351, type: !693)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !365, line: 350, column: 5)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !365, line: 349, column: 3)
!1474 = distinct !DILexicalBlock(scope: !1457, file: !365, line: 349, column: 3)
!1475 = !DILocalVariable(name: "omit_change", scope: !1472, file: !365, line: 352, type: !693)
!1476 = !DILocalVariable(name: "value", scope: !1472, file: !365, line: 354, type: !693)
!1477 = !DILocalVariable(name: "preserved", scope: !1478, file: !365, line: 394, type: !693)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !365, line: 393, column: 11)
!1479 = distinct !DILexicalBlock(scope: !1472, file: !365, line: 388, column: 9)
!1480 = !DILocation(line: 0, scope: !1457)
!1481 = !DILocation(line: 344, column: 28, scope: !1457)
!1482 = !DILocation(line: 349, column: 19, scope: !1473)
!1483 = !DILocation(line: 349, column: 24, scope: !1473)
!1484 = !DILocation(line: 349, column: 3, scope: !1474)
!1485 = !DILocation(line: 351, column: 34, scope: !1472)
!1486 = !DILocation(line: 0, scope: !1472)
!1487 = !DILocation(line: 353, column: 52, scope: !1472)
!1488 = !DILocation(line: 353, column: 41, scope: !1472)
!1489 = !DILocation(line: 353, column: 39, scope: !1472)
!1490 = !DILocation(line: 354, column: 31, scope: !1472)
!1491 = !DILocation(line: 356, column: 7, scope: !1472)
!1492 = !DILocation(line: 363, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1472, file: !365, line: 357, column: 9)
!1494 = !DILocation(line: 366, column: 28, scope: !1493)
!1495 = !DILocation(line: 366, column: 22, scope: !1493)
!1496 = !DILocation(line: 368, column: 30, scope: !1493)
!1497 = !DILocation(line: 368, column: 24, scope: !1493)
!1498 = !DILocation(line: 370, column: 30, scope: !1493)
!1499 = !DILocation(line: 370, column: 24, scope: !1493)
!1500 = !DILocation(line: 368, column: 21, scope: !1493)
!1501 = !DILocation(line: 370, column: 21, scope: !1493)
!1502 = !DILocation(line: 366, column: 17, scope: !1493)
!1503 = !DILocation(line: 372, column: 11, scope: !1493)
!1504 = !DILocation(line: 377, column: 24, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1493, file: !365, line: 377, column: 15)
!1506 = !DILocation(line: 377, column: 57, scope: !1505)
!1507 = !DILocation(line: 377, column: 15, scope: !1493)
!1508 = !DILocation(line: 385, column: 17, scope: !1472)
!1509 = !DILocation(line: 385, column: 55, scope: !1472)
!1510 = !DILocation(line: 385, column: 53, scope: !1472)
!1511 = !DILocation(line: 385, column: 13, scope: !1472)
!1512 = !DILocation(line: 387, column: 24, scope: !1472)
!1513 = !DILocation(line: 387, column: 7, scope: !1472)
!1514 = !DILocation(line: 394, column: 33, scope: !1478)
!1515 = !DILocation(line: 394, column: 59, scope: !1478)
!1516 = !DILocation(line: 0, scope: !1478)
!1517 = !DILocation(line: 395, column: 42, scope: !1478)
!1518 = !DILocation(line: 395, column: 23, scope: !1478)
!1519 = !DILocation(line: 396, column: 32, scope: !1478)
!1520 = !DILocation(line: 396, column: 45, scope: !1478)
!1521 = !DILocation(line: 401, column: 21, scope: !1479)
!1522 = !DILocation(line: 402, column: 19, scope: !1479)
!1523 = !DILocation(line: 403, column: 11, scope: !1479)
!1524 = !DILocation(line: 406, column: 21, scope: !1479)
!1525 = !DILocation(line: 407, column: 22, scope: !1479)
!1526 = !DILocation(line: 407, column: 19, scope: !1479)
!1527 = !DILocation(line: 408, column: 11, scope: !1479)
!1528 = !DILocation(line: 349, column: 45, scope: !1473)
!1529 = distinct !{!1529, !1484, !1530, !525}
!1530 = !DILocation(line: 410, column: 5, scope: !1474)
!1531 = !DILocation(line: 347, column: 10, scope: !1457)
!1532 = !DILocation(line: 344, column: 10, scope: !1457)
!1533 = !DILocation(line: 412, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1457, file: !365, line: 412, column: 7)
!1535 = !DILocation(line: 412, column: 7, scope: !1457)
!1536 = !DILocation(line: 413, column: 17, scope: !1534)
!1537 = !DILocation(line: 413, column: 5, scope: !1534)
!1538 = !DILocation(line: 414, column: 3, scope: !1457)
!1539 = distinct !DISubprogram(name: "set_program_name", scope: !214, file: !214, line: 37, type: !484, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DILocalVariable(name: "argv0", arg: 1, scope: !1539, file: !214, line: 37, type: !56)
!1542 = !DILocalVariable(name: "slash", scope: !1539, file: !214, line: 44, type: !56)
!1543 = !DILocalVariable(name: "base", scope: !1539, file: !214, line: 45, type: !56)
!1544 = !DILocation(line: 0, scope: !1539)
!1545 = !DILocation(line: 44, column: 23, scope: !1539)
!1546 = !DILocation(line: 45, column: 22, scope: !1539)
!1547 = !DILocation(line: 46, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1539, file: !214, line: 46, column: 7)
!1549 = !DILocation(line: 46, column: 9, scope: !1548)
!1550 = !DILocation(line: 46, column: 25, scope: !1548)
!1551 = !DILocation(line: 46, column: 40, scope: !1548)
!1552 = !DILocalVariable(name: "__s1", arg: 1, scope: !1553, file: !509, line: 974, type: !676)
!1553 = distinct !DISubprogram(name: "memeq", scope: !509, file: !509, line: 974, type: !1554, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !213, retainedNodes: !1556)
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!73, !676, !676, !54}
!1556 = !{!1552, !1557, !1558}
!1557 = !DILocalVariable(name: "__s2", arg: 2, scope: !1553, file: !509, line: 974, type: !676)
!1558 = !DILocalVariable(name: "__n", arg: 3, scope: !1553, file: !509, line: 974, type: !54)
!1559 = !DILocation(line: 0, scope: !1553, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 46, column: 28, scope: !1548)
!1561 = !DILocation(line: 976, column: 11, scope: !1553, inlinedAt: !1560)
!1562 = !DILocation(line: 976, column: 10, scope: !1553, inlinedAt: !1560)
!1563 = !DILocation(line: 46, column: 7, scope: !1539)
!1564 = !DILocation(line: 49, column: 11, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !214, line: 49, column: 11)
!1566 = distinct !DILexicalBlock(scope: !1548, file: !214, line: 47, column: 5)
!1567 = !DILocation(line: 49, column: 36, scope: !1565)
!1568 = !DILocation(line: 49, column: 11, scope: !1566)
!1569 = !DILocation(line: 65, column: 16, scope: !1539)
!1570 = !DILocation(line: 71, column: 27, scope: !1539)
!1571 = !DILocation(line: 74, column: 33, scope: !1539)
!1572 = !DILocation(line: 76, column: 1, scope: !1539)
!1573 = !DILocation(line: 0, scope: !219)
!1574 = !DILocation(line: 40, column: 29, scope: !219)
!1575 = !DILocation(line: 41, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !219, file: !220, line: 41, column: 7)
!1577 = !DILocation(line: 41, column: 7, scope: !219)
!1578 = !DILocation(line: 47, column: 3, scope: !219)
!1579 = !DILocation(line: 48, column: 3, scope: !219)
!1580 = !DILocation(line: 48, column: 13, scope: !219)
!1581 = !DILocalVariable(name: "ps", arg: 1, scope: !1582, file: !1583, line: 1135, type: !1586)
!1582 = distinct !DISubprogram(name: "mbszero", scope: !1583, file: !1583, line: 1135, type: !1584, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !1587)
!1583 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1586}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!1587 = !{!1581}
!1588 = !DILocation(line: 0, scope: !1582, inlinedAt: !1589)
!1589 = distinct !DILocation(line: 48, column: 18, scope: !219)
!1590 = !DILocalVariable(name: "__dest", arg: 1, scope: !1591, file: !1592, line: 57, type: !46)
!1591 = distinct !DISubprogram(name: "memset", scope: !1592, file: !1592, line: 57, type: !1593, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !223, retainedNodes: !1595)
!1592 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!46, !46, !52, !54}
!1595 = !{!1590, !1596, !1597}
!1596 = !DILocalVariable(name: "__ch", arg: 2, scope: !1591, file: !1592, line: 57, type: !52)
!1597 = !DILocalVariable(name: "__len", arg: 3, scope: !1591, file: !1592, line: 57, type: !54)
!1598 = !DILocation(line: 0, scope: !1591, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 1137, column: 3, scope: !1582, inlinedAt: !1589)
!1600 = !DILocation(line: 59, column: 10, scope: !1591, inlinedAt: !1599)
!1601 = !DILocation(line: 49, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !219, file: !220, line: 49, column: 7)
!1603 = !DILocation(line: 49, column: 39, scope: !1602)
!1604 = !DILocation(line: 49, column: 44, scope: !1602)
!1605 = !DILocation(line: 54, column: 1, scope: !219)
!1606 = !DISubprogram(name: "mbrtoc32", scope: !231, file: !231, line: 57, type: !1607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!54, !1609, !554, !54, !1611}
!1609 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1610)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1586)
!1612 = distinct !DISubprogram(name: "clone_quoting_options", scope: !256, file: !256, line: 113, type: !1613, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1616)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!1615, !1615}
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1616 = !{!1617, !1618, !1619}
!1617 = !DILocalVariable(name: "o", arg: 1, scope: !1612, file: !256, line: 113, type: !1615)
!1618 = !DILocalVariable(name: "saved_errno", scope: !1612, file: !256, line: 115, type: !52)
!1619 = !DILocalVariable(name: "p", scope: !1612, file: !256, line: 116, type: !1615)
!1620 = !DILocation(line: 0, scope: !1612)
!1621 = !DILocation(line: 115, column: 21, scope: !1612)
!1622 = !DILocation(line: 116, column: 40, scope: !1612)
!1623 = !DILocation(line: 116, column: 31, scope: !1612)
!1624 = !DILocation(line: 118, column: 9, scope: !1612)
!1625 = !DILocation(line: 119, column: 3, scope: !1612)
!1626 = distinct !DISubprogram(name: "get_quoting_style", scope: !256, file: !256, line: 124, type: !1627, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1631)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!14, !1629}
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!1631 = !{!1632}
!1632 = !DILocalVariable(name: "o", arg: 1, scope: !1626, file: !256, line: 124, type: !1629)
!1633 = !DILocation(line: 0, scope: !1626)
!1634 = !DILocation(line: 126, column: 11, scope: !1626)
!1635 = !DILocation(line: 126, column: 46, scope: !1626)
!1636 = !{!1637, !465, i64 0}
!1637 = !{!"quoting_options", !465, i64 0, !559, i64 4, !465, i64 8, !464, i64 40, !464, i64 48}
!1638 = !DILocation(line: 126, column: 3, scope: !1626)
!1639 = distinct !DISubprogram(name: "set_quoting_style", scope: !256, file: !256, line: 132, type: !1640, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1642)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null, !1615, !14}
!1642 = !{!1643, !1644}
!1643 = !DILocalVariable(name: "o", arg: 1, scope: !1639, file: !256, line: 132, type: !1615)
!1644 = !DILocalVariable(name: "s", arg: 2, scope: !1639, file: !256, line: 132, type: !14)
!1645 = !DILocation(line: 0, scope: !1639)
!1646 = !DILocation(line: 134, column: 4, scope: !1639)
!1647 = !DILocation(line: 134, column: 39, scope: !1639)
!1648 = !DILocation(line: 134, column: 45, scope: !1639)
!1649 = !DILocation(line: 135, column: 1, scope: !1639)
!1650 = distinct !DISubprogram(name: "set_char_quoting", scope: !256, file: !256, line: 143, type: !1651, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1653)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!52, !1615, !45, !52}
!1653 = !{!1654, !1655, !1656, !1657, !1658, !1660, !1661}
!1654 = !DILocalVariable(name: "o", arg: 1, scope: !1650, file: !256, line: 143, type: !1615)
!1655 = !DILocalVariable(name: "c", arg: 2, scope: !1650, file: !256, line: 143, type: !45)
!1656 = !DILocalVariable(name: "i", arg: 3, scope: !1650, file: !256, line: 143, type: !52)
!1657 = !DILocalVariable(name: "uc", scope: !1650, file: !256, line: 145, type: !58)
!1658 = !DILocalVariable(name: "p", scope: !1650, file: !256, line: 146, type: !1659)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1660 = !DILocalVariable(name: "shift", scope: !1650, file: !256, line: 148, type: !52)
!1661 = !DILocalVariable(name: "r", scope: !1650, file: !256, line: 149, type: !7)
!1662 = !DILocation(line: 0, scope: !1650)
!1663 = !DILocation(line: 147, column: 6, scope: !1650)
!1664 = !DILocation(line: 147, column: 62, scope: !1650)
!1665 = !DILocation(line: 147, column: 57, scope: !1650)
!1666 = !DILocation(line: 148, column: 15, scope: !1650)
!1667 = !DILocation(line: 149, column: 21, scope: !1650)
!1668 = !DILocation(line: 149, column: 24, scope: !1650)
!1669 = !DILocation(line: 149, column: 34, scope: !1650)
!1670 = !DILocation(line: 150, column: 13, scope: !1650)
!1671 = !DILocation(line: 150, column: 19, scope: !1650)
!1672 = !DILocation(line: 150, column: 24, scope: !1650)
!1673 = !DILocation(line: 150, column: 6, scope: !1650)
!1674 = !DILocation(line: 151, column: 3, scope: !1650)
!1675 = distinct !DISubprogram(name: "set_quoting_flags", scope: !256, file: !256, line: 159, type: !1676, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1678)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!52, !1615, !52}
!1678 = !{!1679, !1680, !1681}
!1679 = !DILocalVariable(name: "o", arg: 1, scope: !1675, file: !256, line: 159, type: !1615)
!1680 = !DILocalVariable(name: "i", arg: 2, scope: !1675, file: !256, line: 159, type: !52)
!1681 = !DILocalVariable(name: "r", scope: !1675, file: !256, line: 163, type: !52)
!1682 = !DILocation(line: 0, scope: !1675)
!1683 = !DILocation(line: 161, column: 8, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1675, file: !256, line: 161, column: 7)
!1685 = !DILocation(line: 161, column: 7, scope: !1675)
!1686 = !DILocation(line: 163, column: 14, scope: !1675)
!1687 = !{!1637, !559, i64 4}
!1688 = !DILocation(line: 164, column: 12, scope: !1675)
!1689 = !DILocation(line: 165, column: 3, scope: !1675)
!1690 = distinct !DISubprogram(name: "set_custom_quoting", scope: !256, file: !256, line: 169, type: !1691, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1693)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{null, !1615, !56, !56}
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "o", arg: 1, scope: !1690, file: !256, line: 169, type: !1615)
!1695 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1690, file: !256, line: 170, type: !56)
!1696 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1690, file: !256, line: 170, type: !56)
!1697 = !DILocation(line: 0, scope: !1690)
!1698 = !DILocation(line: 172, column: 8, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1690, file: !256, line: 172, column: 7)
!1700 = !DILocation(line: 172, column: 7, scope: !1690)
!1701 = !DILocation(line: 174, column: 6, scope: !1690)
!1702 = !DILocation(line: 174, column: 12, scope: !1690)
!1703 = !DILocation(line: 175, column: 8, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1690, file: !256, line: 175, column: 7)
!1705 = !DILocation(line: 175, column: 19, scope: !1704)
!1706 = !DILocation(line: 176, column: 5, scope: !1704)
!1707 = !DILocation(line: 177, column: 6, scope: !1690)
!1708 = !DILocation(line: 177, column: 17, scope: !1690)
!1709 = !{!1637, !464, i64 40}
!1710 = !DILocation(line: 178, column: 6, scope: !1690)
!1711 = !DILocation(line: 178, column: 18, scope: !1690)
!1712 = !{!1637, !464, i64 48}
!1713 = !DILocation(line: 179, column: 1, scope: !1690)
!1714 = distinct !DISubprogram(name: "quotearg_buffer", scope: !256, file: !256, line: 774, type: !1715, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1717)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!54, !44, !54, !56, !54, !1629}
!1717 = !{!1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725}
!1718 = !DILocalVariable(name: "buffer", arg: 1, scope: !1714, file: !256, line: 774, type: !44)
!1719 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1714, file: !256, line: 774, type: !54)
!1720 = !DILocalVariable(name: "arg", arg: 3, scope: !1714, file: !256, line: 775, type: !56)
!1721 = !DILocalVariable(name: "argsize", arg: 4, scope: !1714, file: !256, line: 775, type: !54)
!1722 = !DILocalVariable(name: "o", arg: 5, scope: !1714, file: !256, line: 776, type: !1629)
!1723 = !DILocalVariable(name: "p", scope: !1714, file: !256, line: 778, type: !1629)
!1724 = !DILocalVariable(name: "saved_errno", scope: !1714, file: !256, line: 779, type: !52)
!1725 = !DILocalVariable(name: "r", scope: !1714, file: !256, line: 780, type: !54)
!1726 = !DILocation(line: 0, scope: !1714)
!1727 = !DILocation(line: 778, column: 37, scope: !1714)
!1728 = !DILocation(line: 779, column: 21, scope: !1714)
!1729 = !DILocation(line: 781, column: 43, scope: !1714)
!1730 = !DILocation(line: 781, column: 53, scope: !1714)
!1731 = !DILocation(line: 781, column: 60, scope: !1714)
!1732 = !DILocation(line: 782, column: 43, scope: !1714)
!1733 = !DILocation(line: 782, column: 58, scope: !1714)
!1734 = !DILocation(line: 780, column: 14, scope: !1714)
!1735 = !DILocation(line: 783, column: 9, scope: !1714)
!1736 = !DILocation(line: 784, column: 3, scope: !1714)
!1737 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !256, file: !256, line: 251, type: !1738, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1742)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!54, !44, !54, !56, !54, !14, !52, !1740, !56, !56}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1742 = !{!1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1767, !1769, !1772, !1773, !1774, !1775, !1778, !1779, !1782, !1786, !1787, !1795, !1798, !1799, !1801, !1802, !1803, !1804}
!1743 = !DILocalVariable(name: "buffer", arg: 1, scope: !1737, file: !256, line: 251, type: !44)
!1744 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1737, file: !256, line: 251, type: !54)
!1745 = !DILocalVariable(name: "arg", arg: 3, scope: !1737, file: !256, line: 252, type: !56)
!1746 = !DILocalVariable(name: "argsize", arg: 4, scope: !1737, file: !256, line: 252, type: !54)
!1747 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1737, file: !256, line: 253, type: !14)
!1748 = !DILocalVariable(name: "flags", arg: 6, scope: !1737, file: !256, line: 253, type: !52)
!1749 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1737, file: !256, line: 254, type: !1740)
!1750 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1737, file: !256, line: 255, type: !56)
!1751 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1737, file: !256, line: 256, type: !56)
!1752 = !DILocalVariable(name: "unibyte_locale", scope: !1737, file: !256, line: 258, type: !73)
!1753 = !DILocalVariable(name: "len", scope: !1737, file: !256, line: 260, type: !54)
!1754 = !DILocalVariable(name: "orig_buffersize", scope: !1737, file: !256, line: 261, type: !54)
!1755 = !DILocalVariable(name: "quote_string", scope: !1737, file: !256, line: 262, type: !56)
!1756 = !DILocalVariable(name: "quote_string_len", scope: !1737, file: !256, line: 263, type: !54)
!1757 = !DILocalVariable(name: "backslash_escapes", scope: !1737, file: !256, line: 264, type: !73)
!1758 = !DILocalVariable(name: "elide_outer_quotes", scope: !1737, file: !256, line: 265, type: !73)
!1759 = !DILocalVariable(name: "encountered_single_quote", scope: !1737, file: !256, line: 266, type: !73)
!1760 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1737, file: !256, line: 267, type: !73)
!1761 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1737, file: !256, line: 309, type: !73)
!1762 = !DILocalVariable(name: "lq", scope: !1763, file: !256, line: 361, type: !56)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !256, line: 361, column: 11)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !256, line: 360, column: 13)
!1765 = distinct !DILexicalBlock(scope: !1766, file: !256, line: 333, column: 7)
!1766 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 312, column: 5)
!1767 = !DILocalVariable(name: "i", scope: !1768, file: !256, line: 395, type: !54)
!1768 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 395, column: 3)
!1769 = !DILocalVariable(name: "is_right_quote", scope: !1770, file: !256, line: 397, type: !73)
!1770 = distinct !DILexicalBlock(scope: !1771, file: !256, line: 396, column: 5)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !256, line: 395, column: 3)
!1772 = !DILocalVariable(name: "escaping", scope: !1770, file: !256, line: 398, type: !73)
!1773 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1770, file: !256, line: 399, type: !73)
!1774 = !DILocalVariable(name: "c", scope: !1770, file: !256, line: 417, type: !58)
!1775 = !DILocalVariable(name: "m", scope: !1776, file: !256, line: 598, type: !54)
!1776 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 596, column: 11)
!1777 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 419, column: 9)
!1778 = !DILocalVariable(name: "printable", scope: !1776, file: !256, line: 600, type: !73)
!1779 = !DILocalVariable(name: "mbs", scope: !1780, file: !256, line: 609, type: !301)
!1780 = distinct !DILexicalBlock(scope: !1781, file: !256, line: 608, column: 15)
!1781 = distinct !DILexicalBlock(scope: !1776, file: !256, line: 602, column: 17)
!1782 = !DILocalVariable(name: "w", scope: !1783, file: !256, line: 618, type: !230)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !256, line: 617, column: 19)
!1784 = distinct !DILexicalBlock(scope: !1785, file: !256, line: 616, column: 17)
!1785 = distinct !DILexicalBlock(scope: !1780, file: !256, line: 616, column: 17)
!1786 = !DILocalVariable(name: "bytes", scope: !1783, file: !256, line: 619, type: !54)
!1787 = !DILocalVariable(name: "j", scope: !1788, file: !256, line: 648, type: !54)
!1788 = distinct !DILexicalBlock(scope: !1789, file: !256, line: 648, column: 29)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !256, line: 647, column: 27)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !256, line: 645, column: 29)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !256, line: 636, column: 23)
!1792 = distinct !DILexicalBlock(scope: !1793, file: !256, line: 628, column: 30)
!1793 = distinct !DILexicalBlock(scope: !1794, file: !256, line: 623, column: 30)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !256, line: 621, column: 25)
!1795 = !DILocalVariable(name: "ilim", scope: !1796, file: !256, line: 674, type: !54)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !256, line: 671, column: 15)
!1797 = distinct !DILexicalBlock(scope: !1776, file: !256, line: 670, column: 17)
!1798 = !DILabel(scope: !1737, name: "process_input", file: !256, line: 308)
!1799 = !DILabel(scope: !1800, name: "c_and_shell_escape", file: !256, line: 502)
!1800 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 478, column: 9)
!1801 = !DILabel(scope: !1800, name: "c_escape", file: !256, line: 507)
!1802 = !DILabel(scope: !1770, name: "store_escape", file: !256, line: 709)
!1803 = !DILabel(scope: !1770, name: "store_c", file: !256, line: 712)
!1804 = !DILabel(scope: !1737, name: "force_outer_quoting_style", file: !256, line: 753)
!1805 = !DILocation(line: 0, scope: !1737)
!1806 = !DILocation(line: 258, column: 25, scope: !1737)
!1807 = !DILocation(line: 258, column: 36, scope: !1737)
!1808 = !DILocation(line: 267, column: 3, scope: !1737)
!1809 = !DILocation(line: 261, column: 10, scope: !1737)
!1810 = !DILocation(line: 262, column: 15, scope: !1737)
!1811 = !DILocation(line: 263, column: 10, scope: !1737)
!1812 = !DILocation(line: 308, column: 2, scope: !1737)
!1813 = !DILocation(line: 311, column: 3, scope: !1737)
!1814 = !DILocation(line: 318, column: 11, scope: !1766)
!1815 = !DILocation(line: 319, column: 9, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !256, line: 319, column: 9)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !256, line: 319, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1766, file: !256, line: 318, column: 11)
!1819 = !DILocation(line: 319, column: 9, scope: !1817)
!1820 = !DILocation(line: 0, scope: !292, inlinedAt: !1821)
!1821 = distinct !DILocation(line: 357, column: 26, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !256, line: 335, column: 11)
!1823 = distinct !DILexicalBlock(scope: !1765, file: !256, line: 334, column: 13)
!1824 = !DILocation(line: 199, column: 29, scope: !292, inlinedAt: !1821)
!1825 = !DILocation(line: 201, column: 19, scope: !1826, inlinedAt: !1821)
!1826 = distinct !DILexicalBlock(scope: !292, file: !256, line: 201, column: 7)
!1827 = !DILocation(line: 201, column: 7, scope: !292, inlinedAt: !1821)
!1828 = !DILocation(line: 229, column: 3, scope: !292, inlinedAt: !1821)
!1829 = !DILocation(line: 230, column: 3, scope: !292, inlinedAt: !1821)
!1830 = !DILocation(line: 230, column: 13, scope: !292, inlinedAt: !1821)
!1831 = !DILocalVariable(name: "ps", arg: 1, scope: !1832, file: !1583, line: 1135, type: !1835)
!1832 = distinct !DISubprogram(name: "mbszero", scope: !1583, file: !1583, line: 1135, type: !1833, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1836)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !1835}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!1836 = !{!1831}
!1837 = !DILocation(line: 0, scope: !1832, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 230, column: 18, scope: !292, inlinedAt: !1821)
!1839 = !DILocalVariable(name: "__dest", arg: 1, scope: !1840, file: !1592, line: 57, type: !46)
!1840 = distinct !DISubprogram(name: "memset", scope: !1592, file: !1592, line: 57, type: !1593, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1841)
!1841 = !{!1839, !1842, !1843}
!1842 = !DILocalVariable(name: "__ch", arg: 2, scope: !1840, file: !1592, line: 57, type: !52)
!1843 = !DILocalVariable(name: "__len", arg: 3, scope: !1840, file: !1592, line: 57, type: !54)
!1844 = !DILocation(line: 0, scope: !1840, inlinedAt: !1845)
!1845 = distinct !DILocation(line: 1137, column: 3, scope: !1832, inlinedAt: !1838)
!1846 = !DILocation(line: 59, column: 10, scope: !1840, inlinedAt: !1845)
!1847 = !DILocation(line: 231, column: 7, scope: !1848, inlinedAt: !1821)
!1848 = distinct !DILexicalBlock(scope: !292, file: !256, line: 231, column: 7)
!1849 = !DILocation(line: 231, column: 40, scope: !1848, inlinedAt: !1821)
!1850 = !DILocation(line: 231, column: 45, scope: !1848, inlinedAt: !1821)
!1851 = !DILocation(line: 235, column: 1, scope: !292, inlinedAt: !1821)
!1852 = !DILocation(line: 0, scope: !292, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 358, column: 27, scope: !1822)
!1854 = !DILocation(line: 199, column: 29, scope: !292, inlinedAt: !1853)
!1855 = !DILocation(line: 201, column: 19, scope: !1826, inlinedAt: !1853)
!1856 = !DILocation(line: 201, column: 7, scope: !292, inlinedAt: !1853)
!1857 = !DILocation(line: 229, column: 3, scope: !292, inlinedAt: !1853)
!1858 = !DILocation(line: 230, column: 3, scope: !292, inlinedAt: !1853)
!1859 = !DILocation(line: 230, column: 13, scope: !292, inlinedAt: !1853)
!1860 = !DILocation(line: 0, scope: !1832, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 230, column: 18, scope: !292, inlinedAt: !1853)
!1862 = !DILocation(line: 0, scope: !1840, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 1137, column: 3, scope: !1832, inlinedAt: !1861)
!1864 = !DILocation(line: 59, column: 10, scope: !1840, inlinedAt: !1863)
!1865 = !DILocation(line: 231, column: 7, scope: !1848, inlinedAt: !1853)
!1866 = !DILocation(line: 231, column: 40, scope: !1848, inlinedAt: !1853)
!1867 = !DILocation(line: 231, column: 45, scope: !1848, inlinedAt: !1853)
!1868 = !DILocation(line: 235, column: 1, scope: !292, inlinedAt: !1853)
!1869 = !DILocation(line: 360, column: 13, scope: !1765)
!1870 = !DILocation(line: 0, scope: !1763)
!1871 = !DILocation(line: 361, column: 45, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1763, file: !256, line: 361, column: 11)
!1873 = !DILocation(line: 361, column: 11, scope: !1763)
!1874 = !DILocation(line: 362, column: 13, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !256, line: 362, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !256, line: 362, column: 13)
!1877 = !DILocation(line: 362, column: 13, scope: !1876)
!1878 = !DILocation(line: 361, column: 52, scope: !1872)
!1879 = distinct !{!1879, !1873, !1880, !525}
!1880 = !DILocation(line: 362, column: 13, scope: !1763)
!1881 = !DILocation(line: 260, column: 10, scope: !1737)
!1882 = !DILocation(line: 365, column: 28, scope: !1765)
!1883 = !DILocation(line: 367, column: 7, scope: !1766)
!1884 = !DILocation(line: 370, column: 7, scope: !1766)
!1885 = !DILocation(line: 376, column: 11, scope: !1766)
!1886 = !DILocation(line: 381, column: 11, scope: !1766)
!1887 = !DILocation(line: 382, column: 9, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !256, line: 382, column: 9)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !256, line: 382, column: 9)
!1890 = distinct !DILexicalBlock(scope: !1766, file: !256, line: 381, column: 11)
!1891 = !DILocation(line: 382, column: 9, scope: !1889)
!1892 = !DILocation(line: 389, column: 7, scope: !1766)
!1893 = !DILocation(line: 392, column: 7, scope: !1766)
!1894 = !DILocation(line: 0, scope: !1768)
!1895 = !DILocation(line: 395, column: 8, scope: !1768)
!1896 = !DILocation(line: 395, column: 34, scope: !1771)
!1897 = !DILocation(line: 395, column: 26, scope: !1771)
!1898 = !DILocation(line: 395, column: 48, scope: !1771)
!1899 = !DILocation(line: 395, column: 55, scope: !1771)
!1900 = !DILocation(line: 395, column: 3, scope: !1768)
!1901 = !DILocation(line: 395, column: 67, scope: !1771)
!1902 = !DILocation(line: 0, scope: !1770)
!1903 = !DILocation(line: 402, column: 11, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 401, column: 11)
!1905 = !DILocation(line: 404, column: 17, scope: !1904)
!1906 = !DILocation(line: 405, column: 39, scope: !1904)
!1907 = !DILocation(line: 409, column: 32, scope: !1904)
!1908 = !DILocation(line: 405, column: 19, scope: !1904)
!1909 = !DILocation(line: 405, column: 15, scope: !1904)
!1910 = !DILocation(line: 410, column: 11, scope: !1904)
!1911 = !DILocation(line: 410, column: 25, scope: !1904)
!1912 = !DILocalVariable(name: "__s1", arg: 1, scope: !1913, file: !509, line: 974, type: !676)
!1913 = distinct !DISubprogram(name: "memeq", scope: !509, file: !509, line: 974, type: !1554, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !1914)
!1914 = !{!1912, !1915, !1916}
!1915 = !DILocalVariable(name: "__s2", arg: 2, scope: !1913, file: !509, line: 974, type: !676)
!1916 = !DILocalVariable(name: "__n", arg: 3, scope: !1913, file: !509, line: 974, type: !54)
!1917 = !DILocation(line: 0, scope: !1913, inlinedAt: !1918)
!1918 = distinct !DILocation(line: 410, column: 14, scope: !1904)
!1919 = !DILocation(line: 976, column: 11, scope: !1913, inlinedAt: !1918)
!1920 = !DILocation(line: 976, column: 10, scope: !1913, inlinedAt: !1918)
!1921 = !DILocation(line: 401, column: 11, scope: !1770)
!1922 = !DILocation(line: 417, column: 25, scope: !1770)
!1923 = !DILocation(line: 418, column: 7, scope: !1770)
!1924 = !DILocation(line: 421, column: 15, scope: !1777)
!1925 = !DILocation(line: 423, column: 15, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1927, file: !256, line: 423, column: 15)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !256, line: 422, column: 13)
!1928 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 421, column: 15)
!1929 = !DILocation(line: 423, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1926, file: !256, line: 423, column: 15)
!1931 = !DILocation(line: 423, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !256, line: 423, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !256, line: 423, column: 15)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !256, line: 423, column: 15)
!1935 = !DILocation(line: 423, column: 15, scope: !1933)
!1936 = !DILocation(line: 423, column: 15, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !256, line: 423, column: 15)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !256, line: 423, column: 15)
!1939 = !DILocation(line: 423, column: 15, scope: !1938)
!1940 = !DILocation(line: 423, column: 15, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !256, line: 423, column: 15)
!1942 = distinct !DILexicalBlock(scope: !1934, file: !256, line: 423, column: 15)
!1943 = !DILocation(line: 423, column: 15, scope: !1942)
!1944 = !DILocation(line: 423, column: 15, scope: !1934)
!1945 = !DILocation(line: 423, column: 15, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !256, line: 423, column: 15)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !256, line: 423, column: 15)
!1948 = !DILocation(line: 423, column: 15, scope: !1947)
!1949 = !DILocation(line: 431, column: 19, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1927, file: !256, line: 430, column: 19)
!1951 = !DILocation(line: 431, column: 24, scope: !1950)
!1952 = !DILocation(line: 431, column: 28, scope: !1950)
!1953 = !DILocation(line: 431, column: 38, scope: !1950)
!1954 = !DILocation(line: 431, column: 48, scope: !1950)
!1955 = !DILocation(line: 431, column: 59, scope: !1950)
!1956 = !DILocation(line: 433, column: 19, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !256, line: 433, column: 19)
!1958 = distinct !DILexicalBlock(scope: !1959, file: !256, line: 433, column: 19)
!1959 = distinct !DILexicalBlock(scope: !1950, file: !256, line: 432, column: 17)
!1960 = !DILocation(line: 433, column: 19, scope: !1958)
!1961 = !DILocation(line: 434, column: 19, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !256, line: 434, column: 19)
!1963 = distinct !DILexicalBlock(scope: !1959, file: !256, line: 434, column: 19)
!1964 = !DILocation(line: 434, column: 19, scope: !1963)
!1965 = !DILocation(line: 435, column: 17, scope: !1959)
!1966 = !DILocation(line: 442, column: 20, scope: !1928)
!1967 = !DILocation(line: 447, column: 11, scope: !1777)
!1968 = !DILocation(line: 450, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 448, column: 13)
!1970 = !DILocation(line: 456, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1969, file: !256, line: 455, column: 19)
!1972 = !DILocation(line: 456, column: 24, scope: !1971)
!1973 = !DILocation(line: 456, column: 28, scope: !1971)
!1974 = !DILocation(line: 456, column: 38, scope: !1971)
!1975 = !DILocation(line: 456, column: 47, scope: !1971)
!1976 = !DILocation(line: 456, column: 41, scope: !1971)
!1977 = !DILocation(line: 456, column: 52, scope: !1971)
!1978 = !DILocation(line: 455, column: 19, scope: !1969)
!1979 = !DILocation(line: 457, column: 25, scope: !1971)
!1980 = !DILocation(line: 457, column: 17, scope: !1971)
!1981 = !DILocation(line: 464, column: 25, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1971, file: !256, line: 458, column: 19)
!1983 = !DILocation(line: 468, column: 21, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !256, line: 468, column: 21)
!1985 = distinct !DILexicalBlock(scope: !1982, file: !256, line: 468, column: 21)
!1986 = !DILocation(line: 468, column: 21, scope: !1985)
!1987 = !DILocation(line: 469, column: 21, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !256, line: 469, column: 21)
!1989 = distinct !DILexicalBlock(scope: !1982, file: !256, line: 469, column: 21)
!1990 = !DILocation(line: 469, column: 21, scope: !1989)
!1991 = !DILocation(line: 470, column: 21, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !256, line: 470, column: 21)
!1993 = distinct !DILexicalBlock(scope: !1982, file: !256, line: 470, column: 21)
!1994 = !DILocation(line: 470, column: 21, scope: !1993)
!1995 = !DILocation(line: 471, column: 21, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !256, line: 471, column: 21)
!1997 = distinct !DILexicalBlock(scope: !1982, file: !256, line: 471, column: 21)
!1998 = !DILocation(line: 471, column: 21, scope: !1997)
!1999 = !DILocation(line: 472, column: 21, scope: !1982)
!2000 = !DILocation(line: 482, column: 33, scope: !1800)
!2001 = !DILocation(line: 483, column: 33, scope: !1800)
!2002 = !DILocation(line: 485, column: 33, scope: !1800)
!2003 = !DILocation(line: 486, column: 33, scope: !1800)
!2004 = !DILocation(line: 487, column: 33, scope: !1800)
!2005 = !DILocation(line: 490, column: 17, scope: !1800)
!2006 = !DILocation(line: 492, column: 21, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2008, file: !256, line: 491, column: 15)
!2008 = distinct !DILexicalBlock(scope: !1800, file: !256, line: 490, column: 17)
!2009 = !DILocation(line: 499, column: 35, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !1800, file: !256, line: 499, column: 17)
!2011 = !DILocation(line: 499, column: 57, scope: !2010)
!2012 = !DILocation(line: 0, scope: !1800)
!2013 = !DILocation(line: 502, column: 11, scope: !1800)
!2014 = !DILocation(line: 504, column: 17, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1800, file: !256, line: 503, column: 17)
!2016 = !DILocation(line: 507, column: 11, scope: !1800)
!2017 = !DILocation(line: 508, column: 17, scope: !1800)
!2018 = !DILocation(line: 517, column: 15, scope: !1777)
!2019 = !DILocation(line: 517, column: 40, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 517, column: 15)
!2021 = !DILocation(line: 517, column: 47, scope: !2020)
!2022 = !DILocation(line: 517, column: 18, scope: !2020)
!2023 = !DILocation(line: 521, column: 17, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 521, column: 15)
!2025 = !DILocation(line: 521, column: 15, scope: !1777)
!2026 = !DILocation(line: 525, column: 11, scope: !1777)
!2027 = !DILocation(line: 537, column: 15, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 536, column: 15)
!2029 = !DILocation(line: 536, column: 15, scope: !1777)
!2030 = !DILocation(line: 544, column: 15, scope: !1777)
!2031 = !DILocation(line: 546, column: 19, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !256, line: 545, column: 13)
!2033 = distinct !DILexicalBlock(scope: !1777, file: !256, line: 544, column: 15)
!2034 = !DILocation(line: 549, column: 19, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2032, file: !256, line: 549, column: 19)
!2036 = !DILocation(line: 549, column: 30, scope: !2035)
!2037 = !DILocation(line: 558, column: 15, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !256, line: 558, column: 15)
!2039 = distinct !DILexicalBlock(scope: !2032, file: !256, line: 558, column: 15)
!2040 = !DILocation(line: 558, column: 15, scope: !2039)
!2041 = !DILocation(line: 559, column: 15, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !256, line: 559, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2032, file: !256, line: 559, column: 15)
!2044 = !DILocation(line: 559, column: 15, scope: !2043)
!2045 = !DILocation(line: 560, column: 15, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !256, line: 560, column: 15)
!2047 = distinct !DILexicalBlock(scope: !2032, file: !256, line: 560, column: 15)
!2048 = !DILocation(line: 560, column: 15, scope: !2047)
!2049 = !DILocation(line: 562, column: 13, scope: !2032)
!2050 = !DILocation(line: 602, column: 17, scope: !1776)
!2051 = !DILocation(line: 0, scope: !1776)
!2052 = !DILocation(line: 605, column: 29, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !1781, file: !256, line: 603, column: 15)
!2054 = !DILocation(line: 605, column: 41, scope: !2053)
!2055 = !DILocation(line: 670, column: 23, scope: !1797)
!2056 = !DILocation(line: 609, column: 17, scope: !1780)
!2057 = !DILocation(line: 609, column: 27, scope: !1780)
!2058 = !DILocation(line: 0, scope: !1832, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 609, column: 32, scope: !1780)
!2060 = !DILocation(line: 0, scope: !1840, inlinedAt: !2061)
!2061 = distinct !DILocation(line: 1137, column: 3, scope: !1832, inlinedAt: !2059)
!2062 = !DILocation(line: 59, column: 10, scope: !1840, inlinedAt: !2061)
!2063 = !DILocation(line: 613, column: 29, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !1780, file: !256, line: 613, column: 21)
!2065 = !DILocation(line: 613, column: 21, scope: !1780)
!2066 = !DILocation(line: 614, column: 29, scope: !2064)
!2067 = !DILocation(line: 614, column: 19, scope: !2064)
!2068 = !DILocation(line: 618, column: 21, scope: !1783)
!2069 = !DILocation(line: 620, column: 54, scope: !1783)
!2070 = !DILocation(line: 0, scope: !1783)
!2071 = !DILocation(line: 619, column: 36, scope: !1783)
!2072 = !DILocation(line: 621, column: 25, scope: !1783)
!2073 = !DILocation(line: 631, column: 38, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1792, file: !256, line: 629, column: 23)
!2075 = !DILocation(line: 631, column: 48, scope: !2074)
!2076 = !DILocation(line: 665, column: 19, scope: !1784)
!2077 = !DILocation(line: 666, column: 15, scope: !1781)
!2078 = !DILocation(line: 626, column: 25, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !1793, file: !256, line: 624, column: 23)
!2080 = !DILocation(line: 631, column: 51, scope: !2074)
!2081 = !DILocation(line: 631, column: 25, scope: !2074)
!2082 = !DILocation(line: 632, column: 28, scope: !2074)
!2083 = !DILocation(line: 631, column: 34, scope: !2074)
!2084 = distinct !{!2084, !2081, !2082, !525}
!2085 = !DILocation(line: 646, column: 29, scope: !1790)
!2086 = !DILocation(line: 0, scope: !1788)
!2087 = !DILocation(line: 649, column: 49, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1788, file: !256, line: 648, column: 29)
!2089 = !DILocation(line: 649, column: 39, scope: !2088)
!2090 = !DILocation(line: 649, column: 31, scope: !2088)
!2091 = !DILocation(line: 648, column: 60, scope: !2088)
!2092 = !DILocation(line: 648, column: 50, scope: !2088)
!2093 = !DILocation(line: 648, column: 29, scope: !1788)
!2094 = distinct !{!2094, !2093, !2095, !525}
!2095 = !DILocation(line: 654, column: 33, scope: !1788)
!2096 = !DILocation(line: 657, column: 43, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !1791, file: !256, line: 657, column: 29)
!2098 = !DILocalVariable(name: "wc", arg: 1, scope: !2099, file: !2100, line: 865, type: !2103)
!2099 = distinct !DISubprogram(name: "c32isprint", scope: !2100, file: !2100, line: 865, type: !2101, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2105)
!2100 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!52, !2103}
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2104, line: 20, baseType: !7)
!2104 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2105 = !{!2098}
!2106 = !DILocation(line: 0, scope: !2099, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 657, column: 31, scope: !2097)
!2108 = !DILocation(line: 871, column: 10, scope: !2099, inlinedAt: !2107)
!2109 = !DILocation(line: 657, column: 31, scope: !2097)
!2110 = !DILocation(line: 664, column: 23, scope: !1783)
!2111 = !DILocation(line: 753, column: 2, scope: !1737)
!2112 = !DILocation(line: 756, column: 51, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 756, column: 7)
!2114 = !DILocation(line: 670, column: 19, scope: !1797)
!2115 = !DILocation(line: 670, column: 45, scope: !1797)
!2116 = !DILocation(line: 674, column: 33, scope: !1796)
!2117 = !DILocation(line: 0, scope: !1796)
!2118 = !DILocation(line: 676, column: 17, scope: !1796)
!2119 = !DILocation(line: 398, column: 12, scope: !1770)
!2120 = !DILocation(line: 678, column: 43, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !256, line: 678, column: 25)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !256, line: 677, column: 19)
!2123 = distinct !DILexicalBlock(scope: !2124, file: !256, line: 676, column: 17)
!2124 = distinct !DILexicalBlock(scope: !1796, file: !256, line: 676, column: 17)
!2125 = !DILocation(line: 680, column: 25, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !256, line: 680, column: 25)
!2127 = distinct !DILexicalBlock(scope: !2121, file: !256, line: 679, column: 23)
!2128 = !DILocation(line: 680, column: 25, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2126, file: !256, line: 680, column: 25)
!2130 = !DILocation(line: 680, column: 25, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !256, line: 680, column: 25)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !256, line: 680, column: 25)
!2133 = distinct !DILexicalBlock(scope: !2129, file: !256, line: 680, column: 25)
!2134 = !DILocation(line: 680, column: 25, scope: !2132)
!2135 = !DILocation(line: 680, column: 25, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !256, line: 680, column: 25)
!2137 = distinct !DILexicalBlock(scope: !2133, file: !256, line: 680, column: 25)
!2138 = !DILocation(line: 680, column: 25, scope: !2137)
!2139 = !DILocation(line: 680, column: 25, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !256, line: 680, column: 25)
!2141 = distinct !DILexicalBlock(scope: !2133, file: !256, line: 680, column: 25)
!2142 = !DILocation(line: 680, column: 25, scope: !2141)
!2143 = !DILocation(line: 680, column: 25, scope: !2133)
!2144 = !DILocation(line: 680, column: 25, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !256, line: 680, column: 25)
!2146 = distinct !DILexicalBlock(scope: !2126, file: !256, line: 680, column: 25)
!2147 = !DILocation(line: 680, column: 25, scope: !2146)
!2148 = !DILocation(line: 681, column: 25, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !256, line: 681, column: 25)
!2150 = distinct !DILexicalBlock(scope: !2127, file: !256, line: 681, column: 25)
!2151 = !DILocation(line: 681, column: 25, scope: !2150)
!2152 = !DILocation(line: 682, column: 25, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !256, line: 682, column: 25)
!2154 = distinct !DILexicalBlock(scope: !2127, file: !256, line: 682, column: 25)
!2155 = !DILocation(line: 682, column: 25, scope: !2154)
!2156 = !DILocation(line: 683, column: 38, scope: !2127)
!2157 = !DILocation(line: 683, column: 33, scope: !2127)
!2158 = !DILocation(line: 684, column: 23, scope: !2127)
!2159 = !DILocation(line: 685, column: 30, scope: !2121)
!2160 = !DILocation(line: 687, column: 25, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !256, line: 687, column: 25)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !256, line: 687, column: 25)
!2163 = distinct !DILexicalBlock(scope: !2164, file: !256, line: 686, column: 23)
!2164 = distinct !DILexicalBlock(scope: !2121, file: !256, line: 685, column: 30)
!2165 = !DILocation(line: 687, column: 25, scope: !2162)
!2166 = !DILocation(line: 689, column: 23, scope: !2163)
!2167 = !DILocation(line: 690, column: 35, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2122, file: !256, line: 690, column: 25)
!2169 = !DILocation(line: 690, column: 30, scope: !2168)
!2170 = !DILocation(line: 690, column: 25, scope: !2122)
!2171 = !DILocation(line: 692, column: 21, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2173, file: !256, line: 692, column: 21)
!2173 = distinct !DILexicalBlock(scope: !2122, file: !256, line: 692, column: 21)
!2174 = !DILocation(line: 692, column: 21, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !256, line: 692, column: 21)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !256, line: 692, column: 21)
!2177 = distinct !DILexicalBlock(scope: !2172, file: !256, line: 692, column: 21)
!2178 = !DILocation(line: 692, column: 21, scope: !2176)
!2179 = !DILocation(line: 692, column: 21, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !256, line: 692, column: 21)
!2181 = distinct !DILexicalBlock(scope: !2177, file: !256, line: 692, column: 21)
!2182 = !DILocation(line: 692, column: 21, scope: !2181)
!2183 = !DILocation(line: 692, column: 21, scope: !2177)
!2184 = !DILocation(line: 0, scope: !2122)
!2185 = !DILocation(line: 693, column: 21, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2187, file: !256, line: 693, column: 21)
!2187 = distinct !DILexicalBlock(scope: !2122, file: !256, line: 693, column: 21)
!2188 = !DILocation(line: 693, column: 21, scope: !2187)
!2189 = !DILocation(line: 694, column: 25, scope: !2122)
!2190 = !DILocation(line: 676, column: 17, scope: !2123)
!2191 = distinct !{!2191, !2192, !2193}
!2192 = !DILocation(line: 676, column: 17, scope: !2124)
!2193 = !DILocation(line: 695, column: 19, scope: !2124)
!2194 = !DILocation(line: 409, column: 30, scope: !1904)
!2195 = !DILocation(line: 702, column: 34, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 702, column: 11)
!2197 = !DILocation(line: 704, column: 14, scope: !2196)
!2198 = !DILocation(line: 705, column: 14, scope: !2196)
!2199 = !DILocation(line: 705, column: 35, scope: !2196)
!2200 = !DILocation(line: 705, column: 17, scope: !2196)
!2201 = !DILocation(line: 705, column: 47, scope: !2196)
!2202 = !DILocation(line: 705, column: 65, scope: !2196)
!2203 = !DILocation(line: 706, column: 11, scope: !2196)
!2204 = !DILocation(line: 702, column: 11, scope: !1770)
!2205 = !DILocation(line: 395, column: 15, scope: !1768)
!2206 = !DILocation(line: 709, column: 5, scope: !1770)
!2207 = !DILocation(line: 710, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 710, column: 7)
!2209 = !DILocation(line: 710, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2208, file: !256, line: 710, column: 7)
!2211 = !DILocation(line: 710, column: 7, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2213, file: !256, line: 710, column: 7)
!2213 = distinct !DILexicalBlock(scope: !2214, file: !256, line: 710, column: 7)
!2214 = distinct !DILexicalBlock(scope: !2210, file: !256, line: 710, column: 7)
!2215 = !DILocation(line: 710, column: 7, scope: !2213)
!2216 = !DILocation(line: 710, column: 7, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !256, line: 710, column: 7)
!2218 = distinct !DILexicalBlock(scope: !2214, file: !256, line: 710, column: 7)
!2219 = !DILocation(line: 710, column: 7, scope: !2218)
!2220 = !DILocation(line: 710, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2222, file: !256, line: 710, column: 7)
!2222 = distinct !DILexicalBlock(scope: !2214, file: !256, line: 710, column: 7)
!2223 = !DILocation(line: 710, column: 7, scope: !2222)
!2224 = !DILocation(line: 710, column: 7, scope: !2214)
!2225 = !DILocation(line: 710, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2227, file: !256, line: 710, column: 7)
!2227 = distinct !DILexicalBlock(scope: !2208, file: !256, line: 710, column: 7)
!2228 = !DILocation(line: 710, column: 7, scope: !2227)
!2229 = !DILocation(line: 712, column: 5, scope: !1770)
!2230 = !DILocation(line: 713, column: 7, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !256, line: 713, column: 7)
!2232 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 713, column: 7)
!2233 = !DILocation(line: 417, column: 21, scope: !1770)
!2234 = !DILocation(line: 713, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !256, line: 713, column: 7)
!2236 = distinct !DILexicalBlock(scope: !2237, file: !256, line: 713, column: 7)
!2237 = distinct !DILexicalBlock(scope: !2231, file: !256, line: 713, column: 7)
!2238 = !DILocation(line: 713, column: 7, scope: !2236)
!2239 = !DILocation(line: 713, column: 7, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !256, line: 713, column: 7)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !256, line: 713, column: 7)
!2242 = !DILocation(line: 713, column: 7, scope: !2241)
!2243 = !DILocation(line: 713, column: 7, scope: !2237)
!2244 = !DILocation(line: 714, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2246, file: !256, line: 714, column: 7)
!2246 = distinct !DILexicalBlock(scope: !1770, file: !256, line: 714, column: 7)
!2247 = !DILocation(line: 714, column: 7, scope: !2246)
!2248 = !DILocation(line: 716, column: 11, scope: !1770)
!2249 = !DILocation(line: 718, column: 5, scope: !1771)
!2250 = !DILocation(line: 395, column: 82, scope: !1771)
!2251 = !DILocation(line: 395, column: 3, scope: !1771)
!2252 = distinct !{!2252, !1900, !2253, !525}
!2253 = !DILocation(line: 718, column: 5, scope: !1768)
!2254 = !DILocation(line: 720, column: 11, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 720, column: 7)
!2256 = !DILocation(line: 720, column: 16, scope: !2255)
!2257 = !DILocation(line: 728, column: 51, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 728, column: 7)
!2259 = !DILocation(line: 731, column: 11, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2258, file: !256, line: 730, column: 5)
!2261 = !DILocation(line: 732, column: 16, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2260, file: !256, line: 731, column: 11)
!2263 = !DILocation(line: 732, column: 9, scope: !2262)
!2264 = !DILocation(line: 736, column: 18, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !256, line: 736, column: 16)
!2266 = !DILocation(line: 736, column: 29, scope: !2265)
!2267 = !DILocation(line: 745, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 745, column: 7)
!2269 = !DILocation(line: 745, column: 20, scope: !2268)
!2270 = !DILocation(line: 746, column: 12, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2272, file: !256, line: 746, column: 5)
!2272 = distinct !DILexicalBlock(scope: !2268, file: !256, line: 746, column: 5)
!2273 = !DILocation(line: 746, column: 5, scope: !2272)
!2274 = !DILocation(line: 747, column: 7, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !256, line: 747, column: 7)
!2276 = distinct !DILexicalBlock(scope: !2271, file: !256, line: 747, column: 7)
!2277 = !DILocation(line: 747, column: 7, scope: !2276)
!2278 = !DILocation(line: 746, column: 39, scope: !2271)
!2279 = distinct !{!2279, !2273, !2280, !525}
!2280 = !DILocation(line: 747, column: 7, scope: !2272)
!2281 = !DILocation(line: 749, column: 11, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !1737, file: !256, line: 749, column: 7)
!2283 = !DILocation(line: 749, column: 7, scope: !1737)
!2284 = !DILocation(line: 750, column: 5, scope: !2282)
!2285 = !DILocation(line: 750, column: 17, scope: !2282)
!2286 = !DILocation(line: 756, column: 21, scope: !2113)
!2287 = !DILocation(line: 760, column: 42, scope: !1737)
!2288 = !DILocation(line: 758, column: 10, scope: !1737)
!2289 = !DILocation(line: 758, column: 3, scope: !1737)
!2290 = !DILocation(line: 762, column: 1, scope: !1737)
!2291 = !DISubprogram(name: "iswprint", scope: !2292, file: !2292, line: 120, type: !2101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!2292 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!2293 = distinct !DISubprogram(name: "quotearg_alloc", scope: !256, file: !256, line: 788, type: !2294, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!44, !56, !54, !1629}
!2296 = !{!2297, !2298, !2299}
!2297 = !DILocalVariable(name: "arg", arg: 1, scope: !2293, file: !256, line: 788, type: !56)
!2298 = !DILocalVariable(name: "argsize", arg: 2, scope: !2293, file: !256, line: 788, type: !54)
!2299 = !DILocalVariable(name: "o", arg: 3, scope: !2293, file: !256, line: 789, type: !1629)
!2300 = !DILocation(line: 0, scope: !2293)
!2301 = !DILocalVariable(name: "arg", arg: 1, scope: !2302, file: !256, line: 801, type: !56)
!2302 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !256, file: !256, line: 801, type: !2303, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2305)
!2303 = !DISubroutineType(types: !2304)
!2304 = !{!44, !56, !54, !387, !1629}
!2305 = !{!2301, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2306 = !DILocalVariable(name: "argsize", arg: 2, scope: !2302, file: !256, line: 801, type: !54)
!2307 = !DILocalVariable(name: "size", arg: 3, scope: !2302, file: !256, line: 801, type: !387)
!2308 = !DILocalVariable(name: "o", arg: 4, scope: !2302, file: !256, line: 802, type: !1629)
!2309 = !DILocalVariable(name: "p", scope: !2302, file: !256, line: 804, type: !1629)
!2310 = !DILocalVariable(name: "saved_errno", scope: !2302, file: !256, line: 805, type: !52)
!2311 = !DILocalVariable(name: "flags", scope: !2302, file: !256, line: 807, type: !52)
!2312 = !DILocalVariable(name: "bufsize", scope: !2302, file: !256, line: 808, type: !54)
!2313 = !DILocalVariable(name: "buf", scope: !2302, file: !256, line: 812, type: !44)
!2314 = !DILocation(line: 0, scope: !2302, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 791, column: 10, scope: !2293)
!2316 = !DILocation(line: 804, column: 37, scope: !2302, inlinedAt: !2315)
!2317 = !DILocation(line: 805, column: 21, scope: !2302, inlinedAt: !2315)
!2318 = !DILocation(line: 807, column: 18, scope: !2302, inlinedAt: !2315)
!2319 = !DILocation(line: 807, column: 24, scope: !2302, inlinedAt: !2315)
!2320 = !DILocation(line: 808, column: 72, scope: !2302, inlinedAt: !2315)
!2321 = !DILocation(line: 809, column: 53, scope: !2302, inlinedAt: !2315)
!2322 = !DILocation(line: 810, column: 49, scope: !2302, inlinedAt: !2315)
!2323 = !DILocation(line: 811, column: 49, scope: !2302, inlinedAt: !2315)
!2324 = !DILocation(line: 808, column: 20, scope: !2302, inlinedAt: !2315)
!2325 = !DILocation(line: 811, column: 62, scope: !2302, inlinedAt: !2315)
!2326 = !DILocation(line: 812, column: 15, scope: !2302, inlinedAt: !2315)
!2327 = !DILocation(line: 813, column: 60, scope: !2302, inlinedAt: !2315)
!2328 = !DILocation(line: 815, column: 32, scope: !2302, inlinedAt: !2315)
!2329 = !DILocation(line: 815, column: 47, scope: !2302, inlinedAt: !2315)
!2330 = !DILocation(line: 813, column: 3, scope: !2302, inlinedAt: !2315)
!2331 = !DILocation(line: 816, column: 9, scope: !2302, inlinedAt: !2315)
!2332 = !DILocation(line: 791, column: 3, scope: !2293)
!2333 = !DILocation(line: 0, scope: !2302)
!2334 = !DILocation(line: 804, column: 37, scope: !2302)
!2335 = !DILocation(line: 805, column: 21, scope: !2302)
!2336 = !DILocation(line: 807, column: 18, scope: !2302)
!2337 = !DILocation(line: 807, column: 27, scope: !2302)
!2338 = !DILocation(line: 807, column: 24, scope: !2302)
!2339 = !DILocation(line: 808, column: 72, scope: !2302)
!2340 = !DILocation(line: 809, column: 53, scope: !2302)
!2341 = !DILocation(line: 810, column: 49, scope: !2302)
!2342 = !DILocation(line: 811, column: 49, scope: !2302)
!2343 = !DILocation(line: 808, column: 20, scope: !2302)
!2344 = !DILocation(line: 811, column: 62, scope: !2302)
!2345 = !DILocation(line: 812, column: 15, scope: !2302)
!2346 = !DILocation(line: 813, column: 60, scope: !2302)
!2347 = !DILocation(line: 815, column: 32, scope: !2302)
!2348 = !DILocation(line: 815, column: 47, scope: !2302)
!2349 = !DILocation(line: 813, column: 3, scope: !2302)
!2350 = !DILocation(line: 816, column: 9, scope: !2302)
!2351 = !DILocation(line: 817, column: 7, scope: !2302)
!2352 = !DILocation(line: 818, column: 11, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2302, file: !256, line: 817, column: 7)
!2354 = !DILocation(line: 818, column: 5, scope: !2353)
!2355 = !DILocation(line: 819, column: 3, scope: !2302)
!2356 = distinct !DISubprogram(name: "quotearg_free", scope: !256, file: !256, line: 837, type: !209, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2357)
!2357 = !{!2358, !2359}
!2358 = !DILocalVariable(name: "sv", scope: !2356, file: !256, line: 839, type: !315)
!2359 = !DILocalVariable(name: "i", scope: !2360, file: !256, line: 840, type: !52)
!2360 = distinct !DILexicalBlock(scope: !2356, file: !256, line: 840, column: 3)
!2361 = !DILocation(line: 839, column: 24, scope: !2356)
!2362 = !DILocation(line: 0, scope: !2356)
!2363 = !DILocation(line: 0, scope: !2360)
!2364 = !DILocation(line: 840, column: 21, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2360, file: !256, line: 840, column: 3)
!2366 = !DILocation(line: 840, column: 3, scope: !2360)
!2367 = !DILocation(line: 842, column: 13, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2356, file: !256, line: 842, column: 7)
!2369 = !{!2370, !464, i64 8}
!2370 = !{!"slotvec", !822, i64 0, !464, i64 8}
!2371 = !DILocation(line: 842, column: 17, scope: !2368)
!2372 = !DILocation(line: 842, column: 7, scope: !2356)
!2373 = !DILocation(line: 841, column: 17, scope: !2365)
!2374 = !DILocation(line: 841, column: 5, scope: !2365)
!2375 = !DILocation(line: 840, column: 32, scope: !2365)
!2376 = distinct !{!2376, !2366, !2377, !525}
!2377 = !DILocation(line: 841, column: 20, scope: !2360)
!2378 = !DILocation(line: 844, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2368, file: !256, line: 843, column: 5)
!2380 = !DILocation(line: 845, column: 21, scope: !2379)
!2381 = !{!2370, !822, i64 0}
!2382 = !DILocation(line: 846, column: 20, scope: !2379)
!2383 = !DILocation(line: 847, column: 5, scope: !2379)
!2384 = !DILocation(line: 848, column: 10, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2356, file: !256, line: 848, column: 7)
!2386 = !DILocation(line: 848, column: 7, scope: !2356)
!2387 = !DILocation(line: 850, column: 13, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2385, file: !256, line: 849, column: 5)
!2389 = !DILocation(line: 850, column: 7, scope: !2388)
!2390 = !DILocation(line: 851, column: 15, scope: !2388)
!2391 = !DILocation(line: 852, column: 5, scope: !2388)
!2392 = !DILocation(line: 853, column: 10, scope: !2356)
!2393 = !DILocation(line: 854, column: 1, scope: !2356)
!2394 = distinct !DISubprogram(name: "quotearg_n", scope: !256, file: !256, line: 919, type: !666, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2395)
!2395 = !{!2396, !2397}
!2396 = !DILocalVariable(name: "n", arg: 1, scope: !2394, file: !256, line: 919, type: !52)
!2397 = !DILocalVariable(name: "arg", arg: 2, scope: !2394, file: !256, line: 919, type: !56)
!2398 = !DILocation(line: 0, scope: !2394)
!2399 = !DILocation(line: 921, column: 10, scope: !2394)
!2400 = !DILocation(line: 921, column: 3, scope: !2394)
!2401 = distinct !DISubprogram(name: "quotearg_n_options", scope: !256, file: !256, line: 866, type: !2402, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2404)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!44, !52, !56, !54, !1629}
!2404 = !{!2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2415, !2416, !2418, !2419, !2420}
!2405 = !DILocalVariable(name: "n", arg: 1, scope: !2401, file: !256, line: 866, type: !52)
!2406 = !DILocalVariable(name: "arg", arg: 2, scope: !2401, file: !256, line: 866, type: !56)
!2407 = !DILocalVariable(name: "argsize", arg: 3, scope: !2401, file: !256, line: 866, type: !54)
!2408 = !DILocalVariable(name: "options", arg: 4, scope: !2401, file: !256, line: 867, type: !1629)
!2409 = !DILocalVariable(name: "saved_errno", scope: !2401, file: !256, line: 869, type: !52)
!2410 = !DILocalVariable(name: "sv", scope: !2401, file: !256, line: 871, type: !315)
!2411 = !DILocalVariable(name: "nslots_max", scope: !2401, file: !256, line: 873, type: !52)
!2412 = !DILocalVariable(name: "preallocated", scope: !2413, file: !256, line: 879, type: !73)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !256, line: 878, column: 5)
!2414 = distinct !DILexicalBlock(scope: !2401, file: !256, line: 877, column: 7)
!2415 = !DILocalVariable(name: "new_nslots", scope: !2413, file: !256, line: 880, type: !400)
!2416 = !DILocalVariable(name: "size", scope: !2417, file: !256, line: 891, type: !54)
!2417 = distinct !DILexicalBlock(scope: !2401, file: !256, line: 890, column: 3)
!2418 = !DILocalVariable(name: "val", scope: !2417, file: !256, line: 892, type: !44)
!2419 = !DILocalVariable(name: "flags", scope: !2417, file: !256, line: 894, type: !52)
!2420 = !DILocalVariable(name: "qsize", scope: !2417, file: !256, line: 895, type: !54)
!2421 = !DILocation(line: 0, scope: !2401)
!2422 = !DILocation(line: 869, column: 21, scope: !2401)
!2423 = !DILocation(line: 871, column: 24, scope: !2401)
!2424 = !DILocation(line: 874, column: 17, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2401, file: !256, line: 874, column: 7)
!2426 = !DILocation(line: 875, column: 5, scope: !2425)
!2427 = !DILocation(line: 877, column: 7, scope: !2414)
!2428 = !DILocation(line: 877, column: 14, scope: !2414)
!2429 = !DILocation(line: 877, column: 7, scope: !2401)
!2430 = !DILocation(line: 879, column: 31, scope: !2413)
!2431 = !DILocation(line: 0, scope: !2413)
!2432 = !DILocation(line: 880, column: 7, scope: !2413)
!2433 = !DILocation(line: 880, column: 26, scope: !2413)
!2434 = !DILocation(line: 880, column: 13, scope: !2413)
!2435 = !DILocation(line: 882, column: 31, scope: !2413)
!2436 = !DILocation(line: 883, column: 33, scope: !2413)
!2437 = !DILocation(line: 883, column: 42, scope: !2413)
!2438 = !DILocation(line: 883, column: 31, scope: !2413)
!2439 = !DILocation(line: 882, column: 22, scope: !2413)
!2440 = !DILocation(line: 882, column: 15, scope: !2413)
!2441 = !DILocation(line: 884, column: 11, scope: !2413)
!2442 = !DILocation(line: 885, column: 15, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2413, file: !256, line: 884, column: 11)
!2444 = !{i64 0, i64 8, !821, i64 8, i64 8, !463}
!2445 = !DILocation(line: 885, column: 9, scope: !2443)
!2446 = !DILocation(line: 886, column: 20, scope: !2413)
!2447 = !DILocation(line: 886, column: 18, scope: !2413)
!2448 = !DILocation(line: 886, column: 15, scope: !2413)
!2449 = !DILocation(line: 886, column: 32, scope: !2413)
!2450 = !DILocation(line: 886, column: 43, scope: !2413)
!2451 = !DILocation(line: 886, column: 53, scope: !2413)
!2452 = !DILocation(line: 0, scope: !1840, inlinedAt: !2453)
!2453 = distinct !DILocation(line: 886, column: 7, scope: !2413)
!2454 = !DILocation(line: 59, column: 10, scope: !1840, inlinedAt: !2453)
!2455 = !DILocation(line: 887, column: 16, scope: !2413)
!2456 = !DILocation(line: 887, column: 14, scope: !2413)
!2457 = !DILocation(line: 888, column: 5, scope: !2414)
!2458 = !DILocation(line: 888, column: 5, scope: !2413)
!2459 = !DILocation(line: 891, column: 19, scope: !2417)
!2460 = !DILocation(line: 891, column: 25, scope: !2417)
!2461 = !DILocation(line: 0, scope: !2417)
!2462 = !DILocation(line: 892, column: 23, scope: !2417)
!2463 = !DILocation(line: 894, column: 26, scope: !2417)
!2464 = !DILocation(line: 894, column: 32, scope: !2417)
!2465 = !DILocation(line: 896, column: 55, scope: !2417)
!2466 = !DILocation(line: 897, column: 46, scope: !2417)
!2467 = !DILocation(line: 898, column: 55, scope: !2417)
!2468 = !DILocation(line: 899, column: 55, scope: !2417)
!2469 = !DILocation(line: 895, column: 20, scope: !2417)
!2470 = !DILocation(line: 901, column: 14, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2417, file: !256, line: 901, column: 9)
!2472 = !DILocation(line: 901, column: 9, scope: !2417)
!2473 = !DILocation(line: 903, column: 35, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !256, line: 902, column: 7)
!2475 = !DILocation(line: 903, column: 20, scope: !2474)
!2476 = !DILocation(line: 904, column: 17, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2474, file: !256, line: 904, column: 13)
!2478 = !DILocation(line: 904, column: 13, scope: !2474)
!2479 = !DILocation(line: 905, column: 11, scope: !2477)
!2480 = !DILocation(line: 906, column: 27, scope: !2474)
!2481 = !DILocation(line: 906, column: 19, scope: !2474)
!2482 = !DILocation(line: 907, column: 69, scope: !2474)
!2483 = !DILocation(line: 909, column: 44, scope: !2474)
!2484 = !DILocation(line: 910, column: 44, scope: !2474)
!2485 = !DILocation(line: 907, column: 9, scope: !2474)
!2486 = !DILocation(line: 911, column: 7, scope: !2474)
!2487 = !DILocation(line: 913, column: 11, scope: !2417)
!2488 = !DILocation(line: 914, column: 5, scope: !2417)
!2489 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !256, file: !256, line: 925, type: !2490, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!44, !52, !56, !54}
!2492 = !{!2493, !2494, !2495}
!2493 = !DILocalVariable(name: "n", arg: 1, scope: !2489, file: !256, line: 925, type: !52)
!2494 = !DILocalVariable(name: "arg", arg: 2, scope: !2489, file: !256, line: 925, type: !56)
!2495 = !DILocalVariable(name: "argsize", arg: 3, scope: !2489, file: !256, line: 925, type: !54)
!2496 = !DILocation(line: 0, scope: !2489)
!2497 = !DILocation(line: 927, column: 10, scope: !2489)
!2498 = !DILocation(line: 927, column: 3, scope: !2489)
!2499 = distinct !DISubprogram(name: "quotearg", scope: !256, file: !256, line: 931, type: !670, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2500)
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "arg", arg: 1, scope: !2499, file: !256, line: 931, type: !56)
!2502 = !DILocation(line: 0, scope: !2499)
!2503 = !DILocation(line: 0, scope: !2394, inlinedAt: !2504)
!2504 = distinct !DILocation(line: 933, column: 10, scope: !2499)
!2505 = !DILocation(line: 921, column: 10, scope: !2394, inlinedAt: !2504)
!2506 = !DILocation(line: 933, column: 3, scope: !2499)
!2507 = distinct !DISubprogram(name: "quotearg_mem", scope: !256, file: !256, line: 937, type: !2508, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!44, !56, !54}
!2510 = !{!2511, !2512}
!2511 = !DILocalVariable(name: "arg", arg: 1, scope: !2507, file: !256, line: 937, type: !56)
!2512 = !DILocalVariable(name: "argsize", arg: 2, scope: !2507, file: !256, line: 937, type: !54)
!2513 = !DILocation(line: 0, scope: !2507)
!2514 = !DILocation(line: 0, scope: !2489, inlinedAt: !2515)
!2515 = distinct !DILocation(line: 939, column: 10, scope: !2507)
!2516 = !DILocation(line: 927, column: 10, scope: !2489, inlinedAt: !2515)
!2517 = !DILocation(line: 939, column: 3, scope: !2507)
!2518 = distinct !DISubprogram(name: "quotearg_n_style", scope: !256, file: !256, line: 943, type: !2519, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2521)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!44, !52, !14, !56}
!2521 = !{!2522, !2523, !2524, !2525}
!2522 = !DILocalVariable(name: "n", arg: 1, scope: !2518, file: !256, line: 943, type: !52)
!2523 = !DILocalVariable(name: "s", arg: 2, scope: !2518, file: !256, line: 943, type: !14)
!2524 = !DILocalVariable(name: "arg", arg: 3, scope: !2518, file: !256, line: 943, type: !56)
!2525 = !DILocalVariable(name: "o", scope: !2518, file: !256, line: 945, type: !1630)
!2526 = !DILocation(line: 0, scope: !2518)
!2527 = !DILocation(line: 945, column: 3, scope: !2518)
!2528 = !DILocation(line: 945, column: 32, scope: !2518)
!2529 = !{!2530}
!2530 = distinct !{!2530, !2531, !"quoting_options_from_style: argument 0"}
!2531 = distinct !{!2531, !"quoting_options_from_style"}
!2532 = !DILocation(line: 945, column: 36, scope: !2518)
!2533 = !DILocalVariable(name: "style", arg: 1, scope: !2534, file: !256, line: 183, type: !14)
!2534 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !256, file: !256, line: 183, type: !2535, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2537)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!273, !14}
!2537 = !{!2533, !2538}
!2538 = !DILocalVariable(name: "o", scope: !2534, file: !256, line: 185, type: !273)
!2539 = !DILocation(line: 0, scope: !2534, inlinedAt: !2540)
!2540 = distinct !DILocation(line: 945, column: 36, scope: !2518)
!2541 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2540)
!2542 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2540)
!2543 = distinct !DILexicalBlock(scope: !2534, file: !256, line: 186, column: 7)
!2544 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2540)
!2545 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2540)
!2546 = !DILocation(line: 188, column: 5, scope: !2534, inlinedAt: !2540)
!2547 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2540)
!2548 = !DILocation(line: 946, column: 10, scope: !2518)
!2549 = !DILocation(line: 947, column: 1, scope: !2518)
!2550 = !DILocation(line: 946, column: 3, scope: !2518)
!2551 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !256, file: !256, line: 950, type: !2552, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!44, !52, !14, !56, !54}
!2554 = !{!2555, !2556, !2557, !2558, !2559}
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2551, file: !256, line: 950, type: !52)
!2556 = !DILocalVariable(name: "s", arg: 2, scope: !2551, file: !256, line: 950, type: !14)
!2557 = !DILocalVariable(name: "arg", arg: 3, scope: !2551, file: !256, line: 951, type: !56)
!2558 = !DILocalVariable(name: "argsize", arg: 4, scope: !2551, file: !256, line: 951, type: !54)
!2559 = !DILocalVariable(name: "o", scope: !2551, file: !256, line: 953, type: !1630)
!2560 = !DILocation(line: 0, scope: !2551)
!2561 = !DILocation(line: 953, column: 3, scope: !2551)
!2562 = !DILocation(line: 953, column: 32, scope: !2551)
!2563 = !{!2564}
!2564 = distinct !{!2564, !2565, !"quoting_options_from_style: argument 0"}
!2565 = distinct !{!2565, !"quoting_options_from_style"}
!2566 = !DILocation(line: 953, column: 36, scope: !2551)
!2567 = !DILocation(line: 0, scope: !2534, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 953, column: 36, scope: !2551)
!2569 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2568)
!2570 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2568)
!2571 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2568)
!2572 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2568)
!2573 = !DILocation(line: 188, column: 5, scope: !2534, inlinedAt: !2568)
!2574 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2568)
!2575 = !DILocation(line: 954, column: 10, scope: !2551)
!2576 = !DILocation(line: 955, column: 1, scope: !2551)
!2577 = !DILocation(line: 954, column: 3, scope: !2551)
!2578 = distinct !DISubprogram(name: "quotearg_style", scope: !256, file: !256, line: 958, type: !2579, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2581)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!44, !14, !56}
!2581 = !{!2582, !2583}
!2582 = !DILocalVariable(name: "s", arg: 1, scope: !2578, file: !256, line: 958, type: !14)
!2583 = !DILocalVariable(name: "arg", arg: 2, scope: !2578, file: !256, line: 958, type: !56)
!2584 = !DILocation(line: 0, scope: !2578)
!2585 = !DILocation(line: 0, scope: !2518, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 960, column: 10, scope: !2578)
!2587 = !DILocation(line: 945, column: 3, scope: !2518, inlinedAt: !2586)
!2588 = !DILocation(line: 945, column: 32, scope: !2518, inlinedAt: !2586)
!2589 = !{!2590}
!2590 = distinct !{!2590, !2591, !"quoting_options_from_style: argument 0"}
!2591 = distinct !{!2591, !"quoting_options_from_style"}
!2592 = !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2586)
!2593 = !DILocation(line: 0, scope: !2534, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 945, column: 36, scope: !2518, inlinedAt: !2586)
!2595 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2594)
!2596 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2594)
!2597 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2594)
!2598 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2594)
!2599 = !DILocation(line: 188, column: 5, scope: !2534, inlinedAt: !2594)
!2600 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2594)
!2601 = !DILocation(line: 946, column: 10, scope: !2518, inlinedAt: !2586)
!2602 = !DILocation(line: 947, column: 1, scope: !2518, inlinedAt: !2586)
!2603 = !DILocation(line: 960, column: 3, scope: !2578)
!2604 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !256, file: !256, line: 964, type: !2605, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!44, !14, !56, !54}
!2607 = !{!2608, !2609, !2610}
!2608 = !DILocalVariable(name: "s", arg: 1, scope: !2604, file: !256, line: 964, type: !14)
!2609 = !DILocalVariable(name: "arg", arg: 2, scope: !2604, file: !256, line: 964, type: !56)
!2610 = !DILocalVariable(name: "argsize", arg: 3, scope: !2604, file: !256, line: 964, type: !54)
!2611 = !DILocation(line: 0, scope: !2604)
!2612 = !DILocation(line: 0, scope: !2551, inlinedAt: !2613)
!2613 = distinct !DILocation(line: 966, column: 10, scope: !2604)
!2614 = !DILocation(line: 953, column: 3, scope: !2551, inlinedAt: !2613)
!2615 = !DILocation(line: 953, column: 32, scope: !2551, inlinedAt: !2613)
!2616 = !{!2617}
!2617 = distinct !{!2617, !2618, !"quoting_options_from_style: argument 0"}
!2618 = distinct !{!2618, !"quoting_options_from_style"}
!2619 = !DILocation(line: 953, column: 36, scope: !2551, inlinedAt: !2613)
!2620 = !DILocation(line: 0, scope: !2534, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 953, column: 36, scope: !2551, inlinedAt: !2613)
!2622 = !DILocation(line: 185, column: 26, scope: !2534, inlinedAt: !2621)
!2623 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2621)
!2624 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2621)
!2625 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2621)
!2626 = !DILocation(line: 188, column: 5, scope: !2534, inlinedAt: !2621)
!2627 = !DILocation(line: 188, column: 11, scope: !2534, inlinedAt: !2621)
!2628 = !DILocation(line: 954, column: 10, scope: !2551, inlinedAt: !2613)
!2629 = !DILocation(line: 955, column: 1, scope: !2551, inlinedAt: !2613)
!2630 = !DILocation(line: 966, column: 3, scope: !2604)
!2631 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !256, file: !256, line: 970, type: !2632, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!44, !56, !54, !45}
!2634 = !{!2635, !2636, !2637, !2638}
!2635 = !DILocalVariable(name: "arg", arg: 1, scope: !2631, file: !256, line: 970, type: !56)
!2636 = !DILocalVariable(name: "argsize", arg: 2, scope: !2631, file: !256, line: 970, type: !54)
!2637 = !DILocalVariable(name: "ch", arg: 3, scope: !2631, file: !256, line: 970, type: !45)
!2638 = !DILocalVariable(name: "options", scope: !2631, file: !256, line: 972, type: !273)
!2639 = !DILocation(line: 0, scope: !2631)
!2640 = !DILocation(line: 972, column: 3, scope: !2631)
!2641 = !DILocation(line: 972, column: 26, scope: !2631)
!2642 = !DILocation(line: 973, column: 13, scope: !2631)
!2643 = !{i64 0, i64 4, !567, i64 4, i64 4, !558, i64 8, i64 32, !567, i64 40, i64 8, !463, i64 48, i64 8, !463}
!2644 = !DILocation(line: 0, scope: !1650, inlinedAt: !2645)
!2645 = distinct !DILocation(line: 974, column: 3, scope: !2631)
!2646 = !DILocation(line: 147, column: 62, scope: !1650, inlinedAt: !2645)
!2647 = !DILocation(line: 147, column: 57, scope: !1650, inlinedAt: !2645)
!2648 = !DILocation(line: 148, column: 15, scope: !1650, inlinedAt: !2645)
!2649 = !DILocation(line: 149, column: 21, scope: !1650, inlinedAt: !2645)
!2650 = !DILocation(line: 149, column: 24, scope: !1650, inlinedAt: !2645)
!2651 = !DILocation(line: 149, column: 34, scope: !1650, inlinedAt: !2645)
!2652 = !DILocation(line: 150, column: 19, scope: !1650, inlinedAt: !2645)
!2653 = !DILocation(line: 150, column: 24, scope: !1650, inlinedAt: !2645)
!2654 = !DILocation(line: 150, column: 6, scope: !1650, inlinedAt: !2645)
!2655 = !DILocation(line: 975, column: 10, scope: !2631)
!2656 = !DILocation(line: 976, column: 1, scope: !2631)
!2657 = !DILocation(line: 975, column: 3, scope: !2631)
!2658 = distinct !DISubprogram(name: "quotearg_char", scope: !256, file: !256, line: 979, type: !2659, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!44, !56, !45}
!2661 = !{!2662, !2663}
!2662 = !DILocalVariable(name: "arg", arg: 1, scope: !2658, file: !256, line: 979, type: !56)
!2663 = !DILocalVariable(name: "ch", arg: 2, scope: !2658, file: !256, line: 979, type: !45)
!2664 = !DILocation(line: 0, scope: !2658)
!2665 = !DILocation(line: 0, scope: !2631, inlinedAt: !2666)
!2666 = distinct !DILocation(line: 981, column: 10, scope: !2658)
!2667 = !DILocation(line: 972, column: 3, scope: !2631, inlinedAt: !2666)
!2668 = !DILocation(line: 972, column: 26, scope: !2631, inlinedAt: !2666)
!2669 = !DILocation(line: 973, column: 13, scope: !2631, inlinedAt: !2666)
!2670 = !DILocation(line: 0, scope: !1650, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 974, column: 3, scope: !2631, inlinedAt: !2666)
!2672 = !DILocation(line: 147, column: 62, scope: !1650, inlinedAt: !2671)
!2673 = !DILocation(line: 147, column: 57, scope: !1650, inlinedAt: !2671)
!2674 = !DILocation(line: 148, column: 15, scope: !1650, inlinedAt: !2671)
!2675 = !DILocation(line: 149, column: 21, scope: !1650, inlinedAt: !2671)
!2676 = !DILocation(line: 149, column: 24, scope: !1650, inlinedAt: !2671)
!2677 = !DILocation(line: 149, column: 34, scope: !1650, inlinedAt: !2671)
!2678 = !DILocation(line: 150, column: 19, scope: !1650, inlinedAt: !2671)
!2679 = !DILocation(line: 150, column: 24, scope: !1650, inlinedAt: !2671)
!2680 = !DILocation(line: 150, column: 6, scope: !1650, inlinedAt: !2671)
!2681 = !DILocation(line: 975, column: 10, scope: !2631, inlinedAt: !2666)
!2682 = !DILocation(line: 976, column: 1, scope: !2631, inlinedAt: !2666)
!2683 = !DILocation(line: 981, column: 3, scope: !2658)
!2684 = distinct !DISubprogram(name: "quotearg_colon", scope: !256, file: !256, line: 985, type: !670, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2685)
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "arg", arg: 1, scope: !2684, file: !256, line: 985, type: !56)
!2687 = !DILocation(line: 0, scope: !2684)
!2688 = !DILocation(line: 0, scope: !2658, inlinedAt: !2689)
!2689 = distinct !DILocation(line: 987, column: 10, scope: !2684)
!2690 = !DILocation(line: 0, scope: !2631, inlinedAt: !2691)
!2691 = distinct !DILocation(line: 981, column: 10, scope: !2658, inlinedAt: !2689)
!2692 = !DILocation(line: 972, column: 3, scope: !2631, inlinedAt: !2691)
!2693 = !DILocation(line: 972, column: 26, scope: !2631, inlinedAt: !2691)
!2694 = !DILocation(line: 973, column: 13, scope: !2631, inlinedAt: !2691)
!2695 = !DILocation(line: 0, scope: !1650, inlinedAt: !2696)
!2696 = distinct !DILocation(line: 974, column: 3, scope: !2631, inlinedAt: !2691)
!2697 = !DILocation(line: 147, column: 57, scope: !1650, inlinedAt: !2696)
!2698 = !DILocation(line: 149, column: 21, scope: !1650, inlinedAt: !2696)
!2699 = !DILocation(line: 150, column: 6, scope: !1650, inlinedAt: !2696)
!2700 = !DILocation(line: 975, column: 10, scope: !2631, inlinedAt: !2691)
!2701 = !DILocation(line: 976, column: 1, scope: !2631, inlinedAt: !2691)
!2702 = !DILocation(line: 987, column: 3, scope: !2684)
!2703 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !256, file: !256, line: 991, type: !2508, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2704)
!2704 = !{!2705, !2706}
!2705 = !DILocalVariable(name: "arg", arg: 1, scope: !2703, file: !256, line: 991, type: !56)
!2706 = !DILocalVariable(name: "argsize", arg: 2, scope: !2703, file: !256, line: 991, type: !54)
!2707 = !DILocation(line: 0, scope: !2703)
!2708 = !DILocation(line: 0, scope: !2631, inlinedAt: !2709)
!2709 = distinct !DILocation(line: 993, column: 10, scope: !2703)
!2710 = !DILocation(line: 972, column: 3, scope: !2631, inlinedAt: !2709)
!2711 = !DILocation(line: 972, column: 26, scope: !2631, inlinedAt: !2709)
!2712 = !DILocation(line: 973, column: 13, scope: !2631, inlinedAt: !2709)
!2713 = !DILocation(line: 0, scope: !1650, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 974, column: 3, scope: !2631, inlinedAt: !2709)
!2715 = !DILocation(line: 147, column: 57, scope: !1650, inlinedAt: !2714)
!2716 = !DILocation(line: 149, column: 21, scope: !1650, inlinedAt: !2714)
!2717 = !DILocation(line: 150, column: 6, scope: !1650, inlinedAt: !2714)
!2718 = !DILocation(line: 975, column: 10, scope: !2631, inlinedAt: !2709)
!2719 = !DILocation(line: 976, column: 1, scope: !2631, inlinedAt: !2709)
!2720 = !DILocation(line: 993, column: 3, scope: !2703)
!2721 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !256, file: !256, line: 997, type: !2519, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2722)
!2722 = !{!2723, !2724, !2725, !2726}
!2723 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !256, line: 997, type: !52)
!2724 = !DILocalVariable(name: "s", arg: 2, scope: !2721, file: !256, line: 997, type: !14)
!2725 = !DILocalVariable(name: "arg", arg: 3, scope: !2721, file: !256, line: 997, type: !56)
!2726 = !DILocalVariable(name: "options", scope: !2721, file: !256, line: 999, type: !273)
!2727 = !DILocation(line: 0, scope: !2721)
!2728 = !DILocation(line: 999, column: 3, scope: !2721)
!2729 = !DILocation(line: 999, column: 26, scope: !2721)
!2730 = !DILocation(line: 0, scope: !2534, inlinedAt: !2731)
!2731 = distinct !DILocation(line: 1000, column: 13, scope: !2721)
!2732 = !DILocation(line: 186, column: 13, scope: !2543, inlinedAt: !2731)
!2733 = !DILocation(line: 186, column: 7, scope: !2534, inlinedAt: !2731)
!2734 = !DILocation(line: 187, column: 5, scope: !2543, inlinedAt: !2731)
!2735 = !{!2736}
!2736 = distinct !{!2736, !2737, !"quoting_options_from_style: argument 0"}
!2737 = distinct !{!2737, !"quoting_options_from_style"}
!2738 = !DILocation(line: 1000, column: 13, scope: !2721)
!2739 = !DILocation(line: 0, scope: !1650, inlinedAt: !2740)
!2740 = distinct !DILocation(line: 1001, column: 3, scope: !2721)
!2741 = !DILocation(line: 147, column: 57, scope: !1650, inlinedAt: !2740)
!2742 = !DILocation(line: 149, column: 21, scope: !1650, inlinedAt: !2740)
!2743 = !DILocation(line: 150, column: 6, scope: !1650, inlinedAt: !2740)
!2744 = !DILocation(line: 1002, column: 10, scope: !2721)
!2745 = !DILocation(line: 1003, column: 1, scope: !2721)
!2746 = !DILocation(line: 1002, column: 3, scope: !2721)
!2747 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !256, file: !256, line: 1006, type: !2748, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!44, !52, !56, !56, !56}
!2750 = !{!2751, !2752, !2753, !2754}
!2751 = !DILocalVariable(name: "n", arg: 1, scope: !2747, file: !256, line: 1006, type: !52)
!2752 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2747, file: !256, line: 1006, type: !56)
!2753 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2747, file: !256, line: 1007, type: !56)
!2754 = !DILocalVariable(name: "arg", arg: 4, scope: !2747, file: !256, line: 1007, type: !56)
!2755 = !DILocation(line: 0, scope: !2747)
!2756 = !DILocalVariable(name: "n", arg: 1, scope: !2757, file: !256, line: 1014, type: !52)
!2757 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !256, file: !256, line: 1014, type: !2758, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!44, !52, !56, !56, !56, !54}
!2760 = !{!2756, !2761, !2762, !2763, !2764, !2765}
!2761 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2757, file: !256, line: 1014, type: !56)
!2762 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2757, file: !256, line: 1015, type: !56)
!2763 = !DILocalVariable(name: "arg", arg: 4, scope: !2757, file: !256, line: 1016, type: !56)
!2764 = !DILocalVariable(name: "argsize", arg: 5, scope: !2757, file: !256, line: 1016, type: !54)
!2765 = !DILocalVariable(name: "o", scope: !2757, file: !256, line: 1018, type: !273)
!2766 = !DILocation(line: 0, scope: !2757, inlinedAt: !2767)
!2767 = distinct !DILocation(line: 1009, column: 10, scope: !2747)
!2768 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2767)
!2769 = !DILocation(line: 1018, column: 26, scope: !2757, inlinedAt: !2767)
!2770 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2767)
!2771 = !DILocation(line: 0, scope: !1690, inlinedAt: !2772)
!2772 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2767)
!2773 = !DILocation(line: 174, column: 6, scope: !1690, inlinedAt: !2772)
!2774 = !DILocation(line: 174, column: 12, scope: !1690, inlinedAt: !2772)
!2775 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2772)
!2776 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2772)
!2777 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2772)
!2778 = !DILocation(line: 177, column: 6, scope: !1690, inlinedAt: !2772)
!2779 = !DILocation(line: 177, column: 17, scope: !1690, inlinedAt: !2772)
!2780 = !DILocation(line: 178, column: 6, scope: !1690, inlinedAt: !2772)
!2781 = !DILocation(line: 178, column: 18, scope: !1690, inlinedAt: !2772)
!2782 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2767)
!2783 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2767)
!2784 = !DILocation(line: 1009, column: 3, scope: !2747)
!2785 = !DILocation(line: 0, scope: !2757)
!2786 = !DILocation(line: 1018, column: 3, scope: !2757)
!2787 = !DILocation(line: 1018, column: 26, scope: !2757)
!2788 = !DILocation(line: 1018, column: 30, scope: !2757)
!2789 = !DILocation(line: 0, scope: !1690, inlinedAt: !2790)
!2790 = distinct !DILocation(line: 1019, column: 3, scope: !2757)
!2791 = !DILocation(line: 174, column: 6, scope: !1690, inlinedAt: !2790)
!2792 = !DILocation(line: 174, column: 12, scope: !1690, inlinedAt: !2790)
!2793 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2790)
!2794 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2790)
!2795 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2790)
!2796 = !DILocation(line: 177, column: 6, scope: !1690, inlinedAt: !2790)
!2797 = !DILocation(line: 177, column: 17, scope: !1690, inlinedAt: !2790)
!2798 = !DILocation(line: 178, column: 6, scope: !1690, inlinedAt: !2790)
!2799 = !DILocation(line: 178, column: 18, scope: !1690, inlinedAt: !2790)
!2800 = !DILocation(line: 1020, column: 10, scope: !2757)
!2801 = !DILocation(line: 1021, column: 1, scope: !2757)
!2802 = !DILocation(line: 1020, column: 3, scope: !2757)
!2803 = distinct !DISubprogram(name: "quotearg_custom", scope: !256, file: !256, line: 1024, type: !2804, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2806)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!44, !56, !56, !56}
!2806 = !{!2807, !2808, !2809}
!2807 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2803, file: !256, line: 1024, type: !56)
!2808 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2803, file: !256, line: 1024, type: !56)
!2809 = !DILocalVariable(name: "arg", arg: 3, scope: !2803, file: !256, line: 1025, type: !56)
!2810 = !DILocation(line: 0, scope: !2803)
!2811 = !DILocation(line: 0, scope: !2747, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1027, column: 10, scope: !2803)
!2813 = !DILocation(line: 0, scope: !2757, inlinedAt: !2814)
!2814 = distinct !DILocation(line: 1009, column: 10, scope: !2747, inlinedAt: !2812)
!2815 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2814)
!2816 = !DILocation(line: 1018, column: 26, scope: !2757, inlinedAt: !2814)
!2817 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2814)
!2818 = !DILocation(line: 0, scope: !1690, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2814)
!2820 = !DILocation(line: 174, column: 6, scope: !1690, inlinedAt: !2819)
!2821 = !DILocation(line: 174, column: 12, scope: !1690, inlinedAt: !2819)
!2822 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2819)
!2823 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2819)
!2824 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2819)
!2825 = !DILocation(line: 177, column: 6, scope: !1690, inlinedAt: !2819)
!2826 = !DILocation(line: 177, column: 17, scope: !1690, inlinedAt: !2819)
!2827 = !DILocation(line: 178, column: 6, scope: !1690, inlinedAt: !2819)
!2828 = !DILocation(line: 178, column: 18, scope: !1690, inlinedAt: !2819)
!2829 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2814)
!2830 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2814)
!2831 = !DILocation(line: 1027, column: 3, scope: !2803)
!2832 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !256, file: !256, line: 1031, type: !2833, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!44, !56, !56, !56, !54}
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2832, file: !256, line: 1031, type: !56)
!2837 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2832, file: !256, line: 1031, type: !56)
!2838 = !DILocalVariable(name: "arg", arg: 3, scope: !2832, file: !256, line: 1032, type: !56)
!2839 = !DILocalVariable(name: "argsize", arg: 4, scope: !2832, file: !256, line: 1032, type: !54)
!2840 = !DILocation(line: 0, scope: !2832)
!2841 = !DILocation(line: 0, scope: !2757, inlinedAt: !2842)
!2842 = distinct !DILocation(line: 1034, column: 10, scope: !2832)
!2843 = !DILocation(line: 1018, column: 3, scope: !2757, inlinedAt: !2842)
!2844 = !DILocation(line: 1018, column: 26, scope: !2757, inlinedAt: !2842)
!2845 = !DILocation(line: 1018, column: 30, scope: !2757, inlinedAt: !2842)
!2846 = !DILocation(line: 0, scope: !1690, inlinedAt: !2847)
!2847 = distinct !DILocation(line: 1019, column: 3, scope: !2757, inlinedAt: !2842)
!2848 = !DILocation(line: 174, column: 6, scope: !1690, inlinedAt: !2847)
!2849 = !DILocation(line: 174, column: 12, scope: !1690, inlinedAt: !2847)
!2850 = !DILocation(line: 175, column: 8, scope: !1704, inlinedAt: !2847)
!2851 = !DILocation(line: 175, column: 19, scope: !1704, inlinedAt: !2847)
!2852 = !DILocation(line: 176, column: 5, scope: !1704, inlinedAt: !2847)
!2853 = !DILocation(line: 177, column: 6, scope: !1690, inlinedAt: !2847)
!2854 = !DILocation(line: 177, column: 17, scope: !1690, inlinedAt: !2847)
!2855 = !DILocation(line: 178, column: 6, scope: !1690, inlinedAt: !2847)
!2856 = !DILocation(line: 178, column: 18, scope: !1690, inlinedAt: !2847)
!2857 = !DILocation(line: 1020, column: 10, scope: !2757, inlinedAt: !2842)
!2858 = !DILocation(line: 1021, column: 1, scope: !2757, inlinedAt: !2842)
!2859 = !DILocation(line: 1034, column: 3, scope: !2832)
!2860 = distinct !DISubprogram(name: "quote_n_mem", scope: !256, file: !256, line: 1049, type: !2861, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!56, !52, !56, !54}
!2863 = !{!2864, !2865, !2866}
!2864 = !DILocalVariable(name: "n", arg: 1, scope: !2860, file: !256, line: 1049, type: !52)
!2865 = !DILocalVariable(name: "arg", arg: 2, scope: !2860, file: !256, line: 1049, type: !56)
!2866 = !DILocalVariable(name: "argsize", arg: 3, scope: !2860, file: !256, line: 1049, type: !54)
!2867 = !DILocation(line: 0, scope: !2860)
!2868 = !DILocation(line: 1051, column: 10, scope: !2860)
!2869 = !DILocation(line: 1051, column: 3, scope: !2860)
!2870 = distinct !DISubprogram(name: "quote_mem", scope: !256, file: !256, line: 1055, type: !2871, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2873)
!2871 = !DISubroutineType(types: !2872)
!2872 = !{!56, !56, !54}
!2873 = !{!2874, !2875}
!2874 = !DILocalVariable(name: "arg", arg: 1, scope: !2870, file: !256, line: 1055, type: !56)
!2875 = !DILocalVariable(name: "argsize", arg: 2, scope: !2870, file: !256, line: 1055, type: !54)
!2876 = !DILocation(line: 0, scope: !2870)
!2877 = !DILocation(line: 0, scope: !2860, inlinedAt: !2878)
!2878 = distinct !DILocation(line: 1057, column: 10, scope: !2870)
!2879 = !DILocation(line: 1051, column: 10, scope: !2860, inlinedAt: !2878)
!2880 = !DILocation(line: 1057, column: 3, scope: !2870)
!2881 = distinct !DISubprogram(name: "quote_n", scope: !256, file: !256, line: 1061, type: !2882, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2884)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!56, !52, !56}
!2884 = !{!2885, !2886}
!2885 = !DILocalVariable(name: "n", arg: 1, scope: !2881, file: !256, line: 1061, type: !52)
!2886 = !DILocalVariable(name: "arg", arg: 2, scope: !2881, file: !256, line: 1061, type: !56)
!2887 = !DILocation(line: 0, scope: !2881)
!2888 = !DILocation(line: 0, scope: !2860, inlinedAt: !2889)
!2889 = distinct !DILocation(line: 1063, column: 10, scope: !2881)
!2890 = !DILocation(line: 1051, column: 10, scope: !2860, inlinedAt: !2889)
!2891 = !DILocation(line: 1063, column: 3, scope: !2881)
!2892 = distinct !DISubprogram(name: "quote", scope: !256, file: !256, line: 1067, type: !2893, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !255, retainedNodes: !2895)
!2893 = !DISubroutineType(types: !2894)
!2894 = !{!56, !56}
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "arg", arg: 1, scope: !2892, file: !256, line: 1067, type: !56)
!2897 = !DILocation(line: 0, scope: !2892)
!2898 = !DILocation(line: 0, scope: !2881, inlinedAt: !2899)
!2899 = distinct !DILocation(line: 1069, column: 10, scope: !2892)
!2900 = !DILocation(line: 0, scope: !2860, inlinedAt: !2901)
!2901 = distinct !DILocation(line: 1063, column: 10, scope: !2881, inlinedAt: !2899)
!2902 = !DILocation(line: 1051, column: 10, scope: !2860, inlinedAt: !2901)
!2903 = !DILocation(line: 1069, column: 3, scope: !2892)
!2904 = distinct !DISubprogram(name: "version_etc_arn", scope: !374, file: !374, line: 61, type: !2905, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2942)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2907, !56, !56, !56, !2941, !54}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !2909)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !2910)
!2910 = !{!2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2909, file: !90, line: 51, baseType: !52, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2909, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2909, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2909, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2909, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2909, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2909, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2909, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2909, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2909, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2909, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2909, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2909, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2909, file: !90, line: 70, baseType: !2925, size: 64, offset: 832)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2909, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2909, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2909, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2909, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2909, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2909, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2909, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2909, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2909, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2909, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2909, file: !90, line: 93, baseType: !2925, size: 64, offset: 1344)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2909, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2909, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2909, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2909, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!2942 = !{!2943, !2944, !2945, !2946, !2947, !2948}
!2943 = !DILocalVariable(name: "stream", arg: 1, scope: !2904, file: !374, line: 61, type: !2907)
!2944 = !DILocalVariable(name: "command_name", arg: 2, scope: !2904, file: !374, line: 62, type: !56)
!2945 = !DILocalVariable(name: "package", arg: 3, scope: !2904, file: !374, line: 62, type: !56)
!2946 = !DILocalVariable(name: "version", arg: 4, scope: !2904, file: !374, line: 63, type: !56)
!2947 = !DILocalVariable(name: "authors", arg: 5, scope: !2904, file: !374, line: 64, type: !2941)
!2948 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2904, file: !374, line: 64, type: !54)
!2949 = !DILocation(line: 0, scope: !2904)
!2950 = !DILocation(line: 66, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2904, file: !374, line: 66, column: 7)
!2952 = !DILocation(line: 66, column: 7, scope: !2904)
!2953 = !DILocation(line: 67, column: 5, scope: !2951)
!2954 = !DILocation(line: 69, column: 5, scope: !2951)
!2955 = !DILocation(line: 83, column: 3, scope: !2904)
!2956 = !DILocation(line: 85, column: 3, scope: !2904)
!2957 = !DILocation(line: 88, column: 3, scope: !2904)
!2958 = !DILocation(line: 95, column: 3, scope: !2904)
!2959 = !DILocation(line: 97, column: 3, scope: !2904)
!2960 = !DILocation(line: 105, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2904, file: !374, line: 98, column: 5)
!2962 = !DILocation(line: 106, column: 7, scope: !2961)
!2963 = !DILocation(line: 109, column: 7, scope: !2961)
!2964 = !DILocation(line: 110, column: 7, scope: !2961)
!2965 = !DILocation(line: 113, column: 7, scope: !2961)
!2966 = !DILocation(line: 115, column: 7, scope: !2961)
!2967 = !DILocation(line: 120, column: 7, scope: !2961)
!2968 = !DILocation(line: 122, column: 7, scope: !2961)
!2969 = !DILocation(line: 127, column: 7, scope: !2961)
!2970 = !DILocation(line: 129, column: 7, scope: !2961)
!2971 = !DILocation(line: 134, column: 7, scope: !2961)
!2972 = !DILocation(line: 137, column: 7, scope: !2961)
!2973 = !DILocation(line: 142, column: 7, scope: !2961)
!2974 = !DILocation(line: 145, column: 7, scope: !2961)
!2975 = !DILocation(line: 150, column: 7, scope: !2961)
!2976 = !DILocation(line: 154, column: 7, scope: !2961)
!2977 = !DILocation(line: 159, column: 7, scope: !2961)
!2978 = !DILocation(line: 163, column: 7, scope: !2961)
!2979 = !DILocation(line: 170, column: 7, scope: !2961)
!2980 = !DILocation(line: 174, column: 7, scope: !2961)
!2981 = !DILocation(line: 176, column: 1, scope: !2904)
!2982 = distinct !DISubprogram(name: "version_etc_ar", scope: !374, file: !374, line: 183, type: !2983, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !2985)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{null, !2907, !56, !56, !56, !2941}
!2985 = !{!2986, !2987, !2988, !2989, !2990, !2991}
!2986 = !DILocalVariable(name: "stream", arg: 1, scope: !2982, file: !374, line: 183, type: !2907)
!2987 = !DILocalVariable(name: "command_name", arg: 2, scope: !2982, file: !374, line: 184, type: !56)
!2988 = !DILocalVariable(name: "package", arg: 3, scope: !2982, file: !374, line: 184, type: !56)
!2989 = !DILocalVariable(name: "version", arg: 4, scope: !2982, file: !374, line: 185, type: !56)
!2990 = !DILocalVariable(name: "authors", arg: 5, scope: !2982, file: !374, line: 185, type: !2941)
!2991 = !DILocalVariable(name: "n_authors", scope: !2982, file: !374, line: 187, type: !54)
!2992 = !DILocation(line: 0, scope: !2982)
!2993 = !DILocation(line: 189, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2982, file: !374, line: 189, column: 3)
!2995 = !DILocation(line: 0, scope: !2994)
!2996 = !DILocation(line: 189, column: 23, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2994, file: !374, line: 189, column: 3)
!2998 = !DILocation(line: 189, column: 3, scope: !2994)
!2999 = !DILocation(line: 189, column: 52, scope: !2997)
!3000 = distinct !{!3000, !2998, !3001, !525}
!3001 = !DILocation(line: 190, column: 5, scope: !2994)
!3002 = !DILocation(line: 191, column: 3, scope: !2982)
!3003 = !DILocation(line: 192, column: 1, scope: !2982)
!3004 = distinct !DISubprogram(name: "version_etc_va", scope: !374, file: !374, line: 199, type: !3005, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3018)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2907, !56, !56, !56, !3007}
!3007 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !182, line: 52, baseType: !3008)
!3008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !184, line: 32, baseType: !3009)
!3009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3010, baseType: !3011)
!3010 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !188, size: 256, elements: !3012)
!3012 = !{!3013, !3014, !3015, !3016, !3017}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3011, file: !3010, line: 192, baseType: !46, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3011, file: !3010, line: 192, baseType: !46, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3011, file: !3010, line: 192, baseType: !46, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3011, file: !3010, line: 192, baseType: !52, size: 32, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3011, file: !3010, line: 192, baseType: !52, size: 32, offset: 224)
!3018 = !{!3019, !3020, !3021, !3022, !3023, !3024, !3025}
!3019 = !DILocalVariable(name: "stream", arg: 1, scope: !3004, file: !374, line: 199, type: !2907)
!3020 = !DILocalVariable(name: "command_name", arg: 2, scope: !3004, file: !374, line: 200, type: !56)
!3021 = !DILocalVariable(name: "package", arg: 3, scope: !3004, file: !374, line: 200, type: !56)
!3022 = !DILocalVariable(name: "version", arg: 4, scope: !3004, file: !374, line: 201, type: !56)
!3023 = !DILocalVariable(name: "authors", arg: 5, scope: !3004, file: !374, line: 201, type: !3007)
!3024 = !DILocalVariable(name: "n_authors", scope: !3004, file: !374, line: 203, type: !54)
!3025 = !DILocalVariable(name: "authtab", scope: !3004, file: !374, line: 204, type: !3026)
!3026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, elements: !269)
!3027 = !DILocation(line: 0, scope: !3004)
!3028 = !DILocation(line: 201, column: 46, scope: !3004)
!3029 = !DILocation(line: 204, column: 3, scope: !3004)
!3030 = !DILocation(line: 204, column: 15, scope: !3004)
!3031 = !DILocation(line: 208, column: 35, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !374, line: 206, column: 3)
!3033 = distinct !DILexicalBlock(scope: !3004, file: !374, line: 206, column: 3)
!3034 = !DILocation(line: 208, column: 14, scope: !3032)
!3035 = !DILocation(line: 208, column: 33, scope: !3032)
!3036 = !DILocation(line: 208, column: 67, scope: !3032)
!3037 = !DILocation(line: 206, column: 3, scope: !3033)
!3038 = !DILocation(line: 0, scope: !3033)
!3039 = !DILocation(line: 211, column: 3, scope: !3004)
!3040 = !DILocation(line: 213, column: 1, scope: !3004)
!3041 = distinct !DISubprogram(name: "version_etc", scope: !374, file: !374, line: 230, type: !3042, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !3044)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2907, !56, !56, !56, null}
!3044 = !{!3045, !3046, !3047, !3048, !3049}
!3045 = !DILocalVariable(name: "stream", arg: 1, scope: !3041, file: !374, line: 230, type: !2907)
!3046 = !DILocalVariable(name: "command_name", arg: 2, scope: !3041, file: !374, line: 231, type: !56)
!3047 = !DILocalVariable(name: "package", arg: 3, scope: !3041, file: !374, line: 231, type: !56)
!3048 = !DILocalVariable(name: "version", arg: 4, scope: !3041, file: !374, line: 232, type: !56)
!3049 = !DILocalVariable(name: "authors", scope: !3041, file: !374, line: 234, type: !3007)
!3050 = !DILocation(line: 0, scope: !3041)
!3051 = !DILocation(line: 234, column: 3, scope: !3041)
!3052 = !DILocation(line: 234, column: 11, scope: !3041)
!3053 = !DILocation(line: 235, column: 3, scope: !3041)
!3054 = !DILocation(line: 236, column: 3, scope: !3041)
!3055 = !DILocation(line: 237, column: 3, scope: !3041)
!3056 = !DILocation(line: 238, column: 1, scope: !3041)
!3057 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !374, file: !374, line: 241, type: !209, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !373, retainedNodes: !472)
!3058 = !DILocation(line: 243, column: 3, scope: !3057)
!3059 = !DILocation(line: 248, column: 3, scope: !3057)
!3060 = !DILocation(line: 254, column: 3, scope: !3057)
!3061 = !DILocation(line: 259, column: 3, scope: !3057)
!3062 = !DILocation(line: 261, column: 1, scope: !3057)
!3063 = distinct !DISubprogram(name: "xnrealloc", scope: !3064, file: !3064, line: 147, type: !3065, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3067)
!3064 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!46, !46, !54, !54}
!3067 = !{!3068, !3069, !3070}
!3068 = !DILocalVariable(name: "p", arg: 1, scope: !3063, file: !3064, line: 147, type: !46)
!3069 = !DILocalVariable(name: "n", arg: 2, scope: !3063, file: !3064, line: 147, type: !54)
!3070 = !DILocalVariable(name: "s", arg: 3, scope: !3063, file: !3064, line: 147, type: !54)
!3071 = !DILocation(line: 0, scope: !3063)
!3072 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !381, line: 83, type: !46)
!3073 = distinct !DISubprogram(name: "xreallocarray", scope: !381, file: !381, line: 83, type: !3065, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3074)
!3074 = !{!3072, !3075, !3076}
!3075 = !DILocalVariable(name: "n", arg: 2, scope: !3073, file: !381, line: 83, type: !54)
!3076 = !DILocalVariable(name: "s", arg: 3, scope: !3073, file: !381, line: 83, type: !54)
!3077 = !DILocation(line: 0, scope: !3073, inlinedAt: !3078)
!3078 = distinct !DILocation(line: 149, column: 10, scope: !3063)
!3079 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3078)
!3080 = !DILocalVariable(name: "p", arg: 1, scope: !3081, file: !381, line: 37, type: !46)
!3081 = distinct !DISubprogram(name: "check_nonnull", scope: !381, file: !381, line: 37, type: !3082, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!46, !46}
!3084 = !{!3080}
!3085 = !DILocation(line: 0, scope: !3081, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3078)
!3087 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3086)
!3088 = distinct !DILexicalBlock(scope: !3081, file: !381, line: 39, column: 7)
!3089 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3086)
!3090 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3086)
!3091 = !DILocation(line: 149, column: 3, scope: !3063)
!3092 = !DILocation(line: 0, scope: !3073)
!3093 = !DILocation(line: 85, column: 25, scope: !3073)
!3094 = !DILocation(line: 0, scope: !3081, inlinedAt: !3095)
!3095 = distinct !DILocation(line: 85, column: 10, scope: !3073)
!3096 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3095)
!3097 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3095)
!3098 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3095)
!3099 = !DILocation(line: 85, column: 3, scope: !3073)
!3100 = distinct !DISubprogram(name: "xmalloc", scope: !381, file: !381, line: 47, type: !3101, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!46, !54}
!3103 = !{!3104}
!3104 = !DILocalVariable(name: "s", arg: 1, scope: !3100, file: !381, line: 47, type: !54)
!3105 = !DILocation(line: 0, scope: !3100)
!3106 = !DILocation(line: 49, column: 25, scope: !3100)
!3107 = !DILocation(line: 0, scope: !3081, inlinedAt: !3108)
!3108 = distinct !DILocation(line: 49, column: 10, scope: !3100)
!3109 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3108)
!3110 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3108)
!3111 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3108)
!3112 = !DILocation(line: 49, column: 3, scope: !3100)
!3113 = distinct !DISubprogram(name: "ximalloc", scope: !381, file: !381, line: 53, type: !3114, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!46, !400}
!3116 = !{!3117}
!3117 = !DILocalVariable(name: "s", arg: 1, scope: !3113, file: !381, line: 53, type: !400)
!3118 = !DILocation(line: 0, scope: !3113)
!3119 = !DILocalVariable(name: "s", arg: 1, scope: !3120, file: !3121, line: 55, type: !400)
!3120 = distinct !DISubprogram(name: "imalloc", scope: !3121, file: !3121, line: 55, type: !3114, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3122)
!3121 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!3122 = !{!3119}
!3123 = !DILocation(line: 0, scope: !3120, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 55, column: 25, scope: !3113)
!3125 = !DILocation(line: 57, column: 26, scope: !3120, inlinedAt: !3124)
!3126 = !DILocation(line: 0, scope: !3081, inlinedAt: !3127)
!3127 = distinct !DILocation(line: 55, column: 10, scope: !3113)
!3128 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3127)
!3129 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3127)
!3130 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3127)
!3131 = !DILocation(line: 55, column: 3, scope: !3113)
!3132 = distinct !DISubprogram(name: "xcharalloc", scope: !381, file: !381, line: 59, type: !3133, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3135)
!3133 = !DISubroutineType(types: !3134)
!3134 = !{!44, !54}
!3135 = !{!3136}
!3136 = !DILocalVariable(name: "n", arg: 1, scope: !3132, file: !381, line: 59, type: !54)
!3137 = !DILocation(line: 0, scope: !3132)
!3138 = !DILocation(line: 0, scope: !3100, inlinedAt: !3139)
!3139 = distinct !DILocation(line: 61, column: 10, scope: !3132)
!3140 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3139)
!3141 = !DILocation(line: 0, scope: !3081, inlinedAt: !3142)
!3142 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3139)
!3143 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3142)
!3144 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3142)
!3145 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3142)
!3146 = !DILocation(line: 61, column: 3, scope: !3132)
!3147 = distinct !DISubprogram(name: "xrealloc", scope: !381, file: !381, line: 68, type: !3148, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3150)
!3148 = !DISubroutineType(types: !3149)
!3149 = !{!46, !46, !54}
!3150 = !{!3151, !3152}
!3151 = !DILocalVariable(name: "p", arg: 1, scope: !3147, file: !381, line: 68, type: !46)
!3152 = !DILocalVariable(name: "s", arg: 2, scope: !3147, file: !381, line: 68, type: !54)
!3153 = !DILocation(line: 0, scope: !3147)
!3154 = !DILocalVariable(name: "ptr", arg: 1, scope: !3155, file: !3156, line: 2057, type: !46)
!3155 = distinct !DISubprogram(name: "rpl_realloc", scope: !3156, file: !3156, line: 2057, type: !3148, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3157)
!3156 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3157 = !{!3154, !3158}
!3158 = !DILocalVariable(name: "size", arg: 2, scope: !3155, file: !3156, line: 2057, type: !54)
!3159 = !DILocation(line: 0, scope: !3155, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 70, column: 25, scope: !3147)
!3161 = !DILocation(line: 2059, column: 24, scope: !3155, inlinedAt: !3160)
!3162 = !DILocation(line: 2059, column: 10, scope: !3155, inlinedAt: !3160)
!3163 = !DILocation(line: 0, scope: !3081, inlinedAt: !3164)
!3164 = distinct !DILocation(line: 70, column: 10, scope: !3147)
!3165 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3164)
!3166 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3164)
!3167 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3164)
!3168 = !DILocation(line: 70, column: 3, scope: !3147)
!3169 = distinct !DISubprogram(name: "xirealloc", scope: !381, file: !381, line: 74, type: !3170, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3172)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!46, !46, !400}
!3172 = !{!3173, !3174}
!3173 = !DILocalVariable(name: "p", arg: 1, scope: !3169, file: !381, line: 74, type: !46)
!3174 = !DILocalVariable(name: "s", arg: 2, scope: !3169, file: !381, line: 74, type: !400)
!3175 = !DILocation(line: 0, scope: !3169)
!3176 = !DILocalVariable(name: "p", arg: 1, scope: !3177, file: !3121, line: 66, type: !46)
!3177 = distinct !DISubprogram(name: "irealloc", scope: !3121, file: !3121, line: 66, type: !3170, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3178)
!3178 = !{!3176, !3179}
!3179 = !DILocalVariable(name: "s", arg: 2, scope: !3177, file: !3121, line: 66, type: !400)
!3180 = !DILocation(line: 0, scope: !3177, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 76, column: 25, scope: !3169)
!3182 = !DILocation(line: 0, scope: !3155, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 68, column: 26, scope: !3177, inlinedAt: !3181)
!3184 = !DILocation(line: 2059, column: 24, scope: !3155, inlinedAt: !3183)
!3185 = !DILocation(line: 2059, column: 10, scope: !3155, inlinedAt: !3183)
!3186 = !DILocation(line: 0, scope: !3081, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 76, column: 10, scope: !3169)
!3188 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3187)
!3189 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3187)
!3190 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3187)
!3191 = !DILocation(line: 76, column: 3, scope: !3169)
!3192 = distinct !DISubprogram(name: "xireallocarray", scope: !381, file: !381, line: 89, type: !3193, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3195)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!46, !46, !400, !400}
!3195 = !{!3196, !3197, !3198}
!3196 = !DILocalVariable(name: "p", arg: 1, scope: !3192, file: !381, line: 89, type: !46)
!3197 = !DILocalVariable(name: "n", arg: 2, scope: !3192, file: !381, line: 89, type: !400)
!3198 = !DILocalVariable(name: "s", arg: 3, scope: !3192, file: !381, line: 89, type: !400)
!3199 = !DILocation(line: 0, scope: !3192)
!3200 = !DILocalVariable(name: "p", arg: 1, scope: !3201, file: !3121, line: 98, type: !46)
!3201 = distinct !DISubprogram(name: "ireallocarray", scope: !3121, file: !3121, line: 98, type: !3193, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3202)
!3202 = !{!3200, !3203, !3204}
!3203 = !DILocalVariable(name: "n", arg: 2, scope: !3201, file: !3121, line: 98, type: !400)
!3204 = !DILocalVariable(name: "s", arg: 3, scope: !3201, file: !3121, line: 98, type: !400)
!3205 = !DILocation(line: 0, scope: !3201, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 91, column: 25, scope: !3192)
!3207 = !DILocation(line: 101, column: 13, scope: !3201, inlinedAt: !3206)
!3208 = !DILocation(line: 0, scope: !3081, inlinedAt: !3209)
!3209 = distinct !DILocation(line: 91, column: 10, scope: !3192)
!3210 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3209)
!3211 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3209)
!3212 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3209)
!3213 = !DILocation(line: 91, column: 3, scope: !3192)
!3214 = distinct !DISubprogram(name: "xnmalloc", scope: !381, file: !381, line: 98, type: !3215, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3217)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!46, !54, !54}
!3217 = !{!3218, !3219}
!3218 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !381, line: 98, type: !54)
!3219 = !DILocalVariable(name: "s", arg: 2, scope: !3214, file: !381, line: 98, type: !54)
!3220 = !DILocation(line: 0, scope: !3214)
!3221 = !DILocation(line: 0, scope: !3073, inlinedAt: !3222)
!3222 = distinct !DILocation(line: 100, column: 10, scope: !3214)
!3223 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3222)
!3224 = !DILocation(line: 0, scope: !3081, inlinedAt: !3225)
!3225 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3222)
!3226 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3225)
!3227 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3225)
!3228 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3225)
!3229 = !DILocation(line: 100, column: 3, scope: !3214)
!3230 = distinct !DISubprogram(name: "xinmalloc", scope: !381, file: !381, line: 104, type: !3231, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!46, !400, !400}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "n", arg: 1, scope: !3230, file: !381, line: 104, type: !400)
!3235 = !DILocalVariable(name: "s", arg: 2, scope: !3230, file: !381, line: 104, type: !400)
!3236 = !DILocation(line: 0, scope: !3230)
!3237 = !DILocation(line: 0, scope: !3192, inlinedAt: !3238)
!3238 = distinct !DILocation(line: 106, column: 10, scope: !3230)
!3239 = !DILocation(line: 0, scope: !3201, inlinedAt: !3240)
!3240 = distinct !DILocation(line: 91, column: 25, scope: !3192, inlinedAt: !3238)
!3241 = !DILocation(line: 101, column: 13, scope: !3201, inlinedAt: !3240)
!3242 = !DILocation(line: 0, scope: !3081, inlinedAt: !3243)
!3243 = distinct !DILocation(line: 91, column: 10, scope: !3192, inlinedAt: !3238)
!3244 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3243)
!3245 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3243)
!3246 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3243)
!3247 = !DILocation(line: 106, column: 3, scope: !3230)
!3248 = distinct !DISubprogram(name: "x2realloc", scope: !381, file: !381, line: 116, type: !3249, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!46, !46, !387}
!3251 = !{!3252, !3253}
!3252 = !DILocalVariable(name: "p", arg: 1, scope: !3248, file: !381, line: 116, type: !46)
!3253 = !DILocalVariable(name: "ps", arg: 2, scope: !3248, file: !381, line: 116, type: !387)
!3254 = !DILocation(line: 0, scope: !3248)
!3255 = !DILocation(line: 0, scope: !384, inlinedAt: !3256)
!3256 = distinct !DILocation(line: 118, column: 10, scope: !3248)
!3257 = !DILocation(line: 178, column: 14, scope: !384, inlinedAt: !3256)
!3258 = !DILocation(line: 180, column: 9, scope: !3259, inlinedAt: !3256)
!3259 = distinct !DILexicalBlock(scope: !384, file: !381, line: 180, column: 7)
!3260 = !DILocation(line: 180, column: 7, scope: !384, inlinedAt: !3256)
!3261 = !DILocation(line: 182, column: 13, scope: !3262, inlinedAt: !3256)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !381, line: 182, column: 11)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !381, line: 181, column: 5)
!3264 = !DILocation(line: 182, column: 11, scope: !3263, inlinedAt: !3256)
!3265 = !DILocation(line: 197, column: 11, scope: !3266, inlinedAt: !3256)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !381, line: 197, column: 11)
!3267 = distinct !DILexicalBlock(scope: !3259, file: !381, line: 195, column: 5)
!3268 = !DILocation(line: 197, column: 11, scope: !3267, inlinedAt: !3256)
!3269 = !DILocation(line: 198, column: 9, scope: !3266, inlinedAt: !3256)
!3270 = !DILocation(line: 0, scope: !3073, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 201, column: 7, scope: !384, inlinedAt: !3256)
!3272 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3271)
!3273 = !DILocation(line: 0, scope: !3081, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3271)
!3275 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3274)
!3276 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3274)
!3277 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3274)
!3278 = !DILocation(line: 202, column: 7, scope: !384, inlinedAt: !3256)
!3279 = !DILocation(line: 118, column: 3, scope: !3248)
!3280 = !DILocation(line: 0, scope: !384)
!3281 = !DILocation(line: 178, column: 14, scope: !384)
!3282 = !DILocation(line: 180, column: 9, scope: !3259)
!3283 = !DILocation(line: 180, column: 7, scope: !384)
!3284 = !DILocation(line: 182, column: 13, scope: !3262)
!3285 = !DILocation(line: 182, column: 11, scope: !3263)
!3286 = !DILocation(line: 190, column: 30, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3262, file: !381, line: 183, column: 9)
!3288 = !DILocation(line: 191, column: 16, scope: !3287)
!3289 = !DILocation(line: 191, column: 13, scope: !3287)
!3290 = !DILocation(line: 192, column: 9, scope: !3287)
!3291 = !DILocation(line: 197, column: 11, scope: !3266)
!3292 = !DILocation(line: 197, column: 11, scope: !3267)
!3293 = !DILocation(line: 198, column: 9, scope: !3266)
!3294 = !DILocation(line: 0, scope: !3073, inlinedAt: !3295)
!3295 = distinct !DILocation(line: 201, column: 7, scope: !384)
!3296 = !DILocation(line: 85, column: 25, scope: !3073, inlinedAt: !3295)
!3297 = !DILocation(line: 0, scope: !3081, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 85, column: 10, scope: !3073, inlinedAt: !3295)
!3299 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3298)
!3300 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3298)
!3301 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3298)
!3302 = !DILocation(line: 202, column: 7, scope: !384)
!3303 = !DILocation(line: 203, column: 3, scope: !384)
!3304 = !DILocation(line: 0, scope: !396)
!3305 = !DILocation(line: 230, column: 14, scope: !396)
!3306 = !DILocation(line: 238, column: 7, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !396, file: !381, line: 238, column: 7)
!3308 = !DILocation(line: 238, column: 7, scope: !396)
!3309 = !DILocation(line: 240, column: 9, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !396, file: !381, line: 240, column: 7)
!3311 = !DILocation(line: 240, column: 18, scope: !3310)
!3312 = !DILocation(line: 253, column: 8, scope: !396)
!3313 = !DILocation(line: 258, column: 27, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3315, file: !381, line: 257, column: 5)
!3315 = distinct !DILexicalBlock(scope: !396, file: !381, line: 256, column: 7)
!3316 = !DILocation(line: 259, column: 32, scope: !3314)
!3317 = !DILocation(line: 260, column: 5, scope: !3314)
!3318 = !DILocation(line: 262, column: 9, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !396, file: !381, line: 262, column: 7)
!3320 = !DILocation(line: 262, column: 7, scope: !396)
!3321 = !DILocation(line: 263, column: 9, scope: !3319)
!3322 = !DILocation(line: 263, column: 5, scope: !3319)
!3323 = !DILocation(line: 264, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !396, file: !381, line: 264, column: 7)
!3325 = !DILocation(line: 264, column: 14, scope: !3324)
!3326 = !DILocation(line: 265, column: 7, scope: !3324)
!3327 = !DILocation(line: 265, column: 11, scope: !3324)
!3328 = !DILocation(line: 266, column: 11, scope: !3324)
!3329 = !DILocation(line: 266, column: 26, scope: !3324)
!3330 = !DILocation(line: 267, column: 14, scope: !3324)
!3331 = !DILocation(line: 264, column: 7, scope: !396)
!3332 = !DILocation(line: 268, column: 5, scope: !3324)
!3333 = !DILocation(line: 0, scope: !3147, inlinedAt: !3334)
!3334 = distinct !DILocation(line: 269, column: 8, scope: !396)
!3335 = !DILocation(line: 0, scope: !3155, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 70, column: 25, scope: !3147, inlinedAt: !3334)
!3337 = !DILocation(line: 2059, column: 24, scope: !3155, inlinedAt: !3336)
!3338 = !DILocation(line: 2059, column: 10, scope: !3155, inlinedAt: !3336)
!3339 = !DILocation(line: 0, scope: !3081, inlinedAt: !3340)
!3340 = distinct !DILocation(line: 70, column: 10, scope: !3147, inlinedAt: !3334)
!3341 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3340)
!3342 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3340)
!3343 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3340)
!3344 = !DILocation(line: 270, column: 7, scope: !396)
!3345 = !DILocation(line: 271, column: 3, scope: !396)
!3346 = distinct !DISubprogram(name: "xzalloc", scope: !381, file: !381, line: 279, type: !3101, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3347)
!3347 = !{!3348}
!3348 = !DILocalVariable(name: "s", arg: 1, scope: !3346, file: !381, line: 279, type: !54)
!3349 = !DILocation(line: 0, scope: !3346)
!3350 = !DILocalVariable(name: "n", arg: 1, scope: !3351, file: !381, line: 294, type: !54)
!3351 = distinct !DISubprogram(name: "xcalloc", scope: !381, file: !381, line: 294, type: !3215, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3352)
!3352 = !{!3350, !3353}
!3353 = !DILocalVariable(name: "s", arg: 2, scope: !3351, file: !381, line: 294, type: !54)
!3354 = !DILocation(line: 0, scope: !3351, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 281, column: 10, scope: !3346)
!3356 = !DILocation(line: 296, column: 25, scope: !3351, inlinedAt: !3355)
!3357 = !DILocation(line: 0, scope: !3081, inlinedAt: !3358)
!3358 = distinct !DILocation(line: 296, column: 10, scope: !3351, inlinedAt: !3355)
!3359 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3358)
!3360 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3358)
!3361 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3358)
!3362 = !DILocation(line: 281, column: 3, scope: !3346)
!3363 = !DILocation(line: 0, scope: !3351)
!3364 = !DILocation(line: 296, column: 25, scope: !3351)
!3365 = !DILocation(line: 0, scope: !3081, inlinedAt: !3366)
!3366 = distinct !DILocation(line: 296, column: 10, scope: !3351)
!3367 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3366)
!3368 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3366)
!3369 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3366)
!3370 = !DILocation(line: 296, column: 3, scope: !3351)
!3371 = distinct !DISubprogram(name: "xizalloc", scope: !381, file: !381, line: 285, type: !3114, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3372)
!3372 = !{!3373}
!3373 = !DILocalVariable(name: "s", arg: 1, scope: !3371, file: !381, line: 285, type: !400)
!3374 = !DILocation(line: 0, scope: !3371)
!3375 = !DILocalVariable(name: "n", arg: 1, scope: !3376, file: !381, line: 300, type: !400)
!3376 = distinct !DISubprogram(name: "xicalloc", scope: !381, file: !381, line: 300, type: !3231, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3377)
!3377 = !{!3375, !3378}
!3378 = !DILocalVariable(name: "s", arg: 2, scope: !3376, file: !381, line: 300, type: !400)
!3379 = !DILocation(line: 0, scope: !3376, inlinedAt: !3380)
!3380 = distinct !DILocation(line: 287, column: 10, scope: !3371)
!3381 = !DILocalVariable(name: "n", arg: 1, scope: !3382, file: !3121, line: 77, type: !400)
!3382 = distinct !DISubprogram(name: "icalloc", scope: !3121, file: !3121, line: 77, type: !3231, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3383)
!3383 = !{!3381, !3384}
!3384 = !DILocalVariable(name: "s", arg: 2, scope: !3382, file: !3121, line: 77, type: !400)
!3385 = !DILocation(line: 0, scope: !3382, inlinedAt: !3386)
!3386 = distinct !DILocation(line: 302, column: 25, scope: !3376, inlinedAt: !3380)
!3387 = !DILocation(line: 91, column: 10, scope: !3382, inlinedAt: !3386)
!3388 = !DILocation(line: 0, scope: !3081, inlinedAt: !3389)
!3389 = distinct !DILocation(line: 302, column: 10, scope: !3376, inlinedAt: !3380)
!3390 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3389)
!3391 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3389)
!3392 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3389)
!3393 = !DILocation(line: 287, column: 3, scope: !3371)
!3394 = !DILocation(line: 0, scope: !3376)
!3395 = !DILocation(line: 0, scope: !3382, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 302, column: 25, scope: !3376)
!3397 = !DILocation(line: 91, column: 10, scope: !3382, inlinedAt: !3396)
!3398 = !DILocation(line: 0, scope: !3081, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 302, column: 10, scope: !3376)
!3400 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3399)
!3401 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3399)
!3402 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3399)
!3403 = !DILocation(line: 302, column: 3, scope: !3376)
!3404 = distinct !DISubprogram(name: "xmemdup", scope: !381, file: !381, line: 310, type: !3405, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3407)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!46, !676, !54}
!3407 = !{!3408, !3409}
!3408 = !DILocalVariable(name: "p", arg: 1, scope: !3404, file: !381, line: 310, type: !676)
!3409 = !DILocalVariable(name: "s", arg: 2, scope: !3404, file: !381, line: 310, type: !54)
!3410 = !DILocation(line: 0, scope: !3404)
!3411 = !DILocation(line: 0, scope: !3100, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 312, column: 18, scope: !3404)
!3413 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3412)
!3414 = !DILocation(line: 0, scope: !3081, inlinedAt: !3415)
!3415 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3412)
!3416 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3415)
!3417 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3415)
!3418 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3415)
!3419 = !DILocalVariable(name: "__dest", arg: 1, scope: !3420, file: !1592, line: 26, type: !3423)
!3420 = distinct !DISubprogram(name: "memcpy", scope: !1592, file: !1592, line: 26, type: !3421, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3424)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!46, !3423, !675, !54}
!3423 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!3424 = !{!3419, !3425, !3426}
!3425 = !DILocalVariable(name: "__src", arg: 2, scope: !3420, file: !1592, line: 26, type: !675)
!3426 = !DILocalVariable(name: "__len", arg: 3, scope: !3420, file: !1592, line: 26, type: !54)
!3427 = !DILocation(line: 0, scope: !3420, inlinedAt: !3428)
!3428 = distinct !DILocation(line: 312, column: 10, scope: !3404)
!3429 = !DILocation(line: 29, column: 10, scope: !3420, inlinedAt: !3428)
!3430 = !DILocation(line: 312, column: 3, scope: !3404)
!3431 = distinct !DISubprogram(name: "ximemdup", scope: !381, file: !381, line: 316, type: !3432, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3434)
!3432 = !DISubroutineType(types: !3433)
!3433 = !{!46, !676, !400}
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "p", arg: 1, scope: !3431, file: !381, line: 316, type: !676)
!3436 = !DILocalVariable(name: "s", arg: 2, scope: !3431, file: !381, line: 316, type: !400)
!3437 = !DILocation(line: 0, scope: !3431)
!3438 = !DILocation(line: 0, scope: !3113, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 318, column: 18, scope: !3431)
!3440 = !DILocation(line: 0, scope: !3120, inlinedAt: !3441)
!3441 = distinct !DILocation(line: 55, column: 25, scope: !3113, inlinedAt: !3439)
!3442 = !DILocation(line: 57, column: 26, scope: !3120, inlinedAt: !3441)
!3443 = !DILocation(line: 0, scope: !3081, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 55, column: 10, scope: !3113, inlinedAt: !3439)
!3445 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3444)
!3446 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3444)
!3447 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3444)
!3448 = !DILocation(line: 0, scope: !3420, inlinedAt: !3449)
!3449 = distinct !DILocation(line: 318, column: 10, scope: !3431)
!3450 = !DILocation(line: 29, column: 10, scope: !3420, inlinedAt: !3449)
!3451 = !DILocation(line: 318, column: 3, scope: !3431)
!3452 = distinct !DISubprogram(name: "ximemdup0", scope: !381, file: !381, line: 325, type: !3453, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!44, !676, !400}
!3455 = !{!3456, !3457, !3458}
!3456 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !381, line: 325, type: !676)
!3457 = !DILocalVariable(name: "s", arg: 2, scope: !3452, file: !381, line: 325, type: !400)
!3458 = !DILocalVariable(name: "result", scope: !3452, file: !381, line: 327, type: !44)
!3459 = !DILocation(line: 0, scope: !3452)
!3460 = !DILocation(line: 327, column: 30, scope: !3452)
!3461 = !DILocation(line: 0, scope: !3113, inlinedAt: !3462)
!3462 = distinct !DILocation(line: 327, column: 18, scope: !3452)
!3463 = !DILocation(line: 0, scope: !3120, inlinedAt: !3464)
!3464 = distinct !DILocation(line: 55, column: 25, scope: !3113, inlinedAt: !3462)
!3465 = !DILocation(line: 57, column: 26, scope: !3120, inlinedAt: !3464)
!3466 = !DILocation(line: 0, scope: !3081, inlinedAt: !3467)
!3467 = distinct !DILocation(line: 55, column: 10, scope: !3113, inlinedAt: !3462)
!3468 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3467)
!3469 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3467)
!3470 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3467)
!3471 = !DILocation(line: 328, column: 3, scope: !3452)
!3472 = !DILocation(line: 328, column: 13, scope: !3452)
!3473 = !DILocation(line: 0, scope: !3420, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 329, column: 10, scope: !3452)
!3475 = !DILocation(line: 29, column: 10, scope: !3420, inlinedAt: !3474)
!3476 = !DILocation(line: 329, column: 3, scope: !3452)
!3477 = distinct !DISubprogram(name: "xstrdup", scope: !381, file: !381, line: 335, type: !670, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !3478)
!3478 = !{!3479}
!3479 = !DILocalVariable(name: "string", arg: 1, scope: !3477, file: !381, line: 335, type: !56)
!3480 = !DILocation(line: 0, scope: !3477)
!3481 = !DILocation(line: 337, column: 27, scope: !3477)
!3482 = !DILocation(line: 337, column: 43, scope: !3477)
!3483 = !DILocation(line: 0, scope: !3404, inlinedAt: !3484)
!3484 = distinct !DILocation(line: 337, column: 10, scope: !3477)
!3485 = !DILocation(line: 0, scope: !3100, inlinedAt: !3486)
!3486 = distinct !DILocation(line: 312, column: 18, scope: !3404, inlinedAt: !3484)
!3487 = !DILocation(line: 49, column: 25, scope: !3100, inlinedAt: !3486)
!3488 = !DILocation(line: 0, scope: !3081, inlinedAt: !3489)
!3489 = distinct !DILocation(line: 49, column: 10, scope: !3100, inlinedAt: !3486)
!3490 = !DILocation(line: 39, column: 8, scope: !3088, inlinedAt: !3489)
!3491 = !DILocation(line: 39, column: 7, scope: !3081, inlinedAt: !3489)
!3492 = !DILocation(line: 40, column: 5, scope: !3088, inlinedAt: !3489)
!3493 = !DILocation(line: 0, scope: !3420, inlinedAt: !3494)
!3494 = distinct !DILocation(line: 312, column: 10, scope: !3404, inlinedAt: !3484)
!3495 = !DILocation(line: 29, column: 10, scope: !3420, inlinedAt: !3494)
!3496 = !DILocation(line: 337, column: 3, scope: !3477)
!3497 = distinct !DISubprogram(name: "xalloc_die", scope: !415, file: !415, line: 32, type: !209, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !414, retainedNodes: !3498)
!3498 = !{!3499}
!3499 = !DILocalVariable(name: "__errstatus", scope: !3500, file: !415, line: 34, type: !3501)
!3500 = distinct !DILexicalBlock(scope: !3497, file: !415, line: 34, column: 3)
!3501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!3502 = !DILocation(line: 34, column: 3, scope: !3500)
!3503 = !DILocation(line: 0, scope: !3500)
!3504 = !DILocation(line: 40, column: 3, scope: !3497)
!3505 = distinct !DISubprogram(name: "xstrtoumax", scope: !3506, file: !3506, line: 71, type: !3507, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3511)
!3506 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!3509, !56, !681, !52, !3510, !56}
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 43, baseType: !5)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!3511 = !{!3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3522, !3523, !3524, !3525, !3528, !3529}
!3512 = !DILocalVariable(name: "nptr", arg: 1, scope: !3505, file: !3506, line: 71, type: !56)
!3513 = !DILocalVariable(name: "endptr", arg: 2, scope: !3505, file: !3506, line: 71, type: !681)
!3514 = !DILocalVariable(name: "base", arg: 3, scope: !3505, file: !3506, line: 71, type: !52)
!3515 = !DILocalVariable(name: "val", arg: 4, scope: !3505, file: !3506, line: 72, type: !3510)
!3516 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3505, file: !3506, line: 72, type: !56)
!3517 = !DILocalVariable(name: "t_ptr", scope: !3505, file: !3506, line: 74, type: !44)
!3518 = !DILocalVariable(name: "p", scope: !3505, file: !3506, line: 75, type: !681)
!3519 = !DILocalVariable(name: "q", scope: !3520, file: !3506, line: 79, type: !56)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !3506, line: 78, column: 5)
!3521 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 77, column: 7)
!3522 = !DILocalVariable(name: "ch", scope: !3520, file: !3506, line: 80, type: !58)
!3523 = !DILocalVariable(name: "tmp", scope: !3505, file: !3506, line: 91, type: !420)
!3524 = !DILocalVariable(name: "err", scope: !3505, file: !3506, line: 92, type: !3509)
!3525 = !DILocalVariable(name: "xbase", scope: !3526, file: !3506, line: 126, type: !52)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !3506, line: 119, column: 5)
!3527 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 118, column: 7)
!3528 = !DILocalVariable(name: "suffixes", scope: !3526, file: !3506, line: 127, type: !52)
!3529 = !DILocalVariable(name: "overflow", scope: !3526, file: !3506, line: 156, type: !3509)
!3530 = !DILocation(line: 0, scope: !3505)
!3531 = !DILocation(line: 74, column: 3, scope: !3505)
!3532 = !DILocation(line: 75, column: 14, scope: !3505)
!3533 = !DILocation(line: 0, scope: !3520)
!3534 = !DILocation(line: 81, column: 7, scope: !3520)
!3535 = !DILocation(line: 81, column: 14, scope: !3520)
!3536 = !DILocation(line: 82, column: 15, scope: !3520)
!3537 = distinct !{!3537, !3534, !3538, !525}
!3538 = !DILocation(line: 82, column: 17, scope: !3520)
!3539 = !DILocation(line: 83, column: 14, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3520, file: !3506, line: 83, column: 11)
!3541 = !DILocation(line: 83, column: 11, scope: !3520)
!3542 = !DILocation(line: 85, column: 14, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3540, file: !3506, line: 84, column: 9)
!3544 = !DILocation(line: 90, column: 3, scope: !3505)
!3545 = !DILocation(line: 90, column: 9, scope: !3505)
!3546 = !DILocation(line: 91, column: 20, scope: !3505)
!3547 = !DILocation(line: 94, column: 7, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 94, column: 7)
!3549 = !DILocation(line: 94, column: 10, scope: !3548)
!3550 = !DILocation(line: 94, column: 7, scope: !3505)
!3551 = !DILocation(line: 98, column: 14, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3506, line: 98, column: 11)
!3553 = distinct !DILexicalBlock(scope: !3548, file: !3506, line: 95, column: 5)
!3554 = !DILocation(line: 98, column: 29, scope: !3552)
!3555 = !DILocation(line: 98, column: 32, scope: !3552)
!3556 = !DILocation(line: 98, column: 38, scope: !3552)
!3557 = !DILocation(line: 98, column: 41, scope: !3552)
!3558 = !DILocation(line: 98, column: 11, scope: !3553)
!3559 = !DILocation(line: 102, column: 12, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3548, file: !3506, line: 102, column: 12)
!3561 = !DILocation(line: 102, column: 12, scope: !3548)
!3562 = !DILocation(line: 107, column: 5, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3560, file: !3506, line: 103, column: 5)
!3564 = !DILocation(line: 112, column: 8, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 112, column: 7)
!3566 = !DILocation(line: 112, column: 7, scope: !3505)
!3567 = !DILocation(line: 114, column: 12, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3565, file: !3506, line: 113, column: 5)
!3569 = !DILocation(line: 115, column: 7, scope: !3568)
!3570 = !DILocation(line: 118, column: 7, scope: !3527)
!3571 = !DILocation(line: 118, column: 11, scope: !3527)
!3572 = !DILocation(line: 118, column: 7, scope: !3505)
!3573 = !DILocation(line: 120, column: 12, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3526, file: !3506, line: 120, column: 11)
!3575 = !DILocation(line: 120, column: 11, scope: !3526)
!3576 = !DILocation(line: 122, column: 16, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3574, file: !3506, line: 121, column: 9)
!3578 = !DILocation(line: 123, column: 22, scope: !3577)
!3579 = !DILocation(line: 123, column: 11, scope: !3577)
!3580 = !DILocation(line: 0, scope: !3526)
!3581 = !DILocation(line: 128, column: 7, scope: !3526)
!3582 = !DILocation(line: 140, column: 15, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !3506, line: 140, column: 15)
!3584 = distinct !DILexicalBlock(scope: !3526, file: !3506, line: 129, column: 9)
!3585 = !DILocation(line: 140, column: 15, scope: !3584)
!3586 = !DILocation(line: 141, column: 21, scope: !3583)
!3587 = !DILocation(line: 141, column: 13, scope: !3583)
!3588 = !DILocation(line: 144, column: 21, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3506, line: 144, column: 21)
!3590 = distinct !DILexicalBlock(scope: !3583, file: !3506, line: 142, column: 15)
!3591 = !DILocation(line: 144, column: 29, scope: !3589)
!3592 = !DILocation(line: 144, column: 21, scope: !3590)
!3593 = !DILocation(line: 152, column: 17, scope: !3590)
!3594 = !DILocation(line: 157, column: 7, scope: !3526)
!3595 = !DILocalVariable(name: "err", scope: !3596, file: !3506, line: 64, type: !3509)
!3596 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3506, file: !3506, line: 62, type: !3597, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3599)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!3509, !3510, !52, !52}
!3599 = !{!3600, !3601, !3602, !3595}
!3600 = !DILocalVariable(name: "x", arg: 1, scope: !3596, file: !3506, line: 62, type: !3510)
!3601 = !DILocalVariable(name: "base", arg: 2, scope: !3596, file: !3506, line: 62, type: !52)
!3602 = !DILocalVariable(name: "power", arg: 3, scope: !3596, file: !3506, line: 62, type: !52)
!3603 = !DILocation(line: 0, scope: !3596, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 219, column: 22, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3526, file: !3506, line: 158, column: 9)
!3606 = !DILocalVariable(name: "x", arg: 1, scope: !3607, file: !3506, line: 47, type: !3510)
!3607 = distinct !DISubprogram(name: "bkm_scale", scope: !3506, file: !3506, line: 47, type: !3608, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !416, retainedNodes: !3610)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!3509, !3510, !52}
!3610 = !{!3606, !3611, !3612}
!3611 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3607, file: !3506, line: 47, type: !52)
!3612 = !DILocalVariable(name: "scaled", scope: !3607, file: !3506, line: 49, type: !420)
!3613 = !DILocation(line: 0, scope: !3607, inlinedAt: !3614)
!3614 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3604)
!3615 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3614)
!3616 = distinct !DILexicalBlock(scope: !3607, file: !3506, line: 50, column: 7)
!3617 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3604)
!3618 = !DILocation(line: 227, column: 11, scope: !3526)
!3619 = !DILocation(line: 0, scope: !3596, inlinedAt: !3620)
!3620 = distinct !DILocation(line: 215, column: 22, scope: !3605)
!3621 = !DILocation(line: 0, scope: !3607, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3620)
!3623 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3622)
!3624 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3620)
!3625 = !DILocation(line: 0, scope: !3596, inlinedAt: !3626)
!3626 = distinct !DILocation(line: 202, column: 22, scope: !3605)
!3627 = !DILocation(line: 0, scope: !3607, inlinedAt: !3628)
!3628 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3626)
!3629 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3628)
!3630 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3626)
!3631 = !DILocation(line: 0, scope: !3596, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 198, column: 22, scope: !3605)
!3633 = !DILocation(line: 0, scope: !3607, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3632)
!3635 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3634)
!3636 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3632)
!3637 = !DILocation(line: 0, scope: !3596, inlinedAt: !3638)
!3638 = distinct !DILocation(line: 194, column: 22, scope: !3605)
!3639 = !DILocation(line: 0, scope: !3607, inlinedAt: !3640)
!3640 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3638)
!3641 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3640)
!3642 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3638)
!3643 = !DILocation(line: 0, scope: !3596, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 175, column: 22, scope: !3605)
!3645 = !DILocation(line: 0, scope: !3607, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3644)
!3647 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3646)
!3648 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3644)
!3649 = !DILocation(line: 0, scope: !3607, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 160, column: 22, scope: !3605)
!3651 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3650)
!3652 = !DILocation(line: 161, column: 11, scope: !3605)
!3653 = !DILocation(line: 0, scope: !3607, inlinedAt: !3654)
!3654 = distinct !DILocation(line: 167, column: 22, scope: !3605)
!3655 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3654)
!3656 = !DILocation(line: 168, column: 11, scope: !3605)
!3657 = !DILocation(line: 0, scope: !3596, inlinedAt: !3658)
!3658 = distinct !DILocation(line: 180, column: 22, scope: !3605)
!3659 = !DILocation(line: 0, scope: !3607, inlinedAt: !3660)
!3660 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3658)
!3661 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3660)
!3662 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3658)
!3663 = !DILocation(line: 0, scope: !3596, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 185, column: 22, scope: !3605)
!3665 = !DILocation(line: 0, scope: !3607, inlinedAt: !3666)
!3666 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3664)
!3667 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3666)
!3668 = !DILocation(line: 0, scope: !3596, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 190, column: 22, scope: !3605)
!3670 = !DILocation(line: 0, scope: !3607, inlinedAt: !3671)
!3671 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3669)
!3672 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3671)
!3673 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3669)
!3674 = !DILocation(line: 0, scope: !3596, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 207, column: 22, scope: !3605)
!3676 = !DILocation(line: 0, scope: !3607, inlinedAt: !3677)
!3677 = distinct !DILocation(line: 66, column: 12, scope: !3596, inlinedAt: !3675)
!3678 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3677)
!3679 = !DILocation(line: 66, column: 9, scope: !3596, inlinedAt: !3675)
!3680 = !DILocation(line: 0, scope: !3607, inlinedAt: !3681)
!3681 = distinct !DILocation(line: 211, column: 22, scope: !3605)
!3682 = !DILocation(line: 50, column: 7, scope: !3616, inlinedAt: !3681)
!3683 = !DILocation(line: 212, column: 11, scope: !3605)
!3684 = !DILocation(line: 0, scope: !3605)
!3685 = !DILocation(line: 228, column: 10, scope: !3526)
!3686 = !DILocation(line: 229, column: 11, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3526, file: !3506, line: 229, column: 11)
!3688 = !DILocation(line: 229, column: 11, scope: !3526)
!3689 = !DILocation(line: 223, column: 16, scope: !3605)
!3690 = !DILocation(line: 224, column: 22, scope: !3605)
!3691 = !DILocation(line: 100, column: 11, scope: !3553)
!3692 = !DILocation(line: 92, column: 16, scope: !3505)
!3693 = !DILocation(line: 233, column: 8, scope: !3505)
!3694 = !DILocation(line: 234, column: 3, scope: !3505)
!3695 = !DILocation(line: 235, column: 1, scope: !3505)
!3696 = !DISubprogram(name: "strtoumax", scope: !3697, file: !3697, line: 301, type: !3698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3697 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!420, !554, !3700, !52}
!3700 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !681)
!3701 = distinct !DISubprogram(name: "close_stream", scope: !424, file: !424, line: 55, type: !3702, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3738)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!52, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3706, file: !90, line: 51, baseType: !52, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3706, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3706, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3706, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3706, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3706, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3706, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3706, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3706, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3706, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3706, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3706, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3706, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3706, file: !90, line: 70, baseType: !3722, size: 64, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3706, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3706, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3706, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3706, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3706, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3706, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3706, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3706, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3706, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3706, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3706, file: !90, line: 93, baseType: !3722, size: 64, offset: 1344)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3706, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3706, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3706, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3706, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!3738 = !{!3739, !3740, !3742, !3743}
!3739 = !DILocalVariable(name: "stream", arg: 1, scope: !3701, file: !424, line: 55, type: !3704)
!3740 = !DILocalVariable(name: "some_pending", scope: !3701, file: !424, line: 57, type: !3741)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!3742 = !DILocalVariable(name: "prev_fail", scope: !3701, file: !424, line: 58, type: !3741)
!3743 = !DILocalVariable(name: "fclose_fail", scope: !3701, file: !424, line: 59, type: !3741)
!3744 = !DILocation(line: 0, scope: !3701)
!3745 = !DILocation(line: 57, column: 30, scope: !3701)
!3746 = !DILocalVariable(name: "__stream", arg: 1, scope: !3747, file: !1064, line: 135, type: !3704)
!3747 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1064, file: !1064, line: 135, type: !3702, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !423, retainedNodes: !3748)
!3748 = !{!3746}
!3749 = !DILocation(line: 0, scope: !3747, inlinedAt: !3750)
!3750 = distinct !DILocation(line: 58, column: 27, scope: !3701)
!3751 = !DILocation(line: 137, column: 10, scope: !3747, inlinedAt: !3750)
!3752 = !{!1073, !559, i64 0}
!3753 = !DILocation(line: 58, column: 43, scope: !3701)
!3754 = !DILocation(line: 59, column: 29, scope: !3701)
!3755 = !DILocation(line: 59, column: 45, scope: !3701)
!3756 = !DILocation(line: 69, column: 17, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3701, file: !424, line: 69, column: 7)
!3758 = !DILocation(line: 57, column: 50, scope: !3701)
!3759 = !DILocation(line: 69, column: 33, scope: !3757)
!3760 = !DILocation(line: 69, column: 53, scope: !3757)
!3761 = !DILocation(line: 69, column: 59, scope: !3757)
!3762 = !DILocation(line: 69, column: 7, scope: !3701)
!3763 = !DILocation(line: 71, column: 11, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3757, file: !424, line: 70, column: 5)
!3765 = !DILocation(line: 72, column: 9, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !424, line: 71, column: 11)
!3767 = !DILocation(line: 72, column: 15, scope: !3766)
!3768 = !DILocation(line: 77, column: 1, scope: !3701)
!3769 = distinct !DISubprogram(name: "rpl_fclose", scope: !426, file: !426, line: 58, type: !3770, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !425, retainedNodes: !3806)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!52, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !3774)
!3774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !3775)
!3775 = !{!3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3774, file: !90, line: 51, baseType: !52, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3774, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3774, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3774, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3774, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3774, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3774, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3774, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3774, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3774, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3774, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3774, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3774, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3774, file: !90, line: 70, baseType: !3790, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3774, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3774, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3774, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3774, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3774, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3774, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3774, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3774, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3774, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3774, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3774, file: !90, line: 93, baseType: !3790, size: 64, offset: 1344)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3774, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3774, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3774, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3774, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!3806 = !{!3807, !3808, !3809, !3810}
!3807 = !DILocalVariable(name: "fp", arg: 1, scope: !3769, file: !426, line: 58, type: !3772)
!3808 = !DILocalVariable(name: "saved_errno", scope: !3769, file: !426, line: 60, type: !52)
!3809 = !DILocalVariable(name: "fd", scope: !3769, file: !426, line: 63, type: !52)
!3810 = !DILocalVariable(name: "result", scope: !3769, file: !426, line: 74, type: !52)
!3811 = !DILocation(line: 0, scope: !3769)
!3812 = !DILocation(line: 63, column: 12, scope: !3769)
!3813 = !DILocation(line: 64, column: 10, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3769, file: !426, line: 64, column: 7)
!3815 = !DILocation(line: 64, column: 7, scope: !3769)
!3816 = !DILocation(line: 65, column: 12, scope: !3814)
!3817 = !DILocation(line: 65, column: 5, scope: !3814)
!3818 = !DILocation(line: 70, column: 9, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3769, file: !426, line: 70, column: 7)
!3820 = !DILocation(line: 70, column: 23, scope: !3819)
!3821 = !DILocation(line: 70, column: 33, scope: !3819)
!3822 = !DILocation(line: 70, column: 26, scope: !3819)
!3823 = !DILocation(line: 70, column: 59, scope: !3819)
!3824 = !DILocation(line: 71, column: 7, scope: !3819)
!3825 = !DILocation(line: 71, column: 10, scope: !3819)
!3826 = !DILocation(line: 70, column: 7, scope: !3769)
!3827 = !DILocation(line: 100, column: 12, scope: !3769)
!3828 = !DILocation(line: 105, column: 7, scope: !3769)
!3829 = !DILocation(line: 72, column: 19, scope: !3819)
!3830 = !DILocation(line: 105, column: 19, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3769, file: !426, line: 105, column: 7)
!3832 = !DILocation(line: 107, column: 13, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3831, file: !426, line: 106, column: 5)
!3834 = !DILocation(line: 109, column: 5, scope: !3833)
!3835 = !DILocation(line: 112, column: 1, scope: !3769)
!3836 = !DISubprogram(name: "fileno", scope: !182, file: !182, line: 809, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3837 = !DISubprogram(name: "fclose", scope: !182, file: !182, line: 178, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3838 = !DISubprogram(name: "lseek", scope: !3839, file: !3839, line: 339, type: !3840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3839 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!112, !52, !112, !52}
!3842 = distinct !DISubprogram(name: "rpl_fflush", scope: !428, file: !428, line: 130, type: !3843, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3879)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!52, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !3847)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3847, file: !90, line: 51, baseType: !52, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3847, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3847, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3847, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3847, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3847, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3847, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3847, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3847, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3847, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3847, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3847, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3847, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3847, file: !90, line: 70, baseType: !3863, size: 64, offset: 832)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3847, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3847, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3847, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3847, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3847, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3847, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3847, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3847, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3847, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3847, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3847, file: !90, line: 93, baseType: !3863, size: 64, offset: 1344)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3847, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3847, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3847, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3847, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!3879 = !{!3880}
!3880 = !DILocalVariable(name: "stream", arg: 1, scope: !3842, file: !428, line: 130, type: !3845)
!3881 = !DILocation(line: 0, scope: !3842)
!3882 = !DILocation(line: 151, column: 14, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3842, file: !428, line: 151, column: 7)
!3884 = !DILocation(line: 151, column: 22, scope: !3883)
!3885 = !DILocation(line: 151, column: 27, scope: !3883)
!3886 = !DILocation(line: 151, column: 7, scope: !3842)
!3887 = !DILocation(line: 152, column: 12, scope: !3883)
!3888 = !DILocation(line: 152, column: 5, scope: !3883)
!3889 = !DILocalVariable(name: "fp", arg: 1, scope: !3890, file: !428, line: 42, type: !3845)
!3890 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !428, file: !428, line: 42, type: !3891, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !427, retainedNodes: !3893)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{null, !3845}
!3893 = !{!3889}
!3894 = !DILocation(line: 0, scope: !3890, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 157, column: 3, scope: !3842)
!3896 = !DILocation(line: 44, column: 12, scope: !3897, inlinedAt: !3895)
!3897 = distinct !DILexicalBlock(scope: !3890, file: !428, line: 44, column: 7)
!3898 = !DILocation(line: 44, column: 19, scope: !3897, inlinedAt: !3895)
!3899 = !DILocation(line: 44, column: 7, scope: !3890, inlinedAt: !3895)
!3900 = !DILocation(line: 46, column: 5, scope: !3897, inlinedAt: !3895)
!3901 = !DILocation(line: 159, column: 10, scope: !3842)
!3902 = !DILocation(line: 159, column: 3, scope: !3842)
!3903 = !DILocation(line: 236, column: 1, scope: !3842)
!3904 = !DISubprogram(name: "fflush", scope: !182, file: !182, line: 230, type: !3843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3905 = distinct !DISubprogram(name: "rpl_fseeko", scope: !430, file: !430, line: 28, type: !3906, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !429, retainedNodes: !3943)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!52, !3908, !3942, !52}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !3910)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3910, file: !90, line: 51, baseType: !52, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3910, file: !90, line: 54, baseType: !44, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3910, file: !90, line: 55, baseType: !44, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3910, file: !90, line: 56, baseType: !44, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3910, file: !90, line: 57, baseType: !44, size: 64, offset: 256)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3910, file: !90, line: 58, baseType: !44, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3910, file: !90, line: 59, baseType: !44, size: 64, offset: 384)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3910, file: !90, line: 60, baseType: !44, size: 64, offset: 448)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3910, file: !90, line: 61, baseType: !44, size: 64, offset: 512)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3910, file: !90, line: 64, baseType: !44, size: 64, offset: 576)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3910, file: !90, line: 65, baseType: !44, size: 64, offset: 640)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3910, file: !90, line: 66, baseType: !44, size: 64, offset: 704)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3910, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3910, file: !90, line: 70, baseType: !3926, size: 64, offset: 832)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3910, file: !90, line: 72, baseType: !52, size: 32, offset: 896)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3910, file: !90, line: 73, baseType: !52, size: 32, offset: 928)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3910, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3910, file: !90, line: 77, baseType: !53, size: 16, offset: 1024)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3910, file: !90, line: 78, baseType: !116, size: 8, offset: 1040)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3910, file: !90, line: 79, baseType: !118, size: 8, offset: 1048)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3910, file: !90, line: 81, baseType: !122, size: 64, offset: 1088)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3910, file: !90, line: 89, baseType: !125, size: 64, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3910, file: !90, line: 91, baseType: !127, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3910, file: !90, line: 92, baseType: !130, size: 64, offset: 1280)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3910, file: !90, line: 93, baseType: !3926, size: 64, offset: 1344)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3910, file: !90, line: 94, baseType: !46, size: 64, offset: 1408)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3910, file: !90, line: 95, baseType: !54, size: 64, offset: 1472)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3910, file: !90, line: 96, baseType: !52, size: 32, offset: 1536)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3910, file: !90, line: 98, baseType: !137, size: 160, offset: 1568)
!3942 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !182, line: 63, baseType: !112)
!3943 = !{!3944, !3945, !3946, !3947}
!3944 = !DILocalVariable(name: "fp", arg: 1, scope: !3905, file: !430, line: 28, type: !3908)
!3945 = !DILocalVariable(name: "offset", arg: 2, scope: !3905, file: !430, line: 28, type: !3942)
!3946 = !DILocalVariable(name: "whence", arg: 3, scope: !3905, file: !430, line: 28, type: !52)
!3947 = !DILocalVariable(name: "pos", scope: !3948, file: !430, line: 123, type: !3942)
!3948 = distinct !DILexicalBlock(scope: !3949, file: !430, line: 119, column: 5)
!3949 = distinct !DILexicalBlock(scope: !3905, file: !430, line: 55, column: 7)
!3950 = !DILocation(line: 0, scope: !3905)
!3951 = !DILocation(line: 55, column: 12, scope: !3949)
!3952 = !{!1073, !464, i64 16}
!3953 = !DILocation(line: 55, column: 33, scope: !3949)
!3954 = !{!1073, !464, i64 8}
!3955 = !DILocation(line: 55, column: 25, scope: !3949)
!3956 = !DILocation(line: 56, column: 7, scope: !3949)
!3957 = !DILocation(line: 56, column: 15, scope: !3949)
!3958 = !DILocation(line: 56, column: 37, scope: !3949)
!3959 = !{!1073, !464, i64 32}
!3960 = !DILocation(line: 56, column: 29, scope: !3949)
!3961 = !DILocation(line: 57, column: 7, scope: !3949)
!3962 = !DILocation(line: 57, column: 15, scope: !3949)
!3963 = !{!1073, !464, i64 72}
!3964 = !DILocation(line: 57, column: 29, scope: !3949)
!3965 = !DILocation(line: 55, column: 7, scope: !3905)
!3966 = !DILocation(line: 123, column: 26, scope: !3948)
!3967 = !DILocation(line: 123, column: 19, scope: !3948)
!3968 = !DILocation(line: 0, scope: !3948)
!3969 = !DILocation(line: 124, column: 15, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3948, file: !430, line: 124, column: 11)
!3971 = !DILocation(line: 124, column: 11, scope: !3948)
!3972 = !DILocation(line: 135, column: 12, scope: !3948)
!3973 = !DILocation(line: 135, column: 19, scope: !3948)
!3974 = !DILocation(line: 136, column: 12, scope: !3948)
!3975 = !DILocation(line: 136, column: 20, scope: !3948)
!3976 = !{!1073, !822, i64 144}
!3977 = !DILocation(line: 167, column: 7, scope: !3948)
!3978 = !DILocation(line: 169, column: 10, scope: !3905)
!3979 = !DILocation(line: 169, column: 3, scope: !3905)
!3980 = !DILocation(line: 170, column: 1, scope: !3905)
!3981 = !DISubprogram(name: "fseeko", scope: !182, file: !182, line: 736, type: !3982, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!52, !3908, !112, !52}
!3984 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !345, file: !345, line: 100, type: !3985, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !3988)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!54, !1610, !56, !54, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!3988 = !{!3989, !3990, !3991, !3992, !3993}
!3989 = !DILocalVariable(name: "pwc", arg: 1, scope: !3984, file: !345, line: 100, type: !1610)
!3990 = !DILocalVariable(name: "s", arg: 2, scope: !3984, file: !345, line: 100, type: !56)
!3991 = !DILocalVariable(name: "n", arg: 3, scope: !3984, file: !345, line: 100, type: !54)
!3992 = !DILocalVariable(name: "ps", arg: 4, scope: !3984, file: !345, line: 100, type: !3987)
!3993 = !DILocalVariable(name: "ret", scope: !3984, file: !345, line: 130, type: !54)
!3994 = !DILocation(line: 0, scope: !3984)
!3995 = !DILocation(line: 105, column: 9, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3984, file: !345, line: 105, column: 7)
!3997 = !DILocation(line: 105, column: 7, scope: !3984)
!3998 = !DILocation(line: 117, column: 10, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3984, file: !345, line: 117, column: 7)
!4000 = !DILocation(line: 117, column: 7, scope: !3984)
!4001 = !DILocation(line: 130, column: 16, scope: !3984)
!4002 = !DILocation(line: 135, column: 11, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3984, file: !345, line: 135, column: 7)
!4004 = !DILocation(line: 135, column: 25, scope: !4003)
!4005 = !DILocation(line: 135, column: 30, scope: !4003)
!4006 = !DILocation(line: 135, column: 7, scope: !3984)
!4007 = !DILocalVariable(name: "ps", arg: 1, scope: !4008, file: !1583, line: 1135, type: !3987)
!4008 = distinct !DISubprogram(name: "mbszero", scope: !1583, file: !1583, line: 1135, type: !4009, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !4011)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{null, !3987}
!4011 = !{!4007}
!4012 = !DILocation(line: 0, scope: !4008, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 137, column: 5, scope: !4003)
!4014 = !DILocalVariable(name: "__dest", arg: 1, scope: !4015, file: !1592, line: 57, type: !46)
!4015 = distinct !DISubprogram(name: "memset", scope: !1592, file: !1592, line: 57, type: !1593, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !344, retainedNodes: !4016)
!4016 = !{!4014, !4017, !4018}
!4017 = !DILocalVariable(name: "__ch", arg: 2, scope: !4015, file: !1592, line: 57, type: !52)
!4018 = !DILocalVariable(name: "__len", arg: 3, scope: !4015, file: !1592, line: 57, type: !54)
!4019 = !DILocation(line: 0, scope: !4015, inlinedAt: !4020)
!4020 = distinct !DILocation(line: 1137, column: 3, scope: !4008, inlinedAt: !4013)
!4021 = !DILocation(line: 59, column: 10, scope: !4015, inlinedAt: !4020)
!4022 = !DILocation(line: 137, column: 5, scope: !4003)
!4023 = !DILocation(line: 138, column: 11, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !3984, file: !345, line: 138, column: 7)
!4025 = !DILocation(line: 138, column: 7, scope: !3984)
!4026 = !DILocation(line: 139, column: 5, scope: !4024)
!4027 = !DILocation(line: 143, column: 26, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3984, file: !345, line: 143, column: 7)
!4029 = !DILocation(line: 143, column: 41, scope: !4028)
!4030 = !DILocation(line: 143, column: 7, scope: !3984)
!4031 = !DILocation(line: 145, column: 15, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !345, line: 145, column: 11)
!4033 = distinct !DILexicalBlock(scope: !4028, file: !345, line: 144, column: 5)
!4034 = !DILocation(line: 145, column: 11, scope: !4033)
!4035 = !DILocation(line: 146, column: 32, scope: !4032)
!4036 = !DILocation(line: 146, column: 16, scope: !4032)
!4037 = !DILocation(line: 146, column: 14, scope: !4032)
!4038 = !DILocation(line: 146, column: 9, scope: !4032)
!4039 = !DILocation(line: 286, column: 1, scope: !3984)
!4040 = !DISubprogram(name: "mbsinit", scope: !4041, file: !4041, line: 293, type: !4042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !472)
!4041 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!52, !4044}
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!4046 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !432, file: !432, line: 27, type: !3065, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !4047)
!4047 = !{!4048, !4049, !4050, !4051}
!4048 = !DILocalVariable(name: "ptr", arg: 1, scope: !4046, file: !432, line: 27, type: !46)
!4049 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4046, file: !432, line: 27, type: !54)
!4050 = !DILocalVariable(name: "size", arg: 3, scope: !4046, file: !432, line: 27, type: !54)
!4051 = !DILocalVariable(name: "nbytes", scope: !4046, file: !432, line: 29, type: !54)
!4052 = !DILocation(line: 0, scope: !4046)
!4053 = !DILocation(line: 30, column: 7, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4046, file: !432, line: 30, column: 7)
!4055 = !DILocalVariable(name: "ptr", arg: 1, scope: !4056, file: !3156, line: 2057, type: !46)
!4056 = distinct !DISubprogram(name: "rpl_realloc", scope: !3156, file: !3156, line: 2057, type: !3148, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !4057)
!4057 = !{!4055, !4058}
!4058 = !DILocalVariable(name: "size", arg: 2, scope: !4056, file: !3156, line: 2057, type: !54)
!4059 = !DILocation(line: 0, scope: !4056, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 37, column: 10, scope: !4046)
!4061 = !DILocation(line: 2059, column: 24, scope: !4056, inlinedAt: !4060)
!4062 = !DILocation(line: 2059, column: 10, scope: !4056, inlinedAt: !4060)
!4063 = !DILocation(line: 37, column: 3, scope: !4046)
!4064 = !DILocation(line: 32, column: 7, scope: !4065)
!4065 = distinct !DILexicalBlock(scope: !4054, file: !432, line: 31, column: 5)
!4066 = !DILocation(line: 32, column: 13, scope: !4065)
!4067 = !DILocation(line: 33, column: 7, scope: !4065)
!4068 = !DILocation(line: 38, column: 1, scope: !4046)
!4069 = distinct !DISubprogram(name: "hard_locale", scope: !435, file: !435, line: 28, type: !4070, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4072)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{!73, !52}
!4072 = !{!4073, !4074}
!4073 = !DILocalVariable(name: "category", arg: 1, scope: !4069, file: !435, line: 28, type: !52)
!4074 = !DILocalVariable(name: "locale", scope: !4069, file: !435, line: 30, type: !4075)
!4075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2056, elements: !4076)
!4076 = !{!4077}
!4077 = !DISubrange(count: 257)
!4078 = !DILocation(line: 0, scope: !4069)
!4079 = !DILocation(line: 30, column: 3, scope: !4069)
!4080 = !DILocation(line: 30, column: 8, scope: !4069)
!4081 = !DILocation(line: 32, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4069, file: !435, line: 32, column: 7)
!4083 = !DILocation(line: 32, column: 7, scope: !4069)
!4084 = !DILocalVariable(name: "__s1", arg: 1, scope: !4085, file: !509, line: 1359, type: !56)
!4085 = distinct !DISubprogram(name: "streq", scope: !509, file: !509, line: 1359, type: !510, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !434, retainedNodes: !4086)
!4086 = !{!4084, !4087}
!4087 = !DILocalVariable(name: "__s2", arg: 2, scope: !4085, file: !509, line: 1359, type: !56)
!4088 = !DILocation(line: 0, scope: !4085, inlinedAt: !4089)
!4089 = distinct !DILocation(line: 35, column: 9, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4069, file: !435, line: 35, column: 7)
!4091 = !DILocation(line: 1361, column: 11, scope: !4085, inlinedAt: !4089)
!4092 = !DILocation(line: 1361, column: 10, scope: !4085, inlinedAt: !4089)
!4093 = !DILocation(line: 35, column: 29, scope: !4090)
!4094 = !DILocation(line: 0, scope: !4085, inlinedAt: !4095)
!4095 = distinct !DILocation(line: 35, column: 32, scope: !4090)
!4096 = !DILocation(line: 1361, column: 11, scope: !4085, inlinedAt: !4095)
!4097 = !DILocation(line: 1361, column: 10, scope: !4085, inlinedAt: !4095)
!4098 = !DILocation(line: 35, column: 7, scope: !4069)
!4099 = !DILocation(line: 46, column: 3, scope: !4069)
!4100 = !DILocation(line: 47, column: 1, scope: !4069)
!4101 = distinct !DISubprogram(name: "setlocale_null_r", scope: !437, file: !437, line: 154, type: !4102, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !4104)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{!52, !52, !44, !54}
!4104 = !{!4105, !4106, !4107}
!4105 = !DILocalVariable(name: "category", arg: 1, scope: !4101, file: !437, line: 154, type: !52)
!4106 = !DILocalVariable(name: "buf", arg: 2, scope: !4101, file: !437, line: 154, type: !44)
!4107 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4101, file: !437, line: 154, type: !54)
!4108 = !DILocation(line: 0, scope: !4101)
!4109 = !DILocation(line: 159, column: 10, scope: !4101)
!4110 = !DILocation(line: 159, column: 3, scope: !4101)
!4111 = distinct !DISubprogram(name: "setlocale_null", scope: !437, file: !437, line: 186, type: !4112, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !436, retainedNodes: !4114)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!56, !52}
!4114 = !{!4115}
!4115 = !DILocalVariable(name: "category", arg: 1, scope: !4111, file: !437, line: 186, type: !52)
!4116 = !DILocation(line: 0, scope: !4111)
!4117 = !DILocation(line: 189, column: 10, scope: !4111)
!4118 = !DILocation(line: 189, column: 3, scope: !4111)
!4119 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !439, file: !439, line: 35, type: !4112, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4120)
!4120 = !{!4121, !4122}
!4121 = !DILocalVariable(name: "category", arg: 1, scope: !4119, file: !439, line: 35, type: !52)
!4122 = !DILocalVariable(name: "result", scope: !4119, file: !439, line: 37, type: !56)
!4123 = !DILocation(line: 0, scope: !4119)
!4124 = !DILocation(line: 37, column: 24, scope: !4119)
!4125 = !DILocation(line: 62, column: 3, scope: !4119)
!4126 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !439, file: !439, line: 66, type: !4102, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132}
!4128 = !DILocalVariable(name: "category", arg: 1, scope: !4126, file: !439, line: 66, type: !52)
!4129 = !DILocalVariable(name: "buf", arg: 2, scope: !4126, file: !439, line: 66, type: !44)
!4130 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4126, file: !439, line: 66, type: !54)
!4131 = !DILocalVariable(name: "result", scope: !4126, file: !439, line: 111, type: !56)
!4132 = !DILocalVariable(name: "length", scope: !4133, file: !439, line: 125, type: !54)
!4133 = distinct !DILexicalBlock(scope: !4134, file: !439, line: 124, column: 5)
!4134 = distinct !DILexicalBlock(scope: !4126, file: !439, line: 113, column: 7)
!4135 = !DILocation(line: 0, scope: !4126)
!4136 = !DILocation(line: 0, scope: !4119, inlinedAt: !4137)
!4137 = distinct !DILocation(line: 111, column: 24, scope: !4126)
!4138 = !DILocation(line: 37, column: 24, scope: !4119, inlinedAt: !4137)
!4139 = !DILocation(line: 113, column: 14, scope: !4134)
!4140 = !DILocation(line: 113, column: 7, scope: !4126)
!4141 = !DILocation(line: 116, column: 19, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4143, file: !439, line: 116, column: 11)
!4143 = distinct !DILexicalBlock(scope: !4134, file: !439, line: 114, column: 5)
!4144 = !DILocation(line: 116, column: 11, scope: !4143)
!4145 = !DILocation(line: 120, column: 16, scope: !4142)
!4146 = !DILocation(line: 120, column: 9, scope: !4142)
!4147 = !DILocation(line: 125, column: 23, scope: !4133)
!4148 = !DILocation(line: 0, scope: !4133)
!4149 = !DILocation(line: 126, column: 18, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4133, file: !439, line: 126, column: 11)
!4151 = !DILocation(line: 126, column: 11, scope: !4133)
!4152 = !DILocation(line: 128, column: 39, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !439, line: 127, column: 9)
!4154 = !DILocalVariable(name: "__dest", arg: 1, scope: !4155, file: !1592, line: 26, type: !3423)
!4155 = distinct !DISubprogram(name: "memcpy", scope: !1592, file: !1592, line: 26, type: !3421, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !438, retainedNodes: !4156)
!4156 = !{!4154, !4157, !4158}
!4157 = !DILocalVariable(name: "__src", arg: 2, scope: !4155, file: !1592, line: 26, type: !675)
!4158 = !DILocalVariable(name: "__len", arg: 3, scope: !4155, file: !1592, line: 26, type: !54)
!4159 = !DILocation(line: 0, scope: !4155, inlinedAt: !4160)
!4160 = distinct !DILocation(line: 128, column: 11, scope: !4153)
!4161 = !DILocation(line: 29, column: 10, scope: !4155, inlinedAt: !4160)
!4162 = !DILocation(line: 129, column: 11, scope: !4153)
!4163 = !DILocation(line: 133, column: 23, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4165, file: !439, line: 133, column: 15)
!4165 = distinct !DILexicalBlock(scope: !4150, file: !439, line: 132, column: 9)
!4166 = !DILocation(line: 133, column: 15, scope: !4165)
!4167 = !DILocation(line: 138, column: 44, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4164, file: !439, line: 134, column: 13)
!4169 = !DILocation(line: 0, scope: !4155, inlinedAt: !4170)
!4170 = distinct !DILocation(line: 138, column: 15, scope: !4168)
!4171 = !DILocation(line: 29, column: 10, scope: !4155, inlinedAt: !4170)
!4172 = !DILocation(line: 139, column: 15, scope: !4168)
!4173 = !DILocation(line: 139, column: 32, scope: !4168)
!4174 = !DILocation(line: 140, column: 13, scope: !4168)
!4175 = !DILocation(line: 0, scope: !4134)
!4176 = !DILocation(line: 145, column: 1, scope: !4126)
