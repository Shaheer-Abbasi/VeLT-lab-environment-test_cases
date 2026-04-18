; ModuleID = 'src/base64.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.base64_decode_context = type { i32, [4 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Base%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"base64\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"  -d, --decode\0A         decode data\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"  -i, --ignore-garbage\0A         when decoding, ignore non-alphabet characters\0A\00", align 1
@.str.6 = private unnamed_addr constant [122 x i8] c"  -w, --wrap=COLS\0A         wrap encoded lines after COLS character (default 76).\0A         Use 0 to disable line wrapping\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1
@.str.9 = private unnamed_addr constant [268 x i8] c"\0AThe data are encoded as described for the %s alphabet in RFC 4648.\0AWhen decoding, the input may contain newlines in addition to the bytes of\0Athe formal %s alphabet.  Use --ignore-garbage to attempt to recover\0Afrom any other non-alphabet bytes in the encoded stream.\0A\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"diw:\00", align 1
@long_options = internal constant [6 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 0, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 119 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 0, i32* null, i32 -2 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i32 0, i32* null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"invalid wrap size\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Simon Josefsson\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.20 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1
@.str.23 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !65
@.str.24 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.43 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1
@.str.46 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@__const.emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.53, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 8
@.str.54 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.55 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"ignore-garbage\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"invalid input\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !164
@base64_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF>\FF\FF\FF?456789:;<=\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1, !dbg !169
@b64c = internal unnamed_addr constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 1, !dbg !175
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !184
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !189
@.str.66 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.67 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.68 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.69 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !191
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.70 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !227
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !197
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !223
@.str.1.76 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.78 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.77 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !225
@.str.4.71 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.72 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.73 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !232
@.str.97 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.98 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !238
@.str.101 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.102 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.103 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.104 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.105 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.106 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.107 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.108 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.109 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.102, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.103, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.104, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.105, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.106, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.107, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.108, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.110, i32 0, i32 0), i8* null], align 8, !dbg !274
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !286
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !304
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !332
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !339
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !306
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !341
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !292
@.str.10.113 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.111 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.114 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.112 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !309
@.str.121 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.122 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.123 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.124 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.125 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.126 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.127 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.128 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.129 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.130 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.131 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.132 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.133 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.134 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.135 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.136 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.137 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.142 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.143 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.144 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.145 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.146 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.147 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.148 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !347
@exit_failure = dso_local global i32 1, align 4, !dbg !355
@.str.163 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.161 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.162 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !361
@.str.177 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.178 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !465 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !469, metadata !DIExpression()), !dbg !470
  %3 = icmp eq i32 %0, 0, !dbg !471
  br i1 %3, label %9, label %4, !dbg !473

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !474, !tbaa !476
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #37, !dbg !474
  %7 = load i8*, i8** @program_name, align 8, !dbg !474, !tbaa !476
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #37, !dbg !474
  br label %62, !dbg !474

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #37, !dbg !480
  %11 = load i8*, i8** @program_name, align 8, !dbg !480, !tbaa !476
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #37, !dbg !480
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #37, !dbg !482
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %13, i32 noundef 64) #37, !dbg !482
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #37, !dbg !483
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !483, !tbaa !476
  %17 = tail call i32 @fputs_unlocked(i8* noundef %15, %struct._IO_FILE* noundef %16) #37, !dbg !483
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #37, !dbg !487
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !487, !tbaa !476
  %20 = tail call i32 @fputs_unlocked(i8* noundef %18, %struct._IO_FILE* noundef %19) #37, !dbg !487
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #37, !dbg !490
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !490
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #37, !dbg !491
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !491
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([122 x i8], [122 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #37, !dbg !492
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !492
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #37, !dbg !493
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !493
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #37, !dbg !494
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !494
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([268 x i8], [268 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #37, !dbg !495
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #37, !dbg !495
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !496, metadata !DIExpression()) #37, !dbg !515
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !517
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #37, !dbg !517
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !501, metadata !DIExpression()) #37, !dbg !518
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %28, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #37, !dbg !518
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !510, metadata !DIExpression()) #37, !dbg !515
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !511, metadata !DIExpression()) #37, !dbg !515
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !519
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !511, metadata !DIExpression()) #37, !dbg !515
  br label %30, !dbg !520

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !511, metadata !DIExpression()) #37, !dbg !515
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !528
  call void @llvm.dbg.value(metadata i8* %31, metadata !527, metadata !DIExpression()) #37, !dbg !528
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %31) #38, !dbg !530
  %34 = icmp eq i32 %33, 0, !dbg !531
  br i1 %34, label %40, label %35, !dbg !520

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !532
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !511, metadata !DIExpression()) #37, !dbg !515
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !533
  %38 = load i8*, i8** %37, align 8, !dbg !533, !tbaa !534
  %39 = icmp eq i8* %38, null, !dbg !536
  br i1 %39, label %40, label %30, !dbg !537, !llvm.loop !538

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !540
  %43 = load i8*, i8** %42, align 8, !dbg !540, !tbaa !542
  %44 = icmp eq i8* %43, null, !dbg !543
  %45 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %43, !dbg !544
  call void @llvm.dbg.value(metadata i8* %45, metadata !510, metadata !DIExpression()) #37, !dbg !515
  tail call void @emit_bug_reporting_address() #37, !dbg !545
  %46 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #37, !dbg !546
  call void @llvm.dbg.value(metadata i8* %46, metadata !513, metadata !DIExpression()) #37, !dbg !515
  %47 = icmp eq i8* %46, null, !dbg !547
  br i1 %47, label %55, label %48, !dbg !549

48:                                               ; preds = %40
  %49 = tail call i32 @strncmp(i8* noundef nonnull %46, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i64 noundef 3) #38, !dbg !550
  %50 = icmp eq i32 %49, 0, !dbg !550
  br i1 %50, label %55, label %51, !dbg !551

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #37, !dbg !552
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !552, !tbaa !476
  %54 = tail call i32 @fputs_unlocked(i8* noundef %52, %struct._IO_FILE* noundef %53) #37, !dbg !552
  br label %55, !dbg !554

55:                                               ; preds = %40, %48, %51
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), metadata !527, metadata !DIExpression()) #37, !dbg !555
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !514, metadata !DIExpression()) #37, !dbg !515
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #37, !dbg !557
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #37, !dbg !557
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #37, !dbg !558
  %59 = icmp eq i8* %45, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !558
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !558
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef %45, i8* noundef %60) #37, !dbg !558
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #37, !dbg !559
  br label %62

62:                                               ; preds = %55, %4
  tail call void @exit(i32 noundef %0) #39, !dbg !560
  unreachable, !dbg !560
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !561 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !565 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !67 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !72, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8* %0, metadata !73, metadata !DIExpression()), !dbg !570
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !571, !tbaa !572
  %3 = icmp eq i32 %2, -1, !dbg !574
  br i1 %3, label %4, label %16, !dbg !575

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #37, !dbg !576
  call void @llvm.dbg.value(metadata i8* %5, metadata !74, metadata !DIExpression()), !dbg !577
  %6 = icmp eq i8* %5, null, !dbg !578
  br i1 %6, label %14, label %7, !dbg !579

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !580, !tbaa !581
  %9 = icmp eq i8 %8, 0, !dbg !580
  br i1 %9, label %14, label %10, !dbg !582

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !521, metadata !DIExpression()) #37, !dbg !583
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), metadata !527, metadata !DIExpression()) #37, !dbg !583
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #38, !dbg !585
  %12 = icmp eq i32 %11, 0, !dbg !586
  %13 = zext i1 %12 to i32, !dbg !582
  br label %14, !dbg !582

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !587, !tbaa !572
  br label %16, !dbg !588

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !589
  %18 = icmp eq i32 %17, 0, !dbg !589
  br i1 %18, label %22, label %19, !dbg !591

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !592, !tbaa !476
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !592
  br label %121, !dbg !594

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !77, metadata !DIExpression()), !dbg !570
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #38, !dbg !595
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !596
  call void @llvm.dbg.value(metadata i8* %24, metadata !79, metadata !DIExpression()), !dbg !570
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !597
  call void @llvm.dbg.value(metadata i8* %25, metadata !80, metadata !DIExpression()), !dbg !570
  %26 = icmp eq i8* %25, null, !dbg !598
  br i1 %26, label %53, label %27, !dbg !599

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !600
  br i1 %28, label %53, label %29, !dbg !601

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !81, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !602
  %30 = icmp ult i8* %24, %25, !dbg !603
  br i1 %30, label %31, label %53, !dbg !604

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #40, !dbg !570
  %33 = load i16*, i16** %32, align 8, !tbaa !476
  br label %34, !dbg !604

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !81, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i64 %36, metadata !85, metadata !DIExpression()), !dbg !602
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !605
  call void @llvm.dbg.value(metadata i8* %37, metadata !81, metadata !DIExpression()), !dbg !602
  %38 = load i8, i8* %35, align 1, !dbg !605, !tbaa !581
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !605
  %41 = load i16, i16* %40, align 2, !dbg !605, !tbaa !606
  %42 = lshr i16 %41, 13, !dbg !608
  %43 = and i16 %42, 1, !dbg !608
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !609
  call void @llvm.dbg.value(metadata i64 %45, metadata !85, metadata !DIExpression()), !dbg !602
  %46 = icmp ult i8* %37, %25, !dbg !603
  %47 = icmp ult i64 %45, 2, !dbg !610
  %48 = select i1 %46, i1 %47, i1 false, !dbg !610
  br i1 %48, label %34, label %49, !dbg !604, !llvm.loop !611

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !612
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !614
  %52 = xor i1 %50, true, !dbg !614
  br label %53, !dbg !614

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !570
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8* %54, metadata !80, metadata !DIExpression()), !dbg !570
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #38, !dbg !615
  call void @llvm.dbg.value(metadata i64 %56, metadata !86, metadata !DIExpression()), !dbg !570
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !616
  call void @llvm.dbg.value(metadata i8* %57, metadata !87, metadata !DIExpression()), !dbg !570
  br label %58, !dbg !617

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !570
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.value(metadata i8* %59, metadata !87, metadata !DIExpression()), !dbg !570
  %61 = load i8, i8* %59, align 1, !dbg !618, !tbaa !581
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !619

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !620
  %64 = load i8, i8* %63, align 1, !dbg !623, !tbaa !581
  %65 = icmp ne i8 %64, 45, !dbg !624
  %66 = select i1 %65, i1 %60, i1 false, !dbg !625
  br label %67, !dbg !625

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !570
  %69 = tail call i16** @__ctype_b_loc() #40, !dbg !626
  %70 = load i16*, i16** %69, align 8, !dbg !626, !tbaa !476
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !626
  %73 = load i16, i16* %72, align 2, !dbg !626, !tbaa !606
  %74 = and i16 %73, 8192, !dbg !626
  %75 = icmp eq i16 %74, 0, !dbg !626
  br i1 %75, label %89, label %76, !dbg !628

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !629
  br i1 %77, label %91, label %78, !dbg !632

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !633
  %80 = load i8, i8* %79, align 1, !dbg !633, !tbaa !581
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !633
  %83 = load i16, i16* %82, align 2, !dbg !633, !tbaa !606
  %84 = and i16 %83, 8192, !dbg !633
  %85 = icmp eq i16 %84, 0, !dbg !633
  br i1 %85, label %86, label %91, !dbg !634

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !635
  br i1 %88, label %89, label %91, !dbg !635

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !637
  call void @llvm.dbg.value(metadata i8* %90, metadata !87, metadata !DIExpression()), !dbg !570
  br label %58, !dbg !617, !llvm.loop !638

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !640
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !476
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !640
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), metadata !527, metadata !DIExpression()) #37, !dbg !641
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !643
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !645
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !647
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !651
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !653
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !655
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !657
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !521, metadata !DIExpression()) #37, !dbg !659
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !147, metadata !DIExpression()), !dbg !570
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 noundef 6) #38, !dbg !661
  %96 = icmp eq i32 %95, 0, !dbg !661
  br i1 %96, label %100, label %97, !dbg !663

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i64 noundef 9) #38, !dbg !664
  %99 = icmp eq i32 %98, 0, !dbg !664
  br i1 %99, label %100, label %103, !dbg !665

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !666
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #37, !dbg !666
  br label %106, !dbg !668

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !669
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #37, !dbg !669
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !671, !tbaa !476
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !671
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !672, !tbaa !476
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !672
  %111 = ptrtoint i8* %59 to i64, !dbg !673
  %112 = sub i64 %111, %92, !dbg !673
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !673, !tbaa !476
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !673
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !674, !tbaa !476
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !674
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !675, !tbaa !476
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !675
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !676, !tbaa !476
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !676
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !677
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
declare !dbg !678 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !682 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !686 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #0 !dbg !692 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !697, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8** %1, metadata !698, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 0, metadata !702, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 0, metadata !703, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i64 76, metadata !704, metadata !DIExpression()), !dbg !710
  %4 = load i8*, i8** %1, align 8, !dbg !711, !tbaa !476
  tail call void @set_program_name(i8* noundef %4) #37, !dbg !712
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #37, !dbg !713
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #37, !dbg !714
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #37, !dbg !715
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #37, !dbg !716
  %9 = bitcast i64* %3 to i8*
  br label %10, !dbg !717

10:                                               ; preds = %17, %2
  %11 = phi i1 [ false, %2 ], [ true, %17 ]
  %12 = phi i1 [ false, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !717

14:                                               ; preds = %17, %10
  %15 = phi i1 [ %12, %10 ], [ true, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !717

17:                                               ; preds = %14, %31
  %18 = phi i64 [ %33, %31 ], [ %16, %14 ], !dbg !718
  call void @llvm.dbg.value(metadata i64 %18, metadata !704, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 poison, metadata !703, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8 poison, metadata !702, metadata !DIExpression()), !dbg !710
  %19 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #37, !dbg !719
  call void @llvm.dbg.value(metadata i32 %19, metadata !699, metadata !DIExpression()), !dbg !710
  switch i32 %19, label %39 [
    i32 -1, label %40
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !717, !llvm.loop !720

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #37, !dbg !722
  %21 = load i8*, i8** @optarg, align 8, !dbg !723, !tbaa !476
  call void @llvm.dbg.value(metadata i64* %3, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !724
  %22 = call i32 @xstrtoimax(i8* noundef %21, i8** noundef null, i32 noundef 10, i64* noundef nonnull %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #37, !dbg !725
  call void @llvm.dbg.value(metadata i32 %22, metadata !708, metadata !DIExpression()), !dbg !724
  %23 = icmp ugt i32 %22, 1, !dbg !726
  %24 = load i64, i64* %3, align 8
  call void @llvm.dbg.value(metadata i64 %24, metadata !705, metadata !DIExpression()), !dbg !724
  %25 = icmp slt i64 %24, 0
  %26 = select i1 %23, i1 true, i1 %25, !dbg !728
  br i1 %26, label %27, label %31, !dbg !728

27:                                               ; preds = %20
  %28 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #37, !dbg !729
  %29 = load i8*, i8** @optarg, align 8, !dbg !729, !tbaa !476
  %30 = call i8* @quote(i8* noundef %29) #37, !dbg !729
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %28, i8* noundef %30) #37, !dbg !729
  unreachable, !dbg !729

31:                                               ; preds = %20
  %32 = icmp eq i32 %22, 1, !dbg !730
  %33 = select i1 %32, i64 0, i64 %24, !dbg !731
  call void @llvm.dbg.value(metadata i64 %33, metadata !704, metadata !DIExpression()), !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #37, !dbg !732
  br label %17, !dbg !733, !llvm.loop !720

34:                                               ; preds = %17
  call void @usage(i32 noundef 0) #41, !dbg !734
  unreachable, !dbg !734

35:                                               ; preds = %17
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !735, !tbaa !476
  %37 = load i8*, i8** @Version, align 8, !dbg !735, !tbaa !476
  %38 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #37, !dbg !735
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %37, i8* noundef %38, i8* noundef null) #37, !dbg !735
  call void @exit(i32 noundef 0) #39, !dbg !735
  unreachable, !dbg !735

39:                                               ; preds = %17
  call void @usage(i32 noundef 1) #41, !dbg !736
  unreachable, !dbg !736

40:                                               ; preds = %17
  %41 = load i32, i32* @optind, align 4, !dbg !737, !tbaa !572
  %42 = sub nsw i32 %0, %41, !dbg !739
  %43 = icmp sgt i32 %42, 1, !dbg !740
  br i1 %43, label %44, label %52, !dbg !741

44:                                               ; preds = %40
  %45 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #37, !dbg !742
  %46 = load i32, i32* @optind, align 4, !dbg !742, !tbaa !572
  %47 = add nsw i32 %46, 1, !dbg !742
  %48 = sext i32 %47 to i64, !dbg !742
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !742
  %50 = load i8*, i8** %49, align 8, !dbg !742, !tbaa !476
  %51 = call i8* @quote(i8* noundef %50) #37, !dbg !742
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %45, i8* noundef %51) #37, !dbg !742
  call void @usage(i32 noundef 1) #41, !dbg !744
  unreachable, !dbg !744

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !745
  br i1 %53, label %54, label %58, !dbg !747

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !748
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !748
  %57 = load i8*, i8** %56, align 8, !dbg !748, !tbaa !476
  call void @llvm.dbg.value(metadata i8* %57, metadata !701, metadata !DIExpression()), !dbg !710
  br label %58, !dbg !749

58:                                               ; preds = %52, %54
  %59 = phi i8* [ %57, %54 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %52 ], !dbg !750
  call void @llvm.dbg.value(metadata i8* %59, metadata !701, metadata !DIExpression()), !dbg !710
  call void @llvm.dbg.value(metadata i8* %59, metadata !521, metadata !DIExpression()) #37, !dbg !751
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !527, metadata !DIExpression()) #37, !dbg !751
  %60 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %59, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #38, !dbg !754
  %61 = icmp eq i32 %60, 0, !dbg !755
  br i1 %61, label %62, label %64, !dbg !756

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !757, !tbaa !476
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !700, metadata !DIExpression()), !dbg !710
  br label %71, !dbg !759

64:                                               ; preds = %58
  %65 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #37, !dbg !760
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !700, metadata !DIExpression()), !dbg !710
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !762
  br i1 %66, label %67, label %71, !dbg !764

67:                                               ; preds = %64
  %68 = tail call i32* @__errno_location() #40, !dbg !765
  %69 = load i32, i32* %68, align 4, !dbg !765, !tbaa !572
  %70 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %59) #37, !dbg !765
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %69, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %70) #37, !dbg !765
  unreachable, !dbg !765

71:                                               ; preds = %64, %62
  %72 = phi %struct._IO_FILE* [ %63, %62 ], [ %65, %64 ], !dbg !766
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %72, metadata !700, metadata !DIExpression()), !dbg !710
  call void @fadvise(%struct._IO_FILE* noundef %72, i32 noundef 2) #37, !dbg !767
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !768, !tbaa !476
  br i1 %11, label %74, label %75, !dbg !770

74:                                               ; preds = %71
  call fastcc void @do_decode(%struct._IO_FILE* noundef %72, i8* noundef %59, %struct._IO_FILE* noundef %73, i1 noundef %15) #41, !dbg !771
  unreachable, !dbg !771

75:                                               ; preds = %71
  call fastcc void @do_encode(%struct._IO_FILE* noundef %72, i8* noundef %59, %struct._IO_FILE* noundef %73, i64 noundef %18) #41, !dbg !772
  unreachable, !dbg !772
}

; Function Attrs: nounwind
declare !dbg !773 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !776 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !777 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !780 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct._IO_FILE* noundef %2, i1 noundef %3) unnamed_addr #0 !dbg !786 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.base64_decode_context, align 4
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !790, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8* %1, metadata !791, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !792, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i1 %3, metadata !793, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !818
  %9 = bitcast %struct.base64_decode_context* %7 to i8*, !dbg !819
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #37, !dbg !819
  call void @llvm.dbg.declare(metadata %struct.base64_decode_context* %7, metadata !797, metadata !DIExpression()), !dbg !820
  %10 = tail call noalias nonnull i8* @xmalloc(i64 noundef 4096) #42, !dbg !821
  call void @llvm.dbg.value(metadata i8* %10, metadata !794, metadata !DIExpression()), !dbg !818
  %11 = tail call noalias nonnull i8* @xmalloc(i64 noundef 3072) #42, !dbg !822
  call void @llvm.dbg.value(metadata i8* %11, metadata !795, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %7, metadata !823, metadata !DIExpression()), !dbg !829
  %12 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %7, i64 0, i32 0, !dbg !831
  store i32 0, i32* %12, align 4, !dbg !832, !tbaa !833
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %14 = bitcast i64* %8 to i8*
  %15 = bitcast i64* %5 to i8*
  %16 = bitcast i64* %6 to i8*
  br label %17, !dbg !835

17:                                               ; preds = %64, %4
  %18 = phi i64 [ 0, %4 ], [ %65, %64 ], !dbg !836
  call void @llvm.dbg.value(metadata i64 %18, metadata !796, metadata !DIExpression()), !dbg !818
  %19 = getelementptr inbounds i8, i8* %10, i64 %18, !dbg !837
  %20 = sub nsw i64 4096, %18, !dbg !837
  %21 = call i64 @fread_unlocked(i8* noundef nonnull %19, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %0), !dbg !837
  call void @llvm.dbg.value(metadata i64 %21, metadata !805, metadata !DIExpression()), !dbg !838
  %22 = icmp sgt i64 %21, 0
  %23 = and i1 %22, %3, !dbg !839
  call void @llvm.dbg.value(metadata i64 0, metadata !807, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 %21, metadata !805, metadata !DIExpression()), !dbg !838
  br i1 %23, label %24, label %49, !dbg !839

24:                                               ; preds = %17, %43
  %25 = phi i64 [ %45, %43 ], [ 0, %17 ]
  %26 = phi i64 [ %44, %43 ], [ %21, %17 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !807, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 %26, metadata !805, metadata !DIExpression()), !dbg !838
  %27 = add nsw i64 %25, %18, !dbg !841
  %28 = getelementptr inbounds i8, i8* %10, i64 %27, !dbg !845
  %29 = load i8, i8* %28, align 1, !dbg !845, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %29, metadata !846, metadata !DIExpression()), !dbg !851
  %30 = zext i8 %29 to i64, !dbg !853
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %30, !dbg !854
  %32 = load i8, i8* %31, align 1, !dbg !854, !tbaa !581
  %33 = icmp sgt i8 %32, -1, !dbg !855
  %34 = icmp eq i8 %29, 61
  %35 = select i1 %33, i1 true, i1 %34, !dbg !856
  call void @llvm.dbg.value(metadata i32 1, metadata !857, metadata !DIExpression()), !dbg !863
  call void @llvm.dbg.value(metadata i32 1, metadata !862, metadata !DIExpression()), !dbg !863
  br i1 %35, label %36, label %38, !dbg !856

36:                                               ; preds = %24
  %37 = add nsw i64 %25, 1, !dbg !865
  call void @llvm.dbg.value(metadata i64 %37, metadata !807, metadata !DIExpression()), !dbg !840
  br label %43, !dbg !866

38:                                               ; preds = %24
  %39 = getelementptr inbounds i8, i8* %19, i64 %25, !dbg !867
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !868
  %41 = add nsw i64 %26, -1, !dbg !869
  call void @llvm.dbg.value(metadata i64 %41, metadata !805, metadata !DIExpression()), !dbg !838
  %42 = sub nsw i64 %41, %25, !dbg !870
  call void @llvm.dbg.value(metadata i8* %39, metadata !871, metadata !DIExpression()) #37, !dbg !879
  call void @llvm.dbg.value(metadata i8* %40, metadata !877, metadata !DIExpression()) #37, !dbg !879
  call void @llvm.dbg.value(metadata i64 %42, metadata !878, metadata !DIExpression()) #37, !dbg !879
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %39, i8* noundef nonnull align 1 %40, i64 noundef %42, i1 noundef false) #37, !dbg !881
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i64 [ %26, %36 ], [ %41, %38 ], !dbg !838
  %45 = phi i64 [ %37, %36 ], [ %25, %38 ], !dbg !840
  call void @llvm.dbg.value(metadata i64 %45, metadata !807, metadata !DIExpression()), !dbg !840
  call void @llvm.dbg.value(metadata i64 %44, metadata !805, metadata !DIExpression()), !dbg !838
  %46 = icmp sgt i64 %44, 0, !dbg !882
  %47 = icmp slt i64 %45, %44, !dbg !883
  %48 = select i1 %46, i1 %47, i1 false, !dbg !883
  br i1 %48, label %24, label %49, !dbg !884, !llvm.loop !885

49:                                               ; preds = %43, %17
  %50 = phi i64 [ %21, %17 ], [ %44, %43 ], !dbg !887
  call void @llvm.dbg.value(metadata i64 %50, metadata !805, metadata !DIExpression()), !dbg !838
  %51 = add nsw i64 %50, %18, !dbg !888
  call void @llvm.dbg.value(metadata i64 %51, metadata !796, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !889, metadata !DIExpression()), !dbg !895
  %52 = load i32, i32* %13, align 8, !dbg !898, !tbaa !899
  %53 = and i32 %52, 32, !dbg !902
  %54 = icmp eq i32 %53, 0, !dbg !902
  br i1 %54, label %59, label %55, !dbg !903

55:                                               ; preds = %49
  %56 = tail call i32* @__errno_location() #40, !dbg !904
  %57 = load i32, i32* %56, align 4, !dbg !904, !tbaa !572
  %58 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #37, !dbg !904
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %57, i8* noundef %58) #37, !dbg !904
  unreachable, !dbg !904

59:                                               ; preds = %49
  %60 = icmp slt i64 %51, 4096, !dbg !905
  %61 = and i32 %52, 16
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false, !dbg !906
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !907, metadata !DIExpression()), !dbg !910
  br i1 %63, label %64, label %66, !dbg !906

64:                                               ; preds = %59, %122
  %65 = phi i64 [ %51, %59 ], [ 0, %122 ]
  br label %17, !dbg !818, !llvm.loop !912

66:                                               ; preds = %59, %118
  %67 = phi i64 [ 0, %118 ], [ %51, %59 ], !dbg !888
  call void @llvm.dbg.value(metadata i64 %67, metadata !796, metadata !DIExpression()), !dbg !818
  %68 = icmp eq i64 %67, 0, !dbg !914
  br i1 %68, label %69, label %73, !dbg !915

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !907, metadata !DIExpression()), !dbg !916
  %70 = load i32, i32* %13, align 8, !dbg !918, !tbaa !899
  %71 = and i32 %70, 16, !dbg !915
  %72 = icmp eq i32 %71, 0, !dbg !915
  br i1 %72, label %122, label %76, !dbg !919

73:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #37, !dbg !920
  call void @llvm.dbg.value(metadata i64 3072, metadata !811, metadata !DIExpression()), !dbg !921
  store i64 3072, i64* %8, align 8, !dbg !922, !tbaa !923
  call void @llvm.dbg.value(metadata i8* %11, metadata !795, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64* %8, metadata !811, metadata !DIExpression(DW_OP_deref)), !dbg !921
  %74 = call i1 @base64_decode_ctx(%struct.base64_decode_context* noundef nonnull %7, i8* noundef nonnull %10, i64 noundef %67, i8* noundef nonnull %11, i64* noundef nonnull %8) #37, !dbg !924
  call void @llvm.dbg.value(metadata i1 %74, metadata !803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !836
  %75 = load i64, i64* %8, align 8, !dbg !926, !tbaa !923
  br label %100, !dbg !927

76:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #37, !dbg !920
  call void @llvm.dbg.value(metadata i64 3072, metadata !811, metadata !DIExpression()), !dbg !921
  store i64 3072, i64* %8, align 8, !dbg !922, !tbaa !923
  call void @llvm.dbg.value(metadata i64* %8, metadata !811, metadata !DIExpression(DW_OP_deref)), !dbg !921
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %7, metadata !928, metadata !DIExpression()) #37, !dbg !943
  call void @llvm.dbg.value(metadata i8** undef, metadata !935, metadata !DIExpression()) #37, !dbg !943
  call void @llvm.dbg.value(metadata i64* %8, metadata !936, metadata !DIExpression()) #37, !dbg !943
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %7, metadata !945, metadata !DIExpression()) #37, !dbg !950
  %77 = load i32, i32* %12, align 4, !dbg !953, !tbaa !833
  %78 = icmp eq i32 %77, 0, !dbg !954
  br i1 %78, label %79, label %80, !dbg !955

79:                                               ; preds = %76
  store i64 0, i64* %8, align 8, !dbg !956, !tbaa !923
  br label %100, !dbg !958

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #37, !dbg !959
  call void @llvm.dbg.value(metadata i64 4412750543122677053, metadata !937, metadata !DIExpression()) #37, !dbg !943
  store i64 4412750543122677053, i64* %5, align 8, !dbg !960
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %7, metadata !945, metadata !DIExpression()) #37, !dbg !961
  call void @llvm.dbg.value(metadata i32 %77, metadata !939, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #37, !dbg !943
  call void @llvm.dbg.value(metadata i32 %77, metadata !857, metadata !DIExpression()) #37, !dbg !963
  %81 = srem i32 %77, 4, !dbg !965
  call void @llvm.dbg.value(metadata i32 %81, metadata !862, metadata !DIExpression()) #37, !dbg !963
  %82 = icmp eq i32 %81, 0, !dbg !966
  %83 = sub nsw i32 4, %81, !dbg !966
  %84 = select i1 %82, i32 0, i32 %83, !dbg !966
  %85 = zext i32 %84 to i64
  call void @llvm.dbg.value(metadata i64 %85, metadata !940, metadata !DIExpression()) #37, !dbg !943
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #37, !dbg !967
  call void @llvm.dbg.value(metadata i64 3072, metadata !941, metadata !DIExpression()) #37, !dbg !943
  store i64 3072, i64* %6, align 8, !dbg !968, !tbaa !923
  %86 = icmp eq i32 %84, 0, !dbg !969
  br i1 %86, label %95, label %87, !dbg !971

87:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %7, metadata !972, metadata !DIExpression()) #37, !dbg !977
  %88 = add nsw i32 %77, -1, !dbg !979
  %89 = sext i32 %88 to i64, !dbg !980
  %90 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %7, i64 0, i32 1, i64 %89, !dbg !980
  %91 = load i8, i8* %90, align 1, !dbg !980, !tbaa !581
  %92 = icmp eq i8 %91, 61, !dbg !981
  br i1 %92, label %95, label %93, !dbg !982

93:                                               ; preds = %87
  call void @llvm.dbg.value(metadata i64* %6, metadata !941, metadata !DIExpression(DW_OP_deref)) #37, !dbg !943
  call void @llvm.dbg.value(metadata i64* %5, metadata !937, metadata !DIExpression(DW_OP_deref)) #37, !dbg !943
  %94 = call i1 @base64_decode_ctx(%struct.base64_decode_context* noundef nonnull %7, i8* noundef nonnull %15, i64 noundef %85, i8* noundef nonnull %11, i64* noundef nonnull %6) #37, !dbg !983
  call void @llvm.dbg.value(metadata i1 %94, metadata !942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !943
  br label %97, !dbg !985

95:                                               ; preds = %87, %80
  call void @llvm.dbg.value(metadata i64* %6, metadata !941, metadata !DIExpression(DW_OP_deref)) #37, !dbg !943
  %96 = call i1 @base64_decode_ctx(%struct.base64_decode_context* noundef nonnull %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 noundef 0, i8* noundef nonnull %11, i64* noundef nonnull %6) #37, !dbg !986
  call void @llvm.dbg.value(metadata i1 %96, metadata !942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !943
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i1 [ %96, %95 ], [ %94, %93 ]
  call void @llvm.dbg.value(metadata i1 %98, metadata !942, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !943
  %99 = load i64, i64* %6, align 8, !dbg !988, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %99, metadata !941, metadata !DIExpression()) #37, !dbg !943
  store i64 %99, i64* %8, align 8, !dbg !989, !tbaa !923
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #37, !dbg !990
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #37, !dbg !990
  br label %100

100:                                              ; preds = %97, %79, %73
  %101 = phi i64 [ %75, %73 ], [ 0, %79 ], [ %99, %97 ], !dbg !926
  %102 = phi i1 [ %74, %73 ], [ true, %79 ], [ %98, %97 ]
  call void @llvm.dbg.value(metadata i1 %102, metadata !803, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !836
  call void @llvm.dbg.value(metadata i64 %101, metadata !811, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i64 %101, metadata !811, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8* %11, metadata !795, metadata !DIExpression()), !dbg !818
  %103 = call i64 @fwrite_unlocked(i8* noundef nonnull %11, i64 noundef 1, i64 noundef %101, %struct._IO_FILE* noundef %2), !dbg !926
  %104 = load i64, i64* %8, align 8, !dbg !991, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %104, metadata !811, metadata !DIExpression()), !dbg !921
  %105 = icmp ult i64 %103, %104, !dbg !992
  br i1 %105, label %106, label %115, !dbg !993

106:                                              ; preds = %100
  %107 = tail call i32* @__errno_location() #40, !dbg !994
  %108 = load i32, i32* %107, align 4, !dbg !994, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %108, metadata !997, metadata !DIExpression()) #37, !dbg !999
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1000, !tbaa !476
  %110 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %109) #37, !dbg !1000
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1001, !tbaa !476
  %112 = call i32 @fpurge(%struct._IO_FILE* noundef %111) #37, !dbg !1002
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1003, !tbaa !476
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %113) #37, !dbg !1003
  %114 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1004
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %108, i8* noundef %114) #37, !dbg !1004
  unreachable, !dbg !1004

115:                                              ; preds = %100
  br i1 %102, label %118, label %116, !dbg !1005

116:                                              ; preds = %115
  %117 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #37, !dbg !1006
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %117) #37, !dbg !1006
  unreachable, !dbg !1006

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 0, metadata !796, metadata !DIExpression()), !dbg !818
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #37, !dbg !1008
  br i1 %68, label %119, label %66

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 8, !dbg !1009, !tbaa !899
  %121 = and i32 %120, 16, !dbg !1011
  br label %122

122:                                              ; preds = %69, %119
  %123 = phi i32 [ %121, %119 ], [ 0, %69 ], !dbg !1011
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !907, metadata !DIExpression()), !dbg !1012
  %124 = icmp eq i32 %123, 0, !dbg !1011
  br i1 %124, label %64, label %125, !dbg !1013

125:                                              ; preds = %122
  call fastcc void @finish_and_exit(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1) #41, !dbg !1014
  unreachable, !dbg !1014
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct._IO_FILE* noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1015 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1019, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i8* %1, metadata !1020, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1021, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %3, metadata !1022, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata i64 0, metadata !1023, metadata !DIExpression()), !dbg !1029
  %5 = tail call noalias nonnull i8* @xmalloc(i64 noundef 30720) #42, !dbg !1030
  call void @llvm.dbg.value(metadata i8* %5, metadata !1024, metadata !DIExpression()), !dbg !1029
  %6 = tail call noalias nonnull i8* @xmalloc(i64 noundef 40960) #42, !dbg !1031
  call void @llvm.dbg.value(metadata i8* %6, metadata !1025, metadata !DIExpression()), !dbg !1029
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %8 = icmp eq i64 %3, 0
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 5
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 6
  br label %11, !dbg !1032

11:                                               ; preds = %98, %4
  %12 = phi i64 [ 0, %4 ], [ %94, %98 ], !dbg !1033
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1029
  br label %13, !dbg !1034

13:                                               ; preds = %22, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %22 ], !dbg !1035
  call void @llvm.dbg.value(metadata i64 %14, metadata !1026, metadata !DIExpression()), !dbg !1029
  %15 = getelementptr inbounds i8, i8* %5, i64 %14, !dbg !1036
  %16 = sub nsw i64 30720, %14, !dbg !1036
  %17 = tail call i64 @fread_unlocked(i8* noundef nonnull %15, i64 noundef 1, i64 noundef %16, %struct._IO_FILE* noundef %0), !dbg !1036
  call void @llvm.dbg.value(metadata i64 %17, metadata !1027, metadata !DIExpression()), !dbg !1035
  %18 = add nsw i64 %17, %14, !dbg !1038
  call void @llvm.dbg.value(metadata i64 %18, metadata !1026, metadata !DIExpression()), !dbg !1029
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !907, metadata !DIExpression()), !dbg !1039
  %19 = load i32, i32* %7, align 8, !dbg !1041, !tbaa !899
  %20 = and i32 %19, 16, !dbg !1042
  %21 = icmp eq i32 %20, 0, !dbg !1042
  br i1 %21, label %22, label %27, !dbg !1043

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !889, metadata !DIExpression()), !dbg !1044
  %23 = and i32 %19, 32, !dbg !1046
  %24 = icmp eq i32 %23, 0, !dbg !1046
  %25 = icmp slt i64 %18, 30720
  %26 = select i1 %24, i1 %25, i1 false, !dbg !1047
  br i1 %26, label %13, label %27, !dbg !1047, !llvm.loop !1048

27:                                               ; preds = %13, %22
  %28 = icmp sgt i64 %18, 0, !dbg !1050
  br i1 %28, label %29, label %93, !dbg !1052

29:                                               ; preds = %27
  %30 = add nuw nsw i64 %18, 2, !dbg !1053
  %31 = udiv i64 %30, 3, !dbg !1053
  %32 = shl nuw nsw i64 %31, 2, !dbg !1053
  tail call void @base64_encode(i8* noundef nonnull %5, i64 noundef %18, i8* noundef nonnull %6, i64 noundef %32) #37, !dbg !1056
  call void @llvm.dbg.value(metadata i8* %6, metadata !1057, metadata !DIExpression()) #37, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %32, metadata !1062, metadata !DIExpression()) #37, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %3, metadata !1063, metadata !DIExpression()) #37, !dbg !1085
  call void @llvm.dbg.value(metadata i64* undef, metadata !1064, metadata !DIExpression()) #37, !dbg !1085
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1065, metadata !DIExpression()) #37, !dbg !1085
  br i1 %8, label %33, label %46, !dbg !1087

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1088, !tbaa !476
  %35 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %6, i64 noundef 1, i64 noundef %32, %struct._IO_FILE* noundef %34) #37, !dbg !1089
  %36 = icmp ult i64 %35, %32, !dbg !1090
  br i1 %36, label %37, label %93, !dbg !1091

37:                                               ; preds = %33
  %38 = tail call i32* @__errno_location() #40, !dbg !1092
  %39 = load i32, i32* %38, align 4, !dbg !1092, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %39, metadata !997, metadata !DIExpression()) #37, !dbg !1094
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1095, !tbaa !476
  %41 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %40) #37, !dbg !1095
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1096, !tbaa !476
  %43 = tail call i32 @fpurge(%struct._IO_FILE* noundef %42) #37, !dbg !1097
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1098, !tbaa !476
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %44) #37, !dbg !1098
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1099
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %39, i8* noundef %45) #37, !dbg !1099
  unreachable, !dbg !1099

46:                                               ; preds = %29, %89
  %47 = phi i64 [ %90, %89 ], [ %12, %29 ], !dbg !1029
  %48 = phi i64 [ %91, %89 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1073, metadata !DIExpression()) #37, !dbg !1100
  %49 = sub nsw i64 %3, %47, !dbg !1101
  %50 = sub nsw i64 %32, %48, !dbg !1101
  %51 = icmp slt i64 %49, %50, !dbg !1101
  %52 = select i1 %51, i64 %49, i64 %50, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %52, metadata !1075, metadata !DIExpression()) #37, !dbg !1102
  %53 = icmp eq i64 %52, 0, !dbg !1103
  br i1 %53, label %54, label %72, !dbg !1104

54:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 10, metadata !1105, metadata !DIExpression()) #37, !dbg !1111
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1110, metadata !DIExpression()) #37, !dbg !1111
  %55 = load i8*, i8** %9, align 8, !dbg !1115, !tbaa !1116
  %56 = load i8*, i8** %10, align 8, !dbg !1115, !tbaa !1117
  %57 = icmp ult i8* %55, %56, !dbg !1115
  br i1 %57, label %58, label %60, !dbg !1115, !prof !1118

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1115
  store i8* %59, i8** %9, align 8, !dbg !1115, !tbaa !1116
  store i8 10, i8* %55, align 1, !dbg !1115, !tbaa !581
  br label %89, !dbg !1119

60:                                               ; preds = %54
  %61 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %2, i32 noundef 10) #37, !dbg !1115
  %62 = icmp eq i32 %61, -1, !dbg !1120
  br i1 %62, label %63, label %89, !dbg !1119

63:                                               ; preds = %60
  %64 = tail call i32* @__errno_location() #40, !dbg !1121
  %65 = load i32, i32* %64, align 4, !dbg !1121, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %65, metadata !997, metadata !DIExpression()) #37, !dbg !1123
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1124, !tbaa !476
  %67 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %66) #37, !dbg !1124
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1125, !tbaa !476
  %69 = tail call i32 @fpurge(%struct._IO_FILE* noundef %68) #37, !dbg !1126
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1127, !tbaa !476
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %70) #37, !dbg !1127
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1128
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %65, i8* noundef %71) #37, !dbg !1128
  unreachable, !dbg !1128

72:                                               ; preds = %46
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1129, !tbaa !476
  %74 = getelementptr inbounds i8, i8* %6, i64 %48, !dbg !1129
  %75 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %74, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef %73) #37, !dbg !1130
  %76 = icmp ult i64 %75, %52, !dbg !1131
  br i1 %76, label %77, label %86, !dbg !1132

77:                                               ; preds = %72
  %78 = tail call i32* @__errno_location() #40, !dbg !1133
  %79 = load i32, i32* %78, align 4, !dbg !1133, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %79, metadata !997, metadata !DIExpression()) #37, !dbg !1135
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !476
  %81 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %80) #37, !dbg !1136
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !476
  %83 = tail call i32 @fpurge(%struct._IO_FILE* noundef %82) #37, !dbg !1138
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !476
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %84) #37, !dbg !1139
  %85 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1140
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %79, i8* noundef %85) #37, !dbg !1140
  unreachable, !dbg !1140

86:                                               ; preds = %72
  %87 = add nsw i64 %52, %47, !dbg !1141
  %88 = add nsw i64 %52, %48, !dbg !1142
  call void @llvm.dbg.value(metadata i64 %88, metadata !1073, metadata !DIExpression()) #37, !dbg !1100
  br label %89

89:                                               ; preds = %58, %60, %86
  %90 = phi i64 [ %87, %86 ], [ 0, %60 ], [ 0, %58 ], !dbg !1143
  %91 = phi i64 [ %88, %86 ], [ %48, %60 ], [ %48, %58 ], !dbg !1100
  call void @llvm.dbg.value(metadata i64 %91, metadata !1073, metadata !DIExpression()) #37, !dbg !1100
  %92 = icmp slt i64 %91, %32, !dbg !1144
  br i1 %92, label %46, label %93, !dbg !1145, !llvm.loop !1146

93:                                               ; preds = %89, %33, %27
  %94 = phi i64 [ %12, %27 ], [ %12, %33 ], [ %90, %89 ], !dbg !1033
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !907, metadata !DIExpression()), !dbg !1148
  %95 = load i32, i32* %7, align 8, !dbg !1150, !tbaa !899
  %96 = and i32 %95, 16, !dbg !1151
  %97 = icmp eq i32 %96, 0, !dbg !1151
  br i1 %97, label %98, label %103, !dbg !1152

98:                                               ; preds = %93
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !889, metadata !DIExpression()), !dbg !1153
  %99 = and i32 %95, 32, !dbg !1155
  %100 = icmp eq i32 %99, 0, !dbg !1155
  %101 = icmp eq i64 %18, 30720
  %102 = select i1 %100, i1 %101, i1 false, !dbg !1156
  br i1 %102, label %11, label %103, !dbg !1156, !llvm.loop !1157

103:                                              ; preds = %93, %98
  %104 = icmp ne i64 %3, 0, !dbg !1159
  call void @llvm.dbg.value(metadata i64 %94, metadata !1023, metadata !DIExpression()), !dbg !1029
  %105 = icmp sgt i64 %94, 0
  %106 = select i1 %104, i1 %105, i1 false, !dbg !1161
  br i1 %106, label %107, label %125, !dbg !1161

107:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i32 10, metadata !1105, metadata !DIExpression()) #37, !dbg !1162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1110, metadata !DIExpression()) #37, !dbg !1162
  %108 = load i8*, i8** %9, align 8, !dbg !1164, !tbaa !1116
  %109 = load i8*, i8** %10, align 8, !dbg !1164, !tbaa !1117
  %110 = icmp ult i8* %108, %109, !dbg !1164
  br i1 %110, label %111, label %113, !dbg !1164, !prof !1118

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1164
  store i8* %112, i8** %9, align 8, !dbg !1164, !tbaa !1116
  store i8 10, i8* %108, align 1, !dbg !1164, !tbaa !581
  br label %125, !dbg !1165

113:                                              ; preds = %107
  %114 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %2, i32 noundef 10) #37, !dbg !1164
  %115 = icmp eq i32 %114, -1, !dbg !1166
  br i1 %115, label %116, label %125, !dbg !1165

116:                                              ; preds = %113
  %117 = tail call i32* @__errno_location() #40, !dbg !1167
  %118 = load i32, i32* %117, align 4, !dbg !1167, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %118, metadata !997, metadata !DIExpression()) #37, !dbg !1169
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1170, !tbaa !476
  %120 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %119) #37, !dbg !1170
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1171, !tbaa !476
  %122 = tail call i32 @fpurge(%struct._IO_FILE* noundef %121) #37, !dbg !1172
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1173, !tbaa !476
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %123) #37, !dbg !1173
  %124 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1174
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %118, i8* noundef %124) #37, !dbg !1174
  unreachable, !dbg !1174

125:                                              ; preds = %111, %113, %103
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !889, metadata !DIExpression()), !dbg !1175
  %126 = load i32, i32* %7, align 8, !dbg !1178, !tbaa !899
  %127 = and i32 %126, 32, !dbg !1179
  %128 = icmp eq i32 %127, 0, !dbg !1179
  br i1 %128, label %133, label %129, !dbg !1180

129:                                              ; preds = %125
  %130 = tail call i32* @__errno_location() #40, !dbg !1181
  %131 = load i32, i32* %130, align 4, !dbg !1181, !tbaa !572
  %132 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #37, !dbg !1181
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %131, i8* noundef %132) #37, !dbg !1181
  unreachable, !dbg !1181

133:                                              ; preds = %125
  tail call fastcc void @finish_and_exit(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1) #41, !dbg !1182
  unreachable, !dbg !1182
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare !dbg !1183 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1184 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(%struct._IO_FILE* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !1187 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1191, metadata !DIExpression()), !dbg !1193
  call void @llvm.dbg.value(metadata i8* %1, metadata !1192, metadata !DIExpression()), !dbg !1193
  %3 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #37, !dbg !1194
  %4 = icmp eq i32 %3, 0, !dbg !1196
  br i1 %4, label %14, label %5, !dbg !1197

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !521, metadata !DIExpression()) #37, !dbg !1198
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !527, metadata !DIExpression()) #37, !dbg !1198
  %6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #38, !dbg !1202
  %7 = icmp eq i32 %6, 0, !dbg !1203
  %8 = tail call i32* @__errno_location() #40, !dbg !1204
  %9 = load i32, i32* %8, align 4, !dbg !1204, !tbaa !572
  br i1 %7, label %10, label %12, !dbg !1205

10:                                               ; preds = %5
  %11 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 noundef 5) #37, !dbg !1206
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %11) #37, !dbg !1206
  unreachable, !dbg !1206

12:                                               ; preds = %5
  %13 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #37, !dbg !1207
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %13) #37, !dbg !1207
  unreachable, !dbg !1207

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #39, !dbg !1208
  unreachable, !dbg !1208
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @isubase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1209 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1211, metadata !DIExpression()), !dbg !1212
  %2 = zext i8 %0 to i64, !dbg !1213
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %2, !dbg !1214
  %4 = load i8, i8* %3, align 1, !dbg !1214, !tbaa !581
  %5 = icmp sgt i8 %4, -1, !dbg !1215
  ret i1 %5, !dbg !1216
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @isbase64(i8 noundef %0) local_unnamed_addr #12 !dbg !1217 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1221, metadata !DIExpression()), !dbg !1222
  call void @llvm.dbg.value(metadata i8 %0, metadata !1211, metadata !DIExpression()), !dbg !1223
  %2 = zext i8 %0 to i64, !dbg !1225
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %2, !dbg !1226
  %4 = load i8, i8* %3, align 1, !dbg !1226, !tbaa !581
  %5 = icmp sgt i8 %4, -1, !dbg !1227
  ret i1 %5, !dbg !1228
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @base64_decode_ctx_init(%struct.base64_decode_context* nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1229 {
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1238, metadata !DIExpression()), !dbg !1239
  %2 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1240
  store i32 0, i32* %2, align 4, !dbg !1241, !tbaa !833
  ret void, !dbg !1242
}

; Function Attrs: nofree nosync nounwind uwtable
define dso_local void @base64_encode(i8* noalias nocapture noundef readonly %0, i64 noundef %1, i8* noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !1243 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1247, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %1, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %2, metadata !1249, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %3, metadata !1250, metadata !DIExpression()), !dbg !1251
  %5 = and i64 %3, 3, !dbg !1252
  %6 = icmp eq i64 %5, 0, !dbg !1252
  br i1 %6, label %7, label %53, !dbg !1254

7:                                                ; preds = %4
  %8 = ashr i64 %3, 2, !dbg !1255
  %9 = mul nsw i64 %8, 3, !dbg !1256
  %10 = icmp eq i64 %9, %1, !dbg !1257
  br i1 %10, label %11, label %53, !dbg !1258

11:                                               ; preds = %7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259), !dbg !1262
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264), !dbg !1262
  call void @llvm.dbg.value(metadata i8* %0, metadata !1266, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %1, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i8* %2, metadata !1272, metadata !DIExpression()), !dbg !1273
  %12 = icmp eq i64 %1, 0, !dbg !1275
  br i1 %12, label %137, label %13, !dbg !1275

13:                                               ; preds = %11, %13
  %14 = phi i8* [ %49, %13 ], [ %2, %11 ]
  %15 = phi i64 [ %50, %13 ], [ %1, %11 ]
  %16 = phi i8* [ %51, %13 ], [ %0, %11 ]
  call void @llvm.dbg.value(metadata i8* %14, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i64 %15, metadata !1271, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.value(metadata i8* %16, metadata !1266, metadata !DIExpression()), !dbg !1273
  %17 = load i8, i8* %16, align 1, !dbg !1276, !tbaa !581, !alias.scope !1259, !noalias !1264
  %18 = lshr i8 %17, 2, !dbg !1278
  %19 = zext i8 %18 to i64
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %19, !dbg !1279
  %21 = load i8, i8* %20, align 1, !dbg !1279, !tbaa !581, !noalias !1280
  %22 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %22, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8 %21, i8* %14, align 1, !dbg !1282, !tbaa !581, !alias.scope !1264, !noalias !1259
  %23 = zext i8 %17 to i64, !dbg !1283
  %24 = shl nuw nsw i64 %23, 4, !dbg !1284
  %25 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !1285
  %26 = load i8, i8* %25, align 1, !dbg !1285, !tbaa !581, !alias.scope !1259, !noalias !1264
  %27 = lshr i8 %26, 4, !dbg !1286
  %28 = zext i8 %27 to i64, !dbg !1286
  %29 = and i64 %24, 48, !dbg !1287
  %30 = or i64 %29, %28, !dbg !1287
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %30, !dbg !1288
  %32 = load i8, i8* %31, align 1, !dbg !1288, !tbaa !581, !noalias !1280
  %33 = getelementptr inbounds i8, i8* %14, i64 2, !dbg !1289
  call void @llvm.dbg.value(metadata i8* %33, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8 %32, i8* %22, align 1, !dbg !1290, !tbaa !581, !alias.scope !1264, !noalias !1259
  %34 = zext i8 %26 to i64, !dbg !1291
  %35 = shl nuw nsw i64 %34, 2, !dbg !1292
  %36 = getelementptr inbounds i8, i8* %16, i64 2, !dbg !1293
  %37 = load i8, i8* %36, align 1, !dbg !1293, !tbaa !581, !alias.scope !1259, !noalias !1264
  %38 = lshr i8 %37, 6, !dbg !1294
  %39 = zext i8 %38 to i64, !dbg !1294
  %40 = and i64 %35, 60, !dbg !1295
  %41 = or i64 %40, %39, !dbg !1295
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %41, !dbg !1296
  %43 = load i8, i8* %42, align 1, !dbg !1296, !tbaa !581, !noalias !1280
  %44 = getelementptr inbounds i8, i8* %14, i64 3, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %44, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8 %43, i8* %33, align 1, !dbg !1298, !tbaa !581, !alias.scope !1264, !noalias !1259
  %45 = and i8 %37, 63, !dbg !1299
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %46, !dbg !1300
  %48 = load i8, i8* %47, align 1, !dbg !1300, !tbaa !581, !noalias !1280
  %49 = getelementptr inbounds i8, i8* %14, i64 4, !dbg !1301
  call void @llvm.dbg.value(metadata i8* %49, metadata !1272, metadata !DIExpression()), !dbg !1273
  store i8 %48, i8* %44, align 1, !dbg !1302, !tbaa !581, !alias.scope !1264, !noalias !1259
  %50 = add nsw i64 %15, -3, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %50, metadata !1271, metadata !DIExpression()), !dbg !1273
  %51 = getelementptr inbounds i8, i8* %16, i64 3, !dbg !1304
  call void @llvm.dbg.value(metadata i8* %51, metadata !1266, metadata !DIExpression()), !dbg !1273
  %52 = icmp eq i64 %50, 0, !dbg !1275
  br i1 %52, label %137, label %13, !dbg !1275, !llvm.loop !1305

53:                                               ; preds = %7, %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %2, metadata !1249, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %1, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %0, metadata !1247, metadata !DIExpression()), !dbg !1251
  %54 = icmp ne i64 %1, 0, !dbg !1307
  %55 = icmp ne i64 %3, 0, !dbg !1308
  %56 = and i1 %54, %55, !dbg !1308
  br i1 %56, label %57, label %133, !dbg !1309

57:                                               ; preds = %53, %126
  %58 = phi i64 [ %124, %126 ], [ %3, %53 ]
  %59 = phi i8* [ %127, %126 ], [ %2, %53 ]
  %60 = phi i64 [ %129, %126 ], [ %1, %53 ]
  %61 = phi i8* [ %132, %126 ], [ %0, %53 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i64 %60, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %61, metadata !1247, metadata !DIExpression()), !dbg !1251
  %62 = load i8, i8* %61, align 1, !dbg !1310, !tbaa !581
  %63 = lshr i8 %62, 2, !dbg !1312
  %64 = zext i8 %63 to i64
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %64, !dbg !1313
  %66 = load i8, i8* %65, align 1, !dbg !1313, !tbaa !581
  %67 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !1314
  call void @llvm.dbg.value(metadata i8* %67, metadata !1249, metadata !DIExpression()), !dbg !1251
  store i8 %66, i8* %59, align 1, !dbg !1315, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %68 = icmp eq i64 %58, 1, !dbg !1316
  br i1 %68, label %137, label %69, !dbg !1318

69:                                               ; preds = %57
  %70 = zext i8 %62 to i64, !dbg !1319
  %71 = shl nuw nsw i64 %70, 4, !dbg !1320
  call void @llvm.dbg.value(metadata i64 %60, metadata !1248, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %72 = icmp eq i64 %60, 1, !dbg !1321
  br i1 %72, label %73, label %78, !dbg !1321

73:                                               ; preds = %69
  %74 = and i64 %71, 48, !dbg !1322
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %74, !dbg !1323
  %76 = load i8, i8* %75, align 1, !dbg !1323, !tbaa !581
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1251
  store i8 %76, i8* %67, align 1, !dbg !1324, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %77 = icmp eq i64 %58, 2, !dbg !1325
  br i1 %77, label %137, label %109, !dbg !1327

78:                                               ; preds = %69
  %79 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1328
  %80 = load i8, i8* %79, align 1, !dbg !1328, !tbaa !581
  %81 = lshr i8 %80, 4, !dbg !1329
  %82 = zext i8 %81 to i64, !dbg !1329
  %83 = and i64 %71, 48, !dbg !1322
  %84 = or i64 %83, %82, !dbg !1322
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %84, !dbg !1323
  %86 = load i8, i8* %85, align 1, !dbg !1323, !tbaa !581
  %87 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !1330
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1251
  store i8 %86, i8* %67, align 1, !dbg !1324, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %88 = icmp eq i64 %58, 2, !dbg !1325
  br i1 %88, label %137, label %89, !dbg !1327

89:                                               ; preds = %78
  %90 = zext i8 %80 to i64, !dbg !1331
  %91 = shl nuw nsw i64 %90, 2, !dbg !1332
  %92 = add nsw i64 %60, -2, !dbg !1333
  call void @llvm.dbg.value(metadata i64 %92, metadata !1248, metadata !DIExpression()), !dbg !1251
  %93 = icmp eq i64 %92, 0, !dbg !1333
  br i1 %93, label %94, label %99, !dbg !1333

94:                                               ; preds = %89
  %95 = and i64 %91, 60, !dbg !1334
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %95, !dbg !1335
  %97 = load i8, i8* %96, align 1, !dbg !1335, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %92, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1251
  store i8 %97, i8* %87, align 1, !dbg !1336, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %98 = icmp eq i64 %58, 3, !dbg !1337
  br i1 %98, label %137, label %119, !dbg !1339

99:                                               ; preds = %89
  %100 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1340
  %101 = load i8, i8* %100, align 1, !dbg !1340, !tbaa !581
  %102 = lshr i8 %101, 6, !dbg !1341
  %103 = zext i8 %102 to i64, !dbg !1341
  %104 = and i64 %91, 60, !dbg !1334
  %105 = or i64 %104, %103, !dbg !1334
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %105, !dbg !1335
  %107 = load i8, i8* %106, align 1, !dbg !1335, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %92, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1251
  store i8 %107, i8* %87, align 1, !dbg !1336, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %108 = icmp eq i64 %58, 3, !dbg !1337
  br i1 %108, label %137, label %112, !dbg !1339

109:                                              ; preds = %73
  %110 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %92, metadata !1248, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1251
  store i8 61, i8* %110, align 1, !dbg !1336, !tbaa !581
  call void @llvm.dbg.value(metadata i64 %58, metadata !1250, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1251
  %111 = icmp eq i64 %58, 3, !dbg !1337
  br i1 %111, label %137, label %119, !dbg !1339

112:                                              ; preds = %99
  %113 = getelementptr inbounds i8, i8* %61, i64 2, !dbg !1342
  %114 = load i8, i8* %113, align 1, !dbg !1342, !tbaa !581
  %115 = and i8 %114, 63, !dbg !1343
  %116 = zext i8 %115 to i64
  %117 = getelementptr inbounds [64 x i8], [64 x i8]* @b64c, i64 0, i64 %116, !dbg !1344
  %118 = load i8, i8* %117, align 1, !dbg !1344, !tbaa !581
  br label %119, !dbg !1345

119:                                              ; preds = %94, %109, %112
  %120 = phi i1 [ false, %112 ], [ true, %109 ], [ true, %94 ]
  %121 = phi i64 [ %92, %112 ], [ 0, %109 ], [ 0, %94 ]
  %122 = phi i8 [ %118, %112 ], [ 61, %109 ], [ 61, %94 ], !dbg !1345
  %123 = getelementptr inbounds i8, i8* %59, i64 3, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %59, metadata !1249, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1251
  store i8 %122, i8* %123, align 1, !dbg !1347, !tbaa !581
  %124 = add nsw i64 %58, -4, !dbg !1348
  call void @llvm.dbg.value(metadata i64 %124, metadata !1250, metadata !DIExpression()), !dbg !1251
  %125 = icmp eq i64 %124, 0, !dbg !1348
  br i1 %125, label %137, label %126, !dbg !1350

126:                                              ; preds = %119
  %127 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1351
  call void @llvm.dbg.value(metadata i8* %127, metadata !1249, metadata !DIExpression()), !dbg !1251
  %128 = add nsw i64 %121, -1
  %129 = select i1 %120, i64 0, i64 %128, !dbg !1352
  call void @llvm.dbg.value(metadata i64 %129, metadata !1248, metadata !DIExpression()), !dbg !1251
  %130 = icmp eq i64 %129, 0, !dbg !1353
  %131 = select i1 %130, i64 0, i64 3, !dbg !1355
  %132 = getelementptr i8, i8* %61, i64 %131, !dbg !1355
  call void @llvm.dbg.value(metadata i64 %124, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %132, metadata !1247, metadata !DIExpression()), !dbg !1251
  br i1 %130, label %135, label %57, !dbg !1309, !llvm.loop !1356

133:                                              ; preds = %53
  call void @llvm.dbg.value(metadata i64 %3, metadata !1250, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata i8* %2, metadata !1249, metadata !DIExpression()), !dbg !1251
  %134 = icmp eq i64 %3, 0, !dbg !1358
  br i1 %134, label %137, label %135, !dbg !1360

135:                                              ; preds = %126, %133
  %136 = phi i8* [ %2, %133 ], [ %127, %126 ]
  store i8 0, i8* %136, align 1, !dbg !1361, !tbaa !581
  br label %137, !dbg !1362

137:                                              ; preds = %109, %78, %57, %73, %94, %119, %99, %13, %11, %135, %133
  ret void, !dbg !1363
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base64_encode_alloc(i8* nocapture noundef readonly %0, i64 noundef %1, i8** nocapture noundef writeonly %2) local_unnamed_addr #16 !dbg !1364 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1368, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %1, metadata !1369, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8** %2, metadata !1370, metadata !DIExpression()), !dbg !1373
  %4 = sdiv i64 %1, 3, !dbg !1374
  %5 = mul i64 %4, 3
  %6 = sub i64 %1, %5
  %7 = icmp ne i64 %6, 0, !dbg !1375
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %4, %8, !dbg !1376
  call void @llvm.dbg.value(metadata i64 %9, metadata !1371, metadata !DIExpression()), !dbg !1373
  %10 = icmp slt i64 %9, 0, !dbg !1377
  br i1 %10, label %11, label %14, !dbg !1377

11:                                               ; preds = %3
  %12 = add nsw i64 %9, -1, !dbg !1377
  %13 = icmp ult i64 %12, -2305843009213693953, !dbg !1377
  br i1 %13, label %19, label %16, !dbg !1377

14:                                               ; preds = %3
  %15 = icmp ugt i64 %9, 2305843009213693951, !dbg !1377
  br i1 %15, label %19, label %16, !dbg !1377

16:                                               ; preds = %14, %11
  call void @llvm.dbg.value(metadata i64 %9, metadata !1372, metadata !DIExpression(DW_OP_constu, 2, DW_OP_shl, DW_OP_stack_value)), !dbg !1373
  %17 = shl nsw i64 %9, 2, !dbg !1377
  call void @llvm.dbg.value(metadata i64 %17, metadata !1372, metadata !DIExpression()), !dbg !1373
  %18 = icmp slt i64 %1, 0
  br i1 %18, label %19, label %20, !dbg !1379

19:                                               ; preds = %11, %14, %16
  store i8* null, i8** %2, align 8, !dbg !1380, !tbaa !476
  br label %25, !dbg !1382

20:                                               ; preds = %16
  %21 = or i64 %17, 1, !dbg !1383
  call void @llvm.dbg.value(metadata i64 %21, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %21, metadata !1384, metadata !DIExpression()) #37, !dbg !1390
  %22 = tail call noalias i8* @malloc(i64 noundef %21) #37, !dbg !1392
  store i8* %22, i8** %2, align 8, !dbg !1393, !tbaa !476
  %23 = icmp eq i8* %22, null, !dbg !1394
  br i1 %23, label %25, label %24, !dbg !1396

24:                                               ; preds = %20
  tail call void @base64_encode(i8* noundef %0, i64 noundef %1, i8* noundef nonnull %22, i64 noundef %21), !dbg !1397
  br label %25, !dbg !1398

25:                                               ; preds = %20, %24, %19
  %26 = phi i64 [ 0, %19 ], [ %17, %24 ], [ %21, %20 ], !dbg !1373
  ret i64 %26, !dbg !1399
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @base64_decode_ctx(%struct.base64_decode_context* noundef %0, i8* noalias noundef %1, i64 noundef %2, i8* noalias noundef %3, i64* nocapture noundef %4) local_unnamed_addr #16 !dbg !1400 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1404, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %1, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %2, metadata !1406, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %3, metadata !1407, metadata !DIExpression()), !dbg !1420
  store i8* %3, i8** %6, align 8, !tbaa !476
  call void @llvm.dbg.value(metadata i64* %4, metadata !1408, metadata !DIExpression()), !dbg !1420
  %8 = icmp eq %struct.base64_decode_context* %0, null, !dbg !1421
  call void @llvm.dbg.value(metadata i1 %8, metadata !1409, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1420
  call void @llvm.dbg.value(metadata i8 0, metadata !1410, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 0, metadata !1411, metadata !DIExpression()), !dbg !1420
  br i1 %8, label %14, label %9, !dbg !1422

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0, !dbg !1423
  %11 = load i32, i32* %10, align 4, !dbg !1423, !tbaa !833
  call void @llvm.dbg.value(metadata i32 %11, metadata !1411, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %2, metadata !1406, metadata !DIExpression()), !dbg !1420
  %12 = icmp eq i64 %2, 0, !dbg !1426
  call void @llvm.dbg.value(metadata i1 %12, metadata !1410, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1420
  %13 = icmp ne i32 %11, 0, !dbg !1427
  br label %14, !dbg !1427

14:                                               ; preds = %9, %5
  %15 = phi i1 [ %13, %9 ], [ false, %5 ]
  %16 = phi i1 [ %12, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1410, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i32 undef, metadata !1411, metadata !DIExpression()), !dbg !1420
  %17 = bitcast i64* %7 to i8*, !dbg !1428
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #37, !dbg !1428
  %18 = load i64, i64* %4, align 8, !dbg !1429, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %18, metadata !1412, metadata !DIExpression()), !dbg !1420
  store i64 %18, i64* %7, align 8, !dbg !1430, !tbaa !923
  %19 = or i1 %15, %16
  %20 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 0
  %21 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 0
  br label %22, !dbg !1431

22:                                               ; preds = %111, %14
  %23 = phi i64 [ %18, %14 ], [ %114, %111 ], !dbg !1432
  %24 = phi i8* [ %1, %14 ], [ %112, %111 ]
  %25 = phi i64 [ %2, %14 ], [ %113, %111 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1412, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %23, metadata !1413, metadata !DIExpression()), !dbg !1433
  br i1 %19, label %35, label %26, !dbg !1434

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %23, metadata !1412, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %23, metadata !1413, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8* %24, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %25, metadata !1406, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8** %6, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  call void @llvm.dbg.value(metadata i64* %7, metadata !1412, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  %27 = call fastcc i1 @decode_4(i8* noundef %24, i64 noundef %25, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1436
  br i1 %27, label %28, label %35, !dbg !1440

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %32, %28 ], [ %25, %26 ]
  %30 = phi i8* [ %31, %28 ], [ %24, %26 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1406, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8* %30, metadata !1405, metadata !DIExpression()), !dbg !1420
  %31 = getelementptr inbounds i8, i8* %30, i64 4, !dbg !1441
  call void @llvm.dbg.value(metadata i8* %31, metadata !1405, metadata !DIExpression()), !dbg !1420
  %32 = add nsw i64 %29, -4, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %32, metadata !1406, metadata !DIExpression()), !dbg !1420
  %33 = load i64, i64* %7, align 8, !dbg !1443, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %33, metadata !1413, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i8** %6, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  call void @llvm.dbg.value(metadata i64* %7, metadata !1412, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  %34 = call fastcc i1 @decode_4(i8* noundef nonnull %31, i64 noundef %32, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1436
  br i1 %34, label %28, label %35, !dbg !1440, !llvm.loop !1444

35:                                               ; preds = %28, %26, %22
  %36 = phi i8* [ %24, %22 ], [ %24, %26 ], [ %31, %28 ]
  %37 = phi i64 [ %25, %22 ], [ %25, %26 ], [ %32, %28 ]
  %38 = phi i64 [ %23, %22 ], [ %23, %26 ], [ %33, %28 ], !dbg !1433
  call void @llvm.dbg.value(metadata i64 %38, metadata !1413, metadata !DIExpression()), !dbg !1433
  call void @llvm.dbg.value(metadata i64 %37, metadata !1406, metadata !DIExpression()), !dbg !1420
  %39 = icmp eq i64 %37, 0, !dbg !1447
  %40 = xor i1 %39, true, !dbg !1449
  %41 = or i1 %16, %40, !dbg !1449
  br i1 %41, label %42, label %115, !dbg !1449

42:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %37, metadata !1406, metadata !DIExpression()), !dbg !1420
  br i1 %39, label %50, label %43, !dbg !1450

43:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* %36, metadata !1405, metadata !DIExpression()), !dbg !1420
  %44 = load i8, i8* %36, align 1, !dbg !1451, !tbaa !581
  %45 = icmp ne i8 %44, 10, !dbg !1452
  %46 = or i1 %8, %45, !dbg !1453
  br i1 %46, label %50, label %47, !dbg !1453

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1454
  call void @llvm.dbg.value(metadata i8* %48, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %37, metadata !1406, metadata !DIExpression()), !dbg !1420
  %49 = add nsw i64 %37, -1, !dbg !1456
  call void @llvm.dbg.value(metadata i64 %49, metadata !1406, metadata !DIExpression()), !dbg !1420
  br label %111, !dbg !1457

50:                                               ; preds = %43, %42
  %51 = load i64, i64* %7, align 8, !dbg !1458, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %51, metadata !1412, metadata !DIExpression()), !dbg !1420
  %52 = sub i64 %51, %38, !dbg !1459
  %53 = load i8*, i8** %6, align 8, !dbg !1460, !tbaa !476
  call void @llvm.dbg.value(metadata i8* %53, metadata !1407, metadata !DIExpression()), !dbg !1420
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !1460
  call void @llvm.dbg.value(metadata i8* %54, metadata !1407, metadata !DIExpression()), !dbg !1420
  store i8* %54, i8** %6, align 8, !dbg !1460, !tbaa !476
  call void @llvm.dbg.value(metadata i64 %38, metadata !1412, metadata !DIExpression()), !dbg !1420
  store i64 %38, i64* %7, align 8, !dbg !1461, !tbaa !923
  call void @llvm.dbg.value(metadata i8* %36, metadata !1405, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i64 %37, metadata !1406, metadata !DIExpression()), !dbg !1420
  %55 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !1462
  call void @llvm.dbg.value(metadata i8* %55, metadata !1415, metadata !DIExpression()), !dbg !1463
  br i1 %8, label %93, label %56, !dbg !1464

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1465, metadata !DIExpression()) #37, !dbg !1481
  call void @llvm.dbg.value(metadata i8** undef, metadata !1471, metadata !DIExpression()) #37, !dbg !1481
  call void @llvm.dbg.value(metadata i8* %55, metadata !1472, metadata !DIExpression()) #37, !dbg !1481
  call void @llvm.dbg.value(metadata i64* undef, metadata !1473, metadata !DIExpression()) #37, !dbg !1481
  %57 = load i32, i32* %20, align 4, !dbg !1484, !tbaa !833, !noalias !1486
  switch i32 %57, label %66 [
    i32 4, label %58
    i32 0, label %59
  ], !dbg !1489

58:                                               ; preds = %56
  store i32 0, i32* %20, align 4, !dbg !1490, !tbaa !833, !noalias !1486
  br label %59, !dbg !1491

59:                                               ; preds = %58, %56
  call void @llvm.dbg.value(metadata i8* %36, metadata !1474, metadata !DIExpression()) #37, !dbg !1492
  %60 = icmp sgt i64 %37, 3, !dbg !1493
  br i1 %60, label %61, label %66, !dbg !1495

61:                                               ; preds = %59
  %62 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(4) %36, i32 noundef 10, i64 noundef 4) #38, !dbg !1496
  %63 = icmp eq i8* %62, null, !dbg !1497
  br i1 %63, label %64, label %69, !dbg !1498

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !1499
  call void @llvm.dbg.value(metadata i8* %96, metadata !1419, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %95, metadata !1406, metadata !DIExpression()), !dbg !1420
  br label %102, !dbg !1501

66:                                               ; preds = %56, %59
  %67 = phi i32 [ 0, %59 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  %68 = icmp sgt i64 %37, 0, !dbg !1504
  br i1 %68, label %69, label %89, !dbg !1505

69:                                               ; preds = %61, %66
  %70 = phi i32 [ 0, %61 ], [ %67, %66 ]
  br label %71, !dbg !1506

71:                                               ; preds = %69, %79
  %72 = phi i32 [ %70, %69 ], [ %83, %79 ]
  %73 = phi i8* [ %36, %69 ], [ %76, %79 ]
  br label %74, !dbg !1506

74:                                               ; preds = %71, %87
  %75 = phi i8* [ %76, %87 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i8* %75, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1507
  call void @llvm.dbg.value(metadata i8* %76, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  %77 = load i8, i8* %75, align 1, !dbg !1508, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %77, metadata !1479, metadata !DIExpression()) #37, !dbg !1509
  %78 = icmp eq i8 %77, 10, !dbg !1510
  br i1 %78, label %87, label %79, !dbg !1506

79:                                               ; preds = %74
  %80 = add nsw i32 %72, 1, !dbg !1512
  store i32 %80, i32* %20, align 4, !dbg !1512, !tbaa !833, !noalias !1486
  %81 = sext i32 %72 to i64, !dbg !1514
  %82 = getelementptr inbounds %struct.base64_decode_context, %struct.base64_decode_context* %0, i64 0, i32 1, i64 %81, !dbg !1514
  store i8 %77, i8* %82, align 1, !dbg !1515, !tbaa !581, !noalias !1486
  %83 = load i32, i32* %20, align 4, !dbg !1516, !tbaa !833, !noalias !1486
  %84 = icmp ne i32 %83, 4, !dbg !1518
  %85 = icmp ult i8* %76, %55
  %86 = select i1 %84, i1 %85, i1 false, !dbg !1519
  call void @llvm.dbg.value(metadata i8* %76, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  br i1 %86, label %71, label %89, !dbg !1519

87:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %76, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  %88 = icmp ult i8* %76, %55, !dbg !1504
  br i1 %88, label %74, label %89, !dbg !1505

89:                                               ; preds = %87, %79, %66
  %90 = phi i32 [ %67, %66 ], [ %72, %87 ], [ %83, %79 ], !dbg !1520
  %91 = phi i8* [ %36, %66 ], [ %76, %79 ], [ %76, %87 ], !dbg !1503
  call void @llvm.dbg.value(metadata i8* %91, metadata !1477, metadata !DIExpression()) #37, !dbg !1503
  %92 = sext i32 %90 to i64, !dbg !1521
  br label %93

93:                                               ; preds = %89, %50
  %94 = phi i8* [ %36, %50 ], [ %91, %89 ]
  %95 = phi i64 [ %37, %50 ], [ %92, %89 ]
  %96 = phi i8* [ %36, %50 ], [ %21, %89 ], !dbg !1522
  call void @llvm.dbg.value(metadata i8* %96, metadata !1419, metadata !DIExpression()), !dbg !1463
  call void @llvm.dbg.value(metadata i64 %95, metadata !1406, metadata !DIExpression()), !dbg !1420
  %97 = icmp eq i64 %95, 0, !dbg !1523
  br i1 %97, label %115, label %98, !dbg !1524

98:                                               ; preds = %93
  %99 = icmp sgt i64 %95, 3, !dbg !1525
  %100 = or i1 %16, %99, !dbg !1501
  %101 = or i1 %8, %100, !dbg !1501
  br i1 %101, label %102, label %115, !dbg !1501

102:                                              ; preds = %64, %98
  %103 = phi i8* [ %65, %64 ], [ %94, %98 ]
  %104 = phi i64 [ 4, %64 ], [ %95, %98 ]
  %105 = phi i8* [ %36, %64 ], [ %96, %98 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !1406, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.value(metadata i8** %6, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  call void @llvm.dbg.value(metadata i64* %7, metadata !1412, metadata !DIExpression(DW_OP_deref)), !dbg !1420
  %106 = call fastcc i1 @decode_4(i8* noundef %105, i64 noundef %104, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1526
  br i1 %106, label %107, label %115, !dbg !1528

107:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8* %94, metadata !1405, metadata !DIExpression()), !dbg !1420
  %108 = ptrtoint i8* %55 to i64, !dbg !1529
  %109 = ptrtoint i8* %103 to i64, !dbg !1529
  %110 = sub i64 %108, %109, !dbg !1529
  call void @llvm.dbg.value(metadata i64 %110, metadata !1406, metadata !DIExpression()), !dbg !1420
  br label %111

111:                                              ; preds = %47, %107
  %112 = phi i8* [ %103, %107 ], [ %48, %47 ]
  %113 = phi i64 [ %110, %107 ], [ %49, %47 ]
  %114 = load i64, i64* %7, align 8, !dbg !1432, !tbaa !923
  br label %22

115:                                              ; preds = %93, %98, %102, %35
  %116 = phi i64 [ %37, %35 ], [ 0, %93 ], [ 0, %98 ], [ 1, %102 ]
  %117 = load i64, i64* %7, align 8, !dbg !1530, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %117, metadata !1412, metadata !DIExpression()), !dbg !1420
  %118 = load i64, i64* %4, align 8, !dbg !1531, !tbaa !923
  %119 = sub nsw i64 %118, %117, !dbg !1531
  store i64 %119, i64* %4, align 8, !dbg !1531, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %113, metadata !1406, metadata !DIExpression()), !dbg !1420
  %120 = icmp eq i64 %116, 0, !dbg !1532
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #37, !dbg !1533
  ret i1 %120, !dbg !1534
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc i1 @decode_4(i8* noalias nocapture noundef readonly %0, i64 noundef %1, i8** nocapture noundef %2, i64* nocapture noundef %3) unnamed_addr #18 !dbg !1535 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1539, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %1, metadata !1540, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8** %2, metadata !1541, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64* %3, metadata !1542, metadata !DIExpression()), !dbg !1544
  %5 = icmp slt i64 %1, 2, !dbg !1545
  br i1 %5, label %92, label %6, !dbg !1547

6:                                                ; preds = %4
  %7 = load i8, i8* %0, align 1, !dbg !1548, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %7, metadata !1221, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.value(metadata i8 %7, metadata !1211, metadata !DIExpression()), !dbg !1552
  %8 = zext i8 %7 to i64, !dbg !1554
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %8, !dbg !1555
  %10 = load i8, i8* %9, align 1, !dbg !1555, !tbaa !581
  %11 = icmp sgt i8 %10, -1, !dbg !1556
  br i1 %11, label %12, label %92, !dbg !1557

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1558
  %14 = load i8, i8* %13, align 1, !dbg !1558, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %14, metadata !1221, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i8 %14, metadata !1211, metadata !DIExpression()), !dbg !1561
  %15 = zext i8 %14 to i64, !dbg !1563
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %15, !dbg !1564
  %17 = load i8, i8* %16, align 1, !dbg !1564, !tbaa !581
  %18 = icmp sgt i8 %17, -1, !dbg !1565
  br i1 %18, label %19, label %92, !dbg !1566

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8, !dbg !1567, !tbaa !476
  call void @llvm.dbg.value(metadata i8* %20, metadata !1543, metadata !DIExpression()), !dbg !1544
  %21 = load i64, i64* %3, align 8, !dbg !1568, !tbaa !923
  %22 = icmp eq i64 %21, 0, !dbg !1568
  br i1 %22, label %30, label %23, !dbg !1570

23:                                               ; preds = %19
  %24 = shl i8 %10, 2, !dbg !1571
  %25 = lshr i8 %17, 4, !dbg !1573
  %26 = or i8 %25, %24, !dbg !1574
  %27 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %27, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i8 %26, i8* %20, align 1, !dbg !1576, !tbaa !581
  %28 = load i64, i64* %3, align 8, !dbg !1577, !tbaa !923
  %29 = add nsw i64 %28, -1, !dbg !1577
  store i64 %29, i64* %3, align 8, !dbg !1577, !tbaa !923
  br label %30, !dbg !1578

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi i8* [ %27, %23 ], [ %20, %19 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %32, metadata !1543, metadata !DIExpression()), !dbg !1544
  %33 = icmp eq i64 %1, 2, !dbg !1579
  br i1 %33, label %89, label %34, !dbg !1581

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1582
  %36 = load i8, i8* %35, align 1, !dbg !1582, !tbaa !581
  %37 = icmp eq i8 %36, 61, !dbg !1584
  br i1 %37, label %38, label %47, !dbg !1585

38:                                               ; preds = %34
  %39 = icmp eq i64 %1, 4, !dbg !1586
  br i1 %39, label %40, label %89, !dbg !1589

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1590
  %42 = load i8, i8* %41, align 1, !dbg !1590, !tbaa !581
  %43 = icmp eq i8 %42, 61, !dbg !1592
  %44 = and i8 %17, 15
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false, !dbg !1593
  br i1 %46, label %87, label %89, !dbg !1593

47:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i8 %36, metadata !1221, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8 %36, metadata !1211, metadata !DIExpression()), !dbg !1598
  %48 = zext i8 %36 to i64, !dbg !1600
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %48, !dbg !1601
  %50 = load i8, i8* %49, align 1, !dbg !1601, !tbaa !581
  %51 = icmp sgt i8 %50, -1, !dbg !1602
  br i1 %51, label %52, label %89, !dbg !1603

52:                                               ; preds = %47
  %53 = icmp eq i64 %31, 0, !dbg !1604
  br i1 %53, label %61, label %54, !dbg !1606

54:                                               ; preds = %52
  %55 = shl i8 %17, 4, !dbg !1607
  %56 = lshr i8 %50, 2, !dbg !1609
  %57 = or i8 %56, %55, !dbg !1610
  %58 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %58, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i8 %57, i8* %32, align 1, !dbg !1612, !tbaa !581
  %59 = load i64, i64* %3, align 8, !dbg !1613, !tbaa !923
  %60 = add nsw i64 %59, -1, !dbg !1613
  store i64 %60, i64* %3, align 8, !dbg !1613, !tbaa !923
  br label %61, !dbg !1614

61:                                               ; preds = %54, %52
  %62 = phi i64 [ %60, %54 ], [ 0, %52 ]
  %63 = phi i8* [ %58, %54 ], [ %32, %52 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %63, metadata !1543, metadata !DIExpression()), !dbg !1544
  %64 = icmp eq i64 %1, 3, !dbg !1615
  br i1 %64, label %89, label %65, !dbg !1617

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1618
  %67 = load i8, i8* %66, align 1, !dbg !1618, !tbaa !581
  %68 = icmp eq i8 %67, 61, !dbg !1620
  br i1 %68, label %69, label %74, !dbg !1621

69:                                               ; preds = %65
  %70 = icmp eq i64 %1, 4, !dbg !1622
  %71 = and i8 %50, 3
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %70, i1 %72, i1 false, !dbg !1625
  br i1 %73, label %87, label %89, !dbg !1625

74:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i8 %67, metadata !1221, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8 %67, metadata !1211, metadata !DIExpression()), !dbg !1630
  %75 = zext i8 %67 to i64, !dbg !1632
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* @base64_to_int, i64 0, i64 %75, !dbg !1633
  %77 = load i8, i8* %76, align 1, !dbg !1633, !tbaa !581
  %78 = icmp sgt i8 %77, -1, !dbg !1634
  br i1 %78, label %79, label %89, !dbg !1635

79:                                               ; preds = %74
  %80 = icmp eq i64 %62, 0, !dbg !1636
  br i1 %80, label %87, label %81, !dbg !1638

81:                                               ; preds = %79
  %82 = shl i8 %50, 6, !dbg !1639
  %83 = or i8 %77, %82, !dbg !1641
  %84 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1642
  call void @llvm.dbg.value(metadata i8* %84, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i8 %83, i8* %63, align 1, !dbg !1643, !tbaa !581
  %85 = load i64, i64* %3, align 8, !dbg !1644, !tbaa !923
  %86 = add nsw i64 %85, -1, !dbg !1644
  store i64 %86, i64* %3, align 8, !dbg !1644, !tbaa !923
  br label %87, !dbg !1645

87:                                               ; preds = %69, %40, %81, %79
  %88 = phi i8* [ %84, %81 ], [ %63, %79 ], [ %32, %40 ], [ %63, %69 ], !dbg !1544
  call void @llvm.dbg.value(metadata i8* %88, metadata !1543, metadata !DIExpression()), !dbg !1544
  br label %89, !dbg !1646

89:                                               ; preds = %74, %69, %61, %47, %40, %38, %30, %87
  %90 = phi i8* [ %88, %87 ], [ %32, %30 ], [ %32, %38 ], [ %32, %40 ], [ %32, %47 ], [ %63, %61 ], [ %63, %69 ], [ %63, %74 ]
  %91 = phi i1 [ true, %87 ], [ false, %30 ], [ false, %38 ], [ false, %40 ], [ false, %47 ], [ false, %61 ], [ false, %69 ], [ false, %74 ]
  store i8* %90, i8** %2, align 8, !dbg !1544, !tbaa !476
  br label %92, !dbg !1647

92:                                               ; preds = %89, %6, %12, %4
  %93 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %91, %89 ], !dbg !1544
  ret i1 %93, !dbg !1647
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i1 @base64_decode_alloc_ctx(%struct.base64_decode_context* noundef %0, i8* noundef %1, i64 noundef %2, i8** nocapture noundef %3, i64* noundef writeonly %4) local_unnamed_addr #19 !dbg !1648 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base64_decode_context* %0, metadata !1652, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8* %1, metadata !1653, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64 %2, metadata !1654, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8** %3, metadata !1655, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i64* %4, metadata !1656, metadata !DIExpression()), !dbg !1658
  %7 = bitcast i64* %6 to i8*, !dbg !1659
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #37, !dbg !1659
  %8 = ashr i64 %2, 2, !dbg !1660
  %9 = mul nsw i64 %8, 3, !dbg !1661
  %10 = add nsw i64 %9, 3, !dbg !1661
  call void @llvm.dbg.value(metadata i64 %10, metadata !1657, metadata !DIExpression()), !dbg !1658
  store i64 %10, i64* %6, align 8, !dbg !1662, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %10, metadata !1384, metadata !DIExpression()) #37, !dbg !1663
  %11 = tail call noalias i8* @malloc(i64 noundef %10) #37, !dbg !1665
  store i8* %11, i8** %3, align 8, !dbg !1666, !tbaa !476
  %12 = icmp eq i8* %11, null, !dbg !1667
  br i1 %12, label %21, label %13, !dbg !1669

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1657, metadata !DIExpression(DW_OP_deref)), !dbg !1658
  %14 = call i1 @base64_decode_ctx(%struct.base64_decode_context* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef nonnull %11, i64* noundef nonnull %6), !dbg !1670
  br i1 %14, label %17, label %15, !dbg !1672

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1673, !tbaa !476
  tail call void @free(i8* noundef %16) #37, !dbg !1675
  store i8* null, i8** %3, align 8, !dbg !1676, !tbaa !476
  br label %21, !dbg !1677

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1678
  br i1 %18, label %21, label %19, !dbg !1680

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1681, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %20, metadata !1657, metadata !DIExpression()), !dbg !1658
  store i64 %20, i64* %4, align 8, !dbg !1682, !tbaa !923
  br label %21, !dbg !1683

21:                                               ; preds = %17, %19, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %19 ], [ true, %17 ], !dbg !1658
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #37, !dbg !1684
  ret i1 %22, !dbg !1684
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #21 !dbg !1685 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1687, metadata !DIExpression()), !dbg !1688
  store i8* %0, i8** @file_name, align 8, !dbg !1689, !tbaa !476
  ret void, !dbg !1690
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #21 !dbg !1691 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1695, metadata !DIExpression()), !dbg !1696
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1697, !tbaa !1698
  ret void, !dbg !1700
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #19 !dbg !1701 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1706, !tbaa !476
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #37, !dbg !1707
  %3 = icmp eq i32 %2, 0, !dbg !1708
  br i1 %3, label %22, label %4, !dbg !1709

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1710, !tbaa !1698, !range !1711
  %6 = icmp eq i8 %5, 0, !dbg !1710
  br i1 %6, label %11, label %7, !dbg !1712

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #40, !dbg !1713
  %9 = load i32, i32* %8, align 4, !dbg !1713, !tbaa !572
  %10 = icmp eq i32 %9, 32, !dbg !1714
  br i1 %10, label %22, label %11, !dbg !1715

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.67, i64 0, i64 0), i32 noundef 5) #37, !dbg !1716
  call void @llvm.dbg.value(metadata i8* %12, metadata !1703, metadata !DIExpression()), !dbg !1717
  %13 = load i8*, i8** @file_name, align 8, !dbg !1718, !tbaa !476
  %14 = icmp eq i8* %13, null, !dbg !1718
  %15 = tail call i32* @__errno_location() #40, !dbg !1720
  %16 = load i32, i32* %15, align 4, !dbg !1720, !tbaa !572
  br i1 %14, label %19, label %17, !dbg !1721

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #37, !dbg !1722
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.68, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #37, !dbg !1722
  br label %20, !dbg !1722

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.69, i64 0, i64 0), i8* noundef %12) #37, !dbg !1723
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1724, !tbaa !572
  tail call void @_exit(i32 noundef %21) #39, !dbg !1725
  unreachable, !dbg !1725

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1726, !tbaa !476
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #37, !dbg !1728
  %25 = icmp eq i32 %24, 0, !dbg !1729
  br i1 %25, label %28, label %26, !dbg !1730

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1731, !tbaa !572
  tail call void @_exit(i32 noundef %27) #39, !dbg !1732
  unreachable, !dbg !1732

28:                                               ; preds = %22
  ret void, !dbg !1733
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #22

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #23 !dbg !1734 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1738, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i32 %1, metadata !1739, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* %2, metadata !1740, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1741, metadata !DIExpression()), !dbg !1743
  tail call fastcc void @flush_stdout(), !dbg !1744
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1745, !tbaa !476
  %7 = icmp eq void ()* %6, null, !dbg !1745
  br i1 %7, label %9, label %8, !dbg !1747

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1748
  br label %13, !dbg !1748

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1749, !tbaa !476
  %11 = tail call i8* @getprogname() #38, !dbg !1749
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i64 0, i64 0), i8* noundef %11) #37, !dbg !1749
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1751
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #37, !dbg !1751
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1751
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1751, !tbaa.struct !1752
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1751
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #37, !dbg !1751
  ret void, !dbg !1753
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #19 !dbg !1754 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1756, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i32 1, metadata !1758, metadata !DIExpression()) #37, !dbg !1761
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1764
  %2 = icmp slt i32 %1, 0, !dbg !1765
  br i1 %2, label %6, label %3, !dbg !1766

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1767, !tbaa !476
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #37, !dbg !1767
  br label %6, !dbg !1767

6:                                                ; preds = %3, %0
  ret void, !dbg !1768
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #19 !dbg !1769 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1771, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i32 %1, metadata !1772, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8* %2, metadata !1773, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1774, metadata !DIExpression()), !dbg !1776
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1777, !tbaa !476
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1778
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1779, metadata !DIExpression()) #37, !dbg !1822
  call void @llvm.dbg.value(metadata i8* %2, metadata !1820, metadata !DIExpression()) #37, !dbg !1822
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1824
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1824, !noalias !1825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1824
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #37, !dbg !1824
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1824, !noalias !1825
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1829, !tbaa !572
  %12 = add i32 %11, 1, !dbg !1829
  store i32 %12, i32* @error_message_count, align 4, !dbg !1829, !tbaa !572
  %13 = icmp eq i32 %1, 0, !dbg !1830
  br i1 %13, label %24, label %14, !dbg !1832

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1833, metadata !DIExpression()) #37, !dbg !1841
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1843
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #37, !dbg !1843
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1837, metadata !DIExpression()) #37, !dbg !1844
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #37, !dbg !1845
  call void @llvm.dbg.value(metadata i8* %16, metadata !1836, metadata !DIExpression()) #37, !dbg !1841
  %17 = icmp eq i8* %16, null, !dbg !1846
  br i1 %17, label %18, label %20, !dbg !1848

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.71, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.72, i64 0, i64 0), i32 noundef 5) #37, !dbg !1849
  call void @llvm.dbg.value(metadata i8* %19, metadata !1836, metadata !DIExpression()) #37, !dbg !1841
  br label %20, !dbg !1850

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1841
  call void @llvm.dbg.value(metadata i8* %21, metadata !1836, metadata !DIExpression()) #37, !dbg !1841
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1851, !tbaa !476
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.73, i64 0, i64 0), i8* noundef %21) #37, !dbg !1851
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #37, !dbg !1852
  br label %24, !dbg !1853

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1854, !tbaa !476
  call void @llvm.dbg.value(metadata i32 10, metadata !1855, metadata !DIExpression()) #37, !dbg !1861
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1860, metadata !DIExpression()) #37, !dbg !1861
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1863
  %27 = load i8*, i8** %26, align 8, !dbg !1863, !tbaa !1116
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1863
  %29 = load i8*, i8** %28, align 8, !dbg !1863, !tbaa !1117
  %30 = icmp ult i8* %27, %29, !dbg !1863
  br i1 %30, label %33, label %31, !dbg !1863, !prof !1118

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #37, !dbg !1863
  br label %35, !dbg !1863

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1863
  store i8* %34, i8** %26, align 8, !dbg !1863, !tbaa !1116
  store i8 10, i8* %27, align 1, !dbg !1863, !tbaa !581
  br label %35, !dbg !1863

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1864, !tbaa !476
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #37, !dbg !1864
  %38 = icmp eq i32 %0, 0, !dbg !1865
  br i1 %38, label %40, label %39, !dbg !1867

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #39, !dbg !1868
  unreachable, !dbg !1868

40:                                               ; preds = %35
  ret void, !dbg !1869
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1870 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1874 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #19 !dbg !1878 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1882, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i32 %1, metadata !1883, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8* %2, metadata !1884, metadata !DIExpression()), !dbg !1886
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1887
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #37, !dbg !1887
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1885, metadata !DIExpression()), !dbg !1888
  call void @llvm.va_start(i8* nonnull %6), !dbg !1889
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1890
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37, !dbg !1890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1890, !tbaa.struct !1752
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #43, !dbg !1890
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37, !dbg !1890
  call void @llvm.va_end(i8* nonnull %6), !dbg !1891
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #37, !dbg !1892
  ret void, !dbg !1892
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #24

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #24

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #23 !dbg !199 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !217, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %1, metadata !218, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %2, metadata !219, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i32 %3, metadata !220, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata i8* %4, metadata !221, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !222, metadata !DIExpression()), !dbg !1894
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1895, !tbaa !572
  %9 = icmp eq i32 %8, 0, !dbg !1895
  br i1 %9, label %24, label %10, !dbg !1897

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !1898, !tbaa !572
  %12 = icmp eq i32 %11, %3, !dbg !1901
  br i1 %12, label %13, label %23, !dbg !1902

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !1903, !tbaa !476
  %15 = icmp eq i8* %14, %2, !dbg !1904
  br i1 %15, label %39, label %16, !dbg !1905

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !1906
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !1907
  br i1 %19, label %20, label %23, !dbg !1907

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #38, !dbg !1908
  %22 = icmp eq i32 %21, 0, !dbg !1909
  br i1 %22, label %39, label %23, !dbg !1910

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !1911, !tbaa !476
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !1912, !tbaa !572
  br label %24, !dbg !1913

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !1914
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1915, !tbaa !476
  %26 = icmp eq void ()* %25, null, !dbg !1915
  br i1 %26, label %28, label %27, !dbg !1917

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !1918
  br label %32, !dbg !1918

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1919, !tbaa !476
  %30 = tail call i8* @getprogname() #38, !dbg !1919
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.76, i64 0, i64 0), i8* noundef %30) #37, !dbg !1919
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1921, !tbaa !476
  %34 = icmp eq i8* %2, null, !dbg !1921
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.77, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.78, i64 0, i64 0), !dbg !1921
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #37, !dbg !1921
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #37, !dbg !1922
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1922
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !1922, !tbaa.struct !1752
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !1922
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #37, !dbg !1922
  br label %39, !dbg !1923

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !1923
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #19 !dbg !1924 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1928, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i32 %1, metadata !1929, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* %2, metadata !1930, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i32 %3, metadata !1931, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i8* %4, metadata !1932, metadata !DIExpression()), !dbg !1934
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1935
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37, !dbg !1935
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !1933, metadata !DIExpression()), !dbg !1936
  call void @llvm.va_start(i8* nonnull %8), !dbg !1937
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !1938
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1938
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1938, !tbaa.struct !1752
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #43, !dbg !1938
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1938
  call void @llvm.va_end(i8* nonnull %8), !dbg !1939
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37, !dbg !1940
  ret void, !dbg !1940
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #19 !dbg !1941 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %1, metadata !1948, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %2, metadata !1949, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i32 %3, metadata !1950, metadata !DIExpression()), !dbg !1951
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !1952
  ret void, !dbg !1953
}

; Function Attrs: nounwind
declare !dbg !1954 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #19 !dbg !1957 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata i32 %1, metadata !1996, metadata !DIExpression()), !dbg !1997
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !1998
  br i1 %3, label %7, label %4, !dbg !2000

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2001
  call void @llvm.dbg.value(metadata i32 %5, metadata !1947, metadata !DIExpression()) #37, !dbg !2002
  call void @llvm.dbg.value(metadata i64 0, metadata !1948, metadata !DIExpression()) #37, !dbg !2002
  call void @llvm.dbg.value(metadata i64 0, metadata !1949, metadata !DIExpression()) #37, !dbg !2002
  call void @llvm.dbg.value(metadata i32 %1, metadata !1950, metadata !DIExpression()) #37, !dbg !2002
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2004
  br label %7, !dbg !2005

7:                                                ; preds = %4, %2
  ret void, !dbg !2006
}

; Function Attrs: nofree nounwind
declare !dbg !2007 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #19 !dbg !2010 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2048, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2049, metadata !DIExpression()), !dbg !2052
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %2, metadata !2050, metadata !DIExpression()), !dbg !2052
  %3 = icmp slt i32 %2, 0, !dbg !2054
  br i1 %3, label %4, label %6, !dbg !2056

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2057
  br label %24, !dbg !2058

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2059
  %8 = icmp eq i32 %7, 0, !dbg !2059
  br i1 %8, label %13, label %9, !dbg !2061

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2062
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2063
  %12 = icmp eq i64 %11, -1, !dbg !2064
  br i1 %12, label %16, label %13, !dbg !2065

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2066
  %15 = icmp eq i32 %14, 0, !dbg !2066
  br i1 %15, label %16, label %18, !dbg !2067

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2049, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2052
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %21, metadata !2051, metadata !DIExpression()), !dbg !2052
  br label %24, !dbg !2069

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #40, !dbg !2070
  %20 = load i32, i32* %19, align 4, !dbg !2070, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %20, metadata !2049, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.value(metadata i32 0, metadata !2051, metadata !DIExpression()), !dbg !2052
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2068
  call void @llvm.dbg.value(metadata i32 %21, metadata !2051, metadata !DIExpression()), !dbg !2052
  %22 = icmp eq i32 %20, 0, !dbg !2071
  br i1 %22, label %24, label %23, !dbg !2069

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2073, !tbaa !572
  call void @llvm.dbg.value(metadata i32 -1, metadata !2051, metadata !DIExpression()), !dbg !2052
  br label %24, !dbg !2075

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2052
  ret i32 %25, !dbg !2076
}

; Function Attrs: nofree nounwind
declare !dbg !2077 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2078 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #19 !dbg !2082 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2120, metadata !DIExpression()), !dbg !2121
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2122
  br i1 %2, label %6, label %3, !dbg !2124

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2125
  %5 = icmp eq i32 %4, 0, !dbg !2125
  br i1 %5, label %6, label %8, !dbg !2126

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2127
  br label %17, !dbg !2128

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2129, metadata !DIExpression()) #37, !dbg !2134
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2136
  %10 = load i32, i32* %9, align 8, !dbg !2136, !tbaa !899
  %11 = and i32 %10, 256, !dbg !2138
  %12 = icmp eq i32 %11, 0, !dbg !2138
  br i1 %12, label %15, label %13, !dbg !2139

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2140
  br label %15, !dbg !2140

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2141
  br label %17, !dbg !2142

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2121
  ret i32 %18, !dbg !2143
}

; Function Attrs: nofree nounwind
declare !dbg !2144 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #19 !dbg !2145 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2183, metadata !DIExpression()), !dbg !2184
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2185
  ret i32 0, !dbg !2186
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #19 !dbg !2187 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2225, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i64 %1, metadata !2226, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i32 %2, metadata !2227, metadata !DIExpression()), !dbg !2231
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2232
  %5 = load i8*, i8** %4, align 8, !dbg !2232, !tbaa !2233
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2234
  %7 = load i8*, i8** %6, align 8, !dbg !2234, !tbaa !2235
  %8 = icmp eq i8* %5, %7, !dbg !2236
  br i1 %8, label %9, label %28, !dbg !2237

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2238
  %11 = load i8*, i8** %10, align 8, !dbg !2238, !tbaa !1116
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2239
  %13 = load i8*, i8** %12, align 8, !dbg !2239, !tbaa !2240
  %14 = icmp eq i8* %11, %13, !dbg !2241
  br i1 %14, label %15, label %28, !dbg !2242

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2243
  %17 = load i8*, i8** %16, align 8, !dbg !2243, !tbaa !2244
  %18 = icmp eq i8* %17, null, !dbg !2245
  br i1 %18, label %19, label %28, !dbg !2246

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2247
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2248
  call void @llvm.dbg.value(metadata i64 %21, metadata !2228, metadata !DIExpression()), !dbg !2249
  %22 = icmp eq i64 %21, -1, !dbg !2250
  br i1 %22, label %30, label %23, !dbg !2252

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2253
  %25 = load i32, i32* %24, align 8, !dbg !2254, !tbaa !899
  %26 = and i32 %25, -17, !dbg !2254
  store i32 %26, i32* %24, align 8, !dbg !2254, !tbaa !899
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2255
  store i64 %21, i64* %27, align 8, !dbg !2256, !tbaa !2257
  br label %30, !dbg !2258

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2259
  br label %30, !dbg !2260

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2231
  ret i32 %31, !dbg !2261
}

; Function Attrs: nofree nounwind
declare !dbg !2262 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #25 !dbg !2265 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2268, !tbaa !476
  ret i8* %1, !dbg !2269
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #26 !dbg !2270 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2272, metadata !DIExpression()), !dbg !2275
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #38, !dbg !2276
  call void @llvm.dbg.value(metadata i8* %2, metadata !2273, metadata !DIExpression()), !dbg !2275
  %3 = icmp eq i8* %2, null, !dbg !2277
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2277
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2277
  call void @llvm.dbg.value(metadata i8* %5, metadata !2274, metadata !DIExpression()), !dbg !2275
  %6 = ptrtoint i8* %5 to i64, !dbg !2278
  %7 = ptrtoint i8* %0 to i64, !dbg !2278
  %8 = sub i64 %6, %7, !dbg !2278
  %9 = icmp sgt i64 %8, 6, !dbg !2280
  br i1 %9, label %10, label %19, !dbg !2281

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2282
  call void @llvm.dbg.value(metadata i8* %11, metadata !2283, metadata !DIExpression()) #37, !dbg !2290
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0), metadata !2288, metadata !DIExpression()) #37, !dbg !2290
  call void @llvm.dbg.value(metadata i64 7, metadata !2289, metadata !DIExpression()) #37, !dbg !2290
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i64 0, i64 0), i64 7) #37, !dbg !2292
  %13 = icmp eq i32 %12, 0, !dbg !2293
  br i1 %13, label %14, label %19, !dbg !2294

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2272, metadata !DIExpression()), !dbg !2275
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.98, i64 0, i64 0), i64 noundef 3) #38, !dbg !2295
  %16 = icmp eq i32 %15, 0, !dbg !2298
  %17 = select i1 %16, i64 3, i64 0, !dbg !2299
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2299
  br label %19, !dbg !2299

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2275
  call void @llvm.dbg.value(metadata i8* %21, metadata !2274, metadata !DIExpression()), !dbg !2275
  call void @llvm.dbg.value(metadata i8* %20, metadata !2272, metadata !DIExpression()), !dbg !2275
  store i8* %20, i8** @program_name, align 8, !dbg !2300, !tbaa !476
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2301, !tbaa !476
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2302, !tbaa !476
  ret void, !dbg !2303
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #19 !dbg !240 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !247, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata i8* %1, metadata !248, metadata !DIExpression()), !dbg !2304
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #37, !dbg !2305
  call void @llvm.dbg.value(metadata i8* %5, metadata !249, metadata !DIExpression()), !dbg !2304
  %6 = icmp eq i8* %5, %0, !dbg !2306
  br i1 %6, label %7, label %17, !dbg !2308

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2309
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #37, !dbg !2309
  %10 = bitcast i64* %4 to i8*, !dbg !2310
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #37, !dbg !2310
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !255, metadata !DIExpression()), !dbg !2311
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2312, metadata !DIExpression()) #37, !dbg !2319
  call void @llvm.dbg.value(metadata i8* %10, metadata !2321, metadata !DIExpression()) #37, !dbg !2328
  call void @llvm.dbg.value(metadata i32 0, metadata !2326, metadata !DIExpression()) #37, !dbg !2328
  call void @llvm.dbg.value(metadata i64 8, metadata !2327, metadata !DIExpression()) #37, !dbg !2328
  store i64 0, i64* %4, align 8, !dbg !2330
  call void @llvm.dbg.value(metadata i32* %3, metadata !250, metadata !DIExpression(DW_OP_deref)), !dbg !2304
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #37, !dbg !2331
  %12 = icmp eq i64 %11, 2, !dbg !2333
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !250, metadata !DIExpression()), !dbg !2304
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2334
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2304
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #37, !dbg !2335
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #37, !dbg !2335
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2304
  ret i8* %18, !dbg !2335
}

; Function Attrs: nounwind
declare !dbg !2336 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #19 !dbg !2342 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2347, metadata !DIExpression()), !dbg !2350
  %2 = tail call i32* @__errno_location() #40, !dbg !2351
  %3 = load i32, i32* %2, align 4, !dbg !2351, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %3, metadata !2348, metadata !DIExpression()), !dbg !2350
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2352
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2352
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2352
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #44, !dbg !2353
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2353
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i32 %3, i32* %2, align 4, !dbg !2354, !tbaa !572
  ret %struct.quoting_options* %8, !dbg !2355
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #25 !dbg !2356 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2362, metadata !DIExpression()), !dbg !2363
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2364
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2364
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2365
  %5 = load i32, i32* %4, align 8, !dbg !2365, !tbaa !2366
  ret i32 %5, !dbg !2368
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #21 !dbg !2369 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2373, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.value(metadata i32 %1, metadata !2374, metadata !DIExpression()), !dbg !2375
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2376
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2376
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2377
  store i32 %1, i32* %5, align 8, !dbg !2378, !tbaa !2366
  ret void, !dbg !2379
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #18 !dbg !2380 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2384, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %1, metadata !2385, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 %2, metadata !2386, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i8 %1, metadata !2387, metadata !DIExpression()), !dbg !2392
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2393
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2393
  %6 = lshr i8 %1, 5, !dbg !2394
  %7 = zext i8 %6 to i64, !dbg !2394
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2395
  call void @llvm.dbg.value(metadata i32* %8, metadata !2388, metadata !DIExpression()), !dbg !2392
  %9 = and i8 %1, 31, !dbg !2396
  %10 = zext i8 %9 to i32, !dbg !2396
  call void @llvm.dbg.value(metadata i32 %10, metadata !2390, metadata !DIExpression()), !dbg !2392
  %11 = load i32, i32* %8, align 4, !dbg !2397, !tbaa !572
  %12 = lshr i32 %11, %10, !dbg !2398
  %13 = and i32 %12, 1, !dbg !2399
  call void @llvm.dbg.value(metadata i32 %13, metadata !2391, metadata !DIExpression()), !dbg !2392
  %14 = and i32 %2, 1, !dbg !2400
  %15 = xor i32 %13, %14, !dbg !2401
  %16 = shl i32 %15, %10, !dbg !2402
  %17 = xor i32 %16, %11, !dbg !2403
  store i32 %17, i32* %8, align 4, !dbg !2403, !tbaa !572
  ret i32 %13, !dbg !2404
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #18 !dbg !2405 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2409, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i32 %1, metadata !2410, metadata !DIExpression()), !dbg !2412
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2413
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2415
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2409, metadata !DIExpression()), !dbg !2412
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2416
  %6 = load i32, i32* %5, align 4, !dbg !2416, !tbaa !2417
  call void @llvm.dbg.value(metadata i32 %6, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i32 %1, i32* %5, align 4, !dbg !2418, !tbaa !2417
  ret i32 %6, !dbg !2419
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #19 !dbg !2420 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2424, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %1, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()), !dbg !2427
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2428
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2430
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2424, metadata !DIExpression()), !dbg !2427
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2431
  store i32 10, i32* %6, align 8, !dbg !2432, !tbaa !2366
  %7 = icmp ne i8* %1, null, !dbg !2433
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2435
  br i1 %9, label %11, label %10, !dbg !2435

10:                                               ; preds = %3
  tail call void @abort() #39, !dbg !2436
  unreachable, !dbg !2436

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2437
  store i8* %1, i8** %12, align 8, !dbg !2438, !tbaa !2439
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2440
  store i8* %2, i8** %13, align 8, !dbg !2441, !tbaa !2442
  ret void, !dbg !2443
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #19 !dbg !2444 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2448, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i64 %1, metadata !2449, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i8* %2, metadata !2450, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i64 %3, metadata !2451, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2452, metadata !DIExpression()), !dbg !2456
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2457
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2453, metadata !DIExpression()), !dbg !2456
  %8 = tail call i32* @__errno_location() #40, !dbg !2458
  %9 = load i32, i32* %8, align 4, !dbg !2458, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %9, metadata !2454, metadata !DIExpression()), !dbg !2456
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2459
  %11 = load i32, i32* %10, align 8, !dbg !2459, !tbaa !2366
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2460
  %13 = load i32, i32* %12, align 4, !dbg !2460, !tbaa !2417
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2461
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2462
  %16 = load i8*, i8** %15, align 8, !dbg !2462, !tbaa !2439
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2463
  %18 = load i8*, i8** %17, align 8, !dbg !2463, !tbaa !2442
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2464
  call void @llvm.dbg.value(metadata i64 %19, metadata !2455, metadata !DIExpression()), !dbg !2456
  store i32 %9, i32* %8, align 4, !dbg !2465, !tbaa !572
  ret i64 %19, !dbg !2466
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #19 !dbg !2467 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2473, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %1, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %2, metadata !2475, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %3, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %4, metadata !2477, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %5, metadata !2478, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32* %6, metadata !2479, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %7, metadata !2480, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %8, metadata !2481, metadata !DIExpression()), !dbg !2535
  %17 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2536
  %18 = icmp eq i64 %17, 1, !dbg !2537
  call void @llvm.dbg.value(metadata i1 %18, metadata !2482, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* null, metadata !2485, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2486, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %5, metadata !2488, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2490, metadata !DIExpression()), !dbg !2535
  %19 = and i32 %5, 2, !dbg !2538
  %20 = icmp ne i32 %19, 0, !dbg !2538
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
  br label %36, !dbg !2538

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2539
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2540
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2541
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2490, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %43, metadata !2486, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %42, metadata !2485, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %41, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %40, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %39, metadata !2481, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %38, metadata !2480, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %37, metadata !2477, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.label(metadata !2528), !dbg !2542
  call void @llvm.dbg.value(metadata i8 0, metadata !2491, metadata !DIExpression()), !dbg !2535
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
  ], !dbg !2543

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 5, metadata !2477, metadata !DIExpression()), !dbg !2535
  br label %111, !dbg !2544

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 5, metadata !2477, metadata !DIExpression()), !dbg !2535
  br i1 %45, label %111, label %51, !dbg !2544

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2545
  br i1 %52, label %111, label %53, !dbg !2549

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2545, !tbaa !581
  br label %111, !dbg !2545

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), metadata !315, metadata !DIExpression()) #37, !dbg !2550
  call void @llvm.dbg.value(metadata i32 %37, metadata !316, metadata !DIExpression()) #37, !dbg !2550
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), i32 noundef 5) #37, !dbg !2554
  call void @llvm.dbg.value(metadata i8* %55, metadata !317, metadata !DIExpression()) #37, !dbg !2550
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.111, i64 0, i64 0), !dbg !2555
  br i1 %56, label %57, label %66, !dbg !2557

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #37, !dbg !2558
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #37, !dbg !2559
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !319, metadata !DIExpression()) #37, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2561, metadata !DIExpression()) #37, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %23, metadata !2569, metadata !DIExpression()) #37, !dbg !2574
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #37, !dbg !2574
  call void @llvm.dbg.value(metadata i64 8, metadata !2573, metadata !DIExpression()) #37, !dbg !2574
  store i64 0, i64* %13, align 8, !dbg !2576
  call void @llvm.dbg.value(metadata i32* %12, metadata !318, metadata !DIExpression(DW_OP_deref)) #37, !dbg !2550
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #37, !dbg !2577
  %59 = icmp eq i64 %58, 3, !dbg !2579
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !318, metadata !DIExpression()) #37, !dbg !2550
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2580
  %63 = icmp eq i32 %37, 9, !dbg !2580
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !2580
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2580
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #37, !dbg !2581
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #37, !dbg !2581
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2550
  call void @llvm.dbg.value(metadata i8* %67, metadata !2480, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), metadata !315, metadata !DIExpression()) #37, !dbg !2582
  call void @llvm.dbg.value(metadata i32 %37, metadata !316, metadata !DIExpression()) #37, !dbg !2582
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.112, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), i32 noundef 5) #37, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %68, metadata !317, metadata !DIExpression()) #37, !dbg !2582
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !2585
  br i1 %69, label %70, label %79, !dbg !2586

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #37, !dbg !2587
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #37, !dbg !2588
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !319, metadata !DIExpression()) #37, !dbg !2589
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2561, metadata !DIExpression()) #37, !dbg !2590
  call void @llvm.dbg.value(metadata i8* %26, metadata !2569, metadata !DIExpression()) #37, !dbg !2592
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #37, !dbg !2592
  call void @llvm.dbg.value(metadata i64 8, metadata !2573, metadata !DIExpression()) #37, !dbg !2592
  store i64 0, i64* %11, align 8, !dbg !2594
  call void @llvm.dbg.value(metadata i32* %10, metadata !318, metadata !DIExpression(DW_OP_deref)) #37, !dbg !2582
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #37, !dbg !2595
  %72 = icmp eq i64 %71, 3, !dbg !2596
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !318, metadata !DIExpression()) #37, !dbg !2582
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2597
  %76 = icmp eq i32 %37, 9, !dbg !2597
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), !dbg !2597
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2597
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #37, !dbg !2598
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #37, !dbg !2598
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2481, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %80, metadata !2480, metadata !DIExpression()), !dbg !2535
  br i1 %45, label %97, label %82, !dbg !2599

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2492, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 0, metadata !2483, metadata !DIExpression()), !dbg !2535
  %83 = load i8, i8* %80, align 1, !dbg !2601, !tbaa !581
  %84 = icmp eq i8 %83, 0, !dbg !2603
  br i1 %84, label %97, label %85, !dbg !2603

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2492, metadata !DIExpression()), !dbg !2600
  call void @llvm.dbg.value(metadata i64 %88, metadata !2483, metadata !DIExpression()), !dbg !2535
  %89 = icmp ult i64 %88, %48, !dbg !2604
  br i1 %89, label %90, label %92, !dbg !2607

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2604
  store i8 %86, i8* %91, align 1, !dbg !2604, !tbaa !581
  br label %92, !dbg !2604

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2607
  call void @llvm.dbg.value(metadata i64 %93, metadata !2483, metadata !DIExpression()), !dbg !2535
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %94, metadata !2492, metadata !DIExpression()), !dbg !2600
  %95 = load i8, i8* %94, align 1, !dbg !2601, !tbaa !581
  %96 = icmp eq i8 %95, 0, !dbg !2603
  br i1 %96, label %97, label %85, !dbg !2603, !llvm.loop !2609

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2611
  call void @llvm.dbg.value(metadata i64 %98, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %81, metadata !2485, metadata !DIExpression()), !dbg !2535
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #38, !dbg !2612
  call void @llvm.dbg.value(metadata i64 %99, metadata !2486, metadata !DIExpression()), !dbg !2535
  br label %111, !dbg !2613

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2487, metadata !DIExpression()), !dbg !2535
  br label %102, !dbg !2614

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2535
  br i1 %45, label %102, label %105, !dbg !2615

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 2, metadata !2477, metadata !DIExpression()), !dbg !2535
  br label %111, !dbg !2616

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 2, metadata !2477, metadata !DIExpression()), !dbg !2535
  br i1 %45, label %111, label %105, !dbg !2616

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2617
  br i1 %107, label %111, label %108, !dbg !2621

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2617, !tbaa !581
  br label %111, !dbg !2617

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2488, metadata !DIExpression()), !dbg !2535
  br label %111, !dbg !2622

110:                                              ; preds = %36
  call void @abort() #39, !dbg !2623
  unreachable, !dbg !2623

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2611
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.113, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.114, i64 0, i64 0), %102 ], !dbg !2535
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2535
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2488, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2487, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %117, metadata !2486, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %116, metadata !2485, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %115, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %114, metadata !2481, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %113, metadata !2480, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i32 %112, metadata !2477, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 0, metadata !2497, metadata !DIExpression()), !dbg !2624
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
  br label %132, !dbg !2625

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2611
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2539
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2624
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %139, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2490, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %135, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %134, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %133, metadata !2476, metadata !DIExpression()), !dbg !2535
  %141 = icmp eq i64 %133, -1, !dbg !2626
  br i1 %141, label %142, label %146, !dbg !2627

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2628
  %144 = load i8, i8* %143, align 1, !dbg !2628, !tbaa !581
  %145 = icmp eq i8 %144, 0, !dbg !2629
  br i1 %145, label %596, label %148, !dbg !2630

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2631
  br i1 %147, label %596, label %148, !dbg !2630

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 0, metadata !2503, metadata !DIExpression()), !dbg !2632
  br i1 %123, label %149, label %163, !dbg !2633

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2635
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2636
  br i1 %151, label %152, label %154, !dbg !2636

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38, !dbg !2637
  call void @llvm.dbg.value(metadata i64 %153, metadata !2476, metadata !DIExpression()), !dbg !2535
  br label %154, !dbg !2638

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2638
  call void @llvm.dbg.value(metadata i64 %155, metadata !2476, metadata !DIExpression()), !dbg !2535
  %156 = icmp ugt i64 %150, %155, !dbg !2639
  br i1 %156, label %163, label %157, !dbg !2640

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2641
  call void @llvm.dbg.value(metadata i8* %158, metadata !2642, metadata !DIExpression()) #37, !dbg !2647
  call void @llvm.dbg.value(metadata i8* %116, metadata !2645, metadata !DIExpression()) #37, !dbg !2647
  call void @llvm.dbg.value(metadata i64 %117, metadata !2646, metadata !DIExpression()) #37, !dbg !2647
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #37, !dbg !2649
  %160 = icmp ne i32 %159, 0, !dbg !2650
  %161 = or i1 %160, %125, !dbg !2651
  %162 = xor i1 %160, true, !dbg !2651
  br i1 %161, label %163, label %647, !dbg !2651

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %164, metadata !2476, metadata !DIExpression()), !dbg !2535
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2652
  %167 = load i8, i8* %166, align 1, !dbg !2652, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %167, metadata !2504, metadata !DIExpression()), !dbg !2632
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
  ], !dbg !2653

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2654

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2655

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2502, metadata !DIExpression()), !dbg !2632
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2659
  br i1 %171, label %188, label %172, !dbg !2659

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2661
  br i1 %173, label %174, label %176, !dbg !2665

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2661
  store i8 39, i8* %175, align 1, !dbg !2661, !tbaa !581
  br label %176, !dbg !2661

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2665
  call void @llvm.dbg.value(metadata i64 %177, metadata !2483, metadata !DIExpression()), !dbg !2535
  %178 = icmp ult i64 %177, %140, !dbg !2666
  br i1 %178, label %179, label %181, !dbg !2669

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2666
  store i8 36, i8* %180, align 1, !dbg !2666, !tbaa !581
  br label %181, !dbg !2666

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2669
  call void @llvm.dbg.value(metadata i64 %182, metadata !2483, metadata !DIExpression()), !dbg !2535
  %183 = icmp ult i64 %182, %140, !dbg !2670
  br i1 %183, label %184, label %186, !dbg !2673

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2670
  store i8 39, i8* %185, align 1, !dbg !2670, !tbaa !581
  br label %186, !dbg !2670

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %187, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %188, !dbg !2674

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2535
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %189, metadata !2483, metadata !DIExpression()), !dbg !2535
  %191 = icmp ult i64 %189, %140, !dbg !2675
  br i1 %191, label %192, label %194, !dbg !2678

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2675
  store i8 92, i8* %193, align 1, !dbg !2675, !tbaa !581
  br label %194, !dbg !2675

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2678
  call void @llvm.dbg.value(metadata i64 %195, metadata !2483, metadata !DIExpression()), !dbg !2535
  br i1 %120, label %196, label %499, !dbg !2679

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2681
  %198 = icmp ult i64 %197, %164, !dbg !2682
  br i1 %198, label %199, label %456, !dbg !2683

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2684
  %201 = load i8, i8* %200, align 1, !dbg !2684, !tbaa !581
  %202 = add i8 %201, -48, !dbg !2685
  %203 = icmp ult i8 %202, 10, !dbg !2685
  br i1 %203, label %204, label %456, !dbg !2685

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2686
  br i1 %205, label %206, label %208, !dbg !2690

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2686
  store i8 48, i8* %207, align 1, !dbg !2686, !tbaa !581
  br label %208, !dbg !2686

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2690
  call void @llvm.dbg.value(metadata i64 %209, metadata !2483, metadata !DIExpression()), !dbg !2535
  %210 = icmp ult i64 %209, %140, !dbg !2691
  br i1 %210, label %211, label %213, !dbg !2694

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2691
  store i8 48, i8* %212, align 1, !dbg !2691, !tbaa !581
  br label %213, !dbg !2691

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2694
  call void @llvm.dbg.value(metadata i64 %214, metadata !2483, metadata !DIExpression()), !dbg !2535
  br label %456, !dbg !2695

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2696

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2697

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2698

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2700

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2702
  %221 = icmp ult i64 %220, %164, !dbg !2703
  br i1 %221, label %222, label %456, !dbg !2704

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2705
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2706
  %225 = load i8, i8* %224, align 1, !dbg !2706, !tbaa !581
  %226 = icmp eq i8 %225, 63, !dbg !2707
  br i1 %226, label %227, label %456, !dbg !2708

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2709
  %229 = load i8, i8* %228, align 1, !dbg !2709, !tbaa !581
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
  ], !dbg !2710

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2711

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %220, metadata !2497, metadata !DIExpression()), !dbg !2624
  %232 = icmp ult i64 %134, %140, !dbg !2713
  br i1 %232, label %233, label %235, !dbg !2716

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2713
  store i8 63, i8* %234, align 1, !dbg !2713, !tbaa !581
  br label %235, !dbg !2713

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2716
  call void @llvm.dbg.value(metadata i64 %236, metadata !2483, metadata !DIExpression()), !dbg !2535
  %237 = icmp ult i64 %236, %140, !dbg !2717
  br i1 %237, label %238, label %240, !dbg !2720

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2717
  store i8 34, i8* %239, align 1, !dbg !2717, !tbaa !581
  br label %240, !dbg !2717

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2720
  call void @llvm.dbg.value(metadata i64 %241, metadata !2483, metadata !DIExpression()), !dbg !2535
  %242 = icmp ult i64 %241, %140, !dbg !2721
  br i1 %242, label %243, label %245, !dbg !2724

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2721
  store i8 34, i8* %244, align 1, !dbg !2721, !tbaa !581
  br label %245, !dbg !2721

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2724
  call void @llvm.dbg.value(metadata i64 %246, metadata !2483, metadata !DIExpression()), !dbg !2535
  %247 = icmp ult i64 %246, %140, !dbg !2725
  br i1 %247, label %248, label %250, !dbg !2728

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2725
  store i8 63, i8* %249, align 1, !dbg !2725, !tbaa !581
  br label %250, !dbg !2725

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2728
  call void @llvm.dbg.value(metadata i64 %251, metadata !2483, metadata !DIExpression()), !dbg !2535
  br label %456, !dbg !2729

252:                                              ; preds = %163
  br label %263, !dbg !2730

253:                                              ; preds = %163
  br label %263, !dbg !2731

254:                                              ; preds = %163
  br label %261, !dbg !2732

255:                                              ; preds = %163
  br label %261, !dbg !2733

256:                                              ; preds = %163
  br label %263, !dbg !2734

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2735

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2736

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2739

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2741

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2742
  call void @llvm.dbg.label(metadata !2529), !dbg !2743
  br i1 %128, label %263, label %638, !dbg !2744

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2742
  call void @llvm.dbg.label(metadata !2531), !dbg !2746
  br i1 %118, label %510, label %467, !dbg !2747

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2748

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2749, !tbaa !581
  %268 = icmp eq i8 %267, 0, !dbg !2751
  br i1 %268, label %269, label %456, !dbg !2752

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2753
  br i1 %270, label %271, label %456, !dbg !2755

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2503, metadata !DIExpression()), !dbg !2632
  br label %272, !dbg !2756

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2503, metadata !DIExpression()), !dbg !2632
  br i1 %126, label %274, label %456, !dbg !2757

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2759

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2503, metadata !DIExpression()), !dbg !2632
  br i1 %126, label %276, label %456, !dbg !2760

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2761

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2764
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2766
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2766
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2766
  call void @llvm.dbg.value(metadata i64 %282, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %281, metadata !2484, metadata !DIExpression()), !dbg !2535
  %283 = icmp ult i64 %134, %282, !dbg !2767
  br i1 %283, label %284, label %286, !dbg !2770

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2767
  store i8 39, i8* %285, align 1, !dbg !2767, !tbaa !581
  br label %286, !dbg !2767

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2770
  call void @llvm.dbg.value(metadata i64 %287, metadata !2483, metadata !DIExpression()), !dbg !2535
  %288 = icmp ult i64 %287, %282, !dbg !2771
  br i1 %288, label %289, label %291, !dbg !2774

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2771
  store i8 92, i8* %290, align 1, !dbg !2771, !tbaa !581
  br label %291, !dbg !2771

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2774
  call void @llvm.dbg.value(metadata i64 %292, metadata !2483, metadata !DIExpression()), !dbg !2535
  %293 = icmp ult i64 %292, %282, !dbg !2775
  br i1 %293, label %294, label %296, !dbg !2778

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2775
  store i8 39, i8* %295, align 1, !dbg !2775, !tbaa !581
  br label %296, !dbg !2775

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2778
  call void @llvm.dbg.value(metadata i64 %297, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %456, !dbg !2779

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2780

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2505, metadata !DIExpression()), !dbg !2781
  %300 = tail call i16** @__ctype_b_loc() #40, !dbg !2782
  %301 = load i16*, i16** %300, align 8, !dbg !2782, !tbaa !476
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2782
  %304 = load i16, i16* %303, align 2, !dbg !2782, !tbaa !606
  %305 = and i16 %304, 16384, !dbg !2782
  %306 = icmp ne i16 %305, 0, !dbg !2784
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %349, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %312, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i1 %350, metadata !2503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  br label %352, !dbg !2785

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2786
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2509, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2561, metadata !DIExpression()) #37, !dbg !2788
  call void @llvm.dbg.value(metadata i8* %32, metadata !2569, metadata !DIExpression()) #37, !dbg !2790
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #37, !dbg !2790
  call void @llvm.dbg.value(metadata i64 8, metadata !2573, metadata !DIExpression()) #37, !dbg !2790
  store i64 0, i64* %14, align 8, !dbg !2792
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i8 1, metadata !2508, metadata !DIExpression()), !dbg !2781
  %308 = icmp eq i64 %164, -1, !dbg !2793
  br i1 %308, label %309, label %311, !dbg !2795

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %310, metadata !2476, metadata !DIExpression()), !dbg !2535
  br label %311, !dbg !2797

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2632
  call void @llvm.dbg.value(metadata i64 %312, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2798
  %313 = sub i64 %312, %139, !dbg !2799
  call void @llvm.dbg.value(metadata i32* %16, metadata !2512, metadata !DIExpression(DW_OP_deref)), !dbg !2800
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #37, !dbg !2801
  call void @llvm.dbg.value(metadata i64 %314, metadata !2516, metadata !DIExpression()), !dbg !2800
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2802

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  %316 = icmp ugt i64 %312, %139, !dbg !2803
  br i1 %316, label %319, label %317, !dbg !2805

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %349, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %312, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i1 %350, metadata !2503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  br label %352, !dbg !2785

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2508, metadata !DIExpression()), !dbg !2781
  br label %346, !dbg !2808

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2505, metadata !DIExpression()), !dbg !2781
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2810
  %323 = load i8, i8* %322, align 1, !dbg !2810, !tbaa !581
  %324 = icmp eq i8 %323, 0, !dbg !2805
  br i1 %324, label %348, label %325, !dbg !2811

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2812
  call void @llvm.dbg.value(metadata i64 %326, metadata !2505, metadata !DIExpression()), !dbg !2781
  %327 = add i64 %326, %139, !dbg !2813
  %328 = icmp eq i64 %326, %313, !dbg !2803
  br i1 %328, label %348, label %319, !dbg !2805, !llvm.loop !2814

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2815
  call void @llvm.dbg.value(metadata i64 1, metadata !2517, metadata !DIExpression()), !dbg !2816
  br i1 %331, label %332, label %340, !dbg !2815

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2517, metadata !DIExpression()), !dbg !2816
  %334 = add i64 %333, %139, !dbg !2817
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2819
  %336 = load i8, i8* %335, align 1, !dbg !2819, !tbaa !581
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2820

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2821
  call void @llvm.dbg.value(metadata i64 %338, metadata !2517, metadata !DIExpression()), !dbg !2816
  %339 = icmp eq i64 %338, %314, !dbg !2822
  br i1 %339, label %340, label %332, !dbg !2823, !llvm.loop !2824

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2826, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %341, metadata !2512, metadata !DIExpression()), !dbg !2800
  call void @llvm.dbg.value(metadata i32 %341, metadata !2828, metadata !DIExpression()) #37, !dbg !2836
  %342 = call i32 @iswprint(i32 noundef %341) #37, !dbg !2838
  %343 = icmp ne i32 %342, 0, !dbg !2839
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %314, metadata !2505, metadata !DIExpression()), !dbg !2781
  br label %348, !dbg !2840

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2807
  call void @llvm.dbg.label(metadata !2534), !dbg !2841
  %345 = select i1 %118, i32 4, i32 2, !dbg !2842
  br label %643, !dbg !2842

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %349, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %312, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i1 %350, metadata !2503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  br label %352, !dbg !2785

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2508, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 0, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2807
  call void @llvm.dbg.value(metadata i64 %349, metadata !2505, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.value(metadata i64 %312, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i1 %350, metadata !2503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  %351 = icmp ugt i64 %349, 1, !dbg !2844
  br i1 %351, label %357, label %352, !dbg !2785

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2845
  br i1 %356, label %456, label %357, !dbg !2845

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2846
  call void @llvm.dbg.value(metadata i64 %361, metadata !2525, metadata !DIExpression()), !dbg !2847
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2848

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2535
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2624
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2849
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2632
  call void @llvm.dbg.value(metadata i8 %369, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %368, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %366, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %364, metadata !2483, metadata !DIExpression()), !dbg !2535
  br i1 %362, label %414, label %370, !dbg !2850

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2855

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2502, metadata !DIExpression()), !dbg !2632
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2858
  br i1 %372, label %389, label %373, !dbg !2858

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2860
  br i1 %374, label %375, label %377, !dbg !2864

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2860
  store i8 39, i8* %376, align 1, !dbg !2860, !tbaa !581
  br label %377, !dbg !2860

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2864
  call void @llvm.dbg.value(metadata i64 %378, metadata !2483, metadata !DIExpression()), !dbg !2535
  %379 = icmp ult i64 %378, %140, !dbg !2865
  br i1 %379, label %380, label %382, !dbg !2868

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2865
  store i8 36, i8* %381, align 1, !dbg !2865, !tbaa !581
  br label %382, !dbg !2865

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %383, metadata !2483, metadata !DIExpression()), !dbg !2535
  %384 = icmp ult i64 %383, %140, !dbg !2869
  br i1 %384, label %385, label %387, !dbg !2872

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2869
  store i8 39, i8* %386, align 1, !dbg !2869, !tbaa !581
  br label %387, !dbg !2869

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %388, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %389, !dbg !2873

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2535
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %390, metadata !2483, metadata !DIExpression()), !dbg !2535
  %392 = icmp ult i64 %390, %140, !dbg !2874
  br i1 %392, label %393, label %395, !dbg !2877

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2874
  store i8 92, i8* %394, align 1, !dbg !2874, !tbaa !581
  br label %395, !dbg !2874

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2877
  call void @llvm.dbg.value(metadata i64 %396, metadata !2483, metadata !DIExpression()), !dbg !2535
  %397 = icmp ult i64 %396, %140, !dbg !2878
  br i1 %397, label %398, label %402, !dbg !2881

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2878
  %400 = or i8 %399, 48, !dbg !2878
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2878
  store i8 %400, i8* %401, align 1, !dbg !2878, !tbaa !581
  br label %402, !dbg !2878

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %403, metadata !2483, metadata !DIExpression()), !dbg !2535
  %404 = icmp ult i64 %403, %140, !dbg !2882
  br i1 %404, label %405, label %410, !dbg !2885

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2882
  %407 = and i8 %406, 7, !dbg !2882
  %408 = or i8 %407, 48, !dbg !2882
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2882
  store i8 %408, i8* %409, align 1, !dbg !2882, !tbaa !581
  br label %410, !dbg !2882

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2885
  call void @llvm.dbg.value(metadata i64 %411, metadata !2483, metadata !DIExpression()), !dbg !2535
  %412 = and i8 %369, 7, !dbg !2886
  %413 = or i8 %412, 48, !dbg !2887
  call void @llvm.dbg.value(metadata i8 %413, metadata !2504, metadata !DIExpression()), !dbg !2632
  br label %421, !dbg !2888

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2889

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2890
  br i1 %416, label %417, label %419, !dbg !2895

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2890
  store i8 92, i8* %418, align 1, !dbg !2890, !tbaa !581
  br label %419, !dbg !2890

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2895
  call void @llvm.dbg.value(metadata i64 %420, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2499, metadata !DIExpression()), !dbg !2632
  br label %421, !dbg !2896

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2535
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2632
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2632
  call void @llvm.dbg.value(metadata i8 %426, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %425, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %422, metadata !2483, metadata !DIExpression()), !dbg !2535
  %427 = add i64 %366, 1, !dbg !2897
  %428 = icmp ugt i64 %361, %427, !dbg !2899
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !2900

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !2901
  %432 = select i1 %423, i1 %431, i1 false, !dbg !2901
  br i1 %432, label %433, label %444, !dbg !2901

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !2904
  br i1 %434, label %435, label %437, !dbg !2908

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !2904
  store i8 39, i8* %436, align 1, !dbg !2904, !tbaa !581
  br label %437, !dbg !2904

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !2908
  call void @llvm.dbg.value(metadata i64 %438, metadata !2483, metadata !DIExpression()), !dbg !2535
  %439 = icmp ult i64 %438, %140, !dbg !2909
  br i1 %439, label %440, label %442, !dbg !2912

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !2909
  store i8 39, i8* %441, align 1, !dbg !2909, !tbaa !581
  br label %442, !dbg !2909

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !2912
  call void @llvm.dbg.value(metadata i64 %443, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %444, !dbg !2913

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !2914
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %445, metadata !2483, metadata !DIExpression()), !dbg !2535
  %447 = icmp ult i64 %445, %140, !dbg !2915
  br i1 %447, label %448, label %450, !dbg !2918

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !2915
  store i8 %426, i8* %449, align 1, !dbg !2915, !tbaa !581
  br label %450, !dbg !2915

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %451, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %427, metadata !2497, metadata !DIExpression()), !dbg !2624
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !2919
  %453 = load i8, i8* %452, align 1, !dbg !2919, !tbaa !581
  call void @llvm.dbg.value(metadata i8 %453, metadata !2504, metadata !DIExpression()), !dbg !2632
  br label %363, !dbg !2920, !llvm.loop !2921

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i1 %358, metadata !2503, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2632
  call void @llvm.dbg.value(metadata i8 %425, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %366, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %422, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %360, metadata !2476, metadata !DIExpression()), !dbg !2535
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !2924
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2535
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2539
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2624
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2632
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %465, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2503, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2499, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %462, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %459, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %458, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %457, metadata !2476, metadata !DIExpression()), !dbg !2535
  br i1 %121, label %478, label %467, !dbg !2925

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
  br i1 %131, label %479, label %499, !dbg !2927

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !2928

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
  %490 = lshr i8 %481, 5, !dbg !2929
  %491 = zext i8 %490 to i64, !dbg !2929
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !2930
  %493 = load i32, i32* %492, align 4, !dbg !2930, !tbaa !572
  %494 = and i8 %481, 31, !dbg !2931
  %495 = zext i8 %494 to i32, !dbg !2931
  %496 = shl nuw i32 1, %495, !dbg !2932
  %497 = and i32 %493, %496, !dbg !2932
  %498 = icmp eq i32 %497, 0, !dbg !2932
  br i1 %498, label %499, label %510, !dbg !2933

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
  br i1 %165, label %510, label %546, !dbg !2934

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !2924
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2535
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2539
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !2935
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2632
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %518, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2503, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %516, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %513, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %512, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %511, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.label(metadata !2532), !dbg !2936
  br i1 %119, label %638, label %520, !dbg !2937

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2502, metadata !DIExpression()), !dbg !2632
  %521 = select i1 %120, i1 true, i1 %515, !dbg !2939
  br i1 %521, label %538, label %522, !dbg !2939

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !2941
  br i1 %523, label %524, label %526, !dbg !2945

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !2941
  store i8 39, i8* %525, align 1, !dbg !2941, !tbaa !581
  br label %526, !dbg !2941

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !2945
  call void @llvm.dbg.value(metadata i64 %527, metadata !2483, metadata !DIExpression()), !dbg !2535
  %528 = icmp ult i64 %527, %519, !dbg !2946
  br i1 %528, label %529, label %531, !dbg !2949

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !2946
  store i8 36, i8* %530, align 1, !dbg !2946, !tbaa !581
  br label %531, !dbg !2946

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %532, metadata !2483, metadata !DIExpression()), !dbg !2535
  %533 = icmp ult i64 %532, %519, !dbg !2950
  br i1 %533, label %534, label %536, !dbg !2953

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !2950
  store i8 39, i8* %535, align 1, !dbg !2950, !tbaa !581
  br label %536, !dbg !2950

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !2953
  call void @llvm.dbg.value(metadata i64 %537, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 1, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %538, !dbg !2954

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2632
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %539, metadata !2483, metadata !DIExpression()), !dbg !2535
  %541 = icmp ult i64 %539, %519, !dbg !2955
  br i1 %541, label %542, label %544, !dbg !2958

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !2955
  store i8 92, i8* %543, align 1, !dbg !2955, !tbaa !581
  br label %544, !dbg !2955

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !2958
  call void @llvm.dbg.value(metadata i64 %556, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %555, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2503, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %552, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %549, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %548, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %547, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.label(metadata !2533), !dbg !2959
  br label %570, !dbg !2960

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !2924
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2535
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2539
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !2935
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !2963
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 %555, metadata !2504, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2503, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i8 poison, metadata !2502, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i64 %552, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %549, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %548, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %547, metadata !2476, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.label(metadata !2533), !dbg !2959
  %557 = xor i1 %551, true, !dbg !2960
  %558 = select i1 %557, i1 true, i1 %553, !dbg !2960
  br i1 %558, label %570, label %559, !dbg !2960

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !2964
  br i1 %560, label %561, label %563, !dbg !2968

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !2964
  store i8 39, i8* %562, align 1, !dbg !2964, !tbaa !581
  br label %563, !dbg !2964

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !2968
  call void @llvm.dbg.value(metadata i64 %564, metadata !2483, metadata !DIExpression()), !dbg !2535
  %565 = icmp ult i64 %564, %556, !dbg !2969
  br i1 %565, label %566, label %568, !dbg !2972

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !2969
  store i8 39, i8* %567, align 1, !dbg !2969, !tbaa !581
  br label %568, !dbg !2969

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !2972
  call void @llvm.dbg.value(metadata i64 %569, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 0, metadata !2491, metadata !DIExpression()), !dbg !2535
  br label %570, !dbg !2973

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2632
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %578, metadata !2483, metadata !DIExpression()), !dbg !2535
  %580 = icmp ult i64 %578, %571, !dbg !2974
  br i1 %580, label %581, label %583, !dbg !2977

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !2974
  store i8 %572, i8* %582, align 1, !dbg !2974, !tbaa !581
  br label %583, !dbg !2974

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !2977
  call void @llvm.dbg.value(metadata i64 %584, metadata !2483, metadata !DIExpression()), !dbg !2535
  %585 = select i1 %573, i1 %137, i1 false, !dbg !2978
  call void @llvm.dbg.value(metadata i8 poison, metadata !2490, metadata !DIExpression()), !dbg !2535
  br label %586, !dbg !2979

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !2924
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2535
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2539
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !2935
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %593, metadata !2497, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8 poison, metadata !2491, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2490, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %589, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %588, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %587, metadata !2476, metadata !DIExpression()), !dbg !2535
  %595 = add i64 %593, 1, !dbg !2980
  call void @llvm.dbg.value(metadata i64 %595, metadata !2497, metadata !DIExpression()), !dbg !2624
  br label %132, !dbg !2981, !llvm.loop !2982

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2474, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2490, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8 poison, metadata !2489, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 undef, metadata !2484, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 undef, metadata !2483, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 undef, metadata !2476, metadata !DIExpression()), !dbg !2535
  %597 = icmp eq i64 %134, 0, !dbg !2984
  %598 = and i1 %126, %597, !dbg !2986
  %599 = and i1 %598, %119, !dbg !2986
  br i1 %599, label %638, label %600, !dbg !2986

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !2987
  %602 = or i1 %119, %601, !dbg !2987
  %603 = xor i1 %136, true, !dbg !2987
  %604 = select i1 %602, i1 true, i1 %603, !dbg !2987
  br i1 %604, label %612, label %605, !dbg !2987

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !2989

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !2991
  br label %653, !dbg !2993

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !2994
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !2996
  br i1 %611, label %36, label %612, !dbg !2996

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !2997
  %615 = or i1 %614, %613, !dbg !2999
  br i1 %615, label %631, label %616, !dbg !2999

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2485, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %134, metadata !2483, metadata !DIExpression()), !dbg !2535
  %617 = load i8, i8* %116, align 1, !dbg !3000, !tbaa !581
  %618 = icmp eq i8 %617, 0, !dbg !3003
  br i1 %618, label %631, label %619, !dbg !3003

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2485, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i64 %622, metadata !2483, metadata !DIExpression()), !dbg !2535
  %623 = icmp ult i64 %622, %140, !dbg !3004
  br i1 %623, label %624, label %626, !dbg !3007

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3004
  store i8 %620, i8* %625, align 1, !dbg !3004, !tbaa !581
  br label %626, !dbg !3004

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3007
  call void @llvm.dbg.value(metadata i64 %627, metadata !2483, metadata !DIExpression()), !dbg !2535
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %628, metadata !2485, metadata !DIExpression()), !dbg !2535
  %629 = load i8, i8* %628, align 1, !dbg !3000, !tbaa !581
  %630 = icmp eq i8 %629, 0, !dbg !3003
  br i1 %630, label %631, label %619, !dbg !3003, !llvm.loop !3009

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2611
  call void @llvm.dbg.value(metadata i64 %632, metadata !2483, metadata !DIExpression()), !dbg !2535
  %633 = icmp ult i64 %632, %140, !dbg !3011
  br i1 %633, label %634, label %653, !dbg !3013

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3014
  store i8 0, i8* %635, align 1, !dbg !3015, !tbaa !581
  br label %653, !dbg !3014

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2534), !dbg !2841
  %637 = icmp eq i32 %112, 2, !dbg !3016
  br i1 %637, label %643, label %647, !dbg !2842

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2534), !dbg !2841
  %641 = icmp eq i32 %112, 2, !dbg !3016
  %642 = select i1 %118, i32 4, i32 2, !dbg !2842
  br i1 %641, label %643, label %647, !dbg !2842

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2842

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2477, metadata !DIExpression()), !dbg !2535
  %651 = and i32 %5, -3, !dbg !3017
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3018
  br label %653, !dbg !3019

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3020
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3021 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #19 !dbg !3023 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3027, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3029, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i8* %0, metadata !3031, metadata !DIExpression()) #37, !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()) #37, !dbg !3044
  call void @llvm.dbg.value(metadata i64* null, metadata !3037, metadata !DIExpression()) #37, !dbg !3044
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3038, metadata !DIExpression()) #37, !dbg !3044
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3046
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3046
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3039, metadata !DIExpression()) #37, !dbg !3044
  %6 = tail call i32* @__errno_location() #40, !dbg !3047
  %7 = load i32, i32* %6, align 4, !dbg !3047, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %7, metadata !3040, metadata !DIExpression()) #37, !dbg !3044
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3048
  %9 = load i32, i32* %8, align 4, !dbg !3048, !tbaa !2417
  %10 = or i32 %9, 1, !dbg !3049
  call void @llvm.dbg.value(metadata i32 %10, metadata !3041, metadata !DIExpression()) #37, !dbg !3044
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3050
  %12 = load i32, i32* %11, align 8, !dbg !3050, !tbaa !2366
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3051
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3052
  %15 = load i8*, i8** %14, align 8, !dbg !3052, !tbaa !2439
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3053
  %17 = load i8*, i8** %16, align 8, !dbg !3053, !tbaa !2442
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #37, !dbg !3054
  %19 = add i64 %18, 1, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %19, metadata !3042, metadata !DIExpression()) #37, !dbg !3044
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !3056
  call void @llvm.dbg.value(metadata i8* %20, metadata !3043, metadata !DIExpression()) #37, !dbg !3044
  %21 = load i32, i32* %11, align 8, !dbg !3057, !tbaa !2366
  %22 = load i8*, i8** %14, align 8, !dbg !3058, !tbaa !2439
  %23 = load i8*, i8** %16, align 8, !dbg !3059, !tbaa !2442
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #37, !dbg !3060
  store i32 %7, i32* %6, align 4, !dbg !3061, !tbaa !572
  ret i8* %20, !dbg !3062
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #19 !dbg !3032 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3031, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64 %1, metadata !3036, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata i64* %2, metadata !3037, metadata !DIExpression()), !dbg !3063
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3038, metadata !DIExpression()), !dbg !3063
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3064
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3064
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3039, metadata !DIExpression()), !dbg !3063
  %7 = tail call i32* @__errno_location() #40, !dbg !3065
  %8 = load i32, i32* %7, align 4, !dbg !3065, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %8, metadata !3040, metadata !DIExpression()), !dbg !3063
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3066
  %10 = load i32, i32* %9, align 4, !dbg !3066, !tbaa !2417
  %11 = icmp eq i64* %2, null, !dbg !3067
  %12 = zext i1 %11 to i32, !dbg !3067
  %13 = or i32 %10, %12, !dbg !3068
  call void @llvm.dbg.value(metadata i32 %13, metadata !3041, metadata !DIExpression()), !dbg !3063
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3069
  %15 = load i32, i32* %14, align 8, !dbg !3069, !tbaa !2366
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3070
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3071
  %18 = load i8*, i8** %17, align 8, !dbg !3071, !tbaa !2439
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3072
  %20 = load i8*, i8** %19, align 8, !dbg !3072, !tbaa !2442
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3073
  %22 = add i64 %21, 1, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %22, metadata !3042, metadata !DIExpression()), !dbg !3063
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !3075
  call void @llvm.dbg.value(metadata i8* %23, metadata !3043, metadata !DIExpression()), !dbg !3063
  %24 = load i32, i32* %14, align 8, !dbg !3076, !tbaa !2366
  %25 = load i8*, i8** %17, align 8, !dbg !3077, !tbaa !2439
  %26 = load i8*, i8** %19, align 8, !dbg !3078, !tbaa !2442
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3079
  store i32 %8, i32* %7, align 4, !dbg !3080, !tbaa !572
  br i1 %11, label %29, label %28, !dbg !3081

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3082, !tbaa !923
  br label %29, !dbg !3084

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3085
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #19 !dbg !3086 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3091, !tbaa !476
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3088, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.value(metadata i32 1, metadata !3089, metadata !DIExpression()), !dbg !3093
  %2 = load i32, i32* @nslots, align 4, !tbaa !572
  call void @llvm.dbg.value(metadata i32 1, metadata !3089, metadata !DIExpression()), !dbg !3093
  %3 = icmp sgt i32 %2, 1, !dbg !3094
  br i1 %3, label %4, label %6, !dbg !3096

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3094
  br label %10, !dbg !3096

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3097
  %8 = load i8*, i8** %7, align 8, !dbg !3097, !tbaa !3099
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3101
  br i1 %9, label %17, label %16, !dbg !3102

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3089, metadata !DIExpression()), !dbg !3093
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3103
  %13 = load i8*, i8** %12, align 8, !dbg !3103, !tbaa !3099
  tail call void @free(i8* noundef %13) #37, !dbg !3104
  %14 = add nuw nsw i64 %11, 1, !dbg !3105
  call void @llvm.dbg.value(metadata i64 %14, metadata !3089, metadata !DIExpression()), !dbg !3093
  %15 = icmp eq i64 %14, %5, !dbg !3094
  br i1 %15, label %6, label %10, !dbg !3096, !llvm.loop !3106

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #37, !dbg !3108
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3110, !tbaa !3111
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3112, !tbaa !3099
  br label %17, !dbg !3113

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3114
  br i1 %18, label %21, label %19, !dbg !3116

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3117
  tail call void @free(i8* noundef %20) #37, !dbg !3119
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3120, !tbaa !476
  br label %21, !dbg !3121

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3122, !tbaa !572
  ret void, !dbg !3123
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #19 !dbg !3124 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3126, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.value(metadata i8* %1, metadata !3127, metadata !DIExpression()), !dbg !3128
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3129
  ret i8* %3, !dbg !3130
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #19 !dbg !3131 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3135, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %2, metadata !3137, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3138, metadata !DIExpression()), !dbg !3151
  %6 = tail call i32* @__errno_location() #40, !dbg !3152
  %7 = load i32, i32* %6, align 4, !dbg !3152, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %7, metadata !3139, metadata !DIExpression()), !dbg !3151
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3153, !tbaa !476
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3140, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3141, metadata !DIExpression()), !dbg !3151
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3154
  br i1 %9, label %10, label %11, !dbg !3154

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3156
  unreachable, !dbg !3156

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3157, !tbaa !572
  %13 = icmp sgt i32 %12, %0, !dbg !3158
  br i1 %13, label %36, label %14, !dbg !3159

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3160
  call void @llvm.dbg.value(metadata i1 %15, metadata !3142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3161
  %16 = bitcast i64* %5 to i8*, !dbg !3162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #37, !dbg !3162
  %17 = sext i32 %12 to i64, !dbg !3163
  call void @llvm.dbg.value(metadata i64 %17, metadata !3145, metadata !DIExpression()), !dbg !3161
  store i64 %17, i64* %5, align 8, !dbg !3164, !tbaa !923
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3165
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3165
  %20 = add nuw nsw i32 %0, 1, !dbg !3166
  %21 = sub i32 %20, %12, !dbg !3167
  %22 = sext i32 %21 to i64, !dbg !3168
  call void @llvm.dbg.value(metadata i64* %5, metadata !3145, metadata !DIExpression(DW_OP_deref)), !dbg !3161
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3169
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3169
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3140, metadata !DIExpression()), !dbg !3151
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3170, !tbaa !476
  br i1 %15, label %25, label %26, !dbg !3171

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3172, !tbaa.struct !3174
  br label %26, !dbg !3175

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3176, !tbaa !572
  %28 = sext i32 %27 to i64, !dbg !3177
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3177
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3178
  %31 = load i64, i64* %5, align 8, !dbg !3179, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %31, metadata !3145, metadata !DIExpression()), !dbg !3161
  %32 = sub nsw i64 %31, %28, !dbg !3180
  %33 = shl i64 %32, 4, !dbg !3181
  call void @llvm.dbg.value(metadata i8* %30, metadata !2569, metadata !DIExpression()) #37, !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !2572, metadata !DIExpression()) #37, !dbg !3182
  call void @llvm.dbg.value(metadata i64 %33, metadata !2573, metadata !DIExpression()) #37, !dbg !3182
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #37, !dbg !3184
  %34 = load i64, i64* %5, align 8, !dbg !3185, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %34, metadata !3145, metadata !DIExpression()), !dbg !3161
  %35 = trunc i64 %34 to i32, !dbg !3185
  store i32 %35, i32* @nslots, align 4, !dbg !3186, !tbaa !572
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #37, !dbg !3187
  br label %36, !dbg !3188

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3151
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3140, metadata !DIExpression()), !dbg !3151
  %38 = zext i32 %0 to i64, !dbg !3189
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3190
  %40 = load i64, i64* %39, align 8, !dbg !3190, !tbaa !3111
  call void @llvm.dbg.value(metadata i64 %40, metadata !3146, metadata !DIExpression()), !dbg !3191
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3192
  %42 = load i8*, i8** %41, align 8, !dbg !3192, !tbaa !3099
  call void @llvm.dbg.value(metadata i8* %42, metadata !3148, metadata !DIExpression()), !dbg !3191
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3193
  %44 = load i32, i32* %43, align 4, !dbg !3193, !tbaa !2417
  %45 = or i32 %44, 1, !dbg !3194
  call void @llvm.dbg.value(metadata i32 %45, metadata !3149, metadata !DIExpression()), !dbg !3191
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3195
  %47 = load i32, i32* %46, align 8, !dbg !3195, !tbaa !2366
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3196
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3197
  %50 = load i8*, i8** %49, align 8, !dbg !3197, !tbaa !2439
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3198
  %52 = load i8*, i8** %51, align 8, !dbg !3198, !tbaa !2442
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3199
  call void @llvm.dbg.value(metadata i64 %53, metadata !3150, metadata !DIExpression()), !dbg !3191
  %54 = icmp ugt i64 %40, %53, !dbg !3200
  br i1 %54, label %65, label %55, !dbg !3202

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i64 %56, metadata !3146, metadata !DIExpression()), !dbg !3191
  store i64 %56, i64* %39, align 8, !dbg !3205, !tbaa !3111
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3206
  br i1 %57, label %59, label %58, !dbg !3208

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #37, !dbg !3209
  br label %59, !dbg !3209

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !3210
  call void @llvm.dbg.value(metadata i8* %60, metadata !3148, metadata !DIExpression()), !dbg !3191
  store i8* %60, i8** %41, align 8, !dbg !3211, !tbaa !3099
  %61 = load i32, i32* %46, align 8, !dbg !3212, !tbaa !2366
  %62 = load i8*, i8** %49, align 8, !dbg !3213, !tbaa !2439
  %63 = load i8*, i8** %51, align 8, !dbg !3214, !tbaa !2442
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3215
  br label %65, !dbg !3216

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3191
  call void @llvm.dbg.value(metadata i8* %66, metadata !3148, metadata !DIExpression()), !dbg !3191
  store i32 %7, i32* %6, align 4, !dbg !3217, !tbaa !572
  ret i8* %66, !dbg !3218
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3219 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3223, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i8* %1, metadata !3224, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata i64 %2, metadata !3225, metadata !DIExpression()), !dbg !3226
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3227
  ret i8* %4, !dbg !3228
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #19 !dbg !3229 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3231, metadata !DIExpression()), !dbg !3232
  call void @llvm.dbg.value(metadata i32 0, metadata !3126, metadata !DIExpression()) #37, !dbg !3233
  call void @llvm.dbg.value(metadata i8* %0, metadata !3127, metadata !DIExpression()) #37, !dbg !3233
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37, !dbg !3235
  ret i8* %2, !dbg !3236
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3237 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3241, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i64 %1, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.value(metadata i32 0, metadata !3223, metadata !DIExpression()) #37, !dbg !3244
  call void @llvm.dbg.value(metadata i8* %0, metadata !3224, metadata !DIExpression()) #37, !dbg !3244
  call void @llvm.dbg.value(metadata i64 %1, metadata !3225, metadata !DIExpression()) #37, !dbg !3244
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37, !dbg !3246
  ret i8* %3, !dbg !3247
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #19 !dbg !3248 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3252, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 %1, metadata !3253, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %2, metadata !3254, metadata !DIExpression()), !dbg !3256
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3257
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3257
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3255, metadata !DIExpression()), !dbg !3258
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3259), !dbg !3262
  call void @llvm.dbg.value(metadata i32 %1, metadata !3263, metadata !DIExpression()) #37, !dbg !3269
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3268, metadata !DIExpression()) #37, !dbg !3271
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !dbg !3271, !alias.scope !3259
  %6 = icmp eq i32 %1, 10, !dbg !3272
  br i1 %6, label %7, label %8, !dbg !3274

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3275, !noalias !3259
  unreachable, !dbg !3275

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3276
  store i32 %1, i32* %9, align 8, !dbg !3277, !tbaa !2366, !alias.scope !3259
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3278
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3279
  ret i8* %10, !dbg !3280
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3281 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3285, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i32 %1, metadata !3286, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %2, metadata !3287, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i64 %3, metadata !3288, metadata !DIExpression()), !dbg !3290
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3291
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3291
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3289, metadata !DIExpression()), !dbg !3292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3293), !dbg !3296
  call void @llvm.dbg.value(metadata i32 %1, metadata !3263, metadata !DIExpression()) #37, !dbg !3297
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3268, metadata !DIExpression()) #37, !dbg !3299
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #37, !dbg !3299, !alias.scope !3293
  %7 = icmp eq i32 %1, 10, !dbg !3300
  br i1 %7, label %8, label %9, !dbg !3301

8:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3302, !noalias !3293
  unreachable, !dbg !3302

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3303
  store i32 %1, i32* %10, align 8, !dbg !3304, !tbaa !2366, !alias.scope !3293
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3305
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3306
  ret i8* %11, !dbg !3307
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #19 !dbg !3308 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i8* %1, metadata !3313, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !3252, metadata !DIExpression()) #37, !dbg !3315
  call void @llvm.dbg.value(metadata i32 %0, metadata !3253, metadata !DIExpression()) #37, !dbg !3315
  call void @llvm.dbg.value(metadata i8* %1, metadata !3254, metadata !DIExpression()) #37, !dbg !3315
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3317
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3317
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3255, metadata !DIExpression()) #37, !dbg !3318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3319) #37, !dbg !3322
  call void @llvm.dbg.value(metadata i32 %0, metadata !3263, metadata !DIExpression()) #37, !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3268, metadata !DIExpression()) #37, !dbg !3325
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #37, !dbg !3325, !alias.scope !3319
  %5 = icmp eq i32 %0, 10, !dbg !3326
  br i1 %5, label %6, label %7, !dbg !3327

6:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3328, !noalias !3319
  unreachable, !dbg !3328

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3329
  store i32 %0, i32* %8, align 8, !dbg !3330, !tbaa !2366, !alias.scope !3319
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3331
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3332
  ret i8* %9, !dbg !3333
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3334 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3338, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i8* %1, metadata !3339, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i64 %2, metadata !3340, metadata !DIExpression()), !dbg !3341
  call void @llvm.dbg.value(metadata i32 0, metadata !3285, metadata !DIExpression()) #37, !dbg !3342
  call void @llvm.dbg.value(metadata i32 %0, metadata !3286, metadata !DIExpression()) #37, !dbg !3342
  call void @llvm.dbg.value(metadata i8* %1, metadata !3287, metadata !DIExpression()) #37, !dbg !3342
  call void @llvm.dbg.value(metadata i64 %2, metadata !3288, metadata !DIExpression()) #37, !dbg !3342
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3344
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3344
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3289, metadata !DIExpression()) #37, !dbg !3345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346) #37, !dbg !3349
  call void @llvm.dbg.value(metadata i32 %0, metadata !3263, metadata !DIExpression()) #37, !dbg !3350
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3268, metadata !DIExpression()) #37, !dbg !3352
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !dbg !3352, !alias.scope !3346
  %6 = icmp eq i32 %0, 10, !dbg !3353
  br i1 %6, label %7, label %8, !dbg !3354

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3355, !noalias !3346
  unreachable, !dbg !3355

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3356
  store i32 %0, i32* %9, align 8, !dbg !3357, !tbaa !2366, !alias.scope !3346
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #37, !dbg !3358
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3359
  ret i8* %10, !dbg !3360
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #19 !dbg !3361 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.value(metadata i8 %2, metadata !3367, metadata !DIExpression()), !dbg !3369
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3370
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3370
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3368, metadata !DIExpression()), !dbg !3371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3372, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2384, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8 %2, metadata !2385, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()), !dbg !3374
  call void @llvm.dbg.value(metadata i8 %2, metadata !2387, metadata !DIExpression()), !dbg !3374
  %6 = lshr i8 %2, 5, !dbg !3376
  %7 = zext i8 %6 to i64, !dbg !3376
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3377
  call void @llvm.dbg.value(metadata i32* %8, metadata !2388, metadata !DIExpression()), !dbg !3374
  %9 = and i8 %2, 31, !dbg !3378
  %10 = zext i8 %9 to i32, !dbg !3378
  call void @llvm.dbg.value(metadata i32 %10, metadata !2390, metadata !DIExpression()), !dbg !3374
  %11 = load i32, i32* %8, align 4, !dbg !3379, !tbaa !572
  %12 = lshr i32 %11, %10, !dbg !3380
  %13 = and i32 %12, 1, !dbg !3381
  call void @llvm.dbg.value(metadata i32 %13, metadata !2391, metadata !DIExpression()), !dbg !3374
  %14 = xor i32 %13, 1, !dbg !3382
  %15 = shl i32 %14, %10, !dbg !3383
  %16 = xor i32 %15, %11, !dbg !3384
  store i32 %16, i32* %8, align 4, !dbg !3384, !tbaa !572
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3385
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3386
  ret i8* %17, !dbg !3387
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #19 !dbg !3388 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3392, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8 %1, metadata !3393, metadata !DIExpression()), !dbg !3394
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #37, !dbg !3395
  call void @llvm.dbg.value(metadata i64 -1, metadata !3366, metadata !DIExpression()) #37, !dbg !3395
  call void @llvm.dbg.value(metadata i8 %1, metadata !3367, metadata !DIExpression()) #37, !dbg !3395
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3397
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3397
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3368, metadata !DIExpression()) #37, !dbg !3398
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3399, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2384, metadata !DIExpression()) #37, !dbg !3400
  call void @llvm.dbg.value(metadata i8 %1, metadata !2385, metadata !DIExpression()) #37, !dbg !3400
  call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()) #37, !dbg !3400
  call void @llvm.dbg.value(metadata i8 %1, metadata !2387, metadata !DIExpression()) #37, !dbg !3400
  %5 = lshr i8 %1, 5, !dbg !3402
  %6 = zext i8 %5 to i64, !dbg !3402
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3403
  call void @llvm.dbg.value(metadata i32* %7, metadata !2388, metadata !DIExpression()) #37, !dbg !3400
  %8 = and i8 %1, 31, !dbg !3404
  %9 = zext i8 %8 to i32, !dbg !3404
  call void @llvm.dbg.value(metadata i32 %9, metadata !2390, metadata !DIExpression()) #37, !dbg !3400
  %10 = load i32, i32* %7, align 4, !dbg !3405, !tbaa !572
  %11 = lshr i32 %10, %9, !dbg !3406
  %12 = and i32 %11, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i32 %12, metadata !2391, metadata !DIExpression()) #37, !dbg !3400
  %13 = xor i32 %12, 1, !dbg !3408
  %14 = shl i32 %13, %9, !dbg !3409
  %15 = xor i32 %14, %10, !dbg !3410
  store i32 %15, i32* %7, align 4, !dbg !3410, !tbaa !572
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3411
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3412
  ret i8* %16, !dbg !3413
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #19 !dbg !3414 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.value(metadata i8* %0, metadata !3392, metadata !DIExpression()) #37, !dbg !3418
  call void @llvm.dbg.value(metadata i8 58, metadata !3393, metadata !DIExpression()) #37, !dbg !3418
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #37, !dbg !3420
  call void @llvm.dbg.value(metadata i64 -1, metadata !3366, metadata !DIExpression()) #37, !dbg !3420
  call void @llvm.dbg.value(metadata i8 58, metadata !3367, metadata !DIExpression()) #37, !dbg !3420
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3422
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #37, !dbg !3422
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3368, metadata !DIExpression()) #37, !dbg !3423
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3424, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2384, metadata !DIExpression()) #37, !dbg !3425
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()) #37, !dbg !3425
  call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()) #37, !dbg !3425
  call void @llvm.dbg.value(metadata i8 58, metadata !2387, metadata !DIExpression()) #37, !dbg !3425
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3427
  call void @llvm.dbg.value(metadata i32* %4, metadata !2388, metadata !DIExpression()) #37, !dbg !3425
  call void @llvm.dbg.value(metadata i32 26, metadata !2390, metadata !DIExpression()) #37, !dbg !3425
  %5 = load i32, i32* %4, align 4, !dbg !3428, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %5, metadata !2391, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #37, !dbg !3425
  %6 = or i32 %5, 67108864, !dbg !3429
  store i32 %6, i32* %4, align 4, !dbg !3429, !tbaa !572
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #37, !dbg !3430
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #37, !dbg !3431
  ret i8* %7, !dbg !3432
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3433 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3435, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3437
  call void @llvm.dbg.value(metadata i8* %0, metadata !3365, metadata !DIExpression()) #37, !dbg !3438
  call void @llvm.dbg.value(metadata i64 %1, metadata !3366, metadata !DIExpression()) #37, !dbg !3438
  call void @llvm.dbg.value(metadata i8 58, metadata !3367, metadata !DIExpression()) #37, !dbg !3438
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3440
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3440
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3368, metadata !DIExpression()) #37, !dbg !3441
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3442, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2384, metadata !DIExpression()) #37, !dbg !3443
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()) #37, !dbg !3443
  call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()) #37, !dbg !3443
  call void @llvm.dbg.value(metadata i8 58, metadata !2387, metadata !DIExpression()) #37, !dbg !3443
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3445
  call void @llvm.dbg.value(metadata i32* %5, metadata !2388, metadata !DIExpression()) #37, !dbg !3443
  call void @llvm.dbg.value(metadata i32 26, metadata !2390, metadata !DIExpression()) #37, !dbg !3443
  %6 = load i32, i32* %5, align 4, !dbg !3446, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %6, metadata !2391, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #37, !dbg !3443
  %7 = or i32 %6, 67108864, !dbg !3447
  store i32 %7, i32* %5, align 4, !dbg !3447, !tbaa !572
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3448
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3449
  ret i8* %8, !dbg !3450
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #19 !dbg !3451 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3453, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %1, metadata !3454, metadata !DIExpression()), !dbg !3457
  call void @llvm.dbg.value(metadata i8* %2, metadata !3455, metadata !DIExpression()), !dbg !3457
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3458
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3458
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3456, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i32 %1, metadata !3263, metadata !DIExpression()) #37, !dbg !3460
  call void @llvm.dbg.value(metadata i32 0, metadata !3268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3460
  %6 = icmp eq i32 %1, 10, !dbg !3462
  br i1 %6, label %7, label %8, !dbg !3463

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3464, !noalias !3465
  unreachable, !dbg !3464

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3268, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3460
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3468
  store i32 %1, i32* %9, align 8, !dbg !3468, !tbaa.struct !3373
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3468
  %11 = bitcast i32* %10 to i8*, !dbg !3468
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3468
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2384, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 58, metadata !2385, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 1, metadata !2386, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i8 58, metadata !2387, metadata !DIExpression()), !dbg !3469
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3471
  call void @llvm.dbg.value(metadata i32* %12, metadata !2388, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 26, metadata !2390, metadata !DIExpression()), !dbg !3469
  %13 = load i32, i32* %12, align 4, !dbg !3472, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %13, metadata !2391, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3469
  %14 = or i32 %13, 67108864, !dbg !3473
  store i32 %14, i32* %12, align 4, !dbg !3473, !tbaa !572
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3474
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3475
  ret i8* %15, !dbg !3476
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #19 !dbg !3477 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3481, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %1, metadata !3482, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %2, metadata !3483, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i8* %3, metadata !3484, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()) #37, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()) #37, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()) #37, !dbg !3496
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()) #37, !dbg !3496
  call void @llvm.dbg.value(metadata i64 -1, metadata !3494, metadata !DIExpression()) #37, !dbg !3496
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3498
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3498
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3495, metadata !DIExpression()) #37, !dbg !3499
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3500, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2424, metadata !DIExpression()) #37, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %1, metadata !2425, metadata !DIExpression()) #37, !dbg !3501
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()) #37, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2424, metadata !DIExpression()) #37, !dbg !3501
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3503
  store i32 10, i32* %7, align 8, !dbg !3504, !tbaa !2366
  %8 = icmp ne i8* %1, null, !dbg !3505
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3506
  br i1 %10, label %12, label %11, !dbg !3506

11:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3507
  unreachable, !dbg !3507

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3508
  store i8* %1, i8** %13, align 8, !dbg !3509, !tbaa !2439
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3510
  store i8* %2, i8** %14, align 8, !dbg !3511, !tbaa !2442
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #37, !dbg !3512
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3513
  ret i8* %15, !dbg !3514
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !3487 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3486, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %1, metadata !3491, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %2, metadata !3492, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i8* %3, metadata !3493, metadata !DIExpression()), !dbg !3515
  call void @llvm.dbg.value(metadata i64 %4, metadata !3494, metadata !DIExpression()), !dbg !3515
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #37, !dbg !3516
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3495, metadata !DIExpression()), !dbg !3517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3518, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2424, metadata !DIExpression()) #37, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %1, metadata !2425, metadata !DIExpression()) #37, !dbg !3519
  call void @llvm.dbg.value(metadata i8* %2, metadata !2426, metadata !DIExpression()) #37, !dbg !3519
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2424, metadata !DIExpression()) #37, !dbg !3519
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3521
  store i32 10, i32* %8, align 8, !dbg !3522, !tbaa !2366
  %9 = icmp ne i8* %1, null, !dbg !3523
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3524
  br i1 %11, label %13, label %12, !dbg !3524

12:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3525
  unreachable, !dbg !3525

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3526
  store i8* %1, i8** %14, align 8, !dbg !3527, !tbaa !2439
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3528
  store i8* %2, i8** %15, align 8, !dbg !3529, !tbaa !2442
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #37, !dbg !3531
  ret i8* %16, !dbg !3532
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #19 !dbg !3533 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3537, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8* %1, metadata !3538, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i8* %2, metadata !3539, metadata !DIExpression()), !dbg !3540
  call void @llvm.dbg.value(metadata i32 0, metadata !3481, metadata !DIExpression()) #37, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %0, metadata !3482, metadata !DIExpression()) #37, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %1, metadata !3483, metadata !DIExpression()) #37, !dbg !3541
  call void @llvm.dbg.value(metadata i8* %2, metadata !3484, metadata !DIExpression()) #37, !dbg !3541
  call void @llvm.dbg.value(metadata i32 0, metadata !3486, metadata !DIExpression()) #37, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #37, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %1, metadata !3492, metadata !DIExpression()) #37, !dbg !3543
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #37, !dbg !3543
  call void @llvm.dbg.value(metadata i64 -1, metadata !3494, metadata !DIExpression()) #37, !dbg !3543
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3545
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3545
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3495, metadata !DIExpression()) #37, !dbg !3546
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3547, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2424, metadata !DIExpression()) #37, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()) #37, !dbg !3548
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()) #37, !dbg !3548
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2424, metadata !DIExpression()) #37, !dbg !3548
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3550
  store i32 10, i32* %6, align 8, !dbg !3551, !tbaa !2366
  %7 = icmp ne i8* %0, null, !dbg !3552
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3553
  br i1 %9, label %11, label %10, !dbg !3553

10:                                               ; preds = %3
  tail call void @abort() #39, !dbg !3554
  unreachable, !dbg !3554

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3555
  store i8* %0, i8** %12, align 8, !dbg !3556, !tbaa !2439
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3557
  store i8* %1, i8** %13, align 8, !dbg !3558, !tbaa !2442
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #37, !dbg !3559
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3560
  ret i8* %14, !dbg !3561
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #19 !dbg !3562 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3566, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %1, metadata !3567, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i8* %2, metadata !3568, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i64 %3, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.value(metadata i32 0, metadata !3486, metadata !DIExpression()) #37, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %0, metadata !3491, metadata !DIExpression()) #37, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %1, metadata !3492, metadata !DIExpression()) #37, !dbg !3571
  call void @llvm.dbg.value(metadata i8* %2, metadata !3493, metadata !DIExpression()) #37, !dbg !3571
  call void @llvm.dbg.value(metadata i64 %3, metadata !3494, metadata !DIExpression()) #37, !dbg !3571
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3573
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3573
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3495, metadata !DIExpression()) #37, !dbg !3574
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3575, !tbaa.struct !3373
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2424, metadata !DIExpression()) #37, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()) #37, !dbg !3576
  call void @llvm.dbg.value(metadata i8* %1, metadata !2426, metadata !DIExpression()) #37, !dbg !3576
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2424, metadata !DIExpression()) #37, !dbg !3576
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3578
  store i32 10, i32* %7, align 8, !dbg !3579, !tbaa !2366
  %8 = icmp ne i8* %0, null, !dbg !3580
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3581
  br i1 %10, label %12, label %11, !dbg !3581

11:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3582
  unreachable, !dbg !3582

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3583
  store i8* %0, i8** %13, align 8, !dbg !3584, !tbaa !2439
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3585
  store i8* %1, i8** %14, align 8, !dbg !3586, !tbaa !2442
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #37, !dbg !3587
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3588
  ret i8* %15, !dbg !3589
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !3590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i8* %1, metadata !3595, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.value(metadata i64 %2, metadata !3596, metadata !DIExpression()), !dbg !3597
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3598
  ret i8* %4, !dbg !3599
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #19 !dbg !3600 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3604, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i64 %1, metadata !3605, metadata !DIExpression()), !dbg !3606
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()) #37, !dbg !3607
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()) #37, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %1, metadata !3596, metadata !DIExpression()) #37, !dbg !3607
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3609
  ret i8* %3, !dbg !3610
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #19 !dbg !3611 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3615, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %1, metadata !3616, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i32 %0, metadata !3594, metadata !DIExpression()) #37, !dbg !3618
  call void @llvm.dbg.value(metadata i8* %1, metadata !3595, metadata !DIExpression()) #37, !dbg !3618
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #37, !dbg !3618
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3620
  ret i8* %3, !dbg !3621
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #19 !dbg !3622 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3626, metadata !DIExpression()), !dbg !3627
  call void @llvm.dbg.value(metadata i32 0, metadata !3615, metadata !DIExpression()) #37, !dbg !3628
  call void @llvm.dbg.value(metadata i8* %0, metadata !3616, metadata !DIExpression()) #37, !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3594, metadata !DIExpression()) #37, !dbg !3630
  call void @llvm.dbg.value(metadata i8* %0, metadata !3595, metadata !DIExpression()) #37, !dbg !3630
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #37, !dbg !3630
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3632
  ret i8* %2, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #19 !dbg !3634 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3673, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %1, metadata !3674, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %2, metadata !3675, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8* %3, metadata !3676, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i8** %4, metadata !3677, metadata !DIExpression()), !dbg !3679
  call void @llvm.dbg.value(metadata i64 %5, metadata !3678, metadata !DIExpression()), !dbg !3679
  %7 = icmp eq i8* %1, null, !dbg !3680
  br i1 %7, label %10, label %8, !dbg !3682

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #37, !dbg !3683
  br label %12, !dbg !3683

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.122, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #37, !dbg !3684
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.124, i64 0, i64 0), i32 noundef 5) #37, !dbg !3685
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #37, !dbg !3685
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.125, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3686
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.126, i64 0, i64 0), i32 noundef 5) #37, !dbg !3687
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.127, i64 0, i64 0)) #37, !dbg !3687
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.125, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3688
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
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.128, i64 0, i64 0), i32 noundef 5) #37, !dbg !3690
  %21 = load i8*, i8** %4, align 8, !dbg !3690, !tbaa !476
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #37, !dbg !3690
  br label %147, !dbg !3692

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.129, i64 0, i64 0), i32 noundef 5) #37, !dbg !3693
  %25 = load i8*, i8** %4, align 8, !dbg !3693, !tbaa !476
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3693
  %27 = load i8*, i8** %26, align 8, !dbg !3693, !tbaa !476
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #37, !dbg !3693
  br label %147, !dbg !3694

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.130, i64 0, i64 0), i32 noundef 5) #37, !dbg !3695
  %31 = load i8*, i8** %4, align 8, !dbg !3695, !tbaa !476
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3695
  %33 = load i8*, i8** %32, align 8, !dbg !3695, !tbaa !476
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3695
  %35 = load i8*, i8** %34, align 8, !dbg !3695, !tbaa !476
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #37, !dbg !3695
  br label %147, !dbg !3696

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.131, i64 0, i64 0), i32 noundef 5) #37, !dbg !3697
  %39 = load i8*, i8** %4, align 8, !dbg !3697, !tbaa !476
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3697
  %41 = load i8*, i8** %40, align 8, !dbg !3697, !tbaa !476
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3697
  %43 = load i8*, i8** %42, align 8, !dbg !3697, !tbaa !476
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3697
  %45 = load i8*, i8** %44, align 8, !dbg !3697, !tbaa !476
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #37, !dbg !3697
  br label %147, !dbg !3698

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.132, i64 0, i64 0), i32 noundef 5) #37, !dbg !3699
  %49 = load i8*, i8** %4, align 8, !dbg !3699, !tbaa !476
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3699
  %51 = load i8*, i8** %50, align 8, !dbg !3699, !tbaa !476
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3699
  %53 = load i8*, i8** %52, align 8, !dbg !3699, !tbaa !476
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3699
  %55 = load i8*, i8** %54, align 8, !dbg !3699, !tbaa !476
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3699
  %57 = load i8*, i8** %56, align 8, !dbg !3699, !tbaa !476
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #37, !dbg !3699
  br label %147, !dbg !3700

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.133, i64 0, i64 0), i32 noundef 5) #37, !dbg !3701
  %61 = load i8*, i8** %4, align 8, !dbg !3701, !tbaa !476
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3701
  %63 = load i8*, i8** %62, align 8, !dbg !3701, !tbaa !476
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3701
  %65 = load i8*, i8** %64, align 8, !dbg !3701, !tbaa !476
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3701
  %67 = load i8*, i8** %66, align 8, !dbg !3701, !tbaa !476
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3701
  %69 = load i8*, i8** %68, align 8, !dbg !3701, !tbaa !476
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3701
  %71 = load i8*, i8** %70, align 8, !dbg !3701, !tbaa !476
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #37, !dbg !3701
  br label %147, !dbg !3702

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.134, i64 0, i64 0), i32 noundef 5) #37, !dbg !3703
  %75 = load i8*, i8** %4, align 8, !dbg !3703, !tbaa !476
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3703
  %77 = load i8*, i8** %76, align 8, !dbg !3703, !tbaa !476
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3703
  %79 = load i8*, i8** %78, align 8, !dbg !3703, !tbaa !476
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3703
  %81 = load i8*, i8** %80, align 8, !dbg !3703, !tbaa !476
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3703
  %83 = load i8*, i8** %82, align 8, !dbg !3703, !tbaa !476
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3703
  %85 = load i8*, i8** %84, align 8, !dbg !3703, !tbaa !476
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3703
  %87 = load i8*, i8** %86, align 8, !dbg !3703, !tbaa !476
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #37, !dbg !3703
  br label %147, !dbg !3704

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.135, i64 0, i64 0), i32 noundef 5) #37, !dbg !3705
  %91 = load i8*, i8** %4, align 8, !dbg !3705, !tbaa !476
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3705
  %93 = load i8*, i8** %92, align 8, !dbg !3705, !tbaa !476
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3705
  %95 = load i8*, i8** %94, align 8, !dbg !3705, !tbaa !476
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3705
  %97 = load i8*, i8** %96, align 8, !dbg !3705, !tbaa !476
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3705
  %99 = load i8*, i8** %98, align 8, !dbg !3705, !tbaa !476
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3705
  %101 = load i8*, i8** %100, align 8, !dbg !3705, !tbaa !476
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3705
  %103 = load i8*, i8** %102, align 8, !dbg !3705, !tbaa !476
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3705
  %105 = load i8*, i8** %104, align 8, !dbg !3705, !tbaa !476
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #37, !dbg !3705
  br label %147, !dbg !3706

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.136, i64 0, i64 0), i32 noundef 5) #37, !dbg !3707
  %109 = load i8*, i8** %4, align 8, !dbg !3707, !tbaa !476
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3707
  %111 = load i8*, i8** %110, align 8, !dbg !3707, !tbaa !476
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3707
  %113 = load i8*, i8** %112, align 8, !dbg !3707, !tbaa !476
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3707
  %115 = load i8*, i8** %114, align 8, !dbg !3707, !tbaa !476
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3707
  %117 = load i8*, i8** %116, align 8, !dbg !3707, !tbaa !476
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3707
  %119 = load i8*, i8** %118, align 8, !dbg !3707, !tbaa !476
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3707
  %121 = load i8*, i8** %120, align 8, !dbg !3707, !tbaa !476
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3707
  %123 = load i8*, i8** %122, align 8, !dbg !3707, !tbaa !476
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3707
  %125 = load i8*, i8** %124, align 8, !dbg !3707, !tbaa !476
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #37, !dbg !3707
  br label %147, !dbg !3708

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.137, i64 0, i64 0), i32 noundef 5) #37, !dbg !3709
  %129 = load i8*, i8** %4, align 8, !dbg !3709, !tbaa !476
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3709
  %131 = load i8*, i8** %130, align 8, !dbg !3709, !tbaa !476
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3709
  %133 = load i8*, i8** %132, align 8, !dbg !3709, !tbaa !476
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3709
  %135 = load i8*, i8** %134, align 8, !dbg !3709, !tbaa !476
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3709
  %137 = load i8*, i8** %136, align 8, !dbg !3709, !tbaa !476
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3709
  %139 = load i8*, i8** %138, align 8, !dbg !3709, !tbaa !476
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3709
  %141 = load i8*, i8** %140, align 8, !dbg !3709, !tbaa !476
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3709
  %143 = load i8*, i8** %142, align 8, !dbg !3709, !tbaa !476
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3709
  %145 = load i8*, i8** %144, align 8, !dbg !3709, !tbaa !476
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #37, !dbg !3709
  br label %147, !dbg !3710

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #19 !dbg !3712 {
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
  %9 = load i8*, i8** %8, align 8, !dbg !3726, !tbaa !476
  %10 = icmp eq i8* %9, null, !dbg !3728
  %11 = add i64 %7, 1, !dbg !3729
  call void @llvm.dbg.value(metadata i64 %11, metadata !3721, metadata !DIExpression()), !dbg !3722
  br i1 %10, label %12, label %6, !dbg !3728, !llvm.loop !3730

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3732
  ret void, !dbg !3733
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #19 !dbg !3734 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3749, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %1, metadata !3750, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %2, metadata !3751, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.value(metadata i8* %3, metadata !3752, metadata !DIExpression()), !dbg !3757
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3753, metadata !DIExpression()), !dbg !3758
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3759
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #37, !dbg !3759
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
  store i8* %28, i8** %29, align 8, !dbg !3765, !tbaa !476
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
  store i8* %48, i8** %49, align 8, !dbg !3765, !tbaa !476
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
  store i8* %68, i8** %69, align 8, !dbg !3765, !tbaa !476
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
  store i8* %88, i8** %89, align 8, !dbg !3765, !tbaa !476
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
  store i8* %108, i8** %109, align 8, !dbg !3765, !tbaa !476
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
  store i8* %128, i8** %129, align 8, !dbg !3765, !tbaa !476
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
  store i8* %148, i8** %149, align 8, !dbg !3765, !tbaa !476
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
  store i8* %168, i8** %169, align 8, !dbg !3765, !tbaa !476
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
  store i8* %188, i8** %189, align 8, !dbg !3765, !tbaa !476
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
  store i8* %206, i8** %207, align 8, !dbg !3765, !tbaa !476
  %208 = icmp eq i8* %206, null, !dbg !3766
  %209 = select i1 %208, i64 9, i64 10, !dbg !3767
  br label %210, !dbg !3767

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3768
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3769
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #37, !dbg !3770
  ret void, !dbg !3770
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #19 !dbg !3771 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3775, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %1, metadata !3776, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %2, metadata !3777, metadata !DIExpression()), !dbg !3780
  call void @llvm.dbg.value(metadata i8* %3, metadata !3778, metadata !DIExpression()), !dbg !3780
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3781
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37, !dbg !3781
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3779, metadata !DIExpression()), !dbg !3782
  call void @llvm.va_start(i8* nonnull %7), !dbg !3783
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3784
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37, !dbg !3784
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3784, !tbaa.struct !1752
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3784
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37, !dbg !3784
  call void @llvm.va_end(i8* nonnull %7), !dbg !3785
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37, !dbg !3786
  ret void, !dbg !3786
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #19 !dbg !3787 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3788, !tbaa !476
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.125, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3788
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.142, i64 0, i64 0), i32 noundef 5) #37, !dbg !3789
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.143, i64 0, i64 0)) #37, !dbg !3789
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.144, i64 0, i64 0), i32 noundef 5) #37, !dbg !3790
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.145, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.146, i64 0, i64 0)) #37, !dbg !3790
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.123, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.147, i64 0, i64 0), i32 noundef 5) #37, !dbg !3791
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.148, i64 0, i64 0)) #37, !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3793 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3798, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %1, metadata !3799, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i64 %2, metadata !3800, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #37, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()) #37, !dbg !3807
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()) #37, !dbg !3807
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3809
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #37, !dbg !3815
  %5 = icmp eq i8* %4, null, !dbg !3817
  br i1 %5, label %6, label %7, !dbg !3819

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3820
  unreachable, !dbg !3820

7:                                                ; preds = %3
  ret i8* %4, !dbg !3821
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3803 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %1, metadata !3805, metadata !DIExpression()), !dbg !3822
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()), !dbg !3822
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3823
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #37, !dbg !3824
  %5 = icmp eq i8* %4, null, !dbg !3826
  br i1 %5, label %6, label %7, !dbg !3827

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3828
  unreachable, !dbg !3828

7:                                                ; preds = %3
  ret i8* %4, !dbg !3829
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3830 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()), !dbg !3835
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #37, !dbg !3837
  %3 = icmp eq i8* %2, null, !dbg !3839
  br i1 %3, label %4, label %5, !dbg !3840

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3841
  unreachable, !dbg !3841

5:                                                ; preds = %1
  ret i8* %2, !dbg !3842
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3843 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.value(metadata i64 %0, metadata !3847, metadata !DIExpression()) #37, !dbg !3850
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3852
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #37, !dbg !3853
  %3 = icmp eq i8* %2, null, !dbg !3855
  br i1 %3, label %4, label %5, !dbg !3856

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3857
  unreachable, !dbg !3857

5:                                                ; preds = %1
  ret i8* %2, !dbg !3858
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3859 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3863, metadata !DIExpression()), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %0, metadata !3834, metadata !DIExpression()) #37, !dbg !3865
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3867
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #37, !dbg !3868
  %3 = icmp eq i8* %2, null, !dbg !3870
  br i1 %3, label %4, label %5, !dbg !3871

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3872
  unreachable, !dbg !3872

5:                                                ; preds = %1
  ret i8* %2, !dbg !3873
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3874 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i64 %1, metadata !3879, metadata !DIExpression()), !dbg !3880
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #37, !dbg !3886
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()) #37, !dbg !3886
  %3 = icmp eq i64 %1, 0, !dbg !3888
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3888
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37, !dbg !3889
  call void @llvm.dbg.value(metadata i8* %5, metadata !3810, metadata !DIExpression()) #37, !dbg !3890
  %6 = icmp eq i8* %5, null, !dbg !3892
  br i1 %6, label %7, label %8, !dbg !3893

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3894
  unreachable, !dbg !3894

8:                                                ; preds = %2
  ret i8* %5, !dbg !3895
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #20

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3896 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()), !dbg !3902
  call void @llvm.dbg.value(metadata i8* %0, metadata !3903, metadata !DIExpression()) #37, !dbg !3907
  call void @llvm.dbg.value(metadata i64 %1, metadata !3906, metadata !DIExpression()) #37, !dbg !3907
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #37, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3885, metadata !DIExpression()) #37, !dbg !3909
  %3 = icmp eq i64 %1, 0, !dbg !3911
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3911
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37, !dbg !3912
  call void @llvm.dbg.value(metadata i8* %5, metadata !3810, metadata !DIExpression()) #37, !dbg !3913
  %6 = icmp eq i8* %5, null, !dbg !3915
  br i1 %6, label %7, label %8, !dbg !3916

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3917
  unreachable, !dbg !3917

8:                                                ; preds = %2
  ret i8* %5, !dbg !3918
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3919 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %1, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i64 %2, metadata !3925, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i8* %0, metadata !3927, metadata !DIExpression()) #37, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %1, metadata !3930, metadata !DIExpression()) #37, !dbg !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3931, metadata !DIExpression()) #37, !dbg !3932
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3934
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #37, !dbg !3935
  %5 = icmp eq i8* %4, null, !dbg !3937
  br i1 %5, label %6, label %7, !dbg !3938

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3939
  unreachable, !dbg !3939

7:                                                ; preds = %3
  ret i8* %4, !dbg !3940
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3941 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i64 %1, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata i8* null, metadata !3802, metadata !DIExpression()) #37, !dbg !3948
  call void @llvm.dbg.value(metadata i64 %0, metadata !3805, metadata !DIExpression()) #37, !dbg !3948
  call void @llvm.dbg.value(metadata i64 %1, metadata !3806, metadata !DIExpression()) #37, !dbg !3948
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3950
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !3951
  %4 = icmp eq i8* %3, null, !dbg !3953
  br i1 %4, label %5, label %6, !dbg !3954

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3955
  unreachable, !dbg !3955

6:                                                ; preds = %2
  ret i8* %3, !dbg !3956
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !3957 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3961, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i64 %1, metadata !3962, metadata !DIExpression()), !dbg !3963
  call void @llvm.dbg.value(metadata i8* null, metadata !3923, metadata !DIExpression()) #37, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %0, metadata !3924, metadata !DIExpression()) #37, !dbg !3964
  call void @llvm.dbg.value(metadata i64 %1, metadata !3925, metadata !DIExpression()) #37, !dbg !3964
  call void @llvm.dbg.value(metadata i8* null, metadata !3927, metadata !DIExpression()) #37, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %0, metadata !3930, metadata !DIExpression()) #37, !dbg !3966
  call void @llvm.dbg.value(metadata i64 %1, metadata !3931, metadata !DIExpression()) #37, !dbg !3966
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !3968
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !3969
  %4 = icmp eq i8* %3, null, !dbg !3971
  br i1 %4, label %5, label %6, !dbg !3972

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3973
  unreachable, !dbg !3973

6:                                                ; preds = %2
  ret i8* %3, !dbg !3974
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #19 !dbg !3975 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3979, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i64* %1, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()) #37, !dbg !3982
  call void @llvm.dbg.value(metadata i64* %1, metadata !407, metadata !DIExpression()) #37, !dbg !3982
  call void @llvm.dbg.value(metadata i64 1, metadata !408, metadata !DIExpression()) #37, !dbg !3982
  %3 = load i64, i64* %1, align 8, !dbg !3984, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %3, metadata !409, metadata !DIExpression()) #37, !dbg !3982
  %4 = icmp eq i8* %0, null, !dbg !3985
  br i1 %4, label %5, label %8, !dbg !3987

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3988
  %7 = select i1 %6, i64 128, i64 %3, !dbg !3991
  br label %15, !dbg !3991

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !3992
  %10 = add nuw i64 %9, 1, !dbg !3992
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #37, !dbg !3992
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !3992
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !3992
  call void @llvm.dbg.value(metadata i64 %13, metadata !409, metadata !DIExpression()) #37, !dbg !3982
  br i1 %12, label %14, label %15, !dbg !3995

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !3996
  unreachable, !dbg !3996

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !3982
  call void @llvm.dbg.value(metadata i64 %16, metadata !409, metadata !DIExpression()) #37, !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #37, !dbg !3997
  call void @llvm.dbg.value(metadata i64 %16, metadata !3805, metadata !DIExpression()) #37, !dbg !3997
  call void @llvm.dbg.value(metadata i64 1, metadata !3806, metadata !DIExpression()) #37, !dbg !3997
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !3999
  call void @llvm.dbg.value(metadata i8* %17, metadata !3810, metadata !DIExpression()) #37, !dbg !4000
  %18 = icmp eq i8* %17, null, !dbg !4002
  br i1 %18, label %19, label %20, !dbg !4003

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4004
  unreachable, !dbg !4004

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !406, metadata !DIExpression()) #37, !dbg !3982
  store i64 %16, i64* %1, align 8, !dbg !4005, !tbaa !923
  ret i8* %17, !dbg !4006
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #19 !dbg !401 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !406, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64* %1, metadata !407, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i64 %2, metadata !408, metadata !DIExpression()), !dbg !4007
  %4 = load i64, i64* %1, align 8, !dbg !4008, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %4, metadata !409, metadata !DIExpression()), !dbg !4007
  %5 = icmp eq i8* %0, null, !dbg !4009
  br i1 %5, label %6, label %13, !dbg !4010

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4011
  br i1 %7, label %8, label %20, !dbg !4012

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4013
  call void @llvm.dbg.value(metadata i64 %9, metadata !409, metadata !DIExpression()), !dbg !4007
  %10 = icmp ugt i64 %2, 128, !dbg !4015
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4016
  call void @llvm.dbg.value(metadata i64 %12, metadata !409, metadata !DIExpression()), !dbg !4007
  br label %20, !dbg !4017

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4018
  %15 = add nuw i64 %14, 1, !dbg !4018
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4018
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4018
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4018
  call void @llvm.dbg.value(metadata i64 %18, metadata !409, metadata !DIExpression()), !dbg !4007
  br i1 %17, label %19, label %20, !dbg !4019

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4020
  unreachable, !dbg !4020

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4007
  call void @llvm.dbg.value(metadata i64 %21, metadata !409, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata i8* %0, metadata !3802, metadata !DIExpression()) #37, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %21, metadata !3805, metadata !DIExpression()) #37, !dbg !4021
  call void @llvm.dbg.value(metadata i64 %2, metadata !3806, metadata !DIExpression()) #37, !dbg !4021
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4023
  call void @llvm.dbg.value(metadata i8* %22, metadata !3810, metadata !DIExpression()) #37, !dbg !4024
  %23 = icmp eq i8* %22, null, !dbg !4026
  br i1 %23, label %24, label %25, !dbg !4027

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4028
  unreachable, !dbg !4028

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !406, metadata !DIExpression()), !dbg !4007
  store i64 %21, i64* %1, align 8, !dbg !4029, !tbaa !923
  ret i8* %22, !dbg !4030
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #19 !dbg !413 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !421, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64* %1, metadata !422, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %2, metadata !423, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %3, metadata !424, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %4, metadata !425, metadata !DIExpression()), !dbg !4031
  %6 = load i64, i64* %1, align 8, !dbg !4032, !tbaa !923
  call void @llvm.dbg.value(metadata i64 %6, metadata !426, metadata !DIExpression()), !dbg !4031
  %7 = ashr i64 %6, 1, !dbg !4033
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4033
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4033
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4033
  call void @llvm.dbg.value(metadata i64 %10, metadata !427, metadata !DIExpression()), !dbg !4031
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4035
  call void @llvm.dbg.value(metadata i64 %11, metadata !427, metadata !DIExpression()), !dbg !4031
  %12 = icmp sgt i64 %3, -1, !dbg !4036
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4038
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4038
  call void @llvm.dbg.value(metadata i64 %15, metadata !427, metadata !DIExpression()), !dbg !4031
  %16 = icmp slt i64 %4, 0, !dbg !4039
  br i1 %16, label %17, label %30, !dbg !4039

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4039
  br i1 %18, label %19, label %24, !dbg !4039

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4039
  %21 = udiv i64 9223372036854775807, %20, !dbg !4039
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4039
  br i1 %23, label %46, label %43, !dbg !4039

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4039
  br i1 %25, label %43, label %26, !dbg !4039

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4039
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4039
  %29 = icmp ult i64 %28, %15, !dbg !4039
  br i1 %29, label %46, label %43, !dbg !4039

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4039
  br i1 %31, label %43, label %32, !dbg !4039

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4039
  br i1 %33, label %34, label %40, !dbg !4039

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4039
  br i1 %35, label %43, label %36, !dbg !4039

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4039
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4039
  %39 = icmp ult i64 %38, %4, !dbg !4039
  br i1 %39, label %46, label %43, !dbg !4039

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4039
  %42 = icmp ult i64 %41, %15, !dbg !4039
  br i1 %42, label %46, label %43, !dbg !4039

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !428, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4031
  %44 = mul i64 %15, %4, !dbg !4039
  call void @llvm.dbg.value(metadata i64 %44, metadata !428, metadata !DIExpression()), !dbg !4031
  %45 = icmp slt i64 %44, 128, !dbg !4039
  br i1 %45, label %46, label %52, !dbg !4039

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !429, metadata !DIExpression()), !dbg !4031
  %48 = sdiv i64 %47, %4, !dbg !4040
  call void @llvm.dbg.value(metadata i64 %48, metadata !427, metadata !DIExpression()), !dbg !4031
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4043
  call void @llvm.dbg.value(metadata i64 %51, metadata !428, metadata !DIExpression()), !dbg !4031
  br label %52, !dbg !4044

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4031
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4031
  call void @llvm.dbg.value(metadata i64 %54, metadata !428, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %53, metadata !427, metadata !DIExpression()), !dbg !4031
  %55 = icmp eq i8* %0, null, !dbg !4045
  br i1 %55, label %56, label %57, !dbg !4047

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4048, !tbaa !923
  br label %57, !dbg !4049

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4050
  %59 = icmp slt i64 %58, %2, !dbg !4052
  br i1 %59, label %60, label %97, !dbg !4053

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4054
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4054
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4054
  call void @llvm.dbg.value(metadata i64 %63, metadata !427, metadata !DIExpression()), !dbg !4031
  br i1 %62, label %96, label %64, !dbg !4055

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4056
  br i1 %66, label %96, label %67, !dbg !4056

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4057

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4057
  br i1 %69, label %70, label %75, !dbg !4057

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4057
  %72 = udiv i64 9223372036854775807, %71, !dbg !4057
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4057
  br i1 %74, label %96, label %94, !dbg !4057

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4057
  br i1 %76, label %94, label %77, !dbg !4057

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4057
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4057
  %80 = icmp ult i64 %79, %63, !dbg !4057
  br i1 %80, label %96, label %94, !dbg !4057

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4057
  br i1 %82, label %94, label %83, !dbg !4057

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4057
  br i1 %84, label %85, label %91, !dbg !4057

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4057
  br i1 %86, label %94, label %87, !dbg !4057

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4057
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4057
  %90 = icmp ult i64 %89, %4, !dbg !4057
  br i1 %90, label %96, label %94, !dbg !4057

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4057
  %93 = icmp ult i64 %92, %63, !dbg !4057
  br i1 %93, label %96, label %94, !dbg !4057

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !428, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4031
  %95 = mul i64 %63, %4, !dbg !4057
  call void @llvm.dbg.value(metadata i64 %95, metadata !428, metadata !DIExpression()), !dbg !4031
  br label %97, !dbg !4058

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #39, !dbg !4059
  unreachable, !dbg !4059

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4031
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4031
  call void @llvm.dbg.value(metadata i64 %99, metadata !428, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i64 %98, metadata !427, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.value(metadata i8* %0, metadata !3878, metadata !DIExpression()) #37, !dbg !4060
  call void @llvm.dbg.value(metadata i64 %99, metadata !3879, metadata !DIExpression()) #37, !dbg !4060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3881, metadata !DIExpression()) #37, !dbg !4062
  call void @llvm.dbg.value(metadata i64 %99, metadata !3885, metadata !DIExpression()) #37, !dbg !4062
  %100 = icmp eq i64 %99, 0, !dbg !4064
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4064
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #37, !dbg !4065
  call void @llvm.dbg.value(metadata i8* %102, metadata !3810, metadata !DIExpression()) #37, !dbg !4066
  %103 = icmp eq i8* %102, null, !dbg !4068
  br i1 %103, label %104, label %105, !dbg !4069

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !4070
  unreachable, !dbg !4070

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !421, metadata !DIExpression()), !dbg !4031
  store i64 %98, i64* %1, align 8, !dbg !4071, !tbaa !923
  ret i8* %102, !dbg !4072
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4073 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i64 %0, metadata !4077, metadata !DIExpression()) #37, !dbg !4081
  call void @llvm.dbg.value(metadata i64 1, metadata !4080, metadata !DIExpression()) #37, !dbg !4081
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37, !dbg !4083
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #37, !dbg !4084
  %3 = icmp eq i8* %2, null, !dbg !4086
  br i1 %3, label %4, label %5, !dbg !4087

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4088
  unreachable, !dbg !4088

5:                                                ; preds = %1
  ret i8* %2, !dbg !4089
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4078 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4077, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.value(metadata i64 %1, metadata !4080, metadata !DIExpression()), !dbg !4090
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37, !dbg !4091
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !4092
  %4 = icmp eq i8* %3, null, !dbg !4094
  br i1 %4, label %5, label %6, !dbg !4095

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4096
  unreachable, !dbg !4096

6:                                                ; preds = %2
  ret i8* %3, !dbg !4097
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4098 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4100, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64 %0, metadata !4102, metadata !DIExpression()) #37, !dbg !4106
  call void @llvm.dbg.value(metadata i64 1, metadata !4105, metadata !DIExpression()) #37, !dbg !4106
  call void @llvm.dbg.value(metadata i64 %0, metadata !4108, metadata !DIExpression()) #37, !dbg !4112
  call void @llvm.dbg.value(metadata i64 1, metadata !4111, metadata !DIExpression()) #37, !dbg !4112
  call void @llvm.dbg.value(metadata i64 %0, metadata !4108, metadata !DIExpression()) #37, !dbg !4112
  call void @llvm.dbg.value(metadata i64 1, metadata !4111, metadata !DIExpression()) #37, !dbg !4112
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37, !dbg !4114
  call void @llvm.dbg.value(metadata i8* %2, metadata !3810, metadata !DIExpression()) #37, !dbg !4115
  %3 = icmp eq i8* %2, null, !dbg !4117
  br i1 %3, label %4, label %5, !dbg !4118

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4119
  unreachable, !dbg !4119

5:                                                ; preds = %1
  ret i8* %2, !dbg !4120
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4103 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4102, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %1, metadata !4105, metadata !DIExpression()), !dbg !4121
  call void @llvm.dbg.value(metadata i64 %0, metadata !4108, metadata !DIExpression()) #37, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()) #37, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %0, metadata !4108, metadata !DIExpression()) #37, !dbg !4122
  call void @llvm.dbg.value(metadata i64 %1, metadata !4111, metadata !DIExpression()) #37, !dbg !4122
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37, !dbg !4124
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !4125
  %4 = icmp eq i8* %3, null, !dbg !4127
  br i1 %4, label %5, label %6, !dbg !4128

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4129
  unreachable, !dbg !4129

6:                                                ; preds = %2
  ret i8* %3, !dbg !4130
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4131 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4135, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !4136, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.value(metadata i64 %1, metadata !3834, metadata !DIExpression()) #37, !dbg !4138
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37, !dbg !4140
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !4141
  %4 = icmp eq i8* %3, null, !dbg !4143
  br i1 %4, label %5, label %6, !dbg !4144

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4145
  unreachable, !dbg !4145

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4146, metadata !DIExpression()) #37, !dbg !4154
  call void @llvm.dbg.value(metadata i8* %0, metadata !4152, metadata !DIExpression()) #37, !dbg !4154
  call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()) #37, !dbg !4154
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4156
  ret i8* %3, !dbg !4157
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4158 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4162, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %1, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.value(metadata i64 %1, metadata !3845, metadata !DIExpression()) #37, !dbg !4165
  call void @llvm.dbg.value(metadata i64 %1, metadata !3847, metadata !DIExpression()) #37, !dbg !4167
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37, !dbg !4169
  call void @llvm.dbg.value(metadata i8* %3, metadata !3810, metadata !DIExpression()) #37, !dbg !4170
  %4 = icmp eq i8* %3, null, !dbg !4172
  br i1 %4, label %5, label %6, !dbg !4173

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4174
  unreachable, !dbg !4174

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4146, metadata !DIExpression()) #37, !dbg !4175
  call void @llvm.dbg.value(metadata i8* %0, metadata !4152, metadata !DIExpression()) #37, !dbg !4175
  call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()) #37, !dbg !4175
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4177
  ret i8* %3, !dbg !4178
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #19 !dbg !4179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 %1, metadata !4184, metadata !DIExpression()), !dbg !4186
  %3 = add nsw i64 %1, 1, !dbg !4187
  call void @llvm.dbg.value(metadata i64 %3, metadata !3845, metadata !DIExpression()) #37, !dbg !4188
  call void @llvm.dbg.value(metadata i64 %3, metadata !3847, metadata !DIExpression()) #37, !dbg !4190
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37, !dbg !4192
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #37, !dbg !4193
  %5 = icmp eq i8* %4, null, !dbg !4195
  br i1 %5, label %6, label %7, !dbg !4196

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4197
  unreachable, !dbg !4197

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4185, metadata !DIExpression()), !dbg !4186
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4198
  store i8 0, i8* %8, align 1, !dbg !4199, !tbaa !581
  call void @llvm.dbg.value(metadata i8* %4, metadata !4146, metadata !DIExpression()) #37, !dbg !4200
  call void @llvm.dbg.value(metadata i8* %0, metadata !4152, metadata !DIExpression()) #37, !dbg !4200
  call void @llvm.dbg.value(metadata i64 %1, metadata !4153, metadata !DIExpression()) #37, !dbg !4200
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4202
  ret i8* %4, !dbg !4203
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #19 !dbg !4204 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4206, metadata !DIExpression()), !dbg !4207
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #38, !dbg !4208
  %3 = add i64 %2, 1, !dbg !4209
  call void @llvm.dbg.value(metadata i8* %0, metadata !4135, metadata !DIExpression()) #37, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %3, metadata !4136, metadata !DIExpression()) #37, !dbg !4210
  call void @llvm.dbg.value(metadata i64 %3, metadata !3834, metadata !DIExpression()) #37, !dbg !4212
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37, !dbg !4214
  call void @llvm.dbg.value(metadata i8* %4, metadata !3810, metadata !DIExpression()) #37, !dbg !4215
  %5 = icmp eq i8* %4, null, !dbg !4217
  br i1 %5, label %6, label %7, !dbg !4218

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4219
  unreachable, !dbg !4219

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4146, metadata !DIExpression()) #37, !dbg !4220
  call void @llvm.dbg.value(metadata i8* %0, metadata !4152, metadata !DIExpression()) #37, !dbg !4220
  call void @llvm.dbg.value(metadata i64 %3, metadata !4153, metadata !DIExpression()) #37, !dbg !4220
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4222
  ret i8* %4, !dbg !4223
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4224 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4229, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %1, metadata !4226, metadata !DIExpression()), !dbg !4230
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.161, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.162, i64 0, i64 0), i32 noundef 5) #37, !dbg !4229
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.163, i64 0, i64 0), i8* noundef %2) #37, !dbg !4229
  %3 = icmp eq i32 %1, 0, !dbg !4229
  tail call void @llvm.assume(i1 %3), !dbg !4229
  tail call void @abort() #39, !dbg !4231
  unreachable, !dbg !4231
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #19 !dbg !4232 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4238, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i8** %1, metadata !4239, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 %2, metadata !4240, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64* %3, metadata !4241, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i8* %4, metadata !4242, metadata !DIExpression()), !dbg !4252
  %7 = bitcast i8** %6 to i8*, !dbg !4253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #37, !dbg !4253
  %8 = icmp eq i8** %1, null, !dbg !4254
  %9 = select i1 %8, i8** %6, i8** %1, !dbg !4254
  call void @llvm.dbg.value(metadata i8** %9, metadata !4244, metadata !DIExpression()), !dbg !4252
  %10 = tail call i32* @__errno_location() #40, !dbg !4255
  store i32 0, i32* %10, align 4, !dbg !4256, !tbaa !572
  %11 = call i64 @strtoimax(i8* noundef %0, i8** noundef %9, i32 noundef %2) #37, !dbg !4257
  call void @llvm.dbg.value(metadata i64 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i32 0, metadata !4246, metadata !DIExpression()), !dbg !4252
  %12 = load i8*, i8** %9, align 8, !dbg !4258, !tbaa !476
  %13 = icmp eq i8* %12, %0, !dbg !4260
  br i1 %13, label %14, label %23, !dbg !4261

14:                                               ; preds = %5
  %15 = icmp eq i8* %4, null, !dbg !4262
  br i1 %15, label %1077, label %16, !dbg !4265

16:                                               ; preds = %14
  %17 = load i8, i8* %0, align 1, !dbg !4266, !tbaa !581
  %18 = icmp eq i8 %17, 0, !dbg !4266
  br i1 %18, label %1077, label %19, !dbg !4267

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !4266
  %21 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %20) #38, !dbg !4268
  %22 = icmp eq i8* %21, null, !dbg !4268
  br i1 %22, label %1077, label %30, !dbg !4269

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !4270, !tbaa !572
  switch i32 %24, label %1077 [
    i32 0, label %26
    i32 34, label %25
  ], !dbg !4272

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !4246, metadata !DIExpression()), !dbg !4252
  br label %26, !dbg !4273

26:                                               ; preds = %23, %25
  %27 = phi i32 [ 1, %25 ], [ %24, %23 ], !dbg !4252
  call void @llvm.dbg.value(metadata i32 %27, metadata !4246, metadata !DIExpression()), !dbg !4252
  %28 = icmp eq i8* %4, null, !dbg !4275
  br i1 %28, label %29, label %30, !dbg !4277

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  store i64 %11, i64* %3, align 8, !dbg !4278, !tbaa !923
  br label %1077, !dbg !4280

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %32 = phi i64 [ %11, %26 ], [ 1, %19 ]
  %33 = load i8, i8* %12, align 1, !dbg !4281, !tbaa !581
  %34 = icmp eq i8 %33, 0, !dbg !4282
  br i1 %34, label %1074, label %35, !dbg !4283

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32, !dbg !4281
  %37 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %36) #38, !dbg !4284
  %38 = icmp eq i8* %37, null, !dbg !4284
  br i1 %38, label %39, label %41, !dbg !4286

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  store i64 %32, i64* %3, align 8, !dbg !4287, !tbaa !923
  %40 = or i32 %31, 2, !dbg !4289
  br label %1077, !dbg !4290

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4247, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 1, metadata !4250, metadata !DIExpression()), !dbg !4291
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
  ], !dbg !4292

42:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %43 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #38, !dbg !4293
  %44 = icmp eq i8* %43, null, !dbg !4293
  br i1 %44, label %54, label %45, !dbg !4296

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4297
  %47 = load i8, i8* %46, align 1, !dbg !4297, !tbaa !581
  switch i8 %47, label %54 [
    i8 105, label %48
    i8 66, label %53
    i8 68, label %53
  ], !dbg !4298

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !4299
  %50 = load i8, i8* %49, align 1, !dbg !4299, !tbaa !581
  %51 = icmp eq i8 %50, 66, !dbg !4302
  %52 = select i1 %51, i64 3, i64 1, !dbg !4303
  br label %54, !dbg !4303

53:                                               ; preds = %45, %45
  call void @llvm.dbg.value(metadata i32 1000, metadata !4247, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 2, metadata !4250, metadata !DIExpression()), !dbg !4291
  br label %54, !dbg !4304

54:                                               ; preds = %48, %42, %45, %53, %41
  %55 = phi i64 [ 1024, %41 ], [ 1024, %45 ], [ 1000, %53 ], [ 1024, %42 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %41 ], [ 1, %45 ], [ 2, %53 ], [ 1, %42 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4250, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.value(metadata i32 undef, metadata !4247, metadata !DIExpression()), !dbg !4291
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
  ], !dbg !4305

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 7, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 6, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %58 = icmp slt i64 %32, 0, !dbg !4326
  br i1 %58, label %939, label %945, !dbg !4326

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 8, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 7, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %60 = icmp slt i64 %32, 0, !dbg !4332
  br i1 %60, label %795, label %801, !dbg !4332

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 9, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 8, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %62 = icmp slt i64 %32, 0, !dbg !4337
  br i1 %62, label %556, label %562, !dbg !4337

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 10, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 9, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %64 = icmp slt i64 %32, 0, !dbg !4342
  br i1 %64, label %372, label %378, !dbg !4342

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  %66 = icmp slt i64 %32, 0, !dbg !4347
  br i1 %66, label %288, label %294, !dbg !4347

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 6, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %68 = icmp slt i64 %32, 0, !dbg !4352
  br i1 %68, label %87, label %93, !dbg !4352

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4353
  call void @llvm.dbg.value(metadata i32 512, metadata !4322, metadata !DIExpression()), !dbg !4353
  %70 = icmp slt i64 %32, 0, !dbg !4355
  br i1 %70, label %71, label %74, !dbg !4355

71:                                               ; preds = %69
  %72 = add i64 %32, -1, !dbg !4355
  %73 = icmp ult i64 %72, -18014398509481985, !dbg !4355
  br i1 %73, label %1063, label %76, !dbg !4355

74:                                               ; preds = %69
  %75 = icmp ugt i64 %32, 18014398509481983, !dbg !4355
  br i1 %75, label %1063, label %76, !dbg !4355

76:                                               ; preds = %74, %71
  %77 = shl nsw i64 %32, 9, !dbg !4355
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 512), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4353
  br label %1063, !dbg !4356

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4357
  call void @llvm.dbg.value(metadata i32 1024, metadata !4322, metadata !DIExpression()), !dbg !4357
  %79 = icmp slt i64 %32, 0, !dbg !4359
  br i1 %79, label %80, label %83, !dbg !4359

80:                                               ; preds = %78
  %81 = add i64 %32, -1, !dbg !4359
  %82 = icmp ult i64 %81, -9007199254740993, !dbg !4359
  br i1 %82, label %1063, label %85, !dbg !4359

83:                                               ; preds = %78
  %84 = icmp ugt i64 %32, 9007199254740991, !dbg !4359
  br i1 %84, label %1063, label %85, !dbg !4359

85:                                               ; preds = %83, %80
  %86 = shl nsw i64 %32, 10, !dbg !4359
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 1024), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4357
  br label %1063, !dbg !4360

87:                                               ; preds = %67
  %88 = icmp eq i64 %32, -1, !dbg !4352
  br i1 %88, label %96, label %89, !dbg !4352

89:                                               ; preds = %87
  %90 = sub i64 0, %32, !dbg !4352
  %91 = udiv i64 -9223372036854775808, %90, !dbg !4352
  %92 = icmp ult i64 %91, %55, !dbg !4352
  br i1 %92, label %104, label %96, !dbg !4352

93:                                               ; preds = %67
  %94 = udiv i64 9223372036854775807, %55, !dbg !4352
  %95 = icmp ult i64 %94, %32, !dbg !4352
  br i1 %95, label %99, label %96, !dbg !4352

96:                                               ; preds = %87, %89, %93
  %97 = mul i64 %32, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %98 = icmp slt i64 %97, 0, !dbg !4352
  br i1 %98, label %104, label %99, !dbg !4352

99:                                               ; preds = %93, %96
  %100 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %101 = phi i64 [ %97, %96 ], [ 9223372036854775807, %93 ]
  %102 = udiv i64 9223372036854775807, %55, !dbg !4352
  %103 = icmp ult i64 %102, %101, !dbg !4352
  br i1 %103, label %115, label %110, !dbg !4352

104:                                              ; preds = %89, %96
  %105 = phi i32 [ 0, %96 ], [ 1, %89 ]
  %106 = phi i64 [ %97, %96 ], [ -9223372036854775808, %89 ]
  %107 = sub i64 0, %106, !dbg !4352
  %108 = udiv i64 -9223372036854775808, %107, !dbg !4352
  %109 = icmp slt i64 %108, %55, !dbg !4352
  br i1 %109, label %120, label %110, !dbg !4352

110:                                              ; preds = %99, %104
  %111 = phi i32 [ %105, %104 ], [ %100, %99 ]
  %112 = phi i64 [ %106, %104 ], [ %101, %99 ]
  %113 = mul i64 %112, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %97, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %111, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %114 = icmp slt i64 %113, 0, !dbg !4352
  br i1 %114, label %120, label %115, !dbg !4352

115:                                              ; preds = %99, %110
  %116 = phi i32 [ %111, %110 ], [ 1, %99 ]
  %117 = phi i64 [ %113, %110 ], [ 9223372036854775807, %99 ]
  %118 = udiv i64 9223372036854775807, %55, !dbg !4352
  %119 = icmp ult i64 %118, %117, !dbg !4352
  br i1 %119, label %131, label %126, !dbg !4352

120:                                              ; preds = %104, %110
  %121 = phi i32 [ %111, %110 ], [ 1, %104 ]
  %122 = phi i64 [ %113, %110 ], [ -9223372036854775808, %104 ]
  %123 = sub i64 0, %122, !dbg !4352
  %124 = udiv i64 -9223372036854775808, %123, !dbg !4352
  %125 = icmp slt i64 %124, %55, !dbg !4352
  br i1 %125, label %138, label %126, !dbg !4352

126:                                              ; preds = %115, %120
  %127 = phi i32 [ %121, %120 ], [ %116, %115 ]
  %128 = phi i64 [ %122, %120 ], [ %117, %115 ]
  %129 = mul i64 %128, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %113, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %127, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %130 = icmp slt i64 %129, 0, !dbg !4352
  br i1 %130, label %138, label %131, !dbg !4352

131:                                              ; preds = %115, %126
  %132 = phi i32 [ %127, %126 ], [ 1, %115 ]
  %133 = phi i64 [ %129, %126 ], [ 9223372036854775807, %115 ]
  %134 = udiv i64 9223372036854775807, %55, !dbg !4352
  %135 = icmp ult i64 %134, %133, !dbg !4352
  br i1 %135, label %136, label %146, !dbg !4352

136:                                              ; preds = %131
  %137 = or i32 %132, 1, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %147, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  br label %151, !dbg !4352

138:                                              ; preds = %120, %126
  %139 = phi i32 [ %127, %126 ], [ 1, %120 ]
  %140 = phi i64 [ %129, %126 ], [ -9223372036854775808, %120 ]
  %141 = sub i64 0, %140, !dbg !4352
  %142 = udiv i64 -9223372036854775808, %141, !dbg !4352
  %143 = icmp slt i64 %142, %55, !dbg !4352
  br i1 %143, label %144, label %146, !dbg !4352

144:                                              ; preds = %138
  %145 = or i32 %139, 1, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %147, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  br label %158, !dbg !4352

146:                                              ; preds = %131, %138
  %147 = phi i32 [ %139, %138 ], [ %132, %131 ]
  %148 = phi i64 [ %140, %138 ], [ %133, %131 ]
  %149 = mul i64 %148, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %129, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %147, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %150 = icmp slt i64 %149, 0, !dbg !4352
  br i1 %150, label %158, label %151, !dbg !4352

151:                                              ; preds = %136, %146
  %152 = phi i32 [ %137, %136 ], [ %147, %146 ]
  %153 = phi i64 [ 9223372036854775807, %136 ], [ %149, %146 ]
  %154 = udiv i64 9223372036854775807, %55, !dbg !4352
  %155 = icmp ult i64 %154, %153, !dbg !4352
  br i1 %155, label %156, label %166, !dbg !4352

156:                                              ; preds = %151
  %157 = or i32 %152, 1, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %167, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  br label %171, !dbg !4352

158:                                              ; preds = %146, %144
  %159 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %160 = phi i64 [ -9223372036854775808, %144 ], [ %149, %146 ]
  %161 = sub i64 0, %160, !dbg !4352
  %162 = udiv i64 -9223372036854775808, %161, !dbg !4352
  %163 = icmp slt i64 %162, %55, !dbg !4352
  br i1 %163, label %164, label %166, !dbg !4352

164:                                              ; preds = %158
  %165 = or i32 %159, 1, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %167, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  br label %176, !dbg !4352

166:                                              ; preds = %151, %158
  %167 = phi i32 [ %159, %158 ], [ %152, %151 ]
  %168 = phi i64 [ %160, %158 ], [ %153, %151 ]
  %169 = mul i64 %168, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %149, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  call void @llvm.dbg.value(metadata i32 %167, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4350
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4350
  %170 = icmp slt i64 %169, 0, !dbg !4352
  br i1 %170, label %176, label %171, !dbg !4352

171:                                              ; preds = %156, %166
  %172 = phi i32 [ %157, %156 ], [ %167, %166 ]
  %173 = phi i64 [ 9223372036854775807, %156 ], [ %169, %166 ]
  %174 = udiv i64 9223372036854775807, %55, !dbg !4352
  %175 = icmp ult i64 %174, %173, !dbg !4352
  br i1 %175, label %186, label %182, !dbg !4352

176:                                              ; preds = %166, %164
  %177 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %178 = phi i64 [ -9223372036854775808, %164 ], [ %169, %166 ]
  %179 = sub i64 0, %178, !dbg !4352
  %180 = udiv i64 -9223372036854775808, %179, !dbg !4352
  %181 = icmp slt i64 %180, %55, !dbg !4352
  br i1 %181, label %186, label %182, !dbg !4352

182:                                              ; preds = %176, %171
  %183 = phi i32 [ %177, %176 ], [ %172, %171 ]
  %184 = phi i64 [ %178, %176 ], [ %173, %171 ]
  %185 = mul i64 %184, %55, !dbg !4352
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4350
  br label %186, !dbg !4362

186:                                              ; preds = %182, %176, %171
  %187 = phi i32 [ %183, %182 ], [ %172, %171 ], [ %177, %176 ]
  %188 = phi i64 [ %185, %182 ], [ 9223372036854775807, %171 ], [ -9223372036854775808, %176 ], !dbg !4350
  %189 = phi i32 [ 0, %182 ], [ 1, %171 ], [ 1, %176 ], !dbg !4350
  %190 = or i32 %189, %187, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %190, metadata !4306, metadata !DIExpression()), !dbg !4348
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4348
  br label %1063, !dbg !4363

191:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4311, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 undef, metadata !4312, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4366
  %192 = icmp slt i64 %32, 0, !dbg !4368
  br i1 %192, label %193, label %199, !dbg !4368

193:                                              ; preds = %191
  %194 = icmp eq i64 %32, -1, !dbg !4368
  br i1 %194, label %202, label %195, !dbg !4368

195:                                              ; preds = %193
  %196 = sub i64 0, %32, !dbg !4368
  %197 = udiv i64 -9223372036854775808, %196, !dbg !4368
  %198 = icmp ult i64 %197, %55, !dbg !4368
  br i1 %198, label %210, label %202, !dbg !4368

199:                                              ; preds = %191
  %200 = udiv i64 9223372036854775807, %55, !dbg !4368
  %201 = icmp ult i64 %200, %32, !dbg !4368
  br i1 %201, label %205, label %202, !dbg !4368

202:                                              ; preds = %193, %195, %199
  %203 = mul i64 %32, %55, !dbg !4368
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4366
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4366
  %204 = icmp slt i64 %203, 0, !dbg !4368
  br i1 %204, label %210, label %205, !dbg !4368

205:                                              ; preds = %199, %202
  %206 = phi i32 [ 0, %202 ], [ 1, %199 ]
  %207 = phi i64 [ %203, %202 ], [ 9223372036854775807, %199 ]
  %208 = udiv i64 9223372036854775807, %55, !dbg !4368
  %209 = icmp ult i64 %208, %207, !dbg !4368
  br i1 %209, label %221, label %216, !dbg !4368

210:                                              ; preds = %195, %202
  %211 = phi i32 [ 0, %202 ], [ 1, %195 ]
  %212 = phi i64 [ %203, %202 ], [ -9223372036854775808, %195 ]
  %213 = sub i64 0, %212, !dbg !4368
  %214 = udiv i64 -9223372036854775808, %213, !dbg !4368
  %215 = icmp slt i64 %214, %55, !dbg !4368
  br i1 %215, label %226, label %216, !dbg !4368

216:                                              ; preds = %205, %210
  %217 = phi i32 [ %211, %210 ], [ %206, %205 ]
  %218 = phi i64 [ %212, %210 ], [ %207, %205 ]
  %219 = mul i64 %218, %55, !dbg !4368
  call void @llvm.dbg.value(metadata !DIArgList(i64 %203, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4366
  call void @llvm.dbg.value(metadata i32 %217, metadata !4306, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4366
  %220 = icmp slt i64 %219, 0, !dbg !4368
  br i1 %220, label %226, label %221, !dbg !4368

221:                                              ; preds = %205, %216
  %222 = phi i32 [ %217, %216 ], [ 1, %205 ]
  %223 = phi i64 [ %219, %216 ], [ 9223372036854775807, %205 ]
  %224 = udiv i64 9223372036854775807, %55, !dbg !4368
  %225 = icmp ult i64 %224, %223, !dbg !4368
  br i1 %225, label %236, label %232, !dbg !4368

226:                                              ; preds = %210, %216
  %227 = phi i32 [ %217, %216 ], [ 1, %210 ]
  %228 = phi i64 [ %219, %216 ], [ -9223372036854775808, %210 ]
  %229 = sub i64 0, %228, !dbg !4368
  %230 = udiv i64 -9223372036854775808, %229, !dbg !4368
  %231 = icmp slt i64 %230, %55, !dbg !4368
  br i1 %231, label %236, label %232, !dbg !4368

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %227, %226 ], [ %222, %221 ]
  %234 = phi i64 [ %228, %226 ], [ %223, %221 ]
  %235 = mul i64 %234, %55, !dbg !4368
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4366
  br label %236, !dbg !4369

236:                                              ; preds = %232, %226, %221
  %237 = phi i32 [ %233, %232 ], [ %222, %221 ], [ %227, %226 ]
  %238 = phi i64 [ %235, %232 ], [ 9223372036854775807, %221 ], [ -9223372036854775808, %226 ], !dbg !4366
  %239 = phi i32 [ 0, %232 ], [ 1, %221 ], [ 1, %226 ], !dbg !4366
  %240 = or i32 %239, %237, !dbg !4370
  call void @llvm.dbg.value(metadata i32 %240, metadata !4306, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4364
  br label %1063, !dbg !4363

241:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4311, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i32 undef, metadata !4312, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i32 undef, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4371
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4373
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4373
  %242 = icmp slt i64 %32, 0, !dbg !4375
  br i1 %242, label %243, label %249, !dbg !4375

243:                                              ; preds = %241
  %244 = icmp eq i64 %32, -1, !dbg !4375
  br i1 %244, label %252, label %245, !dbg !4375

245:                                              ; preds = %243
  %246 = sub i64 0, %32, !dbg !4375
  %247 = udiv i64 -9223372036854775808, %246, !dbg !4375
  %248 = icmp ult i64 %247, %55, !dbg !4375
  br i1 %248, label %1063, label %252, !dbg !4375

249:                                              ; preds = %241
  %250 = udiv i64 9223372036854775807, %55, !dbg !4375
  %251 = icmp ult i64 %250, %32, !dbg !4375
  br i1 %251, label %1063, label %252, !dbg !4375

252:                                              ; preds = %249, %245, %243
  %253 = mul i64 %32, %55, !dbg !4375
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4373
  br label %1063, !dbg !4376

254:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4311, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 undef, metadata !4312, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4379
  %255 = icmp slt i64 %32, 0, !dbg !4381
  br i1 %255, label %256, label %262, !dbg !4381

256:                                              ; preds = %254
  %257 = icmp eq i64 %32, -1, !dbg !4381
  br i1 %257, label %265, label %258, !dbg !4381

258:                                              ; preds = %256
  %259 = sub i64 0, %32, !dbg !4381
  %260 = udiv i64 -9223372036854775808, %259, !dbg !4381
  %261 = icmp ult i64 %260, %55, !dbg !4381
  br i1 %261, label %273, label %265, !dbg !4381

262:                                              ; preds = %254
  %263 = udiv i64 9223372036854775807, %55, !dbg !4381
  %264 = icmp ult i64 %263, %32, !dbg !4381
  br i1 %264, label %268, label %265, !dbg !4381

265:                                              ; preds = %256, %258, %262
  %266 = mul i64 %32, %55, !dbg !4381
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4379
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4379
  %267 = icmp slt i64 %266, 0, !dbg !4381
  br i1 %267, label %273, label %268, !dbg !4381

268:                                              ; preds = %262, %265
  %269 = phi i32 [ 0, %265 ], [ 1, %262 ]
  %270 = phi i64 [ %266, %265 ], [ 9223372036854775807, %262 ]
  %271 = udiv i64 9223372036854775807, %55, !dbg !4381
  %272 = icmp ult i64 %271, %270, !dbg !4381
  br i1 %272, label %283, label %279, !dbg !4381

273:                                              ; preds = %258, %265
  %274 = phi i32 [ 0, %265 ], [ 1, %258 ]
  %275 = phi i64 [ %266, %265 ], [ -9223372036854775808, %258 ]
  %276 = sub i64 0, %275, !dbg !4381
  %277 = udiv i64 -9223372036854775808, %276, !dbg !4381
  %278 = icmp slt i64 %277, %55, !dbg !4381
  br i1 %278, label %283, label %279, !dbg !4381

279:                                              ; preds = %273, %268
  %280 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %281 = phi i64 [ %275, %273 ], [ %270, %268 ]
  %282 = mul i64 %281, %55, !dbg !4381
  call void @llvm.dbg.value(metadata !DIArgList(i64 %266, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4379
  br label %283, !dbg !4382

283:                                              ; preds = %279, %273, %268
  %284 = phi i32 [ %280, %279 ], [ %269, %268 ], [ %274, %273 ]
  %285 = phi i64 [ %282, %279 ], [ 9223372036854775807, %268 ], [ -9223372036854775808, %273 ], !dbg !4379
  %286 = phi i32 [ 0, %279 ], [ 1, %268 ], [ 1, %273 ], !dbg !4379
  %287 = or i32 %286, %284, !dbg !4383
  call void @llvm.dbg.value(metadata i32 %287, metadata !4306, metadata !DIExpression()), !dbg !4377
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4377
  br label %1063, !dbg !4363

288:                                              ; preds = %65
  %289 = icmp eq i64 %32, -1, !dbg !4347
  br i1 %289, label %297, label %290, !dbg !4347

290:                                              ; preds = %288
  %291 = sub i64 0, %32, !dbg !4347
  %292 = udiv i64 -9223372036854775808, %291, !dbg !4347
  %293 = icmp ult i64 %292, %55, !dbg !4347
  br i1 %293, label %305, label %297, !dbg !4347

294:                                              ; preds = %65
  %295 = udiv i64 9223372036854775807, %55, !dbg !4347
  %296 = icmp ult i64 %295, %32, !dbg !4347
  br i1 %296, label %300, label %297, !dbg !4347

297:                                              ; preds = %288, %290, %294
  %298 = mul i64 %32, %55, !dbg !4347
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  %299 = icmp slt i64 %298, 0, !dbg !4347
  br i1 %299, label %305, label %300, !dbg !4347

300:                                              ; preds = %294, %297
  %301 = phi i32 [ 0, %297 ], [ 1, %294 ]
  %302 = phi i64 [ %298, %297 ], [ 9223372036854775807, %294 ]
  %303 = udiv i64 9223372036854775807, %55, !dbg !4347
  %304 = icmp ult i64 %303, %302, !dbg !4347
  br i1 %304, label %316, label %311, !dbg !4347

305:                                              ; preds = %290, %297
  %306 = phi i32 [ 0, %297 ], [ 1, %290 ]
  %307 = phi i64 [ %298, %297 ], [ -9223372036854775808, %290 ]
  %308 = sub i64 0, %307, !dbg !4347
  %309 = udiv i64 -9223372036854775808, %308, !dbg !4347
  %310 = icmp slt i64 %309, %55, !dbg !4347
  br i1 %310, label %321, label %311, !dbg !4347

311:                                              ; preds = %300, %305
  %312 = phi i32 [ %306, %305 ], [ %301, %300 ]
  %313 = phi i64 [ %307, %305 ], [ %302, %300 ]
  %314 = mul i64 %313, %55, !dbg !4347
  call void @llvm.dbg.value(metadata !DIArgList(i64 %298, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %312, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  %315 = icmp slt i64 %314, 0, !dbg !4347
  br i1 %315, label %321, label %316, !dbg !4347

316:                                              ; preds = %300, %311
  %317 = phi i32 [ %312, %311 ], [ 1, %300 ]
  %318 = phi i64 [ %314, %311 ], [ 9223372036854775807, %300 ]
  %319 = udiv i64 9223372036854775807, %55, !dbg !4347
  %320 = icmp ult i64 %319, %318, !dbg !4347
  br i1 %320, label %332, label %327, !dbg !4347

321:                                              ; preds = %305, %311
  %322 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %323 = phi i64 [ %314, %311 ], [ -9223372036854775808, %305 ]
  %324 = sub i64 0, %323, !dbg !4347
  %325 = udiv i64 -9223372036854775808, %324, !dbg !4347
  %326 = icmp slt i64 %325, %55, !dbg !4347
  br i1 %326, label %339, label %327, !dbg !4347

327:                                              ; preds = %316, %321
  %328 = phi i32 [ %322, %321 ], [ %317, %316 ]
  %329 = phi i64 [ %323, %321 ], [ %318, %316 ]
  %330 = mul i64 %329, %55, !dbg !4347
  call void @llvm.dbg.value(metadata !DIArgList(i64 %314, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %328, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  %331 = icmp slt i64 %330, 0, !dbg !4347
  br i1 %331, label %339, label %332, !dbg !4347

332:                                              ; preds = %316, %327
  %333 = phi i32 [ %328, %327 ], [ 1, %316 ]
  %334 = phi i64 [ %330, %327 ], [ 9223372036854775807, %316 ]
  %335 = udiv i64 9223372036854775807, %55, !dbg !4347
  %336 = icmp ult i64 %335, %334, !dbg !4347
  br i1 %336, label %337, label %347, !dbg !4347

337:                                              ; preds = %332
  %338 = or i32 %333, 1, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %348, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  br label %352, !dbg !4347

339:                                              ; preds = %321, %327
  %340 = phi i32 [ %328, %327 ], [ 1, %321 ]
  %341 = phi i64 [ %330, %327 ], [ -9223372036854775808, %321 ]
  %342 = sub i64 0, %341, !dbg !4347
  %343 = udiv i64 -9223372036854775808, %342, !dbg !4347
  %344 = icmp slt i64 %343, %55, !dbg !4347
  br i1 %344, label %345, label %347, !dbg !4347

345:                                              ; preds = %339
  %346 = or i32 %340, 1, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %348, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  br label %357, !dbg !4347

347:                                              ; preds = %332, %339
  %348 = phi i32 [ %340, %339 ], [ %333, %332 ]
  %349 = phi i64 [ %341, %339 ], [ %334, %332 ]
  %350 = mul i64 %349, %55, !dbg !4347
  call void @llvm.dbg.value(metadata !DIArgList(i64 %330, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4345
  call void @llvm.dbg.value(metadata i32 %348, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4345
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4345
  %351 = icmp slt i64 %350, 0, !dbg !4347
  br i1 %351, label %357, label %352, !dbg !4347

352:                                              ; preds = %337, %347
  %353 = phi i32 [ %338, %337 ], [ %348, %347 ]
  %354 = phi i64 [ 9223372036854775807, %337 ], [ %350, %347 ]
  %355 = udiv i64 9223372036854775807, %55, !dbg !4347
  %356 = icmp ult i64 %355, %354, !dbg !4347
  br i1 %356, label %367, label %363, !dbg !4347

357:                                              ; preds = %347, %345
  %358 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %359 = phi i64 [ -9223372036854775808, %345 ], [ %350, %347 ]
  %360 = sub i64 0, %359, !dbg !4347
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4347
  %362 = icmp slt i64 %361, %55, !dbg !4347
  br i1 %362, label %367, label %363, !dbg !4347

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %365 = phi i64 [ %359, %357 ], [ %354, %352 ]
  %366 = mul i64 %365, %55, !dbg !4347
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4345
  br label %367, !dbg !4385

367:                                              ; preds = %363, %357, %352
  %368 = phi i32 [ %364, %363 ], [ %353, %352 ], [ %358, %357 ]
  %369 = phi i64 [ %366, %363 ], [ 9223372036854775807, %352 ], [ -9223372036854775808, %357 ], !dbg !4345
  %370 = phi i32 [ 0, %363 ], [ 1, %352 ], [ 1, %357 ], !dbg !4345
  %371 = or i32 %370, %368, !dbg !4384
  call void @llvm.dbg.value(metadata i32 %371, metadata !4306, metadata !DIExpression()), !dbg !4343
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4343
  br label %1063, !dbg !4363

372:                                              ; preds = %63
  %373 = icmp eq i64 %32, -1, !dbg !4342
  br i1 %373, label %381, label %374, !dbg !4342

374:                                              ; preds = %372
  %375 = sub i64 0, %32, !dbg !4342
  %376 = udiv i64 -9223372036854775808, %375, !dbg !4342
  %377 = icmp ult i64 %376, %55, !dbg !4342
  br i1 %377, label %389, label %381, !dbg !4342

378:                                              ; preds = %63
  %379 = udiv i64 9223372036854775807, %55, !dbg !4342
  %380 = icmp ult i64 %379, %32, !dbg !4342
  br i1 %380, label %384, label %381, !dbg !4342

381:                                              ; preds = %372, %374, %378
  %382 = mul i64 %32, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 8, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %383 = icmp slt i64 %382, 0, !dbg !4342
  br i1 %383, label %389, label %384, !dbg !4342

384:                                              ; preds = %378, %381
  %385 = phi i32 [ 0, %381 ], [ 1, %378 ]
  %386 = phi i64 [ %382, %381 ], [ 9223372036854775807, %378 ]
  %387 = udiv i64 9223372036854775807, %55, !dbg !4342
  %388 = icmp ult i64 %387, %386, !dbg !4342
  br i1 %388, label %400, label %395, !dbg !4342

389:                                              ; preds = %374, %381
  %390 = phi i32 [ 0, %381 ], [ 1, %374 ]
  %391 = phi i64 [ %382, %381 ], [ -9223372036854775808, %374 ]
  %392 = sub i64 0, %391, !dbg !4342
  %393 = udiv i64 -9223372036854775808, %392, !dbg !4342
  %394 = icmp slt i64 %393, %55, !dbg !4342
  br i1 %394, label %405, label %395, !dbg !4342

395:                                              ; preds = %384, %389
  %396 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %397 = phi i64 [ %391, %389 ], [ %386, %384 ]
  %398 = mul i64 %397, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %382, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %396, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 7, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %399 = icmp slt i64 %398, 0, !dbg !4342
  br i1 %399, label %405, label %400, !dbg !4342

400:                                              ; preds = %384, %395
  %401 = phi i32 [ %396, %395 ], [ 1, %384 ]
  %402 = phi i64 [ %398, %395 ], [ 9223372036854775807, %384 ]
  %403 = udiv i64 9223372036854775807, %55, !dbg !4342
  %404 = icmp ult i64 %403, %402, !dbg !4342
  br i1 %404, label %416, label %411, !dbg !4342

405:                                              ; preds = %389, %395
  %406 = phi i32 [ %396, %395 ], [ 1, %389 ]
  %407 = phi i64 [ %398, %395 ], [ -9223372036854775808, %389 ]
  %408 = sub i64 0, %407, !dbg !4342
  %409 = udiv i64 -9223372036854775808, %408, !dbg !4342
  %410 = icmp slt i64 %409, %55, !dbg !4342
  br i1 %410, label %423, label %411, !dbg !4342

411:                                              ; preds = %400, %405
  %412 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %413 = phi i64 [ %407, %405 ], [ %402, %400 ]
  %414 = mul i64 %413, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %398, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %412, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 6, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %415 = icmp slt i64 %414, 0, !dbg !4342
  br i1 %415, label %423, label %416, !dbg !4342

416:                                              ; preds = %400, %411
  %417 = phi i32 [ %412, %411 ], [ 1, %400 ]
  %418 = phi i64 [ %414, %411 ], [ 9223372036854775807, %400 ]
  %419 = udiv i64 9223372036854775807, %55, !dbg !4342
  %420 = icmp ult i64 %419, %418, !dbg !4342
  br i1 %420, label %421, label %431, !dbg !4342

421:                                              ; preds = %416
  %422 = or i32 %417, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %432, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %436, !dbg !4342

423:                                              ; preds = %405, %411
  %424 = phi i32 [ %412, %411 ], [ 1, %405 ]
  %425 = phi i64 [ %414, %411 ], [ -9223372036854775808, %405 ]
  %426 = sub i64 0, %425, !dbg !4342
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4342
  %428 = icmp slt i64 %427, %55, !dbg !4342
  br i1 %428, label %429, label %431, !dbg !4342

429:                                              ; preds = %423
  %430 = or i32 %424, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %432, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %443, !dbg !4342

431:                                              ; preds = %416, %423
  %432 = phi i32 [ %424, %423 ], [ %417, %416 ]
  %433 = phi i64 [ %425, %423 ], [ %418, %416 ]
  %434 = mul i64 %433, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %414, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %432, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %435 = icmp slt i64 %434, 0, !dbg !4342
  br i1 %435, label %443, label %436, !dbg !4342

436:                                              ; preds = %421, %431
  %437 = phi i32 [ %422, %421 ], [ %432, %431 ]
  %438 = phi i64 [ 9223372036854775807, %421 ], [ %434, %431 ]
  %439 = udiv i64 9223372036854775807, %55, !dbg !4342
  %440 = icmp ult i64 %439, %438, !dbg !4342
  br i1 %440, label %441, label %451, !dbg !4342

441:                                              ; preds = %436
  %442 = or i32 %437, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %452, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %456, !dbg !4342

443:                                              ; preds = %431, %429
  %444 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %445 = phi i64 [ -9223372036854775808, %429 ], [ %434, %431 ]
  %446 = sub i64 0, %445, !dbg !4342
  %447 = udiv i64 -9223372036854775808, %446, !dbg !4342
  %448 = icmp slt i64 %447, %55, !dbg !4342
  br i1 %448, label %449, label %451, !dbg !4342

449:                                              ; preds = %443
  %450 = or i32 %444, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %452, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %463, !dbg !4342

451:                                              ; preds = %436, %443
  %452 = phi i32 [ %444, %443 ], [ %437, %436 ]
  %453 = phi i64 [ %445, %443 ], [ %438, %436 ]
  %454 = mul i64 %453, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %434, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %452, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %455 = icmp slt i64 %454, 0, !dbg !4342
  br i1 %455, label %463, label %456, !dbg !4342

456:                                              ; preds = %441, %451
  %457 = phi i32 [ %442, %441 ], [ %452, %451 ]
  %458 = phi i64 [ 9223372036854775807, %441 ], [ %454, %451 ]
  %459 = udiv i64 9223372036854775807, %55, !dbg !4342
  %460 = icmp ult i64 %459, %458, !dbg !4342
  br i1 %460, label %461, label %471, !dbg !4342

461:                                              ; preds = %456
  %462 = or i32 %457, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %472, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %476, !dbg !4342

463:                                              ; preds = %451, %449
  %464 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %465 = phi i64 [ -9223372036854775808, %449 ], [ %454, %451 ]
  %466 = sub i64 0, %465, !dbg !4342
  %467 = udiv i64 -9223372036854775808, %466, !dbg !4342
  %468 = icmp slt i64 %467, %55, !dbg !4342
  br i1 %468, label %469, label %471, !dbg !4342

469:                                              ; preds = %463
  %470 = or i32 %464, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %472, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %483, !dbg !4342

471:                                              ; preds = %456, %463
  %472 = phi i32 [ %464, %463 ], [ %457, %456 ]
  %473 = phi i64 [ %465, %463 ], [ %458, %456 ]
  %474 = mul i64 %473, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %454, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %472, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %475 = icmp slt i64 %474, 0, !dbg !4342
  br i1 %475, label %483, label %476, !dbg !4342

476:                                              ; preds = %461, %471
  %477 = phi i32 [ %462, %461 ], [ %472, %471 ]
  %478 = phi i64 [ 9223372036854775807, %461 ], [ %474, %471 ]
  %479 = udiv i64 9223372036854775807, %55, !dbg !4342
  %480 = icmp ult i64 %479, %478, !dbg !4342
  br i1 %480, label %481, label %491, !dbg !4342

481:                                              ; preds = %476
  %482 = or i32 %477, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %492, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %496, !dbg !4342

483:                                              ; preds = %471, %469
  %484 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %485 = phi i64 [ -9223372036854775808, %469 ], [ %474, %471 ]
  %486 = sub i64 0, %485, !dbg !4342
  %487 = udiv i64 -9223372036854775808, %486, !dbg !4342
  %488 = icmp slt i64 %487, %55, !dbg !4342
  br i1 %488, label %489, label %491, !dbg !4342

489:                                              ; preds = %483
  %490 = or i32 %484, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %492, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %503, !dbg !4342

491:                                              ; preds = %476, %483
  %492 = phi i32 [ %484, %483 ], [ %477, %476 ]
  %493 = phi i64 [ %485, %483 ], [ %478, %476 ]
  %494 = mul i64 %493, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %474, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %492, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %495 = icmp slt i64 %494, 0, !dbg !4342
  br i1 %495, label %503, label %496, !dbg !4342

496:                                              ; preds = %481, %491
  %497 = phi i32 [ %482, %481 ], [ %492, %491 ]
  %498 = phi i64 [ 9223372036854775807, %481 ], [ %494, %491 ]
  %499 = udiv i64 9223372036854775807, %55, !dbg !4342
  %500 = icmp ult i64 %499, %498, !dbg !4342
  br i1 %500, label %501, label %511, !dbg !4342

501:                                              ; preds = %496
  %502 = or i32 %497, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %512, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %516, !dbg !4342

503:                                              ; preds = %491, %489
  %504 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %505 = phi i64 [ -9223372036854775808, %489 ], [ %494, %491 ]
  %506 = sub i64 0, %505, !dbg !4342
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4342
  %508 = icmp slt i64 %507, %55, !dbg !4342
  br i1 %508, label %509, label %511, !dbg !4342

509:                                              ; preds = %503
  %510 = or i32 %504, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %512, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %523, !dbg !4342

511:                                              ; preds = %496, %503
  %512 = phi i32 [ %504, %503 ], [ %497, %496 ]
  %513 = phi i64 [ %505, %503 ], [ %498, %496 ]
  %514 = mul i64 %513, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %494, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %512, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %515 = icmp slt i64 %514, 0, !dbg !4342
  br i1 %515, label %523, label %516, !dbg !4342

516:                                              ; preds = %501, %511
  %517 = phi i32 [ %502, %501 ], [ %512, %511 ]
  %518 = phi i64 [ 9223372036854775807, %501 ], [ %514, %511 ]
  %519 = udiv i64 9223372036854775807, %55, !dbg !4342
  %520 = icmp ult i64 %519, %518, !dbg !4342
  br i1 %520, label %521, label %531, !dbg !4342

521:                                              ; preds = %516
  %522 = or i32 %517, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %532, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %536, !dbg !4342

523:                                              ; preds = %511, %509
  %524 = phi i32 [ %510, %509 ], [ %512, %511 ]
  %525 = phi i64 [ -9223372036854775808, %509 ], [ %514, %511 ]
  %526 = sub i64 0, %525, !dbg !4342
  %527 = udiv i64 -9223372036854775808, %526, !dbg !4342
  %528 = icmp slt i64 %527, %55, !dbg !4342
  br i1 %528, label %529, label %531, !dbg !4342

529:                                              ; preds = %523
  %530 = or i32 %524, 1, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %532, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  br label %541, !dbg !4342

531:                                              ; preds = %516, %523
  %532 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %533 = phi i64 [ %525, %523 ], [ %518, %516 ]
  %534 = mul i64 %533, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %514, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  call void @llvm.dbg.value(metadata i32 %532, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4340
  %535 = icmp slt i64 %534, 0, !dbg !4342
  br i1 %535, label %541, label %536, !dbg !4342

536:                                              ; preds = %521, %531
  %537 = phi i32 [ %522, %521 ], [ %532, %531 ]
  %538 = phi i64 [ 9223372036854775807, %521 ], [ %534, %531 ]
  %539 = udiv i64 9223372036854775807, %55, !dbg !4342
  %540 = icmp ult i64 %539, %538, !dbg !4342
  br i1 %540, label %551, label %547, !dbg !4342

541:                                              ; preds = %531, %529
  %542 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %543 = phi i64 [ -9223372036854775808, %529 ], [ %534, %531 ]
  %544 = sub i64 0, %543, !dbg !4342
  %545 = udiv i64 -9223372036854775808, %544, !dbg !4342
  %546 = icmp slt i64 %545, %55, !dbg !4342
  br i1 %546, label %551, label %547, !dbg !4342

547:                                              ; preds = %541, %536
  %548 = phi i32 [ %542, %541 ], [ %537, %536 ]
  %549 = phi i64 [ %543, %541 ], [ %538, %536 ]
  %550 = mul i64 %549, %55, !dbg !4342
  call void @llvm.dbg.value(metadata !DIArgList(i64 %534, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4340
  br label %551, !dbg !4387

551:                                              ; preds = %547, %541, %536
  %552 = phi i32 [ %548, %547 ], [ %537, %536 ], [ %542, %541 ]
  %553 = phi i64 [ %550, %547 ], [ 9223372036854775807, %536 ], [ -9223372036854775808, %541 ], !dbg !4340
  %554 = phi i32 [ 0, %547 ], [ 1, %536 ], [ 1, %541 ], !dbg !4340
  %555 = or i32 %554, %552, !dbg !4386
  call void @llvm.dbg.value(metadata i32 %555, metadata !4306, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4338
  br label %1063, !dbg !4363

556:                                              ; preds = %61
  %557 = icmp eq i64 %32, -1, !dbg !4337
  br i1 %557, label %565, label %558, !dbg !4337

558:                                              ; preds = %556
  %559 = sub i64 0, %32, !dbg !4337
  %560 = udiv i64 -9223372036854775808, %559, !dbg !4337
  %561 = icmp ult i64 %560, %55, !dbg !4337
  br i1 %561, label %573, label %565, !dbg !4337

562:                                              ; preds = %61
  %563 = udiv i64 9223372036854775807, %55, !dbg !4337
  %564 = icmp ult i64 %563, %32, !dbg !4337
  br i1 %564, label %568, label %565, !dbg !4337

565:                                              ; preds = %556, %558, %562
  %566 = mul i64 %32, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 7, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %567 = icmp slt i64 %566, 0, !dbg !4337
  br i1 %567, label %573, label %568, !dbg !4337

568:                                              ; preds = %562, %565
  %569 = phi i32 [ 0, %565 ], [ 1, %562 ]
  %570 = phi i64 [ %566, %565 ], [ 9223372036854775807, %562 ]
  %571 = udiv i64 9223372036854775807, %55, !dbg !4337
  %572 = icmp ult i64 %571, %570, !dbg !4337
  br i1 %572, label %584, label %579, !dbg !4337

573:                                              ; preds = %558, %565
  %574 = phi i32 [ 0, %565 ], [ 1, %558 ]
  %575 = phi i64 [ %566, %565 ], [ -9223372036854775808, %558 ]
  %576 = sub i64 0, %575, !dbg !4337
  %577 = udiv i64 -9223372036854775808, %576, !dbg !4337
  %578 = icmp slt i64 %577, %55, !dbg !4337
  br i1 %578, label %589, label %579, !dbg !4337

579:                                              ; preds = %568, %573
  %580 = phi i32 [ %574, %573 ], [ %569, %568 ]
  %581 = phi i64 [ %575, %573 ], [ %570, %568 ]
  %582 = mul i64 %581, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %566, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %580, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 6, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %583 = icmp slt i64 %582, 0, !dbg !4337
  br i1 %583, label %589, label %584, !dbg !4337

584:                                              ; preds = %568, %579
  %585 = phi i32 [ %580, %579 ], [ 1, %568 ]
  %586 = phi i64 [ %582, %579 ], [ 9223372036854775807, %568 ]
  %587 = udiv i64 9223372036854775807, %55, !dbg !4337
  %588 = icmp ult i64 %587, %586, !dbg !4337
  br i1 %588, label %600, label %595, !dbg !4337

589:                                              ; preds = %573, %579
  %590 = phi i32 [ %580, %579 ], [ 1, %573 ]
  %591 = phi i64 [ %582, %579 ], [ -9223372036854775808, %573 ]
  %592 = sub i64 0, %591, !dbg !4337
  %593 = udiv i64 -9223372036854775808, %592, !dbg !4337
  %594 = icmp slt i64 %593, %55, !dbg !4337
  br i1 %594, label %607, label %595, !dbg !4337

595:                                              ; preds = %584, %589
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = phi i64 [ %591, %589 ], [ %586, %584 ]
  %598 = mul i64 %597, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %582, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %596, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %599 = icmp slt i64 %598, 0, !dbg !4337
  br i1 %599, label %607, label %600, !dbg !4337

600:                                              ; preds = %584, %595
  %601 = phi i32 [ %596, %595 ], [ 1, %584 ]
  %602 = phi i64 [ %598, %595 ], [ 9223372036854775807, %584 ]
  %603 = udiv i64 9223372036854775807, %55, !dbg !4337
  %604 = icmp ult i64 %603, %602, !dbg !4337
  br i1 %604, label %605, label %615, !dbg !4337

605:                                              ; preds = %600
  %606 = or i32 %601, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %616, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %620, !dbg !4337

607:                                              ; preds = %589, %595
  %608 = phi i32 [ %596, %595 ], [ 1, %589 ]
  %609 = phi i64 [ %598, %595 ], [ -9223372036854775808, %589 ]
  %610 = sub i64 0, %609, !dbg !4337
  %611 = udiv i64 -9223372036854775808, %610, !dbg !4337
  %612 = icmp slt i64 %611, %55, !dbg !4337
  br i1 %612, label %613, label %615, !dbg !4337

613:                                              ; preds = %607
  %614 = or i32 %608, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %616, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %627, !dbg !4337

615:                                              ; preds = %600, %607
  %616 = phi i32 [ %608, %607 ], [ %601, %600 ]
  %617 = phi i64 [ %609, %607 ], [ %602, %600 ]
  %618 = mul i64 %617, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %598, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %616, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %619 = icmp slt i64 %618, 0, !dbg !4337
  br i1 %619, label %627, label %620, !dbg !4337

620:                                              ; preds = %605, %615
  %621 = phi i32 [ %606, %605 ], [ %616, %615 ]
  %622 = phi i64 [ 9223372036854775807, %605 ], [ %618, %615 ]
  %623 = udiv i64 9223372036854775807, %55, !dbg !4337
  %624 = icmp ult i64 %623, %622, !dbg !4337
  br i1 %624, label %625, label %635, !dbg !4337

625:                                              ; preds = %620
  %626 = or i32 %621, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %636, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %640, !dbg !4337

627:                                              ; preds = %615, %613
  %628 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %629 = phi i64 [ -9223372036854775808, %613 ], [ %618, %615 ]
  %630 = sub i64 0, %629, !dbg !4337
  %631 = udiv i64 -9223372036854775808, %630, !dbg !4337
  %632 = icmp slt i64 %631, %55, !dbg !4337
  br i1 %632, label %633, label %635, !dbg !4337

633:                                              ; preds = %627
  %634 = or i32 %628, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %636, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %647, !dbg !4337

635:                                              ; preds = %620, %627
  %636 = phi i32 [ %628, %627 ], [ %621, %620 ]
  %637 = phi i64 [ %629, %627 ], [ %622, %620 ]
  %638 = mul i64 %637, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %618, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %636, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %639 = icmp slt i64 %638, 0, !dbg !4337
  br i1 %639, label %647, label %640, !dbg !4337

640:                                              ; preds = %625, %635
  %641 = phi i32 [ %626, %625 ], [ %636, %635 ]
  %642 = phi i64 [ 9223372036854775807, %625 ], [ %638, %635 ]
  %643 = udiv i64 9223372036854775807, %55, !dbg !4337
  %644 = icmp ult i64 %643, %642, !dbg !4337
  br i1 %644, label %645, label %655, !dbg !4337

645:                                              ; preds = %640
  %646 = or i32 %641, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %656, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %660, !dbg !4337

647:                                              ; preds = %635, %633
  %648 = phi i32 [ %634, %633 ], [ %636, %635 ]
  %649 = phi i64 [ -9223372036854775808, %633 ], [ %638, %635 ]
  %650 = sub i64 0, %649, !dbg !4337
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4337
  %652 = icmp slt i64 %651, %55, !dbg !4337
  br i1 %652, label %653, label %655, !dbg !4337

653:                                              ; preds = %647
  %654 = or i32 %648, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %656, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %667, !dbg !4337

655:                                              ; preds = %640, %647
  %656 = phi i32 [ %648, %647 ], [ %641, %640 ]
  %657 = phi i64 [ %649, %647 ], [ %642, %640 ]
  %658 = mul i64 %657, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %638, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %656, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %659 = icmp slt i64 %658, 0, !dbg !4337
  br i1 %659, label %667, label %660, !dbg !4337

660:                                              ; preds = %645, %655
  %661 = phi i32 [ %646, %645 ], [ %656, %655 ]
  %662 = phi i64 [ 9223372036854775807, %645 ], [ %658, %655 ]
  %663 = udiv i64 9223372036854775807, %55, !dbg !4337
  %664 = icmp ult i64 %663, %662, !dbg !4337
  br i1 %664, label %665, label %675, !dbg !4337

665:                                              ; preds = %660
  %666 = or i32 %661, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %676, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %680, !dbg !4337

667:                                              ; preds = %655, %653
  %668 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %669 = phi i64 [ -9223372036854775808, %653 ], [ %658, %655 ]
  %670 = sub i64 0, %669, !dbg !4337
  %671 = udiv i64 -9223372036854775808, %670, !dbg !4337
  %672 = icmp slt i64 %671, %55, !dbg !4337
  br i1 %672, label %673, label %675, !dbg !4337

673:                                              ; preds = %667
  %674 = or i32 %668, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %676, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %687, !dbg !4337

675:                                              ; preds = %660, %667
  %676 = phi i32 [ %668, %667 ], [ %661, %660 ]
  %677 = phi i64 [ %669, %667 ], [ %662, %660 ]
  %678 = mul i64 %677, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %658, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %676, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %679 = icmp slt i64 %678, 0, !dbg !4337
  br i1 %679, label %687, label %680, !dbg !4337

680:                                              ; preds = %665, %675
  %681 = phi i32 [ %666, %665 ], [ %676, %675 ]
  %682 = phi i64 [ 9223372036854775807, %665 ], [ %678, %675 ]
  %683 = udiv i64 9223372036854775807, %55, !dbg !4337
  %684 = icmp ult i64 %683, %682, !dbg !4337
  br i1 %684, label %685, label %695, !dbg !4337

685:                                              ; preds = %680
  %686 = or i32 %681, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %696, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %700, !dbg !4337

687:                                              ; preds = %675, %673
  %688 = phi i32 [ %674, %673 ], [ %676, %675 ]
  %689 = phi i64 [ -9223372036854775808, %673 ], [ %678, %675 ]
  %690 = sub i64 0, %689, !dbg !4337
  %691 = udiv i64 -9223372036854775808, %690, !dbg !4337
  %692 = icmp slt i64 %691, %55, !dbg !4337
  br i1 %692, label %693, label %695, !dbg !4337

693:                                              ; preds = %687
  %694 = or i32 %688, 1, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %696, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  br label %705, !dbg !4337

695:                                              ; preds = %680, %687
  %696 = phi i32 [ %688, %687 ], [ %681, %680 ]
  %697 = phi i64 [ %689, %687 ], [ %682, %680 ]
  %698 = mul i64 %697, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %678, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  call void @llvm.dbg.value(metadata i32 %696, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4335
  %699 = icmp slt i64 %698, 0, !dbg !4337
  br i1 %699, label %705, label %700, !dbg !4337

700:                                              ; preds = %685, %695
  %701 = phi i32 [ %686, %685 ], [ %696, %695 ]
  %702 = phi i64 [ 9223372036854775807, %685 ], [ %698, %695 ]
  %703 = udiv i64 9223372036854775807, %55, !dbg !4337
  %704 = icmp ult i64 %703, %702, !dbg !4337
  br i1 %704, label %715, label %711, !dbg !4337

705:                                              ; preds = %695, %693
  %706 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %707 = phi i64 [ -9223372036854775808, %693 ], [ %698, %695 ]
  %708 = sub i64 0, %707, !dbg !4337
  %709 = udiv i64 -9223372036854775808, %708, !dbg !4337
  %710 = icmp slt i64 %709, %55, !dbg !4337
  br i1 %710, label %715, label %711, !dbg !4337

711:                                              ; preds = %705, %700
  %712 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %713 = phi i64 [ %707, %705 ], [ %702, %700 ]
  %714 = mul i64 %713, %55, !dbg !4337
  call void @llvm.dbg.value(metadata !DIArgList(i64 %698, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4335
  br label %715, !dbg !4389

715:                                              ; preds = %711, %705, %700
  %716 = phi i32 [ %712, %711 ], [ %701, %700 ], [ %706, %705 ]
  %717 = phi i64 [ %714, %711 ], [ 9223372036854775807, %700 ], [ -9223372036854775808, %705 ], !dbg !4335
  %718 = phi i32 [ 0, %711 ], [ 1, %700 ], [ 1, %705 ], !dbg !4335
  %719 = or i32 %718, %716, !dbg !4388
  call void @llvm.dbg.value(metadata i32 %719, metadata !4306, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4333
  br label %1063, !dbg !4363

720:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4311, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 undef, metadata !4312, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4392
  %721 = icmp slt i64 %32, 0, !dbg !4394
  br i1 %721, label %722, label %728, !dbg !4394

722:                                              ; preds = %720
  %723 = icmp eq i64 %32, -1, !dbg !4394
  br i1 %723, label %731, label %724, !dbg !4394

724:                                              ; preds = %722
  %725 = sub i64 0, %32, !dbg !4394
  %726 = udiv i64 -9223372036854775808, %725, !dbg !4394
  %727 = icmp ult i64 %726, %55, !dbg !4394
  br i1 %727, label %739, label %731, !dbg !4394

728:                                              ; preds = %720
  %729 = udiv i64 9223372036854775807, %55, !dbg !4394
  %730 = icmp ult i64 %729, %32, !dbg !4394
  br i1 %730, label %734, label %731, !dbg !4394

731:                                              ; preds = %722, %724, %728
  %732 = mul i64 %32, %55, !dbg !4394
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4392
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4392
  %733 = icmp slt i64 %732, 0, !dbg !4394
  br i1 %733, label %739, label %734, !dbg !4394

734:                                              ; preds = %728, %731
  %735 = phi i32 [ 0, %731 ], [ 1, %728 ]
  %736 = phi i64 [ %732, %731 ], [ 9223372036854775807, %728 ]
  %737 = udiv i64 9223372036854775807, %55, !dbg !4394
  %738 = icmp ult i64 %737, %736, !dbg !4394
  br i1 %738, label %750, label %745, !dbg !4394

739:                                              ; preds = %724, %731
  %740 = phi i32 [ 0, %731 ], [ 1, %724 ]
  %741 = phi i64 [ %732, %731 ], [ -9223372036854775808, %724 ]
  %742 = sub i64 0, %741, !dbg !4394
  %743 = udiv i64 -9223372036854775808, %742, !dbg !4394
  %744 = icmp slt i64 %743, %55, !dbg !4394
  br i1 %744, label %755, label %745, !dbg !4394

745:                                              ; preds = %734, %739
  %746 = phi i32 [ %740, %739 ], [ %735, %734 ]
  %747 = phi i64 [ %741, %739 ], [ %736, %734 ]
  %748 = mul i64 %747, %55, !dbg !4394
  call void @llvm.dbg.value(metadata !DIArgList(i64 %732, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4392
  call void @llvm.dbg.value(metadata i32 %746, metadata !4306, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4392
  %749 = icmp slt i64 %748, 0, !dbg !4394
  br i1 %749, label %755, label %750, !dbg !4394

750:                                              ; preds = %734, %745
  %751 = phi i32 [ %746, %745 ], [ 1, %734 ]
  %752 = phi i64 [ %748, %745 ], [ 9223372036854775807, %734 ]
  %753 = udiv i64 9223372036854775807, %55, !dbg !4394
  %754 = icmp ult i64 %753, %752, !dbg !4394
  br i1 %754, label %766, label %761, !dbg !4394

755:                                              ; preds = %739, %745
  %756 = phi i32 [ %746, %745 ], [ 1, %739 ]
  %757 = phi i64 [ %748, %745 ], [ -9223372036854775808, %739 ]
  %758 = sub i64 0, %757, !dbg !4394
  %759 = udiv i64 -9223372036854775808, %758, !dbg !4394
  %760 = icmp slt i64 %759, %55, !dbg !4394
  br i1 %760, label %771, label %761, !dbg !4394

761:                                              ; preds = %750, %755
  %762 = phi i32 [ %756, %755 ], [ %751, %750 ]
  %763 = phi i64 [ %757, %755 ], [ %752, %750 ]
  %764 = mul i64 %763, %55, !dbg !4394
  call void @llvm.dbg.value(metadata !DIArgList(i64 %748, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4392
  call void @llvm.dbg.value(metadata i32 %762, metadata !4306, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4392
  %765 = icmp slt i64 %764, 0, !dbg !4394
  br i1 %765, label %771, label %766, !dbg !4394

766:                                              ; preds = %750, %761
  %767 = phi i32 [ %762, %761 ], [ 1, %750 ]
  %768 = phi i64 [ %764, %761 ], [ 9223372036854775807, %750 ]
  %769 = udiv i64 9223372036854775807, %55, !dbg !4394
  %770 = icmp ult i64 %769, %768, !dbg !4394
  br i1 %770, label %781, label %777, !dbg !4394

771:                                              ; preds = %755, %761
  %772 = phi i32 [ %762, %761 ], [ 1, %755 ]
  %773 = phi i64 [ %764, %761 ], [ -9223372036854775808, %755 ]
  %774 = sub i64 0, %773, !dbg !4394
  %775 = udiv i64 -9223372036854775808, %774, !dbg !4394
  %776 = icmp slt i64 %775, %55, !dbg !4394
  br i1 %776, label %781, label %777, !dbg !4394

777:                                              ; preds = %771, %766
  %778 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %779 = phi i64 [ %773, %771 ], [ %768, %766 ]
  %780 = mul i64 %779, %55, !dbg !4394
  call void @llvm.dbg.value(metadata !DIArgList(i64 %764, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4392
  br label %781, !dbg !4395

781:                                              ; preds = %777, %771, %766
  %782 = phi i32 [ %778, %777 ], [ %767, %766 ], [ %772, %771 ]
  %783 = phi i64 [ %780, %777 ], [ 9223372036854775807, %766 ], [ -9223372036854775808, %771 ], !dbg !4392
  %784 = phi i32 [ 0, %777 ], [ 1, %766 ], [ 1, %771 ], !dbg !4392
  %785 = or i32 %784, %782, !dbg !4396
  call void @llvm.dbg.value(metadata i32 %785, metadata !4306, metadata !DIExpression()), !dbg !4390
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4390
  br label %1063, !dbg !4363

786:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4397
  call void @llvm.dbg.value(metadata i32 2, metadata !4322, metadata !DIExpression()), !dbg !4397
  %787 = icmp slt i64 %32, 0, !dbg !4399
  br i1 %787, label %788, label %791, !dbg !4399

788:                                              ; preds = %786
  %789 = add i64 %32, -1, !dbg !4399
  %790 = icmp ult i64 %789, -4611686018427387905, !dbg !4399
  br i1 %790, label %1063, label %793, !dbg !4399

791:                                              ; preds = %786
  %792 = icmp ugt i64 %32, 4611686018427387903, !dbg !4399
  br i1 %792, label %1063, label %793, !dbg !4399

793:                                              ; preds = %791, %788
  %794 = shl nsw i64 %32, 1, !dbg !4399
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 2), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4397
  br label %1063, !dbg !4400

795:                                              ; preds = %59
  %796 = icmp eq i64 %32, -1, !dbg !4332
  br i1 %796, label %804, label %797, !dbg !4332

797:                                              ; preds = %795
  %798 = sub i64 0, %32, !dbg !4332
  %799 = udiv i64 -9223372036854775808, %798, !dbg !4332
  %800 = icmp ult i64 %799, %55, !dbg !4332
  br i1 %800, label %812, label %804, !dbg !4332

801:                                              ; preds = %59
  %802 = udiv i64 9223372036854775807, %55, !dbg !4332
  %803 = icmp ult i64 %802, %32, !dbg !4332
  br i1 %803, label %807, label %804, !dbg !4332

804:                                              ; preds = %795, %797, %801
  %805 = mul i64 %32, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 6, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %806 = icmp slt i64 %805, 0, !dbg !4332
  br i1 %806, label %812, label %807, !dbg !4332

807:                                              ; preds = %801, %804
  %808 = phi i32 [ 0, %804 ], [ 1, %801 ]
  %809 = phi i64 [ %805, %804 ], [ 9223372036854775807, %801 ]
  %810 = udiv i64 9223372036854775807, %55, !dbg !4332
  %811 = icmp ult i64 %810, %809, !dbg !4332
  br i1 %811, label %823, label %818, !dbg !4332

812:                                              ; preds = %797, %804
  %813 = phi i32 [ 0, %804 ], [ 1, %797 ]
  %814 = phi i64 [ %805, %804 ], [ -9223372036854775808, %797 ]
  %815 = sub i64 0, %814, !dbg !4332
  %816 = udiv i64 -9223372036854775808, %815, !dbg !4332
  %817 = icmp slt i64 %816, %55, !dbg !4332
  br i1 %817, label %828, label %818, !dbg !4332

818:                                              ; preds = %807, %812
  %819 = phi i32 [ %813, %812 ], [ %808, %807 ]
  %820 = phi i64 [ %814, %812 ], [ %809, %807 ]
  %821 = mul i64 %820, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %805, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %819, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %822 = icmp slt i64 %821, 0, !dbg !4332
  br i1 %822, label %828, label %823, !dbg !4332

823:                                              ; preds = %807, %818
  %824 = phi i32 [ %819, %818 ], [ 1, %807 ]
  %825 = phi i64 [ %821, %818 ], [ 9223372036854775807, %807 ]
  %826 = udiv i64 9223372036854775807, %55, !dbg !4332
  %827 = icmp ult i64 %826, %825, !dbg !4332
  br i1 %827, label %839, label %834, !dbg !4332

828:                                              ; preds = %812, %818
  %829 = phi i32 [ %819, %818 ], [ 1, %812 ]
  %830 = phi i64 [ %821, %818 ], [ -9223372036854775808, %812 ]
  %831 = sub i64 0, %830, !dbg !4332
  %832 = udiv i64 -9223372036854775808, %831, !dbg !4332
  %833 = icmp slt i64 %832, %55, !dbg !4332
  br i1 %833, label %846, label %834, !dbg !4332

834:                                              ; preds = %823, %828
  %835 = phi i32 [ %829, %828 ], [ %824, %823 ]
  %836 = phi i64 [ %830, %828 ], [ %825, %823 ]
  %837 = mul i64 %836, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %821, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %835, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %838 = icmp slt i64 %837, 0, !dbg !4332
  br i1 %838, label %846, label %839, !dbg !4332

839:                                              ; preds = %823, %834
  %840 = phi i32 [ %835, %834 ], [ 1, %823 ]
  %841 = phi i64 [ %837, %834 ], [ 9223372036854775807, %823 ]
  %842 = udiv i64 9223372036854775807, %55, !dbg !4332
  %843 = icmp ult i64 %842, %841, !dbg !4332
  br i1 %843, label %844, label %854, !dbg !4332

844:                                              ; preds = %839
  %845 = or i32 %840, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %855, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %859, !dbg !4332

846:                                              ; preds = %828, %834
  %847 = phi i32 [ %835, %834 ], [ 1, %828 ]
  %848 = phi i64 [ %837, %834 ], [ -9223372036854775808, %828 ]
  %849 = sub i64 0, %848, !dbg !4332
  %850 = udiv i64 -9223372036854775808, %849, !dbg !4332
  %851 = icmp slt i64 %850, %55, !dbg !4332
  br i1 %851, label %852, label %854, !dbg !4332

852:                                              ; preds = %846
  %853 = or i32 %847, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %855, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %866, !dbg !4332

854:                                              ; preds = %839, %846
  %855 = phi i32 [ %847, %846 ], [ %840, %839 ]
  %856 = phi i64 [ %848, %846 ], [ %841, %839 ]
  %857 = mul i64 %856, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %837, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %855, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %858 = icmp slt i64 %857, 0, !dbg !4332
  br i1 %858, label %866, label %859, !dbg !4332

859:                                              ; preds = %844, %854
  %860 = phi i32 [ %845, %844 ], [ %855, %854 ]
  %861 = phi i64 [ 9223372036854775807, %844 ], [ %857, %854 ]
  %862 = udiv i64 9223372036854775807, %55, !dbg !4332
  %863 = icmp ult i64 %862, %861, !dbg !4332
  br i1 %863, label %864, label %874, !dbg !4332

864:                                              ; preds = %859
  %865 = or i32 %860, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %875, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %879, !dbg !4332

866:                                              ; preds = %854, %852
  %867 = phi i32 [ %853, %852 ], [ %855, %854 ]
  %868 = phi i64 [ -9223372036854775808, %852 ], [ %857, %854 ]
  %869 = sub i64 0, %868, !dbg !4332
  %870 = udiv i64 -9223372036854775808, %869, !dbg !4332
  %871 = icmp slt i64 %870, %55, !dbg !4332
  br i1 %871, label %872, label %874, !dbg !4332

872:                                              ; preds = %866
  %873 = or i32 %867, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %875, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %886, !dbg !4332

874:                                              ; preds = %859, %866
  %875 = phi i32 [ %867, %866 ], [ %860, %859 ]
  %876 = phi i64 [ %868, %866 ], [ %861, %859 ]
  %877 = mul i64 %876, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %857, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %875, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %878 = icmp slt i64 %877, 0, !dbg !4332
  br i1 %878, label %886, label %879, !dbg !4332

879:                                              ; preds = %864, %874
  %880 = phi i32 [ %865, %864 ], [ %875, %874 ]
  %881 = phi i64 [ 9223372036854775807, %864 ], [ %877, %874 ]
  %882 = udiv i64 9223372036854775807, %55, !dbg !4332
  %883 = icmp ult i64 %882, %881, !dbg !4332
  br i1 %883, label %884, label %894, !dbg !4332

884:                                              ; preds = %879
  %885 = or i32 %880, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %895, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %899, !dbg !4332

886:                                              ; preds = %874, %872
  %887 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %888 = phi i64 [ -9223372036854775808, %872 ], [ %877, %874 ]
  %889 = sub i64 0, %888, !dbg !4332
  %890 = udiv i64 -9223372036854775808, %889, !dbg !4332
  %891 = icmp slt i64 %890, %55, !dbg !4332
  br i1 %891, label %892, label %894, !dbg !4332

892:                                              ; preds = %886
  %893 = or i32 %887, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %895, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %906, !dbg !4332

894:                                              ; preds = %879, %886
  %895 = phi i32 [ %887, %886 ], [ %880, %879 ]
  %896 = phi i64 [ %888, %886 ], [ %881, %879 ]
  %897 = mul i64 %896, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %877, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %895, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %898 = icmp slt i64 %897, 0, !dbg !4332
  br i1 %898, label %906, label %899, !dbg !4332

899:                                              ; preds = %884, %894
  %900 = phi i32 [ %885, %884 ], [ %895, %894 ]
  %901 = phi i64 [ 9223372036854775807, %884 ], [ %897, %894 ]
  %902 = udiv i64 9223372036854775807, %55, !dbg !4332
  %903 = icmp ult i64 %902, %901, !dbg !4332
  br i1 %903, label %904, label %914, !dbg !4332

904:                                              ; preds = %899
  %905 = or i32 %900, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %915, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %919, !dbg !4332

906:                                              ; preds = %894, %892
  %907 = phi i32 [ %893, %892 ], [ %895, %894 ]
  %908 = phi i64 [ -9223372036854775808, %892 ], [ %897, %894 ]
  %909 = sub i64 0, %908, !dbg !4332
  %910 = udiv i64 -9223372036854775808, %909, !dbg !4332
  %911 = icmp slt i64 %910, %55, !dbg !4332
  br i1 %911, label %912, label %914, !dbg !4332

912:                                              ; preds = %906
  %913 = or i32 %907, 1, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %915, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  br label %924, !dbg !4332

914:                                              ; preds = %899, %906
  %915 = phi i32 [ %907, %906 ], [ %900, %899 ]
  %916 = phi i64 [ %908, %906 ], [ %901, %899 ]
  %917 = mul i64 %916, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %897, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  call void @llvm.dbg.value(metadata i32 %915, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4330
  %918 = icmp slt i64 %917, 0, !dbg !4332
  br i1 %918, label %924, label %919, !dbg !4332

919:                                              ; preds = %904, %914
  %920 = phi i32 [ %905, %904 ], [ %915, %914 ]
  %921 = phi i64 [ 9223372036854775807, %904 ], [ %917, %914 ]
  %922 = udiv i64 9223372036854775807, %55, !dbg !4332
  %923 = icmp ult i64 %922, %921, !dbg !4332
  br i1 %923, label %934, label %930, !dbg !4332

924:                                              ; preds = %914, %912
  %925 = phi i32 [ %913, %912 ], [ %915, %914 ]
  %926 = phi i64 [ -9223372036854775808, %912 ], [ %917, %914 ]
  %927 = sub i64 0, %926, !dbg !4332
  %928 = udiv i64 -9223372036854775808, %927, !dbg !4332
  %929 = icmp slt i64 %928, %55, !dbg !4332
  br i1 %929, label %934, label %930, !dbg !4332

930:                                              ; preds = %924, %919
  %931 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %932 = phi i64 [ %926, %924 ], [ %921, %919 ]
  %933 = mul i64 %932, %55, !dbg !4332
  call void @llvm.dbg.value(metadata !DIArgList(i64 %917, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4330
  br label %934, !dbg !4402

934:                                              ; preds = %930, %924, %919
  %935 = phi i32 [ %931, %930 ], [ %920, %919 ], [ %925, %924 ]
  %936 = phi i64 [ %933, %930 ], [ 9223372036854775807, %919 ], [ -9223372036854775808, %924 ], !dbg !4330
  %937 = phi i32 [ 0, %930 ], [ 1, %919 ], [ 1, %924 ], !dbg !4330
  %938 = or i32 %937, %935, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %938, metadata !4306, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4328
  br label %1063, !dbg !4363

939:                                              ; preds = %57
  %940 = icmp eq i64 %32, -1, !dbg !4326
  br i1 %940, label %948, label %941, !dbg !4326

941:                                              ; preds = %939
  %942 = sub i64 0, %32, !dbg !4326
  %943 = udiv i64 -9223372036854775808, %942, !dbg !4326
  %944 = icmp ult i64 %943, %55, !dbg !4326
  br i1 %944, label %956, label %948, !dbg !4326

945:                                              ; preds = %57
  %946 = udiv i64 9223372036854775807, %55, !dbg !4326
  %947 = icmp ult i64 %946, %32, !dbg !4326
  br i1 %947, label %951, label %948, !dbg !4326

948:                                              ; preds = %939, %941, %945
  %949 = mul i64 %32, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 0, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 5, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %950 = icmp slt i64 %949, 0, !dbg !4326
  br i1 %950, label %956, label %951, !dbg !4326

951:                                              ; preds = %945, %948
  %952 = phi i32 [ 0, %948 ], [ 1, %945 ]
  %953 = phi i64 [ %949, %948 ], [ 9223372036854775807, %945 ]
  %954 = udiv i64 9223372036854775807, %55, !dbg !4326
  %955 = icmp ult i64 %954, %953, !dbg !4326
  br i1 %955, label %967, label %962, !dbg !4326

956:                                              ; preds = %941, %948
  %957 = phi i32 [ 0, %948 ], [ 1, %941 ]
  %958 = phi i64 [ %949, %948 ], [ -9223372036854775808, %941 ]
  %959 = sub i64 0, %958, !dbg !4326
  %960 = udiv i64 -9223372036854775808, %959, !dbg !4326
  %961 = icmp slt i64 %960, %55, !dbg !4326
  br i1 %961, label %972, label %962, !dbg !4326

962:                                              ; preds = %951, %956
  %963 = phi i32 [ %957, %956 ], [ %952, %951 ]
  %964 = phi i64 [ %958, %956 ], [ %953, %951 ]
  %965 = mul i64 %964, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %949, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %963, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 4, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %966 = icmp slt i64 %965, 0, !dbg !4326
  br i1 %966, label %972, label %967, !dbg !4326

967:                                              ; preds = %951, %962
  %968 = phi i32 [ %963, %962 ], [ 1, %951 ]
  %969 = phi i64 [ %965, %962 ], [ 9223372036854775807, %951 ]
  %970 = udiv i64 9223372036854775807, %55, !dbg !4326
  %971 = icmp ult i64 %970, %969, !dbg !4326
  br i1 %971, label %983, label %978, !dbg !4326

972:                                              ; preds = %956, %962
  %973 = phi i32 [ %963, %962 ], [ 1, %956 ]
  %974 = phi i64 [ %965, %962 ], [ -9223372036854775808, %956 ]
  %975 = sub i64 0, %974, !dbg !4326
  %976 = udiv i64 -9223372036854775808, %975, !dbg !4326
  %977 = icmp slt i64 %976, %55, !dbg !4326
  br i1 %977, label %990, label %978, !dbg !4326

978:                                              ; preds = %967, %972
  %979 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %980 = phi i64 [ %974, %972 ], [ %969, %967 ]
  %981 = mul i64 %980, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %965, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %979, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 3, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %982 = icmp slt i64 %981, 0, !dbg !4326
  br i1 %982, label %990, label %983, !dbg !4326

983:                                              ; preds = %967, %978
  %984 = phi i32 [ %979, %978 ], [ 1, %967 ]
  %985 = phi i64 [ %981, %978 ], [ 9223372036854775807, %967 ]
  %986 = udiv i64 9223372036854775807, %55, !dbg !4326
  %987 = icmp ult i64 %986, %985, !dbg !4326
  br i1 %987, label %988, label %998, !dbg !4326

988:                                              ; preds = %983
  %989 = or i32 %984, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %999, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1003, !dbg !4326

990:                                              ; preds = %972, %978
  %991 = phi i32 [ %979, %978 ], [ 1, %972 ]
  %992 = phi i64 [ %981, %978 ], [ -9223372036854775808, %972 ]
  %993 = sub i64 0, %992, !dbg !4326
  %994 = udiv i64 -9223372036854775808, %993, !dbg !4326
  %995 = icmp slt i64 %994, %55, !dbg !4326
  br i1 %995, label %996, label %998, !dbg !4326

996:                                              ; preds = %990
  %997 = or i32 %991, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %999, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1010, !dbg !4326

998:                                              ; preds = %983, %990
  %999 = phi i32 [ %991, %990 ], [ %984, %983 ]
  %1000 = phi i64 [ %992, %990 ], [ %985, %983 ]
  %1001 = mul i64 %1000, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %981, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %999, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 2, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %1002 = icmp slt i64 %1001, 0, !dbg !4326
  br i1 %1002, label %1010, label %1003, !dbg !4326

1003:                                             ; preds = %988, %998
  %1004 = phi i32 [ %989, %988 ], [ %999, %998 ]
  %1005 = phi i64 [ 9223372036854775807, %988 ], [ %1001, %998 ]
  %1006 = udiv i64 9223372036854775807, %55, !dbg !4326
  %1007 = icmp ult i64 %1006, %1005, !dbg !4326
  br i1 %1007, label %1008, label %1018, !dbg !4326

1008:                                             ; preds = %1003
  %1009 = or i32 %1004, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1023, !dbg !4326

1010:                                             ; preds = %998, %996
  %1011 = phi i32 [ %997, %996 ], [ %999, %998 ]
  %1012 = phi i64 [ -9223372036854775808, %996 ], [ %1001, %998 ]
  %1013 = sub i64 0, %1012, !dbg !4326
  %1014 = udiv i64 -9223372036854775808, %1013, !dbg !4326
  %1015 = icmp slt i64 %1014, %55, !dbg !4326
  br i1 %1015, label %1016, label %1018, !dbg !4326

1016:                                             ; preds = %1010
  %1017 = or i32 %1011, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1030, !dbg !4326

1018:                                             ; preds = %1003, %1010
  %1019 = phi i32 [ %1011, %1010 ], [ %1004, %1003 ]
  %1020 = phi i64 [ %1012, %1010 ], [ %1005, %1003 ]
  %1021 = mul i64 %1020, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1001, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 1, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %1022 = icmp slt i64 %1021, 0, !dbg !4326
  br i1 %1022, label %1030, label %1023, !dbg !4326

1023:                                             ; preds = %1008, %1018
  %1024 = phi i32 [ %1009, %1008 ], [ %1019, %1018 ]
  %1025 = phi i64 [ 9223372036854775807, %1008 ], [ %1021, %1018 ]
  %1026 = udiv i64 9223372036854775807, %55, !dbg !4326
  %1027 = icmp ult i64 %1026, %1025, !dbg !4326
  br i1 %1027, label %1028, label %1038, !dbg !4326

1028:                                             ; preds = %1023
  %1029 = or i32 %1024, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1043, !dbg !4326

1030:                                             ; preds = %1018, %1016
  %1031 = phi i32 [ %1017, %1016 ], [ %1019, %1018 ]
  %1032 = phi i64 [ -9223372036854775808, %1016 ], [ %1021, %1018 ]
  %1033 = sub i64 0, %1032, !dbg !4326
  %1034 = udiv i64 -9223372036854775808, %1033, !dbg !4326
  %1035 = icmp slt i64 %1034, %55, !dbg !4326
  br i1 %1035, label %1036, label %1038, !dbg !4326

1036:                                             ; preds = %1030
  %1037 = or i32 %1031, 1, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  br label %1048, !dbg !4326

1038:                                             ; preds = %1023, %1030
  %1039 = phi i32 [ %1031, %1030 ], [ %1024, %1023 ]
  %1040 = phi i64 [ %1032, %1030 ], [ %1025, %1023 ]
  %1041 = mul i64 %1040, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1021, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i64* undef, metadata !4317, metadata !DIExpression()), !dbg !4324
  call void @llvm.dbg.value(metadata i32 undef, metadata !4322, metadata !DIExpression()), !dbg !4324
  %1042 = icmp slt i64 %1041, 0, !dbg !4326
  br i1 %1042, label %1048, label %1043, !dbg !4326

1043:                                             ; preds = %1028, %1038
  %1044 = phi i32 [ %1029, %1028 ], [ %1039, %1038 ]
  %1045 = phi i64 [ 9223372036854775807, %1028 ], [ %1041, %1038 ]
  %1046 = udiv i64 9223372036854775807, %55, !dbg !4326
  %1047 = icmp ult i64 %1046, %1045, !dbg !4326
  br i1 %1047, label %1058, label %1054, !dbg !4326

1048:                                             ; preds = %1038, %1036
  %1049 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1050 = phi i64 [ -9223372036854775808, %1036 ], [ %1041, %1038 ]
  %1051 = sub i64 0, %1050, !dbg !4326
  %1052 = udiv i64 -9223372036854775808, %1051, !dbg !4326
  %1053 = icmp slt i64 %1052, %55, !dbg !4326
  br i1 %1053, label %1058, label %1054, !dbg !4326

1054:                                             ; preds = %1048, %1043
  %1055 = phi i32 [ %1049, %1048 ], [ %1044, %1043 ]
  %1056 = phi i64 [ %1050, %1048 ], [ %1045, %1043 ]
  %1057 = mul i64 %1056, %55, !dbg !4326
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1041, i32 undef), metadata !4323, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4324
  br label %1058, !dbg !4404

1058:                                             ; preds = %1054, %1048, %1043
  %1059 = phi i32 [ %1055, %1054 ], [ %1044, %1043 ], [ %1049, %1048 ]
  %1060 = phi i64 [ %1057, %1054 ], [ 9223372036854775807, %1043 ], [ -9223372036854775808, %1048 ], !dbg !4324
  %1061 = phi i32 [ 0, %1054 ], [ 1, %1043 ], [ 1, %1048 ], !dbg !4324
  %1062 = or i32 %1061, %1059, !dbg !4403
  call void @llvm.dbg.value(metadata i32 %1062, metadata !4306, metadata !DIExpression()), !dbg !4314
  call void @llvm.dbg.value(metadata i32 0, metadata !4313, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4314
  br label %1063, !dbg !4363

1063:                                             ; preds = %788, %80, %71, %245, %249, %252, %1058, %934, %781, %715, %551, %367, %283, %236, %186, %54, %74, %76, %83, %85, %791, %793
  %1064 = phi i64 [ %32, %54 ], [ %77, %76 ], [ 9223372036854775807, %74 ], [ %86, %85 ], [ 9223372036854775807, %83 ], [ %794, %793 ], [ 9223372036854775807, %791 ], [ %188, %186 ], [ %238, %236 ], [ %285, %283 ], [ %369, %367 ], [ %553, %551 ], [ %717, %715 ], [ %783, %781 ], [ %936, %934 ], [ %1060, %1058 ], [ %253, %252 ], [ 9223372036854775807, %249 ], [ -9223372036854775808, %245 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %80 ], [ -9223372036854775808, %788 ], !dbg !4252
  %1065 = phi i32 [ 0, %54 ], [ 0, %76 ], [ 1, %74 ], [ 0, %85 ], [ 1, %83 ], [ 0, %793 ], [ 1, %791 ], [ %190, %186 ], [ %240, %236 ], [ %287, %283 ], [ %371, %367 ], [ %555, %551 ], [ %719, %715 ], [ %785, %781 ], [ %938, %934 ], [ %1062, %1058 ], [ 0, %252 ], [ 1, %249 ], [ 1, %245 ], [ 1, %71 ], [ 1, %80 ], [ 1, %788 ], !dbg !4405
  call void @llvm.dbg.value(metadata i32 %1065, metadata !4251, metadata !DIExpression()), !dbg !4291
  %1066 = or i32 %1065, %31, !dbg !4363
  call void @llvm.dbg.value(metadata i32 %1066, metadata !4246, metadata !DIExpression()), !dbg !4252
  %1067 = getelementptr inbounds i8, i8* %12, i64 %56, !dbg !4406
  store i8* %1067, i8** %9, align 8, !dbg !4406, !tbaa !476
  %1068 = load i8, i8* %1067, align 1, !dbg !4407, !tbaa !581
  %1069 = icmp eq i8 %1068, 0, !dbg !4407
  %1070 = or i32 %1066, 2
  %1071 = select i1 %1069, i32 %1066, i32 %1070, !dbg !4409
  call void @llvm.dbg.value(metadata i32 %31, metadata !4246, metadata !DIExpression()), !dbg !4252
  br label %1074

1072:                                             ; preds = %54
  call void @llvm.dbg.value(metadata i64 %11, metadata !4245, metadata !DIExpression()), !dbg !4252
  store i64 %32, i64* %3, align 8, !dbg !4410, !tbaa !923
  %1073 = or i32 %31, 2, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %31, metadata !4246, metadata !DIExpression()), !dbg !4252
  br label %1077

1074:                                             ; preds = %1063, %30
  %1075 = phi i64 [ %32, %30 ], [ %1064, %1063 ], !dbg !4412
  %1076 = phi i32 [ %31, %30 ], [ %1071, %1063 ], !dbg !4413
  call void @llvm.dbg.value(metadata i32 %1076, metadata !4246, metadata !DIExpression()), !dbg !4252
  call void @llvm.dbg.value(metadata i64 %1075, metadata !4245, metadata !DIExpression()), !dbg !4252
  store i64 %1075, i64* %3, align 8, !dbg !4414, !tbaa !923
  br label %1077, !dbg !4415

1077:                                             ; preds = %1072, %23, %14, %16, %19, %1074, %39, %29
  %1078 = phi i32 [ %1076, %1074 ], [ %1073, %1072 ], [ %40, %39 ], [ %27, %29 ], [ 4, %19 ], [ 4, %16 ], [ 4, %14 ], [ 4, %23 ], !dbg !4252
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #37, !dbg !4416
  ret i32 %1078, !dbg !4416
}

; Function Attrs: nounwind
declare !dbg !4417 i64 @strtoimax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #19 !dbg !4422 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4460, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8* %1, metadata !4461, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 0, metadata !4462, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 0, metadata !4463, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8 0, metadata !4464, metadata !DIExpression()), !dbg !4484
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4485
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #37, !dbg !4485
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4465, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.value(metadata i8* %1, metadata !4469, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i8* %4, metadata !4471, metadata !DIExpression()), !dbg !4487
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4488

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4487
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4489
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4484
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4490
  call void @llvm.dbg.value(metadata i32 %11, metadata !4462, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %10, metadata !4463, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8* %9, metadata !4471, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i8* %8, metadata !4469, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i8 poison, metadata !4464, metadata !DIExpression()), !dbg !4484
  %12 = load i8, i8* %8, align 1, !dbg !4491, !tbaa !581
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4492

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4462, metadata !DIExpression()), !dbg !4484
  %14 = icmp ult i8* %9, %5, !dbg !4493
  br i1 %14, label %15, label %47, !dbg !4496

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4497
  call void @llvm.dbg.value(metadata i8* %16, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 114, i8* %9, align 1, !dbg !4498, !tbaa !581
  br label %47, !dbg !4499

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4462, metadata !DIExpression()), !dbg !4484
  %18 = or i32 %10, 576, !dbg !4500
  call void @llvm.dbg.value(metadata i32 %18, metadata !4463, metadata !DIExpression()), !dbg !4484
  %19 = icmp ult i8* %9, %5, !dbg !4501
  br i1 %19, label %20, label %47, !dbg !4503

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4504
  call void @llvm.dbg.value(metadata i8* %21, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 119, i8* %9, align 1, !dbg !4505, !tbaa !581
  br label %47, !dbg !4506

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4462, metadata !DIExpression()), !dbg !4484
  %23 = or i32 %10, 1088, !dbg !4507
  call void @llvm.dbg.value(metadata i32 %23, metadata !4463, metadata !DIExpression()), !dbg !4484
  %24 = icmp ult i8* %9, %5, !dbg !4508
  br i1 %24, label %25, label %47, !dbg !4510

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4511
  call void @llvm.dbg.value(metadata i8* %26, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 97, i8* %9, align 1, !dbg !4512, !tbaa !581
  br label %47, !dbg !4513

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4463, metadata !DIExpression()), !dbg !4484
  %28 = icmp ult i8* %9, %5, !dbg !4514
  br i1 %28, label %29, label %47, !dbg !4516

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4517
  call void @llvm.dbg.value(metadata i8* %30, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 98, i8* %9, align 1, !dbg !4518, !tbaa !581
  br label %47, !dbg !4519

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4462, metadata !DIExpression()), !dbg !4484
  %32 = icmp ult i8* %9, %5, !dbg !4520
  br i1 %32, label %33, label %47, !dbg !4522

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4523
  call void @llvm.dbg.value(metadata i8* %34, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 43, i8* %9, align 1, !dbg !4524, !tbaa !581
  br label %47, !dbg !4525

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4526
  call void @llvm.dbg.value(metadata i32 %36, metadata !4463, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8 1, metadata !4464, metadata !DIExpression()), !dbg !4484
  br label %47, !dbg !4527

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4528
  call void @llvm.dbg.value(metadata i32 %38, metadata !4463, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8 1, metadata !4464, metadata !DIExpression()), !dbg !4484
  br label %47, !dbg !4529

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #38, !dbg !4530
  call void @llvm.dbg.value(metadata i64 %40, metadata !4472, metadata !DIExpression()), !dbg !4531
  %41 = ptrtoint i8* %5 to i64, !dbg !4532
  %42 = ptrtoint i8* %9 to i64, !dbg !4532
  %43 = sub i64 %41, %42, !dbg !4532
  %44 = icmp ugt i64 %40, %43, !dbg !4534
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4535
  call void @llvm.dbg.value(metadata i64 %45, metadata !4472, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i8* %9, metadata !4536, metadata !DIExpression()) #37, !dbg !4541
  call void @llvm.dbg.value(metadata i8* %8, metadata !4539, metadata !DIExpression()) #37, !dbg !4541
  call void @llvm.dbg.value(metadata i64 %45, metadata !4540, metadata !DIExpression()) #37, !dbg !4541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #37, !dbg !4543
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4544
  call void @llvm.dbg.value(metadata i8* %46, metadata !4471, metadata !DIExpression()), !dbg !4487
  br label %53, !dbg !4545

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4487
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4484
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4484
  call void @llvm.dbg.value(metadata i32 %51, metadata !4462, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i32 %50, metadata !4463, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.value(metadata i8* %49, metadata !4471, metadata !DIExpression()), !dbg !4487
  call void @llvm.dbg.value(metadata i8 poison, metadata !4464, metadata !DIExpression()), !dbg !4484
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4546
  call void @llvm.dbg.value(metadata i8* %52, metadata !4469, metadata !DIExpression()), !dbg !4487
  br label %6, !dbg !4547, !llvm.loop !4548

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4487
  call void @llvm.dbg.value(metadata i8* %54, metadata !4471, metadata !DIExpression()), !dbg !4487
  store i8 0, i8* %54, align 1, !dbg !4550, !tbaa !581
  br i1 %7, label %55, label %66, !dbg !4551

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4552
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #37, !dbg !4553
  call void @llvm.dbg.value(metadata i32 %57, metadata !4477, metadata !DIExpression()), !dbg !4554
  %58 = icmp slt i32 %57, 0, !dbg !4555
  br i1 %58, label %68, label %59, !dbg !4557

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #37, !dbg !4558
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4480, metadata !DIExpression()), !dbg !4554
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4559
  br i1 %61, label %62, label %68, !dbg !4560

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #40, !dbg !4561
  %64 = load i32, i32* %63, align 4, !dbg !4561, !tbaa !572
  call void @llvm.dbg.value(metadata i32 %64, metadata !4481, metadata !DIExpression()), !dbg !4562
  %65 = call i32 @close(i32 noundef %57) #37, !dbg !4563
  store i32 %64, i32* %63, align 4, !dbg !4564, !tbaa !572
  br label %68, !dbg !4565

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4566, metadata !DIExpression()) #37, !dbg !4570
  call void @llvm.dbg.value(metadata i8* %1, metadata !4569, metadata !DIExpression()) #37, !dbg !4570
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #37, !dbg !4572
  br label %68, !dbg !4573

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4484
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #37, !dbg !4574
  ret %struct._IO_FILE* %69, !dbg !4574
}

; Function Attrs: nofree
declare !dbg !4575 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4578 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4581 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #19 !dbg !4582 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4620, metadata !DIExpression()), !dbg !4625
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #37, !dbg !4626
  call void @llvm.dbg.value(metadata i1 undef, metadata !4621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4625
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4627, metadata !DIExpression()), !dbg !4630
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4632
  %4 = load i32, i32* %3, align 8, !dbg !4632, !tbaa !899
  %5 = and i32 %4, 32, !dbg !4633
  %6 = icmp eq i32 %5, 0, !dbg !4633
  call void @llvm.dbg.value(metadata i1 %6, metadata !4623, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4625
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #37, !dbg !4634
  %8 = icmp eq i32 %7, 0, !dbg !4635
  call void @llvm.dbg.value(metadata i1 %8, metadata !4624, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4625
  br i1 %6, label %9, label %19, !dbg !4636

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4638
  call void @llvm.dbg.value(metadata i1 %10, metadata !4621, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4625
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4639
  %12 = xor i1 %8, true, !dbg !4639
  %13 = sext i1 %12 to i32, !dbg !4639
  br i1 %11, label %22, label %14, !dbg !4639

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #40, !dbg !4640
  %16 = load i32, i32* %15, align 4, !dbg !4640, !tbaa !572
  %17 = icmp ne i32 %16, 9, !dbg !4641
  %18 = sext i1 %17 to i32, !dbg !4642
  br label %22, !dbg !4642

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4643

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #40, !dbg !4645
  store i32 0, i32* %21, align 4, !dbg !4647, !tbaa !572
  br label %22, !dbg !4645

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4625
  ret i32 %23, !dbg !4648
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #19 !dbg !4649 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4654, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i8* %1, metadata !4655, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i64 %2, metadata !4656, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4657, metadata !DIExpression()), !dbg !4659
  %5 = icmp eq i8* %1, null, !dbg !4660
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4662
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.172, i64 0, i64 0), i8* %1, !dbg !4662
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4662
  call void @llvm.dbg.value(metadata i64 %8, metadata !4656, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i8* %7, metadata !4655, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata i32* %6, metadata !4654, metadata !DIExpression()), !dbg !4659
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4663
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4665
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4657, metadata !DIExpression()), !dbg !4659
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #37, !dbg !4666
  call void @llvm.dbg.value(metadata i64 %11, metadata !4658, metadata !DIExpression()), !dbg !4659
  %12 = icmp ult i64 %11, -3, !dbg !4667
  br i1 %12, label %13, label %18, !dbg !4669

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #38, !dbg !4670
  %15 = icmp eq i32 %14, 0, !dbg !4670
  br i1 %15, label %16, label %30, !dbg !4671

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4672, metadata !DIExpression()) #37, !dbg !4677
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4679, metadata !DIExpression()) #37, !dbg !4684
  call void @llvm.dbg.value(metadata i32 0, metadata !4682, metadata !DIExpression()) #37, !dbg !4684
  call void @llvm.dbg.value(metadata i64 8, metadata !4683, metadata !DIExpression()) #37, !dbg !4684
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4686
  store i64 0, i64* %17, align 1, !dbg !4686
  br label %30, !dbg !4687

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4688
  br i1 %19, label %20, label %21, !dbg !4690

20:                                               ; preds = %18
  tail call void @abort() #39, !dbg !4691
  unreachable, !dbg !4691

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4692

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4694
  br i1 %24, label %30, label %25, !dbg !4695

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4696
  br i1 %26, label %30, label %27, !dbg !4699

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4700, !tbaa !581
  %29 = zext i8 %28 to i32, !dbg !4701
  store i32 %29, i32* %6, align 4, !dbg !4702, !tbaa !572
  br label %30, !dbg !4703

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4659
  ret i64 %31, !dbg !4704
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4705 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4713, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %1, metadata !4714, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %2, metadata !4715, metadata !DIExpression()), !dbg !4717
  %4 = icmp eq i64 %2, 0, !dbg !4718
  br i1 %4, label %8, label %5, !dbg !4718

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4718
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4718
  br i1 %7, label %13, label %8, !dbg !4718

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4716, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4717
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4716, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4717
  %9 = mul i64 %2, %1, !dbg !4718
  call void @llvm.dbg.value(metadata i64 %9, metadata !4716, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i8* %0, metadata !4720, metadata !DIExpression()) #37, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %9, metadata !4723, metadata !DIExpression()) #37, !dbg !4724
  %10 = icmp eq i64 %9, 0, !dbg !4726
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4726
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #37, !dbg !4727
  br label %15, !dbg !4728

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4716, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4717
  %14 = tail call i32* @__errno_location() #40, !dbg !4729
  store i32 12, i32* %14, align 4, !dbg !4731, !tbaa !572
  br label %15, !dbg !4732

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4717
  ret i8* %16, !dbg !4733
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #19 !dbg !4734 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4738, metadata !DIExpression()), !dbg !4743
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4744
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #37, !dbg !4744
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4739, metadata !DIExpression()), !dbg !4745
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #37, !dbg !4746
  %5 = icmp eq i32 %4, 0, !dbg !4746
  br i1 %5, label %6, label %13, !dbg !4748

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4749, metadata !DIExpression()) #37, !dbg !4753
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0), metadata !4752, metadata !DIExpression()) #37, !dbg !4753
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i64 0, i64 0), i64 2), !dbg !4756
  %8 = icmp eq i32 %7, 0, !dbg !4757
  br i1 %8, label %12, label %9, !dbg !4758

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4749, metadata !DIExpression()) #37, !dbg !4759
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), metadata !4752, metadata !DIExpression()) #37, !dbg !4759
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.178, i64 0, i64 0), i64 6), !dbg !4761
  %11 = icmp eq i32 %10, 0, !dbg !4762
  br i1 %11, label %12, label %13, !dbg !4763

12:                                               ; preds = %9, %6
  br label %13, !dbg !4764

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4743
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #37, !dbg !4765
  ret i1 %14, !dbg !4765
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !4766 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4770, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i8* %1, metadata !4771, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i64 %2, metadata !4772, metadata !DIExpression()), !dbg !4773
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #37, !dbg !4774
  ret i32 %4, !dbg !4775
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #19 !dbg !4776 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4780, metadata !DIExpression()), !dbg !4781
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4782
  ret i8* %2, !dbg !4783
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #19 !dbg !4784 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4786, metadata !DIExpression()), !dbg !4788
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37, !dbg !4789
  call void @llvm.dbg.value(metadata i8* %2, metadata !4787, metadata !DIExpression()), !dbg !4788
  ret i8* %2, !dbg !4790
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #19 !dbg !4791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4793, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i8* %1, metadata !4794, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %2, metadata !4795, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i32 %0, metadata !4786, metadata !DIExpression()) #37, !dbg !4801
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37, !dbg !4803
  call void @llvm.dbg.value(metadata i8* %4, metadata !4787, metadata !DIExpression()) #37, !dbg !4801
  call void @llvm.dbg.value(metadata i8* %4, metadata !4796, metadata !DIExpression()), !dbg !4800
  %5 = icmp eq i8* %4, null, !dbg !4804
  br i1 %5, label %6, label %9, !dbg !4805

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4806
  br i1 %7, label %19, label %8, !dbg !4809

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4810, !tbaa !581
  br label %19, !dbg !4811

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #38, !dbg !4812
  call void @llvm.dbg.value(metadata i64 %10, metadata !4797, metadata !DIExpression()), !dbg !4813
  %11 = icmp ult i64 %10, %2, !dbg !4814
  br i1 %11, label %12, label %14, !dbg !4816

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4817
  call void @llvm.dbg.value(metadata i8* %1, metadata !4819, metadata !DIExpression()) #37, !dbg !4824
  call void @llvm.dbg.value(metadata i8* %4, metadata !4822, metadata !DIExpression()) #37, !dbg !4824
  call void @llvm.dbg.value(metadata i64 %13, metadata !4823, metadata !DIExpression()) #37, !dbg !4824
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4826
  br label %19, !dbg !4827

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4828
  br i1 %15, label %19, label %16, !dbg !4831

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4832
  call void @llvm.dbg.value(metadata i8* %1, metadata !4819, metadata !DIExpression()) #37, !dbg !4834
  call void @llvm.dbg.value(metadata i8* %4, metadata !4822, metadata !DIExpression()) #37, !dbg !4834
  call void @llvm.dbg.value(metadata i64 %17, metadata !4823, metadata !DIExpression()) #37, !dbg !4834
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4836
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4837
  store i8 0, i8* %18, align 1, !dbg !4838, !tbaa !581
  br label %19, !dbg !4839

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4840
  ret i32 %20, !dbg !4841
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
attributes #12 = { inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #14 = { nofree nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #16 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #24 = { nofree nosync nounwind willreturn }
attributes #25 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #27 = { argmemonly nofree nounwind readonly willreturn }
attributes #28 = { argmemonly nofree nounwind willreturn writeonly }
attributes #29 = { inlinehint nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #30 = { nounwind uwtable allocsize(1,2) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #31 = { nounwind uwtable allocsize(0) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #32 = { nounwind uwtable allocsize(1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #33 = { nounwind uwtable allocsize(0,1) "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #34 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #35 = { mustprogress nofree nounwind readonly willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #36 = { mustprogress nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #37 = { nounwind }
attributes #38 = { nounwind readonly willreturn }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind readnone willreturn }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!2, !166, !171, !186, !193, !357, !377, !380, !382, !385, !387, !389, !234, !244, !276, !391, !349, !397, !431, !433, !440, !442, !363, !444, !447, !449, !451}
!llvm.ident = !{!453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453, !453}
!llvm.module.flags = !{!454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 75, type: !152, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !52, globals: !64, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/basenc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "0c3d15bc5cd58555d8b873e09066a687")
!4 = !{!5, !14, !28, !37}
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
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 44, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!32 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!33 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!34 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!35 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!36 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 46, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!40 = !DIEnumerator(name: "_ISupper", value: 256)
!41 = !DIEnumerator(name: "_ISlower", value: 512)
!42 = !DIEnumerator(name: "_ISalpha", value: 1024)
!43 = !DIEnumerator(name: "_ISdigit", value: 2048)
!44 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!45 = !DIEnumerator(name: "_ISspace", value: 8192)
!46 = !DIEnumerator(name: "_ISprint", value: 16384)
!47 = !DIEnumerator(name: "_ISgraph", value: 32768)
!48 = !DIEnumerator(name: "_ISblank", value: 1)
!49 = !DIEnumerator(name: "_IScntrl", value: 2)
!50 = !DIEnumerator(name: "_ISpunct", value: 4)
!51 = !DIEnumerator(name: "_ISalnum", value: 8)
!52 = !{!53, !55, !56, !57, !58, !61, !63}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 46, baseType: !60)
!59 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !0}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !67, file: !68, line: 575, type: !56, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "oputs_", scope: !68, file: !68, line: 573, type: !69, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!68 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!69 = !DISubroutineType(types: !70)
!70 = !{null, !61, !61}
!71 = !{!72, !73, !74, !77, !79, !80, !81, !85, !86, !87, !88, !90, !146, !147, !148, !150, !151}
!72 = !DILocalVariable(name: "program", arg: 1, scope: !67, file: !68, line: 573, type: !61)
!73 = !DILocalVariable(name: "option", arg: 2, scope: !67, file: !68, line: 573, type: !61)
!74 = !DILocalVariable(name: "term", scope: !75, file: !68, line: 585, type: !61)
!75 = distinct !DILexicalBlock(scope: !76, file: !68, line: 582, column: 5)
!76 = distinct !DILexicalBlock(scope: !67, file: !68, line: 581, column: 7)
!77 = !DILocalVariable(name: "double_space", scope: !67, file: !68, line: 594, type: !78)
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !DILocalVariable(name: "first_word", scope: !67, file: !68, line: 595, type: !61)
!80 = !DILocalVariable(name: "option_text", scope: !67, file: !68, line: 596, type: !61)
!81 = !DILocalVariable(name: "s", scope: !82, file: !68, line: 608, type: !61)
!82 = distinct !DILexicalBlock(scope: !83, file: !68, line: 605, column: 5)
!83 = distinct !DILexicalBlock(scope: !84, file: !68, line: 604, column: 12)
!84 = distinct !DILexicalBlock(scope: !67, file: !68, line: 597, column: 7)
!85 = !DILocalVariable(name: "spaces", scope: !82, file: !68, line: 609, type: !58)
!86 = !DILocalVariable(name: "anchor_len", scope: !67, file: !68, line: 620, type: !58)
!87 = !DILocalVariable(name: "desc_text", scope: !67, file: !68, line: 625, type: !61)
!88 = !DILocalVariable(name: "__ptr", scope: !89, file: !68, line: 644, type: !61)
!89 = distinct !DILexicalBlock(scope: !67, file: !68, line: 644, column: 3)
!90 = !DILocalVariable(name: "__stream", scope: !89, file: !68, line: 644, type: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !94)
!93 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !96)
!95 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !112, !114, !115, !116, !120, !121, !123, !127, !130, !132, !135, !138, !139, !140, !141, !142}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !94, file: !95, line: 51, baseType: !56, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !94, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !94, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !94, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !94, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !94, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !94, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !94, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !94, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !94, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !94, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !94, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !94, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !95, line: 36, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !94, file: !95, line: 70, baseType: !113, size: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !94, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !94, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !94, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !118, line: 152, baseType: !119)
!118 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !94, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !94, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!122 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !94, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 1)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !94, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !95, line: 43, baseType: null)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !94, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !118, line: 153, baseType: !119)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !94, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !95, line: 37, flags: DIFlagFwdDecl)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !94, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !95, line: 38, flags: DIFlagFwdDecl)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !94, file: !95, line: 93, baseType: !113, size: 64, offset: 1344)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !94, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !94, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !94, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !94, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 160, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 20)
!146 = !DILocalVariable(name: "__cnt", scope: !89, file: !68, line: 644, type: !58)
!147 = !DILocalVariable(name: "url_program", scope: !67, file: !68, line: 648, type: !61)
!148 = !DILocalVariable(name: "__ptr", scope: !149, file: !68, line: 686, type: !61)
!149 = distinct !DILexicalBlock(scope: !67, file: !68, line: 686, column: 3)
!150 = !DILocalVariable(name: "__stream", scope: !149, file: !68, line: 686, type: !91)
!151 = !DILocalVariable(name: "__cnt", scope: !149, file: !68, line: 686, type: !58)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 1536, elements: !162)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !155, line: 50, size: 256, elements: !156)
!155 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!156 = !{!157, !158, !159, !161}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !154, file: !155, line: 52, baseType: !61, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !154, file: !155, line: 55, baseType: !56, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !154, file: !155, line: 56, baseType: !160, size: 64, offset: 128)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !154, file: !155, line: 57, baseType: !56, size: 32, offset: 192)
!162 = !{!163}
!163 = !DISubrange(count: 6)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "Version", scope: !166, file: !167, line: 3, type: !61, isLocal: false, isDefinition: true)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !168, splitDebugInlining: false, nameTableKind: None)
!167 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!168 = !{!164}
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(name: "base64_to_int", scope: !171, file: !172, line: 243, type: !180, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !173, globals: !174, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/base64.c", directory: "/src", checksumkind: CSK_MD5, checksum: "de7b87ba8809e6c9b8f3253a3b932105")
!173 = !{!78, !119, !60, !55, !53}
!174 = !{!169, !175}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "b64c", scope: !171, file: !172, line: 62, type: !177, isLocal: true, isDefinition: true)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 64)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 2048, elements: !182)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!182 = !{!183}
!183 = !DISubrange(count: 256)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "file_name", scope: !186, file: !187, line: 45, type: !61, isLocal: true, isDefinition: true)
!186 = distinct !DICompileUnit(language: DW_LANG_C99, file: !187, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !188, splitDebugInlining: false, nameTableKind: None)
!187 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!188 = !{!184, !189}
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !186, file: !187, line: 55, type: !78, isLocal: true, isDefinition: true)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !193, file: !194, line: 66, type: !229, isLocal: false, isDefinition: true)
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !195, globals: !196, splitDebugInlining: false, nameTableKind: None)
!194 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!195 = !{!55, !63}
!196 = !{!197, !223, !191, !225, !227}
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "old_file_name", scope: !199, file: !194, line: 304, type: !61, isLocal: true, isDefinition: true)
!199 = distinct !DISubprogram(name: "verror_at_line", scope: !194, file: !194, line: 298, type: !200, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !216)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !56, !56, !61, !7, !61, !202}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !203, line: 52, baseType: !204)
!203 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !205, line: 32, baseType: !206)
!205 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !207, baseType: !208)
!207 = !DIFile(filename: "lib/error.c", directory: "/src")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !209, size: 256, elements: !210)
!209 = !DINamespace(name: "std", scope: null)
!210 = !{!211, !212, !213, !214, !215}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !208, file: !207, baseType: !55, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !208, file: !207, baseType: !55, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !208, file: !207, baseType: !55, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !208, file: !207, baseType: !56, size: 32, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !208, file: !207, baseType: !56, size: 32, offset: 224)
!216 = !{!217, !218, !219, !220, !221, !222}
!217 = !DILocalVariable(name: "status", arg: 1, scope: !199, file: !194, line: 298, type: !56)
!218 = !DILocalVariable(name: "errnum", arg: 2, scope: !199, file: !194, line: 298, type: !56)
!219 = !DILocalVariable(name: "file_name", arg: 3, scope: !199, file: !194, line: 298, type: !61)
!220 = !DILocalVariable(name: "line_number", arg: 4, scope: !199, file: !194, line: 298, type: !7)
!221 = !DILocalVariable(name: "message", arg: 5, scope: !199, file: !194, line: 298, type: !61)
!222 = !DILocalVariable(name: "args", arg: 6, scope: !199, file: !194, line: 298, type: !202)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(name: "old_line_number", scope: !199, file: !194, line: 305, type: !7, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(name: "error_message_count", scope: !193, file: !194, line: 69, type: !7, isLocal: false, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !193, file: !194, line: 295, type: !56, isLocal: false, isDefinition: true)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null}
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "program_name", scope: !234, file: !235, line: 31, type: !61, isLocal: false, isDefinition: true)
!234 = distinct !DICompileUnit(language: DW_LANG_C99, file: !235, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !236, globals: !237, splitDebugInlining: false, nameTableKind: None)
!235 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!236 = !{!53}
!237 = !{!232}
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "utf07FF", scope: !240, file: !241, line: 46, type: !271, isLocal: true, isDefinition: true)
!240 = distinct !DISubprogram(name: "proper_name_lite", scope: !241, file: !241, line: 38, type: !242, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !246)
!241 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!242 = !DISubroutineType(types: !243)
!243 = !{!61, !61, !61}
!244 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !245, splitDebugInlining: false, nameTableKind: None)
!245 = !{!238}
!246 = !{!247, !248, !249, !250, !255}
!247 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !240, file: !241, line: 38, type: !61)
!248 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !240, file: !241, line: 38, type: !61)
!249 = !DILocalVariable(name: "translation", scope: !240, file: !241, line: 40, type: !61)
!250 = !DILocalVariable(name: "w", scope: !240, file: !241, line: 47, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !252, line: 37, baseType: !253)
!252 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !118, line: 57, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !118, line: 42, baseType: !7)
!255 = !DILocalVariable(name: "mbs", scope: !240, file: !241, line: 48, type: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !257, line: 6, baseType: !258)
!257 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !259, line: 21, baseType: !260)
!259 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 13, size: 64, elements: !261)
!261 = !{!262, !263}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !260, file: !259, line: 15, baseType: !56, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !260, file: !259, line: 20, baseType: !264, size: 32, offset: 32)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !260, file: !259, line: 16, size: 32, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !264, file: !259, line: 18, baseType: !7, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !264, file: !259, line: 19, baseType: !268, size: 32)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 2)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !276, file: !277, line: 76, type: !343, isLocal: false, isDefinition: true)
!276 = distinct !DICompileUnit(language: DW_LANG_C99, file: !277, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !278, retainedTypes: !284, globals: !285, splitDebugInlining: false, nameTableKind: None)
!277 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!278 = !{!14, !279, !37}
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 254, baseType: !7, size: 32, elements: !280)
!280 = !{!281, !282, !283}
!281 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!282 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!283 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!284 = !{!56, !57, !58}
!285 = !{!274, !286, !292, !304, !306, !309, !332, !339, !341}
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !276, file: !277, line: 92, type: !288, isLocal: false, isDefinition: true)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 320, elements: !290)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!290 = !{!291}
!291 = !DISubrange(count: 10)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !276, file: !277, line: 1040, type: !294, isLocal: false, isDefinition: true)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !277, line: 56, size: 448, elements: !295)
!295 = !{!296, !297, !298, !302, !303}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !294, file: !277, line: 59, baseType: !14, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !294, file: !277, line: 62, baseType: !56, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !294, file: !277, line: 66, baseType: !299, size: 256, offset: 64)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 8)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !294, file: !277, line: 69, baseType: !61, size: 64, offset: 320)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !294, file: !277, line: 72, baseType: !61, size: 64, offset: 384)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !276, file: !277, line: 107, type: !294, isLocal: true, isDefinition: true)
!306 = !DIGlobalVariableExpression(var: !307, expr: !DIExpression())
!307 = distinct !DIGlobalVariable(name: "slot0", scope: !276, file: !277, line: 831, type: !308, isLocal: true, isDefinition: true)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !182)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(name: "quote", scope: !311, file: !277, line: 228, type: !330, isLocal: true, isDefinition: true)
!311 = distinct !DISubprogram(name: "gettext_quote", scope: !277, file: !277, line: 197, type: !312, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !314)
!312 = !DISubroutineType(types: !313)
!313 = !{!61, !61, !14}
!314 = !{!315, !316, !317, !318, !319}
!315 = !DILocalVariable(name: "msgid", arg: 1, scope: !311, file: !277, line: 197, type: !61)
!316 = !DILocalVariable(name: "s", arg: 2, scope: !311, file: !277, line: 197, type: !14)
!317 = !DILocalVariable(name: "translation", scope: !311, file: !277, line: 199, type: !61)
!318 = !DILocalVariable(name: "w", scope: !311, file: !277, line: 229, type: !251)
!319 = !DILocalVariable(name: "mbs", scope: !311, file: !277, line: 230, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !257, line: 6, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !259, line: 21, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 13, size: 64, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !322, file: !259, line: 15, baseType: !56, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !322, file: !259, line: 20, baseType: !326, size: 32, offset: 32)
!326 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !259, line: 16, size: 32, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !326, file: !259, line: 18, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !326, file: !259, line: 19, baseType: !268, size: 32)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !331)
!331 = !{!273, !270}
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(name: "slotvec", scope: !276, file: !277, line: 834, type: !334, isLocal: true, isDefinition: true)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !277, line: 823, size: 128, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !335, file: !277, line: 825, baseType: !58, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !335, file: !277, line: 826, baseType: !53, size: 64, offset: 64)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "nslots", scope: !276, file: !277, line: 832, type: !56, isLocal: true, isDefinition: true)
!341 = !DIGlobalVariableExpression(var: !342, expr: !DIExpression())
!342 = distinct !DIGlobalVariable(name: "slotvec0", scope: !276, file: !277, line: 833, type: !335, isLocal: true, isDefinition: true)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 704, elements: !345)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!345 = !{!346}
!346 = !DISubrange(count: 11)
!347 = !DIGlobalVariableExpression(var: !348, expr: !DIExpression())
!348 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !349, file: !350, line: 26, type: !352, isLocal: false, isDefinition: true)
!349 = distinct !DICompileUnit(language: DW_LANG_C99, file: !350, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !351, splitDebugInlining: false, nameTableKind: None)
!350 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!351 = !{!347}
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 47)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(name: "exit_failure", scope: !357, file: !358, line: 24, type: !360, isLocal: false, isDefinition: true)
!357 = distinct !DICompileUnit(language: DW_LANG_C99, file: !358, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !359, splitDebugInlining: false, nameTableKind: None)
!358 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!359 = !{!355}
!360 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "internal_state", scope: !363, file: !364, line: 97, type: !367, isLocal: true, isDefinition: true)
!363 = distinct !DICompileUnit(language: DW_LANG_C99, file: !364, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !365, globals: !366, splitDebugInlining: false, nameTableKind: None)
!364 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!365 = !{!55, !58, !63}
!366 = !{!361}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !257, line: 6, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !259, line: 21, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 13, size: 64, elements: !370)
!370 = !{!371, !372}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !369, file: !259, line: 15, baseType: !56, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !369, file: !259, line: 20, baseType: !373, size: 32, offset: 32)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !369, file: !259, line: 16, size: 32, elements: !374)
!374 = !{!375, !376}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !373, file: !259, line: 18, baseType: !7, size: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !373, file: !259, line: 19, baseType: !268, size: 32)
!377 = distinct !DICompileUnit(language: DW_LANG_C99, file: !378, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !379, splitDebugInlining: false, nameTableKind: None)
!378 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!379 = !{!28}
!380 = distinct !DICompileUnit(language: DW_LANG_C99, file: !381, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!381 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!382 = distinct !DICompileUnit(language: DW_LANG_C99, file: !383, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!383 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!384 = !{!55}
!385 = distinct !DICompileUnit(language: DW_LANG_C99, file: !386, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!386 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!387 = distinct !DICompileUnit(language: DW_LANG_C99, file: !388, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!388 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!389 = distinct !DICompileUnit(language: DW_LANG_C99, file: !390, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!390 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!391 = distinct !DICompileUnit(language: DW_LANG_C99, file: !392, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !393, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!392 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!393 = !{!394}
!394 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !392, line: 40, baseType: !7, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!397 = distinct !DICompileUnit(language: DW_LANG_C99, file: !398, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !399, retainedTypes: !430, splitDebugInlining: false, nameTableKind: None)
!398 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!399 = !{!400, !412}
!400 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !401, file: !398, line: 188, baseType: !7, size: 32, elements: !410)
!401 = distinct !DISubprogram(name: "x2nrealloc", scope: !398, file: !398, line: 176, type: !402, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !405)
!402 = !DISubroutineType(types: !403)
!403 = !{!55, !55, !404, !58}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!405 = !{!406, !407, !408, !409}
!406 = !DILocalVariable(name: "p", arg: 1, scope: !401, file: !398, line: 176, type: !55)
!407 = !DILocalVariable(name: "pn", arg: 2, scope: !401, file: !398, line: 176, type: !404)
!408 = !DILocalVariable(name: "s", arg: 3, scope: !401, file: !398, line: 176, type: !58)
!409 = !DILocalVariable(name: "n", scope: !401, file: !398, line: 178, type: !58)
!410 = !{!411}
!411 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !413, file: !398, line: 228, baseType: !7, size: 32, elements: !410)
!413 = distinct !DISubprogram(name: "xpalloc", scope: !398, file: !398, line: 223, type: !414, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !420)
!414 = !DISubroutineType(types: !415)
!415 = !{!55, !55, !416, !417, !419, !417}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !418, line: 130, baseType: !419)
!418 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !59, line: 35, baseType: !119)
!420 = !{!421, !422, !423, !424, !425, !426, !427, !428, !429}
!421 = !DILocalVariable(name: "pa", arg: 1, scope: !413, file: !398, line: 223, type: !55)
!422 = !DILocalVariable(name: "pn", arg: 2, scope: !413, file: !398, line: 223, type: !416)
!423 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !413, file: !398, line: 223, type: !417)
!424 = !DILocalVariable(name: "n_max", arg: 4, scope: !413, file: !398, line: 223, type: !419)
!425 = !DILocalVariable(name: "s", arg: 5, scope: !413, file: !398, line: 223, type: !417)
!426 = !DILocalVariable(name: "n0", scope: !413, file: !398, line: 230, type: !417)
!427 = !DILocalVariable(name: "n", scope: !413, file: !398, line: 237, type: !417)
!428 = !DILocalVariable(name: "nbytes", scope: !413, file: !398, line: 248, type: !417)
!429 = !DILocalVariable(name: "adjusted_nbytes", scope: !413, file: !398, line: 252, type: !417)
!430 = !{!53, !55, !78, !119, !60}
!431 = distinct !DICompileUnit(language: DW_LANG_C99, file: !432, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!432 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!433 = distinct !DICompileUnit(language: DW_LANG_C99, file: !434, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !435, retainedTypes: !436, splitDebugInlining: false, nameTableKind: None)
!434 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!435 = !{!5}
!436 = !{!78, !119, !60, !437}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !438, line: 101, baseType: !439)
!438 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !118, line: 72, baseType: !119)
!440 = distinct !DICompileUnit(language: DW_LANG_C99, file: !441, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!441 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!442 = distinct !DICompileUnit(language: DW_LANG_C99, file: !443, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!444 = distinct !DICompileUnit(language: DW_LANG_C99, file: !445, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !446, splitDebugInlining: false, nameTableKind: None)
!445 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!446 = !{!78, !60, !55}
!447 = distinct !DICompileUnit(language: DW_LANG_C99, file: !448, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!448 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!449 = distinct !DICompileUnit(language: DW_LANG_C99, file: !450, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!450 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!451 = distinct !DICompileUnit(language: DW_LANG_C99, file: !452, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !384, splitDebugInlining: false, nameTableKind: None)
!452 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!453 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!454 = !{i32 7, !"Dwarf Version", i32 5}
!455 = !{i32 2, !"Debug Info Version", i32 3}
!456 = !{i32 1, !"wchar_size", i32 4}
!457 = !{i32 1, !"branch-target-enforcement", i32 0}
!458 = !{i32 1, !"sign-return-address", i32 0}
!459 = !{i32 1, !"sign-return-address-all", i32 0}
!460 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!461 = !{i32 7, !"PIC Level", i32 2}
!462 = !{i32 7, !"PIE Level", i32 2}
!463 = !{i32 7, !"uwtable", i32 1}
!464 = !{i32 7, !"frame-pointer", i32 1}
!465 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 97, type: !466, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!466 = !DISubroutineType(types: !467)
!467 = !{null, !56}
!468 = !{!469}
!469 = !DILocalVariable(name: "status", arg: 1, scope: !465, file: !3, line: 97, type: !56)
!470 = !DILocation(line: 0, scope: !465)
!471 = !DILocation(line: 99, column: 14, scope: !472)
!472 = distinct !DILexicalBlock(scope: !465, file: !3, line: 99, column: 7)
!473 = !DILocation(line: 99, column: 7, scope: !465)
!474 = !DILocation(line: 100, column: 5, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !3, line: 100, column: 5)
!476 = !{!477, !477, i64 0}
!477 = !{!"any pointer", !478, i64 0}
!478 = !{!"omnipotent char", !479, i64 0}
!479 = !{!"Simple C/C++ TBAA"}
!480 = !DILocation(line: 103, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !472, file: !3, line: 102, column: 5)
!482 = !DILocation(line: 112, column: 7, scope: !481)
!483 = !DILocation(line: 729, column: 3, scope: !484, inlinedAt: !486)
!484 = distinct !DISubprogram(name: "emit_stdin_note", scope: !68, file: !68, line: 727, type: !230, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!485 = !{}
!486 = distinct !DILocation(line: 117, column: 7, scope: !481)
!487 = !DILocation(line: 736, column: 3, scope: !488, inlinedAt: !489)
!488 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !68, file: !68, line: 734, type: !230, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!489 = distinct !DILocation(line: 118, column: 7, scope: !481)
!490 = !DILocation(line: 153, column: 7, scope: !481)
!491 = !DILocation(line: 157, column: 7, scope: !481)
!492 = !DILocation(line: 161, column: 7, scope: !481)
!493 = !DILocation(line: 174, column: 7, scope: !481)
!494 = !DILocation(line: 175, column: 7, scope: !481)
!495 = !DILocation(line: 184, column: 7, scope: !481)
!496 = !DILocalVariable(name: "program", arg: 1, scope: !497, file: !68, line: 836, type: !61)
!497 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !68, file: !68, line: 836, type: !498, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !500)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !61}
!500 = !{!496, !501, !510, !511, !513, !514}
!501 = !DILocalVariable(name: "infomap", scope: !497, file: !68, line: 838, type: !502)
!502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 896, elements: !508)
!503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !504)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !497, file: !68, line: 838, size: 128, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !504, file: !68, line: 838, baseType: !61, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !68, line: 838, baseType: !61, size: 64, offset: 64)
!508 = !{!509}
!509 = !DISubrange(count: 7)
!510 = !DILocalVariable(name: "node", scope: !497, file: !68, line: 848, type: !61)
!511 = !DILocalVariable(name: "map_prog", scope: !497, file: !68, line: 849, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!513 = !DILocalVariable(name: "lc_messages", scope: !497, file: !68, line: 861, type: !61)
!514 = !DILocalVariable(name: "url_program", scope: !497, file: !68, line: 874, type: !61)
!515 = !DILocation(line: 0, scope: !497, inlinedAt: !516)
!516 = distinct !DILocation(line: 192, column: 7, scope: !481)
!517 = !DILocation(line: 838, column: 3, scope: !497, inlinedAt: !516)
!518 = !DILocation(line: 838, column: 67, scope: !497, inlinedAt: !516)
!519 = !DILocation(line: 849, column: 36, scope: !497, inlinedAt: !516)
!520 = !DILocation(line: 851, column: 3, scope: !497, inlinedAt: !516)
!521 = !DILocalVariable(name: "__s1", arg: 1, scope: !522, file: !523, line: 1359, type: !61)
!522 = distinct !DISubprogram(name: "streq", scope: !523, file: !523, line: 1359, type: !524, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!523 = !DIFile(filename: "./lib/string.h", directory: "/src")
!524 = !DISubroutineType(types: !525)
!525 = !{!78, !61, !61}
!526 = !{!521, !527}
!527 = !DILocalVariable(name: "__s2", arg: 2, scope: !522, file: !523, line: 1359, type: !61)
!528 = !DILocation(line: 0, scope: !522, inlinedAt: !529)
!529 = distinct !DILocation(line: 851, column: 33, scope: !497, inlinedAt: !516)
!530 = !DILocation(line: 1361, column: 11, scope: !522, inlinedAt: !529)
!531 = !DILocation(line: 1361, column: 10, scope: !522, inlinedAt: !529)
!532 = !DILocation(line: 852, column: 13, scope: !497, inlinedAt: !516)
!533 = !DILocation(line: 851, column: 20, scope: !497, inlinedAt: !516)
!534 = !{!535, !477, i64 0}
!535 = !{!"infomap", !477, i64 0, !477, i64 8}
!536 = !DILocation(line: 851, column: 10, scope: !497, inlinedAt: !516)
!537 = !DILocation(line: 851, column: 28, scope: !497, inlinedAt: !516)
!538 = distinct !{!538, !520, !532, !539}
!539 = !{!"llvm.loop.mustprogress"}
!540 = !DILocation(line: 854, column: 17, scope: !541, inlinedAt: !516)
!541 = distinct !DILexicalBlock(scope: !497, file: !68, line: 854, column: 7)
!542 = !{!535, !477, i64 8}
!543 = !DILocation(line: 854, column: 7, scope: !541, inlinedAt: !516)
!544 = !DILocation(line: 854, column: 7, scope: !497, inlinedAt: !516)
!545 = !DILocation(line: 857, column: 3, scope: !497, inlinedAt: !516)
!546 = !DILocation(line: 861, column: 29, scope: !497, inlinedAt: !516)
!547 = !DILocation(line: 862, column: 7, scope: !548, inlinedAt: !516)
!548 = distinct !DILexicalBlock(scope: !497, file: !68, line: 862, column: 7)
!549 = !DILocation(line: 862, column: 19, scope: !548, inlinedAt: !516)
!550 = !DILocation(line: 862, column: 22, scope: !548, inlinedAt: !516)
!551 = !DILocation(line: 862, column: 7, scope: !497, inlinedAt: !516)
!552 = !DILocation(line: 868, column: 7, scope: !553, inlinedAt: !516)
!553 = distinct !DILexicalBlock(scope: !548, file: !68, line: 863, column: 5)
!554 = !DILocation(line: 870, column: 5, scope: !553, inlinedAt: !516)
!555 = !DILocation(line: 0, scope: !522, inlinedAt: !556)
!556 = distinct !DILocation(line: 874, column: 29, scope: !497, inlinedAt: !516)
!557 = !DILocation(line: 875, column: 3, scope: !497, inlinedAt: !516)
!558 = !DILocation(line: 877, column: 3, scope: !497, inlinedAt: !516)
!559 = !DILocation(line: 879, column: 1, scope: !497, inlinedAt: !516)
!560 = !DILocation(line: 195, column: 3, scope: !465)
!561 = !DISubprogram(name: "dcgettext", scope: !562, file: !562, line: 51, type: !563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!562 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!563 = !DISubroutineType(types: !564)
!564 = !{!53, !61, !61, !56}
!565 = !DISubprogram(name: "fputs_unlocked", scope: !203, file: !203, line: 691, type: !566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!566 = !DISubroutineType(types: !567)
!567 = !{!56, !568, !569}
!568 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!569 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!570 = !DILocation(line: 0, scope: !67)
!571 = !DILocation(line: 581, column: 7, scope: !76)
!572 = !{!573, !573, i64 0}
!573 = !{!"int", !478, i64 0}
!574 = !DILocation(line: 581, column: 19, scope: !76)
!575 = !DILocation(line: 581, column: 7, scope: !67)
!576 = !DILocation(line: 585, column: 26, scope: !75)
!577 = !DILocation(line: 0, scope: !75)
!578 = !DILocation(line: 586, column: 23, scope: !75)
!579 = !DILocation(line: 586, column: 28, scope: !75)
!580 = !DILocation(line: 586, column: 32, scope: !75)
!581 = !{!478, !478, i64 0}
!582 = !DILocation(line: 586, column: 38, scope: !75)
!583 = !DILocation(line: 0, scope: !522, inlinedAt: !584)
!584 = distinct !DILocation(line: 586, column: 41, scope: !75)
!585 = !DILocation(line: 1361, column: 11, scope: !522, inlinedAt: !584)
!586 = !DILocation(line: 1361, column: 10, scope: !522, inlinedAt: !584)
!587 = !DILocation(line: 586, column: 19, scope: !75)
!588 = !DILocation(line: 587, column: 5, scope: !75)
!589 = !DILocation(line: 588, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !67, file: !68, line: 588, column: 7)
!591 = !DILocation(line: 588, column: 7, scope: !67)
!592 = !DILocation(line: 590, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !590, file: !68, line: 589, column: 5)
!594 = !DILocation(line: 591, column: 7, scope: !593)
!595 = !DILocation(line: 595, column: 37, scope: !67)
!596 = !DILocation(line: 595, column: 35, scope: !67)
!597 = !DILocation(line: 596, column: 29, scope: !67)
!598 = !DILocation(line: 597, column: 8, scope: !84)
!599 = !DILocation(line: 597, column: 7, scope: !67)
!600 = !DILocation(line: 604, column: 24, scope: !83)
!601 = !DILocation(line: 604, column: 12, scope: !84)
!602 = !DILocation(line: 0, scope: !82)
!603 = !DILocation(line: 610, column: 16, scope: !82)
!604 = !DILocation(line: 610, column: 7, scope: !82)
!605 = !DILocation(line: 611, column: 21, scope: !82)
!606 = !{!607, !607, i64 0}
!607 = !{!"short", !478, i64 0}
!608 = !DILocation(line: 611, column: 19, scope: !82)
!609 = !DILocation(line: 611, column: 16, scope: !82)
!610 = !DILocation(line: 610, column: 30, scope: !82)
!611 = distinct !{!611, !604, !605, !539}
!612 = !DILocation(line: 612, column: 18, scope: !613)
!613 = distinct !DILexicalBlock(scope: !82, file: !68, line: 612, column: 11)
!614 = !DILocation(line: 612, column: 11, scope: !82)
!615 = !DILocation(line: 620, column: 23, scope: !67)
!616 = !DILocation(line: 625, column: 39, scope: !67)
!617 = !DILocation(line: 626, column: 3, scope: !67)
!618 = !DILocation(line: 626, column: 10, scope: !67)
!619 = !DILocation(line: 626, column: 21, scope: !67)
!620 = !DILocation(line: 628, column: 44, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !68, line: 628, column: 11)
!622 = distinct !DILexicalBlock(scope: !67, file: !68, line: 627, column: 5)
!623 = !DILocation(line: 628, column: 32, scope: !621)
!624 = !DILocation(line: 628, column: 49, scope: !621)
!625 = !DILocation(line: 628, column: 11, scope: !622)
!626 = !DILocation(line: 630, column: 11, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !68, line: 630, column: 11)
!628 = !DILocation(line: 630, column: 11, scope: !622)
!629 = !DILocation(line: 632, column: 26, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !68, line: 632, column: 15)
!631 = distinct !DILexicalBlock(scope: !627, file: !68, line: 631, column: 9)
!632 = !DILocation(line: 632, column: 34, scope: !630)
!633 = !DILocation(line: 632, column: 37, scope: !630)
!634 = !DILocation(line: 632, column: 15, scope: !631)
!635 = !DILocation(line: 636, column: 29, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !68, line: 636, column: 15)
!637 = !DILocation(line: 640, column: 16, scope: !622)
!638 = distinct !{!638, !617, !639, !539}
!639 = !DILocation(line: 641, column: 5, scope: !67)
!640 = !DILocation(line: 644, column: 3, scope: !67)
!641 = !DILocation(line: 0, scope: !522, inlinedAt: !642)
!642 = distinct !DILocation(line: 648, column: 31, scope: !67)
!643 = !DILocation(line: 0, scope: !522, inlinedAt: !644)
!644 = distinct !DILocation(line: 649, column: 31, scope: !67)
!645 = !DILocation(line: 0, scope: !522, inlinedAt: !646)
!646 = distinct !DILocation(line: 650, column: 31, scope: !67)
!647 = !DILocation(line: 0, scope: !522, inlinedAt: !648)
!648 = distinct !DILocation(line: 651, column: 31, scope: !67)
!649 = !DILocation(line: 0, scope: !522, inlinedAt: !650)
!650 = distinct !DILocation(line: 652, column: 31, scope: !67)
!651 = !DILocation(line: 0, scope: !522, inlinedAt: !652)
!652 = distinct !DILocation(line: 653, column: 31, scope: !67)
!653 = !DILocation(line: 0, scope: !522, inlinedAt: !654)
!654 = distinct !DILocation(line: 654, column: 31, scope: !67)
!655 = !DILocation(line: 0, scope: !522, inlinedAt: !656)
!656 = distinct !DILocation(line: 655, column: 31, scope: !67)
!657 = !DILocation(line: 0, scope: !522, inlinedAt: !658)
!658 = distinct !DILocation(line: 656, column: 31, scope: !67)
!659 = !DILocation(line: 0, scope: !522, inlinedAt: !660)
!660 = distinct !DILocation(line: 657, column: 31, scope: !67)
!661 = !DILocation(line: 663, column: 7, scope: !662)
!662 = distinct !DILexicalBlock(scope: !67, file: !68, line: 663, column: 7)
!663 = !DILocation(line: 664, column: 7, scope: !662)
!664 = !DILocation(line: 664, column: 10, scope: !662)
!665 = !DILocation(line: 663, column: 7, scope: !67)
!666 = !DILocation(line: 669, column: 7, scope: !667)
!667 = distinct !DILexicalBlock(scope: !662, file: !68, line: 665, column: 5)
!668 = !DILocation(line: 671, column: 5, scope: !667)
!669 = !DILocation(line: 676, column: 7, scope: !670)
!670 = distinct !DILexicalBlock(scope: !662, file: !68, line: 673, column: 5)
!671 = !DILocation(line: 679, column: 3, scope: !67)
!672 = !DILocation(line: 683, column: 3, scope: !67)
!673 = !DILocation(line: 686, column: 3, scope: !67)
!674 = !DILocation(line: 688, column: 3, scope: !67)
!675 = !DILocation(line: 691, column: 3, scope: !67)
!676 = !DILocation(line: 695, column: 3, scope: !67)
!677 = !DILocation(line: 696, column: 1, scope: !67)
!678 = !DISubprogram(name: "setlocale", scope: !679, file: !679, line: 122, type: !680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!679 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!680 = !DISubroutineType(types: !681)
!681 = !{!53, !56, !61}
!682 = !DISubprogram(name: "getenv", scope: !683, file: !683, line: 641, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!683 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!684 = !DISubroutineType(types: !685)
!685 = !{!53, !61}
!686 = !DISubprogram(name: "fwrite_unlocked", scope: !203, file: !203, line: 704, type: !687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!687 = !DISubroutineType(types: !688)
!688 = !{!58, !689, !58, !58, !569}
!689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!692 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1630, type: !693, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !696)
!693 = !DISubroutineType(types: !694)
!694 = !{!56, !56, !695}
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !705, !708}
!697 = !DILocalVariable(name: "argc", arg: 1, scope: !692, file: !3, line: 1630, type: !56)
!698 = !DILocalVariable(name: "argv", arg: 2, scope: !692, file: !3, line: 1630, type: !695)
!699 = !DILocalVariable(name: "opt", scope: !692, file: !3, line: 1632, type: !56)
!700 = !DILocalVariable(name: "input_fh", scope: !692, file: !3, line: 1633, type: !91)
!701 = !DILocalVariable(name: "infile", scope: !692, file: !3, line: 1634, type: !61)
!702 = !DILocalVariable(name: "decode", scope: !692, file: !3, line: 1637, type: !78)
!703 = !DILocalVariable(name: "ignore_garbage", scope: !692, file: !3, line: 1639, type: !78)
!704 = !DILocalVariable(name: "wrap_column", scope: !692, file: !3, line: 1641, type: !417)
!705 = !DILocalVariable(name: "w", scope: !706, file: !3, line: 1664, type: !437)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 1663, column: 9)
!707 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1657, column: 7)
!708 = !DILocalVariable(name: "s_err", scope: !706, file: !3, line: 1665, type: !709)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 43, baseType: !5)
!710 = !DILocation(line: 0, scope: !692)
!711 = !DILocation(line: 1648, column: 21, scope: !692)
!712 = !DILocation(line: 1648, column: 3, scope: !692)
!713 = !DILocation(line: 1649, column: 3, scope: !692)
!714 = !DILocation(line: 1650, column: 3, scope: !692)
!715 = !DILocation(line: 1651, column: 3, scope: !692)
!716 = !DILocation(line: 1653, column: 3, scope: !692)
!717 = !DILocation(line: 1655, column: 3, scope: !692)
!718 = !DILocation(line: 1641, column: 9, scope: !692)
!719 = !DILocation(line: 1655, column: 17, scope: !692)
!720 = distinct !{!720, !717, !721, !539}
!721 = !DILocation(line: 1698, column: 7, scope: !692)
!722 = !DILocation(line: 1664, column: 11, scope: !706)
!723 = !DILocation(line: 1665, column: 44, scope: !706)
!724 = !DILocation(line: 0, scope: !706)
!725 = !DILocation(line: 1665, column: 32, scope: !706)
!726 = !DILocation(line: 1666, column: 32, scope: !727)
!727 = distinct !DILexicalBlock(scope: !706, file: !3, line: 1666, column: 15)
!728 = !DILocation(line: 1666, column: 40, scope: !727)
!729 = !DILocation(line: 1667, column: 13, scope: !727)
!730 = !DILocation(line: 1669, column: 31, scope: !706)
!731 = !DILocation(line: 1669, column: 51, scope: !706)
!732 = !DILocation(line: 1670, column: 9, scope: !707)
!733 = !DILocation(line: 1671, column: 9, scope: !707)
!734 = !DILocation(line: 1691, column: 7, scope: !707)
!735 = !DILocation(line: 1693, column: 7, scope: !707)
!736 = !DILocation(line: 1696, column: 9, scope: !707)
!737 = !DILocation(line: 1805, column: 14, scope: !738)
!738 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1805, column: 7)
!739 = !DILocation(line: 1805, column: 12, scope: !738)
!740 = !DILocation(line: 1805, column: 21, scope: !738)
!741 = !DILocation(line: 1805, column: 7, scope: !692)
!742 = !DILocation(line: 1807, column: 7, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1806, column: 5)
!744 = !DILocation(line: 1808, column: 7, scope: !743)
!745 = !DILocation(line: 1811, column: 14, scope: !746)
!746 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1811, column: 7)
!747 = !DILocation(line: 1811, column: 7, scope: !692)
!748 = !DILocation(line: 1812, column: 14, scope: !746)
!749 = !DILocation(line: 1812, column: 5, scope: !746)
!750 = !DILocation(line: 0, scope: !746)
!751 = !DILocation(line: 0, scope: !522, inlinedAt: !752)
!752 = distinct !DILocation(line: 1816, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1816, column: 7)
!754 = !DILocation(line: 1361, column: 11, scope: !522, inlinedAt: !752)
!755 = !DILocation(line: 1361, column: 10, scope: !522, inlinedAt: !752)
!756 = !DILocation(line: 1816, column: 7, scope: !692)
!757 = !DILocation(line: 1819, column: 18, scope: !758)
!758 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1817, column: 5)
!759 = !DILocation(line: 1820, column: 5, scope: !758)
!760 = !DILocation(line: 1823, column: 18, scope: !761)
!761 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1822, column: 5)
!762 = !DILocation(line: 1824, column: 20, scope: !763)
!763 = distinct !DILexicalBlock(scope: !761, file: !3, line: 1824, column: 11)
!764 = !DILocation(line: 1824, column: 11, scope: !761)
!765 = !DILocation(line: 1825, column: 9, scope: !763)
!766 = !DILocation(line: 0, scope: !753)
!767 = !DILocation(line: 1828, column: 3, scope: !692)
!768 = !DILocation(line: 0, scope: !769)
!769 = distinct !DILexicalBlock(scope: !692, file: !3, line: 1830, column: 7)
!770 = !DILocation(line: 1830, column: 7, scope: !692)
!771 = !DILocation(line: 1831, column: 5, scope: !769)
!772 = !DILocation(line: 1833, column: 5, scope: !769)
!773 = !DISubprogram(name: "bindtextdomain", scope: !562, file: !562, line: 86, type: !774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!774 = !DISubroutineType(types: !775)
!775 = !{!53, !61, !61}
!776 = !DISubprogram(name: "textdomain", scope: !562, file: !562, line: 82, type: !684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!777 = !DISubprogram(name: "atexit", scope: !683, file: !683, line: 602, type: !778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!778 = !DISubroutineType(types: !779)
!779 = !{!56, !229}
!780 = !DISubprogram(name: "getopt_long", scope: !155, file: !155, line: 66, type: !781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!781 = !DISubroutineType(types: !782)
!782 = !{!56, !56, !783, !61, !785, !160}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!786 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1562, type: !787, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !789)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !91, !61, !91, !78}
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !803, !805, !807, !811, !813, !816, !817}
!790 = !DILocalVariable(name: "in", arg: 1, scope: !786, file: !3, line: 1562, type: !91)
!791 = !DILocalVariable(name: "infile", arg: 2, scope: !786, file: !3, line: 1562, type: !61)
!792 = !DILocalVariable(name: "out", arg: 3, scope: !786, file: !3, line: 1562, type: !91)
!793 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !786, file: !3, line: 1562, type: !78)
!794 = !DILocalVariable(name: "inbuf", scope: !786, file: !3, line: 1564, type: !53)
!795 = !DILocalVariable(name: "outbuf", scope: !786, file: !3, line: 1564, type: !53)
!796 = !DILocalVariable(name: "sum", scope: !786, file: !3, line: 1565, type: !417)
!797 = !DILocalVariable(name: "ctx", scope: !786, file: !3, line: 1566, type: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !799, line: 47, size: 64, elements: !800)
!799 = !DIFile(filename: "./lib/base64.h", directory: "/src", checksumkind: CSK_MD5, checksum: "b7f4aff5f88956a8b1e90ed552346cd0")
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !798, file: !799, line: 49, baseType: !56, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !798, file: !799, line: 50, baseType: !268, size: 32, offset: 32)
!803 = !DILocalVariable(name: "ok", scope: !804, file: !3, line: 1578, type: !78)
!804 = distinct !DILexicalBlock(scope: !786, file: !3, line: 1577, column: 5)
!805 = !DILocalVariable(name: "n", scope: !806, file: !3, line: 1583, type: !417)
!806 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1582, column: 9)
!807 = !DILocalVariable(name: "i", scope: !808, file: !3, line: 1588, type: !417)
!808 = distinct !DILexicalBlock(scope: !809, file: !3, line: 1588, column: 15)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1587, column: 13)
!810 = distinct !DILexicalBlock(scope: !806, file: !3, line: 1586, column: 15)
!811 = !DILocalVariable(name: "n", scope: !812, file: !3, line: 1607, type: !417)
!812 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1606, column: 9)
!813 = !DILocalVariable(name: "__ptr", scope: !814, file: !3, line: 1613, type: !61)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 1613, column: 15)
!815 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1613, column: 15)
!816 = !DILocalVariable(name: "__stream", scope: !814, file: !3, line: 1613, type: !91)
!817 = !DILocalVariable(name: "__cnt", scope: !814, file: !3, line: 1613, type: !58)
!818 = !DILocation(line: 0, scope: !786)
!819 = !DILocation(line: 1566, column: 3, scope: !786)
!820 = !DILocation(line: 1566, column: 30, scope: !786)
!821 = !DILocation(line: 1568, column: 11, scope: !786)
!822 = !DILocation(line: 1569, column: 12, scope: !786)
!823 = !DILocalVariable(name: "ctx", arg: 1, scope: !824, file: !799, line: 74, type: !827)
!824 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !799, file: !799, line: 74, type: !825, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!828 = !{!823}
!829 = !DILocation(line: 0, scope: !824, inlinedAt: !830)
!830 = distinct !DILocation(line: 1574, column: 3, scope: !786)
!831 = !DILocation(line: 76, column: 8, scope: !824, inlinedAt: !830)
!832 = !DILocation(line: 76, column: 10, scope: !824, inlinedAt: !830)
!833 = !{!834, !573, i64 0}
!834 = !{!"base64_decode_context", !573, i64 0, !478, i64 4}
!835 = !DILocation(line: 1576, column: 3, scope: !786)
!836 = !DILocation(line: 0, scope: !804)
!837 = !DILocation(line: 1583, column: 21, scope: !806)
!838 = !DILocation(line: 0, scope: !806)
!839 = !DILocation(line: 1586, column: 15, scope: !806)
!840 = !DILocation(line: 0, scope: !808)
!841 = !DILocation(line: 1590, column: 42, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1590, column: 23)
!843 = distinct !DILexicalBlock(scope: !844, file: !3, line: 1589, column: 17)
!844 = distinct !DILexicalBlock(scope: !808, file: !3, line: 1588, column: 15)
!845 = !DILocation(line: 1590, column: 32, scope: !842)
!846 = !DILocalVariable(name: "ch", arg: 1, scope: !847, file: !799, line: 56, type: !63)
!847 = distinct !DISubprogram(name: "isubase64", scope: !799, file: !799, line: 56, type: !848, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !850)
!848 = !DISubroutineType(types: !849)
!849 = !{!78, !63}
!850 = !{!846}
!851 = !DILocation(line: 0, scope: !847, inlinedAt: !852)
!852 = distinct !DILocation(line: 1590, column: 23, scope: !842)
!853 = !DILocation(line: 58, column: 10, scope: !847, inlinedAt: !852)
!854 = !DILocation(line: 58, column: 44, scope: !847, inlinedAt: !852)
!855 = !DILocation(line: 58, column: 41, scope: !847, inlinedAt: !852)
!856 = !DILocation(line: 1591, column: 23, scope: !842)
!857 = !DILocalVariable(name: "len", arg: 1, scope: !858, file: !3, line: 209, type: !56)
!858 = distinct !DISubprogram(name: "base64_required_padding", scope: !3, file: !3, line: 209, type: !859, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!56, !56}
!861 = !{!857, !862}
!862 = !DILocalVariable(name: "partial", scope: !858, file: !3, line: 211, type: !56)
!863 = !DILocation(line: 0, scope: !858, inlinedAt: !864)
!864 = distinct !DILocation(line: 1591, column: 27, scope: !842)
!865 = !DILocation(line: 1592, column: 22, scope: !842)
!866 = !DILocation(line: 1592, column: 21, scope: !842)
!867 = !DILocation(line: 1594, column: 42, scope: !842)
!868 = !DILocation(line: 1594, column: 63, scope: !842)
!869 = !DILocation(line: 1594, column: 68, scope: !842)
!870 = !DILocation(line: 1594, column: 72, scope: !842)
!871 = !DILocalVariable(name: "__dest", arg: 1, scope: !872, file: !873, line: 34, type: !55)
!872 = distinct !DISubprogram(name: "memmove", scope: !873, file: !873, line: 34, type: !874, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !876)
!873 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!874 = !DISubroutineType(types: !875)
!875 = !{!55, !55, !690, !58}
!876 = !{!871, !877, !878}
!877 = !DILocalVariable(name: "__src", arg: 2, scope: !872, file: !873, line: 34, type: !690)
!878 = !DILocalVariable(name: "__len", arg: 3, scope: !872, file: !873, line: 34, type: !58)
!879 = !DILocation(line: 0, scope: !872, inlinedAt: !880)
!880 = distinct !DILocation(line: 1594, column: 21, scope: !842)
!881 = !DILocation(line: 36, column: 10, scope: !872, inlinedAt: !880)
!882 = !DILocation(line: 1588, column: 35, scope: !844)
!883 = !DILocation(line: 1588, column: 39, scope: !844)
!884 = !DILocation(line: 1588, column: 15, scope: !808)
!885 = distinct !{!885, !884, !886, !539}
!886 = !DILocation(line: 1595, column: 17, scope: !808)
!887 = !DILocation(line: 1583, column: 17, scope: !806)
!888 = !DILocation(line: 1598, column: 15, scope: !806)
!889 = !DILocalVariable(name: "__stream", arg: 1, scope: !890, file: !891, line: 135, type: !91)
!890 = distinct !DISubprogram(name: "ferror_unlocked", scope: !891, file: !891, line: 135, type: !892, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !894)
!891 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!892 = !DISubroutineType(types: !893)
!893 = !{!56, !91}
!894 = !{!889}
!895 = !DILocation(line: 0, scope: !890, inlinedAt: !896)
!896 = distinct !DILocation(line: 1600, column: 15, scope: !897)
!897 = distinct !DILexicalBlock(scope: !806, file: !3, line: 1600, column: 15)
!898 = !DILocation(line: 137, column: 10, scope: !890, inlinedAt: !896)
!899 = !{!900, !573, i64 0}
!900 = !{!"_IO_FILE", !573, i64 0, !477, i64 8, !477, i64 16, !477, i64 24, !477, i64 32, !477, i64 40, !477, i64 48, !477, i64 56, !477, i64 64, !477, i64 72, !477, i64 80, !477, i64 88, !477, i64 96, !477, i64 104, !573, i64 112, !573, i64 116, !901, i64 120, !607, i64 128, !478, i64 130, !478, i64 131, !477, i64 136, !901, i64 144, !477, i64 152, !477, i64 160, !477, i64 168, !477, i64 176, !901, i64 184, !573, i64 192, !478, i64 196}
!901 = !{!"long", !478, i64 0}
!902 = !DILocation(line: 1600, column: 15, scope: !897)
!903 = !DILocation(line: 1600, column: 15, scope: !806)
!904 = !DILocation(line: 1601, column: 13, scope: !897)
!905 = !DILocation(line: 1603, column: 18, scope: !804)
!906 = !DILocation(line: 1603, column: 48, scope: !804)
!907 = !DILocalVariable(name: "__stream", arg: 1, scope: !908, file: !891, line: 128, type: !91)
!908 = distinct !DISubprogram(name: "feof_unlocked", scope: !891, file: !891, line: 128, type: !892, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !909)
!909 = !{!907}
!910 = !DILocation(line: 0, scope: !908, inlinedAt: !911)
!911 = distinct !DILocation(line: 1603, column: 52, scope: !804)
!912 = distinct !{!912, !835, !913, !539}
!913 = !DILocation(line: 1624, column: 20, scope: !786)
!914 = !DILocation(line: 1605, column: 14, scope: !804)
!915 = !DILocation(line: 1605, column: 18, scope: !804)
!916 = !DILocation(line: 0, scope: !908, inlinedAt: !917)
!917 = distinct !DILocation(line: 1605, column: 21, scope: !804)
!918 = !DILocation(line: 130, column: 10, scope: !908, inlinedAt: !917)
!919 = !DILocation(line: 1605, column: 7, scope: !804)
!920 = !DILocation(line: 1607, column: 11, scope: !812)
!921 = !DILocation(line: 0, scope: !812)
!922 = !DILocation(line: 1607, column: 17, scope: !812)
!923 = !{!901, !901, i64 0}
!924 = !DILocation(line: 1609, column: 18, scope: !925)
!925 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1608, column: 15)
!926 = !DILocation(line: 1613, column: 15, scope: !815)
!927 = !DILocation(line: 1609, column: 13, scope: !925)
!928 = !DILocalVariable(name: "ctx", arg: 1, scope: !929, file: !3, line: 414, type: !827)
!929 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !3, file: !3, line: 414, type: !930, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !934)
!930 = !DISubroutineType(types: !931)
!931 = !{!78, !827, !932, !416}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!934 = !{!928, !935, !936, !937, !939, !940, !941, !942}
!935 = !DILocalVariable(name: "out", arg: 2, scope: !929, file: !3, line: 415, type: !932)
!936 = !DILocalVariable(name: "outlen", arg: 3, scope: !929, file: !3, line: 415, type: !416)
!937 = !DILocalVariable(name: "padbuf", scope: !929, file: !3, line: 424, type: !938)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !300)
!939 = !DILocalVariable(name: "pending_len", scope: !929, file: !3, line: 425, type: !417)
!940 = !DILocalVariable(name: "auto_padding", scope: !929, file: !3, line: 426, type: !417)
!941 = !DILocalVariable(name: "n", scope: !929, file: !3, line: 427, type: !417)
!942 = !DILocalVariable(name: "result", scope: !929, file: !3, line: 428, type: !78)
!943 = !DILocation(line: 0, scope: !929, inlinedAt: !944)
!944 = distinct !DILocation(line: 1611, column: 18, scope: !925)
!945 = !DILocalVariable(name: "ctx", arg: 1, scope: !946, file: !3, line: 403, type: !827)
!946 = distinct !DISubprogram(name: "get_pending_length", scope: !3, file: !3, line: 403, type: !947, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !949)
!947 = !DISubroutineType(types: !948)
!948 = !{!56, !827}
!949 = !{!945}
!950 = !DILocation(line: 0, scope: !946, inlinedAt: !951)
!951 = distinct !DILocation(line: 417, column: 7, scope: !952, inlinedAt: !944)
!952 = distinct !DILexicalBlock(scope: !929, file: !3, line: 417, column: 7)
!953 = !DILocation(line: 405, column: 15, scope: !946, inlinedAt: !951)
!954 = !DILocation(line: 417, column: 32, scope: !952, inlinedAt: !944)
!955 = !DILocation(line: 417, column: 7, scope: !929, inlinedAt: !944)
!956 = !DILocation(line: 419, column: 15, scope: !957, inlinedAt: !944)
!957 = distinct !DILexicalBlock(scope: !952, file: !3, line: 418, column: 5)
!958 = !DILocation(line: 420, column: 7, scope: !957, inlinedAt: !944)
!959 = !DILocation(line: 424, column: 3, scope: !929, inlinedAt: !944)
!960 = !DILocation(line: 424, column: 8, scope: !929, inlinedAt: !944)
!961 = !DILocation(line: 0, scope: !946, inlinedAt: !962)
!962 = distinct !DILocation(line: 425, column: 23, scope: !929, inlinedAt: !944)
!963 = !DILocation(line: 0, scope: !858, inlinedAt: !964)
!964 = distinct !DILocation(line: 426, column: 24, scope: !929, inlinedAt: !944)
!965 = !DILocation(line: 211, column: 21, scope: !858, inlinedAt: !964)
!966 = !DILocation(line: 212, column: 10, scope: !858, inlinedAt: !964)
!967 = !DILocation(line: 427, column: 3, scope: !929, inlinedAt: !944)
!968 = !DILocation(line: 427, column: 9, scope: !929, inlinedAt: !944)
!969 = !DILocation(line: 430, column: 7, scope: !970, inlinedAt: !944)
!970 = distinct !DILexicalBlock(scope: !929, file: !3, line: 430, column: 7)
!971 = !DILocation(line: 430, column: 20, scope: !970, inlinedAt: !944)
!972 = !DILocalVariable(name: "ctx", arg: 1, scope: !973, file: !3, line: 397, type: !827)
!973 = distinct !DISubprogram(name: "has_padding", scope: !3, file: !3, line: 397, type: !974, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !976)
!974 = !DISubroutineType(types: !975)
!975 = !{!78, !827}
!976 = !{!972}
!977 = !DILocation(line: 0, scope: !973, inlinedAt: !978)
!978 = distinct !DILocation(line: 430, column: 25, scope: !970, inlinedAt: !944)
!979 = !DILocation(line: 399, column: 36, scope: !973, inlinedAt: !978)
!980 = !DILocation(line: 399, column: 20, scope: !973, inlinedAt: !978)
!981 = !DILocation(line: 399, column: 41, scope: !973, inlinedAt: !978)
!982 = !DILocation(line: 430, column: 7, scope: !929, inlinedAt: !944)
!983 = !DILocation(line: 433, column: 16, scope: !984, inlinedAt: !944)
!984 = distinct !DILexicalBlock(scope: !970, file: !3, line: 431, column: 5)
!985 = !DILocation(line: 434, column: 5, scope: !984, inlinedAt: !944)
!986 = !DILocation(line: 437, column: 16, scope: !987, inlinedAt: !944)
!987 = distinct !DILexicalBlock(scope: !970, file: !3, line: 436, column: 5)
!988 = !DILocation(line: 440, column: 13, scope: !929, inlinedAt: !944)
!989 = !DILocation(line: 440, column: 11, scope: !929, inlinedAt: !944)
!990 = !DILocation(line: 442, column: 1, scope: !929, inlinedAt: !944)
!991 = !DILocation(line: 1613, column: 44, scope: !815)
!992 = !DILocation(line: 1613, column: 42, scope: !815)
!993 = !DILocation(line: 1613, column: 15, scope: !812)
!994 = !DILocation(line: 948, column: 21, scope: !995, inlinedAt: !998)
!995 = distinct !DISubprogram(name: "write_error", scope: !68, file: !68, line: 946, type: !230, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !996)
!996 = !{!997}
!997 = !DILocalVariable(name: "saved_errno", scope: !995, file: !68, line: 948, type: !56)
!998 = distinct !DILocation(line: 1614, column: 13, scope: !815)
!999 = !DILocation(line: 0, scope: !995, inlinedAt: !998)
!1000 = !DILocation(line: 949, column: 3, scope: !995, inlinedAt: !998)
!1001 = !DILocation(line: 950, column: 11, scope: !995, inlinedAt: !998)
!1002 = !DILocation(line: 950, column: 3, scope: !995, inlinedAt: !998)
!1003 = !DILocation(line: 951, column: 3, scope: !995, inlinedAt: !998)
!1004 = !DILocation(line: 952, column: 3, scope: !995, inlinedAt: !998)
!1005 = !DILocation(line: 1616, column: 15, scope: !812)
!1006 = !DILocation(line: 1617, column: 13, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1616, column: 15)
!1008 = !DILocation(line: 1622, column: 9, scope: !804)
!1009 = !DILocation(line: 130, column: 10, scope: !908, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 1624, column: 11, scope: !786)
!1011 = !DILocation(line: 1624, column: 10, scope: !786)
!1012 = !DILocation(line: 0, scope: !908, inlinedAt: !1010)
!1013 = !DILocation(line: 1623, column: 5, scope: !804)
!1014 = !DILocation(line: 1626, column: 3, scope: !786)
!1015 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 1488, type: !1016, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1018)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !91, !61, !91, !417}
!1018 = !{!1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027}
!1019 = !DILocalVariable(name: "in", arg: 1, scope: !1015, file: !3, line: 1488, type: !91)
!1020 = !DILocalVariable(name: "infile", arg: 2, scope: !1015, file: !3, line: 1488, type: !61)
!1021 = !DILocalVariable(name: "out", arg: 3, scope: !1015, file: !3, line: 1488, type: !91)
!1022 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1015, file: !3, line: 1488, type: !417)
!1023 = !DILocalVariable(name: "current_column", scope: !1015, file: !3, line: 1490, type: !417)
!1024 = !DILocalVariable(name: "inbuf", scope: !1015, file: !3, line: 1491, type: !53)
!1025 = !DILocalVariable(name: "outbuf", scope: !1015, file: !3, line: 1491, type: !53)
!1026 = !DILocalVariable(name: "sum", scope: !1015, file: !3, line: 1492, type: !417)
!1027 = !DILocalVariable(name: "n", scope: !1028, file: !3, line: 1507, type: !417)
!1028 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1506, column: 5)
!1029 = !DILocation(line: 0, scope: !1015)
!1030 = !DILocation(line: 1494, column: 11, scope: !1015)
!1031 = !DILocation(line: 1495, column: 12, scope: !1015)
!1032 = !DILocation(line: 1505, column: 3, scope: !1015)
!1033 = !DILocation(line: 1490, column: 9, scope: !1015)
!1034 = !DILocation(line: 1510, column: 7, scope: !1028)
!1035 = !DILocation(line: 0, scope: !1028)
!1036 = !DILocation(line: 1512, column: 15, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1511, column: 9)
!1038 = !DILocation(line: 1513, column: 15, scope: !1037)
!1039 = !DILocation(line: 0, scope: !908, inlinedAt: !1040)
!1040 = distinct !DILocation(line: 1515, column: 15, scope: !1028)
!1041 = !DILocation(line: 130, column: 10, scope: !908, inlinedAt: !1040)
!1042 = !DILocation(line: 1515, column: 15, scope: !1028)
!1043 = !DILocation(line: 1515, column: 25, scope: !1028)
!1044 = !DILocation(line: 0, scope: !890, inlinedAt: !1045)
!1045 = distinct !DILocation(line: 1515, column: 29, scope: !1028)
!1046 = !DILocation(line: 1515, column: 29, scope: !1028)
!1047 = !DILocation(line: 1515, column: 41, scope: !1028)
!1048 = distinct !{!1048, !1034, !1049, !539}
!1049 = !DILocation(line: 1515, column: 63, scope: !1028)
!1050 = !DILocation(line: 1517, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 1517, column: 11)
!1052 = !DILocation(line: 1517, column: 11, scope: !1028)
!1053 = !DILocation(line: 1532, column: 48, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 1529, column: 13)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 1518, column: 9)
!1056 = !DILocation(line: 1532, column: 15, scope: !1054)
!1057 = !DILocalVariable(name: "buffer", arg: 1, scope: !1058, file: !3, line: 1443, type: !61)
!1058 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 1443, type: !1059, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !61, !417, !417, !416, !91}
!1061 = !{!1057, !1062, !1063, !1064, !1065, !1066, !1071, !1072, !1073, !1075, !1078, !1083, !1084}
!1062 = !DILocalVariable(name: "len", arg: 2, scope: !1058, file: !3, line: 1443, type: !417)
!1063 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1058, file: !3, line: 1444, type: !417)
!1064 = !DILocalVariable(name: "current_column", arg: 4, scope: !1058, file: !3, line: 1444, type: !416)
!1065 = !DILocalVariable(name: "out", arg: 5, scope: !1058, file: !3, line: 1444, type: !91)
!1066 = !DILocalVariable(name: "__ptr", scope: !1067, file: !3, line: 1449, type: !61)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 1449, column: 11)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 1449, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1447, column: 5)
!1070 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 1446, column: 7)
!1071 = !DILocalVariable(name: "__stream", scope: !1067, file: !3, line: 1449, type: !91)
!1072 = !DILocalVariable(name: "__cnt", scope: !1067, file: !3, line: 1449, type: !58)
!1073 = !DILocalVariable(name: "written", scope: !1074, file: !3, line: 1453, type: !417)
!1074 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1453, column: 5)
!1075 = !DILocalVariable(name: "to_write", scope: !1076, file: !3, line: 1455, type: !417)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 1454, column: 7)
!1077 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 1453, column: 5)
!1078 = !DILocalVariable(name: "__ptr", scope: !1079, file: !3, line: 1465, type: !61)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1465, column: 17)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1465, column: 17)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1464, column: 11)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 1457, column: 13)
!1083 = !DILocalVariable(name: "__stream", scope: !1079, file: !3, line: 1465, type: !91)
!1084 = !DILocalVariable(name: "__cnt", scope: !1079, file: !3, line: 1465, type: !58)
!1085 = !DILocation(line: 0, scope: !1058, inlinedAt: !1086)
!1086 = distinct !DILocation(line: 1534, column: 15, scope: !1054)
!1087 = !DILocation(line: 1446, column: 7, scope: !1058, inlinedAt: !1086)
!1088 = !DILocation(line: 0, scope: !1068, inlinedAt: !1086)
!1089 = !DILocation(line: 1449, column: 11, scope: !1068, inlinedAt: !1086)
!1090 = !DILocation(line: 1449, column: 43, scope: !1068, inlinedAt: !1086)
!1091 = !DILocation(line: 1449, column: 11, scope: !1069, inlinedAt: !1086)
!1092 = !DILocation(line: 948, column: 21, scope: !995, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 1450, column: 9, scope: !1068, inlinedAt: !1086)
!1094 = !DILocation(line: 0, scope: !995, inlinedAt: !1093)
!1095 = !DILocation(line: 949, column: 3, scope: !995, inlinedAt: !1093)
!1096 = !DILocation(line: 950, column: 11, scope: !995, inlinedAt: !1093)
!1097 = !DILocation(line: 950, column: 3, scope: !995, inlinedAt: !1093)
!1098 = !DILocation(line: 951, column: 3, scope: !995, inlinedAt: !1093)
!1099 = !DILocation(line: 952, column: 3, scope: !995, inlinedAt: !1093)
!1100 = !DILocation(line: 0, scope: !1074, inlinedAt: !1086)
!1101 = !DILocation(line: 1455, column: 26, scope: !1076, inlinedAt: !1086)
!1102 = !DILocation(line: 0, scope: !1076, inlinedAt: !1086)
!1103 = !DILocation(line: 1457, column: 22, scope: !1082, inlinedAt: !1086)
!1104 = !DILocation(line: 1457, column: 13, scope: !1076, inlinedAt: !1086)
!1105 = !DILocalVariable(name: "__c", arg: 1, scope: !1106, file: !891, line: 91, type: !56)
!1106 = distinct !DISubprogram(name: "fputc_unlocked", scope: !891, file: !891, line: 91, type: !1107, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!56, !56, !91}
!1109 = !{!1105, !1110}
!1110 = !DILocalVariable(name: "__stream", arg: 2, scope: !1106, file: !891, line: 91, type: !91)
!1111 = !DILocation(line: 0, scope: !1106, inlinedAt: !1112)
!1112 = distinct !DILocation(line: 1459, column: 17, scope: !1113, inlinedAt: !1086)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !3, line: 1459, column: 17)
!1114 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1458, column: 11)
!1115 = !DILocation(line: 93, column: 10, scope: !1106, inlinedAt: !1112)
!1116 = !{!900, !477, i64 40}
!1117 = !{!900, !477, i64 48}
!1118 = !{!"branch_weights", i32 2000, i32 1}
!1119 = !DILocation(line: 1459, column: 17, scope: !1114, inlinedAt: !1086)
!1120 = !DILocation(line: 1459, column: 35, scope: !1113, inlinedAt: !1086)
!1121 = !DILocation(line: 948, column: 21, scope: !995, inlinedAt: !1122)
!1122 = distinct !DILocation(line: 1460, column: 15, scope: !1113, inlinedAt: !1086)
!1123 = !DILocation(line: 0, scope: !995, inlinedAt: !1122)
!1124 = !DILocation(line: 949, column: 3, scope: !995, inlinedAt: !1122)
!1125 = !DILocation(line: 950, column: 11, scope: !995, inlinedAt: !1122)
!1126 = !DILocation(line: 950, column: 3, scope: !995, inlinedAt: !1122)
!1127 = !DILocation(line: 951, column: 3, scope: !995, inlinedAt: !1122)
!1128 = !DILocation(line: 952, column: 3, scope: !995, inlinedAt: !1122)
!1129 = !DILocation(line: 0, scope: !1080, inlinedAt: !1086)
!1130 = !DILocation(line: 1465, column: 17, scope: !1080, inlinedAt: !1086)
!1131 = !DILocation(line: 1465, column: 64, scope: !1080, inlinedAt: !1086)
!1132 = !DILocation(line: 1465, column: 17, scope: !1081, inlinedAt: !1086)
!1133 = !DILocation(line: 948, column: 21, scope: !995, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 1466, column: 15, scope: !1080, inlinedAt: !1086)
!1135 = !DILocation(line: 0, scope: !995, inlinedAt: !1134)
!1136 = !DILocation(line: 949, column: 3, scope: !995, inlinedAt: !1134)
!1137 = !DILocation(line: 950, column: 11, scope: !995, inlinedAt: !1134)
!1138 = !DILocation(line: 950, column: 3, scope: !995, inlinedAt: !1134)
!1139 = !DILocation(line: 951, column: 3, scope: !995, inlinedAt: !1134)
!1140 = !DILocation(line: 952, column: 3, scope: !995, inlinedAt: !1134)
!1141 = !DILocation(line: 1467, column: 29, scope: !1081, inlinedAt: !1086)
!1142 = !DILocation(line: 1468, column: 21, scope: !1081, inlinedAt: !1086)
!1143 = !DILocation(line: 0, scope: !1082, inlinedAt: !1086)
!1144 = !DILocation(line: 1453, column: 37, scope: !1077, inlinedAt: !1086)
!1145 = !DILocation(line: 1453, column: 5, scope: !1074, inlinedAt: !1086)
!1146 = distinct !{!1146, !1145, !1147, !539}
!1147 = !DILocation(line: 1470, column: 7, scope: !1074, inlinedAt: !1086)
!1148 = !DILocation(line: 0, scope: !908, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 1539, column: 11, scope: !1015)
!1150 = !DILocation(line: 130, column: 10, scope: !908, inlinedAt: !1149)
!1151 = !DILocation(line: 1539, column: 11, scope: !1015)
!1152 = !DILocation(line: 1539, column: 21, scope: !1015)
!1153 = !DILocation(line: 0, scope: !890, inlinedAt: !1154)
!1154 = distinct !DILocation(line: 1539, column: 25, scope: !1015)
!1155 = !DILocation(line: 1539, column: 25, scope: !1015)
!1156 = !DILocation(line: 1539, column: 37, scope: !1015)
!1157 = distinct !{!1157, !1032, !1158, !539}
!1158 = !DILocation(line: 1539, column: 60, scope: !1015)
!1159 = !DILocation(line: 1552, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1552, column: 7)
!1161 = !DILocation(line: 1552, column: 19, scope: !1160)
!1162 = !DILocation(line: 0, scope: !1106, inlinedAt: !1163)
!1163 = distinct !DILocation(line: 1552, column: 44, scope: !1160)
!1164 = !DILocation(line: 93, column: 10, scope: !1106, inlinedAt: !1163)
!1165 = !DILocation(line: 1552, column: 7, scope: !1015)
!1166 = !DILocation(line: 1552, column: 62, scope: !1160)
!1167 = !DILocation(line: 948, column: 21, scope: !995, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 1553, column: 5, scope: !1160)
!1169 = !DILocation(line: 0, scope: !995, inlinedAt: !1168)
!1170 = !DILocation(line: 949, column: 3, scope: !995, inlinedAt: !1168)
!1171 = !DILocation(line: 950, column: 11, scope: !995, inlinedAt: !1168)
!1172 = !DILocation(line: 950, column: 3, scope: !995, inlinedAt: !1168)
!1173 = !DILocation(line: 951, column: 3, scope: !995, inlinedAt: !1168)
!1174 = !DILocation(line: 952, column: 3, scope: !995, inlinedAt: !1168)
!1175 = !DILocation(line: 0, scope: !890, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 1555, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1555, column: 7)
!1178 = !DILocation(line: 137, column: 10, scope: !890, inlinedAt: !1176)
!1179 = !DILocation(line: 1555, column: 7, scope: !1177)
!1180 = !DILocation(line: 1555, column: 7, scope: !1015)
!1181 = !DILocation(line: 1556, column: 5, scope: !1177)
!1182 = !DILocation(line: 1558, column: 3, scope: !1015)
!1183 = !DISubprogram(name: "fflush_unlocked", scope: !203, file: !203, line: 239, type: !892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!1184 = !DISubprogram(name: "clearerr_unlocked", scope: !203, file: !203, line: 794, type: !1185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !91}
!1187 = distinct !DISubprogram(name: "finish_and_exit", scope: !3, file: !3, line: 1474, type: !1188, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1190)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{null, !91, !61}
!1190 = !{!1191, !1192}
!1191 = !DILocalVariable(name: "in", arg: 1, scope: !1187, file: !3, line: 1474, type: !91)
!1192 = !DILocalVariable(name: "infile", arg: 2, scope: !1187, file: !3, line: 1474, type: !61)
!1193 = !DILocation(line: 0, scope: !1187)
!1194 = !DILocation(line: 1476, column: 7, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 1476, column: 7)
!1196 = !DILocation(line: 1476, column: 19, scope: !1195)
!1197 = !DILocation(line: 1476, column: 7, scope: !1187)
!1198 = !DILocation(line: 0, scope: !522, inlinedAt: !1199)
!1199 = distinct !DILocation(line: 1478, column: 11, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1478, column: 11)
!1201 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 1477, column: 5)
!1202 = !DILocation(line: 1361, column: 11, scope: !522, inlinedAt: !1199)
!1203 = !DILocation(line: 1361, column: 10, scope: !522, inlinedAt: !1199)
!1204 = !DILocation(line: 0, scope: !1200)
!1205 = !DILocation(line: 1478, column: 11, scope: !1201)
!1206 = !DILocation(line: 1479, column: 9, scope: !1200)
!1207 = !DILocation(line: 1481, column: 9, scope: !1200)
!1208 = !DILocation(line: 1484, column: 3, scope: !1187)
!1209 = distinct !DISubprogram(name: "isubase64", scope: !799, file: !799, line: 56, type: !848, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1210)
!1210 = !{!1211}
!1211 = !DILocalVariable(name: "ch", arg: 1, scope: !1209, file: !799, line: 56, type: !63)
!1212 = !DILocation(line: 0, scope: !1209)
!1213 = !DILocation(line: 58, column: 10, scope: !1209)
!1214 = !DILocation(line: 58, column: 44, scope: !1209)
!1215 = !DILocation(line: 58, column: 41, scope: !1209)
!1216 = !DILocation(line: 58, column: 3, scope: !1209)
!1217 = distinct !DISubprogram(name: "isbase64", scope: !799, file: !799, line: 62, type: !1218, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1220)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!78, !54}
!1220 = !{!1221}
!1221 = !DILocalVariable(name: "ch", arg: 1, scope: !1217, file: !799, line: 62, type: !54)
!1222 = !DILocation(line: 0, scope: !1217)
!1223 = !DILocation(line: 0, scope: !1209, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 64, column: 10, scope: !1217)
!1225 = !DILocation(line: 58, column: 10, scope: !1209, inlinedAt: !1224)
!1226 = !DILocation(line: 58, column: 44, scope: !1209, inlinedAt: !1224)
!1227 = !DILocation(line: 58, column: 41, scope: !1209, inlinedAt: !1224)
!1228 = !DILocation(line: 64, column: 3, scope: !1217)
!1229 = distinct !DISubprogram(name: "base64_decode_ctx_init", scope: !799, file: !799, line: 74, type: !1230, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1237)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null, !1232}
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base64_decode_context", file: !799, line: 47, size: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1233, file: !799, line: 49, baseType: !56, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1233, file: !799, line: 50, baseType: !268, size: 32, offset: 32)
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "ctx", arg: 1, scope: !1229, file: !799, line: 74, type: !1232)
!1239 = !DILocation(line: 0, scope: !1229)
!1240 = !DILocation(line: 76, column: 8, scope: !1229)
!1241 = !DILocation(line: 76, column: 10, scope: !1229)
!1242 = !DILocation(line: 77, column: 1, scope: !1229)
!1243 = distinct !DISubprogram(name: "base64_encode", scope: !172, file: !172, line: 88, type: !1244, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1246)
!1244 = !DISubroutineType(types: !1245)
!1245 = !{null, !568, !417, !933, !417}
!1246 = !{!1247, !1248, !1249, !1250}
!1247 = !DILocalVariable(name: "in", arg: 1, scope: !1243, file: !172, line: 88, type: !568)
!1248 = !DILocalVariable(name: "inlen", arg: 2, scope: !1243, file: !172, line: 88, type: !417)
!1249 = !DILocalVariable(name: "out", arg: 3, scope: !1243, file: !172, line: 89, type: !933)
!1250 = !DILocalVariable(name: "outlen", arg: 4, scope: !1243, file: !172, line: 89, type: !417)
!1251 = !DILocation(line: 0, scope: !1243)
!1252 = !DILocation(line: 98, column: 18, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1243, file: !172, line: 98, column: 7)
!1254 = !DILocation(line: 98, column: 23, scope: !1253)
!1255 = !DILocation(line: 98, column: 43, scope: !1253)
!1256 = !DILocation(line: 98, column: 49, scope: !1253)
!1257 = !DILocation(line: 98, column: 32, scope: !1253)
!1258 = !DILocation(line: 98, column: 7, scope: !1243)
!1259 = !{!1260}
!1260 = distinct !{!1260, !1261, !"base64_encode_fast: argument 0"}
!1261 = distinct !{!1261, !"base64_encode_fast"}
!1262 = !DILocation(line: 100, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1253, file: !172, line: 99, column: 5)
!1264 = !{!1265}
!1265 = distinct !{!1265, !1261, !"base64_encode_fast: argument 1"}
!1266 = !DILocalVariable(name: "in", arg: 1, scope: !1267, file: !172, line: 69, type: !568)
!1267 = distinct !DISubprogram(name: "base64_encode_fast", scope: !172, file: !172, line: 69, type: !1268, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1270)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !568, !417, !933}
!1270 = !{!1266, !1271, !1272}
!1271 = !DILocalVariable(name: "inlen", arg: 2, scope: !1267, file: !172, line: 69, type: !417)
!1272 = !DILocalVariable(name: "out", arg: 3, scope: !1267, file: !172, line: 69, type: !933)
!1273 = !DILocation(line: 0, scope: !1267, inlinedAt: !1274)
!1274 = distinct !DILocation(line: 100, column: 7, scope: !1263)
!1275 = !DILocation(line: 71, column: 3, scope: !1267, inlinedAt: !1274)
!1276 = !DILocation(line: 73, column: 32, scope: !1277, inlinedAt: !1274)
!1277 = distinct !DILexicalBlock(scope: !1267, file: !172, line: 72, column: 5)
!1278 = !DILocation(line: 73, column: 39, scope: !1277, inlinedAt: !1274)
!1279 = !DILocation(line: 73, column: 16, scope: !1277, inlinedAt: !1274)
!1280 = !{!1260, !1265}
!1281 = !DILocation(line: 73, column: 11, scope: !1277, inlinedAt: !1274)
!1282 = !DILocation(line: 73, column: 14, scope: !1277, inlinedAt: !1274)
!1283 = !DILocation(line: 74, column: 23, scope: !1277, inlinedAt: !1274)
!1284 = !DILocation(line: 74, column: 40, scope: !1277, inlinedAt: !1274)
!1285 = !DILocation(line: 74, column: 59, scope: !1277, inlinedAt: !1274)
!1286 = !DILocation(line: 74, column: 66, scope: !1277, inlinedAt: !1274)
!1287 = !DILocation(line: 74, column: 73, scope: !1277, inlinedAt: !1274)
!1288 = !DILocation(line: 74, column: 16, scope: !1277, inlinedAt: !1274)
!1289 = !DILocation(line: 74, column: 11, scope: !1277, inlinedAt: !1274)
!1290 = !DILocation(line: 74, column: 14, scope: !1277, inlinedAt: !1274)
!1291 = !DILocation(line: 75, column: 23, scope: !1277, inlinedAt: !1274)
!1292 = !DILocation(line: 75, column: 40, scope: !1277, inlinedAt: !1274)
!1293 = !DILocation(line: 75, column: 59, scope: !1277, inlinedAt: !1274)
!1294 = !DILocation(line: 75, column: 66, scope: !1277, inlinedAt: !1274)
!1295 = !DILocation(line: 75, column: 73, scope: !1277, inlinedAt: !1274)
!1296 = !DILocation(line: 75, column: 16, scope: !1277, inlinedAt: !1274)
!1297 = !DILocation(line: 75, column: 11, scope: !1277, inlinedAt: !1274)
!1298 = !DILocation(line: 75, column: 14, scope: !1277, inlinedAt: !1274)
!1299 = !DILocation(line: 76, column: 38, scope: !1277, inlinedAt: !1274)
!1300 = !DILocation(line: 76, column: 16, scope: !1277, inlinedAt: !1274)
!1301 = !DILocation(line: 76, column: 11, scope: !1277, inlinedAt: !1274)
!1302 = !DILocation(line: 76, column: 14, scope: !1277, inlinedAt: !1274)
!1303 = !DILocation(line: 78, column: 13, scope: !1277, inlinedAt: !1274)
!1304 = !DILocation(line: 79, column: 10, scope: !1277, inlinedAt: !1274)
!1305 = distinct !{!1305, !1275, !1306, !539}
!1306 = !DILocation(line: 80, column: 5, scope: !1267, inlinedAt: !1274)
!1307 = !DILocation(line: 104, column: 10, scope: !1243)
!1308 = !DILocation(line: 104, column: 16, scope: !1243)
!1309 = !DILocation(line: 104, column: 3, scope: !1243)
!1310 = !DILocation(line: 106, column: 32, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1243, file: !172, line: 105, column: 5)
!1312 = !DILocation(line: 106, column: 39, scope: !1311)
!1313 = !DILocation(line: 106, column: 16, scope: !1311)
!1314 = !DILocation(line: 106, column: 11, scope: !1311)
!1315 = !DILocation(line: 106, column: 14, scope: !1311)
!1316 = !DILocation(line: 107, column: 12, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1311, file: !172, line: 107, column: 11)
!1318 = !DILocation(line: 107, column: 11, scope: !1311)
!1319 = !DILocation(line: 109, column: 23, scope: !1311)
!1320 = !DILocation(line: 109, column: 40, scope: !1311)
!1321 = !DILocation(line: 110, column: 27, scope: !1311)
!1322 = !DILocation(line: 111, column: 23, scope: !1311)
!1323 = !DILocation(line: 109, column: 16, scope: !1311)
!1324 = !DILocation(line: 109, column: 14, scope: !1311)
!1325 = !DILocation(line: 112, column: 12, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1311, file: !172, line: 112, column: 11)
!1327 = !DILocation(line: 112, column: 11, scope: !1311)
!1328 = !DILocation(line: 110, column: 47, scope: !1311)
!1329 = !DILocation(line: 110, column: 54, scope: !1311)
!1330 = !DILocation(line: 109, column: 11, scope: !1311)
!1331 = !DILocation(line: 116, column: 19, scope: !1311)
!1332 = !DILocation(line: 116, column: 36, scope: !1311)
!1333 = !DILocation(line: 117, column: 23, scope: !1311)
!1334 = !DILocation(line: 118, column: 19, scope: !1311)
!1335 = !DILocation(line: 116, column: 12, scope: !1311)
!1336 = !DILocation(line: 114, column: 14, scope: !1311)
!1337 = !DILocation(line: 120, column: 12, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1311, file: !172, line: 120, column: 11)
!1339 = !DILocation(line: 120, column: 11, scope: !1311)
!1340 = !DILocation(line: 117, column: 43, scope: !1311)
!1341 = !DILocation(line: 117, column: 50, scope: !1311)
!1342 = !DILocation(line: 122, column: 39, scope: !1311)
!1343 = !DILocation(line: 122, column: 46, scope: !1311)
!1344 = !DILocation(line: 122, column: 24, scope: !1311)
!1345 = !DILocation(line: 122, column: 16, scope: !1311)
!1346 = !DILocation(line: 114, column: 11, scope: !1311)
!1347 = !DILocation(line: 122, column: 14, scope: !1311)
!1348 = !DILocation(line: 123, column: 12, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1311, file: !172, line: 123, column: 11)
!1350 = !DILocation(line: 123, column: 11, scope: !1311)
!1351 = !DILocation(line: 122, column: 11, scope: !1311)
!1352 = !DILocation(line: 125, column: 11, scope: !1311)
!1353 = !DILocation(line: 127, column: 11, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1311, file: !172, line: 127, column: 11)
!1355 = !DILocation(line: 127, column: 11, scope: !1311)
!1356 = distinct !{!1356, !1309, !1357, !539}
!1357 = !DILocation(line: 129, column: 5, scope: !1243)
!1358 = !DILocation(line: 131, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1243, file: !172, line: 131, column: 7)
!1360 = !DILocation(line: 131, column: 7, scope: !1243)
!1361 = !DILocation(line: 132, column: 10, scope: !1359)
!1362 = !DILocation(line: 132, column: 5, scope: !1359)
!1363 = !DILocation(line: 133, column: 1, scope: !1243)
!1364 = distinct !DISubprogram(name: "base64_encode_alloc", scope: !172, file: !172, line: 145, type: !1365, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1367)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!417, !61, !417, !695}
!1367 = !{!1368, !1369, !1370, !1371, !1372}
!1368 = !DILocalVariable(name: "in", arg: 1, scope: !1364, file: !172, line: 145, type: !61)
!1369 = !DILocalVariable(name: "inlen", arg: 2, scope: !1364, file: !172, line: 145, type: !417)
!1370 = !DILocalVariable(name: "out", arg: 3, scope: !1364, file: !172, line: 145, type: !695)
!1371 = !DILocalVariable(name: "in_over_3", scope: !1364, file: !172, line: 150, type: !417)
!1372 = !DILocalVariable(name: "outlen", scope: !1364, file: !172, line: 150, type: !417)
!1373 = !DILocation(line: 0, scope: !1364)
!1374 = !DILocation(line: 150, column: 27, scope: !1364)
!1375 = !DILocation(line: 150, column: 44, scope: !1364)
!1376 = !DILocation(line: 150, column: 31, scope: !1364)
!1377 = !DILocation(line: 151, column: 7, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 151, column: 7)
!1379 = !DILocation(line: 151, column: 39, scope: !1378)
!1380 = !DILocation(line: 153, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !172, line: 152, column: 5)
!1382 = !DILocation(line: 154, column: 7, scope: !1381)
!1383 = !DILocation(line: 156, column: 9, scope: !1364)
!1384 = !DILocalVariable(name: "s", arg: 1, scope: !1385, file: !1386, line: 55, type: !417)
!1385 = distinct !DISubprogram(name: "imalloc", scope: !1386, file: !1386, line: 55, type: !1387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1389)
!1386 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1387 = !DISubroutineType(types: !1388)
!1388 = !{!55, !417}
!1389 = !{!1384}
!1390 = !DILocation(line: 0, scope: !1385, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 158, column: 10, scope: !1364)
!1392 = !DILocation(line: 57, column: 26, scope: !1385, inlinedAt: !1391)
!1393 = !DILocation(line: 158, column: 8, scope: !1364)
!1394 = !DILocation(line: 159, column: 8, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1364, file: !172, line: 159, column: 7)
!1396 = !DILocation(line: 159, column: 7, scope: !1364)
!1397 = !DILocation(line: 162, column: 3, scope: !1364)
!1398 = !DILocation(line: 164, column: 3, scope: !1364)
!1399 = !DILocation(line: 165, column: 1, scope: !1364)
!1400 = distinct !DISubprogram(name: "base64_decode_ctx", scope: !172, file: !172, line: 466, type: !1401, scopeLine: 469, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1403)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!78, !1232, !568, !417, !933, !416}
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1415, !1419}
!1404 = !DILocalVariable(name: "ctx", arg: 1, scope: !1400, file: !172, line: 466, type: !1232)
!1405 = !DILocalVariable(name: "in", arg: 2, scope: !1400, file: !172, line: 467, type: !568)
!1406 = !DILocalVariable(name: "inlen", arg: 3, scope: !1400, file: !172, line: 467, type: !417)
!1407 = !DILocalVariable(name: "out", arg: 4, scope: !1400, file: !172, line: 468, type: !933)
!1408 = !DILocalVariable(name: "outlen", arg: 5, scope: !1400, file: !172, line: 468, type: !416)
!1409 = !DILocalVariable(name: "ignore_newlines", scope: !1400, file: !172, line: 470, type: !78)
!1410 = !DILocalVariable(name: "flush_ctx", scope: !1400, file: !172, line: 471, type: !78)
!1411 = !DILocalVariable(name: "ctx_i", scope: !1400, file: !172, line: 472, type: !7)
!1412 = !DILocalVariable(name: "outleft", scope: !1400, file: !172, line: 480, type: !417)
!1413 = !DILocalVariable(name: "outleft_save", scope: !1414, file: !172, line: 484, type: !417)
!1414 = distinct !DILexicalBlock(scope: !1400, file: !172, line: 483, column: 5)
!1415 = !DILocalVariable(name: "in_end", scope: !1416, file: !172, line: 517, type: !61)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !172, line: 516, column: 11)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !172, line: 511, column: 9)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !172, line: 505, column: 11)
!1419 = !DILocalVariable(name: "non_nl", scope: !1416, file: !172, line: 519, type: !61)
!1420 = !DILocation(line: 0, scope: !1400)
!1421 = !DILocation(line: 470, column: 30, scope: !1400)
!1422 = !DILocation(line: 474, column: 7, scope: !1400)
!1423 = !DILocation(line: 476, column: 20, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !172, line: 475, column: 5)
!1425 = distinct !DILexicalBlock(scope: !1400, file: !172, line: 474, column: 7)
!1426 = !DILocation(line: 477, column: 25, scope: !1424)
!1427 = !DILocation(line: 478, column: 5, scope: !1424)
!1428 = !DILocation(line: 480, column: 3, scope: !1400)
!1429 = !DILocation(line: 480, column: 19, scope: !1400)
!1430 = !DILocation(line: 480, column: 9, scope: !1400)
!1431 = !DILocation(line: 482, column: 3, scope: !1400)
!1432 = !DILocation(line: 484, column: 28, scope: !1414)
!1433 = !DILocation(line: 0, scope: !1414)
!1434 = !DILocation(line: 485, column: 22, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1414, file: !172, line: 485, column: 11)
!1436 = !DILocation(line: 492, column: 20, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1438, file: !172, line: 492, column: 19)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !172, line: 488, column: 13)
!1439 = distinct !DILexicalBlock(scope: !1435, file: !172, line: 486, column: 9)
!1440 = !DILocation(line: 492, column: 19, scope: !1438)
!1441 = !DILocation(line: 495, column: 18, scope: !1438)
!1442 = !DILocation(line: 496, column: 21, scope: !1438)
!1443 = !DILocation(line: 491, column: 30, scope: !1438)
!1444 = distinct !{!1444, !1445, !1446}
!1445 = !DILocation(line: 487, column: 11, scope: !1439)
!1446 = !DILocation(line: 497, column: 13, scope: !1439)
!1447 = !DILocation(line: 500, column: 17, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1414, file: !172, line: 500, column: 11)
!1449 = !DILocation(line: 500, column: 22, scope: !1448)
!1450 = !DILocation(line: 505, column: 17, scope: !1418)
!1451 = !DILocation(line: 505, column: 20, scope: !1418)
!1452 = !DILocation(line: 505, column: 24, scope: !1418)
!1453 = !DILocation(line: 505, column: 32, scope: !1418)
!1454 = !DILocation(line: 507, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1418, file: !172, line: 506, column: 9)
!1456 = !DILocation(line: 508, column: 11, scope: !1455)
!1457 = !DILocation(line: 509, column: 9, scope: !1455)
!1458 = !DILocation(line: 513, column: 33, scope: !1417)
!1459 = !DILocation(line: 513, column: 31, scope: !1417)
!1460 = !DILocation(line: 513, column: 15, scope: !1417)
!1461 = !DILocation(line: 514, column: 19, scope: !1417)
!1462 = !DILocation(line: 517, column: 37, scope: !1416)
!1463 = !DILocation(line: 0, scope: !1416)
!1464 = !DILocation(line: 520, column: 17, scope: !1416)
!1465 = !DILocalVariable(name: "ctx", arg: 1, scope: !1466, file: !172, line: 318, type: !1232)
!1466 = distinct !DISubprogram(name: "get_4", scope: !172, file: !172, line: 318, type: !1467, scopeLine: 321, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1470)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!53, !1232, !1469, !568, !416}
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!1470 = !{!1465, !1471, !1472, !1473, !1474, !1477, !1479}
!1471 = !DILocalVariable(name: "in", arg: 2, scope: !1466, file: !172, line: 319, type: !1469)
!1472 = !DILocalVariable(name: "in_end", arg: 3, scope: !1466, file: !172, line: 319, type: !568)
!1473 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1466, file: !172, line: 320, type: !416)
!1474 = !DILocalVariable(name: "t", scope: !1475, file: !172, line: 327, type: !61)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !172, line: 326, column: 5)
!1476 = distinct !DILexicalBlock(scope: !1466, file: !172, line: 325, column: 7)
!1477 = !DILocalVariable(name: "p", scope: !1478, file: !172, line: 339, type: !61)
!1478 = distinct !DILexicalBlock(scope: !1466, file: !172, line: 337, column: 3)
!1479 = !DILocalVariable(name: "c", scope: !1480, file: !172, line: 342, type: !54)
!1480 = distinct !DILexicalBlock(scope: !1478, file: !172, line: 341, column: 7)
!1481 = !DILocation(line: 0, scope: !1466, inlinedAt: !1482)
!1482 = distinct !DILocation(line: 521, column: 24, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1416, file: !172, line: 520, column: 17)
!1484 = !DILocation(line: 322, column: 12, scope: !1485, inlinedAt: !1482)
!1485 = distinct !DILexicalBlock(scope: !1466, file: !172, line: 322, column: 7)
!1486 = !{!1487}
!1487 = distinct !{!1487, !1488, !"get_4: argument 0"}
!1488 = distinct !{!1488, !"get_4"}
!1489 = !DILocation(line: 322, column: 7, scope: !1466, inlinedAt: !1482)
!1490 = !DILocation(line: 323, column: 12, scope: !1485, inlinedAt: !1482)
!1491 = !DILocation(line: 325, column: 7, scope: !1466, inlinedAt: !1482)
!1492 = !DILocation(line: 0, scope: !1475, inlinedAt: !1482)
!1493 = !DILocation(line: 328, column: 13, scope: !1494, inlinedAt: !1482)
!1494 = distinct !DILexicalBlock(scope: !1475, file: !172, line: 328, column: 11)
!1495 = !DILocation(line: 328, column: 29, scope: !1494, inlinedAt: !1482)
!1496 = !DILocation(line: 328, column: 32, scope: !1494, inlinedAt: !1482)
!1497 = !DILocation(line: 328, column: 52, scope: !1494, inlinedAt: !1482)
!1498 = !DILocation(line: 328, column: 11, scope: !1475, inlinedAt: !1482)
!1499 = !DILocation(line: 331, column: 15, scope: !1500, inlinedAt: !1482)
!1500 = distinct !DILexicalBlock(scope: !1494, file: !172, line: 329, column: 9)
!1501 = !DILocation(line: 528, column: 42, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1416, file: !172, line: 528, column: 17)
!1503 = !DILocation(line: 0, scope: !1478, inlinedAt: !1482)
!1504 = !DILocation(line: 340, column: 14, scope: !1478, inlinedAt: !1482)
!1505 = !DILocation(line: 340, column: 5, scope: !1478, inlinedAt: !1482)
!1506 = !DILocation(line: 343, column: 13, scope: !1480, inlinedAt: !1482)
!1507 = !DILocation(line: 342, column: 20, scope: !1480, inlinedAt: !1482)
!1508 = !DILocation(line: 342, column: 18, scope: !1480, inlinedAt: !1482)
!1509 = !DILocation(line: 0, scope: !1480, inlinedAt: !1482)
!1510 = !DILocation(line: 343, column: 15, scope: !1511, inlinedAt: !1482)
!1511 = distinct !DILexicalBlock(scope: !1480, file: !172, line: 343, column: 13)
!1512 = !DILocation(line: 345, column: 28, scope: !1513, inlinedAt: !1482)
!1513 = distinct !DILexicalBlock(scope: !1511, file: !172, line: 344, column: 11)
!1514 = !DILocation(line: 345, column: 13, scope: !1513, inlinedAt: !1482)
!1515 = !DILocation(line: 345, column: 32, scope: !1513, inlinedAt: !1482)
!1516 = !DILocation(line: 346, column: 22, scope: !1517, inlinedAt: !1482)
!1517 = distinct !DILexicalBlock(scope: !1513, file: !172, line: 346, column: 17)
!1518 = !DILocation(line: 346, column: 24, scope: !1517, inlinedAt: !1482)
!1519 = !DILocation(line: 346, column: 17, scope: !1513, inlinedAt: !1482)
!1520 = !DILocation(line: 352, column: 27, scope: !1478, inlinedAt: !1482)
!1521 = !DILocation(line: 352, column: 22, scope: !1478, inlinedAt: !1482)
!1522 = !DILocation(line: 0, scope: !1483)
!1523 = !DILocation(line: 528, column: 23, scope: !1502)
!1524 = !DILocation(line: 528, column: 28, scope: !1502)
!1525 = !DILocation(line: 528, column: 38, scope: !1502)
!1526 = !DILocation(line: 533, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1416, file: !172, line: 533, column: 17)
!1528 = !DILocation(line: 533, column: 17, scope: !1416)
!1529 = !DILocation(line: 536, column: 28, scope: !1416)
!1530 = !DILocation(line: 541, column: 14, scope: !1400)
!1531 = !DILocation(line: 541, column: 11, scope: !1400)
!1532 = !DILocation(line: 543, column: 16, scope: !1400)
!1533 = !DILocation(line: 544, column: 1, scope: !1400)
!1534 = !DILocation(line: 543, column: 3, scope: !1400)
!1535 = distinct !DISubprogram(name: "decode_4", scope: !172, file: !172, line: 372, type: !1536, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1538)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!78, !568, !417, !932, !416}
!1538 = !{!1539, !1540, !1541, !1542, !1543}
!1539 = !DILocalVariable(name: "in", arg: 1, scope: !1535, file: !172, line: 372, type: !568)
!1540 = !DILocalVariable(name: "inlen", arg: 2, scope: !1535, file: !172, line: 372, type: !417)
!1541 = !DILocalVariable(name: "outp", arg: 3, scope: !1535, file: !172, line: 373, type: !932)
!1542 = !DILocalVariable(name: "outleft", arg: 4, scope: !1535, file: !172, line: 373, type: !416)
!1543 = !DILocalVariable(name: "out", scope: !1535, file: !172, line: 381, type: !53)
!1544 = !DILocation(line: 0, scope: !1535)
!1545 = !DILocation(line: 375, column: 13, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1535, file: !172, line: 375, column: 7)
!1547 = !DILocation(line: 375, column: 7, scope: !1535)
!1548 = !DILocation(line: 378, column: 18, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1535, file: !172, line: 378, column: 7)
!1550 = !DILocation(line: 0, scope: !1217, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 378, column: 8, scope: !1549)
!1552 = !DILocation(line: 0, scope: !1209, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 64, column: 10, scope: !1217, inlinedAt: !1551)
!1554 = !DILocation(line: 58, column: 10, scope: !1209, inlinedAt: !1553)
!1555 = !DILocation(line: 58, column: 44, scope: !1209, inlinedAt: !1553)
!1556 = !DILocation(line: 58, column: 41, scope: !1209, inlinedAt: !1553)
!1557 = !DILocation(line: 378, column: 25, scope: !1549)
!1558 = !DILocation(line: 378, column: 39, scope: !1549)
!1559 = !DILocation(line: 0, scope: !1217, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 378, column: 29, scope: !1549)
!1561 = !DILocation(line: 0, scope: !1209, inlinedAt: !1562)
!1562 = distinct !DILocation(line: 64, column: 10, scope: !1217, inlinedAt: !1560)
!1563 = !DILocation(line: 58, column: 10, scope: !1209, inlinedAt: !1562)
!1564 = !DILocation(line: 58, column: 44, scope: !1209, inlinedAt: !1562)
!1565 = !DILocation(line: 58, column: 41, scope: !1209, inlinedAt: !1562)
!1566 = !DILocation(line: 378, column: 7, scope: !1535)
!1567 = !DILocation(line: 381, column: 15, scope: !1535)
!1568 = !DILocation(line: 383, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1535, file: !172, line: 383, column: 7)
!1570 = !DILocation(line: 383, column: 7, scope: !1535)
!1571 = !DILocation(line: 385, column: 50, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !172, line: 384, column: 5)
!1573 = !DILocation(line: 386, column: 52, scope: !1572)
!1574 = !DILocation(line: 386, column: 17, scope: !1572)
!1575 = !DILocation(line: 385, column: 11, scope: !1572)
!1576 = !DILocation(line: 385, column: 14, scope: !1572)
!1577 = !DILocation(line: 387, column: 7, scope: !1572)
!1578 = !DILocation(line: 388, column: 5, scope: !1572)
!1579 = !DILocation(line: 390, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1535, file: !172, line: 390, column: 7)
!1581 = !DILocation(line: 390, column: 7, scope: !1535)
!1582 = !DILocation(line: 393, column: 7, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1535, file: !172, line: 393, column: 7)
!1584 = !DILocation(line: 393, column: 13, scope: !1583)
!1585 = !DILocation(line: 393, column: 7, scope: !1535)
!1586 = !DILocation(line: 395, column: 17, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !172, line: 395, column: 11)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !172, line: 394, column: 5)
!1589 = !DILocation(line: 395, column: 11, scope: !1588)
!1590 = !DILocation(line: 398, column: 11, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1588, file: !172, line: 398, column: 11)
!1592 = !DILocation(line: 398, column: 17, scope: !1591)
!1593 = !DILocation(line: 398, column: 11, scope: !1588)
!1594 = !DILocation(line: 0, scope: !1217, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 407, column: 12, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !172, line: 407, column: 11)
!1597 = distinct !DILexicalBlock(scope: !1583, file: !172, line: 406, column: 5)
!1598 = !DILocation(line: 0, scope: !1209, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 64, column: 10, scope: !1217, inlinedAt: !1595)
!1600 = !DILocation(line: 58, column: 10, scope: !1209, inlinedAt: !1599)
!1601 = !DILocation(line: 58, column: 44, scope: !1209, inlinedAt: !1599)
!1602 = !DILocation(line: 58, column: 41, scope: !1209, inlinedAt: !1599)
!1603 = !DILocation(line: 407, column: 11, scope: !1597)
!1604 = !DILocation(line: 410, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1597, file: !172, line: 410, column: 11)
!1606 = !DILocation(line: 410, column: 11, scope: !1597)
!1607 = !DILocation(line: 412, column: 55, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1605, file: !172, line: 411, column: 9)
!1609 = !DILocation(line: 413, column: 56, scope: !1608)
!1610 = !DILocation(line: 413, column: 21, scope: !1608)
!1611 = !DILocation(line: 412, column: 15, scope: !1608)
!1612 = !DILocation(line: 412, column: 18, scope: !1608)
!1613 = !DILocation(line: 414, column: 11, scope: !1608)
!1614 = !DILocation(line: 415, column: 9, scope: !1608)
!1615 = !DILocation(line: 417, column: 17, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1597, file: !172, line: 417, column: 11)
!1617 = !DILocation(line: 417, column: 11, scope: !1597)
!1618 = !DILocation(line: 420, column: 11, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1597, file: !172, line: 420, column: 11)
!1620 = !DILocation(line: 420, column: 17, scope: !1619)
!1621 = !DILocation(line: 420, column: 11, scope: !1597)
!1622 = !DILocation(line: 422, column: 21, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !172, line: 422, column: 15)
!1624 = distinct !DILexicalBlock(scope: !1619, file: !172, line: 421, column: 9)
!1625 = !DILocation(line: 422, column: 15, scope: !1624)
!1626 = !DILocation(line: 0, scope: !1217, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 431, column: 16, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !172, line: 431, column: 15)
!1629 = distinct !DILexicalBlock(scope: !1619, file: !172, line: 430, column: 9)
!1630 = !DILocation(line: 0, scope: !1209, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 64, column: 10, scope: !1217, inlinedAt: !1627)
!1632 = !DILocation(line: 58, column: 10, scope: !1209, inlinedAt: !1631)
!1633 = !DILocation(line: 58, column: 44, scope: !1209, inlinedAt: !1631)
!1634 = !DILocation(line: 58, column: 41, scope: !1209, inlinedAt: !1631)
!1635 = !DILocation(line: 431, column: 15, scope: !1629)
!1636 = !DILocation(line: 434, column: 15, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1629, file: !172, line: 434, column: 15)
!1638 = !DILocation(line: 434, column: 15, scope: !1629)
!1639 = !DILocation(line: 436, column: 59, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1637, file: !172, line: 435, column: 13)
!1641 = !DILocation(line: 437, column: 25, scope: !1640)
!1642 = !DILocation(line: 436, column: 19, scope: !1640)
!1643 = !DILocation(line: 436, column: 22, scope: !1640)
!1644 = !DILocation(line: 438, column: 15, scope: !1640)
!1645 = !DILocation(line: 439, column: 13, scope: !1640)
!1646 = !DILocation(line: 444, column: 3, scope: !1535)
!1647 = !DILocation(line: 445, column: 1, scope: !1535)
!1648 = distinct !DISubprogram(name: "base64_decode_alloc_ctx", scope: !172, file: !172, line: 558, type: !1649, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1651)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!78, !1232, !61, !417, !695, !416}
!1651 = !{!1652, !1653, !1654, !1655, !1656, !1657}
!1652 = !DILocalVariable(name: "ctx", arg: 1, scope: !1648, file: !172, line: 558, type: !1232)
!1653 = !DILocalVariable(name: "in", arg: 2, scope: !1648, file: !172, line: 559, type: !61)
!1654 = !DILocalVariable(name: "inlen", arg: 3, scope: !1648, file: !172, line: 559, type: !417)
!1655 = !DILocalVariable(name: "out", arg: 4, scope: !1648, file: !172, line: 559, type: !695)
!1656 = !DILocalVariable(name: "outlen", arg: 5, scope: !1648, file: !172, line: 560, type: !416)
!1657 = !DILocalVariable(name: "needlen", scope: !1648, file: !172, line: 567, type: !417)
!1658 = !DILocation(line: 0, scope: !1648)
!1659 = !DILocation(line: 567, column: 3, scope: !1648)
!1660 = !DILocation(line: 567, column: 31, scope: !1648)
!1661 = !DILocation(line: 567, column: 21, scope: !1648)
!1662 = !DILocation(line: 567, column: 9, scope: !1648)
!1663 = !DILocation(line: 0, scope: !1385, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 569, column: 10, scope: !1648)
!1665 = !DILocation(line: 57, column: 26, scope: !1385, inlinedAt: !1664)
!1666 = !DILocation(line: 569, column: 8, scope: !1648)
!1667 = !DILocation(line: 570, column: 8, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1648, file: !172, line: 570, column: 7)
!1669 = !DILocation(line: 570, column: 7, scope: !1648)
!1670 = !DILocation(line: 573, column: 8, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1648, file: !172, line: 573, column: 7)
!1672 = !DILocation(line: 573, column: 7, scope: !1648)
!1673 = !DILocation(line: 575, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !172, line: 574, column: 5)
!1675 = !DILocation(line: 575, column: 7, scope: !1674)
!1676 = !DILocation(line: 576, column: 12, scope: !1674)
!1677 = !DILocation(line: 577, column: 7, scope: !1674)
!1678 = !DILocation(line: 580, column: 7, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1648, file: !172, line: 580, column: 7)
!1680 = !DILocation(line: 580, column: 7, scope: !1648)
!1681 = !DILocation(line: 581, column: 15, scope: !1679)
!1682 = !DILocation(line: 581, column: 13, scope: !1679)
!1683 = !DILocation(line: 581, column: 5, scope: !1679)
!1684 = !DILocation(line: 584, column: 1, scope: !1648)
!1685 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !187, file: !187, line: 50, type: !498, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1686)
!1686 = !{!1687}
!1687 = !DILocalVariable(name: "file", arg: 1, scope: !1685, file: !187, line: 50, type: !61)
!1688 = !DILocation(line: 0, scope: !1685)
!1689 = !DILocation(line: 52, column: 13, scope: !1685)
!1690 = !DILocation(line: 53, column: 1, scope: !1685)
!1691 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !187, file: !187, line: 87, type: !1692, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1694)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{null, !78}
!1694 = !{!1695}
!1695 = !DILocalVariable(name: "ignore", arg: 1, scope: !1691, file: !187, line: 87, type: !78)
!1696 = !DILocation(line: 0, scope: !1691)
!1697 = !DILocation(line: 89, column: 16, scope: !1691)
!1698 = !{!1699, !1699, i64 0}
!1699 = !{!"_Bool", !478, i64 0}
!1700 = !DILocation(line: 90, column: 1, scope: !1691)
!1701 = distinct !DISubprogram(name: "close_stdout", scope: !187, file: !187, line: 116, type: !230, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !186, retainedNodes: !1702)
!1702 = !{!1703}
!1703 = !DILocalVariable(name: "write_error", scope: !1704, file: !187, line: 121, type: !61)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !187, line: 120, column: 5)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !187, line: 118, column: 7)
!1706 = !DILocation(line: 118, column: 21, scope: !1705)
!1707 = !DILocation(line: 118, column: 7, scope: !1705)
!1708 = !DILocation(line: 118, column: 29, scope: !1705)
!1709 = !DILocation(line: 119, column: 7, scope: !1705)
!1710 = !DILocation(line: 119, column: 12, scope: !1705)
!1711 = !{i8 0, i8 2}
!1712 = !DILocation(line: 119, column: 25, scope: !1705)
!1713 = !DILocation(line: 119, column: 28, scope: !1705)
!1714 = !DILocation(line: 119, column: 34, scope: !1705)
!1715 = !DILocation(line: 118, column: 7, scope: !1701)
!1716 = !DILocation(line: 121, column: 33, scope: !1704)
!1717 = !DILocation(line: 0, scope: !1704)
!1718 = !DILocation(line: 122, column: 11, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1704, file: !187, line: 122, column: 11)
!1720 = !DILocation(line: 0, scope: !1719)
!1721 = !DILocation(line: 122, column: 11, scope: !1704)
!1722 = !DILocation(line: 123, column: 9, scope: !1719)
!1723 = !DILocation(line: 126, column: 9, scope: !1719)
!1724 = !DILocation(line: 128, column: 14, scope: !1704)
!1725 = !DILocation(line: 128, column: 7, scope: !1704)
!1726 = !DILocation(line: 133, column: 42, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1701, file: !187, line: 133, column: 7)
!1728 = !DILocation(line: 133, column: 28, scope: !1727)
!1729 = !DILocation(line: 133, column: 50, scope: !1727)
!1730 = !DILocation(line: 133, column: 7, scope: !1701)
!1731 = !DILocation(line: 134, column: 12, scope: !1727)
!1732 = !DILocation(line: 134, column: 5, scope: !1727)
!1733 = !DILocation(line: 135, column: 1, scope: !1701)
!1734 = distinct !DISubprogram(name: "verror", scope: !194, file: !194, line: 251, type: !1735, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1737)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !56, !56, !61, !202}
!1737 = !{!1738, !1739, !1740, !1741}
!1738 = !DILocalVariable(name: "status", arg: 1, scope: !1734, file: !194, line: 251, type: !56)
!1739 = !DILocalVariable(name: "errnum", arg: 2, scope: !1734, file: !194, line: 251, type: !56)
!1740 = !DILocalVariable(name: "message", arg: 3, scope: !1734, file: !194, line: 251, type: !61)
!1741 = !DILocalVariable(name: "args", arg: 4, scope: !1734, file: !194, line: 251, type: !202)
!1742 = !DILocation(line: 0, scope: !1734)
!1743 = !DILocation(line: 251, column: 1, scope: !1734)
!1744 = !DILocation(line: 261, column: 3, scope: !1734)
!1745 = !DILocation(line: 265, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1734, file: !194, line: 265, column: 7)
!1747 = !DILocation(line: 265, column: 7, scope: !1734)
!1748 = !DILocation(line: 266, column: 5, scope: !1746)
!1749 = !DILocation(line: 272, column: 7, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !194, line: 268, column: 5)
!1751 = !DILocation(line: 276, column: 3, scope: !1734)
!1752 = !{i64 0, i64 8, !476, i64 8, i64 8, !476, i64 16, i64 8, !476, i64 24, i64 4, !572, i64 28, i64 4, !572}
!1753 = !DILocation(line: 282, column: 1, scope: !1734)
!1754 = distinct !DISubprogram(name: "flush_stdout", scope: !194, file: !194, line: 163, type: !230, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1755)
!1755 = !{!1756}
!1756 = !DILocalVariable(name: "stdout_fd", scope: !1754, file: !194, line: 166, type: !56)
!1757 = !DILocation(line: 0, scope: !1754)
!1758 = !DILocalVariable(name: "fd", arg: 1, scope: !1759, file: !194, line: 145, type: !56)
!1759 = distinct !DISubprogram(name: "is_open", scope: !194, file: !194, line: 145, type: !859, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1760)
!1760 = !{!1758}
!1761 = !DILocation(line: 0, scope: !1759, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 182, column: 25, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1754, file: !194, line: 182, column: 7)
!1764 = !DILocation(line: 157, column: 15, scope: !1759, inlinedAt: !1762)
!1765 = !DILocation(line: 182, column: 25, scope: !1763)
!1766 = !DILocation(line: 182, column: 7, scope: !1754)
!1767 = !DILocation(line: 184, column: 5, scope: !1763)
!1768 = !DILocation(line: 185, column: 1, scope: !1754)
!1769 = distinct !DISubprogram(name: "error_tail", scope: !194, file: !194, line: 219, type: !1735, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1770)
!1770 = !{!1771, !1772, !1773, !1774}
!1771 = !DILocalVariable(name: "status", arg: 1, scope: !1769, file: !194, line: 219, type: !56)
!1772 = !DILocalVariable(name: "errnum", arg: 2, scope: !1769, file: !194, line: 219, type: !56)
!1773 = !DILocalVariable(name: "message", arg: 3, scope: !1769, file: !194, line: 219, type: !61)
!1774 = !DILocalVariable(name: "args", arg: 4, scope: !1769, file: !194, line: 219, type: !202)
!1775 = !DILocation(line: 0, scope: !1769)
!1776 = !DILocation(line: 219, column: 1, scope: !1769)
!1777 = !DILocation(line: 229, column: 13, scope: !1769)
!1778 = !DILocation(line: 229, column: 3, scope: !1769)
!1779 = !DILocalVariable(name: "__stream", arg: 1, scope: !1780, file: !1781, line: 132, type: !1784)
!1780 = distinct !DISubprogram(name: "vfprintf", scope: !1781, file: !1781, line: 132, type: !1782, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1819)
!1781 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!56, !1784, !568, !204}
!1784 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1785)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !1787)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1787, file: !95, line: 51, baseType: !56, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1787, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1787, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1787, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1787, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1787, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1787, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1787, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1787, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1787, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1787, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1787, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1787, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1787, file: !95, line: 70, baseType: !1803, size: 64, offset: 832)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1787, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1787, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1787, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1787, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1787, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1787, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1787, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1787, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1787, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1787, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1787, file: !95, line: 93, baseType: !1803, size: 64, offset: 1344)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1787, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1787, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1787, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1787, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!1819 = !{!1779, !1820, !1821}
!1820 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1780, file: !1781, line: 133, type: !568)
!1821 = !DILocalVariable(name: "__ap", arg: 3, scope: !1780, file: !1781, line: 133, type: !204)
!1822 = !DILocation(line: 0, scope: !1780, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 229, column: 3, scope: !1769)
!1824 = !DILocation(line: 135, column: 10, scope: !1780, inlinedAt: !1823)
!1825 = !{!1826, !1828}
!1826 = distinct !{!1826, !1827, !"vfprintf.inline: argument 0"}
!1827 = distinct !{!1827, !"vfprintf.inline"}
!1828 = distinct !{!1828, !1827, !"vfprintf.inline: argument 1"}
!1829 = !DILocation(line: 232, column: 3, scope: !1769)
!1830 = !DILocation(line: 233, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1769, file: !194, line: 233, column: 7)
!1832 = !DILocation(line: 233, column: 7, scope: !1769)
!1833 = !DILocalVariable(name: "errnum", arg: 1, scope: !1834, file: !194, line: 188, type: !56)
!1834 = distinct !DISubprogram(name: "print_errno_message", scope: !194, file: !194, line: 188, type: !466, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1835)
!1835 = !{!1833, !1836, !1837}
!1836 = !DILocalVariable(name: "s", scope: !1834, file: !194, line: 190, type: !61)
!1837 = !DILocalVariable(name: "errbuf", scope: !1834, file: !194, line: 193, type: !1838)
!1838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8192, elements: !1839)
!1839 = !{!1840}
!1840 = !DISubrange(count: 1024)
!1841 = !DILocation(line: 0, scope: !1834, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 234, column: 5, scope: !1831)
!1843 = !DILocation(line: 193, column: 3, scope: !1834, inlinedAt: !1842)
!1844 = !DILocation(line: 193, column: 8, scope: !1834, inlinedAt: !1842)
!1845 = !DILocation(line: 195, column: 7, scope: !1834, inlinedAt: !1842)
!1846 = !DILocation(line: 207, column: 9, scope: !1847, inlinedAt: !1842)
!1847 = distinct !DILexicalBlock(scope: !1834, file: !194, line: 207, column: 7)
!1848 = !DILocation(line: 207, column: 7, scope: !1834, inlinedAt: !1842)
!1849 = !DILocation(line: 208, column: 9, scope: !1847, inlinedAt: !1842)
!1850 = !DILocation(line: 208, column: 5, scope: !1847, inlinedAt: !1842)
!1851 = !DILocation(line: 214, column: 3, scope: !1834, inlinedAt: !1842)
!1852 = !DILocation(line: 216, column: 1, scope: !1834, inlinedAt: !1842)
!1853 = !DILocation(line: 234, column: 5, scope: !1831)
!1854 = !DILocation(line: 238, column: 3, scope: !1769)
!1855 = !DILocalVariable(name: "__c", arg: 1, scope: !1856, file: !891, line: 101, type: !56)
!1856 = distinct !DISubprogram(name: "putc_unlocked", scope: !891, file: !891, line: 101, type: !1857, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1859)
!1857 = !DISubroutineType(types: !1858)
!1858 = !{!56, !56, !1785}
!1859 = !{!1855, !1860}
!1860 = !DILocalVariable(name: "__stream", arg: 2, scope: !1856, file: !891, line: 101, type: !1785)
!1861 = !DILocation(line: 0, scope: !1856, inlinedAt: !1862)
!1862 = distinct !DILocation(line: 238, column: 3, scope: !1769)
!1863 = !DILocation(line: 103, column: 10, scope: !1856, inlinedAt: !1862)
!1864 = !DILocation(line: 240, column: 3, scope: !1769)
!1865 = !DILocation(line: 241, column: 7, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1769, file: !194, line: 241, column: 7)
!1867 = !DILocation(line: 241, column: 7, scope: !1769)
!1868 = !DILocation(line: 242, column: 5, scope: !1866)
!1869 = !DILocation(line: 243, column: 1, scope: !1769)
!1870 = !DISubprogram(name: "strerror_r", scope: !1871, file: !1871, line: 444, type: !1872, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!1871 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1872 = !DISubroutineType(types: !1873)
!1873 = !{!53, !56, !53, !58}
!1874 = !DISubprogram(name: "fcntl", scope: !1875, file: !1875, line: 149, type: !1876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!1875 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!56, !56, !56, null}
!1878 = distinct !DISubprogram(name: "error", scope: !194, file: !194, line: 285, type: !1879, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{null, !56, !56, !61, null}
!1881 = !{!1882, !1883, !1884, !1885}
!1882 = !DILocalVariable(name: "status", arg: 1, scope: !1878, file: !194, line: 285, type: !56)
!1883 = !DILocalVariable(name: "errnum", arg: 2, scope: !1878, file: !194, line: 285, type: !56)
!1884 = !DILocalVariable(name: "message", arg: 3, scope: !1878, file: !194, line: 285, type: !61)
!1885 = !DILocalVariable(name: "ap", scope: !1878, file: !194, line: 287, type: !202)
!1886 = !DILocation(line: 0, scope: !1878)
!1887 = !DILocation(line: 287, column: 3, scope: !1878)
!1888 = !DILocation(line: 287, column: 11, scope: !1878)
!1889 = !DILocation(line: 288, column: 3, scope: !1878)
!1890 = !DILocation(line: 289, column: 3, scope: !1878)
!1891 = !DILocation(line: 290, column: 3, scope: !1878)
!1892 = !DILocation(line: 291, column: 1, scope: !1878)
!1893 = !DILocation(line: 0, scope: !199)
!1894 = !DILocation(line: 298, column: 1, scope: !199)
!1895 = !DILocation(line: 302, column: 7, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !199, file: !194, line: 302, column: 7)
!1897 = !DILocation(line: 302, column: 7, scope: !199)
!1898 = !DILocation(line: 307, column: 11, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !194, line: 307, column: 11)
!1900 = distinct !DILexicalBlock(scope: !1896, file: !194, line: 303, column: 5)
!1901 = !DILocation(line: 307, column: 27, scope: !1899)
!1902 = !DILocation(line: 308, column: 11, scope: !1899)
!1903 = !DILocation(line: 308, column: 28, scope: !1899)
!1904 = !DILocation(line: 308, column: 25, scope: !1899)
!1905 = !DILocation(line: 309, column: 15, scope: !1899)
!1906 = !DILocation(line: 309, column: 33, scope: !1899)
!1907 = !DILocation(line: 310, column: 19, scope: !1899)
!1908 = !DILocation(line: 311, column: 22, scope: !1899)
!1909 = !DILocation(line: 311, column: 56, scope: !1899)
!1910 = !DILocation(line: 307, column: 11, scope: !1900)
!1911 = !DILocation(line: 316, column: 21, scope: !1900)
!1912 = !DILocation(line: 317, column: 23, scope: !1900)
!1913 = !DILocation(line: 318, column: 5, scope: !1900)
!1914 = !DILocation(line: 327, column: 3, scope: !199)
!1915 = !DILocation(line: 331, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !199, file: !194, line: 331, column: 7)
!1917 = !DILocation(line: 331, column: 7, scope: !199)
!1918 = !DILocation(line: 332, column: 5, scope: !1916)
!1919 = !DILocation(line: 338, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1916, file: !194, line: 334, column: 5)
!1921 = !DILocation(line: 346, column: 3, scope: !199)
!1922 = !DILocation(line: 350, column: 3, scope: !199)
!1923 = !DILocation(line: 356, column: 1, scope: !199)
!1924 = distinct !DISubprogram(name: "error_at_line", scope: !194, file: !194, line: 359, type: !1925, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !193, retainedNodes: !1927)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{null, !56, !56, !61, !7, !61, null}
!1927 = !{!1928, !1929, !1930, !1931, !1932, !1933}
!1928 = !DILocalVariable(name: "status", arg: 1, scope: !1924, file: !194, line: 359, type: !56)
!1929 = !DILocalVariable(name: "errnum", arg: 2, scope: !1924, file: !194, line: 359, type: !56)
!1930 = !DILocalVariable(name: "file_name", arg: 3, scope: !1924, file: !194, line: 359, type: !61)
!1931 = !DILocalVariable(name: "line_number", arg: 4, scope: !1924, file: !194, line: 360, type: !7)
!1932 = !DILocalVariable(name: "message", arg: 5, scope: !1924, file: !194, line: 360, type: !61)
!1933 = !DILocalVariable(name: "ap", scope: !1924, file: !194, line: 362, type: !202)
!1934 = !DILocation(line: 0, scope: !1924)
!1935 = !DILocation(line: 362, column: 3, scope: !1924)
!1936 = !DILocation(line: 362, column: 11, scope: !1924)
!1937 = !DILocation(line: 363, column: 3, scope: !1924)
!1938 = !DILocation(line: 364, column: 3, scope: !1924)
!1939 = !DILocation(line: 366, column: 3, scope: !1924)
!1940 = !DILocation(line: 367, column: 1, scope: !1924)
!1941 = distinct !DISubprogram(name: "fdadvise", scope: !378, file: !378, line: 25, type: !1942, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1946)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !56, !1944, !1944, !1945}
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !203, line: 63, baseType: !117)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !29, line: 51, baseType: !28)
!1946 = !{!1947, !1948, !1949, !1950}
!1947 = !DILocalVariable(name: "fd", arg: 1, scope: !1941, file: !378, line: 25, type: !56)
!1948 = !DILocalVariable(name: "offset", arg: 2, scope: !1941, file: !378, line: 25, type: !1944)
!1949 = !DILocalVariable(name: "len", arg: 3, scope: !1941, file: !378, line: 25, type: !1944)
!1950 = !DILocalVariable(name: "advice", arg: 4, scope: !1941, file: !378, line: 25, type: !1945)
!1951 = !DILocation(line: 0, scope: !1941)
!1952 = !DILocation(line: 28, column: 3, scope: !1941)
!1953 = !DILocation(line: 30, column: 1, scope: !1941)
!1954 = !DISubprogram(name: "posix_fadvise", scope: !1875, file: !1875, line: 273, type: !1955, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!56, !56, !1944, !1944, !56}
!1957 = distinct !DISubprogram(name: "fadvise", scope: !378, file: !378, line: 33, type: !1958, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !377, retainedNodes: !1994)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !1960, !1945}
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !1962)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !1963)
!1963 = !{!1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1962, file: !95, line: 51, baseType: !56, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1962, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1962, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1962, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1962, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1962, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1962, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1962, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1962, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1962, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1962, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1962, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1962, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1962, file: !95, line: 70, baseType: !1978, size: 64, offset: 832)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1962, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1962, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1962, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1962, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1962, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1962, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1962, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1962, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1962, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1962, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1962, file: !95, line: 93, baseType: !1978, size: 64, offset: 1344)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1962, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1962, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1962, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1962, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "fp", arg: 1, scope: !1957, file: !378, line: 33, type: !1960)
!1996 = !DILocalVariable(name: "advice", arg: 2, scope: !1957, file: !378, line: 33, type: !1945)
!1997 = !DILocation(line: 0, scope: !1957)
!1998 = !DILocation(line: 35, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1957, file: !378, line: 35, column: 7)
!2000 = !DILocation(line: 35, column: 7, scope: !1957)
!2001 = !DILocation(line: 36, column: 15, scope: !1999)
!2002 = !DILocation(line: 0, scope: !1941, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 36, column: 5, scope: !1999)
!2004 = !DILocation(line: 28, column: 3, scope: !1941, inlinedAt: !2003)
!2005 = !DILocation(line: 36, column: 5, scope: !1999)
!2006 = !DILocation(line: 37, column: 1, scope: !1957)
!2007 = !DISubprogram(name: "fileno", scope: !203, file: !203, line: 809, type: !2008, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!56, !1960}
!2010 = distinct !DISubprogram(name: "rpl_fclose", scope: !381, file: !381, line: 58, type: !2011, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !380, retainedNodes: !2047)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!56, !2013}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2015)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2015, file: !95, line: 51, baseType: !56, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2015, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2015, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2015, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2015, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2015, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2015, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2015, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2015, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2015, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2015, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2015, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2015, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2015, file: !95, line: 70, baseType: !2031, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2015, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2015, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2015, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2015, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2015, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2015, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2015, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2015, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2015, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2015, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2015, file: !95, line: 93, baseType: !2031, size: 64, offset: 1344)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2015, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2015, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2015, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2015, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2047 = !{!2048, !2049, !2050, !2051}
!2048 = !DILocalVariable(name: "fp", arg: 1, scope: !2010, file: !381, line: 58, type: !2013)
!2049 = !DILocalVariable(name: "saved_errno", scope: !2010, file: !381, line: 60, type: !56)
!2050 = !DILocalVariable(name: "fd", scope: !2010, file: !381, line: 63, type: !56)
!2051 = !DILocalVariable(name: "result", scope: !2010, file: !381, line: 74, type: !56)
!2052 = !DILocation(line: 0, scope: !2010)
!2053 = !DILocation(line: 63, column: 12, scope: !2010)
!2054 = !DILocation(line: 64, column: 10, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2010, file: !381, line: 64, column: 7)
!2056 = !DILocation(line: 64, column: 7, scope: !2010)
!2057 = !DILocation(line: 65, column: 12, scope: !2055)
!2058 = !DILocation(line: 65, column: 5, scope: !2055)
!2059 = !DILocation(line: 70, column: 9, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2010, file: !381, line: 70, column: 7)
!2061 = !DILocation(line: 70, column: 23, scope: !2060)
!2062 = !DILocation(line: 70, column: 33, scope: !2060)
!2063 = !DILocation(line: 70, column: 26, scope: !2060)
!2064 = !DILocation(line: 70, column: 59, scope: !2060)
!2065 = !DILocation(line: 71, column: 7, scope: !2060)
!2066 = !DILocation(line: 71, column: 10, scope: !2060)
!2067 = !DILocation(line: 70, column: 7, scope: !2010)
!2068 = !DILocation(line: 100, column: 12, scope: !2010)
!2069 = !DILocation(line: 105, column: 7, scope: !2010)
!2070 = !DILocation(line: 72, column: 19, scope: !2060)
!2071 = !DILocation(line: 105, column: 19, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2010, file: !381, line: 105, column: 7)
!2073 = !DILocation(line: 107, column: 13, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2072, file: !381, line: 106, column: 5)
!2075 = !DILocation(line: 109, column: 5, scope: !2074)
!2076 = !DILocation(line: 112, column: 1, scope: !2010)
!2077 = !DISubprogram(name: "fclose", scope: !203, file: !203, line: 178, type: !2011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2078 = !DISubprogram(name: "lseek", scope: !2079, file: !2079, line: 339, type: !2080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2079 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!117, !56, !117, !56}
!2082 = distinct !DISubprogram(name: "rpl_fflush", scope: !383, file: !383, line: 130, type: !2083, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !2119)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!56, !2085}
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2087)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2088)
!2088 = !{!2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2087, file: !95, line: 51, baseType: !56, size: 32)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2087, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2087, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2087, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2087, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2087, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2087, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2087, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2087, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2087, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2087, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2087, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2087, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2087, file: !95, line: 70, baseType: !2103, size: 64, offset: 832)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2087, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2087, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2087, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2087, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2087, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2087, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2087, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2087, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2087, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2087, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2087, file: !95, line: 93, baseType: !2103, size: 64, offset: 1344)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2087, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2087, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2087, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2087, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2119 = !{!2120}
!2120 = !DILocalVariable(name: "stream", arg: 1, scope: !2082, file: !383, line: 130, type: !2085)
!2121 = !DILocation(line: 0, scope: !2082)
!2122 = !DILocation(line: 151, column: 14, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2082, file: !383, line: 151, column: 7)
!2124 = !DILocation(line: 151, column: 22, scope: !2123)
!2125 = !DILocation(line: 151, column: 27, scope: !2123)
!2126 = !DILocation(line: 151, column: 7, scope: !2082)
!2127 = !DILocation(line: 152, column: 12, scope: !2123)
!2128 = !DILocation(line: 152, column: 5, scope: !2123)
!2129 = !DILocalVariable(name: "fp", arg: 1, scope: !2130, file: !383, line: 42, type: !2085)
!2130 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !383, file: !383, line: 42, type: !2131, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !382, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{null, !2085}
!2133 = !{!2129}
!2134 = !DILocation(line: 0, scope: !2130, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 157, column: 3, scope: !2082)
!2136 = !DILocation(line: 44, column: 12, scope: !2137, inlinedAt: !2135)
!2137 = distinct !DILexicalBlock(scope: !2130, file: !383, line: 44, column: 7)
!2138 = !DILocation(line: 44, column: 19, scope: !2137, inlinedAt: !2135)
!2139 = !DILocation(line: 44, column: 7, scope: !2130, inlinedAt: !2135)
!2140 = !DILocation(line: 46, column: 5, scope: !2137, inlinedAt: !2135)
!2141 = !DILocation(line: 159, column: 10, scope: !2082)
!2142 = !DILocation(line: 159, column: 3, scope: !2082)
!2143 = !DILocation(line: 236, column: 1, scope: !2082)
!2144 = !DISubprogram(name: "fflush", scope: !203, file: !203, line: 230, type: !2083, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2145 = distinct !DISubprogram(name: "fpurge", scope: !386, file: !386, line: 32, type: !2146, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !385, retainedNodes: !2182)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!56, !2148}
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2150, file: !95, line: 51, baseType: !56, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2150, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2150, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2150, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2150, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2150, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2150, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2150, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2150, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2150, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2150, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2150, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2150, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2150, file: !95, line: 70, baseType: !2166, size: 64, offset: 832)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2150, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2150, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2150, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2150, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2150, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2150, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2150, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2150, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2150, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2150, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2150, file: !95, line: 93, baseType: !2166, size: 64, offset: 1344)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2150, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2150, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2150, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2150, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2182 = !{!2183}
!2183 = !DILocalVariable(name: "fp", arg: 1, scope: !2145, file: !386, line: 32, type: !2148)
!2184 = !DILocation(line: 0, scope: !2145)
!2185 = !DILocation(line: 36, column: 3, scope: !2145)
!2186 = !DILocation(line: 38, column: 3, scope: !2145)
!2187 = distinct !DISubprogram(name: "rpl_fseeko", scope: !388, file: !388, line: 28, type: !2188, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !387, retainedNodes: !2224)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!56, !2190, !1944, !56}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2193)
!2193 = !{!2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2192, file: !95, line: 51, baseType: !56, size: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2192, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2192, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2192, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2192, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2192, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2192, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2192, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2192, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2192, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2192, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2192, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2192, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2192, file: !95, line: 70, baseType: !2208, size: 64, offset: 832)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2192, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2192, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2192, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2192, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2192, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2192, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2192, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2192, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2192, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2192, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2192, file: !95, line: 93, baseType: !2208, size: 64, offset: 1344)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2192, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2192, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2192, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2192, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2224 = !{!2225, !2226, !2227, !2228}
!2225 = !DILocalVariable(name: "fp", arg: 1, scope: !2187, file: !388, line: 28, type: !2190)
!2226 = !DILocalVariable(name: "offset", arg: 2, scope: !2187, file: !388, line: 28, type: !1944)
!2227 = !DILocalVariable(name: "whence", arg: 3, scope: !2187, file: !388, line: 28, type: !56)
!2228 = !DILocalVariable(name: "pos", scope: !2229, file: !388, line: 123, type: !1944)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !388, line: 119, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2187, file: !388, line: 55, column: 7)
!2231 = !DILocation(line: 0, scope: !2187)
!2232 = !DILocation(line: 55, column: 12, scope: !2230)
!2233 = !{!900, !477, i64 16}
!2234 = !DILocation(line: 55, column: 33, scope: !2230)
!2235 = !{!900, !477, i64 8}
!2236 = !DILocation(line: 55, column: 25, scope: !2230)
!2237 = !DILocation(line: 56, column: 7, scope: !2230)
!2238 = !DILocation(line: 56, column: 15, scope: !2230)
!2239 = !DILocation(line: 56, column: 37, scope: !2230)
!2240 = !{!900, !477, i64 32}
!2241 = !DILocation(line: 56, column: 29, scope: !2230)
!2242 = !DILocation(line: 57, column: 7, scope: !2230)
!2243 = !DILocation(line: 57, column: 15, scope: !2230)
!2244 = !{!900, !477, i64 72}
!2245 = !DILocation(line: 57, column: 29, scope: !2230)
!2246 = !DILocation(line: 55, column: 7, scope: !2187)
!2247 = !DILocation(line: 123, column: 26, scope: !2229)
!2248 = !DILocation(line: 123, column: 19, scope: !2229)
!2249 = !DILocation(line: 0, scope: !2229)
!2250 = !DILocation(line: 124, column: 15, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2229, file: !388, line: 124, column: 11)
!2252 = !DILocation(line: 124, column: 11, scope: !2229)
!2253 = !DILocation(line: 135, column: 12, scope: !2229)
!2254 = !DILocation(line: 135, column: 19, scope: !2229)
!2255 = !DILocation(line: 136, column: 12, scope: !2229)
!2256 = !DILocation(line: 136, column: 20, scope: !2229)
!2257 = !{!900, !901, i64 144}
!2258 = !DILocation(line: 167, column: 7, scope: !2229)
!2259 = !DILocation(line: 169, column: 10, scope: !2187)
!2260 = !DILocation(line: 169, column: 3, scope: !2187)
!2261 = !DILocation(line: 170, column: 1, scope: !2187)
!2262 = !DISubprogram(name: "fseeko", scope: !203, file: !203, line: 736, type: !2263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!56, !2190, !117, !56}
!2265 = distinct !DISubprogram(name: "getprogname", scope: !390, file: !390, line: 54, type: !2266, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !389, retainedNodes: !485)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!61}
!2268 = !DILocation(line: 58, column: 10, scope: !2265)
!2269 = !DILocation(line: 58, column: 3, scope: !2265)
!2270 = distinct !DISubprogram(name: "set_program_name", scope: !235, file: !235, line: 37, type: !498, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2271)
!2271 = !{!2272, !2273, !2274}
!2272 = !DILocalVariable(name: "argv0", arg: 1, scope: !2270, file: !235, line: 37, type: !61)
!2273 = !DILocalVariable(name: "slash", scope: !2270, file: !235, line: 44, type: !61)
!2274 = !DILocalVariable(name: "base", scope: !2270, file: !235, line: 45, type: !61)
!2275 = !DILocation(line: 0, scope: !2270)
!2276 = !DILocation(line: 44, column: 23, scope: !2270)
!2277 = !DILocation(line: 45, column: 22, scope: !2270)
!2278 = !DILocation(line: 46, column: 17, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2270, file: !235, line: 46, column: 7)
!2280 = !DILocation(line: 46, column: 9, scope: !2279)
!2281 = !DILocation(line: 46, column: 25, scope: !2279)
!2282 = !DILocation(line: 46, column: 40, scope: !2279)
!2283 = !DILocalVariable(name: "__s1", arg: 1, scope: !2284, file: !523, line: 974, type: !690)
!2284 = distinct !DISubprogram(name: "memeq", scope: !523, file: !523, line: 974, type: !2285, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !234, retainedNodes: !2287)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!78, !690, !690, !58}
!2287 = !{!2283, !2288, !2289}
!2288 = !DILocalVariable(name: "__s2", arg: 2, scope: !2284, file: !523, line: 974, type: !690)
!2289 = !DILocalVariable(name: "__n", arg: 3, scope: !2284, file: !523, line: 974, type: !58)
!2290 = !DILocation(line: 0, scope: !2284, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 46, column: 28, scope: !2279)
!2292 = !DILocation(line: 976, column: 11, scope: !2284, inlinedAt: !2291)
!2293 = !DILocation(line: 976, column: 10, scope: !2284, inlinedAt: !2291)
!2294 = !DILocation(line: 46, column: 7, scope: !2270)
!2295 = !DILocation(line: 49, column: 11, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !235, line: 49, column: 11)
!2297 = distinct !DILexicalBlock(scope: !2279, file: !235, line: 47, column: 5)
!2298 = !DILocation(line: 49, column: 36, scope: !2296)
!2299 = !DILocation(line: 49, column: 11, scope: !2297)
!2300 = !DILocation(line: 65, column: 16, scope: !2270)
!2301 = !DILocation(line: 71, column: 27, scope: !2270)
!2302 = !DILocation(line: 74, column: 33, scope: !2270)
!2303 = !DILocation(line: 76, column: 1, scope: !2270)
!2304 = !DILocation(line: 0, scope: !240)
!2305 = !DILocation(line: 40, column: 29, scope: !240)
!2306 = !DILocation(line: 41, column: 19, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !240, file: !241, line: 41, column: 7)
!2308 = !DILocation(line: 41, column: 7, scope: !240)
!2309 = !DILocation(line: 47, column: 3, scope: !240)
!2310 = !DILocation(line: 48, column: 3, scope: !240)
!2311 = !DILocation(line: 48, column: 13, scope: !240)
!2312 = !DILocalVariable(name: "ps", arg: 1, scope: !2313, file: !2314, line: 1135, type: !2317)
!2313 = distinct !DISubprogram(name: "mbszero", scope: !2314, file: !2314, line: 1135, type: !2315, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2318)
!2314 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2315 = !DISubroutineType(types: !2316)
!2316 = !{null, !2317}
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2318 = !{!2312}
!2319 = !DILocation(line: 0, scope: !2313, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 48, column: 18, scope: !240)
!2321 = !DILocalVariable(name: "__dest", arg: 1, scope: !2322, file: !873, line: 57, type: !55)
!2322 = distinct !DISubprogram(name: "memset", scope: !873, file: !873, line: 57, type: !2323, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !244, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!55, !55, !56, !58}
!2325 = !{!2321, !2326, !2327}
!2326 = !DILocalVariable(name: "__ch", arg: 2, scope: !2322, file: !873, line: 57, type: !56)
!2327 = !DILocalVariable(name: "__len", arg: 3, scope: !2322, file: !873, line: 57, type: !58)
!2328 = !DILocation(line: 0, scope: !2322, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1137, column: 3, scope: !2313, inlinedAt: !2320)
!2330 = !DILocation(line: 59, column: 10, scope: !2322, inlinedAt: !2329)
!2331 = !DILocation(line: 49, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !240, file: !241, line: 49, column: 7)
!2333 = !DILocation(line: 49, column: 39, scope: !2332)
!2334 = !DILocation(line: 49, column: 44, scope: !2332)
!2335 = !DILocation(line: 54, column: 1, scope: !240)
!2336 = !DISubprogram(name: "mbrtoc32", scope: !252, file: !252, line: 57, type: !2337, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!58, !2339, !568, !58, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2340)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2317)
!2342 = distinct !DISubprogram(name: "clone_quoting_options", scope: !277, file: !277, line: 113, type: !2343, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2346)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!2345, !2345}
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!2346 = !{!2347, !2348, !2349}
!2347 = !DILocalVariable(name: "o", arg: 1, scope: !2342, file: !277, line: 113, type: !2345)
!2348 = !DILocalVariable(name: "saved_errno", scope: !2342, file: !277, line: 115, type: !56)
!2349 = !DILocalVariable(name: "p", scope: !2342, file: !277, line: 116, type: !2345)
!2350 = !DILocation(line: 0, scope: !2342)
!2351 = !DILocation(line: 115, column: 21, scope: !2342)
!2352 = !DILocation(line: 116, column: 40, scope: !2342)
!2353 = !DILocation(line: 116, column: 31, scope: !2342)
!2354 = !DILocation(line: 118, column: 9, scope: !2342)
!2355 = !DILocation(line: 119, column: 3, scope: !2342)
!2356 = distinct !DISubprogram(name: "get_quoting_style", scope: !277, file: !277, line: 124, type: !2357, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2361)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{!14, !2359}
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!2361 = !{!2362}
!2362 = !DILocalVariable(name: "o", arg: 1, scope: !2356, file: !277, line: 124, type: !2359)
!2363 = !DILocation(line: 0, scope: !2356)
!2364 = !DILocation(line: 126, column: 11, scope: !2356)
!2365 = !DILocation(line: 126, column: 46, scope: !2356)
!2366 = !{!2367, !478, i64 0}
!2367 = !{!"quoting_options", !478, i64 0, !573, i64 4, !478, i64 8, !477, i64 40, !477, i64 48}
!2368 = !DILocation(line: 126, column: 3, scope: !2356)
!2369 = distinct !DISubprogram(name: "set_quoting_style", scope: !277, file: !277, line: 132, type: !2370, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !2345, !14}
!2372 = !{!2373, !2374}
!2373 = !DILocalVariable(name: "o", arg: 1, scope: !2369, file: !277, line: 132, type: !2345)
!2374 = !DILocalVariable(name: "s", arg: 2, scope: !2369, file: !277, line: 132, type: !14)
!2375 = !DILocation(line: 0, scope: !2369)
!2376 = !DILocation(line: 134, column: 4, scope: !2369)
!2377 = !DILocation(line: 134, column: 39, scope: !2369)
!2378 = !DILocation(line: 134, column: 45, scope: !2369)
!2379 = !DILocation(line: 135, column: 1, scope: !2369)
!2380 = distinct !DISubprogram(name: "set_char_quoting", scope: !277, file: !277, line: 143, type: !2381, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2383)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!56, !2345, !54, !56}
!2383 = !{!2384, !2385, !2386, !2387, !2388, !2390, !2391}
!2384 = !DILocalVariable(name: "o", arg: 1, scope: !2380, file: !277, line: 143, type: !2345)
!2385 = !DILocalVariable(name: "c", arg: 2, scope: !2380, file: !277, line: 143, type: !54)
!2386 = !DILocalVariable(name: "i", arg: 3, scope: !2380, file: !277, line: 143, type: !56)
!2387 = !DILocalVariable(name: "uc", scope: !2380, file: !277, line: 145, type: !63)
!2388 = !DILocalVariable(name: "p", scope: !2380, file: !277, line: 146, type: !2389)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2390 = !DILocalVariable(name: "shift", scope: !2380, file: !277, line: 148, type: !56)
!2391 = !DILocalVariable(name: "r", scope: !2380, file: !277, line: 149, type: !7)
!2392 = !DILocation(line: 0, scope: !2380)
!2393 = !DILocation(line: 147, column: 6, scope: !2380)
!2394 = !DILocation(line: 147, column: 62, scope: !2380)
!2395 = !DILocation(line: 147, column: 57, scope: !2380)
!2396 = !DILocation(line: 148, column: 15, scope: !2380)
!2397 = !DILocation(line: 149, column: 21, scope: !2380)
!2398 = !DILocation(line: 149, column: 24, scope: !2380)
!2399 = !DILocation(line: 149, column: 34, scope: !2380)
!2400 = !DILocation(line: 150, column: 13, scope: !2380)
!2401 = !DILocation(line: 150, column: 19, scope: !2380)
!2402 = !DILocation(line: 150, column: 24, scope: !2380)
!2403 = !DILocation(line: 150, column: 6, scope: !2380)
!2404 = !DILocation(line: 151, column: 3, scope: !2380)
!2405 = distinct !DISubprogram(name: "set_quoting_flags", scope: !277, file: !277, line: 159, type: !2406, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2408)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!56, !2345, !56}
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "o", arg: 1, scope: !2405, file: !277, line: 159, type: !2345)
!2410 = !DILocalVariable(name: "i", arg: 2, scope: !2405, file: !277, line: 159, type: !56)
!2411 = !DILocalVariable(name: "r", scope: !2405, file: !277, line: 163, type: !56)
!2412 = !DILocation(line: 0, scope: !2405)
!2413 = !DILocation(line: 161, column: 8, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2405, file: !277, line: 161, column: 7)
!2415 = !DILocation(line: 161, column: 7, scope: !2405)
!2416 = !DILocation(line: 163, column: 14, scope: !2405)
!2417 = !{!2367, !573, i64 4}
!2418 = !DILocation(line: 164, column: 12, scope: !2405)
!2419 = !DILocation(line: 165, column: 3, scope: !2405)
!2420 = distinct !DISubprogram(name: "set_custom_quoting", scope: !277, file: !277, line: 169, type: !2421, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2423)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !2345, !61, !61}
!2423 = !{!2424, !2425, !2426}
!2424 = !DILocalVariable(name: "o", arg: 1, scope: !2420, file: !277, line: 169, type: !2345)
!2425 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2420, file: !277, line: 170, type: !61)
!2426 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2420, file: !277, line: 170, type: !61)
!2427 = !DILocation(line: 0, scope: !2420)
!2428 = !DILocation(line: 172, column: 8, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2420, file: !277, line: 172, column: 7)
!2430 = !DILocation(line: 172, column: 7, scope: !2420)
!2431 = !DILocation(line: 174, column: 6, scope: !2420)
!2432 = !DILocation(line: 174, column: 12, scope: !2420)
!2433 = !DILocation(line: 175, column: 8, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2420, file: !277, line: 175, column: 7)
!2435 = !DILocation(line: 175, column: 19, scope: !2434)
!2436 = !DILocation(line: 176, column: 5, scope: !2434)
!2437 = !DILocation(line: 177, column: 6, scope: !2420)
!2438 = !DILocation(line: 177, column: 17, scope: !2420)
!2439 = !{!2367, !477, i64 40}
!2440 = !DILocation(line: 178, column: 6, scope: !2420)
!2441 = !DILocation(line: 178, column: 18, scope: !2420)
!2442 = !{!2367, !477, i64 48}
!2443 = !DILocation(line: 179, column: 1, scope: !2420)
!2444 = distinct !DISubprogram(name: "quotearg_buffer", scope: !277, file: !277, line: 774, type: !2445, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!58, !53, !58, !61, !58, !2359}
!2447 = !{!2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455}
!2448 = !DILocalVariable(name: "buffer", arg: 1, scope: !2444, file: !277, line: 774, type: !53)
!2449 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2444, file: !277, line: 774, type: !58)
!2450 = !DILocalVariable(name: "arg", arg: 3, scope: !2444, file: !277, line: 775, type: !61)
!2451 = !DILocalVariable(name: "argsize", arg: 4, scope: !2444, file: !277, line: 775, type: !58)
!2452 = !DILocalVariable(name: "o", arg: 5, scope: !2444, file: !277, line: 776, type: !2359)
!2453 = !DILocalVariable(name: "p", scope: !2444, file: !277, line: 778, type: !2359)
!2454 = !DILocalVariable(name: "saved_errno", scope: !2444, file: !277, line: 779, type: !56)
!2455 = !DILocalVariable(name: "r", scope: !2444, file: !277, line: 780, type: !58)
!2456 = !DILocation(line: 0, scope: !2444)
!2457 = !DILocation(line: 778, column: 37, scope: !2444)
!2458 = !DILocation(line: 779, column: 21, scope: !2444)
!2459 = !DILocation(line: 781, column: 43, scope: !2444)
!2460 = !DILocation(line: 781, column: 53, scope: !2444)
!2461 = !DILocation(line: 781, column: 60, scope: !2444)
!2462 = !DILocation(line: 782, column: 43, scope: !2444)
!2463 = !DILocation(line: 782, column: 58, scope: !2444)
!2464 = !DILocation(line: 780, column: 14, scope: !2444)
!2465 = !DILocation(line: 783, column: 9, scope: !2444)
!2466 = !DILocation(line: 784, column: 3, scope: !2444)
!2467 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !277, file: !277, line: 251, type: !2468, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2472)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!58, !53, !58, !61, !58, !14, !56, !2470, !61, !61}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2472 = !{!2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2497, !2499, !2502, !2503, !2504, !2505, !2508, !2509, !2512, !2516, !2517, !2525, !2528, !2529, !2531, !2532, !2533, !2534}
!2473 = !DILocalVariable(name: "buffer", arg: 1, scope: !2467, file: !277, line: 251, type: !53)
!2474 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2467, file: !277, line: 251, type: !58)
!2475 = !DILocalVariable(name: "arg", arg: 3, scope: !2467, file: !277, line: 252, type: !61)
!2476 = !DILocalVariable(name: "argsize", arg: 4, scope: !2467, file: !277, line: 252, type: !58)
!2477 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2467, file: !277, line: 253, type: !14)
!2478 = !DILocalVariable(name: "flags", arg: 6, scope: !2467, file: !277, line: 253, type: !56)
!2479 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2467, file: !277, line: 254, type: !2470)
!2480 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2467, file: !277, line: 255, type: !61)
!2481 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2467, file: !277, line: 256, type: !61)
!2482 = !DILocalVariable(name: "unibyte_locale", scope: !2467, file: !277, line: 258, type: !78)
!2483 = !DILocalVariable(name: "len", scope: !2467, file: !277, line: 260, type: !58)
!2484 = !DILocalVariable(name: "orig_buffersize", scope: !2467, file: !277, line: 261, type: !58)
!2485 = !DILocalVariable(name: "quote_string", scope: !2467, file: !277, line: 262, type: !61)
!2486 = !DILocalVariable(name: "quote_string_len", scope: !2467, file: !277, line: 263, type: !58)
!2487 = !DILocalVariable(name: "backslash_escapes", scope: !2467, file: !277, line: 264, type: !78)
!2488 = !DILocalVariable(name: "elide_outer_quotes", scope: !2467, file: !277, line: 265, type: !78)
!2489 = !DILocalVariable(name: "encountered_single_quote", scope: !2467, file: !277, line: 266, type: !78)
!2490 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2467, file: !277, line: 267, type: !78)
!2491 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2467, file: !277, line: 309, type: !78)
!2492 = !DILocalVariable(name: "lq", scope: !2493, file: !277, line: 361, type: !61)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !277, line: 361, column: 11)
!2494 = distinct !DILexicalBlock(scope: !2495, file: !277, line: 360, column: 13)
!2495 = distinct !DILexicalBlock(scope: !2496, file: !277, line: 333, column: 7)
!2496 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 312, column: 5)
!2497 = !DILocalVariable(name: "i", scope: !2498, file: !277, line: 395, type: !58)
!2498 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 395, column: 3)
!2499 = !DILocalVariable(name: "is_right_quote", scope: !2500, file: !277, line: 397, type: !78)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !277, line: 396, column: 5)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !277, line: 395, column: 3)
!2502 = !DILocalVariable(name: "escaping", scope: !2500, file: !277, line: 398, type: !78)
!2503 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2500, file: !277, line: 399, type: !78)
!2504 = !DILocalVariable(name: "c", scope: !2500, file: !277, line: 417, type: !63)
!2505 = !DILocalVariable(name: "m", scope: !2506, file: !277, line: 598, type: !58)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 596, column: 11)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 419, column: 9)
!2508 = !DILocalVariable(name: "printable", scope: !2506, file: !277, line: 600, type: !78)
!2509 = !DILocalVariable(name: "mbs", scope: !2510, file: !277, line: 609, type: !320)
!2510 = distinct !DILexicalBlock(scope: !2511, file: !277, line: 608, column: 15)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !277, line: 602, column: 17)
!2512 = !DILocalVariable(name: "w", scope: !2513, file: !277, line: 618, type: !251)
!2513 = distinct !DILexicalBlock(scope: !2514, file: !277, line: 617, column: 19)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !277, line: 616, column: 17)
!2515 = distinct !DILexicalBlock(scope: !2510, file: !277, line: 616, column: 17)
!2516 = !DILocalVariable(name: "bytes", scope: !2513, file: !277, line: 619, type: !58)
!2517 = !DILocalVariable(name: "j", scope: !2518, file: !277, line: 648, type: !58)
!2518 = distinct !DILexicalBlock(scope: !2519, file: !277, line: 648, column: 29)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !277, line: 647, column: 27)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !277, line: 645, column: 29)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !277, line: 636, column: 23)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !277, line: 628, column: 30)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !277, line: 623, column: 30)
!2524 = distinct !DILexicalBlock(scope: !2513, file: !277, line: 621, column: 25)
!2525 = !DILocalVariable(name: "ilim", scope: !2526, file: !277, line: 674, type: !58)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !277, line: 671, column: 15)
!2527 = distinct !DILexicalBlock(scope: !2506, file: !277, line: 670, column: 17)
!2528 = !DILabel(scope: !2467, name: "process_input", file: !277, line: 308)
!2529 = !DILabel(scope: !2530, name: "c_and_shell_escape", file: !277, line: 502)
!2530 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 478, column: 9)
!2531 = !DILabel(scope: !2530, name: "c_escape", file: !277, line: 507)
!2532 = !DILabel(scope: !2500, name: "store_escape", file: !277, line: 709)
!2533 = !DILabel(scope: !2500, name: "store_c", file: !277, line: 712)
!2534 = !DILabel(scope: !2467, name: "force_outer_quoting_style", file: !277, line: 753)
!2535 = !DILocation(line: 0, scope: !2467)
!2536 = !DILocation(line: 258, column: 25, scope: !2467)
!2537 = !DILocation(line: 258, column: 36, scope: !2467)
!2538 = !DILocation(line: 267, column: 3, scope: !2467)
!2539 = !DILocation(line: 261, column: 10, scope: !2467)
!2540 = !DILocation(line: 262, column: 15, scope: !2467)
!2541 = !DILocation(line: 263, column: 10, scope: !2467)
!2542 = !DILocation(line: 308, column: 2, scope: !2467)
!2543 = !DILocation(line: 311, column: 3, scope: !2467)
!2544 = !DILocation(line: 318, column: 11, scope: !2496)
!2545 = !DILocation(line: 319, column: 9, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !277, line: 319, column: 9)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !277, line: 319, column: 9)
!2548 = distinct !DILexicalBlock(scope: !2496, file: !277, line: 318, column: 11)
!2549 = !DILocation(line: 319, column: 9, scope: !2547)
!2550 = !DILocation(line: 0, scope: !311, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 357, column: 26, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !277, line: 335, column: 11)
!2553 = distinct !DILexicalBlock(scope: !2495, file: !277, line: 334, column: 13)
!2554 = !DILocation(line: 199, column: 29, scope: !311, inlinedAt: !2551)
!2555 = !DILocation(line: 201, column: 19, scope: !2556, inlinedAt: !2551)
!2556 = distinct !DILexicalBlock(scope: !311, file: !277, line: 201, column: 7)
!2557 = !DILocation(line: 201, column: 7, scope: !311, inlinedAt: !2551)
!2558 = !DILocation(line: 229, column: 3, scope: !311, inlinedAt: !2551)
!2559 = !DILocation(line: 230, column: 3, scope: !311, inlinedAt: !2551)
!2560 = !DILocation(line: 230, column: 13, scope: !311, inlinedAt: !2551)
!2561 = !DILocalVariable(name: "ps", arg: 1, scope: !2562, file: !2314, line: 1135, type: !2565)
!2562 = distinct !DISubprogram(name: "mbszero", scope: !2314, file: !2314, line: 1135, type: !2563, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2566)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2565}
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!2566 = !{!2561}
!2567 = !DILocation(line: 0, scope: !2562, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 230, column: 18, scope: !311, inlinedAt: !2551)
!2569 = !DILocalVariable(name: "__dest", arg: 1, scope: !2570, file: !873, line: 57, type: !55)
!2570 = distinct !DISubprogram(name: "memset", scope: !873, file: !873, line: 57, type: !2323, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2571)
!2571 = !{!2569, !2572, !2573}
!2572 = !DILocalVariable(name: "__ch", arg: 2, scope: !2570, file: !873, line: 57, type: !56)
!2573 = !DILocalVariable(name: "__len", arg: 3, scope: !2570, file: !873, line: 57, type: !58)
!2574 = !DILocation(line: 0, scope: !2570, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1137, column: 3, scope: !2562, inlinedAt: !2568)
!2576 = !DILocation(line: 59, column: 10, scope: !2570, inlinedAt: !2575)
!2577 = !DILocation(line: 231, column: 7, scope: !2578, inlinedAt: !2551)
!2578 = distinct !DILexicalBlock(scope: !311, file: !277, line: 231, column: 7)
!2579 = !DILocation(line: 231, column: 40, scope: !2578, inlinedAt: !2551)
!2580 = !DILocation(line: 231, column: 45, scope: !2578, inlinedAt: !2551)
!2581 = !DILocation(line: 235, column: 1, scope: !311, inlinedAt: !2551)
!2582 = !DILocation(line: 0, scope: !311, inlinedAt: !2583)
!2583 = distinct !DILocation(line: 358, column: 27, scope: !2552)
!2584 = !DILocation(line: 199, column: 29, scope: !311, inlinedAt: !2583)
!2585 = !DILocation(line: 201, column: 19, scope: !2556, inlinedAt: !2583)
!2586 = !DILocation(line: 201, column: 7, scope: !311, inlinedAt: !2583)
!2587 = !DILocation(line: 229, column: 3, scope: !311, inlinedAt: !2583)
!2588 = !DILocation(line: 230, column: 3, scope: !311, inlinedAt: !2583)
!2589 = !DILocation(line: 230, column: 13, scope: !311, inlinedAt: !2583)
!2590 = !DILocation(line: 0, scope: !2562, inlinedAt: !2591)
!2591 = distinct !DILocation(line: 230, column: 18, scope: !311, inlinedAt: !2583)
!2592 = !DILocation(line: 0, scope: !2570, inlinedAt: !2593)
!2593 = distinct !DILocation(line: 1137, column: 3, scope: !2562, inlinedAt: !2591)
!2594 = !DILocation(line: 59, column: 10, scope: !2570, inlinedAt: !2593)
!2595 = !DILocation(line: 231, column: 7, scope: !2578, inlinedAt: !2583)
!2596 = !DILocation(line: 231, column: 40, scope: !2578, inlinedAt: !2583)
!2597 = !DILocation(line: 231, column: 45, scope: !2578, inlinedAt: !2583)
!2598 = !DILocation(line: 235, column: 1, scope: !311, inlinedAt: !2583)
!2599 = !DILocation(line: 360, column: 13, scope: !2495)
!2600 = !DILocation(line: 0, scope: !2493)
!2601 = !DILocation(line: 361, column: 45, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2493, file: !277, line: 361, column: 11)
!2603 = !DILocation(line: 361, column: 11, scope: !2493)
!2604 = !DILocation(line: 362, column: 13, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2606, file: !277, line: 362, column: 13)
!2606 = distinct !DILexicalBlock(scope: !2602, file: !277, line: 362, column: 13)
!2607 = !DILocation(line: 362, column: 13, scope: !2606)
!2608 = !DILocation(line: 361, column: 52, scope: !2602)
!2609 = distinct !{!2609, !2603, !2610, !539}
!2610 = !DILocation(line: 362, column: 13, scope: !2493)
!2611 = !DILocation(line: 260, column: 10, scope: !2467)
!2612 = !DILocation(line: 365, column: 28, scope: !2495)
!2613 = !DILocation(line: 367, column: 7, scope: !2496)
!2614 = !DILocation(line: 370, column: 7, scope: !2496)
!2615 = !DILocation(line: 376, column: 11, scope: !2496)
!2616 = !DILocation(line: 381, column: 11, scope: !2496)
!2617 = !DILocation(line: 382, column: 9, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !277, line: 382, column: 9)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !277, line: 382, column: 9)
!2620 = distinct !DILexicalBlock(scope: !2496, file: !277, line: 381, column: 11)
!2621 = !DILocation(line: 382, column: 9, scope: !2619)
!2622 = !DILocation(line: 389, column: 7, scope: !2496)
!2623 = !DILocation(line: 392, column: 7, scope: !2496)
!2624 = !DILocation(line: 0, scope: !2498)
!2625 = !DILocation(line: 395, column: 8, scope: !2498)
!2626 = !DILocation(line: 395, column: 34, scope: !2501)
!2627 = !DILocation(line: 395, column: 26, scope: !2501)
!2628 = !DILocation(line: 395, column: 48, scope: !2501)
!2629 = !DILocation(line: 395, column: 55, scope: !2501)
!2630 = !DILocation(line: 395, column: 3, scope: !2498)
!2631 = !DILocation(line: 395, column: 67, scope: !2501)
!2632 = !DILocation(line: 0, scope: !2500)
!2633 = !DILocation(line: 402, column: 11, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 401, column: 11)
!2635 = !DILocation(line: 404, column: 17, scope: !2634)
!2636 = !DILocation(line: 405, column: 39, scope: !2634)
!2637 = !DILocation(line: 409, column: 32, scope: !2634)
!2638 = !DILocation(line: 405, column: 19, scope: !2634)
!2639 = !DILocation(line: 405, column: 15, scope: !2634)
!2640 = !DILocation(line: 410, column: 11, scope: !2634)
!2641 = !DILocation(line: 410, column: 25, scope: !2634)
!2642 = !DILocalVariable(name: "__s1", arg: 1, scope: !2643, file: !523, line: 974, type: !690)
!2643 = distinct !DISubprogram(name: "memeq", scope: !523, file: !523, line: 974, type: !2285, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2644)
!2644 = !{!2642, !2645, !2646}
!2645 = !DILocalVariable(name: "__s2", arg: 2, scope: !2643, file: !523, line: 974, type: !690)
!2646 = !DILocalVariable(name: "__n", arg: 3, scope: !2643, file: !523, line: 974, type: !58)
!2647 = !DILocation(line: 0, scope: !2643, inlinedAt: !2648)
!2648 = distinct !DILocation(line: 410, column: 14, scope: !2634)
!2649 = !DILocation(line: 976, column: 11, scope: !2643, inlinedAt: !2648)
!2650 = !DILocation(line: 976, column: 10, scope: !2643, inlinedAt: !2648)
!2651 = !DILocation(line: 401, column: 11, scope: !2500)
!2652 = !DILocation(line: 417, column: 25, scope: !2500)
!2653 = !DILocation(line: 418, column: 7, scope: !2500)
!2654 = !DILocation(line: 421, column: 15, scope: !2507)
!2655 = !DILocation(line: 423, column: 15, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2657, file: !277, line: 423, column: 15)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !277, line: 422, column: 13)
!2658 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 421, column: 15)
!2659 = !DILocation(line: 423, column: 15, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2656, file: !277, line: 423, column: 15)
!2661 = !DILocation(line: 423, column: 15, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !277, line: 423, column: 15)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !277, line: 423, column: 15)
!2664 = distinct !DILexicalBlock(scope: !2660, file: !277, line: 423, column: 15)
!2665 = !DILocation(line: 423, column: 15, scope: !2663)
!2666 = !DILocation(line: 423, column: 15, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !277, line: 423, column: 15)
!2668 = distinct !DILexicalBlock(scope: !2664, file: !277, line: 423, column: 15)
!2669 = !DILocation(line: 423, column: 15, scope: !2668)
!2670 = !DILocation(line: 423, column: 15, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2672, file: !277, line: 423, column: 15)
!2672 = distinct !DILexicalBlock(scope: !2664, file: !277, line: 423, column: 15)
!2673 = !DILocation(line: 423, column: 15, scope: !2672)
!2674 = !DILocation(line: 423, column: 15, scope: !2664)
!2675 = !DILocation(line: 423, column: 15, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2677, file: !277, line: 423, column: 15)
!2677 = distinct !DILexicalBlock(scope: !2656, file: !277, line: 423, column: 15)
!2678 = !DILocation(line: 423, column: 15, scope: !2677)
!2679 = !DILocation(line: 431, column: 19, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2657, file: !277, line: 430, column: 19)
!2681 = !DILocation(line: 431, column: 24, scope: !2680)
!2682 = !DILocation(line: 431, column: 28, scope: !2680)
!2683 = !DILocation(line: 431, column: 38, scope: !2680)
!2684 = !DILocation(line: 431, column: 48, scope: !2680)
!2685 = !DILocation(line: 431, column: 59, scope: !2680)
!2686 = !DILocation(line: 433, column: 19, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !277, line: 433, column: 19)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !277, line: 433, column: 19)
!2689 = distinct !DILexicalBlock(scope: !2680, file: !277, line: 432, column: 17)
!2690 = !DILocation(line: 433, column: 19, scope: !2688)
!2691 = !DILocation(line: 434, column: 19, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !277, line: 434, column: 19)
!2693 = distinct !DILexicalBlock(scope: !2689, file: !277, line: 434, column: 19)
!2694 = !DILocation(line: 434, column: 19, scope: !2693)
!2695 = !DILocation(line: 435, column: 17, scope: !2689)
!2696 = !DILocation(line: 442, column: 20, scope: !2658)
!2697 = !DILocation(line: 447, column: 11, scope: !2507)
!2698 = !DILocation(line: 450, column: 19, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 448, column: 13)
!2700 = !DILocation(line: 456, column: 19, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2699, file: !277, line: 455, column: 19)
!2702 = !DILocation(line: 456, column: 24, scope: !2701)
!2703 = !DILocation(line: 456, column: 28, scope: !2701)
!2704 = !DILocation(line: 456, column: 38, scope: !2701)
!2705 = !DILocation(line: 456, column: 47, scope: !2701)
!2706 = !DILocation(line: 456, column: 41, scope: !2701)
!2707 = !DILocation(line: 456, column: 52, scope: !2701)
!2708 = !DILocation(line: 455, column: 19, scope: !2699)
!2709 = !DILocation(line: 457, column: 25, scope: !2701)
!2710 = !DILocation(line: 457, column: 17, scope: !2701)
!2711 = !DILocation(line: 464, column: 25, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2701, file: !277, line: 458, column: 19)
!2713 = !DILocation(line: 468, column: 21, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2715, file: !277, line: 468, column: 21)
!2715 = distinct !DILexicalBlock(scope: !2712, file: !277, line: 468, column: 21)
!2716 = !DILocation(line: 468, column: 21, scope: !2715)
!2717 = !DILocation(line: 469, column: 21, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !277, line: 469, column: 21)
!2719 = distinct !DILexicalBlock(scope: !2712, file: !277, line: 469, column: 21)
!2720 = !DILocation(line: 469, column: 21, scope: !2719)
!2721 = !DILocation(line: 470, column: 21, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !277, line: 470, column: 21)
!2723 = distinct !DILexicalBlock(scope: !2712, file: !277, line: 470, column: 21)
!2724 = !DILocation(line: 470, column: 21, scope: !2723)
!2725 = !DILocation(line: 471, column: 21, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2727, file: !277, line: 471, column: 21)
!2727 = distinct !DILexicalBlock(scope: !2712, file: !277, line: 471, column: 21)
!2728 = !DILocation(line: 471, column: 21, scope: !2727)
!2729 = !DILocation(line: 472, column: 21, scope: !2712)
!2730 = !DILocation(line: 482, column: 33, scope: !2530)
!2731 = !DILocation(line: 483, column: 33, scope: !2530)
!2732 = !DILocation(line: 485, column: 33, scope: !2530)
!2733 = !DILocation(line: 486, column: 33, scope: !2530)
!2734 = !DILocation(line: 487, column: 33, scope: !2530)
!2735 = !DILocation(line: 490, column: 17, scope: !2530)
!2736 = !DILocation(line: 492, column: 21, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2738, file: !277, line: 491, column: 15)
!2738 = distinct !DILexicalBlock(scope: !2530, file: !277, line: 490, column: 17)
!2739 = !DILocation(line: 499, column: 35, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2530, file: !277, line: 499, column: 17)
!2741 = !DILocation(line: 499, column: 57, scope: !2740)
!2742 = !DILocation(line: 0, scope: !2530)
!2743 = !DILocation(line: 502, column: 11, scope: !2530)
!2744 = !DILocation(line: 504, column: 17, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2530, file: !277, line: 503, column: 17)
!2746 = !DILocation(line: 507, column: 11, scope: !2530)
!2747 = !DILocation(line: 508, column: 17, scope: !2530)
!2748 = !DILocation(line: 517, column: 15, scope: !2507)
!2749 = !DILocation(line: 517, column: 40, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 517, column: 15)
!2751 = !DILocation(line: 517, column: 47, scope: !2750)
!2752 = !DILocation(line: 517, column: 18, scope: !2750)
!2753 = !DILocation(line: 521, column: 17, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 521, column: 15)
!2755 = !DILocation(line: 521, column: 15, scope: !2507)
!2756 = !DILocation(line: 525, column: 11, scope: !2507)
!2757 = !DILocation(line: 537, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 536, column: 15)
!2759 = !DILocation(line: 536, column: 15, scope: !2507)
!2760 = !DILocation(line: 544, column: 15, scope: !2507)
!2761 = !DILocation(line: 546, column: 19, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !277, line: 545, column: 13)
!2763 = distinct !DILexicalBlock(scope: !2507, file: !277, line: 544, column: 15)
!2764 = !DILocation(line: 549, column: 19, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2762, file: !277, line: 549, column: 19)
!2766 = !DILocation(line: 549, column: 30, scope: !2765)
!2767 = !DILocation(line: 558, column: 15, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !277, line: 558, column: 15)
!2769 = distinct !DILexicalBlock(scope: !2762, file: !277, line: 558, column: 15)
!2770 = !DILocation(line: 558, column: 15, scope: !2769)
!2771 = !DILocation(line: 559, column: 15, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !277, line: 559, column: 15)
!2773 = distinct !DILexicalBlock(scope: !2762, file: !277, line: 559, column: 15)
!2774 = !DILocation(line: 559, column: 15, scope: !2773)
!2775 = !DILocation(line: 560, column: 15, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2777, file: !277, line: 560, column: 15)
!2777 = distinct !DILexicalBlock(scope: !2762, file: !277, line: 560, column: 15)
!2778 = !DILocation(line: 560, column: 15, scope: !2777)
!2779 = !DILocation(line: 562, column: 13, scope: !2762)
!2780 = !DILocation(line: 602, column: 17, scope: !2506)
!2781 = !DILocation(line: 0, scope: !2506)
!2782 = !DILocation(line: 605, column: 29, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2511, file: !277, line: 603, column: 15)
!2784 = !DILocation(line: 605, column: 41, scope: !2783)
!2785 = !DILocation(line: 670, column: 23, scope: !2527)
!2786 = !DILocation(line: 609, column: 17, scope: !2510)
!2787 = !DILocation(line: 609, column: 27, scope: !2510)
!2788 = !DILocation(line: 0, scope: !2562, inlinedAt: !2789)
!2789 = distinct !DILocation(line: 609, column: 32, scope: !2510)
!2790 = !DILocation(line: 0, scope: !2570, inlinedAt: !2791)
!2791 = distinct !DILocation(line: 1137, column: 3, scope: !2562, inlinedAt: !2789)
!2792 = !DILocation(line: 59, column: 10, scope: !2570, inlinedAt: !2791)
!2793 = !DILocation(line: 613, column: 29, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2510, file: !277, line: 613, column: 21)
!2795 = !DILocation(line: 613, column: 21, scope: !2510)
!2796 = !DILocation(line: 614, column: 29, scope: !2794)
!2797 = !DILocation(line: 614, column: 19, scope: !2794)
!2798 = !DILocation(line: 618, column: 21, scope: !2513)
!2799 = !DILocation(line: 620, column: 54, scope: !2513)
!2800 = !DILocation(line: 0, scope: !2513)
!2801 = !DILocation(line: 619, column: 36, scope: !2513)
!2802 = !DILocation(line: 621, column: 25, scope: !2513)
!2803 = !DILocation(line: 631, column: 38, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2522, file: !277, line: 629, column: 23)
!2805 = !DILocation(line: 631, column: 48, scope: !2804)
!2806 = !DILocation(line: 665, column: 19, scope: !2514)
!2807 = !DILocation(line: 666, column: 15, scope: !2511)
!2808 = !DILocation(line: 626, column: 25, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2523, file: !277, line: 624, column: 23)
!2810 = !DILocation(line: 631, column: 51, scope: !2804)
!2811 = !DILocation(line: 631, column: 25, scope: !2804)
!2812 = !DILocation(line: 632, column: 28, scope: !2804)
!2813 = !DILocation(line: 631, column: 34, scope: !2804)
!2814 = distinct !{!2814, !2811, !2812, !539}
!2815 = !DILocation(line: 646, column: 29, scope: !2520)
!2816 = !DILocation(line: 0, scope: !2518)
!2817 = !DILocation(line: 649, column: 49, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2518, file: !277, line: 648, column: 29)
!2819 = !DILocation(line: 649, column: 39, scope: !2818)
!2820 = !DILocation(line: 649, column: 31, scope: !2818)
!2821 = !DILocation(line: 648, column: 60, scope: !2818)
!2822 = !DILocation(line: 648, column: 50, scope: !2818)
!2823 = !DILocation(line: 648, column: 29, scope: !2518)
!2824 = distinct !{!2824, !2823, !2825, !539}
!2825 = !DILocation(line: 654, column: 33, scope: !2518)
!2826 = !DILocation(line: 657, column: 43, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2521, file: !277, line: 657, column: 29)
!2828 = !DILocalVariable(name: "wc", arg: 1, scope: !2829, file: !2830, line: 865, type: !2833)
!2829 = distinct !DISubprogram(name: "c32isprint", scope: !2830, file: !2830, line: 865, type: !2831, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !2835)
!2830 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!56, !2833}
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2834, line: 20, baseType: !7)
!2834 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2835 = !{!2828}
!2836 = !DILocation(line: 0, scope: !2829, inlinedAt: !2837)
!2837 = distinct !DILocation(line: 657, column: 31, scope: !2827)
!2838 = !DILocation(line: 871, column: 10, scope: !2829, inlinedAt: !2837)
!2839 = !DILocation(line: 657, column: 31, scope: !2827)
!2840 = !DILocation(line: 664, column: 23, scope: !2513)
!2841 = !DILocation(line: 753, column: 2, scope: !2467)
!2842 = !DILocation(line: 756, column: 51, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 756, column: 7)
!2844 = !DILocation(line: 670, column: 19, scope: !2527)
!2845 = !DILocation(line: 670, column: 45, scope: !2527)
!2846 = !DILocation(line: 674, column: 33, scope: !2526)
!2847 = !DILocation(line: 0, scope: !2526)
!2848 = !DILocation(line: 676, column: 17, scope: !2526)
!2849 = !DILocation(line: 398, column: 12, scope: !2500)
!2850 = !DILocation(line: 678, column: 43, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !277, line: 678, column: 25)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !277, line: 677, column: 19)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !277, line: 676, column: 17)
!2854 = distinct !DILexicalBlock(scope: !2526, file: !277, line: 676, column: 17)
!2855 = !DILocation(line: 680, column: 25, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2857, file: !277, line: 680, column: 25)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !277, line: 679, column: 23)
!2858 = !DILocation(line: 680, column: 25, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2856, file: !277, line: 680, column: 25)
!2860 = !DILocation(line: 680, column: 25, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2862, file: !277, line: 680, column: 25)
!2862 = distinct !DILexicalBlock(scope: !2863, file: !277, line: 680, column: 25)
!2863 = distinct !DILexicalBlock(scope: !2859, file: !277, line: 680, column: 25)
!2864 = !DILocation(line: 680, column: 25, scope: !2862)
!2865 = !DILocation(line: 680, column: 25, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2867, file: !277, line: 680, column: 25)
!2867 = distinct !DILexicalBlock(scope: !2863, file: !277, line: 680, column: 25)
!2868 = !DILocation(line: 680, column: 25, scope: !2867)
!2869 = !DILocation(line: 680, column: 25, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !277, line: 680, column: 25)
!2871 = distinct !DILexicalBlock(scope: !2863, file: !277, line: 680, column: 25)
!2872 = !DILocation(line: 680, column: 25, scope: !2871)
!2873 = !DILocation(line: 680, column: 25, scope: !2863)
!2874 = !DILocation(line: 680, column: 25, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !277, line: 680, column: 25)
!2876 = distinct !DILexicalBlock(scope: !2856, file: !277, line: 680, column: 25)
!2877 = !DILocation(line: 680, column: 25, scope: !2876)
!2878 = !DILocation(line: 681, column: 25, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2880, file: !277, line: 681, column: 25)
!2880 = distinct !DILexicalBlock(scope: !2857, file: !277, line: 681, column: 25)
!2881 = !DILocation(line: 681, column: 25, scope: !2880)
!2882 = !DILocation(line: 682, column: 25, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !277, line: 682, column: 25)
!2884 = distinct !DILexicalBlock(scope: !2857, file: !277, line: 682, column: 25)
!2885 = !DILocation(line: 682, column: 25, scope: !2884)
!2886 = !DILocation(line: 683, column: 38, scope: !2857)
!2887 = !DILocation(line: 683, column: 33, scope: !2857)
!2888 = !DILocation(line: 684, column: 23, scope: !2857)
!2889 = !DILocation(line: 685, column: 30, scope: !2851)
!2890 = !DILocation(line: 687, column: 25, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !277, line: 687, column: 25)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !277, line: 687, column: 25)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !277, line: 686, column: 23)
!2894 = distinct !DILexicalBlock(scope: !2851, file: !277, line: 685, column: 30)
!2895 = !DILocation(line: 687, column: 25, scope: !2892)
!2896 = !DILocation(line: 689, column: 23, scope: !2893)
!2897 = !DILocation(line: 690, column: 35, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2852, file: !277, line: 690, column: 25)
!2899 = !DILocation(line: 690, column: 30, scope: !2898)
!2900 = !DILocation(line: 690, column: 25, scope: !2852)
!2901 = !DILocation(line: 692, column: 21, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !277, line: 692, column: 21)
!2903 = distinct !DILexicalBlock(scope: !2852, file: !277, line: 692, column: 21)
!2904 = !DILocation(line: 692, column: 21, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !277, line: 692, column: 21)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !277, line: 692, column: 21)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !277, line: 692, column: 21)
!2908 = !DILocation(line: 692, column: 21, scope: !2906)
!2909 = !DILocation(line: 692, column: 21, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !277, line: 692, column: 21)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !277, line: 692, column: 21)
!2912 = !DILocation(line: 692, column: 21, scope: !2911)
!2913 = !DILocation(line: 692, column: 21, scope: !2907)
!2914 = !DILocation(line: 0, scope: !2852)
!2915 = !DILocation(line: 693, column: 21, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !277, line: 693, column: 21)
!2917 = distinct !DILexicalBlock(scope: !2852, file: !277, line: 693, column: 21)
!2918 = !DILocation(line: 693, column: 21, scope: !2917)
!2919 = !DILocation(line: 694, column: 25, scope: !2852)
!2920 = !DILocation(line: 676, column: 17, scope: !2853)
!2921 = distinct !{!2921, !2922, !2923}
!2922 = !DILocation(line: 676, column: 17, scope: !2854)
!2923 = !DILocation(line: 695, column: 19, scope: !2854)
!2924 = !DILocation(line: 409, column: 30, scope: !2634)
!2925 = !DILocation(line: 702, column: 34, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 702, column: 11)
!2927 = !DILocation(line: 704, column: 14, scope: !2926)
!2928 = !DILocation(line: 705, column: 14, scope: !2926)
!2929 = !DILocation(line: 705, column: 35, scope: !2926)
!2930 = !DILocation(line: 705, column: 17, scope: !2926)
!2931 = !DILocation(line: 705, column: 47, scope: !2926)
!2932 = !DILocation(line: 705, column: 65, scope: !2926)
!2933 = !DILocation(line: 706, column: 11, scope: !2926)
!2934 = !DILocation(line: 702, column: 11, scope: !2500)
!2935 = !DILocation(line: 395, column: 15, scope: !2498)
!2936 = !DILocation(line: 709, column: 5, scope: !2500)
!2937 = !DILocation(line: 710, column: 7, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 710, column: 7)
!2939 = !DILocation(line: 710, column: 7, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2938, file: !277, line: 710, column: 7)
!2941 = !DILocation(line: 710, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !277, line: 710, column: 7)
!2943 = distinct !DILexicalBlock(scope: !2944, file: !277, line: 710, column: 7)
!2944 = distinct !DILexicalBlock(scope: !2940, file: !277, line: 710, column: 7)
!2945 = !DILocation(line: 710, column: 7, scope: !2943)
!2946 = !DILocation(line: 710, column: 7, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !277, line: 710, column: 7)
!2948 = distinct !DILexicalBlock(scope: !2944, file: !277, line: 710, column: 7)
!2949 = !DILocation(line: 710, column: 7, scope: !2948)
!2950 = !DILocation(line: 710, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !277, line: 710, column: 7)
!2952 = distinct !DILexicalBlock(scope: !2944, file: !277, line: 710, column: 7)
!2953 = !DILocation(line: 710, column: 7, scope: !2952)
!2954 = !DILocation(line: 710, column: 7, scope: !2944)
!2955 = !DILocation(line: 710, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2957, file: !277, line: 710, column: 7)
!2957 = distinct !DILexicalBlock(scope: !2938, file: !277, line: 710, column: 7)
!2958 = !DILocation(line: 710, column: 7, scope: !2957)
!2959 = !DILocation(line: 712, column: 5, scope: !2500)
!2960 = !DILocation(line: 713, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !277, line: 713, column: 7)
!2962 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 713, column: 7)
!2963 = !DILocation(line: 417, column: 21, scope: !2500)
!2964 = !DILocation(line: 713, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2966, file: !277, line: 713, column: 7)
!2966 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 713, column: 7)
!2967 = distinct !DILexicalBlock(scope: !2961, file: !277, line: 713, column: 7)
!2968 = !DILocation(line: 713, column: 7, scope: !2966)
!2969 = !DILocation(line: 713, column: 7, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !277, line: 713, column: 7)
!2971 = distinct !DILexicalBlock(scope: !2967, file: !277, line: 713, column: 7)
!2972 = !DILocation(line: 713, column: 7, scope: !2971)
!2973 = !DILocation(line: 713, column: 7, scope: !2967)
!2974 = !DILocation(line: 714, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !277, line: 714, column: 7)
!2976 = distinct !DILexicalBlock(scope: !2500, file: !277, line: 714, column: 7)
!2977 = !DILocation(line: 714, column: 7, scope: !2976)
!2978 = !DILocation(line: 716, column: 11, scope: !2500)
!2979 = !DILocation(line: 718, column: 5, scope: !2501)
!2980 = !DILocation(line: 395, column: 82, scope: !2501)
!2981 = !DILocation(line: 395, column: 3, scope: !2501)
!2982 = distinct !{!2982, !2630, !2983, !539}
!2983 = !DILocation(line: 718, column: 5, scope: !2498)
!2984 = !DILocation(line: 720, column: 11, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 720, column: 7)
!2986 = !DILocation(line: 720, column: 16, scope: !2985)
!2987 = !DILocation(line: 728, column: 51, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 728, column: 7)
!2989 = !DILocation(line: 731, column: 11, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2988, file: !277, line: 730, column: 5)
!2991 = !DILocation(line: 732, column: 16, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2990, file: !277, line: 731, column: 11)
!2993 = !DILocation(line: 732, column: 9, scope: !2992)
!2994 = !DILocation(line: 736, column: 18, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2992, file: !277, line: 736, column: 16)
!2996 = !DILocation(line: 736, column: 29, scope: !2995)
!2997 = !DILocation(line: 745, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 745, column: 7)
!2999 = !DILocation(line: 745, column: 20, scope: !2998)
!3000 = !DILocation(line: 746, column: 12, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !277, line: 746, column: 5)
!3002 = distinct !DILexicalBlock(scope: !2998, file: !277, line: 746, column: 5)
!3003 = !DILocation(line: 746, column: 5, scope: !3002)
!3004 = !DILocation(line: 747, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !277, line: 747, column: 7)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !277, line: 747, column: 7)
!3007 = !DILocation(line: 747, column: 7, scope: !3006)
!3008 = !DILocation(line: 746, column: 39, scope: !3001)
!3009 = distinct !{!3009, !3003, !3010, !539}
!3010 = !DILocation(line: 747, column: 7, scope: !3002)
!3011 = !DILocation(line: 749, column: 11, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2467, file: !277, line: 749, column: 7)
!3013 = !DILocation(line: 749, column: 7, scope: !2467)
!3014 = !DILocation(line: 750, column: 5, scope: !3012)
!3015 = !DILocation(line: 750, column: 17, scope: !3012)
!3016 = !DILocation(line: 756, column: 21, scope: !2843)
!3017 = !DILocation(line: 760, column: 42, scope: !2467)
!3018 = !DILocation(line: 758, column: 10, scope: !2467)
!3019 = !DILocation(line: 758, column: 3, scope: !2467)
!3020 = !DILocation(line: 762, column: 1, scope: !2467)
!3021 = !DISubprogram(name: "iswprint", scope: !3022, file: !3022, line: 120, type: !2831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!3022 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3023 = distinct !DISubprogram(name: "quotearg_alloc", scope: !277, file: !277, line: 788, type: !3024, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3026)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!53, !61, !58, !2359}
!3026 = !{!3027, !3028, !3029}
!3027 = !DILocalVariable(name: "arg", arg: 1, scope: !3023, file: !277, line: 788, type: !61)
!3028 = !DILocalVariable(name: "argsize", arg: 2, scope: !3023, file: !277, line: 788, type: !58)
!3029 = !DILocalVariable(name: "o", arg: 3, scope: !3023, file: !277, line: 789, type: !2359)
!3030 = !DILocation(line: 0, scope: !3023)
!3031 = !DILocalVariable(name: "arg", arg: 1, scope: !3032, file: !277, line: 801, type: !61)
!3032 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !277, file: !277, line: 801, type: !3033, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3035)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!53, !61, !58, !404, !2359}
!3035 = !{!3031, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043}
!3036 = !DILocalVariable(name: "argsize", arg: 2, scope: !3032, file: !277, line: 801, type: !58)
!3037 = !DILocalVariable(name: "size", arg: 3, scope: !3032, file: !277, line: 801, type: !404)
!3038 = !DILocalVariable(name: "o", arg: 4, scope: !3032, file: !277, line: 802, type: !2359)
!3039 = !DILocalVariable(name: "p", scope: !3032, file: !277, line: 804, type: !2359)
!3040 = !DILocalVariable(name: "saved_errno", scope: !3032, file: !277, line: 805, type: !56)
!3041 = !DILocalVariable(name: "flags", scope: !3032, file: !277, line: 807, type: !56)
!3042 = !DILocalVariable(name: "bufsize", scope: !3032, file: !277, line: 808, type: !58)
!3043 = !DILocalVariable(name: "buf", scope: !3032, file: !277, line: 812, type: !53)
!3044 = !DILocation(line: 0, scope: !3032, inlinedAt: !3045)
!3045 = distinct !DILocation(line: 791, column: 10, scope: !3023)
!3046 = !DILocation(line: 804, column: 37, scope: !3032, inlinedAt: !3045)
!3047 = !DILocation(line: 805, column: 21, scope: !3032, inlinedAt: !3045)
!3048 = !DILocation(line: 807, column: 18, scope: !3032, inlinedAt: !3045)
!3049 = !DILocation(line: 807, column: 24, scope: !3032, inlinedAt: !3045)
!3050 = !DILocation(line: 808, column: 72, scope: !3032, inlinedAt: !3045)
!3051 = !DILocation(line: 809, column: 53, scope: !3032, inlinedAt: !3045)
!3052 = !DILocation(line: 810, column: 49, scope: !3032, inlinedAt: !3045)
!3053 = !DILocation(line: 811, column: 49, scope: !3032, inlinedAt: !3045)
!3054 = !DILocation(line: 808, column: 20, scope: !3032, inlinedAt: !3045)
!3055 = !DILocation(line: 811, column: 62, scope: !3032, inlinedAt: !3045)
!3056 = !DILocation(line: 812, column: 15, scope: !3032, inlinedAt: !3045)
!3057 = !DILocation(line: 813, column: 60, scope: !3032, inlinedAt: !3045)
!3058 = !DILocation(line: 815, column: 32, scope: !3032, inlinedAt: !3045)
!3059 = !DILocation(line: 815, column: 47, scope: !3032, inlinedAt: !3045)
!3060 = !DILocation(line: 813, column: 3, scope: !3032, inlinedAt: !3045)
!3061 = !DILocation(line: 816, column: 9, scope: !3032, inlinedAt: !3045)
!3062 = !DILocation(line: 791, column: 3, scope: !3023)
!3063 = !DILocation(line: 0, scope: !3032)
!3064 = !DILocation(line: 804, column: 37, scope: !3032)
!3065 = !DILocation(line: 805, column: 21, scope: !3032)
!3066 = !DILocation(line: 807, column: 18, scope: !3032)
!3067 = !DILocation(line: 807, column: 27, scope: !3032)
!3068 = !DILocation(line: 807, column: 24, scope: !3032)
!3069 = !DILocation(line: 808, column: 72, scope: !3032)
!3070 = !DILocation(line: 809, column: 53, scope: !3032)
!3071 = !DILocation(line: 810, column: 49, scope: !3032)
!3072 = !DILocation(line: 811, column: 49, scope: !3032)
!3073 = !DILocation(line: 808, column: 20, scope: !3032)
!3074 = !DILocation(line: 811, column: 62, scope: !3032)
!3075 = !DILocation(line: 812, column: 15, scope: !3032)
!3076 = !DILocation(line: 813, column: 60, scope: !3032)
!3077 = !DILocation(line: 815, column: 32, scope: !3032)
!3078 = !DILocation(line: 815, column: 47, scope: !3032)
!3079 = !DILocation(line: 813, column: 3, scope: !3032)
!3080 = !DILocation(line: 816, column: 9, scope: !3032)
!3081 = !DILocation(line: 817, column: 7, scope: !3032)
!3082 = !DILocation(line: 818, column: 11, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3032, file: !277, line: 817, column: 7)
!3084 = !DILocation(line: 818, column: 5, scope: !3083)
!3085 = !DILocation(line: 819, column: 3, scope: !3032)
!3086 = distinct !DISubprogram(name: "quotearg_free", scope: !277, file: !277, line: 837, type: !230, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3087)
!3087 = !{!3088, !3089}
!3088 = !DILocalVariable(name: "sv", scope: !3086, file: !277, line: 839, type: !334)
!3089 = !DILocalVariable(name: "i", scope: !3090, file: !277, line: 840, type: !56)
!3090 = distinct !DILexicalBlock(scope: !3086, file: !277, line: 840, column: 3)
!3091 = !DILocation(line: 839, column: 24, scope: !3086)
!3092 = !DILocation(line: 0, scope: !3086)
!3093 = !DILocation(line: 0, scope: !3090)
!3094 = !DILocation(line: 840, column: 21, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !277, line: 840, column: 3)
!3096 = !DILocation(line: 840, column: 3, scope: !3090)
!3097 = !DILocation(line: 842, column: 13, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3086, file: !277, line: 842, column: 7)
!3099 = !{!3100, !477, i64 8}
!3100 = !{!"slotvec", !901, i64 0, !477, i64 8}
!3101 = !DILocation(line: 842, column: 17, scope: !3098)
!3102 = !DILocation(line: 842, column: 7, scope: !3086)
!3103 = !DILocation(line: 841, column: 17, scope: !3095)
!3104 = !DILocation(line: 841, column: 5, scope: !3095)
!3105 = !DILocation(line: 840, column: 32, scope: !3095)
!3106 = distinct !{!3106, !3096, !3107, !539}
!3107 = !DILocation(line: 841, column: 20, scope: !3090)
!3108 = !DILocation(line: 844, column: 7, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3098, file: !277, line: 843, column: 5)
!3110 = !DILocation(line: 845, column: 21, scope: !3109)
!3111 = !{!3100, !901, i64 0}
!3112 = !DILocation(line: 846, column: 20, scope: !3109)
!3113 = !DILocation(line: 847, column: 5, scope: !3109)
!3114 = !DILocation(line: 848, column: 10, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3086, file: !277, line: 848, column: 7)
!3116 = !DILocation(line: 848, column: 7, scope: !3086)
!3117 = !DILocation(line: 850, column: 13, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3115, file: !277, line: 849, column: 5)
!3119 = !DILocation(line: 850, column: 7, scope: !3118)
!3120 = !DILocation(line: 851, column: 15, scope: !3118)
!3121 = !DILocation(line: 852, column: 5, scope: !3118)
!3122 = !DILocation(line: 853, column: 10, scope: !3086)
!3123 = !DILocation(line: 854, column: 1, scope: !3086)
!3124 = distinct !DISubprogram(name: "quotearg_n", scope: !277, file: !277, line: 919, type: !680, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3125)
!3125 = !{!3126, !3127}
!3126 = !DILocalVariable(name: "n", arg: 1, scope: !3124, file: !277, line: 919, type: !56)
!3127 = !DILocalVariable(name: "arg", arg: 2, scope: !3124, file: !277, line: 919, type: !61)
!3128 = !DILocation(line: 0, scope: !3124)
!3129 = !DILocation(line: 921, column: 10, scope: !3124)
!3130 = !DILocation(line: 921, column: 3, scope: !3124)
!3131 = distinct !DISubprogram(name: "quotearg_n_options", scope: !277, file: !277, line: 866, type: !3132, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3134)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!53, !56, !61, !58, !2359}
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141, !3142, !3145, !3146, !3148, !3149, !3150}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3131, file: !277, line: 866, type: !56)
!3136 = !DILocalVariable(name: "arg", arg: 2, scope: !3131, file: !277, line: 866, type: !61)
!3137 = !DILocalVariable(name: "argsize", arg: 3, scope: !3131, file: !277, line: 866, type: !58)
!3138 = !DILocalVariable(name: "options", arg: 4, scope: !3131, file: !277, line: 867, type: !2359)
!3139 = !DILocalVariable(name: "saved_errno", scope: !3131, file: !277, line: 869, type: !56)
!3140 = !DILocalVariable(name: "sv", scope: !3131, file: !277, line: 871, type: !334)
!3141 = !DILocalVariable(name: "nslots_max", scope: !3131, file: !277, line: 873, type: !56)
!3142 = !DILocalVariable(name: "preallocated", scope: !3143, file: !277, line: 879, type: !78)
!3143 = distinct !DILexicalBlock(scope: !3144, file: !277, line: 878, column: 5)
!3144 = distinct !DILexicalBlock(scope: !3131, file: !277, line: 877, column: 7)
!3145 = !DILocalVariable(name: "new_nslots", scope: !3143, file: !277, line: 880, type: !417)
!3146 = !DILocalVariable(name: "size", scope: !3147, file: !277, line: 891, type: !58)
!3147 = distinct !DILexicalBlock(scope: !3131, file: !277, line: 890, column: 3)
!3148 = !DILocalVariable(name: "val", scope: !3147, file: !277, line: 892, type: !53)
!3149 = !DILocalVariable(name: "flags", scope: !3147, file: !277, line: 894, type: !56)
!3150 = !DILocalVariable(name: "qsize", scope: !3147, file: !277, line: 895, type: !58)
!3151 = !DILocation(line: 0, scope: !3131)
!3152 = !DILocation(line: 869, column: 21, scope: !3131)
!3153 = !DILocation(line: 871, column: 24, scope: !3131)
!3154 = !DILocation(line: 874, column: 17, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3131, file: !277, line: 874, column: 7)
!3156 = !DILocation(line: 875, column: 5, scope: !3155)
!3157 = !DILocation(line: 877, column: 7, scope: !3144)
!3158 = !DILocation(line: 877, column: 14, scope: !3144)
!3159 = !DILocation(line: 877, column: 7, scope: !3131)
!3160 = !DILocation(line: 879, column: 31, scope: !3143)
!3161 = !DILocation(line: 0, scope: !3143)
!3162 = !DILocation(line: 880, column: 7, scope: !3143)
!3163 = !DILocation(line: 880, column: 26, scope: !3143)
!3164 = !DILocation(line: 880, column: 13, scope: !3143)
!3165 = !DILocation(line: 882, column: 31, scope: !3143)
!3166 = !DILocation(line: 883, column: 33, scope: !3143)
!3167 = !DILocation(line: 883, column: 42, scope: !3143)
!3168 = !DILocation(line: 883, column: 31, scope: !3143)
!3169 = !DILocation(line: 882, column: 22, scope: !3143)
!3170 = !DILocation(line: 882, column: 15, scope: !3143)
!3171 = !DILocation(line: 884, column: 11, scope: !3143)
!3172 = !DILocation(line: 885, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3143, file: !277, line: 884, column: 11)
!3174 = !{i64 0, i64 8, !923, i64 8, i64 8, !476}
!3175 = !DILocation(line: 885, column: 9, scope: !3173)
!3176 = !DILocation(line: 886, column: 20, scope: !3143)
!3177 = !DILocation(line: 886, column: 18, scope: !3143)
!3178 = !DILocation(line: 886, column: 15, scope: !3143)
!3179 = !DILocation(line: 886, column: 32, scope: !3143)
!3180 = !DILocation(line: 886, column: 43, scope: !3143)
!3181 = !DILocation(line: 886, column: 53, scope: !3143)
!3182 = !DILocation(line: 0, scope: !2570, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 886, column: 7, scope: !3143)
!3184 = !DILocation(line: 59, column: 10, scope: !2570, inlinedAt: !3183)
!3185 = !DILocation(line: 887, column: 16, scope: !3143)
!3186 = !DILocation(line: 887, column: 14, scope: !3143)
!3187 = !DILocation(line: 888, column: 5, scope: !3144)
!3188 = !DILocation(line: 888, column: 5, scope: !3143)
!3189 = !DILocation(line: 891, column: 19, scope: !3147)
!3190 = !DILocation(line: 891, column: 25, scope: !3147)
!3191 = !DILocation(line: 0, scope: !3147)
!3192 = !DILocation(line: 892, column: 23, scope: !3147)
!3193 = !DILocation(line: 894, column: 26, scope: !3147)
!3194 = !DILocation(line: 894, column: 32, scope: !3147)
!3195 = !DILocation(line: 896, column: 55, scope: !3147)
!3196 = !DILocation(line: 897, column: 46, scope: !3147)
!3197 = !DILocation(line: 898, column: 55, scope: !3147)
!3198 = !DILocation(line: 899, column: 55, scope: !3147)
!3199 = !DILocation(line: 895, column: 20, scope: !3147)
!3200 = !DILocation(line: 901, column: 14, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3147, file: !277, line: 901, column: 9)
!3202 = !DILocation(line: 901, column: 9, scope: !3147)
!3203 = !DILocation(line: 903, column: 35, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3201, file: !277, line: 902, column: 7)
!3205 = !DILocation(line: 903, column: 20, scope: !3204)
!3206 = !DILocation(line: 904, column: 17, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3204, file: !277, line: 904, column: 13)
!3208 = !DILocation(line: 904, column: 13, scope: !3204)
!3209 = !DILocation(line: 905, column: 11, scope: !3207)
!3210 = !DILocation(line: 906, column: 27, scope: !3204)
!3211 = !DILocation(line: 906, column: 19, scope: !3204)
!3212 = !DILocation(line: 907, column: 69, scope: !3204)
!3213 = !DILocation(line: 909, column: 44, scope: !3204)
!3214 = !DILocation(line: 910, column: 44, scope: !3204)
!3215 = !DILocation(line: 907, column: 9, scope: !3204)
!3216 = !DILocation(line: 911, column: 7, scope: !3204)
!3217 = !DILocation(line: 913, column: 11, scope: !3147)
!3218 = !DILocation(line: 914, column: 5, scope: !3147)
!3219 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !277, file: !277, line: 925, type: !3220, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3222)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!53, !56, !61, !58}
!3222 = !{!3223, !3224, !3225}
!3223 = !DILocalVariable(name: "n", arg: 1, scope: !3219, file: !277, line: 925, type: !56)
!3224 = !DILocalVariable(name: "arg", arg: 2, scope: !3219, file: !277, line: 925, type: !61)
!3225 = !DILocalVariable(name: "argsize", arg: 3, scope: !3219, file: !277, line: 925, type: !58)
!3226 = !DILocation(line: 0, scope: !3219)
!3227 = !DILocation(line: 927, column: 10, scope: !3219)
!3228 = !DILocation(line: 927, column: 3, scope: !3219)
!3229 = distinct !DISubprogram(name: "quotearg", scope: !277, file: !277, line: 931, type: !684, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3230)
!3230 = !{!3231}
!3231 = !DILocalVariable(name: "arg", arg: 1, scope: !3229, file: !277, line: 931, type: !61)
!3232 = !DILocation(line: 0, scope: !3229)
!3233 = !DILocation(line: 0, scope: !3124, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 933, column: 10, scope: !3229)
!3235 = !DILocation(line: 921, column: 10, scope: !3124, inlinedAt: !3234)
!3236 = !DILocation(line: 933, column: 3, scope: !3229)
!3237 = distinct !DISubprogram(name: "quotearg_mem", scope: !277, file: !277, line: 937, type: !3238, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3240)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!53, !61, !58}
!3240 = !{!3241, !3242}
!3241 = !DILocalVariable(name: "arg", arg: 1, scope: !3237, file: !277, line: 937, type: !61)
!3242 = !DILocalVariable(name: "argsize", arg: 2, scope: !3237, file: !277, line: 937, type: !58)
!3243 = !DILocation(line: 0, scope: !3237)
!3244 = !DILocation(line: 0, scope: !3219, inlinedAt: !3245)
!3245 = distinct !DILocation(line: 939, column: 10, scope: !3237)
!3246 = !DILocation(line: 927, column: 10, scope: !3219, inlinedAt: !3245)
!3247 = !DILocation(line: 939, column: 3, scope: !3237)
!3248 = distinct !DISubprogram(name: "quotearg_n_style", scope: !277, file: !277, line: 943, type: !3249, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3251)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!53, !56, !14, !61}
!3251 = !{!3252, !3253, !3254, !3255}
!3252 = !DILocalVariable(name: "n", arg: 1, scope: !3248, file: !277, line: 943, type: !56)
!3253 = !DILocalVariable(name: "s", arg: 2, scope: !3248, file: !277, line: 943, type: !14)
!3254 = !DILocalVariable(name: "arg", arg: 3, scope: !3248, file: !277, line: 943, type: !61)
!3255 = !DILocalVariable(name: "o", scope: !3248, file: !277, line: 945, type: !2360)
!3256 = !DILocation(line: 0, scope: !3248)
!3257 = !DILocation(line: 945, column: 3, scope: !3248)
!3258 = !DILocation(line: 945, column: 32, scope: !3248)
!3259 = !{!3260}
!3260 = distinct !{!3260, !3261, !"quoting_options_from_style: argument 0"}
!3261 = distinct !{!3261, !"quoting_options_from_style"}
!3262 = !DILocation(line: 945, column: 36, scope: !3248)
!3263 = !DILocalVariable(name: "style", arg: 1, scope: !3264, file: !277, line: 183, type: !14)
!3264 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !277, file: !277, line: 183, type: !3265, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3267)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!294, !14}
!3267 = !{!3263, !3268}
!3268 = !DILocalVariable(name: "o", scope: !3264, file: !277, line: 185, type: !294)
!3269 = !DILocation(line: 0, scope: !3264, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 945, column: 36, scope: !3248)
!3271 = !DILocation(line: 185, column: 26, scope: !3264, inlinedAt: !3270)
!3272 = !DILocation(line: 186, column: 13, scope: !3273, inlinedAt: !3270)
!3273 = distinct !DILexicalBlock(scope: !3264, file: !277, line: 186, column: 7)
!3274 = !DILocation(line: 186, column: 7, scope: !3264, inlinedAt: !3270)
!3275 = !DILocation(line: 187, column: 5, scope: !3273, inlinedAt: !3270)
!3276 = !DILocation(line: 188, column: 5, scope: !3264, inlinedAt: !3270)
!3277 = !DILocation(line: 188, column: 11, scope: !3264, inlinedAt: !3270)
!3278 = !DILocation(line: 946, column: 10, scope: !3248)
!3279 = !DILocation(line: 947, column: 1, scope: !3248)
!3280 = !DILocation(line: 946, column: 3, scope: !3248)
!3281 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !277, file: !277, line: 950, type: !3282, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3284)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!53, !56, !14, !61, !58}
!3284 = !{!3285, !3286, !3287, !3288, !3289}
!3285 = !DILocalVariable(name: "n", arg: 1, scope: !3281, file: !277, line: 950, type: !56)
!3286 = !DILocalVariable(name: "s", arg: 2, scope: !3281, file: !277, line: 950, type: !14)
!3287 = !DILocalVariable(name: "arg", arg: 3, scope: !3281, file: !277, line: 951, type: !61)
!3288 = !DILocalVariable(name: "argsize", arg: 4, scope: !3281, file: !277, line: 951, type: !58)
!3289 = !DILocalVariable(name: "o", scope: !3281, file: !277, line: 953, type: !2360)
!3290 = !DILocation(line: 0, scope: !3281)
!3291 = !DILocation(line: 953, column: 3, scope: !3281)
!3292 = !DILocation(line: 953, column: 32, scope: !3281)
!3293 = !{!3294}
!3294 = distinct !{!3294, !3295, !"quoting_options_from_style: argument 0"}
!3295 = distinct !{!3295, !"quoting_options_from_style"}
!3296 = !DILocation(line: 953, column: 36, scope: !3281)
!3297 = !DILocation(line: 0, scope: !3264, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 953, column: 36, scope: !3281)
!3299 = !DILocation(line: 185, column: 26, scope: !3264, inlinedAt: !3298)
!3300 = !DILocation(line: 186, column: 13, scope: !3273, inlinedAt: !3298)
!3301 = !DILocation(line: 186, column: 7, scope: !3264, inlinedAt: !3298)
!3302 = !DILocation(line: 187, column: 5, scope: !3273, inlinedAt: !3298)
!3303 = !DILocation(line: 188, column: 5, scope: !3264, inlinedAt: !3298)
!3304 = !DILocation(line: 188, column: 11, scope: !3264, inlinedAt: !3298)
!3305 = !DILocation(line: 954, column: 10, scope: !3281)
!3306 = !DILocation(line: 955, column: 1, scope: !3281)
!3307 = !DILocation(line: 954, column: 3, scope: !3281)
!3308 = distinct !DISubprogram(name: "quotearg_style", scope: !277, file: !277, line: 958, type: !3309, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3311)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!53, !14, !61}
!3311 = !{!3312, !3313}
!3312 = !DILocalVariable(name: "s", arg: 1, scope: !3308, file: !277, line: 958, type: !14)
!3313 = !DILocalVariable(name: "arg", arg: 2, scope: !3308, file: !277, line: 958, type: !61)
!3314 = !DILocation(line: 0, scope: !3308)
!3315 = !DILocation(line: 0, scope: !3248, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 960, column: 10, scope: !3308)
!3317 = !DILocation(line: 945, column: 3, scope: !3248, inlinedAt: !3316)
!3318 = !DILocation(line: 945, column: 32, scope: !3248, inlinedAt: !3316)
!3319 = !{!3320}
!3320 = distinct !{!3320, !3321, !"quoting_options_from_style: argument 0"}
!3321 = distinct !{!3321, !"quoting_options_from_style"}
!3322 = !DILocation(line: 945, column: 36, scope: !3248, inlinedAt: !3316)
!3323 = !DILocation(line: 0, scope: !3264, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 945, column: 36, scope: !3248, inlinedAt: !3316)
!3325 = !DILocation(line: 185, column: 26, scope: !3264, inlinedAt: !3324)
!3326 = !DILocation(line: 186, column: 13, scope: !3273, inlinedAt: !3324)
!3327 = !DILocation(line: 186, column: 7, scope: !3264, inlinedAt: !3324)
!3328 = !DILocation(line: 187, column: 5, scope: !3273, inlinedAt: !3324)
!3329 = !DILocation(line: 188, column: 5, scope: !3264, inlinedAt: !3324)
!3330 = !DILocation(line: 188, column: 11, scope: !3264, inlinedAt: !3324)
!3331 = !DILocation(line: 946, column: 10, scope: !3248, inlinedAt: !3316)
!3332 = !DILocation(line: 947, column: 1, scope: !3248, inlinedAt: !3316)
!3333 = !DILocation(line: 960, column: 3, scope: !3308)
!3334 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !277, file: !277, line: 964, type: !3335, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3337)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!53, !14, !61, !58}
!3337 = !{!3338, !3339, !3340}
!3338 = !DILocalVariable(name: "s", arg: 1, scope: !3334, file: !277, line: 964, type: !14)
!3339 = !DILocalVariable(name: "arg", arg: 2, scope: !3334, file: !277, line: 964, type: !61)
!3340 = !DILocalVariable(name: "argsize", arg: 3, scope: !3334, file: !277, line: 964, type: !58)
!3341 = !DILocation(line: 0, scope: !3334)
!3342 = !DILocation(line: 0, scope: !3281, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 966, column: 10, scope: !3334)
!3344 = !DILocation(line: 953, column: 3, scope: !3281, inlinedAt: !3343)
!3345 = !DILocation(line: 953, column: 32, scope: !3281, inlinedAt: !3343)
!3346 = !{!3347}
!3347 = distinct !{!3347, !3348, !"quoting_options_from_style: argument 0"}
!3348 = distinct !{!3348, !"quoting_options_from_style"}
!3349 = !DILocation(line: 953, column: 36, scope: !3281, inlinedAt: !3343)
!3350 = !DILocation(line: 0, scope: !3264, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 953, column: 36, scope: !3281, inlinedAt: !3343)
!3352 = !DILocation(line: 185, column: 26, scope: !3264, inlinedAt: !3351)
!3353 = !DILocation(line: 186, column: 13, scope: !3273, inlinedAt: !3351)
!3354 = !DILocation(line: 186, column: 7, scope: !3264, inlinedAt: !3351)
!3355 = !DILocation(line: 187, column: 5, scope: !3273, inlinedAt: !3351)
!3356 = !DILocation(line: 188, column: 5, scope: !3264, inlinedAt: !3351)
!3357 = !DILocation(line: 188, column: 11, scope: !3264, inlinedAt: !3351)
!3358 = !DILocation(line: 954, column: 10, scope: !3281, inlinedAt: !3343)
!3359 = !DILocation(line: 955, column: 1, scope: !3281, inlinedAt: !3343)
!3360 = !DILocation(line: 966, column: 3, scope: !3334)
!3361 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !277, file: !277, line: 970, type: !3362, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3364)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!53, !61, !58, !54}
!3364 = !{!3365, !3366, !3367, !3368}
!3365 = !DILocalVariable(name: "arg", arg: 1, scope: !3361, file: !277, line: 970, type: !61)
!3366 = !DILocalVariable(name: "argsize", arg: 2, scope: !3361, file: !277, line: 970, type: !58)
!3367 = !DILocalVariable(name: "ch", arg: 3, scope: !3361, file: !277, line: 970, type: !54)
!3368 = !DILocalVariable(name: "options", scope: !3361, file: !277, line: 972, type: !294)
!3369 = !DILocation(line: 0, scope: !3361)
!3370 = !DILocation(line: 972, column: 3, scope: !3361)
!3371 = !DILocation(line: 972, column: 26, scope: !3361)
!3372 = !DILocation(line: 973, column: 13, scope: !3361)
!3373 = !{i64 0, i64 4, !581, i64 4, i64 4, !572, i64 8, i64 32, !581, i64 40, i64 8, !476, i64 48, i64 8, !476}
!3374 = !DILocation(line: 0, scope: !2380, inlinedAt: !3375)
!3375 = distinct !DILocation(line: 974, column: 3, scope: !3361)
!3376 = !DILocation(line: 147, column: 62, scope: !2380, inlinedAt: !3375)
!3377 = !DILocation(line: 147, column: 57, scope: !2380, inlinedAt: !3375)
!3378 = !DILocation(line: 148, column: 15, scope: !2380, inlinedAt: !3375)
!3379 = !DILocation(line: 149, column: 21, scope: !2380, inlinedAt: !3375)
!3380 = !DILocation(line: 149, column: 24, scope: !2380, inlinedAt: !3375)
!3381 = !DILocation(line: 149, column: 34, scope: !2380, inlinedAt: !3375)
!3382 = !DILocation(line: 150, column: 19, scope: !2380, inlinedAt: !3375)
!3383 = !DILocation(line: 150, column: 24, scope: !2380, inlinedAt: !3375)
!3384 = !DILocation(line: 150, column: 6, scope: !2380, inlinedAt: !3375)
!3385 = !DILocation(line: 975, column: 10, scope: !3361)
!3386 = !DILocation(line: 976, column: 1, scope: !3361)
!3387 = !DILocation(line: 975, column: 3, scope: !3361)
!3388 = distinct !DISubprogram(name: "quotearg_char", scope: !277, file: !277, line: 979, type: !3389, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3391)
!3389 = !DISubroutineType(types: !3390)
!3390 = !{!53, !61, !54}
!3391 = !{!3392, !3393}
!3392 = !DILocalVariable(name: "arg", arg: 1, scope: !3388, file: !277, line: 979, type: !61)
!3393 = !DILocalVariable(name: "ch", arg: 2, scope: !3388, file: !277, line: 979, type: !54)
!3394 = !DILocation(line: 0, scope: !3388)
!3395 = !DILocation(line: 0, scope: !3361, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 981, column: 10, scope: !3388)
!3397 = !DILocation(line: 972, column: 3, scope: !3361, inlinedAt: !3396)
!3398 = !DILocation(line: 972, column: 26, scope: !3361, inlinedAt: !3396)
!3399 = !DILocation(line: 973, column: 13, scope: !3361, inlinedAt: !3396)
!3400 = !DILocation(line: 0, scope: !2380, inlinedAt: !3401)
!3401 = distinct !DILocation(line: 974, column: 3, scope: !3361, inlinedAt: !3396)
!3402 = !DILocation(line: 147, column: 62, scope: !2380, inlinedAt: !3401)
!3403 = !DILocation(line: 147, column: 57, scope: !2380, inlinedAt: !3401)
!3404 = !DILocation(line: 148, column: 15, scope: !2380, inlinedAt: !3401)
!3405 = !DILocation(line: 149, column: 21, scope: !2380, inlinedAt: !3401)
!3406 = !DILocation(line: 149, column: 24, scope: !2380, inlinedAt: !3401)
!3407 = !DILocation(line: 149, column: 34, scope: !2380, inlinedAt: !3401)
!3408 = !DILocation(line: 150, column: 19, scope: !2380, inlinedAt: !3401)
!3409 = !DILocation(line: 150, column: 24, scope: !2380, inlinedAt: !3401)
!3410 = !DILocation(line: 150, column: 6, scope: !2380, inlinedAt: !3401)
!3411 = !DILocation(line: 975, column: 10, scope: !3361, inlinedAt: !3396)
!3412 = !DILocation(line: 976, column: 1, scope: !3361, inlinedAt: !3396)
!3413 = !DILocation(line: 981, column: 3, scope: !3388)
!3414 = distinct !DISubprogram(name: "quotearg_colon", scope: !277, file: !277, line: 985, type: !684, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3415)
!3415 = !{!3416}
!3416 = !DILocalVariable(name: "arg", arg: 1, scope: !3414, file: !277, line: 985, type: !61)
!3417 = !DILocation(line: 0, scope: !3414)
!3418 = !DILocation(line: 0, scope: !3388, inlinedAt: !3419)
!3419 = distinct !DILocation(line: 987, column: 10, scope: !3414)
!3420 = !DILocation(line: 0, scope: !3361, inlinedAt: !3421)
!3421 = distinct !DILocation(line: 981, column: 10, scope: !3388, inlinedAt: !3419)
!3422 = !DILocation(line: 972, column: 3, scope: !3361, inlinedAt: !3421)
!3423 = !DILocation(line: 972, column: 26, scope: !3361, inlinedAt: !3421)
!3424 = !DILocation(line: 973, column: 13, scope: !3361, inlinedAt: !3421)
!3425 = !DILocation(line: 0, scope: !2380, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 974, column: 3, scope: !3361, inlinedAt: !3421)
!3427 = !DILocation(line: 147, column: 57, scope: !2380, inlinedAt: !3426)
!3428 = !DILocation(line: 149, column: 21, scope: !2380, inlinedAt: !3426)
!3429 = !DILocation(line: 150, column: 6, scope: !2380, inlinedAt: !3426)
!3430 = !DILocation(line: 975, column: 10, scope: !3361, inlinedAt: !3421)
!3431 = !DILocation(line: 976, column: 1, scope: !3361, inlinedAt: !3421)
!3432 = !DILocation(line: 987, column: 3, scope: !3414)
!3433 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !277, file: !277, line: 991, type: !3238, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3434)
!3434 = !{!3435, !3436}
!3435 = !DILocalVariable(name: "arg", arg: 1, scope: !3433, file: !277, line: 991, type: !61)
!3436 = !DILocalVariable(name: "argsize", arg: 2, scope: !3433, file: !277, line: 991, type: !58)
!3437 = !DILocation(line: 0, scope: !3433)
!3438 = !DILocation(line: 0, scope: !3361, inlinedAt: !3439)
!3439 = distinct !DILocation(line: 993, column: 10, scope: !3433)
!3440 = !DILocation(line: 972, column: 3, scope: !3361, inlinedAt: !3439)
!3441 = !DILocation(line: 972, column: 26, scope: !3361, inlinedAt: !3439)
!3442 = !DILocation(line: 973, column: 13, scope: !3361, inlinedAt: !3439)
!3443 = !DILocation(line: 0, scope: !2380, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 974, column: 3, scope: !3361, inlinedAt: !3439)
!3445 = !DILocation(line: 147, column: 57, scope: !2380, inlinedAt: !3444)
!3446 = !DILocation(line: 149, column: 21, scope: !2380, inlinedAt: !3444)
!3447 = !DILocation(line: 150, column: 6, scope: !2380, inlinedAt: !3444)
!3448 = !DILocation(line: 975, column: 10, scope: !3361, inlinedAt: !3439)
!3449 = !DILocation(line: 976, column: 1, scope: !3361, inlinedAt: !3439)
!3450 = !DILocation(line: 993, column: 3, scope: !3433)
!3451 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !277, file: !277, line: 997, type: !3249, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3452)
!3452 = !{!3453, !3454, !3455, !3456}
!3453 = !DILocalVariable(name: "n", arg: 1, scope: !3451, file: !277, line: 997, type: !56)
!3454 = !DILocalVariable(name: "s", arg: 2, scope: !3451, file: !277, line: 997, type: !14)
!3455 = !DILocalVariable(name: "arg", arg: 3, scope: !3451, file: !277, line: 997, type: !61)
!3456 = !DILocalVariable(name: "options", scope: !3451, file: !277, line: 999, type: !294)
!3457 = !DILocation(line: 0, scope: !3451)
!3458 = !DILocation(line: 999, column: 3, scope: !3451)
!3459 = !DILocation(line: 999, column: 26, scope: !3451)
!3460 = !DILocation(line: 0, scope: !3264, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 1000, column: 13, scope: !3451)
!3462 = !DILocation(line: 186, column: 13, scope: !3273, inlinedAt: !3461)
!3463 = !DILocation(line: 186, column: 7, scope: !3264, inlinedAt: !3461)
!3464 = !DILocation(line: 187, column: 5, scope: !3273, inlinedAt: !3461)
!3465 = !{!3466}
!3466 = distinct !{!3466, !3467, !"quoting_options_from_style: argument 0"}
!3467 = distinct !{!3467, !"quoting_options_from_style"}
!3468 = !DILocation(line: 1000, column: 13, scope: !3451)
!3469 = !DILocation(line: 0, scope: !2380, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1001, column: 3, scope: !3451)
!3471 = !DILocation(line: 147, column: 57, scope: !2380, inlinedAt: !3470)
!3472 = !DILocation(line: 149, column: 21, scope: !2380, inlinedAt: !3470)
!3473 = !DILocation(line: 150, column: 6, scope: !2380, inlinedAt: !3470)
!3474 = !DILocation(line: 1002, column: 10, scope: !3451)
!3475 = !DILocation(line: 1003, column: 1, scope: !3451)
!3476 = !DILocation(line: 1002, column: 3, scope: !3451)
!3477 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !277, file: !277, line: 1006, type: !3478, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3480)
!3478 = !DISubroutineType(types: !3479)
!3479 = !{!53, !56, !61, !61, !61}
!3480 = !{!3481, !3482, !3483, !3484}
!3481 = !DILocalVariable(name: "n", arg: 1, scope: !3477, file: !277, line: 1006, type: !56)
!3482 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3477, file: !277, line: 1006, type: !61)
!3483 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3477, file: !277, line: 1007, type: !61)
!3484 = !DILocalVariable(name: "arg", arg: 4, scope: !3477, file: !277, line: 1007, type: !61)
!3485 = !DILocation(line: 0, scope: !3477)
!3486 = !DILocalVariable(name: "n", arg: 1, scope: !3487, file: !277, line: 1014, type: !56)
!3487 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !277, file: !277, line: 1014, type: !3488, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3490)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!53, !56, !61, !61, !61, !58}
!3490 = !{!3486, !3491, !3492, !3493, !3494, !3495}
!3491 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3487, file: !277, line: 1014, type: !61)
!3492 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3487, file: !277, line: 1015, type: !61)
!3493 = !DILocalVariable(name: "arg", arg: 4, scope: !3487, file: !277, line: 1016, type: !61)
!3494 = !DILocalVariable(name: "argsize", arg: 5, scope: !3487, file: !277, line: 1016, type: !58)
!3495 = !DILocalVariable(name: "o", scope: !3487, file: !277, line: 1018, type: !294)
!3496 = !DILocation(line: 0, scope: !3487, inlinedAt: !3497)
!3497 = distinct !DILocation(line: 1009, column: 10, scope: !3477)
!3498 = !DILocation(line: 1018, column: 3, scope: !3487, inlinedAt: !3497)
!3499 = !DILocation(line: 1018, column: 26, scope: !3487, inlinedAt: !3497)
!3500 = !DILocation(line: 1018, column: 30, scope: !3487, inlinedAt: !3497)
!3501 = !DILocation(line: 0, scope: !2420, inlinedAt: !3502)
!3502 = distinct !DILocation(line: 1019, column: 3, scope: !3487, inlinedAt: !3497)
!3503 = !DILocation(line: 174, column: 6, scope: !2420, inlinedAt: !3502)
!3504 = !DILocation(line: 174, column: 12, scope: !2420, inlinedAt: !3502)
!3505 = !DILocation(line: 175, column: 8, scope: !2434, inlinedAt: !3502)
!3506 = !DILocation(line: 175, column: 19, scope: !2434, inlinedAt: !3502)
!3507 = !DILocation(line: 176, column: 5, scope: !2434, inlinedAt: !3502)
!3508 = !DILocation(line: 177, column: 6, scope: !2420, inlinedAt: !3502)
!3509 = !DILocation(line: 177, column: 17, scope: !2420, inlinedAt: !3502)
!3510 = !DILocation(line: 178, column: 6, scope: !2420, inlinedAt: !3502)
!3511 = !DILocation(line: 178, column: 18, scope: !2420, inlinedAt: !3502)
!3512 = !DILocation(line: 1020, column: 10, scope: !3487, inlinedAt: !3497)
!3513 = !DILocation(line: 1021, column: 1, scope: !3487, inlinedAt: !3497)
!3514 = !DILocation(line: 1009, column: 3, scope: !3477)
!3515 = !DILocation(line: 0, scope: !3487)
!3516 = !DILocation(line: 1018, column: 3, scope: !3487)
!3517 = !DILocation(line: 1018, column: 26, scope: !3487)
!3518 = !DILocation(line: 1018, column: 30, scope: !3487)
!3519 = !DILocation(line: 0, scope: !2420, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 1019, column: 3, scope: !3487)
!3521 = !DILocation(line: 174, column: 6, scope: !2420, inlinedAt: !3520)
!3522 = !DILocation(line: 174, column: 12, scope: !2420, inlinedAt: !3520)
!3523 = !DILocation(line: 175, column: 8, scope: !2434, inlinedAt: !3520)
!3524 = !DILocation(line: 175, column: 19, scope: !2434, inlinedAt: !3520)
!3525 = !DILocation(line: 176, column: 5, scope: !2434, inlinedAt: !3520)
!3526 = !DILocation(line: 177, column: 6, scope: !2420, inlinedAt: !3520)
!3527 = !DILocation(line: 177, column: 17, scope: !2420, inlinedAt: !3520)
!3528 = !DILocation(line: 178, column: 6, scope: !2420, inlinedAt: !3520)
!3529 = !DILocation(line: 178, column: 18, scope: !2420, inlinedAt: !3520)
!3530 = !DILocation(line: 1020, column: 10, scope: !3487)
!3531 = !DILocation(line: 1021, column: 1, scope: !3487)
!3532 = !DILocation(line: 1020, column: 3, scope: !3487)
!3533 = distinct !DISubprogram(name: "quotearg_custom", scope: !277, file: !277, line: 1024, type: !3534, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3536)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!53, !61, !61, !61}
!3536 = !{!3537, !3538, !3539}
!3537 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3533, file: !277, line: 1024, type: !61)
!3538 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3533, file: !277, line: 1024, type: !61)
!3539 = !DILocalVariable(name: "arg", arg: 3, scope: !3533, file: !277, line: 1025, type: !61)
!3540 = !DILocation(line: 0, scope: !3533)
!3541 = !DILocation(line: 0, scope: !3477, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 1027, column: 10, scope: !3533)
!3543 = !DILocation(line: 0, scope: !3487, inlinedAt: !3544)
!3544 = distinct !DILocation(line: 1009, column: 10, scope: !3477, inlinedAt: !3542)
!3545 = !DILocation(line: 1018, column: 3, scope: !3487, inlinedAt: !3544)
!3546 = !DILocation(line: 1018, column: 26, scope: !3487, inlinedAt: !3544)
!3547 = !DILocation(line: 1018, column: 30, scope: !3487, inlinedAt: !3544)
!3548 = !DILocation(line: 0, scope: !2420, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1019, column: 3, scope: !3487, inlinedAt: !3544)
!3550 = !DILocation(line: 174, column: 6, scope: !2420, inlinedAt: !3549)
!3551 = !DILocation(line: 174, column: 12, scope: !2420, inlinedAt: !3549)
!3552 = !DILocation(line: 175, column: 8, scope: !2434, inlinedAt: !3549)
!3553 = !DILocation(line: 175, column: 19, scope: !2434, inlinedAt: !3549)
!3554 = !DILocation(line: 176, column: 5, scope: !2434, inlinedAt: !3549)
!3555 = !DILocation(line: 177, column: 6, scope: !2420, inlinedAt: !3549)
!3556 = !DILocation(line: 177, column: 17, scope: !2420, inlinedAt: !3549)
!3557 = !DILocation(line: 178, column: 6, scope: !2420, inlinedAt: !3549)
!3558 = !DILocation(line: 178, column: 18, scope: !2420, inlinedAt: !3549)
!3559 = !DILocation(line: 1020, column: 10, scope: !3487, inlinedAt: !3544)
!3560 = !DILocation(line: 1021, column: 1, scope: !3487, inlinedAt: !3544)
!3561 = !DILocation(line: 1027, column: 3, scope: !3533)
!3562 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !277, file: !277, line: 1031, type: !3563, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3565)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!53, !61, !61, !61, !58}
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3562, file: !277, line: 1031, type: !61)
!3567 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3562, file: !277, line: 1031, type: !61)
!3568 = !DILocalVariable(name: "arg", arg: 3, scope: !3562, file: !277, line: 1032, type: !61)
!3569 = !DILocalVariable(name: "argsize", arg: 4, scope: !3562, file: !277, line: 1032, type: !58)
!3570 = !DILocation(line: 0, scope: !3562)
!3571 = !DILocation(line: 0, scope: !3487, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 1034, column: 10, scope: !3562)
!3573 = !DILocation(line: 1018, column: 3, scope: !3487, inlinedAt: !3572)
!3574 = !DILocation(line: 1018, column: 26, scope: !3487, inlinedAt: !3572)
!3575 = !DILocation(line: 1018, column: 30, scope: !3487, inlinedAt: !3572)
!3576 = !DILocation(line: 0, scope: !2420, inlinedAt: !3577)
!3577 = distinct !DILocation(line: 1019, column: 3, scope: !3487, inlinedAt: !3572)
!3578 = !DILocation(line: 174, column: 6, scope: !2420, inlinedAt: !3577)
!3579 = !DILocation(line: 174, column: 12, scope: !2420, inlinedAt: !3577)
!3580 = !DILocation(line: 175, column: 8, scope: !2434, inlinedAt: !3577)
!3581 = !DILocation(line: 175, column: 19, scope: !2434, inlinedAt: !3577)
!3582 = !DILocation(line: 176, column: 5, scope: !2434, inlinedAt: !3577)
!3583 = !DILocation(line: 177, column: 6, scope: !2420, inlinedAt: !3577)
!3584 = !DILocation(line: 177, column: 17, scope: !2420, inlinedAt: !3577)
!3585 = !DILocation(line: 178, column: 6, scope: !2420, inlinedAt: !3577)
!3586 = !DILocation(line: 178, column: 18, scope: !2420, inlinedAt: !3577)
!3587 = !DILocation(line: 1020, column: 10, scope: !3487, inlinedAt: !3572)
!3588 = !DILocation(line: 1021, column: 1, scope: !3487, inlinedAt: !3572)
!3589 = !DILocation(line: 1034, column: 3, scope: !3562)
!3590 = distinct !DISubprogram(name: "quote_n_mem", scope: !277, file: !277, line: 1049, type: !3591, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3593)
!3591 = !DISubroutineType(types: !3592)
!3592 = !{!61, !56, !61, !58}
!3593 = !{!3594, !3595, !3596}
!3594 = !DILocalVariable(name: "n", arg: 1, scope: !3590, file: !277, line: 1049, type: !56)
!3595 = !DILocalVariable(name: "arg", arg: 2, scope: !3590, file: !277, line: 1049, type: !61)
!3596 = !DILocalVariable(name: "argsize", arg: 3, scope: !3590, file: !277, line: 1049, type: !58)
!3597 = !DILocation(line: 0, scope: !3590)
!3598 = !DILocation(line: 1051, column: 10, scope: !3590)
!3599 = !DILocation(line: 1051, column: 3, scope: !3590)
!3600 = distinct !DISubprogram(name: "quote_mem", scope: !277, file: !277, line: 1055, type: !3601, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3603)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!61, !61, !58}
!3603 = !{!3604, !3605}
!3604 = !DILocalVariable(name: "arg", arg: 1, scope: !3600, file: !277, line: 1055, type: !61)
!3605 = !DILocalVariable(name: "argsize", arg: 2, scope: !3600, file: !277, line: 1055, type: !58)
!3606 = !DILocation(line: 0, scope: !3600)
!3607 = !DILocation(line: 0, scope: !3590, inlinedAt: !3608)
!3608 = distinct !DILocation(line: 1057, column: 10, scope: !3600)
!3609 = !DILocation(line: 1051, column: 10, scope: !3590, inlinedAt: !3608)
!3610 = !DILocation(line: 1057, column: 3, scope: !3600)
!3611 = distinct !DISubprogram(name: "quote_n", scope: !277, file: !277, line: 1061, type: !3612, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3614)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!61, !56, !61}
!3614 = !{!3615, !3616}
!3615 = !DILocalVariable(name: "n", arg: 1, scope: !3611, file: !277, line: 1061, type: !56)
!3616 = !DILocalVariable(name: "arg", arg: 2, scope: !3611, file: !277, line: 1061, type: !61)
!3617 = !DILocation(line: 0, scope: !3611)
!3618 = !DILocation(line: 0, scope: !3590, inlinedAt: !3619)
!3619 = distinct !DILocation(line: 1063, column: 10, scope: !3611)
!3620 = !DILocation(line: 1051, column: 10, scope: !3590, inlinedAt: !3619)
!3621 = !DILocation(line: 1063, column: 3, scope: !3611)
!3622 = distinct !DISubprogram(name: "quote", scope: !277, file: !277, line: 1067, type: !3623, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !276, retainedNodes: !3625)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!61, !61}
!3625 = !{!3626}
!3626 = !DILocalVariable(name: "arg", arg: 1, scope: !3622, file: !277, line: 1067, type: !61)
!3627 = !DILocation(line: 0, scope: !3622)
!3628 = !DILocation(line: 0, scope: !3611, inlinedAt: !3629)
!3629 = distinct !DILocation(line: 1069, column: 10, scope: !3622)
!3630 = !DILocation(line: 0, scope: !3590, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 1063, column: 10, scope: !3611, inlinedAt: !3629)
!3632 = !DILocation(line: 1051, column: 10, scope: !3590, inlinedAt: !3631)
!3633 = !DILocation(line: 1069, column: 3, scope: !3622)
!3634 = distinct !DISubprogram(name: "version_etc_arn", scope: !392, file: !392, line: 61, type: !3635, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3672)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{null, !3637, !61, !61, !61, !3671, !58}
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3639, file: !95, line: 51, baseType: !56, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3639, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3639, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3639, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3639, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3639, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3639, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3639, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3639, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3639, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3639, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3639, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3639, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3639, file: !95, line: 70, baseType: !3655, size: 64, offset: 832)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3639, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3639, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3639, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3639, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3639, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3639, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3639, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3639, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3639, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3639, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3639, file: !95, line: 93, baseType: !3655, size: 64, offset: 1344)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3639, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3639, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3639, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3639, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!3672 = !{!3673, !3674, !3675, !3676, !3677, !3678}
!3673 = !DILocalVariable(name: "stream", arg: 1, scope: !3634, file: !392, line: 61, type: !3637)
!3674 = !DILocalVariable(name: "command_name", arg: 2, scope: !3634, file: !392, line: 62, type: !61)
!3675 = !DILocalVariable(name: "package", arg: 3, scope: !3634, file: !392, line: 62, type: !61)
!3676 = !DILocalVariable(name: "version", arg: 4, scope: !3634, file: !392, line: 63, type: !61)
!3677 = !DILocalVariable(name: "authors", arg: 5, scope: !3634, file: !392, line: 64, type: !3671)
!3678 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3634, file: !392, line: 64, type: !58)
!3679 = !DILocation(line: 0, scope: !3634)
!3680 = !DILocation(line: 66, column: 7, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3634, file: !392, line: 66, column: 7)
!3682 = !DILocation(line: 66, column: 7, scope: !3634)
!3683 = !DILocation(line: 67, column: 5, scope: !3681)
!3684 = !DILocation(line: 69, column: 5, scope: !3681)
!3685 = !DILocation(line: 83, column: 3, scope: !3634)
!3686 = !DILocation(line: 85, column: 3, scope: !3634)
!3687 = !DILocation(line: 88, column: 3, scope: !3634)
!3688 = !DILocation(line: 95, column: 3, scope: !3634)
!3689 = !DILocation(line: 97, column: 3, scope: !3634)
!3690 = !DILocation(line: 105, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3634, file: !392, line: 98, column: 5)
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
!3712 = distinct !DISubprogram(name: "version_etc_ar", scope: !392, file: !392, line: 183, type: !3713, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !3637, !61, !61, !61, !3671}
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721}
!3716 = !DILocalVariable(name: "stream", arg: 1, scope: !3712, file: !392, line: 183, type: !3637)
!3717 = !DILocalVariable(name: "command_name", arg: 2, scope: !3712, file: !392, line: 184, type: !61)
!3718 = !DILocalVariable(name: "package", arg: 3, scope: !3712, file: !392, line: 184, type: !61)
!3719 = !DILocalVariable(name: "version", arg: 4, scope: !3712, file: !392, line: 185, type: !61)
!3720 = !DILocalVariable(name: "authors", arg: 5, scope: !3712, file: !392, line: 185, type: !3671)
!3721 = !DILocalVariable(name: "n_authors", scope: !3712, file: !392, line: 187, type: !58)
!3722 = !DILocation(line: 0, scope: !3712)
!3723 = !DILocation(line: 189, column: 8, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3712, file: !392, line: 189, column: 3)
!3725 = !DILocation(line: 0, scope: !3724)
!3726 = !DILocation(line: 189, column: 23, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !392, line: 189, column: 3)
!3728 = !DILocation(line: 189, column: 3, scope: !3724)
!3729 = !DILocation(line: 189, column: 52, scope: !3727)
!3730 = distinct !{!3730, !3728, !3731, !539}
!3731 = !DILocation(line: 190, column: 5, scope: !3724)
!3732 = !DILocation(line: 191, column: 3, scope: !3712)
!3733 = !DILocation(line: 192, column: 1, scope: !3712)
!3734 = distinct !DISubprogram(name: "version_etc_va", scope: !392, file: !392, line: 199, type: !3735, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3748)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3637, !61, !61, !61, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !203, line: 52, baseType: !3738)
!3738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !205, line: 32, baseType: !3739)
!3739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3740, baseType: !3741)
!3740 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !209, size: 256, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3741, file: !3740, line: 192, baseType: !55, size: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3741, file: !3740, line: 192, baseType: !55, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3741, file: !3740, line: 192, baseType: !55, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3741, file: !3740, line: 192, baseType: !56, size: 32, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3741, file: !3740, line: 192, baseType: !56, size: 32, offset: 224)
!3748 = !{!3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3749 = !DILocalVariable(name: "stream", arg: 1, scope: !3734, file: !392, line: 199, type: !3637)
!3750 = !DILocalVariable(name: "command_name", arg: 2, scope: !3734, file: !392, line: 200, type: !61)
!3751 = !DILocalVariable(name: "package", arg: 3, scope: !3734, file: !392, line: 200, type: !61)
!3752 = !DILocalVariable(name: "version", arg: 4, scope: !3734, file: !392, line: 201, type: !61)
!3753 = !DILocalVariable(name: "authors", arg: 5, scope: !3734, file: !392, line: 201, type: !3737)
!3754 = !DILocalVariable(name: "n_authors", scope: !3734, file: !392, line: 203, type: !58)
!3755 = !DILocalVariable(name: "authtab", scope: !3734, file: !392, line: 204, type: !3756)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !290)
!3757 = !DILocation(line: 0, scope: !3734)
!3758 = !DILocation(line: 201, column: 46, scope: !3734)
!3759 = !DILocation(line: 204, column: 3, scope: !3734)
!3760 = !DILocation(line: 204, column: 15, scope: !3734)
!3761 = !DILocation(line: 208, column: 35, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3763, file: !392, line: 206, column: 3)
!3763 = distinct !DILexicalBlock(scope: !3734, file: !392, line: 206, column: 3)
!3764 = !DILocation(line: 208, column: 14, scope: !3762)
!3765 = !DILocation(line: 208, column: 33, scope: !3762)
!3766 = !DILocation(line: 208, column: 67, scope: !3762)
!3767 = !DILocation(line: 206, column: 3, scope: !3763)
!3768 = !DILocation(line: 0, scope: !3763)
!3769 = !DILocation(line: 211, column: 3, scope: !3734)
!3770 = !DILocation(line: 213, column: 1, scope: !3734)
!3771 = distinct !DISubprogram(name: "version_etc", scope: !392, file: !392, line: 230, type: !3772, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !3774)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{null, !3637, !61, !61, !61, null}
!3774 = !{!3775, !3776, !3777, !3778, !3779}
!3775 = !DILocalVariable(name: "stream", arg: 1, scope: !3771, file: !392, line: 230, type: !3637)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3771, file: !392, line: 231, type: !61)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3771, file: !392, line: 231, type: !61)
!3778 = !DILocalVariable(name: "version", arg: 4, scope: !3771, file: !392, line: 232, type: !61)
!3779 = !DILocalVariable(name: "authors", scope: !3771, file: !392, line: 234, type: !3737)
!3780 = !DILocation(line: 0, scope: !3771)
!3781 = !DILocation(line: 234, column: 3, scope: !3771)
!3782 = !DILocation(line: 234, column: 11, scope: !3771)
!3783 = !DILocation(line: 235, column: 3, scope: !3771)
!3784 = !DILocation(line: 236, column: 3, scope: !3771)
!3785 = !DILocation(line: 237, column: 3, scope: !3771)
!3786 = !DILocation(line: 238, column: 1, scope: !3771)
!3787 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !392, file: !392, line: 241, type: !230, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !391, retainedNodes: !485)
!3788 = !DILocation(line: 243, column: 3, scope: !3787)
!3789 = !DILocation(line: 248, column: 3, scope: !3787)
!3790 = !DILocation(line: 254, column: 3, scope: !3787)
!3791 = !DILocation(line: 259, column: 3, scope: !3787)
!3792 = !DILocation(line: 261, column: 1, scope: !3787)
!3793 = distinct !DISubprogram(name: "xnrealloc", scope: !3794, file: !3794, line: 147, type: !3795, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3797)
!3794 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!55, !55, !58, !58}
!3797 = !{!3798, !3799, !3800}
!3798 = !DILocalVariable(name: "p", arg: 1, scope: !3793, file: !3794, line: 147, type: !55)
!3799 = !DILocalVariable(name: "n", arg: 2, scope: !3793, file: !3794, line: 147, type: !58)
!3800 = !DILocalVariable(name: "s", arg: 3, scope: !3793, file: !3794, line: 147, type: !58)
!3801 = !DILocation(line: 0, scope: !3793)
!3802 = !DILocalVariable(name: "p", arg: 1, scope: !3803, file: !398, line: 83, type: !55)
!3803 = distinct !DISubprogram(name: "xreallocarray", scope: !398, file: !398, line: 83, type: !3795, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3804)
!3804 = !{!3802, !3805, !3806}
!3805 = !DILocalVariable(name: "n", arg: 2, scope: !3803, file: !398, line: 83, type: !58)
!3806 = !DILocalVariable(name: "s", arg: 3, scope: !3803, file: !398, line: 83, type: !58)
!3807 = !DILocation(line: 0, scope: !3803, inlinedAt: !3808)
!3808 = distinct !DILocation(line: 149, column: 10, scope: !3793)
!3809 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !3808)
!3810 = !DILocalVariable(name: "p", arg: 1, scope: !3811, file: !398, line: 37, type: !55)
!3811 = distinct !DISubprogram(name: "check_nonnull", scope: !398, file: !398, line: 37, type: !3812, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3814)
!3812 = !DISubroutineType(types: !3813)
!3813 = !{!55, !55}
!3814 = !{!3810}
!3815 = !DILocation(line: 0, scope: !3811, inlinedAt: !3816)
!3816 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !3808)
!3817 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3816)
!3818 = distinct !DILexicalBlock(scope: !3811, file: !398, line: 39, column: 7)
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
!3830 = distinct !DISubprogram(name: "xmalloc", scope: !398, file: !398, line: 47, type: !3831, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3833)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!55, !58}
!3833 = !{!3834}
!3834 = !DILocalVariable(name: "s", arg: 1, scope: !3830, file: !398, line: 47, type: !58)
!3835 = !DILocation(line: 0, scope: !3830)
!3836 = !DILocation(line: 49, column: 25, scope: !3830)
!3837 = !DILocation(line: 0, scope: !3811, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 49, column: 10, scope: !3830)
!3839 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3838)
!3840 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3838)
!3841 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3838)
!3842 = !DILocation(line: 49, column: 3, scope: !3830)
!3843 = distinct !DISubprogram(name: "ximalloc", scope: !398, file: !398, line: 53, type: !1387, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3844)
!3844 = !{!3845}
!3845 = !DILocalVariable(name: "s", arg: 1, scope: !3843, file: !398, line: 53, type: !417)
!3846 = !DILocation(line: 0, scope: !3843)
!3847 = !DILocalVariable(name: "s", arg: 1, scope: !3848, file: !1386, line: 55, type: !417)
!3848 = distinct !DISubprogram(name: "imalloc", scope: !1386, file: !1386, line: 55, type: !1387, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3849)
!3849 = !{!3847}
!3850 = !DILocation(line: 0, scope: !3848, inlinedAt: !3851)
!3851 = distinct !DILocation(line: 55, column: 25, scope: !3843)
!3852 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !3851)
!3853 = !DILocation(line: 0, scope: !3811, inlinedAt: !3854)
!3854 = distinct !DILocation(line: 55, column: 10, scope: !3843)
!3855 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3854)
!3856 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3854)
!3857 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3854)
!3858 = !DILocation(line: 55, column: 3, scope: !3843)
!3859 = distinct !DISubprogram(name: "xcharalloc", scope: !398, file: !398, line: 59, type: !3860, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3862)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{!53, !58}
!3862 = !{!3863}
!3863 = !DILocalVariable(name: "n", arg: 1, scope: !3859, file: !398, line: 59, type: !58)
!3864 = !DILocation(line: 0, scope: !3859)
!3865 = !DILocation(line: 0, scope: !3830, inlinedAt: !3866)
!3866 = distinct !DILocation(line: 61, column: 10, scope: !3859)
!3867 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !3866)
!3868 = !DILocation(line: 0, scope: !3811, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !3866)
!3870 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3869)
!3871 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3869)
!3872 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3869)
!3873 = !DILocation(line: 61, column: 3, scope: !3859)
!3874 = distinct !DISubprogram(name: "xrealloc", scope: !398, file: !398, line: 68, type: !3875, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3877)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!55, !55, !58}
!3877 = !{!3878, !3879}
!3878 = !DILocalVariable(name: "p", arg: 1, scope: !3874, file: !398, line: 68, type: !55)
!3879 = !DILocalVariable(name: "s", arg: 2, scope: !3874, file: !398, line: 68, type: !58)
!3880 = !DILocation(line: 0, scope: !3874)
!3881 = !DILocalVariable(name: "ptr", arg: 1, scope: !3882, file: !3883, line: 2057, type: !55)
!3882 = distinct !DISubprogram(name: "rpl_realloc", scope: !3883, file: !3883, line: 2057, type: !3875, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3884)
!3883 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3884 = !{!3881, !3885}
!3885 = !DILocalVariable(name: "size", arg: 2, scope: !3882, file: !3883, line: 2057, type: !58)
!3886 = !DILocation(line: 0, scope: !3882, inlinedAt: !3887)
!3887 = distinct !DILocation(line: 70, column: 25, scope: !3874)
!3888 = !DILocation(line: 2059, column: 24, scope: !3882, inlinedAt: !3887)
!3889 = !DILocation(line: 2059, column: 10, scope: !3882, inlinedAt: !3887)
!3890 = !DILocation(line: 0, scope: !3811, inlinedAt: !3891)
!3891 = distinct !DILocation(line: 70, column: 10, scope: !3874)
!3892 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3891)
!3893 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3891)
!3894 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3891)
!3895 = !DILocation(line: 70, column: 3, scope: !3874)
!3896 = distinct !DISubprogram(name: "xirealloc", scope: !398, file: !398, line: 74, type: !3897, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!55, !55, !417}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3896, file: !398, line: 74, type: !55)
!3901 = !DILocalVariable(name: "s", arg: 2, scope: !3896, file: !398, line: 74, type: !417)
!3902 = !DILocation(line: 0, scope: !3896)
!3903 = !DILocalVariable(name: "p", arg: 1, scope: !3904, file: !1386, line: 66, type: !55)
!3904 = distinct !DISubprogram(name: "irealloc", scope: !1386, file: !1386, line: 66, type: !3897, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3905)
!3905 = !{!3903, !3906}
!3906 = !DILocalVariable(name: "s", arg: 2, scope: !3904, file: !1386, line: 66, type: !417)
!3907 = !DILocation(line: 0, scope: !3904, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 76, column: 25, scope: !3896)
!3909 = !DILocation(line: 0, scope: !3882, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 68, column: 26, scope: !3904, inlinedAt: !3908)
!3911 = !DILocation(line: 2059, column: 24, scope: !3882, inlinedAt: !3910)
!3912 = !DILocation(line: 2059, column: 10, scope: !3882, inlinedAt: !3910)
!3913 = !DILocation(line: 0, scope: !3811, inlinedAt: !3914)
!3914 = distinct !DILocation(line: 76, column: 10, scope: !3896)
!3915 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3914)
!3916 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3914)
!3917 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3914)
!3918 = !DILocation(line: 76, column: 3, scope: !3896)
!3919 = distinct !DISubprogram(name: "xireallocarray", scope: !398, file: !398, line: 89, type: !3920, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3922)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!55, !55, !417, !417}
!3922 = !{!3923, !3924, !3925}
!3923 = !DILocalVariable(name: "p", arg: 1, scope: !3919, file: !398, line: 89, type: !55)
!3924 = !DILocalVariable(name: "n", arg: 2, scope: !3919, file: !398, line: 89, type: !417)
!3925 = !DILocalVariable(name: "s", arg: 3, scope: !3919, file: !398, line: 89, type: !417)
!3926 = !DILocation(line: 0, scope: !3919)
!3927 = !DILocalVariable(name: "p", arg: 1, scope: !3928, file: !1386, line: 98, type: !55)
!3928 = distinct !DISubprogram(name: "ireallocarray", scope: !1386, file: !1386, line: 98, type: !3920, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3929)
!3929 = !{!3927, !3930, !3931}
!3930 = !DILocalVariable(name: "n", arg: 2, scope: !3928, file: !1386, line: 98, type: !417)
!3931 = !DILocalVariable(name: "s", arg: 3, scope: !3928, file: !1386, line: 98, type: !417)
!3932 = !DILocation(line: 0, scope: !3928, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 91, column: 25, scope: !3919)
!3934 = !DILocation(line: 101, column: 13, scope: !3928, inlinedAt: !3933)
!3935 = !DILocation(line: 0, scope: !3811, inlinedAt: !3936)
!3936 = distinct !DILocation(line: 91, column: 10, scope: !3919)
!3937 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3936)
!3938 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3936)
!3939 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3936)
!3940 = !DILocation(line: 91, column: 3, scope: !3919)
!3941 = distinct !DISubprogram(name: "xnmalloc", scope: !398, file: !398, line: 98, type: !3942, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!55, !58, !58}
!3944 = !{!3945, !3946}
!3945 = !DILocalVariable(name: "n", arg: 1, scope: !3941, file: !398, line: 98, type: !58)
!3946 = !DILocalVariable(name: "s", arg: 2, scope: !3941, file: !398, line: 98, type: !58)
!3947 = !DILocation(line: 0, scope: !3941)
!3948 = !DILocation(line: 0, scope: !3803, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 100, column: 10, scope: !3941)
!3950 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !3949)
!3951 = !DILocation(line: 0, scope: !3811, inlinedAt: !3952)
!3952 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !3949)
!3953 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3952)
!3954 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3952)
!3955 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3952)
!3956 = !DILocation(line: 100, column: 3, scope: !3941)
!3957 = distinct !DISubprogram(name: "xinmalloc", scope: !398, file: !398, line: 104, type: !3958, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3960)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!55, !417, !417}
!3960 = !{!3961, !3962}
!3961 = !DILocalVariable(name: "n", arg: 1, scope: !3957, file: !398, line: 104, type: !417)
!3962 = !DILocalVariable(name: "s", arg: 2, scope: !3957, file: !398, line: 104, type: !417)
!3963 = !DILocation(line: 0, scope: !3957)
!3964 = !DILocation(line: 0, scope: !3919, inlinedAt: !3965)
!3965 = distinct !DILocation(line: 106, column: 10, scope: !3957)
!3966 = !DILocation(line: 0, scope: !3928, inlinedAt: !3967)
!3967 = distinct !DILocation(line: 91, column: 25, scope: !3919, inlinedAt: !3965)
!3968 = !DILocation(line: 101, column: 13, scope: !3928, inlinedAt: !3967)
!3969 = !DILocation(line: 0, scope: !3811, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 91, column: 10, scope: !3919, inlinedAt: !3965)
!3971 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !3970)
!3972 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !3970)
!3973 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !3970)
!3974 = !DILocation(line: 106, column: 3, scope: !3957)
!3975 = distinct !DISubprogram(name: "x2realloc", scope: !398, file: !398, line: 116, type: !3976, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!55, !55, !404}
!3978 = !{!3979, !3980}
!3979 = !DILocalVariable(name: "p", arg: 1, scope: !3975, file: !398, line: 116, type: !55)
!3980 = !DILocalVariable(name: "ps", arg: 2, scope: !3975, file: !398, line: 116, type: !404)
!3981 = !DILocation(line: 0, scope: !3975)
!3982 = !DILocation(line: 0, scope: !401, inlinedAt: !3983)
!3983 = distinct !DILocation(line: 118, column: 10, scope: !3975)
!3984 = !DILocation(line: 178, column: 14, scope: !401, inlinedAt: !3983)
!3985 = !DILocation(line: 180, column: 9, scope: !3986, inlinedAt: !3983)
!3986 = distinct !DILexicalBlock(scope: !401, file: !398, line: 180, column: 7)
!3987 = !DILocation(line: 180, column: 7, scope: !401, inlinedAt: !3983)
!3988 = !DILocation(line: 182, column: 13, scope: !3989, inlinedAt: !3983)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !398, line: 182, column: 11)
!3990 = distinct !DILexicalBlock(scope: !3986, file: !398, line: 181, column: 5)
!3991 = !DILocation(line: 182, column: 11, scope: !3990, inlinedAt: !3983)
!3992 = !DILocation(line: 197, column: 11, scope: !3993, inlinedAt: !3983)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !398, line: 197, column: 11)
!3994 = distinct !DILexicalBlock(scope: !3986, file: !398, line: 195, column: 5)
!3995 = !DILocation(line: 197, column: 11, scope: !3994, inlinedAt: !3983)
!3996 = !DILocation(line: 198, column: 9, scope: !3993, inlinedAt: !3983)
!3997 = !DILocation(line: 0, scope: !3803, inlinedAt: !3998)
!3998 = distinct !DILocation(line: 201, column: 7, scope: !401, inlinedAt: !3983)
!3999 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !3998)
!4000 = !DILocation(line: 0, scope: !3811, inlinedAt: !4001)
!4001 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !3998)
!4002 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4001)
!4003 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4001)
!4004 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4001)
!4005 = !DILocation(line: 202, column: 7, scope: !401, inlinedAt: !3983)
!4006 = !DILocation(line: 118, column: 3, scope: !3975)
!4007 = !DILocation(line: 0, scope: !401)
!4008 = !DILocation(line: 178, column: 14, scope: !401)
!4009 = !DILocation(line: 180, column: 9, scope: !3986)
!4010 = !DILocation(line: 180, column: 7, scope: !401)
!4011 = !DILocation(line: 182, column: 13, scope: !3989)
!4012 = !DILocation(line: 182, column: 11, scope: !3990)
!4013 = !DILocation(line: 190, column: 30, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3989, file: !398, line: 183, column: 9)
!4015 = !DILocation(line: 191, column: 16, scope: !4014)
!4016 = !DILocation(line: 191, column: 13, scope: !4014)
!4017 = !DILocation(line: 192, column: 9, scope: !4014)
!4018 = !DILocation(line: 197, column: 11, scope: !3993)
!4019 = !DILocation(line: 197, column: 11, scope: !3994)
!4020 = !DILocation(line: 198, column: 9, scope: !3993)
!4021 = !DILocation(line: 0, scope: !3803, inlinedAt: !4022)
!4022 = distinct !DILocation(line: 201, column: 7, scope: !401)
!4023 = !DILocation(line: 85, column: 25, scope: !3803, inlinedAt: !4022)
!4024 = !DILocation(line: 0, scope: !3811, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 85, column: 10, scope: !3803, inlinedAt: !4022)
!4026 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4025)
!4027 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4025)
!4028 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4025)
!4029 = !DILocation(line: 202, column: 7, scope: !401)
!4030 = !DILocation(line: 203, column: 3, scope: !401)
!4031 = !DILocation(line: 0, scope: !413)
!4032 = !DILocation(line: 230, column: 14, scope: !413)
!4033 = !DILocation(line: 238, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !413, file: !398, line: 238, column: 7)
!4035 = !DILocation(line: 238, column: 7, scope: !413)
!4036 = !DILocation(line: 240, column: 9, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !413, file: !398, line: 240, column: 7)
!4038 = !DILocation(line: 240, column: 18, scope: !4037)
!4039 = !DILocation(line: 253, column: 8, scope: !413)
!4040 = !DILocation(line: 258, column: 27, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !398, line: 257, column: 5)
!4042 = distinct !DILexicalBlock(scope: !413, file: !398, line: 256, column: 7)
!4043 = !DILocation(line: 259, column: 32, scope: !4041)
!4044 = !DILocation(line: 260, column: 5, scope: !4041)
!4045 = !DILocation(line: 262, column: 9, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !413, file: !398, line: 262, column: 7)
!4047 = !DILocation(line: 262, column: 7, scope: !413)
!4048 = !DILocation(line: 263, column: 9, scope: !4046)
!4049 = !DILocation(line: 263, column: 5, scope: !4046)
!4050 = !DILocation(line: 264, column: 9, scope: !4051)
!4051 = distinct !DILexicalBlock(scope: !413, file: !398, line: 264, column: 7)
!4052 = !DILocation(line: 264, column: 14, scope: !4051)
!4053 = !DILocation(line: 265, column: 7, scope: !4051)
!4054 = !DILocation(line: 265, column: 11, scope: !4051)
!4055 = !DILocation(line: 266, column: 11, scope: !4051)
!4056 = !DILocation(line: 266, column: 26, scope: !4051)
!4057 = !DILocation(line: 267, column: 14, scope: !4051)
!4058 = !DILocation(line: 264, column: 7, scope: !413)
!4059 = !DILocation(line: 268, column: 5, scope: !4051)
!4060 = !DILocation(line: 0, scope: !3874, inlinedAt: !4061)
!4061 = distinct !DILocation(line: 269, column: 8, scope: !413)
!4062 = !DILocation(line: 0, scope: !3882, inlinedAt: !4063)
!4063 = distinct !DILocation(line: 70, column: 25, scope: !3874, inlinedAt: !4061)
!4064 = !DILocation(line: 2059, column: 24, scope: !3882, inlinedAt: !4063)
!4065 = !DILocation(line: 2059, column: 10, scope: !3882, inlinedAt: !4063)
!4066 = !DILocation(line: 0, scope: !3811, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 70, column: 10, scope: !3874, inlinedAt: !4061)
!4068 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4067)
!4069 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4067)
!4070 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4067)
!4071 = !DILocation(line: 270, column: 7, scope: !413)
!4072 = !DILocation(line: 271, column: 3, scope: !413)
!4073 = distinct !DISubprogram(name: "xzalloc", scope: !398, file: !398, line: 279, type: !3831, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4074)
!4074 = !{!4075}
!4075 = !DILocalVariable(name: "s", arg: 1, scope: !4073, file: !398, line: 279, type: !58)
!4076 = !DILocation(line: 0, scope: !4073)
!4077 = !DILocalVariable(name: "n", arg: 1, scope: !4078, file: !398, line: 294, type: !58)
!4078 = distinct !DISubprogram(name: "xcalloc", scope: !398, file: !398, line: 294, type: !3942, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4079)
!4079 = !{!4077, !4080}
!4080 = !DILocalVariable(name: "s", arg: 2, scope: !4078, file: !398, line: 294, type: !58)
!4081 = !DILocation(line: 0, scope: !4078, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 281, column: 10, scope: !4073)
!4083 = !DILocation(line: 296, column: 25, scope: !4078, inlinedAt: !4082)
!4084 = !DILocation(line: 0, scope: !3811, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 296, column: 10, scope: !4078, inlinedAt: !4082)
!4086 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4085)
!4087 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4085)
!4088 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4085)
!4089 = !DILocation(line: 281, column: 3, scope: !4073)
!4090 = !DILocation(line: 0, scope: !4078)
!4091 = !DILocation(line: 296, column: 25, scope: !4078)
!4092 = !DILocation(line: 0, scope: !3811, inlinedAt: !4093)
!4093 = distinct !DILocation(line: 296, column: 10, scope: !4078)
!4094 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4093)
!4095 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4093)
!4096 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4093)
!4097 = !DILocation(line: 296, column: 3, scope: !4078)
!4098 = distinct !DISubprogram(name: "xizalloc", scope: !398, file: !398, line: 285, type: !1387, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4099)
!4099 = !{!4100}
!4100 = !DILocalVariable(name: "s", arg: 1, scope: !4098, file: !398, line: 285, type: !417)
!4101 = !DILocation(line: 0, scope: !4098)
!4102 = !DILocalVariable(name: "n", arg: 1, scope: !4103, file: !398, line: 300, type: !417)
!4103 = distinct !DISubprogram(name: "xicalloc", scope: !398, file: !398, line: 300, type: !3958, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4104)
!4104 = !{!4102, !4105}
!4105 = !DILocalVariable(name: "s", arg: 2, scope: !4103, file: !398, line: 300, type: !417)
!4106 = !DILocation(line: 0, scope: !4103, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 287, column: 10, scope: !4098)
!4108 = !DILocalVariable(name: "n", arg: 1, scope: !4109, file: !1386, line: 77, type: !417)
!4109 = distinct !DISubprogram(name: "icalloc", scope: !1386, file: !1386, line: 77, type: !3958, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4110)
!4110 = !{!4108, !4111}
!4111 = !DILocalVariable(name: "s", arg: 2, scope: !4109, file: !1386, line: 77, type: !417)
!4112 = !DILocation(line: 0, scope: !4109, inlinedAt: !4113)
!4113 = distinct !DILocation(line: 302, column: 25, scope: !4103, inlinedAt: !4107)
!4114 = !DILocation(line: 91, column: 10, scope: !4109, inlinedAt: !4113)
!4115 = !DILocation(line: 0, scope: !3811, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 302, column: 10, scope: !4103, inlinedAt: !4107)
!4117 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4116)
!4118 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4116)
!4119 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4116)
!4120 = !DILocation(line: 287, column: 3, scope: !4098)
!4121 = !DILocation(line: 0, scope: !4103)
!4122 = !DILocation(line: 0, scope: !4109, inlinedAt: !4123)
!4123 = distinct !DILocation(line: 302, column: 25, scope: !4103)
!4124 = !DILocation(line: 91, column: 10, scope: !4109, inlinedAt: !4123)
!4125 = !DILocation(line: 0, scope: !3811, inlinedAt: !4126)
!4126 = distinct !DILocation(line: 302, column: 10, scope: !4103)
!4127 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4126)
!4128 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4126)
!4129 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4126)
!4130 = !DILocation(line: 302, column: 3, scope: !4103)
!4131 = distinct !DISubprogram(name: "xmemdup", scope: !398, file: !398, line: 310, type: !4132, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4134)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!55, !690, !58}
!4134 = !{!4135, !4136}
!4135 = !DILocalVariable(name: "p", arg: 1, scope: !4131, file: !398, line: 310, type: !690)
!4136 = !DILocalVariable(name: "s", arg: 2, scope: !4131, file: !398, line: 310, type: !58)
!4137 = !DILocation(line: 0, scope: !4131)
!4138 = !DILocation(line: 0, scope: !3830, inlinedAt: !4139)
!4139 = distinct !DILocation(line: 312, column: 18, scope: !4131)
!4140 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !4139)
!4141 = !DILocation(line: 0, scope: !3811, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !4139)
!4143 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4142)
!4144 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4142)
!4145 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4142)
!4146 = !DILocalVariable(name: "__dest", arg: 1, scope: !4147, file: !873, line: 26, type: !4150)
!4147 = distinct !DISubprogram(name: "memcpy", scope: !873, file: !873, line: 26, type: !4148, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4151)
!4148 = !DISubroutineType(types: !4149)
!4149 = !{!55, !4150, !689, !58}
!4150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!4151 = !{!4146, !4152, !4153}
!4152 = !DILocalVariable(name: "__src", arg: 2, scope: !4147, file: !873, line: 26, type: !689)
!4153 = !DILocalVariable(name: "__len", arg: 3, scope: !4147, file: !873, line: 26, type: !58)
!4154 = !DILocation(line: 0, scope: !4147, inlinedAt: !4155)
!4155 = distinct !DILocation(line: 312, column: 10, scope: !4131)
!4156 = !DILocation(line: 29, column: 10, scope: !4147, inlinedAt: !4155)
!4157 = !DILocation(line: 312, column: 3, scope: !4131)
!4158 = distinct !DISubprogram(name: "ximemdup", scope: !398, file: !398, line: 316, type: !4159, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4161)
!4159 = !DISubroutineType(types: !4160)
!4160 = !{!55, !690, !417}
!4161 = !{!4162, !4163}
!4162 = !DILocalVariable(name: "p", arg: 1, scope: !4158, file: !398, line: 316, type: !690)
!4163 = !DILocalVariable(name: "s", arg: 2, scope: !4158, file: !398, line: 316, type: !417)
!4164 = !DILocation(line: 0, scope: !4158)
!4165 = !DILocation(line: 0, scope: !3843, inlinedAt: !4166)
!4166 = distinct !DILocation(line: 318, column: 18, scope: !4158)
!4167 = !DILocation(line: 0, scope: !3848, inlinedAt: !4168)
!4168 = distinct !DILocation(line: 55, column: 25, scope: !3843, inlinedAt: !4166)
!4169 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !4168)
!4170 = !DILocation(line: 0, scope: !3811, inlinedAt: !4171)
!4171 = distinct !DILocation(line: 55, column: 10, scope: !3843, inlinedAt: !4166)
!4172 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4171)
!4173 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4171)
!4174 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4171)
!4175 = !DILocation(line: 0, scope: !4147, inlinedAt: !4176)
!4176 = distinct !DILocation(line: 318, column: 10, scope: !4158)
!4177 = !DILocation(line: 29, column: 10, scope: !4147, inlinedAt: !4176)
!4178 = !DILocation(line: 318, column: 3, scope: !4158)
!4179 = distinct !DISubprogram(name: "ximemdup0", scope: !398, file: !398, line: 325, type: !4180, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4182)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!53, !690, !417}
!4182 = !{!4183, !4184, !4185}
!4183 = !DILocalVariable(name: "p", arg: 1, scope: !4179, file: !398, line: 325, type: !690)
!4184 = !DILocalVariable(name: "s", arg: 2, scope: !4179, file: !398, line: 325, type: !417)
!4185 = !DILocalVariable(name: "result", scope: !4179, file: !398, line: 327, type: !53)
!4186 = !DILocation(line: 0, scope: !4179)
!4187 = !DILocation(line: 327, column: 30, scope: !4179)
!4188 = !DILocation(line: 0, scope: !3843, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 327, column: 18, scope: !4179)
!4190 = !DILocation(line: 0, scope: !3848, inlinedAt: !4191)
!4191 = distinct !DILocation(line: 55, column: 25, scope: !3843, inlinedAt: !4189)
!4192 = !DILocation(line: 57, column: 26, scope: !3848, inlinedAt: !4191)
!4193 = !DILocation(line: 0, scope: !3811, inlinedAt: !4194)
!4194 = distinct !DILocation(line: 55, column: 10, scope: !3843, inlinedAt: !4189)
!4195 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4194)
!4196 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4194)
!4197 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4194)
!4198 = !DILocation(line: 328, column: 3, scope: !4179)
!4199 = !DILocation(line: 328, column: 13, scope: !4179)
!4200 = !DILocation(line: 0, scope: !4147, inlinedAt: !4201)
!4201 = distinct !DILocation(line: 329, column: 10, scope: !4179)
!4202 = !DILocation(line: 29, column: 10, scope: !4147, inlinedAt: !4201)
!4203 = !DILocation(line: 329, column: 3, scope: !4179)
!4204 = distinct !DISubprogram(name: "xstrdup", scope: !398, file: !398, line: 335, type: !684, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !397, retainedNodes: !4205)
!4205 = !{!4206}
!4206 = !DILocalVariable(name: "string", arg: 1, scope: !4204, file: !398, line: 335, type: !61)
!4207 = !DILocation(line: 0, scope: !4204)
!4208 = !DILocation(line: 337, column: 27, scope: !4204)
!4209 = !DILocation(line: 337, column: 43, scope: !4204)
!4210 = !DILocation(line: 0, scope: !4131, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 337, column: 10, scope: !4204)
!4212 = !DILocation(line: 0, scope: !3830, inlinedAt: !4213)
!4213 = distinct !DILocation(line: 312, column: 18, scope: !4131, inlinedAt: !4211)
!4214 = !DILocation(line: 49, column: 25, scope: !3830, inlinedAt: !4213)
!4215 = !DILocation(line: 0, scope: !3811, inlinedAt: !4216)
!4216 = distinct !DILocation(line: 49, column: 10, scope: !3830, inlinedAt: !4213)
!4217 = !DILocation(line: 39, column: 8, scope: !3818, inlinedAt: !4216)
!4218 = !DILocation(line: 39, column: 7, scope: !3811, inlinedAt: !4216)
!4219 = !DILocation(line: 40, column: 5, scope: !3818, inlinedAt: !4216)
!4220 = !DILocation(line: 0, scope: !4147, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 312, column: 10, scope: !4131, inlinedAt: !4211)
!4222 = !DILocation(line: 29, column: 10, scope: !4147, inlinedAt: !4221)
!4223 = !DILocation(line: 337, column: 3, scope: !4204)
!4224 = distinct !DISubprogram(name: "xalloc_die", scope: !432, file: !432, line: 32, type: !230, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !431, retainedNodes: !4225)
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "__errstatus", scope: !4227, file: !432, line: 34, type: !4228)
!4227 = distinct !DILexicalBlock(scope: !4224, file: !432, line: 34, column: 3)
!4228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!4229 = !DILocation(line: 34, column: 3, scope: !4227)
!4230 = !DILocation(line: 0, scope: !4227)
!4231 = !DILocation(line: 40, column: 3, scope: !4224)
!4232 = distinct !DISubprogram(name: "xstrtoimax", scope: !4233, file: !4233, line: 71, type: !4234, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !4237)
!4233 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!709, !61, !695, !56, !4236, !61}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4250, !4251}
!4238 = !DILocalVariable(name: "nptr", arg: 1, scope: !4232, file: !4233, line: 71, type: !61)
!4239 = !DILocalVariable(name: "endptr", arg: 2, scope: !4232, file: !4233, line: 71, type: !695)
!4240 = !DILocalVariable(name: "base", arg: 3, scope: !4232, file: !4233, line: 71, type: !56)
!4241 = !DILocalVariable(name: "val", arg: 4, scope: !4232, file: !4233, line: 72, type: !4236)
!4242 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4232, file: !4233, line: 72, type: !61)
!4243 = !DILocalVariable(name: "t_ptr", scope: !4232, file: !4233, line: 74, type: !53)
!4244 = !DILocalVariable(name: "p", scope: !4232, file: !4233, line: 75, type: !695)
!4245 = !DILocalVariable(name: "tmp", scope: !4232, file: !4233, line: 91, type: !437)
!4246 = !DILocalVariable(name: "err", scope: !4232, file: !4233, line: 92, type: !709)
!4247 = !DILocalVariable(name: "xbase", scope: !4248, file: !4233, line: 126, type: !56)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !4233, line: 119, column: 5)
!4249 = distinct !DILexicalBlock(scope: !4232, file: !4233, line: 118, column: 7)
!4250 = !DILocalVariable(name: "suffixes", scope: !4248, file: !4233, line: 127, type: !56)
!4251 = !DILocalVariable(name: "overflow", scope: !4248, file: !4233, line: 156, type: !709)
!4252 = !DILocation(line: 0, scope: !4232)
!4253 = !DILocation(line: 74, column: 3, scope: !4232)
!4254 = !DILocation(line: 75, column: 14, scope: !4232)
!4255 = !DILocation(line: 90, column: 3, scope: !4232)
!4256 = !DILocation(line: 90, column: 9, scope: !4232)
!4257 = !DILocation(line: 91, column: 20, scope: !4232)
!4258 = !DILocation(line: 94, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4232, file: !4233, line: 94, column: 7)
!4260 = !DILocation(line: 94, column: 10, scope: !4259)
!4261 = !DILocation(line: 94, column: 7, scope: !4232)
!4262 = !DILocation(line: 98, column: 14, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !4233, line: 98, column: 11)
!4264 = distinct !DILexicalBlock(scope: !4259, file: !4233, line: 95, column: 5)
!4265 = !DILocation(line: 98, column: 29, scope: !4263)
!4266 = !DILocation(line: 98, column: 32, scope: !4263)
!4267 = !DILocation(line: 98, column: 38, scope: !4263)
!4268 = !DILocation(line: 98, column: 41, scope: !4263)
!4269 = !DILocation(line: 98, column: 11, scope: !4264)
!4270 = !DILocation(line: 102, column: 12, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4259, file: !4233, line: 102, column: 12)
!4272 = !DILocation(line: 102, column: 12, scope: !4259)
!4273 = !DILocation(line: 107, column: 5, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4271, file: !4233, line: 103, column: 5)
!4275 = !DILocation(line: 112, column: 8, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4232, file: !4233, line: 112, column: 7)
!4277 = !DILocation(line: 112, column: 7, scope: !4232)
!4278 = !DILocation(line: 114, column: 12, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4276, file: !4233, line: 113, column: 5)
!4280 = !DILocation(line: 115, column: 7, scope: !4279)
!4281 = !DILocation(line: 118, column: 7, scope: !4249)
!4282 = !DILocation(line: 118, column: 11, scope: !4249)
!4283 = !DILocation(line: 118, column: 7, scope: !4232)
!4284 = !DILocation(line: 120, column: 12, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4248, file: !4233, line: 120, column: 11)
!4286 = !DILocation(line: 120, column: 11, scope: !4248)
!4287 = !DILocation(line: 122, column: 16, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4285, file: !4233, line: 121, column: 9)
!4289 = !DILocation(line: 123, column: 22, scope: !4288)
!4290 = !DILocation(line: 123, column: 11, scope: !4288)
!4291 = !DILocation(line: 0, scope: !4248)
!4292 = !DILocation(line: 128, column: 7, scope: !4248)
!4293 = !DILocation(line: 140, column: 15, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !4233, line: 140, column: 15)
!4295 = distinct !DILexicalBlock(scope: !4248, file: !4233, line: 129, column: 9)
!4296 = !DILocation(line: 140, column: 15, scope: !4295)
!4297 = !DILocation(line: 141, column: 21, scope: !4294)
!4298 = !DILocation(line: 141, column: 13, scope: !4294)
!4299 = !DILocation(line: 144, column: 21, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4301, file: !4233, line: 144, column: 21)
!4301 = distinct !DILexicalBlock(scope: !4294, file: !4233, line: 142, column: 15)
!4302 = !DILocation(line: 144, column: 29, scope: !4300)
!4303 = !DILocation(line: 144, column: 21, scope: !4301)
!4304 = !DILocation(line: 152, column: 17, scope: !4301)
!4305 = !DILocation(line: 157, column: 7, scope: !4248)
!4306 = !DILocalVariable(name: "err", scope: !4307, file: !4233, line: 64, type: !709)
!4307 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4233, file: !4233, line: 62, type: !4308, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !4310)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{!709, !4236, !56, !56}
!4310 = !{!4311, !4312, !4313, !4306}
!4311 = !DILocalVariable(name: "x", arg: 1, scope: !4307, file: !4233, line: 62, type: !4236)
!4312 = !DILocalVariable(name: "base", arg: 2, scope: !4307, file: !4233, line: 62, type: !56)
!4313 = !DILocalVariable(name: "power", arg: 3, scope: !4307, file: !4233, line: 62, type: !56)
!4314 = !DILocation(line: 0, scope: !4307, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 219, column: 22, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4248, file: !4233, line: 158, column: 9)
!4317 = !DILocalVariable(name: "x", arg: 1, scope: !4318, file: !4233, line: 47, type: !4236)
!4318 = distinct !DISubprogram(name: "bkm_scale", scope: !4233, file: !4233, line: 47, type: !4319, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !433, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!709, !4236, !56}
!4321 = !{!4317, !4322, !4323}
!4322 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4318, file: !4233, line: 47, type: !56)
!4323 = !DILocalVariable(name: "scaled", scope: !4318, file: !4233, line: 49, type: !437)
!4324 = !DILocation(line: 0, scope: !4318, inlinedAt: !4325)
!4325 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4315)
!4326 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4325)
!4327 = distinct !DILexicalBlock(scope: !4318, file: !4233, line: 50, column: 7)
!4328 = !DILocation(line: 0, scope: !4307, inlinedAt: !4329)
!4329 = distinct !DILocation(line: 215, column: 22, scope: !4316)
!4330 = !DILocation(line: 0, scope: !4318, inlinedAt: !4331)
!4331 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4329)
!4332 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4331)
!4333 = !DILocation(line: 0, scope: !4307, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 202, column: 22, scope: !4316)
!4335 = !DILocation(line: 0, scope: !4318, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4334)
!4337 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4336)
!4338 = !DILocation(line: 0, scope: !4307, inlinedAt: !4339)
!4339 = distinct !DILocation(line: 198, column: 22, scope: !4316)
!4340 = !DILocation(line: 0, scope: !4318, inlinedAt: !4341)
!4341 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4339)
!4342 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4341)
!4343 = !DILocation(line: 0, scope: !4307, inlinedAt: !4344)
!4344 = distinct !DILocation(line: 194, column: 22, scope: !4316)
!4345 = !DILocation(line: 0, scope: !4318, inlinedAt: !4346)
!4346 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4344)
!4347 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4346)
!4348 = !DILocation(line: 0, scope: !4307, inlinedAt: !4349)
!4349 = distinct !DILocation(line: 175, column: 22, scope: !4316)
!4350 = !DILocation(line: 0, scope: !4318, inlinedAt: !4351)
!4351 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4349)
!4352 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4351)
!4353 = !DILocation(line: 0, scope: !4318, inlinedAt: !4354)
!4354 = distinct !DILocation(line: 160, column: 22, scope: !4316)
!4355 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4354)
!4356 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4354)
!4357 = !DILocation(line: 0, scope: !4318, inlinedAt: !4358)
!4358 = distinct !DILocation(line: 167, column: 22, scope: !4316)
!4359 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4358)
!4360 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4358)
!4361 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4349)
!4362 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4351)
!4363 = !DILocation(line: 227, column: 11, scope: !4248)
!4364 = !DILocation(line: 0, scope: !4307, inlinedAt: !4365)
!4365 = distinct !DILocation(line: 180, column: 22, scope: !4316)
!4366 = !DILocation(line: 0, scope: !4318, inlinedAt: !4367)
!4367 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4365)
!4368 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4367)
!4369 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4367)
!4370 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4365)
!4371 = !DILocation(line: 0, scope: !4307, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 185, column: 22, scope: !4316)
!4373 = !DILocation(line: 0, scope: !4318, inlinedAt: !4374)
!4374 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4372)
!4375 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4374)
!4376 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4374)
!4377 = !DILocation(line: 0, scope: !4307, inlinedAt: !4378)
!4378 = distinct !DILocation(line: 190, column: 22, scope: !4316)
!4379 = !DILocation(line: 0, scope: !4318, inlinedAt: !4380)
!4380 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4378)
!4381 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4380)
!4382 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4380)
!4383 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4378)
!4384 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4344)
!4385 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4346)
!4386 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4339)
!4387 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4341)
!4388 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4334)
!4389 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4336)
!4390 = !DILocation(line: 0, scope: !4307, inlinedAt: !4391)
!4391 = distinct !DILocation(line: 207, column: 22, scope: !4316)
!4392 = !DILocation(line: 0, scope: !4318, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 66, column: 12, scope: !4307, inlinedAt: !4391)
!4394 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4393)
!4395 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4393)
!4396 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4391)
!4397 = !DILocation(line: 0, scope: !4318, inlinedAt: !4398)
!4398 = distinct !DILocation(line: 211, column: 22, scope: !4316)
!4399 = !DILocation(line: 50, column: 7, scope: !4327, inlinedAt: !4398)
!4400 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4398)
!4401 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4329)
!4402 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4331)
!4403 = !DILocation(line: 66, column: 9, scope: !4307, inlinedAt: !4315)
!4404 = !DILocation(line: 50, column: 7, scope: !4318, inlinedAt: !4325)
!4405 = !DILocation(line: 0, scope: !4316)
!4406 = !DILocation(line: 228, column: 10, scope: !4248)
!4407 = !DILocation(line: 229, column: 11, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4248, file: !4233, line: 229, column: 11)
!4409 = !DILocation(line: 229, column: 11, scope: !4248)
!4410 = !DILocation(line: 223, column: 16, scope: !4316)
!4411 = !DILocation(line: 224, column: 22, scope: !4316)
!4412 = !DILocation(line: 100, column: 11, scope: !4264)
!4413 = !DILocation(line: 92, column: 16, scope: !4232)
!4414 = !DILocation(line: 233, column: 8, scope: !4232)
!4415 = !DILocation(line: 234, column: 3, scope: !4232)
!4416 = !DILocation(line: 235, column: 1, scope: !4232)
!4417 = !DISubprogram(name: "strtoimax", scope: !4418, file: !4418, line: 297, type: !4419, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!4418 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!437, !568, !4421, !56}
!4421 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !695)
!4422 = distinct !DISubprogram(name: "rpl_fopen", scope: !441, file: !441, line: 46, type: !4423, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4459)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!4425, !61, !61}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4427)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4428)
!4428 = !{!4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4458}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4427, file: !95, line: 51, baseType: !56, size: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4427, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4427, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4427, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4427, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4427, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4427, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4427, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4427, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4427, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4427, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4427, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4427, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4427, file: !95, line: 70, baseType: !4443, size: 64, offset: 832)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4427, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4427, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4427, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4427, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4427, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4427, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4427, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4427, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4427, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4427, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4427, file: !95, line: 93, baseType: !4443, size: 64, offset: 1344)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4427, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4427, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4427, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4427, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!4459 = !{!4460, !4461, !4462, !4463, !4464, !4465, !4469, !4471, !4472, !4477, !4480, !4481}
!4460 = !DILocalVariable(name: "filename", arg: 1, scope: !4422, file: !441, line: 46, type: !61)
!4461 = !DILocalVariable(name: "mode", arg: 2, scope: !4422, file: !441, line: 46, type: !61)
!4462 = !DILocalVariable(name: "open_direction", scope: !4422, file: !441, line: 54, type: !56)
!4463 = !DILocalVariable(name: "open_flags", scope: !4422, file: !441, line: 55, type: !56)
!4464 = !DILocalVariable(name: "open_flags_gnu", scope: !4422, file: !441, line: 57, type: !78)
!4465 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4422, file: !441, line: 59, type: !4466)
!4466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 648, elements: !4467)
!4467 = !{!4468}
!4468 = !DISubrange(count: 81)
!4469 = !DILocalVariable(name: "p", scope: !4470, file: !441, line: 62, type: !61)
!4470 = distinct !DILexicalBlock(scope: !4422, file: !441, line: 61, column: 3)
!4471 = !DILocalVariable(name: "q", scope: !4470, file: !441, line: 64, type: !53)
!4472 = !DILocalVariable(name: "len", scope: !4473, file: !441, line: 128, type: !58)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !441, line: 127, column: 9)
!4474 = distinct !DILexicalBlock(scope: !4475, file: !441, line: 68, column: 7)
!4475 = distinct !DILexicalBlock(scope: !4476, file: !441, line: 67, column: 5)
!4476 = distinct !DILexicalBlock(scope: !4470, file: !441, line: 67, column: 5)
!4477 = !DILocalVariable(name: "fd", scope: !4478, file: !441, line: 199, type: !56)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !441, line: 198, column: 5)
!4479 = distinct !DILexicalBlock(scope: !4422, file: !441, line: 197, column: 7)
!4480 = !DILocalVariable(name: "fp", scope: !4478, file: !441, line: 204, type: !4425)
!4481 = !DILocalVariable(name: "saved_errno", scope: !4482, file: !441, line: 207, type: !56)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !441, line: 206, column: 9)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !441, line: 205, column: 11)
!4484 = !DILocation(line: 0, scope: !4422)
!4485 = !DILocation(line: 59, column: 3, scope: !4422)
!4486 = !DILocation(line: 59, column: 8, scope: !4422)
!4487 = !DILocation(line: 0, scope: !4470)
!4488 = !DILocation(line: 67, column: 5, scope: !4470)
!4489 = !DILocation(line: 64, column: 11, scope: !4470)
!4490 = !DILocation(line: 54, column: 7, scope: !4422)
!4491 = !DILocation(line: 67, column: 12, scope: !4475)
!4492 = !DILocation(line: 67, column: 5, scope: !4476)
!4493 = !DILocation(line: 74, column: 19, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !441, line: 74, column: 17)
!4495 = distinct !DILexicalBlock(scope: !4474, file: !441, line: 70, column: 11)
!4496 = !DILocation(line: 74, column: 17, scope: !4495)
!4497 = !DILocation(line: 75, column: 17, scope: !4494)
!4498 = !DILocation(line: 75, column: 20, scope: !4494)
!4499 = !DILocation(line: 75, column: 15, scope: !4494)
!4500 = !DILocation(line: 80, column: 24, scope: !4495)
!4501 = !DILocation(line: 82, column: 19, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4495, file: !441, line: 82, column: 17)
!4503 = !DILocation(line: 82, column: 17, scope: !4495)
!4504 = !DILocation(line: 83, column: 17, scope: !4502)
!4505 = !DILocation(line: 83, column: 20, scope: !4502)
!4506 = !DILocation(line: 83, column: 15, scope: !4502)
!4507 = !DILocation(line: 88, column: 24, scope: !4495)
!4508 = !DILocation(line: 90, column: 19, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4495, file: !441, line: 90, column: 17)
!4510 = !DILocation(line: 90, column: 17, scope: !4495)
!4511 = !DILocation(line: 91, column: 17, scope: !4509)
!4512 = !DILocation(line: 91, column: 20, scope: !4509)
!4513 = !DILocation(line: 91, column: 15, scope: !4509)
!4514 = !DILocation(line: 100, column: 19, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4495, file: !441, line: 100, column: 17)
!4516 = !DILocation(line: 100, column: 17, scope: !4495)
!4517 = !DILocation(line: 101, column: 17, scope: !4515)
!4518 = !DILocation(line: 101, column: 20, scope: !4515)
!4519 = !DILocation(line: 101, column: 15, scope: !4515)
!4520 = !DILocation(line: 107, column: 19, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4495, file: !441, line: 107, column: 17)
!4522 = !DILocation(line: 107, column: 17, scope: !4495)
!4523 = !DILocation(line: 108, column: 17, scope: !4521)
!4524 = !DILocation(line: 108, column: 20, scope: !4521)
!4525 = !DILocation(line: 108, column: 15, scope: !4521)
!4526 = !DILocation(line: 113, column: 24, scope: !4495)
!4527 = !DILocation(line: 115, column: 13, scope: !4495)
!4528 = !DILocation(line: 117, column: 24, scope: !4495)
!4529 = !DILocation(line: 119, column: 13, scope: !4495)
!4530 = !DILocation(line: 128, column: 24, scope: !4473)
!4531 = !DILocation(line: 0, scope: !4473)
!4532 = !DILocation(line: 129, column: 48, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4473, file: !441, line: 129, column: 15)
!4534 = !DILocation(line: 129, column: 19, scope: !4533)
!4535 = !DILocation(line: 129, column: 15, scope: !4473)
!4536 = !DILocalVariable(name: "__dest", arg: 1, scope: !4537, file: !873, line: 26, type: !4150)
!4537 = distinct !DISubprogram(name: "memcpy", scope: !873, file: !873, line: 26, type: !4148, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4538)
!4538 = !{!4536, !4539, !4540}
!4539 = !DILocalVariable(name: "__src", arg: 2, scope: !4537, file: !873, line: 26, type: !689)
!4540 = !DILocalVariable(name: "__len", arg: 3, scope: !4537, file: !873, line: 26, type: !58)
!4541 = !DILocation(line: 0, scope: !4537, inlinedAt: !4542)
!4542 = distinct !DILocation(line: 131, column: 11, scope: !4473)
!4543 = !DILocation(line: 29, column: 10, scope: !4537, inlinedAt: !4542)
!4544 = !DILocation(line: 132, column: 13, scope: !4473)
!4545 = !DILocation(line: 135, column: 9, scope: !4474)
!4546 = !DILocation(line: 67, column: 25, scope: !4475)
!4547 = !DILocation(line: 67, column: 5, scope: !4475)
!4548 = distinct !{!4548, !4492, !4549, !539}
!4549 = !DILocation(line: 136, column: 7, scope: !4476)
!4550 = !DILocation(line: 138, column: 8, scope: !4470)
!4551 = !DILocation(line: 197, column: 7, scope: !4422)
!4552 = !DILocation(line: 199, column: 47, scope: !4478)
!4553 = !DILocation(line: 199, column: 16, scope: !4478)
!4554 = !DILocation(line: 0, scope: !4478)
!4555 = !DILocation(line: 201, column: 14, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4478, file: !441, line: 201, column: 11)
!4557 = !DILocation(line: 201, column: 11, scope: !4478)
!4558 = !DILocation(line: 204, column: 18, scope: !4478)
!4559 = !DILocation(line: 205, column: 14, scope: !4483)
!4560 = !DILocation(line: 205, column: 11, scope: !4478)
!4561 = !DILocation(line: 207, column: 29, scope: !4482)
!4562 = !DILocation(line: 0, scope: !4482)
!4563 = !DILocation(line: 208, column: 11, scope: !4482)
!4564 = !DILocation(line: 209, column: 17, scope: !4482)
!4565 = !DILocation(line: 210, column: 9, scope: !4482)
!4566 = !DILocalVariable(name: "filename", arg: 1, scope: !4567, file: !441, line: 30, type: !61)
!4567 = distinct !DISubprogram(name: "orig_fopen", scope: !441, file: !441, line: 30, type: !4423, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !440, retainedNodes: !4568)
!4568 = !{!4566, !4569}
!4569 = !DILocalVariable(name: "mode", arg: 2, scope: !4567, file: !441, line: 30, type: !61)
!4570 = !DILocation(line: 0, scope: !4567, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 219, column: 10, scope: !4422)
!4572 = !DILocation(line: 32, column: 10, scope: !4567, inlinedAt: !4571)
!4573 = !DILocation(line: 219, column: 3, scope: !4422)
!4574 = !DILocation(line: 220, column: 1, scope: !4422)
!4575 = !DISubprogram(name: "open", scope: !1875, file: !1875, line: 181, type: !4576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!4576 = !DISubroutineType(types: !4577)
!4577 = !{!56, !61, !56, null}
!4578 = !DISubprogram(name: "fdopen", scope: !203, file: !203, line: 293, type: !4579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!4425, !56, !61}
!4581 = !DISubprogram(name: "close", scope: !2079, file: !2079, line: 358, type: !859, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!4582 = distinct !DISubprogram(name: "close_stream", scope: !443, file: !443, line: 55, type: !4583, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4619)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!56, !4585}
!4585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4586, size: 64)
!4586 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4587)
!4587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618}
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4587, file: !95, line: 51, baseType: !56, size: 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4587, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4587, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4587, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4587, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4587, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4587, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4587, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4587, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4587, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4587, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4587, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4587, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4587, file: !95, line: 70, baseType: !4603, size: 64, offset: 832)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4587, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4587, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4587, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4587, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4587, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4587, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4587, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4587, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4587, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4587, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4587, file: !95, line: 93, baseType: !4603, size: 64, offset: 1344)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4587, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4587, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4587, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4587, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!4619 = !{!4620, !4621, !4623, !4624}
!4620 = !DILocalVariable(name: "stream", arg: 1, scope: !4582, file: !443, line: 55, type: !4585)
!4621 = !DILocalVariable(name: "some_pending", scope: !4582, file: !443, line: 57, type: !4622)
!4622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4623 = !DILocalVariable(name: "prev_fail", scope: !4582, file: !443, line: 58, type: !4622)
!4624 = !DILocalVariable(name: "fclose_fail", scope: !4582, file: !443, line: 59, type: !4622)
!4625 = !DILocation(line: 0, scope: !4582)
!4626 = !DILocation(line: 57, column: 30, scope: !4582)
!4627 = !DILocalVariable(name: "__stream", arg: 1, scope: !4628, file: !891, line: 135, type: !4585)
!4628 = distinct !DISubprogram(name: "ferror_unlocked", scope: !891, file: !891, line: 135, type: !4583, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !4629)
!4629 = !{!4627}
!4630 = !DILocation(line: 0, scope: !4628, inlinedAt: !4631)
!4631 = distinct !DILocation(line: 58, column: 27, scope: !4582)
!4632 = !DILocation(line: 137, column: 10, scope: !4628, inlinedAt: !4631)
!4633 = !DILocation(line: 58, column: 43, scope: !4582)
!4634 = !DILocation(line: 59, column: 29, scope: !4582)
!4635 = !DILocation(line: 59, column: 45, scope: !4582)
!4636 = !DILocation(line: 69, column: 17, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4582, file: !443, line: 69, column: 7)
!4638 = !DILocation(line: 57, column: 50, scope: !4582)
!4639 = !DILocation(line: 69, column: 33, scope: !4637)
!4640 = !DILocation(line: 69, column: 53, scope: !4637)
!4641 = !DILocation(line: 69, column: 59, scope: !4637)
!4642 = !DILocation(line: 69, column: 7, scope: !4582)
!4643 = !DILocation(line: 71, column: 11, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4637, file: !443, line: 70, column: 5)
!4645 = !DILocation(line: 72, column: 9, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4644, file: !443, line: 71, column: 11)
!4647 = !DILocation(line: 72, column: 15, scope: !4646)
!4648 = !DILocation(line: 77, column: 1, scope: !4582)
!4649 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !364, file: !364, line: 100, type: !4650, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !4653)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!58, !2340, !61, !58, !4652}
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!4653 = !{!4654, !4655, !4656, !4657, !4658}
!4654 = !DILocalVariable(name: "pwc", arg: 1, scope: !4649, file: !364, line: 100, type: !2340)
!4655 = !DILocalVariable(name: "s", arg: 2, scope: !4649, file: !364, line: 100, type: !61)
!4656 = !DILocalVariable(name: "n", arg: 3, scope: !4649, file: !364, line: 100, type: !58)
!4657 = !DILocalVariable(name: "ps", arg: 4, scope: !4649, file: !364, line: 100, type: !4652)
!4658 = !DILocalVariable(name: "ret", scope: !4649, file: !364, line: 130, type: !58)
!4659 = !DILocation(line: 0, scope: !4649)
!4660 = !DILocation(line: 105, column: 9, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4649, file: !364, line: 105, column: 7)
!4662 = !DILocation(line: 105, column: 7, scope: !4649)
!4663 = !DILocation(line: 117, column: 10, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4649, file: !364, line: 117, column: 7)
!4665 = !DILocation(line: 117, column: 7, scope: !4649)
!4666 = !DILocation(line: 130, column: 16, scope: !4649)
!4667 = !DILocation(line: 135, column: 11, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4649, file: !364, line: 135, column: 7)
!4669 = !DILocation(line: 135, column: 25, scope: !4668)
!4670 = !DILocation(line: 135, column: 30, scope: !4668)
!4671 = !DILocation(line: 135, column: 7, scope: !4649)
!4672 = !DILocalVariable(name: "ps", arg: 1, scope: !4673, file: !2314, line: 1135, type: !4652)
!4673 = distinct !DISubprogram(name: "mbszero", scope: !2314, file: !2314, line: 1135, type: !4674, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !4676)
!4674 = !DISubroutineType(types: !4675)
!4675 = !{null, !4652}
!4676 = !{!4672}
!4677 = !DILocation(line: 0, scope: !4673, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 137, column: 5, scope: !4668)
!4679 = !DILocalVariable(name: "__dest", arg: 1, scope: !4680, file: !873, line: 57, type: !55)
!4680 = distinct !DISubprogram(name: "memset", scope: !873, file: !873, line: 57, type: !2323, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !363, retainedNodes: !4681)
!4681 = !{!4679, !4682, !4683}
!4682 = !DILocalVariable(name: "__ch", arg: 2, scope: !4680, file: !873, line: 57, type: !56)
!4683 = !DILocalVariable(name: "__len", arg: 3, scope: !4680, file: !873, line: 57, type: !58)
!4684 = !DILocation(line: 0, scope: !4680, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 1137, column: 3, scope: !4673, inlinedAt: !4678)
!4686 = !DILocation(line: 59, column: 10, scope: !4680, inlinedAt: !4685)
!4687 = !DILocation(line: 137, column: 5, scope: !4668)
!4688 = !DILocation(line: 138, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4649, file: !364, line: 138, column: 7)
!4690 = !DILocation(line: 138, column: 7, scope: !4649)
!4691 = !DILocation(line: 139, column: 5, scope: !4689)
!4692 = !DILocation(line: 143, column: 26, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4649, file: !364, line: 143, column: 7)
!4694 = !DILocation(line: 143, column: 41, scope: !4693)
!4695 = !DILocation(line: 143, column: 7, scope: !4649)
!4696 = !DILocation(line: 145, column: 15, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !364, line: 145, column: 11)
!4698 = distinct !DILexicalBlock(scope: !4693, file: !364, line: 144, column: 5)
!4699 = !DILocation(line: 145, column: 11, scope: !4698)
!4700 = !DILocation(line: 146, column: 32, scope: !4697)
!4701 = !DILocation(line: 146, column: 16, scope: !4697)
!4702 = !DILocation(line: 146, column: 14, scope: !4697)
!4703 = !DILocation(line: 146, column: 9, scope: !4697)
!4704 = !DILocation(line: 286, column: 1, scope: !4649)
!4705 = !DISubprogram(name: "mbsinit", scope: !4706, file: !4706, line: 293, type: !4707, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !485)
!4706 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4707 = !DISubroutineType(types: !4708)
!4708 = !{!56, !4709}
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!4711 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !445, file: !445, line: 27, type: !3795, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4712)
!4712 = !{!4713, !4714, !4715, !4716}
!4713 = !DILocalVariable(name: "ptr", arg: 1, scope: !4711, file: !445, line: 27, type: !55)
!4714 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4711, file: !445, line: 27, type: !58)
!4715 = !DILocalVariable(name: "size", arg: 3, scope: !4711, file: !445, line: 27, type: !58)
!4716 = !DILocalVariable(name: "nbytes", scope: !4711, file: !445, line: 29, type: !58)
!4717 = !DILocation(line: 0, scope: !4711)
!4718 = !DILocation(line: 30, column: 7, scope: !4719)
!4719 = distinct !DILexicalBlock(scope: !4711, file: !445, line: 30, column: 7)
!4720 = !DILocalVariable(name: "ptr", arg: 1, scope: !4721, file: !3883, line: 2057, type: !55)
!4721 = distinct !DISubprogram(name: "rpl_realloc", scope: !3883, file: !3883, line: 2057, type: !3875, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !444, retainedNodes: !4722)
!4722 = !{!4720, !4723}
!4723 = !DILocalVariable(name: "size", arg: 2, scope: !4721, file: !3883, line: 2057, type: !58)
!4724 = !DILocation(line: 0, scope: !4721, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 37, column: 10, scope: !4711)
!4726 = !DILocation(line: 2059, column: 24, scope: !4721, inlinedAt: !4725)
!4727 = !DILocation(line: 2059, column: 10, scope: !4721, inlinedAt: !4725)
!4728 = !DILocation(line: 37, column: 3, scope: !4711)
!4729 = !DILocation(line: 32, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4719, file: !445, line: 31, column: 5)
!4731 = !DILocation(line: 32, column: 13, scope: !4730)
!4732 = !DILocation(line: 33, column: 7, scope: !4730)
!4733 = !DILocation(line: 38, column: 1, scope: !4711)
!4734 = distinct !DISubprogram(name: "hard_locale", scope: !448, file: !448, line: 28, type: !4735, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !4737)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!78, !56}
!4737 = !{!4738, !4739}
!4738 = !DILocalVariable(name: "category", arg: 1, scope: !4734, file: !448, line: 28, type: !56)
!4739 = !DILocalVariable(name: "locale", scope: !4734, file: !448, line: 30, type: !4740)
!4740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2056, elements: !4741)
!4741 = !{!4742}
!4742 = !DISubrange(count: 257)
!4743 = !DILocation(line: 0, scope: !4734)
!4744 = !DILocation(line: 30, column: 3, scope: !4734)
!4745 = !DILocation(line: 30, column: 8, scope: !4734)
!4746 = !DILocation(line: 32, column: 7, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !4734, file: !448, line: 32, column: 7)
!4748 = !DILocation(line: 32, column: 7, scope: !4734)
!4749 = !DILocalVariable(name: "__s1", arg: 1, scope: !4750, file: !523, line: 1359, type: !61)
!4750 = distinct !DISubprogram(name: "streq", scope: !523, file: !523, line: 1359, type: !524, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !447, retainedNodes: !4751)
!4751 = !{!4749, !4752}
!4752 = !DILocalVariable(name: "__s2", arg: 2, scope: !4750, file: !523, line: 1359, type: !61)
!4753 = !DILocation(line: 0, scope: !4750, inlinedAt: !4754)
!4754 = distinct !DILocation(line: 35, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4734, file: !448, line: 35, column: 7)
!4756 = !DILocation(line: 1361, column: 11, scope: !4750, inlinedAt: !4754)
!4757 = !DILocation(line: 1361, column: 10, scope: !4750, inlinedAt: !4754)
!4758 = !DILocation(line: 35, column: 29, scope: !4755)
!4759 = !DILocation(line: 0, scope: !4750, inlinedAt: !4760)
!4760 = distinct !DILocation(line: 35, column: 32, scope: !4755)
!4761 = !DILocation(line: 1361, column: 11, scope: !4750, inlinedAt: !4760)
!4762 = !DILocation(line: 1361, column: 10, scope: !4750, inlinedAt: !4760)
!4763 = !DILocation(line: 35, column: 7, scope: !4734)
!4764 = !DILocation(line: 46, column: 3, scope: !4734)
!4765 = !DILocation(line: 47, column: 1, scope: !4734)
!4766 = distinct !DISubprogram(name: "setlocale_null_r", scope: !450, file: !450, line: 154, type: !4767, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4769)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!56, !56, !53, !58}
!4769 = !{!4770, !4771, !4772}
!4770 = !DILocalVariable(name: "category", arg: 1, scope: !4766, file: !450, line: 154, type: !56)
!4771 = !DILocalVariable(name: "buf", arg: 2, scope: !4766, file: !450, line: 154, type: !53)
!4772 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4766, file: !450, line: 154, type: !58)
!4773 = !DILocation(line: 0, scope: !4766)
!4774 = !DILocation(line: 159, column: 10, scope: !4766)
!4775 = !DILocation(line: 159, column: 3, scope: !4766)
!4776 = distinct !DISubprogram(name: "setlocale_null", scope: !450, file: !450, line: 186, type: !4777, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !449, retainedNodes: !4779)
!4777 = !DISubroutineType(types: !4778)
!4778 = !{!61, !56}
!4779 = !{!4780}
!4780 = !DILocalVariable(name: "category", arg: 1, scope: !4776, file: !450, line: 186, type: !56)
!4781 = !DILocation(line: 0, scope: !4776)
!4782 = !DILocation(line: 189, column: 10, scope: !4776)
!4783 = !DILocation(line: 189, column: 3, scope: !4776)
!4784 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !452, file: !452, line: 35, type: !4777, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !4785)
!4785 = !{!4786, !4787}
!4786 = !DILocalVariable(name: "category", arg: 1, scope: !4784, file: !452, line: 35, type: !56)
!4787 = !DILocalVariable(name: "result", scope: !4784, file: !452, line: 37, type: !61)
!4788 = !DILocation(line: 0, scope: !4784)
!4789 = !DILocation(line: 37, column: 24, scope: !4784)
!4790 = !DILocation(line: 62, column: 3, scope: !4784)
!4791 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !452, file: !452, line: 66, type: !4767, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797}
!4793 = !DILocalVariable(name: "category", arg: 1, scope: !4791, file: !452, line: 66, type: !56)
!4794 = !DILocalVariable(name: "buf", arg: 2, scope: !4791, file: !452, line: 66, type: !53)
!4795 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4791, file: !452, line: 66, type: !58)
!4796 = !DILocalVariable(name: "result", scope: !4791, file: !452, line: 111, type: !61)
!4797 = !DILocalVariable(name: "length", scope: !4798, file: !452, line: 125, type: !58)
!4798 = distinct !DILexicalBlock(scope: !4799, file: !452, line: 124, column: 5)
!4799 = distinct !DILexicalBlock(scope: !4791, file: !452, line: 113, column: 7)
!4800 = !DILocation(line: 0, scope: !4791)
!4801 = !DILocation(line: 0, scope: !4784, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 111, column: 24, scope: !4791)
!4803 = !DILocation(line: 37, column: 24, scope: !4784, inlinedAt: !4802)
!4804 = !DILocation(line: 113, column: 14, scope: !4799)
!4805 = !DILocation(line: 113, column: 7, scope: !4791)
!4806 = !DILocation(line: 116, column: 19, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4808, file: !452, line: 116, column: 11)
!4808 = distinct !DILexicalBlock(scope: !4799, file: !452, line: 114, column: 5)
!4809 = !DILocation(line: 116, column: 11, scope: !4808)
!4810 = !DILocation(line: 120, column: 16, scope: !4807)
!4811 = !DILocation(line: 120, column: 9, scope: !4807)
!4812 = !DILocation(line: 125, column: 23, scope: !4798)
!4813 = !DILocation(line: 0, scope: !4798)
!4814 = !DILocation(line: 126, column: 18, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4798, file: !452, line: 126, column: 11)
!4816 = !DILocation(line: 126, column: 11, scope: !4798)
!4817 = !DILocation(line: 128, column: 39, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4815, file: !452, line: 127, column: 9)
!4819 = !DILocalVariable(name: "__dest", arg: 1, scope: !4820, file: !873, line: 26, type: !4150)
!4820 = distinct !DISubprogram(name: "memcpy", scope: !873, file: !873, line: 26, type: !4148, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !451, retainedNodes: !4821)
!4821 = !{!4819, !4822, !4823}
!4822 = !DILocalVariable(name: "__src", arg: 2, scope: !4820, file: !873, line: 26, type: !689)
!4823 = !DILocalVariable(name: "__len", arg: 3, scope: !4820, file: !873, line: 26, type: !58)
!4824 = !DILocation(line: 0, scope: !4820, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 128, column: 11, scope: !4818)
!4826 = !DILocation(line: 29, column: 10, scope: !4820, inlinedAt: !4825)
!4827 = !DILocation(line: 129, column: 11, scope: !4818)
!4828 = !DILocation(line: 133, column: 23, scope: !4829)
!4829 = distinct !DILexicalBlock(scope: !4830, file: !452, line: 133, column: 15)
!4830 = distinct !DILexicalBlock(scope: !4815, file: !452, line: 132, column: 9)
!4831 = !DILocation(line: 133, column: 15, scope: !4830)
!4832 = !DILocation(line: 138, column: 44, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4829, file: !452, line: 134, column: 13)
!4834 = !DILocation(line: 0, scope: !4820, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 138, column: 15, scope: !4833)
!4836 = !DILocation(line: 29, column: 10, scope: !4820, inlinedAt: !4835)
!4837 = !DILocation(line: 139, column: 15, scope: !4833)
!4838 = !DILocation(line: 139, column: 32, scope: !4833)
!4839 = !DILocation(line: 140, column: 13, scope: !4833)
!4840 = !DILocation(line: 0, scope: !4799)
!4841 = !DILocation(line: 145, column: 1, scope: !4791)
