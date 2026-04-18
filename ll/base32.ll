; ModuleID = 'src/base32.bc'
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
%struct.base32_decode_context = type { i32, [8 x i8] }
%"struct.std::__va_list" = type { i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Usage: %s [OPTION]... [FILE]\0A\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"Base%d encode or decode FILE, or standard input, to standard output.\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"base32\00", align 1
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
@.str.66 = private unnamed_addr constant [32 x i8] c"auto_padding <= sizeof (padbuf)\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"src/basenc.c\00", align 1
@__PRETTY_FUNCTION__.decode_ctx_finalize = private unnamed_addr constant [85 x i8] c"_Bool decode_ctx_finalize(struct base32_decode_context *, char *restrict *, idx_t *)\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.69 = private unnamed_addr constant [23 x i8] c"closing standard input\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !164
@base32_to_int = dso_local local_unnamed_addr constant [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\1A\1B\1C\1D\1E\1F\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 1, !dbg !169
@base32_encode.b32str = internal unnamed_addr constant [32 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", align 1, !dbg !175
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !197
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !202
@.str.70 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.1.71 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.2.72 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.3.73 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@error_print_progname = dso_local local_unnamed_addr global void ()* null, align 8, !dbg !204
@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.74 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !240
@verror_at_line.old_file_name = internal unnamed_addr global i8* null, align 8, !dbg !210
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !236
@.str.1.80 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.2.82 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1
@.str.3.81 = private unnamed_addr constant [2 x i8] c" \00", align 1
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !238
@.str.4.75 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.5.76 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1
@.str.6.77 = private unnamed_addr constant [5 x i8] c": %s\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !245
@.str.101 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.1.102 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !251
@.str.105 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.106 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.107 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.108 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.109 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.110 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.111 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.112 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.113 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.114 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.106, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.107, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.108, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.109, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.110, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.111, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.112, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.113, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.114, i32 0, i32 0), i8* null], align 8, !dbg !287
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !299
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !317
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !345
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !352
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !319
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !354
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !305
@.str.10.117 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.11.115 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.118 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.13.116 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !322
@.str.125 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.126 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.127 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.3.128 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.4.129 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5.130 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@.str.6.131 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1
@.str.7.132 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.8.133 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.9.134 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.10.135 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.11.136 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.12.137 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.13.138 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.14.139 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.15.140 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.16.141 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17.146 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1
@.str.18.147 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.19.148 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.20.149 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21.150 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22.151 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1
@.str.23.152 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !360
@exit_failure = dso_local global i32 1, align 4, !dbg !368
@.str.167 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1.165 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1
@.str.2.166 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.176 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !374
@.str.181 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.182 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !475 {
  %2 = alloca [7 x %struct.infomap], align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !479, metadata !DIExpression()), !dbg !480
  %3 = icmp eq i32 %0, 0, !dbg !481
  br i1 %3, label %9, label %4, !dbg !483

4:                                                ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !484, !tbaa !486
  %6 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 noundef 5) #37, !dbg !484
  %7 = load i8*, i8** @program_name, align 8, !dbg !484, !tbaa !486
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %5, i32 noundef 1, i8* noundef %6, i8* noundef %7) #37, !dbg !484
  br label %62, !dbg !484

9:                                                ; preds = %1
  %10 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 noundef 5) #37, !dbg !490
  %11 = load i8*, i8** @program_name, align 8, !dbg !490, !tbaa !486
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %10, i8* noundef %11) #37, !dbg !490
  %13 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), i32 noundef 5) #37, !dbg !492
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %13, i32 noundef 32) #37, !dbg !492
  %15 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.22, i64 0, i64 0), i32 noundef 5) #37, !dbg !493
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !493, !tbaa !486
  %17 = tail call i32 @fputs_unlocked(i8* noundef %15, %struct._IO_FILE* noundef %16) #37, !dbg !493
  %18 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.23, i64 0, i64 0), i32 noundef 5) #37, !dbg !497
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !497, !tbaa !486
  %20 = tail call i32 @fputs_unlocked(i8* noundef %18, %struct._IO_FILE* noundef %19) #37, !dbg !497
  %21 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 noundef 5) #37, !dbg !500
  tail call fastcc void @oputs_(i8* noundef %21), !dbg !500
  %22 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 noundef 5) #37, !dbg !501
  tail call fastcc void @oputs_(i8* noundef %22), !dbg !501
  %23 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([122 x i8], [122 x i8]* @.str.6, i64 0, i64 0), i32 noundef 5) #37, !dbg !502
  tail call fastcc void @oputs_(i8* noundef %23), !dbg !502
  %24 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 noundef 5) #37, !dbg !503
  tail call fastcc void @oputs_(i8* noundef %24), !dbg !503
  %25 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0), i32 noundef 5) #37, !dbg !504
  tail call fastcc void @oputs_(i8* noundef %25), !dbg !504
  %26 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([268 x i8], [268 x i8]* @.str.9, i64 0, i64 0), i32 noundef 5) #37, !dbg !505
  %27 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %26, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #37, !dbg !505
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !506, metadata !DIExpression()) #37, !dbg !525
  %28 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %28) #37, !dbg !527
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !511, metadata !DIExpression()) #37, !dbg !528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(112) %28, i8* noundef nonnull align 8 dereferenceable(112) bitcast ([7 x %struct.infomap]* @__const.emit_ancillary_info.infomap to i8*), i64 112, i1 false) #37, !dbg !528
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !520, metadata !DIExpression()) #37, !dbg !525
  call void @llvm.dbg.value(metadata [7 x %struct.infomap]* %2, metadata !521, metadata !DIExpression()) #37, !dbg !525
  %29 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !529
  call void @llvm.dbg.value(metadata %struct.infomap* %29, metadata !521, metadata !DIExpression()) #37, !dbg !525
  br label %30, !dbg !530

30:                                               ; preds = %35, %9
  %31 = phi i8* [ %38, %35 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), %9 ]
  %32 = phi %struct.infomap* [ %36, %35 ], [ %29, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !521, metadata !DIExpression()) #37, !dbg !525
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !538
  call void @llvm.dbg.value(metadata i8* %31, metadata !537, metadata !DIExpression()) #37, !dbg !538
  %33 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef nonnull dereferenceable(1) %31) #38, !dbg !540
  %34 = icmp eq i32 %33, 0, !dbg !541
  br i1 %34, label %40, label %35, !dbg !530

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 1, !dbg !542
  call void @llvm.dbg.value(metadata %struct.infomap* %36, metadata !521, metadata !DIExpression()) #37, !dbg !525
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %36, i64 0, i32 0, !dbg !543
  %38 = load i8*, i8** %37, align 8, !dbg !543, !tbaa !544
  %39 = icmp eq i8* %38, null, !dbg !546
  br i1 %39, label %40, label %30, !dbg !547, !llvm.loop !548

40:                                               ; preds = %35, %30
  %41 = phi %struct.infomap* [ %32, %30 ], [ %36, %35 ]
  %42 = getelementptr inbounds %struct.infomap, %struct.infomap* %41, i64 0, i32 1, !dbg !550
  %43 = load i8*, i8** %42, align 8, !dbg !550, !tbaa !552
  %44 = icmp eq i8* %43, null, !dbg !553
  %45 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %43, !dbg !554
  call void @llvm.dbg.value(metadata i8* %45, metadata !520, metadata !DIExpression()) #37, !dbg !525
  tail call void @emit_bug_reporting_address() #37, !dbg !555
  %46 = tail call i8* @setlocale(i32 noundef 5, i8* noundef null) #37, !dbg !556
  call void @llvm.dbg.value(metadata i8* %46, metadata !523, metadata !DIExpression()) #37, !dbg !525
  %47 = icmp eq i8* %46, null, !dbg !557
  br i1 %47, label %55, label %48, !dbg !559

48:                                               ; preds = %40
  %49 = tail call i32 @strncmp(i8* noundef nonnull %46, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i64 noundef 3) #38, !dbg !560
  %50 = icmp eq i32 %49, 0, !dbg !560
  br i1 %50, label %55, label %51, !dbg !561

51:                                               ; preds = %48
  %52 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @.str.55, i64 0, i64 0), i32 noundef 5) #37, !dbg !562
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !562, !tbaa !486
  %54 = tail call i32 @fputs_unlocked(i8* noundef %52, %struct._IO_FILE* noundef %53) #37, !dbg !562
  br label %55, !dbg !564

55:                                               ; preds = %40, %48, %51
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), metadata !537, metadata !DIExpression()) #37, !dbg !565
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !524, metadata !DIExpression()) #37, !dbg !525
  %56 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.56, i64 0, i64 0), i32 noundef 5) #37, !dbg !567
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %56, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)) #37, !dbg !567
  %58 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([51 x i8], [51 x i8]* @.str.57, i64 0, i64 0), i32 noundef 5) #37, !dbg !568
  %59 = icmp eq i8* %45, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), !dbg !568
  %60 = select i1 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !568
  %61 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %58, i8* noundef %45, i8* noundef %60) #37, !dbg !568
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %28) #37, !dbg !569
  br label %62

62:                                               ; preds = %55, %4
  tail call void @exit(i32 noundef %0) #39, !dbg !570
  unreachable, !dbg !570
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !571 i8* @dcgettext(i8* noundef, i8* noundef, i32 noundef) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32 noundef, i8* noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !575 noundef i32 @fputs_unlocked(i8* nocapture noundef readonly, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(i8* noundef %0) unnamed_addr #5 !dbg !67 {
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !72, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i8* %0, metadata !73, metadata !DIExpression()), !dbg !579
  %2 = load i32, i32* @oputs_.help_no_sgr, align 4, !dbg !580, !tbaa !581
  %3 = icmp eq i32 %2, -1, !dbg !583
  br i1 %3, label %4, label %16, !dbg !584

4:                                                ; preds = %1
  %5 = tail call i8* @getenv(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0)) #37, !dbg !585
  call void @llvm.dbg.value(metadata i8* %5, metadata !74, metadata !DIExpression()), !dbg !586
  %6 = icmp eq i8* %5, null, !dbg !587
  br i1 %6, label %14, label %7, !dbg !588

7:                                                ; preds = %4
  %8 = load i8, i8* %5, align 1, !dbg !589, !tbaa !590
  %9 = icmp eq i8 %8, 0, !dbg !589
  br i1 %9, label %14, label %10, !dbg !591

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i8* %5, metadata !531, metadata !DIExpression()) #37, !dbg !592
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), metadata !537, metadata !DIExpression()) #37, !dbg !592
  %11 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %5, i8* noundef nonnull dereferenceable(5) getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0)) #38, !dbg !594
  %12 = icmp eq i32 %11, 0, !dbg !595
  %13 = zext i1 %12 to i32, !dbg !591
  br label %14, !dbg !591

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, i32* @oputs_.help_no_sgr, align 4, !dbg !596, !tbaa !581
  br label %16, !dbg !597

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !598
  %18 = icmp eq i32 %17, 0, !dbg !598
  br i1 %18, label %22, label %19, !dbg !600

19:                                               ; preds = %16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !601, !tbaa !486
  %21 = tail call i32 @fputs_unlocked(i8* noundef %0, %struct._IO_FILE* noundef %20), !dbg !601
  br label %121, !dbg !603

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !77, metadata !DIExpression()), !dbg !579
  %23 = tail call i64 @strspn(i8* noundef %0, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0)) #38, !dbg !604
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !605
  call void @llvm.dbg.value(metadata i8* %24, metadata !79, metadata !DIExpression()), !dbg !579
  %25 = tail call i8* @strchr(i8* noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !606
  call void @llvm.dbg.value(metadata i8* %25, metadata !80, metadata !DIExpression()), !dbg !579
  %26 = icmp eq i8* %25, null, !dbg !607
  br i1 %26, label %53, label %27, !dbg !608

27:                                               ; preds = %22
  %28 = icmp eq i8* %25, %24, !dbg !609
  br i1 %28, label %53, label %29, !dbg !610

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8* %24, metadata !81, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 0, metadata !85, metadata !DIExpression()), !dbg !611
  %30 = icmp ult i8* %24, %25, !dbg !612
  br i1 %30, label %31, label %53, !dbg !613

31:                                               ; preds = %29
  %32 = tail call i16** @__ctype_b_loc() #40, !dbg !579
  %33 = load i16*, i16** %32, align 8, !tbaa !486
  br label %34, !dbg !613

34:                                               ; preds = %31, %34
  %35 = phi i8* [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %45, %34 ]
  call void @llvm.dbg.value(metadata i8* %35, metadata !81, metadata !DIExpression()), !dbg !611
  call void @llvm.dbg.value(metadata i64 %36, metadata !85, metadata !DIExpression()), !dbg !611
  %37 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !614
  call void @llvm.dbg.value(metadata i8* %37, metadata !81, metadata !DIExpression()), !dbg !611
  %38 = load i8, i8* %35, align 1, !dbg !614, !tbaa !590
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, i16* %33, i64 %39, !dbg !614
  %41 = load i16, i16* %40, align 2, !dbg !614, !tbaa !615
  %42 = lshr i16 %41, 13, !dbg !617
  %43 = and i16 %42, 1, !dbg !617
  %44 = zext i16 %43 to i64
  %45 = add nuw nsw i64 %36, %44, !dbg !618
  call void @llvm.dbg.value(metadata i64 %45, metadata !85, metadata !DIExpression()), !dbg !611
  %46 = icmp ult i8* %37, %25, !dbg !612
  %47 = icmp ult i64 %45, 2, !dbg !619
  %48 = select i1 %46, i1 %47, i1 false, !dbg !619
  br i1 %48, label %34, label %49, !dbg !613, !llvm.loop !620

49:                                               ; preds = %34
  %50 = icmp eq i64 %45, 2, !dbg !621
  %51 = select i1 %50, i8* %24, i8* %25, !dbg !623
  %52 = xor i1 %50, true, !dbg !623
  br label %53, !dbg !623

53:                                               ; preds = %29, %49, %22, %27
  %54 = phi i8* [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %51, %49 ], !dbg !579
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %52, %49 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i8* %54, metadata !80, metadata !DIExpression()), !dbg !579
  %56 = tail call i64 @strcspn(i8* noundef %54, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #38, !dbg !624
  call void @llvm.dbg.value(metadata i64 %56, metadata !86, metadata !DIExpression()), !dbg !579
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !625
  call void @llvm.dbg.value(metadata i8* %57, metadata !87, metadata !DIExpression()), !dbg !579
  br label %58, !dbg !626

58:                                               ; preds = %89, %53
  %59 = phi i8* [ %57, %53 ], [ %90, %89 ], !dbg !579
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !579
  call void @llvm.dbg.value(metadata i8* %59, metadata !87, metadata !DIExpression()), !dbg !579
  %61 = load i8, i8* %59, align 1, !dbg !627, !tbaa !590
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !628

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !629
  %64 = load i8, i8* %63, align 1, !dbg !632, !tbaa !590
  %65 = icmp ne i8 %64, 45, !dbg !633
  %66 = select i1 %65, i1 %60, i1 false, !dbg !634
  br label %67, !dbg !634

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !77, metadata !DIExpression()), !dbg !579
  %69 = tail call i16** @__ctype_b_loc() #40, !dbg !635
  %70 = load i16*, i16** %69, align 8, !dbg !635, !tbaa !486
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, i16* %70, i64 %71, !dbg !635
  %73 = load i16, i16* %72, align 2, !dbg !635, !tbaa !615
  %74 = and i16 %73, 8192, !dbg !635
  %75 = icmp eq i16 %74, 0, !dbg !635
  br i1 %75, label %89, label %76, !dbg !637

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !638
  br i1 %77, label %91, label %78, !dbg !641

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !642
  %80 = load i8, i8* %79, align 1, !dbg !642, !tbaa !590
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, i16* %70, i64 %81, !dbg !642
  %83 = load i16, i16* %82, align 2, !dbg !642, !tbaa !615
  %84 = and i16 %83, 8192, !dbg !642
  %85 = icmp eq i16 %84, 0, !dbg !642
  br i1 %85, label %86, label %91, !dbg !643

86:                                               ; preds = %78
  %87 = icmp eq i8 %80, 45
  %88 = select i1 %68, i1 true, i1 %87, !dbg !644
  br i1 %88, label %89, label %91, !dbg !644

89:                                               ; preds = %86, %67
  %90 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !646
  call void @llvm.dbg.value(metadata i8* %90, metadata !87, metadata !DIExpression()), !dbg !579
  br label %58, !dbg !626, !llvm.loop !647

91:                                               ; preds = %86, %58, %58, %76, %78
  %92 = ptrtoint i8* %24 to i64, !dbg !649
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !649, !tbaa !486
  %94 = tail call i64 @fwrite_unlocked(i8* noundef %0, i64 noundef 1, i64 noundef %23, %struct._IO_FILE* noundef %93), !dbg !649
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0), metadata !537, metadata !DIExpression()) #37, !dbg !650
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !652
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !654
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !656
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !658
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !660
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !662
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !664
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !666
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !531, metadata !DIExpression()) #37, !dbg !668
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), metadata !147, metadata !DIExpression()), !dbg !579
  %95 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i64 noundef 6) #38, !dbg !670
  %96 = icmp eq i32 %95, 0, !dbg !670
  br i1 %96, label %100, label %97, !dbg !672

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(i8* noundef nonnull dereferenceable(1) %54, i8* noundef nonnull dereferenceable(10) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0), i64 noundef 9) #38, !dbg !673
  %99 = icmp eq i32 %98, 0, !dbg !673
  br i1 %99, label %100, label %103, !dbg !674

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !675
  %102 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %101, i8* noundef %54) #37, !dbg !675
  br label %106, !dbg !677

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !678
  %105 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i64 0, i64 0), i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.46, i64 0, i64 0), i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 noundef %104, i8* noundef %54) #37, !dbg !678
  br label %106

106:                                              ; preds = %103, %100
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !680, !tbaa !486
  %108 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i64 0, i64 0), %struct._IO_FILE* noundef %107), !dbg !680
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !681, !tbaa !486
  %110 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* noundef %109), !dbg !681
  %111 = ptrtoint i8* %59 to i64, !dbg !682
  %112 = sub i64 %111, %92, !dbg !682
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !682, !tbaa !486
  %114 = tail call i64 @fwrite_unlocked(i8* noundef %24, i64 noundef 1, i64 noundef %112, %struct._IO_FILE* noundef %113), !dbg !682
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !683, !tbaa !486
  %116 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* noundef %115), !dbg !683
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !486
  %118 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), %struct._IO_FILE* noundef %117), !dbg !684
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !486
  %120 = tail call i32 @fputs_unlocked(i8* noundef nonnull %59, %struct._IO_FILE* noundef %119), !dbg !685
  br label %121

121:                                              ; preds = %106, %19
  ret void, !dbg !686
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
declare !dbg !687 i8* @setlocale(i32 noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i32 @strncmp(i8* nocapture noundef, i8* nocapture noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind readonly
declare !dbg !691 noundef i8* @getenv(i8* nocapture noundef) local_unnamed_addr #10

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i16** @__ctype_b_loc() local_unnamed_addr #11

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strcspn(i8* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare !dbg !695 noundef i64 @fwrite_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind uwtable
define dso_local i32 @main(i32 noundef %0, i8** noundef %1) local_unnamed_addr #0 !dbg !701 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !706, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8** %1, metadata !707, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 0, metadata !711, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 0, metadata !712, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i64 76, metadata !713, metadata !DIExpression()), !dbg !719
  %4 = load i8*, i8** %1, align 8, !dbg !720, !tbaa !486
  tail call void @set_program_name(i8* noundef %4) #37, !dbg !721
  %5 = tail call i8* @setlocale(i32 noundef 6, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #37, !dbg !722
  %6 = tail call i8* @bindtextdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #37, !dbg !723
  %7 = tail call i8* @textdomain(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #37, !dbg !724
  %8 = tail call i32 @atexit(void ()* noundef nonnull @close_stdout) #37, !dbg !725
  %9 = bitcast i64* %3 to i8*
  br label %10, !dbg !726

10:                                               ; preds = %17, %2
  %11 = phi i1 [ false, %2 ], [ true, %17 ]
  %12 = phi i1 [ false, %2 ], [ %15, %17 ]
  %13 = phi i64 [ 76, %2 ], [ %18, %17 ]
  br label %14, !dbg !726

14:                                               ; preds = %17, %10
  %15 = phi i1 [ %12, %10 ], [ true, %17 ]
  %16 = phi i64 [ %13, %10 ], [ %18, %17 ]
  br label %17, !dbg !726

17:                                               ; preds = %14, %31
  %18 = phi i64 [ %33, %31 ], [ %16, %14 ], !dbg !727
  call void @llvm.dbg.value(metadata i64 %18, metadata !713, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 poison, metadata !712, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8 poison, metadata !711, metadata !DIExpression()), !dbg !719
  %19 = call i32 @getopt_long(i32 noundef %0, i8** noundef nonnull %1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), %struct.option* noundef getelementptr inbounds ([6 x %struct.option], [6 x %struct.option]* @long_options, i64 0, i64 0), i32* noundef null) #37, !dbg !728
  call void @llvm.dbg.value(metadata i32 %19, metadata !708, metadata !DIExpression()), !dbg !719
  switch i32 %19, label %39 [
    i32 -1, label %40
    i32 100, label %10
    i32 119, label %20
    i32 105, label %14
    i32 -2, label %34
    i32 -3, label %35
  ], !dbg !726, !llvm.loop !729

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #37, !dbg !731
  %21 = load i8*, i8** @optarg, align 8, !dbg !732, !tbaa !486
  call void @llvm.dbg.value(metadata i64* %3, metadata !714, metadata !DIExpression(DW_OP_deref)), !dbg !733
  %22 = call i32 @xstrtoimax(i8* noundef %21, i8** noundef null, i32 noundef 10, i64* noundef nonnull %3, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #37, !dbg !734
  call void @llvm.dbg.value(metadata i32 %22, metadata !717, metadata !DIExpression()), !dbg !733
  %23 = icmp ugt i32 %22, 1, !dbg !735
  %24 = load i64, i64* %3, align 8
  call void @llvm.dbg.value(metadata i64 %24, metadata !714, metadata !DIExpression()), !dbg !733
  %25 = icmp slt i64 %24, 0
  %26 = select i1 %23, i1 true, i1 %25, !dbg !737
  br i1 %26, label %27, label %31, !dbg !737

27:                                               ; preds = %20
  %28 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 noundef 5) #37, !dbg !738
  %29 = load i8*, i8** @optarg, align 8, !dbg !738, !tbaa !486
  %30 = call i8* @quote(i8* noundef %29) #37, !dbg !738
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* noundef %28, i8* noundef %30) #37, !dbg !738
  unreachable, !dbg !738

31:                                               ; preds = %20
  %32 = icmp eq i32 %22, 1, !dbg !739
  %33 = select i1 %32, i64 0, i64 %24, !dbg !740
  call void @llvm.dbg.value(metadata i64 %33, metadata !713, metadata !DIExpression()), !dbg !719
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #37, !dbg !741
  br label %17, !dbg !742, !llvm.loop !729

34:                                               ; preds = %17
  call void @usage(i32 noundef 0) #41, !dbg !743
  unreachable, !dbg !743

35:                                               ; preds = %17
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !744, !tbaa !486
  %37 = load i8*, i8** @Version, align 8, !dbg !744, !tbaa !486
  %38 = call i8* @proper_name_lite(i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #37, !dbg !744
  call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* noundef %36, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* noundef %37, i8* noundef %38, i8* noundef null) #37, !dbg !744
  call void @exit(i32 noundef 0) #39, !dbg !744
  unreachable, !dbg !744

39:                                               ; preds = %17
  call void @usage(i32 noundef 1) #41, !dbg !745
  unreachable, !dbg !745

40:                                               ; preds = %17
  %41 = load i32, i32* @optind, align 4, !dbg !746, !tbaa !581
  %42 = sub nsw i32 %0, %41, !dbg !748
  %43 = icmp sgt i32 %42, 1, !dbg !749
  br i1 %43, label %44, label %52, !dbg !750

44:                                               ; preds = %40
  %45 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 noundef 5) #37, !dbg !751
  %46 = load i32, i32* @optind, align 4, !dbg !751, !tbaa !581
  %47 = add nsw i32 %46, 1, !dbg !751
  %48 = sext i32 %47 to i64, !dbg !751
  %49 = getelementptr inbounds i8*, i8** %1, i64 %48, !dbg !751
  %50 = load i8*, i8** %49, align 8, !dbg !751, !tbaa !486
  %51 = call i8* @quote(i8* noundef %50) #37, !dbg !751
  call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef 0, i8* noundef %45, i8* noundef %51) #37, !dbg !751
  call void @usage(i32 noundef 1) #41, !dbg !753
  unreachable, !dbg !753

52:                                               ; preds = %40
  %53 = icmp slt i32 %41, %0, !dbg !754
  br i1 %53, label %54, label %58, !dbg !756

54:                                               ; preds = %52
  %55 = sext i32 %41 to i64, !dbg !757
  %56 = getelementptr inbounds i8*, i8** %1, i64 %55, !dbg !757
  %57 = load i8*, i8** %56, align 8, !dbg !757, !tbaa !486
  call void @llvm.dbg.value(metadata i8* %57, metadata !710, metadata !DIExpression()), !dbg !719
  br label %58, !dbg !758

58:                                               ; preds = %52, %54
  %59 = phi i8* [ %57, %54 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), %52 ], !dbg !759
  call void @llvm.dbg.value(metadata i8* %59, metadata !710, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %59, metadata !531, metadata !DIExpression()) #37, !dbg !760
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !537, metadata !DIExpression()) #37, !dbg !760
  %60 = call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %59, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #38, !dbg !763
  %61 = icmp eq i32 %60, 0, !dbg !764
  br i1 %61, label %62, label %64, !dbg !765

62:                                               ; preds = %58
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !766, !tbaa !486
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %63, metadata !709, metadata !DIExpression()), !dbg !719
  br label %71, !dbg !768

64:                                               ; preds = %58
  %65 = call noalias %struct._IO_FILE* @rpl_fopen(i8* noundef %59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #37, !dbg !769
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %65, metadata !709, metadata !DIExpression()), !dbg !719
  %66 = icmp eq %struct._IO_FILE* %65, null, !dbg !771
  br i1 %66, label %67, label %71, !dbg !773

67:                                               ; preds = %64
  %68 = tail call i32* @__errno_location() #40, !dbg !774
  %69 = load i32, i32* %68, align 4, !dbg !774, !tbaa !581
  %70 = call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %59) #37, !dbg !774
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %69, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %70) #37, !dbg !774
  unreachable, !dbg !774

71:                                               ; preds = %64, %62
  %72 = phi %struct._IO_FILE* [ %63, %62 ], [ %65, %64 ], !dbg !775
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %72, metadata !709, metadata !DIExpression()), !dbg !719
  call void @fadvise(%struct._IO_FILE* noundef %72, i32 noundef 2) #37, !dbg !776
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !777, !tbaa !486
  br i1 %11, label %74, label %75, !dbg !779

74:                                               ; preds = %71
  call fastcc void @do_decode(%struct._IO_FILE* noundef %72, i8* noundef %59, %struct._IO_FILE* noundef %73, i1 noundef %15) #41, !dbg !780
  unreachable, !dbg !780

75:                                               ; preds = %71
  call fastcc void @do_encode(%struct._IO_FILE* noundef %72, i8* noundef %59, %struct._IO_FILE* noundef %73, i64 noundef %18) #41, !dbg !781
  unreachable, !dbg !781
}

; Function Attrs: nounwind
declare !dbg !782 i8* @bindtextdomain(i8* noundef, i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !785 i8* @textdomain(i8* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !786 i32 @atexit(void ()* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !789 i32 @getopt_long(i32 noundef, i8** noundef, i8* noundef, %struct.option* noundef, i32* noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone willreturn
declare i32* @__errno_location() local_unnamed_addr #11

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_decode(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct._IO_FILE* noundef %2, i1 noundef %3) unnamed_addr #0 !dbg !795 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.base32_decode_context, align 4
  %8 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !799, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i8* %1, metadata !800, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !801, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i1 %3, metadata !802, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !828
  %9 = bitcast %struct.base32_decode_context* %7 to i8*, !dbg !829
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %9) #37, !dbg !829
  call void @llvm.dbg.declare(metadata %struct.base32_decode_context* %7, metadata !806, metadata !DIExpression()), !dbg !830
  %10 = tail call noalias nonnull i8* @xmalloc(i64 noundef 8192) #42, !dbg !831
  call void @llvm.dbg.value(metadata i8* %10, metadata !803, metadata !DIExpression()), !dbg !828
  %11 = tail call noalias nonnull i8* @xmalloc(i64 noundef 5120) #42, !dbg !832
  call void @llvm.dbg.value(metadata i8* %11, metadata !804, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %7, metadata !833, metadata !DIExpression()), !dbg !839
  %12 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %7, i64 0, i32 0, !dbg !841
  store i32 0, i32* %12, align 4, !dbg !842, !tbaa !843
  %13 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %14 = bitcast i64* %8 to i8*
  %15 = bitcast i64* %5 to i8*
  %16 = bitcast i64* %6 to i8*
  br label %17, !dbg !845

17:                                               ; preds = %64, %4
  %18 = phi i64 [ 0, %4 ], [ %65, %64 ], !dbg !846
  call void @llvm.dbg.value(metadata i64 %18, metadata !805, metadata !DIExpression()), !dbg !828
  %19 = getelementptr inbounds i8, i8* %10, i64 %18, !dbg !847
  %20 = sub nsw i64 8192, %18, !dbg !847
  %21 = call i64 @fread_unlocked(i8* noundef nonnull %19, i64 noundef 1, i64 noundef %20, %struct._IO_FILE* noundef %0), !dbg !847
  call void @llvm.dbg.value(metadata i64 %21, metadata !815, metadata !DIExpression()), !dbg !848
  %22 = icmp sgt i64 %21, 0
  %23 = and i1 %22, %3, !dbg !849
  call void @llvm.dbg.value(metadata i64 0, metadata !817, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %21, metadata !815, metadata !DIExpression()), !dbg !848
  br i1 %23, label %24, label %49, !dbg !849

24:                                               ; preds = %17, %43
  %25 = phi i64 [ %45, %43 ], [ 0, %17 ]
  %26 = phi i64 [ %44, %43 ], [ %21, %17 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !817, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %26, metadata !815, metadata !DIExpression()), !dbg !848
  %27 = add nsw i64 %25, %18, !dbg !851
  %28 = getelementptr inbounds i8, i8* %10, i64 %27, !dbg !855
  %29 = load i8, i8* %28, align 1, !dbg !855, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %29, metadata !856, metadata !DIExpression()), !dbg !861
  %30 = zext i8 %29 to i64, !dbg !863
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %30, !dbg !864
  %32 = load i8, i8* %31, align 1, !dbg !864, !tbaa !590
  %33 = icmp sgt i8 %32, -1, !dbg !865
  %34 = icmp eq i8 %29, 61
  %35 = select i1 %33, i1 true, i1 %34, !dbg !866
  call void @llvm.dbg.value(metadata i32 1, metadata !867, metadata !DIExpression()), !dbg !873
  call void @llvm.dbg.value(metadata i32 1, metadata !872, metadata !DIExpression()), !dbg !873
  br i1 %35, label %36, label %38, !dbg !866

36:                                               ; preds = %24
  %37 = add nsw i64 %25, 1, !dbg !875
  call void @llvm.dbg.value(metadata i64 %37, metadata !817, metadata !DIExpression()), !dbg !850
  br label %43, !dbg !876

38:                                               ; preds = %24
  %39 = getelementptr inbounds i8, i8* %19, i64 %25, !dbg !877
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !878
  %41 = add nsw i64 %26, -1, !dbg !879
  call void @llvm.dbg.value(metadata i64 %41, metadata !815, metadata !DIExpression()), !dbg !848
  %42 = sub nsw i64 %41, %25, !dbg !880
  call void @llvm.dbg.value(metadata i8* %39, metadata !881, metadata !DIExpression()) #37, !dbg !889
  call void @llvm.dbg.value(metadata i8* %40, metadata !887, metadata !DIExpression()) #37, !dbg !889
  call void @llvm.dbg.value(metadata i64 %42, metadata !888, metadata !DIExpression()) #37, !dbg !889
  call void @llvm.memmove.p0i8.p0i8.i64(i8* noundef nonnull align 1 %39, i8* noundef nonnull align 1 %40, i64 noundef %42, i1 noundef false) #37, !dbg !891
  br label %43

43:                                               ; preds = %38, %36
  %44 = phi i64 [ %26, %36 ], [ %41, %38 ], !dbg !848
  %45 = phi i64 [ %37, %36 ], [ %25, %38 ], !dbg !850
  call void @llvm.dbg.value(metadata i64 %45, metadata !817, metadata !DIExpression()), !dbg !850
  call void @llvm.dbg.value(metadata i64 %44, metadata !815, metadata !DIExpression()), !dbg !848
  %46 = icmp sgt i64 %44, 0, !dbg !892
  %47 = icmp slt i64 %45, %44, !dbg !893
  %48 = select i1 %46, i1 %47, i1 false, !dbg !893
  br i1 %48, label %24, label %49, !dbg !894, !llvm.loop !895

49:                                               ; preds = %43, %17
  %50 = phi i64 [ %21, %17 ], [ %44, %43 ], !dbg !897
  call void @llvm.dbg.value(metadata i64 %50, metadata !815, metadata !DIExpression()), !dbg !848
  %51 = add nsw i64 %50, %18, !dbg !898
  call void @llvm.dbg.value(metadata i64 %51, metadata !805, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !899, metadata !DIExpression()), !dbg !905
  %52 = load i32, i32* %13, align 8, !dbg !908, !tbaa !909
  %53 = and i32 %52, 32, !dbg !912
  %54 = icmp eq i32 %53, 0, !dbg !912
  br i1 %54, label %59, label %55, !dbg !913

55:                                               ; preds = %49
  %56 = tail call i32* @__errno_location() #40, !dbg !914
  %57 = load i32, i32* %56, align 4, !dbg !914, !tbaa !581
  %58 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #37, !dbg !914
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %57, i8* noundef %58) #37, !dbg !914
  unreachable, !dbg !914

59:                                               ; preds = %49
  %60 = icmp slt i64 %51, 8192, !dbg !915
  %61 = and i32 %52, 16
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %60, i1 %62, i1 false, !dbg !916
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !917, metadata !DIExpression()), !dbg !920
  br i1 %63, label %64, label %66, !dbg !916

64:                                               ; preds = %59, %125
  %65 = phi i64 [ %51, %59 ], [ 0, %125 ]
  br label %17, !dbg !828, !llvm.loop !922

66:                                               ; preds = %59, %121
  %67 = phi i64 [ 0, %121 ], [ %51, %59 ], !dbg !898
  call void @llvm.dbg.value(metadata i64 %67, metadata !805, metadata !DIExpression()), !dbg !828
  %68 = icmp eq i64 %67, 0, !dbg !924
  br i1 %68, label %69, label %73, !dbg !925

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !917, metadata !DIExpression()), !dbg !926
  %70 = load i32, i32* %13, align 8, !dbg !928, !tbaa !909
  %71 = and i32 %70, 16, !dbg !925
  %72 = icmp eq i32 %71, 0, !dbg !925
  br i1 %72, label %125, label %76, !dbg !929

73:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #37, !dbg !930
  call void @llvm.dbg.value(metadata i64 5120, metadata !821, metadata !DIExpression()), !dbg !931
  store i64 5120, i64* %8, align 8, !dbg !932, !tbaa !933
  call void @llvm.dbg.value(metadata i8* %11, metadata !804, metadata !DIExpression()), !dbg !828
  call void @llvm.dbg.value(metadata i64* %8, metadata !821, metadata !DIExpression(DW_OP_deref)), !dbg !931
  %74 = call i1 @base32_decode_ctx(%struct.base32_decode_context* noundef nonnull %7, i8* noundef nonnull %10, i64 noundef %67, i8* noundef nonnull %11, i64* noundef nonnull %8) #37, !dbg !934
  call void @llvm.dbg.value(metadata i1 %74, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !846
  %75 = load i64, i64* %8, align 8, !dbg !936, !tbaa !933
  br label %103, !dbg !937

76:                                               ; preds = %69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #37, !dbg !930
  call void @llvm.dbg.value(metadata i64 5120, metadata !821, metadata !DIExpression()), !dbg !931
  store i64 5120, i64* %8, align 8, !dbg !932, !tbaa !933
  call void @llvm.dbg.value(metadata i64* %8, metadata !821, metadata !DIExpression(DW_OP_deref)), !dbg !931
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %7, metadata !938, metadata !DIExpression()) #37, !dbg !951
  call void @llvm.dbg.value(metadata i8** undef, metadata !944, metadata !DIExpression()) #37, !dbg !951
  call void @llvm.dbg.value(metadata i64* %8, metadata !945, metadata !DIExpression()) #37, !dbg !951
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %7, metadata !953, metadata !DIExpression()) #37, !dbg !958
  %77 = load i32, i32* %12, align 4, !dbg !961, !tbaa !843
  %78 = icmp eq i32 %77, 0, !dbg !962
  br i1 %78, label %79, label %80, !dbg !963

79:                                               ; preds = %76
  store i64 0, i64* %8, align 8, !dbg !964, !tbaa !933
  br label %103, !dbg !966

80:                                               ; preds = %76
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #37, !dbg !967
  call void @llvm.dbg.value(metadata i64 4412750543122677053, metadata !946, metadata !DIExpression()) #37, !dbg !951
  store i64 4412750543122677053, i64* %5, align 8, !dbg !968
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %7, metadata !953, metadata !DIExpression()) #37, !dbg !969
  call void @llvm.dbg.value(metadata i32 %77, metadata !947, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_signed, DW_OP_LLVM_convert, 64, DW_ATE_signed, DW_OP_stack_value)) #37, !dbg !951
  call void @llvm.dbg.value(metadata i32 %77, metadata !867, metadata !DIExpression()) #37, !dbg !971
  %81 = srem i32 %77, 8, !dbg !973
  call void @llvm.dbg.value(metadata i32 %81, metadata !872, metadata !DIExpression()) #37, !dbg !971
  %82 = icmp eq i32 %81, 0, !dbg !974
  %83 = sub nsw i32 8, %81, !dbg !974
  %84 = select i1 %82, i32 0, i32 %83, !dbg !974
  %85 = zext i32 %84 to i64
  call void @llvm.dbg.value(metadata i64 %85, metadata !948, metadata !DIExpression()) #37, !dbg !951
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #37, !dbg !975
  call void @llvm.dbg.value(metadata i64 5120, metadata !949, metadata !DIExpression()) #37, !dbg !951
  store i64 5120, i64* %6, align 8, !dbg !976, !tbaa !933
  %86 = icmp eq i32 %84, 0, !dbg !977
  br i1 %86, label %98, label %87, !dbg !979

87:                                               ; preds = %80
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %7, metadata !980, metadata !DIExpression()) #37, !dbg !985
  %88 = add nsw i32 %77, -1, !dbg !987
  %89 = sext i32 %88 to i64, !dbg !988
  %90 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %7, i64 0, i32 1, i64 %89, !dbg !988
  %91 = load i8, i8* %90, align 1, !dbg !988, !tbaa !590
  %92 = icmp eq i8 %91, 61, !dbg !989
  br i1 %92, label %98, label %93, !dbg !990

93:                                               ; preds = %87
  %94 = icmp ult i32 %84, 9, !dbg !991
  br i1 %94, label %96, label %95, !dbg !995

95:                                               ; preds = %93
  call void @__assert_fail(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.66, i64 0, i64 0), i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i64 0, i64 0), i32 noundef 432, i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @__PRETTY_FUNCTION__.decode_ctx_finalize, i64 0, i64 0)) #39, !dbg !991
  unreachable, !dbg !991

96:                                               ; preds = %93
  call void @llvm.dbg.value(metadata i64* %6, metadata !949, metadata !DIExpression(DW_OP_deref)) #37, !dbg !951
  call void @llvm.dbg.value(metadata i64* %5, metadata !946, metadata !DIExpression(DW_OP_deref)) #37, !dbg !951
  %97 = call i1 @base32_decode_ctx(%struct.base32_decode_context* noundef nonnull %7, i8* noundef nonnull %15, i64 noundef %85, i8* noundef nonnull %11, i64* noundef nonnull %6) #37, !dbg !996
  call void @llvm.dbg.value(metadata i1 %97, metadata !950, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !951
  br label %100, !dbg !997

98:                                               ; preds = %87, %80
  call void @llvm.dbg.value(metadata i64* %6, metadata !949, metadata !DIExpression(DW_OP_deref)) #37, !dbg !951
  %99 = call i1 @base32_decode_ctx(%struct.base32_decode_context* noundef nonnull %7, i8* noundef getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), i64 noundef 0, i8* noundef nonnull %11, i64* noundef nonnull %6) #37, !dbg !998
  call void @llvm.dbg.value(metadata i1 %99, metadata !950, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !951
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i1 [ %99, %98 ], [ %97, %96 ]
  call void @llvm.dbg.value(metadata i1 %101, metadata !950, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)) #37, !dbg !951
  %102 = load i64, i64* %6, align 8, !dbg !1000, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %102, metadata !949, metadata !DIExpression()) #37, !dbg !951
  store i64 %102, i64* %8, align 8, !dbg !1001, !tbaa !933
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #37, !dbg !1002
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #37, !dbg !1002
  br label %103

103:                                              ; preds = %100, %79, %73
  %104 = phi i64 [ %75, %73 ], [ 0, %79 ], [ %102, %100 ], !dbg !936
  %105 = phi i1 [ %74, %73 ], [ true, %79 ], [ %101, %100 ]
  call void @llvm.dbg.value(metadata i1 %105, metadata !813, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !846
  call void @llvm.dbg.value(metadata i64 %104, metadata !821, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i64 %104, metadata !821, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i8* %11, metadata !804, metadata !DIExpression()), !dbg !828
  %106 = call i64 @fwrite_unlocked(i8* noundef nonnull %11, i64 noundef 1, i64 noundef %104, %struct._IO_FILE* noundef %2), !dbg !936
  %107 = load i64, i64* %8, align 8, !dbg !1003, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %107, metadata !821, metadata !DIExpression()), !dbg !931
  %108 = icmp ult i64 %106, %107, !dbg !1004
  br i1 %108, label %109, label %118, !dbg !1005

109:                                              ; preds = %103
  %110 = tail call i32* @__errno_location() #40, !dbg !1006
  %111 = load i32, i32* %110, align 4, !dbg !1006, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %111, metadata !1009, metadata !DIExpression()) #37, !dbg !1011
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1012, !tbaa !486
  %113 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %112) #37, !dbg !1012
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1013, !tbaa !486
  %115 = call i32 @fpurge(%struct._IO_FILE* noundef %114) #37, !dbg !1014
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1015, !tbaa !486
  call void @clearerr_unlocked(%struct._IO_FILE* noundef %116) #37, !dbg !1015
  %117 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1016
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %111, i8* noundef %117) #37, !dbg !1016
  unreachable, !dbg !1016

118:                                              ; preds = %103
  br i1 %105, label %121, label %119, !dbg !1017

119:                                              ; preds = %118
  %120 = call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i32 noundef 5) #37, !dbg !1018
  call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef 0, i8* noundef %120) #37, !dbg !1018
  unreachable, !dbg !1018

121:                                              ; preds = %118
  call void @llvm.dbg.value(metadata i64 0, metadata !805, metadata !DIExpression()), !dbg !828
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #37, !dbg !1020
  br i1 %68, label %122, label %66

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 8, !dbg !1021, !tbaa !909
  %124 = and i32 %123, 16, !dbg !1023
  br label %125

125:                                              ; preds = %69, %122
  %126 = phi i32 [ %124, %122 ], [ 0, %69 ], !dbg !1023
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !917, metadata !DIExpression()), !dbg !1024
  %127 = icmp eq i32 %126, 0, !dbg !1023
  br i1 %127, label %64, label %128, !dbg !1025

128:                                              ; preds = %125
  call fastcc void @finish_and_exit(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1) #41, !dbg !1026
  unreachable, !dbg !1026
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @do_encode(%struct._IO_FILE* noundef %0, i8* noundef %1, %struct._IO_FILE* noundef %2, i64 noundef %3) unnamed_addr #0 !dbg !1027 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1031, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i8* %1, metadata !1032, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1033, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i64 %3, metadata !1034, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata i64 0, metadata !1035, metadata !DIExpression()), !dbg !1041
  %5 = tail call noalias nonnull i8* @xmalloc(i64 noundef 30720) #42, !dbg !1042
  call void @llvm.dbg.value(metadata i8* %5, metadata !1036, metadata !DIExpression()), !dbg !1041
  %6 = tail call noalias nonnull i8* @xmalloc(i64 noundef 49152) #42, !dbg !1043
  call void @llvm.dbg.value(metadata i8* %6, metadata !1037, metadata !DIExpression()), !dbg !1041
  %7 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0
  %8 = icmp eq i64 %3, 0
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 5
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %2, i64 0, i32 6
  br label %11, !dbg !1044

11:                                               ; preds = %98, %4
  %12 = phi i64 [ 0, %4 ], [ %94, %98 ], !dbg !1045
  call void @llvm.dbg.value(metadata i64 0, metadata !1038, metadata !DIExpression()), !dbg !1041
  br label %13, !dbg !1046

13:                                               ; preds = %22, %11
  %14 = phi i64 [ 0, %11 ], [ %18, %22 ], !dbg !1047
  call void @llvm.dbg.value(metadata i64 %14, metadata !1038, metadata !DIExpression()), !dbg !1041
  %15 = getelementptr inbounds i8, i8* %5, i64 %14, !dbg !1048
  %16 = sub nsw i64 30720, %14, !dbg !1048
  %17 = tail call i64 @fread_unlocked(i8* noundef nonnull %15, i64 noundef 1, i64 noundef %16, %struct._IO_FILE* noundef %0), !dbg !1048
  call void @llvm.dbg.value(metadata i64 %17, metadata !1039, metadata !DIExpression()), !dbg !1047
  %18 = add nsw i64 %17, %14, !dbg !1050
  call void @llvm.dbg.value(metadata i64 %18, metadata !1038, metadata !DIExpression()), !dbg !1041
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !917, metadata !DIExpression()), !dbg !1051
  %19 = load i32, i32* %7, align 8, !dbg !1053, !tbaa !909
  %20 = and i32 %19, 16, !dbg !1054
  %21 = icmp eq i32 %20, 0, !dbg !1054
  br i1 %21, label %22, label %27, !dbg !1055

22:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !899, metadata !DIExpression()), !dbg !1056
  %23 = and i32 %19, 32, !dbg !1058
  %24 = icmp eq i32 %23, 0, !dbg !1058
  %25 = icmp slt i64 %18, 30720
  %26 = select i1 %24, i1 %25, i1 false, !dbg !1059
  br i1 %26, label %13, label %27, !dbg !1059, !llvm.loop !1060

27:                                               ; preds = %13, %22
  %28 = icmp sgt i64 %18, 0, !dbg !1062
  br i1 %28, label %29, label %93, !dbg !1064

29:                                               ; preds = %27
  %30 = add nuw nsw i64 %18, 4, !dbg !1065
  %31 = udiv i64 %30, 5, !dbg !1065
  %32 = shl nuw nsw i64 %31, 3, !dbg !1065
  tail call void @base32_encode(i8* noundef nonnull %5, i64 noundef %18, i8* noundef nonnull %6, i64 noundef %32) #37, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %6, metadata !1069, metadata !DIExpression()) #37, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %32, metadata !1074, metadata !DIExpression()) #37, !dbg !1097
  call void @llvm.dbg.value(metadata i64 %3, metadata !1075, metadata !DIExpression()) #37, !dbg !1097
  call void @llvm.dbg.value(metadata i64* undef, metadata !1076, metadata !DIExpression()) #37, !dbg !1097
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1077, metadata !DIExpression()) #37, !dbg !1097
  br i1 %8, label %33, label %46, !dbg !1099

33:                                               ; preds = %29
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1100, !tbaa !486
  %35 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %6, i64 noundef 1, i64 noundef %32, %struct._IO_FILE* noundef %34) #37, !dbg !1101
  %36 = icmp ult i64 %35, %32, !dbg !1102
  br i1 %36, label %37, label %93, !dbg !1103

37:                                               ; preds = %33
  %38 = tail call i32* @__errno_location() #40, !dbg !1104
  %39 = load i32, i32* %38, align 4, !dbg !1104, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %39, metadata !1009, metadata !DIExpression()) #37, !dbg !1106
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1107, !tbaa !486
  %41 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %40) #37, !dbg !1107
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1108, !tbaa !486
  %43 = tail call i32 @fpurge(%struct._IO_FILE* noundef %42) #37, !dbg !1109
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1110, !tbaa !486
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %44) #37, !dbg !1110
  %45 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1111
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %39, i8* noundef %45) #37, !dbg !1111
  unreachable, !dbg !1111

46:                                               ; preds = %29, %89
  %47 = phi i64 [ %90, %89 ], [ %12, %29 ], !dbg !1041
  %48 = phi i64 [ %91, %89 ], [ 0, %29 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !1085, metadata !DIExpression()) #37, !dbg !1112
  %49 = sub nsw i64 %3, %47, !dbg !1113
  %50 = sub nsw i64 %32, %48, !dbg !1113
  %51 = icmp slt i64 %49, %50, !dbg !1113
  %52 = select i1 %51, i64 %49, i64 %50, !dbg !1113
  call void @llvm.dbg.value(metadata i64 %52, metadata !1087, metadata !DIExpression()) #37, !dbg !1114
  %53 = icmp eq i64 %52, 0, !dbg !1115
  br i1 %53, label %54, label %72, !dbg !1116

54:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i32 10, metadata !1117, metadata !DIExpression()) #37, !dbg !1123
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1122, metadata !DIExpression()) #37, !dbg !1123
  %55 = load i8*, i8** %9, align 8, !dbg !1127, !tbaa !1128
  %56 = load i8*, i8** %10, align 8, !dbg !1127, !tbaa !1129
  %57 = icmp ult i8* %55, %56, !dbg !1127
  br i1 %57, label %58, label %60, !dbg !1127, !prof !1130

58:                                               ; preds = %54
  %59 = getelementptr inbounds i8, i8* %55, i64 1, !dbg !1127
  store i8* %59, i8** %9, align 8, !dbg !1127, !tbaa !1128
  store i8 10, i8* %55, align 1, !dbg !1127, !tbaa !590
  br label %89, !dbg !1131

60:                                               ; preds = %54
  %61 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %2, i32 noundef 10) #37, !dbg !1127
  %62 = icmp eq i32 %61, -1, !dbg !1132
  br i1 %62, label %63, label %89, !dbg !1131

63:                                               ; preds = %60
  %64 = tail call i32* @__errno_location() #40, !dbg !1133
  %65 = load i32, i32* %64, align 4, !dbg !1133, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %65, metadata !1009, metadata !DIExpression()) #37, !dbg !1135
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1136, !tbaa !486
  %67 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %66) #37, !dbg !1136
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1137, !tbaa !486
  %69 = tail call i32 @fpurge(%struct._IO_FILE* noundef %68) #37, !dbg !1138
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1139, !tbaa !486
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %70) #37, !dbg !1139
  %71 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1140
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %65, i8* noundef %71) #37, !dbg !1140
  unreachable, !dbg !1140

72:                                               ; preds = %46
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1141, !tbaa !486
  %74 = getelementptr inbounds i8, i8* %6, i64 %48, !dbg !1141
  %75 = tail call i64 @fwrite_unlocked(i8* noundef nonnull %74, i64 noundef 1, i64 noundef %52, %struct._IO_FILE* noundef %73) #37, !dbg !1142
  %76 = icmp ult i64 %75, %52, !dbg !1143
  br i1 %76, label %77, label %86, !dbg !1144

77:                                               ; preds = %72
  %78 = tail call i32* @__errno_location() #40, !dbg !1145
  %79 = load i32, i32* %78, align 4, !dbg !1145, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %79, metadata !1009, metadata !DIExpression()) #37, !dbg !1147
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1148, !tbaa !486
  %81 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %80) #37, !dbg !1148
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1149, !tbaa !486
  %83 = tail call i32 @fpurge(%struct._IO_FILE* noundef %82) #37, !dbg !1150
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1151, !tbaa !486
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %84) #37, !dbg !1151
  %85 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1152
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %79, i8* noundef %85) #37, !dbg !1152
  unreachable, !dbg !1152

86:                                               ; preds = %72
  %87 = add nsw i64 %52, %47, !dbg !1153
  %88 = add nsw i64 %52, %48, !dbg !1154
  call void @llvm.dbg.value(metadata i64 %88, metadata !1085, metadata !DIExpression()) #37, !dbg !1112
  br label %89

89:                                               ; preds = %58, %60, %86
  %90 = phi i64 [ %87, %86 ], [ 0, %60 ], [ 0, %58 ], !dbg !1155
  %91 = phi i64 [ %88, %86 ], [ %48, %60 ], [ %48, %58 ], !dbg !1112
  call void @llvm.dbg.value(metadata i64 %91, metadata !1085, metadata !DIExpression()) #37, !dbg !1112
  %92 = icmp slt i64 %91, %32, !dbg !1156
  br i1 %92, label %46, label %93, !dbg !1157, !llvm.loop !1158

93:                                               ; preds = %89, %33, %27
  %94 = phi i64 [ %12, %27 ], [ %12, %33 ], [ %90, %89 ], !dbg !1045
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !917, metadata !DIExpression()), !dbg !1160
  %95 = load i32, i32* %7, align 8, !dbg !1162, !tbaa !909
  %96 = and i32 %95, 16, !dbg !1163
  %97 = icmp eq i32 %96, 0, !dbg !1163
  br i1 %97, label %98, label %103, !dbg !1164

98:                                               ; preds = %93
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !899, metadata !DIExpression()), !dbg !1165
  %99 = and i32 %95, 32, !dbg !1167
  %100 = icmp eq i32 %99, 0, !dbg !1167
  %101 = icmp eq i64 %18, 30720
  %102 = select i1 %100, i1 %101, i1 false, !dbg !1168
  br i1 %102, label %11, label %103, !dbg !1168, !llvm.loop !1169

103:                                              ; preds = %93, %98
  %104 = icmp ne i64 %3, 0, !dbg !1171
  call void @llvm.dbg.value(metadata i64 %94, metadata !1035, metadata !DIExpression()), !dbg !1041
  %105 = icmp sgt i64 %94, 0
  %106 = select i1 %104, i1 %105, i1 false, !dbg !1173
  br i1 %106, label %107, label %125, !dbg !1173

107:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i32 10, metadata !1117, metadata !DIExpression()) #37, !dbg !1174
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !1122, metadata !DIExpression()) #37, !dbg !1174
  %108 = load i8*, i8** %9, align 8, !dbg !1176, !tbaa !1128
  %109 = load i8*, i8** %10, align 8, !dbg !1176, !tbaa !1129
  %110 = icmp ult i8* %108, %109, !dbg !1176
  br i1 %110, label %111, label %113, !dbg !1176, !prof !1130

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, i8* %108, i64 1, !dbg !1176
  store i8* %112, i8** %9, align 8, !dbg !1176, !tbaa !1128
  store i8 10, i8* %108, align 1, !dbg !1176, !tbaa !590
  br label %125, !dbg !1177

113:                                              ; preds = %107
  %114 = tail call i32 @__overflow(%struct._IO_FILE* noundef nonnull %2, i32 noundef 10) #37, !dbg !1176
  %115 = icmp eq i32 %114, -1, !dbg !1178
  br i1 %115, label %116, label %125, !dbg !1177

116:                                              ; preds = %113
  %117 = tail call i32* @__errno_location() #40, !dbg !1179
  %118 = load i32, i32* %117, align 4, !dbg !1179, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %118, metadata !1009, metadata !DIExpression()) #37, !dbg !1181
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1182, !tbaa !486
  %120 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %119) #37, !dbg !1182
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1183, !tbaa !486
  %122 = tail call i32 @fpurge(%struct._IO_FILE* noundef %121) #37, !dbg !1184
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1185, !tbaa !486
  tail call void @clearerr_unlocked(%struct._IO_FILE* noundef %123) #37, !dbg !1185
  %124 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i32 noundef 5) #37, !dbg !1186
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %118, i8* noundef %124) #37, !dbg !1186
  unreachable, !dbg !1186

125:                                              ; preds = %111, %113, %103
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !899, metadata !DIExpression()), !dbg !1187
  %126 = load i32, i32* %7, align 8, !dbg !1190, !tbaa !909
  %127 = and i32 %126, 32, !dbg !1191
  %128 = icmp eq i32 %127, 0, !dbg !1191
  br i1 %128, label %133, label %129, !dbg !1192

129:                                              ; preds = %125
  %130 = tail call i32* @__errno_location() #40, !dbg !1193
  %131 = load i32, i32* %130, align 4, !dbg !1193, !tbaa !581
  %132 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i64 0, i64 0), i32 noundef 5) #37, !dbg !1193
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %131, i8* noundef %132) #37, !dbg !1193
  unreachable, !dbg !1193

133:                                              ; preds = %125
  tail call fastcc void @finish_and_exit(%struct._IO_FILE* noundef nonnull %0, i8* noundef %1) #41, !dbg !1194
  unreachable, !dbg !1194
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

declare !dbg !1195 i32 @fflush_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1196 void @clearerr_unlocked(%struct._IO_FILE* noundef) local_unnamed_addr #2

declare i32 @__overflow(%struct._IO_FILE* noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @finish_and_exit(%struct._IO_FILE* noundef %0, i8* noundef %1) unnamed_addr #0 !dbg !1199 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !1203, metadata !DIExpression()), !dbg !1205
  call void @llvm.dbg.value(metadata i8* %1, metadata !1204, metadata !DIExpression()), !dbg !1205
  %3 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #37, !dbg !1206
  %4 = icmp eq i32 %3, 0, !dbg !1208
  br i1 %4, label %14, label %5, !dbg !1209

5:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %1, metadata !531, metadata !DIExpression()) #37, !dbg !1210
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), metadata !537, metadata !DIExpression()) #37, !dbg !1210
  %6 = tail call i32 @strcmp(i8* noundef nonnull dereferenceable(1) %1, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #38, !dbg !1214
  %7 = icmp eq i32 %6, 0, !dbg !1215
  %8 = tail call i32* @__errno_location() #40, !dbg !1216
  %9 = load i32, i32* %8, align 4, !dbg !1216, !tbaa !581
  br i1 %7, label %10, label %12, !dbg !1217

10:                                               ; preds = %5
  %11 = tail call i8* @dcgettext(i8* noundef null, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.69, i64 0, i64 0), i32 noundef 5) #37, !dbg !1218
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef %11) #37, !dbg !1218
  unreachable, !dbg !1218

12:                                               ; preds = %5
  %13 = tail call i8* @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, i8* noundef %1) #37, !dbg !1219
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 1, i32 noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i8* noundef %13) #37, !dbg !1219
  unreachable, !dbg !1219

14:                                               ; preds = %2
  tail call void @exit(i32 noundef 0) #39, !dbg !1220
  unreachable, !dbg !1220
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8* noundef, i8* noundef, i32 noundef, i8* noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @isubase32(i8 noundef %0) local_unnamed_addr #12 !dbg !1221 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1223, metadata !DIExpression()), !dbg !1224
  %2 = zext i8 %0 to i64, !dbg !1225
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %2, !dbg !1226
  %4 = load i8, i8* %3, align 1, !dbg !1226, !tbaa !590
  %5 = icmp sgt i8 %4, -1, !dbg !1227
  ret i1 %5, !dbg !1228
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local i1 @isbase32(i8 noundef %0) local_unnamed_addr #12 !dbg !1229 {
  call void @llvm.dbg.value(metadata i8 %0, metadata !1233, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8 %0, metadata !1223, metadata !DIExpression()), !dbg !1235
  %2 = zext i8 %0 to i64, !dbg !1237
  %3 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %2, !dbg !1238
  %4 = load i8, i8* %3, align 1, !dbg !1238, !tbaa !590
  %5 = icmp sgt i8 %4, -1, !dbg !1239
  ret i1 %5, !dbg !1240
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @base32_decode_ctx_init(%struct.base32_decode_context* nocapture noundef writeonly %0) local_unnamed_addr #13 !dbg !1241 {
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1250, metadata !DIExpression()), !dbg !1251
  %2 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1252
  store i32 0, i32* %2, align 4, !dbg !1253, !tbaa !843
  ret void, !dbg !1254
}

; Function Attrs: nofree norecurse nosync nounwind uwtable
define dso_local void @base32_encode(i8* noalias nocapture noundef readonly %0, i64 noundef %1, i8* noalias nocapture noundef writeonly %2, i64 noundef %3) local_unnamed_addr #14 !dbg !177 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !186, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %1, metadata !187, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %2, metadata !188, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()), !dbg !1255
  %5 = icmp ne i64 %1, 0, !dbg !1256
  %6 = icmp ne i64 %3, 0, !dbg !1257
  %7 = and i1 %5, %6, !dbg !1257
  br i1 %7, label %8, label %155, !dbg !1258

8:                                                ; preds = %4, %148
  %9 = phi i64 [ %146, %148 ], [ %3, %4 ]
  %10 = phi i8* [ %149, %148 ], [ %2, %4 ]
  %11 = phi i64 [ %151, %148 ], [ %1, %4 ]
  %12 = phi i8* [ %154, %148 ], [ %0, %4 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %12, metadata !186, metadata !DIExpression()), !dbg !1255
  %13 = load i8, i8* %12, align 1, !dbg !1259, !tbaa !590
  %14 = lshr i8 %13, 3, !dbg !1261
  %15 = zext i8 %14 to i64
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %15, !dbg !1262
  %17 = load i8, i8* %16, align 1, !dbg !1262, !tbaa !590
  %18 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !1263
  call void @llvm.dbg.value(metadata i8* %18, metadata !188, metadata !DIExpression()), !dbg !1255
  store i8 %17, i8* %10, align 1, !dbg !1264, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %19 = icmp eq i64 %9, 1, !dbg !1265
  br i1 %19, label %159, label %20, !dbg !1267

20:                                               ; preds = %8
  %21 = zext i8 %13 to i64, !dbg !1268
  %22 = shl nuw nsw i64 %21, 2, !dbg !1269
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %23 = icmp eq i64 %11, 1, !dbg !1270
  br i1 %23, label %24, label %29, !dbg !1270

24:                                               ; preds = %20
  %25 = and i64 %22, 28, !dbg !1271
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %25, !dbg !1272
  %27 = load i8, i8* %26, align 1, !dbg !1272, !tbaa !590
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1255
  store i8 %27, i8* %18, align 1, !dbg !1273, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %28 = icmp eq i64 %9, 2, !dbg !1274
  br i1 %28, label %159, label %39, !dbg !1276

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !1277
  %31 = load i8, i8* %30, align 1, !dbg !1277, !tbaa !590
  %32 = lshr i8 %31, 6, !dbg !1278
  %33 = zext i8 %32 to i64, !dbg !1278
  %34 = and i64 %22, 28, !dbg !1271
  %35 = or i64 %34, %33, !dbg !1271
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %35, !dbg !1272
  %37 = load i8, i8* %36, align 1, !dbg !1272, !tbaa !590
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1255
  store i8 %37, i8* %18, align 1, !dbg !1273, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %38 = icmp eq i64 %9, 2, !dbg !1274
  br i1 %38, label %159, label %42, !dbg !1276

39:                                               ; preds = %24
  %40 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1279
  call void @llvm.dbg.value(metadata i8* %40, metadata !188, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1255
  store i8 61, i8* %40, align 1, !dbg !1280, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %41 = icmp eq i64 %9, 3, !dbg !1281
  br i1 %41, label %159, label %70, !dbg !1283

42:                                               ; preds = %29
  %43 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !1279
  %44 = lshr i8 %31, 1, !dbg !1284
  %45 = and i8 %44, 31, !dbg !1285
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %46, !dbg !1286
  %48 = load i8, i8* %47, align 1, !dbg !1286, !tbaa !590
  %49 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1287
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1255
  store i8 %48, i8* %43, align 1, !dbg !1280, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %50 = icmp eq i64 %9, 3, !dbg !1281
  br i1 %50, label %159, label %51, !dbg !1283

51:                                               ; preds = %42
  %52 = zext i8 %31 to i64, !dbg !1288
  %53 = shl nuw nsw i64 %52, 4, !dbg !1289
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %54 = icmp eq i64 %11, 2, !dbg !1290
  br i1 %54, label %55, label %60, !dbg !1290

55:                                               ; preds = %51
  %56 = and i64 %53, 16, !dbg !1291
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %56, !dbg !1292
  %58 = load i8, i8* %57, align 1, !dbg !1292, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1255
  store i8 %58, i8* %49, align 1, !dbg !1293, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %59 = icmp eq i64 %9, 4, !dbg !1294
  br i1 %59, label %159, label %91, !dbg !1296

60:                                               ; preds = %51
  %61 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1297
  %62 = load i8, i8* %61, align 1, !dbg !1297, !tbaa !590
  %63 = lshr i8 %62, 4, !dbg !1298
  %64 = zext i8 %63 to i64, !dbg !1298
  %65 = and i64 %53, 16, !dbg !1291
  %66 = or i64 %65, %64, !dbg !1291
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %66, !dbg !1292
  %68 = load i8, i8* %67, align 1, !dbg !1292, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1255
  store i8 %68, i8* %49, align 1, !dbg !1293, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %69 = icmp eq i64 %9, 4, !dbg !1294
  br i1 %69, label %159, label %73, !dbg !1296

70:                                               ; preds = %39
  %71 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1287
  call void @llvm.dbg.value(metadata i64 %11, metadata !187, metadata !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1255
  store i8 61, i8* %71, align 1, !dbg !1293, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %72 = icmp eq i64 %9, 4, !dbg !1294
  br i1 %72, label %159, label %91, !dbg !1296

73:                                               ; preds = %60
  %74 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !1299
  %75 = load i8, i8* %74, align 1, !dbg !1299, !tbaa !590
  %76 = zext i8 %75 to i64, !dbg !1300
  %77 = shl nuw nsw i64 %76, 1, !dbg !1301
  %78 = add nsw i64 %11, -3, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %78, metadata !187, metadata !DIExpression()), !dbg !1255
  %79 = icmp eq i64 %78, 0, !dbg !1302
  br i1 %79, label %85, label %80, !dbg !1302

80:                                               ; preds = %73
  %81 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1303
  %82 = load i8, i8* %81, align 1, !dbg !1303, !tbaa !590
  %83 = lshr i8 %82, 7, !dbg !1304
  %84 = zext i8 %83 to i64, !dbg !1304
  br label %85, !dbg !1302

85:                                               ; preds = %73, %80
  %86 = phi i64 [ %84, %80 ], [ 0, %73 ], !dbg !1302
  %87 = add nuw nsw i64 %86, %77, !dbg !1305
  %88 = and i64 %87, 31, !dbg !1306
  %89 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %88, !dbg !1307
  %90 = load i8, i8* %89, align 1, !dbg !1307, !tbaa !590
  br label %91, !dbg !1308

91:                                               ; preds = %55, %70, %85
  %92 = phi i64 [ %78, %85 ], [ 0, %70 ], [ 0, %55 ], !dbg !1309
  %93 = phi i8 [ %90, %85 ], [ 61, %70 ], [ 61, %55 ], !dbg !1308
  %94 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !1310
  call void @llvm.dbg.value(metadata i64 %92, metadata !187, metadata !DIExpression()), !dbg !1255
  %95 = getelementptr inbounds i8, i8* %10, i64 5, !dbg !1311
  call void @llvm.dbg.value(metadata i8* %95, metadata !188, metadata !DIExpression()), !dbg !1255
  store i8 %93, i8* %94, align 1, !dbg !1312, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %96 = icmp eq i64 %9, 5, !dbg !1313
  br i1 %96, label %159, label %97, !dbg !1315

97:                                               ; preds = %91
  %98 = icmp eq i64 %92, 0, !dbg !1316
  br i1 %98, label %99, label %101, !dbg !1316

99:                                               ; preds = %97
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1255
  store i8 61, i8* %95, align 1, !dbg !1317, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %100 = icmp eq i64 %9, 6, !dbg !1318
  br i1 %100, label %159, label %131, !dbg !1320

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, i8* %12, i64 3, !dbg !1321
  %103 = load i8, i8* %102, align 1, !dbg !1321, !tbaa !590
  %104 = lshr i8 %103, 2, !dbg !1322
  %105 = and i8 %104, 31, !dbg !1323
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %106, !dbg !1324
  %108 = load i8, i8* %107, align 1, !dbg !1324, !tbaa !590
  %109 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1325
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1255
  store i8 %108, i8* %95, align 1, !dbg !1317, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %110 = icmp eq i64 %9, 6, !dbg !1318
  br i1 %110, label %159, label %111, !dbg !1320

111:                                              ; preds = %101
  %112 = zext i8 %103 to i64, !dbg !1326
  %113 = shl nuw nsw i64 %112, 3, !dbg !1327
  %114 = add nsw i64 %92, -1, !dbg !1328
  call void @llvm.dbg.value(metadata i64 %114, metadata !187, metadata !DIExpression()), !dbg !1255
  %115 = icmp eq i64 %114, 0, !dbg !1328
  br i1 %115, label %116, label %121, !dbg !1328

116:                                              ; preds = %111
  %117 = and i64 %113, 24, !dbg !1329
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %117, !dbg !1330
  %119 = load i8, i8* %118, align 1, !dbg !1330, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %114, metadata !187, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1255
  store i8 %119, i8* %109, align 1, !dbg !1331, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %120 = icmp eq i64 %9, 7, !dbg !1332
  br i1 %120, label %159, label %141, !dbg !1334

121:                                              ; preds = %111
  %122 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1335
  %123 = load i8, i8* %122, align 1, !dbg !1335, !tbaa !590
  %124 = lshr i8 %123, 5, !dbg !1336
  %125 = zext i8 %124 to i64, !dbg !1336
  %126 = and i64 %113, 24, !dbg !1329
  %127 = or i64 %126, %125, !dbg !1329
  %128 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %127, !dbg !1330
  %129 = load i8, i8* %128, align 1, !dbg !1330, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %114, metadata !187, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1255
  store i8 %129, i8* %109, align 1, !dbg !1331, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %130 = icmp eq i64 %9, 7, !dbg !1332
  br i1 %130, label %159, label %134, !dbg !1334

131:                                              ; preds = %99
  %132 = getelementptr inbounds i8, i8* %10, i64 6, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %114, metadata !187, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1255
  store i8 61, i8* %132, align 1, !dbg !1331, !tbaa !590
  call void @llvm.dbg.value(metadata i64 %9, metadata !189, metadata !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value)), !dbg !1255
  %133 = icmp eq i64 %9, 7, !dbg !1332
  br i1 %133, label %159, label %141, !dbg !1334

134:                                              ; preds = %121
  %135 = getelementptr inbounds i8, i8* %12, i64 4, !dbg !1337
  %136 = load i8, i8* %135, align 1, !dbg !1337, !tbaa !590
  %137 = and i8 %136, 31, !dbg !1338
  %138 = zext i8 %137 to i64
  %139 = getelementptr inbounds [32 x i8], [32 x i8]* @base32_encode.b32str, i64 0, i64 %138, !dbg !1339
  %140 = load i8, i8* %139, align 1, !dbg !1339, !tbaa !590
  br label %141, !dbg !1340

141:                                              ; preds = %116, %131, %134
  %142 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %116 ]
  %143 = phi i64 [ %114, %134 ], [ 0, %131 ], [ 0, %116 ]
  %144 = phi i8 [ %140, %134 ], [ 61, %131 ], [ 61, %116 ], !dbg !1340
  %145 = getelementptr inbounds i8, i8* %10, i64 7, !dbg !1341
  call void @llvm.dbg.value(metadata i8* %10, metadata !188, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1255
  store i8 %144, i8* %145, align 1, !dbg !1342, !tbaa !590
  %146 = add nsw i64 %9, -8, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %146, metadata !189, metadata !DIExpression()), !dbg !1255
  %147 = icmp eq i64 %146, 0, !dbg !1343
  br i1 %147, label %159, label %148, !dbg !1345

148:                                              ; preds = %141
  %149 = getelementptr inbounds i8, i8* %10, i64 8, !dbg !1346
  call void @llvm.dbg.value(metadata i8* %149, metadata !188, metadata !DIExpression()), !dbg !1255
  %150 = add nsw i64 %143, -1
  %151 = select i1 %142, i64 0, i64 %150, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %151, metadata !187, metadata !DIExpression()), !dbg !1255
  %152 = icmp eq i64 %151, 0, !dbg !1348
  %153 = select i1 %152, i64 0, i64 5, !dbg !1350
  %154 = getelementptr i8, i8* %12, i64 %153, !dbg !1350
  call void @llvm.dbg.value(metadata i64 %146, metadata !189, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %154, metadata !186, metadata !DIExpression()), !dbg !1255
  br i1 %152, label %157, label %8, !dbg !1258, !llvm.loop !1351

155:                                              ; preds = %4
  call void @llvm.dbg.value(metadata i64 %3, metadata !189, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata i8* %2, metadata !188, metadata !DIExpression()), !dbg !1255
  %156 = icmp eq i64 %3, 0, !dbg !1353
  br i1 %156, label %159, label %157, !dbg !1355

157:                                              ; preds = %148, %155
  %158 = phi i8* [ %2, %155 ], [ %149, %148 ]
  store i8 0, i8* %158, align 1, !dbg !1356, !tbaa !590
  br label %159, !dbg !1357

159:                                              ; preds = %131, %101, %70, %42, %29, %8, %24, %39, %55, %91, %99, %116, %141, %60, %121, %157, %155
  ret void, !dbg !1358
}

; Function Attrs: nofree nounwind uwtable
define dso_local i64 @base32_encode_alloc(i8* nocapture noundef readonly %0, i64 noundef %1, i8** nocapture noundef writeonly %2) local_unnamed_addr #15 !dbg !1359 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1363, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %1, metadata !1364, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i8** %2, metadata !1365, metadata !DIExpression()), !dbg !1368
  %4 = sdiv i64 %1, 5, !dbg !1369
  %5 = mul i64 %4, 5
  %6 = sub i64 %1, %5
  %7 = icmp ne i64 %6, 0, !dbg !1370
  %8 = zext i1 %7 to i64
  %9 = add nsw i64 %4, %8, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %9, metadata !1366, metadata !DIExpression()), !dbg !1368
  %10 = icmp slt i64 %9, 0, !dbg !1372
  br i1 %10, label %11, label %16, !dbg !1372

11:                                               ; preds = %3
  %12 = icmp ne i64 %9, -1, !dbg !1372
  %13 = add nsw i64 %9, -1, !dbg !1372
  %14 = icmp ult i64 %13, -1152921504606846977, !dbg !1372
  %15 = select i1 %12, i1 %14, i1 false, !dbg !1372
  br i1 %15, label %21, label %18, !dbg !1372

16:                                               ; preds = %3
  %17 = icmp ugt i64 %9, 1152921504606846975, !dbg !1372
  br i1 %17, label %21, label %18, !dbg !1372

18:                                               ; preds = %16, %11
  call void @llvm.dbg.value(metadata i64 %9, metadata !1367, metadata !DIExpression(DW_OP_constu, 3, DW_OP_shl, DW_OP_stack_value)), !dbg !1368
  %19 = shl nsw i64 %9, 3, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %19, metadata !1367, metadata !DIExpression()), !dbg !1368
  %20 = icmp slt i64 %1, 0
  br i1 %20, label %21, label %22, !dbg !1374

21:                                               ; preds = %11, %16, %18
  store i8* null, i8** %2, align 8, !dbg !1375, !tbaa !486
  br label %27, !dbg !1377

22:                                               ; preds = %18
  %23 = or i64 %19, 1, !dbg !1378
  call void @llvm.dbg.value(metadata i64 %23, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.value(metadata i64 %23, metadata !1379, metadata !DIExpression()) #37, !dbg !1385
  %24 = tail call noalias i8* @malloc(i64 noundef %23) #37, !dbg !1387
  store i8* %24, i8** %2, align 8, !dbg !1388, !tbaa !486
  %25 = icmp eq i8* %24, null, !dbg !1389
  br i1 %25, label %27, label %26, !dbg !1391

26:                                               ; preds = %22
  tail call void @base32_encode(i8* noundef %0, i64 noundef %1, i8* noundef nonnull %24, i64 noundef %23), !dbg !1392
  br label %27, !dbg !1393

27:                                               ; preds = %22, %26, %21
  %28 = phi i64 [ 0, %21 ], [ %19, %26 ], [ %23, %22 ], !dbg !1368
  ret i64 %28, !dbg !1394
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind uwtable
define dso_local i1 @base32_decode_ctx(%struct.base32_decode_context* noundef %0, i8* noalias noundef %1, i64 noundef %2, i8* noalias noundef %3, i64* nocapture noundef %4) local_unnamed_addr #15 !dbg !1395 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1399, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %1, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %2, metadata !1401, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %3, metadata !1402, metadata !DIExpression()), !dbg !1415
  store i8* %3, i8** %6, align 8, !tbaa !486
  call void @llvm.dbg.value(metadata i64* %4, metadata !1403, metadata !DIExpression()), !dbg !1415
  %8 = icmp eq %struct.base32_decode_context* %0, null, !dbg !1416
  call void @llvm.dbg.value(metadata i1 %8, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  call void @llvm.dbg.value(metadata i8 0, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 0, metadata !1406, metadata !DIExpression()), !dbg !1415
  br i1 %8, label %14, label %9, !dbg !1417

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0, !dbg !1418
  %11 = load i32, i32* %10, align 4, !dbg !1418, !tbaa !843
  call void @llvm.dbg.value(metadata i32 %11, metadata !1406, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %2, metadata !1401, metadata !DIExpression()), !dbg !1415
  %12 = icmp eq i64 %2, 0, !dbg !1421
  call void @llvm.dbg.value(metadata i1 %12, metadata !1405, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1415
  %13 = icmp ne i32 %11, 0, !dbg !1422
  br label %14, !dbg !1422

14:                                               ; preds = %9, %5
  %15 = phi i1 [ %13, %9 ], [ false, %5 ]
  %16 = phi i1 [ %12, %9 ], [ false, %5 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !1405, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i32 undef, metadata !1406, metadata !DIExpression()), !dbg !1415
  %17 = bitcast i64* %7 to i8*, !dbg !1423
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %17) #37, !dbg !1423
  %18 = load i64, i64* %4, align 8, !dbg !1424, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %18, metadata !1407, metadata !DIExpression()), !dbg !1415
  store i64 %18, i64* %7, align 8, !dbg !1425, !tbaa !933
  %19 = or i1 %15, %16
  %20 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 0
  %21 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 0
  br label %22, !dbg !1426

22:                                               ; preds = %111, %14
  %23 = phi i64 [ %18, %14 ], [ %114, %111 ], !dbg !1427
  %24 = phi i8* [ %1, %14 ], [ %112, %111 ]
  %25 = phi i64 [ %2, %14 ], [ %113, %111 ]
  call void @llvm.dbg.value(metadata i64 %23, metadata !1407, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %23, metadata !1408, metadata !DIExpression()), !dbg !1428
  br i1 %19, label %35, label %26, !dbg !1429

26:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %23, metadata !1407, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %23, metadata !1408, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8* %24, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %25, metadata !1401, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8** %6, metadata !1402, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  call void @llvm.dbg.value(metadata i64* %7, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  %27 = call fastcc i1 @decode_8(i8* noundef %24, i64 noundef %25, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1431
  br i1 %27, label %28, label %35, !dbg !1435

28:                                               ; preds = %26, %28
  %29 = phi i64 [ %32, %28 ], [ %25, %26 ]
  %30 = phi i8* [ %31, %28 ], [ %24, %26 ]
  call void @llvm.dbg.value(metadata i64 %29, metadata !1401, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %30, metadata !1400, metadata !DIExpression()), !dbg !1415
  %31 = getelementptr inbounds i8, i8* %30, i64 8, !dbg !1436
  call void @llvm.dbg.value(metadata i8* %31, metadata !1400, metadata !DIExpression()), !dbg !1415
  %32 = add nsw i64 %29, -8, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %32, metadata !1401, metadata !DIExpression()), !dbg !1415
  %33 = load i64, i64* %7, align 8, !dbg !1438, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %33, metadata !1408, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i8** %6, metadata !1402, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  call void @llvm.dbg.value(metadata i64* %7, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  %34 = call fastcc i1 @decode_8(i8* noundef nonnull %31, i64 noundef %32, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1431
  br i1 %34, label %28, label %35, !dbg !1435, !llvm.loop !1439

35:                                               ; preds = %28, %26, %22
  %36 = phi i8* [ %24, %22 ], [ %24, %26 ], [ %31, %28 ]
  %37 = phi i64 [ %25, %22 ], [ %25, %26 ], [ %32, %28 ]
  %38 = phi i64 [ %23, %22 ], [ %23, %26 ], [ %33, %28 ], !dbg !1428
  call void @llvm.dbg.value(metadata i64 %38, metadata !1408, metadata !DIExpression()), !dbg !1428
  call void @llvm.dbg.value(metadata i64 %37, metadata !1401, metadata !DIExpression()), !dbg !1415
  %39 = icmp eq i64 %37, 0, !dbg !1442
  %40 = xor i1 %39, true, !dbg !1444
  %41 = or i1 %16, %40, !dbg !1444
  br i1 %41, label %42, label %115, !dbg !1444

42:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %37, metadata !1401, metadata !DIExpression()), !dbg !1415
  br i1 %39, label %50, label %43, !dbg !1445

43:                                               ; preds = %42
  call void @llvm.dbg.value(metadata i8* %36, metadata !1400, metadata !DIExpression()), !dbg !1415
  %44 = load i8, i8* %36, align 1, !dbg !1446, !tbaa !590
  %45 = icmp ne i8 %44, 10, !dbg !1447
  %46 = or i1 %8, %45, !dbg !1448
  br i1 %46, label %50, label %47, !dbg !1448

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1449
  call void @llvm.dbg.value(metadata i8* %48, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %37, metadata !1401, metadata !DIExpression()), !dbg !1415
  %49 = add nsw i64 %37, -1, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %49, metadata !1401, metadata !DIExpression()), !dbg !1415
  br label %111, !dbg !1452

50:                                               ; preds = %43, %42
  %51 = load i64, i64* %7, align 8, !dbg !1453, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %51, metadata !1407, metadata !DIExpression()), !dbg !1415
  %52 = sub i64 %51, %38, !dbg !1454
  %53 = load i8*, i8** %6, align 8, !dbg !1455, !tbaa !486
  call void @llvm.dbg.value(metadata i8* %53, metadata !1402, metadata !DIExpression()), !dbg !1415
  %54 = getelementptr inbounds i8, i8* %53, i64 %52, !dbg !1455
  call void @llvm.dbg.value(metadata i8* %54, metadata !1402, metadata !DIExpression()), !dbg !1415
  store i8* %54, i8** %6, align 8, !dbg !1455, !tbaa !486
  call void @llvm.dbg.value(metadata i64 %38, metadata !1407, metadata !DIExpression()), !dbg !1415
  store i64 %38, i64* %7, align 8, !dbg !1456, !tbaa !933
  call void @llvm.dbg.value(metadata i8* %36, metadata !1400, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i64 %37, metadata !1401, metadata !DIExpression()), !dbg !1415
  %55 = getelementptr inbounds i8, i8* %36, i64 %37, !dbg !1457
  call void @llvm.dbg.value(metadata i8* %55, metadata !1410, metadata !DIExpression()), !dbg !1458
  br i1 %8, label %93, label %56, !dbg !1459

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1460, metadata !DIExpression()) #37, !dbg !1476
  call void @llvm.dbg.value(metadata i8** undef, metadata !1466, metadata !DIExpression()) #37, !dbg !1476
  call void @llvm.dbg.value(metadata i8* %55, metadata !1467, metadata !DIExpression()) #37, !dbg !1476
  call void @llvm.dbg.value(metadata i64* undef, metadata !1468, metadata !DIExpression()) #37, !dbg !1476
  %57 = load i32, i32* %20, align 4, !dbg !1479, !tbaa !843, !noalias !1481
  switch i32 %57, label %66 [
    i32 8, label %58
    i32 0, label %59
  ], !dbg !1484

58:                                               ; preds = %56
  store i32 0, i32* %20, align 4, !dbg !1485, !tbaa !843, !noalias !1481
  br label %59, !dbg !1486

59:                                               ; preds = %58, %56
  call void @llvm.dbg.value(metadata i8* %36, metadata !1469, metadata !DIExpression()) #37, !dbg !1487
  %60 = icmp sgt i64 %37, 7, !dbg !1488
  br i1 %60, label %61, label %66, !dbg !1490

61:                                               ; preds = %59
  %62 = tail call i8* @memchr(i8* noundef nonnull dereferenceable(8) %36, i32 noundef 10, i64 noundef 8) #38, !dbg !1491
  %63 = icmp eq i8* %62, null, !dbg !1492
  br i1 %63, label %64, label %69, !dbg !1493

64:                                               ; preds = %61
  %65 = getelementptr inbounds i8, i8* %36, i64 8, !dbg !1494
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i64 %95, metadata !1401, metadata !DIExpression()), !dbg !1415
  br label %102, !dbg !1496

66:                                               ; preds = %56, %59
  %67 = phi i32 [ 0, %59 ], [ %57, %56 ]
  call void @llvm.dbg.value(metadata i8* %36, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  %68 = icmp sgt i64 %37, 0, !dbg !1499
  br i1 %68, label %69, label %89, !dbg !1500

69:                                               ; preds = %61, %66
  %70 = phi i32 [ 0, %61 ], [ %67, %66 ]
  br label %71, !dbg !1501

71:                                               ; preds = %69, %79
  %72 = phi i32 [ %70, %69 ], [ %83, %79 ]
  %73 = phi i8* [ %36, %69 ], [ %76, %79 ]
  br label %74, !dbg !1501

74:                                               ; preds = %71, %87
  %75 = phi i8* [ %76, %87 ], [ %73, %71 ]
  call void @llvm.dbg.value(metadata i8* %75, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !1502
  call void @llvm.dbg.value(metadata i8* %76, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  %77 = load i8, i8* %75, align 1, !dbg !1503, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %77, metadata !1474, metadata !DIExpression()) #37, !dbg !1504
  %78 = icmp eq i8 %77, 10, !dbg !1505
  br i1 %78, label %87, label %79, !dbg !1501

79:                                               ; preds = %74
  %80 = add nsw i32 %72, 1, !dbg !1507
  store i32 %80, i32* %20, align 4, !dbg !1507, !tbaa !843, !noalias !1481
  %81 = sext i32 %72 to i64, !dbg !1509
  %82 = getelementptr inbounds %struct.base32_decode_context, %struct.base32_decode_context* %0, i64 0, i32 1, i64 %81, !dbg !1509
  store i8 %77, i8* %82, align 1, !dbg !1510, !tbaa !590, !noalias !1481
  %83 = load i32, i32* %20, align 4, !dbg !1511, !tbaa !843, !noalias !1481
  %84 = icmp ne i32 %83, 8, !dbg !1513
  %85 = icmp ult i8* %76, %55
  %86 = select i1 %84, i1 %85, i1 false, !dbg !1514
  call void @llvm.dbg.value(metadata i8* %76, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  br i1 %86, label %71, label %89, !dbg !1514

87:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i8* %76, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  %88 = icmp ult i8* %76, %55, !dbg !1499
  br i1 %88, label %74, label %89, !dbg !1500

89:                                               ; preds = %87, %79, %66
  %90 = phi i32 [ %67, %66 ], [ %72, %87 ], [ %83, %79 ], !dbg !1515
  %91 = phi i8* [ %36, %66 ], [ %76, %79 ], [ %76, %87 ], !dbg !1498
  call void @llvm.dbg.value(metadata i8* %91, metadata !1472, metadata !DIExpression()) #37, !dbg !1498
  %92 = sext i32 %90 to i64, !dbg !1516
  br label %93

93:                                               ; preds = %89, %50
  %94 = phi i8* [ %36, %50 ], [ %91, %89 ]
  %95 = phi i64 [ %37, %50 ], [ %92, %89 ]
  %96 = phi i8* [ %36, %50 ], [ %21, %89 ], !dbg !1517
  call void @llvm.dbg.value(metadata i8* %96, metadata !1414, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.value(metadata i64 %95, metadata !1401, metadata !DIExpression()), !dbg !1415
  %97 = icmp eq i64 %95, 0, !dbg !1518
  br i1 %97, label %115, label %98, !dbg !1519

98:                                               ; preds = %93
  %99 = icmp sgt i64 %95, 7, !dbg !1520
  %100 = or i1 %16, %99, !dbg !1496
  %101 = or i1 %8, %100, !dbg !1496
  br i1 %101, label %102, label %115, !dbg !1496

102:                                              ; preds = %64, %98
  %103 = phi i8* [ %65, %64 ], [ %94, %98 ]
  %104 = phi i64 [ 8, %64 ], [ %95, %98 ]
  %105 = phi i8* [ %36, %64 ], [ %96, %98 ]
  call void @llvm.dbg.value(metadata i64 %95, metadata !1401, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8** %6, metadata !1402, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  call void @llvm.dbg.value(metadata i64* %7, metadata !1407, metadata !DIExpression(DW_OP_deref)), !dbg !1415
  %106 = call fastcc i1 @decode_8(i8* noundef %105, i64 noundef %104, i8** noundef nonnull %6, i64* noundef nonnull %7), !dbg !1521
  br i1 %106, label %107, label %115, !dbg !1523

107:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i8* %94, metadata !1400, metadata !DIExpression()), !dbg !1415
  %108 = ptrtoint i8* %55 to i64, !dbg !1524
  %109 = ptrtoint i8* %103 to i64, !dbg !1524
  %110 = sub i64 %108, %109, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %110, metadata !1401, metadata !DIExpression()), !dbg !1415
  br label %111

111:                                              ; preds = %47, %107
  %112 = phi i8* [ %103, %107 ], [ %48, %47 ]
  %113 = phi i64 [ %110, %107 ], [ %49, %47 ]
  %114 = load i64, i64* %7, align 8, !dbg !1427, !tbaa !933
  br label %22

115:                                              ; preds = %93, %98, %102, %35
  %116 = phi i64 [ %37, %35 ], [ 0, %93 ], [ 0, %98 ], [ 1, %102 ]
  %117 = load i64, i64* %7, align 8, !dbg !1525, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %117, metadata !1407, metadata !DIExpression()), !dbg !1415
  %118 = load i64, i64* %4, align 8, !dbg !1526, !tbaa !933
  %119 = sub nsw i64 %118, %117, !dbg !1526
  store i64 %119, i64* %4, align 8, !dbg !1526, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %113, metadata !1401, metadata !DIExpression()), !dbg !1415
  %120 = icmp eq i64 %116, 0, !dbg !1527
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %17) #37, !dbg !1528
  ret i1 %120, !dbg !1529
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define internal fastcc i1 @decode_8(i8* noalias nocapture noundef readonly %0, i64 noundef %1, i8** nocapture noundef %2, i64* nocapture noundef %3) unnamed_addr #17 !dbg !1530 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1534, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 %1, metadata !1535, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8** %2, metadata !1536, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64* %3, metadata !1537, metadata !DIExpression()), !dbg !1539
  %5 = icmp slt i64 %1, 8, !dbg !1540
  br i1 %5, label %200, label %6, !dbg !1542

6:                                                ; preds = %4
  %7 = load i8, i8* %0, align 1, !dbg !1543, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %7, metadata !1233, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %7, metadata !1223, metadata !DIExpression()), !dbg !1547
  %8 = zext i8 %7 to i64, !dbg !1549
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %8, !dbg !1550
  %10 = load i8, i8* %9, align 1, !dbg !1550, !tbaa !590
  %11 = icmp sgt i8 %10, -1, !dbg !1551
  br i1 %11, label %12, label %200, !dbg !1552

12:                                               ; preds = %6
  %13 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1553
  %14 = load i8, i8* %13, align 1, !dbg !1553, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %14, metadata !1233, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %14, metadata !1223, metadata !DIExpression()), !dbg !1556
  %15 = zext i8 %14 to i64, !dbg !1558
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %15, !dbg !1559
  %17 = load i8, i8* %16, align 1, !dbg !1559, !tbaa !590
  %18 = icmp sgt i8 %17, -1, !dbg !1560
  br i1 %18, label %19, label %200, !dbg !1561

19:                                               ; preds = %12
  %20 = load i8*, i8** %2, align 8, !dbg !1562, !tbaa !486
  call void @llvm.dbg.value(metadata i8* %20, metadata !1538, metadata !DIExpression()), !dbg !1539
  %21 = load i64, i64* %3, align 8, !dbg !1563, !tbaa !933
  %22 = icmp eq i64 %21, 0, !dbg !1563
  br i1 %22, label %30, label %23, !dbg !1565

23:                                               ; preds = %19
  %24 = shl i8 %10, 3, !dbg !1566
  %25 = lshr i8 %17, 2, !dbg !1568
  %26 = or i8 %25, %24, !dbg !1569
  %27 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1570
  call void @llvm.dbg.value(metadata i8* %27, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8 %26, i8* %20, align 1, !dbg !1571, !tbaa !590
  %28 = load i64, i64* %3, align 8, !dbg !1572, !tbaa !933
  %29 = add nsw i64 %28, -1, !dbg !1572
  store i64 %29, i64* %3, align 8, !dbg !1572, !tbaa !933
  br label %30, !dbg !1573

30:                                               ; preds = %23, %19
  %31 = phi i64 [ %29, %23 ], [ 0, %19 ]
  %32 = phi i8* [ %27, %23 ], [ %20, %19 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8* %32, metadata !1538, metadata !DIExpression()), !dbg !1539
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1574
  %34 = load i8, i8* %33, align 1, !dbg !1574, !tbaa !590
  %35 = icmp eq i8 %34, 61, !dbg !1576
  br i1 %35, label %36, label %59, !dbg !1577

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1578
  %38 = load i8, i8* %37, align 1, !dbg !1578, !tbaa !590
  %39 = icmp eq i8 %38, 61, !dbg !1581
  br i1 %39, label %40, label %197, !dbg !1582

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1583
  %42 = load i8, i8* %41, align 1, !dbg !1583, !tbaa !590
  %43 = icmp eq i8 %42, 61, !dbg !1584
  br i1 %43, label %44, label %197, !dbg !1585

44:                                               ; preds = %40
  %45 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1586
  %46 = load i8, i8* %45, align 1, !dbg !1586, !tbaa !590
  %47 = icmp eq i8 %46, 61, !dbg !1587
  br i1 %47, label %48, label %197, !dbg !1588

48:                                               ; preds = %44
  %49 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1589
  %50 = load i8, i8* %49, align 1, !dbg !1589, !tbaa !590
  %51 = icmp eq i8 %50, 61, !dbg !1590
  br i1 %51, label %52, label %197, !dbg !1591

52:                                               ; preds = %48
  %53 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1592
  %54 = load i8, i8* %53, align 1, !dbg !1592, !tbaa !590
  %55 = icmp eq i8 %54, 61, !dbg !1593
  %56 = and i8 %17, 3
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false, !dbg !1594
  br i1 %58, label %195, label %197, !dbg !1594

59:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %34, metadata !1233, metadata !DIExpression()), !dbg !1595
  call void @llvm.dbg.value(metadata i8 %34, metadata !1223, metadata !DIExpression()), !dbg !1599
  %60 = zext i8 %34 to i64, !dbg !1601
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %60, !dbg !1602
  %62 = load i8, i8* %61, align 1, !dbg !1602, !tbaa !590
  %63 = icmp sgt i8 %62, -1, !dbg !1603
  br i1 %63, label %64, label %197, !dbg !1604

64:                                               ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1605
  %66 = load i8, i8* %65, align 1, !dbg !1605, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %66, metadata !1233, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 %66, metadata !1223, metadata !DIExpression()), !dbg !1608
  %67 = zext i8 %66 to i64, !dbg !1610
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %67, !dbg !1611
  %69 = load i8, i8* %68, align 1, !dbg !1611, !tbaa !590
  %70 = icmp sgt i8 %69, -1, !dbg !1612
  br i1 %70, label %71, label %197, !dbg !1613

71:                                               ; preds = %64
  %72 = icmp eq i64 %31, 0, !dbg !1614
  br i1 %72, label %82, label %73, !dbg !1616

73:                                               ; preds = %71
  %74 = shl i8 %17, 6, !dbg !1617
  %75 = shl nuw i8 %62, 1, !dbg !1619
  %76 = or i8 %75, %74, !dbg !1620
  %77 = lshr i8 %69, 4, !dbg !1621
  %78 = or i8 %76, %77, !dbg !1622
  %79 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !1623
  call void @llvm.dbg.value(metadata i8* %79, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8 %78, i8* %32, align 1, !dbg !1624, !tbaa !590
  %80 = load i64, i64* %3, align 8, !dbg !1625, !tbaa !933
  %81 = add nsw i64 %80, -1, !dbg !1625
  store i64 %81, i64* %3, align 8, !dbg !1625, !tbaa !933
  br label %82, !dbg !1626

82:                                               ; preds = %73, %71
  %83 = phi i64 [ %81, %73 ], [ 0, %71 ]
  %84 = phi i8* [ %79, %73 ], [ %32, %71 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8* %84, metadata !1538, metadata !DIExpression()), !dbg !1539
  %85 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1627
  %86 = load i8, i8* %85, align 1, !dbg !1627, !tbaa !590
  %87 = icmp eq i8 %86, 61, !dbg !1629
  br i1 %87, label %88, label %103, !dbg !1630

88:                                               ; preds = %82
  %89 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1631
  %90 = load i8, i8* %89, align 1, !dbg !1631, !tbaa !590
  %91 = icmp eq i8 %90, 61, !dbg !1634
  br i1 %91, label %92, label %197, !dbg !1635

92:                                               ; preds = %88
  %93 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1636
  %94 = load i8, i8* %93, align 1, !dbg !1636, !tbaa !590
  %95 = icmp eq i8 %94, 61, !dbg !1637
  br i1 %95, label %96, label %197, !dbg !1638

96:                                               ; preds = %92
  %97 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1639
  %98 = load i8, i8* %97, align 1, !dbg !1639, !tbaa !590
  %99 = icmp eq i8 %98, 61, !dbg !1640
  %100 = and i8 %66, -17
  %101 = icmp eq i8 %100, 65
  %102 = select i1 %99, i1 %101, i1 false, !dbg !1641
  br i1 %102, label %195, label %197, !dbg !1641

103:                                              ; preds = %82
  call void @llvm.dbg.value(metadata i8 %86, metadata !1233, metadata !DIExpression()), !dbg !1642
  call void @llvm.dbg.value(metadata i8 %86, metadata !1223, metadata !DIExpression()), !dbg !1646
  %104 = zext i8 %86 to i64, !dbg !1648
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %104, !dbg !1649
  %106 = load i8, i8* %105, align 1, !dbg !1649, !tbaa !590
  %107 = icmp sgt i8 %106, -1, !dbg !1650
  br i1 %107, label %108, label %197, !dbg !1651

108:                                              ; preds = %103
  %109 = icmp eq i64 %83, 0, !dbg !1652
  br i1 %109, label %117, label %110, !dbg !1654

110:                                              ; preds = %108
  %111 = shl i8 %69, 4, !dbg !1655
  %112 = lshr i8 %106, 1, !dbg !1657
  %113 = or i8 %112, %111, !dbg !1658
  %114 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !1659
  call void @llvm.dbg.value(metadata i8* %114, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8 %113, i8* %84, align 1, !dbg !1660, !tbaa !590
  %115 = load i64, i64* %3, align 8, !dbg !1661, !tbaa !933
  %116 = add nsw i64 %115, -1, !dbg !1661
  store i64 %116, i64* %3, align 8, !dbg !1661, !tbaa !933
  br label %117, !dbg !1662

117:                                              ; preds = %110, %108
  %118 = phi i64 [ %116, %110 ], [ 0, %108 ]
  %119 = phi i8* [ %114, %110 ], [ %84, %108 ], !dbg !1663
  call void @llvm.dbg.value(metadata i8* %119, metadata !1538, metadata !DIExpression()), !dbg !1539
  %120 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1664
  %121 = load i8, i8* %120, align 1, !dbg !1664, !tbaa !590
  %122 = icmp eq i8 %121, 61, !dbg !1666
  br i1 %122, label %123, label %138, !dbg !1667

123:                                              ; preds = %117
  %124 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1668
  %125 = load i8, i8* %124, align 1, !dbg !1668, !tbaa !590
  %126 = icmp eq i8 %125, 61, !dbg !1671
  br i1 %126, label %127, label %197, !dbg !1672

127:                                              ; preds = %123
  %128 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1673
  %129 = load i8, i8* %128, align 1, !dbg !1673, !tbaa !590
  %130 = icmp eq i8 %129, 61, !dbg !1674
  br i1 %130, label %131, label %197, !dbg !1675

131:                                              ; preds = %127
  %132 = load i8, i8* %85, align 1, !dbg !1676, !tbaa !590
  %133 = zext i8 %132 to i64, !dbg !1678
  %134 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %133, !dbg !1678
  %135 = load i8, i8* %134, align 1, !dbg !1678, !tbaa !590
  %136 = and i8 %135, 1, !dbg !1679
  %137 = icmp eq i8 %136, 0, !dbg !1679
  br i1 %137, label %195, label %197, !dbg !1680

138:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i8 %121, metadata !1233, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8 %121, metadata !1223, metadata !DIExpression()), !dbg !1685
  %139 = zext i8 %121 to i64, !dbg !1687
  %140 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %139, !dbg !1688
  %141 = load i8, i8* %140, align 1, !dbg !1688, !tbaa !590
  %142 = icmp sgt i8 %141, -1, !dbg !1689
  br i1 %142, label %143, label %197, !dbg !1690

143:                                              ; preds = %138
  %144 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1691
  %145 = load i8, i8* %144, align 1, !dbg !1691, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %145, metadata !1233, metadata !DIExpression()), !dbg !1692
  call void @llvm.dbg.value(metadata i8 %145, metadata !1223, metadata !DIExpression()), !dbg !1694
  %146 = zext i8 %145 to i64, !dbg !1696
  %147 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %146, !dbg !1697
  %148 = load i8, i8* %147, align 1, !dbg !1697, !tbaa !590
  %149 = icmp sgt i8 %148, -1, !dbg !1698
  br i1 %149, label %150, label %197, !dbg !1699

150:                                              ; preds = %143
  %151 = icmp eq i64 %118, 0, !dbg !1700
  br i1 %151, label %165, label %152, !dbg !1702

152:                                              ; preds = %150
  %153 = load i8, i8* %85, align 1, !dbg !1703, !tbaa !590
  %154 = zext i8 %153 to i64, !dbg !1705
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %154, !dbg !1705
  %156 = load i8, i8* %155, align 1, !dbg !1705, !tbaa !590
  %157 = shl i8 %156, 7, !dbg !1706
  %158 = shl i8 %141, 2, !dbg !1707
  %159 = lshr i8 %148, 3, !dbg !1708
  %160 = or i8 %159, %158, !dbg !1709
  %161 = or i8 %160, %157, !dbg !1710
  %162 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !1711
  call void @llvm.dbg.value(metadata i8* %162, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8 %161, i8* %119, align 1, !dbg !1712, !tbaa !590
  %163 = load i64, i64* %3, align 8, !dbg !1713, !tbaa !933
  %164 = add nsw i64 %163, -1, !dbg !1713
  store i64 %164, i64* %3, align 8, !dbg !1713, !tbaa !933
  br label %165, !dbg !1714

165:                                              ; preds = %152, %150
  %166 = phi i64 [ %164, %152 ], [ 0, %150 ]
  %167 = phi i8* [ %162, %152 ], [ %119, %150 ], !dbg !1715
  call void @llvm.dbg.value(metadata i8* %167, metadata !1538, metadata !DIExpression()), !dbg !1539
  %168 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !1716
  %169 = load i8, i8* %168, align 1, !dbg !1716, !tbaa !590
  %170 = icmp eq i8 %169, 61, !dbg !1718
  br i1 %170, label %188, label %171, !dbg !1719

171:                                              ; preds = %165
  call void @llvm.dbg.value(metadata i8 %169, metadata !1233, metadata !DIExpression()), !dbg !1720
  call void @llvm.dbg.value(metadata i8 %169, metadata !1223, metadata !DIExpression()), !dbg !1724
  %172 = zext i8 %169 to i64, !dbg !1726
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %172, !dbg !1727
  %174 = load i8, i8* %173, align 1, !dbg !1727, !tbaa !590
  %175 = icmp sgt i8 %174, -1, !dbg !1728
  br i1 %175, label %176, label %197, !dbg !1729

176:                                              ; preds = %171
  %177 = icmp eq i64 %166, 0, !dbg !1730
  br i1 %177, label %195, label %178, !dbg !1732

178:                                              ; preds = %176
  %179 = load i8, i8* %144, align 1, !dbg !1733, !tbaa !590
  %180 = zext i8 %179 to i64, !dbg !1735
  %181 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %180, !dbg !1735
  %182 = load i8, i8* %181, align 1, !dbg !1735, !tbaa !590
  %183 = shl i8 %182, 5, !dbg !1736
  %184 = or i8 %183, %174, !dbg !1737
  %185 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !1738
  call void @llvm.dbg.value(metadata i8* %185, metadata !1538, metadata !DIExpression()), !dbg !1539
  store i8 %184, i8* %167, align 1, !dbg !1739, !tbaa !590
  %186 = load i64, i64* %3, align 8, !dbg !1740, !tbaa !933
  %187 = add nsw i64 %186, -1, !dbg !1740
  store i64 %187, i64* %3, align 8, !dbg !1740, !tbaa !933
  br label %195, !dbg !1741

188:                                              ; preds = %165
  %189 = load i8, i8* %144, align 1, !dbg !1742, !tbaa !590
  %190 = zext i8 %189 to i64, !dbg !1745
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* @base32_to_int, i64 0, i64 %190, !dbg !1745
  %192 = load i8, i8* %191, align 1, !dbg !1745, !tbaa !590
  %193 = and i8 %192, 7, !dbg !1746
  %194 = icmp eq i8 %193, 0, !dbg !1746
  br i1 %194, label %195, label %197, !dbg !1747

195:                                              ; preds = %96, %52, %178, %176, %188, %131
  %196 = phi i8* [ %119, %131 ], [ %185, %178 ], [ %167, %176 ], [ %167, %188 ], [ %32, %52 ], [ %84, %96 ], !dbg !1539
  call void @llvm.dbg.value(metadata i8* %196, metadata !1538, metadata !DIExpression()), !dbg !1539
  br label %197, !dbg !1748

197:                                              ; preds = %188, %171, %143, %138, %131, %127, %123, %103, %96, %92, %88, %64, %59, %52, %48, %44, %40, %36, %195
  %198 = phi i8* [ %196, %195 ], [ %32, %36 ], [ %32, %40 ], [ %32, %44 ], [ %32, %48 ], [ %32, %52 ], [ %32, %59 ], [ %32, %64 ], [ %84, %88 ], [ %84, %92 ], [ %84, %96 ], [ %84, %103 ], [ %119, %123 ], [ %119, %127 ], [ %119, %131 ], [ %119, %138 ], [ %119, %143 ], [ %167, %171 ], [ %167, %188 ]
  %199 = phi i1 [ true, %195 ], [ false, %36 ], [ false, %40 ], [ false, %44 ], [ false, %48 ], [ false, %52 ], [ false, %59 ], [ false, %64 ], [ false, %88 ], [ false, %92 ], [ false, %96 ], [ false, %103 ], [ false, %123 ], [ false, %127 ], [ false, %131 ], [ false, %138 ], [ false, %143 ], [ false, %171 ], [ false, %188 ]
  store i8* %198, i8** %2, align 8, !dbg !1539, !tbaa !486
  br label %200, !dbg !1749

200:                                              ; preds = %197, %6, %12, %4
  %201 = phi i1 [ false, %4 ], [ false, %12 ], [ false, %6 ], [ %199, %197 ], !dbg !1539
  ret i1 %201, !dbg !1749
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local i1 @base32_decode_alloc_ctx(%struct.base32_decode_context* noundef %0, i8* noundef %1, i64 noundef %2, i8** nocapture noundef %3, i64* noundef writeonly %4) local_unnamed_addr #18 !dbg !1750 {
  %6 = alloca i64, align 8
  call void @llvm.dbg.value(metadata %struct.base32_decode_context* %0, metadata !1754, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8* %1, metadata !1755, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64 %2, metadata !1756, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8** %3, metadata !1757, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i64* %4, metadata !1758, metadata !DIExpression()), !dbg !1760
  %7 = bitcast i64* %6 to i8*, !dbg !1761
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #37, !dbg !1761
  %8 = ashr i64 %2, 3, !dbg !1762
  %9 = mul nsw i64 %8, 5, !dbg !1763
  %10 = add nsw i64 %9, 5, !dbg !1763
  call void @llvm.dbg.value(metadata i64 %10, metadata !1759, metadata !DIExpression()), !dbg !1760
  store i64 %10, i64* %6, align 8, !dbg !1764, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %10, metadata !1379, metadata !DIExpression()) #37, !dbg !1765
  %11 = tail call noalias i8* @malloc(i64 noundef %10) #37, !dbg !1767
  store i8* %11, i8** %3, align 8, !dbg !1768, !tbaa !486
  %12 = icmp eq i8* %11, null, !dbg !1769
  br i1 %12, label %21, label %13, !dbg !1771

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata i64* %6, metadata !1759, metadata !DIExpression(DW_OP_deref)), !dbg !1760
  %14 = call i1 @base32_decode_ctx(%struct.base32_decode_context* noundef %0, i8* noundef %1, i64 noundef %2, i8* noundef nonnull %11, i64* noundef nonnull %6), !dbg !1772
  br i1 %14, label %17, label %15, !dbg !1774

15:                                               ; preds = %13
  %16 = load i8*, i8** %3, align 8, !dbg !1775, !tbaa !486
  tail call void @free(i8* noundef %16) #37, !dbg !1777
  store i8* null, i8** %3, align 8, !dbg !1778, !tbaa !486
  br label %21, !dbg !1779

17:                                               ; preds = %13
  %18 = icmp eq i64* %4, null, !dbg !1780
  br i1 %18, label %21, label %19, !dbg !1782

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8, !dbg !1783, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %20, metadata !1759, metadata !DIExpression()), !dbg !1760
  store i64 %20, i64* %4, align 8, !dbg !1784, !tbaa !933
  br label %21, !dbg !1785

21:                                               ; preds = %17, %19, %5, %15
  %22 = phi i1 [ false, %15 ], [ true, %5 ], [ true, %19 ], [ true, %17 ], !dbg !1760
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #37, !dbg !1786
  ret i1 %22, !dbg !1786
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_file_name(i8* noundef %0) local_unnamed_addr #20 !dbg !1787 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1789, metadata !DIExpression()), !dbg !1790
  store i8* %0, i8** @file_name, align 8, !dbg !1791, !tbaa !486
  ret void, !dbg !1792
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #20 !dbg !1793 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !1797, metadata !DIExpression()), !dbg !1798
  store i8 %2, i8* @ignore_EPIPE, align 4, !dbg !1799, !tbaa !1800
  ret void, !dbg !1802
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #18 !dbg !1803 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1808, !tbaa !486
  %2 = tail call i32 @close_stream(%struct._IO_FILE* noundef %1) #37, !dbg !1809
  %3 = icmp eq i32 %2, 0, !dbg !1810
  br i1 %3, label %22, label %4, !dbg !1811

4:                                                ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 4, !dbg !1812, !tbaa !1800, !range !1813
  %6 = icmp eq i8 %5, 0, !dbg !1812
  br i1 %6, label %11, label %7, !dbg !1814

7:                                                ; preds = %4
  %8 = tail call i32* @__errno_location() #40, !dbg !1815
  %9 = load i32, i32* %8, align 4, !dbg !1815, !tbaa !581
  %10 = icmp eq i32 %9, 32, !dbg !1816
  br i1 %10, label %22, label %11, !dbg !1817

11:                                               ; preds = %7, %4
  %12 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i64 0, i64 0), i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1.71, i64 0, i64 0), i32 noundef 5) #37, !dbg !1818
  call void @llvm.dbg.value(metadata i8* %12, metadata !1805, metadata !DIExpression()), !dbg !1819
  %13 = load i8*, i8** @file_name, align 8, !dbg !1820, !tbaa !486
  %14 = icmp eq i8* %13, null, !dbg !1820
  %15 = tail call i32* @__errno_location() #40, !dbg !1822
  %16 = load i32, i32* %15, align 4, !dbg !1822, !tbaa !581
  br i1 %14, label %19, label %17, !dbg !1823

17:                                               ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* noundef nonnull %13) #37, !dbg !1824
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.72, i64 0, i64 0), i8* noundef %18, i8* noundef %12) #37, !dbg !1824
  br label %20, !dbg !1824

19:                                               ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 noundef 0, i32 noundef %16, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.73, i64 0, i64 0), i8* noundef %12) #37, !dbg !1825
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1826, !tbaa !581
  tail call void @_exit(i32 noundef %21) #39, !dbg !1827
  unreachable, !dbg !1827

22:                                               ; preds = %7, %0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1828, !tbaa !486
  %24 = tail call i32 @close_stream(%struct._IO_FILE* noundef %23) #37, !dbg !1830
  %25 = icmp eq i32 %24, 0, !dbg !1831
  br i1 %25, label %28, label %26, !dbg !1832

26:                                               ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1833, !tbaa !581
  tail call void @_exit(i32 noundef %27) #39, !dbg !1834
  unreachable, !dbg !1834

28:                                               ; preds = %22
  ret void, !dbg !1835
}

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* nocapture noundef readonly %3) local_unnamed_addr #22 !dbg !1836 {
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1840, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i32 %1, metadata !1841, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.value(metadata i8* %2, metadata !1842, metadata !DIExpression()), !dbg !1844
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1843, metadata !DIExpression()), !dbg !1845
  tail call fastcc void @flush_stdout(), !dbg !1846
  %6 = load void ()*, void ()** @error_print_progname, align 8, !dbg !1847, !tbaa !486
  %7 = icmp eq void ()* %6, null, !dbg !1847
  br i1 %7, label %9, label %8, !dbg !1849

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !1850
  br label %13, !dbg !1850

9:                                                ; preds = %4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1851, !tbaa !486
  %11 = tail call i8* @getprogname() #38, !dbg !1851
  %12 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %10, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i64 0, i64 0), i8* noundef %11) #37, !dbg !1851
  br label %13

13:                                               ; preds = %9, %8
  %14 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1853
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #37, !dbg !1853
  %15 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1853
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %14, i8* noundef nonnull align 8 dereferenceable(32) %15, i64 32, i1 false), !dbg !1853, !tbaa.struct !1854
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5), !dbg !1853
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #37, !dbg !1853
  ret void, !dbg !1855
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #18 !dbg !1856 {
  call void @llvm.dbg.value(metadata i32 1, metadata !1858, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i32 1, metadata !1860, metadata !DIExpression()) #37, !dbg !1863
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !1866
  %2 = icmp slt i32 %1, 0, !dbg !1867
  br i1 %2, label %6, label %3, !dbg !1868

3:                                                ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1869, !tbaa !486
  %5 = tail call i32 @fflush_unlocked(%struct._IO_FILE* noundef %4) #37, !dbg !1869
  br label %6, !dbg !1869

6:                                                ; preds = %3, %0
  ret void, !dbg !1870
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef nonnull %2, %"struct.std::__va_list"* nocapture noundef readonly %3) unnamed_addr #18 !dbg !1871 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1873, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %1, metadata !1874, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i8* %2, metadata !1875, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %3, metadata !1876, metadata !DIExpression()), !dbg !1878
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1879, !tbaa !486
  %8 = bitcast %"struct.std::__va_list"* %3 to i8*, !dbg !1880
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %7, metadata !1881, metadata !DIExpression()) #37, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %2, metadata !1922, metadata !DIExpression()) #37, !dbg !1924
  %9 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !1926
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1926, !noalias !1927
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !1926
  %10 = call i32 @__vfprintf_chk(%struct._IO_FILE* noundef %7, i32 noundef 1, i8* noundef nonnull %2, %"struct.std::__va_list"* noundef nonnull %6) #37, !dbg !1926
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37, !dbg !1926, !noalias !1927
  %11 = load i32, i32* @error_message_count, align 4, !dbg !1931, !tbaa !581
  %12 = add i32 %11, 1, !dbg !1931
  store i32 %12, i32* @error_message_count, align 4, !dbg !1931, !tbaa !581
  %13 = icmp eq i32 %1, 0, !dbg !1932
  br i1 %13, label %24, label %14, !dbg !1934

14:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !1935, metadata !DIExpression()) #37, !dbg !1943
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0, !dbg !1945
  call void @llvm.lifetime.start.p0i8(i64 1024, i8* nonnull %15) #37, !dbg !1945
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1939, metadata !DIExpression()) #37, !dbg !1946
  %16 = call i8* @strerror_r(i32 noundef %1, i8* noundef nonnull %15, i64 noundef 1024) #37, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %16, metadata !1938, metadata !DIExpression()) #37, !dbg !1943
  %17 = icmp eq i8* %16, null, !dbg !1948
  br i1 %17, label %18, label %20, !dbg !1950

18:                                               ; preds = %14
  %19 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4.75, i64 0, i64 0), i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5.76, i64 0, i64 0), i32 noundef 5) #37, !dbg !1951
  call void @llvm.dbg.value(metadata i8* %19, metadata !1938, metadata !DIExpression()) #37, !dbg !1943
  br label %20, !dbg !1952

20:                                               ; preds = %14, %18
  %21 = phi i8* [ %16, %14 ], [ %19, %18 ], !dbg !1943
  call void @llvm.dbg.value(metadata i8* %21, metadata !1938, metadata !DIExpression()) #37, !dbg !1943
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1953, !tbaa !486
  %23 = call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %22, i32 noundef 1, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6.77, i64 0, i64 0), i8* noundef %21) #37, !dbg !1953
  call void @llvm.lifetime.end.p0i8(i64 1024, i8* nonnull %15) #37, !dbg !1954
  br label %24, !dbg !1955

24:                                               ; preds = %20, %4
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1956, !tbaa !486
  call void @llvm.dbg.value(metadata i32 10, metadata !1957, metadata !DIExpression()) #37, !dbg !1963
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %25, metadata !1962, metadata !DIExpression()) #37, !dbg !1963
  %26 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 5, !dbg !1965
  %27 = load i8*, i8** %26, align 8, !dbg !1965, !tbaa !1128
  %28 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %25, i64 0, i32 6, !dbg !1965
  %29 = load i8*, i8** %28, align 8, !dbg !1965, !tbaa !1129
  %30 = icmp ult i8* %27, %29, !dbg !1965
  br i1 %30, label %33, label %31, !dbg !1965, !prof !1130

31:                                               ; preds = %24
  %32 = call i32 @__overflow(%struct._IO_FILE* noundef nonnull %25, i32 noundef 10) #37, !dbg !1965
  br label %35, !dbg !1965

33:                                               ; preds = %24
  %34 = getelementptr inbounds i8, i8* %27, i64 1, !dbg !1965
  store i8* %34, i8** %26, align 8, !dbg !1965, !tbaa !1128
  store i8 10, i8* %27, align 1, !dbg !1965, !tbaa !590
  br label %35, !dbg !1965

35:                                               ; preds = %31, %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1966, !tbaa !486
  %37 = call i32 @fflush_unlocked(%struct._IO_FILE* noundef %36) #37, !dbg !1966
  %38 = icmp eq i32 %0, 0, !dbg !1967
  br i1 %38, label %40, label %39, !dbg !1969

39:                                               ; preds = %35
  call void @exit(i32 noundef %0) #39, !dbg !1970
  unreachable, !dbg !1970

40:                                               ; preds = %35
  ret void, !dbg !1971
}

declare i32 @__vfprintf_chk(%struct._IO_FILE* noundef, i32 noundef, i8* noundef, %"struct.std::__va_list"* noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1972 i8* @strerror_r(i32 noundef, i8* noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !1976 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, i8* noundef %2, ...) local_unnamed_addr #18 !dbg !1980 {
  %4 = alloca %"struct.std::__va_list", align 8
  %5 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !1984, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 %1, metadata !1985, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i8* %2, metadata !1986, metadata !DIExpression()), !dbg !1988
  %6 = bitcast %"struct.std::__va_list"* %4 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %6) #37, !dbg !1989
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !1987, metadata !DIExpression()), !dbg !1990
  call void @llvm.va_start(i8* nonnull %6), !dbg !1991
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !1992
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37, !dbg !1992
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %7, i8* noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !1992, !tbaa.struct !1854
  call void @verror(i32 noundef %0, i32 noundef %1, i8* noundef %2, %"struct.std::__va_list"* noundef nonnull %5) #43, !dbg !1992
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37, !dbg !1992
  call void @llvm.va_end(i8* nonnull %6), !dbg !1993
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %6) #37, !dbg !1994
  ret void, !dbg !1994
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #23

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #23

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* nocapture noundef readonly %5) local_unnamed_addr #22 !dbg !212 {
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !230, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %1, metadata !231, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %2, metadata !232, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i32 %3, metadata !233, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8* %4, metadata !234, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !235, metadata !DIExpression()), !dbg !1996
  %8 = load i32, i32* @error_one_per_line, align 4, !dbg !1997, !tbaa !581
  %9 = icmp eq i32 %8, 0, !dbg !1997
  br i1 %9, label %24, label %10, !dbg !1999

10:                                               ; preds = %6
  %11 = load i32, i32* @verror_at_line.old_line_number, align 4, !dbg !2000, !tbaa !581
  %12 = icmp eq i32 %11, %3, !dbg !2003
  br i1 %12, label %13, label %23, !dbg !2004

13:                                               ; preds = %10
  %14 = load i8*, i8** @verror_at_line.old_file_name, align 8, !dbg !2005, !tbaa !486
  %15 = icmp eq i8* %14, %2, !dbg !2006
  br i1 %15, label %39, label %16, !dbg !2007

16:                                               ; preds = %13
  %17 = icmp ne i8* %14, null, !dbg !2008
  %18 = icmp ne i8* %2, null
  %19 = and i1 %18, %17, !dbg !2009
  br i1 %19, label %20, label %23, !dbg !2009

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(i8* noundef nonnull %14, i8* noundef nonnull %2) #38, !dbg !2010
  %22 = icmp eq i32 %21, 0, !dbg !2011
  br i1 %22, label %39, label %23, !dbg !2012

23:                                               ; preds = %20, %16, %10
  store i8* %2, i8** @verror_at_line.old_file_name, align 8, !dbg !2013, !tbaa !486
  store i32 %3, i32* @verror_at_line.old_line_number, align 4, !dbg !2014, !tbaa !581
  br label %24, !dbg !2015

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2016
  %25 = load void ()*, void ()** @error_print_progname, align 8, !dbg !2017, !tbaa !486
  %26 = icmp eq void ()* %25, null, !dbg !2017
  br i1 %26, label %28, label %27, !dbg !2019

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !2020
  br label %32, !dbg !2020

28:                                               ; preds = %24
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2021, !tbaa !486
  %30 = tail call i8* @getprogname() #38, !dbg !2021
  %31 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %29, i32 noundef 1, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.80, i64 0, i64 0), i8* noundef %30) #37, !dbg !2021
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2023, !tbaa !486
  %34 = icmp eq i8* %2, null, !dbg !2023
  %35 = select i1 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.81, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.82, i64 0, i64 0), !dbg !2023
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %33, i32 noundef 1, i8* noundef %35, i8* noundef %2, i32 noundef %3) #37, !dbg !2023
  %37 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2024
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %37) #37, !dbg !2024
  %38 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !2024
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %37, i8* noundef nonnull align 8 dereferenceable(32) %38, i64 32, i1 false), !dbg !2024, !tbaa.struct !1854
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7), !dbg !2024
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %37) #37, !dbg !2024
  br label %39, !dbg !2025

39:                                               ; preds = %13, %20, %32
  ret void, !dbg !2025
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, ...) local_unnamed_addr #18 !dbg !2026 {
  %6 = alloca %"struct.std::__va_list", align 8
  %7 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2030, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %1, metadata !2031, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %2, metadata !2032, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %3, metadata !2033, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i8* %4, metadata !2034, metadata !DIExpression()), !dbg !2036
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !2037
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37, !dbg !2037
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %6, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.va_start(i8* nonnull %8), !dbg !2039
  %9 = bitcast %"struct.std::__va_list"* %7 to i8*, !dbg !2040
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #37, !dbg !2040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %9, i8* noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !dbg !2040, !tbaa.struct !1854
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, i8* noundef %2, i32 noundef %3, i8* noundef %4, %"struct.std::__va_list"* noundef nonnull %7) #43, !dbg !2040
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #37, !dbg !2040
  call void @llvm.va_end(i8* nonnull %8), !dbg !2041
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37, !dbg !2042
  ret void, !dbg !2042
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #18 !dbg !2043 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2049, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %1, metadata !2050, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i64 %2, metadata !2051, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata i32 %3, metadata !2052, metadata !DIExpression()), !dbg !2053
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2054
  ret void, !dbg !2055
}

; Function Attrs: nounwind
declare !dbg !2056 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(%struct._IO_FILE* noundef %0, i32 noundef %1) local_unnamed_addr #18 !dbg !2059 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2097, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata i32 %1, metadata !2098, metadata !DIExpression()), !dbg !2099
  %3 = icmp eq %struct._IO_FILE* %0, null, !dbg !2100
  br i1 %3, label %7, label %4, !dbg !2102

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2103
  call void @llvm.dbg.value(metadata i32 %5, metadata !2049, metadata !DIExpression()) #37, !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2050, metadata !DIExpression()) #37, !dbg !2104
  call void @llvm.dbg.value(metadata i64 0, metadata !2051, metadata !DIExpression()) #37, !dbg !2104
  call void @llvm.dbg.value(metadata i32 %1, metadata !2052, metadata !DIExpression()) #37, !dbg !2104
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2106
  br label %7, !dbg !2107

7:                                                ; preds = %4, %2
  ret void, !dbg !2108
}

; Function Attrs: nofree nounwind
declare !dbg !2109 noundef i32 @fileno(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #18 !dbg !2112 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2150, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression()), !dbg !2154
  %2 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2155
  call void @llvm.dbg.value(metadata i32 %2, metadata !2152, metadata !DIExpression()), !dbg !2154
  %3 = icmp slt i32 %2, 0, !dbg !2156
  br i1 %3, label %4, label %6, !dbg !2158

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2159
  br label %24, !dbg !2160

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2161
  %8 = icmp eq i32 %7, 0, !dbg !2161
  br i1 %8, label %13, label %9, !dbg !2163

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2164
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2165
  %12 = icmp eq i64 %11, -1, !dbg !2166
  br i1 %12, label %16, label %13, !dbg !2167

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2168
  %15 = icmp eq i32 %14, 0, !dbg !2168
  br i1 %15, label %16, label %18, !dbg !2169

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression()), !dbg !2154
  %17 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %21, metadata !2153, metadata !DIExpression()), !dbg !2154
  br label %24, !dbg !2171

18:                                               ; preds = %13
  %19 = tail call i32* @__errno_location() #40, !dbg !2172
  %20 = load i32, i32* %19, align 4, !dbg !2172, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %20, metadata !2151, metadata !DIExpression()), !dbg !2154
  call void @llvm.dbg.value(metadata i32 0, metadata !2153, metadata !DIExpression()), !dbg !2154
  %21 = tail call i32 @fclose(%struct._IO_FILE* noundef nonnull %0), !dbg !2170
  call void @llvm.dbg.value(metadata i32 %21, metadata !2153, metadata !DIExpression()), !dbg !2154
  %22 = icmp eq i32 %20, 0, !dbg !2173
  br i1 %22, label %24, label %23, !dbg !2171

23:                                               ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !2175, !tbaa !581
  call void @llvm.dbg.value(metadata i32 -1, metadata !2153, metadata !DIExpression()), !dbg !2154
  br label %24, !dbg !2177

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2154
  ret i32 %25, !dbg !2178
}

; Function Attrs: nofree nounwind
declare !dbg !2179 noundef i32 @fclose(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2180 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE* noundef %0) local_unnamed_addr #18 !dbg !2184 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2222, metadata !DIExpression()), !dbg !2223
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !2224
  br i1 %2, label %6, label %3, !dbg !2226

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2227
  %5 = icmp eq i32 %4, 0, !dbg !2227
  br i1 %5, label %6, label %8, !dbg !2228

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* noundef %0), !dbg !2229
  br label %17, !dbg !2230

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2231, metadata !DIExpression()) #37, !dbg !2236
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2238
  %10 = load i32, i32* %9, align 8, !dbg !2238, !tbaa !909
  %11 = and i32 %10, 256, !dbg !2240
  %12 = icmp eq i32 %11, 0, !dbg !2240
  br i1 %12, label %15, label %13, !dbg !2241

13:                                               ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2242
  br label %15, !dbg !2242

15:                                               ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* noundef nonnull %0), !dbg !2243
  br label %17, !dbg !2244

17:                                               ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !2223
  ret i32 %18, !dbg !2245
}

; Function Attrs: nofree nounwind
declare !dbg !2246 noundef i32 @fflush(%struct._IO_FILE* nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(%struct._IO_FILE* noundef nonnull %0) local_unnamed_addr #18 !dbg !2247 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2285, metadata !DIExpression()), !dbg !2286
  tail call void @__fpurge(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2287
  ret i32 0, !dbg !2288
}

; Function Attrs: nounwind
declare void @__fpurge(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #18 !dbg !2289 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2327, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i64 %1, metadata !2328, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i32 %2, metadata !2329, metadata !DIExpression()), !dbg !2333
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2334
  %5 = load i8*, i8** %4, align 8, !dbg !2334, !tbaa !2335
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2336
  %7 = load i8*, i8** %6, align 8, !dbg !2336, !tbaa !2337
  %8 = icmp eq i8* %5, %7, !dbg !2338
  br i1 %8, label %9, label %28, !dbg !2339

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2340
  %11 = load i8*, i8** %10, align 8, !dbg !2340, !tbaa !1128
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !2341
  %13 = load i8*, i8** %12, align 8, !dbg !2341, !tbaa !2342
  %14 = icmp eq i8* %11, %13, !dbg !2343
  br i1 %14, label %15, label %28, !dbg !2344

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !2345
  %17 = load i8*, i8** %16, align 8, !dbg !2345, !tbaa !2346
  %18 = icmp eq i8* %17, null, !dbg !2347
  br i1 %18, label %19, label %28, !dbg !2348

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* noundef nonnull %0) #37, !dbg !2349
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2350
  call void @llvm.dbg.value(metadata i64 %21, metadata !2330, metadata !DIExpression()), !dbg !2351
  %22 = icmp eq i64 %21, -1, !dbg !2352
  br i1 %22, label %30, label %23, !dbg !2354

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !2355
  %25 = load i32, i32* %24, align 8, !dbg !2356, !tbaa !909
  %26 = and i32 %25, -17, !dbg !2356
  store i32 %26, i32* %24, align 8, !dbg !2356, !tbaa !909
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !2357
  store i64 %21, i64* %27, align 8, !dbg !2358, !tbaa !2359
  br label %30, !dbg !2360

28:                                               ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2361
  br label %30, !dbg !2362

30:                                               ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !2333
  ret i32 %31, !dbg !2363
}

; Function Attrs: nofree nounwind
declare !dbg !2364 noundef i32 @fseeko(%struct._IO_FILE* nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i8* @getprogname() local_unnamed_addr #24 !dbg !2367 {
  %1 = load i8*, i8** @program_invocation_short_name, align 8, !dbg !2370, !tbaa !486
  ret i8* %1, !dbg !2371
}

; Function Attrs: mustprogress nofree nounwind uwtable willreturn
define dso_local void @set_program_name(i8* noundef nonnull %0) local_unnamed_addr #25 !dbg !2372 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2374, metadata !DIExpression()), !dbg !2377
  %2 = tail call i8* @strrchr(i8* noundef nonnull %0, i32 noundef 47) #38, !dbg !2378
  call void @llvm.dbg.value(metadata i8* %2, metadata !2375, metadata !DIExpression()), !dbg !2377
  %3 = icmp eq i8* %2, null, !dbg !2379
  %4 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2379
  %5 = select i1 %3, i8* %0, i8* %4, !dbg !2379
  call void @llvm.dbg.value(metadata i8* %5, metadata !2376, metadata !DIExpression()), !dbg !2377
  %6 = ptrtoint i8* %5 to i64, !dbg !2380
  %7 = ptrtoint i8* %0 to i64, !dbg !2380
  %8 = sub i64 %6, %7, !dbg !2380
  %9 = icmp sgt i64 %8, 6, !dbg !2382
  br i1 %9, label %10, label %19, !dbg !2383

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, i8* %5, i64 -7, !dbg !2384
  call void @llvm.dbg.value(metadata i8* %11, metadata !2385, metadata !DIExpression()) #37, !dbg !2392
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), metadata !2390, metadata !DIExpression()) #37, !dbg !2392
  call void @llvm.dbg.value(metadata i64 7, metadata !2391, metadata !DIExpression()) #37, !dbg !2392
  %12 = tail call i32 @bcmp(i8* noundef nonnull dereferenceable(7) %11, i8* noundef nonnull dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), i64 7) #37, !dbg !2394
  %13 = icmp eq i32 %12, 0, !dbg !2395
  br i1 %13, label %14, label %19, !dbg !2396

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata i8* %5, metadata !2374, metadata !DIExpression()), !dbg !2377
  %15 = tail call i32 @strncmp(i8* noundef nonnull %5, i8* noundef nonnull dereferenceable(4) getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.102, i64 0, i64 0), i64 noundef 3) #38, !dbg !2397
  %16 = icmp eq i32 %15, 0, !dbg !2400
  %17 = select i1 %16, i64 3, i64 0, !dbg !2401
  %18 = getelementptr i8, i8* %5, i64 %17, !dbg !2401
  br label %19, !dbg !2401

19:                                               ; preds = %14, %10, %1
  %20 = phi i8* [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi i8* [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2377
  call void @llvm.dbg.value(metadata i8* %21, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i8* %20, metadata !2374, metadata !DIExpression()), !dbg !2377
  store i8* %20, i8** @program_name, align 8, !dbg !2402, !tbaa !486
  store i8* %20, i8** @program_invocation_name, align 8, !dbg !2403, !tbaa !486
  store i8* %21, i8** @program_invocation_short_name, align 8, !dbg !2404, !tbaa !486
  ret void, !dbg !2405
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i8* @strrchr(i8* noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local i8* @proper_name_lite(i8* noundef %0, i8* noundef readnone %1) local_unnamed_addr #18 !dbg !253 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !260, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %1, metadata !261, metadata !DIExpression()), !dbg !2406
  %5 = tail call i8* @dcgettext(i8* noundef null, i8* noundef %0, i32 noundef 5) #37, !dbg !2407
  call void @llvm.dbg.value(metadata i8* %5, metadata !262, metadata !DIExpression()), !dbg !2406
  %6 = icmp eq i8* %5, %0, !dbg !2408
  br i1 %6, label %7, label %17, !dbg !2410

7:                                                ; preds = %2
  %8 = bitcast i64* %4 to %struct.__mbstate_t*
  %9 = bitcast i32* %3 to i8*, !dbg !2411
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #37, !dbg !2411
  %10 = bitcast i64* %4 to i8*, !dbg !2412
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #37, !dbg !2412
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %8, metadata !268, metadata !DIExpression()), !dbg !2413
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %8, metadata !2414, metadata !DIExpression()) #37, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %10, metadata !2423, metadata !DIExpression()) #37, !dbg !2430
  call void @llvm.dbg.value(metadata i32 0, metadata !2428, metadata !DIExpression()) #37, !dbg !2430
  call void @llvm.dbg.value(metadata i64 8, metadata !2429, metadata !DIExpression()) #37, !dbg !2430
  store i64 0, i64* %4, align 8, !dbg !2432
  call void @llvm.dbg.value(metadata i32* %3, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !2406
  %11 = call i64 @mbrtoc32(i32* noundef nonnull %3, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @proper_name_lite.utf07FF, i64 0, i64 0), i64 noundef 2, %struct.__mbstate_t* noundef nonnull %8) #37, !dbg !2433
  %12 = icmp eq i64 %11, 2, !dbg !2435
  %13 = load i32, i32* %3, align 4
  call void @llvm.dbg.value(metadata i32 %13, metadata !263, metadata !DIExpression()), !dbg !2406
  %14 = icmp eq i32 %13, 2047
  %15 = select i1 %12, i1 %14, i1 false, !dbg !2436
  %16 = select i1 %15, i8* %1, i8* %0, !dbg !2406
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #37, !dbg !2437
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #37, !dbg !2437
  br label %17

17:                                               ; preds = %2, %7
  %18 = phi i8* [ %16, %7 ], [ %5, %2 ], !dbg !2406
  ret i8* %18, !dbg !2437
}

; Function Attrs: nounwind
declare !dbg !2438 i64 @mbrtoc32(i32* noundef, i8* noundef, i64 noundef, %struct.__mbstate_t* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull %struct.quoting_options* @clone_quoting_options(%struct.quoting_options* noundef %0) local_unnamed_addr #18 !dbg !2444 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2449, metadata !DIExpression()), !dbg !2452
  %2 = tail call i32* @__errno_location() #40, !dbg !2453
  %3 = load i32, i32* %2, align 4, !dbg !2453, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %3, metadata !2450, metadata !DIExpression()), !dbg !2452
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2454
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2454
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2454
  %7 = tail call noalias nonnull i8* @xmemdup(i8* noundef %6, i64 noundef 56) #44, !dbg !2455
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !2455
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !2451, metadata !DIExpression()), !dbg !2452
  store i32 %3, i32* %2, align 4, !dbg !2456, !tbaa !581
  ret %struct.quoting_options* %8, !dbg !2457
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local i32 @get_quoting_style(%struct.quoting_options* noundef readonly %0) local_unnamed_addr #24 !dbg !2458 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2464, metadata !DIExpression()), !dbg !2465
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !2466
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2466
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2467
  %5 = load i32, i32* %4, align 8, !dbg !2467, !tbaa !2468
  ret i32 %5, !dbg !2470
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local void @set_quoting_style(%struct.quoting_options* noundef writeonly %0, i32 noundef %1) local_unnamed_addr #20 !dbg !2471 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2475, metadata !DIExpression()), !dbg !2477
  call void @llvm.dbg.value(metadata i32 %1, metadata !2476, metadata !DIExpression()), !dbg !2477
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2478
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2478
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2479
  store i32 %1, i32* %5, align 8, !dbg !2480, !tbaa !2468
  ret void, !dbg !2481
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_char_quoting(%struct.quoting_options* noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #17 !dbg !2482 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2486, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 %1, metadata !2487, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 %2, metadata !2488, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i8 %1, metadata !2489, metadata !DIExpression()), !dbg !2494
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2495
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2495
  %6 = lshr i8 %1, 5, !dbg !2496
  %7 = zext i8 %6 to i64, !dbg !2496
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !2497
  call void @llvm.dbg.value(metadata i32* %8, metadata !2490, metadata !DIExpression()), !dbg !2494
  %9 = and i8 %1, 31, !dbg !2498
  %10 = zext i8 %9 to i32, !dbg !2498
  call void @llvm.dbg.value(metadata i32 %10, metadata !2492, metadata !DIExpression()), !dbg !2494
  %11 = load i32, i32* %8, align 4, !dbg !2499, !tbaa !581
  %12 = lshr i32 %11, %10, !dbg !2500
  %13 = and i32 %12, 1, !dbg !2501
  call void @llvm.dbg.value(metadata i32 %13, metadata !2493, metadata !DIExpression()), !dbg !2494
  %14 = and i32 %2, 1, !dbg !2502
  %15 = xor i32 %13, %14, !dbg !2503
  %16 = shl i32 %15, %10, !dbg !2504
  %17 = xor i32 %16, %11, !dbg !2505
  store i32 %17, i32* %8, align 4, !dbg !2505, !tbaa !581
  ret i32 %13, !dbg !2506
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local i32 @set_quoting_flags(%struct.quoting_options* noundef %0, i32 noundef %1) local_unnamed_addr #17 !dbg !2507 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2511, metadata !DIExpression()), !dbg !2514
  call void @llvm.dbg.value(metadata i32 %1, metadata !2512, metadata !DIExpression()), !dbg !2514
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !2515
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2517
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2511, metadata !DIExpression()), !dbg !2514
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2518
  %6 = load i32, i32* %5, align 4, !dbg !2518, !tbaa !2519
  call void @llvm.dbg.value(metadata i32 %6, metadata !2513, metadata !DIExpression()), !dbg !2514
  store i32 %1, i32* %5, align 4, !dbg !2520, !tbaa !2519
  ret i32 %6, !dbg !2521
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options* noundef writeonly %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #18 !dbg !2522 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !2526, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %1, metadata !2527, metadata !DIExpression()), !dbg !2529
  call void @llvm.dbg.value(metadata i8* %2, metadata !2528, metadata !DIExpression()), !dbg !2529
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !2530
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !2532
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()), !dbg !2529
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2533
  store i32 10, i32* %6, align 8, !dbg !2534, !tbaa !2468
  %7 = icmp ne i8* %1, null, !dbg !2535
  %8 = icmp ne i8* %2, null
  %9 = and i1 %7, %8, !dbg !2537
  br i1 %9, label %11, label %10, !dbg !2537

10:                                               ; preds = %3
  tail call void @abort() #39, !dbg !2538
  unreachable, !dbg !2538

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2539
  store i8* %1, i8** %12, align 8, !dbg !2540, !tbaa !2541
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2542
  store i8* %2, i8** %13, align 8, !dbg !2543, !tbaa !2544
  ret void, !dbg !2545
}

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef %4) local_unnamed_addr #18 !dbg !2546 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2550, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %1, metadata !2551, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %2, metadata !2552, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i64 %3, metadata !2553, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2554, metadata !DIExpression()), !dbg !2558
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !2559
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !2555, metadata !DIExpression()), !dbg !2558
  %8 = tail call i32* @__errno_location() #40, !dbg !2560
  %9 = load i32, i32* %8, align 4, !dbg !2560, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %9, metadata !2556, metadata !DIExpression()), !dbg !2558
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !2561
  %11 = load i32, i32* %10, align 8, !dbg !2561, !tbaa !2468
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !2562
  %13 = load i32, i32* %12, align 4, !dbg !2562, !tbaa !2519
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !2563
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !2564
  %16 = load i8*, i8** %15, align 8, !dbg !2564, !tbaa !2541
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !2565
  %18 = load i8*, i8** %17, align 8, !dbg !2565, !tbaa !2544
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %11, i32 noundef %13, i32* noundef nonnull %14, i8* noundef %16, i8* noundef %18), !dbg !2566
  call void @llvm.dbg.value(metadata i64 %19, metadata !2557, metadata !DIExpression()), !dbg !2558
  store i32 %9, i32* %8, align 4, !dbg !2567, !tbaa !581
  ret i64 %19, !dbg !2568
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %1, i8* noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32* noundef %6, i8* noundef %7, i8* noundef %8) unnamed_addr #18 !dbg !2569 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = bitcast i64* %14 to %struct.__mbstate_t*
  %16 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !2575, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %1, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %2, metadata !2577, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %3, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %4, metadata !2579, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %5, metadata !2580, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32* %6, metadata !2581, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %7, metadata !2582, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %8, metadata !2583, metadata !DIExpression()), !dbg !2637
  %17 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !2638
  %18 = icmp eq i64 %17, 1, !dbg !2639
  call void @llvm.dbg.value(metadata i1 %18, metadata !2584, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* null, metadata !2587, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !2588, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %5, metadata !2590, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2592, metadata !DIExpression()), !dbg !2637
  %19 = and i32 %5, 2, !dbg !2640
  %20 = icmp ne i32 %19, 0, !dbg !2640
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
  br label %36, !dbg !2640

36:                                               ; preds = %608, %9
  %37 = phi i32 [ %4, %9 ], [ 2, %608 ]
  %38 = phi i8* [ %7, %9 ], [ %113, %608 ]
  %39 = phi i8* [ %8, %9 ], [ %114, %608 ]
  %40 = phi i64 [ %3, %9 ], [ %133, %608 ]
  %41 = phi i64 [ 0, %9 ], [ %135, %608 ], !dbg !2641
  %42 = phi i8* [ null, %9 ], [ %116, %608 ], !dbg !2642
  %43 = phi i64 [ 0, %9 ], [ %117, %608 ], !dbg !2643
  %44 = phi i1 [ false, %9 ], [ %118, %608 ]
  %45 = phi i1 [ %20, %9 ], [ false, %608 ]
  %46 = phi i1 [ false, %9 ], [ %136, %608 ]
  %47 = phi i1 [ true, %9 ], [ false, %608 ]
  %48 = phi i64 [ %1, %9 ], [ %135, %608 ]
  call void @llvm.dbg.value(metadata i64 %48, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %43, metadata !2588, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %42, metadata !2587, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %41, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %40, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %39, metadata !2583, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %38, metadata !2582, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %37, metadata !2579, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.label(metadata !2630), !dbg !2644
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2637
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
  ], !dbg !2645

49:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 5, metadata !2579, metadata !DIExpression()), !dbg !2637
  br label %111, !dbg !2646

50:                                               ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 5, metadata !2579, metadata !DIExpression()), !dbg !2637
  br i1 %45, label %111, label %51, !dbg !2646

51:                                               ; preds = %50
  %52 = icmp eq i64 %48, 0, !dbg !2647
  br i1 %52, label %111, label %53, !dbg !2651

53:                                               ; preds = %51
  store i8 34, i8* %0, align 1, !dbg !2647, !tbaa !590
  br label %111, !dbg !2647

54:                                               ; preds = %36, %36
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.115, i64 0, i64 0), metadata !328, metadata !DIExpression()) #37, !dbg !2652
  call void @llvm.dbg.value(metadata i32 %37, metadata !329, metadata !DIExpression()) #37, !dbg !2652
  %55 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.115, i64 0, i64 0), i32 noundef 5) #37, !dbg !2656
  call void @llvm.dbg.value(metadata i8* %55, metadata !330, metadata !DIExpression()) #37, !dbg !2652
  %56 = icmp eq i8* %55, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.115, i64 0, i64 0), !dbg !2657
  br i1 %56, label %57, label %66, !dbg !2659

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #37, !dbg !2660
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #37, !dbg !2661
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %21, metadata !332, metadata !DIExpression()) #37, !dbg !2662
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %21, metadata !2663, metadata !DIExpression()) #37, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %23, metadata !2671, metadata !DIExpression()) #37, !dbg !2676
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()) #37, !dbg !2676
  call void @llvm.dbg.value(metadata i64 8, metadata !2675, metadata !DIExpression()) #37, !dbg !2676
  store i64 0, i64* %13, align 8, !dbg !2678
  call void @llvm.dbg.value(metadata i32* %12, metadata !331, metadata !DIExpression(DW_OP_deref)) #37, !dbg !2652
  %58 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %12, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %21) #37, !dbg !2679
  %59 = icmp eq i64 %58, 3, !dbg !2681
  %60 = load i32, i32* %12, align 4
  call void @llvm.dbg.value(metadata i32 %60, metadata !331, metadata !DIExpression()) #37, !dbg !2652
  %61 = icmp eq i32 %60, 8216
  %62 = select i1 %59, i1 %61, i1 false, !dbg !2682
  %63 = icmp eq i32 %37, 9, !dbg !2682
  %64 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), !dbg !2682
  %65 = select i1 %62, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i8* %64, !dbg !2682
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #37, !dbg !2683
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #37, !dbg !2683
  br label %66

66:                                               ; preds = %54, %57
  %67 = phi i8* [ %65, %57 ], [ %55, %54 ], !dbg !2652
  call void @llvm.dbg.value(metadata i8* %67, metadata !2582, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), metadata !328, metadata !DIExpression()) #37, !dbg !2684
  call void @llvm.dbg.value(metadata i32 %37, metadata !329, metadata !DIExpression()) #37, !dbg !2684
  %68 = call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13.116, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), i32 noundef 5) #37, !dbg !2686
  call void @llvm.dbg.value(metadata i8* %68, metadata !330, metadata !DIExpression()) #37, !dbg !2684
  %69 = icmp eq i8* %68, getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), !dbg !2687
  br i1 %69, label %70, label %79, !dbg !2688

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #37, !dbg !2689
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #37, !dbg !2690
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %24, metadata !332, metadata !DIExpression()) #37, !dbg !2691
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %24, metadata !2663, metadata !DIExpression()) #37, !dbg !2692
  call void @llvm.dbg.value(metadata i8* %26, metadata !2671, metadata !DIExpression()) #37, !dbg !2694
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()) #37, !dbg !2694
  call void @llvm.dbg.value(metadata i64 8, metadata !2675, metadata !DIExpression()) #37, !dbg !2694
  store i64 0, i64* %11, align 8, !dbg !2696
  call void @llvm.dbg.value(metadata i32* %10, metadata !331, metadata !DIExpression(DW_OP_deref)) #37, !dbg !2684
  %71 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %10, i8* noundef getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 0, i64 0), i64 noundef 3, %struct.__mbstate_t* noundef nonnull %24) #37, !dbg !2697
  %72 = icmp eq i64 %71, 3, !dbg !2698
  %73 = load i32, i32* %10, align 4
  call void @llvm.dbg.value(metadata i32 %73, metadata !331, metadata !DIExpression()) #37, !dbg !2684
  %74 = icmp eq i32 %73, 8216
  %75 = select i1 %72, i1 %74, i1 false, !dbg !2699
  %76 = icmp eq i32 %37, 9, !dbg !2699
  %77 = select i1 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), !dbg !2699
  %78 = select i1 %75, i8* getelementptr inbounds ([2 x [4 x i8]], [2 x [4 x i8]]* @gettext_quote.quote, i64 0, i64 1, i64 0), i8* %77, !dbg !2699
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #37, !dbg !2700
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #37, !dbg !2700
  br label %79

79:                                               ; preds = %70, %66, %36
  %80 = phi i8* [ %38, %36 ], [ %67, %66 ], [ %67, %70 ]
  %81 = phi i8* [ %39, %36 ], [ %68, %66 ], [ %78, %70 ]
  call void @llvm.dbg.value(metadata i8* %81, metadata !2583, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %80, metadata !2582, metadata !DIExpression()), !dbg !2637
  br i1 %45, label %97, label %82, !dbg !2701

82:                                               ; preds = %79
  call void @llvm.dbg.value(metadata i8* %80, metadata !2594, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 0, metadata !2585, metadata !DIExpression()), !dbg !2637
  %83 = load i8, i8* %80, align 1, !dbg !2703, !tbaa !590
  %84 = icmp eq i8 %83, 0, !dbg !2705
  br i1 %84, label %97, label %85, !dbg !2705

85:                                               ; preds = %82, %92
  %86 = phi i8 [ %95, %92 ], [ %83, %82 ]
  %87 = phi i8* [ %94, %92 ], [ %80, %82 ]
  %88 = phi i64 [ %93, %92 ], [ 0, %82 ]
  call void @llvm.dbg.value(metadata i8* %87, metadata !2594, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i64 %88, metadata !2585, metadata !DIExpression()), !dbg !2637
  %89 = icmp ult i64 %88, %48, !dbg !2706
  br i1 %89, label %90, label %92, !dbg !2709

90:                                               ; preds = %85
  %91 = getelementptr inbounds i8, i8* %0, i64 %88, !dbg !2706
  store i8 %86, i8* %91, align 1, !dbg !2706, !tbaa !590
  br label %92, !dbg !2706

92:                                               ; preds = %90, %85
  %93 = add i64 %88, 1, !dbg !2709
  call void @llvm.dbg.value(metadata i64 %93, metadata !2585, metadata !DIExpression()), !dbg !2637
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !2710
  call void @llvm.dbg.value(metadata i8* %94, metadata !2594, metadata !DIExpression()), !dbg !2702
  %95 = load i8, i8* %94, align 1, !dbg !2703, !tbaa !590
  %96 = icmp eq i8 %95, 0, !dbg !2705
  br i1 %96, label %97, label %85, !dbg !2705, !llvm.loop !2711

97:                                               ; preds = %92, %82, %79
  %98 = phi i64 [ 0, %79 ], [ 0, %82 ], [ %93, %92 ], !dbg !2713
  call void @llvm.dbg.value(metadata i64 %98, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %81, metadata !2587, metadata !DIExpression()), !dbg !2637
  %99 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %81) #38, !dbg !2714
  call void @llvm.dbg.value(metadata i64 %99, metadata !2588, metadata !DIExpression()), !dbg !2637
  br label %111, !dbg !2715

100:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 1, metadata !2589, metadata !DIExpression()), !dbg !2637
  br label %102, !dbg !2716

101:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2637
  br i1 %45, label %102, label %105, !dbg !2717

102:                                              ; preds = %101, %100, %36
  %103 = phi i1 [ %44, %101 ], [ %44, %36 ], [ true, %100 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 2, metadata !2579, metadata !DIExpression()), !dbg !2637
  br label %111, !dbg !2718

104:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 2, metadata !2579, metadata !DIExpression()), !dbg !2637
  br i1 %45, label %111, label %105, !dbg !2718

105:                                              ; preds = %101, %104
  %106 = phi i1 [ %44, %104 ], [ true, %101 ]
  %107 = icmp eq i64 %48, 0, !dbg !2719
  br i1 %107, label %111, label %108, !dbg !2723

108:                                              ; preds = %105
  store i8 39, i8* %0, align 1, !dbg !2719, !tbaa !590
  br label %111, !dbg !2719

109:                                              ; preds = %36
  call void @llvm.dbg.value(metadata i8 0, metadata !2590, metadata !DIExpression()), !dbg !2637
  br label %111, !dbg !2724

110:                                              ; preds = %36
  call void @abort() #39, !dbg !2725
  unreachable, !dbg !2725

111:                                              ; preds = %102, %49, %104, %108, %105, %36, %50, %53, %51, %109, %97
  %112 = phi i32 [ 0, %109 ], [ %37, %97 ], [ 5, %51 ], [ 5, %53 ], [ 5, %50 ], [ %37, %36 ], [ 2, %105 ], [ 2, %108 ], [ 2, %104 ], [ 5, %49 ], [ 2, %102 ]
  %113 = phi i8* [ %38, %109 ], [ %80, %97 ], [ %38, %51 ], [ %38, %53 ], [ %38, %50 ], [ %38, %36 ], [ %38, %105 ], [ %38, %108 ], [ %38, %104 ], [ %38, %49 ], [ %38, %102 ]
  %114 = phi i8* [ %39, %109 ], [ %81, %97 ], [ %39, %51 ], [ %39, %53 ], [ %39, %50 ], [ %39, %36 ], [ %39, %105 ], [ %39, %108 ], [ %39, %104 ], [ %39, %49 ], [ %39, %102 ]
  %115 = phi i64 [ 0, %109 ], [ %98, %97 ], [ 1, %51 ], [ 1, %53 ], [ 0, %50 ], [ 0, %36 ], [ 1, %105 ], [ 1, %108 ], [ 0, %104 ], [ 0, %49 ], [ 0, %102 ], !dbg !2713
  %116 = phi i8* [ %42, %109 ], [ %81, %97 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), %51 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), %53 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), %50 ], [ %42, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), %105 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), %108 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), %104 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.117, i64 0, i64 0), %49 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.118, i64 0, i64 0), %102 ], !dbg !2637
  %117 = phi i64 [ %43, %109 ], [ %99, %97 ], [ 1, %51 ], [ 1, %53 ], [ 1, %50 ], [ %43, %36 ], [ 1, %105 ], [ 1, %108 ], [ 1, %104 ], [ 1, %49 ], [ 1, %102 ], !dbg !2637
  %118 = phi i1 [ %44, %109 ], [ true, %97 ], [ true, %51 ], [ true, %53 ], [ true, %50 ], [ true, %36 ], [ %106, %105 ], [ %106, %108 ], [ %44, %104 ], [ true, %49 ], [ %103, %102 ]
  %119 = phi i1 [ false, %109 ], [ %45, %97 ], [ false, %51 ], [ false, %53 ], [ true, %50 ], [ false, %36 ], [ false, %105 ], [ false, %108 ], [ true, %104 ], [ true, %49 ], [ true, %102 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2590, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2589, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %117, metadata !2588, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %116, metadata !2587, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %115, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %114, metadata !2583, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8* %113, metadata !2582, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i32 %112, metadata !2579, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 0, metadata !2599, metadata !DIExpression()), !dbg !2726
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
  br label %132, !dbg !2727

132:                                              ; preds = %586, %111
  %133 = phi i64 [ %40, %111 ], [ %587, %586 ]
  %134 = phi i64 [ %115, %111 ], [ %588, %586 ], !dbg !2713
  %135 = phi i64 [ %41, %111 ], [ %589, %586 ], !dbg !2641
  %136 = phi i1 [ %46, %111 ], [ %590, %586 ]
  %137 = phi i1 [ %47, %111 ], [ %591, %586 ]
  %138 = phi i1 [ false, %111 ], [ %592, %586 ]
  %139 = phi i64 [ 0, %111 ], [ %595, %586 ], !dbg !2726
  %140 = phi i64 [ %48, %111 ], [ %594, %586 ]
  call void @llvm.dbg.value(metadata i64 %140, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %139, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %135, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %134, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %133, metadata !2578, metadata !DIExpression()), !dbg !2637
  %141 = icmp eq i64 %133, -1, !dbg !2728
  br i1 %141, label %142, label %146, !dbg !2729

142:                                              ; preds = %132
  %143 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2730
  %144 = load i8, i8* %143, align 1, !dbg !2730, !tbaa !590
  %145 = icmp eq i8 %144, 0, !dbg !2731
  br i1 %145, label %596, label %148, !dbg !2732

146:                                              ; preds = %132
  %147 = icmp eq i64 %139, %133, !dbg !2733
  br i1 %147, label %596, label %148, !dbg !2732

148:                                              ; preds = %142, %146
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 0, metadata !2605, metadata !DIExpression()), !dbg !2734
  br i1 %123, label %149, label %163, !dbg !2735

149:                                              ; preds = %148
  %150 = add i64 %139, %117, !dbg !2737
  %151 = select i1 %141, i1 %124, i1 false, !dbg !2738
  br i1 %151, label %152, label %154, !dbg !2738

152:                                              ; preds = %149
  %153 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38, !dbg !2739
  call void @llvm.dbg.value(metadata i64 %153, metadata !2578, metadata !DIExpression()), !dbg !2637
  br label %154, !dbg !2740

154:                                              ; preds = %149, %152
  %155 = phi i64 [ %153, %152 ], [ %133, %149 ], !dbg !2740
  call void @llvm.dbg.value(metadata i64 %155, metadata !2578, metadata !DIExpression()), !dbg !2637
  %156 = icmp ugt i64 %150, %155, !dbg !2741
  br i1 %156, label %163, label %157, !dbg !2742

157:                                              ; preds = %154
  %158 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2743
  call void @llvm.dbg.value(metadata i8* %158, metadata !2744, metadata !DIExpression()) #37, !dbg !2749
  call void @llvm.dbg.value(metadata i8* %116, metadata !2747, metadata !DIExpression()) #37, !dbg !2749
  call void @llvm.dbg.value(metadata i64 %117, metadata !2748, metadata !DIExpression()) #37, !dbg !2749
  %159 = call i32 @bcmp(i8* %158, i8* %116, i64 %117) #37, !dbg !2751
  %160 = icmp ne i32 %159, 0, !dbg !2752
  %161 = or i1 %160, %125, !dbg !2753
  %162 = xor i1 %160, true, !dbg !2753
  br i1 %161, label %163, label %647, !dbg !2753

163:                                              ; preds = %157, %154, %148
  %164 = phi i64 [ %155, %157 ], [ %155, %154 ], [ %133, %148 ]
  %165 = phi i1 [ %162, %157 ], [ false, %154 ], [ false, %148 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %164, metadata !2578, metadata !DIExpression()), !dbg !2637
  %166 = getelementptr inbounds i8, i8* %2, i64 %139, !dbg !2754
  %167 = load i8, i8* %166, align 1, !dbg !2754, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %167, metadata !2606, metadata !DIExpression()), !dbg !2734
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
  ], !dbg !2755

168:                                              ; preds = %163
  br i1 %118, label %169, label %215, !dbg !2756

169:                                              ; preds = %168
  br i1 %119, label %636, label %170, !dbg !2757

170:                                              ; preds = %169
  call void @llvm.dbg.value(metadata i8 1, metadata !2604, metadata !DIExpression()), !dbg !2734
  %171 = select i1 %120, i1 true, i1 %138, !dbg !2761
  br i1 %171, label %188, label %172, !dbg !2761

172:                                              ; preds = %170
  %173 = icmp ult i64 %134, %140, !dbg !2763
  br i1 %173, label %174, label %176, !dbg !2767

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2763
  store i8 39, i8* %175, align 1, !dbg !2763, !tbaa !590
  br label %176, !dbg !2763

176:                                              ; preds = %174, %172
  %177 = add i64 %134, 1, !dbg !2767
  call void @llvm.dbg.value(metadata i64 %177, metadata !2585, metadata !DIExpression()), !dbg !2637
  %178 = icmp ult i64 %177, %140, !dbg !2768
  br i1 %178, label %179, label %181, !dbg !2771

179:                                              ; preds = %176
  %180 = getelementptr inbounds i8, i8* %0, i64 %177, !dbg !2768
  store i8 36, i8* %180, align 1, !dbg !2768, !tbaa !590
  br label %181, !dbg !2768

181:                                              ; preds = %179, %176
  %182 = add i64 %134, 2, !dbg !2771
  call void @llvm.dbg.value(metadata i64 %182, metadata !2585, metadata !DIExpression()), !dbg !2637
  %183 = icmp ult i64 %182, %140, !dbg !2772
  br i1 %183, label %184, label %186, !dbg !2775

184:                                              ; preds = %181
  %185 = getelementptr inbounds i8, i8* %0, i64 %182, !dbg !2772
  store i8 39, i8* %185, align 1, !dbg !2772, !tbaa !590
  br label %186, !dbg !2772

186:                                              ; preds = %184, %181
  %187 = add i64 %134, 3, !dbg !2775
  call void @llvm.dbg.value(metadata i64 %187, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %188, !dbg !2776

188:                                              ; preds = %170, %186
  %189 = phi i64 [ %187, %186 ], [ %134, %170 ], !dbg !2637
  %190 = phi i1 [ true, %186 ], [ %138, %170 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %189, metadata !2585, metadata !DIExpression()), !dbg !2637
  %191 = icmp ult i64 %189, %140, !dbg !2777
  br i1 %191, label %192, label %194, !dbg !2780

192:                                              ; preds = %188
  %193 = getelementptr inbounds i8, i8* %0, i64 %189, !dbg !2777
  store i8 92, i8* %193, align 1, !dbg !2777, !tbaa !590
  br label %194, !dbg !2777

194:                                              ; preds = %192, %188
  %195 = add i64 %189, 1, !dbg !2780
  call void @llvm.dbg.value(metadata i64 %195, metadata !2585, metadata !DIExpression()), !dbg !2637
  br i1 %120, label %196, label %499, !dbg !2781

196:                                              ; preds = %194
  %197 = add i64 %139, 1, !dbg !2783
  %198 = icmp ult i64 %197, %164, !dbg !2784
  br i1 %198, label %199, label %456, !dbg !2785

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, i8* %2, i64 %197, !dbg !2786
  %201 = load i8, i8* %200, align 1, !dbg !2786, !tbaa !590
  %202 = add i8 %201, -48, !dbg !2787
  %203 = icmp ult i8 %202, 10, !dbg !2787
  br i1 %203, label %204, label %456, !dbg !2787

204:                                              ; preds = %199
  %205 = icmp ult i64 %195, %140, !dbg !2788
  br i1 %205, label %206, label %208, !dbg !2792

206:                                              ; preds = %204
  %207 = getelementptr inbounds i8, i8* %0, i64 %195, !dbg !2788
  store i8 48, i8* %207, align 1, !dbg !2788, !tbaa !590
  br label %208, !dbg !2788

208:                                              ; preds = %206, %204
  %209 = add i64 %189, 2, !dbg !2792
  call void @llvm.dbg.value(metadata i64 %209, metadata !2585, metadata !DIExpression()), !dbg !2637
  %210 = icmp ult i64 %209, %140, !dbg !2793
  br i1 %210, label %211, label %213, !dbg !2796

211:                                              ; preds = %208
  %212 = getelementptr inbounds i8, i8* %0, i64 %209, !dbg !2793
  store i8 48, i8* %212, align 1, !dbg !2793, !tbaa !590
  br label %213, !dbg !2793

213:                                              ; preds = %211, %208
  %214 = add i64 %189, 3, !dbg !2796
  call void @llvm.dbg.value(metadata i64 %214, metadata !2585, metadata !DIExpression()), !dbg !2637
  br label %456, !dbg !2797

215:                                              ; preds = %168
  br i1 %31, label %467, label %586, !dbg !2798

216:                                              ; preds = %163
  switch i32 %112, label %456 [
    i32 2, label %217
    i32 5, label %218
  ], !dbg !2799

217:                                              ; preds = %216
  br i1 %119, label %638, label %456, !dbg !2800

218:                                              ; preds = %216
  br i1 %29, label %456, label %219, !dbg !2802

219:                                              ; preds = %218
  %220 = add i64 %139, 2, !dbg !2804
  %221 = icmp ult i64 %220, %164, !dbg !2805
  br i1 %221, label %222, label %456, !dbg !2806

222:                                              ; preds = %219
  %223 = add i64 %139, 1, !dbg !2807
  %224 = getelementptr inbounds i8, i8* %2, i64 %223, !dbg !2808
  %225 = load i8, i8* %224, align 1, !dbg !2808, !tbaa !590
  %226 = icmp eq i8 %225, 63, !dbg !2809
  br i1 %226, label %227, label %456, !dbg !2810

227:                                              ; preds = %222
  %228 = getelementptr inbounds i8, i8* %2, i64 %220, !dbg !2811
  %229 = load i8, i8* %228, align 1, !dbg !2811, !tbaa !590
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
  ], !dbg !2812

230:                                              ; preds = %227, %227, %227, %227, %227, %227, %227, %227, %227
  br i1 %119, label %638, label %231, !dbg !2813

231:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 %229, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %220, metadata !2599, metadata !DIExpression()), !dbg !2726
  %232 = icmp ult i64 %134, %140, !dbg !2815
  br i1 %232, label %233, label %235, !dbg !2818

233:                                              ; preds = %231
  %234 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2815
  store i8 63, i8* %234, align 1, !dbg !2815, !tbaa !590
  br label %235, !dbg !2815

235:                                              ; preds = %233, %231
  %236 = add i64 %134, 1, !dbg !2818
  call void @llvm.dbg.value(metadata i64 %236, metadata !2585, metadata !DIExpression()), !dbg !2637
  %237 = icmp ult i64 %236, %140, !dbg !2819
  br i1 %237, label %238, label %240, !dbg !2822

238:                                              ; preds = %235
  %239 = getelementptr inbounds i8, i8* %0, i64 %236, !dbg !2819
  store i8 34, i8* %239, align 1, !dbg !2819, !tbaa !590
  br label %240, !dbg !2819

240:                                              ; preds = %238, %235
  %241 = add i64 %134, 2, !dbg !2822
  call void @llvm.dbg.value(metadata i64 %241, metadata !2585, metadata !DIExpression()), !dbg !2637
  %242 = icmp ult i64 %241, %140, !dbg !2823
  br i1 %242, label %243, label %245, !dbg !2826

243:                                              ; preds = %240
  %244 = getelementptr inbounds i8, i8* %0, i64 %241, !dbg !2823
  store i8 34, i8* %244, align 1, !dbg !2823, !tbaa !590
  br label %245, !dbg !2823

245:                                              ; preds = %243, %240
  %246 = add i64 %134, 3, !dbg !2826
  call void @llvm.dbg.value(metadata i64 %246, metadata !2585, metadata !DIExpression()), !dbg !2637
  %247 = icmp ult i64 %246, %140, !dbg !2827
  br i1 %247, label %248, label %250, !dbg !2830

248:                                              ; preds = %245
  %249 = getelementptr inbounds i8, i8* %0, i64 %246, !dbg !2827
  store i8 63, i8* %249, align 1, !dbg !2827, !tbaa !590
  br label %250, !dbg !2827

250:                                              ; preds = %248, %245
  %251 = add i64 %134, 4, !dbg !2830
  call void @llvm.dbg.value(metadata i64 %251, metadata !2585, metadata !DIExpression()), !dbg !2637
  br label %456, !dbg !2831

252:                                              ; preds = %163
  br label %263, !dbg !2832

253:                                              ; preds = %163
  br label %263, !dbg !2833

254:                                              ; preds = %163
  br label %261, !dbg !2834

255:                                              ; preds = %163
  br label %261, !dbg !2835

256:                                              ; preds = %163
  br label %263, !dbg !2836

257:                                              ; preds = %163
  br i1 %126, label %258, label %259, !dbg !2837

258:                                              ; preds = %257
  br i1 %119, label %638, label %546, !dbg !2838

259:                                              ; preds = %257
  br i1 %118, label %260, label %467, !dbg !2841

260:                                              ; preds = %259
  br i1 %127, label %546, label %510, !dbg !2843

261:                                              ; preds = %163, %255, %254
  %262 = phi i8 [ 116, %255 ], [ 114, %254 ], [ 110, %163 ], !dbg !2844
  call void @llvm.dbg.label(metadata !2631), !dbg !2845
  br i1 %128, label %263, label %638, !dbg !2846

263:                                              ; preds = %261, %163, %256, %253, %252
  %264 = phi i8 [ %262, %261 ], [ 118, %256 ], [ 102, %253 ], [ 98, %252 ], [ 97, %163 ], !dbg !2844
  call void @llvm.dbg.label(metadata !2633), !dbg !2848
  br i1 %118, label %510, label %467, !dbg !2849

265:                                              ; preds = %163, %163
  switch i64 %164, label %456 [
    i64 -1, label %266
    i64 1, label %269
  ], !dbg !2850

266:                                              ; preds = %265
  %267 = load i8, i8* %27, align 1, !dbg !2851, !tbaa !590
  %268 = icmp eq i8 %267, 0, !dbg !2853
  br i1 %268, label %269, label %456, !dbg !2854

269:                                              ; preds = %265, %266, %163, %163
  %270 = icmp eq i64 %139, 0, !dbg !2855
  br i1 %270, label %271, label %456, !dbg !2857

271:                                              ; preds = %269, %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2734
  br label %272, !dbg !2858

272:                                              ; preds = %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %271
  %273 = phi i1 [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ true, %271 ]
  call void @llvm.dbg.value(metadata i8 undef, metadata !2605, metadata !DIExpression()), !dbg !2734
  br i1 %126, label %274, label %456, !dbg !2859

274:                                              ; preds = %272
  br i1 %119, label %638, label %456, !dbg !2861

275:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i8 1, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2605, metadata !DIExpression()), !dbg !2734
  br i1 %126, label %276, label %456, !dbg !2862

276:                                              ; preds = %275
  br i1 %119, label %638, label %277, !dbg !2863

277:                                              ; preds = %276
  %278 = icmp eq i64 %140, 0, !dbg !2866
  %279 = icmp ne i64 %135, 0
  %280 = select i1 %278, i1 true, i1 %279, !dbg !2868
  %281 = select i1 %280, i64 %135, i64 %140, !dbg !2868
  %282 = select i1 %280, i64 %140, i64 0, !dbg !2868
  call void @llvm.dbg.value(metadata i64 %282, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %281, metadata !2586, metadata !DIExpression()), !dbg !2637
  %283 = icmp ult i64 %134, %282, !dbg !2869
  br i1 %283, label %284, label %286, !dbg !2872

284:                                              ; preds = %277
  %285 = getelementptr inbounds i8, i8* %0, i64 %134, !dbg !2869
  store i8 39, i8* %285, align 1, !dbg !2869, !tbaa !590
  br label %286, !dbg !2869

286:                                              ; preds = %284, %277
  %287 = add i64 %134, 1, !dbg !2872
  call void @llvm.dbg.value(metadata i64 %287, metadata !2585, metadata !DIExpression()), !dbg !2637
  %288 = icmp ult i64 %287, %282, !dbg !2873
  br i1 %288, label %289, label %291, !dbg !2876

289:                                              ; preds = %286
  %290 = getelementptr inbounds i8, i8* %0, i64 %287, !dbg !2873
  store i8 92, i8* %290, align 1, !dbg !2873, !tbaa !590
  br label %291, !dbg !2873

291:                                              ; preds = %289, %286
  %292 = add i64 %134, 2, !dbg !2876
  call void @llvm.dbg.value(metadata i64 %292, metadata !2585, metadata !DIExpression()), !dbg !2637
  %293 = icmp ult i64 %292, %282, !dbg !2877
  br i1 %293, label %294, label %296, !dbg !2880

294:                                              ; preds = %291
  %295 = getelementptr inbounds i8, i8* %0, i64 %292, !dbg !2877
  store i8 39, i8* %295, align 1, !dbg !2877, !tbaa !590
  br label %296, !dbg !2877

296:                                              ; preds = %294, %291
  %297 = add i64 %134, 3, !dbg !2880
  call void @llvm.dbg.value(metadata i64 %297, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %456, !dbg !2881

298:                                              ; preds = %163
  br i1 %18, label %299, label %307, !dbg !2882

299:                                              ; preds = %298
  call void @llvm.dbg.value(metadata i64 1, metadata !2607, metadata !DIExpression()), !dbg !2883
  %300 = tail call i16** @__ctype_b_loc() #40, !dbg !2884
  %301 = load i16*, i16** %300, align 8, !dbg !2884, !tbaa !486
  %302 = zext i8 %167 to i64
  %303 = getelementptr inbounds i16, i16* %301, i64 %302, !dbg !2884
  %304 = load i16, i16* %303, align 2, !dbg !2884, !tbaa !615
  %305 = and i16 %304, 16384, !dbg !2884
  %306 = icmp ne i16 %305, 0, !dbg !2886
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %349, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %312, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i1 %350, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  br label %352, !dbg !2887

307:                                              ; preds = %298
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2888
  call void @llvm.dbg.declare(metadata %struct.__mbstate_t* %15, metadata !2611, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %15, metadata !2663, metadata !DIExpression()) #37, !dbg !2890
  call void @llvm.dbg.value(metadata i8* %32, metadata !2671, metadata !DIExpression()) #37, !dbg !2892
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()) #37, !dbg !2892
  call void @llvm.dbg.value(metadata i64 8, metadata !2675, metadata !DIExpression()) #37, !dbg !2892
  store i64 0, i64* %14, align 8, !dbg !2894
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i8 1, metadata !2610, metadata !DIExpression()), !dbg !2883
  %308 = icmp eq i64 %164, -1, !dbg !2895
  br i1 %308, label %309, label %311, !dbg !2897

309:                                              ; preds = %307
  %310 = call i64 @strlen(i8* noundef nonnull dereferenceable(1) %2) #38, !dbg !2898
  call void @llvm.dbg.value(metadata i64 %310, metadata !2578, metadata !DIExpression()), !dbg !2637
  br label %311, !dbg !2899

311:                                              ; preds = %307, %309
  %312 = phi i64 [ %310, %309 ], [ %164, %307 ], !dbg !2734
  call void @llvm.dbg.value(metadata i64 %312, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2900
  %313 = sub i64 %312, %139, !dbg !2901
  call void @llvm.dbg.value(metadata i32* %16, metadata !2614, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  %314 = call i64 @rpl_mbrtoc32(i32* noundef nonnull %16, i8* noundef nonnull %166, i64 noundef %313, %struct.__mbstate_t* noundef nonnull %15) #37, !dbg !2903
  call void @llvm.dbg.value(metadata i64 %314, metadata !2618, metadata !DIExpression()), !dbg !2902
  switch i64 %314, label %329 [
    i64 0, label %346
    i64 -1, label %318
    i64 -2, label %315
  ], !dbg !2904

315:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  %316 = icmp ugt i64 %312, %139, !dbg !2905
  br i1 %316, label %319, label %317, !dbg !2907

317:                                              ; preds = %315
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %349, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %312, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i1 %350, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  br label %352, !dbg !2887

318:                                              ; preds = %311
  call void @llvm.dbg.value(metadata i8 0, metadata !2610, metadata !DIExpression()), !dbg !2883
  br label %346, !dbg !2910

319:                                              ; preds = %315, %325
  %320 = phi i64 [ %327, %325 ], [ %139, %315 ]
  %321 = phi i64 [ %326, %325 ], [ 0, %315 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2607, metadata !DIExpression()), !dbg !2883
  %322 = getelementptr inbounds i8, i8* %2, i64 %320, !dbg !2912
  %323 = load i8, i8* %322, align 1, !dbg !2912, !tbaa !590
  %324 = icmp eq i8 %323, 0, !dbg !2907
  br i1 %324, label %348, label %325, !dbg !2913

325:                                              ; preds = %319
  %326 = add i64 %321, 1, !dbg !2914
  call void @llvm.dbg.value(metadata i64 %326, metadata !2607, metadata !DIExpression()), !dbg !2883
  %327 = add i64 %326, %139, !dbg !2915
  %328 = icmp eq i64 %326, %313, !dbg !2905
  br i1 %328, label %348, label %319, !dbg !2907, !llvm.loop !2916

329:                                              ; preds = %311
  %330 = icmp ugt i64 %314, 1
  %331 = select i1 %129, i1 %330, i1 false, !dbg !2917
  call void @llvm.dbg.value(metadata i64 1, metadata !2619, metadata !DIExpression()), !dbg !2918
  br i1 %331, label %332, label %340, !dbg !2917

332:                                              ; preds = %329, %337
  %333 = phi i64 [ %338, %337 ], [ 1, %329 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !2619, metadata !DIExpression()), !dbg !2918
  %334 = add i64 %333, %139, !dbg !2919
  %335 = getelementptr inbounds i8, i8* %2, i64 %334, !dbg !2921
  %336 = load i8, i8* %335, align 1, !dbg !2921, !tbaa !590
  switch i8 %336, label %337 [
    i8 91, label %344
    i8 92, label %344
    i8 94, label %344
    i8 96, label %344
    i8 124, label %344
  ], !dbg !2922

337:                                              ; preds = %332
  %338 = add nuw i64 %333, 1, !dbg !2923
  call void @llvm.dbg.value(metadata i64 %338, metadata !2619, metadata !DIExpression()), !dbg !2918
  %339 = icmp eq i64 %338, %314, !dbg !2924
  br i1 %339, label %340, label %332, !dbg !2925, !llvm.loop !2926

340:                                              ; preds = %337, %329
  %341 = load i32, i32* %16, align 4, !dbg !2928, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %341, metadata !2614, metadata !DIExpression()), !dbg !2902
  call void @llvm.dbg.value(metadata i32 %341, metadata !2930, metadata !DIExpression()) #37, !dbg !2938
  %342 = call i32 @iswprint(i32 noundef %341) #37, !dbg !2940
  %343 = icmp ne i32 %342, 0, !dbg !2941
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %314, metadata !2607, metadata !DIExpression()), !dbg !2883
  br label %348, !dbg !2942

344:                                              ; preds = %332, %332, %332, %332, %332
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2909
  call void @llvm.dbg.label(metadata !2636), !dbg !2943
  %345 = select i1 %118, i32 4, i32 2, !dbg !2944
  br label %643, !dbg !2944

346:                                              ; preds = %311, %318
  %347 = phi i1 [ false, %318 ], [ true, %311 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %349, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %312, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i1 %350, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  br label %352, !dbg !2887

348:                                              ; preds = %319, %325, %340
  %349 = phi i64 [ %314, %340 ], [ %321, %319 ], [ %313, %325 ]
  %350 = phi i1 [ %343, %340 ], [ false, %325 ], [ false, %319 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2610, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 0, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #37, !dbg !2908
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32) #37, !dbg !2909
  call void @llvm.dbg.value(metadata i64 %349, metadata !2607, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.value(metadata i64 %312, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i1 %350, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  %351 = icmp ugt i64 %349, 1, !dbg !2946
  br i1 %351, label %357, label %352, !dbg !2887

352:                                              ; preds = %317, %346, %299, %348
  %353 = phi i1 [ %306, %299 ], [ %350, %348 ], [ %347, %346 ], [ false, %317 ]
  %354 = phi i64 [ 1, %299 ], [ %349, %348 ], [ 0, %346 ], [ 0, %317 ]
  %355 = phi i64 [ %164, %299 ], [ %312, %348 ], [ %312, %346 ], [ %312, %317 ]
  %356 = select i1 %130, i1 true, i1 %353, !dbg !2947
  br i1 %356, label %456, label %357, !dbg !2947

357:                                              ; preds = %352, %348
  %358 = phi i1 [ false, %352 ], [ %350, %348 ]
  %359 = phi i64 [ %354, %352 ], [ %349, %348 ]
  %360 = phi i64 [ %355, %352 ], [ %312, %348 ]
  %361 = add i64 %359, %139, !dbg !2948
  call void @llvm.dbg.value(metadata i64 %361, metadata !2627, metadata !DIExpression()), !dbg !2949
  %362 = select i1 %130, i1 true, i1 %358
  br label %363, !dbg !2950

363:                                              ; preds = %450, %357
  %364 = phi i64 [ %134, %357 ], [ %451, %450 ], !dbg !2637
  %365 = phi i1 [ %138, %357 ], [ %446, %450 ]
  %366 = phi i64 [ %139, %357 ], [ %427, %450 ], !dbg !2726
  %367 = phi i1 [ %165, %357 ], [ %424, %450 ]
  %368 = phi i8 [ 0, %357 ], [ %425, %450 ], !dbg !2951
  %369 = phi i8 [ %167, %357 ], [ %453, %450 ], !dbg !2734
  call void @llvm.dbg.value(metadata i8 %369, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 %368, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %366, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %364, metadata !2585, metadata !DIExpression()), !dbg !2637
  br i1 %362, label %414, label %370, !dbg !2952

370:                                              ; preds = %363
  br i1 %119, label %638, label %371, !dbg !2957

371:                                              ; preds = %370
  call void @llvm.dbg.value(metadata i8 1, metadata !2604, metadata !DIExpression()), !dbg !2734
  %372 = select i1 %120, i1 true, i1 %365, !dbg !2960
  br i1 %372, label %389, label %373, !dbg !2960

373:                                              ; preds = %371
  %374 = icmp ult i64 %364, %140, !dbg !2962
  br i1 %374, label %375, label %377, !dbg !2966

375:                                              ; preds = %373
  %376 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2962
  store i8 39, i8* %376, align 1, !dbg !2962, !tbaa !590
  br label %377, !dbg !2962

377:                                              ; preds = %375, %373
  %378 = add i64 %364, 1, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %378, metadata !2585, metadata !DIExpression()), !dbg !2637
  %379 = icmp ult i64 %378, %140, !dbg !2967
  br i1 %379, label %380, label %382, !dbg !2970

380:                                              ; preds = %377
  %381 = getelementptr inbounds i8, i8* %0, i64 %378, !dbg !2967
  store i8 36, i8* %381, align 1, !dbg !2967, !tbaa !590
  br label %382, !dbg !2967

382:                                              ; preds = %380, %377
  %383 = add i64 %364, 2, !dbg !2970
  call void @llvm.dbg.value(metadata i64 %383, metadata !2585, metadata !DIExpression()), !dbg !2637
  %384 = icmp ult i64 %383, %140, !dbg !2971
  br i1 %384, label %385, label %387, !dbg !2974

385:                                              ; preds = %382
  %386 = getelementptr inbounds i8, i8* %0, i64 %383, !dbg !2971
  store i8 39, i8* %386, align 1, !dbg !2971, !tbaa !590
  br label %387, !dbg !2971

387:                                              ; preds = %385, %382
  %388 = add i64 %364, 3, !dbg !2974
  call void @llvm.dbg.value(metadata i64 %388, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %389, !dbg !2975

389:                                              ; preds = %371, %387
  %390 = phi i64 [ %388, %387 ], [ %364, %371 ], !dbg !2637
  %391 = phi i1 [ true, %387 ], [ %365, %371 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %390, metadata !2585, metadata !DIExpression()), !dbg !2637
  %392 = icmp ult i64 %390, %140, !dbg !2976
  br i1 %392, label %393, label %395, !dbg !2979

393:                                              ; preds = %389
  %394 = getelementptr inbounds i8, i8* %0, i64 %390, !dbg !2976
  store i8 92, i8* %394, align 1, !dbg !2976, !tbaa !590
  br label %395, !dbg !2976

395:                                              ; preds = %393, %389
  %396 = add i64 %390, 1, !dbg !2979
  call void @llvm.dbg.value(metadata i64 %396, metadata !2585, metadata !DIExpression()), !dbg !2637
  %397 = icmp ult i64 %396, %140, !dbg !2980
  br i1 %397, label %398, label %402, !dbg !2983

398:                                              ; preds = %395
  %399 = lshr i8 %369, 6, !dbg !2980
  %400 = or i8 %399, 48, !dbg !2980
  %401 = getelementptr inbounds i8, i8* %0, i64 %396, !dbg !2980
  store i8 %400, i8* %401, align 1, !dbg !2980, !tbaa !590
  br label %402, !dbg !2980

402:                                              ; preds = %398, %395
  %403 = add i64 %390, 2, !dbg !2983
  call void @llvm.dbg.value(metadata i64 %403, metadata !2585, metadata !DIExpression()), !dbg !2637
  %404 = icmp ult i64 %403, %140, !dbg !2984
  br i1 %404, label %405, label %410, !dbg !2987

405:                                              ; preds = %402
  %406 = lshr i8 %369, 3, !dbg !2984
  %407 = and i8 %406, 7, !dbg !2984
  %408 = or i8 %407, 48, !dbg !2984
  %409 = getelementptr inbounds i8, i8* %0, i64 %403, !dbg !2984
  store i8 %408, i8* %409, align 1, !dbg !2984, !tbaa !590
  br label %410, !dbg !2984

410:                                              ; preds = %405, %402
  %411 = add i64 %390, 3, !dbg !2987
  call void @llvm.dbg.value(metadata i64 %411, metadata !2585, metadata !DIExpression()), !dbg !2637
  %412 = and i8 %369, 7, !dbg !2988
  %413 = or i8 %412, 48, !dbg !2989
  call void @llvm.dbg.value(metadata i8 %413, metadata !2606, metadata !DIExpression()), !dbg !2734
  br label %421, !dbg !2990

414:                                              ; preds = %363
  br i1 %367, label %415, label %421, !dbg !2991

415:                                              ; preds = %414
  %416 = icmp ult i64 %364, %140, !dbg !2992
  br i1 %416, label %417, label %419, !dbg !2997

417:                                              ; preds = %415
  %418 = getelementptr inbounds i8, i8* %0, i64 %364, !dbg !2992
  store i8 92, i8* %418, align 1, !dbg !2992, !tbaa !590
  br label %419, !dbg !2992

419:                                              ; preds = %417, %415
  %420 = add i64 %364, 1, !dbg !2997
  call void @llvm.dbg.value(metadata i64 %420, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2601, metadata !DIExpression()), !dbg !2734
  br label %421, !dbg !2998

421:                                              ; preds = %414, %419, %410
  %422 = phi i64 [ %420, %419 ], [ %364, %414 ], [ %411, %410 ], !dbg !2637
  %423 = phi i1 [ %365, %419 ], [ %365, %414 ], [ %391, %410 ]
  %424 = phi i1 [ false, %419 ], [ false, %414 ], [ %367, %410 ]
  %425 = phi i8 [ %368, %419 ], [ %368, %414 ], [ 1, %410 ], !dbg !2734
  %426 = phi i8 [ %369, %419 ], [ %369, %414 ], [ %413, %410 ], !dbg !2734
  call void @llvm.dbg.value(metadata i8 %426, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 %425, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %422, metadata !2585, metadata !DIExpression()), !dbg !2637
  %427 = add i64 %366, 1, !dbg !2999
  %428 = icmp ugt i64 %361, %427, !dbg !3001
  %429 = and i8 %425, 1
  br i1 %428, label %430, label %454, !dbg !3002

430:                                              ; preds = %421
  %431 = icmp eq i8 %429, 0, !dbg !3003
  %432 = select i1 %423, i1 %431, i1 false, !dbg !3003
  br i1 %432, label %433, label %444, !dbg !3003

433:                                              ; preds = %430
  %434 = icmp ult i64 %422, %140, !dbg !3006
  br i1 %434, label %435, label %437, !dbg !3010

435:                                              ; preds = %433
  %436 = getelementptr inbounds i8, i8* %0, i64 %422, !dbg !3006
  store i8 39, i8* %436, align 1, !dbg !3006, !tbaa !590
  br label %437, !dbg !3006

437:                                              ; preds = %435, %433
  %438 = add i64 %422, 1, !dbg !3010
  call void @llvm.dbg.value(metadata i64 %438, metadata !2585, metadata !DIExpression()), !dbg !2637
  %439 = icmp ult i64 %438, %140, !dbg !3011
  br i1 %439, label %440, label %442, !dbg !3014

440:                                              ; preds = %437
  %441 = getelementptr inbounds i8, i8* %0, i64 %438, !dbg !3011
  store i8 39, i8* %441, align 1, !dbg !3011, !tbaa !590
  br label %442, !dbg !3011

442:                                              ; preds = %440, %437
  %443 = add i64 %422, 2, !dbg !3014
  call void @llvm.dbg.value(metadata i64 %443, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %444, !dbg !3015

444:                                              ; preds = %430, %442
  %445 = phi i64 [ %443, %442 ], [ %422, %430 ], !dbg !3016
  %446 = phi i1 [ false, %442 ], [ %423, %430 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %445, metadata !2585, metadata !DIExpression()), !dbg !2637
  %447 = icmp ult i64 %445, %140, !dbg !3017
  br i1 %447, label %448, label %450, !dbg !3020

448:                                              ; preds = %444
  %449 = getelementptr inbounds i8, i8* %0, i64 %445, !dbg !3017
  store i8 %426, i8* %449, align 1, !dbg !3017, !tbaa !590
  br label %450, !dbg !3017

450:                                              ; preds = %448, %444
  %451 = add i64 %445, 1, !dbg !3020
  call void @llvm.dbg.value(metadata i64 %451, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %427, metadata !2599, metadata !DIExpression()), !dbg !2726
  %452 = getelementptr inbounds i8, i8* %2, i64 %427, !dbg !3021
  %453 = load i8, i8* %452, align 1, !dbg !3021, !tbaa !590
  call void @llvm.dbg.value(metadata i8 %453, metadata !2606, metadata !DIExpression()), !dbg !2734
  br label %363, !dbg !3022, !llvm.loop !3023

454:                                              ; preds = %421
  call void @llvm.dbg.value(metadata i8 %426, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i1 %358, metadata !2605, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2734
  call void @llvm.dbg.value(metadata i8 %425, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %366, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %422, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %360, metadata !2578, metadata !DIExpression()), !dbg !2637
  %455 = icmp ne i8 %429, 0
  br label %546

456:                                              ; preds = %352, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %163, %265, %196, %199, %213, %275, %296, %272, %274, %269, %266, %216, %217, %250, %227, %222, %219, %218
  %457 = phi i64 [ %164, %296 ], [ %164, %275 ], [ %164, %274 ], [ %164, %272 ], [ %164, %269 ], [ -1, %266 ], [ %164, %216 ], [ %164, %227 ], [ %164, %250 ], [ %164, %222 ], [ %164, %219 ], [ %164, %218 ], [ %164, %217 ], [ %164, %213 ], [ %164, %199 ], [ %164, %196 ], [ %164, %265 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %164, %163 ], [ %355, %352 ], !dbg !3026
  %458 = phi i64 [ %297, %296 ], [ %134, %275 ], [ %134, %274 ], [ %134, %272 ], [ %134, %269 ], [ %134, %266 ], [ %134, %216 ], [ %134, %227 ], [ %251, %250 ], [ %134, %222 ], [ %134, %219 ], [ %134, %218 ], [ %134, %217 ], [ %214, %213 ], [ %195, %199 ], [ %195, %196 ], [ %134, %265 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %163 ], [ %134, %352 ], !dbg !2637
  %459 = phi i64 [ %281, %296 ], [ %135, %275 ], [ %135, %274 ], [ %135, %272 ], [ %135, %269 ], [ %135, %266 ], [ %135, %216 ], [ %135, %227 ], [ %135, %250 ], [ %135, %222 ], [ %135, %219 ], [ %135, %218 ], [ %135, %217 ], [ %135, %213 ], [ %135, %199 ], [ %135, %196 ], [ %135, %265 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %163 ], [ %135, %352 ], !dbg !2641
  %460 = phi i1 [ true, %296 ], [ true, %275 ], [ %136, %274 ], [ %136, %272 ], [ %136, %269 ], [ %136, %266 ], [ %136, %216 ], [ %136, %227 ], [ %136, %250 ], [ %136, %222 ], [ %136, %219 ], [ %136, %218 ], [ %136, %217 ], [ %136, %213 ], [ %136, %199 ], [ %136, %196 ], [ %136, %265 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %163 ], [ %136, %352 ]
  %461 = phi i1 [ false, %296 ], [ %138, %275 ], [ %138, %274 ], [ %138, %272 ], [ %138, %269 ], [ %138, %266 ], [ %138, %216 ], [ %138, %227 ], [ %138, %250 ], [ %138, %222 ], [ %138, %219 ], [ %138, %218 ], [ %138, %217 ], [ %190, %213 ], [ %190, %199 ], [ %190, %196 ], [ %138, %265 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %163 ], [ %138, %352 ]
  %462 = phi i64 [ %139, %296 ], [ %139, %275 ], [ %139, %274 ], [ %139, %272 ], [ %139, %269 ], [ %139, %266 ], [ %139, %216 ], [ %139, %227 ], [ %220, %250 ], [ %139, %222 ], [ %139, %219 ], [ %139, %218 ], [ %139, %217 ], [ %139, %213 ], [ %139, %199 ], [ %139, %196 ], [ %139, %265 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %163 ], [ %139, %352 ], !dbg !2726
  %463 = phi i1 [ false, %296 ], [ false, %275 ], [ false, %274 ], [ false, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ true, %213 ], [ true, %199 ], [ true, %196 ], [ false, %265 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %163 ], [ false, %352 ]
  %464 = phi i1 [ true, %296 ], [ true, %275 ], [ %273, %274 ], [ %273, %272 ], [ false, %269 ], [ false, %266 ], [ false, %216 ], [ false, %227 ], [ false, %250 ], [ false, %222 ], [ false, %219 ], [ false, %218 ], [ false, %217 ], [ false, %213 ], [ false, %199 ], [ false, %196 ], [ false, %265 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ true, %163 ], [ %353, %352 ]
  %465 = phi i8 [ 39, %296 ], [ 39, %275 ], [ %167, %274 ], [ %167, %272 ], [ %167, %269 ], [ %167, %266 ], [ 63, %216 ], [ 63, %227 ], [ %229, %250 ], [ 63, %222 ], [ 63, %219 ], [ 63, %218 ], [ 63, %217 ], [ 48, %213 ], [ 48, %199 ], [ 48, %196 ], [ %167, %265 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %163 ], [ %167, %352 ], !dbg !2734
  %466 = phi i64 [ %282, %296 ], [ %140, %275 ], [ %140, %274 ], [ %140, %272 ], [ %140, %269 ], [ %140, %266 ], [ %140, %216 ], [ %140, %227 ], [ %140, %250 ], [ %140, %222 ], [ %140, %219 ], [ %140, %218 ], [ %140, %217 ], [ %140, %213 ], [ %140, %199 ], [ %140, %196 ], [ %140, %265 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %163 ], [ %140, %352 ]
  call void @llvm.dbg.value(metadata i64 %466, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %465, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2601, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %462, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %459, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %458, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %457, metadata !2578, metadata !DIExpression()), !dbg !2637
  br i1 %121, label %478, label %467, !dbg !3027

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
  br i1 %131, label %479, label %499, !dbg !3029

478:                                              ; preds = %456
  br i1 %35, label %499, label %479, !dbg !3030

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
  %490 = lshr i8 %481, 5, !dbg !3031
  %491 = zext i8 %490 to i64, !dbg !3031
  %492 = getelementptr inbounds i32, i32* %6, i64 %491, !dbg !3032
  %493 = load i32, i32* %492, align 4, !dbg !3032, !tbaa !581
  %494 = and i8 %481, 31, !dbg !3033
  %495 = zext i8 %494 to i32, !dbg !3033
  %496 = shl nuw i32 1, %495, !dbg !3034
  %497 = and i32 %493, %496, !dbg !3034
  %498 = icmp eq i32 %497, 0, !dbg !3034
  br i1 %498, label %499, label %510, !dbg !3035

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
  br i1 %165, label %510, label %546, !dbg !3036

510:                                              ; preds = %260, %263, %499, %479
  %511 = phi i64 [ %489, %479 ], [ %509, %499 ], [ %164, %263 ], [ %164, %260 ], !dbg !3026
  %512 = phi i64 [ %488, %479 ], [ %508, %499 ], [ %134, %263 ], [ %134, %260 ], !dbg !2637
  %513 = phi i64 [ %487, %479 ], [ %507, %499 ], [ %135, %263 ], [ %135, %260 ], !dbg !2641
  %514 = phi i1 [ %486, %479 ], [ %506, %499 ], [ %136, %263 ], [ %136, %260 ]
  %515 = phi i1 [ %485, %479 ], [ %505, %499 ], [ %138, %263 ], [ %138, %260 ]
  %516 = phi i64 [ %484, %479 ], [ %504, %499 ], [ %139, %263 ], [ %139, %260 ], !dbg !3037
  %517 = phi i1 [ %482, %479 ], [ %502, %499 ], [ false, %263 ], [ false, %260 ]
  %518 = phi i8 [ %481, %479 ], [ %501, %499 ], [ %264, %263 ], [ 92, %260 ], !dbg !2734
  %519 = phi i64 [ %480, %479 ], [ %500, %499 ], [ %140, %263 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %519, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %518, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %516, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %513, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %512, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %511, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.label(metadata !2634), !dbg !3038
  br i1 %119, label %638, label %520, !dbg !3039

520:                                              ; preds = %510
  call void @llvm.dbg.value(metadata i8 1, metadata !2604, metadata !DIExpression()), !dbg !2734
  %521 = select i1 %120, i1 true, i1 %515, !dbg !3041
  br i1 %521, label %538, label %522, !dbg !3041

522:                                              ; preds = %520
  %523 = icmp ult i64 %512, %519, !dbg !3043
  br i1 %523, label %524, label %526, !dbg !3047

524:                                              ; preds = %522
  %525 = getelementptr inbounds i8, i8* %0, i64 %512, !dbg !3043
  store i8 39, i8* %525, align 1, !dbg !3043, !tbaa !590
  br label %526, !dbg !3043

526:                                              ; preds = %524, %522
  %527 = add i64 %512, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i64 %527, metadata !2585, metadata !DIExpression()), !dbg !2637
  %528 = icmp ult i64 %527, %519, !dbg !3048
  br i1 %528, label %529, label %531, !dbg !3051

529:                                              ; preds = %526
  %530 = getelementptr inbounds i8, i8* %0, i64 %527, !dbg !3048
  store i8 36, i8* %530, align 1, !dbg !3048, !tbaa !590
  br label %531, !dbg !3048

531:                                              ; preds = %529, %526
  %532 = add i64 %512, 2, !dbg !3051
  call void @llvm.dbg.value(metadata i64 %532, metadata !2585, metadata !DIExpression()), !dbg !2637
  %533 = icmp ult i64 %532, %519, !dbg !3052
  br i1 %533, label %534, label %536, !dbg !3055

534:                                              ; preds = %531
  %535 = getelementptr inbounds i8, i8* %0, i64 %532, !dbg !3052
  store i8 39, i8* %535, align 1, !dbg !3052, !tbaa !590
  br label %536, !dbg !3052

536:                                              ; preds = %534, %531
  %537 = add i64 %512, 3, !dbg !3055
  call void @llvm.dbg.value(metadata i64 %537, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 1, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %538, !dbg !3056

538:                                              ; preds = %520, %536
  %539 = phi i64 [ %537, %536 ], [ %512, %520 ], !dbg !2734
  %540 = phi i1 [ true, %536 ], [ %515, %520 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %539, metadata !2585, metadata !DIExpression()), !dbg !2637
  %541 = icmp ult i64 %539, %519, !dbg !3057
  br i1 %541, label %542, label %544, !dbg !3060

542:                                              ; preds = %538
  %543 = getelementptr inbounds i8, i8* %0, i64 %539, !dbg !3057
  store i8 92, i8* %543, align 1, !dbg !3057, !tbaa !590
  br label %544, !dbg !3057

544:                                              ; preds = %538, %542
  %545 = add i64 %539, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i64 %556, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %555, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %552, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %549, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %548, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %547, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.label(metadata !2635), !dbg !3061
  br label %570, !dbg !3062

546:                                              ; preds = %454, %258, %260, %499
  %547 = phi i64 [ %360, %454 ], [ %509, %499 ], [ %164, %258 ], [ %164, %260 ], !dbg !3026
  %548 = phi i64 [ %422, %454 ], [ %508, %499 ], [ %134, %258 ], [ %134, %260 ], !dbg !2637
  %549 = phi i64 [ %135, %454 ], [ %507, %499 ], [ %135, %258 ], [ %135, %260 ], !dbg !2641
  %550 = phi i1 [ %136, %454 ], [ %506, %499 ], [ %136, %258 ], [ %136, %260 ]
  %551 = phi i1 [ %423, %454 ], [ %505, %499 ], [ %138, %258 ], [ %138, %260 ]
  %552 = phi i64 [ %366, %454 ], [ %504, %499 ], [ %139, %258 ], [ %139, %260 ], !dbg !3037
  %553 = phi i1 [ %455, %454 ], [ %503, %499 ], [ false, %258 ], [ false, %260 ]
  %554 = phi i1 [ %358, %454 ], [ %502, %499 ], [ false, %258 ], [ false, %260 ]
  %555 = phi i8 [ %426, %454 ], [ %501, %499 ], [ 92, %258 ], [ 92, %260 ], !dbg !3065
  %556 = phi i64 [ %140, %454 ], [ %500, %499 ], [ %140, %258 ], [ %140, %260 ]
  call void @llvm.dbg.value(metadata i64 %556, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 %555, metadata !2606, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2605, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i8 poison, metadata !2604, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 %552, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %549, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %548, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %547, metadata !2578, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.label(metadata !2635), !dbg !3061
  %557 = xor i1 %551, true, !dbg !3062
  %558 = select i1 %557, i1 true, i1 %553, !dbg !3062
  br i1 %558, label %570, label %559, !dbg !3062

559:                                              ; preds = %546
  %560 = icmp ult i64 %548, %556, !dbg !3066
  br i1 %560, label %561, label %563, !dbg !3070

561:                                              ; preds = %559
  %562 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !3066
  store i8 39, i8* %562, align 1, !dbg !3066, !tbaa !590
  br label %563, !dbg !3066

563:                                              ; preds = %561, %559
  %564 = add i64 %548, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i64 %564, metadata !2585, metadata !DIExpression()), !dbg !2637
  %565 = icmp ult i64 %564, %556, !dbg !3071
  br i1 %565, label %566, label %568, !dbg !3074

566:                                              ; preds = %563
  %567 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !3071
  store i8 39, i8* %567, align 1, !dbg !3071, !tbaa !590
  br label %568, !dbg !3071

568:                                              ; preds = %566, %563
  %569 = add i64 %548, 2, !dbg !3074
  call void @llvm.dbg.value(metadata i64 %569, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 0, metadata !2593, metadata !DIExpression()), !dbg !2637
  br label %570, !dbg !3075

570:                                              ; preds = %544, %546, %568
  %571 = phi i64 [ %556, %568 ], [ %556, %546 ], [ %519, %544 ]
  %572 = phi i8 [ %555, %568 ], [ %555, %546 ], [ %518, %544 ]
  %573 = phi i1 [ %554, %568 ], [ %554, %546 ], [ %517, %544 ]
  %574 = phi i64 [ %552, %568 ], [ %552, %546 ], [ %516, %544 ]
  %575 = phi i1 [ %550, %568 ], [ %550, %546 ], [ %514, %544 ]
  %576 = phi i64 [ %549, %568 ], [ %549, %546 ], [ %513, %544 ]
  %577 = phi i64 [ %547, %568 ], [ %547, %546 ], [ %511, %544 ]
  %578 = phi i64 [ %569, %568 ], [ %548, %546 ], [ %545, %544 ], !dbg !2734
  %579 = phi i1 [ false, %568 ], [ %551, %546 ], [ %540, %544 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %578, metadata !2585, metadata !DIExpression()), !dbg !2637
  %580 = icmp ult i64 %578, %571, !dbg !3076
  br i1 %580, label %581, label %583, !dbg !3079

581:                                              ; preds = %570
  %582 = getelementptr inbounds i8, i8* %0, i64 %578, !dbg !3076
  store i8 %572, i8* %582, align 1, !dbg !3076, !tbaa !590
  br label %583, !dbg !3076

583:                                              ; preds = %581, %570
  %584 = add i64 %578, 1, !dbg !3079
  call void @llvm.dbg.value(metadata i64 %584, metadata !2585, metadata !DIExpression()), !dbg !2637
  %585 = select i1 %573, i1 %137, i1 false, !dbg !3080
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2637
  br label %586, !dbg !3081

586:                                              ; preds = %215, %583
  %587 = phi i64 [ %577, %583 ], [ %164, %215 ], !dbg !3026
  %588 = phi i64 [ %584, %583 ], [ %134, %215 ], !dbg !2637
  %589 = phi i64 [ %576, %583 ], [ %135, %215 ], !dbg !2641
  %590 = phi i1 [ %575, %583 ], [ %136, %215 ]
  %591 = phi i1 [ %585, %583 ], [ %137, %215 ]
  %592 = phi i1 [ %579, %583 ], [ %138, %215 ]
  %593 = phi i64 [ %574, %583 ], [ %139, %215 ], !dbg !3037
  %594 = phi i64 [ %571, %583 ], [ %140, %215 ]
  call void @llvm.dbg.value(metadata i64 %594, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %593, metadata !2599, metadata !DIExpression()), !dbg !2726
  call void @llvm.dbg.value(metadata i8 poison, metadata !2593, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %589, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %588, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %587, metadata !2578, metadata !DIExpression()), !dbg !2637
  %595 = add i64 %593, 1, !dbg !3082
  call void @llvm.dbg.value(metadata i64 %595, metadata !2599, metadata !DIExpression()), !dbg !2726
  br label %132, !dbg !3083, !llvm.loop !3084

596:                                              ; preds = %146, %142
  call void @llvm.dbg.value(metadata i64 undef, metadata !2576, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2592, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i8 poison, metadata !2591, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 undef, metadata !2586, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 undef, metadata !2585, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 undef, metadata !2578, metadata !DIExpression()), !dbg !2637
  %597 = icmp eq i64 %134, 0, !dbg !3086
  %598 = and i1 %126, %597, !dbg !3088
  %599 = and i1 %598, %119, !dbg !3088
  br i1 %599, label %638, label %600, !dbg !3088

600:                                              ; preds = %596
  %601 = xor i1 %126, true, !dbg !3089
  %602 = or i1 %119, %601, !dbg !3089
  %603 = xor i1 %136, true, !dbg !3089
  %604 = select i1 %602, i1 true, i1 %603, !dbg !3089
  br i1 %604, label %612, label %605, !dbg !3089

605:                                              ; preds = %600
  br i1 %137, label %606, label %608, !dbg !3091

606:                                              ; preds = %605
  %607 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %135, i8* noundef %2, i64 noundef %133, i32 noundef 5, i32 noundef %5, i32* noundef %6, i8* noundef %113, i8* noundef %114), !dbg !3093
  br label %653, !dbg !3095

608:                                              ; preds = %605
  %609 = icmp eq i64 %140, 0, !dbg !3096
  %610 = icmp ne i64 %135, 0
  %611 = select i1 %609, i1 %610, i1 false, !dbg !3098
  br i1 %611, label %36, label %612, !dbg !3098

612:                                              ; preds = %600, %608
  %613 = phi i1 [ %119, %600 ], [ false, %608 ]
  %614 = icmp eq i8* %116, null, !dbg !3099
  %615 = or i1 %614, %613, !dbg !3101
  br i1 %615, label %631, label %616, !dbg !3101

616:                                              ; preds = %612
  call void @llvm.dbg.value(metadata i8* %116, metadata !2587, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %134, metadata !2585, metadata !DIExpression()), !dbg !2637
  %617 = load i8, i8* %116, align 1, !dbg !3102, !tbaa !590
  %618 = icmp eq i8 %617, 0, !dbg !3105
  br i1 %618, label %631, label %619, !dbg !3105

619:                                              ; preds = %616, %626
  %620 = phi i8 [ %629, %626 ], [ %617, %616 ]
  %621 = phi i8* [ %628, %626 ], [ %116, %616 ]
  %622 = phi i64 [ %627, %626 ], [ %134, %616 ]
  call void @llvm.dbg.value(metadata i8* %621, metadata !2587, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.value(metadata i64 %622, metadata !2585, metadata !DIExpression()), !dbg !2637
  %623 = icmp ult i64 %622, %140, !dbg !3106
  br i1 %623, label %624, label %626, !dbg !3109

624:                                              ; preds = %619
  %625 = getelementptr inbounds i8, i8* %0, i64 %622, !dbg !3106
  store i8 %620, i8* %625, align 1, !dbg !3106, !tbaa !590
  br label %626, !dbg !3106

626:                                              ; preds = %624, %619
  %627 = add i64 %622, 1, !dbg !3109
  call void @llvm.dbg.value(metadata i64 %627, metadata !2585, metadata !DIExpression()), !dbg !2637
  %628 = getelementptr inbounds i8, i8* %621, i64 1, !dbg !3110
  call void @llvm.dbg.value(metadata i8* %628, metadata !2587, metadata !DIExpression()), !dbg !2637
  %629 = load i8, i8* %628, align 1, !dbg !3102, !tbaa !590
  %630 = icmp eq i8 %629, 0, !dbg !3105
  br i1 %630, label %631, label %619, !dbg !3105, !llvm.loop !3111

631:                                              ; preds = %626, %616, %612
  %632 = phi i64 [ %134, %612 ], [ %134, %616 ], [ %627, %626 ], !dbg !2713
  call void @llvm.dbg.value(metadata i64 %632, metadata !2585, metadata !DIExpression()), !dbg !2637
  %633 = icmp ult i64 %632, %140, !dbg !3113
  br i1 %633, label %634, label %653, !dbg !3115

634:                                              ; preds = %631
  %635 = getelementptr inbounds i8, i8* %0, i64 %632, !dbg !3116
  store i8 0, i8* %635, align 1, !dbg !3117, !tbaa !590
  br label %653, !dbg !3116

636:                                              ; preds = %169
  call void @llvm.dbg.label(metadata !2636), !dbg !2943
  %637 = icmp eq i32 %112, 2, !dbg !3118
  br i1 %637, label %643, label %647, !dbg !2944

638:                                              ; preds = %596, %510, %276, %274, %261, %258, %230, %217, %370
  %639 = phi i64 [ %140, %370 ], [ %519, %510 ], [ %140, %276 ], [ %140, %274 ], [ %140, %261 ], [ %140, %258 ], [ %140, %230 ], [ %140, %217 ], [ %140, %596 ]
  %640 = phi i64 [ %360, %370 ], [ %511, %510 ], [ %164, %276 ], [ %164, %274 ], [ %164, %261 ], [ %164, %258 ], [ %164, %230 ], [ %164, %217 ], [ %133, %596 ]
  call void @llvm.dbg.label(metadata !2636), !dbg !2943
  %641 = icmp eq i32 %112, 2, !dbg !3118
  %642 = select i1 %118, i32 4, i32 2, !dbg !2944
  br i1 %641, label %643, label %647, !dbg !2944

643:                                              ; preds = %344, %638, %636
  %644 = phi i32 [ 4, %636 ], [ %345, %344 ], [ %642, %638 ]
  %645 = phi i64 [ %140, %636 ], [ %140, %344 ], [ %639, %638 ]
  %646 = phi i64 [ %164, %636 ], [ %312, %344 ], [ %640, %638 ]
  br label %647, !dbg !2944

647:                                              ; preds = %157, %638, %636, %643
  %648 = phi i64 [ %645, %643 ], [ %140, %636 ], [ %639, %638 ], [ %140, %157 ]
  %649 = phi i64 [ %646, %643 ], [ %164, %636 ], [ %640, %638 ], [ %155, %157 ]
  %650 = phi i32 [ %644, %643 ], [ %112, %636 ], [ %112, %638 ], [ %112, %157 ]
  call void @llvm.dbg.value(metadata i32 %650, metadata !2579, metadata !DIExpression()), !dbg !2637
  %651 = and i32 %5, -3, !dbg !3119
  %652 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %0, i64 noundef %648, i8* noundef %2, i64 noundef %649, i32 noundef %650, i32 noundef %651, i32* noundef null, i8* noundef %113, i8* noundef %114), !dbg !3120
  br label %653, !dbg !3121

653:                                              ; preds = %631, %634, %647, %606
  %654 = phi i64 [ %652, %647 ], [ %607, %606 ], [ %632, %634 ], [ %632, %631 ]
  ret i64 %654, !dbg !3122
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare !dbg !3123 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc(i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef %2) local_unnamed_addr #18 !dbg !3125 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3129, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i64 %1, metadata !3130, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.value(metadata i8* %0, metadata !3133, metadata !DIExpression()) #37, !dbg !3146
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()) #37, !dbg !3146
  call void @llvm.dbg.value(metadata i64* null, metadata !3139, metadata !DIExpression()) #37, !dbg !3146
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !3140, metadata !DIExpression()) #37, !dbg !3146
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !3148
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !3148
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !3141, metadata !DIExpression()) #37, !dbg !3146
  %6 = tail call i32* @__errno_location() #40, !dbg !3149
  %7 = load i32, i32* %6, align 4, !dbg !3149, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %7, metadata !3142, metadata !DIExpression()) #37, !dbg !3146
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !3150
  %9 = load i32, i32* %8, align 4, !dbg !3150, !tbaa !2519
  %10 = or i32 %9, 1, !dbg !3151
  call void @llvm.dbg.value(metadata i32 %10, metadata !3143, metadata !DIExpression()) #37, !dbg !3146
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3152
  %12 = load i32, i32* %11, align 8, !dbg !3152, !tbaa !2468
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !3153
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3154
  %15 = load i8*, i8** %14, align 8, !dbg !3154, !tbaa !2541
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3155
  %17 = load i8*, i8** %16, align 8, !dbg !3155, !tbaa !2544
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %12, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %15, i8* noundef %17) #37, !dbg !3156
  %19 = add i64 %18, 1, !dbg !3157
  call void @llvm.dbg.value(metadata i64 %19, metadata !3144, metadata !DIExpression()) #37, !dbg !3146
  %20 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %19) #42, !dbg !3158
  call void @llvm.dbg.value(metadata i8* %20, metadata !3145, metadata !DIExpression()) #37, !dbg !3146
  %21 = load i32, i32* %11, align 8, !dbg !3159, !tbaa !2468
  %22 = load i8*, i8** %14, align 8, !dbg !3160, !tbaa !2541
  %23 = load i8*, i8** %16, align 8, !dbg !3161, !tbaa !2544
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %20, i64 noundef %19, i8* noundef %0, i64 noundef %1, i32 noundef %21, i32 noundef %10, i32* noundef nonnull %13, i8* noundef %22, i8* noundef %23) #37, !dbg !3162
  store i32 %7, i32* %6, align 4, !dbg !3163, !tbaa !581
  ret i8* %20, !dbg !3164
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @quotearg_alloc_mem(i8* noundef %0, i64 noundef %1, i64* noundef writeonly %2, %struct.quoting_options* noundef %3) local_unnamed_addr #18 !dbg !3134 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3133, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 %1, metadata !3138, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64* %2, metadata !3139, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3140, metadata !DIExpression()), !dbg !3165
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !3166
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !3166
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !3141, metadata !DIExpression()), !dbg !3165
  %7 = tail call i32* @__errno_location() #40, !dbg !3167
  %8 = load i32, i32* %7, align 4, !dbg !3167, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %8, metadata !3142, metadata !DIExpression()), !dbg !3165
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !3168
  %10 = load i32, i32* %9, align 4, !dbg !3168, !tbaa !2519
  %11 = icmp eq i64* %2, null, !dbg !3169
  %12 = zext i1 %11 to i32, !dbg !3169
  %13 = or i32 %10, %12, !dbg !3170
  call void @llvm.dbg.value(metadata i32 %13, metadata !3143, metadata !DIExpression()), !dbg !3165
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3171
  %15 = load i32, i32* %14, align 8, !dbg !3171, !tbaa !2468
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !3172
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3173
  %18 = load i8*, i8** %17, align 8, !dbg !3173, !tbaa !2541
  %19 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3174
  %20 = load i8*, i8** %19, align 8, !dbg !3174, !tbaa !2544
  %21 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef null, i64 noundef 0, i8* noundef %0, i64 noundef %1, i32 noundef %15, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %18, i8* noundef %20), !dbg !3175
  %22 = add i64 %21, 1, !dbg !3176
  call void @llvm.dbg.value(metadata i64 %22, metadata !3144, metadata !DIExpression()), !dbg !3165
  %23 = tail call noalias nonnull i8* @xcharalloc(i64 noundef %22) #42, !dbg !3177
  call void @llvm.dbg.value(metadata i8* %23, metadata !3145, metadata !DIExpression()), !dbg !3165
  %24 = load i32, i32* %14, align 8, !dbg !3178, !tbaa !2468
  %25 = load i8*, i8** %17, align 8, !dbg !3179, !tbaa !2541
  %26 = load i8*, i8** %19, align 8, !dbg !3180, !tbaa !2544
  %27 = tail call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %23, i64 noundef %22, i8* noundef %0, i64 noundef %1, i32 noundef %24, i32 noundef %13, i32* noundef nonnull %16, i8* noundef %25, i8* noundef %26), !dbg !3181
  store i32 %8, i32* %7, align 4, !dbg !3182, !tbaa !581
  br i1 %11, label %29, label %28, !dbg !3183

28:                                               ; preds = %4
  store i64 %21, i64* %2, align 8, !dbg !3184, !tbaa !933
  br label %29, !dbg !3186

29:                                               ; preds = %28, %4
  ret i8* %23, !dbg !3187
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #18 !dbg !3188 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3193, !tbaa !486
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !3190, metadata !DIExpression()), !dbg !3194
  call void @llvm.dbg.value(metadata i32 1, metadata !3191, metadata !DIExpression()), !dbg !3195
  %2 = load i32, i32* @nslots, align 4, !tbaa !581
  call void @llvm.dbg.value(metadata i32 1, metadata !3191, metadata !DIExpression()), !dbg !3195
  %3 = icmp sgt i32 %2, 1, !dbg !3196
  br i1 %3, label %4, label %6, !dbg !3198

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3196
  br label %10, !dbg !3198

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !3199
  %8 = load i8*, i8** %7, align 8, !dbg !3199, !tbaa !3201
  %9 = icmp eq i8* %8, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3203
  br i1 %9, label %17, label %16, !dbg !3204

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3191, metadata !DIExpression()), !dbg !3195
  %12 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %11, i32 1, !dbg !3205
  %13 = load i8*, i8** %12, align 8, !dbg !3205, !tbaa !3201
  tail call void @free(i8* noundef %13) #37, !dbg !3206
  %14 = add nuw nsw i64 %11, 1, !dbg !3207
  call void @llvm.dbg.value(metadata i64 %14, metadata !3191, metadata !DIExpression()), !dbg !3195
  %15 = icmp eq i64 %14, %5, !dbg !3196
  br i1 %15, label %6, label %10, !dbg !3198, !llvm.loop !3208

16:                                               ; preds = %6
  tail call void @free(i8* noundef %8) #37, !dbg !3210
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !3212, !tbaa !3213
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !3214, !tbaa !3201
  br label %17, !dbg !3215

17:                                               ; preds = %16, %6
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !3216
  br i1 %18, label %21, label %19, !dbg !3218

19:                                               ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !3219
  tail call void @free(i8* noundef %20) #37, !dbg !3221
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !3222, !tbaa !486
  br label %21, !dbg !3223

21:                                               ; preds = %19, %17
  store i32 1, i32* @nslots, align 4, !dbg !3224, !tbaa !581
  ret void, !dbg !3225
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #18 !dbg !3226 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3228, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8* %1, metadata !3229, metadata !DIExpression()), !dbg !3230
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3231
  ret i8* %3, !dbg !3232
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef %3) unnamed_addr #18 !dbg !3233 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3237, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i8* %1, metadata !3238, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64 %2, metadata !3239, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !3240, metadata !DIExpression()), !dbg !3253
  %6 = tail call i32* @__errno_location() #40, !dbg !3254
  %7 = load i32, i32* %6, align 4, !dbg !3254, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %7, metadata !3241, metadata !DIExpression()), !dbg !3253
  %8 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !3255, !tbaa !486
  call void @llvm.dbg.value(metadata %struct.slotvec* %8, metadata !3242, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3243, metadata !DIExpression()), !dbg !3253
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3256
  br i1 %9, label %10, label %11, !dbg !3256

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3258
  unreachable, !dbg !3258

11:                                               ; preds = %4
  %12 = load i32, i32* @nslots, align 4, !dbg !3259, !tbaa !581
  %13 = icmp sgt i32 %12, %0, !dbg !3260
  br i1 %13, label %36, label %14, !dbg !3261

14:                                               ; preds = %11
  %15 = icmp eq %struct.slotvec* %8, @slotvec0, !dbg !3262
  call void @llvm.dbg.value(metadata i1 %15, metadata !3244, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3263
  %16 = bitcast i64* %5 to i8*, !dbg !3264
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %16) #37, !dbg !3264
  %17 = sext i32 %12 to i64, !dbg !3265
  call void @llvm.dbg.value(metadata i64 %17, metadata !3247, metadata !DIExpression()), !dbg !3263
  store i64 %17, i64* %5, align 8, !dbg !3266, !tbaa !933
  %18 = select i1 %15, %struct.slotvec* null, %struct.slotvec* %8, !dbg !3267
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !3267
  %20 = add nuw nsw i32 %0, 1, !dbg !3268
  %21 = sub i32 %20, %12, !dbg !3269
  %22 = sext i32 %21 to i64, !dbg !3270
  call void @llvm.dbg.value(metadata i64* %5, metadata !3247, metadata !DIExpression(DW_OP_deref)), !dbg !3263
  %23 = call nonnull i8* @xpalloc(i8* noundef %19, i64* noundef nonnull %5, i64 noundef %22, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3271
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !3271
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !3242, metadata !DIExpression()), !dbg !3253
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !3272, !tbaa !486
  br i1 %15, label %25, label %26, !dbg !3273

25:                                               ; preds = %14
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %23, i8* noundef nonnull align 8 dereferenceable(16) bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !3274, !tbaa.struct !3276
  br label %26, !dbg !3277

26:                                               ; preds = %25, %14
  %27 = load i32, i32* @nslots, align 4, !dbg !3278, !tbaa !581
  %28 = sext i32 %27 to i64, !dbg !3279
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !3279
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !3280
  %31 = load i64, i64* %5, align 8, !dbg !3281, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %31, metadata !3247, metadata !DIExpression()), !dbg !3263
  %32 = sub nsw i64 %31, %28, !dbg !3282
  %33 = shl i64 %32, 4, !dbg !3283
  call void @llvm.dbg.value(metadata i8* %30, metadata !2671, metadata !DIExpression()) #37, !dbg !3284
  call void @llvm.dbg.value(metadata i32 0, metadata !2674, metadata !DIExpression()) #37, !dbg !3284
  call void @llvm.dbg.value(metadata i64 %33, metadata !2675, metadata !DIExpression()) #37, !dbg !3284
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 1 %30, i8 noundef 0, i64 noundef %33, i1 noundef false) #37, !dbg !3286
  %34 = load i64, i64* %5, align 8, !dbg !3287, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %34, metadata !3247, metadata !DIExpression()), !dbg !3263
  %35 = trunc i64 %34 to i32, !dbg !3287
  store i32 %35, i32* @nslots, align 4, !dbg !3288, !tbaa !581
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %16) #37, !dbg !3289
  br label %36, !dbg !3290

36:                                               ; preds = %26, %11
  %37 = phi %struct.slotvec* [ %24, %26 ], [ %8, %11 ], !dbg !3253
  call void @llvm.dbg.value(metadata %struct.slotvec* %37, metadata !3242, metadata !DIExpression()), !dbg !3253
  %38 = zext i32 %0 to i64, !dbg !3291
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 0, !dbg !3292
  %40 = load i64, i64* %39, align 8, !dbg !3292, !tbaa !3213
  call void @llvm.dbg.value(metadata i64 %40, metadata !3248, metadata !DIExpression()), !dbg !3293
  %41 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %37, i64 %38, i32 1, !dbg !3294
  %42 = load i8*, i8** %41, align 8, !dbg !3294, !tbaa !3201
  call void @llvm.dbg.value(metadata i8* %42, metadata !3250, metadata !DIExpression()), !dbg !3293
  %43 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !3295
  %44 = load i32, i32* %43, align 4, !dbg !3295, !tbaa !2519
  %45 = or i32 %44, 1, !dbg !3296
  call void @llvm.dbg.value(metadata i32 %45, metadata !3251, metadata !DIExpression()), !dbg !3293
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3297
  %47 = load i32, i32* %46, align 8, !dbg !3297, !tbaa !2468
  %48 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !3298
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !3299
  %50 = load i8*, i8** %49, align 8, !dbg !3299, !tbaa !2541
  %51 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !3300
  %52 = load i8*, i8** %51, align 8, !dbg !3300, !tbaa !2544
  %53 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef %42, i64 noundef %40, i8* noundef %1, i64 noundef %2, i32 noundef %47, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %50, i8* noundef %52), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %53, metadata !3252, metadata !DIExpression()), !dbg !3293
  %54 = icmp ugt i64 %40, %53, !dbg !3302
  br i1 %54, label %65, label %55, !dbg !3304

55:                                               ; preds = %36
  %56 = add i64 %53, 1, !dbg !3305
  call void @llvm.dbg.value(metadata i64 %56, metadata !3248, metadata !DIExpression()), !dbg !3293
  store i64 %56, i64* %39, align 8, !dbg !3307, !tbaa !3213
  %57 = icmp eq i8* %42, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !3308
  br i1 %57, label %59, label %58, !dbg !3310

58:                                               ; preds = %55
  call void @free(i8* noundef %42) #37, !dbg !3311
  br label %59, !dbg !3311

59:                                               ; preds = %58, %55
  %60 = call noalias nonnull i8* @xcharalloc(i64 noundef %56) #42, !dbg !3312
  call void @llvm.dbg.value(metadata i8* %60, metadata !3250, metadata !DIExpression()), !dbg !3293
  store i8* %60, i8** %41, align 8, !dbg !3313, !tbaa !3201
  %61 = load i32, i32* %46, align 8, !dbg !3314, !tbaa !2468
  %62 = load i8*, i8** %49, align 8, !dbg !3315, !tbaa !2541
  %63 = load i8*, i8** %51, align 8, !dbg !3316, !tbaa !2544
  %64 = call fastcc i64 @quotearg_buffer_restyled(i8* noundef nonnull %60, i64 noundef %56, i8* noundef %1, i64 noundef %2, i32 noundef %61, i32 noundef %45, i32* noundef nonnull %48, i8* noundef %62, i8* noundef %63), !dbg !3317
  br label %65, !dbg !3318

65:                                               ; preds = %59, %36
  %66 = phi i8* [ %60, %59 ], [ %42, %36 ], !dbg !3293
  call void @llvm.dbg.value(metadata i8* %66, metadata !3250, metadata !DIExpression()), !dbg !3293
  store i32 %7, i32* %6, align 4, !dbg !3319, !tbaa !581
  ret i8* %66, !dbg !3320
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #27

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3321 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3325, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i8* %1, metadata !3326, metadata !DIExpression()), !dbg !3328
  call void @llvm.dbg.value(metadata i64 %2, metadata !3327, metadata !DIExpression()), !dbg !3328
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @default_quoting_options), !dbg !3329
  ret i8* %4, !dbg !3330
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg(i8* noundef %0) local_unnamed_addr #18 !dbg !3331 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3333, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3228, metadata !DIExpression()) #37, !dbg !3335
  call void @llvm.dbg.value(metadata i8* %0, metadata !3229, metadata !DIExpression()) #37, !dbg !3335
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37, !dbg !3337
  ret i8* %2, !dbg !3338
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 0, metadata !3325, metadata !DIExpression()) #37, !dbg !3346
  call void @llvm.dbg.value(metadata i8* %0, metadata !3326, metadata !DIExpression()) #37, !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3327, metadata !DIExpression()) #37, !dbg !3346
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @default_quoting_options) #37, !dbg !3348
  ret i8* %3, !dbg !3349
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #18 !dbg !3350 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3354, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i32 %1, metadata !3355, metadata !DIExpression()), !dbg !3358
  call void @llvm.dbg.value(metadata i8* %2, metadata !3356, metadata !DIExpression()), !dbg !3358
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3359
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3359
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3357, metadata !DIExpression()), !dbg !3360
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3361), !dbg !3364
  call void @llvm.dbg.value(metadata i32 %1, metadata !3365, metadata !DIExpression()) #37, !dbg !3371
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3370, metadata !DIExpression()) #37, !dbg !3373
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !dbg !3373, !alias.scope !3361
  %6 = icmp eq i32 %1, 10, !dbg !3374
  br i1 %6, label %7, label %8, !dbg !3376

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3377, !noalias !3361
  unreachable, !dbg !3377

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3378
  store i32 %1, i32* %9, align 8, !dbg !3379, !tbaa !2468, !alias.scope !3361
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3380
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3381
  ret i8* %10, !dbg !3382
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !3383 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3387, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i32 %1, metadata !3388, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i8* %2, metadata !3389, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64 %3, metadata !3390, metadata !DIExpression()), !dbg !3392
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3393
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3393
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3391, metadata !DIExpression()), !dbg !3394
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3395), !dbg !3398
  call void @llvm.dbg.value(metadata i32 %1, metadata !3365, metadata !DIExpression()) #37, !dbg !3399
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3370, metadata !DIExpression()) #37, !dbg !3401
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8 0, i64 56, i1 false) #37, !dbg !3401, !alias.scope !3395
  %7 = icmp eq i32 %1, 10, !dbg !3402
  br i1 %7, label %8, label %9, !dbg !3403

8:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3404, !noalias !3395
  unreachable, !dbg !3404

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3405
  store i32 %1, i32* %10, align 8, !dbg !3406, !tbaa !2468, !alias.scope !3395
  %11 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5), !dbg !3407
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3408
  ret i8* %11, !dbg !3409
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style(i32 noundef %0, i8* noundef %1) local_unnamed_addr #18 !dbg !3410 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3414, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i8* %1, metadata !3415, metadata !DIExpression()), !dbg !3416
  call void @llvm.dbg.value(metadata i32 0, metadata !3354, metadata !DIExpression()) #37, !dbg !3417
  call void @llvm.dbg.value(metadata i32 %0, metadata !3355, metadata !DIExpression()) #37, !dbg !3417
  call void @llvm.dbg.value(metadata i8* %1, metadata !3356, metadata !DIExpression()) #37, !dbg !3417
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3419
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3419
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3357, metadata !DIExpression()) #37, !dbg !3420
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3421) #37, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %0, metadata !3365, metadata !DIExpression()) #37, !dbg !3425
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3370, metadata !DIExpression()) #37, !dbg !3427
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false) #37, !dbg !3427, !alias.scope !3421
  %5 = icmp eq i32 %0, 10, !dbg !3428
  br i1 %5, label %6, label %7, !dbg !3429

6:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3430, !noalias !3421
  unreachable, !dbg !3430

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !3431
  store i32 %0, i32* %8, align 8, !dbg !3432, !tbaa !2468, !alias.scope !3421
  %9 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3433
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3434
  ret i8* %9, !dbg !3435
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_style_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3436 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3440, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i8* %1, metadata !3441, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i64 %2, metadata !3442, metadata !DIExpression()), !dbg !3443
  call void @llvm.dbg.value(metadata i32 0, metadata !3387, metadata !DIExpression()) #37, !dbg !3444
  call void @llvm.dbg.value(metadata i32 %0, metadata !3388, metadata !DIExpression()) #37, !dbg !3444
  call void @llvm.dbg.value(metadata i8* %1, metadata !3389, metadata !DIExpression()) #37, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %2, metadata !3390, metadata !DIExpression()) #37, !dbg !3444
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3446
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3446
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3391, metadata !DIExpression()) #37, !dbg !3447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448) #37, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %0, metadata !3365, metadata !DIExpression()) #37, !dbg !3452
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3370, metadata !DIExpression()) #37, !dbg !3454
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false) #37, !dbg !3454, !alias.scope !3448
  %6 = icmp eq i32 %0, 10, !dbg !3455
  br i1 %6, label %7, label %8, !dbg !3456

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3457, !noalias !3448
  unreachable, !dbg !3457

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3458
  store i32 %0, i32* %9, align 8, !dbg !3459, !tbaa !2468, !alias.scope !3448
  %10 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull %4) #37, !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3461
  ret i8* %10, !dbg !3462
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char_mem(i8* noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #18 !dbg !3463 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()), !dbg !3471
  call void @llvm.dbg.value(metadata i8 %2, metadata !3469, metadata !DIExpression()), !dbg !3471
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3472
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3472
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3470, metadata !DIExpression()), !dbg !3473
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !3474, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2486, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 %2, metadata !2487, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i32 1, metadata !2488, metadata !DIExpression()), !dbg !3476
  call void @llvm.dbg.value(metadata i8 %2, metadata !2489, metadata !DIExpression()), !dbg !3476
  %6 = lshr i8 %2, 5, !dbg !3478
  %7 = zext i8 %6 to i64, !dbg !3478
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !3479
  call void @llvm.dbg.value(metadata i32* %8, metadata !2490, metadata !DIExpression()), !dbg !3476
  %9 = and i8 %2, 31, !dbg !3480
  %10 = zext i8 %9 to i32, !dbg !3480
  call void @llvm.dbg.value(metadata i32 %10, metadata !2492, metadata !DIExpression()), !dbg !3476
  %11 = load i32, i32* %8, align 4, !dbg !3481, !tbaa !581
  %12 = lshr i32 %11, %10, !dbg !3482
  %13 = and i32 %12, 1, !dbg !3483
  call void @llvm.dbg.value(metadata i32 %13, metadata !2493, metadata !DIExpression()), !dbg !3476
  %14 = xor i32 %13, 1, !dbg !3484
  %15 = shl i32 %14, %10, !dbg !3485
  %16 = xor i32 %15, %11, !dbg !3486
  store i32 %16, i32* %8, align 4, !dbg !3486, !tbaa !581
  %17 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %4), !dbg !3487
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3488
  ret i8* %17, !dbg !3489
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_char(i8* noundef %0, i8 noundef %1) local_unnamed_addr #18 !dbg !3490 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8 %1, metadata !3495, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()) #37, !dbg !3497
  call void @llvm.dbg.value(metadata i64 -1, metadata !3468, metadata !DIExpression()) #37, !dbg !3497
  call void @llvm.dbg.value(metadata i8 %1, metadata !3469, metadata !DIExpression()) #37, !dbg !3497
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3499
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3499
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3470, metadata !DIExpression()) #37, !dbg !3500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3501, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2486, metadata !DIExpression()) #37, !dbg !3502
  call void @llvm.dbg.value(metadata i8 %1, metadata !2487, metadata !DIExpression()) #37, !dbg !3502
  call void @llvm.dbg.value(metadata i32 1, metadata !2488, metadata !DIExpression()) #37, !dbg !3502
  call void @llvm.dbg.value(metadata i8 %1, metadata !2489, metadata !DIExpression()) #37, !dbg !3502
  %5 = lshr i8 %1, 5, !dbg !3504
  %6 = zext i8 %5 to i64, !dbg !3504
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !3505
  call void @llvm.dbg.value(metadata i32* %7, metadata !2490, metadata !DIExpression()) #37, !dbg !3502
  %8 = and i8 %1, 31, !dbg !3506
  %9 = zext i8 %8 to i32, !dbg !3506
  call void @llvm.dbg.value(metadata i32 %9, metadata !2492, metadata !DIExpression()) #37, !dbg !3502
  %10 = load i32, i32* %7, align 4, !dbg !3507, !tbaa !581
  %11 = lshr i32 %10, %9, !dbg !3508
  %12 = and i32 %11, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i32 %12, metadata !2493, metadata !DIExpression()) #37, !dbg !3502
  %13 = xor i32 %12, 1, !dbg !3510
  %14 = shl i32 %13, %9, !dbg !3511
  %15 = xor i32 %14, %10, !dbg !3512
  store i32 %15, i32* %7, align 4, !dbg !3512, !tbaa !581
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3513
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3514
  ret i8* %16, !dbg !3515
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon(i8* noundef %0) local_unnamed_addr #18 !dbg !3516 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3518, metadata !DIExpression()), !dbg !3519
  call void @llvm.dbg.value(metadata i8* %0, metadata !3494, metadata !DIExpression()) #37, !dbg !3520
  call void @llvm.dbg.value(metadata i8 58, metadata !3495, metadata !DIExpression()) #37, !dbg !3520
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()) #37, !dbg !3522
  call void @llvm.dbg.value(metadata i64 -1, metadata !3468, metadata !DIExpression()) #37, !dbg !3522
  call void @llvm.dbg.value(metadata i8 58, metadata !3469, metadata !DIExpression()) #37, !dbg !3522
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !3524
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #37, !dbg !3524
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %2, metadata !3470, metadata !DIExpression()) #37, !dbg !3525
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %3, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3526, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2486, metadata !DIExpression()) #37, !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2487, metadata !DIExpression()) #37, !dbg !3527
  call void @llvm.dbg.value(metadata i32 1, metadata !2488, metadata !DIExpression()) #37, !dbg !3527
  call void @llvm.dbg.value(metadata i8 58, metadata !2489, metadata !DIExpression()) #37, !dbg !3527
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !3529
  call void @llvm.dbg.value(metadata i32* %4, metadata !2490, metadata !DIExpression()) #37, !dbg !3527
  call void @llvm.dbg.value(metadata i32 26, metadata !2492, metadata !DIExpression()) #37, !dbg !3527
  %5 = load i32, i32* %4, align 4, !dbg !3530, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %5, metadata !2493, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #37, !dbg !3527
  %6 = or i32 %5, 67108864, !dbg !3531
  store i32 %6, i32* %4, align 4, !dbg !3531, !tbaa !581
  %7 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull %2) #37, !dbg !3532
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #37, !dbg !3533
  ret i8* %7, !dbg !3534
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_colon_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3535 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3537, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i64 %1, metadata !3538, metadata !DIExpression()), !dbg !3539
  call void @llvm.dbg.value(metadata i8* %0, metadata !3467, metadata !DIExpression()) #37, !dbg !3540
  call void @llvm.dbg.value(metadata i64 %1, metadata !3468, metadata !DIExpression()) #37, !dbg !3540
  call void @llvm.dbg.value(metadata i8 58, metadata !3469, metadata !DIExpression()) #37, !dbg !3540
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !3542
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3542
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %3, metadata !3470, metadata !DIExpression()) #37, !dbg !3543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %4, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #37, !dbg !3544, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2486, metadata !DIExpression()) #37, !dbg !3545
  call void @llvm.dbg.value(metadata i8 58, metadata !2487, metadata !DIExpression()) #37, !dbg !3545
  call void @llvm.dbg.value(metadata i32 1, metadata !2488, metadata !DIExpression()) #37, !dbg !3545
  call void @llvm.dbg.value(metadata i8 58, metadata !2489, metadata !DIExpression()) #37, !dbg !3545
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !3547
  call void @llvm.dbg.value(metadata i32* %5, metadata !2490, metadata !DIExpression()) #37, !dbg !3545
  call void @llvm.dbg.value(metadata i32 26, metadata !2492, metadata !DIExpression()) #37, !dbg !3545
  %6 = load i32, i32* %5, align 4, !dbg !3548, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %6, metadata !2493, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)) #37, !dbg !3545
  %7 = or i32 %6, 67108864, !dbg !3549
  store i32 %7, i32* %5, align 4, !dbg !3549, !tbaa !581
  %8 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull %3) #37, !dbg !3550
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #37, !dbg !3551
  ret i8* %8, !dbg !3552
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, i8* noundef %2) local_unnamed_addr #18 !dbg !3553 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3555, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i32 %1, metadata !3556, metadata !DIExpression()), !dbg !3559
  call void @llvm.dbg.value(metadata i8* %2, metadata !3557, metadata !DIExpression()), !dbg !3559
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3560
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3560
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3558, metadata !DIExpression()), !dbg !3561
  call void @llvm.dbg.value(metadata i32 %1, metadata !3365, metadata !DIExpression()) #37, !dbg !3562
  call void @llvm.dbg.value(metadata i32 0, metadata !3370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3562
  %6 = icmp eq i32 %1, 10, !dbg !3564
  br i1 %6, label %7, label %8, !dbg !3565

7:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3566, !noalias !3567
  unreachable, !dbg !3566

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3370, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3562
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3570
  store i32 %1, i32* %9, align 8, !dbg !3570, !tbaa.struct !3475
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !3570
  %11 = bitcast i32* %10 to i8*, !dbg !3570
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(52) %11, i8 0, i64 52, i1 false), !dbg !3570
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2486, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8 58, metadata !2487, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 1, metadata !2488, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i8 58, metadata !2489, metadata !DIExpression()), !dbg !3571
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !3573
  call void @llvm.dbg.value(metadata i32* %12, metadata !2490, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.value(metadata i32 26, metadata !2492, metadata !DIExpression()), !dbg !3571
  %13 = load i32, i32* %12, align 4, !dbg !3574, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %13, metadata !2493, metadata !DIExpression(DW_OP_constu, 67108864, DW_OP_and, DW_OP_stack_value)), !dbg !3571
  %14 = or i32 %13, 67108864, !dbg !3575
  store i32 %14, i32* %12, align 4, !dbg !3575, !tbaa !581
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4), !dbg !3576
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3577
  ret i8* %15, !dbg !3578
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3) local_unnamed_addr #18 !dbg !3579 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3583, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %1, metadata !3584, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %2, metadata !3585, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i8* %3, metadata !3586, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 %0, metadata !3588, metadata !DIExpression()) #37, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()) #37, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()) #37, !dbg !3598
  call void @llvm.dbg.value(metadata i8* %3, metadata !3595, metadata !DIExpression()) #37, !dbg !3598
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #37, !dbg !3598
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3600
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3600
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression()) #37, !dbg !3601
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3602, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()) #37, !dbg !3603
  call void @llvm.dbg.value(metadata i8* %1, metadata !2527, metadata !DIExpression()) #37, !dbg !3603
  call void @llvm.dbg.value(metadata i8* %2, metadata !2528, metadata !DIExpression()) #37, !dbg !3603
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()) #37, !dbg !3603
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3605
  store i32 10, i32* %7, align 8, !dbg !3606, !tbaa !2468
  %8 = icmp ne i8* %1, null, !dbg !3607
  %9 = icmp ne i8* %2, null
  %10 = and i1 %8, %9, !dbg !3608
  br i1 %10, label %12, label %11, !dbg !3608

11:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3609
  unreachable, !dbg !3609

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3610
  store i8* %1, i8** %13, align 8, !dbg !3611, !tbaa !2541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3612
  store i8* %2, i8** %14, align 8, !dbg !3613, !tbaa !2544
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef -1, %struct.quoting_options* noundef nonnull %5) #37, !dbg !3614
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3615
  ret i8* %15, !dbg !3616
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_n_custom_mem(i32 noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !3589 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3588, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %1, metadata !3593, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %2, metadata !3594, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i8* %3, metadata !3595, metadata !DIExpression()), !dbg !3617
  call void @llvm.dbg.value(metadata i64 %4, metadata !3596, metadata !DIExpression()), !dbg !3617
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !3618
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #37, !dbg !3618
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %6, metadata !3597, metadata !DIExpression()), !dbg !3619
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %7, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false), !dbg !3620, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2526, metadata !DIExpression()) #37, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %1, metadata !2527, metadata !DIExpression()) #37, !dbg !3621
  call void @llvm.dbg.value(metadata i8* %2, metadata !2528, metadata !DIExpression()) #37, !dbg !3621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2526, metadata !DIExpression()) #37, !dbg !3621
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !3623
  store i32 10, i32* %8, align 8, !dbg !3624, !tbaa !2468
  %9 = icmp ne i8* %1, null, !dbg !3625
  %10 = icmp ne i8* %2, null
  %11 = and i1 %9, %10, !dbg !3626
  br i1 %11, label %13, label %12, !dbg !3626

12:                                               ; preds = %5
  tail call void @abort() #39, !dbg !3627
  unreachable, !dbg !3627

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !3628
  store i8* %1, i8** %14, align 8, !dbg !3629, !tbaa !2541
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !3630
  store i8* %2, i8** %15, align 8, !dbg !3631, !tbaa !2544
  %16 = call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %3, i64 noundef %4, %struct.quoting_options* noundef nonnull %6), !dbg !3632
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #37, !dbg !3633
  ret i8* %16, !dbg !3634
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom(i8* noundef %0, i8* noundef %1, i8* noundef %2) local_unnamed_addr #18 !dbg !3635 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3639, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i8* %1, metadata !3640, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i8* %2, metadata !3641, metadata !DIExpression()), !dbg !3642
  call void @llvm.dbg.value(metadata i32 0, metadata !3583, metadata !DIExpression()) #37, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %0, metadata !3584, metadata !DIExpression()) #37, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %1, metadata !3585, metadata !DIExpression()) #37, !dbg !3643
  call void @llvm.dbg.value(metadata i8* %2, metadata !3586, metadata !DIExpression()) #37, !dbg !3643
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()) #37, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #37, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #37, !dbg !3645
  call void @llvm.dbg.value(metadata i8* %2, metadata !3595, metadata !DIExpression()) #37, !dbg !3645
  call void @llvm.dbg.value(metadata i64 -1, metadata !3596, metadata !DIExpression()) #37, !dbg !3645
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !3647
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3647
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %4, metadata !3597, metadata !DIExpression()) #37, !dbg !3648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %5, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3649, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2526, metadata !DIExpression()) #37, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()) #37, !dbg !3650
  call void @llvm.dbg.value(metadata i8* %1, metadata !2528, metadata !DIExpression()) #37, !dbg !3650
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2526, metadata !DIExpression()) #37, !dbg !3650
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !3652
  store i32 10, i32* %6, align 8, !dbg !3653, !tbaa !2468
  %7 = icmp ne i8* %0, null, !dbg !3654
  %8 = icmp ne i8* %1, null
  %9 = and i1 %7, %8, !dbg !3655
  br i1 %9, label %11, label %10, !dbg !3655

10:                                               ; preds = %3
  tail call void @abort() #39, !dbg !3656
  unreachable, !dbg !3656

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !3657
  store i8* %0, i8** %12, align 8, !dbg !3658, !tbaa !2541
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !3659
  store i8* %1, i8** %13, align 8, !dbg !3660, !tbaa !2544
  %14 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef -1, %struct.quoting_options* noundef nonnull %4) #37, !dbg !3661
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #37, !dbg !3662
  ret i8* %14, !dbg !3663
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quotearg_custom_mem(i8* noundef %0, i8* noundef %1, i8* noundef %2, i64 noundef %3) local_unnamed_addr #18 !dbg !3664 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3668, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* %1, metadata !3669, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i8* %2, metadata !3670, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i64 %3, metadata !3671, metadata !DIExpression()), !dbg !3672
  call void @llvm.dbg.value(metadata i32 0, metadata !3588, metadata !DIExpression()) #37, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %0, metadata !3593, metadata !DIExpression()) #37, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %1, metadata !3594, metadata !DIExpression()) #37, !dbg !3673
  call void @llvm.dbg.value(metadata i8* %2, metadata !3595, metadata !DIExpression()) #37, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %3, metadata !3596, metadata !DIExpression()) #37, !dbg !3673
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !3675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3675
  call void @llvm.dbg.declare(metadata %struct.quoting_options* %5, metadata !3597, metadata !DIExpression()) #37, !dbg !3676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(56) %6, i8* noundef nonnull align 8 dereferenceable(56) bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 40, i1 false) #37, !dbg !3677, !tbaa.struct !3475
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()) #37, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %0, metadata !2527, metadata !DIExpression()) #37, !dbg !3678
  call void @llvm.dbg.value(metadata i8* %1, metadata !2528, metadata !DIExpression()) #37, !dbg !3678
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2526, metadata !DIExpression()) #37, !dbg !3678
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !3680
  store i32 10, i32* %7, align 8, !dbg !3681, !tbaa !2468
  %8 = icmp ne i8* %0, null, !dbg !3682
  %9 = icmp ne i8* %1, null
  %10 = and i1 %8, %9, !dbg !3683
  br i1 %10, label %12, label %11, !dbg !3683

11:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3684
  unreachable, !dbg !3684

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !3685
  store i8* %0, i8** %13, align 8, !dbg !3686, !tbaa !2541
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !3687
  store i8* %1, i8** %14, align 8, !dbg !3688, !tbaa !2544
  %15 = call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %2, i64 noundef %3, %struct.quoting_options* noundef nonnull %5) #37, !dbg !3689
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #37, !dbg !3690
  ret i8* %15, !dbg !3691
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n_mem(i32 noundef %0, i8* noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !3692 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3696, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i8* %1, metadata !3697, metadata !DIExpression()), !dbg !3699
  call void @llvm.dbg.value(metadata i64 %2, metadata !3698, metadata !DIExpression()), !dbg !3699
  %4 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef %2, %struct.quoting_options* noundef nonnull @quote_quoting_options), !dbg !3700
  ret i8* %4, !dbg !3701
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_mem(i8* noundef %0, i64 noundef %1) local_unnamed_addr #18 !dbg !3702 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3706, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i64 %1, metadata !3707, metadata !DIExpression()), !dbg !3708
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #37, !dbg !3709
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()) #37, !dbg !3709
  call void @llvm.dbg.value(metadata i64 %1, metadata !3698, metadata !DIExpression()) #37, !dbg !3709
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef %1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3711
  ret i8* %3, !dbg !3712
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote_n(i32 noundef %0, i8* noundef %1) local_unnamed_addr #18 !dbg !3713 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3717, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i8* %1, metadata !3718, metadata !DIExpression()), !dbg !3719
  call void @llvm.dbg.value(metadata i32 %0, metadata !3696, metadata !DIExpression()) #37, !dbg !3720
  call void @llvm.dbg.value(metadata i8* %1, metadata !3697, metadata !DIExpression()) #37, !dbg !3720
  call void @llvm.dbg.value(metadata i64 -1, metadata !3698, metadata !DIExpression()) #37, !dbg !3720
  %3 = tail call fastcc i8* @quotearg_n_options(i32 noundef %0, i8* noundef %1, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3722
  ret i8* %3, !dbg !3723
}

; Function Attrs: nounwind uwtable
define dso_local i8* @quote(i8* noundef %0) local_unnamed_addr #18 !dbg !3724 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3728, metadata !DIExpression()), !dbg !3729
  call void @llvm.dbg.value(metadata i32 0, metadata !3717, metadata !DIExpression()) #37, !dbg !3730
  call void @llvm.dbg.value(metadata i8* %0, metadata !3718, metadata !DIExpression()) #37, !dbg !3730
  call void @llvm.dbg.value(metadata i32 0, metadata !3696, metadata !DIExpression()) #37, !dbg !3732
  call void @llvm.dbg.value(metadata i8* %0, metadata !3697, metadata !DIExpression()) #37, !dbg !3732
  call void @llvm.dbg.value(metadata i64 -1, metadata !3698, metadata !DIExpression()) #37, !dbg !3732
  %2 = tail call fastcc i8* @quotearg_n_options(i32 noundef 0, i8* noundef %0, i64 noundef -1, %struct.quoting_options* noundef nonnull @quote_quoting_options) #37, !dbg !3734
  ret i8* %2, !dbg !3735
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef readonly %4, i64 noundef %5) local_unnamed_addr #18 !dbg !3736 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3775, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %1, metadata !3776, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %2, metadata !3777, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8* %3, metadata !3778, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i8** %4, metadata !3779, metadata !DIExpression()), !dbg !3781
  call void @llvm.dbg.value(metadata i64 %5, metadata !3780, metadata !DIExpression()), !dbg !3781
  %7 = icmp eq i8* %1, null, !dbg !3782
  br i1 %7, label %10, label %8, !dbg !3784

8:                                                ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.125, i64 0, i64 0), i8* noundef nonnull %1, i8* noundef %2, i8* noundef %3) #37, !dbg !3785
  br label %12, !dbg !3785

10:                                               ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.126, i64 0, i64 0), i8* noundef %2, i8* noundef %3) #37, !dbg !3786
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3.128, i64 0, i64 0), i32 noundef 5) #37, !dbg !3787
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* noundef %13, i32 noundef 2026) #37, !dbg !3787
  %15 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3788
  %16 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([171 x i8], [171 x i8]* @.str.5.130, i64 0, i64 0), i32 noundef 5) #37, !dbg !3789
  %17 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %16, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6.131, i64 0, i64 0)) #37, !dbg !3789
  %18 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %0), !dbg !3790
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
  ], !dbg !3791

19:                                               ; preds = %12
  %20 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7.132, i64 0, i64 0), i32 noundef 5) #37, !dbg !3792
  %21 = load i8*, i8** %4, align 8, !dbg !3792, !tbaa !486
  %22 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %20, i8* noundef %21) #37, !dbg !3792
  br label %147, !dbg !3794

23:                                               ; preds = %12
  %24 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8.133, i64 0, i64 0), i32 noundef 5) #37, !dbg !3795
  %25 = load i8*, i8** %4, align 8, !dbg !3795, !tbaa !486
  %26 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3795
  %27 = load i8*, i8** %26, align 8, !dbg !3795, !tbaa !486
  %28 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %24, i8* noundef %25, i8* noundef %27) #37, !dbg !3795
  br label %147, !dbg !3796

29:                                               ; preds = %12
  %30 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9.134, i64 0, i64 0), i32 noundef 5) #37, !dbg !3797
  %31 = load i8*, i8** %4, align 8, !dbg !3797, !tbaa !486
  %32 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3797
  %33 = load i8*, i8** %32, align 8, !dbg !3797, !tbaa !486
  %34 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3797
  %35 = load i8*, i8** %34, align 8, !dbg !3797, !tbaa !486
  %36 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %30, i8* noundef %31, i8* noundef %33, i8* noundef %35) #37, !dbg !3797
  br label %147, !dbg !3798

37:                                               ; preds = %12
  %38 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.135, i64 0, i64 0), i32 noundef 5) #37, !dbg !3799
  %39 = load i8*, i8** %4, align 8, !dbg !3799, !tbaa !486
  %40 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3799
  %41 = load i8*, i8** %40, align 8, !dbg !3799, !tbaa !486
  %42 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3799
  %43 = load i8*, i8** %42, align 8, !dbg !3799, !tbaa !486
  %44 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3799
  %45 = load i8*, i8** %44, align 8, !dbg !3799, !tbaa !486
  %46 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %38, i8* noundef %39, i8* noundef %41, i8* noundef %43, i8* noundef %45) #37, !dbg !3799
  br label %147, !dbg !3800

47:                                               ; preds = %12
  %48 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11.136, i64 0, i64 0), i32 noundef 5) #37, !dbg !3801
  %49 = load i8*, i8** %4, align 8, !dbg !3801, !tbaa !486
  %50 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3801
  %51 = load i8*, i8** %50, align 8, !dbg !3801, !tbaa !486
  %52 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3801
  %53 = load i8*, i8** %52, align 8, !dbg !3801, !tbaa !486
  %54 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3801
  %55 = load i8*, i8** %54, align 8, !dbg !3801, !tbaa !486
  %56 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3801
  %57 = load i8*, i8** %56, align 8, !dbg !3801, !tbaa !486
  %58 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %48, i8* noundef %49, i8* noundef %51, i8* noundef %53, i8* noundef %55, i8* noundef %57) #37, !dbg !3801
  br label %147, !dbg !3802

59:                                               ; preds = %12
  %60 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12.137, i64 0, i64 0), i32 noundef 5) #37, !dbg !3803
  %61 = load i8*, i8** %4, align 8, !dbg !3803, !tbaa !486
  %62 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3803
  %63 = load i8*, i8** %62, align 8, !dbg !3803, !tbaa !486
  %64 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3803
  %65 = load i8*, i8** %64, align 8, !dbg !3803, !tbaa !486
  %66 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3803
  %67 = load i8*, i8** %66, align 8, !dbg !3803, !tbaa !486
  %68 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3803
  %69 = load i8*, i8** %68, align 8, !dbg !3803, !tbaa !486
  %70 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3803
  %71 = load i8*, i8** %70, align 8, !dbg !3803, !tbaa !486
  %72 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %60, i8* noundef %61, i8* noundef %63, i8* noundef %65, i8* noundef %67, i8* noundef %69, i8* noundef %71) #37, !dbg !3803
  br label %147, !dbg !3804

73:                                               ; preds = %12
  %74 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13.138, i64 0, i64 0), i32 noundef 5) #37, !dbg !3805
  %75 = load i8*, i8** %4, align 8, !dbg !3805, !tbaa !486
  %76 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3805
  %77 = load i8*, i8** %76, align 8, !dbg !3805, !tbaa !486
  %78 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3805
  %79 = load i8*, i8** %78, align 8, !dbg !3805, !tbaa !486
  %80 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3805
  %81 = load i8*, i8** %80, align 8, !dbg !3805, !tbaa !486
  %82 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3805
  %83 = load i8*, i8** %82, align 8, !dbg !3805, !tbaa !486
  %84 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3805
  %85 = load i8*, i8** %84, align 8, !dbg !3805, !tbaa !486
  %86 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3805
  %87 = load i8*, i8** %86, align 8, !dbg !3805, !tbaa !486
  %88 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %74, i8* noundef %75, i8* noundef %77, i8* noundef %79, i8* noundef %81, i8* noundef %83, i8* noundef %85, i8* noundef %87) #37, !dbg !3805
  br label %147, !dbg !3806

89:                                               ; preds = %12
  %90 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14.139, i64 0, i64 0), i32 noundef 5) #37, !dbg !3807
  %91 = load i8*, i8** %4, align 8, !dbg !3807, !tbaa !486
  %92 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3807
  %93 = load i8*, i8** %92, align 8, !dbg !3807, !tbaa !486
  %94 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3807
  %95 = load i8*, i8** %94, align 8, !dbg !3807, !tbaa !486
  %96 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3807
  %97 = load i8*, i8** %96, align 8, !dbg !3807, !tbaa !486
  %98 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3807
  %99 = load i8*, i8** %98, align 8, !dbg !3807, !tbaa !486
  %100 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3807
  %101 = load i8*, i8** %100, align 8, !dbg !3807, !tbaa !486
  %102 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3807
  %103 = load i8*, i8** %102, align 8, !dbg !3807, !tbaa !486
  %104 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3807
  %105 = load i8*, i8** %104, align 8, !dbg !3807, !tbaa !486
  %106 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %90, i8* noundef %91, i8* noundef %93, i8* noundef %95, i8* noundef %97, i8* noundef %99, i8* noundef %101, i8* noundef %103, i8* noundef %105) #37, !dbg !3807
  br label %147, !dbg !3808

107:                                              ; preds = %12
  %108 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15.140, i64 0, i64 0), i32 noundef 5) #37, !dbg !3809
  %109 = load i8*, i8** %4, align 8, !dbg !3809, !tbaa !486
  %110 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3809
  %111 = load i8*, i8** %110, align 8, !dbg !3809, !tbaa !486
  %112 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3809
  %113 = load i8*, i8** %112, align 8, !dbg !3809, !tbaa !486
  %114 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3809
  %115 = load i8*, i8** %114, align 8, !dbg !3809, !tbaa !486
  %116 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3809
  %117 = load i8*, i8** %116, align 8, !dbg !3809, !tbaa !486
  %118 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3809
  %119 = load i8*, i8** %118, align 8, !dbg !3809, !tbaa !486
  %120 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3809
  %121 = load i8*, i8** %120, align 8, !dbg !3809, !tbaa !486
  %122 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3809
  %123 = load i8*, i8** %122, align 8, !dbg !3809, !tbaa !486
  %124 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3809
  %125 = load i8*, i8** %124, align 8, !dbg !3809, !tbaa !486
  %126 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %108, i8* noundef %109, i8* noundef %111, i8* noundef %113, i8* noundef %115, i8* noundef %117, i8* noundef %119, i8* noundef %121, i8* noundef %123, i8* noundef %125) #37, !dbg !3809
  br label %147, !dbg !3810

127:                                              ; preds = %12
  %128 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16.141, i64 0, i64 0), i32 noundef 5) #37, !dbg !3811
  %129 = load i8*, i8** %4, align 8, !dbg !3811, !tbaa !486
  %130 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3811
  %131 = load i8*, i8** %130, align 8, !dbg !3811, !tbaa !486
  %132 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3811
  %133 = load i8*, i8** %132, align 8, !dbg !3811, !tbaa !486
  %134 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3811
  %135 = load i8*, i8** %134, align 8, !dbg !3811, !tbaa !486
  %136 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3811
  %137 = load i8*, i8** %136, align 8, !dbg !3811, !tbaa !486
  %138 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3811
  %139 = load i8*, i8** %138, align 8, !dbg !3811, !tbaa !486
  %140 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3811
  %141 = load i8*, i8** %140, align 8, !dbg !3811, !tbaa !486
  %142 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3811
  %143 = load i8*, i8** %142, align 8, !dbg !3811, !tbaa !486
  %144 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3811
  %145 = load i8*, i8** %144, align 8, !dbg !3811, !tbaa !486
  %146 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* noundef %0, i32 noundef 1, i8* noundef %128, i8* noundef %129, i8* noundef %131, i8* noundef %133, i8* noundef %135, i8* noundef %137, i8* noundef %139, i8* noundef %141, i8* noundef %143, i8* noundef %145) #37, !dbg !3811
  br label %147, !dbg !3812

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !3813
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef %4) local_unnamed_addr #18 !dbg !3814 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3818, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %1, metadata !3819, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %2, metadata !3820, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8* %3, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i8** %4, metadata !3822, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i64 0, metadata !3823, metadata !DIExpression()), !dbg !3824
  br label %6, !dbg !3825

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3827
  call void @llvm.dbg.value(metadata i64 %7, metadata !3823, metadata !DIExpression()), !dbg !3824
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3828
  %9 = load i8*, i8** %8, align 8, !dbg !3828, !tbaa !486
  %10 = icmp eq i8* %9, null, !dbg !3830
  %11 = add i64 %7, 1, !dbg !3831
  call void @llvm.dbg.value(metadata i64 %11, metadata !3823, metadata !DIExpression()), !dbg !3824
  br i1 %10, label %12, label %6, !dbg !3830, !llvm.loop !3832

12:                                               ; preds = %6
  tail call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %4, i64 noundef %7), !dbg !3834
  ret void, !dbg !3835
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* nocapture noundef %4) local_unnamed_addr #18 !dbg !3836 {
  %6 = alloca [10 x i8*], align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3851, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %1, metadata !3852, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %2, metadata !3853, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i8* %3, metadata !3854, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %4, metadata !3855, metadata !DIExpression()), !dbg !3860
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3861
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #37, !dbg !3861
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 0, metadata !3856, metadata !DIExpression()), !dbg !3859
  %8 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 3
  %9 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.std::__va_list", %"struct.std::__va_list"* %4, i64 0, i32 0
  call void @llvm.dbg.value(metadata i64 0, metadata !3856, metadata !DIExpression()), !dbg !3859
  %11 = load i32, i32* %8, align 8, !dbg !3863
  %12 = icmp sgt i32 %11, -1, !dbg !3863
  br i1 %12, label %20, label %13, !dbg !3863

13:                                               ; preds = %5
  %14 = add nsw i32 %11, 8, !dbg !3863
  store i32 %14, i32* %8, align 8, !dbg !3863
  %15 = icmp ult i32 %11, -7, !dbg !3863
  br i1 %15, label %16, label %20, !dbg !3863

16:                                               ; preds = %13
  %17 = load i8*, i8** %9, align 8, !dbg !3863
  %18 = sext i32 %11 to i64, !dbg !3863
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !3863
  br label %24, !dbg !3863

20:                                               ; preds = %13, %5
  %21 = phi i32 [ %14, %13 ], [ %11, %5 ]
  %22 = load i8*, i8** %10, align 8, !dbg !3863
  %23 = getelementptr inbounds i8, i8* %22, i64 8, !dbg !3863
  store i8* %23, i8** %10, align 8, !dbg !3863
  br label %24, !dbg !3863

24:                                               ; preds = %20, %16
  %25 = phi i32 [ %14, %16 ], [ %21, %20 ]
  %26 = phi i8* [ %19, %16 ], [ %22, %20 ]
  %27 = bitcast i8* %26 to i8**, !dbg !3863
  %28 = load i8*, i8** %27, align 8, !dbg !3863
  %29 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3866
  store i8* %28, i8** %29, align 8, !dbg !3867, !tbaa !486
  %30 = icmp eq i8* %28, null, !dbg !3868
  br i1 %30, label %210, label %31, !dbg !3869

31:                                               ; preds = %24
  call void @llvm.dbg.value(metadata i64 1, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 1, metadata !3856, metadata !DIExpression()), !dbg !3859
  %32 = icmp sgt i32 %25, -1, !dbg !3863
  br i1 %32, label %40, label %33, !dbg !3863

33:                                               ; preds = %31
  %34 = add nsw i32 %25, 8, !dbg !3863
  store i32 %34, i32* %8, align 8, !dbg !3863
  %35 = icmp ult i32 %25, -7, !dbg !3863
  br i1 %35, label %36, label %40, !dbg !3863

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8, !dbg !3863
  %38 = sext i32 %25 to i64, !dbg !3863
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !3863
  br label %44, !dbg !3863

40:                                               ; preds = %33, %31
  %41 = phi i32 [ %34, %33 ], [ %25, %31 ]
  %42 = load i8*, i8** %10, align 8, !dbg !3863
  %43 = getelementptr inbounds i8, i8* %42, i64 8, !dbg !3863
  store i8* %43, i8** %10, align 8, !dbg !3863
  br label %44, !dbg !3863

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %34, %36 ], [ %41, %40 ]
  %46 = phi i8* [ %39, %36 ], [ %42, %40 ]
  %47 = bitcast i8* %46 to i8**, !dbg !3863
  %48 = load i8*, i8** %47, align 8, !dbg !3863
  %49 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3866
  store i8* %48, i8** %49, align 8, !dbg !3867, !tbaa !486
  %50 = icmp eq i8* %48, null, !dbg !3868
  br i1 %50, label %210, label %51, !dbg !3869

51:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 2, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 2, metadata !3856, metadata !DIExpression()), !dbg !3859
  %52 = icmp sgt i32 %45, -1, !dbg !3863
  br i1 %52, label %60, label %53, !dbg !3863

53:                                               ; preds = %51
  %54 = add nsw i32 %45, 8, !dbg !3863
  store i32 %54, i32* %8, align 8, !dbg !3863
  %55 = icmp ult i32 %45, -7, !dbg !3863
  br i1 %55, label %56, label %60, !dbg !3863

56:                                               ; preds = %53
  %57 = load i8*, i8** %9, align 8, !dbg !3863
  %58 = sext i32 %45 to i64, !dbg !3863
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !3863
  br label %64, !dbg !3863

60:                                               ; preds = %53, %51
  %61 = phi i32 [ %54, %53 ], [ %45, %51 ]
  %62 = load i8*, i8** %10, align 8, !dbg !3863
  %63 = getelementptr inbounds i8, i8* %62, i64 8, !dbg !3863
  store i8* %63, i8** %10, align 8, !dbg !3863
  br label %64, !dbg !3863

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %54, %56 ], [ %61, %60 ]
  %66 = phi i8* [ %59, %56 ], [ %62, %60 ]
  %67 = bitcast i8* %66 to i8**, !dbg !3863
  %68 = load i8*, i8** %67, align 8, !dbg !3863
  %69 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3866
  store i8* %68, i8** %69, align 8, !dbg !3867, !tbaa !486
  %70 = icmp eq i8* %68, null, !dbg !3868
  br i1 %70, label %210, label %71, !dbg !3869

71:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 3, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 3, metadata !3856, metadata !DIExpression()), !dbg !3859
  %72 = icmp sgt i32 %65, -1, !dbg !3863
  br i1 %72, label %80, label %73, !dbg !3863

73:                                               ; preds = %71
  %74 = add nsw i32 %65, 8, !dbg !3863
  store i32 %74, i32* %8, align 8, !dbg !3863
  %75 = icmp ult i32 %65, -7, !dbg !3863
  br i1 %75, label %76, label %80, !dbg !3863

76:                                               ; preds = %73
  %77 = load i8*, i8** %9, align 8, !dbg !3863
  %78 = sext i32 %65 to i64, !dbg !3863
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !3863
  br label %84, !dbg !3863

80:                                               ; preds = %73, %71
  %81 = phi i32 [ %74, %73 ], [ %65, %71 ]
  %82 = load i8*, i8** %10, align 8, !dbg !3863
  %83 = getelementptr inbounds i8, i8* %82, i64 8, !dbg !3863
  store i8* %83, i8** %10, align 8, !dbg !3863
  br label %84, !dbg !3863

84:                                               ; preds = %80, %76
  %85 = phi i32 [ %74, %76 ], [ %81, %80 ]
  %86 = phi i8* [ %79, %76 ], [ %82, %80 ]
  %87 = bitcast i8* %86 to i8**, !dbg !3863
  %88 = load i8*, i8** %87, align 8, !dbg !3863
  %89 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3866
  store i8* %88, i8** %89, align 8, !dbg !3867, !tbaa !486
  %90 = icmp eq i8* %88, null, !dbg !3868
  br i1 %90, label %210, label %91, !dbg !3869

91:                                               ; preds = %84
  call void @llvm.dbg.value(metadata i64 4, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 4, metadata !3856, metadata !DIExpression()), !dbg !3859
  %92 = icmp sgt i32 %85, -1, !dbg !3863
  br i1 %92, label %100, label %93, !dbg !3863

93:                                               ; preds = %91
  %94 = add nsw i32 %85, 8, !dbg !3863
  store i32 %94, i32* %8, align 8, !dbg !3863
  %95 = icmp ult i32 %85, -7, !dbg !3863
  br i1 %95, label %96, label %100, !dbg !3863

96:                                               ; preds = %93
  %97 = load i8*, i8** %9, align 8, !dbg !3863
  %98 = sext i32 %85 to i64, !dbg !3863
  %99 = getelementptr inbounds i8, i8* %97, i64 %98, !dbg !3863
  br label %104, !dbg !3863

100:                                              ; preds = %93, %91
  %101 = phi i32 [ %94, %93 ], [ %85, %91 ]
  %102 = load i8*, i8** %10, align 8, !dbg !3863
  %103 = getelementptr inbounds i8, i8* %102, i64 8, !dbg !3863
  store i8* %103, i8** %10, align 8, !dbg !3863
  br label %104, !dbg !3863

104:                                              ; preds = %100, %96
  %105 = phi i32 [ %94, %96 ], [ %101, %100 ]
  %106 = phi i8* [ %99, %96 ], [ %102, %100 ]
  %107 = bitcast i8* %106 to i8**, !dbg !3863
  %108 = load i8*, i8** %107, align 8, !dbg !3863
  %109 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3866
  store i8* %108, i8** %109, align 8, !dbg !3867, !tbaa !486
  %110 = icmp eq i8* %108, null, !dbg !3868
  br i1 %110, label %210, label %111, !dbg !3869

111:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i64 5, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 5, metadata !3856, metadata !DIExpression()), !dbg !3859
  %112 = icmp sgt i32 %105, -1, !dbg !3863
  br i1 %112, label %120, label %113, !dbg !3863

113:                                              ; preds = %111
  %114 = add nsw i32 %105, 8, !dbg !3863
  store i32 %114, i32* %8, align 8, !dbg !3863
  %115 = icmp ult i32 %105, -7, !dbg !3863
  br i1 %115, label %116, label %120, !dbg !3863

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8, !dbg !3863
  %118 = sext i32 %105 to i64, !dbg !3863
  %119 = getelementptr inbounds i8, i8* %117, i64 %118, !dbg !3863
  br label %124, !dbg !3863

120:                                              ; preds = %113, %111
  %121 = phi i32 [ %114, %113 ], [ %105, %111 ]
  %122 = load i8*, i8** %10, align 8, !dbg !3863
  %123 = getelementptr inbounds i8, i8* %122, i64 8, !dbg !3863
  store i8* %123, i8** %10, align 8, !dbg !3863
  br label %124, !dbg !3863

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %114, %116 ], [ %121, %120 ]
  %126 = phi i8* [ %119, %116 ], [ %122, %120 ]
  %127 = bitcast i8* %126 to i8**, !dbg !3863
  %128 = load i8*, i8** %127, align 8, !dbg !3863
  %129 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3866
  store i8* %128, i8** %129, align 8, !dbg !3867, !tbaa !486
  %130 = icmp eq i8* %128, null, !dbg !3868
  br i1 %130, label %210, label %131, !dbg !3869

131:                                              ; preds = %124
  call void @llvm.dbg.value(metadata i64 6, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 6, metadata !3856, metadata !DIExpression()), !dbg !3859
  %132 = icmp sgt i32 %125, -1, !dbg !3863
  br i1 %132, label %140, label %133, !dbg !3863

133:                                              ; preds = %131
  %134 = add nsw i32 %125, 8, !dbg !3863
  store i32 %134, i32* %8, align 8, !dbg !3863
  %135 = icmp ult i32 %125, -7, !dbg !3863
  br i1 %135, label %136, label %140, !dbg !3863

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8, !dbg !3863
  %138 = sext i32 %125 to i64, !dbg !3863
  %139 = getelementptr inbounds i8, i8* %137, i64 %138, !dbg !3863
  br label %144, !dbg !3863

140:                                              ; preds = %133, %131
  %141 = phi i32 [ %134, %133 ], [ %125, %131 ]
  %142 = load i8*, i8** %10, align 8, !dbg !3863
  %143 = getelementptr inbounds i8, i8* %142, i64 8, !dbg !3863
  store i8* %143, i8** %10, align 8, !dbg !3863
  br label %144, !dbg !3863

144:                                              ; preds = %140, %136
  %145 = phi i32 [ %134, %136 ], [ %141, %140 ]
  %146 = phi i8* [ %139, %136 ], [ %142, %140 ]
  %147 = bitcast i8* %146 to i8**, !dbg !3863
  %148 = load i8*, i8** %147, align 8, !dbg !3863
  %149 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3866
  store i8* %148, i8** %149, align 8, !dbg !3867, !tbaa !486
  %150 = icmp eq i8* %148, null, !dbg !3868
  br i1 %150, label %210, label %151, !dbg !3869

151:                                              ; preds = %144
  call void @llvm.dbg.value(metadata i64 7, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 7, metadata !3856, metadata !DIExpression()), !dbg !3859
  %152 = icmp sgt i32 %145, -1, !dbg !3863
  br i1 %152, label %160, label %153, !dbg !3863

153:                                              ; preds = %151
  %154 = add nsw i32 %145, 8, !dbg !3863
  store i32 %154, i32* %8, align 8, !dbg !3863
  %155 = icmp ult i32 %145, -7, !dbg !3863
  br i1 %155, label %156, label %160, !dbg !3863

156:                                              ; preds = %153
  %157 = load i8*, i8** %9, align 8, !dbg !3863
  %158 = sext i32 %145 to i64, !dbg !3863
  %159 = getelementptr inbounds i8, i8* %157, i64 %158, !dbg !3863
  br label %164, !dbg !3863

160:                                              ; preds = %153, %151
  %161 = phi i32 [ %154, %153 ], [ %145, %151 ]
  %162 = load i8*, i8** %10, align 8, !dbg !3863
  %163 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !3863
  store i8* %163, i8** %10, align 8, !dbg !3863
  br label %164, !dbg !3863

164:                                              ; preds = %160, %156
  %165 = phi i32 [ %154, %156 ], [ %161, %160 ]
  %166 = phi i8* [ %159, %156 ], [ %162, %160 ]
  %167 = bitcast i8* %166 to i8**, !dbg !3863
  %168 = load i8*, i8** %167, align 8, !dbg !3863
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3866
  store i8* %168, i8** %169, align 8, !dbg !3867, !tbaa !486
  %170 = icmp eq i8* %168, null, !dbg !3868
  br i1 %170, label %210, label %171, !dbg !3869

171:                                              ; preds = %164
  call void @llvm.dbg.value(metadata i64 8, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 8, metadata !3856, metadata !DIExpression()), !dbg !3859
  %172 = icmp sgt i32 %165, -1, !dbg !3863
  br i1 %172, label %180, label %173, !dbg !3863

173:                                              ; preds = %171
  %174 = add nsw i32 %165, 8, !dbg !3863
  store i32 %174, i32* %8, align 8, !dbg !3863
  %175 = icmp ult i32 %165, -7, !dbg !3863
  br i1 %175, label %176, label %180, !dbg !3863

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8, !dbg !3863
  %178 = sext i32 %165 to i64, !dbg !3863
  %179 = getelementptr inbounds i8, i8* %177, i64 %178, !dbg !3863
  br label %184, !dbg !3863

180:                                              ; preds = %173, %171
  %181 = phi i32 [ %174, %173 ], [ %165, %171 ]
  %182 = load i8*, i8** %10, align 8, !dbg !3863
  %183 = getelementptr inbounds i8, i8* %182, i64 8, !dbg !3863
  store i8* %183, i8** %10, align 8, !dbg !3863
  br label %184, !dbg !3863

184:                                              ; preds = %180, %176
  %185 = phi i32 [ %174, %176 ], [ %181, %180 ]
  %186 = phi i8* [ %179, %176 ], [ %182, %180 ]
  %187 = bitcast i8* %186 to i8**, !dbg !3863
  %188 = load i8*, i8** %187, align 8, !dbg !3863
  %189 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3866
  store i8* %188, i8** %189, align 8, !dbg !3867, !tbaa !486
  %190 = icmp eq i8* %188, null, !dbg !3868
  br i1 %190, label %210, label %191, !dbg !3869

191:                                              ; preds = %184
  call void @llvm.dbg.value(metadata i64 9, metadata !3856, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 9, metadata !3856, metadata !DIExpression()), !dbg !3859
  %192 = icmp sgt i32 %185, -1, !dbg !3863
  br i1 %192, label %200, label %193, !dbg !3863

193:                                              ; preds = %191
  %194 = add nsw i32 %185, 8, !dbg !3863
  store i32 %194, i32* %8, align 8, !dbg !3863
  %195 = icmp ult i32 %185, -7, !dbg !3863
  br i1 %195, label %196, label %200, !dbg !3863

196:                                              ; preds = %193
  %197 = load i8*, i8** %9, align 8, !dbg !3863
  %198 = sext i32 %185 to i64, !dbg !3863
  %199 = getelementptr inbounds i8, i8* %197, i64 %198, !dbg !3863
  br label %203, !dbg !3863

200:                                              ; preds = %193, %191
  %201 = load i8*, i8** %10, align 8, !dbg !3863
  %202 = getelementptr inbounds i8, i8* %201, i64 8, !dbg !3863
  store i8* %202, i8** %10, align 8, !dbg !3863
  br label %203, !dbg !3863

203:                                              ; preds = %200, %196
  %204 = phi i8* [ %199, %196 ], [ %201, %200 ]
  %205 = bitcast i8* %204 to i8**, !dbg !3863
  %206 = load i8*, i8** %205, align 8, !dbg !3863
  %207 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3866
  store i8* %206, i8** %207, align 8, !dbg !3867, !tbaa !486
  %208 = icmp eq i8* %206, null, !dbg !3868
  %209 = select i1 %208, i64 9, i64 10, !dbg !3869
  br label %210, !dbg !3869

210:                                              ; preds = %203, %184, %164, %144, %124, %104, %84, %64, %44, %24
  %211 = phi i64 [ 0, %24 ], [ 1, %44 ], [ 2, %64 ], [ 3, %84 ], [ 4, %104 ], [ 5, %124 ], [ 6, %144 ], [ 7, %164 ], [ 8, %184 ], [ %209, %203 ], !dbg !3870
  call void @version_etc_arn(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, i8** noundef nonnull %29, i64 noundef %211), !dbg !3871
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #37, !dbg !3872
  ret void, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, ...) local_unnamed_addr #18 !dbg !3873 {
  %5 = alloca %"struct.std::__va_list", align 8
  %6 = alloca %"struct.std::__va_list", align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3877, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i8* %1, metadata !3878, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i8* %2, metadata !3879, metadata !DIExpression()), !dbg !3882
  call void @llvm.dbg.value(metadata i8* %3, metadata !3880, metadata !DIExpression()), !dbg !3882
  %7 = bitcast %"struct.std::__va_list"* %5 to i8*, !dbg !3883
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #37, !dbg !3883
  call void @llvm.dbg.declare(metadata %"struct.std::__va_list"* %5, metadata !3881, metadata !DIExpression()), !dbg !3884
  call void @llvm.va_start(i8* nonnull %7), !dbg !3885
  %8 = bitcast %"struct.std::__va_list"* %6 to i8*, !dbg !3886
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %8) #37, !dbg !3886
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32) %8, i8* noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !dbg !3886, !tbaa.struct !1854
  call void @version_etc_va(%struct._IO_FILE* noundef %0, i8* noundef %1, i8* noundef %2, i8* noundef %3, %"struct.std::__va_list"* noundef nonnull %6), !dbg !3886
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %8) #37, !dbg !3886
  call void @llvm.va_end(i8* nonnull %7), !dbg !3887
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #37, !dbg !3888
  ret void, !dbg !3888
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #18 !dbg !3889 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3890, !tbaa !486
  %2 = tail call i32 @fputs_unlocked(i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4.129, i64 0, i64 0), %struct._IO_FILE* noundef %1), !dbg !3890
  %3 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17.146, i64 0, i64 0), i32 noundef 5) #37, !dbg !3891
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %3, i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18.147, i64 0, i64 0)) #37, !dbg !3891
  %5 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19.148, i64 0, i64 0), i32 noundef 5) #37, !dbg !3892
  %6 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %5, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20.149, i64 0, i64 0), i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21.150, i64 0, i64 0)) #37, !dbg !3892
  %7 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2.127, i64 0, i64 0), i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.22.151, i64 0, i64 0), i32 noundef 5) #37, !dbg !3893
  %8 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 noundef 1, i8* noundef %7, i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23.152, i64 0, i64 0)) #37, !dbg !3893
  ret void, !dbg !3894
}

; Function Attrs: inlinehint nounwind uwtable allocsize(1,2)
define dso_local i8* @xnrealloc(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #29 !dbg !3895 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i64 %2, metadata !3902, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()) #37, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()) #37, !dbg !3909
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()) #37, !dbg !3909
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3911
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #37, !dbg !3917
  %5 = icmp eq i8* %4, null, !dbg !3919
  br i1 %5, label %6, label %7, !dbg !3921

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3922
  unreachable, !dbg !3922

7:                                                ; preds = %3
  ret i8* %4, !dbg !3923
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local i8* @xreallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !3905 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3924
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()), !dbg !3924
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !3925
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #37, !dbg !3926
  %5 = icmp eq i8* %4, null, !dbg !3928
  br i1 %5, label %6, label %7, !dbg !3929

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !3930
  unreachable, !dbg !3930

7:                                                ; preds = %3
  ret i8* %4, !dbg !3931
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xmalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3932 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()), !dbg !3937
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3938
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()) #37, !dbg !3939
  %3 = icmp eq i8* %2, null, !dbg !3941
  br i1 %3, label %4, label %5, !dbg !3942

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3943
  unreachable, !dbg !3943

5:                                                ; preds = %1
  ret i8* %2, !dbg !3944
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @ximalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3945 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3947, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata i64 %0, metadata !3949, metadata !DIExpression()) #37, !dbg !3952
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3954
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()) #37, !dbg !3955
  %3 = icmp eq i8* %2, null, !dbg !3957
  br i1 %3, label %4, label %5, !dbg !3958

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3959
  unreachable, !dbg !3959

5:                                                ; preds = %1
  ret i8* %2, !dbg !3960
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xcharalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !3961 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3965, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i64 %0, metadata !3936, metadata !DIExpression()) #37, !dbg !3967
  %2 = tail call noalias i8* @malloc(i64 noundef %0) #37, !dbg !3969
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()) #37, !dbg !3970
  %3 = icmp eq i8* %2, null, !dbg !3972
  br i1 %3, label %4, label %5, !dbg !3973

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !3974
  unreachable, !dbg !3974

5:                                                ; preds = %1
  ret i8* %2, !dbg !3975
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias i8* @xrealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3976 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i64 %1, metadata !3981, metadata !DIExpression()), !dbg !3982
  call void @llvm.dbg.value(metadata i8* %0, metadata !3983, metadata !DIExpression()) #37, !dbg !3988
  call void @llvm.dbg.value(metadata i64 %1, metadata !3987, metadata !DIExpression()) #37, !dbg !3988
  %3 = icmp eq i64 %1, 0, !dbg !3990
  %4 = select i1 %3, i64 1, i64 %1, !dbg !3990
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37, !dbg !3991
  call void @llvm.dbg.value(metadata i8* %5, metadata !3912, metadata !DIExpression()) #37, !dbg !3992
  %6 = icmp eq i8* %5, null, !dbg !3994
  br i1 %6, label %7, label %8, !dbg !3995

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !3996
  unreachable, !dbg !3996

8:                                                ; preds = %2
  ret i8* %5, !dbg !3997
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xirealloc(i8* nocapture noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !3998 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4002, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i8* %0, metadata !4005, metadata !DIExpression()) #37, !dbg !4009
  call void @llvm.dbg.value(metadata i64 %1, metadata !4008, metadata !DIExpression()) #37, !dbg !4009
  call void @llvm.dbg.value(metadata i8* %0, metadata !3983, metadata !DIExpression()) #37, !dbg !4011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3987, metadata !DIExpression()) #37, !dbg !4011
  %3 = icmp eq i64 %1, 0, !dbg !4013
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4013
  %5 = tail call i8* @realloc(i8* noundef %0, i64 noundef %4) #37, !dbg !4014
  call void @llvm.dbg.value(metadata i8* %5, metadata !3912, metadata !DIExpression()) #37, !dbg !4015
  %6 = icmp eq i8* %5, null, !dbg !4017
  br i1 %6, label %7, label %8, !dbg !4018

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4019
  unreachable, !dbg !4019

8:                                                ; preds = %2
  ret i8* %5, !dbg !4020
}

; Function Attrs: nounwind uwtable allocsize(1,2)
define dso_local nonnull i8* @xireallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4021 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4025, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %1, metadata !4026, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i64 %2, metadata !4027, metadata !DIExpression()), !dbg !4028
  call void @llvm.dbg.value(metadata i8* %0, metadata !4029, metadata !DIExpression()) #37, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %1, metadata !4032, metadata !DIExpression()) #37, !dbg !4034
  call void @llvm.dbg.value(metadata i64 %2, metadata !4033, metadata !DIExpression()) #37, !dbg !4034
  %4 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4036
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #37, !dbg !4037
  %5 = icmp eq i8* %4, null, !dbg !4039
  br i1 %5, label %6, label %7, !dbg !4040

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4041
  unreachable, !dbg !4041

7:                                                ; preds = %3
  ret i8* %4, !dbg !4042
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4043 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %1, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8* null, metadata !3904, metadata !DIExpression()) #37, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %0, metadata !3907, metadata !DIExpression()) #37, !dbg !4050
  call void @llvm.dbg.value(metadata i64 %1, metadata !3908, metadata !DIExpression()) #37, !dbg !4050
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4052
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4053
  %4 = icmp eq i8* %3, null, !dbg !4055
  br i1 %4, label %5, label %6, !dbg !4056

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4057
  unreachable, !dbg !4057

6:                                                ; preds = %2
  ret i8* %3, !dbg !4058
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4059 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4063, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i64 %1, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.value(metadata i8* null, metadata !4025, metadata !DIExpression()) #37, !dbg !4066
  call void @llvm.dbg.value(metadata i64 %0, metadata !4026, metadata !DIExpression()) #37, !dbg !4066
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()) #37, !dbg !4066
  call void @llvm.dbg.value(metadata i8* null, metadata !4029, metadata !DIExpression()) #37, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %0, metadata !4032, metadata !DIExpression()) #37, !dbg !4068
  call void @llvm.dbg.value(metadata i64 %1, metadata !4033, metadata !DIExpression()) #37, !dbg !4068
  %3 = tail call i8* @rpl_reallocarray(i8* noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4070
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4071
  %4 = icmp eq i8* %3, null, !dbg !4073
  br i1 %4, label %5, label %6, !dbg !4074

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4075
  unreachable, !dbg !4075

6:                                                ; preds = %2
  ret i8* %3, !dbg !4076
}

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2realloc(i8* noundef %0, i64* nocapture noundef %1) local_unnamed_addr #18 !dbg !4077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4081, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i64* %1, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8* %0, metadata !419, metadata !DIExpression()) #37, !dbg !4084
  call void @llvm.dbg.value(metadata i64* %1, metadata !420, metadata !DIExpression()) #37, !dbg !4084
  call void @llvm.dbg.value(metadata i64 1, metadata !421, metadata !DIExpression()) #37, !dbg !4084
  %3 = load i64, i64* %1, align 8, !dbg !4086, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %3, metadata !422, metadata !DIExpression()) #37, !dbg !4084
  %4 = icmp eq i8* %0, null, !dbg !4087
  br i1 %4, label %5, label %8, !dbg !4089

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4090
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4093
  br label %15, !dbg !4093

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4094
  %10 = add nuw i64 %9, 1, !dbg !4094
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10) #37, !dbg !4094
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4094
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4094
  call void @llvm.dbg.value(metadata i64 %13, metadata !422, metadata !DIExpression()) #37, !dbg !4084
  br i1 %12, label %14, label %15, !dbg !4097

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4098
  unreachable, !dbg !4098

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4084
  call void @llvm.dbg.value(metadata i64 %16, metadata !422, metadata !DIExpression()) #37, !dbg !4084
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()) #37, !dbg !4099
  call void @llvm.dbg.value(metadata i64 %16, metadata !3907, metadata !DIExpression()) #37, !dbg !4099
  call void @llvm.dbg.value(metadata i64 1, metadata !3908, metadata !DIExpression()) #37, !dbg !4099
  %17 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4101
  call void @llvm.dbg.value(metadata i8* %17, metadata !3912, metadata !DIExpression()) #37, !dbg !4102
  %18 = icmp eq i8* %17, null, !dbg !4104
  br i1 %18, label %19, label %20, !dbg !4105

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4106
  unreachable, !dbg !4106

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata i8* %17, metadata !419, metadata !DIExpression()) #37, !dbg !4084
  store i64 %16, i64* %1, align 8, !dbg !4107, !tbaa !933
  ret i8* %17, !dbg !4108
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull i8* @x2nrealloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2) local_unnamed_addr #18 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !419, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64* %1, metadata !420, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i64 %2, metadata !421, metadata !DIExpression()), !dbg !4109
  %4 = load i64, i64* %1, align 8, !dbg !4110, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %4, metadata !422, metadata !DIExpression()), !dbg !4109
  %5 = icmp eq i8* %0, null, !dbg !4111
  br i1 %5, label %6, label %13, !dbg !4112

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4113
  br i1 %7, label %8, label %20, !dbg !4114

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4115
  call void @llvm.dbg.value(metadata i64 %9, metadata !422, metadata !DIExpression()), !dbg !4109
  %10 = icmp ugt i64 %2, 128, !dbg !4117
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4118
  call void @llvm.dbg.value(metadata i64 %12, metadata !422, metadata !DIExpression()), !dbg !4109
  br label %20, !dbg !4119

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4120
  %15 = add nuw i64 %14, 1, !dbg !4120
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4120
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4120
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4120
  call void @llvm.dbg.value(metadata i64 %18, metadata !422, metadata !DIExpression()), !dbg !4109
  br i1 %17, label %19, label %20, !dbg !4121

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4122
  unreachable, !dbg !4122

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4109
  call void @llvm.dbg.value(metadata i64 %21, metadata !422, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8* %0, metadata !3904, metadata !DIExpression()) #37, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %21, metadata !3907, metadata !DIExpression()) #37, !dbg !4123
  call void @llvm.dbg.value(metadata i64 %2, metadata !3908, metadata !DIExpression()) #37, !dbg !4123
  %22 = tail call i8* @rpl_reallocarray(i8* noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4125
  call void @llvm.dbg.value(metadata i8* %22, metadata !3912, metadata !DIExpression()) #37, !dbg !4126
  %23 = icmp eq i8* %22, null, !dbg !4128
  br i1 %23, label %24, label %25, !dbg !4129

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4130
  unreachable, !dbg !4130

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i8* %22, metadata !419, metadata !DIExpression()), !dbg !4109
  store i64 %21, i64* %1, align 8, !dbg !4131, !tbaa !933
  ret i8* %22, !dbg !4132
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xpalloc(i8* noundef %0, i64* nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #18 !dbg !426 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !431, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64* %1, metadata !432, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %2, metadata !433, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %3, metadata !434, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %4, metadata !435, metadata !DIExpression()), !dbg !4133
  %6 = load i64, i64* %1, align 8, !dbg !4134, !tbaa !933
  call void @llvm.dbg.value(metadata i64 %6, metadata !436, metadata !DIExpression()), !dbg !4133
  %7 = ashr i64 %6, 1, !dbg !4135
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4135
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4135
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4135
  call void @llvm.dbg.value(metadata i64 %10, metadata !437, metadata !DIExpression()), !dbg !4133
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4137
  call void @llvm.dbg.value(metadata i64 %11, metadata !437, metadata !DIExpression()), !dbg !4133
  %12 = icmp sgt i64 %3, -1, !dbg !4138
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4140
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4140
  call void @llvm.dbg.value(metadata i64 %15, metadata !437, metadata !DIExpression()), !dbg !4133
  %16 = icmp slt i64 %4, 0, !dbg !4141
  br i1 %16, label %17, label %30, !dbg !4141

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4141
  br i1 %18, label %19, label %24, !dbg !4141

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4141
  %21 = udiv i64 9223372036854775807, %20, !dbg !4141
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4141
  br i1 %23, label %46, label %43, !dbg !4141

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4141
  br i1 %25, label %43, label %26, !dbg !4141

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4141
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4141
  %29 = icmp ult i64 %28, %15, !dbg !4141
  br i1 %29, label %46, label %43, !dbg !4141

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4141
  br i1 %31, label %43, label %32, !dbg !4141

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4141
  br i1 %33, label %34, label %40, !dbg !4141

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4141
  br i1 %35, label %43, label %36, !dbg !4141

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4141
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4141
  %39 = icmp ult i64 %38, %4, !dbg !4141
  br i1 %39, label %46, label %43, !dbg !4141

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4, !dbg !4141
  %42 = icmp ult i64 %41, %15, !dbg !4141
  br i1 %42, label %46, label %43, !dbg !4141

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4133
  %44 = mul i64 %15, %4, !dbg !4141
  call void @llvm.dbg.value(metadata i64 %44, metadata !438, metadata !DIExpression()), !dbg !4133
  %45 = icmp slt i64 %44, 128, !dbg !4141
  br i1 %45, label %46, label %52, !dbg !4141

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !439, metadata !DIExpression()), !dbg !4133
  %48 = sdiv i64 %47, %4, !dbg !4142
  call void @llvm.dbg.value(metadata i64 %48, metadata !437, metadata !DIExpression()), !dbg !4133
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4145
  call void @llvm.dbg.value(metadata i64 %51, metadata !438, metadata !DIExpression()), !dbg !4133
  br label %52, !dbg !4146

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4133
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 %54, metadata !438, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %53, metadata !437, metadata !DIExpression()), !dbg !4133
  %55 = icmp eq i8* %0, null, !dbg !4147
  br i1 %55, label %56, label %57, !dbg !4149

56:                                               ; preds = %52
  store i64 0, i64* %1, align 8, !dbg !4150, !tbaa !933
  br label %57, !dbg !4151

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4152
  %59 = icmp slt i64 %58, %2, !dbg !4154
  br i1 %59, label %60, label %97, !dbg !4155

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4156
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4156
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4156
  call void @llvm.dbg.value(metadata i64 %63, metadata !437, metadata !DIExpression()), !dbg !4133
  br i1 %62, label %96, label %64, !dbg !4157

64:                                               ; preds = %60
  %65 = icmp sgt i64 %63, %3
  %66 = select i1 %12, i1 %65, i1 false, !dbg !4158
  br i1 %66, label %96, label %67, !dbg !4158

67:                                               ; preds = %64
  br i1 %16, label %68, label %81, !dbg !4159

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4159
  br i1 %69, label %70, label %75, !dbg !4159

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4159
  %72 = udiv i64 9223372036854775807, %71, !dbg !4159
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4159
  br i1 %74, label %96, label %94, !dbg !4159

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4159
  br i1 %76, label %94, label %77, !dbg !4159

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4159
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4159
  %80 = icmp ult i64 %79, %63, !dbg !4159
  br i1 %80, label %96, label %94, !dbg !4159

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4159
  br i1 %82, label %94, label %83, !dbg !4159

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4159
  br i1 %84, label %85, label %91, !dbg !4159

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4159
  br i1 %86, label %94, label %87, !dbg !4159

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4159
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4159
  %90 = icmp ult i64 %89, %4, !dbg !4159
  br i1 %90, label %96, label %94, !dbg !4159

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4, !dbg !4159
  %93 = icmp ult i64 %92, %63, !dbg !4159
  br i1 %93, label %96, label %94, !dbg !4159

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !438, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4133
  %95 = mul i64 %63, %4, !dbg !4159
  call void @llvm.dbg.value(metadata i64 %95, metadata !438, metadata !DIExpression()), !dbg !4133
  br label %97, !dbg !4160

96:                                               ; preds = %70, %77, %87, %91, %64, %60
  tail call void @xalloc_die() #39, !dbg !4161
  unreachable, !dbg !4161

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4133
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4133
  call void @llvm.dbg.value(metadata i64 %99, metadata !438, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i64 %98, metadata !437, metadata !DIExpression()), !dbg !4133
  call void @llvm.dbg.value(metadata i8* %0, metadata !3980, metadata !DIExpression()) #37, !dbg !4162
  call void @llvm.dbg.value(metadata i64 %99, metadata !3981, metadata !DIExpression()) #37, !dbg !4162
  call void @llvm.dbg.value(metadata i8* %0, metadata !3983, metadata !DIExpression()) #37, !dbg !4164
  call void @llvm.dbg.value(metadata i64 %99, metadata !3987, metadata !DIExpression()) #37, !dbg !4164
  %100 = icmp eq i64 %99, 0, !dbg !4166
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4166
  %102 = tail call i8* @realloc(i8* noundef %0, i64 noundef %101) #37, !dbg !4167
  call void @llvm.dbg.value(metadata i8* %102, metadata !3912, metadata !DIExpression()) #37, !dbg !4168
  %103 = icmp eq i8* %102, null, !dbg !4170
  br i1 %103, label %104, label %105, !dbg !4171

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !4172
  unreachable, !dbg !4172

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i8* %102, metadata !431, metadata !DIExpression()), !dbg !4133
  store i64 %98, i64* %1, align 8, !dbg !4173, !tbaa !933
  ret i8* %102, !dbg !4174
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xzalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4175 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.value(metadata i64 %0, metadata !4179, metadata !DIExpression()) #37, !dbg !4183
  call void @llvm.dbg.value(metadata i64 1, metadata !4182, metadata !DIExpression()) #37, !dbg !4183
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37, !dbg !4185
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()) #37, !dbg !4186
  %3 = icmp eq i8* %2, null, !dbg !4188
  br i1 %3, label %4, label %5, !dbg !4189

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4190
  unreachable, !dbg !4190

5:                                                ; preds = %1
  ret i8* %2, !dbg !4191
}

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @calloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4180 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4179, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i64 %1, metadata !4182, metadata !DIExpression()), !dbg !4192
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37, !dbg !4193
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4194
  %4 = icmp eq i8* %3, null, !dbg !4196
  br i1 %4, label %5, label %6, !dbg !4197

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4198
  unreachable, !dbg !4198

6:                                                ; preds = %2
  ret i8* %3, !dbg !4199
}

; Function Attrs: nounwind uwtable allocsize(0)
define dso_local noalias nonnull i8* @xizalloc(i64 noundef %0) local_unnamed_addr #31 !dbg !4200 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4202, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 %0, metadata !4204, metadata !DIExpression()) #37, !dbg !4208
  call void @llvm.dbg.value(metadata i64 1, metadata !4207, metadata !DIExpression()) #37, !dbg !4208
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()) #37, !dbg !4214
  call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()) #37, !dbg !4214
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()) #37, !dbg !4214
  call void @llvm.dbg.value(metadata i64 1, metadata !4213, metadata !DIExpression()) #37, !dbg !4214
  %2 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef 1) #37, !dbg !4216
  call void @llvm.dbg.value(metadata i8* %2, metadata !3912, metadata !DIExpression()) #37, !dbg !4217
  %3 = icmp eq i8* %2, null, !dbg !4219
  br i1 %3, label %4, label %5, !dbg !4220

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4221
  unreachable, !dbg !4221

5:                                                ; preds = %1
  ret i8* %2, !dbg !4222
}

; Function Attrs: nounwind uwtable allocsize(0,1)
define dso_local noalias nonnull i8* @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4205 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4204, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %1, metadata !4207, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()) #37, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4213, metadata !DIExpression()) #37, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %0, metadata !4210, metadata !DIExpression()) #37, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %1, metadata !4213, metadata !DIExpression()) #37, !dbg !4224
  %3 = tail call noalias i8* @calloc(i64 noundef %0, i64 noundef %1) #37, !dbg !4226
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4227
  %4 = icmp eq i8* %3, null, !dbg !4229
  br i1 %4, label %5, label %6, !dbg !4230

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4231
  unreachable, !dbg !4231

6:                                                ; preds = %2
  ret i8* %3, !dbg !4232
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @xmemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4233 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !4238, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata i64 %1, metadata !3936, metadata !DIExpression()) #37, !dbg !4240
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37, !dbg !4242
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4243
  %4 = icmp eq i8* %3, null, !dbg !4245
  br i1 %4, label %5, label %6, !dbg !4246

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4247
  unreachable, !dbg !4247

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4248, metadata !DIExpression()) #37, !dbg !4256
  call void @llvm.dbg.value(metadata i8* %0, metadata !4254, metadata !DIExpression()) #37, !dbg !4256
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()) #37, !dbg !4256
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4258
  ret i8* %3, !dbg !4259
}

; Function Attrs: nounwind uwtable allocsize(1)
define dso_local noalias nonnull i8* @ximemdup(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4260 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4264, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %1, metadata !4265, metadata !DIExpression()), !dbg !4266
  call void @llvm.dbg.value(metadata i64 %1, metadata !3947, metadata !DIExpression()) #37, !dbg !4267
  call void @llvm.dbg.value(metadata i64 %1, metadata !3949, metadata !DIExpression()) #37, !dbg !4269
  %3 = tail call noalias i8* @malloc(i64 noundef %1) #37, !dbg !4271
  call void @llvm.dbg.value(metadata i8* %3, metadata !3912, metadata !DIExpression()) #37, !dbg !4272
  %4 = icmp eq i8* %3, null, !dbg !4274
  br i1 %4, label %5, label %6, !dbg !4275

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4276
  unreachable, !dbg !4276

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %3, metadata !4248, metadata !DIExpression()) #37, !dbg !4277
  call void @llvm.dbg.value(metadata i8* %0, metadata !4254, metadata !DIExpression()) #37, !dbg !4277
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()) #37, !dbg !4277
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %3, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4279
  ret i8* %3, !dbg !4280
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @ximemdup0(i8* nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #18 !dbg !4281 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4285, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 %1, metadata !4286, metadata !DIExpression()), !dbg !4288
  %3 = add nsw i64 %1, 1, !dbg !4289
  call void @llvm.dbg.value(metadata i64 %3, metadata !3947, metadata !DIExpression()) #37, !dbg !4290
  call void @llvm.dbg.value(metadata i64 %3, metadata !3949, metadata !DIExpression()) #37, !dbg !4292
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37, !dbg !4294
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #37, !dbg !4295
  %5 = icmp eq i8* %4, null, !dbg !4297
  br i1 %5, label %6, label %7, !dbg !4298

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4299
  unreachable, !dbg !4299

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata i8* %4, metadata !4287, metadata !DIExpression()), !dbg !4288
  %8 = getelementptr inbounds i8, i8* %4, i64 %1, !dbg !4300
  store i8 0, i8* %8, align 1, !dbg !4301, !tbaa !590
  call void @llvm.dbg.value(metadata i8* %4, metadata !4248, metadata !DIExpression()) #37, !dbg !4302
  call void @llvm.dbg.value(metadata i8* %0, metadata !4254, metadata !DIExpression()) #37, !dbg !4302
  call void @llvm.dbg.value(metadata i64 %1, metadata !4255, metadata !DIExpression()) #37, !dbg !4302
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4304
  ret i8* %4, !dbg !4305
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull i8* @xstrdup(i8* nocapture noundef readonly %0) local_unnamed_addr #18 !dbg !4306 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4308, metadata !DIExpression()), !dbg !4309
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #38, !dbg !4310
  %3 = add i64 %2, 1, !dbg !4311
  call void @llvm.dbg.value(metadata i8* %0, metadata !4237, metadata !DIExpression()) #37, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %3, metadata !4238, metadata !DIExpression()) #37, !dbg !4312
  call void @llvm.dbg.value(metadata i64 %3, metadata !3936, metadata !DIExpression()) #37, !dbg !4314
  %4 = tail call noalias i8* @malloc(i64 noundef %3) #37, !dbg !4316
  call void @llvm.dbg.value(metadata i8* %4, metadata !3912, metadata !DIExpression()) #37, !dbg !4317
  %5 = icmp eq i8* %4, null, !dbg !4319
  br i1 %5, label %6, label %7, !dbg !4320

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4321
  unreachable, !dbg !4321

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %4, metadata !4248, metadata !DIExpression()) #37, !dbg !4322
  call void @llvm.dbg.value(metadata i8* %0, metadata !4254, metadata !DIExpression()) #37, !dbg !4322
  call void @llvm.dbg.value(metadata i64 %3, metadata !4255, metadata !DIExpression()) #37, !dbg !4322
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %4, i8* noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4324
  ret i8* %4, !dbg !4325
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4326 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !4331, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %1, metadata !4328, metadata !DIExpression()), !dbg !4332
  %2 = tail call i8* @dcgettext(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.165, i64 0, i64 0), i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.166, i64 0, i64 0), i32 noundef 5) #37, !dbg !4331
  tail call void (i32, i32, i8*, ...) @error(i32 noundef %1, i32 noundef 0, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.167, i64 0, i64 0), i8* noundef %2) #37, !dbg !4331
  %3 = icmp eq i32 %1, 0, !dbg !4331
  tail call void @llvm.assume(i1 %3), !dbg !4331
  tail call void @abort() #39, !dbg !4333
  unreachable, !dbg !4333
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nounwind uwtable
define dso_local i32 @xstrtoimax(i8* noundef %0, i8** noundef %1, i32 noundef %2, i64* nocapture noundef writeonly %3, i8* noundef readonly %4) local_unnamed_addr #18 !dbg !4334 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !4340, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i8** %1, metadata !4341, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i32 %2, metadata !4342, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64* %3, metadata !4343, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i8* %4, metadata !4344, metadata !DIExpression()), !dbg !4354
  %7 = bitcast i8** %6 to i8*, !dbg !4355
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #37, !dbg !4355
  %8 = icmp eq i8** %1, null, !dbg !4356
  %9 = select i1 %8, i8** %6, i8** %1, !dbg !4356
  call void @llvm.dbg.value(metadata i8** %9, metadata !4346, metadata !DIExpression()), !dbg !4354
  %10 = tail call i32* @__errno_location() #40, !dbg !4357
  store i32 0, i32* %10, align 4, !dbg !4358, !tbaa !581
  %11 = call i64 @strtoimax(i8* noundef %0, i8** noundef %9, i32 noundef %2) #37, !dbg !4359
  call void @llvm.dbg.value(metadata i64 %11, metadata !4347, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i32 0, metadata !4348, metadata !DIExpression()), !dbg !4354
  %12 = load i8*, i8** %9, align 8, !dbg !4360, !tbaa !486
  %13 = icmp eq i8* %12, %0, !dbg !4362
  br i1 %13, label %14, label %23, !dbg !4363

14:                                               ; preds = %5
  %15 = icmp eq i8* %4, null, !dbg !4364
  br i1 %15, label %1077, label %16, !dbg !4367

16:                                               ; preds = %14
  %17 = load i8, i8* %0, align 1, !dbg !4368, !tbaa !590
  %18 = icmp eq i8 %17, 0, !dbg !4368
  br i1 %18, label %1077, label %19, !dbg !4369

19:                                               ; preds = %16
  %20 = zext i8 %17 to i32, !dbg !4368
  %21 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %20) #38, !dbg !4370
  %22 = icmp eq i8* %21, null, !dbg !4370
  br i1 %22, label %1077, label %30, !dbg !4371

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4, !dbg !4372, !tbaa !581
  switch i32 %24, label %1077 [
    i32 0, label %26
    i32 34, label %25
  ], !dbg !4374

25:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i32 1, metadata !4348, metadata !DIExpression()), !dbg !4354
  br label %26, !dbg !4375

26:                                               ; preds = %23, %25
  %27 = phi i32 [ 1, %25 ], [ %24, %23 ], !dbg !4354
  call void @llvm.dbg.value(metadata i32 %27, metadata !4348, metadata !DIExpression()), !dbg !4354
  %28 = icmp eq i8* %4, null, !dbg !4377
  br i1 %28, label %29, label %30, !dbg !4379

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata i64 %11, metadata !4347, metadata !DIExpression()), !dbg !4354
  store i64 %11, i64* %3, align 8, !dbg !4380, !tbaa !933
  br label %1077, !dbg !4382

30:                                               ; preds = %19, %26
  %31 = phi i32 [ %27, %26 ], [ 0, %19 ]
  %32 = phi i64 [ %11, %26 ], [ 1, %19 ]
  %33 = load i8, i8* %12, align 1, !dbg !4383, !tbaa !590
  %34 = icmp eq i8 %33, 0, !dbg !4384
  br i1 %34, label %1074, label %35, !dbg !4385

35:                                               ; preds = %30
  %36 = zext i8 %33 to i32, !dbg !4383
  %37 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef %36) #38, !dbg !4386
  %38 = icmp eq i8* %37, null, !dbg !4386
  br i1 %38, label %39, label %41, !dbg !4388

39:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %11, metadata !4347, metadata !DIExpression()), !dbg !4354
  store i64 %32, i64* %3, align 8, !dbg !4389, !tbaa !933
  %40 = or i32 %31, 2, !dbg !4391
  br label %1077, !dbg !4392

41:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i32 1024, metadata !4349, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i32 1, metadata !4352, metadata !DIExpression()), !dbg !4393
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
  ], !dbg !4394

42:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %43 = call i8* @strchr(i8* noundef nonnull %4, i32 noundef 48) #38, !dbg !4395
  %44 = icmp eq i8* %43, null, !dbg !4395
  br i1 %44, label %54, label %45, !dbg !4398

45:                                               ; preds = %42
  %46 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !4399
  %47 = load i8, i8* %46, align 1, !dbg !4399, !tbaa !590
  switch i8 %47, label %54 [
    i8 105, label %48
    i8 66, label %53
    i8 68, label %53
  ], !dbg !4400

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, i8* %12, i64 2, !dbg !4401
  %50 = load i8, i8* %49, align 1, !dbg !4401, !tbaa !590
  %51 = icmp eq i8 %50, 66, !dbg !4404
  %52 = select i1 %51, i64 3, i64 1, !dbg !4405
  br label %54, !dbg !4405

53:                                               ; preds = %45, %45
  call void @llvm.dbg.value(metadata i32 1000, metadata !4349, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i32 2, metadata !4352, metadata !DIExpression()), !dbg !4393
  br label %54, !dbg !4406

54:                                               ; preds = %48, %42, %45, %53, %41
  %55 = phi i64 [ 1024, %41 ], [ 1024, %45 ], [ 1000, %53 ], [ 1024, %42 ], [ 1024, %48 ]
  %56 = phi i64 [ 1, %41 ], [ 1, %45 ], [ 2, %53 ], [ 1, %42 ], [ %52, %48 ]
  call void @llvm.dbg.value(metadata i32 undef, metadata !4352, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.value(metadata i32 undef, metadata !4349, metadata !DIExpression()), !dbg !4393
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
  ], !dbg !4407

57:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 7, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 6, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %58 = icmp slt i64 %32, 0, !dbg !4428
  br i1 %58, label %939, label %945, !dbg !4428

59:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 8, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 7, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %60 = icmp slt i64 %32, 0, !dbg !4434
  br i1 %60, label %795, label %801, !dbg !4434

61:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 9, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 8, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %62 = icmp slt i64 %32, 0, !dbg !4439
  br i1 %62, label %556, label %562, !dbg !4439

63:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 10, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 9, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %64 = icmp slt i64 %32, 0, !dbg !4444
  br i1 %64, label %372, label %378, !dbg !4444

65:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  %66 = icmp slt i64 %32, 0, !dbg !4449
  br i1 %66, label %288, label %294, !dbg !4449

67:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 6, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %68 = icmp slt i64 %32, 0, !dbg !4454
  br i1 %68, label %87, label %93, !dbg !4454

69:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i32 512, metadata !4424, metadata !DIExpression()), !dbg !4455
  %70 = icmp slt i64 %32, 0, !dbg !4457
  br i1 %70, label %71, label %74, !dbg !4457

71:                                               ; preds = %69
  %72 = add i64 %32, -1, !dbg !4457
  %73 = icmp ult i64 %72, -18014398509481985, !dbg !4457
  br i1 %73, label %1063, label %76, !dbg !4457

74:                                               ; preds = %69
  %75 = icmp ugt i64 %32, 18014398509481983, !dbg !4457
  br i1 %75, label %1063, label %76, !dbg !4457

76:                                               ; preds = %74, %71
  %77 = shl nsw i64 %32, 9, !dbg !4457
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 512), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4455
  br label %1063, !dbg !4458

78:                                               ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i32 1024, metadata !4424, metadata !DIExpression()), !dbg !4459
  %79 = icmp slt i64 %32, 0, !dbg !4461
  br i1 %79, label %80, label %83, !dbg !4461

80:                                               ; preds = %78
  %81 = add i64 %32, -1, !dbg !4461
  %82 = icmp ult i64 %81, -9007199254740993, !dbg !4461
  br i1 %82, label %1063, label %85, !dbg !4461

83:                                               ; preds = %78
  %84 = icmp ugt i64 %32, 9007199254740991, !dbg !4461
  br i1 %84, label %1063, label %85, !dbg !4461

85:                                               ; preds = %83, %80
  %86 = shl nsw i64 %32, 10, !dbg !4461
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 1024), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4459
  br label %1063, !dbg !4462

87:                                               ; preds = %67
  %88 = icmp eq i64 %32, -1, !dbg !4454
  br i1 %88, label %96, label %89, !dbg !4454

89:                                               ; preds = %87
  %90 = sub i64 0, %32, !dbg !4454
  %91 = udiv i64 -9223372036854775808, %90, !dbg !4454
  %92 = icmp ult i64 %91, %55, !dbg !4454
  br i1 %92, label %104, label %96, !dbg !4454

93:                                               ; preds = %67
  %94 = udiv i64 9223372036854775807, %55, !dbg !4454
  %95 = icmp ult i64 %94, %32, !dbg !4454
  br i1 %95, label %99, label %96, !dbg !4454

96:                                               ; preds = %87, %89, %93
  %97 = mul i64 %32, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %98 = icmp slt i64 %97, 0, !dbg !4454
  br i1 %98, label %104, label %99, !dbg !4454

99:                                               ; preds = %93, %96
  %100 = phi i32 [ 0, %96 ], [ 1, %93 ]
  %101 = phi i64 [ %97, %96 ], [ 9223372036854775807, %93 ]
  %102 = udiv i64 9223372036854775807, %55, !dbg !4454
  %103 = icmp ult i64 %102, %101, !dbg !4454
  br i1 %103, label %115, label %110, !dbg !4454

104:                                              ; preds = %89, %96
  %105 = phi i32 [ 0, %96 ], [ 1, %89 ]
  %106 = phi i64 [ %97, %96 ], [ -9223372036854775808, %89 ]
  %107 = sub i64 0, %106, !dbg !4454
  %108 = udiv i64 -9223372036854775808, %107, !dbg !4454
  %109 = icmp slt i64 %108, %55, !dbg !4454
  br i1 %109, label %120, label %110, !dbg !4454

110:                                              ; preds = %99, %104
  %111 = phi i32 [ %105, %104 ], [ %100, %99 ]
  %112 = phi i64 [ %106, %104 ], [ %101, %99 ]
  %113 = mul i64 %112, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %97, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  call void @llvm.dbg.value(metadata i32 %111, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %114 = icmp slt i64 %113, 0, !dbg !4454
  br i1 %114, label %120, label %115, !dbg !4454

115:                                              ; preds = %99, %110
  %116 = phi i32 [ %111, %110 ], [ 1, %99 ]
  %117 = phi i64 [ %113, %110 ], [ 9223372036854775807, %99 ]
  %118 = udiv i64 9223372036854775807, %55, !dbg !4454
  %119 = icmp ult i64 %118, %117, !dbg !4454
  br i1 %119, label %131, label %126, !dbg !4454

120:                                              ; preds = %104, %110
  %121 = phi i32 [ %111, %110 ], [ 1, %104 ]
  %122 = phi i64 [ %113, %110 ], [ -9223372036854775808, %104 ]
  %123 = sub i64 0, %122, !dbg !4454
  %124 = udiv i64 -9223372036854775808, %123, !dbg !4454
  %125 = icmp slt i64 %124, %55, !dbg !4454
  br i1 %125, label %138, label %126, !dbg !4454

126:                                              ; preds = %115, %120
  %127 = phi i32 [ %121, %120 ], [ %116, %115 ]
  %128 = phi i64 [ %122, %120 ], [ %117, %115 ]
  %129 = mul i64 %128, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %113, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  call void @llvm.dbg.value(metadata i32 %127, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %130 = icmp slt i64 %129, 0, !dbg !4454
  br i1 %130, label %138, label %131, !dbg !4454

131:                                              ; preds = %115, %126
  %132 = phi i32 [ %127, %126 ], [ 1, %115 ]
  %133 = phi i64 [ %129, %126 ], [ 9223372036854775807, %115 ]
  %134 = udiv i64 9223372036854775807, %55, !dbg !4454
  %135 = icmp ult i64 %134, %133, !dbg !4454
  br i1 %135, label %136, label %146, !dbg !4454

136:                                              ; preds = %131
  %137 = or i32 %132, 1, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %147, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  br label %151, !dbg !4454

138:                                              ; preds = %120, %126
  %139 = phi i32 [ %127, %126 ], [ 1, %120 ]
  %140 = phi i64 [ %129, %126 ], [ -9223372036854775808, %120 ]
  %141 = sub i64 0, %140, !dbg !4454
  %142 = udiv i64 -9223372036854775808, %141, !dbg !4454
  %143 = icmp slt i64 %142, %55, !dbg !4454
  br i1 %143, label %144, label %146, !dbg !4454

144:                                              ; preds = %138
  %145 = or i32 %139, 1, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %147, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  br label %158, !dbg !4454

146:                                              ; preds = %131, %138
  %147 = phi i32 [ %139, %138 ], [ %132, %131 ]
  %148 = phi i64 [ %140, %138 ], [ %133, %131 ]
  %149 = mul i64 %148, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %129, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  call void @llvm.dbg.value(metadata i32 %147, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %150 = icmp slt i64 %149, 0, !dbg !4454
  br i1 %150, label %158, label %151, !dbg !4454

151:                                              ; preds = %136, %146
  %152 = phi i32 [ %137, %136 ], [ %147, %146 ]
  %153 = phi i64 [ 9223372036854775807, %136 ], [ %149, %146 ]
  %154 = udiv i64 9223372036854775807, %55, !dbg !4454
  %155 = icmp ult i64 %154, %153, !dbg !4454
  br i1 %155, label %156, label %166, !dbg !4454

156:                                              ; preds = %151
  %157 = or i32 %152, 1, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %167, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  br label %171, !dbg !4454

158:                                              ; preds = %146, %144
  %159 = phi i32 [ %145, %144 ], [ %147, %146 ]
  %160 = phi i64 [ -9223372036854775808, %144 ], [ %149, %146 ]
  %161 = sub i64 0, %160, !dbg !4454
  %162 = udiv i64 -9223372036854775808, %161, !dbg !4454
  %163 = icmp slt i64 %162, %55, !dbg !4454
  br i1 %163, label %164, label %166, !dbg !4454

164:                                              ; preds = %158
  %165 = or i32 %159, 1, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %167, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  br label %176, !dbg !4454

166:                                              ; preds = %151, %158
  %167 = phi i32 [ %159, %158 ], [ %152, %151 ]
  %168 = phi i64 [ %160, %158 ], [ %153, %151 ]
  %169 = mul i64 %168, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %149, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  call void @llvm.dbg.value(metadata i32 %167, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4452
  %170 = icmp slt i64 %169, 0, !dbg !4454
  br i1 %170, label %176, label %171, !dbg !4454

171:                                              ; preds = %156, %166
  %172 = phi i32 [ %157, %156 ], [ %167, %166 ]
  %173 = phi i64 [ 9223372036854775807, %156 ], [ %169, %166 ]
  %174 = udiv i64 9223372036854775807, %55, !dbg !4454
  %175 = icmp ult i64 %174, %173, !dbg !4454
  br i1 %175, label %186, label %182, !dbg !4454

176:                                              ; preds = %166, %164
  %177 = phi i32 [ %165, %164 ], [ %167, %166 ]
  %178 = phi i64 [ -9223372036854775808, %164 ], [ %169, %166 ]
  %179 = sub i64 0, %178, !dbg !4454
  %180 = udiv i64 -9223372036854775808, %179, !dbg !4454
  %181 = icmp slt i64 %180, %55, !dbg !4454
  br i1 %181, label %186, label %182, !dbg !4454

182:                                              ; preds = %176, %171
  %183 = phi i32 [ %177, %176 ], [ %172, %171 ]
  %184 = phi i64 [ %178, %176 ], [ %173, %171 ]
  %185 = mul i64 %184, %55, !dbg !4454
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4452
  br label %186, !dbg !4464

186:                                              ; preds = %182, %176, %171
  %187 = phi i32 [ %183, %182 ], [ %172, %171 ], [ %177, %176 ]
  %188 = phi i64 [ %185, %182 ], [ 9223372036854775807, %171 ], [ -9223372036854775808, %176 ], !dbg !4452
  %189 = phi i32 [ 0, %182 ], [ 1, %171 ], [ 1, %176 ], !dbg !4452
  %190 = or i32 %189, %187, !dbg !4463
  call void @llvm.dbg.value(metadata i32 %190, metadata !4408, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4450
  br label %1063, !dbg !4465

191:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4413, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 undef, metadata !4414, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4468
  %192 = icmp slt i64 %32, 0, !dbg !4470
  br i1 %192, label %193, label %199, !dbg !4470

193:                                              ; preds = %191
  %194 = icmp eq i64 %32, -1, !dbg !4470
  br i1 %194, label %202, label %195, !dbg !4470

195:                                              ; preds = %193
  %196 = sub i64 0, %32, !dbg !4470
  %197 = udiv i64 -9223372036854775808, %196, !dbg !4470
  %198 = icmp ult i64 %197, %55, !dbg !4470
  br i1 %198, label %210, label %202, !dbg !4470

199:                                              ; preds = %191
  %200 = udiv i64 9223372036854775807, %55, !dbg !4470
  %201 = icmp ult i64 %200, %32, !dbg !4470
  br i1 %201, label %205, label %202, !dbg !4470

202:                                              ; preds = %193, %195, %199
  %203 = mul i64 %32, %55, !dbg !4470
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4468
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4468
  %204 = icmp slt i64 %203, 0, !dbg !4470
  br i1 %204, label %210, label %205, !dbg !4470

205:                                              ; preds = %199, %202
  %206 = phi i32 [ 0, %202 ], [ 1, %199 ]
  %207 = phi i64 [ %203, %202 ], [ 9223372036854775807, %199 ]
  %208 = udiv i64 9223372036854775807, %55, !dbg !4470
  %209 = icmp ult i64 %208, %207, !dbg !4470
  br i1 %209, label %221, label %216, !dbg !4470

210:                                              ; preds = %195, %202
  %211 = phi i32 [ 0, %202 ], [ 1, %195 ]
  %212 = phi i64 [ %203, %202 ], [ -9223372036854775808, %195 ]
  %213 = sub i64 0, %212, !dbg !4470
  %214 = udiv i64 -9223372036854775808, %213, !dbg !4470
  %215 = icmp slt i64 %214, %55, !dbg !4470
  br i1 %215, label %226, label %216, !dbg !4470

216:                                              ; preds = %205, %210
  %217 = phi i32 [ %211, %210 ], [ %206, %205 ]
  %218 = phi i64 [ %212, %210 ], [ %207, %205 ]
  %219 = mul i64 %218, %55, !dbg !4470
  call void @llvm.dbg.value(metadata !DIArgList(i64 %203, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4468
  call void @llvm.dbg.value(metadata i32 %217, metadata !4408, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4468
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4468
  %220 = icmp slt i64 %219, 0, !dbg !4470
  br i1 %220, label %226, label %221, !dbg !4470

221:                                              ; preds = %205, %216
  %222 = phi i32 [ %217, %216 ], [ 1, %205 ]
  %223 = phi i64 [ %219, %216 ], [ 9223372036854775807, %205 ]
  %224 = udiv i64 9223372036854775807, %55, !dbg !4470
  %225 = icmp ult i64 %224, %223, !dbg !4470
  br i1 %225, label %236, label %232, !dbg !4470

226:                                              ; preds = %210, %216
  %227 = phi i32 [ %217, %216 ], [ 1, %210 ]
  %228 = phi i64 [ %219, %216 ], [ -9223372036854775808, %210 ]
  %229 = sub i64 0, %228, !dbg !4470
  %230 = udiv i64 -9223372036854775808, %229, !dbg !4470
  %231 = icmp slt i64 %230, %55, !dbg !4470
  br i1 %231, label %236, label %232, !dbg !4470

232:                                              ; preds = %226, %221
  %233 = phi i32 [ %227, %226 ], [ %222, %221 ]
  %234 = phi i64 [ %228, %226 ], [ %223, %221 ]
  %235 = mul i64 %234, %55, !dbg !4470
  call void @llvm.dbg.value(metadata !DIArgList(i64 %219, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4468
  br label %236, !dbg !4471

236:                                              ; preds = %232, %226, %221
  %237 = phi i32 [ %233, %232 ], [ %222, %221 ], [ %227, %226 ]
  %238 = phi i64 [ %235, %232 ], [ 9223372036854775807, %221 ], [ -9223372036854775808, %226 ], !dbg !4468
  %239 = phi i32 [ 0, %232 ], [ 1, %221 ], [ 1, %226 ], !dbg !4468
  %240 = or i32 %239, %237, !dbg !4472
  call void @llvm.dbg.value(metadata i32 %240, metadata !4408, metadata !DIExpression()), !dbg !4466
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4466
  br label %1063, !dbg !4465

241:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4413, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 undef, metadata !4414, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4473
  call void @llvm.dbg.value(metadata i32 undef, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4473
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4475
  %242 = icmp slt i64 %32, 0, !dbg !4477
  br i1 %242, label %243, label %249, !dbg !4477

243:                                              ; preds = %241
  %244 = icmp eq i64 %32, -1, !dbg !4477
  br i1 %244, label %252, label %245, !dbg !4477

245:                                              ; preds = %243
  %246 = sub i64 0, %32, !dbg !4477
  %247 = udiv i64 -9223372036854775808, %246, !dbg !4477
  %248 = icmp ult i64 %247, %55, !dbg !4477
  br i1 %248, label %1063, label %252, !dbg !4477

249:                                              ; preds = %241
  %250 = udiv i64 9223372036854775807, %55, !dbg !4477
  %251 = icmp ult i64 %250, %32, !dbg !4477
  br i1 %251, label %1063, label %252, !dbg !4477

252:                                              ; preds = %249, %245, %243
  %253 = mul i64 %32, %55, !dbg !4477
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4475
  br label %1063, !dbg !4478

254:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4413, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 undef, metadata !4414, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4481
  %255 = icmp slt i64 %32, 0, !dbg !4483
  br i1 %255, label %256, label %262, !dbg !4483

256:                                              ; preds = %254
  %257 = icmp eq i64 %32, -1, !dbg !4483
  br i1 %257, label %265, label %258, !dbg !4483

258:                                              ; preds = %256
  %259 = sub i64 0, %32, !dbg !4483
  %260 = udiv i64 -9223372036854775808, %259, !dbg !4483
  %261 = icmp ult i64 %260, %55, !dbg !4483
  br i1 %261, label %273, label %265, !dbg !4483

262:                                              ; preds = %254
  %263 = udiv i64 9223372036854775807, %55, !dbg !4483
  %264 = icmp ult i64 %263, %32, !dbg !4483
  br i1 %264, label %268, label %265, !dbg !4483

265:                                              ; preds = %256, %258, %262
  %266 = mul i64 %32, %55, !dbg !4483
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4481
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4481
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4481
  %267 = icmp slt i64 %266, 0, !dbg !4483
  br i1 %267, label %273, label %268, !dbg !4483

268:                                              ; preds = %262, %265
  %269 = phi i32 [ 0, %265 ], [ 1, %262 ]
  %270 = phi i64 [ %266, %265 ], [ 9223372036854775807, %262 ]
  %271 = udiv i64 9223372036854775807, %55, !dbg !4483
  %272 = icmp ult i64 %271, %270, !dbg !4483
  br i1 %272, label %283, label %279, !dbg !4483

273:                                              ; preds = %258, %265
  %274 = phi i32 [ 0, %265 ], [ 1, %258 ]
  %275 = phi i64 [ %266, %265 ], [ -9223372036854775808, %258 ]
  %276 = sub i64 0, %275, !dbg !4483
  %277 = udiv i64 -9223372036854775808, %276, !dbg !4483
  %278 = icmp slt i64 %277, %55, !dbg !4483
  br i1 %278, label %283, label %279, !dbg !4483

279:                                              ; preds = %273, %268
  %280 = phi i32 [ %274, %273 ], [ %269, %268 ]
  %281 = phi i64 [ %275, %273 ], [ %270, %268 ]
  %282 = mul i64 %281, %55, !dbg !4483
  call void @llvm.dbg.value(metadata !DIArgList(i64 %266, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4481
  br label %283, !dbg !4484

283:                                              ; preds = %279, %273, %268
  %284 = phi i32 [ %280, %279 ], [ %269, %268 ], [ %274, %273 ]
  %285 = phi i64 [ %282, %279 ], [ 9223372036854775807, %268 ], [ -9223372036854775808, %273 ], !dbg !4481
  %286 = phi i32 [ 0, %279 ], [ 1, %268 ], [ 1, %273 ], !dbg !4481
  %287 = or i32 %286, %284, !dbg !4485
  call void @llvm.dbg.value(metadata i32 %287, metadata !4408, metadata !DIExpression()), !dbg !4479
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4479
  br label %1063, !dbg !4465

288:                                              ; preds = %65
  %289 = icmp eq i64 %32, -1, !dbg !4449
  br i1 %289, label %297, label %290, !dbg !4449

290:                                              ; preds = %288
  %291 = sub i64 0, %32, !dbg !4449
  %292 = udiv i64 -9223372036854775808, %291, !dbg !4449
  %293 = icmp ult i64 %292, %55, !dbg !4449
  br i1 %293, label %305, label %297, !dbg !4449

294:                                              ; preds = %65
  %295 = udiv i64 9223372036854775807, %55, !dbg !4449
  %296 = icmp ult i64 %295, %32, !dbg !4449
  br i1 %296, label %300, label %297, !dbg !4449

297:                                              ; preds = %288, %290, %294
  %298 = mul i64 %32, %55, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  %299 = icmp slt i64 %298, 0, !dbg !4449
  br i1 %299, label %305, label %300, !dbg !4449

300:                                              ; preds = %294, %297
  %301 = phi i32 [ 0, %297 ], [ 1, %294 ]
  %302 = phi i64 [ %298, %297 ], [ 9223372036854775807, %294 ]
  %303 = udiv i64 9223372036854775807, %55, !dbg !4449
  %304 = icmp ult i64 %303, %302, !dbg !4449
  br i1 %304, label %316, label %311, !dbg !4449

305:                                              ; preds = %290, %297
  %306 = phi i32 [ 0, %297 ], [ 1, %290 ]
  %307 = phi i64 [ %298, %297 ], [ -9223372036854775808, %290 ]
  %308 = sub i64 0, %307, !dbg !4449
  %309 = udiv i64 -9223372036854775808, %308, !dbg !4449
  %310 = icmp slt i64 %309, %55, !dbg !4449
  br i1 %310, label %321, label %311, !dbg !4449

311:                                              ; preds = %300, %305
  %312 = phi i32 [ %306, %305 ], [ %301, %300 ]
  %313 = phi i64 [ %307, %305 ], [ %302, %300 ]
  %314 = mul i64 %313, %55, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %298, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  call void @llvm.dbg.value(metadata i32 %312, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  %315 = icmp slt i64 %314, 0, !dbg !4449
  br i1 %315, label %321, label %316, !dbg !4449

316:                                              ; preds = %300, %311
  %317 = phi i32 [ %312, %311 ], [ 1, %300 ]
  %318 = phi i64 [ %314, %311 ], [ 9223372036854775807, %300 ]
  %319 = udiv i64 9223372036854775807, %55, !dbg !4449
  %320 = icmp ult i64 %319, %318, !dbg !4449
  br i1 %320, label %332, label %327, !dbg !4449

321:                                              ; preds = %305, %311
  %322 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %323 = phi i64 [ %314, %311 ], [ -9223372036854775808, %305 ]
  %324 = sub i64 0, %323, !dbg !4449
  %325 = udiv i64 -9223372036854775808, %324, !dbg !4449
  %326 = icmp slt i64 %325, %55, !dbg !4449
  br i1 %326, label %339, label %327, !dbg !4449

327:                                              ; preds = %316, %321
  %328 = phi i32 [ %322, %321 ], [ %317, %316 ]
  %329 = phi i64 [ %323, %321 ], [ %318, %316 ]
  %330 = mul i64 %329, %55, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %314, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  call void @llvm.dbg.value(metadata i32 %328, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  %331 = icmp slt i64 %330, 0, !dbg !4449
  br i1 %331, label %339, label %332, !dbg !4449

332:                                              ; preds = %316, %327
  %333 = phi i32 [ %328, %327 ], [ 1, %316 ]
  %334 = phi i64 [ %330, %327 ], [ 9223372036854775807, %316 ]
  %335 = udiv i64 9223372036854775807, %55, !dbg !4449
  %336 = icmp ult i64 %335, %334, !dbg !4449
  br i1 %336, label %337, label %347, !dbg !4449

337:                                              ; preds = %332
  %338 = or i32 %333, 1, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %348, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  br label %352, !dbg !4449

339:                                              ; preds = %321, %327
  %340 = phi i32 [ %328, %327 ], [ 1, %321 ]
  %341 = phi i64 [ %330, %327 ], [ -9223372036854775808, %321 ]
  %342 = sub i64 0, %341, !dbg !4449
  %343 = udiv i64 -9223372036854775808, %342, !dbg !4449
  %344 = icmp slt i64 %343, %55, !dbg !4449
  br i1 %344, label %345, label %347, !dbg !4449

345:                                              ; preds = %339
  %346 = or i32 %340, 1, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %348, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  br label %357, !dbg !4449

347:                                              ; preds = %332, %339
  %348 = phi i32 [ %340, %339 ], [ %333, %332 ]
  %349 = phi i64 [ %341, %339 ], [ %334, %332 ]
  %350 = mul i64 %349, %55, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %330, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  call void @llvm.dbg.value(metadata i32 %348, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4447
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4447
  %351 = icmp slt i64 %350, 0, !dbg !4449
  br i1 %351, label %357, label %352, !dbg !4449

352:                                              ; preds = %337, %347
  %353 = phi i32 [ %338, %337 ], [ %348, %347 ]
  %354 = phi i64 [ 9223372036854775807, %337 ], [ %350, %347 ]
  %355 = udiv i64 9223372036854775807, %55, !dbg !4449
  %356 = icmp ult i64 %355, %354, !dbg !4449
  br i1 %356, label %367, label %363, !dbg !4449

357:                                              ; preds = %347, %345
  %358 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %359 = phi i64 [ -9223372036854775808, %345 ], [ %350, %347 ]
  %360 = sub i64 0, %359, !dbg !4449
  %361 = udiv i64 -9223372036854775808, %360, !dbg !4449
  %362 = icmp slt i64 %361, %55, !dbg !4449
  br i1 %362, label %367, label %363, !dbg !4449

363:                                              ; preds = %357, %352
  %364 = phi i32 [ %358, %357 ], [ %353, %352 ]
  %365 = phi i64 [ %359, %357 ], [ %354, %352 ]
  %366 = mul i64 %365, %55, !dbg !4449
  call void @llvm.dbg.value(metadata !DIArgList(i64 %350, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4447
  br label %367, !dbg !4487

367:                                              ; preds = %363, %357, %352
  %368 = phi i32 [ %364, %363 ], [ %353, %352 ], [ %358, %357 ]
  %369 = phi i64 [ %366, %363 ], [ 9223372036854775807, %352 ], [ -9223372036854775808, %357 ], !dbg !4447
  %370 = phi i32 [ 0, %363 ], [ 1, %352 ], [ 1, %357 ], !dbg !4447
  %371 = or i32 %370, %368, !dbg !4486
  call void @llvm.dbg.value(metadata i32 %371, metadata !4408, metadata !DIExpression()), !dbg !4445
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4445
  br label %1063, !dbg !4465

372:                                              ; preds = %63
  %373 = icmp eq i64 %32, -1, !dbg !4444
  br i1 %373, label %381, label %374, !dbg !4444

374:                                              ; preds = %372
  %375 = sub i64 0, %32, !dbg !4444
  %376 = udiv i64 -9223372036854775808, %375, !dbg !4444
  %377 = icmp ult i64 %376, %55, !dbg !4444
  br i1 %377, label %389, label %381, !dbg !4444

378:                                              ; preds = %63
  %379 = udiv i64 9223372036854775807, %55, !dbg !4444
  %380 = icmp ult i64 %379, %32, !dbg !4444
  br i1 %380, label %384, label %381, !dbg !4444

381:                                              ; preds = %372, %374, %378
  %382 = mul i64 %32, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 8, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %383 = icmp slt i64 %382, 0, !dbg !4444
  br i1 %383, label %389, label %384, !dbg !4444

384:                                              ; preds = %378, %381
  %385 = phi i32 [ 0, %381 ], [ 1, %378 ]
  %386 = phi i64 [ %382, %381 ], [ 9223372036854775807, %378 ]
  %387 = udiv i64 9223372036854775807, %55, !dbg !4444
  %388 = icmp ult i64 %387, %386, !dbg !4444
  br i1 %388, label %400, label %395, !dbg !4444

389:                                              ; preds = %374, %381
  %390 = phi i32 [ 0, %381 ], [ 1, %374 ]
  %391 = phi i64 [ %382, %381 ], [ -9223372036854775808, %374 ]
  %392 = sub i64 0, %391, !dbg !4444
  %393 = udiv i64 -9223372036854775808, %392, !dbg !4444
  %394 = icmp slt i64 %393, %55, !dbg !4444
  br i1 %394, label %405, label %395, !dbg !4444

395:                                              ; preds = %384, %389
  %396 = phi i32 [ %390, %389 ], [ %385, %384 ]
  %397 = phi i64 [ %391, %389 ], [ %386, %384 ]
  %398 = mul i64 %397, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %382, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %396, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 7, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %399 = icmp slt i64 %398, 0, !dbg !4444
  br i1 %399, label %405, label %400, !dbg !4444

400:                                              ; preds = %384, %395
  %401 = phi i32 [ %396, %395 ], [ 1, %384 ]
  %402 = phi i64 [ %398, %395 ], [ 9223372036854775807, %384 ]
  %403 = udiv i64 9223372036854775807, %55, !dbg !4444
  %404 = icmp ult i64 %403, %402, !dbg !4444
  br i1 %404, label %416, label %411, !dbg !4444

405:                                              ; preds = %389, %395
  %406 = phi i32 [ %396, %395 ], [ 1, %389 ]
  %407 = phi i64 [ %398, %395 ], [ -9223372036854775808, %389 ]
  %408 = sub i64 0, %407, !dbg !4444
  %409 = udiv i64 -9223372036854775808, %408, !dbg !4444
  %410 = icmp slt i64 %409, %55, !dbg !4444
  br i1 %410, label %423, label %411, !dbg !4444

411:                                              ; preds = %400, %405
  %412 = phi i32 [ %406, %405 ], [ %401, %400 ]
  %413 = phi i64 [ %407, %405 ], [ %402, %400 ]
  %414 = mul i64 %413, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %398, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %412, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 6, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %415 = icmp slt i64 %414, 0, !dbg !4444
  br i1 %415, label %423, label %416, !dbg !4444

416:                                              ; preds = %400, %411
  %417 = phi i32 [ %412, %411 ], [ 1, %400 ]
  %418 = phi i64 [ %414, %411 ], [ 9223372036854775807, %400 ]
  %419 = udiv i64 9223372036854775807, %55, !dbg !4444
  %420 = icmp ult i64 %419, %418, !dbg !4444
  br i1 %420, label %421, label %431, !dbg !4444

421:                                              ; preds = %416
  %422 = or i32 %417, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %432, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %436, !dbg !4444

423:                                              ; preds = %405, %411
  %424 = phi i32 [ %412, %411 ], [ 1, %405 ]
  %425 = phi i64 [ %414, %411 ], [ -9223372036854775808, %405 ]
  %426 = sub i64 0, %425, !dbg !4444
  %427 = udiv i64 -9223372036854775808, %426, !dbg !4444
  %428 = icmp slt i64 %427, %55, !dbg !4444
  br i1 %428, label %429, label %431, !dbg !4444

429:                                              ; preds = %423
  %430 = or i32 %424, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %432, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %443, !dbg !4444

431:                                              ; preds = %416, %423
  %432 = phi i32 [ %424, %423 ], [ %417, %416 ]
  %433 = phi i64 [ %425, %423 ], [ %418, %416 ]
  %434 = mul i64 %433, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %414, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %432, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %435 = icmp slt i64 %434, 0, !dbg !4444
  br i1 %435, label %443, label %436, !dbg !4444

436:                                              ; preds = %421, %431
  %437 = phi i32 [ %422, %421 ], [ %432, %431 ]
  %438 = phi i64 [ 9223372036854775807, %421 ], [ %434, %431 ]
  %439 = udiv i64 9223372036854775807, %55, !dbg !4444
  %440 = icmp ult i64 %439, %438, !dbg !4444
  br i1 %440, label %441, label %451, !dbg !4444

441:                                              ; preds = %436
  %442 = or i32 %437, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %452, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %456, !dbg !4444

443:                                              ; preds = %431, %429
  %444 = phi i32 [ %430, %429 ], [ %432, %431 ]
  %445 = phi i64 [ -9223372036854775808, %429 ], [ %434, %431 ]
  %446 = sub i64 0, %445, !dbg !4444
  %447 = udiv i64 -9223372036854775808, %446, !dbg !4444
  %448 = icmp slt i64 %447, %55, !dbg !4444
  br i1 %448, label %449, label %451, !dbg !4444

449:                                              ; preds = %443
  %450 = or i32 %444, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %452, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %463, !dbg !4444

451:                                              ; preds = %436, %443
  %452 = phi i32 [ %444, %443 ], [ %437, %436 ]
  %453 = phi i64 [ %445, %443 ], [ %438, %436 ]
  %454 = mul i64 %453, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %434, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %452, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %455 = icmp slt i64 %454, 0, !dbg !4444
  br i1 %455, label %463, label %456, !dbg !4444

456:                                              ; preds = %441, %451
  %457 = phi i32 [ %442, %441 ], [ %452, %451 ]
  %458 = phi i64 [ 9223372036854775807, %441 ], [ %454, %451 ]
  %459 = udiv i64 9223372036854775807, %55, !dbg !4444
  %460 = icmp ult i64 %459, %458, !dbg !4444
  br i1 %460, label %461, label %471, !dbg !4444

461:                                              ; preds = %456
  %462 = or i32 %457, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %472, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %476, !dbg !4444

463:                                              ; preds = %451, %449
  %464 = phi i32 [ %450, %449 ], [ %452, %451 ]
  %465 = phi i64 [ -9223372036854775808, %449 ], [ %454, %451 ]
  %466 = sub i64 0, %465, !dbg !4444
  %467 = udiv i64 -9223372036854775808, %466, !dbg !4444
  %468 = icmp slt i64 %467, %55, !dbg !4444
  br i1 %468, label %469, label %471, !dbg !4444

469:                                              ; preds = %463
  %470 = or i32 %464, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %472, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %483, !dbg !4444

471:                                              ; preds = %456, %463
  %472 = phi i32 [ %464, %463 ], [ %457, %456 ]
  %473 = phi i64 [ %465, %463 ], [ %458, %456 ]
  %474 = mul i64 %473, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %454, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %472, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %475 = icmp slt i64 %474, 0, !dbg !4444
  br i1 %475, label %483, label %476, !dbg !4444

476:                                              ; preds = %461, %471
  %477 = phi i32 [ %462, %461 ], [ %472, %471 ]
  %478 = phi i64 [ 9223372036854775807, %461 ], [ %474, %471 ]
  %479 = udiv i64 9223372036854775807, %55, !dbg !4444
  %480 = icmp ult i64 %479, %478, !dbg !4444
  br i1 %480, label %481, label %491, !dbg !4444

481:                                              ; preds = %476
  %482 = or i32 %477, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %492, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %496, !dbg !4444

483:                                              ; preds = %471, %469
  %484 = phi i32 [ %470, %469 ], [ %472, %471 ]
  %485 = phi i64 [ -9223372036854775808, %469 ], [ %474, %471 ]
  %486 = sub i64 0, %485, !dbg !4444
  %487 = udiv i64 -9223372036854775808, %486, !dbg !4444
  %488 = icmp slt i64 %487, %55, !dbg !4444
  br i1 %488, label %489, label %491, !dbg !4444

489:                                              ; preds = %483
  %490 = or i32 %484, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %492, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %503, !dbg !4444

491:                                              ; preds = %476, %483
  %492 = phi i32 [ %484, %483 ], [ %477, %476 ]
  %493 = phi i64 [ %485, %483 ], [ %478, %476 ]
  %494 = mul i64 %493, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %474, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %492, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %495 = icmp slt i64 %494, 0, !dbg !4444
  br i1 %495, label %503, label %496, !dbg !4444

496:                                              ; preds = %481, %491
  %497 = phi i32 [ %482, %481 ], [ %492, %491 ]
  %498 = phi i64 [ 9223372036854775807, %481 ], [ %494, %491 ]
  %499 = udiv i64 9223372036854775807, %55, !dbg !4444
  %500 = icmp ult i64 %499, %498, !dbg !4444
  br i1 %500, label %501, label %511, !dbg !4444

501:                                              ; preds = %496
  %502 = or i32 %497, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %512, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %516, !dbg !4444

503:                                              ; preds = %491, %489
  %504 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %505 = phi i64 [ -9223372036854775808, %489 ], [ %494, %491 ]
  %506 = sub i64 0, %505, !dbg !4444
  %507 = udiv i64 -9223372036854775808, %506, !dbg !4444
  %508 = icmp slt i64 %507, %55, !dbg !4444
  br i1 %508, label %509, label %511, !dbg !4444

509:                                              ; preds = %503
  %510 = or i32 %504, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %512, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %523, !dbg !4444

511:                                              ; preds = %496, %503
  %512 = phi i32 [ %504, %503 ], [ %497, %496 ]
  %513 = phi i64 [ %505, %503 ], [ %498, %496 ]
  %514 = mul i64 %513, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %494, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %512, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %515 = icmp slt i64 %514, 0, !dbg !4444
  br i1 %515, label %523, label %516, !dbg !4444

516:                                              ; preds = %501, %511
  %517 = phi i32 [ %502, %501 ], [ %512, %511 ]
  %518 = phi i64 [ 9223372036854775807, %501 ], [ %514, %511 ]
  %519 = udiv i64 9223372036854775807, %55, !dbg !4444
  %520 = icmp ult i64 %519, %518, !dbg !4444
  br i1 %520, label %521, label %531, !dbg !4444

521:                                              ; preds = %516
  %522 = or i32 %517, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %532, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %536, !dbg !4444

523:                                              ; preds = %511, %509
  %524 = phi i32 [ %510, %509 ], [ %512, %511 ]
  %525 = phi i64 [ -9223372036854775808, %509 ], [ %514, %511 ]
  %526 = sub i64 0, %525, !dbg !4444
  %527 = udiv i64 -9223372036854775808, %526, !dbg !4444
  %528 = icmp slt i64 %527, %55, !dbg !4444
  br i1 %528, label %529, label %531, !dbg !4444

529:                                              ; preds = %523
  %530 = or i32 %524, 1, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %532, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  br label %541, !dbg !4444

531:                                              ; preds = %516, %523
  %532 = phi i32 [ %524, %523 ], [ %517, %516 ]
  %533 = phi i64 [ %525, %523 ], [ %518, %516 ]
  %534 = mul i64 %533, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %514, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  call void @llvm.dbg.value(metadata i32 %532, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4442
  %535 = icmp slt i64 %534, 0, !dbg !4444
  br i1 %535, label %541, label %536, !dbg !4444

536:                                              ; preds = %521, %531
  %537 = phi i32 [ %522, %521 ], [ %532, %531 ]
  %538 = phi i64 [ 9223372036854775807, %521 ], [ %534, %531 ]
  %539 = udiv i64 9223372036854775807, %55, !dbg !4444
  %540 = icmp ult i64 %539, %538, !dbg !4444
  br i1 %540, label %551, label %547, !dbg !4444

541:                                              ; preds = %531, %529
  %542 = phi i32 [ %530, %529 ], [ %532, %531 ]
  %543 = phi i64 [ -9223372036854775808, %529 ], [ %534, %531 ]
  %544 = sub i64 0, %543, !dbg !4444
  %545 = udiv i64 -9223372036854775808, %544, !dbg !4444
  %546 = icmp slt i64 %545, %55, !dbg !4444
  br i1 %546, label %551, label %547, !dbg !4444

547:                                              ; preds = %541, %536
  %548 = phi i32 [ %542, %541 ], [ %537, %536 ]
  %549 = phi i64 [ %543, %541 ], [ %538, %536 ]
  %550 = mul i64 %549, %55, !dbg !4444
  call void @llvm.dbg.value(metadata !DIArgList(i64 %534, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4442
  br label %551, !dbg !4489

551:                                              ; preds = %547, %541, %536
  %552 = phi i32 [ %548, %547 ], [ %537, %536 ], [ %542, %541 ]
  %553 = phi i64 [ %550, %547 ], [ 9223372036854775807, %536 ], [ -9223372036854775808, %541 ], !dbg !4442
  %554 = phi i32 [ 0, %547 ], [ 1, %536 ], [ 1, %541 ], !dbg !4442
  %555 = or i32 %554, %552, !dbg !4488
  call void @llvm.dbg.value(metadata i32 %555, metadata !4408, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4440
  br label %1063, !dbg !4465

556:                                              ; preds = %61
  %557 = icmp eq i64 %32, -1, !dbg !4439
  br i1 %557, label %565, label %558, !dbg !4439

558:                                              ; preds = %556
  %559 = sub i64 0, %32, !dbg !4439
  %560 = udiv i64 -9223372036854775808, %559, !dbg !4439
  %561 = icmp ult i64 %560, %55, !dbg !4439
  br i1 %561, label %573, label %565, !dbg !4439

562:                                              ; preds = %61
  %563 = udiv i64 9223372036854775807, %55, !dbg !4439
  %564 = icmp ult i64 %563, %32, !dbg !4439
  br i1 %564, label %568, label %565, !dbg !4439

565:                                              ; preds = %556, %558, %562
  %566 = mul i64 %32, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 7, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %567 = icmp slt i64 %566, 0, !dbg !4439
  br i1 %567, label %573, label %568, !dbg !4439

568:                                              ; preds = %562, %565
  %569 = phi i32 [ 0, %565 ], [ 1, %562 ]
  %570 = phi i64 [ %566, %565 ], [ 9223372036854775807, %562 ]
  %571 = udiv i64 9223372036854775807, %55, !dbg !4439
  %572 = icmp ult i64 %571, %570, !dbg !4439
  br i1 %572, label %584, label %579, !dbg !4439

573:                                              ; preds = %558, %565
  %574 = phi i32 [ 0, %565 ], [ 1, %558 ]
  %575 = phi i64 [ %566, %565 ], [ -9223372036854775808, %558 ]
  %576 = sub i64 0, %575, !dbg !4439
  %577 = udiv i64 -9223372036854775808, %576, !dbg !4439
  %578 = icmp slt i64 %577, %55, !dbg !4439
  br i1 %578, label %589, label %579, !dbg !4439

579:                                              ; preds = %568, %573
  %580 = phi i32 [ %574, %573 ], [ %569, %568 ]
  %581 = phi i64 [ %575, %573 ], [ %570, %568 ]
  %582 = mul i64 %581, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %566, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %580, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 6, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %583 = icmp slt i64 %582, 0, !dbg !4439
  br i1 %583, label %589, label %584, !dbg !4439

584:                                              ; preds = %568, %579
  %585 = phi i32 [ %580, %579 ], [ 1, %568 ]
  %586 = phi i64 [ %582, %579 ], [ 9223372036854775807, %568 ]
  %587 = udiv i64 9223372036854775807, %55, !dbg !4439
  %588 = icmp ult i64 %587, %586, !dbg !4439
  br i1 %588, label %600, label %595, !dbg !4439

589:                                              ; preds = %573, %579
  %590 = phi i32 [ %580, %579 ], [ 1, %573 ]
  %591 = phi i64 [ %582, %579 ], [ -9223372036854775808, %573 ]
  %592 = sub i64 0, %591, !dbg !4439
  %593 = udiv i64 -9223372036854775808, %592, !dbg !4439
  %594 = icmp slt i64 %593, %55, !dbg !4439
  br i1 %594, label %607, label %595, !dbg !4439

595:                                              ; preds = %584, %589
  %596 = phi i32 [ %590, %589 ], [ %585, %584 ]
  %597 = phi i64 [ %591, %589 ], [ %586, %584 ]
  %598 = mul i64 %597, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %582, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %596, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %599 = icmp slt i64 %598, 0, !dbg !4439
  br i1 %599, label %607, label %600, !dbg !4439

600:                                              ; preds = %584, %595
  %601 = phi i32 [ %596, %595 ], [ 1, %584 ]
  %602 = phi i64 [ %598, %595 ], [ 9223372036854775807, %584 ]
  %603 = udiv i64 9223372036854775807, %55, !dbg !4439
  %604 = icmp ult i64 %603, %602, !dbg !4439
  br i1 %604, label %605, label %615, !dbg !4439

605:                                              ; preds = %600
  %606 = or i32 %601, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %616, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %620, !dbg !4439

607:                                              ; preds = %589, %595
  %608 = phi i32 [ %596, %595 ], [ 1, %589 ]
  %609 = phi i64 [ %598, %595 ], [ -9223372036854775808, %589 ]
  %610 = sub i64 0, %609, !dbg !4439
  %611 = udiv i64 -9223372036854775808, %610, !dbg !4439
  %612 = icmp slt i64 %611, %55, !dbg !4439
  br i1 %612, label %613, label %615, !dbg !4439

613:                                              ; preds = %607
  %614 = or i32 %608, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %616, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %627, !dbg !4439

615:                                              ; preds = %600, %607
  %616 = phi i32 [ %608, %607 ], [ %601, %600 ]
  %617 = phi i64 [ %609, %607 ], [ %602, %600 ]
  %618 = mul i64 %617, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %598, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %616, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %619 = icmp slt i64 %618, 0, !dbg !4439
  br i1 %619, label %627, label %620, !dbg !4439

620:                                              ; preds = %605, %615
  %621 = phi i32 [ %606, %605 ], [ %616, %615 ]
  %622 = phi i64 [ 9223372036854775807, %605 ], [ %618, %615 ]
  %623 = udiv i64 9223372036854775807, %55, !dbg !4439
  %624 = icmp ult i64 %623, %622, !dbg !4439
  br i1 %624, label %625, label %635, !dbg !4439

625:                                              ; preds = %620
  %626 = or i32 %621, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %636, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %640, !dbg !4439

627:                                              ; preds = %615, %613
  %628 = phi i32 [ %614, %613 ], [ %616, %615 ]
  %629 = phi i64 [ -9223372036854775808, %613 ], [ %618, %615 ]
  %630 = sub i64 0, %629, !dbg !4439
  %631 = udiv i64 -9223372036854775808, %630, !dbg !4439
  %632 = icmp slt i64 %631, %55, !dbg !4439
  br i1 %632, label %633, label %635, !dbg !4439

633:                                              ; preds = %627
  %634 = or i32 %628, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %636, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %647, !dbg !4439

635:                                              ; preds = %620, %627
  %636 = phi i32 [ %628, %627 ], [ %621, %620 ]
  %637 = phi i64 [ %629, %627 ], [ %622, %620 ]
  %638 = mul i64 %637, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %618, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %636, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %639 = icmp slt i64 %638, 0, !dbg !4439
  br i1 %639, label %647, label %640, !dbg !4439

640:                                              ; preds = %625, %635
  %641 = phi i32 [ %626, %625 ], [ %636, %635 ]
  %642 = phi i64 [ 9223372036854775807, %625 ], [ %638, %635 ]
  %643 = udiv i64 9223372036854775807, %55, !dbg !4439
  %644 = icmp ult i64 %643, %642, !dbg !4439
  br i1 %644, label %645, label %655, !dbg !4439

645:                                              ; preds = %640
  %646 = or i32 %641, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %656, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %660, !dbg !4439

647:                                              ; preds = %635, %633
  %648 = phi i32 [ %634, %633 ], [ %636, %635 ]
  %649 = phi i64 [ -9223372036854775808, %633 ], [ %638, %635 ]
  %650 = sub i64 0, %649, !dbg !4439
  %651 = udiv i64 -9223372036854775808, %650, !dbg !4439
  %652 = icmp slt i64 %651, %55, !dbg !4439
  br i1 %652, label %653, label %655, !dbg !4439

653:                                              ; preds = %647
  %654 = or i32 %648, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %656, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %667, !dbg !4439

655:                                              ; preds = %640, %647
  %656 = phi i32 [ %648, %647 ], [ %641, %640 ]
  %657 = phi i64 [ %649, %647 ], [ %642, %640 ]
  %658 = mul i64 %657, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %638, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %656, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %659 = icmp slt i64 %658, 0, !dbg !4439
  br i1 %659, label %667, label %660, !dbg !4439

660:                                              ; preds = %645, %655
  %661 = phi i32 [ %646, %645 ], [ %656, %655 ]
  %662 = phi i64 [ 9223372036854775807, %645 ], [ %658, %655 ]
  %663 = udiv i64 9223372036854775807, %55, !dbg !4439
  %664 = icmp ult i64 %663, %662, !dbg !4439
  br i1 %664, label %665, label %675, !dbg !4439

665:                                              ; preds = %660
  %666 = or i32 %661, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %676, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %680, !dbg !4439

667:                                              ; preds = %655, %653
  %668 = phi i32 [ %654, %653 ], [ %656, %655 ]
  %669 = phi i64 [ -9223372036854775808, %653 ], [ %658, %655 ]
  %670 = sub i64 0, %669, !dbg !4439
  %671 = udiv i64 -9223372036854775808, %670, !dbg !4439
  %672 = icmp slt i64 %671, %55, !dbg !4439
  br i1 %672, label %673, label %675, !dbg !4439

673:                                              ; preds = %667
  %674 = or i32 %668, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %676, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %687, !dbg !4439

675:                                              ; preds = %660, %667
  %676 = phi i32 [ %668, %667 ], [ %661, %660 ]
  %677 = phi i64 [ %669, %667 ], [ %662, %660 ]
  %678 = mul i64 %677, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %658, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %676, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %679 = icmp slt i64 %678, 0, !dbg !4439
  br i1 %679, label %687, label %680, !dbg !4439

680:                                              ; preds = %665, %675
  %681 = phi i32 [ %666, %665 ], [ %676, %675 ]
  %682 = phi i64 [ 9223372036854775807, %665 ], [ %678, %675 ]
  %683 = udiv i64 9223372036854775807, %55, !dbg !4439
  %684 = icmp ult i64 %683, %682, !dbg !4439
  br i1 %684, label %685, label %695, !dbg !4439

685:                                              ; preds = %680
  %686 = or i32 %681, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %696, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %700, !dbg !4439

687:                                              ; preds = %675, %673
  %688 = phi i32 [ %674, %673 ], [ %676, %675 ]
  %689 = phi i64 [ -9223372036854775808, %673 ], [ %678, %675 ]
  %690 = sub i64 0, %689, !dbg !4439
  %691 = udiv i64 -9223372036854775808, %690, !dbg !4439
  %692 = icmp slt i64 %691, %55, !dbg !4439
  br i1 %692, label %693, label %695, !dbg !4439

693:                                              ; preds = %687
  %694 = or i32 %688, 1, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %696, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  br label %705, !dbg !4439

695:                                              ; preds = %680, %687
  %696 = phi i32 [ %688, %687 ], [ %681, %680 ]
  %697 = phi i64 [ %689, %687 ], [ %682, %680 ]
  %698 = mul i64 %697, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %678, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  call void @llvm.dbg.value(metadata i32 %696, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4437
  %699 = icmp slt i64 %698, 0, !dbg !4439
  br i1 %699, label %705, label %700, !dbg !4439

700:                                              ; preds = %685, %695
  %701 = phi i32 [ %686, %685 ], [ %696, %695 ]
  %702 = phi i64 [ 9223372036854775807, %685 ], [ %698, %695 ]
  %703 = udiv i64 9223372036854775807, %55, !dbg !4439
  %704 = icmp ult i64 %703, %702, !dbg !4439
  br i1 %704, label %715, label %711, !dbg !4439

705:                                              ; preds = %695, %693
  %706 = phi i32 [ %694, %693 ], [ %696, %695 ]
  %707 = phi i64 [ -9223372036854775808, %693 ], [ %698, %695 ]
  %708 = sub i64 0, %707, !dbg !4439
  %709 = udiv i64 -9223372036854775808, %708, !dbg !4439
  %710 = icmp slt i64 %709, %55, !dbg !4439
  br i1 %710, label %715, label %711, !dbg !4439

711:                                              ; preds = %705, %700
  %712 = phi i32 [ %706, %705 ], [ %701, %700 ]
  %713 = phi i64 [ %707, %705 ], [ %702, %700 ]
  %714 = mul i64 %713, %55, !dbg !4439
  call void @llvm.dbg.value(metadata !DIArgList(i64 %698, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4437
  br label %715, !dbg !4491

715:                                              ; preds = %711, %705, %700
  %716 = phi i32 [ %712, %711 ], [ %701, %700 ], [ %706, %705 ]
  %717 = phi i64 [ %714, %711 ], [ 9223372036854775807, %700 ], [ -9223372036854775808, %705 ], !dbg !4437
  %718 = phi i32 [ 0, %711 ], [ 1, %700 ], [ 1, %705 ], !dbg !4437
  %719 = or i32 %718, %716, !dbg !4490
  call void @llvm.dbg.value(metadata i32 %719, metadata !4408, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4435
  br label %1063, !dbg !4465

720:                                              ; preds = %54, %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4413, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 undef, metadata !4414, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4494
  %721 = icmp slt i64 %32, 0, !dbg !4496
  br i1 %721, label %722, label %728, !dbg !4496

722:                                              ; preds = %720
  %723 = icmp eq i64 %32, -1, !dbg !4496
  br i1 %723, label %731, label %724, !dbg !4496

724:                                              ; preds = %722
  %725 = sub i64 0, %32, !dbg !4496
  %726 = udiv i64 -9223372036854775808, %725, !dbg !4496
  %727 = icmp ult i64 %726, %55, !dbg !4496
  br i1 %727, label %739, label %731, !dbg !4496

728:                                              ; preds = %720
  %729 = udiv i64 9223372036854775807, %55, !dbg !4496
  %730 = icmp ult i64 %729, %32, !dbg !4496
  br i1 %730, label %734, label %731, !dbg !4496

731:                                              ; preds = %722, %724, %728
  %732 = mul i64 %32, %55, !dbg !4496
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4494
  %733 = icmp slt i64 %732, 0, !dbg !4496
  br i1 %733, label %739, label %734, !dbg !4496

734:                                              ; preds = %728, %731
  %735 = phi i32 [ 0, %731 ], [ 1, %728 ]
  %736 = phi i64 [ %732, %731 ], [ 9223372036854775807, %728 ]
  %737 = udiv i64 9223372036854775807, %55, !dbg !4496
  %738 = icmp ult i64 %737, %736, !dbg !4496
  br i1 %738, label %750, label %745, !dbg !4496

739:                                              ; preds = %724, %731
  %740 = phi i32 [ 0, %731 ], [ 1, %724 ]
  %741 = phi i64 [ %732, %731 ], [ -9223372036854775808, %724 ]
  %742 = sub i64 0, %741, !dbg !4496
  %743 = udiv i64 -9223372036854775808, %742, !dbg !4496
  %744 = icmp slt i64 %743, %55, !dbg !4496
  br i1 %744, label %755, label %745, !dbg !4496

745:                                              ; preds = %734, %739
  %746 = phi i32 [ %740, %739 ], [ %735, %734 ]
  %747 = phi i64 [ %741, %739 ], [ %736, %734 ]
  %748 = mul i64 %747, %55, !dbg !4496
  call void @llvm.dbg.value(metadata !DIArgList(i64 %732, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 %746, metadata !4408, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4494
  %749 = icmp slt i64 %748, 0, !dbg !4496
  br i1 %749, label %755, label %750, !dbg !4496

750:                                              ; preds = %734, %745
  %751 = phi i32 [ %746, %745 ], [ 1, %734 ]
  %752 = phi i64 [ %748, %745 ], [ 9223372036854775807, %734 ]
  %753 = udiv i64 9223372036854775807, %55, !dbg !4496
  %754 = icmp ult i64 %753, %752, !dbg !4496
  br i1 %754, label %766, label %761, !dbg !4496

755:                                              ; preds = %739, %745
  %756 = phi i32 [ %746, %745 ], [ 1, %739 ]
  %757 = phi i64 [ %748, %745 ], [ -9223372036854775808, %739 ]
  %758 = sub i64 0, %757, !dbg !4496
  %759 = udiv i64 -9223372036854775808, %758, !dbg !4496
  %760 = icmp slt i64 %759, %55, !dbg !4496
  br i1 %760, label %771, label %761, !dbg !4496

761:                                              ; preds = %750, %755
  %762 = phi i32 [ %756, %755 ], [ %751, %750 ]
  %763 = phi i64 [ %757, %755 ], [ %752, %750 ]
  %764 = mul i64 %763, %55, !dbg !4496
  call void @llvm.dbg.value(metadata !DIArgList(i64 %748, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  call void @llvm.dbg.value(metadata i32 %762, metadata !4408, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4494
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4494
  %765 = icmp slt i64 %764, 0, !dbg !4496
  br i1 %765, label %771, label %766, !dbg !4496

766:                                              ; preds = %750, %761
  %767 = phi i32 [ %762, %761 ], [ 1, %750 ]
  %768 = phi i64 [ %764, %761 ], [ 9223372036854775807, %750 ]
  %769 = udiv i64 9223372036854775807, %55, !dbg !4496
  %770 = icmp ult i64 %769, %768, !dbg !4496
  br i1 %770, label %781, label %777, !dbg !4496

771:                                              ; preds = %755, %761
  %772 = phi i32 [ %762, %761 ], [ 1, %755 ]
  %773 = phi i64 [ %764, %761 ], [ -9223372036854775808, %755 ]
  %774 = sub i64 0, %773, !dbg !4496
  %775 = udiv i64 -9223372036854775808, %774, !dbg !4496
  %776 = icmp slt i64 %775, %55, !dbg !4496
  br i1 %776, label %781, label %777, !dbg !4496

777:                                              ; preds = %771, %766
  %778 = phi i32 [ %772, %771 ], [ %767, %766 ]
  %779 = phi i64 [ %773, %771 ], [ %768, %766 ]
  %780 = mul i64 %779, %55, !dbg !4496
  call void @llvm.dbg.value(metadata !DIArgList(i64 %764, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4494
  br label %781, !dbg !4497

781:                                              ; preds = %777, %771, %766
  %782 = phi i32 [ %778, %777 ], [ %767, %766 ], [ %772, %771 ]
  %783 = phi i64 [ %780, %777 ], [ 9223372036854775807, %766 ], [ -9223372036854775808, %771 ], !dbg !4494
  %784 = phi i32 [ 0, %777 ], [ 1, %766 ], [ 1, %771 ], !dbg !4494
  %785 = or i32 %784, %782, !dbg !4498
  call void @llvm.dbg.value(metadata i32 %785, metadata !4408, metadata !DIExpression()), !dbg !4492
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4492
  br label %1063, !dbg !4465

786:                                              ; preds = %54
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i32 2, metadata !4424, metadata !DIExpression()), !dbg !4499
  %787 = icmp slt i64 %32, 0, !dbg !4501
  br i1 %787, label %788, label %791, !dbg !4501

788:                                              ; preds = %786
  %789 = add i64 %32, -1, !dbg !4501
  %790 = icmp ult i64 %789, -4611686018427387905, !dbg !4501
  br i1 %790, label %1063, label %793, !dbg !4501

791:                                              ; preds = %786
  %792 = icmp ugt i64 %32, 4611686018427387903, !dbg !4501
  br i1 %792, label %1063, label %793, !dbg !4501

793:                                              ; preds = %791, %788
  %794 = shl nsw i64 %32, 1, !dbg !4501
  call void @llvm.dbg.value(metadata !DIArgList(i64 %11, i32 2), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4499
  br label %1063, !dbg !4502

795:                                              ; preds = %59
  %796 = icmp eq i64 %32, -1, !dbg !4434
  br i1 %796, label %804, label %797, !dbg !4434

797:                                              ; preds = %795
  %798 = sub i64 0, %32, !dbg !4434
  %799 = udiv i64 -9223372036854775808, %798, !dbg !4434
  %800 = icmp ult i64 %799, %55, !dbg !4434
  br i1 %800, label %812, label %804, !dbg !4434

801:                                              ; preds = %59
  %802 = udiv i64 9223372036854775807, %55, !dbg !4434
  %803 = icmp ult i64 %802, %32, !dbg !4434
  br i1 %803, label %807, label %804, !dbg !4434

804:                                              ; preds = %795, %797, %801
  %805 = mul i64 %32, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 6, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %806 = icmp slt i64 %805, 0, !dbg !4434
  br i1 %806, label %812, label %807, !dbg !4434

807:                                              ; preds = %801, %804
  %808 = phi i32 [ 0, %804 ], [ 1, %801 ]
  %809 = phi i64 [ %805, %804 ], [ 9223372036854775807, %801 ]
  %810 = udiv i64 9223372036854775807, %55, !dbg !4434
  %811 = icmp ult i64 %810, %809, !dbg !4434
  br i1 %811, label %823, label %818, !dbg !4434

812:                                              ; preds = %797, %804
  %813 = phi i32 [ 0, %804 ], [ 1, %797 ]
  %814 = phi i64 [ %805, %804 ], [ -9223372036854775808, %797 ]
  %815 = sub i64 0, %814, !dbg !4434
  %816 = udiv i64 -9223372036854775808, %815, !dbg !4434
  %817 = icmp slt i64 %816, %55, !dbg !4434
  br i1 %817, label %828, label %818, !dbg !4434

818:                                              ; preds = %807, %812
  %819 = phi i32 [ %813, %812 ], [ %808, %807 ]
  %820 = phi i64 [ %814, %812 ], [ %809, %807 ]
  %821 = mul i64 %820, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %805, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %819, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %822 = icmp slt i64 %821, 0, !dbg !4434
  br i1 %822, label %828, label %823, !dbg !4434

823:                                              ; preds = %807, %818
  %824 = phi i32 [ %819, %818 ], [ 1, %807 ]
  %825 = phi i64 [ %821, %818 ], [ 9223372036854775807, %807 ]
  %826 = udiv i64 9223372036854775807, %55, !dbg !4434
  %827 = icmp ult i64 %826, %825, !dbg !4434
  br i1 %827, label %839, label %834, !dbg !4434

828:                                              ; preds = %812, %818
  %829 = phi i32 [ %819, %818 ], [ 1, %812 ]
  %830 = phi i64 [ %821, %818 ], [ -9223372036854775808, %812 ]
  %831 = sub i64 0, %830, !dbg !4434
  %832 = udiv i64 -9223372036854775808, %831, !dbg !4434
  %833 = icmp slt i64 %832, %55, !dbg !4434
  br i1 %833, label %846, label %834, !dbg !4434

834:                                              ; preds = %823, %828
  %835 = phi i32 [ %829, %828 ], [ %824, %823 ]
  %836 = phi i64 [ %830, %828 ], [ %825, %823 ]
  %837 = mul i64 %836, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %821, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %835, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %838 = icmp slt i64 %837, 0, !dbg !4434
  br i1 %838, label %846, label %839, !dbg !4434

839:                                              ; preds = %823, %834
  %840 = phi i32 [ %835, %834 ], [ 1, %823 ]
  %841 = phi i64 [ %837, %834 ], [ 9223372036854775807, %823 ]
  %842 = udiv i64 9223372036854775807, %55, !dbg !4434
  %843 = icmp ult i64 %842, %841, !dbg !4434
  br i1 %843, label %844, label %854, !dbg !4434

844:                                              ; preds = %839
  %845 = or i32 %840, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %855, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %859, !dbg !4434

846:                                              ; preds = %828, %834
  %847 = phi i32 [ %835, %834 ], [ 1, %828 ]
  %848 = phi i64 [ %837, %834 ], [ -9223372036854775808, %828 ]
  %849 = sub i64 0, %848, !dbg !4434
  %850 = udiv i64 -9223372036854775808, %849, !dbg !4434
  %851 = icmp slt i64 %850, %55, !dbg !4434
  br i1 %851, label %852, label %854, !dbg !4434

852:                                              ; preds = %846
  %853 = or i32 %847, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %855, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %866, !dbg !4434

854:                                              ; preds = %839, %846
  %855 = phi i32 [ %847, %846 ], [ %840, %839 ]
  %856 = phi i64 [ %848, %846 ], [ %841, %839 ]
  %857 = mul i64 %856, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %837, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %855, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %858 = icmp slt i64 %857, 0, !dbg !4434
  br i1 %858, label %866, label %859, !dbg !4434

859:                                              ; preds = %844, %854
  %860 = phi i32 [ %845, %844 ], [ %855, %854 ]
  %861 = phi i64 [ 9223372036854775807, %844 ], [ %857, %854 ]
  %862 = udiv i64 9223372036854775807, %55, !dbg !4434
  %863 = icmp ult i64 %862, %861, !dbg !4434
  br i1 %863, label %864, label %874, !dbg !4434

864:                                              ; preds = %859
  %865 = or i32 %860, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %875, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %879, !dbg !4434

866:                                              ; preds = %854, %852
  %867 = phi i32 [ %853, %852 ], [ %855, %854 ]
  %868 = phi i64 [ -9223372036854775808, %852 ], [ %857, %854 ]
  %869 = sub i64 0, %868, !dbg !4434
  %870 = udiv i64 -9223372036854775808, %869, !dbg !4434
  %871 = icmp slt i64 %870, %55, !dbg !4434
  br i1 %871, label %872, label %874, !dbg !4434

872:                                              ; preds = %866
  %873 = or i32 %867, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %875, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %886, !dbg !4434

874:                                              ; preds = %859, %866
  %875 = phi i32 [ %867, %866 ], [ %860, %859 ]
  %876 = phi i64 [ %868, %866 ], [ %861, %859 ]
  %877 = mul i64 %876, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %857, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %875, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %878 = icmp slt i64 %877, 0, !dbg !4434
  br i1 %878, label %886, label %879, !dbg !4434

879:                                              ; preds = %864, %874
  %880 = phi i32 [ %865, %864 ], [ %875, %874 ]
  %881 = phi i64 [ 9223372036854775807, %864 ], [ %877, %874 ]
  %882 = udiv i64 9223372036854775807, %55, !dbg !4434
  %883 = icmp ult i64 %882, %881, !dbg !4434
  br i1 %883, label %884, label %894, !dbg !4434

884:                                              ; preds = %879
  %885 = or i32 %880, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %895, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %899, !dbg !4434

886:                                              ; preds = %874, %872
  %887 = phi i32 [ %873, %872 ], [ %875, %874 ]
  %888 = phi i64 [ -9223372036854775808, %872 ], [ %877, %874 ]
  %889 = sub i64 0, %888, !dbg !4434
  %890 = udiv i64 -9223372036854775808, %889, !dbg !4434
  %891 = icmp slt i64 %890, %55, !dbg !4434
  br i1 %891, label %892, label %894, !dbg !4434

892:                                              ; preds = %886
  %893 = or i32 %887, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %895, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %906, !dbg !4434

894:                                              ; preds = %879, %886
  %895 = phi i32 [ %887, %886 ], [ %880, %879 ]
  %896 = phi i64 [ %888, %886 ], [ %881, %879 ]
  %897 = mul i64 %896, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %877, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %895, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %898 = icmp slt i64 %897, 0, !dbg !4434
  br i1 %898, label %906, label %899, !dbg !4434

899:                                              ; preds = %884, %894
  %900 = phi i32 [ %885, %884 ], [ %895, %894 ]
  %901 = phi i64 [ 9223372036854775807, %884 ], [ %897, %894 ]
  %902 = udiv i64 9223372036854775807, %55, !dbg !4434
  %903 = icmp ult i64 %902, %901, !dbg !4434
  br i1 %903, label %904, label %914, !dbg !4434

904:                                              ; preds = %899
  %905 = or i32 %900, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %915, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %919, !dbg !4434

906:                                              ; preds = %894, %892
  %907 = phi i32 [ %893, %892 ], [ %895, %894 ]
  %908 = phi i64 [ -9223372036854775808, %892 ], [ %897, %894 ]
  %909 = sub i64 0, %908, !dbg !4434
  %910 = udiv i64 -9223372036854775808, %909, !dbg !4434
  %911 = icmp slt i64 %910, %55, !dbg !4434
  br i1 %911, label %912, label %914, !dbg !4434

912:                                              ; preds = %906
  %913 = or i32 %907, 1, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %915, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  br label %924, !dbg !4434

914:                                              ; preds = %899, %906
  %915 = phi i32 [ %907, %906 ], [ %900, %899 ]
  %916 = phi i64 [ %908, %906 ], [ %901, %899 ]
  %917 = mul i64 %916, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %897, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  call void @llvm.dbg.value(metadata i32 %915, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4432
  %918 = icmp slt i64 %917, 0, !dbg !4434
  br i1 %918, label %924, label %919, !dbg !4434

919:                                              ; preds = %904, %914
  %920 = phi i32 [ %905, %904 ], [ %915, %914 ]
  %921 = phi i64 [ 9223372036854775807, %904 ], [ %917, %914 ]
  %922 = udiv i64 9223372036854775807, %55, !dbg !4434
  %923 = icmp ult i64 %922, %921, !dbg !4434
  br i1 %923, label %934, label %930, !dbg !4434

924:                                              ; preds = %914, %912
  %925 = phi i32 [ %913, %912 ], [ %915, %914 ]
  %926 = phi i64 [ -9223372036854775808, %912 ], [ %917, %914 ]
  %927 = sub i64 0, %926, !dbg !4434
  %928 = udiv i64 -9223372036854775808, %927, !dbg !4434
  %929 = icmp slt i64 %928, %55, !dbg !4434
  br i1 %929, label %934, label %930, !dbg !4434

930:                                              ; preds = %924, %919
  %931 = phi i32 [ %925, %924 ], [ %920, %919 ]
  %932 = phi i64 [ %926, %924 ], [ %921, %919 ]
  %933 = mul i64 %932, %55, !dbg !4434
  call void @llvm.dbg.value(metadata !DIArgList(i64 %917, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4432
  br label %934, !dbg !4504

934:                                              ; preds = %930, %924, %919
  %935 = phi i32 [ %931, %930 ], [ %920, %919 ], [ %925, %924 ]
  %936 = phi i64 [ %933, %930 ], [ 9223372036854775807, %919 ], [ -9223372036854775808, %924 ], !dbg !4432
  %937 = phi i32 [ 0, %930 ], [ 1, %919 ], [ 1, %924 ], !dbg !4432
  %938 = or i32 %937, %935, !dbg !4503
  call void @llvm.dbg.value(metadata i32 %938, metadata !4408, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4430
  br label %1063, !dbg !4465

939:                                              ; preds = %57
  %940 = icmp eq i64 %32, -1, !dbg !4428
  br i1 %940, label %948, label %941, !dbg !4428

941:                                              ; preds = %939
  %942 = sub i64 0, %32, !dbg !4428
  %943 = udiv i64 -9223372036854775808, %942, !dbg !4428
  %944 = icmp ult i64 %943, %55, !dbg !4428
  br i1 %944, label %956, label %948, !dbg !4428

945:                                              ; preds = %57
  %946 = udiv i64 9223372036854775807, %55, !dbg !4428
  %947 = icmp ult i64 %946, %32, !dbg !4428
  br i1 %947, label %951, label %948, !dbg !4428

948:                                              ; preds = %939, %941, %945
  %949 = mul i64 %32, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %32, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 0, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 5, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %950 = icmp slt i64 %949, 0, !dbg !4428
  br i1 %950, label %956, label %951, !dbg !4428

951:                                              ; preds = %945, %948
  %952 = phi i32 [ 0, %948 ], [ 1, %945 ]
  %953 = phi i64 [ %949, %948 ], [ 9223372036854775807, %945 ]
  %954 = udiv i64 9223372036854775807, %55, !dbg !4428
  %955 = icmp ult i64 %954, %953, !dbg !4428
  br i1 %955, label %967, label %962, !dbg !4428

956:                                              ; preds = %941, %948
  %957 = phi i32 [ 0, %948 ], [ 1, %941 ]
  %958 = phi i64 [ %949, %948 ], [ -9223372036854775808, %941 ]
  %959 = sub i64 0, %958, !dbg !4428
  %960 = udiv i64 -9223372036854775808, %959, !dbg !4428
  %961 = icmp slt i64 %960, %55, !dbg !4428
  br i1 %961, label %972, label %962, !dbg !4428

962:                                              ; preds = %951, %956
  %963 = phi i32 [ %957, %956 ], [ %952, %951 ]
  %964 = phi i64 [ %958, %956 ], [ %953, %951 ]
  %965 = mul i64 %964, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %949, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %963, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 4, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %966 = icmp slt i64 %965, 0, !dbg !4428
  br i1 %966, label %972, label %967, !dbg !4428

967:                                              ; preds = %951, %962
  %968 = phi i32 [ %963, %962 ], [ 1, %951 ]
  %969 = phi i64 [ %965, %962 ], [ 9223372036854775807, %951 ]
  %970 = udiv i64 9223372036854775807, %55, !dbg !4428
  %971 = icmp ult i64 %970, %969, !dbg !4428
  br i1 %971, label %983, label %978, !dbg !4428

972:                                              ; preds = %956, %962
  %973 = phi i32 [ %963, %962 ], [ 1, %956 ]
  %974 = phi i64 [ %965, %962 ], [ -9223372036854775808, %956 ]
  %975 = sub i64 0, %974, !dbg !4428
  %976 = udiv i64 -9223372036854775808, %975, !dbg !4428
  %977 = icmp slt i64 %976, %55, !dbg !4428
  br i1 %977, label %990, label %978, !dbg !4428

978:                                              ; preds = %967, %972
  %979 = phi i32 [ %973, %972 ], [ %968, %967 ]
  %980 = phi i64 [ %974, %972 ], [ %969, %967 ]
  %981 = mul i64 %980, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %965, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %979, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 3, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %982 = icmp slt i64 %981, 0, !dbg !4428
  br i1 %982, label %990, label %983, !dbg !4428

983:                                              ; preds = %967, %978
  %984 = phi i32 [ %979, %978 ], [ 1, %967 ]
  %985 = phi i64 [ %981, %978 ], [ 9223372036854775807, %967 ]
  %986 = udiv i64 9223372036854775807, %55, !dbg !4428
  %987 = icmp ult i64 %986, %985, !dbg !4428
  br i1 %987, label %988, label %998, !dbg !4428

988:                                              ; preds = %983
  %989 = or i32 %984, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %999, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1003, !dbg !4428

990:                                              ; preds = %972, %978
  %991 = phi i32 [ %979, %978 ], [ 1, %972 ]
  %992 = phi i64 [ %981, %978 ], [ -9223372036854775808, %972 ]
  %993 = sub i64 0, %992, !dbg !4428
  %994 = udiv i64 -9223372036854775808, %993, !dbg !4428
  %995 = icmp slt i64 %994, %55, !dbg !4428
  br i1 %995, label %996, label %998, !dbg !4428

996:                                              ; preds = %990
  %997 = or i32 %991, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %999, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1010, !dbg !4428

998:                                              ; preds = %983, %990
  %999 = phi i32 [ %991, %990 ], [ %984, %983 ]
  %1000 = phi i64 [ %992, %990 ], [ %985, %983 ]
  %1001 = mul i64 %1000, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %981, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %999, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 2, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %1002 = icmp slt i64 %1001, 0, !dbg !4428
  br i1 %1002, label %1010, label %1003, !dbg !4428

1003:                                             ; preds = %988, %998
  %1004 = phi i32 [ %989, %988 ], [ %999, %998 ]
  %1005 = phi i64 [ 9223372036854775807, %988 ], [ %1001, %998 ]
  %1006 = udiv i64 9223372036854775807, %55, !dbg !4428
  %1007 = icmp ult i64 %1006, %1005, !dbg !4428
  br i1 %1007, label %1008, label %1018, !dbg !4428

1008:                                             ; preds = %1003
  %1009 = or i32 %1004, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1023, !dbg !4428

1010:                                             ; preds = %998, %996
  %1011 = phi i32 [ %997, %996 ], [ %999, %998 ]
  %1012 = phi i64 [ -9223372036854775808, %996 ], [ %1001, %998 ]
  %1013 = sub i64 0, %1012, !dbg !4428
  %1014 = udiv i64 -9223372036854775808, %1013, !dbg !4428
  %1015 = icmp slt i64 %1014, %55, !dbg !4428
  br i1 %1015, label %1016, label %1018, !dbg !4428

1016:                                             ; preds = %1010
  %1017 = or i32 %1011, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1030, !dbg !4428

1018:                                             ; preds = %1003, %1010
  %1019 = phi i32 [ %1011, %1010 ], [ %1004, %1003 ]
  %1020 = phi i64 [ %1012, %1010 ], [ %1005, %1003 ]
  %1021 = mul i64 %1020, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1001, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %1019, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %1022 = icmp slt i64 %1021, 0, !dbg !4428
  br i1 %1022, label %1030, label %1023, !dbg !4428

1023:                                             ; preds = %1008, %1018
  %1024 = phi i32 [ %1009, %1008 ], [ %1019, %1018 ]
  %1025 = phi i64 [ 9223372036854775807, %1008 ], [ %1021, %1018 ]
  %1026 = udiv i64 9223372036854775807, %55, !dbg !4428
  %1027 = icmp ult i64 %1026, %1025, !dbg !4428
  br i1 %1027, label %1028, label %1038, !dbg !4428

1028:                                             ; preds = %1023
  %1029 = or i32 %1024, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1043, !dbg !4428

1030:                                             ; preds = %1018, %1016
  %1031 = phi i32 [ %1017, %1016 ], [ %1019, %1018 ]
  %1032 = phi i64 [ -9223372036854775808, %1016 ], [ %1021, %1018 ]
  %1033 = sub i64 0, %1032, !dbg !4428
  %1034 = udiv i64 -9223372036854775808, %1033, !dbg !4428
  %1035 = icmp slt i64 %1034, %55, !dbg !4428
  br i1 %1035, label %1036, label %1038, !dbg !4428

1036:                                             ; preds = %1030
  %1037 = or i32 %1031, 1, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  br label %1048, !dbg !4428

1038:                                             ; preds = %1023, %1030
  %1039 = phi i32 [ %1031, %1030 ], [ %1024, %1023 ]
  %1040 = phi i64 [ %1032, %1030 ], [ %1025, %1023 ]
  %1041 = mul i64 %1040, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1021, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  call void @llvm.dbg.value(metadata i32 %1039, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i64* undef, metadata !4419, metadata !DIExpression()), !dbg !4426
  call void @llvm.dbg.value(metadata i32 undef, metadata !4424, metadata !DIExpression()), !dbg !4426
  %1042 = icmp slt i64 %1041, 0, !dbg !4428
  br i1 %1042, label %1048, label %1043, !dbg !4428

1043:                                             ; preds = %1028, %1038
  %1044 = phi i32 [ %1029, %1028 ], [ %1039, %1038 ]
  %1045 = phi i64 [ 9223372036854775807, %1028 ], [ %1041, %1038 ]
  %1046 = udiv i64 9223372036854775807, %55, !dbg !4428
  %1047 = icmp ult i64 %1046, %1045, !dbg !4428
  br i1 %1047, label %1058, label %1054, !dbg !4428

1048:                                             ; preds = %1038, %1036
  %1049 = phi i32 [ %1037, %1036 ], [ %1039, %1038 ]
  %1050 = phi i64 [ -9223372036854775808, %1036 ], [ %1041, %1038 ]
  %1051 = sub i64 0, %1050, !dbg !4428
  %1052 = udiv i64 -9223372036854775808, %1051, !dbg !4428
  %1053 = icmp slt i64 %1052, %55, !dbg !4428
  br i1 %1053, label %1058, label %1054, !dbg !4428

1054:                                             ; preds = %1048, %1043
  %1055 = phi i32 [ %1049, %1048 ], [ %1044, %1043 ]
  %1056 = phi i64 [ %1050, %1048 ], [ %1045, %1043 ]
  %1057 = mul i64 %1056, %55, !dbg !4428
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1041, i32 undef), metadata !4425, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_mul, DW_OP_stack_value)), !dbg !4426
  br label %1058, !dbg !4506

1058:                                             ; preds = %1054, %1048, %1043
  %1059 = phi i32 [ %1055, %1054 ], [ %1044, %1043 ], [ %1049, %1048 ]
  %1060 = phi i64 [ %1057, %1054 ], [ 9223372036854775807, %1043 ], [ -9223372036854775808, %1048 ], !dbg !4426
  %1061 = phi i32 [ 0, %1054 ], [ 1, %1043 ], [ 1, %1048 ], !dbg !4426
  %1062 = or i32 %1061, %1059, !dbg !4505
  call void @llvm.dbg.value(metadata i32 %1062, metadata !4408, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.value(metadata i32 0, metadata !4415, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !4416
  br label %1063, !dbg !4465

1063:                                             ; preds = %788, %80, %71, %245, %249, %252, %1058, %934, %781, %715, %551, %367, %283, %236, %186, %54, %74, %76, %83, %85, %791, %793
  %1064 = phi i64 [ %32, %54 ], [ %77, %76 ], [ 9223372036854775807, %74 ], [ %86, %85 ], [ 9223372036854775807, %83 ], [ %794, %793 ], [ 9223372036854775807, %791 ], [ %188, %186 ], [ %238, %236 ], [ %285, %283 ], [ %369, %367 ], [ %553, %551 ], [ %717, %715 ], [ %783, %781 ], [ %936, %934 ], [ %1060, %1058 ], [ %253, %252 ], [ 9223372036854775807, %249 ], [ -9223372036854775808, %245 ], [ -9223372036854775808, %71 ], [ -9223372036854775808, %80 ], [ -9223372036854775808, %788 ], !dbg !4354
  %1065 = phi i32 [ 0, %54 ], [ 0, %76 ], [ 1, %74 ], [ 0, %85 ], [ 1, %83 ], [ 0, %793 ], [ 1, %791 ], [ %190, %186 ], [ %240, %236 ], [ %287, %283 ], [ %371, %367 ], [ %555, %551 ], [ %719, %715 ], [ %785, %781 ], [ %938, %934 ], [ %1062, %1058 ], [ 0, %252 ], [ 1, %249 ], [ 1, %245 ], [ 1, %71 ], [ 1, %80 ], [ 1, %788 ], !dbg !4507
  call void @llvm.dbg.value(metadata i32 %1065, metadata !4353, metadata !DIExpression()), !dbg !4393
  %1066 = or i32 %1065, %31, !dbg !4465
  call void @llvm.dbg.value(metadata i32 %1066, metadata !4348, metadata !DIExpression()), !dbg !4354
  %1067 = getelementptr inbounds i8, i8* %12, i64 %56, !dbg !4508
  store i8* %1067, i8** %9, align 8, !dbg !4508, !tbaa !486
  %1068 = load i8, i8* %1067, align 1, !dbg !4509, !tbaa !590
  %1069 = icmp eq i8 %1068, 0, !dbg !4509
  %1070 = or i32 %1066, 2
  %1071 = select i1 %1069, i32 %1066, i32 %1070, !dbg !4511
  call void @llvm.dbg.value(metadata i32 %31, metadata !4348, metadata !DIExpression()), !dbg !4354
  br label %1074

1072:                                             ; preds = %54
  call void @llvm.dbg.value(metadata i64 %11, metadata !4347, metadata !DIExpression()), !dbg !4354
  store i64 %32, i64* %3, align 8, !dbg !4512, !tbaa !933
  %1073 = or i32 %31, 2, !dbg !4513
  call void @llvm.dbg.value(metadata i32 %31, metadata !4348, metadata !DIExpression()), !dbg !4354
  br label %1077

1074:                                             ; preds = %1063, %30
  %1075 = phi i64 [ %32, %30 ], [ %1064, %1063 ], !dbg !4514
  %1076 = phi i32 [ %31, %30 ], [ %1071, %1063 ], !dbg !4515
  call void @llvm.dbg.value(metadata i32 %1076, metadata !4348, metadata !DIExpression()), !dbg !4354
  call void @llvm.dbg.value(metadata i64 %1075, metadata !4347, metadata !DIExpression()), !dbg !4354
  store i64 %1075, i64* %3, align 8, !dbg !4516, !tbaa !933
  br label %1077, !dbg !4517

1077:                                             ; preds = %1072, %23, %14, %16, %19, %1074, %39, %29
  %1078 = phi i32 [ %1076, %1074 ], [ %1073, %1072 ], [ %40, %39 ], [ %27, %29 ], [ 4, %19 ], [ 4, %16 ], [ 4, %14 ], [ 4, %23 ], !dbg !4354
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #37, !dbg !4518
  ret i32 %1078, !dbg !4518
}

; Function Attrs: nounwind
declare !dbg !4519 i64 @strtoimax(i8* noundef, i8** noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias %struct._IO_FILE* @rpl_fopen(i8* nocapture noundef nonnull readonly %0, i8* nocapture noundef nonnull readonly %1) local_unnamed_addr #18 !dbg !4524 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata i8* %0, metadata !4562, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8* %1, metadata !4563, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4564, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 0, metadata !4565, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8 0, metadata !4566, metadata !DIExpression()), !dbg !4586
  %4 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 0, !dbg !4587
  call void @llvm.lifetime.start.p0i8(i64 81, i8* nonnull %4) #37, !dbg !4587
  call void @llvm.dbg.declare(metadata [81 x i8]* %3, metadata !4567, metadata !DIExpression()), !dbg !4588
  call void @llvm.dbg.value(metadata i8* %1, metadata !4571, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %4, metadata !4573, metadata !DIExpression()), !dbg !4589
  %5 = getelementptr inbounds [81 x i8], [81 x i8]* %3, i64 0, i64 80
  br label %6, !dbg !4590

6:                                                ; preds = %47, %2
  %7 = phi i1 [ false, %2 ], [ %48, %47 ]
  %8 = phi i8* [ %1, %2 ], [ %52, %47 ], !dbg !4589
  %9 = phi i8* [ %4, %2 ], [ %49, %47 ], !dbg !4591
  %10 = phi i32 [ 0, %2 ], [ %50, %47 ], !dbg !4586
  %11 = phi i32 [ 0, %2 ], [ %51, %47 ], !dbg !4592
  call void @llvm.dbg.value(metadata i32 %11, metadata !4564, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 %10, metadata !4565, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8* %9, metadata !4573, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8* %8, metadata !4571, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8 poison, metadata !4566, metadata !DIExpression()), !dbg !4586
  %12 = load i8, i8* %8, align 1, !dbg !4593, !tbaa !590
  switch i8 %12, label %39 [
    i8 0, label %53
    i8 114, label %13
    i8 119, label %17
    i8 97, label %22
    i8 98, label %27
    i8 43, label %31
    i8 120, label %35
    i8 101, label %37
  ], !dbg !4594

13:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 0, metadata !4564, metadata !DIExpression()), !dbg !4586
  %14 = icmp ult i8* %9, %5, !dbg !4595
  br i1 %14, label %15, label %47, !dbg !4598

15:                                               ; preds = %13
  %16 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4599
  call void @llvm.dbg.value(metadata i8* %16, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 114, i8* %9, align 1, !dbg !4600, !tbaa !590
  br label %47, !dbg !4601

17:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4564, metadata !DIExpression()), !dbg !4586
  %18 = or i32 %10, 576, !dbg !4602
  call void @llvm.dbg.value(metadata i32 %18, metadata !4565, metadata !DIExpression()), !dbg !4586
  %19 = icmp ult i8* %9, %5, !dbg !4603
  br i1 %19, label %20, label %47, !dbg !4605

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4606
  call void @llvm.dbg.value(metadata i8* %21, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 119, i8* %9, align 1, !dbg !4607, !tbaa !590
  br label %47, !dbg !4608

22:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 1, metadata !4564, metadata !DIExpression()), !dbg !4586
  %23 = or i32 %10, 1088, !dbg !4609
  call void @llvm.dbg.value(metadata i32 %23, metadata !4565, metadata !DIExpression()), !dbg !4586
  %24 = icmp ult i8* %9, %5, !dbg !4610
  br i1 %24, label %25, label %47, !dbg !4612

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4613
  call void @llvm.dbg.value(metadata i8* %26, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 97, i8* %9, align 1, !dbg !4614, !tbaa !590
  br label %47, !dbg !4615

27:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 %10, metadata !4565, metadata !DIExpression()), !dbg !4586
  %28 = icmp ult i8* %9, %5, !dbg !4616
  br i1 %28, label %29, label %47, !dbg !4618

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4619
  call void @llvm.dbg.value(metadata i8* %30, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 98, i8* %9, align 1, !dbg !4620, !tbaa !590
  br label %47, !dbg !4621

31:                                               ; preds = %6
  call void @llvm.dbg.value(metadata i32 2, metadata !4564, metadata !DIExpression()), !dbg !4586
  %32 = icmp ult i8* %9, %5, !dbg !4622
  br i1 %32, label %33, label %47, !dbg !4624

33:                                               ; preds = %31
  %34 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !4625
  call void @llvm.dbg.value(metadata i8* %34, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 43, i8* %9, align 1, !dbg !4626, !tbaa !590
  br label %47, !dbg !4627

35:                                               ; preds = %6
  %36 = or i32 %10, 128, !dbg !4628
  call void @llvm.dbg.value(metadata i32 %36, metadata !4565, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8 1, metadata !4566, metadata !DIExpression()), !dbg !4586
  br label %47, !dbg !4629

37:                                               ; preds = %6
  %38 = or i32 %10, 524288, !dbg !4630
  call void @llvm.dbg.value(metadata i32 %38, metadata !4565, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8 1, metadata !4566, metadata !DIExpression()), !dbg !4586
  br label %47, !dbg !4631

39:                                               ; preds = %6
  %40 = call i64 @strlen(i8* noundef nonnull %8) #38, !dbg !4632
  call void @llvm.dbg.value(metadata i64 %40, metadata !4574, metadata !DIExpression()), !dbg !4633
  %41 = ptrtoint i8* %5 to i64, !dbg !4634
  %42 = ptrtoint i8* %9 to i64, !dbg !4634
  %43 = sub i64 %41, %42, !dbg !4634
  %44 = icmp ugt i64 %40, %43, !dbg !4636
  %45 = select i1 %44, i64 %43, i64 %40, !dbg !4637
  call void @llvm.dbg.value(metadata i64 %45, metadata !4574, metadata !DIExpression()), !dbg !4633
  call void @llvm.dbg.value(metadata i8* %9, metadata !4638, metadata !DIExpression()) #37, !dbg !4643
  call void @llvm.dbg.value(metadata i8* %8, metadata !4641, metadata !DIExpression()) #37, !dbg !4643
  call void @llvm.dbg.value(metadata i64 %45, metadata !4642, metadata !DIExpression()) #37, !dbg !4643
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %9, i8* noundef nonnull align 1 %8, i64 noundef %45, i1 noundef false) #37, !dbg !4645
  %46 = getelementptr inbounds i8, i8* %9, i64 %45, !dbg !4646
  call void @llvm.dbg.value(metadata i8* %46, metadata !4573, metadata !DIExpression()), !dbg !4589
  br label %53, !dbg !4647

47:                                               ; preds = %31, %33, %27, %29, %22, %25, %17, %20, %13, %15, %37, %35
  %48 = phi i1 [ true, %37 ], [ true, %35 ], [ %7, %33 ], [ %7, %31 ], [ %7, %29 ], [ %7, %27 ], [ %7, %25 ], [ %7, %22 ], [ %7, %20 ], [ %7, %17 ], [ %7, %15 ], [ %7, %13 ]
  %49 = phi i8* [ %9, %37 ], [ %9, %35 ], [ %34, %33 ], [ %9, %31 ], [ %30, %29 ], [ %9, %27 ], [ %26, %25 ], [ %9, %22 ], [ %21, %20 ], [ %9, %17 ], [ %16, %15 ], [ %9, %13 ], !dbg !4589
  %50 = phi i32 [ %38, %37 ], [ %36, %35 ], [ %10, %33 ], [ %10, %31 ], [ %10, %29 ], [ %10, %27 ], [ %23, %25 ], [ %23, %22 ], [ %18, %20 ], [ %18, %17 ], [ %10, %15 ], [ %10, %13 ], !dbg !4586
  %51 = phi i32 [ %11, %37 ], [ %11, %35 ], [ 2, %33 ], [ 2, %31 ], [ %11, %29 ], [ %11, %27 ], [ 1, %25 ], [ 1, %22 ], [ 1, %20 ], [ 1, %17 ], [ 0, %15 ], [ 0, %13 ], !dbg !4586
  call void @llvm.dbg.value(metadata i32 %51, metadata !4564, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i32 %50, metadata !4565, metadata !DIExpression()), !dbg !4586
  call void @llvm.dbg.value(metadata i8* %49, metadata !4573, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i8 poison, metadata !4566, metadata !DIExpression()), !dbg !4586
  %52 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !4648
  call void @llvm.dbg.value(metadata i8* %52, metadata !4571, metadata !DIExpression()), !dbg !4589
  br label %6, !dbg !4649, !llvm.loop !4650

53:                                               ; preds = %6, %39
  %54 = phi i8* [ %46, %39 ], [ %9, %6 ], !dbg !4589
  call void @llvm.dbg.value(metadata i8* %54, metadata !4573, metadata !DIExpression()), !dbg !4589
  store i8 0, i8* %54, align 1, !dbg !4652, !tbaa !590
  br i1 %7, label %55, label %66, !dbg !4653

55:                                               ; preds = %53
  %56 = or i32 %11, %10, !dbg !4654
  %57 = call i32 (i8*, i32, ...) @open(i8* noundef nonnull %0, i32 noundef %56, i32 noundef 438) #37, !dbg !4655
  call void @llvm.dbg.value(metadata i32 %57, metadata !4579, metadata !DIExpression()), !dbg !4656
  %58 = icmp slt i32 %57, 0, !dbg !4657
  br i1 %58, label %68, label %59, !dbg !4659

59:                                               ; preds = %55
  %60 = call noalias %struct._IO_FILE* @fdopen(i32 noundef %57, i8* noundef nonnull %4) #37, !dbg !4660
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %60, metadata !4582, metadata !DIExpression()), !dbg !4656
  %61 = icmp eq %struct._IO_FILE* %60, null, !dbg !4661
  br i1 %61, label %62, label %68, !dbg !4662

62:                                               ; preds = %59
  %63 = tail call i32* @__errno_location() #40, !dbg !4663
  %64 = load i32, i32* %63, align 4, !dbg !4663, !tbaa !581
  call void @llvm.dbg.value(metadata i32 %64, metadata !4583, metadata !DIExpression()), !dbg !4664
  %65 = call i32 @close(i32 noundef %57) #37, !dbg !4665
  store i32 %64, i32* %63, align 4, !dbg !4666, !tbaa !581
  br label %68, !dbg !4667

66:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i8* %0, metadata !4668, metadata !DIExpression()) #37, !dbg !4672
  call void @llvm.dbg.value(metadata i8* %1, metadata !4671, metadata !DIExpression()) #37, !dbg !4672
  %67 = call noalias %struct._IO_FILE* @fopen(i8* noundef nonnull %0, i8* noundef nonnull %1) #37, !dbg !4674
  br label %68, !dbg !4675

68:                                               ; preds = %55, %62, %59, %66
  %69 = phi %struct._IO_FILE* [ %67, %66 ], [ null, %55 ], [ null, %62 ], [ %60, %59 ], !dbg !4586
  call void @llvm.lifetime.end.p0i8(i64 81, i8* nonnull %4) #37, !dbg !4676
  ret %struct._IO_FILE* %69, !dbg !4676
}

; Function Attrs: nofree
declare !dbg !4677 noundef i32 @open(i8* nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !4680 noalias noundef %struct._IO_FILE* @fdopen(i32 noundef, i8* nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !4683 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noalias noundef %struct._IO_FILE* @fopen(i8* nocapture noundef readonly, i8* nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(%struct._IO_FILE* noundef %0) local_unnamed_addr #18 !dbg !4684 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4722, metadata !DIExpression()), !dbg !4727
  %2 = tail call i64 @__fpending(%struct._IO_FILE* noundef %0) #37, !dbg !4728
  call void @llvm.dbg.value(metadata i1 undef, metadata !4723, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4727
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !4729, metadata !DIExpression()), !dbg !4732
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !4734
  %4 = load i32, i32* %3, align 8, !dbg !4734, !tbaa !909
  %5 = and i32 %4, 32, !dbg !4735
  %6 = icmp eq i32 %5, 0, !dbg !4735
  call void @llvm.dbg.value(metadata i1 %6, metadata !4725, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4727
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* noundef %0) #37, !dbg !4736
  %8 = icmp eq i32 %7, 0, !dbg !4737
  call void @llvm.dbg.value(metadata i1 %8, metadata !4726, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4727
  br i1 %6, label %9, label %19, !dbg !4738

9:                                                ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !4740
  call void @llvm.dbg.value(metadata i1 %10, metadata !4723, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4727
  %11 = select i1 %8, i1 true, i1 %10, !dbg !4741
  %12 = xor i1 %8, true, !dbg !4741
  %13 = sext i1 %12 to i32, !dbg !4741
  br i1 %11, label %22, label %14, !dbg !4741

14:                                               ; preds = %9
  %15 = tail call i32* @__errno_location() #40, !dbg !4742
  %16 = load i32, i32* %15, align 4, !dbg !4742, !tbaa !581
  %17 = icmp ne i32 %16, 9, !dbg !4743
  %18 = sext i1 %17 to i32, !dbg !4744
  br label %22, !dbg !4744

19:                                               ; preds = %1
  br i1 %8, label %20, label %22, !dbg !4745

20:                                               ; preds = %19
  %21 = tail call i32* @__errno_location() #40, !dbg !4747
  store i32 0, i32* %21, align 4, !dbg !4749, !tbaa !581
  br label %22, !dbg !4747

22:                                               ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !4727
  ret i32 %23, !dbg !4750
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE* noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(i32* noundef %0, i8* noundef %1, i64 noundef %2, %struct.__mbstate_t* noundef %3) local_unnamed_addr #18 !dbg !4751 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !4756, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i8* %1, metadata !4757, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %2, metadata !4758, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !4759, metadata !DIExpression()), !dbg !4761
  %5 = icmp eq i8* %1, null, !dbg !4762
  %6 = select i1 %5, i32* null, i32* %0, !dbg !4764
  %7 = select i1 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.176, i64 0, i64 0), i8* %1, !dbg !4764
  %8 = select i1 %5, i64 1, i64 %2, !dbg !4764
  call void @llvm.dbg.value(metadata i64 %8, metadata !4758, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i8* %7, metadata !4757, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i32* %6, metadata !4756, metadata !DIExpression()), !dbg !4761
  %9 = icmp eq %struct.__mbstate_t* %3, null, !dbg !4765
  %10 = select i1 %9, %struct.__mbstate_t* @internal_state, %struct.__mbstate_t* %3, !dbg !4767
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4759, metadata !DIExpression()), !dbg !4761
  %11 = tail call i64 @mbrtoc32(i32* noundef %6, i8* noundef %7, i64 noundef %8, %struct.__mbstate_t* noundef %10) #37, !dbg !4768
  call void @llvm.dbg.value(metadata i64 %11, metadata !4760, metadata !DIExpression()), !dbg !4761
  %12 = icmp ult i64 %11, -3, !dbg !4769
  br i1 %12, label %13, label %18, !dbg !4771

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(%struct.__mbstate_t* noundef %10) #38, !dbg !4772
  %15 = icmp eq i32 %14, 0, !dbg !4772
  br i1 %15, label %16, label %30, !dbg !4773

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4774, metadata !DIExpression()) #37, !dbg !4779
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %10, metadata !4781, metadata !DIExpression()) #37, !dbg !4786
  call void @llvm.dbg.value(metadata i32 0, metadata !4784, metadata !DIExpression()) #37, !dbg !4786
  call void @llvm.dbg.value(metadata i64 8, metadata !4785, metadata !DIExpression()) #37, !dbg !4786
  %17 = bitcast %struct.__mbstate_t* %10 to i64*, !dbg !4788
  store i64 0, i64* %17, align 1, !dbg !4788
  br label %30, !dbg !4789

18:                                               ; preds = %4
  %19 = icmp eq i64 %11, -3, !dbg !4790
  br i1 %19, label %20, label %21, !dbg !4792

20:                                               ; preds = %18
  tail call void @abort() #39, !dbg !4793
  unreachable, !dbg !4793

21:                                               ; preds = %18
  %22 = icmp eq i64 %8, 0
  br i1 %22, label %30, label %23, !dbg !4794

23:                                               ; preds = %21
  %24 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !4796
  br i1 %24, label %30, label %25, !dbg !4797

25:                                               ; preds = %23
  %26 = icmp eq i32* %6, null, !dbg !4798
  br i1 %26, label %30, label %27, !dbg !4801

27:                                               ; preds = %25
  %28 = load i8, i8* %7, align 1, !dbg !4802, !tbaa !590
  %29 = zext i8 %28 to i32, !dbg !4803
  store i32 %29, i32* %6, align 4, !dbg !4804, !tbaa !581
  br label %30, !dbg !4805

30:                                               ; preds = %16, %13, %21, %23, %25, %27
  %31 = phi i64 [ 1, %27 ], [ 1, %25 ], [ %11, %23 ], [ %11, %21 ], [ %11, %13 ], [ %11, %16 ], !dbg !4761
  ret i64 %31, !dbg !4806
}

; Function Attrs: mustprogress nofree nounwind readonly willreturn
declare !dbg !4807 i32 @mbsinit(%struct.__mbstate_t* noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind uwtable willreturn
define dso_local noalias i8* @rpl_reallocarray(i8* nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !4813 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !4815, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i64 %1, metadata !4816, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i64 %2, metadata !4817, metadata !DIExpression()), !dbg !4819
  %4 = icmp eq i64 %2, 0, !dbg !4820
  br i1 %4, label %8, label %5, !dbg !4820

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !4820
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4820
  br i1 %7, label %13, label %8, !dbg !4820

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4818, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4819
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4818, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4819
  %9 = mul i64 %2, %1, !dbg !4820
  call void @llvm.dbg.value(metadata i64 %9, metadata !4818, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i8* %0, metadata !4822, metadata !DIExpression()) #37, !dbg !4826
  call void @llvm.dbg.value(metadata i64 %9, metadata !4825, metadata !DIExpression()) #37, !dbg !4826
  %10 = icmp eq i64 %9, 0, !dbg !4828
  %11 = select i1 %10, i64 1, i64 %9, !dbg !4828
  %12 = tail call i8* @realloc(i8* noundef %0, i64 noundef %11) #37, !dbg !4829
  br label %15, !dbg !4830

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !4818, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4819
  %14 = tail call i32* @__errno_location() #40, !dbg !4831
  store i32 12, i32* %14, align 4, !dbg !4833, !tbaa !581
  br label %15, !dbg !4834

15:                                               ; preds = %8, %13
  %16 = phi i8* [ null, %13 ], [ %12, %8 ], !dbg !4819
  ret i8* %16, !dbg !4835
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #18 !dbg !4836 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !4840, metadata !DIExpression()), !dbg !4845
  %3 = getelementptr inbounds [257 x i8], [257 x i8]* %2, i64 0, i64 0, !dbg !4846
  call void @llvm.lifetime.start.p0i8(i64 257, i8* nonnull %3) #37, !dbg !4846
  call void @llvm.dbg.declare(metadata [257 x i8]* %2, metadata !4841, metadata !DIExpression()), !dbg !4847
  %4 = call i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %3, i64 noundef 257) #37, !dbg !4848
  %5 = icmp eq i32 %4, 0, !dbg !4848
  br i1 %5, label %6, label %13, !dbg !4850

6:                                                ; preds = %1
  call void @llvm.dbg.value(metadata i8* %3, metadata !4851, metadata !DIExpression()) #37, !dbg !4855
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), metadata !4854, metadata !DIExpression()) #37, !dbg !4855
  %7 = call i32 @bcmp(i8* noundef nonnull dereferenceable(2) %3, i8* noundef nonnull dereferenceable(2) getelementptr inbounds ([2 x i8], [2 x i8]* @.str.181, i64 0, i64 0), i64 2), !dbg !4858
  %8 = icmp eq i32 %7, 0, !dbg !4859
  br i1 %8, label %12, label %9, !dbg !4860

9:                                                ; preds = %6
  call void @llvm.dbg.value(metadata i8* %3, metadata !4851, metadata !DIExpression()) #37, !dbg !4861
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), metadata !4854, metadata !DIExpression()) #37, !dbg !4861
  %10 = call i32 @bcmp(i8* noundef nonnull dereferenceable(6) %3, i8* noundef nonnull dereferenceable(6) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.182, i64 0, i64 0), i64 6), !dbg !4863
  %11 = icmp eq i32 %10, 0, !dbg !4864
  br i1 %11, label %12, label %13, !dbg !4865

12:                                               ; preds = %9, %6
  br label %13, !dbg !4866

13:                                               ; preds = %9, %1, %12
  %14 = phi i1 [ false, %12 ], [ false, %1 ], [ true, %9 ], !dbg !4845
  call void @llvm.lifetime.end.p0i8(i64 257, i8* nonnull %3) #37, !dbg !4867
  ret i1 %14, !dbg !4867
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !4868 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4872, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i8* %1, metadata !4873, metadata !DIExpression()), !dbg !4875
  call void @llvm.dbg.value(metadata i64 %2, metadata !4874, metadata !DIExpression()), !dbg !4875
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) #37, !dbg !4876
  ret i32 %4, !dbg !4877
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null(i32 noundef %0) local_unnamed_addr #18 !dbg !4878 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4882, metadata !DIExpression()), !dbg !4883
  %2 = tail call i8* @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !4884
  ret i8* %2, !dbg !4885
}

; Function Attrs: nounwind uwtable
define dso_local i8* @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #18 !dbg !4886 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4888, metadata !DIExpression()), !dbg !4890
  %2 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37, !dbg !4891
  call void @llvm.dbg.value(metadata i8* %2, metadata !4889, metadata !DIExpression()), !dbg !4890
  ret i8* %2, !dbg !4892
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, i8* noundef nonnull %1, i64 noundef %2) local_unnamed_addr #18 !dbg !4893 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4895, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i8* %1, metadata !4896, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i64 %2, metadata !4897, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.value(metadata i32 %0, metadata !4888, metadata !DIExpression()) #37, !dbg !4903
  %4 = tail call i8* @setlocale(i32 noundef %0, i8* noundef null) #37, !dbg !4905
  call void @llvm.dbg.value(metadata i8* %4, metadata !4889, metadata !DIExpression()) #37, !dbg !4903
  call void @llvm.dbg.value(metadata i8* %4, metadata !4898, metadata !DIExpression()), !dbg !4902
  %5 = icmp eq i8* %4, null, !dbg !4906
  br i1 %5, label %6, label %9, !dbg !4907

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !4908
  br i1 %7, label %19, label %8, !dbg !4911

8:                                                ; preds = %6
  store i8 0, i8* %1, align 1, !dbg !4912, !tbaa !590
  br label %19, !dbg !4913

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(i8* noundef nonnull %4) #38, !dbg !4914
  call void @llvm.dbg.value(metadata i64 %10, metadata !4899, metadata !DIExpression()), !dbg !4915
  %11 = icmp ult i64 %10, %2, !dbg !4916
  br i1 %11, label %12, label %14, !dbg !4918

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !4919
  call void @llvm.dbg.value(metadata i8* %1, metadata !4921, metadata !DIExpression()) #37, !dbg !4926
  call void @llvm.dbg.value(metadata i8* %4, metadata !4924, metadata !DIExpression()) #37, !dbg !4926
  call void @llvm.dbg.value(metadata i64 %13, metadata !4925, metadata !DIExpression()) #37, !dbg !4926
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !4928
  br label %19, !dbg !4929

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !4930
  br i1 %15, label %19, label %16, !dbg !4933

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !4934
  call void @llvm.dbg.value(metadata i8* %1, metadata !4921, metadata !DIExpression()) #37, !dbg !4936
  call void @llvm.dbg.value(metadata i8* %4, metadata !4924, metadata !DIExpression()) #37, !dbg !4936
  call void @llvm.dbg.value(metadata i64 %17, metadata !4925, metadata !DIExpression()) #37, !dbg !4936
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 1 %1, i8* noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !4938
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !4939
  store i8 0, i8* %18, align 1, !dbg !4940, !tbaa !590
  br label %19, !dbg !4941

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !4942
  ret i32 %20, !dbg !4943
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
attributes #14 = { nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #15 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #16 = { inaccessiblememonly mustprogress nofree nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #18 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #19 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #21 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #22 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #23 = { nofree nosync nounwind willreturn }
attributes #24 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #25 = { mustprogress nofree nounwind uwtable willreturn "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics,+v8a" }
attributes #26 = { argmemonly nofree nounwind readonly willreturn }
attributes #27 = { argmemonly nofree nounwind willreturn writeonly }
attributes #28 = { inaccessiblememonly nofree nosync nounwind willreturn }
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

!llvm.dbg.cu = !{!2, !166, !171, !199, !206, !370, !390, !393, !395, !398, !400, !402, !247, !257, !289, !404, !362, !410, !441, !443, !450, !452, !376, !454, !457, !459, !461}
!llvm.ident = !{!463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463, !463}
!llvm.module.flags = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474}

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
!170 = distinct !DIGlobalVariable(name: "base32_to_int", scope: !171, file: !172, line: 206, type: !193, isLocal: false, isDefinition: true)
!171 = distinct !DICompileUnit(language: DW_LANG_C99, file: !172, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !173, globals: !174, splitDebugInlining: false, nameTableKind: None)
!172 = !DIFile(filename: "lib/base32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "95987f1bba4d0dce67e048a4dafbe22a")
!173 = !{!78, !119, !60, !55, !53}
!174 = !{!175, !169}
!175 = !DIGlobalVariableExpression(var: !176, expr: !DIExpression())
!176 = distinct !DIGlobalVariable(name: "b32str", scope: !177, file: !172, line: 68, type: !190, isLocal: true, isDefinition: true)
!177 = distinct !DISubprogram(name: "base32_encode", scope: !172, file: !172, line: 65, type: !178, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !185)
!178 = !DISubroutineType(types: !179)
!179 = !{null, !180, !181, !184, !181}
!180 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !182, line: 130, baseType: !183)
!182 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !59, line: 35, baseType: !119)
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!185 = !{!186, !187, !188, !189}
!186 = !DILocalVariable(name: "in", arg: 1, scope: !177, file: !172, line: 65, type: !180)
!187 = !DILocalVariable(name: "inlen", arg: 2, scope: !177, file: !172, line: 65, type: !181)
!188 = !DILocalVariable(name: "out", arg: 3, scope: !177, file: !172, line: 66, type: !184)
!189 = !DILocalVariable(name: "outlen", arg: 4, scope: !177, file: !172, line: 66, type: !181)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 256, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 32)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 2048, elements: !195)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!195 = !{!196}
!196 = !DISubrange(count: 256)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(name: "file_name", scope: !199, file: !200, line: 45, type: !61, isLocal: true, isDefinition: true)
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !201, splitDebugInlining: false, nameTableKind: None)
!200 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!201 = !{!197, !202}
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !199, file: !200, line: 55, type: !78, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !206, file: !207, line: 66, type: !242, isLocal: false, isDefinition: true)
!206 = distinct !DICompileUnit(language: DW_LANG_C99, file: !207, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !208, globals: !209, splitDebugInlining: false, nameTableKind: None)
!207 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!208 = !{!55, !63}
!209 = !{!210, !236, !204, !238, !240}
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "old_file_name", scope: !212, file: !207, line: 304, type: !61, isLocal: true, isDefinition: true)
!212 = distinct !DISubprogram(name: "verror_at_line", scope: !207, file: !207, line: 298, type: !213, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !229)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !56, !56, !61, !7, !61, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !216, line: 52, baseType: !217)
!216 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !218, line: 32, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.0/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !220, baseType: !221)
!220 = !DIFile(filename: "lib/error.c", directory: "/src")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !222, size: 256, elements: !223)
!222 = !DINamespace(name: "std", scope: null)
!223 = !{!224, !225, !226, !227, !228}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !221, file: !220, baseType: !55, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !221, file: !220, baseType: !55, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !221, file: !220, baseType: !55, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !221, file: !220, baseType: !56, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !221, file: !220, baseType: !56, size: 32, offset: 224)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DILocalVariable(name: "status", arg: 1, scope: !212, file: !207, line: 298, type: !56)
!231 = !DILocalVariable(name: "errnum", arg: 2, scope: !212, file: !207, line: 298, type: !56)
!232 = !DILocalVariable(name: "file_name", arg: 3, scope: !212, file: !207, line: 298, type: !61)
!233 = !DILocalVariable(name: "line_number", arg: 4, scope: !212, file: !207, line: 298, type: !7)
!234 = !DILocalVariable(name: "message", arg: 5, scope: !212, file: !207, line: 298, type: !61)
!235 = !DILocalVariable(name: "args", arg: 6, scope: !212, file: !207, line: 298, type: !215)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(name: "old_line_number", scope: !212, file: !207, line: 305, type: !7, isLocal: true, isDefinition: true)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(name: "error_message_count", scope: !206, file: !207, line: 69, type: !7, isLocal: false, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !206, file: !207, line: 295, type: !56, isLocal: false, isDefinition: true)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null}
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "program_name", scope: !247, file: !248, line: 31, type: !61, isLocal: false, isDefinition: true)
!247 = distinct !DICompileUnit(language: DW_LANG_C99, file: !248, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !249, globals: !250, splitDebugInlining: false, nameTableKind: None)
!248 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!249 = !{!53}
!250 = !{!245}
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(name: "utf07FF", scope: !253, file: !254, line: 46, type: !284, isLocal: true, isDefinition: true)
!253 = distinct !DISubprogram(name: "proper_name_lite", scope: !254, file: !254, line: 38, type: !255, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !259)
!254 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!255 = !DISubroutineType(types: !256)
!256 = !{!61, !61, !61}
!257 = distinct !DICompileUnit(language: DW_LANG_C99, file: !254, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !258, splitDebugInlining: false, nameTableKind: None)
!258 = !{!251}
!259 = !{!260, !261, !262, !263, !268}
!260 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !253, file: !254, line: 38, type: !61)
!261 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !253, file: !254, line: 38, type: !61)
!262 = !DILocalVariable(name: "translation", scope: !253, file: !254, line: 40, type: !61)
!263 = !DILocalVariable(name: "w", scope: !253, file: !254, line: 47, type: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !265, line: 37, baseType: !266)
!265 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !118, line: 57, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !118, line: 42, baseType: !7)
!268 = !DILocalVariable(name: "mbs", scope: !253, file: !254, line: 48, type: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !271)
!270 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !273)
!272 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !273, file: !272, line: 15, baseType: !56, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !273, file: !272, line: 20, baseType: !277, size: 32, offset: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !272, line: 16, size: 32, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !277, file: !272, line: 18, baseType: !7, size: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !277, file: !272, line: 19, baseType: !281, size: 32)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 32, elements: !282)
!282 = !{!283}
!283 = !DISubrange(count: 4)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 2)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !289, file: !290, line: 76, type: !356, isLocal: false, isDefinition: true)
!289 = distinct !DICompileUnit(language: DW_LANG_C99, file: !290, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !291, retainedTypes: !297, globals: !298, splitDebugInlining: false, nameTableKind: None)
!290 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!291 = !{!14, !292, !37}
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !15, line: 254, baseType: !7, size: 32, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!295 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!296 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!297 = !{!56, !57, !58}
!298 = !{!287, !299, !305, !317, !319, !322, !345, !352, !354}
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !289, file: !290, line: 92, type: !301, isLocal: false, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 320, elements: !303)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!303 = !{!304}
!304 = !DISubrange(count: 10)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !289, file: !290, line: 1040, type: !307, isLocal: false, isDefinition: true)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !290, line: 56, size: 448, elements: !308)
!308 = !{!309, !310, !311, !315, !316}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !307, file: !290, line: 59, baseType: !14, size: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !290, line: 62, baseType: !56, size: 32, offset: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !307, file: !290, line: 66, baseType: !312, size: 256, offset: 64)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !307, file: !290, line: 69, baseType: !61, size: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !307, file: !290, line: 72, baseType: !61, size: 64, offset: 384)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !289, file: !290, line: 107, type: !307, isLocal: true, isDefinition: true)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(name: "slot0", scope: !289, file: !290, line: 831, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2048, elements: !195)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "quote", scope: !324, file: !290, line: 228, type: !343, isLocal: true, isDefinition: true)
!324 = distinct !DISubprogram(name: "gettext_quote", scope: !290, file: !290, line: 197, type: !325, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!61, !61, !14}
!327 = !{!328, !329, !330, !331, !332}
!328 = !DILocalVariable(name: "msgid", arg: 1, scope: !324, file: !290, line: 197, type: !61)
!329 = !DILocalVariable(name: "s", arg: 2, scope: !324, file: !290, line: 197, type: !14)
!330 = !DILocalVariable(name: "translation", scope: !324, file: !290, line: 199, type: !61)
!331 = !DILocalVariable(name: "w", scope: !324, file: !290, line: 229, type: !264)
!332 = !DILocalVariable(name: "mbs", scope: !324, file: !290, line: 230, type: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !336)
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !335, file: !272, line: 15, baseType: !56, size: 32)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !335, file: !272, line: 20, baseType: !339, size: 32, offset: 32)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !335, file: !272, line: 16, size: 32, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !339, file: !272, line: 18, baseType: !7, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !339, file: !272, line: 19, baseType: !281, size: 32)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !344)
!344 = !{!286, !283}
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(name: "slotvec", scope: !289, file: !290, line: 834, type: !347, isLocal: true, isDefinition: true)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !290, line: 823, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !348, file: !290, line: 825, baseType: !58, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !348, file: !290, line: 826, baseType: !53, size: 64, offset: 64)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "nslots", scope: !289, file: !290, line: 832, type: !56, isLocal: true, isDefinition: true)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "slotvec0", scope: !289, file: !290, line: 833, type: !348, isLocal: true, isDefinition: true)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 704, elements: !358)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!358 = !{!359}
!359 = !DISubrange(count: 11)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !362, file: !363, line: 26, type: !365, isLocal: false, isDefinition: true)
!362 = distinct !DICompileUnit(language: DW_LANG_C99, file: !363, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !364, splitDebugInlining: false, nameTableKind: None)
!363 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!364 = !{!360}
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 47)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "exit_failure", scope: !370, file: !371, line: 24, type: !373, isLocal: false, isDefinition: true)
!370 = distinct !DICompileUnit(language: DW_LANG_C99, file: !371, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !372, splitDebugInlining: false, nameTableKind: None)
!371 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!372 = !{!368}
!373 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !56)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "internal_state", scope: !376, file: !377, line: 97, type: !380, isLocal: true, isDefinition: true)
!376 = distinct !DICompileUnit(language: DW_LANG_C99, file: !377, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !378, globals: !379, splitDebugInlining: false, nameTableKind: None)
!377 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!378 = !{!55, !58, !63}
!379 = !{!374}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !270, line: 6, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !272, line: 21, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !272, line: 13, size: 64, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !382, file: !272, line: 15, baseType: !56, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !382, file: !272, line: 20, baseType: !386, size: 32, offset: 32)
!386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !272, line: 16, size: 32, elements: !387)
!387 = !{!388, !389}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !386, file: !272, line: 18, baseType: !7, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !386, file: !272, line: 19, baseType: !281, size: 32)
!390 = distinct !DICompileUnit(language: DW_LANG_C99, file: !391, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !392, splitDebugInlining: false, nameTableKind: None)
!391 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!392 = !{!28}
!393 = distinct !DICompileUnit(language: DW_LANG_C99, file: !394, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!394 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!395 = distinct !DICompileUnit(language: DW_LANG_C99, file: !396, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!396 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!397 = !{!55}
!398 = distinct !DICompileUnit(language: DW_LANG_C99, file: !399, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!399 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!400 = distinct !DICompileUnit(language: DW_LANG_C99, file: !401, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!401 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!402 = distinct !DICompileUnit(language: DW_LANG_C99, file: !403, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!403 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!404 = distinct !DICompileUnit(language: DW_LANG_C99, file: !405, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !406, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!405 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!406 = !{!407}
!407 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !405, line: 40, baseType: !7, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!410 = distinct !DICompileUnit(language: DW_LANG_C99, file: !411, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !412, retainedTypes: !440, splitDebugInlining: false, nameTableKind: None)
!411 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!412 = !{!413, !425}
!413 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !414, file: !411, line: 188, baseType: !7, size: 32, elements: !423)
!414 = distinct !DISubprogram(name: "x2nrealloc", scope: !411, file: !411, line: 176, type: !415, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !418)
!415 = !DISubroutineType(types: !416)
!416 = !{!55, !55, !417, !58}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!418 = !{!419, !420, !421, !422}
!419 = !DILocalVariable(name: "p", arg: 1, scope: !414, file: !411, line: 176, type: !55)
!420 = !DILocalVariable(name: "pn", arg: 2, scope: !414, file: !411, line: 176, type: !417)
!421 = !DILocalVariable(name: "s", arg: 3, scope: !414, file: !411, line: 176, type: !58)
!422 = !DILocalVariable(name: "n", scope: !414, file: !411, line: 178, type: !58)
!423 = !{!424}
!424 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !426, file: !411, line: 228, baseType: !7, size: 32, elements: !423)
!426 = distinct !DISubprogram(name: "xpalloc", scope: !411, file: !411, line: 223, type: !427, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !430)
!427 = !DISubroutineType(types: !428)
!428 = !{!55, !55, !429, !181, !183, !181}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439}
!431 = !DILocalVariable(name: "pa", arg: 1, scope: !426, file: !411, line: 223, type: !55)
!432 = !DILocalVariable(name: "pn", arg: 2, scope: !426, file: !411, line: 223, type: !429)
!433 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !426, file: !411, line: 223, type: !181)
!434 = !DILocalVariable(name: "n_max", arg: 4, scope: !426, file: !411, line: 223, type: !183)
!435 = !DILocalVariable(name: "s", arg: 5, scope: !426, file: !411, line: 223, type: !181)
!436 = !DILocalVariable(name: "n0", scope: !426, file: !411, line: 230, type: !181)
!437 = !DILocalVariable(name: "n", scope: !426, file: !411, line: 237, type: !181)
!438 = !DILocalVariable(name: "nbytes", scope: !426, file: !411, line: 248, type: !181)
!439 = !DILocalVariable(name: "adjusted_nbytes", scope: !426, file: !411, line: 252, type: !181)
!440 = !{!53, !55, !78, !119, !60}
!441 = distinct !DICompileUnit(language: DW_LANG_C99, file: !442, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!443 = distinct !DICompileUnit(language: DW_LANG_C99, file: !444, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !445, retainedTypes: !446, splitDebugInlining: false, nameTableKind: None)
!444 = !DIFile(filename: "lib/xstrtoimax.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d613cb456542443dde992ed5c05f2acb")
!445 = !{!5}
!446 = !{!78, !119, !60, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !448, line: 101, baseType: !449)
!448 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !118, line: 72, baseType: !119)
!450 = distinct !DICompileUnit(language: DW_LANG_C99, file: !451, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!451 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!452 = distinct !DICompileUnit(language: DW_LANG_C99, file: !453, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!453 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!454 = distinct !DICompileUnit(language: DW_LANG_C99, file: !455, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !456, splitDebugInlining: false, nameTableKind: None)
!455 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!456 = !{!78, !60, !55}
!457 = distinct !DICompileUnit(language: DW_LANG_C99, file: !458, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!458 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!459 = distinct !DICompileUnit(language: DW_LANG_C99, file: !460, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!460 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!461 = distinct !DICompileUnit(language: DW_LANG_C99, file: !462, producer: "Ubuntu clang version 14.0.0-1ubuntu1.1", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !397, splitDebugInlining: false, nameTableKind: None)
!462 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!463 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!464 = !{i32 7, !"Dwarf Version", i32 5}
!465 = !{i32 2, !"Debug Info Version", i32 3}
!466 = !{i32 1, !"wchar_size", i32 4}
!467 = !{i32 1, !"branch-target-enforcement", i32 0}
!468 = !{i32 1, !"sign-return-address", i32 0}
!469 = !{i32 1, !"sign-return-address-all", i32 0}
!470 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!471 = !{i32 7, !"PIC Level", i32 2}
!472 = !{i32 7, !"PIE Level", i32 2}
!473 = !{i32 7, !"uwtable", i32 1}
!474 = !{i32 7, !"frame-pointer", i32 1}
!475 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 97, type: !476, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !478)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !56}
!478 = !{!479}
!479 = !DILocalVariable(name: "status", arg: 1, scope: !475, file: !3, line: 97, type: !56)
!480 = !DILocation(line: 0, scope: !475)
!481 = !DILocation(line: 99, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !3, line: 99, column: 7)
!483 = !DILocation(line: 99, column: 7, scope: !475)
!484 = !DILocation(line: 100, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !3, line: 100, column: 5)
!486 = !{!487, !487, i64 0}
!487 = !{!"any pointer", !488, i64 0}
!488 = !{!"omnipotent char", !489, i64 0}
!489 = !{!"Simple C/C++ TBAA"}
!490 = !DILocation(line: 103, column: 7, scope: !491)
!491 = distinct !DILexicalBlock(scope: !482, file: !3, line: 102, column: 5)
!492 = !DILocation(line: 112, column: 7, scope: !491)
!493 = !DILocation(line: 729, column: 3, scope: !494, inlinedAt: !496)
!494 = distinct !DISubprogram(name: "emit_stdin_note", scope: !68, file: !68, line: 727, type: !243, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!495 = !{}
!496 = distinct !DILocation(line: 117, column: 7, scope: !491)
!497 = !DILocation(line: 736, column: 3, scope: !498, inlinedAt: !499)
!498 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !68, file: !68, line: 734, type: !243, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!499 = distinct !DILocation(line: 118, column: 7, scope: !491)
!500 = !DILocation(line: 153, column: 7, scope: !491)
!501 = !DILocation(line: 157, column: 7, scope: !491)
!502 = !DILocation(line: 161, column: 7, scope: !491)
!503 = !DILocation(line: 174, column: 7, scope: !491)
!504 = !DILocation(line: 175, column: 7, scope: !491)
!505 = !DILocation(line: 184, column: 7, scope: !491)
!506 = !DILocalVariable(name: "program", arg: 1, scope: !507, file: !68, line: 836, type: !61)
!507 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !68, file: !68, line: 836, type: !508, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !61}
!510 = !{!506, !511, !520, !521, !523, !524}
!511 = !DILocalVariable(name: "infomap", scope: !507, file: !68, line: 838, type: !512)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 896, elements: !518)
!513 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !507, file: !68, line: 838, size: 128, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !514, file: !68, line: 838, baseType: !61, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !514, file: !68, line: 838, baseType: !61, size: 64, offset: 64)
!518 = !{!519}
!519 = !DISubrange(count: 7)
!520 = !DILocalVariable(name: "node", scope: !507, file: !68, line: 848, type: !61)
!521 = !DILocalVariable(name: "map_prog", scope: !507, file: !68, line: 849, type: !522)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!523 = !DILocalVariable(name: "lc_messages", scope: !507, file: !68, line: 861, type: !61)
!524 = !DILocalVariable(name: "url_program", scope: !507, file: !68, line: 874, type: !61)
!525 = !DILocation(line: 0, scope: !507, inlinedAt: !526)
!526 = distinct !DILocation(line: 192, column: 7, scope: !491)
!527 = !DILocation(line: 838, column: 3, scope: !507, inlinedAt: !526)
!528 = !DILocation(line: 838, column: 67, scope: !507, inlinedAt: !526)
!529 = !DILocation(line: 849, column: 36, scope: !507, inlinedAt: !526)
!530 = !DILocation(line: 851, column: 3, scope: !507, inlinedAt: !526)
!531 = !DILocalVariable(name: "__s1", arg: 1, scope: !532, file: !533, line: 1359, type: !61)
!532 = distinct !DISubprogram(name: "streq", scope: !533, file: !533, line: 1359, type: !534, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!533 = !DIFile(filename: "./lib/string.h", directory: "/src")
!534 = !DISubroutineType(types: !535)
!535 = !{!78, !61, !61}
!536 = !{!531, !537}
!537 = !DILocalVariable(name: "__s2", arg: 2, scope: !532, file: !533, line: 1359, type: !61)
!538 = !DILocation(line: 0, scope: !532, inlinedAt: !539)
!539 = distinct !DILocation(line: 851, column: 33, scope: !507, inlinedAt: !526)
!540 = !DILocation(line: 1361, column: 11, scope: !532, inlinedAt: !539)
!541 = !DILocation(line: 1361, column: 10, scope: !532, inlinedAt: !539)
!542 = !DILocation(line: 852, column: 13, scope: !507, inlinedAt: !526)
!543 = !DILocation(line: 851, column: 20, scope: !507, inlinedAt: !526)
!544 = !{!545, !487, i64 0}
!545 = !{!"infomap", !487, i64 0, !487, i64 8}
!546 = !DILocation(line: 851, column: 10, scope: !507, inlinedAt: !526)
!547 = !DILocation(line: 851, column: 28, scope: !507, inlinedAt: !526)
!548 = distinct !{!548, !530, !542, !549}
!549 = !{!"llvm.loop.mustprogress"}
!550 = !DILocation(line: 854, column: 17, scope: !551, inlinedAt: !526)
!551 = distinct !DILexicalBlock(scope: !507, file: !68, line: 854, column: 7)
!552 = !{!545, !487, i64 8}
!553 = !DILocation(line: 854, column: 7, scope: !551, inlinedAt: !526)
!554 = !DILocation(line: 854, column: 7, scope: !507, inlinedAt: !526)
!555 = !DILocation(line: 857, column: 3, scope: !507, inlinedAt: !526)
!556 = !DILocation(line: 861, column: 29, scope: !507, inlinedAt: !526)
!557 = !DILocation(line: 862, column: 7, scope: !558, inlinedAt: !526)
!558 = distinct !DILexicalBlock(scope: !507, file: !68, line: 862, column: 7)
!559 = !DILocation(line: 862, column: 19, scope: !558, inlinedAt: !526)
!560 = !DILocation(line: 862, column: 22, scope: !558, inlinedAt: !526)
!561 = !DILocation(line: 862, column: 7, scope: !507, inlinedAt: !526)
!562 = !DILocation(line: 868, column: 7, scope: !563, inlinedAt: !526)
!563 = distinct !DILexicalBlock(scope: !558, file: !68, line: 863, column: 5)
!564 = !DILocation(line: 870, column: 5, scope: !563, inlinedAt: !526)
!565 = !DILocation(line: 0, scope: !532, inlinedAt: !566)
!566 = distinct !DILocation(line: 874, column: 29, scope: !507, inlinedAt: !526)
!567 = !DILocation(line: 875, column: 3, scope: !507, inlinedAt: !526)
!568 = !DILocation(line: 877, column: 3, scope: !507, inlinedAt: !526)
!569 = !DILocation(line: 879, column: 1, scope: !507, inlinedAt: !526)
!570 = !DILocation(line: 195, column: 3, scope: !475)
!571 = !DISubprogram(name: "dcgettext", scope: !572, file: !572, line: 51, type: !573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!572 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!573 = !DISubroutineType(types: !574)
!574 = !{!53, !61, !61, !56}
!575 = !DISubprogram(name: "fputs_unlocked", scope: !216, file: !216, line: 691, type: !576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!576 = !DISubroutineType(types: !577)
!577 = !{!56, !180, !578}
!578 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!579 = !DILocation(line: 0, scope: !67)
!580 = !DILocation(line: 581, column: 7, scope: !76)
!581 = !{!582, !582, i64 0}
!582 = !{!"int", !488, i64 0}
!583 = !DILocation(line: 581, column: 19, scope: !76)
!584 = !DILocation(line: 581, column: 7, scope: !67)
!585 = !DILocation(line: 585, column: 26, scope: !75)
!586 = !DILocation(line: 0, scope: !75)
!587 = !DILocation(line: 586, column: 23, scope: !75)
!588 = !DILocation(line: 586, column: 28, scope: !75)
!589 = !DILocation(line: 586, column: 32, scope: !75)
!590 = !{!488, !488, i64 0}
!591 = !DILocation(line: 586, column: 38, scope: !75)
!592 = !DILocation(line: 0, scope: !532, inlinedAt: !593)
!593 = distinct !DILocation(line: 586, column: 41, scope: !75)
!594 = !DILocation(line: 1361, column: 11, scope: !532, inlinedAt: !593)
!595 = !DILocation(line: 1361, column: 10, scope: !532, inlinedAt: !593)
!596 = !DILocation(line: 586, column: 19, scope: !75)
!597 = !DILocation(line: 587, column: 5, scope: !75)
!598 = !DILocation(line: 588, column: 7, scope: !599)
!599 = distinct !DILexicalBlock(scope: !67, file: !68, line: 588, column: 7)
!600 = !DILocation(line: 588, column: 7, scope: !67)
!601 = !DILocation(line: 590, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !599, file: !68, line: 589, column: 5)
!603 = !DILocation(line: 591, column: 7, scope: !602)
!604 = !DILocation(line: 595, column: 37, scope: !67)
!605 = !DILocation(line: 595, column: 35, scope: !67)
!606 = !DILocation(line: 596, column: 29, scope: !67)
!607 = !DILocation(line: 597, column: 8, scope: !84)
!608 = !DILocation(line: 597, column: 7, scope: !67)
!609 = !DILocation(line: 604, column: 24, scope: !83)
!610 = !DILocation(line: 604, column: 12, scope: !84)
!611 = !DILocation(line: 0, scope: !82)
!612 = !DILocation(line: 610, column: 16, scope: !82)
!613 = !DILocation(line: 610, column: 7, scope: !82)
!614 = !DILocation(line: 611, column: 21, scope: !82)
!615 = !{!616, !616, i64 0}
!616 = !{!"short", !488, i64 0}
!617 = !DILocation(line: 611, column: 19, scope: !82)
!618 = !DILocation(line: 611, column: 16, scope: !82)
!619 = !DILocation(line: 610, column: 30, scope: !82)
!620 = distinct !{!620, !613, !614, !549}
!621 = !DILocation(line: 612, column: 18, scope: !622)
!622 = distinct !DILexicalBlock(scope: !82, file: !68, line: 612, column: 11)
!623 = !DILocation(line: 612, column: 11, scope: !82)
!624 = !DILocation(line: 620, column: 23, scope: !67)
!625 = !DILocation(line: 625, column: 39, scope: !67)
!626 = !DILocation(line: 626, column: 3, scope: !67)
!627 = !DILocation(line: 626, column: 10, scope: !67)
!628 = !DILocation(line: 626, column: 21, scope: !67)
!629 = !DILocation(line: 628, column: 44, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !68, line: 628, column: 11)
!631 = distinct !DILexicalBlock(scope: !67, file: !68, line: 627, column: 5)
!632 = !DILocation(line: 628, column: 32, scope: !630)
!633 = !DILocation(line: 628, column: 49, scope: !630)
!634 = !DILocation(line: 628, column: 11, scope: !631)
!635 = !DILocation(line: 630, column: 11, scope: !636)
!636 = distinct !DILexicalBlock(scope: !631, file: !68, line: 630, column: 11)
!637 = !DILocation(line: 630, column: 11, scope: !631)
!638 = !DILocation(line: 632, column: 26, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !68, line: 632, column: 15)
!640 = distinct !DILexicalBlock(scope: !636, file: !68, line: 631, column: 9)
!641 = !DILocation(line: 632, column: 34, scope: !639)
!642 = !DILocation(line: 632, column: 37, scope: !639)
!643 = !DILocation(line: 632, column: 15, scope: !640)
!644 = !DILocation(line: 636, column: 29, scope: !645)
!645 = distinct !DILexicalBlock(scope: !640, file: !68, line: 636, column: 15)
!646 = !DILocation(line: 640, column: 16, scope: !631)
!647 = distinct !{!647, !626, !648, !549}
!648 = !DILocation(line: 641, column: 5, scope: !67)
!649 = !DILocation(line: 644, column: 3, scope: !67)
!650 = !DILocation(line: 0, scope: !532, inlinedAt: !651)
!651 = distinct !DILocation(line: 648, column: 31, scope: !67)
!652 = !DILocation(line: 0, scope: !532, inlinedAt: !653)
!653 = distinct !DILocation(line: 649, column: 31, scope: !67)
!654 = !DILocation(line: 0, scope: !532, inlinedAt: !655)
!655 = distinct !DILocation(line: 650, column: 31, scope: !67)
!656 = !DILocation(line: 0, scope: !532, inlinedAt: !657)
!657 = distinct !DILocation(line: 651, column: 31, scope: !67)
!658 = !DILocation(line: 0, scope: !532, inlinedAt: !659)
!659 = distinct !DILocation(line: 652, column: 31, scope: !67)
!660 = !DILocation(line: 0, scope: !532, inlinedAt: !661)
!661 = distinct !DILocation(line: 653, column: 31, scope: !67)
!662 = !DILocation(line: 0, scope: !532, inlinedAt: !663)
!663 = distinct !DILocation(line: 654, column: 31, scope: !67)
!664 = !DILocation(line: 0, scope: !532, inlinedAt: !665)
!665 = distinct !DILocation(line: 655, column: 31, scope: !67)
!666 = !DILocation(line: 0, scope: !532, inlinedAt: !667)
!667 = distinct !DILocation(line: 656, column: 31, scope: !67)
!668 = !DILocation(line: 0, scope: !532, inlinedAt: !669)
!669 = distinct !DILocation(line: 657, column: 31, scope: !67)
!670 = !DILocation(line: 663, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !67, file: !68, line: 663, column: 7)
!672 = !DILocation(line: 664, column: 7, scope: !671)
!673 = !DILocation(line: 664, column: 10, scope: !671)
!674 = !DILocation(line: 663, column: 7, scope: !67)
!675 = !DILocation(line: 669, column: 7, scope: !676)
!676 = distinct !DILexicalBlock(scope: !671, file: !68, line: 665, column: 5)
!677 = !DILocation(line: 671, column: 5, scope: !676)
!678 = !DILocation(line: 676, column: 7, scope: !679)
!679 = distinct !DILexicalBlock(scope: !671, file: !68, line: 673, column: 5)
!680 = !DILocation(line: 679, column: 3, scope: !67)
!681 = !DILocation(line: 683, column: 3, scope: !67)
!682 = !DILocation(line: 686, column: 3, scope: !67)
!683 = !DILocation(line: 688, column: 3, scope: !67)
!684 = !DILocation(line: 691, column: 3, scope: !67)
!685 = !DILocation(line: 695, column: 3, scope: !67)
!686 = !DILocation(line: 696, column: 1, scope: !67)
!687 = !DISubprogram(name: "setlocale", scope: !688, file: !688, line: 122, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!688 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!689 = !DISubroutineType(types: !690)
!690 = !{!53, !56, !61}
!691 = !DISubprogram(name: "getenv", scope: !692, file: !692, line: 641, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!692 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!693 = !DISubroutineType(types: !694)
!694 = !{!53, !61}
!695 = !DISubprogram(name: "fwrite_unlocked", scope: !216, file: !216, line: 704, type: !696, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!696 = !DISubroutineType(types: !697)
!697 = !{!58, !698, !58, !58, !578}
!698 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!701 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 1630, type: !702, scopeLine: 1631, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !705)
!702 = !DISubroutineType(types: !703)
!703 = !{!56, !56, !704}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !714, !717}
!706 = !DILocalVariable(name: "argc", arg: 1, scope: !701, file: !3, line: 1630, type: !56)
!707 = !DILocalVariable(name: "argv", arg: 2, scope: !701, file: !3, line: 1630, type: !704)
!708 = !DILocalVariable(name: "opt", scope: !701, file: !3, line: 1632, type: !56)
!709 = !DILocalVariable(name: "input_fh", scope: !701, file: !3, line: 1633, type: !91)
!710 = !DILocalVariable(name: "infile", scope: !701, file: !3, line: 1634, type: !61)
!711 = !DILocalVariable(name: "decode", scope: !701, file: !3, line: 1637, type: !78)
!712 = !DILocalVariable(name: "ignore_garbage", scope: !701, file: !3, line: 1639, type: !78)
!713 = !DILocalVariable(name: "wrap_column", scope: !701, file: !3, line: 1641, type: !181)
!714 = !DILocalVariable(name: "w", scope: !715, file: !3, line: 1664, type: !447)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 1663, column: 9)
!716 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1657, column: 7)
!717 = !DILocalVariable(name: "s_err", scope: !715, file: !3, line: 1665, type: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !6, line: 43, baseType: !5)
!719 = !DILocation(line: 0, scope: !701)
!720 = !DILocation(line: 1648, column: 21, scope: !701)
!721 = !DILocation(line: 1648, column: 3, scope: !701)
!722 = !DILocation(line: 1649, column: 3, scope: !701)
!723 = !DILocation(line: 1650, column: 3, scope: !701)
!724 = !DILocation(line: 1651, column: 3, scope: !701)
!725 = !DILocation(line: 1653, column: 3, scope: !701)
!726 = !DILocation(line: 1655, column: 3, scope: !701)
!727 = !DILocation(line: 1641, column: 9, scope: !701)
!728 = !DILocation(line: 1655, column: 17, scope: !701)
!729 = distinct !{!729, !726, !730, !549}
!730 = !DILocation(line: 1698, column: 7, scope: !701)
!731 = !DILocation(line: 1664, column: 11, scope: !715)
!732 = !DILocation(line: 1665, column: 44, scope: !715)
!733 = !DILocation(line: 0, scope: !715)
!734 = !DILocation(line: 1665, column: 32, scope: !715)
!735 = !DILocation(line: 1666, column: 32, scope: !736)
!736 = distinct !DILexicalBlock(scope: !715, file: !3, line: 1666, column: 15)
!737 = !DILocation(line: 1666, column: 40, scope: !736)
!738 = !DILocation(line: 1667, column: 13, scope: !736)
!739 = !DILocation(line: 1669, column: 31, scope: !715)
!740 = !DILocation(line: 1669, column: 51, scope: !715)
!741 = !DILocation(line: 1670, column: 9, scope: !716)
!742 = !DILocation(line: 1671, column: 9, scope: !716)
!743 = !DILocation(line: 1691, column: 7, scope: !716)
!744 = !DILocation(line: 1693, column: 7, scope: !716)
!745 = !DILocation(line: 1696, column: 9, scope: !716)
!746 = !DILocation(line: 1805, column: 14, scope: !747)
!747 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1805, column: 7)
!748 = !DILocation(line: 1805, column: 12, scope: !747)
!749 = !DILocation(line: 1805, column: 21, scope: !747)
!750 = !DILocation(line: 1805, column: 7, scope: !701)
!751 = !DILocation(line: 1807, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !747, file: !3, line: 1806, column: 5)
!753 = !DILocation(line: 1808, column: 7, scope: !752)
!754 = !DILocation(line: 1811, column: 14, scope: !755)
!755 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1811, column: 7)
!756 = !DILocation(line: 1811, column: 7, scope: !701)
!757 = !DILocation(line: 1812, column: 14, scope: !755)
!758 = !DILocation(line: 1812, column: 5, scope: !755)
!759 = !DILocation(line: 0, scope: !755)
!760 = !DILocation(line: 0, scope: !532, inlinedAt: !761)
!761 = distinct !DILocation(line: 1816, column: 7, scope: !762)
!762 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1816, column: 7)
!763 = !DILocation(line: 1361, column: 11, scope: !532, inlinedAt: !761)
!764 = !DILocation(line: 1361, column: 10, scope: !532, inlinedAt: !761)
!765 = !DILocation(line: 1816, column: 7, scope: !701)
!766 = !DILocation(line: 1819, column: 18, scope: !767)
!767 = distinct !DILexicalBlock(scope: !762, file: !3, line: 1817, column: 5)
!768 = !DILocation(line: 1820, column: 5, scope: !767)
!769 = !DILocation(line: 1823, column: 18, scope: !770)
!770 = distinct !DILexicalBlock(scope: !762, file: !3, line: 1822, column: 5)
!771 = !DILocation(line: 1824, column: 20, scope: !772)
!772 = distinct !DILexicalBlock(scope: !770, file: !3, line: 1824, column: 11)
!773 = !DILocation(line: 1824, column: 11, scope: !770)
!774 = !DILocation(line: 1825, column: 9, scope: !772)
!775 = !DILocation(line: 0, scope: !762)
!776 = !DILocation(line: 1828, column: 3, scope: !701)
!777 = !DILocation(line: 0, scope: !778)
!778 = distinct !DILexicalBlock(scope: !701, file: !3, line: 1830, column: 7)
!779 = !DILocation(line: 1830, column: 7, scope: !701)
!780 = !DILocation(line: 1831, column: 5, scope: !778)
!781 = !DILocation(line: 1833, column: 5, scope: !778)
!782 = !DISubprogram(name: "bindtextdomain", scope: !572, file: !572, line: 86, type: !783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!783 = !DISubroutineType(types: !784)
!784 = !{!53, !61, !61}
!785 = !DISubprogram(name: "textdomain", scope: !572, file: !572, line: 82, type: !693, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!786 = !DISubprogram(name: "atexit", scope: !692, file: !692, line: 602, type: !787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!787 = !DISubroutineType(types: !788)
!788 = !{!56, !242}
!789 = !DISubprogram(name: "getopt_long", scope: !155, file: !155, line: 66, type: !790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!790 = !DISubroutineType(types: !791)
!791 = !{!56, !56, !792, !61, !794, !160}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!795 = distinct !DISubprogram(name: "do_decode", scope: !3, file: !3, line: 1562, type: !796, scopeLine: 1563, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !91, !61, !91, !78}
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !813, !815, !817, !821, !823, !826, !827}
!799 = !DILocalVariable(name: "in", arg: 1, scope: !795, file: !3, line: 1562, type: !91)
!800 = !DILocalVariable(name: "infile", arg: 2, scope: !795, file: !3, line: 1562, type: !61)
!801 = !DILocalVariable(name: "out", arg: 3, scope: !795, file: !3, line: 1562, type: !91)
!802 = !DILocalVariable(name: "ignore_garbage", arg: 4, scope: !795, file: !3, line: 1562, type: !78)
!803 = !DILocalVariable(name: "inbuf", scope: !795, file: !3, line: 1564, type: !53)
!804 = !DILocalVariable(name: "outbuf", scope: !795, file: !3, line: 1564, type: !53)
!805 = !DILocalVariable(name: "sum", scope: !795, file: !3, line: 1565, type: !181)
!806 = !DILocalVariable(name: "ctx", scope: !795, file: !3, line: 1566, type: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !808, line: 47, size: 96, elements: !809)
!808 = !DIFile(filename: "./lib/base32.h", directory: "/src", checksumkind: CSK_MD5, checksum: "e713a01df52addfef9645906d93b4fcb")
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !807, file: !808, line: 49, baseType: !56, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !807, file: !808, line: 50, baseType: !812, size: 64, offset: 32)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 64, elements: !313)
!813 = !DILocalVariable(name: "ok", scope: !814, file: !3, line: 1578, type: !78)
!814 = distinct !DILexicalBlock(scope: !795, file: !3, line: 1577, column: 5)
!815 = !DILocalVariable(name: "n", scope: !816, file: !3, line: 1583, type: !181)
!816 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1582, column: 9)
!817 = !DILocalVariable(name: "i", scope: !818, file: !3, line: 1588, type: !181)
!818 = distinct !DILexicalBlock(scope: !819, file: !3, line: 1588, column: 15)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1587, column: 13)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1586, column: 15)
!821 = !DILocalVariable(name: "n", scope: !822, file: !3, line: 1607, type: !181)
!822 = distinct !DILexicalBlock(scope: !814, file: !3, line: 1606, column: 9)
!823 = !DILocalVariable(name: "__ptr", scope: !824, file: !3, line: 1613, type: !61)
!824 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1613, column: 15)
!825 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1613, column: 15)
!826 = !DILocalVariable(name: "__stream", scope: !824, file: !3, line: 1613, type: !91)
!827 = !DILocalVariable(name: "__cnt", scope: !824, file: !3, line: 1613, type: !58)
!828 = !DILocation(line: 0, scope: !795)
!829 = !DILocation(line: 1566, column: 3, scope: !795)
!830 = !DILocation(line: 1566, column: 30, scope: !795)
!831 = !DILocation(line: 1568, column: 11, scope: !795)
!832 = !DILocation(line: 1569, column: 12, scope: !795)
!833 = !DILocalVariable(name: "ctx", arg: 1, scope: !834, file: !808, line: 74, type: !837)
!834 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !808, file: !808, line: 74, type: !835, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !838)
!835 = !DISubroutineType(types: !836)
!836 = !{null, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!838 = !{!833}
!839 = !DILocation(line: 0, scope: !834, inlinedAt: !840)
!840 = distinct !DILocation(line: 1574, column: 3, scope: !795)
!841 = !DILocation(line: 76, column: 8, scope: !834, inlinedAt: !840)
!842 = !DILocation(line: 76, column: 10, scope: !834, inlinedAt: !840)
!843 = !{!844, !582, i64 0}
!844 = !{!"base32_decode_context", !582, i64 0, !488, i64 4}
!845 = !DILocation(line: 1576, column: 3, scope: !795)
!846 = !DILocation(line: 0, scope: !814)
!847 = !DILocation(line: 1583, column: 21, scope: !816)
!848 = !DILocation(line: 0, scope: !816)
!849 = !DILocation(line: 1586, column: 15, scope: !816)
!850 = !DILocation(line: 0, scope: !818)
!851 = !DILocation(line: 1590, column: 42, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 1590, column: 23)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 1589, column: 17)
!854 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1588, column: 15)
!855 = !DILocation(line: 1590, column: 32, scope: !852)
!856 = !DILocalVariable(name: "ch", arg: 1, scope: !857, file: !808, line: 56, type: !63)
!857 = distinct !DISubprogram(name: "isubase32", scope: !808, file: !808, line: 56, type: !858, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!78, !63}
!860 = !{!856}
!861 = !DILocation(line: 0, scope: !857, inlinedAt: !862)
!862 = distinct !DILocation(line: 1590, column: 23, scope: !852)
!863 = !DILocation(line: 58, column: 10, scope: !857, inlinedAt: !862)
!864 = !DILocation(line: 58, column: 44, scope: !857, inlinedAt: !862)
!865 = !DILocation(line: 58, column: 41, scope: !857, inlinedAt: !862)
!866 = !DILocation(line: 1591, column: 23, scope: !852)
!867 = !DILocalVariable(name: "len", arg: 1, scope: !868, file: !3, line: 200, type: !56)
!868 = distinct !DISubprogram(name: "base32_required_padding", scope: !3, file: !3, line: 200, type: !869, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!56, !56}
!871 = !{!867, !872}
!872 = !DILocalVariable(name: "partial", scope: !868, file: !3, line: 202, type: !56)
!873 = !DILocation(line: 0, scope: !868, inlinedAt: !874)
!874 = distinct !DILocation(line: 1591, column: 27, scope: !852)
!875 = !DILocation(line: 1592, column: 22, scope: !852)
!876 = !DILocation(line: 1592, column: 21, scope: !852)
!877 = !DILocation(line: 1594, column: 42, scope: !852)
!878 = !DILocation(line: 1594, column: 63, scope: !852)
!879 = !DILocation(line: 1594, column: 68, scope: !852)
!880 = !DILocation(line: 1594, column: 72, scope: !852)
!881 = !DILocalVariable(name: "__dest", arg: 1, scope: !882, file: !883, line: 34, type: !55)
!882 = distinct !DISubprogram(name: "memmove", scope: !883, file: !883, line: 34, type: !884, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !886)
!883 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!884 = !DISubroutineType(types: !885)
!885 = !{!55, !55, !699, !58}
!886 = !{!881, !887, !888}
!887 = !DILocalVariable(name: "__src", arg: 2, scope: !882, file: !883, line: 34, type: !699)
!888 = !DILocalVariable(name: "__len", arg: 3, scope: !882, file: !883, line: 34, type: !58)
!889 = !DILocation(line: 0, scope: !882, inlinedAt: !890)
!890 = distinct !DILocation(line: 1594, column: 21, scope: !852)
!891 = !DILocation(line: 36, column: 10, scope: !882, inlinedAt: !890)
!892 = !DILocation(line: 1588, column: 35, scope: !854)
!893 = !DILocation(line: 1588, column: 39, scope: !854)
!894 = !DILocation(line: 1588, column: 15, scope: !818)
!895 = distinct !{!895, !894, !896, !549}
!896 = !DILocation(line: 1595, column: 17, scope: !818)
!897 = !DILocation(line: 1583, column: 17, scope: !816)
!898 = !DILocation(line: 1598, column: 15, scope: !816)
!899 = !DILocalVariable(name: "__stream", arg: 1, scope: !900, file: !901, line: 135, type: !91)
!900 = distinct !DISubprogram(name: "ferror_unlocked", scope: !901, file: !901, line: 135, type: !902, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!901 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!902 = !DISubroutineType(types: !903)
!903 = !{!56, !91}
!904 = !{!899}
!905 = !DILocation(line: 0, scope: !900, inlinedAt: !906)
!906 = distinct !DILocation(line: 1600, column: 15, scope: !907)
!907 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1600, column: 15)
!908 = !DILocation(line: 137, column: 10, scope: !900, inlinedAt: !906)
!909 = !{!910, !582, i64 0}
!910 = !{!"_IO_FILE", !582, i64 0, !487, i64 8, !487, i64 16, !487, i64 24, !487, i64 32, !487, i64 40, !487, i64 48, !487, i64 56, !487, i64 64, !487, i64 72, !487, i64 80, !487, i64 88, !487, i64 96, !487, i64 104, !582, i64 112, !582, i64 116, !911, i64 120, !616, i64 128, !488, i64 130, !488, i64 131, !487, i64 136, !911, i64 144, !487, i64 152, !487, i64 160, !487, i64 168, !487, i64 176, !911, i64 184, !582, i64 192, !488, i64 196}
!911 = !{!"long", !488, i64 0}
!912 = !DILocation(line: 1600, column: 15, scope: !907)
!913 = !DILocation(line: 1600, column: 15, scope: !816)
!914 = !DILocation(line: 1601, column: 13, scope: !907)
!915 = !DILocation(line: 1603, column: 18, scope: !814)
!916 = !DILocation(line: 1603, column: 48, scope: !814)
!917 = !DILocalVariable(name: "__stream", arg: 1, scope: !918, file: !901, line: 128, type: !91)
!918 = distinct !DISubprogram(name: "feof_unlocked", scope: !901, file: !901, line: 128, type: !902, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !919)
!919 = !{!917}
!920 = !DILocation(line: 0, scope: !918, inlinedAt: !921)
!921 = distinct !DILocation(line: 1603, column: 52, scope: !814)
!922 = distinct !{!922, !845, !923, !549}
!923 = !DILocation(line: 1624, column: 20, scope: !795)
!924 = !DILocation(line: 1605, column: 14, scope: !814)
!925 = !DILocation(line: 1605, column: 18, scope: !814)
!926 = !DILocation(line: 0, scope: !918, inlinedAt: !927)
!927 = distinct !DILocation(line: 1605, column: 21, scope: !814)
!928 = !DILocation(line: 130, column: 10, scope: !918, inlinedAt: !927)
!929 = !DILocation(line: 1605, column: 7, scope: !814)
!930 = !DILocation(line: 1607, column: 11, scope: !822)
!931 = !DILocation(line: 0, scope: !822)
!932 = !DILocation(line: 1607, column: 17, scope: !822)
!933 = !{!911, !911, i64 0}
!934 = !DILocation(line: 1609, column: 18, scope: !935)
!935 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1608, column: 15)
!936 = !DILocation(line: 1613, column: 15, scope: !825)
!937 = !DILocation(line: 1609, column: 13, scope: !935)
!938 = !DILocalVariable(name: "ctx", arg: 1, scope: !939, file: !3, line: 414, type: !837)
!939 = distinct !DISubprogram(name: "decode_ctx_finalize", scope: !3, file: !3, line: 414, type: !940, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !943)
!940 = !DISubroutineType(types: !941)
!941 = !{!78, !837, !942, !429}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!943 = !{!938, !944, !945, !946, !947, !948, !949, !950}
!944 = !DILocalVariable(name: "out", arg: 2, scope: !939, file: !3, line: 415, type: !942)
!945 = !DILocalVariable(name: "outlen", arg: 3, scope: !939, file: !3, line: 415, type: !429)
!946 = !DILocalVariable(name: "padbuf", scope: !939, file: !3, line: 424, type: !812)
!947 = !DILocalVariable(name: "pending_len", scope: !939, file: !3, line: 425, type: !181)
!948 = !DILocalVariable(name: "auto_padding", scope: !939, file: !3, line: 426, type: !181)
!949 = !DILocalVariable(name: "n", scope: !939, file: !3, line: 427, type: !181)
!950 = !DILocalVariable(name: "result", scope: !939, file: !3, line: 428, type: !78)
!951 = !DILocation(line: 0, scope: !939, inlinedAt: !952)
!952 = distinct !DILocation(line: 1611, column: 18, scope: !935)
!953 = !DILocalVariable(name: "ctx", arg: 1, scope: !954, file: !3, line: 403, type: !837)
!954 = distinct !DISubprogram(name: "get_pending_length", scope: !3, file: !3, line: 403, type: !955, scopeLine: 404, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{!56, !837}
!957 = !{!953}
!958 = !DILocation(line: 0, scope: !954, inlinedAt: !959)
!959 = distinct !DILocation(line: 417, column: 7, scope: !960, inlinedAt: !952)
!960 = distinct !DILexicalBlock(scope: !939, file: !3, line: 417, column: 7)
!961 = !DILocation(line: 405, column: 15, scope: !954, inlinedAt: !959)
!962 = !DILocation(line: 417, column: 32, scope: !960, inlinedAt: !952)
!963 = !DILocation(line: 417, column: 7, scope: !939, inlinedAt: !952)
!964 = !DILocation(line: 419, column: 15, scope: !965, inlinedAt: !952)
!965 = distinct !DILexicalBlock(scope: !960, file: !3, line: 418, column: 5)
!966 = !DILocation(line: 420, column: 7, scope: !965, inlinedAt: !952)
!967 = !DILocation(line: 424, column: 3, scope: !939, inlinedAt: !952)
!968 = !DILocation(line: 424, column: 8, scope: !939, inlinedAt: !952)
!969 = !DILocation(line: 0, scope: !954, inlinedAt: !970)
!970 = distinct !DILocation(line: 425, column: 23, scope: !939, inlinedAt: !952)
!971 = !DILocation(line: 0, scope: !868, inlinedAt: !972)
!972 = distinct !DILocation(line: 426, column: 24, scope: !939, inlinedAt: !952)
!973 = !DILocation(line: 202, column: 21, scope: !868, inlinedAt: !972)
!974 = !DILocation(line: 203, column: 10, scope: !868, inlinedAt: !972)
!975 = !DILocation(line: 427, column: 3, scope: !939, inlinedAt: !952)
!976 = !DILocation(line: 427, column: 9, scope: !939, inlinedAt: !952)
!977 = !DILocation(line: 430, column: 7, scope: !978, inlinedAt: !952)
!978 = distinct !DILexicalBlock(scope: !939, file: !3, line: 430, column: 7)
!979 = !DILocation(line: 430, column: 20, scope: !978, inlinedAt: !952)
!980 = !DILocalVariable(name: "ctx", arg: 1, scope: !981, file: !3, line: 397, type: !837)
!981 = distinct !DISubprogram(name: "has_padding", scope: !3, file: !3, line: 397, type: !982, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{!78, !837}
!984 = !{!980}
!985 = !DILocation(line: 0, scope: !981, inlinedAt: !986)
!986 = distinct !DILocation(line: 430, column: 25, scope: !978, inlinedAt: !952)
!987 = !DILocation(line: 399, column: 36, scope: !981, inlinedAt: !986)
!988 = !DILocation(line: 399, column: 20, scope: !981, inlinedAt: !986)
!989 = !DILocation(line: 399, column: 41, scope: !981, inlinedAt: !986)
!990 = !DILocation(line: 430, column: 7, scope: !939, inlinedAt: !952)
!991 = !DILocation(line: 432, column: 7, scope: !992, inlinedAt: !952)
!992 = distinct !DILexicalBlock(scope: !993, file: !3, line: 432, column: 7)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 432, column: 7)
!994 = distinct !DILexicalBlock(scope: !978, file: !3, line: 431, column: 5)
!995 = !DILocation(line: 432, column: 7, scope: !993, inlinedAt: !952)
!996 = !DILocation(line: 433, column: 16, scope: !994, inlinedAt: !952)
!997 = !DILocation(line: 434, column: 5, scope: !994, inlinedAt: !952)
!998 = !DILocation(line: 437, column: 16, scope: !999, inlinedAt: !952)
!999 = distinct !DILexicalBlock(scope: !978, file: !3, line: 436, column: 5)
!1000 = !DILocation(line: 440, column: 13, scope: !939, inlinedAt: !952)
!1001 = !DILocation(line: 440, column: 11, scope: !939, inlinedAt: !952)
!1002 = !DILocation(line: 442, column: 1, scope: !939, inlinedAt: !952)
!1003 = !DILocation(line: 1613, column: 44, scope: !825)
!1004 = !DILocation(line: 1613, column: 42, scope: !825)
!1005 = !DILocation(line: 1613, column: 15, scope: !822)
!1006 = !DILocation(line: 948, column: 21, scope: !1007, inlinedAt: !1010)
!1007 = distinct !DISubprogram(name: "write_error", scope: !68, file: !68, line: 946, type: !243, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1008)
!1008 = !{!1009}
!1009 = !DILocalVariable(name: "saved_errno", scope: !1007, file: !68, line: 948, type: !56)
!1010 = distinct !DILocation(line: 1614, column: 13, scope: !825)
!1011 = !DILocation(line: 0, scope: !1007, inlinedAt: !1010)
!1012 = !DILocation(line: 949, column: 3, scope: !1007, inlinedAt: !1010)
!1013 = !DILocation(line: 950, column: 11, scope: !1007, inlinedAt: !1010)
!1014 = !DILocation(line: 950, column: 3, scope: !1007, inlinedAt: !1010)
!1015 = !DILocation(line: 951, column: 3, scope: !1007, inlinedAt: !1010)
!1016 = !DILocation(line: 952, column: 3, scope: !1007, inlinedAt: !1010)
!1017 = !DILocation(line: 1616, column: 15, scope: !822)
!1018 = !DILocation(line: 1617, column: 13, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !822, file: !3, line: 1616, column: 15)
!1020 = !DILocation(line: 1622, column: 9, scope: !814)
!1021 = !DILocation(line: 130, column: 10, scope: !918, inlinedAt: !1022)
!1022 = distinct !DILocation(line: 1624, column: 11, scope: !795)
!1023 = !DILocation(line: 1624, column: 10, scope: !795)
!1024 = !DILocation(line: 0, scope: !918, inlinedAt: !1022)
!1025 = !DILocation(line: 1623, column: 5, scope: !814)
!1026 = !DILocation(line: 1626, column: 3, scope: !795)
!1027 = distinct !DISubprogram(name: "do_encode", scope: !3, file: !3, line: 1488, type: !1028, scopeLine: 1489, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1030)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !91, !61, !91, !181}
!1030 = !{!1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039}
!1031 = !DILocalVariable(name: "in", arg: 1, scope: !1027, file: !3, line: 1488, type: !91)
!1032 = !DILocalVariable(name: "infile", arg: 2, scope: !1027, file: !3, line: 1488, type: !61)
!1033 = !DILocalVariable(name: "out", arg: 3, scope: !1027, file: !3, line: 1488, type: !91)
!1034 = !DILocalVariable(name: "wrap_column", arg: 4, scope: !1027, file: !3, line: 1488, type: !181)
!1035 = !DILocalVariable(name: "current_column", scope: !1027, file: !3, line: 1490, type: !181)
!1036 = !DILocalVariable(name: "inbuf", scope: !1027, file: !3, line: 1491, type: !53)
!1037 = !DILocalVariable(name: "outbuf", scope: !1027, file: !3, line: 1491, type: !53)
!1038 = !DILocalVariable(name: "sum", scope: !1027, file: !3, line: 1492, type: !181)
!1039 = !DILocalVariable(name: "n", scope: !1040, file: !3, line: 1507, type: !181)
!1040 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 1506, column: 5)
!1041 = !DILocation(line: 0, scope: !1027)
!1042 = !DILocation(line: 1494, column: 11, scope: !1027)
!1043 = !DILocation(line: 1495, column: 12, scope: !1027)
!1044 = !DILocation(line: 1505, column: 3, scope: !1027)
!1045 = !DILocation(line: 1490, column: 9, scope: !1027)
!1046 = !DILocation(line: 1510, column: 7, scope: !1040)
!1047 = !DILocation(line: 0, scope: !1040)
!1048 = !DILocation(line: 1512, column: 15, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1511, column: 9)
!1050 = !DILocation(line: 1513, column: 15, scope: !1049)
!1051 = !DILocation(line: 0, scope: !918, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 1515, column: 15, scope: !1040)
!1053 = !DILocation(line: 130, column: 10, scope: !918, inlinedAt: !1052)
!1054 = !DILocation(line: 1515, column: 15, scope: !1040)
!1055 = !DILocation(line: 1515, column: 25, scope: !1040)
!1056 = !DILocation(line: 0, scope: !900, inlinedAt: !1057)
!1057 = distinct !DILocation(line: 1515, column: 29, scope: !1040)
!1058 = !DILocation(line: 1515, column: 29, scope: !1040)
!1059 = !DILocation(line: 1515, column: 41, scope: !1040)
!1060 = distinct !{!1060, !1046, !1061, !549}
!1061 = !DILocation(line: 1515, column: 63, scope: !1040)
!1062 = !DILocation(line: 1517, column: 15, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1517, column: 11)
!1064 = !DILocation(line: 1517, column: 11, scope: !1040)
!1065 = !DILocation(line: 1532, column: 48, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 1529, column: 13)
!1067 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 1518, column: 9)
!1068 = !DILocation(line: 1532, column: 15, scope: !1066)
!1069 = !DILocalVariable(name: "buffer", arg: 1, scope: !1070, file: !3, line: 1443, type: !61)
!1070 = distinct !DISubprogram(name: "wrap_write", scope: !3, file: !3, line: 1443, type: !1071, scopeLine: 1445, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1073)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !61, !181, !181, !429, !91}
!1073 = !{!1069, !1074, !1075, !1076, !1077, !1078, !1083, !1084, !1085, !1087, !1090, !1095, !1096}
!1074 = !DILocalVariable(name: "len", arg: 2, scope: !1070, file: !3, line: 1443, type: !181)
!1075 = !DILocalVariable(name: "wrap_column", arg: 3, scope: !1070, file: !3, line: 1444, type: !181)
!1076 = !DILocalVariable(name: "current_column", arg: 4, scope: !1070, file: !3, line: 1444, type: !429)
!1077 = !DILocalVariable(name: "out", arg: 5, scope: !1070, file: !3, line: 1444, type: !91)
!1078 = !DILocalVariable(name: "__ptr", scope: !1079, file: !3, line: 1449, type: !61)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 1449, column: 11)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 1449, column: 11)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1447, column: 5)
!1082 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 1446, column: 7)
!1083 = !DILocalVariable(name: "__stream", scope: !1079, file: !3, line: 1449, type: !91)
!1084 = !DILocalVariable(name: "__cnt", scope: !1079, file: !3, line: 1449, type: !58)
!1085 = !DILocalVariable(name: "written", scope: !1086, file: !3, line: 1453, type: !181)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1453, column: 5)
!1087 = !DILocalVariable(name: "to_write", scope: !1088, file: !3, line: 1455, type: !181)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !3, line: 1454, column: 7)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 1453, column: 5)
!1090 = !DILocalVariable(name: "__ptr", scope: !1091, file: !3, line: 1465, type: !61)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !3, line: 1465, column: 17)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 1465, column: 17)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1464, column: 11)
!1094 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 1457, column: 13)
!1095 = !DILocalVariable(name: "__stream", scope: !1091, file: !3, line: 1465, type: !91)
!1096 = !DILocalVariable(name: "__cnt", scope: !1091, file: !3, line: 1465, type: !58)
!1097 = !DILocation(line: 0, scope: !1070, inlinedAt: !1098)
!1098 = distinct !DILocation(line: 1534, column: 15, scope: !1066)
!1099 = !DILocation(line: 1446, column: 7, scope: !1070, inlinedAt: !1098)
!1100 = !DILocation(line: 0, scope: !1080, inlinedAt: !1098)
!1101 = !DILocation(line: 1449, column: 11, scope: !1080, inlinedAt: !1098)
!1102 = !DILocation(line: 1449, column: 43, scope: !1080, inlinedAt: !1098)
!1103 = !DILocation(line: 1449, column: 11, scope: !1081, inlinedAt: !1098)
!1104 = !DILocation(line: 948, column: 21, scope: !1007, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 1450, column: 9, scope: !1080, inlinedAt: !1098)
!1106 = !DILocation(line: 0, scope: !1007, inlinedAt: !1105)
!1107 = !DILocation(line: 949, column: 3, scope: !1007, inlinedAt: !1105)
!1108 = !DILocation(line: 950, column: 11, scope: !1007, inlinedAt: !1105)
!1109 = !DILocation(line: 950, column: 3, scope: !1007, inlinedAt: !1105)
!1110 = !DILocation(line: 951, column: 3, scope: !1007, inlinedAt: !1105)
!1111 = !DILocation(line: 952, column: 3, scope: !1007, inlinedAt: !1105)
!1112 = !DILocation(line: 0, scope: !1086, inlinedAt: !1098)
!1113 = !DILocation(line: 1455, column: 26, scope: !1088, inlinedAt: !1098)
!1114 = !DILocation(line: 0, scope: !1088, inlinedAt: !1098)
!1115 = !DILocation(line: 1457, column: 22, scope: !1094, inlinedAt: !1098)
!1116 = !DILocation(line: 1457, column: 13, scope: !1088, inlinedAt: !1098)
!1117 = !DILocalVariable(name: "__c", arg: 1, scope: !1118, file: !901, line: 91, type: !56)
!1118 = distinct !DISubprogram(name: "fputc_unlocked", scope: !901, file: !901, line: 91, type: !1119, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!56, !56, !91}
!1121 = !{!1117, !1122}
!1122 = !DILocalVariable(name: "__stream", arg: 2, scope: !1118, file: !901, line: 91, type: !91)
!1123 = !DILocation(line: 0, scope: !1118, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 1459, column: 17, scope: !1125, inlinedAt: !1098)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 1459, column: 17)
!1126 = distinct !DILexicalBlock(scope: !1094, file: !3, line: 1458, column: 11)
!1127 = !DILocation(line: 93, column: 10, scope: !1118, inlinedAt: !1124)
!1128 = !{!910, !487, i64 40}
!1129 = !{!910, !487, i64 48}
!1130 = !{!"branch_weights", i32 2000, i32 1}
!1131 = !DILocation(line: 1459, column: 17, scope: !1126, inlinedAt: !1098)
!1132 = !DILocation(line: 1459, column: 35, scope: !1125, inlinedAt: !1098)
!1133 = !DILocation(line: 948, column: 21, scope: !1007, inlinedAt: !1134)
!1134 = distinct !DILocation(line: 1460, column: 15, scope: !1125, inlinedAt: !1098)
!1135 = !DILocation(line: 0, scope: !1007, inlinedAt: !1134)
!1136 = !DILocation(line: 949, column: 3, scope: !1007, inlinedAt: !1134)
!1137 = !DILocation(line: 950, column: 11, scope: !1007, inlinedAt: !1134)
!1138 = !DILocation(line: 950, column: 3, scope: !1007, inlinedAt: !1134)
!1139 = !DILocation(line: 951, column: 3, scope: !1007, inlinedAt: !1134)
!1140 = !DILocation(line: 952, column: 3, scope: !1007, inlinedAt: !1134)
!1141 = !DILocation(line: 0, scope: !1092, inlinedAt: !1098)
!1142 = !DILocation(line: 1465, column: 17, scope: !1092, inlinedAt: !1098)
!1143 = !DILocation(line: 1465, column: 64, scope: !1092, inlinedAt: !1098)
!1144 = !DILocation(line: 1465, column: 17, scope: !1093, inlinedAt: !1098)
!1145 = !DILocation(line: 948, column: 21, scope: !1007, inlinedAt: !1146)
!1146 = distinct !DILocation(line: 1466, column: 15, scope: !1092, inlinedAt: !1098)
!1147 = !DILocation(line: 0, scope: !1007, inlinedAt: !1146)
!1148 = !DILocation(line: 949, column: 3, scope: !1007, inlinedAt: !1146)
!1149 = !DILocation(line: 950, column: 11, scope: !1007, inlinedAt: !1146)
!1150 = !DILocation(line: 950, column: 3, scope: !1007, inlinedAt: !1146)
!1151 = !DILocation(line: 951, column: 3, scope: !1007, inlinedAt: !1146)
!1152 = !DILocation(line: 952, column: 3, scope: !1007, inlinedAt: !1146)
!1153 = !DILocation(line: 1467, column: 29, scope: !1093, inlinedAt: !1098)
!1154 = !DILocation(line: 1468, column: 21, scope: !1093, inlinedAt: !1098)
!1155 = !DILocation(line: 0, scope: !1094, inlinedAt: !1098)
!1156 = !DILocation(line: 1453, column: 37, scope: !1089, inlinedAt: !1098)
!1157 = !DILocation(line: 1453, column: 5, scope: !1086, inlinedAt: !1098)
!1158 = distinct !{!1158, !1157, !1159, !549}
!1159 = !DILocation(line: 1470, column: 7, scope: !1086, inlinedAt: !1098)
!1160 = !DILocation(line: 0, scope: !918, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 1539, column: 11, scope: !1027)
!1162 = !DILocation(line: 130, column: 10, scope: !918, inlinedAt: !1161)
!1163 = !DILocation(line: 1539, column: 11, scope: !1027)
!1164 = !DILocation(line: 1539, column: 21, scope: !1027)
!1165 = !DILocation(line: 0, scope: !900, inlinedAt: !1166)
!1166 = distinct !DILocation(line: 1539, column: 25, scope: !1027)
!1167 = !DILocation(line: 1539, column: 25, scope: !1027)
!1168 = !DILocation(line: 1539, column: 37, scope: !1027)
!1169 = distinct !{!1169, !1044, !1170, !549}
!1170 = !DILocation(line: 1539, column: 60, scope: !1027)
!1171 = !DILocation(line: 1552, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 1552, column: 7)
!1173 = !DILocation(line: 1552, column: 19, scope: !1172)
!1174 = !DILocation(line: 0, scope: !1118, inlinedAt: !1175)
!1175 = distinct !DILocation(line: 1552, column: 44, scope: !1172)
!1176 = !DILocation(line: 93, column: 10, scope: !1118, inlinedAt: !1175)
!1177 = !DILocation(line: 1552, column: 7, scope: !1027)
!1178 = !DILocation(line: 1552, column: 62, scope: !1172)
!1179 = !DILocation(line: 948, column: 21, scope: !1007, inlinedAt: !1180)
!1180 = distinct !DILocation(line: 1553, column: 5, scope: !1172)
!1181 = !DILocation(line: 0, scope: !1007, inlinedAt: !1180)
!1182 = !DILocation(line: 949, column: 3, scope: !1007, inlinedAt: !1180)
!1183 = !DILocation(line: 950, column: 11, scope: !1007, inlinedAt: !1180)
!1184 = !DILocation(line: 950, column: 3, scope: !1007, inlinedAt: !1180)
!1185 = !DILocation(line: 951, column: 3, scope: !1007, inlinedAt: !1180)
!1186 = !DILocation(line: 952, column: 3, scope: !1007, inlinedAt: !1180)
!1187 = !DILocation(line: 0, scope: !900, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 1555, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 1555, column: 7)
!1190 = !DILocation(line: 137, column: 10, scope: !900, inlinedAt: !1188)
!1191 = !DILocation(line: 1555, column: 7, scope: !1189)
!1192 = !DILocation(line: 1555, column: 7, scope: !1027)
!1193 = !DILocation(line: 1556, column: 5, scope: !1189)
!1194 = !DILocation(line: 1558, column: 3, scope: !1027)
!1195 = !DISubprogram(name: "fflush_unlocked", scope: !216, file: !216, line: 239, type: !902, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1196 = !DISubprogram(name: "clearerr_unlocked", scope: !216, file: !216, line: 794, type: !1197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{null, !91}
!1199 = distinct !DISubprogram(name: "finish_and_exit", scope: !3, file: !3, line: 1474, type: !1200, scopeLine: 1475, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1202)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !91, !61}
!1202 = !{!1203, !1204}
!1203 = !DILocalVariable(name: "in", arg: 1, scope: !1199, file: !3, line: 1474, type: !91)
!1204 = !DILocalVariable(name: "infile", arg: 2, scope: !1199, file: !3, line: 1474, type: !61)
!1205 = !DILocation(line: 0, scope: !1199)
!1206 = !DILocation(line: 1476, column: 7, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 1476, column: 7)
!1208 = !DILocation(line: 1476, column: 19, scope: !1207)
!1209 = !DILocation(line: 1476, column: 7, scope: !1199)
!1210 = !DILocation(line: 0, scope: !532, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 1478, column: 11, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1478, column: 11)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 1477, column: 5)
!1214 = !DILocation(line: 1361, column: 11, scope: !532, inlinedAt: !1211)
!1215 = !DILocation(line: 1361, column: 10, scope: !532, inlinedAt: !1211)
!1216 = !DILocation(line: 0, scope: !1212)
!1217 = !DILocation(line: 1478, column: 11, scope: !1213)
!1218 = !DILocation(line: 1479, column: 9, scope: !1212)
!1219 = !DILocation(line: 1481, column: 9, scope: !1212)
!1220 = !DILocation(line: 1484, column: 3, scope: !1199)
!1221 = distinct !DISubprogram(name: "isubase32", scope: !808, file: !808, line: 56, type: !858, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1222)
!1222 = !{!1223}
!1223 = !DILocalVariable(name: "ch", arg: 1, scope: !1221, file: !808, line: 56, type: !63)
!1224 = !DILocation(line: 0, scope: !1221)
!1225 = !DILocation(line: 58, column: 10, scope: !1221)
!1226 = !DILocation(line: 58, column: 44, scope: !1221)
!1227 = !DILocation(line: 58, column: 41, scope: !1221)
!1228 = !DILocation(line: 58, column: 3, scope: !1221)
!1229 = distinct !DISubprogram(name: "isbase32", scope: !808, file: !808, line: 62, type: !1230, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1232)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{!78, !54}
!1232 = !{!1233}
!1233 = !DILocalVariable(name: "ch", arg: 1, scope: !1229, file: !808, line: 62, type: !54)
!1234 = !DILocation(line: 0, scope: !1229)
!1235 = !DILocation(line: 0, scope: !1221, inlinedAt: !1236)
!1236 = distinct !DILocation(line: 64, column: 10, scope: !1229)
!1237 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1236)
!1238 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1236)
!1239 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1236)
!1240 = !DILocation(line: 64, column: 3, scope: !1229)
!1241 = distinct !DISubprogram(name: "base32_decode_ctx_init", scope: !808, file: !808, line: 74, type: !1242, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1249)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "base32_decode_context", file: !808, line: 47, size: 96, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !1245, file: !808, line: 49, baseType: !56, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1245, file: !808, line: 50, baseType: !812, size: 64, offset: 32)
!1249 = !{!1250}
!1250 = !DILocalVariable(name: "ctx", arg: 1, scope: !1241, file: !808, line: 74, type: !1244)
!1251 = !DILocation(line: 0, scope: !1241)
!1252 = !DILocation(line: 76, column: 8, scope: !1241)
!1253 = !DILocation(line: 76, column: 10, scope: !1241)
!1254 = !DILocation(line: 77, column: 1, scope: !1241)
!1255 = !DILocation(line: 0, scope: !177)
!1256 = !DILocation(line: 71, column: 10, scope: !177)
!1257 = !DILocation(line: 71, column: 16, scope: !177)
!1258 = !DILocation(line: 71, column: 3, scope: !177)
!1259 = !DILocation(line: 73, column: 34, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !177, file: !172, line: 72, column: 5)
!1261 = !DILocation(line: 73, column: 41, scope: !1260)
!1262 = !DILocation(line: 73, column: 16, scope: !1260)
!1263 = !DILocation(line: 73, column: 11, scope: !1260)
!1264 = !DILocation(line: 73, column: 14, scope: !1260)
!1265 = !DILocation(line: 74, column: 12, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 74, column: 11)
!1267 = !DILocation(line: 74, column: 11, scope: !1260)
!1268 = !DILocation(line: 76, column: 25, scope: !1260)
!1269 = !DILocation(line: 76, column: 42, scope: !1260)
!1270 = !DILocation(line: 77, column: 27, scope: !1260)
!1271 = !DILocation(line: 78, column: 23, scope: !1260)
!1272 = !DILocation(line: 76, column: 16, scope: !1260)
!1273 = !DILocation(line: 76, column: 14, scope: !1260)
!1274 = !DILocation(line: 79, column: 12, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 79, column: 11)
!1276 = !DILocation(line: 79, column: 11, scope: !1260)
!1277 = !DILocation(line: 77, column: 47, scope: !1260)
!1278 = !DILocation(line: 77, column: 54, scope: !1260)
!1279 = !DILocation(line: 76, column: 11, scope: !1260)
!1280 = !DILocation(line: 81, column: 14, scope: !1260)
!1281 = !DILocation(line: 85, column: 12, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 85, column: 11)
!1283 = !DILocation(line: 85, column: 11, scope: !1260)
!1284 = !DILocation(line: 83, column: 37, scope: !1260)
!1285 = !DILocation(line: 83, column: 43, scope: !1260)
!1286 = !DILocation(line: 83, column: 12, scope: !1260)
!1287 = !DILocation(line: 81, column: 11, scope: !1260)
!1288 = !DILocation(line: 89, column: 21, scope: !1260)
!1289 = !DILocation(line: 89, column: 38, scope: !1260)
!1290 = !DILocation(line: 90, column: 23, scope: !1260)
!1291 = !DILocation(line: 91, column: 19, scope: !1260)
!1292 = !DILocation(line: 89, column: 12, scope: !1260)
!1293 = !DILocation(line: 87, column: 14, scope: !1260)
!1294 = !DILocation(line: 93, column: 12, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 93, column: 11)
!1296 = !DILocation(line: 93, column: 11, scope: !1260)
!1297 = !DILocation(line: 90, column: 43, scope: !1260)
!1298 = !DILocation(line: 90, column: 50, scope: !1260)
!1299 = !DILocation(line: 97, column: 31, scope: !1260)
!1300 = !DILocation(line: 97, column: 21, scope: !1260)
!1301 = !DILocation(line: 97, column: 38, scope: !1260)
!1302 = !DILocation(line: 98, column: 23, scope: !1260)
!1303 = !DILocation(line: 98, column: 43, scope: !1260)
!1304 = !DILocation(line: 98, column: 50, scope: !1260)
!1305 = !DILocation(line: 98, column: 20, scope: !1260)
!1306 = !DILocation(line: 99, column: 19, scope: !1260)
!1307 = !DILocation(line: 97, column: 12, scope: !1260)
!1308 = !DILocation(line: 96, column: 10, scope: !1260)
!1309 = !DILocation(line: 0, scope: !1260)
!1310 = !DILocation(line: 87, column: 11, scope: !1260)
!1311 = !DILocation(line: 95, column: 11, scope: !1260)
!1312 = !DILocation(line: 95, column: 14, scope: !1260)
!1313 = !DILocation(line: 101, column: 12, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 101, column: 11)
!1315 = !DILocation(line: 101, column: 11, scope: !1260)
!1316 = !DILocation(line: 104, column: 10, scope: !1260)
!1317 = !DILocation(line: 103, column: 14, scope: !1260)
!1318 = !DILocation(line: 107, column: 12, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 107, column: 11)
!1320 = !DILocation(line: 107, column: 11, scope: !1260)
!1321 = !DILocation(line: 105, column: 30, scope: !1260)
!1322 = !DILocation(line: 105, column: 37, scope: !1260)
!1323 = !DILocation(line: 105, column: 43, scope: !1260)
!1324 = !DILocation(line: 105, column: 12, scope: !1260)
!1325 = !DILocation(line: 103, column: 11, scope: !1260)
!1326 = !DILocation(line: 111, column: 21, scope: !1260)
!1327 = !DILocation(line: 111, column: 38, scope: !1260)
!1328 = !DILocation(line: 112, column: 23, scope: !1260)
!1329 = !DILocation(line: 113, column: 19, scope: !1260)
!1330 = !DILocation(line: 111, column: 12, scope: !1260)
!1331 = !DILocation(line: 109, column: 14, scope: !1260)
!1332 = !DILocation(line: 115, column: 12, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 115, column: 11)
!1334 = !DILocation(line: 115, column: 11, scope: !1260)
!1335 = !DILocation(line: 112, column: 43, scope: !1260)
!1336 = !DILocation(line: 112, column: 50, scope: !1260)
!1337 = !DILocation(line: 117, column: 41, scope: !1260)
!1338 = !DILocation(line: 117, column: 48, scope: !1260)
!1339 = !DILocation(line: 117, column: 24, scope: !1260)
!1340 = !DILocation(line: 117, column: 16, scope: !1260)
!1341 = !DILocation(line: 109, column: 11, scope: !1260)
!1342 = !DILocation(line: 117, column: 14, scope: !1260)
!1343 = !DILocation(line: 118, column: 12, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 118, column: 11)
!1345 = !DILocation(line: 118, column: 11, scope: !1260)
!1346 = !DILocation(line: 117, column: 11, scope: !1260)
!1347 = !DILocation(line: 120, column: 11, scope: !1260)
!1348 = !DILocation(line: 122, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1260, file: !172, line: 122, column: 11)
!1350 = !DILocation(line: 122, column: 11, scope: !1260)
!1351 = distinct !{!1351, !1258, !1352, !549}
!1352 = !DILocation(line: 124, column: 5, scope: !177)
!1353 = !DILocation(line: 126, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !177, file: !172, line: 126, column: 7)
!1355 = !DILocation(line: 126, column: 7, scope: !177)
!1356 = !DILocation(line: 127, column: 10, scope: !1354)
!1357 = !DILocation(line: 127, column: 5, scope: !1354)
!1358 = !DILocation(line: 128, column: 1, scope: !177)
!1359 = distinct !DISubprogram(name: "base32_encode_alloc", scope: !172, file: !172, line: 140, type: !1360, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1362)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!181, !61, !181, !704}
!1362 = !{!1363, !1364, !1365, !1366, !1367}
!1363 = !DILocalVariable(name: "in", arg: 1, scope: !1359, file: !172, line: 140, type: !61)
!1364 = !DILocalVariable(name: "inlen", arg: 2, scope: !1359, file: !172, line: 140, type: !181)
!1365 = !DILocalVariable(name: "out", arg: 3, scope: !1359, file: !172, line: 140, type: !704)
!1366 = !DILocalVariable(name: "in_over_5", scope: !1359, file: !172, line: 145, type: !181)
!1367 = !DILocalVariable(name: "outlen", scope: !1359, file: !172, line: 145, type: !181)
!1368 = !DILocation(line: 0, scope: !1359)
!1369 = !DILocation(line: 145, column: 27, scope: !1359)
!1370 = !DILocation(line: 145, column: 44, scope: !1359)
!1371 = !DILocation(line: 145, column: 31, scope: !1359)
!1372 = !DILocation(line: 146, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1359, file: !172, line: 146, column: 7)
!1374 = !DILocation(line: 146, column: 39, scope: !1373)
!1375 = !DILocation(line: 148, column: 12, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1373, file: !172, line: 147, column: 5)
!1377 = !DILocation(line: 149, column: 7, scope: !1376)
!1378 = !DILocation(line: 151, column: 9, scope: !1359)
!1379 = !DILocalVariable(name: "s", arg: 1, scope: !1380, file: !1381, line: 55, type: !181)
!1380 = distinct !DISubprogram(name: "imalloc", scope: !1381, file: !1381, line: 55, type: !1382, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1384)
!1381 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!55, !181}
!1384 = !{!1379}
!1385 = !DILocation(line: 0, scope: !1380, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 153, column: 10, scope: !1359)
!1387 = !DILocation(line: 57, column: 26, scope: !1380, inlinedAt: !1386)
!1388 = !DILocation(line: 153, column: 8, scope: !1359)
!1389 = !DILocation(line: 154, column: 8, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1359, file: !172, line: 154, column: 7)
!1391 = !DILocation(line: 154, column: 7, scope: !1359)
!1392 = !DILocation(line: 157, column: 3, scope: !1359)
!1393 = !DILocation(line: 159, column: 3, scope: !1359)
!1394 = !DILocation(line: 160, column: 1, scope: !1359)
!1395 = distinct !DISubprogram(name: "base32_decode_ctx", scope: !172, file: !172, line: 464, type: !1396, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1398)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!78, !1244, !180, !181, !184, !429}
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1410, !1414}
!1399 = !DILocalVariable(name: "ctx", arg: 1, scope: !1395, file: !172, line: 464, type: !1244)
!1400 = !DILocalVariable(name: "in", arg: 2, scope: !1395, file: !172, line: 465, type: !180)
!1401 = !DILocalVariable(name: "inlen", arg: 3, scope: !1395, file: !172, line: 465, type: !181)
!1402 = !DILocalVariable(name: "out", arg: 4, scope: !1395, file: !172, line: 466, type: !184)
!1403 = !DILocalVariable(name: "outlen", arg: 5, scope: !1395, file: !172, line: 466, type: !429)
!1404 = !DILocalVariable(name: "ignore_newlines", scope: !1395, file: !172, line: 468, type: !78)
!1405 = !DILocalVariable(name: "flush_ctx", scope: !1395, file: !172, line: 469, type: !78)
!1406 = !DILocalVariable(name: "ctx_i", scope: !1395, file: !172, line: 470, type: !7)
!1407 = !DILocalVariable(name: "outleft", scope: !1395, file: !172, line: 478, type: !181)
!1408 = !DILocalVariable(name: "outleft_save", scope: !1409, file: !172, line: 482, type: !181)
!1409 = distinct !DILexicalBlock(scope: !1395, file: !172, line: 481, column: 5)
!1410 = !DILocalVariable(name: "in_end", scope: !1411, file: !172, line: 515, type: !61)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !172, line: 514, column: 11)
!1412 = distinct !DILexicalBlock(scope: !1413, file: !172, line: 509, column: 9)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !172, line: 503, column: 11)
!1414 = !DILocalVariable(name: "non_nl", scope: !1411, file: !172, line: 517, type: !61)
!1415 = !DILocation(line: 0, scope: !1395)
!1416 = !DILocation(line: 468, column: 30, scope: !1395)
!1417 = !DILocation(line: 472, column: 7, scope: !1395)
!1418 = !DILocation(line: 474, column: 20, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !172, line: 473, column: 5)
!1420 = distinct !DILexicalBlock(scope: !1395, file: !172, line: 472, column: 7)
!1421 = !DILocation(line: 475, column: 25, scope: !1419)
!1422 = !DILocation(line: 476, column: 5, scope: !1419)
!1423 = !DILocation(line: 478, column: 3, scope: !1395)
!1424 = !DILocation(line: 478, column: 19, scope: !1395)
!1425 = !DILocation(line: 478, column: 9, scope: !1395)
!1426 = !DILocation(line: 480, column: 3, scope: !1395)
!1427 = !DILocation(line: 482, column: 28, scope: !1409)
!1428 = !DILocation(line: 0, scope: !1409)
!1429 = !DILocation(line: 483, column: 22, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1409, file: !172, line: 483, column: 11)
!1431 = !DILocation(line: 490, column: 20, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !172, line: 490, column: 19)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !172, line: 486, column: 13)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !172, line: 484, column: 9)
!1435 = !DILocation(line: 490, column: 19, scope: !1433)
!1436 = !DILocation(line: 493, column: 18, scope: !1433)
!1437 = !DILocation(line: 494, column: 21, scope: !1433)
!1438 = !DILocation(line: 489, column: 30, scope: !1433)
!1439 = distinct !{!1439, !1440, !1441}
!1440 = !DILocation(line: 485, column: 11, scope: !1434)
!1441 = !DILocation(line: 495, column: 13, scope: !1434)
!1442 = !DILocation(line: 498, column: 17, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1409, file: !172, line: 498, column: 11)
!1444 = !DILocation(line: 498, column: 22, scope: !1443)
!1445 = !DILocation(line: 503, column: 17, scope: !1413)
!1446 = !DILocation(line: 503, column: 20, scope: !1413)
!1447 = !DILocation(line: 503, column: 24, scope: !1413)
!1448 = !DILocation(line: 503, column: 32, scope: !1413)
!1449 = !DILocation(line: 505, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1413, file: !172, line: 504, column: 9)
!1451 = !DILocation(line: 506, column: 11, scope: !1450)
!1452 = !DILocation(line: 507, column: 9, scope: !1450)
!1453 = !DILocation(line: 511, column: 33, scope: !1412)
!1454 = !DILocation(line: 511, column: 31, scope: !1412)
!1455 = !DILocation(line: 511, column: 15, scope: !1412)
!1456 = !DILocation(line: 512, column: 19, scope: !1412)
!1457 = !DILocation(line: 515, column: 37, scope: !1411)
!1458 = !DILocation(line: 0, scope: !1411)
!1459 = !DILocation(line: 518, column: 17, scope: !1411)
!1460 = !DILocalVariable(name: "ctx", arg: 1, scope: !1461, file: !172, line: 281, type: !1244)
!1461 = distinct !DISubprogram(name: "get_8", scope: !172, file: !172, line: 281, type: !1462, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1465)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!53, !1244, !1464, !180, !429}
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1465 = !{!1460, !1466, !1467, !1468, !1469, !1472, !1474}
!1466 = !DILocalVariable(name: "in", arg: 2, scope: !1461, file: !172, line: 282, type: !1464)
!1467 = !DILocalVariable(name: "in_end", arg: 3, scope: !1461, file: !172, line: 282, type: !180)
!1468 = !DILocalVariable(name: "n_non_newline", arg: 4, scope: !1461, file: !172, line: 283, type: !429)
!1469 = !DILocalVariable(name: "t", scope: !1470, file: !172, line: 290, type: !61)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !172, line: 289, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1461, file: !172, line: 288, column: 7)
!1472 = !DILocalVariable(name: "p", scope: !1473, file: !172, line: 302, type: !61)
!1473 = distinct !DILexicalBlock(scope: !1461, file: !172, line: 300, column: 3)
!1474 = !DILocalVariable(name: "c", scope: !1475, file: !172, line: 305, type: !54)
!1475 = distinct !DILexicalBlock(scope: !1473, file: !172, line: 304, column: 7)
!1476 = !DILocation(line: 0, scope: !1461, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 519, column: 24, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1411, file: !172, line: 518, column: 17)
!1479 = !DILocation(line: 285, column: 12, scope: !1480, inlinedAt: !1477)
!1480 = distinct !DILexicalBlock(scope: !1461, file: !172, line: 285, column: 7)
!1481 = !{!1482}
!1482 = distinct !{!1482, !1483, !"get_8: argument 0"}
!1483 = distinct !{!1483, !"get_8"}
!1484 = !DILocation(line: 285, column: 7, scope: !1461, inlinedAt: !1477)
!1485 = !DILocation(line: 286, column: 12, scope: !1480, inlinedAt: !1477)
!1486 = !DILocation(line: 288, column: 7, scope: !1461, inlinedAt: !1477)
!1487 = !DILocation(line: 0, scope: !1470, inlinedAt: !1477)
!1488 = !DILocation(line: 291, column: 13, scope: !1489, inlinedAt: !1477)
!1489 = distinct !DILexicalBlock(scope: !1470, file: !172, line: 291, column: 11)
!1490 = !DILocation(line: 291, column: 29, scope: !1489, inlinedAt: !1477)
!1491 = !DILocation(line: 291, column: 32, scope: !1489, inlinedAt: !1477)
!1492 = !DILocation(line: 291, column: 52, scope: !1489, inlinedAt: !1477)
!1493 = !DILocation(line: 291, column: 11, scope: !1470, inlinedAt: !1477)
!1494 = !DILocation(line: 294, column: 15, scope: !1495, inlinedAt: !1477)
!1495 = distinct !DILexicalBlock(scope: !1489, file: !172, line: 292, column: 9)
!1496 = !DILocation(line: 526, column: 42, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1411, file: !172, line: 526, column: 17)
!1498 = !DILocation(line: 0, scope: !1473, inlinedAt: !1477)
!1499 = !DILocation(line: 303, column: 14, scope: !1473, inlinedAt: !1477)
!1500 = !DILocation(line: 303, column: 5, scope: !1473, inlinedAt: !1477)
!1501 = !DILocation(line: 306, column: 13, scope: !1475, inlinedAt: !1477)
!1502 = !DILocation(line: 305, column: 20, scope: !1475, inlinedAt: !1477)
!1503 = !DILocation(line: 305, column: 18, scope: !1475, inlinedAt: !1477)
!1504 = !DILocation(line: 0, scope: !1475, inlinedAt: !1477)
!1505 = !DILocation(line: 306, column: 15, scope: !1506, inlinedAt: !1477)
!1506 = distinct !DILexicalBlock(scope: !1475, file: !172, line: 306, column: 13)
!1507 = !DILocation(line: 308, column: 28, scope: !1508, inlinedAt: !1477)
!1508 = distinct !DILexicalBlock(scope: !1506, file: !172, line: 307, column: 11)
!1509 = !DILocation(line: 308, column: 13, scope: !1508, inlinedAt: !1477)
!1510 = !DILocation(line: 308, column: 32, scope: !1508, inlinedAt: !1477)
!1511 = !DILocation(line: 309, column: 22, scope: !1512, inlinedAt: !1477)
!1512 = distinct !DILexicalBlock(scope: !1508, file: !172, line: 309, column: 17)
!1513 = !DILocation(line: 309, column: 24, scope: !1512, inlinedAt: !1477)
!1514 = !DILocation(line: 309, column: 17, scope: !1508, inlinedAt: !1477)
!1515 = !DILocation(line: 315, column: 27, scope: !1473, inlinedAt: !1477)
!1516 = !DILocation(line: 315, column: 22, scope: !1473, inlinedAt: !1477)
!1517 = !DILocation(line: 0, scope: !1478)
!1518 = !DILocation(line: 526, column: 23, scope: !1497)
!1519 = !DILocation(line: 526, column: 28, scope: !1497)
!1520 = !DILocation(line: 526, column: 38, scope: !1497)
!1521 = !DILocation(line: 531, column: 18, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1411, file: !172, line: 531, column: 17)
!1523 = !DILocation(line: 531, column: 17, scope: !1411)
!1524 = !DILocation(line: 534, column: 28, scope: !1411)
!1525 = !DILocation(line: 539, column: 14, scope: !1395)
!1526 = !DILocation(line: 539, column: 11, scope: !1395)
!1527 = !DILocation(line: 541, column: 16, scope: !1395)
!1528 = !DILocation(line: 542, column: 1, scope: !1395)
!1529 = !DILocation(line: 541, column: 3, scope: !1395)
!1530 = distinct !DISubprogram(name: "decode_8", scope: !172, file: !172, line: 335, type: !1531, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1533)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!78, !180, !181, !942, !429}
!1533 = !{!1534, !1535, !1536, !1537, !1538}
!1534 = !DILocalVariable(name: "in", arg: 1, scope: !1530, file: !172, line: 335, type: !180)
!1535 = !DILocalVariable(name: "inlen", arg: 2, scope: !1530, file: !172, line: 335, type: !181)
!1536 = !DILocalVariable(name: "outp", arg: 3, scope: !1530, file: !172, line: 336, type: !942)
!1537 = !DILocalVariable(name: "outleft", arg: 4, scope: !1530, file: !172, line: 336, type: !429)
!1538 = !DILocalVariable(name: "out", scope: !1530, file: !172, line: 344, type: !53)
!1539 = !DILocation(line: 0, scope: !1530)
!1540 = !DILocation(line: 338, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1530, file: !172, line: 338, column: 7)
!1542 = !DILocation(line: 338, column: 7, scope: !1530)
!1543 = !DILocation(line: 341, column: 18, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1530, file: !172, line: 341, column: 7)
!1545 = !DILocation(line: 0, scope: !1229, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 341, column: 8, scope: !1544)
!1547 = !DILocation(line: 0, scope: !1221, inlinedAt: !1548)
!1548 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1546)
!1549 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1548)
!1550 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1548)
!1551 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1548)
!1552 = !DILocation(line: 341, column: 25, scope: !1544)
!1553 = !DILocation(line: 341, column: 39, scope: !1544)
!1554 = !DILocation(line: 0, scope: !1229, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 341, column: 29, scope: !1544)
!1556 = !DILocation(line: 0, scope: !1221, inlinedAt: !1557)
!1557 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1555)
!1558 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1557)
!1559 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1557)
!1560 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1557)
!1561 = !DILocation(line: 341, column: 7, scope: !1530)
!1562 = !DILocation(line: 344, column: 15, scope: !1530)
!1563 = !DILocation(line: 346, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1530, file: !172, line: 346, column: 7)
!1565 = !DILocation(line: 346, column: 7, scope: !1530)
!1566 = !DILocation(line: 348, column: 50, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !172, line: 347, column: 5)
!1568 = !DILocation(line: 349, column: 52, scope: !1567)
!1569 = !DILocation(line: 349, column: 17, scope: !1567)
!1570 = !DILocation(line: 348, column: 11, scope: !1567)
!1571 = !DILocation(line: 348, column: 14, scope: !1567)
!1572 = !DILocation(line: 350, column: 7, scope: !1567)
!1573 = !DILocation(line: 351, column: 5, scope: !1567)
!1574 = !DILocation(line: 353, column: 7, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1530, file: !172, line: 353, column: 7)
!1576 = !DILocation(line: 353, column: 13, scope: !1575)
!1577 = !DILocation(line: 353, column: 7, scope: !1530)
!1578 = !DILocation(line: 355, column: 11, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !172, line: 355, column: 11)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !172, line: 354, column: 5)
!1581 = !DILocation(line: 355, column: 17, scope: !1579)
!1582 = !DILocation(line: 355, column: 24, scope: !1579)
!1583 = !DILocation(line: 355, column: 27, scope: !1579)
!1584 = !DILocation(line: 355, column: 33, scope: !1579)
!1585 = !DILocation(line: 355, column: 40, scope: !1579)
!1586 = !DILocation(line: 355, column: 43, scope: !1579)
!1587 = !DILocation(line: 355, column: 49, scope: !1579)
!1588 = !DILocation(line: 356, column: 11, scope: !1579)
!1589 = !DILocation(line: 356, column: 14, scope: !1579)
!1590 = !DILocation(line: 356, column: 20, scope: !1579)
!1591 = !DILocation(line: 356, column: 27, scope: !1579)
!1592 = !DILocation(line: 356, column: 30, scope: !1579)
!1593 = !DILocation(line: 356, column: 36, scope: !1579)
!1594 = !DILocation(line: 355, column: 11, scope: !1580)
!1595 = !DILocation(line: 0, scope: !1229, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 365, column: 12, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !172, line: 365, column: 11)
!1598 = distinct !DILexicalBlock(scope: !1575, file: !172, line: 364, column: 5)
!1599 = !DILocation(line: 0, scope: !1221, inlinedAt: !1600)
!1600 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1596)
!1601 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1600)
!1602 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1600)
!1603 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1600)
!1604 = !DILocation(line: 365, column: 29, scope: !1597)
!1605 = !DILocation(line: 365, column: 43, scope: !1597)
!1606 = !DILocation(line: 0, scope: !1229, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 365, column: 33, scope: !1597)
!1608 = !DILocation(line: 0, scope: !1221, inlinedAt: !1609)
!1609 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1607)
!1610 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1609)
!1611 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1609)
!1612 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1609)
!1613 = !DILocation(line: 365, column: 11, scope: !1598)
!1614 = !DILocation(line: 368, column: 11, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1598, file: !172, line: 368, column: 11)
!1616 = !DILocation(line: 368, column: 11, scope: !1598)
!1617 = !DILocation(line: 370, column: 54, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1615, file: !172, line: 369, column: 9)
!1619 = !DILocation(line: 371, column: 56, scope: !1618)
!1620 = !DILocation(line: 371, column: 21, scope: !1618)
!1621 = !DILocation(line: 372, column: 56, scope: !1618)
!1622 = !DILocation(line: 372, column: 21, scope: !1618)
!1623 = !DILocation(line: 370, column: 15, scope: !1618)
!1624 = !DILocation(line: 370, column: 18, scope: !1618)
!1625 = !DILocation(line: 373, column: 11, scope: !1618)
!1626 = !DILocation(line: 374, column: 9, scope: !1618)
!1627 = !DILocation(line: 376, column: 11, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1598, file: !172, line: 376, column: 11)
!1629 = !DILocation(line: 376, column: 17, scope: !1628)
!1630 = !DILocation(line: 376, column: 11, scope: !1598)
!1631 = !DILocation(line: 378, column: 15, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !172, line: 378, column: 15)
!1633 = distinct !DILexicalBlock(scope: !1628, file: !172, line: 377, column: 9)
!1634 = !DILocation(line: 378, column: 21, scope: !1632)
!1635 = !DILocation(line: 378, column: 28, scope: !1632)
!1636 = !DILocation(line: 378, column: 31, scope: !1632)
!1637 = !DILocation(line: 378, column: 37, scope: !1632)
!1638 = !DILocation(line: 378, column: 44, scope: !1632)
!1639 = !DILocation(line: 378, column: 47, scope: !1632)
!1640 = !DILocation(line: 378, column: 53, scope: !1632)
!1641 = !DILocation(line: 378, column: 15, scope: !1633)
!1642 = !DILocation(line: 0, scope: !1229, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 387, column: 16, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !172, line: 387, column: 15)
!1645 = distinct !DILexicalBlock(scope: !1628, file: !172, line: 386, column: 9)
!1646 = !DILocation(line: 0, scope: !1221, inlinedAt: !1647)
!1647 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1643)
!1648 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1647)
!1649 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1647)
!1650 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1647)
!1651 = !DILocation(line: 387, column: 15, scope: !1645)
!1652 = !DILocation(line: 390, column: 15, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1645, file: !172, line: 390, column: 15)
!1654 = !DILocation(line: 390, column: 15, scope: !1645)
!1655 = !DILocation(line: 392, column: 58, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1653, file: !172, line: 391, column: 13)
!1657 = !DILocation(line: 393, column: 60, scope: !1656)
!1658 = !DILocation(line: 393, column: 25, scope: !1656)
!1659 = !DILocation(line: 392, column: 19, scope: !1656)
!1660 = !DILocation(line: 392, column: 22, scope: !1656)
!1661 = !DILocation(line: 394, column: 15, scope: !1656)
!1662 = !DILocation(line: 395, column: 13, scope: !1656)
!1663 = !DILocation(line: 0, scope: !1598)
!1664 = !DILocation(line: 397, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1645, file: !172, line: 397, column: 15)
!1666 = !DILocation(line: 397, column: 21, scope: !1665)
!1667 = !DILocation(line: 397, column: 15, scope: !1645)
!1668 = !DILocation(line: 399, column: 19, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !172, line: 399, column: 19)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !172, line: 398, column: 13)
!1671 = !DILocation(line: 399, column: 25, scope: !1669)
!1672 = !DILocation(line: 399, column: 32, scope: !1669)
!1673 = !DILocation(line: 399, column: 35, scope: !1669)
!1674 = !DILocation(line: 399, column: 41, scope: !1669)
!1675 = !DILocation(line: 399, column: 19, scope: !1670)
!1676 = !DILocation(line: 403, column: 43, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !172, line: 403, column: 19)
!1678 = !DILocation(line: 403, column: 19, scope: !1677)
!1679 = !DILocation(line: 403, column: 51, scope: !1677)
!1680 = !DILocation(line: 403, column: 19, scope: !1670)
!1681 = !DILocation(line: 0, scope: !1229, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 408, column: 20, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !172, line: 408, column: 19)
!1684 = distinct !DILexicalBlock(scope: !1665, file: !172, line: 407, column: 13)
!1685 = !DILocation(line: 0, scope: !1221, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1682)
!1687 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1686)
!1688 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1686)
!1689 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1686)
!1690 = !DILocation(line: 408, column: 37, scope: !1683)
!1691 = !DILocation(line: 408, column: 51, scope: !1683)
!1692 = !DILocation(line: 0, scope: !1229, inlinedAt: !1693)
!1693 = distinct !DILocation(line: 408, column: 41, scope: !1683)
!1694 = !DILocation(line: 0, scope: !1221, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1693)
!1696 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1695)
!1697 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1695)
!1698 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1695)
!1699 = !DILocation(line: 408, column: 19, scope: !1684)
!1700 = !DILocation(line: 411, column: 19, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1684, file: !172, line: 411, column: 19)
!1702 = !DILocation(line: 411, column: 19, scope: !1684)
!1703 = !DILocation(line: 413, column: 54, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1701, file: !172, line: 412, column: 17)
!1705 = !DILocation(line: 413, column: 30, scope: !1704)
!1706 = !DILocation(line: 413, column: 62, scope: !1704)
!1707 = !DILocation(line: 414, column: 64, scope: !1704)
!1708 = !DILocation(line: 415, column: 64, scope: !1704)
!1709 = !DILocation(line: 414, column: 29, scope: !1704)
!1710 = !DILocation(line: 415, column: 29, scope: !1704)
!1711 = !DILocation(line: 413, column: 23, scope: !1704)
!1712 = !DILocation(line: 413, column: 26, scope: !1704)
!1713 = !DILocation(line: 416, column: 19, scope: !1704)
!1714 = !DILocation(line: 417, column: 17, scope: !1704)
!1715 = !DILocation(line: 0, scope: !1645)
!1716 = !DILocation(line: 419, column: 19, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1684, file: !172, line: 419, column: 19)
!1718 = !DILocation(line: 419, column: 25, scope: !1717)
!1719 = !DILocation(line: 419, column: 19, scope: !1684)
!1720 = !DILocation(line: 0, scope: !1229, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 421, column: 24, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !172, line: 421, column: 23)
!1723 = distinct !DILexicalBlock(scope: !1717, file: !172, line: 420, column: 17)
!1724 = !DILocation(line: 0, scope: !1221, inlinedAt: !1725)
!1725 = distinct !DILocation(line: 64, column: 10, scope: !1229, inlinedAt: !1721)
!1726 = !DILocation(line: 58, column: 10, scope: !1221, inlinedAt: !1725)
!1727 = !DILocation(line: 58, column: 44, scope: !1221, inlinedAt: !1725)
!1728 = !DILocation(line: 58, column: 41, scope: !1221, inlinedAt: !1725)
!1729 = !DILocation(line: 421, column: 23, scope: !1723)
!1730 = !DILocation(line: 424, column: 23, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1723, file: !172, line: 424, column: 23)
!1732 = !DILocation(line: 424, column: 23, scope: !1723)
!1733 = !DILocation(line: 426, column: 58, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !172, line: 425, column: 21)
!1735 = !DILocation(line: 426, column: 34, scope: !1734)
!1736 = !DILocation(line: 426, column: 66, scope: !1734)
!1737 = !DILocation(line: 427, column: 33, scope: !1734)
!1738 = !DILocation(line: 426, column: 27, scope: !1734)
!1739 = !DILocation(line: 426, column: 30, scope: !1734)
!1740 = !DILocation(line: 428, column: 23, scope: !1734)
!1741 = !DILocation(line: 429, column: 21, scope: !1734)
!1742 = !DILocation(line: 434, column: 47, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !172, line: 434, column: 23)
!1744 = distinct !DILexicalBlock(scope: !1717, file: !172, line: 432, column: 17)
!1745 = !DILocation(line: 434, column: 23, scope: !1743)
!1746 = !DILocation(line: 434, column: 55, scope: !1743)
!1747 = !DILocation(line: 434, column: 23, scope: !1744)
!1748 = !DILocation(line: 442, column: 3, scope: !1530)
!1749 = !DILocation(line: 443, column: 1, scope: !1530)
!1750 = distinct !DISubprogram(name: "base32_decode_alloc_ctx", scope: !172, file: !172, line: 556, type: !1751, scopeLine: 559, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !171, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!78, !1244, !61, !181, !704, !429}
!1753 = !{!1754, !1755, !1756, !1757, !1758, !1759}
!1754 = !DILocalVariable(name: "ctx", arg: 1, scope: !1750, file: !172, line: 556, type: !1244)
!1755 = !DILocalVariable(name: "in", arg: 2, scope: !1750, file: !172, line: 557, type: !61)
!1756 = !DILocalVariable(name: "inlen", arg: 3, scope: !1750, file: !172, line: 557, type: !181)
!1757 = !DILocalVariable(name: "out", arg: 4, scope: !1750, file: !172, line: 557, type: !704)
!1758 = !DILocalVariable(name: "outlen", arg: 5, scope: !1750, file: !172, line: 558, type: !429)
!1759 = !DILocalVariable(name: "needlen", scope: !1750, file: !172, line: 565, type: !181)
!1760 = !DILocation(line: 0, scope: !1750)
!1761 = !DILocation(line: 565, column: 3, scope: !1750)
!1762 = !DILocation(line: 565, column: 31, scope: !1750)
!1763 = !DILocation(line: 565, column: 21, scope: !1750)
!1764 = !DILocation(line: 565, column: 9, scope: !1750)
!1765 = !DILocation(line: 0, scope: !1380, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 567, column: 10, scope: !1750)
!1767 = !DILocation(line: 57, column: 26, scope: !1380, inlinedAt: !1766)
!1768 = !DILocation(line: 567, column: 8, scope: !1750)
!1769 = !DILocation(line: 568, column: 8, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1750, file: !172, line: 568, column: 7)
!1771 = !DILocation(line: 568, column: 7, scope: !1750)
!1772 = !DILocation(line: 571, column: 8, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1750, file: !172, line: 571, column: 7)
!1774 = !DILocation(line: 571, column: 7, scope: !1750)
!1775 = !DILocation(line: 573, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !172, line: 572, column: 5)
!1777 = !DILocation(line: 573, column: 7, scope: !1776)
!1778 = !DILocation(line: 574, column: 12, scope: !1776)
!1779 = !DILocation(line: 575, column: 7, scope: !1776)
!1780 = !DILocation(line: 578, column: 7, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1750, file: !172, line: 578, column: 7)
!1782 = !DILocation(line: 578, column: 7, scope: !1750)
!1783 = !DILocation(line: 579, column: 15, scope: !1781)
!1784 = !DILocation(line: 579, column: 13, scope: !1781)
!1785 = !DILocation(line: 579, column: 5, scope: !1781)
!1786 = !DILocation(line: 582, column: 1, scope: !1750)
!1787 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !200, file: !200, line: 50, type: !508, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1788)
!1788 = !{!1789}
!1789 = !DILocalVariable(name: "file", arg: 1, scope: !1787, file: !200, line: 50, type: !61)
!1790 = !DILocation(line: 0, scope: !1787)
!1791 = !DILocation(line: 52, column: 13, scope: !1787)
!1792 = !DILocation(line: 53, column: 1, scope: !1787)
!1793 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !200, file: !200, line: 87, type: !1794, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1796)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !78}
!1796 = !{!1797}
!1797 = !DILocalVariable(name: "ignore", arg: 1, scope: !1793, file: !200, line: 87, type: !78)
!1798 = !DILocation(line: 0, scope: !1793)
!1799 = !DILocation(line: 89, column: 16, scope: !1793)
!1800 = !{!1801, !1801, i64 0}
!1801 = !{!"_Bool", !488, i64 0}
!1802 = !DILocation(line: 90, column: 1, scope: !1793)
!1803 = distinct !DISubprogram(name: "close_stdout", scope: !200, file: !200, line: 116, type: !243, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !199, retainedNodes: !1804)
!1804 = !{!1805}
!1805 = !DILocalVariable(name: "write_error", scope: !1806, file: !200, line: 121, type: !61)
!1806 = distinct !DILexicalBlock(scope: !1807, file: !200, line: 120, column: 5)
!1807 = distinct !DILexicalBlock(scope: !1803, file: !200, line: 118, column: 7)
!1808 = !DILocation(line: 118, column: 21, scope: !1807)
!1809 = !DILocation(line: 118, column: 7, scope: !1807)
!1810 = !DILocation(line: 118, column: 29, scope: !1807)
!1811 = !DILocation(line: 119, column: 7, scope: !1807)
!1812 = !DILocation(line: 119, column: 12, scope: !1807)
!1813 = !{i8 0, i8 2}
!1814 = !DILocation(line: 119, column: 25, scope: !1807)
!1815 = !DILocation(line: 119, column: 28, scope: !1807)
!1816 = !DILocation(line: 119, column: 34, scope: !1807)
!1817 = !DILocation(line: 118, column: 7, scope: !1803)
!1818 = !DILocation(line: 121, column: 33, scope: !1806)
!1819 = !DILocation(line: 0, scope: !1806)
!1820 = !DILocation(line: 122, column: 11, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1806, file: !200, line: 122, column: 11)
!1822 = !DILocation(line: 0, scope: !1821)
!1823 = !DILocation(line: 122, column: 11, scope: !1806)
!1824 = !DILocation(line: 123, column: 9, scope: !1821)
!1825 = !DILocation(line: 126, column: 9, scope: !1821)
!1826 = !DILocation(line: 128, column: 14, scope: !1806)
!1827 = !DILocation(line: 128, column: 7, scope: !1806)
!1828 = !DILocation(line: 133, column: 42, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1803, file: !200, line: 133, column: 7)
!1830 = !DILocation(line: 133, column: 28, scope: !1829)
!1831 = !DILocation(line: 133, column: 50, scope: !1829)
!1832 = !DILocation(line: 133, column: 7, scope: !1803)
!1833 = !DILocation(line: 134, column: 12, scope: !1829)
!1834 = !DILocation(line: 134, column: 5, scope: !1829)
!1835 = !DILocation(line: 135, column: 1, scope: !1803)
!1836 = distinct !DISubprogram(name: "verror", scope: !207, file: !207, line: 251, type: !1837, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1839)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !56, !56, !61, !215}
!1839 = !{!1840, !1841, !1842, !1843}
!1840 = !DILocalVariable(name: "status", arg: 1, scope: !1836, file: !207, line: 251, type: !56)
!1841 = !DILocalVariable(name: "errnum", arg: 2, scope: !1836, file: !207, line: 251, type: !56)
!1842 = !DILocalVariable(name: "message", arg: 3, scope: !1836, file: !207, line: 251, type: !61)
!1843 = !DILocalVariable(name: "args", arg: 4, scope: !1836, file: !207, line: 251, type: !215)
!1844 = !DILocation(line: 0, scope: !1836)
!1845 = !DILocation(line: 251, column: 1, scope: !1836)
!1846 = !DILocation(line: 261, column: 3, scope: !1836)
!1847 = !DILocation(line: 265, column: 7, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1836, file: !207, line: 265, column: 7)
!1849 = !DILocation(line: 265, column: 7, scope: !1836)
!1850 = !DILocation(line: 266, column: 5, scope: !1848)
!1851 = !DILocation(line: 272, column: 7, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1848, file: !207, line: 268, column: 5)
!1853 = !DILocation(line: 276, column: 3, scope: !1836)
!1854 = !{i64 0, i64 8, !486, i64 8, i64 8, !486, i64 16, i64 8, !486, i64 24, i64 4, !581, i64 28, i64 4, !581}
!1855 = !DILocation(line: 282, column: 1, scope: !1836)
!1856 = distinct !DISubprogram(name: "flush_stdout", scope: !207, file: !207, line: 163, type: !243, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1857)
!1857 = !{!1858}
!1858 = !DILocalVariable(name: "stdout_fd", scope: !1856, file: !207, line: 166, type: !56)
!1859 = !DILocation(line: 0, scope: !1856)
!1860 = !DILocalVariable(name: "fd", arg: 1, scope: !1861, file: !207, line: 145, type: !56)
!1861 = distinct !DISubprogram(name: "is_open", scope: !207, file: !207, line: 145, type: !869, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1862)
!1862 = !{!1860}
!1863 = !DILocation(line: 0, scope: !1861, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 182, column: 25, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1856, file: !207, line: 182, column: 7)
!1866 = !DILocation(line: 157, column: 15, scope: !1861, inlinedAt: !1864)
!1867 = !DILocation(line: 182, column: 25, scope: !1865)
!1868 = !DILocation(line: 182, column: 7, scope: !1856)
!1869 = !DILocation(line: 184, column: 5, scope: !1865)
!1870 = !DILocation(line: 185, column: 1, scope: !1856)
!1871 = distinct !DISubprogram(name: "error_tail", scope: !207, file: !207, line: 219, type: !1837, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1872)
!1872 = !{!1873, !1874, !1875, !1876}
!1873 = !DILocalVariable(name: "status", arg: 1, scope: !1871, file: !207, line: 219, type: !56)
!1874 = !DILocalVariable(name: "errnum", arg: 2, scope: !1871, file: !207, line: 219, type: !56)
!1875 = !DILocalVariable(name: "message", arg: 3, scope: !1871, file: !207, line: 219, type: !61)
!1876 = !DILocalVariable(name: "args", arg: 4, scope: !1871, file: !207, line: 219, type: !215)
!1877 = !DILocation(line: 0, scope: !1871)
!1878 = !DILocation(line: 219, column: 1, scope: !1871)
!1879 = !DILocation(line: 229, column: 13, scope: !1871)
!1880 = !DILocation(line: 229, column: 3, scope: !1871)
!1881 = !DILocalVariable(name: "__stream", arg: 1, scope: !1882, file: !1883, line: 132, type: !1886)
!1882 = distinct !DISubprogram(name: "vfprintf", scope: !1883, file: !1883, line: 132, type: !1884, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1921)
!1883 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!56, !1886, !180, !217}
!1886 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !1890)
!1890 = !{!1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1889, file: !95, line: 51, baseType: !56, size: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1889, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1889, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1889, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1889, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1889, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1889, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1889, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1889, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1889, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1889, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1889, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1889, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1889, file: !95, line: 70, baseType: !1905, size: 64, offset: 832)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1889, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1889, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1889, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1889, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1889, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1889, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1889, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1889, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1889, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1889, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1889, file: !95, line: 93, baseType: !1905, size: 64, offset: 1344)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1889, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1889, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1889, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1889, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!1921 = !{!1881, !1922, !1923}
!1922 = !DILocalVariable(name: "__fmt", arg: 2, scope: !1882, file: !1883, line: 133, type: !180)
!1923 = !DILocalVariable(name: "__ap", arg: 3, scope: !1882, file: !1883, line: 133, type: !217)
!1924 = !DILocation(line: 0, scope: !1882, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 229, column: 3, scope: !1871)
!1926 = !DILocation(line: 135, column: 10, scope: !1882, inlinedAt: !1925)
!1927 = !{!1928, !1930}
!1928 = distinct !{!1928, !1929, !"vfprintf.inline: argument 0"}
!1929 = distinct !{!1929, !"vfprintf.inline"}
!1930 = distinct !{!1930, !1929, !"vfprintf.inline: argument 1"}
!1931 = !DILocation(line: 232, column: 3, scope: !1871)
!1932 = !DILocation(line: 233, column: 7, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1871, file: !207, line: 233, column: 7)
!1934 = !DILocation(line: 233, column: 7, scope: !1871)
!1935 = !DILocalVariable(name: "errnum", arg: 1, scope: !1936, file: !207, line: 188, type: !56)
!1936 = distinct !DISubprogram(name: "print_errno_message", scope: !207, file: !207, line: 188, type: !476, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1937)
!1937 = !{!1935, !1938, !1939}
!1938 = !DILocalVariable(name: "s", scope: !1936, file: !207, line: 190, type: !61)
!1939 = !DILocalVariable(name: "errbuf", scope: !1936, file: !207, line: 193, type: !1940)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 8192, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 1024)
!1943 = !DILocation(line: 0, scope: !1936, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 234, column: 5, scope: !1933)
!1945 = !DILocation(line: 193, column: 3, scope: !1936, inlinedAt: !1944)
!1946 = !DILocation(line: 193, column: 8, scope: !1936, inlinedAt: !1944)
!1947 = !DILocation(line: 195, column: 7, scope: !1936, inlinedAt: !1944)
!1948 = !DILocation(line: 207, column: 9, scope: !1949, inlinedAt: !1944)
!1949 = distinct !DILexicalBlock(scope: !1936, file: !207, line: 207, column: 7)
!1950 = !DILocation(line: 207, column: 7, scope: !1936, inlinedAt: !1944)
!1951 = !DILocation(line: 208, column: 9, scope: !1949, inlinedAt: !1944)
!1952 = !DILocation(line: 208, column: 5, scope: !1949, inlinedAt: !1944)
!1953 = !DILocation(line: 214, column: 3, scope: !1936, inlinedAt: !1944)
!1954 = !DILocation(line: 216, column: 1, scope: !1936, inlinedAt: !1944)
!1955 = !DILocation(line: 234, column: 5, scope: !1933)
!1956 = !DILocation(line: 238, column: 3, scope: !1871)
!1957 = !DILocalVariable(name: "__c", arg: 1, scope: !1958, file: !901, line: 101, type: !56)
!1958 = distinct !DISubprogram(name: "putc_unlocked", scope: !901, file: !901, line: 101, type: !1959, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1961)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!56, !56, !1887}
!1961 = !{!1957, !1962}
!1962 = !DILocalVariable(name: "__stream", arg: 2, scope: !1958, file: !901, line: 101, type: !1887)
!1963 = !DILocation(line: 0, scope: !1958, inlinedAt: !1964)
!1964 = distinct !DILocation(line: 238, column: 3, scope: !1871)
!1965 = !DILocation(line: 103, column: 10, scope: !1958, inlinedAt: !1964)
!1966 = !DILocation(line: 240, column: 3, scope: !1871)
!1967 = !DILocation(line: 241, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1871, file: !207, line: 241, column: 7)
!1969 = !DILocation(line: 241, column: 7, scope: !1871)
!1970 = !DILocation(line: 242, column: 5, scope: !1968)
!1971 = !DILocation(line: 243, column: 1, scope: !1871)
!1972 = !DISubprogram(name: "strerror_r", scope: !1973, file: !1973, line: 444, type: !1974, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1973 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!53, !56, !53, !58}
!1976 = !DISubprogram(name: "fcntl", scope: !1977, file: !1977, line: 149, type: !1978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!1977 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!56, !56, !56, null}
!1980 = distinct !DISubprogram(name: "error", scope: !207, file: !207, line: 285, type: !1981, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !1983)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{null, !56, !56, !61, null}
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DILocalVariable(name: "status", arg: 1, scope: !1980, file: !207, line: 285, type: !56)
!1985 = !DILocalVariable(name: "errnum", arg: 2, scope: !1980, file: !207, line: 285, type: !56)
!1986 = !DILocalVariable(name: "message", arg: 3, scope: !1980, file: !207, line: 285, type: !61)
!1987 = !DILocalVariable(name: "ap", scope: !1980, file: !207, line: 287, type: !215)
!1988 = !DILocation(line: 0, scope: !1980)
!1989 = !DILocation(line: 287, column: 3, scope: !1980)
!1990 = !DILocation(line: 287, column: 11, scope: !1980)
!1991 = !DILocation(line: 288, column: 3, scope: !1980)
!1992 = !DILocation(line: 289, column: 3, scope: !1980)
!1993 = !DILocation(line: 290, column: 3, scope: !1980)
!1994 = !DILocation(line: 291, column: 1, scope: !1980)
!1995 = !DILocation(line: 0, scope: !212)
!1996 = !DILocation(line: 298, column: 1, scope: !212)
!1997 = !DILocation(line: 302, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !212, file: !207, line: 302, column: 7)
!1999 = !DILocation(line: 302, column: 7, scope: !212)
!2000 = !DILocation(line: 307, column: 11, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !2002, file: !207, line: 307, column: 11)
!2002 = distinct !DILexicalBlock(scope: !1998, file: !207, line: 303, column: 5)
!2003 = !DILocation(line: 307, column: 27, scope: !2001)
!2004 = !DILocation(line: 308, column: 11, scope: !2001)
!2005 = !DILocation(line: 308, column: 28, scope: !2001)
!2006 = !DILocation(line: 308, column: 25, scope: !2001)
!2007 = !DILocation(line: 309, column: 15, scope: !2001)
!2008 = !DILocation(line: 309, column: 33, scope: !2001)
!2009 = !DILocation(line: 310, column: 19, scope: !2001)
!2010 = !DILocation(line: 311, column: 22, scope: !2001)
!2011 = !DILocation(line: 311, column: 56, scope: !2001)
!2012 = !DILocation(line: 307, column: 11, scope: !2002)
!2013 = !DILocation(line: 316, column: 21, scope: !2002)
!2014 = !DILocation(line: 317, column: 23, scope: !2002)
!2015 = !DILocation(line: 318, column: 5, scope: !2002)
!2016 = !DILocation(line: 327, column: 3, scope: !212)
!2017 = !DILocation(line: 331, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !212, file: !207, line: 331, column: 7)
!2019 = !DILocation(line: 331, column: 7, scope: !212)
!2020 = !DILocation(line: 332, column: 5, scope: !2018)
!2021 = !DILocation(line: 338, column: 7, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2018, file: !207, line: 334, column: 5)
!2023 = !DILocation(line: 346, column: 3, scope: !212)
!2024 = !DILocation(line: 350, column: 3, scope: !212)
!2025 = !DILocation(line: 356, column: 1, scope: !212)
!2026 = distinct !DISubprogram(name: "error_at_line", scope: !207, file: !207, line: 359, type: !2027, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !206, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{null, !56, !56, !61, !7, !61, null}
!2029 = !{!2030, !2031, !2032, !2033, !2034, !2035}
!2030 = !DILocalVariable(name: "status", arg: 1, scope: !2026, file: !207, line: 359, type: !56)
!2031 = !DILocalVariable(name: "errnum", arg: 2, scope: !2026, file: !207, line: 359, type: !56)
!2032 = !DILocalVariable(name: "file_name", arg: 3, scope: !2026, file: !207, line: 359, type: !61)
!2033 = !DILocalVariable(name: "line_number", arg: 4, scope: !2026, file: !207, line: 360, type: !7)
!2034 = !DILocalVariable(name: "message", arg: 5, scope: !2026, file: !207, line: 360, type: !61)
!2035 = !DILocalVariable(name: "ap", scope: !2026, file: !207, line: 362, type: !215)
!2036 = !DILocation(line: 0, scope: !2026)
!2037 = !DILocation(line: 362, column: 3, scope: !2026)
!2038 = !DILocation(line: 362, column: 11, scope: !2026)
!2039 = !DILocation(line: 363, column: 3, scope: !2026)
!2040 = !DILocation(line: 364, column: 3, scope: !2026)
!2041 = !DILocation(line: 366, column: 3, scope: !2026)
!2042 = !DILocation(line: 367, column: 1, scope: !2026)
!2043 = distinct !DISubprogram(name: "fdadvise", scope: !391, file: !391, line: 25, type: !2044, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2048)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !56, !2046, !2046, !2047}
!2046 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !216, line: 63, baseType: !117)
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !29, line: 51, baseType: !28)
!2048 = !{!2049, !2050, !2051, !2052}
!2049 = !DILocalVariable(name: "fd", arg: 1, scope: !2043, file: !391, line: 25, type: !56)
!2050 = !DILocalVariable(name: "offset", arg: 2, scope: !2043, file: !391, line: 25, type: !2046)
!2051 = !DILocalVariable(name: "len", arg: 3, scope: !2043, file: !391, line: 25, type: !2046)
!2052 = !DILocalVariable(name: "advice", arg: 4, scope: !2043, file: !391, line: 25, type: !2047)
!2053 = !DILocation(line: 0, scope: !2043)
!2054 = !DILocation(line: 28, column: 3, scope: !2043)
!2055 = !DILocation(line: 30, column: 1, scope: !2043)
!2056 = !DISubprogram(name: "posix_fadvise", scope: !1977, file: !1977, line: 273, type: !2057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!56, !56, !2046, !2046, !56}
!2059 = distinct !DISubprogram(name: "fadvise", scope: !391, file: !391, line: 33, type: !2060, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !390, retainedNodes: !2096)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !2062, !2047}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2064)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2065)
!2065 = !{!2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2064, file: !95, line: 51, baseType: !56, size: 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2064, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2064, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2064, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2064, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2064, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2064, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2064, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2064, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2064, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2064, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2064, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2064, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2064, file: !95, line: 70, baseType: !2080, size: 64, offset: 832)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2064, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2064, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2064, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2064, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2064, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2064, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2064, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2064, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2064, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2064, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2064, file: !95, line: 93, baseType: !2080, size: 64, offset: 1344)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2064, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2064, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2064, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2064, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2096 = !{!2097, !2098}
!2097 = !DILocalVariable(name: "fp", arg: 1, scope: !2059, file: !391, line: 33, type: !2062)
!2098 = !DILocalVariable(name: "advice", arg: 2, scope: !2059, file: !391, line: 33, type: !2047)
!2099 = !DILocation(line: 0, scope: !2059)
!2100 = !DILocation(line: 35, column: 7, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2059, file: !391, line: 35, column: 7)
!2102 = !DILocation(line: 35, column: 7, scope: !2059)
!2103 = !DILocation(line: 36, column: 15, scope: !2101)
!2104 = !DILocation(line: 0, scope: !2043, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 36, column: 5, scope: !2101)
!2106 = !DILocation(line: 28, column: 3, scope: !2043, inlinedAt: !2105)
!2107 = !DILocation(line: 36, column: 5, scope: !2101)
!2108 = !DILocation(line: 37, column: 1, scope: !2059)
!2109 = !DISubprogram(name: "fileno", scope: !216, file: !216, line: 809, type: !2110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!56, !2062}
!2112 = distinct !DISubprogram(name: "rpl_fclose", scope: !394, file: !394, line: 58, type: !2113, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !393, retainedNodes: !2149)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!56, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2117, file: !95, line: 51, baseType: !56, size: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2117, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2117, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2117, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2117, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2117, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2117, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2117, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2117, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2117, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2117, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2117, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2117, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2117, file: !95, line: 70, baseType: !2133, size: 64, offset: 832)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2117, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2117, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2117, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2117, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2117, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2117, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2117, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2117, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2117, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2117, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2117, file: !95, line: 93, baseType: !2133, size: 64, offset: 1344)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2117, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2117, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2117, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2117, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2149 = !{!2150, !2151, !2152, !2153}
!2150 = !DILocalVariable(name: "fp", arg: 1, scope: !2112, file: !394, line: 58, type: !2115)
!2151 = !DILocalVariable(name: "saved_errno", scope: !2112, file: !394, line: 60, type: !56)
!2152 = !DILocalVariable(name: "fd", scope: !2112, file: !394, line: 63, type: !56)
!2153 = !DILocalVariable(name: "result", scope: !2112, file: !394, line: 74, type: !56)
!2154 = !DILocation(line: 0, scope: !2112)
!2155 = !DILocation(line: 63, column: 12, scope: !2112)
!2156 = !DILocation(line: 64, column: 10, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2112, file: !394, line: 64, column: 7)
!2158 = !DILocation(line: 64, column: 7, scope: !2112)
!2159 = !DILocation(line: 65, column: 12, scope: !2157)
!2160 = !DILocation(line: 65, column: 5, scope: !2157)
!2161 = !DILocation(line: 70, column: 9, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2112, file: !394, line: 70, column: 7)
!2163 = !DILocation(line: 70, column: 23, scope: !2162)
!2164 = !DILocation(line: 70, column: 33, scope: !2162)
!2165 = !DILocation(line: 70, column: 26, scope: !2162)
!2166 = !DILocation(line: 70, column: 59, scope: !2162)
!2167 = !DILocation(line: 71, column: 7, scope: !2162)
!2168 = !DILocation(line: 71, column: 10, scope: !2162)
!2169 = !DILocation(line: 70, column: 7, scope: !2112)
!2170 = !DILocation(line: 100, column: 12, scope: !2112)
!2171 = !DILocation(line: 105, column: 7, scope: !2112)
!2172 = !DILocation(line: 72, column: 19, scope: !2162)
!2173 = !DILocation(line: 105, column: 19, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2112, file: !394, line: 105, column: 7)
!2175 = !DILocation(line: 107, column: 13, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2174, file: !394, line: 106, column: 5)
!2177 = !DILocation(line: 109, column: 5, scope: !2176)
!2178 = !DILocation(line: 112, column: 1, scope: !2112)
!2179 = !DISubprogram(name: "fclose", scope: !216, file: !216, line: 178, type: !2113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2180 = !DISubprogram(name: "lseek", scope: !2181, file: !2181, line: 339, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2181 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!117, !56, !117, !56}
!2184 = distinct !DISubprogram(name: "rpl_fflush", scope: !396, file: !396, line: 130, type: !2185, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2221)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!56, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2190)
!2190 = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2189, file: !95, line: 51, baseType: !56, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2189, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2189, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2189, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2189, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2189, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2189, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2189, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2189, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2189, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2189, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2189, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2189, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2189, file: !95, line: 70, baseType: !2205, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2189, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2189, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2189, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2189, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2189, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2189, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2189, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2189, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2189, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2189, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2189, file: !95, line: 93, baseType: !2205, size: 64, offset: 1344)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2189, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2189, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2189, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2189, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2221 = !{!2222}
!2222 = !DILocalVariable(name: "stream", arg: 1, scope: !2184, file: !396, line: 130, type: !2187)
!2223 = !DILocation(line: 0, scope: !2184)
!2224 = !DILocation(line: 151, column: 14, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2184, file: !396, line: 151, column: 7)
!2226 = !DILocation(line: 151, column: 22, scope: !2225)
!2227 = !DILocation(line: 151, column: 27, scope: !2225)
!2228 = !DILocation(line: 151, column: 7, scope: !2184)
!2229 = !DILocation(line: 152, column: 12, scope: !2225)
!2230 = !DILocation(line: 152, column: 5, scope: !2225)
!2231 = !DILocalVariable(name: "fp", arg: 1, scope: !2232, file: !396, line: 42, type: !2187)
!2232 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !396, file: !396, line: 42, type: !2233, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !395, retainedNodes: !2235)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{null, !2187}
!2235 = !{!2231}
!2236 = !DILocation(line: 0, scope: !2232, inlinedAt: !2237)
!2237 = distinct !DILocation(line: 157, column: 3, scope: !2184)
!2238 = !DILocation(line: 44, column: 12, scope: !2239, inlinedAt: !2237)
!2239 = distinct !DILexicalBlock(scope: !2232, file: !396, line: 44, column: 7)
!2240 = !DILocation(line: 44, column: 19, scope: !2239, inlinedAt: !2237)
!2241 = !DILocation(line: 44, column: 7, scope: !2232, inlinedAt: !2237)
!2242 = !DILocation(line: 46, column: 5, scope: !2239, inlinedAt: !2237)
!2243 = !DILocation(line: 159, column: 10, scope: !2184)
!2244 = !DILocation(line: 159, column: 3, scope: !2184)
!2245 = !DILocation(line: 236, column: 1, scope: !2184)
!2246 = !DISubprogram(name: "fflush", scope: !216, file: !216, line: 230, type: !2185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2247 = distinct !DISubprogram(name: "fpurge", scope: !399, file: !399, line: 32, type: !2248, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !398, retainedNodes: !2284)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!56, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2252, file: !95, line: 51, baseType: !56, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2252, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2252, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2252, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2252, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2252, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2252, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2252, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2252, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2252, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2252, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2252, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2252, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2252, file: !95, line: 70, baseType: !2268, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2252, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2252, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2252, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2252, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2252, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2252, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2252, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2252, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2252, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2252, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2252, file: !95, line: 93, baseType: !2268, size: 64, offset: 1344)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2252, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2252, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2252, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2252, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2284 = !{!2285}
!2285 = !DILocalVariable(name: "fp", arg: 1, scope: !2247, file: !399, line: 32, type: !2250)
!2286 = !DILocation(line: 0, scope: !2247)
!2287 = !DILocation(line: 36, column: 3, scope: !2247)
!2288 = !DILocation(line: 38, column: 3, scope: !2247)
!2289 = distinct !DISubprogram(name: "rpl_fseeko", scope: !401, file: !401, line: 28, type: !2290, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !400, retainedNodes: !2326)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!56, !2292, !2046, !56}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !2294)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2294, file: !95, line: 51, baseType: !56, size: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2294, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2294, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2294, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2294, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2294, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2294, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2294, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2294, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2294, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2294, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2294, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2294, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2294, file: !95, line: 70, baseType: !2310, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2294, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2294, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2294, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2294, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2294, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2294, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2294, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2294, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2294, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2294, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2294, file: !95, line: 93, baseType: !2310, size: 64, offset: 1344)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2294, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2294, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2294, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2294, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!2326 = !{!2327, !2328, !2329, !2330}
!2327 = !DILocalVariable(name: "fp", arg: 1, scope: !2289, file: !401, line: 28, type: !2292)
!2328 = !DILocalVariable(name: "offset", arg: 2, scope: !2289, file: !401, line: 28, type: !2046)
!2329 = !DILocalVariable(name: "whence", arg: 3, scope: !2289, file: !401, line: 28, type: !56)
!2330 = !DILocalVariable(name: "pos", scope: !2331, file: !401, line: 123, type: !2046)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !401, line: 119, column: 5)
!2332 = distinct !DILexicalBlock(scope: !2289, file: !401, line: 55, column: 7)
!2333 = !DILocation(line: 0, scope: !2289)
!2334 = !DILocation(line: 55, column: 12, scope: !2332)
!2335 = !{!910, !487, i64 16}
!2336 = !DILocation(line: 55, column: 33, scope: !2332)
!2337 = !{!910, !487, i64 8}
!2338 = !DILocation(line: 55, column: 25, scope: !2332)
!2339 = !DILocation(line: 56, column: 7, scope: !2332)
!2340 = !DILocation(line: 56, column: 15, scope: !2332)
!2341 = !DILocation(line: 56, column: 37, scope: !2332)
!2342 = !{!910, !487, i64 32}
!2343 = !DILocation(line: 56, column: 29, scope: !2332)
!2344 = !DILocation(line: 57, column: 7, scope: !2332)
!2345 = !DILocation(line: 57, column: 15, scope: !2332)
!2346 = !{!910, !487, i64 72}
!2347 = !DILocation(line: 57, column: 29, scope: !2332)
!2348 = !DILocation(line: 55, column: 7, scope: !2289)
!2349 = !DILocation(line: 123, column: 26, scope: !2331)
!2350 = !DILocation(line: 123, column: 19, scope: !2331)
!2351 = !DILocation(line: 0, scope: !2331)
!2352 = !DILocation(line: 124, column: 15, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2331, file: !401, line: 124, column: 11)
!2354 = !DILocation(line: 124, column: 11, scope: !2331)
!2355 = !DILocation(line: 135, column: 12, scope: !2331)
!2356 = !DILocation(line: 135, column: 19, scope: !2331)
!2357 = !DILocation(line: 136, column: 12, scope: !2331)
!2358 = !DILocation(line: 136, column: 20, scope: !2331)
!2359 = !{!910, !911, i64 144}
!2360 = !DILocation(line: 167, column: 7, scope: !2331)
!2361 = !DILocation(line: 169, column: 10, scope: !2289)
!2362 = !DILocation(line: 169, column: 3, scope: !2289)
!2363 = !DILocation(line: 170, column: 1, scope: !2289)
!2364 = !DISubprogram(name: "fseeko", scope: !216, file: !216, line: 736, type: !2365, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!56, !2292, !117, !56}
!2367 = distinct !DISubprogram(name: "getprogname", scope: !403, file: !403, line: 54, type: !2368, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !402, retainedNodes: !495)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!61}
!2370 = !DILocation(line: 58, column: 10, scope: !2367)
!2371 = !DILocation(line: 58, column: 3, scope: !2367)
!2372 = distinct !DISubprogram(name: "set_program_name", scope: !248, file: !248, line: 37, type: !508, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2373)
!2373 = !{!2374, !2375, !2376}
!2374 = !DILocalVariable(name: "argv0", arg: 1, scope: !2372, file: !248, line: 37, type: !61)
!2375 = !DILocalVariable(name: "slash", scope: !2372, file: !248, line: 44, type: !61)
!2376 = !DILocalVariable(name: "base", scope: !2372, file: !248, line: 45, type: !61)
!2377 = !DILocation(line: 0, scope: !2372)
!2378 = !DILocation(line: 44, column: 23, scope: !2372)
!2379 = !DILocation(line: 45, column: 22, scope: !2372)
!2380 = !DILocation(line: 46, column: 17, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2372, file: !248, line: 46, column: 7)
!2382 = !DILocation(line: 46, column: 9, scope: !2381)
!2383 = !DILocation(line: 46, column: 25, scope: !2381)
!2384 = !DILocation(line: 46, column: 40, scope: !2381)
!2385 = !DILocalVariable(name: "__s1", arg: 1, scope: !2386, file: !533, line: 974, type: !699)
!2386 = distinct !DISubprogram(name: "memeq", scope: !533, file: !533, line: 974, type: !2387, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !247, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!78, !699, !699, !58}
!2389 = !{!2385, !2390, !2391}
!2390 = !DILocalVariable(name: "__s2", arg: 2, scope: !2386, file: !533, line: 974, type: !699)
!2391 = !DILocalVariable(name: "__n", arg: 3, scope: !2386, file: !533, line: 974, type: !58)
!2392 = !DILocation(line: 0, scope: !2386, inlinedAt: !2393)
!2393 = distinct !DILocation(line: 46, column: 28, scope: !2381)
!2394 = !DILocation(line: 976, column: 11, scope: !2386, inlinedAt: !2393)
!2395 = !DILocation(line: 976, column: 10, scope: !2386, inlinedAt: !2393)
!2396 = !DILocation(line: 46, column: 7, scope: !2372)
!2397 = !DILocation(line: 49, column: 11, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !248, line: 49, column: 11)
!2399 = distinct !DILexicalBlock(scope: !2381, file: !248, line: 47, column: 5)
!2400 = !DILocation(line: 49, column: 36, scope: !2398)
!2401 = !DILocation(line: 49, column: 11, scope: !2399)
!2402 = !DILocation(line: 65, column: 16, scope: !2372)
!2403 = !DILocation(line: 71, column: 27, scope: !2372)
!2404 = !DILocation(line: 74, column: 33, scope: !2372)
!2405 = !DILocation(line: 76, column: 1, scope: !2372)
!2406 = !DILocation(line: 0, scope: !253)
!2407 = !DILocation(line: 40, column: 29, scope: !253)
!2408 = !DILocation(line: 41, column: 19, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !253, file: !254, line: 41, column: 7)
!2410 = !DILocation(line: 41, column: 7, scope: !253)
!2411 = !DILocation(line: 47, column: 3, scope: !253)
!2412 = !DILocation(line: 48, column: 3, scope: !253)
!2413 = !DILocation(line: 48, column: 13, scope: !253)
!2414 = !DILocalVariable(name: "ps", arg: 1, scope: !2415, file: !2416, line: 1135, type: !2419)
!2415 = distinct !DISubprogram(name: "mbszero", scope: !2416, file: !2416, line: 1135, type: !2417, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !2420)
!2416 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2417 = !DISubroutineType(types: !2418)
!2418 = !{null, !2419}
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!2420 = !{!2414}
!2421 = !DILocation(line: 0, scope: !2415, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 48, column: 18, scope: !253)
!2423 = !DILocalVariable(name: "__dest", arg: 1, scope: !2424, file: !883, line: 57, type: !55)
!2424 = distinct !DISubprogram(name: "memset", scope: !883, file: !883, line: 57, type: !2425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !257, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!55, !55, !56, !58}
!2427 = !{!2423, !2428, !2429}
!2428 = !DILocalVariable(name: "__ch", arg: 2, scope: !2424, file: !883, line: 57, type: !56)
!2429 = !DILocalVariable(name: "__len", arg: 3, scope: !2424, file: !883, line: 57, type: !58)
!2430 = !DILocation(line: 0, scope: !2424, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 1137, column: 3, scope: !2415, inlinedAt: !2422)
!2432 = !DILocation(line: 59, column: 10, scope: !2424, inlinedAt: !2431)
!2433 = !DILocation(line: 49, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !253, file: !254, line: 49, column: 7)
!2435 = !DILocation(line: 49, column: 39, scope: !2434)
!2436 = !DILocation(line: 49, column: 44, scope: !2434)
!2437 = !DILocation(line: 54, column: 1, scope: !253)
!2438 = !DISubprogram(name: "mbrtoc32", scope: !265, file: !265, line: 57, type: !2439, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!2439 = !DISubroutineType(types: !2440)
!2440 = !{!58, !2441, !180, !58, !2443}
!2441 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2442)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2419)
!2444 = distinct !DISubprogram(name: "clone_quoting_options", scope: !290, file: !290, line: 113, type: !2445, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2448)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{!2447, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!2448 = !{!2449, !2450, !2451}
!2449 = !DILocalVariable(name: "o", arg: 1, scope: !2444, file: !290, line: 113, type: !2447)
!2450 = !DILocalVariable(name: "saved_errno", scope: !2444, file: !290, line: 115, type: !56)
!2451 = !DILocalVariable(name: "p", scope: !2444, file: !290, line: 116, type: !2447)
!2452 = !DILocation(line: 0, scope: !2444)
!2453 = !DILocation(line: 115, column: 21, scope: !2444)
!2454 = !DILocation(line: 116, column: 40, scope: !2444)
!2455 = !DILocation(line: 116, column: 31, scope: !2444)
!2456 = !DILocation(line: 118, column: 9, scope: !2444)
!2457 = !DILocation(line: 119, column: 3, scope: !2444)
!2458 = distinct !DISubprogram(name: "get_quoting_style", scope: !290, file: !290, line: 124, type: !2459, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2463)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!14, !2461}
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "o", arg: 1, scope: !2458, file: !290, line: 124, type: !2461)
!2465 = !DILocation(line: 0, scope: !2458)
!2466 = !DILocation(line: 126, column: 11, scope: !2458)
!2467 = !DILocation(line: 126, column: 46, scope: !2458)
!2468 = !{!2469, !488, i64 0}
!2469 = !{!"quoting_options", !488, i64 0, !582, i64 4, !488, i64 8, !487, i64 40, !487, i64 48}
!2470 = !DILocation(line: 126, column: 3, scope: !2458)
!2471 = distinct !DISubprogram(name: "set_quoting_style", scope: !290, file: !290, line: 132, type: !2472, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2474)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2447, !14}
!2474 = !{!2475, !2476}
!2475 = !DILocalVariable(name: "o", arg: 1, scope: !2471, file: !290, line: 132, type: !2447)
!2476 = !DILocalVariable(name: "s", arg: 2, scope: !2471, file: !290, line: 132, type: !14)
!2477 = !DILocation(line: 0, scope: !2471)
!2478 = !DILocation(line: 134, column: 4, scope: !2471)
!2479 = !DILocation(line: 134, column: 39, scope: !2471)
!2480 = !DILocation(line: 134, column: 45, scope: !2471)
!2481 = !DILocation(line: 135, column: 1, scope: !2471)
!2482 = distinct !DISubprogram(name: "set_char_quoting", scope: !290, file: !290, line: 143, type: !2483, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2485)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!56, !2447, !54, !56}
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2492, !2493}
!2486 = !DILocalVariable(name: "o", arg: 1, scope: !2482, file: !290, line: 143, type: !2447)
!2487 = !DILocalVariable(name: "c", arg: 2, scope: !2482, file: !290, line: 143, type: !54)
!2488 = !DILocalVariable(name: "i", arg: 3, scope: !2482, file: !290, line: 143, type: !56)
!2489 = !DILocalVariable(name: "uc", scope: !2482, file: !290, line: 145, type: !63)
!2490 = !DILocalVariable(name: "p", scope: !2482, file: !290, line: 146, type: !2491)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2492 = !DILocalVariable(name: "shift", scope: !2482, file: !290, line: 148, type: !56)
!2493 = !DILocalVariable(name: "r", scope: !2482, file: !290, line: 149, type: !7)
!2494 = !DILocation(line: 0, scope: !2482)
!2495 = !DILocation(line: 147, column: 6, scope: !2482)
!2496 = !DILocation(line: 147, column: 62, scope: !2482)
!2497 = !DILocation(line: 147, column: 57, scope: !2482)
!2498 = !DILocation(line: 148, column: 15, scope: !2482)
!2499 = !DILocation(line: 149, column: 21, scope: !2482)
!2500 = !DILocation(line: 149, column: 24, scope: !2482)
!2501 = !DILocation(line: 149, column: 34, scope: !2482)
!2502 = !DILocation(line: 150, column: 13, scope: !2482)
!2503 = !DILocation(line: 150, column: 19, scope: !2482)
!2504 = !DILocation(line: 150, column: 24, scope: !2482)
!2505 = !DILocation(line: 150, column: 6, scope: !2482)
!2506 = !DILocation(line: 151, column: 3, scope: !2482)
!2507 = distinct !DISubprogram(name: "set_quoting_flags", scope: !290, file: !290, line: 159, type: !2508, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2510)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!56, !2447, !56}
!2510 = !{!2511, !2512, !2513}
!2511 = !DILocalVariable(name: "o", arg: 1, scope: !2507, file: !290, line: 159, type: !2447)
!2512 = !DILocalVariable(name: "i", arg: 2, scope: !2507, file: !290, line: 159, type: !56)
!2513 = !DILocalVariable(name: "r", scope: !2507, file: !290, line: 163, type: !56)
!2514 = !DILocation(line: 0, scope: !2507)
!2515 = !DILocation(line: 161, column: 8, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2507, file: !290, line: 161, column: 7)
!2517 = !DILocation(line: 161, column: 7, scope: !2507)
!2518 = !DILocation(line: 163, column: 14, scope: !2507)
!2519 = !{!2469, !582, i64 4}
!2520 = !DILocation(line: 164, column: 12, scope: !2507)
!2521 = !DILocation(line: 165, column: 3, scope: !2507)
!2522 = distinct !DISubprogram(name: "set_custom_quoting", scope: !290, file: !290, line: 169, type: !2523, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2525)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !2447, !61, !61}
!2525 = !{!2526, !2527, !2528}
!2526 = !DILocalVariable(name: "o", arg: 1, scope: !2522, file: !290, line: 169, type: !2447)
!2527 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2522, file: !290, line: 170, type: !61)
!2528 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2522, file: !290, line: 170, type: !61)
!2529 = !DILocation(line: 0, scope: !2522)
!2530 = !DILocation(line: 172, column: 8, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2522, file: !290, line: 172, column: 7)
!2532 = !DILocation(line: 172, column: 7, scope: !2522)
!2533 = !DILocation(line: 174, column: 6, scope: !2522)
!2534 = !DILocation(line: 174, column: 12, scope: !2522)
!2535 = !DILocation(line: 175, column: 8, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2522, file: !290, line: 175, column: 7)
!2537 = !DILocation(line: 175, column: 19, scope: !2536)
!2538 = !DILocation(line: 176, column: 5, scope: !2536)
!2539 = !DILocation(line: 177, column: 6, scope: !2522)
!2540 = !DILocation(line: 177, column: 17, scope: !2522)
!2541 = !{!2469, !487, i64 40}
!2542 = !DILocation(line: 178, column: 6, scope: !2522)
!2543 = !DILocation(line: 178, column: 18, scope: !2522)
!2544 = !{!2469, !487, i64 48}
!2545 = !DILocation(line: 179, column: 1, scope: !2522)
!2546 = distinct !DISubprogram(name: "quotearg_buffer", scope: !290, file: !290, line: 774, type: !2547, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2549)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!58, !53, !58, !61, !58, !2461}
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557}
!2550 = !DILocalVariable(name: "buffer", arg: 1, scope: !2546, file: !290, line: 774, type: !53)
!2551 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2546, file: !290, line: 774, type: !58)
!2552 = !DILocalVariable(name: "arg", arg: 3, scope: !2546, file: !290, line: 775, type: !61)
!2553 = !DILocalVariable(name: "argsize", arg: 4, scope: !2546, file: !290, line: 775, type: !58)
!2554 = !DILocalVariable(name: "o", arg: 5, scope: !2546, file: !290, line: 776, type: !2461)
!2555 = !DILocalVariable(name: "p", scope: !2546, file: !290, line: 778, type: !2461)
!2556 = !DILocalVariable(name: "saved_errno", scope: !2546, file: !290, line: 779, type: !56)
!2557 = !DILocalVariable(name: "r", scope: !2546, file: !290, line: 780, type: !58)
!2558 = !DILocation(line: 0, scope: !2546)
!2559 = !DILocation(line: 778, column: 37, scope: !2546)
!2560 = !DILocation(line: 779, column: 21, scope: !2546)
!2561 = !DILocation(line: 781, column: 43, scope: !2546)
!2562 = !DILocation(line: 781, column: 53, scope: !2546)
!2563 = !DILocation(line: 781, column: 60, scope: !2546)
!2564 = !DILocation(line: 782, column: 43, scope: !2546)
!2565 = !DILocation(line: 782, column: 58, scope: !2546)
!2566 = !DILocation(line: 780, column: 14, scope: !2546)
!2567 = !DILocation(line: 783, column: 9, scope: !2546)
!2568 = !DILocation(line: 784, column: 3, scope: !2546)
!2569 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !290, file: !290, line: 251, type: !2570, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2574)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!58, !53, !58, !61, !58, !14, !56, !2572, !61, !61}
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2574 = !{!2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2599, !2601, !2604, !2605, !2606, !2607, !2610, !2611, !2614, !2618, !2619, !2627, !2630, !2631, !2633, !2634, !2635, !2636}
!2575 = !DILocalVariable(name: "buffer", arg: 1, scope: !2569, file: !290, line: 251, type: !53)
!2576 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2569, file: !290, line: 251, type: !58)
!2577 = !DILocalVariable(name: "arg", arg: 3, scope: !2569, file: !290, line: 252, type: !61)
!2578 = !DILocalVariable(name: "argsize", arg: 4, scope: !2569, file: !290, line: 252, type: !58)
!2579 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2569, file: !290, line: 253, type: !14)
!2580 = !DILocalVariable(name: "flags", arg: 6, scope: !2569, file: !290, line: 253, type: !56)
!2581 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2569, file: !290, line: 254, type: !2572)
!2582 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2569, file: !290, line: 255, type: !61)
!2583 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2569, file: !290, line: 256, type: !61)
!2584 = !DILocalVariable(name: "unibyte_locale", scope: !2569, file: !290, line: 258, type: !78)
!2585 = !DILocalVariable(name: "len", scope: !2569, file: !290, line: 260, type: !58)
!2586 = !DILocalVariable(name: "orig_buffersize", scope: !2569, file: !290, line: 261, type: !58)
!2587 = !DILocalVariable(name: "quote_string", scope: !2569, file: !290, line: 262, type: !61)
!2588 = !DILocalVariable(name: "quote_string_len", scope: !2569, file: !290, line: 263, type: !58)
!2589 = !DILocalVariable(name: "backslash_escapes", scope: !2569, file: !290, line: 264, type: !78)
!2590 = !DILocalVariable(name: "elide_outer_quotes", scope: !2569, file: !290, line: 265, type: !78)
!2591 = !DILocalVariable(name: "encountered_single_quote", scope: !2569, file: !290, line: 266, type: !78)
!2592 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2569, file: !290, line: 267, type: !78)
!2593 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2569, file: !290, line: 309, type: !78)
!2594 = !DILocalVariable(name: "lq", scope: !2595, file: !290, line: 361, type: !61)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !290, line: 361, column: 11)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !290, line: 360, column: 13)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !290, line: 333, column: 7)
!2598 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 312, column: 5)
!2599 = !DILocalVariable(name: "i", scope: !2600, file: !290, line: 395, type: !58)
!2600 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 395, column: 3)
!2601 = !DILocalVariable(name: "is_right_quote", scope: !2602, file: !290, line: 397, type: !78)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !290, line: 396, column: 5)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !290, line: 395, column: 3)
!2604 = !DILocalVariable(name: "escaping", scope: !2602, file: !290, line: 398, type: !78)
!2605 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2602, file: !290, line: 399, type: !78)
!2606 = !DILocalVariable(name: "c", scope: !2602, file: !290, line: 417, type: !63)
!2607 = !DILocalVariable(name: "m", scope: !2608, file: !290, line: 598, type: !58)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 596, column: 11)
!2609 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 419, column: 9)
!2610 = !DILocalVariable(name: "printable", scope: !2608, file: !290, line: 600, type: !78)
!2611 = !DILocalVariable(name: "mbs", scope: !2612, file: !290, line: 609, type: !333)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !290, line: 608, column: 15)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !290, line: 602, column: 17)
!2614 = !DILocalVariable(name: "w", scope: !2615, file: !290, line: 618, type: !264)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !290, line: 617, column: 19)
!2616 = distinct !DILexicalBlock(scope: !2617, file: !290, line: 616, column: 17)
!2617 = distinct !DILexicalBlock(scope: !2612, file: !290, line: 616, column: 17)
!2618 = !DILocalVariable(name: "bytes", scope: !2615, file: !290, line: 619, type: !58)
!2619 = !DILocalVariable(name: "j", scope: !2620, file: !290, line: 648, type: !58)
!2620 = distinct !DILexicalBlock(scope: !2621, file: !290, line: 648, column: 29)
!2621 = distinct !DILexicalBlock(scope: !2622, file: !290, line: 647, column: 27)
!2622 = distinct !DILexicalBlock(scope: !2623, file: !290, line: 645, column: 29)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !290, line: 636, column: 23)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !290, line: 628, column: 30)
!2625 = distinct !DILexicalBlock(scope: !2626, file: !290, line: 623, column: 30)
!2626 = distinct !DILexicalBlock(scope: !2615, file: !290, line: 621, column: 25)
!2627 = !DILocalVariable(name: "ilim", scope: !2628, file: !290, line: 674, type: !58)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !290, line: 671, column: 15)
!2629 = distinct !DILexicalBlock(scope: !2608, file: !290, line: 670, column: 17)
!2630 = !DILabel(scope: !2569, name: "process_input", file: !290, line: 308)
!2631 = !DILabel(scope: !2632, name: "c_and_shell_escape", file: !290, line: 502)
!2632 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 478, column: 9)
!2633 = !DILabel(scope: !2632, name: "c_escape", file: !290, line: 507)
!2634 = !DILabel(scope: !2602, name: "store_escape", file: !290, line: 709)
!2635 = !DILabel(scope: !2602, name: "store_c", file: !290, line: 712)
!2636 = !DILabel(scope: !2569, name: "force_outer_quoting_style", file: !290, line: 753)
!2637 = !DILocation(line: 0, scope: !2569)
!2638 = !DILocation(line: 258, column: 25, scope: !2569)
!2639 = !DILocation(line: 258, column: 36, scope: !2569)
!2640 = !DILocation(line: 267, column: 3, scope: !2569)
!2641 = !DILocation(line: 261, column: 10, scope: !2569)
!2642 = !DILocation(line: 262, column: 15, scope: !2569)
!2643 = !DILocation(line: 263, column: 10, scope: !2569)
!2644 = !DILocation(line: 308, column: 2, scope: !2569)
!2645 = !DILocation(line: 311, column: 3, scope: !2569)
!2646 = !DILocation(line: 318, column: 11, scope: !2598)
!2647 = !DILocation(line: 319, column: 9, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2649, file: !290, line: 319, column: 9)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !290, line: 319, column: 9)
!2650 = distinct !DILexicalBlock(scope: !2598, file: !290, line: 318, column: 11)
!2651 = !DILocation(line: 319, column: 9, scope: !2649)
!2652 = !DILocation(line: 0, scope: !324, inlinedAt: !2653)
!2653 = distinct !DILocation(line: 357, column: 26, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2655, file: !290, line: 335, column: 11)
!2655 = distinct !DILexicalBlock(scope: !2597, file: !290, line: 334, column: 13)
!2656 = !DILocation(line: 199, column: 29, scope: !324, inlinedAt: !2653)
!2657 = !DILocation(line: 201, column: 19, scope: !2658, inlinedAt: !2653)
!2658 = distinct !DILexicalBlock(scope: !324, file: !290, line: 201, column: 7)
!2659 = !DILocation(line: 201, column: 7, scope: !324, inlinedAt: !2653)
!2660 = !DILocation(line: 229, column: 3, scope: !324, inlinedAt: !2653)
!2661 = !DILocation(line: 230, column: 3, scope: !324, inlinedAt: !2653)
!2662 = !DILocation(line: 230, column: 13, scope: !324, inlinedAt: !2653)
!2663 = !DILocalVariable(name: "ps", arg: 1, scope: !2664, file: !2416, line: 1135, type: !2667)
!2664 = distinct !DISubprogram(name: "mbszero", scope: !2416, file: !2416, line: 1135, type: !2665, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2668)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2668 = !{!2663}
!2669 = !DILocation(line: 0, scope: !2664, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 230, column: 18, scope: !324, inlinedAt: !2653)
!2671 = !DILocalVariable(name: "__dest", arg: 1, scope: !2672, file: !883, line: 57, type: !55)
!2672 = distinct !DISubprogram(name: "memset", scope: !883, file: !883, line: 57, type: !2425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2673)
!2673 = !{!2671, !2674, !2675}
!2674 = !DILocalVariable(name: "__ch", arg: 2, scope: !2672, file: !883, line: 57, type: !56)
!2675 = !DILocalVariable(name: "__len", arg: 3, scope: !2672, file: !883, line: 57, type: !58)
!2676 = !DILocation(line: 0, scope: !2672, inlinedAt: !2677)
!2677 = distinct !DILocation(line: 1137, column: 3, scope: !2664, inlinedAt: !2670)
!2678 = !DILocation(line: 59, column: 10, scope: !2672, inlinedAt: !2677)
!2679 = !DILocation(line: 231, column: 7, scope: !2680, inlinedAt: !2653)
!2680 = distinct !DILexicalBlock(scope: !324, file: !290, line: 231, column: 7)
!2681 = !DILocation(line: 231, column: 40, scope: !2680, inlinedAt: !2653)
!2682 = !DILocation(line: 231, column: 45, scope: !2680, inlinedAt: !2653)
!2683 = !DILocation(line: 235, column: 1, scope: !324, inlinedAt: !2653)
!2684 = !DILocation(line: 0, scope: !324, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 358, column: 27, scope: !2654)
!2686 = !DILocation(line: 199, column: 29, scope: !324, inlinedAt: !2685)
!2687 = !DILocation(line: 201, column: 19, scope: !2658, inlinedAt: !2685)
!2688 = !DILocation(line: 201, column: 7, scope: !324, inlinedAt: !2685)
!2689 = !DILocation(line: 229, column: 3, scope: !324, inlinedAt: !2685)
!2690 = !DILocation(line: 230, column: 3, scope: !324, inlinedAt: !2685)
!2691 = !DILocation(line: 230, column: 13, scope: !324, inlinedAt: !2685)
!2692 = !DILocation(line: 0, scope: !2664, inlinedAt: !2693)
!2693 = distinct !DILocation(line: 230, column: 18, scope: !324, inlinedAt: !2685)
!2694 = !DILocation(line: 0, scope: !2672, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 1137, column: 3, scope: !2664, inlinedAt: !2693)
!2696 = !DILocation(line: 59, column: 10, scope: !2672, inlinedAt: !2695)
!2697 = !DILocation(line: 231, column: 7, scope: !2680, inlinedAt: !2685)
!2698 = !DILocation(line: 231, column: 40, scope: !2680, inlinedAt: !2685)
!2699 = !DILocation(line: 231, column: 45, scope: !2680, inlinedAt: !2685)
!2700 = !DILocation(line: 235, column: 1, scope: !324, inlinedAt: !2685)
!2701 = !DILocation(line: 360, column: 13, scope: !2597)
!2702 = !DILocation(line: 0, scope: !2595)
!2703 = !DILocation(line: 361, column: 45, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2595, file: !290, line: 361, column: 11)
!2705 = !DILocation(line: 361, column: 11, scope: !2595)
!2706 = !DILocation(line: 362, column: 13, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !290, line: 362, column: 13)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !290, line: 362, column: 13)
!2709 = !DILocation(line: 362, column: 13, scope: !2708)
!2710 = !DILocation(line: 361, column: 52, scope: !2704)
!2711 = distinct !{!2711, !2705, !2712, !549}
!2712 = !DILocation(line: 362, column: 13, scope: !2595)
!2713 = !DILocation(line: 260, column: 10, scope: !2569)
!2714 = !DILocation(line: 365, column: 28, scope: !2597)
!2715 = !DILocation(line: 367, column: 7, scope: !2598)
!2716 = !DILocation(line: 370, column: 7, scope: !2598)
!2717 = !DILocation(line: 376, column: 11, scope: !2598)
!2718 = !DILocation(line: 381, column: 11, scope: !2598)
!2719 = !DILocation(line: 382, column: 9, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !290, line: 382, column: 9)
!2721 = distinct !DILexicalBlock(scope: !2722, file: !290, line: 382, column: 9)
!2722 = distinct !DILexicalBlock(scope: !2598, file: !290, line: 381, column: 11)
!2723 = !DILocation(line: 382, column: 9, scope: !2721)
!2724 = !DILocation(line: 389, column: 7, scope: !2598)
!2725 = !DILocation(line: 392, column: 7, scope: !2598)
!2726 = !DILocation(line: 0, scope: !2600)
!2727 = !DILocation(line: 395, column: 8, scope: !2600)
!2728 = !DILocation(line: 395, column: 34, scope: !2603)
!2729 = !DILocation(line: 395, column: 26, scope: !2603)
!2730 = !DILocation(line: 395, column: 48, scope: !2603)
!2731 = !DILocation(line: 395, column: 55, scope: !2603)
!2732 = !DILocation(line: 395, column: 3, scope: !2600)
!2733 = !DILocation(line: 395, column: 67, scope: !2603)
!2734 = !DILocation(line: 0, scope: !2602)
!2735 = !DILocation(line: 402, column: 11, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 401, column: 11)
!2737 = !DILocation(line: 404, column: 17, scope: !2736)
!2738 = !DILocation(line: 405, column: 39, scope: !2736)
!2739 = !DILocation(line: 409, column: 32, scope: !2736)
!2740 = !DILocation(line: 405, column: 19, scope: !2736)
!2741 = !DILocation(line: 405, column: 15, scope: !2736)
!2742 = !DILocation(line: 410, column: 11, scope: !2736)
!2743 = !DILocation(line: 410, column: 25, scope: !2736)
!2744 = !DILocalVariable(name: "__s1", arg: 1, scope: !2745, file: !533, line: 974, type: !699)
!2745 = distinct !DISubprogram(name: "memeq", scope: !533, file: !533, line: 974, type: !2387, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2746)
!2746 = !{!2744, !2747, !2748}
!2747 = !DILocalVariable(name: "__s2", arg: 2, scope: !2745, file: !533, line: 974, type: !699)
!2748 = !DILocalVariable(name: "__n", arg: 3, scope: !2745, file: !533, line: 974, type: !58)
!2749 = !DILocation(line: 0, scope: !2745, inlinedAt: !2750)
!2750 = distinct !DILocation(line: 410, column: 14, scope: !2736)
!2751 = !DILocation(line: 976, column: 11, scope: !2745, inlinedAt: !2750)
!2752 = !DILocation(line: 976, column: 10, scope: !2745, inlinedAt: !2750)
!2753 = !DILocation(line: 401, column: 11, scope: !2602)
!2754 = !DILocation(line: 417, column: 25, scope: !2602)
!2755 = !DILocation(line: 418, column: 7, scope: !2602)
!2756 = !DILocation(line: 421, column: 15, scope: !2609)
!2757 = !DILocation(line: 423, column: 15, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2759, file: !290, line: 423, column: 15)
!2759 = distinct !DILexicalBlock(scope: !2760, file: !290, line: 422, column: 13)
!2760 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 421, column: 15)
!2761 = !DILocation(line: 423, column: 15, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2758, file: !290, line: 423, column: 15)
!2763 = !DILocation(line: 423, column: 15, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !290, line: 423, column: 15)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !290, line: 423, column: 15)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !290, line: 423, column: 15)
!2767 = !DILocation(line: 423, column: 15, scope: !2765)
!2768 = !DILocation(line: 423, column: 15, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2770, file: !290, line: 423, column: 15)
!2770 = distinct !DILexicalBlock(scope: !2766, file: !290, line: 423, column: 15)
!2771 = !DILocation(line: 423, column: 15, scope: !2770)
!2772 = !DILocation(line: 423, column: 15, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2774, file: !290, line: 423, column: 15)
!2774 = distinct !DILexicalBlock(scope: !2766, file: !290, line: 423, column: 15)
!2775 = !DILocation(line: 423, column: 15, scope: !2774)
!2776 = !DILocation(line: 423, column: 15, scope: !2766)
!2777 = !DILocation(line: 423, column: 15, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2779, file: !290, line: 423, column: 15)
!2779 = distinct !DILexicalBlock(scope: !2758, file: !290, line: 423, column: 15)
!2780 = !DILocation(line: 423, column: 15, scope: !2779)
!2781 = !DILocation(line: 431, column: 19, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2759, file: !290, line: 430, column: 19)
!2783 = !DILocation(line: 431, column: 24, scope: !2782)
!2784 = !DILocation(line: 431, column: 28, scope: !2782)
!2785 = !DILocation(line: 431, column: 38, scope: !2782)
!2786 = !DILocation(line: 431, column: 48, scope: !2782)
!2787 = !DILocation(line: 431, column: 59, scope: !2782)
!2788 = !DILocation(line: 433, column: 19, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !290, line: 433, column: 19)
!2790 = distinct !DILexicalBlock(scope: !2791, file: !290, line: 433, column: 19)
!2791 = distinct !DILexicalBlock(scope: !2782, file: !290, line: 432, column: 17)
!2792 = !DILocation(line: 433, column: 19, scope: !2790)
!2793 = !DILocation(line: 434, column: 19, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2795, file: !290, line: 434, column: 19)
!2795 = distinct !DILexicalBlock(scope: !2791, file: !290, line: 434, column: 19)
!2796 = !DILocation(line: 434, column: 19, scope: !2795)
!2797 = !DILocation(line: 435, column: 17, scope: !2791)
!2798 = !DILocation(line: 442, column: 20, scope: !2760)
!2799 = !DILocation(line: 447, column: 11, scope: !2609)
!2800 = !DILocation(line: 450, column: 19, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 448, column: 13)
!2802 = !DILocation(line: 456, column: 19, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2801, file: !290, line: 455, column: 19)
!2804 = !DILocation(line: 456, column: 24, scope: !2803)
!2805 = !DILocation(line: 456, column: 28, scope: !2803)
!2806 = !DILocation(line: 456, column: 38, scope: !2803)
!2807 = !DILocation(line: 456, column: 47, scope: !2803)
!2808 = !DILocation(line: 456, column: 41, scope: !2803)
!2809 = !DILocation(line: 456, column: 52, scope: !2803)
!2810 = !DILocation(line: 455, column: 19, scope: !2801)
!2811 = !DILocation(line: 457, column: 25, scope: !2803)
!2812 = !DILocation(line: 457, column: 17, scope: !2803)
!2813 = !DILocation(line: 464, column: 25, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2803, file: !290, line: 458, column: 19)
!2815 = !DILocation(line: 468, column: 21, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !290, line: 468, column: 21)
!2817 = distinct !DILexicalBlock(scope: !2814, file: !290, line: 468, column: 21)
!2818 = !DILocation(line: 468, column: 21, scope: !2817)
!2819 = !DILocation(line: 469, column: 21, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2821, file: !290, line: 469, column: 21)
!2821 = distinct !DILexicalBlock(scope: !2814, file: !290, line: 469, column: 21)
!2822 = !DILocation(line: 469, column: 21, scope: !2821)
!2823 = !DILocation(line: 470, column: 21, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !290, line: 470, column: 21)
!2825 = distinct !DILexicalBlock(scope: !2814, file: !290, line: 470, column: 21)
!2826 = !DILocation(line: 470, column: 21, scope: !2825)
!2827 = !DILocation(line: 471, column: 21, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !290, line: 471, column: 21)
!2829 = distinct !DILexicalBlock(scope: !2814, file: !290, line: 471, column: 21)
!2830 = !DILocation(line: 471, column: 21, scope: !2829)
!2831 = !DILocation(line: 472, column: 21, scope: !2814)
!2832 = !DILocation(line: 482, column: 33, scope: !2632)
!2833 = !DILocation(line: 483, column: 33, scope: !2632)
!2834 = !DILocation(line: 485, column: 33, scope: !2632)
!2835 = !DILocation(line: 486, column: 33, scope: !2632)
!2836 = !DILocation(line: 487, column: 33, scope: !2632)
!2837 = !DILocation(line: 490, column: 17, scope: !2632)
!2838 = !DILocation(line: 492, column: 21, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2840, file: !290, line: 491, column: 15)
!2840 = distinct !DILexicalBlock(scope: !2632, file: !290, line: 490, column: 17)
!2841 = !DILocation(line: 499, column: 35, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2632, file: !290, line: 499, column: 17)
!2843 = !DILocation(line: 499, column: 57, scope: !2842)
!2844 = !DILocation(line: 0, scope: !2632)
!2845 = !DILocation(line: 502, column: 11, scope: !2632)
!2846 = !DILocation(line: 504, column: 17, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2632, file: !290, line: 503, column: 17)
!2848 = !DILocation(line: 507, column: 11, scope: !2632)
!2849 = !DILocation(line: 508, column: 17, scope: !2632)
!2850 = !DILocation(line: 517, column: 15, scope: !2609)
!2851 = !DILocation(line: 517, column: 40, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 517, column: 15)
!2853 = !DILocation(line: 517, column: 47, scope: !2852)
!2854 = !DILocation(line: 517, column: 18, scope: !2852)
!2855 = !DILocation(line: 521, column: 17, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 521, column: 15)
!2857 = !DILocation(line: 521, column: 15, scope: !2609)
!2858 = !DILocation(line: 525, column: 11, scope: !2609)
!2859 = !DILocation(line: 537, column: 15, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 536, column: 15)
!2861 = !DILocation(line: 536, column: 15, scope: !2609)
!2862 = !DILocation(line: 544, column: 15, scope: !2609)
!2863 = !DILocation(line: 546, column: 19, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !290, line: 545, column: 13)
!2865 = distinct !DILexicalBlock(scope: !2609, file: !290, line: 544, column: 15)
!2866 = !DILocation(line: 549, column: 19, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2864, file: !290, line: 549, column: 19)
!2868 = !DILocation(line: 549, column: 30, scope: !2867)
!2869 = !DILocation(line: 558, column: 15, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !290, line: 558, column: 15)
!2871 = distinct !DILexicalBlock(scope: !2864, file: !290, line: 558, column: 15)
!2872 = !DILocation(line: 558, column: 15, scope: !2871)
!2873 = !DILocation(line: 559, column: 15, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !290, line: 559, column: 15)
!2875 = distinct !DILexicalBlock(scope: !2864, file: !290, line: 559, column: 15)
!2876 = !DILocation(line: 559, column: 15, scope: !2875)
!2877 = !DILocation(line: 560, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !290, line: 560, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2864, file: !290, line: 560, column: 15)
!2880 = !DILocation(line: 560, column: 15, scope: !2879)
!2881 = !DILocation(line: 562, column: 13, scope: !2864)
!2882 = !DILocation(line: 602, column: 17, scope: !2608)
!2883 = !DILocation(line: 0, scope: !2608)
!2884 = !DILocation(line: 605, column: 29, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2613, file: !290, line: 603, column: 15)
!2886 = !DILocation(line: 605, column: 41, scope: !2885)
!2887 = !DILocation(line: 670, column: 23, scope: !2629)
!2888 = !DILocation(line: 609, column: 17, scope: !2612)
!2889 = !DILocation(line: 609, column: 27, scope: !2612)
!2890 = !DILocation(line: 0, scope: !2664, inlinedAt: !2891)
!2891 = distinct !DILocation(line: 609, column: 32, scope: !2612)
!2892 = !DILocation(line: 0, scope: !2672, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1137, column: 3, scope: !2664, inlinedAt: !2891)
!2894 = !DILocation(line: 59, column: 10, scope: !2672, inlinedAt: !2893)
!2895 = !DILocation(line: 613, column: 29, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2612, file: !290, line: 613, column: 21)
!2897 = !DILocation(line: 613, column: 21, scope: !2612)
!2898 = !DILocation(line: 614, column: 29, scope: !2896)
!2899 = !DILocation(line: 614, column: 19, scope: !2896)
!2900 = !DILocation(line: 618, column: 21, scope: !2615)
!2901 = !DILocation(line: 620, column: 54, scope: !2615)
!2902 = !DILocation(line: 0, scope: !2615)
!2903 = !DILocation(line: 619, column: 36, scope: !2615)
!2904 = !DILocation(line: 621, column: 25, scope: !2615)
!2905 = !DILocation(line: 631, column: 38, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2624, file: !290, line: 629, column: 23)
!2907 = !DILocation(line: 631, column: 48, scope: !2906)
!2908 = !DILocation(line: 665, column: 19, scope: !2616)
!2909 = !DILocation(line: 666, column: 15, scope: !2613)
!2910 = !DILocation(line: 626, column: 25, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2625, file: !290, line: 624, column: 23)
!2912 = !DILocation(line: 631, column: 51, scope: !2906)
!2913 = !DILocation(line: 631, column: 25, scope: !2906)
!2914 = !DILocation(line: 632, column: 28, scope: !2906)
!2915 = !DILocation(line: 631, column: 34, scope: !2906)
!2916 = distinct !{!2916, !2913, !2914, !549}
!2917 = !DILocation(line: 646, column: 29, scope: !2622)
!2918 = !DILocation(line: 0, scope: !2620)
!2919 = !DILocation(line: 649, column: 49, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2620, file: !290, line: 648, column: 29)
!2921 = !DILocation(line: 649, column: 39, scope: !2920)
!2922 = !DILocation(line: 649, column: 31, scope: !2920)
!2923 = !DILocation(line: 648, column: 60, scope: !2920)
!2924 = !DILocation(line: 648, column: 50, scope: !2920)
!2925 = !DILocation(line: 648, column: 29, scope: !2620)
!2926 = distinct !{!2926, !2925, !2927, !549}
!2927 = !DILocation(line: 654, column: 33, scope: !2620)
!2928 = !DILocation(line: 657, column: 43, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2623, file: !290, line: 657, column: 29)
!2930 = !DILocalVariable(name: "wc", arg: 1, scope: !2931, file: !2932, line: 865, type: !2935)
!2931 = distinct !DISubprogram(name: "c32isprint", scope: !2932, file: !2932, line: 865, type: !2933, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !2937)
!2932 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!56, !2935}
!2935 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !2936, line: 20, baseType: !7)
!2936 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!2937 = !{!2930}
!2938 = !DILocation(line: 0, scope: !2931, inlinedAt: !2939)
!2939 = distinct !DILocation(line: 657, column: 31, scope: !2929)
!2940 = !DILocation(line: 871, column: 10, scope: !2931, inlinedAt: !2939)
!2941 = !DILocation(line: 657, column: 31, scope: !2929)
!2942 = !DILocation(line: 664, column: 23, scope: !2615)
!2943 = !DILocation(line: 753, column: 2, scope: !2569)
!2944 = !DILocation(line: 756, column: 51, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 756, column: 7)
!2946 = !DILocation(line: 670, column: 19, scope: !2629)
!2947 = !DILocation(line: 670, column: 45, scope: !2629)
!2948 = !DILocation(line: 674, column: 33, scope: !2628)
!2949 = !DILocation(line: 0, scope: !2628)
!2950 = !DILocation(line: 676, column: 17, scope: !2628)
!2951 = !DILocation(line: 398, column: 12, scope: !2602)
!2952 = !DILocation(line: 678, column: 43, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !290, line: 678, column: 25)
!2954 = distinct !DILexicalBlock(scope: !2955, file: !290, line: 677, column: 19)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !290, line: 676, column: 17)
!2956 = distinct !DILexicalBlock(scope: !2628, file: !290, line: 676, column: 17)
!2957 = !DILocation(line: 680, column: 25, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2959, file: !290, line: 680, column: 25)
!2959 = distinct !DILexicalBlock(scope: !2953, file: !290, line: 679, column: 23)
!2960 = !DILocation(line: 680, column: 25, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !290, line: 680, column: 25)
!2962 = !DILocation(line: 680, column: 25, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2964, file: !290, line: 680, column: 25)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !290, line: 680, column: 25)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !290, line: 680, column: 25)
!2966 = !DILocation(line: 680, column: 25, scope: !2964)
!2967 = !DILocation(line: 680, column: 25, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !290, line: 680, column: 25)
!2969 = distinct !DILexicalBlock(scope: !2965, file: !290, line: 680, column: 25)
!2970 = !DILocation(line: 680, column: 25, scope: !2969)
!2971 = !DILocation(line: 680, column: 25, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !290, line: 680, column: 25)
!2973 = distinct !DILexicalBlock(scope: !2965, file: !290, line: 680, column: 25)
!2974 = !DILocation(line: 680, column: 25, scope: !2973)
!2975 = !DILocation(line: 680, column: 25, scope: !2965)
!2976 = !DILocation(line: 680, column: 25, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2978, file: !290, line: 680, column: 25)
!2978 = distinct !DILexicalBlock(scope: !2958, file: !290, line: 680, column: 25)
!2979 = !DILocation(line: 680, column: 25, scope: !2978)
!2980 = !DILocation(line: 681, column: 25, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !290, line: 681, column: 25)
!2982 = distinct !DILexicalBlock(scope: !2959, file: !290, line: 681, column: 25)
!2983 = !DILocation(line: 681, column: 25, scope: !2982)
!2984 = !DILocation(line: 682, column: 25, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !290, line: 682, column: 25)
!2986 = distinct !DILexicalBlock(scope: !2959, file: !290, line: 682, column: 25)
!2987 = !DILocation(line: 682, column: 25, scope: !2986)
!2988 = !DILocation(line: 683, column: 38, scope: !2959)
!2989 = !DILocation(line: 683, column: 33, scope: !2959)
!2990 = !DILocation(line: 684, column: 23, scope: !2959)
!2991 = !DILocation(line: 685, column: 30, scope: !2953)
!2992 = !DILocation(line: 687, column: 25, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !290, line: 687, column: 25)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !290, line: 687, column: 25)
!2995 = distinct !DILexicalBlock(scope: !2996, file: !290, line: 686, column: 23)
!2996 = distinct !DILexicalBlock(scope: !2953, file: !290, line: 685, column: 30)
!2997 = !DILocation(line: 687, column: 25, scope: !2994)
!2998 = !DILocation(line: 689, column: 23, scope: !2995)
!2999 = !DILocation(line: 690, column: 35, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2954, file: !290, line: 690, column: 25)
!3001 = !DILocation(line: 690, column: 30, scope: !3000)
!3002 = !DILocation(line: 690, column: 25, scope: !2954)
!3003 = !DILocation(line: 692, column: 21, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !290, line: 692, column: 21)
!3005 = distinct !DILexicalBlock(scope: !2954, file: !290, line: 692, column: 21)
!3006 = !DILocation(line: 692, column: 21, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3008, file: !290, line: 692, column: 21)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !290, line: 692, column: 21)
!3009 = distinct !DILexicalBlock(scope: !3004, file: !290, line: 692, column: 21)
!3010 = !DILocation(line: 692, column: 21, scope: !3008)
!3011 = !DILocation(line: 692, column: 21, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3013, file: !290, line: 692, column: 21)
!3013 = distinct !DILexicalBlock(scope: !3009, file: !290, line: 692, column: 21)
!3014 = !DILocation(line: 692, column: 21, scope: !3013)
!3015 = !DILocation(line: 692, column: 21, scope: !3009)
!3016 = !DILocation(line: 0, scope: !2954)
!3017 = !DILocation(line: 693, column: 21, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !290, line: 693, column: 21)
!3019 = distinct !DILexicalBlock(scope: !2954, file: !290, line: 693, column: 21)
!3020 = !DILocation(line: 693, column: 21, scope: !3019)
!3021 = !DILocation(line: 694, column: 25, scope: !2954)
!3022 = !DILocation(line: 676, column: 17, scope: !2955)
!3023 = distinct !{!3023, !3024, !3025}
!3024 = !DILocation(line: 676, column: 17, scope: !2956)
!3025 = !DILocation(line: 695, column: 19, scope: !2956)
!3026 = !DILocation(line: 409, column: 30, scope: !2736)
!3027 = !DILocation(line: 702, column: 34, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 702, column: 11)
!3029 = !DILocation(line: 704, column: 14, scope: !3028)
!3030 = !DILocation(line: 705, column: 14, scope: !3028)
!3031 = !DILocation(line: 705, column: 35, scope: !3028)
!3032 = !DILocation(line: 705, column: 17, scope: !3028)
!3033 = !DILocation(line: 705, column: 47, scope: !3028)
!3034 = !DILocation(line: 705, column: 65, scope: !3028)
!3035 = !DILocation(line: 706, column: 11, scope: !3028)
!3036 = !DILocation(line: 702, column: 11, scope: !2602)
!3037 = !DILocation(line: 395, column: 15, scope: !2600)
!3038 = !DILocation(line: 709, column: 5, scope: !2602)
!3039 = !DILocation(line: 710, column: 7, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 710, column: 7)
!3041 = !DILocation(line: 710, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3040, file: !290, line: 710, column: 7)
!3043 = !DILocation(line: 710, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3045, file: !290, line: 710, column: 7)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !290, line: 710, column: 7)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !290, line: 710, column: 7)
!3047 = !DILocation(line: 710, column: 7, scope: !3045)
!3048 = !DILocation(line: 710, column: 7, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !290, line: 710, column: 7)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !290, line: 710, column: 7)
!3051 = !DILocation(line: 710, column: 7, scope: !3050)
!3052 = !DILocation(line: 710, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !290, line: 710, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3046, file: !290, line: 710, column: 7)
!3055 = !DILocation(line: 710, column: 7, scope: !3054)
!3056 = !DILocation(line: 710, column: 7, scope: !3046)
!3057 = !DILocation(line: 710, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !290, line: 710, column: 7)
!3059 = distinct !DILexicalBlock(scope: !3040, file: !290, line: 710, column: 7)
!3060 = !DILocation(line: 710, column: 7, scope: !3059)
!3061 = !DILocation(line: 712, column: 5, scope: !2602)
!3062 = !DILocation(line: 713, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !290, line: 713, column: 7)
!3064 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 713, column: 7)
!3065 = !DILocation(line: 417, column: 21, scope: !2602)
!3066 = !DILocation(line: 713, column: 7, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !290, line: 713, column: 7)
!3068 = distinct !DILexicalBlock(scope: !3069, file: !290, line: 713, column: 7)
!3069 = distinct !DILexicalBlock(scope: !3063, file: !290, line: 713, column: 7)
!3070 = !DILocation(line: 713, column: 7, scope: !3068)
!3071 = !DILocation(line: 713, column: 7, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !290, line: 713, column: 7)
!3073 = distinct !DILexicalBlock(scope: !3069, file: !290, line: 713, column: 7)
!3074 = !DILocation(line: 713, column: 7, scope: !3073)
!3075 = !DILocation(line: 713, column: 7, scope: !3069)
!3076 = !DILocation(line: 714, column: 7, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !290, line: 714, column: 7)
!3078 = distinct !DILexicalBlock(scope: !2602, file: !290, line: 714, column: 7)
!3079 = !DILocation(line: 714, column: 7, scope: !3078)
!3080 = !DILocation(line: 716, column: 11, scope: !2602)
!3081 = !DILocation(line: 718, column: 5, scope: !2603)
!3082 = !DILocation(line: 395, column: 82, scope: !2603)
!3083 = !DILocation(line: 395, column: 3, scope: !2603)
!3084 = distinct !{!3084, !2732, !3085, !549}
!3085 = !DILocation(line: 718, column: 5, scope: !2600)
!3086 = !DILocation(line: 720, column: 11, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 720, column: 7)
!3088 = !DILocation(line: 720, column: 16, scope: !3087)
!3089 = !DILocation(line: 728, column: 51, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 728, column: 7)
!3091 = !DILocation(line: 731, column: 11, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3090, file: !290, line: 730, column: 5)
!3093 = !DILocation(line: 732, column: 16, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3092, file: !290, line: 731, column: 11)
!3095 = !DILocation(line: 732, column: 9, scope: !3094)
!3096 = !DILocation(line: 736, column: 18, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3094, file: !290, line: 736, column: 16)
!3098 = !DILocation(line: 736, column: 29, scope: !3097)
!3099 = !DILocation(line: 745, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 745, column: 7)
!3101 = !DILocation(line: 745, column: 20, scope: !3100)
!3102 = !DILocation(line: 746, column: 12, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3104, file: !290, line: 746, column: 5)
!3104 = distinct !DILexicalBlock(scope: !3100, file: !290, line: 746, column: 5)
!3105 = !DILocation(line: 746, column: 5, scope: !3104)
!3106 = !DILocation(line: 747, column: 7, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !290, line: 747, column: 7)
!3108 = distinct !DILexicalBlock(scope: !3103, file: !290, line: 747, column: 7)
!3109 = !DILocation(line: 747, column: 7, scope: !3108)
!3110 = !DILocation(line: 746, column: 39, scope: !3103)
!3111 = distinct !{!3111, !3105, !3112, !549}
!3112 = !DILocation(line: 747, column: 7, scope: !3104)
!3113 = !DILocation(line: 749, column: 11, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !2569, file: !290, line: 749, column: 7)
!3115 = !DILocation(line: 749, column: 7, scope: !2569)
!3116 = !DILocation(line: 750, column: 5, scope: !3114)
!3117 = !DILocation(line: 750, column: 17, scope: !3114)
!3118 = !DILocation(line: 756, column: 21, scope: !2945)
!3119 = !DILocation(line: 760, column: 42, scope: !2569)
!3120 = !DILocation(line: 758, column: 10, scope: !2569)
!3121 = !DILocation(line: 758, column: 3, scope: !2569)
!3122 = !DILocation(line: 762, column: 1, scope: !2569)
!3123 = !DISubprogram(name: "iswprint", scope: !3124, file: !3124, line: 120, type: !2933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!3124 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3125 = distinct !DISubprogram(name: "quotearg_alloc", scope: !290, file: !290, line: 788, type: !3126, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!53, !61, !58, !2461}
!3128 = !{!3129, !3130, !3131}
!3129 = !DILocalVariable(name: "arg", arg: 1, scope: !3125, file: !290, line: 788, type: !61)
!3130 = !DILocalVariable(name: "argsize", arg: 2, scope: !3125, file: !290, line: 788, type: !58)
!3131 = !DILocalVariable(name: "o", arg: 3, scope: !3125, file: !290, line: 789, type: !2461)
!3132 = !DILocation(line: 0, scope: !3125)
!3133 = !DILocalVariable(name: "arg", arg: 1, scope: !3134, file: !290, line: 801, type: !61)
!3134 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !290, file: !290, line: 801, type: !3135, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3137)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{!53, !61, !58, !417, !2461}
!3137 = !{!3133, !3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145}
!3138 = !DILocalVariable(name: "argsize", arg: 2, scope: !3134, file: !290, line: 801, type: !58)
!3139 = !DILocalVariable(name: "size", arg: 3, scope: !3134, file: !290, line: 801, type: !417)
!3140 = !DILocalVariable(name: "o", arg: 4, scope: !3134, file: !290, line: 802, type: !2461)
!3141 = !DILocalVariable(name: "p", scope: !3134, file: !290, line: 804, type: !2461)
!3142 = !DILocalVariable(name: "saved_errno", scope: !3134, file: !290, line: 805, type: !56)
!3143 = !DILocalVariable(name: "flags", scope: !3134, file: !290, line: 807, type: !56)
!3144 = !DILocalVariable(name: "bufsize", scope: !3134, file: !290, line: 808, type: !58)
!3145 = !DILocalVariable(name: "buf", scope: !3134, file: !290, line: 812, type: !53)
!3146 = !DILocation(line: 0, scope: !3134, inlinedAt: !3147)
!3147 = distinct !DILocation(line: 791, column: 10, scope: !3125)
!3148 = !DILocation(line: 804, column: 37, scope: !3134, inlinedAt: !3147)
!3149 = !DILocation(line: 805, column: 21, scope: !3134, inlinedAt: !3147)
!3150 = !DILocation(line: 807, column: 18, scope: !3134, inlinedAt: !3147)
!3151 = !DILocation(line: 807, column: 24, scope: !3134, inlinedAt: !3147)
!3152 = !DILocation(line: 808, column: 72, scope: !3134, inlinedAt: !3147)
!3153 = !DILocation(line: 809, column: 53, scope: !3134, inlinedAt: !3147)
!3154 = !DILocation(line: 810, column: 49, scope: !3134, inlinedAt: !3147)
!3155 = !DILocation(line: 811, column: 49, scope: !3134, inlinedAt: !3147)
!3156 = !DILocation(line: 808, column: 20, scope: !3134, inlinedAt: !3147)
!3157 = !DILocation(line: 811, column: 62, scope: !3134, inlinedAt: !3147)
!3158 = !DILocation(line: 812, column: 15, scope: !3134, inlinedAt: !3147)
!3159 = !DILocation(line: 813, column: 60, scope: !3134, inlinedAt: !3147)
!3160 = !DILocation(line: 815, column: 32, scope: !3134, inlinedAt: !3147)
!3161 = !DILocation(line: 815, column: 47, scope: !3134, inlinedAt: !3147)
!3162 = !DILocation(line: 813, column: 3, scope: !3134, inlinedAt: !3147)
!3163 = !DILocation(line: 816, column: 9, scope: !3134, inlinedAt: !3147)
!3164 = !DILocation(line: 791, column: 3, scope: !3125)
!3165 = !DILocation(line: 0, scope: !3134)
!3166 = !DILocation(line: 804, column: 37, scope: !3134)
!3167 = !DILocation(line: 805, column: 21, scope: !3134)
!3168 = !DILocation(line: 807, column: 18, scope: !3134)
!3169 = !DILocation(line: 807, column: 27, scope: !3134)
!3170 = !DILocation(line: 807, column: 24, scope: !3134)
!3171 = !DILocation(line: 808, column: 72, scope: !3134)
!3172 = !DILocation(line: 809, column: 53, scope: !3134)
!3173 = !DILocation(line: 810, column: 49, scope: !3134)
!3174 = !DILocation(line: 811, column: 49, scope: !3134)
!3175 = !DILocation(line: 808, column: 20, scope: !3134)
!3176 = !DILocation(line: 811, column: 62, scope: !3134)
!3177 = !DILocation(line: 812, column: 15, scope: !3134)
!3178 = !DILocation(line: 813, column: 60, scope: !3134)
!3179 = !DILocation(line: 815, column: 32, scope: !3134)
!3180 = !DILocation(line: 815, column: 47, scope: !3134)
!3181 = !DILocation(line: 813, column: 3, scope: !3134)
!3182 = !DILocation(line: 816, column: 9, scope: !3134)
!3183 = !DILocation(line: 817, column: 7, scope: !3134)
!3184 = !DILocation(line: 818, column: 11, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3134, file: !290, line: 817, column: 7)
!3186 = !DILocation(line: 818, column: 5, scope: !3185)
!3187 = !DILocation(line: 819, column: 3, scope: !3134)
!3188 = distinct !DISubprogram(name: "quotearg_free", scope: !290, file: !290, line: 837, type: !243, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3189)
!3189 = !{!3190, !3191}
!3190 = !DILocalVariable(name: "sv", scope: !3188, file: !290, line: 839, type: !347)
!3191 = !DILocalVariable(name: "i", scope: !3192, file: !290, line: 840, type: !56)
!3192 = distinct !DILexicalBlock(scope: !3188, file: !290, line: 840, column: 3)
!3193 = !DILocation(line: 839, column: 24, scope: !3188)
!3194 = !DILocation(line: 0, scope: !3188)
!3195 = !DILocation(line: 0, scope: !3192)
!3196 = !DILocation(line: 840, column: 21, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3192, file: !290, line: 840, column: 3)
!3198 = !DILocation(line: 840, column: 3, scope: !3192)
!3199 = !DILocation(line: 842, column: 13, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3188, file: !290, line: 842, column: 7)
!3201 = !{!3202, !487, i64 8}
!3202 = !{!"slotvec", !911, i64 0, !487, i64 8}
!3203 = !DILocation(line: 842, column: 17, scope: !3200)
!3204 = !DILocation(line: 842, column: 7, scope: !3188)
!3205 = !DILocation(line: 841, column: 17, scope: !3197)
!3206 = !DILocation(line: 841, column: 5, scope: !3197)
!3207 = !DILocation(line: 840, column: 32, scope: !3197)
!3208 = distinct !{!3208, !3198, !3209, !549}
!3209 = !DILocation(line: 841, column: 20, scope: !3192)
!3210 = !DILocation(line: 844, column: 7, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3200, file: !290, line: 843, column: 5)
!3212 = !DILocation(line: 845, column: 21, scope: !3211)
!3213 = !{!3202, !911, i64 0}
!3214 = !DILocation(line: 846, column: 20, scope: !3211)
!3215 = !DILocation(line: 847, column: 5, scope: !3211)
!3216 = !DILocation(line: 848, column: 10, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3188, file: !290, line: 848, column: 7)
!3218 = !DILocation(line: 848, column: 7, scope: !3188)
!3219 = !DILocation(line: 850, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !290, line: 849, column: 5)
!3221 = !DILocation(line: 850, column: 7, scope: !3220)
!3222 = !DILocation(line: 851, column: 15, scope: !3220)
!3223 = !DILocation(line: 852, column: 5, scope: !3220)
!3224 = !DILocation(line: 853, column: 10, scope: !3188)
!3225 = !DILocation(line: 854, column: 1, scope: !3188)
!3226 = distinct !DISubprogram(name: "quotearg_n", scope: !290, file: !290, line: 919, type: !689, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3227)
!3227 = !{!3228, !3229}
!3228 = !DILocalVariable(name: "n", arg: 1, scope: !3226, file: !290, line: 919, type: !56)
!3229 = !DILocalVariable(name: "arg", arg: 2, scope: !3226, file: !290, line: 919, type: !61)
!3230 = !DILocation(line: 0, scope: !3226)
!3231 = !DILocation(line: 921, column: 10, scope: !3226)
!3232 = !DILocation(line: 921, column: 3, scope: !3226)
!3233 = distinct !DISubprogram(name: "quotearg_n_options", scope: !290, file: !290, line: 866, type: !3234, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3236)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!53, !56, !61, !58, !2461}
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3247, !3248, !3250, !3251, !3252}
!3237 = !DILocalVariable(name: "n", arg: 1, scope: !3233, file: !290, line: 866, type: !56)
!3238 = !DILocalVariable(name: "arg", arg: 2, scope: !3233, file: !290, line: 866, type: !61)
!3239 = !DILocalVariable(name: "argsize", arg: 3, scope: !3233, file: !290, line: 866, type: !58)
!3240 = !DILocalVariable(name: "options", arg: 4, scope: !3233, file: !290, line: 867, type: !2461)
!3241 = !DILocalVariable(name: "saved_errno", scope: !3233, file: !290, line: 869, type: !56)
!3242 = !DILocalVariable(name: "sv", scope: !3233, file: !290, line: 871, type: !347)
!3243 = !DILocalVariable(name: "nslots_max", scope: !3233, file: !290, line: 873, type: !56)
!3244 = !DILocalVariable(name: "preallocated", scope: !3245, file: !290, line: 879, type: !78)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !290, line: 878, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3233, file: !290, line: 877, column: 7)
!3247 = !DILocalVariable(name: "new_nslots", scope: !3245, file: !290, line: 880, type: !181)
!3248 = !DILocalVariable(name: "size", scope: !3249, file: !290, line: 891, type: !58)
!3249 = distinct !DILexicalBlock(scope: !3233, file: !290, line: 890, column: 3)
!3250 = !DILocalVariable(name: "val", scope: !3249, file: !290, line: 892, type: !53)
!3251 = !DILocalVariable(name: "flags", scope: !3249, file: !290, line: 894, type: !56)
!3252 = !DILocalVariable(name: "qsize", scope: !3249, file: !290, line: 895, type: !58)
!3253 = !DILocation(line: 0, scope: !3233)
!3254 = !DILocation(line: 869, column: 21, scope: !3233)
!3255 = !DILocation(line: 871, column: 24, scope: !3233)
!3256 = !DILocation(line: 874, column: 17, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3233, file: !290, line: 874, column: 7)
!3258 = !DILocation(line: 875, column: 5, scope: !3257)
!3259 = !DILocation(line: 877, column: 7, scope: !3246)
!3260 = !DILocation(line: 877, column: 14, scope: !3246)
!3261 = !DILocation(line: 877, column: 7, scope: !3233)
!3262 = !DILocation(line: 879, column: 31, scope: !3245)
!3263 = !DILocation(line: 0, scope: !3245)
!3264 = !DILocation(line: 880, column: 7, scope: !3245)
!3265 = !DILocation(line: 880, column: 26, scope: !3245)
!3266 = !DILocation(line: 880, column: 13, scope: !3245)
!3267 = !DILocation(line: 882, column: 31, scope: !3245)
!3268 = !DILocation(line: 883, column: 33, scope: !3245)
!3269 = !DILocation(line: 883, column: 42, scope: !3245)
!3270 = !DILocation(line: 883, column: 31, scope: !3245)
!3271 = !DILocation(line: 882, column: 22, scope: !3245)
!3272 = !DILocation(line: 882, column: 15, scope: !3245)
!3273 = !DILocation(line: 884, column: 11, scope: !3245)
!3274 = !DILocation(line: 885, column: 15, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3245, file: !290, line: 884, column: 11)
!3276 = !{i64 0, i64 8, !933, i64 8, i64 8, !486}
!3277 = !DILocation(line: 885, column: 9, scope: !3275)
!3278 = !DILocation(line: 886, column: 20, scope: !3245)
!3279 = !DILocation(line: 886, column: 18, scope: !3245)
!3280 = !DILocation(line: 886, column: 15, scope: !3245)
!3281 = !DILocation(line: 886, column: 32, scope: !3245)
!3282 = !DILocation(line: 886, column: 43, scope: !3245)
!3283 = !DILocation(line: 886, column: 53, scope: !3245)
!3284 = !DILocation(line: 0, scope: !2672, inlinedAt: !3285)
!3285 = distinct !DILocation(line: 886, column: 7, scope: !3245)
!3286 = !DILocation(line: 59, column: 10, scope: !2672, inlinedAt: !3285)
!3287 = !DILocation(line: 887, column: 16, scope: !3245)
!3288 = !DILocation(line: 887, column: 14, scope: !3245)
!3289 = !DILocation(line: 888, column: 5, scope: !3246)
!3290 = !DILocation(line: 888, column: 5, scope: !3245)
!3291 = !DILocation(line: 891, column: 19, scope: !3249)
!3292 = !DILocation(line: 891, column: 25, scope: !3249)
!3293 = !DILocation(line: 0, scope: !3249)
!3294 = !DILocation(line: 892, column: 23, scope: !3249)
!3295 = !DILocation(line: 894, column: 26, scope: !3249)
!3296 = !DILocation(line: 894, column: 32, scope: !3249)
!3297 = !DILocation(line: 896, column: 55, scope: !3249)
!3298 = !DILocation(line: 897, column: 46, scope: !3249)
!3299 = !DILocation(line: 898, column: 55, scope: !3249)
!3300 = !DILocation(line: 899, column: 55, scope: !3249)
!3301 = !DILocation(line: 895, column: 20, scope: !3249)
!3302 = !DILocation(line: 901, column: 14, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3249, file: !290, line: 901, column: 9)
!3304 = !DILocation(line: 901, column: 9, scope: !3249)
!3305 = !DILocation(line: 903, column: 35, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3303, file: !290, line: 902, column: 7)
!3307 = !DILocation(line: 903, column: 20, scope: !3306)
!3308 = !DILocation(line: 904, column: 17, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3306, file: !290, line: 904, column: 13)
!3310 = !DILocation(line: 904, column: 13, scope: !3306)
!3311 = !DILocation(line: 905, column: 11, scope: !3309)
!3312 = !DILocation(line: 906, column: 27, scope: !3306)
!3313 = !DILocation(line: 906, column: 19, scope: !3306)
!3314 = !DILocation(line: 907, column: 69, scope: !3306)
!3315 = !DILocation(line: 909, column: 44, scope: !3306)
!3316 = !DILocation(line: 910, column: 44, scope: !3306)
!3317 = !DILocation(line: 907, column: 9, scope: !3306)
!3318 = !DILocation(line: 911, column: 7, scope: !3306)
!3319 = !DILocation(line: 913, column: 11, scope: !3249)
!3320 = !DILocation(line: 914, column: 5, scope: !3249)
!3321 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !290, file: !290, line: 925, type: !3322, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3324)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!53, !56, !61, !58}
!3324 = !{!3325, !3326, !3327}
!3325 = !DILocalVariable(name: "n", arg: 1, scope: !3321, file: !290, line: 925, type: !56)
!3326 = !DILocalVariable(name: "arg", arg: 2, scope: !3321, file: !290, line: 925, type: !61)
!3327 = !DILocalVariable(name: "argsize", arg: 3, scope: !3321, file: !290, line: 925, type: !58)
!3328 = !DILocation(line: 0, scope: !3321)
!3329 = !DILocation(line: 927, column: 10, scope: !3321)
!3330 = !DILocation(line: 927, column: 3, scope: !3321)
!3331 = distinct !DISubprogram(name: "quotearg", scope: !290, file: !290, line: 931, type: !693, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3332)
!3332 = !{!3333}
!3333 = !DILocalVariable(name: "arg", arg: 1, scope: !3331, file: !290, line: 931, type: !61)
!3334 = !DILocation(line: 0, scope: !3331)
!3335 = !DILocation(line: 0, scope: !3226, inlinedAt: !3336)
!3336 = distinct !DILocation(line: 933, column: 10, scope: !3331)
!3337 = !DILocation(line: 921, column: 10, scope: !3226, inlinedAt: !3336)
!3338 = !DILocation(line: 933, column: 3, scope: !3331)
!3339 = distinct !DISubprogram(name: "quotearg_mem", scope: !290, file: !290, line: 937, type: !3340, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!53, !61, !58}
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "arg", arg: 1, scope: !3339, file: !290, line: 937, type: !61)
!3344 = !DILocalVariable(name: "argsize", arg: 2, scope: !3339, file: !290, line: 937, type: !58)
!3345 = !DILocation(line: 0, scope: !3339)
!3346 = !DILocation(line: 0, scope: !3321, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 939, column: 10, scope: !3339)
!3348 = !DILocation(line: 927, column: 10, scope: !3321, inlinedAt: !3347)
!3349 = !DILocation(line: 939, column: 3, scope: !3339)
!3350 = distinct !DISubprogram(name: "quotearg_n_style", scope: !290, file: !290, line: 943, type: !3351, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3353)
!3351 = !DISubroutineType(types: !3352)
!3352 = !{!53, !56, !14, !61}
!3353 = !{!3354, !3355, !3356, !3357}
!3354 = !DILocalVariable(name: "n", arg: 1, scope: !3350, file: !290, line: 943, type: !56)
!3355 = !DILocalVariable(name: "s", arg: 2, scope: !3350, file: !290, line: 943, type: !14)
!3356 = !DILocalVariable(name: "arg", arg: 3, scope: !3350, file: !290, line: 943, type: !61)
!3357 = !DILocalVariable(name: "o", scope: !3350, file: !290, line: 945, type: !2462)
!3358 = !DILocation(line: 0, scope: !3350)
!3359 = !DILocation(line: 945, column: 3, scope: !3350)
!3360 = !DILocation(line: 945, column: 32, scope: !3350)
!3361 = !{!3362}
!3362 = distinct !{!3362, !3363, !"quoting_options_from_style: argument 0"}
!3363 = distinct !{!3363, !"quoting_options_from_style"}
!3364 = !DILocation(line: 945, column: 36, scope: !3350)
!3365 = !DILocalVariable(name: "style", arg: 1, scope: !3366, file: !290, line: 183, type: !14)
!3366 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !290, file: !290, line: 183, type: !3367, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!307, !14}
!3369 = !{!3365, !3370}
!3370 = !DILocalVariable(name: "o", scope: !3366, file: !290, line: 185, type: !307)
!3371 = !DILocation(line: 0, scope: !3366, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 945, column: 36, scope: !3350)
!3373 = !DILocation(line: 185, column: 26, scope: !3366, inlinedAt: !3372)
!3374 = !DILocation(line: 186, column: 13, scope: !3375, inlinedAt: !3372)
!3375 = distinct !DILexicalBlock(scope: !3366, file: !290, line: 186, column: 7)
!3376 = !DILocation(line: 186, column: 7, scope: !3366, inlinedAt: !3372)
!3377 = !DILocation(line: 187, column: 5, scope: !3375, inlinedAt: !3372)
!3378 = !DILocation(line: 188, column: 5, scope: !3366, inlinedAt: !3372)
!3379 = !DILocation(line: 188, column: 11, scope: !3366, inlinedAt: !3372)
!3380 = !DILocation(line: 946, column: 10, scope: !3350)
!3381 = !DILocation(line: 947, column: 1, scope: !3350)
!3382 = !DILocation(line: 946, column: 3, scope: !3350)
!3383 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !290, file: !290, line: 950, type: !3384, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3386)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!53, !56, !14, !61, !58}
!3386 = !{!3387, !3388, !3389, !3390, !3391}
!3387 = !DILocalVariable(name: "n", arg: 1, scope: !3383, file: !290, line: 950, type: !56)
!3388 = !DILocalVariable(name: "s", arg: 2, scope: !3383, file: !290, line: 950, type: !14)
!3389 = !DILocalVariable(name: "arg", arg: 3, scope: !3383, file: !290, line: 951, type: !61)
!3390 = !DILocalVariable(name: "argsize", arg: 4, scope: !3383, file: !290, line: 951, type: !58)
!3391 = !DILocalVariable(name: "o", scope: !3383, file: !290, line: 953, type: !2462)
!3392 = !DILocation(line: 0, scope: !3383)
!3393 = !DILocation(line: 953, column: 3, scope: !3383)
!3394 = !DILocation(line: 953, column: 32, scope: !3383)
!3395 = !{!3396}
!3396 = distinct !{!3396, !3397, !"quoting_options_from_style: argument 0"}
!3397 = distinct !{!3397, !"quoting_options_from_style"}
!3398 = !DILocation(line: 953, column: 36, scope: !3383)
!3399 = !DILocation(line: 0, scope: !3366, inlinedAt: !3400)
!3400 = distinct !DILocation(line: 953, column: 36, scope: !3383)
!3401 = !DILocation(line: 185, column: 26, scope: !3366, inlinedAt: !3400)
!3402 = !DILocation(line: 186, column: 13, scope: !3375, inlinedAt: !3400)
!3403 = !DILocation(line: 186, column: 7, scope: !3366, inlinedAt: !3400)
!3404 = !DILocation(line: 187, column: 5, scope: !3375, inlinedAt: !3400)
!3405 = !DILocation(line: 188, column: 5, scope: !3366, inlinedAt: !3400)
!3406 = !DILocation(line: 188, column: 11, scope: !3366, inlinedAt: !3400)
!3407 = !DILocation(line: 954, column: 10, scope: !3383)
!3408 = !DILocation(line: 955, column: 1, scope: !3383)
!3409 = !DILocation(line: 954, column: 3, scope: !3383)
!3410 = distinct !DISubprogram(name: "quotearg_style", scope: !290, file: !290, line: 958, type: !3411, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3413)
!3411 = !DISubroutineType(types: !3412)
!3412 = !{!53, !14, !61}
!3413 = !{!3414, !3415}
!3414 = !DILocalVariable(name: "s", arg: 1, scope: !3410, file: !290, line: 958, type: !14)
!3415 = !DILocalVariable(name: "arg", arg: 2, scope: !3410, file: !290, line: 958, type: !61)
!3416 = !DILocation(line: 0, scope: !3410)
!3417 = !DILocation(line: 0, scope: !3350, inlinedAt: !3418)
!3418 = distinct !DILocation(line: 960, column: 10, scope: !3410)
!3419 = !DILocation(line: 945, column: 3, scope: !3350, inlinedAt: !3418)
!3420 = !DILocation(line: 945, column: 32, scope: !3350, inlinedAt: !3418)
!3421 = !{!3422}
!3422 = distinct !{!3422, !3423, !"quoting_options_from_style: argument 0"}
!3423 = distinct !{!3423, !"quoting_options_from_style"}
!3424 = !DILocation(line: 945, column: 36, scope: !3350, inlinedAt: !3418)
!3425 = !DILocation(line: 0, scope: !3366, inlinedAt: !3426)
!3426 = distinct !DILocation(line: 945, column: 36, scope: !3350, inlinedAt: !3418)
!3427 = !DILocation(line: 185, column: 26, scope: !3366, inlinedAt: !3426)
!3428 = !DILocation(line: 186, column: 13, scope: !3375, inlinedAt: !3426)
!3429 = !DILocation(line: 186, column: 7, scope: !3366, inlinedAt: !3426)
!3430 = !DILocation(line: 187, column: 5, scope: !3375, inlinedAt: !3426)
!3431 = !DILocation(line: 188, column: 5, scope: !3366, inlinedAt: !3426)
!3432 = !DILocation(line: 188, column: 11, scope: !3366, inlinedAt: !3426)
!3433 = !DILocation(line: 946, column: 10, scope: !3350, inlinedAt: !3418)
!3434 = !DILocation(line: 947, column: 1, scope: !3350, inlinedAt: !3418)
!3435 = !DILocation(line: 960, column: 3, scope: !3410)
!3436 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !290, file: !290, line: 964, type: !3437, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3439)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{!53, !14, !61, !58}
!3439 = !{!3440, !3441, !3442}
!3440 = !DILocalVariable(name: "s", arg: 1, scope: !3436, file: !290, line: 964, type: !14)
!3441 = !DILocalVariable(name: "arg", arg: 2, scope: !3436, file: !290, line: 964, type: !61)
!3442 = !DILocalVariable(name: "argsize", arg: 3, scope: !3436, file: !290, line: 964, type: !58)
!3443 = !DILocation(line: 0, scope: !3436)
!3444 = !DILocation(line: 0, scope: !3383, inlinedAt: !3445)
!3445 = distinct !DILocation(line: 966, column: 10, scope: !3436)
!3446 = !DILocation(line: 953, column: 3, scope: !3383, inlinedAt: !3445)
!3447 = !DILocation(line: 953, column: 32, scope: !3383, inlinedAt: !3445)
!3448 = !{!3449}
!3449 = distinct !{!3449, !3450, !"quoting_options_from_style: argument 0"}
!3450 = distinct !{!3450, !"quoting_options_from_style"}
!3451 = !DILocation(line: 953, column: 36, scope: !3383, inlinedAt: !3445)
!3452 = !DILocation(line: 0, scope: !3366, inlinedAt: !3453)
!3453 = distinct !DILocation(line: 953, column: 36, scope: !3383, inlinedAt: !3445)
!3454 = !DILocation(line: 185, column: 26, scope: !3366, inlinedAt: !3453)
!3455 = !DILocation(line: 186, column: 13, scope: !3375, inlinedAt: !3453)
!3456 = !DILocation(line: 186, column: 7, scope: !3366, inlinedAt: !3453)
!3457 = !DILocation(line: 187, column: 5, scope: !3375, inlinedAt: !3453)
!3458 = !DILocation(line: 188, column: 5, scope: !3366, inlinedAt: !3453)
!3459 = !DILocation(line: 188, column: 11, scope: !3366, inlinedAt: !3453)
!3460 = !DILocation(line: 954, column: 10, scope: !3383, inlinedAt: !3445)
!3461 = !DILocation(line: 955, column: 1, scope: !3383, inlinedAt: !3445)
!3462 = !DILocation(line: 966, column: 3, scope: !3436)
!3463 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !290, file: !290, line: 970, type: !3464, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3466)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!53, !61, !58, !54}
!3466 = !{!3467, !3468, !3469, !3470}
!3467 = !DILocalVariable(name: "arg", arg: 1, scope: !3463, file: !290, line: 970, type: !61)
!3468 = !DILocalVariable(name: "argsize", arg: 2, scope: !3463, file: !290, line: 970, type: !58)
!3469 = !DILocalVariable(name: "ch", arg: 3, scope: !3463, file: !290, line: 970, type: !54)
!3470 = !DILocalVariable(name: "options", scope: !3463, file: !290, line: 972, type: !307)
!3471 = !DILocation(line: 0, scope: !3463)
!3472 = !DILocation(line: 972, column: 3, scope: !3463)
!3473 = !DILocation(line: 972, column: 26, scope: !3463)
!3474 = !DILocation(line: 973, column: 13, scope: !3463)
!3475 = !{i64 0, i64 4, !590, i64 4, i64 4, !581, i64 8, i64 32, !590, i64 40, i64 8, !486, i64 48, i64 8, !486}
!3476 = !DILocation(line: 0, scope: !2482, inlinedAt: !3477)
!3477 = distinct !DILocation(line: 974, column: 3, scope: !3463)
!3478 = !DILocation(line: 147, column: 62, scope: !2482, inlinedAt: !3477)
!3479 = !DILocation(line: 147, column: 57, scope: !2482, inlinedAt: !3477)
!3480 = !DILocation(line: 148, column: 15, scope: !2482, inlinedAt: !3477)
!3481 = !DILocation(line: 149, column: 21, scope: !2482, inlinedAt: !3477)
!3482 = !DILocation(line: 149, column: 24, scope: !2482, inlinedAt: !3477)
!3483 = !DILocation(line: 149, column: 34, scope: !2482, inlinedAt: !3477)
!3484 = !DILocation(line: 150, column: 19, scope: !2482, inlinedAt: !3477)
!3485 = !DILocation(line: 150, column: 24, scope: !2482, inlinedAt: !3477)
!3486 = !DILocation(line: 150, column: 6, scope: !2482, inlinedAt: !3477)
!3487 = !DILocation(line: 975, column: 10, scope: !3463)
!3488 = !DILocation(line: 976, column: 1, scope: !3463)
!3489 = !DILocation(line: 975, column: 3, scope: !3463)
!3490 = distinct !DISubprogram(name: "quotearg_char", scope: !290, file: !290, line: 979, type: !3491, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3493)
!3491 = !DISubroutineType(types: !3492)
!3492 = !{!53, !61, !54}
!3493 = !{!3494, !3495}
!3494 = !DILocalVariable(name: "arg", arg: 1, scope: !3490, file: !290, line: 979, type: !61)
!3495 = !DILocalVariable(name: "ch", arg: 2, scope: !3490, file: !290, line: 979, type: !54)
!3496 = !DILocation(line: 0, scope: !3490)
!3497 = !DILocation(line: 0, scope: !3463, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 981, column: 10, scope: !3490)
!3499 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3498)
!3500 = !DILocation(line: 972, column: 26, scope: !3463, inlinedAt: !3498)
!3501 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3498)
!3502 = !DILocation(line: 0, scope: !2482, inlinedAt: !3503)
!3503 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3498)
!3504 = !DILocation(line: 147, column: 62, scope: !2482, inlinedAt: !3503)
!3505 = !DILocation(line: 147, column: 57, scope: !2482, inlinedAt: !3503)
!3506 = !DILocation(line: 148, column: 15, scope: !2482, inlinedAt: !3503)
!3507 = !DILocation(line: 149, column: 21, scope: !2482, inlinedAt: !3503)
!3508 = !DILocation(line: 149, column: 24, scope: !2482, inlinedAt: !3503)
!3509 = !DILocation(line: 149, column: 34, scope: !2482, inlinedAt: !3503)
!3510 = !DILocation(line: 150, column: 19, scope: !2482, inlinedAt: !3503)
!3511 = !DILocation(line: 150, column: 24, scope: !2482, inlinedAt: !3503)
!3512 = !DILocation(line: 150, column: 6, scope: !2482, inlinedAt: !3503)
!3513 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3498)
!3514 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3498)
!3515 = !DILocation(line: 981, column: 3, scope: !3490)
!3516 = distinct !DISubprogram(name: "quotearg_colon", scope: !290, file: !290, line: 985, type: !693, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3517)
!3517 = !{!3518}
!3518 = !DILocalVariable(name: "arg", arg: 1, scope: !3516, file: !290, line: 985, type: !61)
!3519 = !DILocation(line: 0, scope: !3516)
!3520 = !DILocation(line: 0, scope: !3490, inlinedAt: !3521)
!3521 = distinct !DILocation(line: 987, column: 10, scope: !3516)
!3522 = !DILocation(line: 0, scope: !3463, inlinedAt: !3523)
!3523 = distinct !DILocation(line: 981, column: 10, scope: !3490, inlinedAt: !3521)
!3524 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3523)
!3525 = !DILocation(line: 972, column: 26, scope: !3463, inlinedAt: !3523)
!3526 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3523)
!3527 = !DILocation(line: 0, scope: !2482, inlinedAt: !3528)
!3528 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3523)
!3529 = !DILocation(line: 147, column: 57, scope: !2482, inlinedAt: !3528)
!3530 = !DILocation(line: 149, column: 21, scope: !2482, inlinedAt: !3528)
!3531 = !DILocation(line: 150, column: 6, scope: !2482, inlinedAt: !3528)
!3532 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3523)
!3533 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3523)
!3534 = !DILocation(line: 987, column: 3, scope: !3516)
!3535 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !290, file: !290, line: 991, type: !3340, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3536)
!3536 = !{!3537, !3538}
!3537 = !DILocalVariable(name: "arg", arg: 1, scope: !3535, file: !290, line: 991, type: !61)
!3538 = !DILocalVariable(name: "argsize", arg: 2, scope: !3535, file: !290, line: 991, type: !58)
!3539 = !DILocation(line: 0, scope: !3535)
!3540 = !DILocation(line: 0, scope: !3463, inlinedAt: !3541)
!3541 = distinct !DILocation(line: 993, column: 10, scope: !3535)
!3542 = !DILocation(line: 972, column: 3, scope: !3463, inlinedAt: !3541)
!3543 = !DILocation(line: 972, column: 26, scope: !3463, inlinedAt: !3541)
!3544 = !DILocation(line: 973, column: 13, scope: !3463, inlinedAt: !3541)
!3545 = !DILocation(line: 0, scope: !2482, inlinedAt: !3546)
!3546 = distinct !DILocation(line: 974, column: 3, scope: !3463, inlinedAt: !3541)
!3547 = !DILocation(line: 147, column: 57, scope: !2482, inlinedAt: !3546)
!3548 = !DILocation(line: 149, column: 21, scope: !2482, inlinedAt: !3546)
!3549 = !DILocation(line: 150, column: 6, scope: !2482, inlinedAt: !3546)
!3550 = !DILocation(line: 975, column: 10, scope: !3463, inlinedAt: !3541)
!3551 = !DILocation(line: 976, column: 1, scope: !3463, inlinedAt: !3541)
!3552 = !DILocation(line: 993, column: 3, scope: !3535)
!3553 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !290, file: !290, line: 997, type: !3351, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3554)
!3554 = !{!3555, !3556, !3557, !3558}
!3555 = !DILocalVariable(name: "n", arg: 1, scope: !3553, file: !290, line: 997, type: !56)
!3556 = !DILocalVariable(name: "s", arg: 2, scope: !3553, file: !290, line: 997, type: !14)
!3557 = !DILocalVariable(name: "arg", arg: 3, scope: !3553, file: !290, line: 997, type: !61)
!3558 = !DILocalVariable(name: "options", scope: !3553, file: !290, line: 999, type: !307)
!3559 = !DILocation(line: 0, scope: !3553)
!3560 = !DILocation(line: 999, column: 3, scope: !3553)
!3561 = !DILocation(line: 999, column: 26, scope: !3553)
!3562 = !DILocation(line: 0, scope: !3366, inlinedAt: !3563)
!3563 = distinct !DILocation(line: 1000, column: 13, scope: !3553)
!3564 = !DILocation(line: 186, column: 13, scope: !3375, inlinedAt: !3563)
!3565 = !DILocation(line: 186, column: 7, scope: !3366, inlinedAt: !3563)
!3566 = !DILocation(line: 187, column: 5, scope: !3375, inlinedAt: !3563)
!3567 = !{!3568}
!3568 = distinct !{!3568, !3569, !"quoting_options_from_style: argument 0"}
!3569 = distinct !{!3569, !"quoting_options_from_style"}
!3570 = !DILocation(line: 1000, column: 13, scope: !3553)
!3571 = !DILocation(line: 0, scope: !2482, inlinedAt: !3572)
!3572 = distinct !DILocation(line: 1001, column: 3, scope: !3553)
!3573 = !DILocation(line: 147, column: 57, scope: !2482, inlinedAt: !3572)
!3574 = !DILocation(line: 149, column: 21, scope: !2482, inlinedAt: !3572)
!3575 = !DILocation(line: 150, column: 6, scope: !2482, inlinedAt: !3572)
!3576 = !DILocation(line: 1002, column: 10, scope: !3553)
!3577 = !DILocation(line: 1003, column: 1, scope: !3553)
!3578 = !DILocation(line: 1002, column: 3, scope: !3553)
!3579 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !290, file: !290, line: 1006, type: !3580, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3582)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!53, !56, !61, !61, !61}
!3582 = !{!3583, !3584, !3585, !3586}
!3583 = !DILocalVariable(name: "n", arg: 1, scope: !3579, file: !290, line: 1006, type: !56)
!3584 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3579, file: !290, line: 1006, type: !61)
!3585 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3579, file: !290, line: 1007, type: !61)
!3586 = !DILocalVariable(name: "arg", arg: 4, scope: !3579, file: !290, line: 1007, type: !61)
!3587 = !DILocation(line: 0, scope: !3579)
!3588 = !DILocalVariable(name: "n", arg: 1, scope: !3589, file: !290, line: 1014, type: !56)
!3589 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !290, file: !290, line: 1014, type: !3590, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3592)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!53, !56, !61, !61, !61, !58}
!3592 = !{!3588, !3593, !3594, !3595, !3596, !3597}
!3593 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3589, file: !290, line: 1014, type: !61)
!3594 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3589, file: !290, line: 1015, type: !61)
!3595 = !DILocalVariable(name: "arg", arg: 4, scope: !3589, file: !290, line: 1016, type: !61)
!3596 = !DILocalVariable(name: "argsize", arg: 5, scope: !3589, file: !290, line: 1016, type: !58)
!3597 = !DILocalVariable(name: "o", scope: !3589, file: !290, line: 1018, type: !307)
!3598 = !DILocation(line: 0, scope: !3589, inlinedAt: !3599)
!3599 = distinct !DILocation(line: 1009, column: 10, scope: !3579)
!3600 = !DILocation(line: 1018, column: 3, scope: !3589, inlinedAt: !3599)
!3601 = !DILocation(line: 1018, column: 26, scope: !3589, inlinedAt: !3599)
!3602 = !DILocation(line: 1018, column: 30, scope: !3589, inlinedAt: !3599)
!3603 = !DILocation(line: 0, scope: !2522, inlinedAt: !3604)
!3604 = distinct !DILocation(line: 1019, column: 3, scope: !3589, inlinedAt: !3599)
!3605 = !DILocation(line: 174, column: 6, scope: !2522, inlinedAt: !3604)
!3606 = !DILocation(line: 174, column: 12, scope: !2522, inlinedAt: !3604)
!3607 = !DILocation(line: 175, column: 8, scope: !2536, inlinedAt: !3604)
!3608 = !DILocation(line: 175, column: 19, scope: !2536, inlinedAt: !3604)
!3609 = !DILocation(line: 176, column: 5, scope: !2536, inlinedAt: !3604)
!3610 = !DILocation(line: 177, column: 6, scope: !2522, inlinedAt: !3604)
!3611 = !DILocation(line: 177, column: 17, scope: !2522, inlinedAt: !3604)
!3612 = !DILocation(line: 178, column: 6, scope: !2522, inlinedAt: !3604)
!3613 = !DILocation(line: 178, column: 18, scope: !2522, inlinedAt: !3604)
!3614 = !DILocation(line: 1020, column: 10, scope: !3589, inlinedAt: !3599)
!3615 = !DILocation(line: 1021, column: 1, scope: !3589, inlinedAt: !3599)
!3616 = !DILocation(line: 1009, column: 3, scope: !3579)
!3617 = !DILocation(line: 0, scope: !3589)
!3618 = !DILocation(line: 1018, column: 3, scope: !3589)
!3619 = !DILocation(line: 1018, column: 26, scope: !3589)
!3620 = !DILocation(line: 1018, column: 30, scope: !3589)
!3621 = !DILocation(line: 0, scope: !2522, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 1019, column: 3, scope: !3589)
!3623 = !DILocation(line: 174, column: 6, scope: !2522, inlinedAt: !3622)
!3624 = !DILocation(line: 174, column: 12, scope: !2522, inlinedAt: !3622)
!3625 = !DILocation(line: 175, column: 8, scope: !2536, inlinedAt: !3622)
!3626 = !DILocation(line: 175, column: 19, scope: !2536, inlinedAt: !3622)
!3627 = !DILocation(line: 176, column: 5, scope: !2536, inlinedAt: !3622)
!3628 = !DILocation(line: 177, column: 6, scope: !2522, inlinedAt: !3622)
!3629 = !DILocation(line: 177, column: 17, scope: !2522, inlinedAt: !3622)
!3630 = !DILocation(line: 178, column: 6, scope: !2522, inlinedAt: !3622)
!3631 = !DILocation(line: 178, column: 18, scope: !2522, inlinedAt: !3622)
!3632 = !DILocation(line: 1020, column: 10, scope: !3589)
!3633 = !DILocation(line: 1021, column: 1, scope: !3589)
!3634 = !DILocation(line: 1020, column: 3, scope: !3589)
!3635 = distinct !DISubprogram(name: "quotearg_custom", scope: !290, file: !290, line: 1024, type: !3636, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3638)
!3636 = !DISubroutineType(types: !3637)
!3637 = !{!53, !61, !61, !61}
!3638 = !{!3639, !3640, !3641}
!3639 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3635, file: !290, line: 1024, type: !61)
!3640 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3635, file: !290, line: 1024, type: !61)
!3641 = !DILocalVariable(name: "arg", arg: 3, scope: !3635, file: !290, line: 1025, type: !61)
!3642 = !DILocation(line: 0, scope: !3635)
!3643 = !DILocation(line: 0, scope: !3579, inlinedAt: !3644)
!3644 = distinct !DILocation(line: 1027, column: 10, scope: !3635)
!3645 = !DILocation(line: 0, scope: !3589, inlinedAt: !3646)
!3646 = distinct !DILocation(line: 1009, column: 10, scope: !3579, inlinedAt: !3644)
!3647 = !DILocation(line: 1018, column: 3, scope: !3589, inlinedAt: !3646)
!3648 = !DILocation(line: 1018, column: 26, scope: !3589, inlinedAt: !3646)
!3649 = !DILocation(line: 1018, column: 30, scope: !3589, inlinedAt: !3646)
!3650 = !DILocation(line: 0, scope: !2522, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 1019, column: 3, scope: !3589, inlinedAt: !3646)
!3652 = !DILocation(line: 174, column: 6, scope: !2522, inlinedAt: !3651)
!3653 = !DILocation(line: 174, column: 12, scope: !2522, inlinedAt: !3651)
!3654 = !DILocation(line: 175, column: 8, scope: !2536, inlinedAt: !3651)
!3655 = !DILocation(line: 175, column: 19, scope: !2536, inlinedAt: !3651)
!3656 = !DILocation(line: 176, column: 5, scope: !2536, inlinedAt: !3651)
!3657 = !DILocation(line: 177, column: 6, scope: !2522, inlinedAt: !3651)
!3658 = !DILocation(line: 177, column: 17, scope: !2522, inlinedAt: !3651)
!3659 = !DILocation(line: 178, column: 6, scope: !2522, inlinedAt: !3651)
!3660 = !DILocation(line: 178, column: 18, scope: !2522, inlinedAt: !3651)
!3661 = !DILocation(line: 1020, column: 10, scope: !3589, inlinedAt: !3646)
!3662 = !DILocation(line: 1021, column: 1, scope: !3589, inlinedAt: !3646)
!3663 = !DILocation(line: 1027, column: 3, scope: !3635)
!3664 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !290, file: !290, line: 1031, type: !3665, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3667)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!53, !61, !61, !61, !58}
!3667 = !{!3668, !3669, !3670, !3671}
!3668 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3664, file: !290, line: 1031, type: !61)
!3669 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3664, file: !290, line: 1031, type: !61)
!3670 = !DILocalVariable(name: "arg", arg: 3, scope: !3664, file: !290, line: 1032, type: !61)
!3671 = !DILocalVariable(name: "argsize", arg: 4, scope: !3664, file: !290, line: 1032, type: !58)
!3672 = !DILocation(line: 0, scope: !3664)
!3673 = !DILocation(line: 0, scope: !3589, inlinedAt: !3674)
!3674 = distinct !DILocation(line: 1034, column: 10, scope: !3664)
!3675 = !DILocation(line: 1018, column: 3, scope: !3589, inlinedAt: !3674)
!3676 = !DILocation(line: 1018, column: 26, scope: !3589, inlinedAt: !3674)
!3677 = !DILocation(line: 1018, column: 30, scope: !3589, inlinedAt: !3674)
!3678 = !DILocation(line: 0, scope: !2522, inlinedAt: !3679)
!3679 = distinct !DILocation(line: 1019, column: 3, scope: !3589, inlinedAt: !3674)
!3680 = !DILocation(line: 174, column: 6, scope: !2522, inlinedAt: !3679)
!3681 = !DILocation(line: 174, column: 12, scope: !2522, inlinedAt: !3679)
!3682 = !DILocation(line: 175, column: 8, scope: !2536, inlinedAt: !3679)
!3683 = !DILocation(line: 175, column: 19, scope: !2536, inlinedAt: !3679)
!3684 = !DILocation(line: 176, column: 5, scope: !2536, inlinedAt: !3679)
!3685 = !DILocation(line: 177, column: 6, scope: !2522, inlinedAt: !3679)
!3686 = !DILocation(line: 177, column: 17, scope: !2522, inlinedAt: !3679)
!3687 = !DILocation(line: 178, column: 6, scope: !2522, inlinedAt: !3679)
!3688 = !DILocation(line: 178, column: 18, scope: !2522, inlinedAt: !3679)
!3689 = !DILocation(line: 1020, column: 10, scope: !3589, inlinedAt: !3674)
!3690 = !DILocation(line: 1021, column: 1, scope: !3589, inlinedAt: !3674)
!3691 = !DILocation(line: 1034, column: 3, scope: !3664)
!3692 = distinct !DISubprogram(name: "quote_n_mem", scope: !290, file: !290, line: 1049, type: !3693, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3695)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!61, !56, !61, !58}
!3695 = !{!3696, !3697, !3698}
!3696 = !DILocalVariable(name: "n", arg: 1, scope: !3692, file: !290, line: 1049, type: !56)
!3697 = !DILocalVariable(name: "arg", arg: 2, scope: !3692, file: !290, line: 1049, type: !61)
!3698 = !DILocalVariable(name: "argsize", arg: 3, scope: !3692, file: !290, line: 1049, type: !58)
!3699 = !DILocation(line: 0, scope: !3692)
!3700 = !DILocation(line: 1051, column: 10, scope: !3692)
!3701 = !DILocation(line: 1051, column: 3, scope: !3692)
!3702 = distinct !DISubprogram(name: "quote_mem", scope: !290, file: !290, line: 1055, type: !3703, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3705)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!61, !61, !58}
!3705 = !{!3706, !3707}
!3706 = !DILocalVariable(name: "arg", arg: 1, scope: !3702, file: !290, line: 1055, type: !61)
!3707 = !DILocalVariable(name: "argsize", arg: 2, scope: !3702, file: !290, line: 1055, type: !58)
!3708 = !DILocation(line: 0, scope: !3702)
!3709 = !DILocation(line: 0, scope: !3692, inlinedAt: !3710)
!3710 = distinct !DILocation(line: 1057, column: 10, scope: !3702)
!3711 = !DILocation(line: 1051, column: 10, scope: !3692, inlinedAt: !3710)
!3712 = !DILocation(line: 1057, column: 3, scope: !3702)
!3713 = distinct !DISubprogram(name: "quote_n", scope: !290, file: !290, line: 1061, type: !3714, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3716)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!61, !56, !61}
!3716 = !{!3717, !3718}
!3717 = !DILocalVariable(name: "n", arg: 1, scope: !3713, file: !290, line: 1061, type: !56)
!3718 = !DILocalVariable(name: "arg", arg: 2, scope: !3713, file: !290, line: 1061, type: !61)
!3719 = !DILocation(line: 0, scope: !3713)
!3720 = !DILocation(line: 0, scope: !3692, inlinedAt: !3721)
!3721 = distinct !DILocation(line: 1063, column: 10, scope: !3713)
!3722 = !DILocation(line: 1051, column: 10, scope: !3692, inlinedAt: !3721)
!3723 = !DILocation(line: 1063, column: 3, scope: !3713)
!3724 = distinct !DISubprogram(name: "quote", scope: !290, file: !290, line: 1067, type: !3725, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !289, retainedNodes: !3727)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!61, !61}
!3727 = !{!3728}
!3728 = !DILocalVariable(name: "arg", arg: 1, scope: !3724, file: !290, line: 1067, type: !61)
!3729 = !DILocation(line: 0, scope: !3724)
!3730 = !DILocation(line: 0, scope: !3713, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 1069, column: 10, scope: !3724)
!3732 = !DILocation(line: 0, scope: !3692, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 1063, column: 10, scope: !3713, inlinedAt: !3731)
!3734 = !DILocation(line: 1051, column: 10, scope: !3692, inlinedAt: !3733)
!3735 = !DILocation(line: 1069, column: 3, scope: !3724)
!3736 = distinct !DISubprogram(name: "version_etc_arn", scope: !405, file: !405, line: 61, type: !3737, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3774)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !3739, !61, !61, !61, !3773, !58}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !3741)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3741, file: !95, line: 51, baseType: !56, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3741, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3741, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3741, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3741, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3741, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3741, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3741, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3741, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3741, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3741, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3741, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3741, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3741, file: !95, line: 70, baseType: !3757, size: 64, offset: 832)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3741, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3741, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3741, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3741, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3741, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3741, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3741, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3741, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3741, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3741, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3741, file: !95, line: 93, baseType: !3757, size: 64, offset: 1344)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3741, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3741, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3741, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3741, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780}
!3775 = !DILocalVariable(name: "stream", arg: 1, scope: !3736, file: !405, line: 61, type: !3739)
!3776 = !DILocalVariable(name: "command_name", arg: 2, scope: !3736, file: !405, line: 62, type: !61)
!3777 = !DILocalVariable(name: "package", arg: 3, scope: !3736, file: !405, line: 62, type: !61)
!3778 = !DILocalVariable(name: "version", arg: 4, scope: !3736, file: !405, line: 63, type: !61)
!3779 = !DILocalVariable(name: "authors", arg: 5, scope: !3736, file: !405, line: 64, type: !3773)
!3780 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3736, file: !405, line: 64, type: !58)
!3781 = !DILocation(line: 0, scope: !3736)
!3782 = !DILocation(line: 66, column: 7, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3736, file: !405, line: 66, column: 7)
!3784 = !DILocation(line: 66, column: 7, scope: !3736)
!3785 = !DILocation(line: 67, column: 5, scope: !3783)
!3786 = !DILocation(line: 69, column: 5, scope: !3783)
!3787 = !DILocation(line: 83, column: 3, scope: !3736)
!3788 = !DILocation(line: 85, column: 3, scope: !3736)
!3789 = !DILocation(line: 88, column: 3, scope: !3736)
!3790 = !DILocation(line: 95, column: 3, scope: !3736)
!3791 = !DILocation(line: 97, column: 3, scope: !3736)
!3792 = !DILocation(line: 105, column: 7, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3736, file: !405, line: 98, column: 5)
!3794 = !DILocation(line: 106, column: 7, scope: !3793)
!3795 = !DILocation(line: 109, column: 7, scope: !3793)
!3796 = !DILocation(line: 110, column: 7, scope: !3793)
!3797 = !DILocation(line: 113, column: 7, scope: !3793)
!3798 = !DILocation(line: 115, column: 7, scope: !3793)
!3799 = !DILocation(line: 120, column: 7, scope: !3793)
!3800 = !DILocation(line: 122, column: 7, scope: !3793)
!3801 = !DILocation(line: 127, column: 7, scope: !3793)
!3802 = !DILocation(line: 129, column: 7, scope: !3793)
!3803 = !DILocation(line: 134, column: 7, scope: !3793)
!3804 = !DILocation(line: 137, column: 7, scope: !3793)
!3805 = !DILocation(line: 142, column: 7, scope: !3793)
!3806 = !DILocation(line: 145, column: 7, scope: !3793)
!3807 = !DILocation(line: 150, column: 7, scope: !3793)
!3808 = !DILocation(line: 154, column: 7, scope: !3793)
!3809 = !DILocation(line: 159, column: 7, scope: !3793)
!3810 = !DILocation(line: 163, column: 7, scope: !3793)
!3811 = !DILocation(line: 170, column: 7, scope: !3793)
!3812 = !DILocation(line: 174, column: 7, scope: !3793)
!3813 = !DILocation(line: 176, column: 1, scope: !3736)
!3814 = distinct !DISubprogram(name: "version_etc_ar", scope: !405, file: !405, line: 183, type: !3815, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3817)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3739, !61, !61, !61, !3773}
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823}
!3818 = !DILocalVariable(name: "stream", arg: 1, scope: !3814, file: !405, line: 183, type: !3739)
!3819 = !DILocalVariable(name: "command_name", arg: 2, scope: !3814, file: !405, line: 184, type: !61)
!3820 = !DILocalVariable(name: "package", arg: 3, scope: !3814, file: !405, line: 184, type: !61)
!3821 = !DILocalVariable(name: "version", arg: 4, scope: !3814, file: !405, line: 185, type: !61)
!3822 = !DILocalVariable(name: "authors", arg: 5, scope: !3814, file: !405, line: 185, type: !3773)
!3823 = !DILocalVariable(name: "n_authors", scope: !3814, file: !405, line: 187, type: !58)
!3824 = !DILocation(line: 0, scope: !3814)
!3825 = !DILocation(line: 189, column: 8, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3814, file: !405, line: 189, column: 3)
!3827 = !DILocation(line: 0, scope: !3826)
!3828 = !DILocation(line: 189, column: 23, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3826, file: !405, line: 189, column: 3)
!3830 = !DILocation(line: 189, column: 3, scope: !3826)
!3831 = !DILocation(line: 189, column: 52, scope: !3829)
!3832 = distinct !{!3832, !3830, !3833, !549}
!3833 = !DILocation(line: 190, column: 5, scope: !3826)
!3834 = !DILocation(line: 191, column: 3, scope: !3814)
!3835 = !DILocation(line: 192, column: 1, scope: !3814)
!3836 = distinct !DISubprogram(name: "version_etc_va", scope: !405, file: !405, line: 199, type: !3837, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3850)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{null, !3739, !61, !61, !61, !3839}
!3839 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !216, line: 52, baseType: !3840)
!3840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !218, line: 32, baseType: !3841)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3842, baseType: !3843)
!3842 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", scope: !222, size: 256, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !3843, file: !3842, line: 192, baseType: !55, size: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !3843, file: !3842, line: 192, baseType: !55, size: 64, offset: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !3843, file: !3842, line: 192, baseType: !55, size: 64, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !3843, file: !3842, line: 192, baseType: !56, size: 32, offset: 192)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !3843, file: !3842, line: 192, baseType: !56, size: 32, offset: 224)
!3850 = !{!3851, !3852, !3853, !3854, !3855, !3856, !3857}
!3851 = !DILocalVariable(name: "stream", arg: 1, scope: !3836, file: !405, line: 199, type: !3739)
!3852 = !DILocalVariable(name: "command_name", arg: 2, scope: !3836, file: !405, line: 200, type: !61)
!3853 = !DILocalVariable(name: "package", arg: 3, scope: !3836, file: !405, line: 200, type: !61)
!3854 = !DILocalVariable(name: "version", arg: 4, scope: !3836, file: !405, line: 201, type: !61)
!3855 = !DILocalVariable(name: "authors", arg: 5, scope: !3836, file: !405, line: 201, type: !3839)
!3856 = !DILocalVariable(name: "n_authors", scope: !3836, file: !405, line: 203, type: !58)
!3857 = !DILocalVariable(name: "authtab", scope: !3836, file: !405, line: 204, type: !3858)
!3858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !303)
!3859 = !DILocation(line: 0, scope: !3836)
!3860 = !DILocation(line: 201, column: 46, scope: !3836)
!3861 = !DILocation(line: 204, column: 3, scope: !3836)
!3862 = !DILocation(line: 204, column: 15, scope: !3836)
!3863 = !DILocation(line: 208, column: 35, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3865, file: !405, line: 206, column: 3)
!3865 = distinct !DILexicalBlock(scope: !3836, file: !405, line: 206, column: 3)
!3866 = !DILocation(line: 208, column: 14, scope: !3864)
!3867 = !DILocation(line: 208, column: 33, scope: !3864)
!3868 = !DILocation(line: 208, column: 67, scope: !3864)
!3869 = !DILocation(line: 206, column: 3, scope: !3865)
!3870 = !DILocation(line: 0, scope: !3865)
!3871 = !DILocation(line: 211, column: 3, scope: !3836)
!3872 = !DILocation(line: 213, column: 1, scope: !3836)
!3873 = distinct !DISubprogram(name: "version_etc", scope: !405, file: !405, line: 230, type: !3874, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !3876)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3739, !61, !61, !61, null}
!3876 = !{!3877, !3878, !3879, !3880, !3881}
!3877 = !DILocalVariable(name: "stream", arg: 1, scope: !3873, file: !405, line: 230, type: !3739)
!3878 = !DILocalVariable(name: "command_name", arg: 2, scope: !3873, file: !405, line: 231, type: !61)
!3879 = !DILocalVariable(name: "package", arg: 3, scope: !3873, file: !405, line: 231, type: !61)
!3880 = !DILocalVariable(name: "version", arg: 4, scope: !3873, file: !405, line: 232, type: !61)
!3881 = !DILocalVariable(name: "authors", scope: !3873, file: !405, line: 234, type: !3839)
!3882 = !DILocation(line: 0, scope: !3873)
!3883 = !DILocation(line: 234, column: 3, scope: !3873)
!3884 = !DILocation(line: 234, column: 11, scope: !3873)
!3885 = !DILocation(line: 235, column: 3, scope: !3873)
!3886 = !DILocation(line: 236, column: 3, scope: !3873)
!3887 = !DILocation(line: 237, column: 3, scope: !3873)
!3888 = !DILocation(line: 238, column: 1, scope: !3873)
!3889 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !405, file: !405, line: 241, type: !243, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !404, retainedNodes: !495)
!3890 = !DILocation(line: 243, column: 3, scope: !3889)
!3891 = !DILocation(line: 248, column: 3, scope: !3889)
!3892 = !DILocation(line: 254, column: 3, scope: !3889)
!3893 = !DILocation(line: 259, column: 3, scope: !3889)
!3894 = !DILocation(line: 261, column: 1, scope: !3889)
!3895 = distinct !DISubprogram(name: "xnrealloc", scope: !3896, file: !3896, line: 147, type: !3897, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3899)
!3896 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!55, !55, !58, !58}
!3899 = !{!3900, !3901, !3902}
!3900 = !DILocalVariable(name: "p", arg: 1, scope: !3895, file: !3896, line: 147, type: !55)
!3901 = !DILocalVariable(name: "n", arg: 2, scope: !3895, file: !3896, line: 147, type: !58)
!3902 = !DILocalVariable(name: "s", arg: 3, scope: !3895, file: !3896, line: 147, type: !58)
!3903 = !DILocation(line: 0, scope: !3895)
!3904 = !DILocalVariable(name: "p", arg: 1, scope: !3905, file: !411, line: 83, type: !55)
!3905 = distinct !DISubprogram(name: "xreallocarray", scope: !411, file: !411, line: 83, type: !3897, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3906)
!3906 = !{!3904, !3907, !3908}
!3907 = !DILocalVariable(name: "n", arg: 2, scope: !3905, file: !411, line: 83, type: !58)
!3908 = !DILocalVariable(name: "s", arg: 3, scope: !3905, file: !411, line: 83, type: !58)
!3909 = !DILocation(line: 0, scope: !3905, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 149, column: 10, scope: !3895)
!3911 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !3910)
!3912 = !DILocalVariable(name: "p", arg: 1, scope: !3913, file: !411, line: 37, type: !55)
!3913 = distinct !DISubprogram(name: "check_nonnull", scope: !411, file: !411, line: 37, type: !3914, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!55, !55}
!3916 = !{!3912}
!3917 = !DILocation(line: 0, scope: !3913, inlinedAt: !3918)
!3918 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !3910)
!3919 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3918)
!3920 = distinct !DILexicalBlock(scope: !3913, file: !411, line: 39, column: 7)
!3921 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3918)
!3922 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3918)
!3923 = !DILocation(line: 149, column: 3, scope: !3895)
!3924 = !DILocation(line: 0, scope: !3905)
!3925 = !DILocation(line: 85, column: 25, scope: !3905)
!3926 = !DILocation(line: 0, scope: !3913, inlinedAt: !3927)
!3927 = distinct !DILocation(line: 85, column: 10, scope: !3905)
!3928 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3927)
!3929 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3927)
!3930 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3927)
!3931 = !DILocation(line: 85, column: 3, scope: !3905)
!3932 = distinct !DISubprogram(name: "xmalloc", scope: !411, file: !411, line: 47, type: !3933, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3935)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!55, !58}
!3935 = !{!3936}
!3936 = !DILocalVariable(name: "s", arg: 1, scope: !3932, file: !411, line: 47, type: !58)
!3937 = !DILocation(line: 0, scope: !3932)
!3938 = !DILocation(line: 49, column: 25, scope: !3932)
!3939 = !DILocation(line: 0, scope: !3913, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 49, column: 10, scope: !3932)
!3941 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3940)
!3942 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3940)
!3943 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3940)
!3944 = !DILocation(line: 49, column: 3, scope: !3932)
!3945 = distinct !DISubprogram(name: "ximalloc", scope: !411, file: !411, line: 53, type: !1382, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3946)
!3946 = !{!3947}
!3947 = !DILocalVariable(name: "s", arg: 1, scope: !3945, file: !411, line: 53, type: !181)
!3948 = !DILocation(line: 0, scope: !3945)
!3949 = !DILocalVariable(name: "s", arg: 1, scope: !3950, file: !1381, line: 55, type: !181)
!3950 = distinct !DISubprogram(name: "imalloc", scope: !1381, file: !1381, line: 55, type: !1382, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3951)
!3951 = !{!3949}
!3952 = !DILocation(line: 0, scope: !3950, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 55, column: 25, scope: !3945)
!3954 = !DILocation(line: 57, column: 26, scope: !3950, inlinedAt: !3953)
!3955 = !DILocation(line: 0, scope: !3913, inlinedAt: !3956)
!3956 = distinct !DILocation(line: 55, column: 10, scope: !3945)
!3957 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3956)
!3958 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3956)
!3959 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3956)
!3960 = !DILocation(line: 55, column: 3, scope: !3945)
!3961 = distinct !DISubprogram(name: "xcharalloc", scope: !411, file: !411, line: 59, type: !3962, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!53, !58}
!3964 = !{!3965}
!3965 = !DILocalVariable(name: "n", arg: 1, scope: !3961, file: !411, line: 59, type: !58)
!3966 = !DILocation(line: 0, scope: !3961)
!3967 = !DILocation(line: 0, scope: !3932, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 61, column: 10, scope: !3961)
!3969 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !3968)
!3970 = !DILocation(line: 0, scope: !3913, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !3968)
!3972 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3971)
!3973 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3971)
!3974 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3971)
!3975 = !DILocation(line: 61, column: 3, scope: !3961)
!3976 = distinct !DISubprogram(name: "xrealloc", scope: !411, file: !411, line: 68, type: !3977, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3979)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!55, !55, !58}
!3979 = !{!3980, !3981}
!3980 = !DILocalVariable(name: "p", arg: 1, scope: !3976, file: !411, line: 68, type: !55)
!3981 = !DILocalVariable(name: "s", arg: 2, scope: !3976, file: !411, line: 68, type: !58)
!3982 = !DILocation(line: 0, scope: !3976)
!3983 = !DILocalVariable(name: "ptr", arg: 1, scope: !3984, file: !3985, line: 2057, type: !55)
!3984 = distinct !DISubprogram(name: "rpl_realloc", scope: !3985, file: !3985, line: 2057, type: !3977, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !3986)
!3985 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!3986 = !{!3983, !3987}
!3987 = !DILocalVariable(name: "size", arg: 2, scope: !3984, file: !3985, line: 2057, type: !58)
!3988 = !DILocation(line: 0, scope: !3984, inlinedAt: !3989)
!3989 = distinct !DILocation(line: 70, column: 25, scope: !3976)
!3990 = !DILocation(line: 2059, column: 24, scope: !3984, inlinedAt: !3989)
!3991 = !DILocation(line: 2059, column: 10, scope: !3984, inlinedAt: !3989)
!3992 = !DILocation(line: 0, scope: !3913, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 70, column: 10, scope: !3976)
!3994 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !3993)
!3995 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !3993)
!3996 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !3993)
!3997 = !DILocation(line: 70, column: 3, scope: !3976)
!3998 = distinct !DISubprogram(name: "xirealloc", scope: !411, file: !411, line: 74, type: !3999, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!55, !55, !181}
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "p", arg: 1, scope: !3998, file: !411, line: 74, type: !55)
!4003 = !DILocalVariable(name: "s", arg: 2, scope: !3998, file: !411, line: 74, type: !181)
!4004 = !DILocation(line: 0, scope: !3998)
!4005 = !DILocalVariable(name: "p", arg: 1, scope: !4006, file: !1381, line: 66, type: !55)
!4006 = distinct !DISubprogram(name: "irealloc", scope: !1381, file: !1381, line: 66, type: !3999, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4007)
!4007 = !{!4005, !4008}
!4008 = !DILocalVariable(name: "s", arg: 2, scope: !4006, file: !1381, line: 66, type: !181)
!4009 = !DILocation(line: 0, scope: !4006, inlinedAt: !4010)
!4010 = distinct !DILocation(line: 76, column: 25, scope: !3998)
!4011 = !DILocation(line: 0, scope: !3984, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 68, column: 26, scope: !4006, inlinedAt: !4010)
!4013 = !DILocation(line: 2059, column: 24, scope: !3984, inlinedAt: !4012)
!4014 = !DILocation(line: 2059, column: 10, scope: !3984, inlinedAt: !4012)
!4015 = !DILocation(line: 0, scope: !3913, inlinedAt: !4016)
!4016 = distinct !DILocation(line: 76, column: 10, scope: !3998)
!4017 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4016)
!4018 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4016)
!4019 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4016)
!4020 = !DILocation(line: 76, column: 3, scope: !3998)
!4021 = distinct !DISubprogram(name: "xireallocarray", scope: !411, file: !411, line: 89, type: !4022, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4024)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!55, !55, !181, !181}
!4024 = !{!4025, !4026, !4027}
!4025 = !DILocalVariable(name: "p", arg: 1, scope: !4021, file: !411, line: 89, type: !55)
!4026 = !DILocalVariable(name: "n", arg: 2, scope: !4021, file: !411, line: 89, type: !181)
!4027 = !DILocalVariable(name: "s", arg: 3, scope: !4021, file: !411, line: 89, type: !181)
!4028 = !DILocation(line: 0, scope: !4021)
!4029 = !DILocalVariable(name: "p", arg: 1, scope: !4030, file: !1381, line: 98, type: !55)
!4030 = distinct !DISubprogram(name: "ireallocarray", scope: !1381, file: !1381, line: 98, type: !4022, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4031)
!4031 = !{!4029, !4032, !4033}
!4032 = !DILocalVariable(name: "n", arg: 2, scope: !4030, file: !1381, line: 98, type: !181)
!4033 = !DILocalVariable(name: "s", arg: 3, scope: !4030, file: !1381, line: 98, type: !181)
!4034 = !DILocation(line: 0, scope: !4030, inlinedAt: !4035)
!4035 = distinct !DILocation(line: 91, column: 25, scope: !4021)
!4036 = !DILocation(line: 101, column: 13, scope: !4030, inlinedAt: !4035)
!4037 = !DILocation(line: 0, scope: !3913, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 91, column: 10, scope: !4021)
!4039 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4038)
!4040 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4038)
!4041 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4038)
!4042 = !DILocation(line: 91, column: 3, scope: !4021)
!4043 = distinct !DISubprogram(name: "xnmalloc", scope: !411, file: !411, line: 98, type: !4044, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4046)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!55, !58, !58}
!4046 = !{!4047, !4048}
!4047 = !DILocalVariable(name: "n", arg: 1, scope: !4043, file: !411, line: 98, type: !58)
!4048 = !DILocalVariable(name: "s", arg: 2, scope: !4043, file: !411, line: 98, type: !58)
!4049 = !DILocation(line: 0, scope: !4043)
!4050 = !DILocation(line: 0, scope: !3905, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 100, column: 10, scope: !4043)
!4052 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4051)
!4053 = !DILocation(line: 0, scope: !3913, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4051)
!4055 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4054)
!4056 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4054)
!4057 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4054)
!4058 = !DILocation(line: 100, column: 3, scope: !4043)
!4059 = distinct !DISubprogram(name: "xinmalloc", scope: !411, file: !411, line: 104, type: !4060, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4062)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!55, !181, !181}
!4062 = !{!4063, !4064}
!4063 = !DILocalVariable(name: "n", arg: 1, scope: !4059, file: !411, line: 104, type: !181)
!4064 = !DILocalVariable(name: "s", arg: 2, scope: !4059, file: !411, line: 104, type: !181)
!4065 = !DILocation(line: 0, scope: !4059)
!4066 = !DILocation(line: 0, scope: !4021, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 106, column: 10, scope: !4059)
!4068 = !DILocation(line: 0, scope: !4030, inlinedAt: !4069)
!4069 = distinct !DILocation(line: 91, column: 25, scope: !4021, inlinedAt: !4067)
!4070 = !DILocation(line: 101, column: 13, scope: !4030, inlinedAt: !4069)
!4071 = !DILocation(line: 0, scope: !3913, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 91, column: 10, scope: !4021, inlinedAt: !4067)
!4073 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4072)
!4074 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4072)
!4075 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4072)
!4076 = !DILocation(line: 106, column: 3, scope: !4059)
!4077 = distinct !DISubprogram(name: "x2realloc", scope: !411, file: !411, line: 116, type: !4078, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4080)
!4078 = !DISubroutineType(types: !4079)
!4079 = !{!55, !55, !417}
!4080 = !{!4081, !4082}
!4081 = !DILocalVariable(name: "p", arg: 1, scope: !4077, file: !411, line: 116, type: !55)
!4082 = !DILocalVariable(name: "ps", arg: 2, scope: !4077, file: !411, line: 116, type: !417)
!4083 = !DILocation(line: 0, scope: !4077)
!4084 = !DILocation(line: 0, scope: !414, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 118, column: 10, scope: !4077)
!4086 = !DILocation(line: 178, column: 14, scope: !414, inlinedAt: !4085)
!4087 = !DILocation(line: 180, column: 9, scope: !4088, inlinedAt: !4085)
!4088 = distinct !DILexicalBlock(scope: !414, file: !411, line: 180, column: 7)
!4089 = !DILocation(line: 180, column: 7, scope: !414, inlinedAt: !4085)
!4090 = !DILocation(line: 182, column: 13, scope: !4091, inlinedAt: !4085)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !411, line: 182, column: 11)
!4092 = distinct !DILexicalBlock(scope: !4088, file: !411, line: 181, column: 5)
!4093 = !DILocation(line: 182, column: 11, scope: !4092, inlinedAt: !4085)
!4094 = !DILocation(line: 197, column: 11, scope: !4095, inlinedAt: !4085)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !411, line: 197, column: 11)
!4096 = distinct !DILexicalBlock(scope: !4088, file: !411, line: 195, column: 5)
!4097 = !DILocation(line: 197, column: 11, scope: !4096, inlinedAt: !4085)
!4098 = !DILocation(line: 198, column: 9, scope: !4095, inlinedAt: !4085)
!4099 = !DILocation(line: 0, scope: !3905, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 201, column: 7, scope: !414, inlinedAt: !4085)
!4101 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4100)
!4102 = !DILocation(line: 0, scope: !3913, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4100)
!4104 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4103)
!4105 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4103)
!4106 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4103)
!4107 = !DILocation(line: 202, column: 7, scope: !414, inlinedAt: !4085)
!4108 = !DILocation(line: 118, column: 3, scope: !4077)
!4109 = !DILocation(line: 0, scope: !414)
!4110 = !DILocation(line: 178, column: 14, scope: !414)
!4111 = !DILocation(line: 180, column: 9, scope: !4088)
!4112 = !DILocation(line: 180, column: 7, scope: !414)
!4113 = !DILocation(line: 182, column: 13, scope: !4091)
!4114 = !DILocation(line: 182, column: 11, scope: !4092)
!4115 = !DILocation(line: 190, column: 30, scope: !4116)
!4116 = distinct !DILexicalBlock(scope: !4091, file: !411, line: 183, column: 9)
!4117 = !DILocation(line: 191, column: 16, scope: !4116)
!4118 = !DILocation(line: 191, column: 13, scope: !4116)
!4119 = !DILocation(line: 192, column: 9, scope: !4116)
!4120 = !DILocation(line: 197, column: 11, scope: !4095)
!4121 = !DILocation(line: 197, column: 11, scope: !4096)
!4122 = !DILocation(line: 198, column: 9, scope: !4095)
!4123 = !DILocation(line: 0, scope: !3905, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 201, column: 7, scope: !414)
!4125 = !DILocation(line: 85, column: 25, scope: !3905, inlinedAt: !4124)
!4126 = !DILocation(line: 0, scope: !3913, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 85, column: 10, scope: !3905, inlinedAt: !4124)
!4128 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4127)
!4129 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4127)
!4130 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4127)
!4131 = !DILocation(line: 202, column: 7, scope: !414)
!4132 = !DILocation(line: 203, column: 3, scope: !414)
!4133 = !DILocation(line: 0, scope: !426)
!4134 = !DILocation(line: 230, column: 14, scope: !426)
!4135 = !DILocation(line: 238, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !426, file: !411, line: 238, column: 7)
!4137 = !DILocation(line: 238, column: 7, scope: !426)
!4138 = !DILocation(line: 240, column: 9, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !426, file: !411, line: 240, column: 7)
!4140 = !DILocation(line: 240, column: 18, scope: !4139)
!4141 = !DILocation(line: 253, column: 8, scope: !426)
!4142 = !DILocation(line: 258, column: 27, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !411, line: 257, column: 5)
!4144 = distinct !DILexicalBlock(scope: !426, file: !411, line: 256, column: 7)
!4145 = !DILocation(line: 259, column: 32, scope: !4143)
!4146 = !DILocation(line: 260, column: 5, scope: !4143)
!4147 = !DILocation(line: 262, column: 9, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !426, file: !411, line: 262, column: 7)
!4149 = !DILocation(line: 262, column: 7, scope: !426)
!4150 = !DILocation(line: 263, column: 9, scope: !4148)
!4151 = !DILocation(line: 263, column: 5, scope: !4148)
!4152 = !DILocation(line: 264, column: 9, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !426, file: !411, line: 264, column: 7)
!4154 = !DILocation(line: 264, column: 14, scope: !4153)
!4155 = !DILocation(line: 265, column: 7, scope: !4153)
!4156 = !DILocation(line: 265, column: 11, scope: !4153)
!4157 = !DILocation(line: 266, column: 11, scope: !4153)
!4158 = !DILocation(line: 266, column: 26, scope: !4153)
!4159 = !DILocation(line: 267, column: 14, scope: !4153)
!4160 = !DILocation(line: 264, column: 7, scope: !426)
!4161 = !DILocation(line: 268, column: 5, scope: !4153)
!4162 = !DILocation(line: 0, scope: !3976, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 269, column: 8, scope: !426)
!4164 = !DILocation(line: 0, scope: !3984, inlinedAt: !4165)
!4165 = distinct !DILocation(line: 70, column: 25, scope: !3976, inlinedAt: !4163)
!4166 = !DILocation(line: 2059, column: 24, scope: !3984, inlinedAt: !4165)
!4167 = !DILocation(line: 2059, column: 10, scope: !3984, inlinedAt: !4165)
!4168 = !DILocation(line: 0, scope: !3913, inlinedAt: !4169)
!4169 = distinct !DILocation(line: 70, column: 10, scope: !3976, inlinedAt: !4163)
!4170 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4169)
!4171 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4169)
!4172 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4169)
!4173 = !DILocation(line: 270, column: 7, scope: !426)
!4174 = !DILocation(line: 271, column: 3, scope: !426)
!4175 = distinct !DISubprogram(name: "xzalloc", scope: !411, file: !411, line: 279, type: !3933, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4176)
!4176 = !{!4177}
!4177 = !DILocalVariable(name: "s", arg: 1, scope: !4175, file: !411, line: 279, type: !58)
!4178 = !DILocation(line: 0, scope: !4175)
!4179 = !DILocalVariable(name: "n", arg: 1, scope: !4180, file: !411, line: 294, type: !58)
!4180 = distinct !DISubprogram(name: "xcalloc", scope: !411, file: !411, line: 294, type: !4044, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4181)
!4181 = !{!4179, !4182}
!4182 = !DILocalVariable(name: "s", arg: 2, scope: !4180, file: !411, line: 294, type: !58)
!4183 = !DILocation(line: 0, scope: !4180, inlinedAt: !4184)
!4184 = distinct !DILocation(line: 281, column: 10, scope: !4175)
!4185 = !DILocation(line: 296, column: 25, scope: !4180, inlinedAt: !4184)
!4186 = !DILocation(line: 0, scope: !3913, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 296, column: 10, scope: !4180, inlinedAt: !4184)
!4188 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4187)
!4189 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4187)
!4190 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4187)
!4191 = !DILocation(line: 281, column: 3, scope: !4175)
!4192 = !DILocation(line: 0, scope: !4180)
!4193 = !DILocation(line: 296, column: 25, scope: !4180)
!4194 = !DILocation(line: 0, scope: !3913, inlinedAt: !4195)
!4195 = distinct !DILocation(line: 296, column: 10, scope: !4180)
!4196 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4195)
!4197 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4195)
!4198 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4195)
!4199 = !DILocation(line: 296, column: 3, scope: !4180)
!4200 = distinct !DISubprogram(name: "xizalloc", scope: !411, file: !411, line: 285, type: !1382, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4201)
!4201 = !{!4202}
!4202 = !DILocalVariable(name: "s", arg: 1, scope: !4200, file: !411, line: 285, type: !181)
!4203 = !DILocation(line: 0, scope: !4200)
!4204 = !DILocalVariable(name: "n", arg: 1, scope: !4205, file: !411, line: 300, type: !181)
!4205 = distinct !DISubprogram(name: "xicalloc", scope: !411, file: !411, line: 300, type: !4060, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4206)
!4206 = !{!4204, !4207}
!4207 = !DILocalVariable(name: "s", arg: 2, scope: !4205, file: !411, line: 300, type: !181)
!4208 = !DILocation(line: 0, scope: !4205, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 287, column: 10, scope: !4200)
!4210 = !DILocalVariable(name: "n", arg: 1, scope: !4211, file: !1381, line: 77, type: !181)
!4211 = distinct !DISubprogram(name: "icalloc", scope: !1381, file: !1381, line: 77, type: !4060, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4212)
!4212 = !{!4210, !4213}
!4213 = !DILocalVariable(name: "s", arg: 2, scope: !4211, file: !1381, line: 77, type: !181)
!4214 = !DILocation(line: 0, scope: !4211, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 302, column: 25, scope: !4205, inlinedAt: !4209)
!4216 = !DILocation(line: 91, column: 10, scope: !4211, inlinedAt: !4215)
!4217 = !DILocation(line: 0, scope: !3913, inlinedAt: !4218)
!4218 = distinct !DILocation(line: 302, column: 10, scope: !4205, inlinedAt: !4209)
!4219 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4218)
!4220 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4218)
!4221 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4218)
!4222 = !DILocation(line: 287, column: 3, scope: !4200)
!4223 = !DILocation(line: 0, scope: !4205)
!4224 = !DILocation(line: 0, scope: !4211, inlinedAt: !4225)
!4225 = distinct !DILocation(line: 302, column: 25, scope: !4205)
!4226 = !DILocation(line: 91, column: 10, scope: !4211, inlinedAt: !4225)
!4227 = !DILocation(line: 0, scope: !3913, inlinedAt: !4228)
!4228 = distinct !DILocation(line: 302, column: 10, scope: !4205)
!4229 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4228)
!4230 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4228)
!4231 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4228)
!4232 = !DILocation(line: 302, column: 3, scope: !4205)
!4233 = distinct !DISubprogram(name: "xmemdup", scope: !411, file: !411, line: 310, type: !4234, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4236)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!55, !699, !58}
!4236 = !{!4237, !4238}
!4237 = !DILocalVariable(name: "p", arg: 1, scope: !4233, file: !411, line: 310, type: !699)
!4238 = !DILocalVariable(name: "s", arg: 2, scope: !4233, file: !411, line: 310, type: !58)
!4239 = !DILocation(line: 0, scope: !4233)
!4240 = !DILocation(line: 0, scope: !3932, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 312, column: 18, scope: !4233)
!4242 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4241)
!4243 = !DILocation(line: 0, scope: !3913, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4241)
!4245 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4244)
!4246 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4244)
!4247 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4244)
!4248 = !DILocalVariable(name: "__dest", arg: 1, scope: !4249, file: !883, line: 26, type: !4252)
!4249 = distinct !DISubprogram(name: "memcpy", scope: !883, file: !883, line: 26, type: !4250, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4253)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!55, !4252, !698, !58}
!4252 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!4253 = !{!4248, !4254, !4255}
!4254 = !DILocalVariable(name: "__src", arg: 2, scope: !4249, file: !883, line: 26, type: !698)
!4255 = !DILocalVariable(name: "__len", arg: 3, scope: !4249, file: !883, line: 26, type: !58)
!4256 = !DILocation(line: 0, scope: !4249, inlinedAt: !4257)
!4257 = distinct !DILocation(line: 312, column: 10, scope: !4233)
!4258 = !DILocation(line: 29, column: 10, scope: !4249, inlinedAt: !4257)
!4259 = !DILocation(line: 312, column: 3, scope: !4233)
!4260 = distinct !DISubprogram(name: "ximemdup", scope: !411, file: !411, line: 316, type: !4261, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4263)
!4261 = !DISubroutineType(types: !4262)
!4262 = !{!55, !699, !181}
!4263 = !{!4264, !4265}
!4264 = !DILocalVariable(name: "p", arg: 1, scope: !4260, file: !411, line: 316, type: !699)
!4265 = !DILocalVariable(name: "s", arg: 2, scope: !4260, file: !411, line: 316, type: !181)
!4266 = !DILocation(line: 0, scope: !4260)
!4267 = !DILocation(line: 0, scope: !3945, inlinedAt: !4268)
!4268 = distinct !DILocation(line: 318, column: 18, scope: !4260)
!4269 = !DILocation(line: 0, scope: !3950, inlinedAt: !4270)
!4270 = distinct !DILocation(line: 55, column: 25, scope: !3945, inlinedAt: !4268)
!4271 = !DILocation(line: 57, column: 26, scope: !3950, inlinedAt: !4270)
!4272 = !DILocation(line: 0, scope: !3913, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 55, column: 10, scope: !3945, inlinedAt: !4268)
!4274 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4273)
!4275 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4273)
!4276 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4273)
!4277 = !DILocation(line: 0, scope: !4249, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 318, column: 10, scope: !4260)
!4279 = !DILocation(line: 29, column: 10, scope: !4249, inlinedAt: !4278)
!4280 = !DILocation(line: 318, column: 3, scope: !4260)
!4281 = distinct !DISubprogram(name: "ximemdup0", scope: !411, file: !411, line: 325, type: !4282, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!53, !699, !181}
!4284 = !{!4285, !4286, !4287}
!4285 = !DILocalVariable(name: "p", arg: 1, scope: !4281, file: !411, line: 325, type: !699)
!4286 = !DILocalVariable(name: "s", arg: 2, scope: !4281, file: !411, line: 325, type: !181)
!4287 = !DILocalVariable(name: "result", scope: !4281, file: !411, line: 327, type: !53)
!4288 = !DILocation(line: 0, scope: !4281)
!4289 = !DILocation(line: 327, column: 30, scope: !4281)
!4290 = !DILocation(line: 0, scope: !3945, inlinedAt: !4291)
!4291 = distinct !DILocation(line: 327, column: 18, scope: !4281)
!4292 = !DILocation(line: 0, scope: !3950, inlinedAt: !4293)
!4293 = distinct !DILocation(line: 55, column: 25, scope: !3945, inlinedAt: !4291)
!4294 = !DILocation(line: 57, column: 26, scope: !3950, inlinedAt: !4293)
!4295 = !DILocation(line: 0, scope: !3913, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 55, column: 10, scope: !3945, inlinedAt: !4291)
!4297 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4296)
!4298 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4296)
!4299 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4296)
!4300 = !DILocation(line: 328, column: 3, scope: !4281)
!4301 = !DILocation(line: 328, column: 13, scope: !4281)
!4302 = !DILocation(line: 0, scope: !4249, inlinedAt: !4303)
!4303 = distinct !DILocation(line: 329, column: 10, scope: !4281)
!4304 = !DILocation(line: 29, column: 10, scope: !4249, inlinedAt: !4303)
!4305 = !DILocation(line: 329, column: 3, scope: !4281)
!4306 = distinct !DISubprogram(name: "xstrdup", scope: !411, file: !411, line: 335, type: !693, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !410, retainedNodes: !4307)
!4307 = !{!4308}
!4308 = !DILocalVariable(name: "string", arg: 1, scope: !4306, file: !411, line: 335, type: !61)
!4309 = !DILocation(line: 0, scope: !4306)
!4310 = !DILocation(line: 337, column: 27, scope: !4306)
!4311 = !DILocation(line: 337, column: 43, scope: !4306)
!4312 = !DILocation(line: 0, scope: !4233, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 337, column: 10, scope: !4306)
!4314 = !DILocation(line: 0, scope: !3932, inlinedAt: !4315)
!4315 = distinct !DILocation(line: 312, column: 18, scope: !4233, inlinedAt: !4313)
!4316 = !DILocation(line: 49, column: 25, scope: !3932, inlinedAt: !4315)
!4317 = !DILocation(line: 0, scope: !3913, inlinedAt: !4318)
!4318 = distinct !DILocation(line: 49, column: 10, scope: !3932, inlinedAt: !4315)
!4319 = !DILocation(line: 39, column: 8, scope: !3920, inlinedAt: !4318)
!4320 = !DILocation(line: 39, column: 7, scope: !3913, inlinedAt: !4318)
!4321 = !DILocation(line: 40, column: 5, scope: !3920, inlinedAt: !4318)
!4322 = !DILocation(line: 0, scope: !4249, inlinedAt: !4323)
!4323 = distinct !DILocation(line: 312, column: 10, scope: !4233, inlinedAt: !4313)
!4324 = !DILocation(line: 29, column: 10, scope: !4249, inlinedAt: !4323)
!4325 = !DILocation(line: 337, column: 3, scope: !4306)
!4326 = distinct !DISubprogram(name: "xalloc_die", scope: !442, file: !442, line: 32, type: !243, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !4327)
!4327 = !{!4328}
!4328 = !DILocalVariable(name: "__errstatus", scope: !4329, file: !442, line: 34, type: !4330)
!4329 = distinct !DILexicalBlock(scope: !4326, file: !442, line: 34, column: 3)
!4330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!4331 = !DILocation(line: 34, column: 3, scope: !4329)
!4332 = !DILocation(line: 0, scope: !4329)
!4333 = !DILocation(line: 40, column: 3, scope: !4326)
!4334 = distinct !DISubprogram(name: "xstrtoimax", scope: !4335, file: !4335, line: 71, type: !4336, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4339)
!4335 = !DIFile(filename: "./lib/xstrtol.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7a1112be551b7ea11a9f6293a4923a73")
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!718, !61, !704, !56, !4338, !61}
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!4339 = !{!4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4352, !4353}
!4340 = !DILocalVariable(name: "nptr", arg: 1, scope: !4334, file: !4335, line: 71, type: !61)
!4341 = !DILocalVariable(name: "endptr", arg: 2, scope: !4334, file: !4335, line: 71, type: !704)
!4342 = !DILocalVariable(name: "base", arg: 3, scope: !4334, file: !4335, line: 71, type: !56)
!4343 = !DILocalVariable(name: "val", arg: 4, scope: !4334, file: !4335, line: 72, type: !4338)
!4344 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !4334, file: !4335, line: 72, type: !61)
!4345 = !DILocalVariable(name: "t_ptr", scope: !4334, file: !4335, line: 74, type: !53)
!4346 = !DILocalVariable(name: "p", scope: !4334, file: !4335, line: 75, type: !704)
!4347 = !DILocalVariable(name: "tmp", scope: !4334, file: !4335, line: 91, type: !447)
!4348 = !DILocalVariable(name: "err", scope: !4334, file: !4335, line: 92, type: !718)
!4349 = !DILocalVariable(name: "xbase", scope: !4350, file: !4335, line: 126, type: !56)
!4350 = distinct !DILexicalBlock(scope: !4351, file: !4335, line: 119, column: 5)
!4351 = distinct !DILexicalBlock(scope: !4334, file: !4335, line: 118, column: 7)
!4352 = !DILocalVariable(name: "suffixes", scope: !4350, file: !4335, line: 127, type: !56)
!4353 = !DILocalVariable(name: "overflow", scope: !4350, file: !4335, line: 156, type: !718)
!4354 = !DILocation(line: 0, scope: !4334)
!4355 = !DILocation(line: 74, column: 3, scope: !4334)
!4356 = !DILocation(line: 75, column: 14, scope: !4334)
!4357 = !DILocation(line: 90, column: 3, scope: !4334)
!4358 = !DILocation(line: 90, column: 9, scope: !4334)
!4359 = !DILocation(line: 91, column: 20, scope: !4334)
!4360 = !DILocation(line: 94, column: 7, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4334, file: !4335, line: 94, column: 7)
!4362 = !DILocation(line: 94, column: 10, scope: !4361)
!4363 = !DILocation(line: 94, column: 7, scope: !4334)
!4364 = !DILocation(line: 98, column: 14, scope: !4365)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !4335, line: 98, column: 11)
!4366 = distinct !DILexicalBlock(scope: !4361, file: !4335, line: 95, column: 5)
!4367 = !DILocation(line: 98, column: 29, scope: !4365)
!4368 = !DILocation(line: 98, column: 32, scope: !4365)
!4369 = !DILocation(line: 98, column: 38, scope: !4365)
!4370 = !DILocation(line: 98, column: 41, scope: !4365)
!4371 = !DILocation(line: 98, column: 11, scope: !4366)
!4372 = !DILocation(line: 102, column: 12, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4361, file: !4335, line: 102, column: 12)
!4374 = !DILocation(line: 102, column: 12, scope: !4361)
!4375 = !DILocation(line: 107, column: 5, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4373, file: !4335, line: 103, column: 5)
!4377 = !DILocation(line: 112, column: 8, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4334, file: !4335, line: 112, column: 7)
!4379 = !DILocation(line: 112, column: 7, scope: !4334)
!4380 = !DILocation(line: 114, column: 12, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !4335, line: 113, column: 5)
!4382 = !DILocation(line: 115, column: 7, scope: !4381)
!4383 = !DILocation(line: 118, column: 7, scope: !4351)
!4384 = !DILocation(line: 118, column: 11, scope: !4351)
!4385 = !DILocation(line: 118, column: 7, scope: !4334)
!4386 = !DILocation(line: 120, column: 12, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4350, file: !4335, line: 120, column: 11)
!4388 = !DILocation(line: 120, column: 11, scope: !4350)
!4389 = !DILocation(line: 122, column: 16, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4387, file: !4335, line: 121, column: 9)
!4391 = !DILocation(line: 123, column: 22, scope: !4390)
!4392 = !DILocation(line: 123, column: 11, scope: !4390)
!4393 = !DILocation(line: 0, scope: !4350)
!4394 = !DILocation(line: 128, column: 7, scope: !4350)
!4395 = !DILocation(line: 140, column: 15, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !4335, line: 140, column: 15)
!4397 = distinct !DILexicalBlock(scope: !4350, file: !4335, line: 129, column: 9)
!4398 = !DILocation(line: 140, column: 15, scope: !4397)
!4399 = !DILocation(line: 141, column: 21, scope: !4396)
!4400 = !DILocation(line: 141, column: 13, scope: !4396)
!4401 = !DILocation(line: 144, column: 21, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !4335, line: 144, column: 21)
!4403 = distinct !DILexicalBlock(scope: !4396, file: !4335, line: 142, column: 15)
!4404 = !DILocation(line: 144, column: 29, scope: !4402)
!4405 = !DILocation(line: 144, column: 21, scope: !4403)
!4406 = !DILocation(line: 152, column: 17, scope: !4403)
!4407 = !DILocation(line: 157, column: 7, scope: !4350)
!4408 = !DILocalVariable(name: "err", scope: !4409, file: !4335, line: 64, type: !718)
!4409 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !4335, file: !4335, line: 62, type: !4410, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4412)
!4410 = !DISubroutineType(types: !4411)
!4411 = !{!718, !4338, !56, !56}
!4412 = !{!4413, !4414, !4415, !4408}
!4413 = !DILocalVariable(name: "x", arg: 1, scope: !4409, file: !4335, line: 62, type: !4338)
!4414 = !DILocalVariable(name: "base", arg: 2, scope: !4409, file: !4335, line: 62, type: !56)
!4415 = !DILocalVariable(name: "power", arg: 3, scope: !4409, file: !4335, line: 62, type: !56)
!4416 = !DILocation(line: 0, scope: !4409, inlinedAt: !4417)
!4417 = distinct !DILocation(line: 219, column: 22, scope: !4418)
!4418 = distinct !DILexicalBlock(scope: !4350, file: !4335, line: 158, column: 9)
!4419 = !DILocalVariable(name: "x", arg: 1, scope: !4420, file: !4335, line: 47, type: !4338)
!4420 = distinct !DISubprogram(name: "bkm_scale", scope: !4335, file: !4335, line: 47, type: !4421, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !443, retainedNodes: !4423)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!718, !4338, !56}
!4423 = !{!4419, !4424, !4425}
!4424 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !4420, file: !4335, line: 47, type: !56)
!4425 = !DILocalVariable(name: "scaled", scope: !4420, file: !4335, line: 49, type: !447)
!4426 = !DILocation(line: 0, scope: !4420, inlinedAt: !4427)
!4427 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4417)
!4428 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4427)
!4429 = distinct !DILexicalBlock(scope: !4420, file: !4335, line: 50, column: 7)
!4430 = !DILocation(line: 0, scope: !4409, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 215, column: 22, scope: !4418)
!4432 = !DILocation(line: 0, scope: !4420, inlinedAt: !4433)
!4433 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4431)
!4434 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4433)
!4435 = !DILocation(line: 0, scope: !4409, inlinedAt: !4436)
!4436 = distinct !DILocation(line: 202, column: 22, scope: !4418)
!4437 = !DILocation(line: 0, scope: !4420, inlinedAt: !4438)
!4438 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4436)
!4439 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4438)
!4440 = !DILocation(line: 0, scope: !4409, inlinedAt: !4441)
!4441 = distinct !DILocation(line: 198, column: 22, scope: !4418)
!4442 = !DILocation(line: 0, scope: !4420, inlinedAt: !4443)
!4443 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4441)
!4444 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4443)
!4445 = !DILocation(line: 0, scope: !4409, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 194, column: 22, scope: !4418)
!4447 = !DILocation(line: 0, scope: !4420, inlinedAt: !4448)
!4448 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4446)
!4449 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4448)
!4450 = !DILocation(line: 0, scope: !4409, inlinedAt: !4451)
!4451 = distinct !DILocation(line: 175, column: 22, scope: !4418)
!4452 = !DILocation(line: 0, scope: !4420, inlinedAt: !4453)
!4453 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4451)
!4454 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4453)
!4455 = !DILocation(line: 0, scope: !4420, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 160, column: 22, scope: !4418)
!4457 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4456)
!4458 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4456)
!4459 = !DILocation(line: 0, scope: !4420, inlinedAt: !4460)
!4460 = distinct !DILocation(line: 167, column: 22, scope: !4418)
!4461 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4460)
!4462 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4460)
!4463 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4451)
!4464 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4453)
!4465 = !DILocation(line: 227, column: 11, scope: !4350)
!4466 = !DILocation(line: 0, scope: !4409, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 180, column: 22, scope: !4418)
!4468 = !DILocation(line: 0, scope: !4420, inlinedAt: !4469)
!4469 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4467)
!4470 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4469)
!4471 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4469)
!4472 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4467)
!4473 = !DILocation(line: 0, scope: !4409, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 185, column: 22, scope: !4418)
!4475 = !DILocation(line: 0, scope: !4420, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4474)
!4477 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4476)
!4478 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4476)
!4479 = !DILocation(line: 0, scope: !4409, inlinedAt: !4480)
!4480 = distinct !DILocation(line: 190, column: 22, scope: !4418)
!4481 = !DILocation(line: 0, scope: !4420, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4480)
!4483 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4482)
!4484 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4482)
!4485 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4480)
!4486 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4446)
!4487 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4448)
!4488 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4441)
!4489 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4443)
!4490 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4436)
!4491 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4438)
!4492 = !DILocation(line: 0, scope: !4409, inlinedAt: !4493)
!4493 = distinct !DILocation(line: 207, column: 22, scope: !4418)
!4494 = !DILocation(line: 0, scope: !4420, inlinedAt: !4495)
!4495 = distinct !DILocation(line: 66, column: 12, scope: !4409, inlinedAt: !4493)
!4496 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4495)
!4497 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4495)
!4498 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4493)
!4499 = !DILocation(line: 0, scope: !4420, inlinedAt: !4500)
!4500 = distinct !DILocation(line: 211, column: 22, scope: !4418)
!4501 = !DILocation(line: 50, column: 7, scope: !4429, inlinedAt: !4500)
!4502 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4500)
!4503 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4431)
!4504 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4433)
!4505 = !DILocation(line: 66, column: 9, scope: !4409, inlinedAt: !4417)
!4506 = !DILocation(line: 50, column: 7, scope: !4420, inlinedAt: !4427)
!4507 = !DILocation(line: 0, scope: !4418)
!4508 = !DILocation(line: 228, column: 10, scope: !4350)
!4509 = !DILocation(line: 229, column: 11, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4350, file: !4335, line: 229, column: 11)
!4511 = !DILocation(line: 229, column: 11, scope: !4350)
!4512 = !DILocation(line: 223, column: 16, scope: !4418)
!4513 = !DILocation(line: 224, column: 22, scope: !4418)
!4514 = !DILocation(line: 100, column: 11, scope: !4366)
!4515 = !DILocation(line: 92, column: 16, scope: !4334)
!4516 = !DILocation(line: 233, column: 8, scope: !4334)
!4517 = !DILocation(line: 234, column: 3, scope: !4334)
!4518 = !DILocation(line: 235, column: 1, scope: !4334)
!4519 = !DISubprogram(name: "strtoimax", scope: !4520, file: !4520, line: 297, type: !4521, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4520 = !DIFile(filename: "/usr/include/inttypes.h", directory: "", checksumkind: CSK_MD5, checksum: "e498a0d76716f3e3909f4b6f2cb2f20f")
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!447, !180, !4523, !56}
!4523 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !704)
!4524 = distinct !DISubprogram(name: "rpl_fopen", scope: !451, file: !451, line: 46, type: !4525, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !4561)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!4527, !61, !61}
!4527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4529)
!4529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4530)
!4530 = !{!4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560}
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4529, file: !95, line: 51, baseType: !56, size: 32)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4529, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4529, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4529, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4529, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4529, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4529, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4529, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4529, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4529, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4529, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4529, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4529, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4529, file: !95, line: 70, baseType: !4545, size: 64, offset: 832)
!4545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4529, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4529, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4529, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4529, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4529, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4529, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4529, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4529, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4529, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4529, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4529, file: !95, line: 93, baseType: !4545, size: 64, offset: 1344)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4529, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4529, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4529, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4529, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!4561 = !{!4562, !4563, !4564, !4565, !4566, !4567, !4571, !4573, !4574, !4579, !4582, !4583}
!4562 = !DILocalVariable(name: "filename", arg: 1, scope: !4524, file: !451, line: 46, type: !61)
!4563 = !DILocalVariable(name: "mode", arg: 2, scope: !4524, file: !451, line: 46, type: !61)
!4564 = !DILocalVariable(name: "open_direction", scope: !4524, file: !451, line: 54, type: !56)
!4565 = !DILocalVariable(name: "open_flags", scope: !4524, file: !451, line: 55, type: !56)
!4566 = !DILocalVariable(name: "open_flags_gnu", scope: !4524, file: !451, line: 57, type: !78)
!4567 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4524, file: !451, line: 59, type: !4568)
!4568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 648, elements: !4569)
!4569 = !{!4570}
!4570 = !DISubrange(count: 81)
!4571 = !DILocalVariable(name: "p", scope: !4572, file: !451, line: 62, type: !61)
!4572 = distinct !DILexicalBlock(scope: !4524, file: !451, line: 61, column: 3)
!4573 = !DILocalVariable(name: "q", scope: !4572, file: !451, line: 64, type: !53)
!4574 = !DILocalVariable(name: "len", scope: !4575, file: !451, line: 128, type: !58)
!4575 = distinct !DILexicalBlock(scope: !4576, file: !451, line: 127, column: 9)
!4576 = distinct !DILexicalBlock(scope: !4577, file: !451, line: 68, column: 7)
!4577 = distinct !DILexicalBlock(scope: !4578, file: !451, line: 67, column: 5)
!4578 = distinct !DILexicalBlock(scope: !4572, file: !451, line: 67, column: 5)
!4579 = !DILocalVariable(name: "fd", scope: !4580, file: !451, line: 199, type: !56)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !451, line: 198, column: 5)
!4581 = distinct !DILexicalBlock(scope: !4524, file: !451, line: 197, column: 7)
!4582 = !DILocalVariable(name: "fp", scope: !4580, file: !451, line: 204, type: !4527)
!4583 = !DILocalVariable(name: "saved_errno", scope: !4584, file: !451, line: 207, type: !56)
!4584 = distinct !DILexicalBlock(scope: !4585, file: !451, line: 206, column: 9)
!4585 = distinct !DILexicalBlock(scope: !4580, file: !451, line: 205, column: 11)
!4586 = !DILocation(line: 0, scope: !4524)
!4587 = !DILocation(line: 59, column: 3, scope: !4524)
!4588 = !DILocation(line: 59, column: 8, scope: !4524)
!4589 = !DILocation(line: 0, scope: !4572)
!4590 = !DILocation(line: 67, column: 5, scope: !4572)
!4591 = !DILocation(line: 64, column: 11, scope: !4572)
!4592 = !DILocation(line: 54, column: 7, scope: !4524)
!4593 = !DILocation(line: 67, column: 12, scope: !4577)
!4594 = !DILocation(line: 67, column: 5, scope: !4578)
!4595 = !DILocation(line: 74, column: 19, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4597, file: !451, line: 74, column: 17)
!4597 = distinct !DILexicalBlock(scope: !4576, file: !451, line: 70, column: 11)
!4598 = !DILocation(line: 74, column: 17, scope: !4597)
!4599 = !DILocation(line: 75, column: 17, scope: !4596)
!4600 = !DILocation(line: 75, column: 20, scope: !4596)
!4601 = !DILocation(line: 75, column: 15, scope: !4596)
!4602 = !DILocation(line: 80, column: 24, scope: !4597)
!4603 = !DILocation(line: 82, column: 19, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !451, line: 82, column: 17)
!4605 = !DILocation(line: 82, column: 17, scope: !4597)
!4606 = !DILocation(line: 83, column: 17, scope: !4604)
!4607 = !DILocation(line: 83, column: 20, scope: !4604)
!4608 = !DILocation(line: 83, column: 15, scope: !4604)
!4609 = !DILocation(line: 88, column: 24, scope: !4597)
!4610 = !DILocation(line: 90, column: 19, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4597, file: !451, line: 90, column: 17)
!4612 = !DILocation(line: 90, column: 17, scope: !4597)
!4613 = !DILocation(line: 91, column: 17, scope: !4611)
!4614 = !DILocation(line: 91, column: 20, scope: !4611)
!4615 = !DILocation(line: 91, column: 15, scope: !4611)
!4616 = !DILocation(line: 100, column: 19, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4597, file: !451, line: 100, column: 17)
!4618 = !DILocation(line: 100, column: 17, scope: !4597)
!4619 = !DILocation(line: 101, column: 17, scope: !4617)
!4620 = !DILocation(line: 101, column: 20, scope: !4617)
!4621 = !DILocation(line: 101, column: 15, scope: !4617)
!4622 = !DILocation(line: 107, column: 19, scope: !4623)
!4623 = distinct !DILexicalBlock(scope: !4597, file: !451, line: 107, column: 17)
!4624 = !DILocation(line: 107, column: 17, scope: !4597)
!4625 = !DILocation(line: 108, column: 17, scope: !4623)
!4626 = !DILocation(line: 108, column: 20, scope: !4623)
!4627 = !DILocation(line: 108, column: 15, scope: !4623)
!4628 = !DILocation(line: 113, column: 24, scope: !4597)
!4629 = !DILocation(line: 115, column: 13, scope: !4597)
!4630 = !DILocation(line: 117, column: 24, scope: !4597)
!4631 = !DILocation(line: 119, column: 13, scope: !4597)
!4632 = !DILocation(line: 128, column: 24, scope: !4575)
!4633 = !DILocation(line: 0, scope: !4575)
!4634 = !DILocation(line: 129, column: 48, scope: !4635)
!4635 = distinct !DILexicalBlock(scope: !4575, file: !451, line: 129, column: 15)
!4636 = !DILocation(line: 129, column: 19, scope: !4635)
!4637 = !DILocation(line: 129, column: 15, scope: !4575)
!4638 = !DILocalVariable(name: "__dest", arg: 1, scope: !4639, file: !883, line: 26, type: !4252)
!4639 = distinct !DISubprogram(name: "memcpy", scope: !883, file: !883, line: 26, type: !4250, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !4640)
!4640 = !{!4638, !4641, !4642}
!4641 = !DILocalVariable(name: "__src", arg: 2, scope: !4639, file: !883, line: 26, type: !698)
!4642 = !DILocalVariable(name: "__len", arg: 3, scope: !4639, file: !883, line: 26, type: !58)
!4643 = !DILocation(line: 0, scope: !4639, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 131, column: 11, scope: !4575)
!4645 = !DILocation(line: 29, column: 10, scope: !4639, inlinedAt: !4644)
!4646 = !DILocation(line: 132, column: 13, scope: !4575)
!4647 = !DILocation(line: 135, column: 9, scope: !4576)
!4648 = !DILocation(line: 67, column: 25, scope: !4577)
!4649 = !DILocation(line: 67, column: 5, scope: !4577)
!4650 = distinct !{!4650, !4594, !4651, !549}
!4651 = !DILocation(line: 136, column: 7, scope: !4578)
!4652 = !DILocation(line: 138, column: 8, scope: !4572)
!4653 = !DILocation(line: 197, column: 7, scope: !4524)
!4654 = !DILocation(line: 199, column: 47, scope: !4580)
!4655 = !DILocation(line: 199, column: 16, scope: !4580)
!4656 = !DILocation(line: 0, scope: !4580)
!4657 = !DILocation(line: 201, column: 14, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4580, file: !451, line: 201, column: 11)
!4659 = !DILocation(line: 201, column: 11, scope: !4580)
!4660 = !DILocation(line: 204, column: 18, scope: !4580)
!4661 = !DILocation(line: 205, column: 14, scope: !4585)
!4662 = !DILocation(line: 205, column: 11, scope: !4580)
!4663 = !DILocation(line: 207, column: 29, scope: !4584)
!4664 = !DILocation(line: 0, scope: !4584)
!4665 = !DILocation(line: 208, column: 11, scope: !4584)
!4666 = !DILocation(line: 209, column: 17, scope: !4584)
!4667 = !DILocation(line: 210, column: 9, scope: !4584)
!4668 = !DILocalVariable(name: "filename", arg: 1, scope: !4669, file: !451, line: 30, type: !61)
!4669 = distinct !DISubprogram(name: "orig_fopen", scope: !451, file: !451, line: 30, type: !4525, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !450, retainedNodes: !4670)
!4670 = !{!4668, !4671}
!4671 = !DILocalVariable(name: "mode", arg: 2, scope: !4669, file: !451, line: 30, type: !61)
!4672 = !DILocation(line: 0, scope: !4669, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 219, column: 10, scope: !4524)
!4674 = !DILocation(line: 32, column: 10, scope: !4669, inlinedAt: !4673)
!4675 = !DILocation(line: 219, column: 3, scope: !4524)
!4676 = !DILocation(line: 220, column: 1, scope: !4524)
!4677 = !DISubprogram(name: "open", scope: !1977, file: !1977, line: 181, type: !4678, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!56, !61, !56, null}
!4680 = !DISubprogram(name: "fdopen", scope: !216, file: !216, line: 293, type: !4681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{!4527, !56, !61}
!4683 = !DISubprogram(name: "close", scope: !2181, file: !2181, line: 358, type: !869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4684 = distinct !DISubprogram(name: "close_stream", scope: !453, file: !453, line: 55, type: !4685, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !4721)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!56, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !93, line: 7, baseType: !4689)
!4689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !95, line: 49, size: 1728, elements: !4690)
!4690 = !{!4691, !4692, !4693, !4694, !4695, !4696, !4697, !4698, !4699, !4700, !4701, !4702, !4703, !4704, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720}
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4689, file: !95, line: 51, baseType: !56, size: 32)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4689, file: !95, line: 54, baseType: !53, size: 64, offset: 64)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4689, file: !95, line: 55, baseType: !53, size: 64, offset: 128)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4689, file: !95, line: 56, baseType: !53, size: 64, offset: 192)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4689, file: !95, line: 57, baseType: !53, size: 64, offset: 256)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4689, file: !95, line: 58, baseType: !53, size: 64, offset: 320)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4689, file: !95, line: 59, baseType: !53, size: 64, offset: 384)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4689, file: !95, line: 60, baseType: !53, size: 64, offset: 448)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4689, file: !95, line: 61, baseType: !53, size: 64, offset: 512)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4689, file: !95, line: 64, baseType: !53, size: 64, offset: 576)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4689, file: !95, line: 65, baseType: !53, size: 64, offset: 640)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4689, file: !95, line: 66, baseType: !53, size: 64, offset: 704)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4689, file: !95, line: 68, baseType: !110, size: 64, offset: 768)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4689, file: !95, line: 70, baseType: !4705, size: 64, offset: 832)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4689, size: 64)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4689, file: !95, line: 72, baseType: !56, size: 32, offset: 896)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4689, file: !95, line: 73, baseType: !56, size: 32, offset: 928)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4689, file: !95, line: 74, baseType: !117, size: 64, offset: 960)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4689, file: !95, line: 77, baseType: !57, size: 16, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4689, file: !95, line: 78, baseType: !122, size: 8, offset: 1040)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4689, file: !95, line: 79, baseType: !124, size: 8, offset: 1048)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4689, file: !95, line: 81, baseType: !128, size: 64, offset: 1088)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4689, file: !95, line: 89, baseType: !131, size: 64, offset: 1152)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4689, file: !95, line: 91, baseType: !133, size: 64, offset: 1216)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4689, file: !95, line: 92, baseType: !136, size: 64, offset: 1280)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4689, file: !95, line: 93, baseType: !4705, size: 64, offset: 1344)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4689, file: !95, line: 94, baseType: !55, size: 64, offset: 1408)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4689, file: !95, line: 95, baseType: !58, size: 64, offset: 1472)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4689, file: !95, line: 96, baseType: !56, size: 32, offset: 1536)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4689, file: !95, line: 98, baseType: !143, size: 160, offset: 1568)
!4721 = !{!4722, !4723, !4725, !4726}
!4722 = !DILocalVariable(name: "stream", arg: 1, scope: !4684, file: !453, line: 55, type: !4687)
!4723 = !DILocalVariable(name: "some_pending", scope: !4684, file: !453, line: 57, type: !4724)
!4724 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!4725 = !DILocalVariable(name: "prev_fail", scope: !4684, file: !453, line: 58, type: !4724)
!4726 = !DILocalVariable(name: "fclose_fail", scope: !4684, file: !453, line: 59, type: !4724)
!4727 = !DILocation(line: 0, scope: !4684)
!4728 = !DILocation(line: 57, column: 30, scope: !4684)
!4729 = !DILocalVariable(name: "__stream", arg: 1, scope: !4730, file: !901, line: 135, type: !4687)
!4730 = distinct !DISubprogram(name: "ferror_unlocked", scope: !901, file: !901, line: 135, type: !4685, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !452, retainedNodes: !4731)
!4731 = !{!4729}
!4732 = !DILocation(line: 0, scope: !4730, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 58, column: 27, scope: !4684)
!4734 = !DILocation(line: 137, column: 10, scope: !4730, inlinedAt: !4733)
!4735 = !DILocation(line: 58, column: 43, scope: !4684)
!4736 = !DILocation(line: 59, column: 29, scope: !4684)
!4737 = !DILocation(line: 59, column: 45, scope: !4684)
!4738 = !DILocation(line: 69, column: 17, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4684, file: !453, line: 69, column: 7)
!4740 = !DILocation(line: 57, column: 50, scope: !4684)
!4741 = !DILocation(line: 69, column: 33, scope: !4739)
!4742 = !DILocation(line: 69, column: 53, scope: !4739)
!4743 = !DILocation(line: 69, column: 59, scope: !4739)
!4744 = !DILocation(line: 69, column: 7, scope: !4684)
!4745 = !DILocation(line: 71, column: 11, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4739, file: !453, line: 70, column: 5)
!4747 = !DILocation(line: 72, column: 9, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4746, file: !453, line: 71, column: 11)
!4749 = !DILocation(line: 72, column: 15, scope: !4748)
!4750 = !DILocation(line: 77, column: 1, scope: !4684)
!4751 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !377, file: !377, line: 100, type: !4752, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !4755)
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!58, !2442, !61, !58, !4754}
!4754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!4755 = !{!4756, !4757, !4758, !4759, !4760}
!4756 = !DILocalVariable(name: "pwc", arg: 1, scope: !4751, file: !377, line: 100, type: !2442)
!4757 = !DILocalVariable(name: "s", arg: 2, scope: !4751, file: !377, line: 100, type: !61)
!4758 = !DILocalVariable(name: "n", arg: 3, scope: !4751, file: !377, line: 100, type: !58)
!4759 = !DILocalVariable(name: "ps", arg: 4, scope: !4751, file: !377, line: 100, type: !4754)
!4760 = !DILocalVariable(name: "ret", scope: !4751, file: !377, line: 130, type: !58)
!4761 = !DILocation(line: 0, scope: !4751)
!4762 = !DILocation(line: 105, column: 9, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4751, file: !377, line: 105, column: 7)
!4764 = !DILocation(line: 105, column: 7, scope: !4751)
!4765 = !DILocation(line: 117, column: 10, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4751, file: !377, line: 117, column: 7)
!4767 = !DILocation(line: 117, column: 7, scope: !4751)
!4768 = !DILocation(line: 130, column: 16, scope: !4751)
!4769 = !DILocation(line: 135, column: 11, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4751, file: !377, line: 135, column: 7)
!4771 = !DILocation(line: 135, column: 25, scope: !4770)
!4772 = !DILocation(line: 135, column: 30, scope: !4770)
!4773 = !DILocation(line: 135, column: 7, scope: !4751)
!4774 = !DILocalVariable(name: "ps", arg: 1, scope: !4775, file: !2416, line: 1135, type: !4754)
!4775 = distinct !DISubprogram(name: "mbszero", scope: !2416, file: !2416, line: 1135, type: !4776, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !4778)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{null, !4754}
!4778 = !{!4774}
!4779 = !DILocation(line: 0, scope: !4775, inlinedAt: !4780)
!4780 = distinct !DILocation(line: 137, column: 5, scope: !4770)
!4781 = !DILocalVariable(name: "__dest", arg: 1, scope: !4782, file: !883, line: 57, type: !55)
!4782 = distinct !DISubprogram(name: "memset", scope: !883, file: !883, line: 57, type: !2425, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !376, retainedNodes: !4783)
!4783 = !{!4781, !4784, !4785}
!4784 = !DILocalVariable(name: "__ch", arg: 2, scope: !4782, file: !883, line: 57, type: !56)
!4785 = !DILocalVariable(name: "__len", arg: 3, scope: !4782, file: !883, line: 57, type: !58)
!4786 = !DILocation(line: 0, scope: !4782, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 1137, column: 3, scope: !4775, inlinedAt: !4780)
!4788 = !DILocation(line: 59, column: 10, scope: !4782, inlinedAt: !4787)
!4789 = !DILocation(line: 137, column: 5, scope: !4770)
!4790 = !DILocation(line: 138, column: 11, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4751, file: !377, line: 138, column: 7)
!4792 = !DILocation(line: 138, column: 7, scope: !4751)
!4793 = !DILocation(line: 139, column: 5, scope: !4791)
!4794 = !DILocation(line: 143, column: 26, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4751, file: !377, line: 143, column: 7)
!4796 = !DILocation(line: 143, column: 41, scope: !4795)
!4797 = !DILocation(line: 143, column: 7, scope: !4751)
!4798 = !DILocation(line: 145, column: 15, scope: !4799)
!4799 = distinct !DILexicalBlock(scope: !4800, file: !377, line: 145, column: 11)
!4800 = distinct !DILexicalBlock(scope: !4795, file: !377, line: 144, column: 5)
!4801 = !DILocation(line: 145, column: 11, scope: !4800)
!4802 = !DILocation(line: 146, column: 32, scope: !4799)
!4803 = !DILocation(line: 146, column: 16, scope: !4799)
!4804 = !DILocation(line: 146, column: 14, scope: !4799)
!4805 = !DILocation(line: 146, column: 9, scope: !4799)
!4806 = !DILocation(line: 286, column: 1, scope: !4751)
!4807 = !DISubprogram(name: "mbsinit", scope: !4808, file: !4808, line: 293, type: !4809, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !495)
!4808 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!56, !4811}
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!4813 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !455, file: !455, line: 27, type: !3897, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4814)
!4814 = !{!4815, !4816, !4817, !4818}
!4815 = !DILocalVariable(name: "ptr", arg: 1, scope: !4813, file: !455, line: 27, type: !55)
!4816 = !DILocalVariable(name: "nmemb", arg: 2, scope: !4813, file: !455, line: 27, type: !58)
!4817 = !DILocalVariable(name: "size", arg: 3, scope: !4813, file: !455, line: 27, type: !58)
!4818 = !DILocalVariable(name: "nbytes", scope: !4813, file: !455, line: 29, type: !58)
!4819 = !DILocation(line: 0, scope: !4813)
!4820 = !DILocation(line: 30, column: 7, scope: !4821)
!4821 = distinct !DILexicalBlock(scope: !4813, file: !455, line: 30, column: 7)
!4822 = !DILocalVariable(name: "ptr", arg: 1, scope: !4823, file: !3985, line: 2057, type: !55)
!4823 = distinct !DISubprogram(name: "rpl_realloc", scope: !3985, file: !3985, line: 2057, type: !3977, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !454, retainedNodes: !4824)
!4824 = !{!4822, !4825}
!4825 = !DILocalVariable(name: "size", arg: 2, scope: !4823, file: !3985, line: 2057, type: !58)
!4826 = !DILocation(line: 0, scope: !4823, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 37, column: 10, scope: !4813)
!4828 = !DILocation(line: 2059, column: 24, scope: !4823, inlinedAt: !4827)
!4829 = !DILocation(line: 2059, column: 10, scope: !4823, inlinedAt: !4827)
!4830 = !DILocation(line: 37, column: 3, scope: !4813)
!4831 = !DILocation(line: 32, column: 7, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4821, file: !455, line: 31, column: 5)
!4833 = !DILocation(line: 32, column: 13, scope: !4832)
!4834 = !DILocation(line: 33, column: 7, scope: !4832)
!4835 = !DILocation(line: 38, column: 1, scope: !4813)
!4836 = distinct !DISubprogram(name: "hard_locale", scope: !458, file: !458, line: 28, type: !4837, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!78, !56}
!4839 = !{!4840, !4841}
!4840 = !DILocalVariable(name: "category", arg: 1, scope: !4836, file: !458, line: 28, type: !56)
!4841 = !DILocalVariable(name: "locale", scope: !4836, file: !458, line: 30, type: !4842)
!4842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !54, size: 2056, elements: !4843)
!4843 = !{!4844}
!4844 = !DISubrange(count: 257)
!4845 = !DILocation(line: 0, scope: !4836)
!4846 = !DILocation(line: 30, column: 3, scope: !4836)
!4847 = !DILocation(line: 30, column: 8, scope: !4836)
!4848 = !DILocation(line: 32, column: 7, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4836, file: !458, line: 32, column: 7)
!4850 = !DILocation(line: 32, column: 7, scope: !4836)
!4851 = !DILocalVariable(name: "__s1", arg: 1, scope: !4852, file: !533, line: 1359, type: !61)
!4852 = distinct !DISubprogram(name: "streq", scope: !533, file: !533, line: 1359, type: !534, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !457, retainedNodes: !4853)
!4853 = !{!4851, !4854}
!4854 = !DILocalVariable(name: "__s2", arg: 2, scope: !4852, file: !533, line: 1359, type: !61)
!4855 = !DILocation(line: 0, scope: !4852, inlinedAt: !4856)
!4856 = distinct !DILocation(line: 35, column: 9, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4836, file: !458, line: 35, column: 7)
!4858 = !DILocation(line: 1361, column: 11, scope: !4852, inlinedAt: !4856)
!4859 = !DILocation(line: 1361, column: 10, scope: !4852, inlinedAt: !4856)
!4860 = !DILocation(line: 35, column: 29, scope: !4857)
!4861 = !DILocation(line: 0, scope: !4852, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 35, column: 32, scope: !4857)
!4863 = !DILocation(line: 1361, column: 11, scope: !4852, inlinedAt: !4862)
!4864 = !DILocation(line: 1361, column: 10, scope: !4852, inlinedAt: !4862)
!4865 = !DILocation(line: 35, column: 7, scope: !4836)
!4866 = !DILocation(line: 46, column: 3, scope: !4836)
!4867 = !DILocation(line: 47, column: 1, scope: !4836)
!4868 = distinct !DISubprogram(name: "setlocale_null_r", scope: !460, file: !460, line: 154, type: !4869, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !4871)
!4869 = !DISubroutineType(types: !4870)
!4870 = !{!56, !56, !53, !58}
!4871 = !{!4872, !4873, !4874}
!4872 = !DILocalVariable(name: "category", arg: 1, scope: !4868, file: !460, line: 154, type: !56)
!4873 = !DILocalVariable(name: "buf", arg: 2, scope: !4868, file: !460, line: 154, type: !53)
!4874 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4868, file: !460, line: 154, type: !58)
!4875 = !DILocation(line: 0, scope: !4868)
!4876 = !DILocation(line: 159, column: 10, scope: !4868)
!4877 = !DILocation(line: 159, column: 3, scope: !4868)
!4878 = distinct !DISubprogram(name: "setlocale_null", scope: !460, file: !460, line: 186, type: !4879, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !459, retainedNodes: !4881)
!4879 = !DISubroutineType(types: !4880)
!4880 = !{!61, !56}
!4881 = !{!4882}
!4882 = !DILocalVariable(name: "category", arg: 1, scope: !4878, file: !460, line: 186, type: !56)
!4883 = !DILocation(line: 0, scope: !4878)
!4884 = !DILocation(line: 189, column: 10, scope: !4878)
!4885 = !DILocation(line: 189, column: 3, scope: !4878)
!4886 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !462, file: !462, line: 35, type: !4879, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !4887)
!4887 = !{!4888, !4889}
!4888 = !DILocalVariable(name: "category", arg: 1, scope: !4886, file: !462, line: 35, type: !56)
!4889 = !DILocalVariable(name: "result", scope: !4886, file: !462, line: 37, type: !61)
!4890 = !DILocation(line: 0, scope: !4886)
!4891 = !DILocation(line: 37, column: 24, scope: !4886)
!4892 = !DILocation(line: 62, column: 3, scope: !4886)
!4893 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !462, file: !462, line: 66, type: !4869, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !4894)
!4894 = !{!4895, !4896, !4897, !4898, !4899}
!4895 = !DILocalVariable(name: "category", arg: 1, scope: !4893, file: !462, line: 66, type: !56)
!4896 = !DILocalVariable(name: "buf", arg: 2, scope: !4893, file: !462, line: 66, type: !53)
!4897 = !DILocalVariable(name: "bufsize", arg: 3, scope: !4893, file: !462, line: 66, type: !58)
!4898 = !DILocalVariable(name: "result", scope: !4893, file: !462, line: 111, type: !61)
!4899 = !DILocalVariable(name: "length", scope: !4900, file: !462, line: 125, type: !58)
!4900 = distinct !DILexicalBlock(scope: !4901, file: !462, line: 124, column: 5)
!4901 = distinct !DILexicalBlock(scope: !4893, file: !462, line: 113, column: 7)
!4902 = !DILocation(line: 0, scope: !4893)
!4903 = !DILocation(line: 0, scope: !4886, inlinedAt: !4904)
!4904 = distinct !DILocation(line: 111, column: 24, scope: !4893)
!4905 = !DILocation(line: 37, column: 24, scope: !4886, inlinedAt: !4904)
!4906 = !DILocation(line: 113, column: 14, scope: !4901)
!4907 = !DILocation(line: 113, column: 7, scope: !4893)
!4908 = !DILocation(line: 116, column: 19, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4910, file: !462, line: 116, column: 11)
!4910 = distinct !DILexicalBlock(scope: !4901, file: !462, line: 114, column: 5)
!4911 = !DILocation(line: 116, column: 11, scope: !4910)
!4912 = !DILocation(line: 120, column: 16, scope: !4909)
!4913 = !DILocation(line: 120, column: 9, scope: !4909)
!4914 = !DILocation(line: 125, column: 23, scope: !4900)
!4915 = !DILocation(line: 0, scope: !4900)
!4916 = !DILocation(line: 126, column: 18, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4900, file: !462, line: 126, column: 11)
!4918 = !DILocation(line: 126, column: 11, scope: !4900)
!4919 = !DILocation(line: 128, column: 39, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !462, line: 127, column: 9)
!4921 = !DILocalVariable(name: "__dest", arg: 1, scope: !4922, file: !883, line: 26, type: !4252)
!4922 = distinct !DISubprogram(name: "memcpy", scope: !883, file: !883, line: 26, type: !4250, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !461, retainedNodes: !4923)
!4923 = !{!4921, !4924, !4925}
!4924 = !DILocalVariable(name: "__src", arg: 2, scope: !4922, file: !883, line: 26, type: !698)
!4925 = !DILocalVariable(name: "__len", arg: 3, scope: !4922, file: !883, line: 26, type: !58)
!4926 = !DILocation(line: 0, scope: !4922, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 128, column: 11, scope: !4920)
!4928 = !DILocation(line: 29, column: 10, scope: !4922, inlinedAt: !4927)
!4929 = !DILocation(line: 129, column: 11, scope: !4920)
!4930 = !DILocation(line: 133, column: 23, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4932, file: !462, line: 133, column: 15)
!4932 = distinct !DILexicalBlock(scope: !4917, file: !462, line: 132, column: 9)
!4933 = !DILocation(line: 133, column: 15, scope: !4932)
!4934 = !DILocation(line: 138, column: 44, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4931, file: !462, line: 134, column: 13)
!4936 = !DILocation(line: 0, scope: !4922, inlinedAt: !4937)
!4937 = distinct !DILocation(line: 138, column: 15, scope: !4935)
!4938 = !DILocation(line: 29, column: 10, scope: !4922, inlinedAt: !4937)
!4939 = !DILocation(line: 139, column: 15, scope: !4935)
!4940 = !DILocation(line: 139, column: 32, scope: !4935)
!4941 = !DILocation(line: 140, column: 13, scope: !4935)
!4942 = !DILocation(line: 0, scope: !4901)
!4943 = !DILocation(line: 145, column: 1, scope: !4893)
